VERSION 5.00
Begin VB.Form CateringBooking
  Caption = "Catalog Selection"
  ForeColor = &H400040&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = -360
  ClientTop = -1545
  ClientWidth = 11880
  ClientHeight = 8595
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
  WhatsThisHelp = -1  'True
  Begin BtnEnh CmdMore
    Left = 13080
    Top = 1365
    Width = 1185
    Height = 720
    TabIndex = 118
  End
  Begin Frame Frame1
    ForeColor = &H80000008&
    Left = 6990
    Top = 1365
    Width = 6090
    Height = 2535
    TabIndex = 105
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 32
      ForeColor = &HFF0000&
      Left = 1530
      Top = 1290
      Width = 4530
      Height = 285
      TabIndex = 114
      BorderStyle = 0 'None
      MaxLength = 25
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
      Index = 28
      ForeColor = &HFF0000&
      Left = 1515
      Top = 15
      Width = 4530
      Height = 285
      TabIndex = 107
      BorderStyle = 0 'None
      MaxLength = 25
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
      Index = 29
      ForeColor = &HFF0000&
      Left = 1515
      Top = 330
      Width = 4530
      Height = 285
      TabIndex = 108
      BorderStyle = 0 'None
      MaxLength = 25
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
      Index = 30
      ForeColor = &HFF0000&
      Left = 1515
      Top = 645
      Width = 4530
      Height = 285
      TabIndex = 110
      BorderStyle = 0 'None
      MaxLength = 25
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
      Index = 31
      ForeColor = &HFF0000&
      Left = 1515
      Top = 960
      Width = 4530
      Height = 285
      TabIndex = 112
      BorderStyle = 0 'None
      MaxLength = 25
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
      Index = 33
      ForeColor = &HFF0000&
      Left = 1515
      Top = 1590
      Width = 4530
      Height = 870
      TabIndex = 116
      BorderStyle = 0 'None
      MultiLine = -1  'True
      Alignment = 2 'Center
      DataSource = "Txt1"
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
    Begin BtnEnh BtnEnh1
      Left = 0
      Top = 1590
      Width = 1500
      Height = 885
      TabIndex = 106
    End
    Begin BtnEnh BtnEnh3
      Left = 0
      Top = 15
      Width = 1500
      Height = 285
      TabIndex = 109
    End
    Begin BtnEnh BtnEnh4
      Left = 0
      Top = 330
      Width = 1500
      Height = 285
      TabIndex = 111
    End
    Begin BtnEnh BtnEnh5
      Left = 0
      Top = 645
      Width = 1500
      Height = 285
      TabIndex = 113
    End
    Begin BtnEnh BtnEnh6
      Left = 0
      Top = 960
      Width = 1500
      Height = 285
      TabIndex = 115
    End
  End
End
Begin BtnEnh BtnEnh2
  Left = 0
  Top = 1275
  Width = 1500
  Height = 285
  TabIndex = 117
End
Begin MainCtrl TopCtrl1
  Left = 0
  Top = 0
  Width = 11880
  Height = 450
  TabIndex = 103
End
Begin DataGrid DGVType
  Left = 16725
  Top = 4650
  Width = 4215
  Height = 3645
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 61
End
Begin DataGrid DGHall
  Left = 16455
  Top = 3750
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 46
End
Begin DataGrid DGFPNo
  Left = 14775
  Top = 3375
  Width = 6840
  Height = 2145
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 102
End
Begin DataGrid DGItem
  Left = 15150
  Top = 2550
  Width = 9405
  Height = 2415
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 47
End
Begin Frame Frame2
  Caption = "Catalog Category"
  Index = 0
  ForeColor = &H80000008&
  Left = 18165
  Top = 8565
  Width = 2310
  Height = 555
  Visible = 0   'False
  TabIndex = 98
  BeginProperty Font
    Name = "Arial"
    Size = 9
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
  Begin SSOption OptCat
    Index = 0
    Left = 165
    Top = 240
    Width = 630
    Height = 210
    TabIndex = 99
  End
  Begin SSOption OptCat
    Index = 1
    Left = 1605
    Top = 225
    Width = 570
    Height = 240
    TabIndex = 100
  End
End
Begin TextBox TxtGrid
  Index = 1
  BackColor = &H80000004&
  ForeColor = &H80000012&
  Left = 885
  Top = 2820
  Width = 765
  Height = 225
  Visible = 0   'False
  TabIndex = 95
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 150
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 49
  ForeColor = &HFF0000&
  Left = 8505
  Top = 3285
  Width = 3840
  Height = 285
  TabIndex = 22
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  Index = 48
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2970
  Width = 3840
  Height = 285
  TabIndex = 21
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  Index = 47
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2655
  Width = 3840
  Height = 285
  TabIndex = 20
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  Index = 35
  Left = 13155
  Top = 9990
  Width = 1335
  Height = 285
  TabIndex = 7
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
  Index = 16
  Left = 10290
  Top = 10500
  Width = 1365
  Height = 285
  TabIndex = 10
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
Begin TextBox Txt
  Index = 4
  Left = 13155
  Top = 10245
  Width = 1335
  Height = 285
  TabIndex = 9
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
Begin TextBox TxtGrid
  Index = 0
  BackColor = &H80000004&
  ForeColor = &H80000012&
  Left = 6765
  Top = 4215
  Width = 945
  Height = 225
  Visible = 0   'False
  TabIndex = 24
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 150
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin MSHFlexGrid FGrid
  Left = 5040
  Top = 3885
  Width = 8490
  Height = 5115
  TabIndex = 23
End
Begin TextBox Txt
  Index = 46
  ForeColor = &HFF0000&
  Left = 1830
  Top = 2025
  Width = 2310
  Height = 285
  TabIndex = 6
  BorderStyle = 0 'None
  MaxLength = 8
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
Begin DataGrid DG_Catalog
  Left = 16275
  Top = 1815
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 85
End
Begin TextBox Txt
  Index = 45
  ForeColor = &HFF0000&
  Left = 1830
  Top = 1395
  Width = 4200
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
  Index = 44
  Left = 12660
  Top = 10500
  Width = 1830
  Height = 285
  TabIndex = 11
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
Begin TextBox Txt
  Index = 43
  Left = 10290
  Top = 10245
  Width = 1365
  Height = 285
  TabIndex = 8
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
Begin TextBox Txt
  Index = 42
  Left = 10290
  Top = 9735
  Width = 4200
  Height = 285
  TabIndex = 5
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
Begin TextBox Txt
  Index = 41
  Left = 10290
  Top = 9480
  Width = 4200
  Height = 285
  TabIndex = 4
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
Begin TextBox Txt
  Index = 9
  Left = 15045
  Top = 7410
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 34
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 40
  Left = 15045
  Top = 7665
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 35
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 39
  Left = 16050
  Top = 1650
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 43
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
Begin TextBox Txt
  Index = 38
  Left = 16050
  Top = 885
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 40
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 37
  Left = 16050
  Top = 1140
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 41
  BorderStyle = 0 'None
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
  Index = 36
  Left = 16050
  Top = 1395
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 42
  BorderStyle = 0 'None
  MaxLength = 20
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
  Left = 15045
  Top = 6390
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 28
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 14
  Left = 15045
  Top = 6135
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 27
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 15045
  Top = 5880
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 26
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 23
  ForeColor = &HFF0000&
  Left = 8505
  Top = 1080
  Width = 3825
  Height = 285
  Enabled = 0   'False
  TabIndex = 15
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  Index = 24
  ForeColor = &HFF0000&
  Left = 8505
  Top = 1395
  Width = 3840
  Height = 285
  TabIndex = 16
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  ForeColor = &HFF0000&
  Left = 8505
  Top = 1710
  Width = 3840
  Height = 285
  TabIndex = 17
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  Left = 5760
  Top = 10320
  Width = 780
  Height = 240
  TabIndex = 14
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 21
  Left = 3825
  Top = 10320
  Width = 765
  Height = 240
  TabIndex = 13
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 20
  Left = 1740
  Top = 10320
  Width = 750
  Height = 240
  TabIndex = 12
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 26
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2025
  Width = 3840
  Height = 285
  TabIndex = 18
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  Left = 14790
  Top = 8760
  Width = 450
  Height = 240
  Visible = 0   'False
  TabIndex = 44
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 18
  Left = 14370
  Top = 6900
  Width = 450
  Height = 240
  Visible = 0   'False
  TabIndex = 31
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 14370
  Top = 6645
  Width = 450
  Height = 240
  Visible = 0   'False
  TabIndex = 29
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 16050
  Top = 630
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 39
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 15045
  Top = 8175
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 37
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 27
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2340
  Width = 3840
  Height = 285
  TabIndex = 19
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 30
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
  Index = 34
  BackColor = &H80000004&
  ForeColor = &HC00000&
  Left = 15270
  Top = 8745
  Width = 2595
  Height = 210
  Visible = 0   'False
  TabIndex = 45
  BorderStyle = 0 'None
  MaxLength = 40
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
  Left = 15045
  Top = 7155
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 33
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 15045
  Top = 7920
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 36
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 15045
  Top = 6900
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 32
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 15045
  Top = 6645
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 30
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 5
  Left = 15045
  Top = 5625
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 25
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Left = 5040
  Top = 9930
  Width = 1845
  Height = 240
  Visible = 0   'False
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
  Index = 1
  ForeColor = &HFF0000&
  Left = 1830
  Top = 1080
  Width = 1200
  Height = 285
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 8
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
  ForeColor = &HFF0000&
  Left = 4815
  Top = 1080
  Width = 1185
  Height = 285
  TabIndex = 38
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
Begin TextBox Txt
  Index = 3
  ForeColor = &HFF0000&
  Left = 1830
  Top = 1710
  Width = 4200
  Height = 285
  TabIndex = 3
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
Begin MaskEdBox txtMEd
  Index = 0
  Left = 2190
  Top = 3105
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 94
End
Begin MSHFlexGrid FGrid1
  Left = 315
  Top = 2580
  Width = 6615
  Height = 1125
  TabIndex = 96
End
Begin MSHFlexGrid FGrid2
  Left = 330
  Top = 3735
  Width = 4710
  Height = 2865
  TabIndex = 101
End
Begin BtnEnh PrintInst
  Left = 13080
  Top = 2085
  Width = 1185
  Height = 720
  TabIndex = 119
End
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 645
  Top = 8325
  Width = 2430
  Height = 285
  TabIndex = 121
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
  Left = 660
  Top = 7995
  Width = 2520
  Height = 255
  TabIndex = 120
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 435
  Width = 180
  Height = 540
  TabIndex = 104
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
Begin Shape Shape6
  BorderColor = &H404040&
  Left = 225
  Top = 10305
  Width = 6390
  Height = 285
  Shape = 4
  BorderWidth = 2
End
Begin Shape Shape1
  Left = 7965
  Top = 9855
  Width = 405
  Height = 270
  Visible = 0   'False
End
Begin Label Label4
  Caption = "Venue Details"
  Index = 0
  ForeColor = &H80&
  Left = 195
  Top = 2310
  Width = 1470
  Height = 270
  TabIndex = 97
  Alignment = 1 'Right Justify
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
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
Begin Label Label1
  Caption = "Spl.Menu Ins7"
  Index = 45
  ForeColor = &HFF0000&
  Left = 7095
  Top = 3300
  Width = 1335
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
Begin Label Label1
  Caption = "Spl.Menu Ins5"
  Index = 44
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2670
  Width = 1335
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
Begin Label Label1
  Caption = "Spl.Menu Ins6"
  Index = 43
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2985
  Width = 1335
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
Begin Label Label1
  Caption = "PIN"
  Index = 26
  ForeColor = &HFF0000&
  Left = 12765
  Top = 9990
  Width = 330
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
Begin Label Label1
  Caption = "Mobile No."
  Index = 24
  ForeColor = &HFF0000&
  Left = 8835
  Top = 10500
  Width = 1020
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
Begin Label Label1
  Caption = "Phone No.(Off)"
  Index = 0
  ForeColor = &HFF0000&
  Left = 11805
  Top = 10245
  Width = 1380
  Height = 240
  TabIndex = 88
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
  Caption = "City Name"
  ForeColor = &HFF0000&
  Left = 375
  Top = 2025
  Width = 975
  Height = 240
  TabIndex = 87
  Alignment = 1 'Right Justify
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
Begin Label Label2
  Caption = "%"
  ForeColor = &H0&
  Left = 14850
  Top = 6915
  Width = 180
  Height = 210
  Visible = 0   'False
  TabIndex = 86
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
  Caption = "Catalog Name"
  Index = 42
  ForeColor = &HFF0000&
  Left = 375
  Top = 1410
  Width = 1350
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
Begin Label Label1
  Caption = "PAN No."
  Index = 41
  ForeColor = &HFF0000&
  Left = 11805
  Top = 10515
  Width = 780
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
Begin Label Label1
  Caption = "Phone No.(Res)"
  Index = 40
  ForeColor = &HFF0000&
  Left = 8835
  Top = 10245
  Width = 1455
  Height = 240
  TabIndex = 82
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
  Caption = "Add2"
  Index = 20
  ForeColor = &HFF0000&
  Left = 8835
  Top = 9735
  Width = 480
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
Begin Label Label1
  Caption = "Add1"
  Index = 13
  ForeColor = &HFF0000&
  Left = 8835
  Top = 9495
  Width = 480
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
Begin Label Label1
  Caption = "Deduction"
  Index = 39
  ForeColor = &H0&
  Left = 13605
  Top = 7695
  Width = 840
  Height = 210
  Visible = 0   'False
  TabIndex = 79
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
  Caption = "Addition"
  Index = 9
  ForeColor = &H0&
  Left = 13605
  Top = 7440
  Width = 675
  Height = 210
  Visible = 0   'False
  TabIndex = 78
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
  Caption = "Rect.No."
  Index = 38
  ForeColor = &H4080&
  Left = 14730
  Top = 900
  Width = 720
  Height = 210
  Visible = 0   'False
  TabIndex = 77
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
  Caption = "Cr. Card Holder"
  Index = 37
  ForeColor = &H4080&
  Left = 14730
  Top = 1665
  Width = 1230
  Height = 210
  Visible = 0   'False
  TabIndex = 76
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
  Caption = "Rect.Date"
  Index = 36
  ForeColor = &H4080&
  Left = 14730
  Top = 1155
  Width = 825
  Height = 210
  Visible = 0   'False
  TabIndex = 75
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
  Caption = "Credit Card No."
  Index = 35
  ForeColor = &H4080&
  Left = 14730
  Top = 1410
  Width = 1245
  Height = 210
  Visible = 0   'False
  TabIndex = 74
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
Begin Shape Shape2
  BorderColor = &H400040&
  Left = 13515
  Top = 5580
  Width = 2835
  Height = 2910
  Visible = 0   'False
End
Begin Label Label1
  Caption = "Hall Rent"
  Index = 21
  ForeColor = &H0&
  Left = 13605
  Top = 5895
  Width = 720
  Height = 210
  Visible = 0   'False
  TabIndex = 73
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
  Caption = "Total Per Cover"
  Index = 15
  ForeColor = &H0&
  Left = 13620
  Top = 6150
  Width = 1275
  Height = 210
  Visible = 0   'False
  TabIndex = 72
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
  Caption = "Amount"
  Index = 10
  ForeColor = &H0&
  Left = 13605
  Top = 6405
  Width = 660
  Height = 210
  Visible = 0   'False
  TabIndex = 71
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
  Caption = "Spl.Menu Ins3"
  Index = 33
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2040
  Width = 1335
  Height = 240
  TabIndex = 70
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
  Caption = "Spl.Menu Ins2"
  Index = 32
  ForeColor = &HFF0000&
  Left = 7095
  Top = 1725
  Width = 1335
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
Begin Label Label1
  Caption = "Gauranted Pax"
  Index = 31
  ForeColor = &H0&
  Left = 2580
  Top = 10335
  Width = 1200
  Height = 210
  TabIndex = 68
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
  Caption = "Spl.Menu Ins1"
  Index = 30
  ForeColor = &HFF0000&
  Left = 7095
  Top = 1410
  Width = 1335
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
Begin Label Label1
  Caption = "Function Name"
  Index = 28
  ForeColor = &HFF0000&
  Left = 6780
  Top = 1050
  Width = 1440
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
Begin Label Label1
  Caption = "Rate Per Pax"
  Index = 27
  ForeColor = &H0&
  Left = 4665
  Top = 10335
  Width = 1050
  Height = 210
  TabIndex = 65
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
  Caption = "Ex. Attendance"
  Index = 22
  ForeColor = &H0&
  Left = 300
  Top = 10335
  Width = 1290
  Height = 210
  TabIndex = 64
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
Begin Label Label5
  Caption = "%"
  ForeColor = &H0&
  Left = 14850
  Top = 6675
  Width = 180
  Height = 210
  Visible = 0   'False
  TabIndex = 63
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
  Caption = "Round Off"
  Index = 8
  ForeColor = &H0&
  Left = 13605
  Top = 7950
  Width = 840
  Height = 210
  Visible = 0   'False
  TabIndex = 62
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
  Caption = "Spl.Menu Ins4"
  Index = 23
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2355
  Width = 1335
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
Begin Label Label1
  Caption = "Discount"
  Index = 16
  ForeColor = &H0&
  Left = 13605
  Top = 6660
  Width = 705
  Height = 210
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
Begin Label Label1
  Caption = "Total(Items)"
  Index = 14
  ForeColor = &H0&
  Left = 13620
  Top = 5640
  Width = 1035
  Height = 210
  Visible = 0   'False
  TabIndex = 58
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
  Caption = "F.P. No."
  Index = 3
  ForeColor = &HFF0000&
  Left = 375
  Top = 1095
  Width = 750
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
  Caption = "V.Type "
  Index = 4
  ForeColor = &H0&
  Left = 4410
  Top = 9960
  Width = 675
  Height = 210
  Visible = 0   'False
  TabIndex = 56
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
  Caption = "Date"
  Index = 1
  ForeColor = &HFF0000&
  Left = 4245
  Top = 1080
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
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &H0&
  Left = 7080
  Top = 9885
  Width = 645
  Height = 210
  Visible = 0   'False
  TabIndex = 54
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
Begin Label Label1
  Caption = "Party Name"
  Index = 5
  ForeColor = &HFF0000&
  Left = 375
  Top = 1725
  Width = 1110
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
Begin Label Label1
  Caption = "DocID"
  Index = 12
  BackColor = &H8000000E&
  ForeColor = &HC00000&
  Left = 6810
  Top = 90
  Width = 555
  Height = 210
  TabIndex = 52
  AutoSize = -1  'True
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
Begin Label Label1
  Caption = "Tax"
  Index = 19
  ForeColor = &H0&
  Left = 13605
  Top = 6900
  Width = 300
  Height = 210
  Visible = 0   'False
  TabIndex = 51
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
  Caption = "Net Amount"
  Index = 25
  ForeColor = &H0&
  Left = 13620
  Top = 8205
  Width = 1125
  Height = 210
  Visible = 0   'False
  TabIndex = 50
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
Begin Label Label1
  Caption = "Service Tax"
  Index = 29
  ForeColor = &H0&
  Left = 13605
  Top = 7170
  Width = 945
  Height = 210
  Visible = 0   'False
  TabIndex = 49
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
  Caption = "Advance"
  Index = 6
  ForeColor = &H4080&
  Left = 14730
  Top = 645
  Width = 705
  Height = 210
  Visible = 0   'False
  TabIndex = 48
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
End

Attribute VB_Name = "CateringBooking"

Private global_52 As Integer
Private global_150 As Integer
Private global_152 As Integer
Private global_136 As Integer

Private Sub DGItem_UnknownEvent_9 '10C013C
  'Data Table: 54B9D8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_10BFE73: Me.DGItem.Visible = False
  loc_10BFE92: If (Me.RecordCount > 0) Then
  loc_10BFECF:   Set var_B4 = Me.TxtGrid
  loc_10BFED5:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10BFEDD:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10BFF06:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BFF0E:   var_EC = CVar(CLng(1)) 'Long
  loc_10BFF41:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10BFF49:   Set var_B8 = Me.FGrid
  loc_10BFF4F:   LateIdCallSt
  loc_10BFF7E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BFF86:   var_EC = CVar(CLng(9)) 'Long
  loc_10BFFB9:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10BFFC1:   Set var_B8 = Me.FGrid
  loc_10BFFC7:   LateIdCallSt
  loc_10C0015:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C001D:   var_FC = CVar(CLng(4)) 'Long
  loc_10C0058:   LateIdCallSt
  loc_10C00B0:   var_B0 = Me.Fields.Item("Unit")
  loc_10C00C1:   var_11C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), "0.00"))), 1, 1)) 'String
  loc_10C00C9:   Set var_B8 = Me.FGrid
  loc_10C00CF:   LateIdCallSt
  loc_10C00E9: End If
  loc_10C00F5: Set var_A8 = Me.TxtGrid
  loc_10C00FB: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_11C, var_FC)
  loc_10C0103: var_DC = var_B0.Visible
  loc_10C0115: If (var_15E = &HFF) Then
  loc_10C0121:   Set var_A8 = Me.TxtGrid
  loc_10C0127:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10C012F:   var_B0.SetFocus
  loc_10C013B: End If
  loc_10C013B: Exit Sub
End Sub

Private Sub Form_Load() '13573E8
  'Data Table: 54B9D8
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_C8 As Variant
  Dim unk_54B9F9 As Connection15
  Dim var_D0 As Variant
  Dim var_F4 As Field20
  loc_1356BD8: On Error Goto loc_13573E1
  loc_1356BE2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1356BFA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1356C15: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1356C30: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1356C46: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_1356C5D: Me.LblUser.Left = CDbl(13500)
  loc_1356C74: Me.LblUser.Top = CDbl(7800)
  loc_1356C8B: Me.LblLDt.Top = CDbl(8160)
  loc_1356CA2: Me.LblLDt.Left = CDbl(13500)
  loc_1356CBC: Me.DGItem.Left = CVar(CDbl(&H5A))
  loc_1356CD6: Me.DGItem.Top = CVar(CDbl(0))
  loc_1356CF1: Me.DGItem.Width = CVar(CDbl(9405))
  loc_1356D0E: If (global_56 = MemVar_1F92070 & "BANQ") Then
  loc_1356D17:   global_128 = "IBOOK"
  loc_1356D1E: Else
  loc_1356D33:   If (global_56 = MemVar_1F92070 & "ODC") Then
  loc_1356D3C:     global_128 = "OBOOK"
  loc_1356D40:   End If
  loc_1356D40: End If
  loc_1356D4A: Set global_64 = New 
  loc_1356D5C: Me.CursorLocation = 3
  loc_1356D86: var_B4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_1356D9E: Me.Open CVar(var_B4 & MemVar_1F92070 & "' and Category in('HALBOOK') Order by Description"), CVar(MemVar_1F92044), 3
  loc_1356DB8: CVarUnk
  loc_1356DBD: VerifyVarObj
  loc_1356DC3: Set var_AC = Me.DGVType
  loc_1356DC9: LateIdStAd
  loc_1356DE1: Set global_84 = New 
  loc_1356DF3: Me.DGVType.CursorLocation = 3
  loc_1356E03: If (global_128 = "IBOOK") Then
  loc_1356E24:   var_B0 = "Select DISTINCT H.DocId As Code,convert(varchar(10),H.VNO) As FPNo,H.VNo,H.PartyName,F.Name AS Func_Name,H.City as Cityname FROM HALLBOOK H INNER JOIN FunctionType F ON H.Func_Name=F.Code WHERE H.LogSite_Code='" & MemVar_1F92078
  loc_1356E35:   Me.Open CVar(var_B0 & "' And H.VType='IBOOK' AND H.DOCID NOT IN (SELECT DISTINCT DOCID FROM HALLBOOK1) Order by H.VNO"), CVar(MemVar_1F92044), 3
  loc_1356E43: Else
  loc_1356E61:   var_B0 = "Select DISTINCT H.DocId As Code,convert(varchar(10),H.VNO) As FPNo,H.VNo,H.PartyName,F.Name AS Func_Name,H.City as Cityname FROM HALLBOOK H INNER JOIN FunctionType F ON H.Func_Name=F.Code WHERE H.LogSite_Code='" & MemVar_1F92078
  loc_1356E72:   Me.Open CVar(var_B0 & "' And H.VType='OBOOK' AND H.DOCID NOT IN (SELECT DISTINCT DOCID FROM HALLBOOK1) Order by H.VNO"), CVar(MemVar_1F92044), 3
  loc_1356E7D: End If
  loc_1356E86: CVarUnk
  loc_1356E8B: VerifyVarObj
  loc_1356E91: Set var_AC = Me.DGFPNo
  loc_1356E97: LateIdStAd
  loc_1356EAF: Set global_80 = New 
  loc_1356EC1: Me.DGFPNo.CursorLocation = 3
  loc_1356EEB: var_C8 = CVar("Select H.Code As Code,H.Name As Name From Depart H WHERE H.LogSite_Code='" & MemVar_1F92078 & "' And H.RestType IN ('Banquet') Order by H.Name") 'String
  loc_1356EF5: Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_1356F09: CVarUnk
  loc_1356F0E: VerifyVarObj
  loc_1356F1A: LateIdStAd
  loc_1356F32: Set global_76 = New 
  loc_1356F44: Me.DGHall.CursorLocation = 3
  loc_1356F6D: unk_54B9F9.Execute "Select * from Enviro where lOGSite_Code='" & MemVar_1F92078 & "'", var_C8, -1
  loc_1356F78: Set var_88 = Me.DGHall
  loc_1356F9F: If (Me.Recordset15.RecordCount > 0) Then
  loc_1356FBF:   var_D0 = Me.Recordset15.Fields.Item("CatalogLimit")
  loc_1356FE1:   If (var_D0.Value = "Yes") Then
  loc_1357009:     var_C8 = CVar("Select DIstinct H.Code As Code,H.Name As Name From CATALOGMAST H WHERE H.LogSite_Code='" & MemVar_1F92078 & "' And H.Category ='Y' Order by H.Name") 'String
  loc_1357013:     Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_135702C:     Me.FGrid2.Visible = True
  loc_1357040:     Me.Shape1.Visible = True
  loc_135704B:   Else
  loc_1357070:     var_C8 = CVar("Select DIstinct H.Code As Code,H.Name As Name From CATALOGMAST H  WHERE H.LogSite_Code='" & MemVar_1F92078 & "' And H.Category <>'Y' OR IsNull(H.Category,'')='' Order by H.Name") 'String
  loc_135707A:     Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_1357094:     Me.FGrid2.Visible = False
  loc_13570A8:     Me.Shape1.Visible = False
  loc_13570B0:   End If
  loc_13570B0: End If
  loc_13570B5: Set var_88 = Nothing
  loc_13570C1: CVarUnk
  loc_13570C6: VerifyVarObj
  loc_13570D2: LateIdStAd
  loc_13570EA: Set global_88 = New 
  loc_13570FC: Me.DG_Catalog.CursorLocation = 3
  loc_135711F: var_B0 = "Select DIstinct S.DocId as SearchCode,S.DocID,LogSite_Code,Site_Code From HAllBook1 S WHERE S.LogSite_Code='" & MemVar_1F92078
  loc_1357126: var_B4 = var_B0 & "' and S.VTYPE IN(select V_Type From Voucher_Type where NCAt='BBOOK' and RestCode='"
  loc_1357148: var_C8 = CVar(var_B4 & global_56 & "') AND VType='" & global_128 & "'") 'String
  loc_1357152: Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_135719A: Call 0.Method_arg_50 (var_B4, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' And ENAME='", var_C8, -1, Me.DG_Catalog, var_D0, 0, var_F4)
  loc_13571C1: unk_54B9F9.Execute var_E0 & var_B4 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_13571C9: var_AC = var_AC.Fields
  loc_13571D1: 1 = var_D0.Item(global_76)
  loc_13571D9: -1 = var_F4.Value
  loc_135720A: If (var_E0 > 0) Then
  loc_1357253:   Call 0.Method_arg_50 (var_B4, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_C8, -1, var_AC, var_D0, 0)
  loc_135727A:   unk_54B9F9.Execute var_F4 & var_B4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_E0, "SearchCode='"
  loc_1357282:   0 = var_AC.Fields
  loc_135728A:   var_148 = var_D0.Item(1)
  loc_1357292:    = var_F4.Value
  loc_13572B1:   Me.Find CStr(var_E0 & "'"), , 
  loc_13572DD: End If
  loc_13572EB: Set var_AC = Me.OptCat
  loc_13572F1: Call 0.Method_Form_Load0 (0, var_D0)
  loc_13572F9: var_D0.Enabled = False
  loc_1357313: Set var_AC = Me.OptCat
  loc_1357319: Call 0.Method_Form_Load0 (1, var_D0)
  loc_1357321: var_D0.Enabled = False
  loc_1357344: If (Me.RecordCount > 0) Then
  loc_135735B:   If (Me.EOF = &HFF) Then
  loc_1357364:     Me.MoveLast
  loc_1357369:   End If
  loc_1357369: End If
  loc_135738C: Call Proc_113_65_FAE188(Proc_5_1_100CB50("INI", Me))
  loc_13573A9: Set var_AC = Me
  loc_13573AF: Proc_6_23_DFBA28(var_AC, 7590)
  loc_13573C0: Call 0.Method_arg_160 (var_AC, 11940)
  loc_13573CE: Call 0.Method_arg_164 (var_AC)
  loc_13573D6: Call Proc_113_55_14448B4(global_88)
  loc_13573DB: Call Proc_113_62_19F19D8()
  loc_13573E0: Exit Sub
  loc_13573E1: ' Referenced from: 1356BD8
  loc_13573E1: Proc_6_60_E62BC4()
  loc_13573E6: Exit Sub
End Sub

Private Sub Form_Resize() 'ED26C8
  'Data Table: 54B9D8
  Dim var_8C As Label
  loc_ED2626: Call 0.Method_arg_50 (var_88)
  loc_ED2638: Me.LblFormCaption.Caption = var_88
  loc_ED2651: Me.LblFormCaption.Left = CDbl(0)
  loc_ED265D: Set var_A0 = Me.TopCtrl1
  loc_ED2663: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_ED2670: Set var_8C = Me.TopCtrl1
  loc_ED2676: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_ED2690: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED26AB: Call 0.Method_arg_100 (var_B8)
  loc_ED26BD: Me.LblFormCaption.Width = var_B8
  loc_ED26C5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E87714
  'Data Table: 54B9D8
  loc_E876A7: Set global_80 = Nothing
  loc_E876B9: Set global_84 = Nothing
  loc_E876CB: Set global_72 = Nothing
  loc_E876DD: Set global_92 = Nothing
  loc_E876EF: Set global_96 = Nothing
  loc_E87701: Set global_100 = Nothing
  loc_E8770D: global_52 = 0
  loc_E87710: Exit Sub
End Sub

Private Sub Form_Activate() '101E650
  'Data Table: 54B9D8
  Dim var_9C As String
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_AC As Variant
  Dim var_88 As String
  Dim var_110 As String
  loc_101E452: Call 0.Method_arg_1C0 (var_88)
  loc_101E468: If (IsNumeric(CVar(var_88)) = &HFF) Then
  loc_101E482:   Call 0.Method_arg_1C0 (var_88, "FPNo =", 0)
  loc_101E48B:   var_9C = 1 & var_88
  loc_101E494:   Me.Find var_9C, var_AC, 
  loc_101E4A6:   Call 0.Method_arg_1C0 (var_88)
  loc_101E4B9:   Set var_B0 = Me.Txt
  loc_101E4BF:   Call 0.Method_Form_Activate0 (CInt(1), var_B4)
  loc_101E4C7:   var_B4.Text = var_88
  loc_101E4E2:   Call Txt_Validate(CInt(1))
  loc_101E4ED:   Call 0.Method_arg_1C4 (vbNullString)
  loc_101E4F5: Else
  loc_101E4FB:   Call 0.Method_arg_1C0 (var_88)
  loc_101E518:   Call 0.Method_arg_1C0 (var_9C, (IsNumeric(CVar(var_88)) = 0))
  loc_101E549:   If CBool(0 And (Trim(CVar(var_9C)) <> vbNullString)) Then
  loc_101E552:     Me.Close
  loc_101E55D:     Call 0.Method_arg_1C0 (var_118)
  loc_101E574:     var_AC = CVar(MemVar_1F92044) 'Address
  loc_101E580:     var_88 = "Select DIstinct S.DocId as SearchCode,S.DocID,LogSite_Code,Site_Code From HAllBook1 S WHERE S.LogSite_Code='" & MemVar_1F92078
  loc_101E598:     var_110 = var_88 & "' and S.VTYPE IN(select V_Type From Voucher_Type where NCAt='BBOOK' and RestCode='" & global_56 & "') AND VType='"
  loc_101E5C1:     Me.Open CVar(var_110 & global_128 & "' AND S.DocId='" & var_118 & "'"), var_AC, 3
  loc_101E5F3:     Call 0.Method_arg_1C0 (var_88, "SearchCode='", 0, 1)
  loc_101E60C:     Me.Find var_AC & var_88 & "'", 1, -1
  loc_101E636:     Proc_5_0_110649C(&HFF, Me)
  loc_101E63E:     Call Proc_113_62_19F19D8(global_88)
  loc_101E649:     Call 0.Method_arg_1C4 (vbNullString)
  loc_101E64E:   End If
  loc_101E64E: End If
  loc_101E64E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25124
  'Data Table: 54B9D8
  loc_E25109: If (global_52 = &HFF) Then
  loc_E25119:   Me.Global.Unload Me
  loc_E25121: End If
  loc_E25121: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E37398
  'Data Table: 54B9D8
  loc_E3736C: On Error Goto loc_E37390
  loc_E37387: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3738F: Exit Sub
  loc_E37390: ' Referenced from: E3736C
  loc_E37390: Proc_6_60_E62BC4(Shift)
  loc_E37395: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD2388
  'Data Table: 54B9D8
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD21CC: On Error Goto loc_FD2380
  loc_FD21DE: Me.DGVType.Visible = False
  loc_FD21FD: If (Me.RecordCount > 0) Then
  loc_FD224F:   Set var_CC = Me.Txt
  loc_FD2255:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD225D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD22B5:   Set var_B4 = Me.DGVType
  loc_FD22CC:   Set var_CC = Me.Txt
  loc_FD22D2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD22DA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD232E:   global_140 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD233F: End If
  loc_FD235D: Set var_B0 = Me.Txt
  loc_FD2363: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD236B: var_B4.SetFocus
  loc_FD237F: Exit Sub
  loc_FD2380: ' Referenced from: FD21CC
  loc_FD2380: Proc_6_60_E62BC4(var_B4)
  loc_FD2385: Exit Sub
  loc_FD2386: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA0C1C
  'Data Table: 54B9D8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA0BB7: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_108)) Then
  loc_EA0BCD:   Me.FGrid.Col = 1
  loc_EA0BD5: End If
  loc_EA0BE8: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA0BFB: Set var_88 = Me.TxtGrid
  loc_EA0C01: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA0C09: var_BC.Visible = False
  loc_EA0C15: Call Proc_113_66_F286A0()
  loc_EA0C1A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67C48
  'Data Table: 54B9D8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67C04: Set var_88 = Me.TxtGrid
  loc_E67C0A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67C24: If (var_8C.Visible = 0) Then
  loc_E67C3D:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E67C45: End If
  loc_E67C45: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFDC04
  'Data Table: 54B9D8
  loc_DFDBFC: Call Proc_113_60_FDE398()
  loc_DFDC01: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1297640
  'Data Table: 54B9D8
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_F8 As Variant
  Dim var_178 As Variant
  Dim var_198 As Long
  Dim var_128 As Variant
  Dim var_1B8 As Variant
  Dim var_1D0 As Long
  loc_1297060: Set var_88 = Me.TopCtrl1
  loc_1297066: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_12970AB: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_12970B4:   Call Form_KeyDown(KeyCode, Shift)
  loc_12970B9: End If
  loc_12970BD: Set var_88 = Me.TopCtrl1
  loc_12970C3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_12970DC: If (CStr() = "Browse") Then
  loc_12970DF:   Exit Sub
  loc_12970E0: End If
  loc_1297154: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_129716D:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_129717D:   var_9C = "+{Tab}"
  loc_1297183:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_129718D:   KeyCode = 0
  loc_1297193: Else
  loc_129719D:   var_B0 = Me.FGrid.Rows
  loc_12971EA:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1297203:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_1297219:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1297223:     KeyCode = 0
  loc_1297229:   Else
  loc_129723D:     var_98 = Me.FGrid.Col
  loc_1297260:     var_D4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_12972A3:     If (0 And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = 0)) Then
  loc_12972B6:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_12972D0:       Me.FGrid.CellFontSize = CVar(CDbl(&HC))
  loc_12972EB:       var_D4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_12972F0:       var_F8 = 0
  loc_1297322:       var_178 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1297327:       var_198 = 0
  loc_1297362:       var_1B8 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_129736A:       Set var_1CC = Me.FGrid
  loc_1297370:       LateIdCallSt
  loc_1297399:     End If
  loc_1297399:   End If
  loc_1297399: End If
  loc_129739F: global_150 = KeyCode
  loc_12973C5: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12973E9: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_12973FF:   var_1D0 = CLng(Me.FGrid.Col)
  loc_129740F:   If (var_1D0 = CLng(1)) Then
  loc_1297425:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_129743D:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1297442:     var_128 = vbNullString
  loc_129744C:     Set var_B4 = Me.FGrid
  loc_1297452:     LateIdCallSt
  loc_129747D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1297485:     var_F8 = CVar(CLng(9)) 'Long
  loc_129748A:     var_128 = vbNullString
  loc_1297494:     Set var_A0 = Me.FGrid
  loc_129749A:     LateIdCallSt
  loc_12974BF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12974C7:     var_F8 = CVar(CLng(3)) 'Long
  loc_12974CC:     var_128 = vbNullString
  loc_12974D6:     Set var_A0 = Me.FGrid
  loc_12974DC:     LateIdCallSt
  loc_12974F1:   Else
  loc_12974F8:     If (var_1D0 = CLng(3)) Then
  loc_1297517:       Set var_A0 = Me.FGrid
  loc_129753B:       LateIdCallSt
  loc_1297553:       Call Proc_113_70_115454C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_129755B:     Else
  loc_1297562:       If (var_1D0 = CLng(4)) Then
  loc_1297581:         Set var_A0 = Me.FGrid
  loc_12975A5:         LateIdCallSt
  loc_12975BD:         Call Proc_113_70_115454C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_12975C5:       Else
  loc_12975CC:         If (var_1D0 = CLng(2)) Then
  loc_12975E2:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12975FA:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12975FF:           var_128 = vbNullString
  loc_1297609:           Set var_B4 = Me.FGrid
  loc_129760F:           LateIdCallSt
  loc_1297627:         End If
  loc_1297627:       End If
  loc_1297627:     End If
  loc_1297627:   End If
  loc_1297627: End If
  loc_129762D: If (KeyCode = &HD) Then
  loc_1297635:   global_152 = 0
  loc_1297638: End If
  loc_129763A: KeyCode = 0
  loc_129763D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F7A0
  'Data Table: 54B9D8
  loc_E0F791: Call FGrid_UnknownEvent_C()
  loc_E0F79B: global_152 = 0
  loc_E0F79E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12FDE98
  'Data Table: 54B9D8
  Dim var_A0 As String
  Dim var_A4 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_144 As Variant
  Dim var_1C4 As Long
  Dim var_1D0 As Long
  Dim var_1D4 As Integer
  loc_12FD79C: Set var_8C = Me.TopCtrl1
  loc_12FD7A2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_12FD7BB: If (CStr() = "Browse") Then
  loc_12FD7BE:   Exit Sub
  loc_12FD7BF: End If
  loc_12FD7C9: If (CLng(KeyCode) <> &HD) Then
  loc_12FD7D1:   global_152 = &HFF
  loc_12FD7D4: End If
  loc_12FD7DF: Set var_8C = Me.OptCat
  loc_12FD7E5: Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A4)
  loc_12FD7ED: var_A4.Value
  loc_12FD80C: var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_12FD86E: If ((CVar(CLng(0)) And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = &HFF)) Or (CLng(Me.FGrid.ColSel) = &HC)) Then
  loc_12FD871:   Exit Sub
  loc_12FD872: End If
  loc_12FD87D: Set var_8C = Me.OptCat
  loc_12FD883: Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A4)
  loc_12FD88B: var_A4.Value
  loc_12FD8A1: If (CBool(var_C8) = &HFF) Then
  loc_12FD8C9:   For var_134 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_134 'Integer
  loc_12FD8E8:     var_184 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_12FD8F0:     var_1A4 = CVar(CLng(0)) 'Long
  loc_12FD919:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_12FD921:     var_E8 = CVar(CLng(0)) 'Long
  loc_12FD93B:     var_B8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_12FD94A:     var_144 = CVar(CLng(var_86)) 'Long
  loc_12FD99A:     If (CVar(CLng(0)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(Val(CStr(Me.FGrid2.TextMatrix)))))) Then
  loc_12FD99D:       GoTo loc_12FD9A8
  loc_12FD9A0:     End If
  loc_12FD9A3:   Next var_134 'Integer
  loc_12FD9A8:   ' Referenced from: 12FD99D
  loc_12FD9BD:   var_A0 = CStr(CLng(Me.FGrid.Row))
  loc_12FD9D4:   If (CDbl(Val(var_A0)) >= CDbl(var_86)) Then
  loc_12FD9EA:     var_1C4 = CLng(Me.FGrid.Col)
  loc_12FD9FA:     If (var_1C4 = CLng(1)) Then
  loc_12FDA01:       Set var_FC = Me.FGrid
  loc_12FDA29:       Set var_A4 = var_FC
  loc_12FDA3B:       Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0)
  loc_12FDA59:       Set var_8C = Me.TxtGrid
  loc_12FDA5F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0, 0)
  loc_12FDA67:       KeyCode = var_A4.Text
  loc_12FDA80:       If (Len(var_A0) <= 1) Then
  loc_12FDA8F:         Set var_8C = Me.TxtGrid
  loc_12FDA95:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0)
  loc_12FDA9D:         0 = var_A4.Text
  loc_12FDAAE:         Set var_A8 = Me.TxtGrid
  loc_12FDAB4:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC)
  loc_12FDABC:         var_FC.Text = var_A0
  loc_12FDACF:       End If
  loc_12FDADB:       Set var_8C = Me.TxtGrid
  loc_12FDAE1:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12FDAFB:       Set var_A8 = Me.TxtGrid
  loc_12FDB01:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC)
  loc_12FDB09:       var_FC.SelStart = Len(var_A4.Text)
  loc_12FDB1F:     Else
  loc_12FDB26:       If Not (var_1C4 = CLng(3)) Then
  loc_12FDB30:         If (var_1C4 = CLng(4)) Then
  loc_12FDB33:         End If
  loc_12FDB71:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_12FDB86:       Else
  loc_12FDB8D:         If (var_1C4 = CLng(2)) Then
  loc_12FDBCE:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode)
  loc_12FDBE0:         End If
  loc_12FDBE0:       End If
  loc_12FDBE0:     End If
  loc_12FDBE0:   End If
  loc_12FDBE3: Else
  loc_12FDBF6:   var_1D0 = CLng(Me.FGrid.Col)
  loc_12FDC06:   If (var_1D0 = CLng(1)) Then
  loc_12FDC0D:     Set var_FC = Me.FGrid
  loc_12FDC31:     var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_12FDC3A:     var_1D4 = Asc(var_A0)
  loc_12FDC5E:     Set var_A4 = var_FC
  loc_12FDC70:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0, var_1D4, 0)
  loc_12FDC98:     Set var_8C = Me.TxtGrid
  loc_12FDC9E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0, var_1D4, var_1D0)
  loc_12FDCA6:     0 = var_A4.Text
  loc_12FDCBF:     If (Len(var_A0) <= 1) Then
  loc_12FDCCE:       Set var_8C = Me.TxtGrid
  loc_12FDCD4:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0, &HFF)
  loc_12FDCDC:       KeyCode = var_A4.Text
  loc_12FDCED:       Set var_A8 = Me.TxtGrid
  loc_12FDCF3:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC, var_A0)
  loc_12FDCFB:       var_FC.Text = 0
  loc_12FDD0E:     End If
  loc_12FDD1A:     Set var_8C = Me.TxtGrid
  loc_12FDD20:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12FDD3A:     Set var_A8 = Me.TxtGrid
  loc_12FDD40:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC)
  loc_12FDD48:     var_FC.SelStart = Len(var_A4.Text)
  loc_12FDD5E:   Else
  loc_12FDD65:     If Not (var_1D0 = CLng(3)) Then
  loc_12FDD6F:       If (var_1D0 = CLng(4)) Then
  loc_12FDD72:       End If
  loc_12FDD85:       var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_12FDD8D:       var_E8 = CVar(CLng(1)) 'Long
  loc_12FDDCF:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_12FDDD2:         Exit Sub
  loc_12FDDD3:       End If
  loc_12FDE11:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_12FDE26:     Else
  loc_12FDE2D:       If (var_1D0 = CLng(2)) Then
  loc_12FDE6E:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_12FDE80:       End If
  loc_12FDE80:     End If
  loc_12FDE80:   End If
  loc_12FDE80: End If
  loc_12FDE8A: If (CLng(KeyCode) <> &HD) Then
  loc_12FDE92:   global_152 = &HFF
  loc_12FDE95: End If
  loc_12FDE95: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FF48C0
  'Data Table: 54B9D8
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF46E0: Set var_90 = Me.TopCtrl1
  loc_FF46E6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FF46FF: If (CStr() = "Browse") Then
  loc_FF4702:   Exit Sub
  loc_FF4703: End If
  loc_FF4720: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF4723:   Exit Sub
  loc_FF4724: End If
  loc_FF4735: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FF4757:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF4791:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF47B3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF47C9:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF47D2:         Set var_118 = Me.FGrid
  loc_FF47ED:       Else
  loc_FF4800:         Me.FGrid.Rows = 1
  loc_FF4826:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FF482E:         Set var_118 = Me.FGrid
  loc_FF485B:         Me.FGrid.FixedRows = 1
  loc_FF4863:       End If
  loc_FF4863:       Call Proc_113_70_115454C(FGrid.DispID_10000, var_A0)
  loc_FF4868:       Call Proc_113_68_11794E0(FGrid.DispID_10000)
  loc_FF486D:     End If
  loc_FF4870:   Else
  loc_FF4891:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF48A1:   End If
  loc_FF48A5:   Set var_90 = Me.FGrid
  loc_FF48B6: End If
  loc_FF48BB: Set var_8C = Nothing
  loc_FF48BE: Exit Sub
  loc_FF48BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'DFEAAC
  'Data Table: 54B9D8
  loc_DFEAA4: Call Proc_113_57_11EA3F4()
  loc_DFEAA9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E459B8
  'Data Table: 54B9D8
  Dim var_8C As TextBox
  loc_E4598C: Call Proc_113_66_F286A0()
  loc_E4599C: Set var_88 = Me.TxtGrid
  loc_E459A2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E459AA: var_8C.Visible = False
  loc_E459B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FF6130
  'Data Table: 54B9D8
  Dim var_90 As Variant
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_DC As String
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_118 As TextBox
  loc_FF5F58: On Error Goto loc_FF6128
  loc_FF5F7E: Call Proc_113_65_FAE188(Proc_5_1_100CB50("ADD", Me))
  loc_FF5F89: Call Proc_113_64_FF6808(global_88)
  loc_FF5F9B: Me.LblUser.Caption = vbNullString
  loc_FF5FB0: Me.LblLDt.Caption = vbNullString
  loc_FF5FBD: var_8C = CStr(MemVar_1F920EC)
  loc_FF5FCB: Set var_90 = Me.Txt
  loc_FF5FD1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_FF5FD9: var_98.Text = var_8C
  loc_FF5FF3: Set var_90 = Me.Txt
  loc_FF5FF9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_FF6001: var_98.SetFocus
  loc_FF6013: Call 0.Method_arg_1C0 (var_8C)
  loc_FF6030: Call 0.Method_arg_1C0 (var_AC, (IsNumeric(CVar(var_8C)) = 0))
  loc_FF6046: var_DC = vbNullString
  loc_FF6061: If CBool(var_98 And (Trim(CVar(var_AC)) <> var_DC)) Then
  loc_FF607B:   Call 0.Method_arg_1C0 (var_8C, "CODE ='", 0)
  loc_FF6094:   Me.Find 1 & var_8C & "'", var_DC, 
  loc_FF60DF:   Set var_114 = Me.Txt
  loc_FF60E5:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_118)
  loc_FF60ED:   var_118.Text = CStr(Me.Fields.Item("FPNo").Value)
  loc_FF610F:   Call Txt_Validate(CInt(1))
  loc_FF611A:   Call 0.Method_arg_1C4 (vbNullString)
  loc_FF611F: End If
  loc_FF6124: Set var_88 = Nothing
  loc_FF6127: Exit Sub
  loc_FF6128: ' Referenced from: FF5F58
  loc_FF6128: Proc_6_60_E62BC4(0)
  loc_FF612D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0B4C
  'Data Table: 54B9D8
  loc_EA0AD0: On Error Goto loc_EA0B46
  loc_EA0B0A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0B0D:   Call Proc_113_64_FF6808()
  loc_EA0B35:   Call Proc_113_65_FAE188(Proc_5_1_100CB50("INI", Me))
  loc_EA0B40:   Call Proc_113_62_19F19D8(global_88)
  loc_EA0B45: End If
  loc_EA0B45: Exit Sub
  loc_EA0B46: ' Referenced from: EA0AD0
  loc_EA0B46: Proc_6_60_E62BC4()
  loc_EA0B4B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1204DB0
  'Data Table: 54B9D8
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_9C As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim unk_54B9F9 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  loc_120493A: var_128 = 0
  loc_120498B: var_EC = "SELECT Count(*) FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1204999: unk_54B9F9.Execute CStr(var_EC), var_110, -1
  loc_12049A1: var_114 = var_114.Fields
  loc_12049A9: var_128 = var_118.Item(var_118)
  loc_12049B1: var_12C = var_12C.Value
  loc_12049DE: If (var_13C > 0) Then
  loc_1204A08:   MsgBox(CVar("Can not delete this booking." & vbCrLf & "Bill Generated!"), &H10, "Booking...", var_EC, var_110)
  loc_1204A1B:   Exit Sub
  loc_1204A1C: End If
  loc_1204A1C: On Error Goto loc_1204D5F
  loc_1204A56: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_EC, var_110) = 6) Then
  loc_1204A5F:   var_128 = 0
  loc_1204AB0:   var_EC = "SELECT Count(*) From PayChargeH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1204ABE:   unk_54B9F9.Execute CStr(var_EC), var_110, -1
  loc_1204AC6:   var_114 = var_114.Fields
  loc_1204ACE:   var_128 = var_118.Item(var_118)
  loc_1204AD6:   var_12C = var_12C.Value
  loc_1204B03:   If (var_13C > 0) Then
  loc_1204B2D:     MsgBox(CVar("Record not deleted." & vbCrLf & "Please check Paycharge detail."), &H10, "Deleation Error...", var_EC, var_110)
  loc_1204B40:     Exit Sub
  loc_1204B41:   End If
  loc_1204B4A:   unk_54B9F9.BeginTrans var_170
  loc_1204B60:   var_16C = Me.Bookmark 'Variant
  loc_1204B93:   var_9C = Me.Fields.Item("SearchCode")
  loc_1204BAC:   var_EC = "Delete From HallBook1 Where Docid='" & var_9C.Value & "'" 
  loc_1204BBA:   unk_54B9F9.Execute CStr(var_EC), var_110, -1
  loc_1204BE4:   Set var_88 = Me.Txt
  loc_1204BEA:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H22), var_9C, var_178)
  loc_1204BF2:   var_114 = var_9C.Text
  loc_1204BFC:   var_1AC = 0
  loc_1204C0F:   var_1A4 = 0
  loc_1204C1A:   var_1A0 = 0
  loc_1204C2D:   var_198 = 0
  loc_1204C38:   var_194 = 0
  loc_1204C4B:   var_18C = 0
  loc_1204C8A:   var_F0 = "HallBook1"
  loc_1204C93:   Proc_154_5_10E33A4(MemVar_1F92044, var_F0, "DocId", &HC8, var_178, 0, 0, 0)
  loc_1204CBE:   unk_54B9F9.CommitTrans
  loc_1204CCE:   Me.Requery -1
  loc_1204CDE:   Me.Requery -1
  loc_1204CFE:   If (CVar(Me.RecordCount) >= var_16C) Then
  loc_1204D0B:     Me.Bookmark = var_16C
  loc_1204D13:   Else
  loc_1204D27:     If (Me.EOF = 0) Then
  loc_1204D30:       Me.MoveLast
  loc_1204D35:     End If
  loc_1204D35:   End If
  loc_1204D35:   Call Proc_113_62_19F19D8(var_18C, 0, var_194, var_198)
  loc_1204D56:   Proc_5_0_110649C(&HFF, Me, global_88, 0)
  loc_1204D5E: End If
  loc_1204D5E: Exit Sub
  loc_1204D5F: ' Referenced from: 1204A1C
  loc_1204D65: unk_54B9F9.RollbackTrans
  loc_1204D72: Set var_88 = Err()
  loc_1204D78: Call 0.Method_arg_2C (var_F0, 0, var_1A0)
  loc_1204D99: MsgBox(CVar(var_F0), &H10, " Deletion Message", var_EC, var_110)
  loc_1204DAC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '106DC94
  'Data Table: 54B9D8
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_EC As Variant
  Dim unk_54B9F9 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  loc_106DA20: On Error Goto loc_106DC8E
  loc_106DA29: var_128 = 0
  loc_106DA61: var_9C = Me.Fields.Item("SearchCode")
  loc_106DA7A: var_EC = "SELECT Count(*) FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & var_9C.Value & "'" 
  loc_106DA88: unk_54B9F9.Execute CStr(var_EC), var_110, -1
  loc_106DA90: var_114 = var_114.Fields
  loc_106DA98: var_128 = var_118.Item(var_118)
  loc_106DAA0: var_12C = var_12C.Value
  loc_106DACD: If (var_13C > 0) Then
  loc_106DAF7:   MsgBox(CVar("Can not modify this booking." & vbCrLf & "Bill Generated!"), &H10, "Booking...", var_EC, var_110)
  loc_106DB0A:   Exit Sub
  loc_106DB0B: End If
  loc_106DB2E: Call Proc_113_65_FAE188(Proc_5_1_100CB50("EDIT", Me), global_88)
  loc_106DB44: Set var_88 = Me.OptCat
  loc_106DB4A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_106DB52: var_9C.Value
  loc_106DB68: If (CBool(var_13C) = &HFF) Then
  loc_106DB6B:   Call Proc_113_62_19F19D8()
  loc_106DB70: End If
  loc_106DB7D: Set var_88 = Me.Txt
  loc_106DB83: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_106DB8B: var_9C.Enabled = False
  loc_106DBA4: Set var_88 = Me.Txt
  loc_106DBAA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_106DBB2: var_9C.Enabled = False
  loc_106DBCB: Set var_88 = Me.Txt
  loc_106DBD1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C)
  loc_106DBD9: var_9C.Enabled = False
  loc_106DBF0: Set var_88 = Me.Txt
  loc_106DBF6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_106DBFE: var_9C.SetFocus
  loc_106DC15: Set var_88 = Me.OptCat
  loc_106DC1B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_106DC23: var_9C.Value
  loc_106DC39: If (CBool(var_9C) = &HFF) Then
  loc_106DC49:   Set var_88 = Me.Txt
  loc_106DC4F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H2D), var_9C)
  loc_106DC57:   var_9C.Enabled = False
  loc_106DC63: End If
  loc_106DC70: Me.LblUser.Caption = vbNullString
  loc_106DC85: Me.LblLDt.Caption = vbNullString
  loc_106DC8D: Exit Sub
  loc_106DC8E: ' Referenced from: 106DA20
  loc_106DC8E: Proc_6_60_E62BC4()
  loc_106DC93: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18BA4
  'Data Table: 54B9D8
  loc_E18B99: Me.Global.Unload Me
  loc_E18BA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE3EB4
  'Data Table: 54B9D8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EE3E04: On Error Goto loc_EE3EAB
  loc_EE3E1E: If (Me.RecordCount <= 0) Then
  loc_EE3E27:   var_B8 = "Information"
  loc_EE3E42:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE3E52:   Exit Sub
  loc_EE3E53: End If
  loc_EE3E5A: var_10C = "SELECT HallBook.dOCID,HallBook.VNo, HallBook.Vdate, HallBook.VTime, HallBook.PartyName, HallBook.Add1, HallBook.Add2, HallBook.City, HallBook.ContactNo_Res, HallBook.ContactNo_Off, FunctionType.Name, MarketSeg.Name, BussSource.Name" & " FROM ((HallBook LEFT JOIN FunctionType ON HallBook.Func_Name = FunctionType.Code) LEFT JOIN MarketSeg ON HallBook.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON HallBook.BussSource = BussSource.Code WHERE HALLBOOK.LOGSITE_CODE='"
  loc_EE3E79: MemVar_1F920E4 = var_10C & MemVar_1F92078 & "' AND HallBook.VType='" & global_128 & "'"
  loc_EE3E8E: MemVar_1F92120 = Me
  loc_EE3EA5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE3EAA: Exit Sub
  loc_EE3EAB: ' Referenced from: EE3E04
  loc_EE3EAB: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EE3EB0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E376F8
  'Data Table: 54B9D8
  loc_E376E8: Proc_5_0_110649C(&HFF, Me)
  loc_E376F0: Call Proc_113_62_19F19D8(global_88)
  loc_E376F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E377B8
  'Data Table: 54B9D8
  loc_E377A8: Proc_5_0_110649C(&HFF, Me)
  loc_E377B0: Call Proc_113_62_19F19D8(global_88)
  loc_E377B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37818
  'Data Table: 54B9D8
  Dim arg_60FF As Double
  loc_E37808: Proc_5_0_110649C(&HFF, Me)
  loc_E37810: Call Proc_113_62_19F19D8(global_88)
  loc_E37815: Exit Sub
  loc_E37816: arg_60FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37878
  'Data Table: 54B9D8
  loc_E37868: Proc_5_0_110649C(&HFF, Me)
  loc_E37870: Call Proc_113_62_19F19D8(global_88)
  loc_E37875: Exit Sub
  loc_E37876: Set arg_6000 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14A3B44
  'Data Table: 54B9D8
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_EC As String
  Dim var_F4 As Variant
  Dim unk_54B9F9 As Connection15
  Dim var_D0 As Recordset15
  Dim var_110 As Variant
  Dim var_F0 As Fields15
  Dim var_120 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_B8 As Double
  Dim var_CC As Recordset15
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_A8 As Recordset15
  Dim var_138 As Variant
  Dim var_15A As Integer
  Dim var_C8 As Recordset15
  Dim var_124 As Variant
  Dim var_1D4 As Variant
  Dim var_1AC As Variant
  Dim var_1D8 As Field20
  loc_14A2EF0: On Error Goto loc_14A3B3D
  loc_14A2EFA: var_E4 = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName,ItemGrp.Name As ItemGrpName "
  loc_14A2F08: var_EC = var_E4 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code) Inner Join ItemGrp On ItemGrp.Code=I.ItemGroup "
  loc_14A2F20: Set var_F0 = Me.Txt
  loc_14A2F26: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4)
  loc_14A2F3E: var_94 = var_EC & "Where HB.DocID='" & var_F4.Text & "'"
  loc_14A2F75: Set var_F0 = Me.Txt
  loc_14A2F7B: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4, var_E4, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_14A2F83: var_120 = var_F4.Text
  loc_14A2F8C: var_E8 = -1 & var_E4
  loc_14A2F9C: unk_54B9F9.Execute var_E4 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_124, 
  loc_14A2FA7: Set var_C8 = var_124
  loc_14A2FDD: Set var_F0 = Me.Txt
  loc_14A2FE3: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4, var_E4, "Select AmtCr,PayType,VNo,VDate FROM PayChargeH Where VType='AD' AND ContraDocId='")
  loc_14A2FEB: var_120 = var_F4.Text
  loc_14A2FF4: var_E8 = -1 & var_E4
  loc_14A3004: unk_54B9F9.Execute var_E4 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_124, 
  loc_14A300F: Set var_D0 = var_124
  loc_14A303B: If (var_D0.RecordCount > 0) Then
  loc_14A3066:   var_C0 = Proc_6_38_E68A98(CVar(var_D0.Fields.Item("VNo")))
  loc_14A309E:   var_C4 = "& " & Proc_6_38_E68A98(CVar(var_D0.Fields.Item("VDate")))
  loc_14A30D7:   Proc_6_47_EF59D0(var_138, CVar(var_D0.Fields.Item("AmtCr")))
  loc_14A30DF:   var_158 = (CVar(var_B8) + var_138)
  loc_14A30E4:   var_B8 = CSng(var_158)
  loc_14A311B:   var_BC = Proc_6_38_E68A98(CVar(var_D0.Fields.Item("PayType")))
  loc_14A3127:   var_D0.MoveNext
  loc_14A312C:   ' Referenced from: 14A329D
  loc_14A313B:   If Not(var_D0.EOF) Then
  loc_14A316B:     Proc_6_47_EF59D0(var_138, CVar(var_D0.Fields.Item("AmtCr")))
  loc_14A3173:     var_158 = (CVar(var_B8) + var_138)
  loc_14A3178:     var_B8 = CSng(var_158)
  loc_14A31C0:     If (var_B8 <> Proc_6_38_E68A98(CVar(var_D0.Fields.Item("PayType")), var_BC)) Then
  loc_14A31F9:       var_BC = var_B8 & Proc_6_38_E68A98(CVar(var_D0.Fields.Item("PayType")), var_BC & ", ")
  loc_14A323F:       var_C0 = var_C0 & ", " & Proc_6_38_E68A98(CVar(var_D0.Fields.Item("VNo")))
  loc_14A3256:       var_E4 = var_C4 & ", "
  loc_14A3270:       var_F4 = var_D0.Fields.Item("VDate")
  loc_14A3285:       var_C4 = var_E4 & Proc_6_38_E68A98(CVar(var_F4))
  loc_14A3295:     End If
  loc_14A3298:     var_D0.MoveNext
  loc_14A329D:     GoTo loc_14A312C
  loc_14A32A0:   End If
  loc_14A32A3: Else
  loc_14A32AC:   var_B8 = 0
  loc_14A32B2:   var_BC = vbNullString
  loc_14A32B5: End If
  loc_14A32D3: Set var_F0 = Me.Txt
  loc_14A32D9: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4, var_E4, "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_14A32E1: var_120 = var_F4.Text
  loc_14A32EA: var_E8 = -1 & var_E4
  loc_14A32FA: unk_54B9F9.Execute Proc_6_38_E68A98(CVar(var_F4)) & "'", var_124, var_B8
  loc_14A3305: Set var_CC = var_124
  loc_14A3331: If (var_CC.RecordCount > 0) Then
  loc_14A3334:   ' Referenced from: 14A33CF
  loc_14A3343:   If Not(var_CC.EOF) Then
  loc_14A335C:     var_120 = vbNullString
  loc_14A3371:     var_158 = IIf((var_B0 = vbNullString), var_120, ",")
  loc_14A3379:     var_18C = CVar(var_B0) & var_158 
  loc_14A338F:     var_F0 = var_CC.Fields
  loc_14A3397:     var_F4 = var_F0.Item("VenuName")
  loc_14A33AC:     var_B0 = CStr(var_18C & var_F4.Value)
  loc_14A33CA:     var_CC.MoveNext
  loc_14A33CF:     GoTo loc_14A3334
  loc_14A33D2:   End If
  loc_14A33D2: End If
  loc_14A33DA: If (var_94 = vbNullString) Then
  loc_14A33DD:   Exit Sub
  loc_14A33DE: End If
  loc_14A33F4: unk_54B9F9.Execute var_94, var_120, -1
  loc_14A33FF: Set var_A8 = var_F0
  loc_14A340E: var_128 = var_A8.RecordCount
  loc_14A341C: If (var_128 <= 0) Then
  loc_14A3425:   Call 0.Method_arg_50 (var_E4)
  loc_14A3446:   MsgBox("** No Records Found to Print **", &H40, CVar(var_E4), var_158, var_18C)
  loc_14A3456:   Exit Sub
  loc_14A3457: End If
  loc_14A346D: Set var_F0 = var_A8 
  loc_14A3479: var_15A = CreateFieldDefFile(var_F0, MemVar_1F920B4 & "\FuncProspect.ttx")
  loc_14A3483: Set var_A8 = var_F0
  loc_14A3489: var_110 = CVar(var_15A) 'Integer
  loc_14A348C: var_A4 = var_110 'Variant
  loc_14A34A8: var_E4 = MemVar_1F920B4 & "\FuncProspect.RPT"
  loc_14A34B1: Call 0.Method_arg_1C (var_E4, var_110, var_F0)
  loc_14A34BC: MemVar_1F921E4 = var_F0
  loc_14A34D7: Call 0.Method_arg_90 (var_F0, var_128, var_AA, 1)
  loc_14A34DF: Call 0.Method_arg_24 (var_15A, &HFF)
  loc_14A34EB: For var_1C0 =  To CInt(var_128): var_F0 = var_1C0 'Integer
  loc_14A3504:   Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A350C:   Call 0.Method_arg_20 (var_F4)
  loc_14A3514:   Call 0.Method_arg_30 (var_E4)
  loc_14A352A:   var_1D0 = Ucase(CVar(var_E4)) 'Variant
  loc_14A3543:   If (var_1D0 = "FDATE") Then
  loc_14A359C:     Call 0.Method_arg_90 (var_124, CLng(var_AA))
  loc_14A35A4:     Call 0.Method_arg_20 (var_1D4)
  loc_14A35AC:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_C8.Fields.Item("FromDate").Value)) & "'"))
  loc_14A35CB:   Else
  loc_14A35D6:     If (var_1D0 = "FTIME") Then
  loc_14A35F0:       var_F0 = var_C8.Fields
  loc_14A35F8:       var_F4 = var_F0.Item("FromTime")
  loc_14A360C:       var_16C = " - "
  loc_14A3627:       var_124 = var_C8.Fields
  loc_14A362F:       var_1D4 = var_124.Item("ToTime")
  loc_14A3637:       var_18C = var_1D4.Value
  loc_14A363F:       var_1AC = "'" & var_F4.Value & CDate(CDate(var_C8.Fields.Item("FromDate").Value)) & var_18C 
  loc_14A3660:       Call 0.Method_arg_90 (var_1D8, CLng(var_AA))
  loc_14A3668:       Call 0.Method_arg_20 (var_1DC)
  loc_14A3670:       Call 0.Method_arg_38 (CStr(var_1AC & "'"))
  loc_14A3699:     Else
  loc_14A36A4:       If (var_1D0 = "VENUENAME") Then
  loc_14A36C8:         Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A36D0:         Call 0.Method_arg_20 (var_F4)
  loc_14A36D8:         Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_14A36EE:       Else
  loc_14A36F9:         If (var_1D0 = "TITLE") Then
  loc_14A370F:           Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A3717:           Call 0.Method_arg_20 (var_F4)
  loc_14A371F:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_14A372E:         Else
  loc_14A3739:           If (var_1D0 = "FDAY") Then
  loc_14A379E:             Call 0.Method_arg_90 (var_124, CLng(var_AA))
  loc_14A37A6:             Call 0.Method_arg_20 (var_1D4)
  loc_14A37AE:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_C8.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_14A37CF:           Else
  loc_14A37F1:             If (var_1D0 = Ucase("FunctionName")) Then
  loc_14A37FF:               var_19C = 0
  loc_14A3815:               var_148 = "SELECT Name FROM FunctionType WHERE Code='"
  loc_14A382C:               var_F0 = var_A8.Fields
  loc_14A3834:               var_F4 = var_F0.Item("Func_Name")
  loc_14A3848:               var_16C = "'"
  loc_14A385B:               unk_54B9F9.Execute CStr(var_148 & var_F4.Value & var_16C), var_18C, -1
  loc_14A3863:               var_124 = var_124.Fields
  loc_14A386B:               var_19C = var_1D4.Item(var_1D4)
  loc_14A3873:               var_1D8 = var_1D8.Value
  loc_14A389C:               Call 0.Method_arg_90 (var_1DC, CLng(var_AA), var_210)
  loc_14A38A4:               Call 0.Method_arg_20 (CStr(var_1AC & var_1AC & "'"))
  loc_14A38AC:               Call 0.Method_arg_38 ("'")
  loc_14A38DD:             Else
  loc_14A38FF:               If (var_1D0 = Ucase("Advance")) Then
  loc_14A3928:                 Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A3930:                 Call 0.Method_arg_20 (var_F4)
  loc_14A3938:                 Call 0.Method_arg_38 ("'" & CStr(var_B8) & "'")
  loc_14A3950:               Else
  loc_14A3972:                 If (var_1D0 = Ucase("PayType")) Then
  loc_14A3996:                   Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A399E:                   Call 0.Method_arg_20 (var_F4)
  loc_14A39A6:                   Call 0.Method_arg_38 ("'" & var_BC & "'")
  loc_14A39BC:                 Else
  loc_14A39DE:                   If (var_1D0 = Ucase("aVNo")) Then
  loc_14A3A02:                     Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A3A0A:                     Call 0.Method_arg_20 (var_F4)
  loc_14A3A12:                     Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_14A3A28:                   Else
  loc_14A3A4A:                     If (var_1D0 = Ucase("aVDate")) Then
  loc_14A3A54:                       var_E4 = "'" & var_C4
  loc_14A3A6E:                       Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A3A76:                       Call 0.Method_arg_20 (var_F4)
  loc_14A3A7E:                       Call 0.Method_arg_38 (var_E4 & "'")
  loc_14A3A91:                     End If
  loc_14A3A91:                   End If
  loc_14A3A91:                 End If
  loc_14A3A91:               End If
  loc_14A3A91:             End If
  loc_14A3A91:           End If
  loc_14A3A91:         End If
  loc_14A3A91:       End If
  loc_14A3A91:     End If
  loc_14A3A91:   End If
  loc_14A3A94: Next var_1C0 'Integer
  loc_14A3AB2: Call 0.Method_arg_64 (var_F0, CVar(var_A8))
  loc_14A3ABA: Call 0.Method_arg_2C (var_148)
  loc_14A3AC8: Call 0.Method_arg_150 (var_16C)
  loc_14A3AD3: Call 0.Method_arg_50 (var_E4)
  loc_14A3ADD: Set var_F4 = Nothing
  loc_14A3AF7: Set var_F0 = MemVar_1F921E4 
  loc_14A3B03: Proc_6_99_1483714(var_F0, 0, var_E4)
  loc_14A3B0E: MemVar_1F921E4 = var_F0
  loc_14A3B21: Set var_A8 = Nothing
  loc_14A3B29: Set var_C8 = Nothing
  loc_14A3B31: Set var_CC = Nothing
  loc_14A3B39: Set var_D0 = Nothing
  loc_14A3B3C: Exit Sub
  loc_14A3B3D: ' Referenced from: 14A2EF0
  loc_14A3B3D: Proc_6_60_E62BC4(&HFF)
  loc_14A3B42: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E539C4
  'Data Table: 54B9D8
  Dim Me As Recordset15
  loc_E5398F: If Not((global_72 Is Nothing)) Then
  loc_E5399D:   Me.Requery -1
  loc_E539A2: End If
  loc_E539AD: Me.Requery -1
  loc_E539BD: Me.Requery -1
  loc_E539C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '186A874
  'Data Table: 54B9D8
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_A4 As Variant
  Dim var_11C As Variant
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_8A As Variant
  Dim unk_54B9F9 As Connection15
  Dim var_150 As String
  Dim var_200 As Variant
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_254 As Variant
  Dim var_148 As Double
  Dim var_294 As Variant
  Dim var_EC As Variant
  Dim var_A8 As Variant
  Dim var_1FC As Variant
  Dim var_284 As Variant
  Dim var_156 As Integer
  Dim var_2FC As TextBox
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_314 As MSHFlexGrid
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_358 As Variant
  Dim var_250 As Variant
  Dim var_3BC As MSHFlexGrid
  Dim var_9A4 As Double
  Dim var_420 As Variant
  Dim var_440 As Variant
  Dim var_454 As Variant
  Dim var_464 As Variant
  Dim var_9AC As Double
  Dim var_4D8 As Variant
  Dim var_4F8 As Variant
  Dim var_50C As MSHFlexGrid
  Dim var_520 As String
  Dim var_9B4 As Double
  Dim var_570 As Variant
  Dim var_590 As Variant
  Dim var_5A4 As Variant
  Dim var_9BC As Double
  Dim var_628 As Variant
  Dim var_648 As Variant
  Dim var_65C As MSHFlexGrid
  Dim var_9C4 As Double
  Dim var_6F4 As Variant
  Dim var_704 As Variant
  Dim var_788 As MSHFlexGrid
  Dim var_9CC As Double
  Dim var_2A8 As String
  Dim var_2AC As String
  Dim var_2B4 As String
  Dim var_2BC As String
  Dim var_2CC As String
  Dim var_2E0 As String
  Dim var_2EC As String
  Dim var_2F0 As String
  Dim var_FC As Variant
  Dim var_1AC As Variant
  Dim var_334 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_4A8 As Variant
  Dim var_540 As Variant
  Dim var_618 As Variant
  Dim var_690 As Variant
  Dim var_724 As Variant
  Dim var_88C As Variant
  Dim var_914 As Variant
  Dim var_2F4 As TextBox
  Dim var_C28 As Double
  Dim var_890 As TextBox
  Dim var_C30 As Double
  Dim var_9EC As TextBox
  Dim var_C38 As Double
  Dim var_C40 As Double
  Dim var_A1C As TextBox
  Dim var_C48 As Double
  Dim var_A34 As TextBox
  Dim var_A5C As TextBox
  Dim var_A70 As TextBox
  Dim var_A98 As TextBox
  Dim var_AAC As TextBox
  Dim var_AD8 As TextBox
  Dim var_AEC As TextBox
  Dim var_B00 As TextBox
  Dim var_B14 As TextBox
  Dim var_B28 As TextBox
  Dim var_B3C As TextBox
  Dim var_B50 As TextBox
  Dim var_C50 As Double
  Dim var_B68 As TextBox
  Dim var_C58 As Double
  Dim var_B80 As TextBox
  Dim var_C60 As Double
  Dim var_B98 As TextBox
  Dim var_C68 As Double
  Dim var_BD0 As TextBox
  Dim var_BDC As TextBox
  Dim var_BE8 As TextBox
  Dim var_BF4 As TextBox
  Dim var_C00 As TextBox
  Dim var_C0C As TextBox
  Dim var_2B0 As String
  Dim var_2E4 As String
  Dim var_300 As String
  Dim var_9E0 As String
  Dim var_A2C As String
  Dim var_A7C As String
  Dim var_B20 As String
  Dim var_B78 As String
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  loc_18685E4: On Error Goto loc_186A85A
  loc_18685F2: Set var_A0 = Me.Txt
  loc_18685F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1868621: If (Proc_6_27_EA565C(var_A4, "Voucher Date") = 0) Then
  loc_1868624:   Exit Sub
  loc_1868625: End If
  loc_1868630: Set var_A0 = Me.Txt
  loc_1868636: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_186865F: If (Proc_6_27_EA565C(var_A4, "Voucher No") = 0) Then
  loc_1868662:   Exit Sub
  loc_1868663: End If
  loc_186866E: Set var_A0 = Me.Txt
  loc_1868674: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_1868685: Set var_A8 = var_A4
  loc_186869D: If (Proc_6_27_EA565C(var_A8, "Party name") = 0) Then
  loc_18686A0:   Exit Sub
  loc_18686A1: End If
  loc_18686A5: Set var_A0 = Me.TopCtrl1
  loc_18686AB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A4)
  loc_18686C4: If (CStr() = "Add") Then
  loc_18686FA:   var_FC = Left(Format(Time, "HH:mm"), 5)
  loc_186870C:   global_116 = CStr(var_FC)
  loc_186871D: End If
  loc_186871D: Call Proc_113_69_138F9DC(1)
  loc_186872B: If (global_54 = &HFF) Then
  loc_186872E:   Exit Sub
  loc_186872F: End If
  loc_186873D: Set var_A0 = Me.Txt
  loc_1868743: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_A4)
  loc_1868767: If (CDbl(Val(var_A4.Text)) = CDbl(0)) Then
  loc_186876A:   var_CC = 1
  loc_1868773:   var_11C = 1
  loc_1868791:   var_DC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1868797:   var_EC = Trim(var_DC)
  loc_18687B3:   If (var_EC = vbNullString) Then
  loc_18687CF:     MsgBox("Fill Item Name ", 0, var_DC, var_EC, var_FC)
  loc_18687F2:     Me.FGrid.Row = 1
  loc_18687FE:     Set var_A0 = Me.FGrid
  loc_1868822:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_186882A:     Exit Sub
  loc_186882B:   End If
  loc_186882B:   var_CC = 1
  loc_1868834:   var_11C = 3
  loc_1868852:   var_DC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1868858:   var_EC = Trim(var_DC)
  loc_1868874:   If (var_EC = vbNullString) Then
  loc_186888A:     var_BC = "Item Detail Required "
  loc_1868890:     MsgBox(var_BC, 0, var_DC, var_EC, var_FC)
  loc_18688B3:     Me.FGrid.Row = 1
  loc_18688BF:     Set var_A0 = Me.FGrid
  loc_18688D4:     var_CC = CVar(CLng("14737632")) 'Long
  loc_18688E3:     Me.FGrid.CellBackColor = var_CC
  loc_18688EB:     Exit Sub
  loc_18688EC:   End If
  loc_18688EC: End If
  loc_18688EF: Call Proc_113_63_11A59A4(var_13E, FGrid.DispID_8001, var_11C, var_CC)
  loc_18688FA: If (var_13E = 0) Then
  loc_18688FD:   Exit Sub
  loc_18688FE: End If
  loc_1868909: Set var_A0 = Me.TxtGrid
  loc_186890F: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, 0, FGrid.DispID_8001)
  loc_1868917: var_A4.Visible = var_11C
  loc_1868923: Call Proc_113_66_F286A0(var_CC)
  loc_1868936: Set var_A0 = Me.Txt
  loc_186893C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1868944: var_AC = var_A4.Text
  loc_1868964: If (Proc_6_91_EF2D40(CDate(var_AC)) = 0) Then
  loc_1868972:   Set var_A0 = Me.Txt
  loc_1868978:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1868980:   var_A4.SetFocus
  loc_186898C:   Exit Sub
  loc_186898D: End If
  loc_186898F: var_8A = &HFF
  loc_186899B: unk_54B9F9.BeginTrans var_14C
  loc_18689BE: Set var_A0 = Me.Txt
  loc_18689C4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "Delete From HallBook1 Where DocID='", var_BC)
  loc_18689CC: -1 = var_A4.Text
  loc_18689E5: unk_54B9F9.Execute var_A8 & var_AC & "'", var_8A, 1
  loc_1868A0A: Set var_A0 = Me.OptCat
  loc_1868A10: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1868A18: var_A4.Value
  loc_1868A2E: If (CBool(var_A4) = &HFF) Then
  loc_1868A56:   For var_15A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_15A 'Integer
  loc_1868A60:     Set var_200 = Me.FGrid2
  loc_1868A75:     var_220 = CVar((CLng(var_200.Rows) - 1)) 'Long
  loc_1868AD0:     var_294 = (CStr(Me.FGrid.TextMatrix)) = "ü")
  loc_1868AE9:     Set var_A4 = Me.FGrid
  loc_1868AEF:     var_DC = var_A4.TextMatrix)
  loc_1868B80:     If CBool(CVar(CLng(var_92)) Or &HB And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(Val(CStr(Me.FGrid2.TextMatrix)))))) Then
  loc_1868B89:       var_156 = (var_156 + 1)
  loc_1868B9A:       Set var_A0 = Me.Txt
  loc_1868BA0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_2B0, var_156, (Trim(CVar(CStr(var_DC))) <> vbNullString), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1868BA8:       var_294 = var_A4.Text
  loc_1868BBB:       Set var_A8 = Me.Txt
  loc_1868BC1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_200, var_2E4, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1868BC9:       var_148 = var_200.Text
  loc_1868BD6:       var_148 = Val(var_2E4)
  loc_1868BE4:       Set var_254 = Me.Txt
  loc_1868BEA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_148)
  loc_1868BF9:       Proc_6_7_F25D88(var_DC, CVar(var_2F4), CVar(CLng(0)))
  loc_1868C0C:       Set var_2F8 = Me.Txt
  loc_1868C12:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2FC, var_300)
  loc_1868C1A:       var_220 = var_2FC.Text
  loc_1868C23:       var_16C = CVar(CLng(var_92)) 'Long
  loc_1868C2B:       var_18C = CVar(CLng(9)) 'Long
  loc_1868C4A:       var_1CC = CVar(CLng(var_92)) 'Long
  loc_1868C52:       var_1EC = CVar(CLng(&HA)) 'Long
  loc_1868C71:       var_250 = CVar(CLng(var_92)) 'Long
  loc_1868C79:       var_294 = CVar(CLng(3)) 'Long
  loc_1868CA2:       var_420 = CVar(CLng(var_92)) 'Long
  loc_1868CAA:       var_440 = CVar(CLng(4)) 'Long
  loc_1868CD3:       var_4D8 = CVar(CLng(var_92)) 'Long
  loc_1868CDB:       var_4F8 = CVar(CLng(5)) 'Long
  loc_1868D04:       var_570 = CVar(CLng(var_92)) 'Long
  loc_1868D0C:       var_590 = CVar(CLng(6)) 'Long
  loc_1868D35:       var_628 = CVar(CLng(var_92)) 'Long
  loc_1868D3D:       var_648 = CVar(CLng(7)) 'Long
  loc_1868D5F:       var_9C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1868D7D:       var_704 = Me.FGrid.TextMatrix)
  loc_1868DB7:       var_9CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1868DC5:       Proc_6_7_F25D88(var_85C, MemVar_1F920EC, var_9CC, CVar(CLng(8)), CVar(CLng(var_92)), var_704, CVar(CLng(2)), CVar(CLng(var_92)))
  loc_1868DCE:       Set var_890 = Me.TopCtrl1
  loc_1868DD4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C4)
  loc_1868E26:       var_150 = "Insert Into HallBook1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,PartyName,Item,"
  loc_1868E42:       var_2B4 = var_150 & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,Remarks,Total," & "U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'"
  loc_1868E93:       var_2E0 = var_2B4 & var_2B0 & "'," & CStr(var_156) & ",'" & global_128 & "','" & global_132 & "','" & MemVar_1F92070 & "',"
  loc_1868EDC:       var_284 = CVar(var_2E0 & vbNullString & CStr(var_148) & ",") & var_DC & ",'HALL','HALL','HS','" & CVar(global_56) & "','" & CVar(var_300) 
  loc_1868F1F:       var_3A8 = var_284 & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString 
  loc_1868F5B:       var_540 = var_3A8 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1868FA0:       var_724 = var_540 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString & CVar(var_9C4) & ",'" & CVar(CStr(var_704)) 
  loc_1868FF0:       var_914 = var_724 & "'," & CVar(var_9CC) & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_85C & ",'" & IIf((CStr(var_8A0) = "Add"), "A", "E") 
  loc_186901A:       unk_54B9F9.Execute CStr(var_914 & "','" & CVar(MemVar_1F92078) & "')"), var_998, -1
  loc_1869100:     End If
  loc_1869103:   Next var_15A 'Integer
  loc_186910B: Else
  loc_1869130:   For var_9D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_9D0 'Integer
  loc_186913C:     var_156 = (var_156 + 1)
  loc_1869143:     var_CC = CVar(CLng(var_92)) 'Long
  loc_1869165:     var_DC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1869192:     Set var_A4 = Me.FGrid
  loc_18691C3:     var_1CC = CVar(CLng(var_92)) 'Long
  loc_186920F:     Set var_200 = Me.FGrid
  loc_18692AF:     If CBool(CVar(CLng(var_92)) Or CVar(CLng(1)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_18692C0:       Set var_A0 = Me.Txt
  loc_18692C6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_2B0, (Trim(CVar(CStr(var_200.TextMatrix)))) = "Food"), CVar(CLng(6)), CVar(CLng(var_92)), CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)))
  loc_18692CE:       var_1CC = var_A4.Text
  loc_18692E1:       Set var_A8 = Me.Txt
  loc_18692E7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_200, var_2E4, CVar(CLng(1)) And (Trim(CVar(CStr(var_A4.TextMatrix)))) <> vbNullString), CVar(CLng(var_92)))
  loc_18692EF:       (Trim(var_DC) <> "Food") = var_200.Text
  loc_18692FC:       var_148 = Val(var_2E4)
  loc_186930A:       Set var_254 = Me.Txt
  loc_1869310:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_148)
  loc_1869318:       var_BC = CVar(var_2F4) 'Address
  loc_186931F:       Proc_6_7_F25D88(var_DC, var_BC, CVar(CLng(6)))
  loc_1869332:       Set var_2F8 = Me.Txt
  loc_1869338:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2FC, var_300)
  loc_1869340:       var_CC = var_2FC.Text
  loc_1869349:       var_16C = CVar(CLng(var_92)) 'Long
  loc_1869351:       var_18C = CVar(CLng(9)) 'Long
  loc_1869370:       var_1CC = CVar(CLng(var_92)) 'Long
  loc_1869378:       var_1EC = CVar(CLng(&HA)) 'Long
  loc_1869381:       Set var_358 = Me.FGrid
  loc_1869397:       var_250 = CVar(CLng(var_92)) 'Long
  loc_186939F:       var_294 = CVar(CLng(3)) 'Long
  loc_18693C8:       var_420 = CVar(CLng(var_92)) 'Long
  loc_18693D0:       var_440 = CVar(CLng(4)) 'Long
  loc_18693D9:       Set var_454 = Me.FGrid
  loc_18693F9:       var_4D8 = CVar(CLng(var_92)) 'Long
  loc_1869401:       var_4F8 = CVar(CLng(5)) 'Long
  loc_186941B:       var_520 = CStr(Me.FGrid.TextMatrix))
  loc_186942A:       var_570 = CVar(CLng(var_92)) 'Long
  loc_1869432:       var_590 = CVar(CLng(6)) 'Long
  loc_186943B:       Set var_5A4 = Me.FGrid
  loc_186945B:       var_628 = CVar(CLng(var_92)) 'Long
  loc_1869463:       var_648 = CVar(CLng(7)) 'Long
  loc_1869485:       var_9C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_186949D:       Set var_6F4 = Me.FGrid
  loc_18694A3:       var_704 = var_6F4.TextMatrix)
  loc_18694DD:       var_9CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_18694EB:       Proc_6_7_F25D88(var_85C, MemVar_1F920EC, var_9CC, CVar(CLng(8)), CVar(CLng(var_92)), var_704, CVar(CLng(2)), CVar(CLng(var_92)))
  loc_18694F4:       Set var_890 = Me.TopCtrl1
  loc_18694FA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C4)
  loc_186951D:       var_8A4 = CStr(var_8A0)
  loc_186954C:       var_150 = "Insert Into HallBook1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,PartyName,Item,"
  loc_1869568:       var_2B4 = var_150 & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,Remarks,Total," & "U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'"
  loc_1869576:       var_2BC = var_2B4 & var_2B0 & "',"
  loc_1869593:       var_2CC = var_2BC & CStr(var_156) & ",'" & global_128
  loc_18695B9:       var_2E0 = var_2CC & "','" & global_132 & "','" & MemVar_1F92070 & "',"
  loc_18695CC:       var_2F0 = var_2E0 & vbNullString & CStr(var_148)
  loc_18695E2:       var_1AC = CVar(var_2F0 & ",") & var_DC & ",'HALL','HALL','HS','" 
  loc_1869633:       var_388 = var_1AC & CVar(global_56) & "','" & CVar(var_300) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_358.TextMatrix))) 
  loc_186966D:       var_4A8 = var_388 & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_454.TextMatrix)))) & "," 
  loc_18696B2:       var_690 = var_4A8 & vbNullString & CVar(Val(var_520)) & "," & CVar(Val(CStr(var_5A4.TextMatrix)))) & "," & vbNullString & CVar(var_9C4) 
  loc_186970F:       var_88C = var_690 & ",'" & CVar(CStr(var_704)) & "'," & CVar(var_9CC) & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_85C & ",'" 
  loc_1869740:       unk_54B9F9.Execute CStr(var_88C & IIf((var_8A4 = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_998, -1
  loc_1869826:     End If
  loc_1869829:   Next var_9D0 'Integer
  loc_186982E: End If
  loc_186983C: Set var_A0 = Me.Txt
  loc_1869842: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_186984A: var_AC = var_A4.Text
  loc_1869857: var_148 = Val(var_AC)
  loc_1869868: Set var_A8 = Me.Txt
  loc_186986E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_200)
  loc_1869883: var_9A4 = Val(var_200.Text)
  loc_1869894: Set var_254 = Me.Txt
  loc_186989A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2F4, var_2BC)
  loc_18698AF: var_9AC = Val(var_2BC)
  loc_18698C0: Set var_2F8 = Me.Txt
  loc_18698C6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_2FC, var_2CC)
  loc_18698DB: var_9B4 = Val(var_2CC)
  loc_18698EC: Set var_314 = Me.Txt
  loc_18698F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_358, var_2E0)
  loc_1869907: var_9BC = Val(var_2E0)
  loc_1869918: Set var_3BC = Me.Txt
  loc_186991E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_454, var_2F0)
  loc_1869933: var_9C4 = Val(var_2F0)
  loc_1869944: Set var_50C = Me.Txt
  loc_186994A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5A4, var_520)
  loc_186995F: var_9CC = Val(var_520)
  loc_1869970: Set var_65C = Me.Txt
  loc_1869976: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_6F4, var_8A4)
  loc_186998B: var_C28 = Val(var_8A4)
  loc_186999C: Set var_788 = Me.Txt
  loc_18699A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_890, var_9DC)
  loc_18699B7: var_C30 = Val(var_9DC)
  loc_18699C8: Set var_99C = Me.Txt
  loc_18699CE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_9EC, var_9F0)
  loc_18699E3: var_C38 = Val(var_9F0)
  loc_18699F4: Set var_A00 = Me.Txt
  loc_18699FA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_A04, var_A08)
  loc_1869A0F: var_C40 = Val(var_A08)
  loc_1869A20: Set var_A18 = Me.Txt
  loc_1869A26: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A1C, var_A20)
  loc_1869A3B: var_C48 = Val(var_A20)
  loc_1869A4C: Set var_A30 = Me.Txt
  loc_1869A52: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_A34, var_A38)
  loc_1869A6D: Set var_A44 = Me.Txt
  loc_1869A73: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_A48)
  loc_1869A8E: Set var_A58 = Me.Txt
  loc_1869A94: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_A5C)
  loc_1869AAF: Set var_A6C = Me.Txt
  loc_1869AB5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_A70)
  loc_1869AD0: Set var_A80 = Me.Txt
  loc_1869AD6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_A84)
  loc_1869AF1: Set var_A94 = Me.Txt
  loc_1869AF7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_A98)
  loc_1869B12: Set var_AA8 = Me.Txt
  loc_1869B18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_AAC)
  loc_1869B33: Set var_ABC = Me.Txt
  loc_1869B39: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_AC0)
  loc_1869B54: Set var_AD4 = Me.Txt
  loc_1869B5A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_AD8)
  loc_1869B75: Set var_AE8 = Me.Txt
  loc_1869B7B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_AEC)
  loc_1869B96: Set var_AFC = Me.Txt
  loc_1869B9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_B00)
  loc_1869BB7: Set var_B10 = Me.Txt
  loc_1869BBD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_B14)
  loc_1869BD8: Set var_B24 = Me.Txt
  loc_1869BDE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_B28)
  loc_1869BF9: Set var_B38 = Me.Txt
  loc_1869BFF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B3C)
  loc_1869C1A: Set var_B4C = Me.Txt
  loc_1869C20: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_B50)
  loc_1869C35: var_C50 = Val(var_B50.Text)
  loc_1869C46: Set var_B64 = Me.Txt
  loc_1869C4C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_B68, var_B6C)
  loc_1869C61: var_C58 = Val(var_B6C)
  loc_1869C72: Set var_B7C = Me.Txt
  loc_1869C78: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_B80, var_B84)
  loc_1869C8D: var_C60 = Val(var_B84)
  loc_1869C9E: Set var_B94 = Me.Txt
  loc_1869CA4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_B98, var_B9C)
  loc_1869CB9: var_C68 = Val(var_B9C)
  loc_1869CC7: Proc_6_7_F25D88(var_BC, MemVar_1F920EC)
  loc_1869CD0: Set var_BB8 = Me.TopCtrl1
  loc_1869CD6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_C68)
  loc_1869CE4: var_210 = "E"
  loc_1869D1B: Set var_BC0 = Me.Txt
  loc_1869D21: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC4)
  loc_1869D3C: Set var_BCC = Me.Txt
  loc_1869D42: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_BD0)
  loc_1869D5D: Set var_BD8 = Me.Txt
  loc_1869D63: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_BDC)
  loc_1869D7E: Set var_BE4 = Me.Txt
  loc_1869D84: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_BE8)
  loc_1869D9F: Set var_BF0 = Me.Txt
  loc_1869DA5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_BF4)
  loc_1869DC0: Set var_BFC = Me.Txt
  loc_1869DC6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_C00)
  loc_1869DE1: Set var_C08 = Me.Txt
  loc_1869DE7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_C0C)
  loc_1869DFF: Set var_C14 = Me.Txt
  loc_1869E05: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_C18)
  loc_1869E39: var_2A8 = "Update HallBook Set " & "Total=" & CStr(var_148)
  loc_1869E48: var_2B4 = CStr(var_2F4.Text)
  loc_1869E8C: var_2EC = var_2A8 & ",Hallrent=" & var_2B4 & ",NetAmount=" & CStr(var_2FC.Text) & ",Amount=" & CStr(var_358.Text) & "," & "DiscPer=" & CStr(var_454.Text)
  loc_1869ECC: var_9E0 = var_2EC & ",DiscAmt=" & CStr(var_5A4.Text) & ",Tax=" & CStr(var_6F4.Text) & ",ServiceCharge=" & CStr(var_890.Text) & ",AddAmt="
  loc_1869F11: var_A2C = var_9E0 & CStr(var_9EC.Text) & ",dedAmt=" & CStr(var_A04.Text) & ",RoundOff=" & CStr(var_A1C.Text) & ",Advance=" & CStr(var_A34.Text)
  loc_1869F49: var_A7C = var_A2C & ",MenuSpl1='" & var_A38 & "',MenuSpl2='" & var_A48.Text & "',MenuSpl3='" & var_A5C.Text & "',MenuSpl4='" & var_A70.Text
  loc_1869F81: var_ACC = var_A7C & "',MenuSpl5='" & var_A84.Text & "',MenuSpl6='" & var_A98.Text & "',MenuSpl7='" & var_AAC.Text & "',Func_Name='" & var_AC0.Tag
  loc_1869FC0: var_B20 = var_ACC & "'," & "HouseKeep='" & var_AD8.Text & "',FrontOff='" & var_AEC.Text & "',Engg='" & var_B00.Text & "',Security='" & var_B14.Text
  loc_186A002: var_B78 = var_B20 & "',Chef='" & var_B28.Text & "',Board='" & var_B3C.Text & "',ExpAtt=" & CStr(var_B68.Text) & ",GuarAtt=" & CStr(var_B80.Text)
  loc_186A044: var_DC = CVar(var_B78 & ",CoverRate=" & CStr(var_B98.Text) & ",TotalCoverRate=" & CStr(var_C68) & "," & "U_Name='" & MemVar_1F920C8 & "', U_EntDt=") 'String
  loc_186A076: var_334 = var_DC & var_BC & ", U_AE='" & IIf((CStr(var_1AC) = "Add"), "A", var_210) & "',PartyName='" & CVar(var_BC4.Text) & "',Add1='" 
  loc_186A0B9: var_464 = var_334 & CVar(var_BD0.Text) & "',Add2='" & CVar(var_BDC.Text) & "',PanNo='" & CVar(var_BE8.Text) & "',ContactNo_Res='" & CVar(var_BF4.Text) 
  loc_186A0EF: var_618 = var_464 & "',ContactNo_Off='" & CVar(var_C00.Text) & "',MenuCatalog='" & CVar(var_C0C.Tag) & "' WHere Docid='" & Trim(CVar(var_C18)) 
  loc_186A106: unk_54B9F9.Execute CStr(var_618 & "'"), var_690, -1
  loc_186A2DE: Set var_A0 = Me.TopCtrl1
  loc_186A2E4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_C20)
  loc_186A2FD: If (CStr(var_148) = "Add") Then
  loc_186A314:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_186A33A:   Set var_A0 = Me.Txt
  loc_186A340:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_2A8, var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_186A348:   var_1FC = var_A4.Tag
  loc_186A351:   var_2B0 = -1 & var_2A8
  loc_186A358:   var_EC = CVar(var_2A8 & ",Hallrent=" & "' And VP.Date_From<=") 'String
  loc_186A369:   Set var_A8 = Me.Txt
  loc_186A36F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200, var_2B4)
  loc_186A377:   var_EC = var_200.Text
  loc_186A385:   Proc_6_7_F25D88(var_DC, CVar(var_2B4))
  loc_186A396:   var_1AC = var_254 & var_DC & " Order By VP.Date_From DESC" 
  loc_186A3A4:   unk_54B9F9.Execute CStr(var_1AC), , 
  loc_186A3AF:   Set var_88 = var_254
  loc_186A3F3:   If (var_88.RecordCount > 0) Then
  loc_186A404:     Set var_A0 = Me.Txt
  loc_186A40A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_186A41F:     var_148 = Val(var_A4.Text)
  loc_186A430:     Set var_A8 = Me.Txt
  loc_186A436:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_186A462:     var_BC = CVar(var_88.Fields.Item("Date_From")) 'Address
  loc_186A469:     Proc_6_7_F25D88(var_DC, var_BC)
  loc_186A48E:     var_2A8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_148) & " Where (SITE_CODE='"
  loc_186A4B8:     var_EC = CVar(var_2A8 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='" & var_200.Tag & "' and Date_From=") 'String
  loc_186A4CC:     unk_54B9F9.Execute CStr(var_EC & var_DC), var_1AC, -1
  loc_186A506:   End If
  loc_186A506: End If
  loc_186A50A: Set var_A0 = Me.TopCtrl1
  loc_186A510: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_2F8)
  loc_186A529: If (CStr(var_148) = "Add") Then
  loc_186A54F:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078
  loc_186A56D:   Call 0.Method_arg_50 (var_2A8, var_AC & "' and UNAME='" & MemVar_1F920C8 & "' AND ENAME='", var_BC, -1, var_A0)
  loc_186A57D:   var_2B4 = var_A4 & var_2A8 & "' "
  loc_186A586:   unk_54B9F9.Execute var_2B4, 0, var_A8
  loc_186A596:    = var_A4.Item()
  loc_186A59E:    = var_A8.Value
  loc_186A5CF:   If (var_A0.Fields > 0) Then
  loc_186A5F0:     Set var_A0 = Me.Txt
  loc_186A5F6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_186A5FE:     var_BC = var_A4.Text
  loc_186A607:     var_150 = -1 & var_AC
  loc_186A61C:     var_2AC = var_AC & "' and UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F92078 & "' And UNAME='"
  loc_186A633:     Call 0.Method_arg_50 (var_2B4, var_2AC & MemVar_1F920C8 & "' AND ENAME='")
  loc_186A64C:     unk_54B9F9.Execute var_A8 & var_2B4 & "'  ", , 
  loc_186A677:   Else
  loc_186A69B:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_210)
  loc_186A6A4:     var_2A8 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='"
  loc_186A6AB:     var_2B0 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F92078 & "','"
  loc_186A6BC:     Set var_A0 = Me.Txt
  loc_186A6C2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_2AC)
  loc_186A6CA:     var_2B0 = var_A4.Text
  loc_186A6EE:     var_CC = MemVar_1F920EC
  loc_186A6F6:     Proc_6_7_F25D88(var_BC, var_CC)
  loc_186A728:     unk_54B9F9.Execute CStr(CVar(var_A8 & var_2AC & "','" & MemVar_1F92070 & "',") & var_BC & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_186A75E:   End If
  loc_186A75E: End If
  loc_186A764: unk_54B9F9.CommitTrans
  loc_186A76B: var_8A = 0
  loc_186A77C: Set var_A0 = Me.Txt
  loc_186A782: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4)
  loc_186A79E: var_8A = 0
  loc_186A7AC: Me.Requery -1
  loc_186A7BC: Me.Requery -1
  loc_186A7E6: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_186A7F6: Set var_A0 = Me.TopCtrl1
  loc_186A7FC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_CC)
  loc_186A815: If (CStr(var_8A) = "Add") Then
  loc_186A818:   Call TopCtrl1_UnknownEvent_A()
  loc_186A81D:   Exit Sub
  loc_186A81E: End If
  loc_186A841: Call Proc_113_65_FAE188(Proc_5_1_100CB50("INI", Me), global_88)
  loc_186A84C: Call Proc_113_62_19F19D8(var_8A)
  loc_186A856: Set var_88 = Nothing
  loc_186A859: Exit Sub
  loc_186A85A: ' Referenced from: 18685E4
  loc_186A860: If (var_8A = &HFF) Then
  loc_186A869:   unk_54B9F9.RollbackTrans
  loc_186A86E: End If
  loc_186A86E: Proc_6_60_E62BC4()
  loc_186A873: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '1218618
  'Data Table: 54B9D8
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_B8 As Integer
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_B6 As Integer
  Dim var_BC As Integer
  Dim var_104 As MSHFlexGrid
  Dim var_118 As Variant
  loc_1218151: Set var_9C = Me.TopCtrl1
  loc_1218157: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((CLng(Me.FGrid.Rows) < 2))
  loc_1218179: If ( Or (CStr() = "Browse")) Then
  loc_121817C:   Exit Sub
  loc_121817D: End If
  loc_121817F: var_B8 = 0
  loc_1218195: var_CC = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_121819A: var_EC = 0
  loc_12181C1: var_B6 = CInt(Val(CStr(Me.FGrid2.TextMatrix))))
  loc_12181FA: For var_100 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_B2 = var_100 'Integer
  loc_1218204:   Set var_104 = Me.FGrid
  loc_121820B:   var_CC = CVar(CLng(var_B2)) 'Long
  loc_1218213:   var_EC = CVar(CLng(0)) 'Long
  loc_1218244:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(var_B6)) Then
  loc_121824A:     var_BC = var_B2
  loc_1218268:     For var_108 = 1 To CInt((CLng(var_104.Cols) - 1)): var_B4 = var_108 'Integer
  loc_121827A:       var_104.Row = CVar(CLng(var_B2))
  loc_121828B:       var_104.Col = CVar(CLng(var_B4))
  loc_121829C:       var_104.CellBackColor = &H808080
  loc_12182AD:       var_104.CellForeColor = &HFFFFFF
  loc_12182B5:     Next var_108 'Integer
  loc_12182BD:   Else
  loc_12182C1:     var_CC = CVar(CLng(var_B2)) 'Long
  loc_12182C6:     var_EC = &HB
  loc_12182DD:     var_B0 = CStr(var_104.TextMatrix))
  loc_12182EF:     var_118 = CVar(CLng(var_B2)) 'Long
  loc_1218321:     If (CVar(CLng(0)) And (CStr(var_104.TextMatrix)) = "ü")) Then
  loc_121833F:       For var_150 = 1 To CInt((CLng(var_104.Cols) - 1)):   var_B4 = var_150 'Integer
  loc_1218351:         var_104.Row = CVar(CLng(var_B2))
  loc_1218362:         var_104.Col = CVar(CLng(var_B4))
  loc_1218373:         var_104.CellBackColor = &HC0FFC0
  loc_1218384:         var_104.CellForeColor = 2
  loc_121838C:       Next var_150 'Integer
  loc_1218394:     Else
  loc_1218398:       var_CC = CVar(CLng(var_B2)) 'Long
  loc_121839D:       var_EC = &HB
  loc_12183C8:       If (CDbl(Val(CStr(var_104.TextMatrix)))) = CDbl(var_B6)) Then
  loc_12183F0:         For var_154 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):     var_B4 = var_154 'Integer
  loc_12183FD:           var_104.ScrollTrack = True
  loc_121840E:           var_104.Row = CVar(CLng(var_B2))
  loc_121841F:           var_104.Col = CVar(CLng(var_B4))
  loc_1218430:           var_104.CellBackColor = &HC0FFFF
  loc_1218441:           var_104.CellForeColor = &HFF0000
  loc_1218449:         Next var_154 'Integer
  loc_1218451:       Else
  loc_121846C:         For var_158 = 1 To CInt((CLng(var_104.Cols) - 1)):       var_B4 = var_158 'Integer
  loc_121847E:           var_104.Row = CVar(CLng(var_B2))
  loc_121848F:           var_104.Col = CVar(CLng(var_B4))
  loc_12184A0:           var_104.CellBackColor = &HFFFFFF
  loc_12184B1:           var_104.CellForeColor = 0
  loc_12184B9:         Next var_158 'Integer
  loc_12184BE:       End If
  loc_12184BE:     End If
  loc_12184BE:   End If
  loc_12184C0:   Set var_104 = Nothing 
  loc_12184C7: Next var_100 'Integer
  loc_12184F6: For var_15C = 1 To CInt((&H52 - (CLng(Me.FGrid.Rows) - CLng(var_BC)))): var_B2 = var_15C 'Integer
  loc_1218515:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1218524:   Me.FGrid.Row = 0
  loc_1218545:   Me.FGrid.Col = CVar(CLng(0))
  loc_121855D:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_1218577:   Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_121857F:   var_CC = vbNullString
  loc_1218589:   Set var_88 = Me.FGrid
  loc_121859D: Next var_15C 'Integer
  loc_12185A8: If (var_BC <= 0) Then
  loc_12185AD:   var_BC = 1
  loc_12185B0: End If
  loc_12185C3: Me.FGrid.TopRow = CVar(CLng(var_BC))
  loc_12185D2: var_CC = CVar(CLng((var_BC + 1))) 'Long
  loc_12185E1: Me.FGrid.Row = CVar(CLng(var_BC))
  loc_12185F7: Me.FGrid.Redraw = True
  loc_1218603: Set var_88 = Me.FGrid
  loc_1218614: Exit Sub
End Sub

Private Sub PrintInst_UnknownEvent_9 '149ABB0
  'Data Table: 54B9D8
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D8 As Variant
  Dim unk_54B9F9 As Connection15
  Dim var_C4 As Recordset15
  Dim var_F4 As Variant
  Dim var_D4 As Fields15
  Dim var_104 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_9C As Recordset15
  Dim var_11C As Variant
  Dim var_13E As Integer
  Dim var_BC As Recordset15
  Dim var_108 As Variant
  Dim var_1B8 As Variant
  Dim var_190 As Variant
  Dim var_1BC As Field20
  loc_1499F5C: On Error Goto loc_149ABA9
  loc_1499F66: var_C8 = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName,ItemGrp.Name As ItemGrpName "
  loc_1499F74: var_D0 = var_C8 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code) Inner Join ItemGrp On ItemGrp.Code=I.ItemGroup "
  loc_1499F8C: Set var_D4 = Me.Txt
  loc_1499F92: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8)
  loc_1499FAA: var_88 = var_D0 & "Where HB.DocID='" & var_D8.Text & "'"
  loc_1499FE1: Set var_D4 = Me.Txt
  loc_1499FE7: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8, var_C8, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_1499FEF: var_104 = var_D8.Text
  loc_1499FF8: var_CC = -1 & var_C8
  loc_149A008: unk_54B9F9.Execute var_C8 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_108, 
  loc_149A013: Set var_BC = var_108
  loc_149A049: Set var_D4 = Me.Txt
  loc_149A04F: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8, var_C8, "Select AmtCr,PayType,VNo,VDate FROM PayChargeH Where VType='AD' AND ContraDocId='")
  loc_149A057: var_104 = var_D8.Text
  loc_149A060: var_CC = -1 & var_C8
  loc_149A070: unk_54B9F9.Execute var_C8 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_108, 
  loc_149A07B: Set var_C4 = var_108
  loc_149A0A7: If (var_C4.RecordCount > 0) Then
  loc_149A0D2:   var_B4 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VNo")))
  loc_149A10A:   var_B8 = "& " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")))
  loc_149A143:   Proc_6_47_EF59D0(var_11C, CVar(var_C4.Fields.Item("AmtCr")))
  loc_149A14B:   var_13C = (CVar(var_AC) + var_11C)
  loc_149A150:   var_AC = CSng(var_13C)
  loc_149A187:   var_B0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")))
  loc_149A193:   var_C4.MoveNext
  loc_149A198:   ' Referenced from: 149A309
  loc_149A1A7:   If Not(var_C4.EOF) Then
  loc_149A1D7:     Proc_6_47_EF59D0(var_11C, CVar(var_C4.Fields.Item("AmtCr")))
  loc_149A1DF:     var_13C = (CVar(var_AC) + var_11C)
  loc_149A1E4:     var_AC = CSng(var_13C)
  loc_149A22C:     If (var_AC <> Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")), var_B0)) Then
  loc_149A265:       var_B0 = var_AC & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")), var_B0 & ", ")
  loc_149A2AB:       var_B4 = var_B4 & ", " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VNo")))
  loc_149A2C2:       var_C8 = var_B8 & ", "
  loc_149A2DC:       var_D8 = var_C4.Fields.Item("VDate")
  loc_149A2F1:       var_B8 = var_C8 & Proc_6_38_E68A98(CVar(var_D8))
  loc_149A301:     End If
  loc_149A304:     var_C4.MoveNext
  loc_149A309:     GoTo loc_149A198
  loc_149A30C:   End If
  loc_149A30F: Else
  loc_149A318:   var_AC = 0
  loc_149A31E:   var_B0 = vbNullString
  loc_149A321: End If
  loc_149A33F: Set var_D4 = Me.Txt
  loc_149A345: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8, var_C8, "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_149A34D: var_104 = var_D8.Text
  loc_149A356: var_CC = -1 & var_C8
  loc_149A366: unk_54B9F9.Execute Proc_6_38_E68A98(CVar(var_D8)) & "'", var_108, var_AC
  loc_149A371: Set var_C0 = var_108
  loc_149A39D: If (var_C0.RecordCount > 0) Then
  loc_149A3A0:   ' Referenced from: 149A43B
  loc_149A3AF:   If Not(var_C0.EOF) Then
  loc_149A3C8:     var_104 = vbNullString
  loc_149A3DD:     var_13C = IIf((var_A4 = vbNullString), var_104, ",")
  loc_149A3E5:     var_170 = CVar(var_A4) & var_13C 
  loc_149A3FB:     var_D4 = var_C0.Fields
  loc_149A403:     var_D8 = var_D4.Item("VenuName")
  loc_149A418:     var_A4 = CStr(var_170 & var_D8.Value)
  loc_149A436:     var_C0.MoveNext
  loc_149A43B:     GoTo loc_149A3A0
  loc_149A43E:   End If
  loc_149A43E: End If
  loc_149A446: If (var_88 = vbNullString) Then
  loc_149A449:   Exit Sub
  loc_149A44A: End If
  loc_149A460: unk_54B9F9.Execute var_88, var_104, -1
  loc_149A46B: Set var_9C = var_D4
  loc_149A47A: var_10C = var_9C.RecordCount
  loc_149A488: If (var_10C <= 0) Then
  loc_149A491:   Call 0.Method_arg_50 (var_C8)
  loc_149A4B2:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_13C, var_170)
  loc_149A4C2:   Exit Sub
  loc_149A4C3: End If
  loc_149A4D9: Set var_D4 = var_9C 
  loc_149A4E5: var_13E = CreateFieldDefFile(var_D4, MemVar_1F920B4 & "\FuncProspectInstructions.ttx")
  loc_149A4EF: Set var_9C = var_D4
  loc_149A4F5: var_F4 = CVar(var_13E) 'Integer
  loc_149A4F8: var_98 = var_F4 'Variant
  loc_149A514: var_C8 = MemVar_1F920B4 & "\FuncProspectInstructions.RPT"
  loc_149A51D: Call 0.Method_arg_1C (var_C8, var_F4, var_D4)
  loc_149A528: MemVar_1F921E4 = var_D4
  loc_149A543: Call 0.Method_arg_90 (var_D4, var_10C, var_9E, 1)
  loc_149A54B: Call 0.Method_arg_24 (var_13E, &HFF)
  loc_149A557: For var_1A4 =  To CInt(var_10C): var_D4 = var_1A4 'Integer
  loc_149A570:   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149A578:   Call 0.Method_arg_20 (var_D8)
  loc_149A580:   Call 0.Method_arg_30 (var_C8)
  loc_149A596:   var_1B4 = Ucase(CVar(var_C8)) 'Variant
  loc_149A5AF:   If (var_1B4 = "FDATE") Then
  loc_149A608:     Call 0.Method_arg_90 (var_108, CLng(var_9E))
  loc_149A610:     Call 0.Method_arg_20 (var_1B8)
  loc_149A618:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & "'"))
  loc_149A637:   Else
  loc_149A642:     If (var_1B4 = "FTIME") Then
  loc_149A65C:       var_D4 = var_BC.Fields
  loc_149A664:       var_D8 = var_D4.Item("FromTime")
  loc_149A678:       var_150 = " - "
  loc_149A693:       var_108 = var_BC.Fields
  loc_149A69B:       var_1B8 = var_108.Item("ToTime")
  loc_149A6A3:       var_170 = var_1B8.Value
  loc_149A6AB:       var_190 = "'" & var_D8.Value & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & var_170 
  loc_149A6CC:       Call 0.Method_arg_90 (var_1BC, CLng(var_9E))
  loc_149A6D4:       Call 0.Method_arg_20 (var_1C0)
  loc_149A6DC:       Call 0.Method_arg_38 (CStr(var_190 & "'"))
  loc_149A705:     Else
  loc_149A710:       If (var_1B4 = "VENUENAME") Then
  loc_149A734:         Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149A73C:         Call 0.Method_arg_20 (var_D8)
  loc_149A744:         Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_149A75A:       Else
  loc_149A765:         If (var_1B4 = "TITLE") Then
  loc_149A77B:           Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149A783:           Call 0.Method_arg_20 (var_D8)
  loc_149A78B:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_149A79A:         Else
  loc_149A7A5:           If (var_1B4 = "FDAY") Then
  loc_149A80A:             Call 0.Method_arg_90 (var_108, CLng(var_9E))
  loc_149A812:             Call 0.Method_arg_20 (var_1B8)
  loc_149A81A:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_BC.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_149A83B:           Else
  loc_149A85D:             If (var_1B4 = Ucase("FunctionName")) Then
  loc_149A86B:               var_180 = 0
  loc_149A881:               var_12C = "SELECT Name FROM FunctionType WHERE Code='"
  loc_149A898:               var_D4 = var_9C.Fields
  loc_149A8A0:               var_D8 = var_D4.Item("Func_Name")
  loc_149A8B4:               var_150 = "'"
  loc_149A8C7:               unk_54B9F9.Execute CStr(var_12C & var_D8.Value & var_150), var_170, -1
  loc_149A8CF:               var_108 = var_108.Fields
  loc_149A8D7:               var_180 = var_1B8.Item(var_1B8)
  loc_149A8DF:               var_1BC = var_1BC.Value
  loc_149A908:               Call 0.Method_arg_90 (var_1C0, CLng(var_9E), var_1F4)
  loc_149A910:               Call 0.Method_arg_20 (CStr(var_190 & var_190 & "'"))
  loc_149A918:               Call 0.Method_arg_38 ("'")
  loc_149A949:             Else
  loc_149A96B:               If (var_1B4 = Ucase("Advance")) Then
  loc_149A994:                 Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149A99C:                 Call 0.Method_arg_20 (var_D8)
  loc_149A9A4:                 Call 0.Method_arg_38 ("'" & CStr(var_AC) & "'")
  loc_149A9BC:               Else
  loc_149A9DE:                 If (var_1B4 = Ucase("PayType")) Then
  loc_149AA02:                   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149AA0A:                   Call 0.Method_arg_20 (var_D8)
  loc_149AA12:                   Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_149AA28:                 Else
  loc_149AA4A:                   If (var_1B4 = Ucase("aVNo")) Then
  loc_149AA6E:                     Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149AA76:                     Call 0.Method_arg_20 (var_D8)
  loc_149AA7E:                     Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_149AA94:                   Else
  loc_149AAB6:                     If (var_1B4 = Ucase("aVDate")) Then
  loc_149AAC0:                       var_C8 = "'" & var_B8
  loc_149AADA:                       Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149AAE2:                       Call 0.Method_arg_20 (var_D8)
  loc_149AAEA:                       Call 0.Method_arg_38 (var_C8 & "'")
  loc_149AAFD:                     End If
  loc_149AAFD:                   End If
  loc_149AAFD:                 End If
  loc_149AAFD:               End If
  loc_149AAFD:             End If
  loc_149AAFD:           End If
  loc_149AAFD:         End If
  loc_149AAFD:       End If
  loc_149AAFD:     End If
  loc_149AAFD:   End If
  loc_149AB00: Next var_1A4 'Integer
  loc_149AB1E: Call 0.Method_arg_64 (var_D4, CVar(var_9C))
  loc_149AB26: Call 0.Method_arg_2C (var_12C)
  loc_149AB34: Call 0.Method_arg_150 (var_150)
  loc_149AB3F: Call 0.Method_arg_50 (var_C8)
  loc_149AB49: Set var_D8 = Nothing
  loc_149AB63: Set var_D4 = MemVar_1F921E4 
  loc_149AB6F: Proc_6_99_1483714(var_D4, 0, var_C8)
  loc_149AB7A: MemVar_1F921E4 = var_D4
  loc_149AB8D: Set var_9C = Nothing
  loc_149AB95: Set var_BC = Nothing
  loc_149AB9D: Set var_C0 = Nothing
  loc_149ABA5: Set var_C4 = Nothing
  loc_149ABA8: Exit Sub
  loc_149ABA9: ' Referenced from: 1499F5C
  loc_149ABA9: Proc_6_60_E62BC4(&HFF)
  loc_149ABAE: Exit Sub
End Sub

Private Sub CmdMore_UnknownEvent_9 'F03910
  'Data Table: 54B9D8
  Dim var_88 As Frame
  Dim var_A4 As TextBox
  loc_F0384B: If (Me.Frame1.Visible = 0) Then
  loc_F0385A:   Me.Frame1.Visible = True
  loc_F03866:   Set var_88 = Me.TopCtrl1
  loc_F0386C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_F03885:   If (CStr() <> "Browse") Then
  loc_F03893:     Set var_88 = Me.Txt
  loc_F03899:     Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H1C))
  loc_F038A1:     var_A4.SetFocus
  loc_F038AD:   End If
  loc_F038B0: Else
  loc_F038BC:   Me.Frame1.Visible = False
  loc_F038C8:   Set var_88 = Me.TopCtrl1
  loc_F038CE:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A4)
  loc_F038E7:   If (CStr() <> "Browse") Then
  loc_F038F5:     Set var_88 = Me.Txt
  loc_F038FB:     Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H17))
  loc_F03903:     var_A4.SetFocus
  loc_F0390F:   End If
  loc_F0390F: End If
  loc_F0390F: Exit Sub
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F599C0
  'Data Table: 54B9D8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F598A0: On Error Goto loc_F599BA
  loc_F598B2: Me.DGFPNo.Visible = False
  loc_F598D1: If (Me.RecordCount > 0) Then
  loc_F59910:   Set var_B4 = Me.Txt
  loc_F59916:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5991E:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F59951:   var_B0 = Me.Fields.Item("Name")
  loc_F59970:   Set var_B4 = Me.Txt
  loc_F59976:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5997E:   var_B8.Text = CStr(var_B0.Value)
  loc_F59994: End If
  loc_F5999F: Set var_A8 = Me.Txt
  loc_F599A5: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1))
  loc_F599AD: var_B0.SetFocus
  loc_F599B9: Exit Sub
  loc_F599BA: ' Referenced from: F598A0
  loc_F599BA: Proc_6_60_E62BC4(var_B0)
  loc_F599BF: Exit Sub
End Sub

Private Sub DG_Catalog_UnknownEvent_9 'F621D0
  'Data Table: 54B9D8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F620A8: On Error Goto loc_F621C7
  loc_F620BA: Me.DG_Catalog.Visible = False
  loc_F620D9: If (Me.RecordCount > 0) Then
  loc_F62118:   Set var_B4 = Me.Txt
  loc_F6211E:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F62126:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F62159:   var_B0 = Me.Fields.Item("Name")
  loc_F62178:   Set var_B4 = Me.Txt
  loc_F6217E:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F62186:   var_B8.Text = CStr(var_B0.Value)
  loc_F6219C:   Call Proc_113_56_11DA918()
  loc_F621A1: End If
  loc_F621AC: Set var_A8 = Me.Txt
  loc_F621B2: Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D))
  loc_F621BA: var_B0.SetFocus
  loc_F621C6: Exit Sub
  loc_F621C7: ' Referenced from: F620A8
  loc_F621C7: Proc_6_60_E62BC4(var_B0)
  loc_F621CC: Exit Sub
End Sub

Private Sub OptCat_UnknownEvent_9 'E8504C
  'Data Table: 54B9D8
  Dim var_86 As Integer
  loc_E84FDB: var_86 = KeyCode
  loc_E84FE4: If (var_86 = 0) Then
  loc_E84FF5:   Me.FGrid2.Visible = True
  loc_E85009:   Me.Shape1.Visible = True
  loc_E85014: Else
  loc_E8501A:   If (var_86 = 1) Then
  loc_E8502C:     Me.FGrid2.Visible = False
  loc_E85040:     Me.Shape1.Visible = False
  loc_E85048:   End If
  loc_E85048: End If
  loc_E85048: Exit Sub
  loc_E85049: Result var_86 End Sub 'Double
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12950B0
  'Data Table: 54B9D8
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_BC As String
  Dim var_94 As Fields15
  loc_1294AD7: Set var_88 = Me.Txt
  loc_1294ADD: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294AE5: var_8C.SelStart = 0
  loc_1294AFE: Set var_88 = Me.Txt
  loc_1294B04: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294B0C: var_90 = var_8C.Text
  loc_1294B1F: Set var_94 = Me.Txt
  loc_1294B25: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1294B2D: var_98.SelLength = Len(var_90)
  loc_1294B4A: Set var_88 = Me.Txt
  loc_1294B50: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1294B5E: Proc_6_74_E226B0(var_8C)
  loc_1294B6A: Call Proc_113_66_F286A0(var_8C)
  loc_1294B72: var_9A = Index
  loc_1294B7D: If (var_9A = CInt(0)) Then
  loc_1294B93:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_1294BEC:   Set var_88 = Me.Txt
  loc_1294BF2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90)
  loc_1294BFA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1294C12:   If (var_9A Or (var_90 = vbNullString)) Then
  loc_1294C15:     Exit Sub
  loc_1294C16:   End If
  loc_1294C23:   Set var_88 = Me.Txt
  loc_1294C29:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294C31:   var_90 = var_8C.Text
  loc_1294C39:   var_D4 = CVar(var_90) 'String
  loc_1294C7E:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1294C87:     Me.MoveFirst
  loc_1294CAC:     Set var_88 = Me.Txt
  loc_1294CB2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_1294CBA:     0 = var_8C.Text
  loc_1294CC8:     Proc_6_17_EAA2B0(var_D4, CVar(var_90))
  loc_1294CDE:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_1294CF6:   End If
  loc_1294CF9: Else
  loc_1294D01:   If (var_9A = CInt(&H2D)) Then
  loc_1294D52:     Set var_88 = Me.Txt
  loc_1294D58:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294D78:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1294D7B:       Exit Sub
  loc_1294D7C:     End If
  loc_1294D89:     Set var_88 = Me.Txt
  loc_1294D8F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294D97:     var_90 = var_8C.Text
  loc_1294D9F:     var_D4 = CVar(var_90) 'String
  loc_1294DE4:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1294DED:       Me.MoveFirst
  loc_1294E12:       Set var_88 = Me.Txt
  loc_1294E18:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_1294E20:       0 = var_8C.Text
  loc_1294E2E:       Proc_6_17_EAA2B0(var_D4, CVar(var_90))
  loc_1294E44:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_1294E5C:     End If
  loc_1294E5F:   Else
  loc_1294E67:     If (var_9A = CInt(1)) Then
  loc_1294EB8:       Set var_88 = Me.Txt
  loc_1294EBE:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294EDE:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1294EE1:         Exit Sub
  loc_1294EE2:       End If
  loc_1294EEF:       Set var_88 = Me.Txt
  loc_1294EF5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294F0F:       var_BC = "FPNo"
  loc_1294F26:       var_98 = Me.Fields.Item(var_BC)
  loc_1294F4A:       If CBool(CVar(var_8C.Text) <> var_98.Value) Then
  loc_1294F53:         Me.MoveFirst
  loc_1294F65:         Set var_88 = Me.Txt
  loc_1294F6B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1294FA6:         Me.Find "FPNo =" & CStr(Val(var_8C.Text)), 0, 1
  loc_1294FBB:       End If
  loc_1294FBE:     Else
  loc_1294FC6:       If Not (var_9A = CInt(&H11)) Then
  loc_1294FD1:         If Not (var_9A = CInt(6)) Then
  loc_1294FDC:           If Not (var_9A = CInt(&H12)) Then
  loc_1294FE7:             If Not (var_9A = CInt(7)) Then
  loc_1294FF2:               If Not (var_9A = CInt(9)) Then
  loc_1294FFD:                 If Not (var_9A = CInt(&H28)) Then
  loc_1295008:                   If Not (var_9A = CInt(&H14)) Then
  loc_1295013:                     If Not (var_9A = CInt(&H15)) Then
  loc_129501E:                       If Not (var_9A = CInt(&H16)) Then
  loc_1295029:                         If Not (var_9A = CInt(&HC)) Then
  loc_1295034:                           If (var_9A = CInt(8)) Then
  loc_1295037:                           End If
  loc_1295037:                         End If
  loc_1295037:                       End If
  loc_1295037:                     End If
  loc_1295037:                   End If
  loc_1295037:                 End If
  loc_1295037:               End If
  loc_1295037:             End If
  loc_1295037:           End If
  loc_1295037:         End If
  loc_1295046:         Set var_88 = Me.Txt
  loc_129504C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_1295054:         var_8C.SelStart = var_BC
  loc_129506D:         Set var_88 = Me.Txt
  loc_1295073:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_129508E:         Set var_94 = Me.Txt
  loc_1295094:         Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_129509C:         var_98.SelLength = Len(var_8C.Text)
  loc_12950AF:       End If
  loc_12950AF:     End If
  loc_12950AF:   End If
  loc_12950AF: End If
  loc_12950AF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10E01BC
  'Data Table: 54B9D8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_10DFECA: If (CLng(Shift) = &H1B) Then
  loc_10DFECD:   Call Proc_113_66_F286A0()
  loc_10DFED2:   Exit Sub
  loc_10DFED3: End If
  loc_10DFED6: var_86 = KeyCode
  loc_10DFEE1: If (var_86 = CInt(0)) Then
  loc_10DFEFC:   Set var_9C = Nothing
  loc_10DFF07:   Set var_98 = Nothing
  loc_10DFF35:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_10DFF4C: Else
  loc_10DFF54:   If (var_86 = CInt(1)) Then
  loc_10DFF6F:     Set var_9C = Nothing
  loc_10DFFA8:     Proc_6_69_134A198(Me.DGFPNo, Me.Txt, KeyCode, global_84, Shift, 0, 1, Nothing)
  loc_10DFFBF:   Else
  loc_10DFFC7:     If (var_86 = CInt(&H2D)) Then
  loc_10DFFE2:       Set var_9C = Nothing
  loc_10E001B:       Proc_6_69_134A198(Me.DG_Catalog, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_10E002F:     End If
  loc_10E002F:   End If
  loc_10E002F: End If
  loc_10E0060: Set var_98 = Me.DGFPNo
  loc_10E0077: Set var_9C = Me.DG_Catalog
  loc_10E00BB: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_10E00DC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H28))) Then
  loc_10E00E5:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, var_9C)
  loc_10E00EA:   End If
  loc_10E00EE:   Set var_8C = Me.TopCtrl1
  loc_10E00F4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(0)
  loc_10E0116:   If ((CStr(1) = "Add") And (KeyCode <> CInt(0))) Then
  loc_10E012E:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10E0137:       Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_10E013C:     End If
  loc_10E013F:   Else
  loc_10E0143:     Set var_8C = Me.TopCtrl1
  loc_10E0149:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C)
  loc_10E016B:     If ((CStr(0) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_10E0183:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10E018C:         Proc_6_76_E52838(Shift)
  loc_10E0191:       End If
  loc_10E0191:     End If
  loc_10E0191:   End If
  loc_10E01AF:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H28))) Then
  loc_10E01B5:     Call Proc_113_67_F0C210(KeyCode)
  loc_10E01BA:   End If
  loc_10E01BA: End If
  loc_10E01BA: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '119FCFC
  'Data Table: 54B9D8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B8 As TextBox
  loc_119F8DC: On Error Goto loc_119FCF4
  loc_119F8E2: Proc_6_58_E054C0(arg_10)
  loc_119F8EA: var_86 = KeyAscii
  loc_119F8F5: If (var_86 = CInt(0)) Then
  loc_119F914:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_119F92A:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_119F944:     var_B0 = "Name"
  loc_119F95F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10)
  loc_119F96E:   End If
  loc_119F971: Else
  loc_119F979:   If (var_86 = CInt(1)) Then
  loc_119F998:     If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_119F9AE:       Me.DGFPNo.Tag = CVar(CStr(KeyAscii))
  loc_119F9BD:       Set var_B8 = Me.Txt
  loc_119F9E3:       Proc_6_89_146F1AC(var_B8, KeyAscii, global_84, arg_10, "FPNO")
  loc_119F9F2:     End If
  loc_119F9F5:   Else
  loc_119F9FD:     If (var_86 = CInt(&H26)) Then
  loc_119FA0A:       Set var_8C = Me.Txt
  loc_119FA10:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_119FA2B:       Proc_6_42_129A86C(var_B8, arg_10, 8, 0)
  loc_119FA3A:     Else
  loc_119FA42:       If (var_86 = CInt(&H2D)) Then
  loc_119FA61:         If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_119FA68:           Set var_B8 = Me.Txt
  loc_119FA73:           var_B0 = "Name"
  loc_119FA8E:           Proc_6_89_146F1AC(var_B8, KeyAscii, global_76, arg_10, var_B0)
  loc_119FA9D:         End If
  loc_119FAA0:       Else
  loc_119FAA8:         If (var_86 = CInt(&HB)) Then
  loc_119FAB5:           Set var_8C = Me.Txt
  loc_119FABB:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_119FAD6:           Proc_6_42_129A86C(var_B8, arg_10, 6, 2)
  loc_119FAE5:         Else
  loc_119FAED:           If Not (var_86 = CInt(&H12)) Then
  loc_119FAF8:             If (var_86 = CInt(&H11)) Then
  loc_119FAFB:             End If
  loc_119FB09:             Set var_8C = Me.Txt
  loc_119FB0F:             Call 0.Method_Txt_KeyPress0 (CInt(6), var_B8, var_B0)
  loc_119FB17:             var_B0 = var_B8.Text
  loc_119FB33:             If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_119FB40:               Set var_8C = Me.Txt
  loc_119FB46:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8)
  loc_119FB61:               Proc_6_42_129A86C(var_B8, arg_10, 2)
  loc_119FB6D:             End If
  loc_119FB70:           Else
  loc_119FB78:             If (var_86 = CInt(6)) Then
  loc_119FB89:               Set var_8C = Me.Txt
  loc_119FB8F:               Call 0.Method_Txt_KeyPress0 (CInt(&H11), var_B8, var_B0)
  loc_119FB97:               2 = var_B8.Text
  loc_119FBB3:               If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_119FBC0:                 Set var_8C = Me.Txt
  loc_119FBC6:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8)
  loc_119FBE1:                 Proc_6_42_129A86C(var_B8, arg_10, 7)
  loc_119FBED:               End If
  loc_119FBF0:             Else
  loc_119FBF8:               If Not (var_86 = CInt(7)) Then
  loc_119FC03:                 If Not (var_86 = CInt(9)) Then
  loc_119FC0E:                   If Not (var_86 = CInt(&H28)) Then
  loc_119FC19:                     If Not (var_86 = CInt(&HC)) Then
  loc_119FC24:                       If (var_86 = CInt(8)) Then
  loc_119FC27:                       End If
  loc_119FC27:                     End If
  loc_119FC27:                   End If
  loc_119FC27:                 End If
  loc_119FC31:                 Set var_8C = Me.Txt
  loc_119FC37:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_119FC52:                 Proc_6_42_129A86C(var_B8, arg_10, 7)
  loc_119FC61:               Else
  loc_119FC69:                 If Not (var_86 = CInt(&H14)) Then
  loc_119FC74:                   If (var_86 = CInt(&H15)) Then
  loc_119FC77:                   End If
  loc_119FC81:                   Set var_8C = Me.Txt
  loc_119FC87:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_119FCA2:                   Proc_6_42_129A86C(var_B8, arg_10, 4)
  loc_119FCB1:                 Else
  loc_119FCB9:                   If (var_86 = CInt(&H16)) Then
  loc_119FCC6:                     Set var_8C = Me.Txt
  loc_119FCCC:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_119FCE7:                     Proc_6_42_129A86C(var_B8, arg_10, 5)
  loc_119FCF3:                   End If
  loc_119FCF3:                 End If
  loc_119FCF3:               End If
  loc_119FCF3:             End If
  loc_119FCF3:           End If
  loc_119FCF3:         End If
  loc_119FCF3:       End If
  loc_119FCF3:     End If
  loc_119FCF3:   End If
  loc_119FCF3: End If
  loc_119FCF3: Exit Sub
  loc_119FCF4: ' Referenced from: 119F8DC
  loc_119FCF4: Proc_6_60_E62BC4(2, 0)
  loc_119FCF9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1032568
  'Data Table: 54B9D8
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_104 As Double
  Dim var_9C As TextBox
  Dim var_10C As Double
  Dim var_C0 As Variant
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_114 As TextBox
  loc_103234B: var_86 = KeyCode
  loc_1032356: If Not (var_86 = CInt(&H11)) Then
  loc_1032361:   If Not (var_86 = CInt(6)) Then
  loc_103236C:     If Not (var_86 = CInt(&H12)) Then
  loc_1032377:       If Not (var_86 = CInt(7)) Then
  loc_1032382:         If (var_86 = CInt(&HC)) Then
  loc_1032385:         End If
  loc_1032385:       End If
  loc_1032385:     End If
  loc_1032385:   End If
  loc_1032385:   Call Proc_113_69_138F9DC(var_86)
  loc_103238D: Else
  loc_1032395:   If Not (var_86 = CInt(&H15)) Then
  loc_10323A0:     If (var_86 = CInt(&H16)) Then
  loc_10323A3:     End If
  loc_10323B1:     Set var_8C = Me.Txt
  loc_10323B7:     Call 0.Method_Txt_KeyUp0 (CInt(&H15), var_90)
  loc_10323BF:     var_94 = var_90.Text
  loc_10323DD:     Set var_98 = Me.Txt
  loc_10323E3:     Call 0.Method_Txt_KeyUp0 (CInt(&H16), var_9C)
  loc_10323EB:     var_A0 = var_9C.Text
  loc_1032426:     var_FC = CStr(Format(CVar((Val(var_94) * Val(var_A0))), "0.00"))
  loc_1032435:     Set var_F4 = Me.Txt
  loc_103243B:     Call 0.Method_Txt_KeyUp0 (CInt(&HE), var_F8, var_FC, 1)
  loc_1032477:     Set var_8C = Me.Txt
  loc_103247D:     Call 0.Method_Txt_KeyUp0 (CInt(5), var_90, var_94)
  loc_1032485:     var_10C = var_90.Text
  loc_1032492:     var_104 = Val(var_94)
  loc_10324A3:     Set var_98 = Me.Txt
  loc_10324A9:     Call 0.Method_Txt_KeyUp0 (CInt(&HD), var_9C, var_A0)
  loc_10324BE:     var_10C = Val(var_A0)
  loc_10324CF:     Set var_F4 = Me.Txt
  loc_10324D5:     Call 0.Method_Txt_KeyUp0 (CInt(&HE), var_F8, var_FC)
  loc_103250D:     var_C0 = CVar(((var_9C.Text + 1) + Val(var_FC))) 'Double
  loc_103252B:     Set var_110 = Me.Txt
  loc_1032531:     Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_114, CStr(Format(CVar((Val(var_94) * Val(var_A0))), "0.00")), 1)
  loc_1032539:     var_114.Text = 1
  loc_1032565:   End If
  loc_1032565: End If
  loc_1032565: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50014
  'Data Table: 54B9D8
  loc_E4FFF2: Set var_88 = Me.Txt
  loc_E4FFF8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50006: Proc_6_73_E22704(var_8C)
  loc_E50012: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1549840
  'Data Table: 54B9D8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A0 As String
  Dim var_BC As TextBox
  Dim var_CC As Variant
  Dim var_FC As Long
  Dim var_110 As TextBox
  Dim var_9C As TextBox
  Dim var_13C As Double
  Dim var_114 As String
  Dim var_14C As Double
  Dim var_144 As String
  Dim var_140 As TextBox
  Dim var_160 As Double
  Dim var_154 As TextBox
  loc_1548838: On Error Goto loc_1549839
  loc_154883E: var_8E = Cancel
  loc_1548849: If (var_8E = CInt(0)) Then
  loc_1548857:   Set var_94 = Me.Txt
  loc_154885D:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1548865:   var_A0 = "Voucher Type"
  loc_1548886:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1548894:     Set var_94 = Me.Txt
  loc_154889A:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15488A2:     var_98.SetFocus
  loc_15488B0:     arg_10 = &HFF
  loc_15488B3:     Exit Sub
  loc_15488B4:   End If
  loc_1548902:   Set var_94 = Me.Txt
  loc_1548908:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1548910:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1548928:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1548938:     Set var_94 = Me.Txt
  loc_154893E:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1548946:     var_98.Text = vbNullString
  loc_154895F:     Set var_94 = Me.Txt
  loc_1548965:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154896D:     var_98.Tag = vbNullString
  loc_154897F:     global_140 = vbNullString
  loc_1548986:   Else
  loc_15489C1:     Set var_9C = Me.Txt
  loc_15489C7:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_15489CF:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1548A20:     Set var_9C = Me.Txt
  loc_1548A26:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1548A2E:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1548A61:     var_98 = Me.Fields.Item("NCat")
  loc_1548A78:     global_140 = CStr(var_98.Value)
  loc_1548A8D:     Set var_94 = Me.TopCtrl1
  loc_1548A93:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_8E)
  loc_1548AAC:     If (CStr() = "Add") Then
  loc_1548ABA:       If (global_160 = "Automatic") Then
  loc_1548ACA:         Set var_94 = Me.Txt
  loc_1548AD0:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1548AD8:         var_98.Enabled = False
  loc_1548AE7:       Else
  loc_1548AF4:         Set var_94 = Me.Txt
  loc_1548AFA:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1548B02:         var_98.Enabled = True
  loc_1548B19:         Set var_94 = Me.Txt
  loc_1548B1F:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1548B27:         var_98.SetFocus
  loc_1548B33:       End If
  loc_1548B33:     End If
  loc_1548B33:   End If
  loc_1548B37:   Set var_94 = Me.TopCtrl1
  loc_1548B3D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_98)
  loc_1548B45:   var_A0 = CStr()
  loc_1548B56:   If (var_A0 = "Add") Then
  loc_1548B5F:     Call Proc_113_71_1105634(MemVar_1F92044)
  loc_1548B72:     Set var_94 = Me.Txt
  loc_1548B78:     Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_1548B80:     var_98.Text = var_A0
  loc_1548B8F:   End If
  loc_1548B92: Else
  loc_1548B9A:   If (var_8E = CInt(1)) Then
  loc_1548BA8:     Set var_94 = Me.Txt
  loc_1548BAE:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1548BB6:     var_A0 = "FP No."
  loc_1548BD7:     If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1548BE5:       Set var_94 = Me.Txt
  loc_1548BEB:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1548BF3:       var_98.SetFocus
  loc_1548C01:       arg_10 = &HFF
  loc_1548C04:       Exit Sub
  loc_1548C05:     End If
  loc_1548C53:     Set var_94 = Me.Txt
  loc_1548C59:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1548C61:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1548C79:     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1548C89:       Set var_94 = Me.Txt
  loc_1548C8F:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1548C97:       var_98.Text = vbNullString
  loc_1548CB0:       Set var_94 = Me.Txt
  loc_1548CB6:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1548CBE:       var_98.Tag = vbNullString
  loc_1548CCD:     Else
  loc_1548D08:       Set var_9C = Me.Txt
  loc_1548D0E:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1548D16:       var_BC.Text = CStr(Me.Fields.Item("FPNo").Value)
  loc_1548D67:       Set var_9C = Me.Txt
  loc_1548D6D:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1548D75:       var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1548DC7:       Set var_9C = Me.Txt
  loc_1548DCD:       Call 0.Method_Txt_Validate0 (CInt(&H22), var_BC)
  loc_1548DD5:       var_BC.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1548E40:       Set var_9C = Me.Txt
  loc_1548E46:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC)
  loc_1548E4E:       var_BC.Text = CStr(Trim(Mid(CVar(Me.Fields.Item("Code")), 4, 5)))
  loc_1548E84:       var_98 = Me.Fields.Item("Code")
  loc_1548EA8:       var_10C = Trim(Mid(CVar(var_98), 9, 5))
  loc_1548EB1:       var_A0 = CStr(var_10C)
  loc_1548EB7:       global_132 = var_A0
  loc_1548ECC:       Call Proc_113_59_1554E7C(var_A0)
  loc_1548ED1:       Call Proc_113_69_138F9DC()
  loc_1548ED6:     End If
  loc_1548ED9:   Else
  loc_1548EE1:     If (var_8E = CInt(2)) Then
  loc_1548EF2:       Set var_94 = Me.Txt
  loc_1548EF8:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1548F16:       var_FC = Len(Trim(CVar(var_98.Text)))
  loc_1548F30:       If (var_FC = 0) Then
  loc_1548F46:         Set var_94 = Me.Txt
  loc_1548F4C:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1548F54:         var_98.Text = CStr(MemVar_1F920EC)
  loc_1548F66:       Else
  loc_1548F70:         Set var_94 = Me.Txt
  loc_1548F76:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1548F96:         Set var_BC = Me.Txt
  loc_1548F9C:         Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_1548FA4:         var_110.Text = Proc_6_33_1512840(var_98)
  loc_1548FB7:       End If
  loc_1548FC4:       Set var_94 = Me.Txt
  loc_1548FCA:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1548FED:       Set var_9C = Me.Txt
  loc_1548FF3:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_114)
  loc_1548FFB:       (CDate(var_98.Text) >= MemVar_1F920F4) = var_BC.Text
  loc_154901D:       If Not((var_98 And (CDate(var_114) <= MemVar_1F920FC))) Then
  loc_1549041:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_FC, var_10C)
  loc_154905B:         Set var_94 = Me.Txt
  loc_1549061:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1549069:         var_98.SetFocus
  loc_1549077:         arg_10 = &HFF
  loc_154907A:         Exit Sub
  loc_154907B:       End If
  loc_154907F:       Set var_94 = Me.TopCtrl1
  loc_1549085:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_154908D:       var_A0 = CStr(var_98)
  loc_15490A3:       Set var_98 = Me.Txt
  loc_15490A9:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_15490D2:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_15490DB:         Call Proc_113_71_1105634(MemVar_1F92044)
  loc_15490EE:         Set var_94 = Me.Txt
  loc_15490F4:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_15490FC:         var_98.Text = var_A0
  loc_154910B:       End If
  loc_154910E:     Else
  loc_1549116:       If (var_8E = CInt(&H2D)) Then
  loc_1549124:         Set var_94 = Me.Txt
  loc_154912A:         Call 0.Method_Txt_Validate0 (CInt(&H2D), var_98)
  loc_1549132:         var_A0 = "CatalogName Name"
  loc_1549153:         If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1549161:           Set var_94 = Me.Txt
  loc_1549167:           Call 0.Method_Txt_Validate0 (CInt(&H2D), var_98)
  loc_154916F:           var_98.SetFocus
  loc_154917D:           arg_10 = &HFF
  loc_1549180:           Exit Sub
  loc_1549181:         End If
  loc_15491CF:         Set var_94 = Me.Txt
  loc_15491D5:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15491DD:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_15491F5:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1549205:           Set var_94 = Me.Txt
  loc_154920B:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1549213:           var_98.Text = vbNullString
  loc_154922C:           Set var_94 = Me.Txt
  loc_1549232:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154923A:           var_98.Tag = vbNullString
  loc_1549249:         Else
  loc_1549284:           Set var_9C = Me.Txt
  loc_154928A:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1549292:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15492C5:           var_98 = Me.Fields.Item("Code")
  loc_15492D6:           var_A0 = CStr(var_98.Value)
  loc_15492E3:           Set var_9C = Me.Txt
  loc_15492E9:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_15492F1:           var_BC.Tag = var_A0
  loc_1549307:           Call Proc_113_56_11DA918(var_A0)
  loc_154930C:           Call Proc_113_58_16A80C0()
  loc_1549311:         End If
  loc_1549314:       Else
  loc_154931C:         If (var_8E = CInt(&H25)) Then
  loc_154932C:           Set var_94 = Me.Txt
  loc_1549332:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154936A:           If (Len(Trim(CVar(var_98.Text))) = 0) Then
  loc_154937F:             Set var_94 = Me.Txt
  loc_1549385:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154938D:             var_98.Text = CStr(MemVar_1F920EC)
  loc_154939F:           Else
  loc_15493A9:             Set var_94 = Me.Txt
  loc_15493AF:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_15493CF:             Set var_BC = Me.Txt
  loc_15493D5:             Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_15493DD:             var_110.Text = Proc_6_33_1512840(var_98)
  loc_15493F0:           End If
  loc_15493F3:         Else
  loc_15493FB:           If Not (var_8E = CInt(&H11)) Then
  loc_1549406:             If Not (var_8E = CInt(6)) Then
  loc_1549411:               If Not (var_8E = CInt(&H12)) Then
  loc_154941C:                 If Not (var_8E = CInt(7)) Then
  loc_1549427:                   If Not (var_8E = CInt(5)) Then
  loc_1549432:                     If Not (var_8E = CInt(&HF)) Then
  loc_154943D:                       If Not (var_8E = CInt(9)) Then
  loc_1549448:                         If Not (var_8E = CInt(&H28)) Then
  loc_1549453:                           If Not (var_8E = CInt(&HB)) Then
  loc_154945E:                             If Not (var_8E = CInt(&H16)) Then
  loc_1549469:                               If Not (var_8E = CInt(&HD)) Then
  loc_1549474:                                 If Not (var_8E = CInt(&HC)) Then
  loc_154947F:                                   If (var_8E = CInt(8)) Then
  loc_1549482:                                   End If
  loc_1549482:                                 End If
  loc_1549482:                               End If
  loc_1549482:                             End If
  loc_1549482:                           End If
  loc_1549482:                         End If
  loc_1549482:                       End If
  loc_1549482:                     End If
  loc_1549482:                   End If
  loc_1549482:                 End If
  loc_1549482:               End If
  loc_1549482:             End If
  loc_154948C:             Set var_94 = Me.Txt
  loc_1549492:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15494AA:             If Not(IsNumeric(CVar(var_98))) Then
  loc_15494BE:               Set var_94 = Me.Txt
  loc_15494C4:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15494CC:               var_98.Text = CStr(0)
  loc_15494DB:             End If
  loc_15494E8:             Set var_94 = Me.Txt
  loc_15494EE:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1549503:             var_13C = Val(var_98.Text)
  loc_154953B:             Set var_9C = Me.Txt
  loc_1549541:             Call 0.Method_Txt_Validate0 (Cancel, var_BC, CStr(Format(CVar(var_13C), "0.00")), 1)
  loc_1549549:             var_BC.Text = 1
  loc_1549569:             Call Proc_113_69_138F9DC(var_13C)
  loc_1549571:           Else
  loc_1549579:             If Not (var_8E = CInt(&H14)) Then
  loc_1549584:               If (var_8E = CInt(&H15)) Then
  loc_1549587:               End If
  loc_1549591:               Set var_94 = Me.Txt
  loc_1549597:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15495AF:               If Not(IsNumeric(CVar(var_98))) Then
  loc_15495C3:                 Set var_94 = Me.Txt
  loc_15495C9:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15495D1:                 var_98.Text = CStr(0)
  loc_15495E0:               End If
  loc_15495ED:               Set var_94 = Me.Txt
  loc_15495F3:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15495FB:               var_A0 = var_98.Text
  loc_1549632:               var_114 = CStr(Format(CVar(Val(var_A0)), "0"))
  loc_1549640:               Set var_9C = Me.Txt
  loc_1549646:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_114, 1)
  loc_154964E:               var_BC.Text = 1
  loc_154967C:               Set var_94 = Me.Txt
  loc_1549682:               Call 0.Method_Txt_Validate0 (CInt(&H15), var_98, var_A0)
  loc_154968A:               var_13C = var_98.Text
  loc_1549697:               var_13C = Val(var_A0)
  loc_15496A8:               Set var_9C = Me.Txt
  loc_15496AE:               Call 0.Method_Txt_Validate0 (CInt(&H16), var_BC, var_114)
  loc_15496F1:               var_144 = CStr(Format(CVar((var_BC.Text * Val(var_114))), "0.00"))
  loc_1549700:               Set var_110 = Me.Txt
  loc_1549706:               Call 0.Method_Txt_Validate0 (CInt(&HE), var_140, var_144, 1)
  loc_1549742:               Set var_94 = Me.Txt
  loc_1549748:               Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_A0)
  loc_1549750:               var_14C = var_98.Text
  loc_154975D:               var_13C = Val(var_A0)
  loc_154976E:               Set var_9C = Me.Txt
  loc_1549774:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_BC, var_114)
  loc_1549789:               var_14C = Val(var_114)
  loc_154979A:               Set var_110 = Me.Txt
  loc_15497A0:               Call 0.Method_Txt_Validate0 (CInt(&HE), var_140, var_144)
  loc_15497B5:               var_160 = Val(var_144)
  loc_15497D8:               var_CC = CVar(((var_BC.Text + 1) + var_160)) 'Double
  loc_15497F6:               Set var_150 = Me.Txt
  loc_15497FC:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_154, CStr(Format(CVar((var_BC.Text * Val(var_114))), "0.00")), 1)
  loc_1549804:               var_154.Text = 1
  loc_1549830:             End If
  loc_1549830:           End If
  loc_1549830:         End If
  loc_1549830:       End If
  loc_1549830:     End If
  loc_1549830:   End If
  loc_1549830: End If
  loc_1549835: Set var_88 = Nothing
  loc_1549838: Exit Sub
  loc_1549839: ' Referenced from: 1548838
  loc_1549839: Proc_6_60_E62BC4(var_160)
  loc_154983E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1195BEC
  'Data Table: 54B9D8
  Dim var_A4 As Variant
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1195806: Set var_88 = Me.TxtGrid
  loc_119580C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_119581A: Proc_6_74_E226B0(var_8C)
  loc_1195826: Call Proc_113_66_F286A0(var_8C)
  loc_1195837: If (Index = 0) Then
  loc_1195850:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_119586B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11958AA:   Set var_108 = Me.TxtGrid
  loc_11958B0:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11958B8:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_11958E9:   var_114 = CLng(Me.FGrid.Col)
  loc_11958F9:   If (var_114 = CLng(1)) Then
  loc_1195905:     If (global_152 = 0) Then
  loc_1195910:       var_110 = "{Home}+{End}"
  loc_1195916:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0, var_114)
  loc_119591E:     End If
  loc_1195928:     Set global_72 = New 
  loc_119593A:     Me.CursorLocation = 3
  loc_1195960:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IC.CatType,IR.Rate as IRate,IC.RoundOff as Roundoff1  From (((ItemMast I Inner join ItemGrp IG on I.ItemGroup=IG.Code) Inner join ItemCatMast IC on IC.Code=I.ItemCatCode) Inner Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) Where I.RestCode='" & global_56
  loc_119597F:     Me.Open CVar(var_110 & "' and  I.LogSite_Code in ('HO','" & MemVar_1F92078 & "') Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1195999:     CVarUnk
  loc_119599E:     VerifyVarObj
  loc_11959A4:     Set var_88 = Me.DGItem
  loc_11959AA:     LateIdStAd
  loc_11959F9:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11959FC:       Exit Sub
  loc_11959FD:     End If
  loc_1195A03:     Me.MoveFirst
  loc_1195A1B:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1195A23:     var_E4 = CVar(CLng(9)) 'Long
  loc_1195A2C:     Set var_8C = Me.FGrid
  loc_1195A32:     var_D4 = var_8C.TextMatrix)
  loc_1195A67:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_1195A97:     If (Me.EOF = &HFF) Then
  loc_1195AA0:       Me.MoveFirst
  loc_1195AA5:     End If
  loc_1195AAE:     CVarUnk
  loc_1195AB3:     VerifyVarObj
  loc_1195AB9:     Set var_88 = Me.DGItem
  loc_1195ABF:     LateIdStAd
  loc_1195ADF:     Me.DGItem.Left = CVar(CDbl(&H5A))
  loc_1195AEA:     var_A4 = CVar(CDbl(0)) 'Single
  loc_1195AF9:     Me.DGItem.Top = var_A4
  loc_1195B16:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H19, Me.TxtGrid, global_72, var_138, var_D4)
  loc_1195B1E:     var_8C.MaxLength = var_E4
  loc_1195B2D:   Else
  loc_1195B34:     If (var_114 = CLng(2)) Then
  loc_1195B4C:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, var_A4, Me.TxtGrid)
  loc_1195B54:       var_8C.MaxLength = global_72
  loc_1195B6F:       Set var_88 = Me.TxtGrid
  loc_1195B75:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(480))
  loc_1195B7D:       var_8C.Height = 1.40129846432482E-45
  loc_1195B8C:     Else
  loc_1195B93:       If Not (var_114 = CLng(3)) Then
  loc_1195B9D:         If (var_114 = CLng(4)) Then
  loc_1195BA0:         End If
  loc_1195BAF:         Set var_88 = Me.TxtGrid
  loc_1195BB5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_1195BBD:         var_8C.MaxLength = -1
  loc_1195BD2:         If (global_152 = 0) Then
  loc_1195BDD:           var_110 = "{Home}+{End}"
  loc_1195BE3:           Proc_303_0_FB9B68(CStr(var_D4), 0)
  loc_1195BEB:         End If
  loc_1195BEB:       End If
  loc_1195BEB:     End If
  loc_1195BEB:   End If
  loc_1195BEB: End If
  loc_1195BEB: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11AB30C
  'Data Table: 54B9D8
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_11AAEF0: If (KeyCode = 0) Then
  loc_11AAEFD:   If (CLng(Shift) = &H1B) Then
  loc_11AAF0D:     Set var_8C = Me.TxtGrid
  loc_11AAF13:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11AAF2D:     Set var_98 = Me.TxtGrid
  loc_11AAF33:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11AAF3B:     var_9C.Text = var_90.Tag
  loc_11AAF57:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11AAF5C:     Call Proc_113_66_F286A0(arg_14)
  loc_11AAF65:     Set var_8C = Me.FGrid
  loc_11AAF82:     Set var_8C = Me.TxtGrid
  loc_11AAF88:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11AAF90:     var_90.Visible = FGrid.DispID_8001
  loc_11AAF9C:     Exit Sub
  loc_11AAF9D:   End If
  loc_11AAFB0:   var_B0 = CLng(Me.FGrid.Col)
  loc_11AAFC0:   If (var_B0 = CLng(1)) Then
  loc_11AAFDB:     Set var_9C = Nothing
  loc_11AB014:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_11AB032:     If (CLng(Shift) = &HD) Then
  loc_11AB03B:       Call Proc_113_61_117C6B0(KeyCode, var_B2, 1, Nothing)
  loc_11AB046:       If (var_B2 = &HFF) Then
  loc_11AB093:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(5) + 1)), 0)
  loc_11AB0A3:       End If
  loc_11AB0A3:     End If
  loc_11AB0A6:   Else
  loc_11AB0AD:     If (var_B0 = CLng(2)) Then
  loc_11AB0BA:       If (CLng(Shift) = &HD) Then
  loc_11AB0C3:         Call Proc_113_61_117C6B0(KeyCode, var_B2, 0, 0)
  loc_11AB0CE:         If (var_B2 = &HFF) Then
  loc_11AB0E4:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11AB0EC:           var_F4 = CVar(CLng(6)) 'Long
  loc_11AB11F:           If (CStr(Me.FGrid.TextMatrix)) = "Food") Then
  loc_11AB16C:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(3) + 1)), 0, 0)
  loc_11AB17F:           Else
  loc_11AB1C9:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(3) + 1)), 0, 0)
  loc_11AB1D9:           End If
  loc_11AB1D9:         End If
  loc_11AB1D9:       End If
  loc_11AB1DC:     Else
  loc_11AB1E3:       If (var_B0 = CLng(4)) Then
  loc_11AB1EC:         Call Proc_113_61_117C6B0(KeyCode, var_B2, 0, 0, var_F4)
  loc_11AB1F7:         If (var_B2 = &HFF) Then
  loc_11AB23D:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, 1, 0)
  loc_11AB24D:         End If
  loc_11AB250:       Else
  loc_11AB257:         If (var_B0 = CLng(3)) Then
  loc_11AB29A:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_152 = &HFF))) Then
  loc_11AB2A3:             Call Proc_113_61_117C6B0(KeyCode, var_B2, 0, 0, var_D4)
  loc_11AB2AE:             If (var_B2 = &HFF) Then
  loc_11AB2FB:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(4) + 1)), 0)
  loc_11AB30B:             End If
  loc_11AB30B:           End If
  loc_11AB30B:         End If
  loc_11AB30B:       End If
  loc_11AB30B:     End If
  loc_11AB30B:   End If
  loc_11AB30B: End If
  loc_11AB30B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F831B8
  'Data Table: 54B9D8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F83067: Proc_6_58_E054C0(arg_10)
  loc_F83078: If (KeyAscii = 0) Then
  loc_F8308E:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8309E:   If (var_A0 = CLng(1)) Then
  loc_F830BD:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F830C4:       Set var_AC = Me.TxtGrid
  loc_F830CF:       var_A4 = "Name"
  loc_F830EA:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_72, arg_10)
  loc_F830F9:     End If
  loc_F830FC:   Else
  loc_F83103:     If (var_A0 = CLng(3)) Then
  loc_F83110:       Set var_8C = Me.TxtGrid
  loc_F83116:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F83131:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F83140:     Else
  loc_F83147:       If (var_A0 = CLng(4)) Then
  loc_F83154:         Set var_8C = Me.TxtGrid
  loc_F8315A:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F83175:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_F83184:       Else
  loc_F8318B:         If (var_A0 = CLng(2)) Then
  loc_F8319D:           Set var_8C = Me.TxtGrid
  loc_F831A3:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F831AB:           var_AC.MaxLength = 3
  loc_F831B7:         End If
  loc_F831B7:       End If
  loc_F831B7:     End If
  loc_F831B7:   End If
  loc_F831B7: End If
  loc_F831B7: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10F98C8
  'Data Table: 54B9D8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As Variant
  Dim var_FC As Variant
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_140 As Long
  Dim var_A8 As String
  Dim var_160 As Variant
  Dim var_110 As MSHFlexGrid
  loc_10F95A8: On Error Goto loc_10F98C1
  loc_10F95B7: If (KeyCode = 0) Then
  loc_10F95CD:   var_A0 = CLng(Me.FGrid.Col)
  loc_10F95DD:   If (var_A0 = CLng(1)) Then
  loc_10F95F3:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F960C:     Set var_8C = Me.TxtGrid
  loc_10F9612:     Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, CVar(CLng(1)))
  loc_10F961A:     var_BC = var_A4.Text
  loc_10F9622:     var_FC = CVar(var_A8) 'String
  loc_10F962A:     Set var_110 = Me.FGrid
  loc_10F9630:     LateIdCallSt
  loc_10F964A:     var_BC = 3
  loc_10F9654:     Set var_8C = Me.DGItem
  loc_10F9675:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F9686:     Set var_8C = Me.DGItem
  loc_10F968C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFF64
  loc_10F9694:     var_120 = CVar(CStr(CVar(CLng(4)))) 'String
  loc_10F969C:     Set var_AC = Me.FGrid
  loc_10F96A2:     LateIdCallSt
  loc_10F96BC:     var_BC = 0
  loc_10F96C6:     Set var_8C = Me.DGItem
  loc_10F96E7:     var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F96EC:     var_140 = &HB
  loc_10F970E:     var_BC = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_10F9716:     var_DC = CVar(CLng(0)) 'Long
  loc_10F973A:     var_160 = CVar(CStr(Val(CStr(Me.FGrid2.TextMatrix))))) 'String
  loc_10F9742:     Set var_110 = Me.FGrid
  loc_10F9748:     LateIdCallSt
  loc_10F977C:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F978D:     Set var_8C = Me.DGItem
  loc_10F9793:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFF64
  loc_10F979B:     var_120 = CVar(CStr(CVar(CLng(9)))) 'String
  loc_10F97A9:     LateIdCallSt
  loc_10F97E6:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10F97F7:       Call TxtGrid_KeyDown(KeyCode, global_150)
  loc_10F9800:       Set var_A4 = Me.TxtGrid
  loc_10F980B:       var_A8 = "Name"
  loc_10F9826:       Proc_6_89_146F1AC(var_A4, KeyCode, global_72, Shift, var_A8, &HFF, 0, Me.FGrid)
  loc_10F9835:     End If
  loc_10F9838:   Else
  loc_10F983F:     If (var_A0 = CLng(2)) Then
  loc_10F986D:       var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F987E:       Set var_8C = Me.TxtGrid
  loc_10F9884:       Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, var_DC, CVar(CLng(Me.FGrid.Row)), var_120, CVar(CLng(Me.FGrid.Row)))
  loc_10F988C:       var_110 = var_A4.Text
  loc_10F9894:       var_120 = CVar(var_A8) 'String
  loc_10F989C:       Set var_178 = Me.FGrid
  loc_10F98A2:       LateIdCallSt
  loc_10F98C0:     End If
  loc_10F98C0:   End If
  loc_10F98C0: End If
  loc_10F98C0: Exit Sub
  loc_10F98C1: ' Referenced from: 10F95A8
  loc_10F98C1: Proc_6_60_E62BC4(var_178, var_120, var_160, var_DC)
  loc_10F98C6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2043C
  'Data Table: 54B9D8
  Dim arg_10 As Integer
  loc_E20424: If (Cancel = 0) Then
  loc_E2042D:   Call Proc_113_61_117C6B0(Cancel, var_88)
  loc_E20436:   arg_10 = Not(var_88)
  loc_E20439: End If
  loc_E20439: Exit Sub
End Sub

Public Function global_52Get() '54D81C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '54D82B
  global_52 = Value
End Sub

Public Function global_54Get() '54D83A
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '54D849
  global_54 = Value
End Sub

Public Function global_56Get() '54D858
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '54D867
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E73D2C
  'Data Table: 54B9D8
  Dim Me As Recordset15
  loc_E73CD6: Me.MoveFirst
  loc_E73D00: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E73D20: If (Me.EOF = 0) Then
  loc_E73D23:   Call Proc_113_62_19F19D8(var_9C)
  loc_E73D28: End If
  loc_E73D28: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95DC8
  'Data Table: 54B9D8
  Dim Me As Recordset15
  loc_E95D56: On Error Goto loc_E95DBF
  loc_E95D5F: Me.MoveFirst
  loc_E95D89: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95DB1: Proc_5_0_110649C(&HFF, Me, global_88)
  loc_E95DB9: Call Proc_113_62_19F19D8(0)
  loc_E95DBE: Exit Sub
  loc_E95DBF: ' Referenced from: E95D56
  loc_E95DBF: Proc_6_60_E62BC4(var_A0)
  loc_E95DC4: Exit Sub
End Sub

Public Sub Proc_113_55_14448B4
  'Data Table: 54B9D8
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_1443D97: Me.FGrid.Left = CVar(CDbl(5040))
  loc_1443DB2: Me.FGrid.Top = CVar(CDbl(3885))
  loc_1443DCD: Me.FGrid.Width = CVar(CDbl(6900))
  loc_1443DE3: Set var_A8 = Me.Txt
  loc_1443DE9: Call 0.Method_Proc_113_55_14448B40 (CInt(&H2D), var_AC)
  loc_1443E08: Me.DG_Catalog.Left = CVar(var_AC.Left)
  loc_1443E24: Set var_B4 = Me.Txt
  loc_1443E2A: Call 0.Method_Proc_113_55_14448B40 (CInt(&H2D), var_B8)
  loc_1443E45: Set var_A8 = Me.Txt
  loc_1443E4B: Call 0.Method_Proc_113_55_14448B40 (CInt(&H2D), var_AC)
  loc_1443E63: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1443E72: Me.DG_Catalog.Top = CVar(var_AC.Left)
  loc_1443E92: Set var_A8 = Me.Txt
  loc_1443E98: Call 0.Method_Proc_113_55_14448B40 (CInt(1), var_AC)
  loc_1443EB7: Me.DGFPNo.Left = CVar(var_AC.Left)
  loc_1443ED3: Set var_B4 = Me.Txt
  loc_1443ED9: Call 0.Method_Proc_113_55_14448B40 (CInt(1), var_B8)
  loc_1443EF4: Set var_A8 = Me.Txt
  loc_1443EFA: Call 0.Method_Proc_113_55_14448B40 (CInt(1), var_AC)
  loc_1443F12: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1443F21: Me.DGFPNo.Top = CVar(var_AC.Left)
  loc_1443F41: Set var_A8 = Me.Txt
  loc_1443F47: Call 0.Method_Proc_113_55_14448B40 (CInt(0), var_AC)
  loc_1443F66: Me.DGVType.Left = CVar(var_AC.Left)
  loc_1443F82: Set var_B4 = Me.Txt
  loc_1443F88: Call 0.Method_Proc_113_55_14448B40 (CInt(0), var_B8)
  loc_1443FA3: Set var_A8 = Me.Txt
  loc_1443FA9: Call 0.Method_Proc_113_55_14448B40 (CInt(0), var_AC)
  loc_1443FC1: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1443FD0: Me.DGVType.Top = CVar(var_AC.Left)
  loc_1443FE6: Set var_C4 = Me.FGrid
  loc_1443FFD: global_108 = CStr(CLng(var_C4.BackColor))
  loc_1444013: var_C4.Cols = &HB
  loc_144401B: var_94 = CVar(CLng(0)) 'Long
  loc_1444020: var_E8 = &HFA
  loc_144402C: LateIdCallSt
  loc_1444034: var_94 = 0
  loc_1444040: var_E8 = CVar(CLng(1)) 'Long
  loc_1444045: var_108 = "Item Name"
  loc_144404E: LateIdCallSt
  loc_1444059: var_94 = CVar(CLng(1)) 'Long
  loc_1444064: var_E8 = CVar(CInt(1)) 'Integer
  loc_144406B: LateIdCallSt
  loc_1444076: var_94 = CVar(CLng(1)) 'Long
  loc_144407B: var_E8 = &H924
  loc_1444087: LateIdCallSt
  loc_144408F: var_94 = 0
  loc_144409B: var_E8 = CVar(CLng(2)) 'Long
  loc_14440A0: var_108 = "Remarks"
  loc_14440A9: LateIdCallSt
  loc_14440B4: var_94 = CVar(CLng(2)) 'Long
  loc_14440BF: var_E8 = CVar(CInt(1)) 'Integer
  loc_14440C6: LateIdCallSt
  loc_14440D1: var_94 = CVar(CLng(2)) 'Long
  loc_14440D6: var_E8 = 0
  loc_14440E2: LateIdCallSt
  loc_14440EA: var_94 = 0
  loc_14440F6: var_E8 = CVar(CLng(3)) 'Long
  loc_14440FB: var_108 = "Qty"
  loc_1444104: LateIdCallSt
  loc_144410F: var_94 = CVar(CLng(3)) 'Long
  loc_144411A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1444121: LateIdCallSt
  loc_144412C: var_94 = CVar(CLng(3)) 'Long
  loc_1444137: var_E8 = CVar(CInt(7)) 'Integer
  loc_144413E: LateIdCallSt
  loc_1444149: var_94 = CVar(CLng(3)) 'Long
  loc_144414E: var_E8 = &H2BC
  loc_144415A: LateIdCallSt
  loc_1444162: var_94 = 0
  loc_144416E: var_E8 = CVar(CLng(4)) 'Long
  loc_1444173: var_108 = "Rate"
  loc_144417C: LateIdCallSt
  loc_1444187: var_94 = CVar(CLng(4)) 'Long
  loc_1444192: var_E8 = CVar(CInt(7)) 'Integer
  loc_1444199: LateIdCallSt
  loc_14441A4: var_94 = CVar(CLng(4)) 'Long
  loc_14441AF: var_E8 = CVar(CInt(7)) 'Integer
  loc_14441B6: LateIdCallSt
  loc_14441C1: var_94 = CVar(CLng(4)) 'Long
  loc_14441C6: var_E8 = &H320
  loc_14441D2: LateIdCallSt
  loc_14441DA: var_94 = 0
  loc_14441E6: var_E8 = CVar(CLng(6)) 'Long
  loc_14441EB: var_108 = "Category"
  loc_14441F4: LateIdCallSt
  loc_14441FF: var_94 = CVar(CLng(6)) 'Long
  loc_144420A: var_E8 = CVar(CInt(1)) 'Integer
  loc_1444211: LateIdCallSt
  loc_144421C: var_94 = CVar(CLng(6)) 'Long
  loc_1444227: var_E8 = CVar(CInt(1)) 'Integer
  loc_144422E: LateIdCallSt
  loc_1444239: var_94 = CVar(CLng(6)) 'Long
  loc_144423E: var_E8 = 0
  loc_144424A: LateIdCallSt
  loc_1444252: var_94 = 0
  loc_144425E: var_E8 = CVar(CLng(7)) 'Long
  loc_1444263: var_108 = "Tax"
  loc_144426C: LateIdCallSt
  loc_1444277: var_94 = CVar(CLng(7)) 'Long
  loc_1444282: var_E8 = CVar(CInt(7)) 'Integer
  loc_1444289: LateIdCallSt
  loc_1444294: var_94 = CVar(CLng(7)) 'Long
  loc_144429F: var_E8 = CVar(CInt(7)) 'Integer
  loc_14442A6: LateIdCallSt
  loc_14442B1: var_94 = CVar(CLng(7)) 'Long
  loc_14442B6: var_E8 = 0
  loc_14442C2: LateIdCallSt
  loc_14442CA: var_94 = 0
  loc_14442D6: var_E8 = CVar(CLng(5)) 'Long
  loc_14442DB: var_108 = "Amount"
  loc_14442E4: LateIdCallSt
  loc_14442EF: var_94 = CVar(CLng(5)) 'Long
  loc_14442FA: var_E8 = CVar(CInt(7)) 'Integer
  loc_1444301: LateIdCallSt
  loc_144430C: var_94 = CVar(CLng(5)) 'Long
  loc_1444317: var_E8 = CVar(CInt(7)) 'Integer
  loc_144431E: LateIdCallSt
  loc_1444329: var_94 = CVar(CLng(5)) 'Long
  loc_144432E: var_E8 = 0
  loc_144433A: LateIdCallSt
  loc_1444342: var_94 = 0
  loc_144434E: var_E8 = CVar(CLng(8)) 'Long
  loc_1444353: var_108 = "Total"
  loc_144435C: LateIdCallSt
  loc_1444367: var_94 = CVar(CLng(8)) 'Long
  loc_1444372: var_E8 = CVar(CInt(7)) 'Integer
  loc_1444379: LateIdCallSt
  loc_1444384: var_94 = CVar(CLng(8)) 'Long
  loc_144438F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1444396: LateIdCallSt
  loc_14443A1: var_94 = CVar(CLng(8)) 'Long
  loc_14443A6: var_E8 = 0
  loc_14443B2: LateIdCallSt
  loc_14443BD: var_94 = CVar(CLng(9)) 'Long
  loc_14443C2: var_E8 = 0
  loc_14443CE: LateIdCallSt
  loc_14443D9: var_94 = CVar(CLng(&HA)) 'Long
  loc_14443DE: var_E8 = 0
  loc_14443EA: LateIdCallSt
  loc_14443F4: Set var_C4 = Nothing 
  loc_144440B: Me.FGrid1.Cols = 8
  loc_1444410: var_94 = 0
  loc_1444419: var_E8 = 0
  loc_1444422: var_108 = "SNo"
  loc_144442B: LateIdCallSt
  loc_1444433: var_94 = 0
  loc_1444442: var_E8 = CVar(CInt(1)) 'Integer
  loc_1444449: LateIdCallSt
  loc_1444451: var_94 = 0
  loc_1444460: var_E8 = CVar(CInt(1)) 'Integer
  loc_1444467: LateIdCallSt
  loc_144446F: var_94 = 0
  loc_1444478: var_E8 = &H1C2
  loc_1444484: LateIdCallSt
  loc_144448C: var_94 = 0
  loc_1444495: var_E8 = 1
  loc_144449E: var_108 = "Venue Name"
  loc_14444A7: LateIdCallSt
  loc_14444AF: var_94 = 1
  loc_14444BE: var_E8 = CVar(CInt(1)) 'Integer
  loc_14444C5: LateIdCallSt
  loc_14444CD: var_94 = 1
  loc_14444DC: var_E8 = CVar(CInt(1)) 'Integer
  loc_14444E3: LateIdCallSt
  loc_14444EB: var_94 = 1
  loc_14444F4: var_E8 = &H76C
  loc_1444500: LateIdCallSt
  loc_1444508: var_94 = 0
  loc_1444511: var_E8 = 2
  loc_144451A: var_108 = "Date From"
  loc_1444523: LateIdCallSt
  loc_144452B: var_94 = 2
  loc_144453A: var_E8 = CVar(CInt(1)) 'Integer
  loc_1444541: LateIdCallSt
  loc_1444549: var_94 = 2
  loc_1444558: var_E8 = CVar(CInt(1)) 'Integer
  loc_144455F: LateIdCallSt
  loc_1444567: var_94 = 2
  loc_1444570: var_E8 = &H47E
  loc_144457C: LateIdCallSt
  loc_1444584: var_94 = 0
  loc_144458D: var_E8 = 3
  loc_1444596: var_108 = "FromTime"
  loc_144459F: LateIdCallSt
  loc_14445A7: var_94 = 3
  loc_14445B6: var_E8 = CVar(CInt(1)) 'Integer
  loc_14445BD: LateIdCallSt
  loc_14445C5: var_94 = 3
  loc_14445D4: var_E8 = CVar(CInt(1)) 'Integer
  loc_14445DB: LateIdCallSt
  loc_14445E3: var_94 = 3
  loc_14445EC: var_E8 = &H3E8
  loc_14445F8: LateIdCallSt
  loc_1444600: var_94 = 0
  loc_1444609: var_E8 = 4
  loc_1444612: var_108 = "Date To"
  loc_144461B: LateIdCallSt
  loc_1444623: var_94 = 4
  loc_1444632: var_E8 = CVar(CInt(1)) 'Integer
  loc_1444639: LateIdCallSt
  loc_1444641: var_94 = 4
  loc_1444650: var_E8 = CVar(CInt(1)) 'Integer
  loc_1444657: LateIdCallSt
  loc_144465F: var_94 = 4
  loc_1444668: var_E8 = &H47E
  loc_1444674: LateIdCallSt
  loc_144467C: var_94 = 0
  loc_1444685: var_E8 = 5
  loc_144468E: var_108 = "To Time"
  loc_1444697: LateIdCallSt
  loc_144469F: var_94 = 5
  loc_14446AE: var_E8 = CVar(CInt(1)) 'Integer
  loc_14446B5: LateIdCallSt
  loc_14446BD: var_94 = 5
  loc_14446CC: var_E8 = CVar(CInt(1)) 'Integer
  loc_14446D3: LateIdCallSt
  loc_14446DB: var_94 = 5
  loc_14446E4: var_E8 = &H384
  loc_14446F0: LateIdCallSt
  loc_14446F8: var_94 = 6
  loc_1444701: var_E8 = 0
  loc_144470D: LateIdCallSt
  loc_1444715: var_94 = 7
  loc_144471E: var_E8 = 0
  loc_144472A: LateIdCallSt
  loc_1444734: Set var_11C = Nothing 
  loc_144473C: Set var_120 = Me.FGrid2
  loc_1444753: global_108 = CStr(CLng(var_120.BackColor))
  loc_1444769: var_120.Cols = 4
  loc_144476E: var_94 = 0
  loc_1444777: var_E8 = &HFA
  loc_1444783: LateIdCallSt
  loc_144478B: var_94 = 0
  loc_1444797: var_E8 = CVar(CLng(2)) 'Long
  loc_144479C: var_108 = "Item Group Name"
  loc_14447A5: LateIdCallSt
  loc_14447B0: var_94 = CVar(CLng(2)) 'Long
  loc_14447BB: var_E8 = CVar(CInt(1)) 'Integer
  loc_14447C2: LateIdCallSt
  loc_14447CD: var_94 = CVar(CLng(2)) 'Long
  loc_14447D2: var_E8 = &HAF0
  loc_14447DE: LateIdCallSt
  loc_14447E6: var_94 = 0
  loc_14447F2: var_E8 = CVar(CLng(1)) 'Long
  loc_14447F7: var_108 = "Group Code"
  loc_1444800: LateIdCallSt
  loc_144480B: var_94 = CVar(CLng(1)) 'Long
  loc_1444816: var_E8 = CVar(CInt(1)) 'Integer
  loc_144481D: LateIdCallSt
  loc_1444828: var_94 = CVar(CLng(1)) 'Long
  loc_144482D: var_E8 = 0
  loc_1444839: LateIdCallSt
  loc_1444841: var_94 = 0
  loc_144484D: var_E8 = CVar(CLng(3)) 'Long
  loc_1444852: var_108 = "Limit"
  loc_144485B: LateIdCallSt
  loc_1444866: var_94 = CVar(CLng(3)) 'Long
  loc_1444871: var_E8 = CVar(CInt(4)) 'Integer
  loc_1444878: LateIdCallSt
  loc_1444883: var_94 = CVar(CLng(3)) 'Long
  loc_1444888: var_E8 = &H2BC
  loc_1444894: LateIdCallSt
  loc_14448A8: var_120.Rows = 1
  loc_14448AF: Set var_120 = Nothing 
  loc_14448B3: Exit Sub
End Sub

Public Sub Proc_113_56_11DA918
  'Data Table: 54B9D8
  Dim var_8C As TextBox
  Dim var_94 As String
  Dim unk_54B9F9 As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_88 As Variant
  Dim var_EC As Variant
  Dim var_10C As String
  Dim var_DC As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_D4 As Variant
  Dim var_14C As Variant
  loc_11DA4CE: Set var_88 = Me.Txt
  loc_11DA4D4: Call 0.Method_Proc_113_56_11DA9180 (CInt(&H2D), var_8C, var_90, "SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG INNER JOIN GroupCatalog GC ON IG.Code = GC.ItemCatCode WHERE GC.CatCode='")
  loc_11DA4DC: var_B8 = var_8C.Tag
  loc_11DA4E5: var_94 = -1 & var_90
  loc_11DA4F5: unk_54B9F9.Execute var_94 & "' ORDER By IG.Name", var_BC, 
  loc_11DA506: Set global_68 = var_BC
  loc_11DA52C: Me.Requery -1
  loc_11DA548: If (Me.RecordCount > 0) Then
  loc_11DA54B:   var_A8 = True
  loc_11DA558:   Set var_88 = Me.OptCat
  loc_11DA55E:   Call 0.Method_Proc_113_56_11DA9180 (0, var_8C)
  loc_11DA57C:   Call OptCat_UnknownEvent_9()
  loc_11DA594:   Me.FGrid2.Rows = 1
  loc_11DA5A0:   Set var_DC = Me.FGrid2
  loc_11DA5A3:   var_A8 = 0
  loc_11DA5AF:   var_EC = CVar(CLng(2)) 'Long
  loc_11DA5B4:   var_10C = "Item Group Name"
  loc_11DA5BD:   LateIdCallSt
  loc_11DA5C5:   var_A8 = 0
  loc_11DA5D1:   var_EC = CVar(CLng(1)) 'Long
  loc_11DA5D6:   var_10C = "Group Code"
  loc_11DA5DF:   LateIdCallSt
  loc_11DA5EA:   var_A8 = CVar(CLng(3)) 'Long
  loc_11DA5F5:   var_EC = CVar(CInt(4)) 'Integer
  loc_11DA5FC:   LateIdCallSt
  loc_11DA604:   var_A8 = 0
  loc_11DA610:   var_EC = CVar(CLng(3)) 'Long
  loc_11DA615:   var_10C = "Limit"
  loc_11DA61E:   LateIdCallSt
  loc_11DA626:   ' Referenced from: 11DA7EB
  loc_11DA638:   If Not(Me.EOF) Then
  loc_11DA64D:     var_A8 = CVar((CLng(var_DC.Rows) + 1)) 'Long
  loc_11DA655:     var_DC.Rows = var_A8
  loc_11DA66F:     var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11DA690:     var_13C = CVar(CStr((CLng(var_DC.Rows) - 1))) 'String
  loc_11DA697:     LateIdCallSt
  loc_11DA6BA:     var_D4 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11DA6CA:     var_A8 = "GroupName"
  loc_11DA6F2:     var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_A8)), CVar(CLng(2)), var_D4, var_DC, var_13C, CVar(CLng(0)), var_A8)) 'String
  loc_11DA6F9:     LateIdCallSt
  loc_11DA710:     var_12C = var_DC.Rows
  loc_11DA71F:     var_D4 = CVar((CLng(var_12C) - 1)) 'Long
  loc_11DA757:     var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), var_D4, var_DC, var_13C, var_DC)) 'String
  loc_11DA75E:     LateIdCallSt
  loc_11DA775:     var_13C = var_DC.Rows
  loc_11DA784:     var_D4 = CVar((CLng(var_13C) - 1)) 'Long
  loc_11DA7AB:     var_8C = Me.Fields.Item("Limit")
  loc_11DA7BA:     Proc_6_48_EF4270(var_12C, CVar(var_8C), CVar(CLng(3)), var_D4, var_DC, var_13C)
  loc_11DA7C3:     var_14C = CVar(CStr(var_12C)) 'String
  loc_11DA7CA:     LateIdCallSt
  loc_11DA7E6:     Me.MoveNext
  loc_11DA7EB:     GoTo loc_11DA626
  loc_11DA7EE:   End If
  loc_11DA800:   var_A8 = CVar((CLng(var_DC.Rows) + 1)) 'Long
  loc_11DA808:   var_DC.Rows = "Limit"
  loc_11DA822:   var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11DA82A:   var_EC = CVar(CLng(0)) 'Long
  loc_11DA843:   var_13C = CVar(CStr((CLng(var_DC.Rows) - 1))) 'String
  loc_11DA84A:   LateIdCallSt
  loc_11DA86D:   var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11DA875:   var_EC = CVar(CLng(2)) 'Long
  loc_11DA87A:   var_10C = "EXTRA"
  loc_11DA883:   LateIdCallSt
  loc_11DA8A0:   var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11DA8A8:   var_EC = CVar(CLng(3)) 'Long
  loc_11DA8B1:   var_12C = CVar(CStr(0)) 'String
  loc_11DA8B8:   LateIdCallSt
  loc_11DA8D3:   var_DC.FixedRows = 1
  loc_11DA8DA:   Set var_DC = Nothing 
  loc_11DA8E1: Else
  loc_11DA8EE:   Set var_88 = Me.OptCat
  loc_11DA8F4:   Call 0.Method_Proc_113_56_11DA9180 (1, var_8C, True, var_DC, var_12C, var_EC, True)
  loc_11DA912:   Call OptCat_UnknownEvent_9()
  loc_11DA917: End If
  loc_11DA917: Exit Sub
End Sub

Public Sub Proc_113_57_11EA3F4
  'Data Table: 54B9D8
  Dim var_8A As Integer
  Dim var_A4 As String
  Dim var_15C As Boolean
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_88 As Integer
  Dim var_8C As Integer
  Dim var_188 As Variant
  loc_11E9F89: Set var_90 = Me.TopCtrl1
  loc_11E9F8F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(0)
  loc_11E9F9F: var_15C = (CStr() = "Browse")
  loc_11E9FA7: Set var_A8 = Me.FGrid
  loc_11E9FB6: var_C8 = CVar(CLng(var_A8.RowSel)) 'Long
  loc_11EA011: If CBool(CVar(CLng(1)) Or (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString)) Then
  loc_11EA014:   Exit Sub
  loc_11EA015: End If
  loc_11EA020: Set var_90 = Me.OptCat
  loc_11EA026: Call 0.Method_Proc_113_57_11EA3F40 (CInt(0), var_A8)
  loc_11EA02E: var_A8.Value
  loc_11EA04D: var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11EA0AF: If ((CVar(CLng(0)) And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = 0)) And (CLng(Me.FGrid.ColSel) = &HC)) Then
  loc_11EA0C4:   Me.FGrid.Col = CVar(CLng(0))
  loc_11EA0DF:   Me.FGrid.CellForeColor = &HFF
  loc_11EA0FA:   var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11EA0FF:   var_E8 = &HB
  loc_11EA126:   var_88 = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_11EA14D:   var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11EA152:   var_E8 = &HC
  loc_11EA179:   var_8C = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_11EA1B2:   For var_178 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_178 'Integer
  loc_11EA1BC:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_11EA1C1:     var_E8 = &HB
  loc_11EA1DF:     var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_11EA1F1:     var_13C = CVar(CLng(var_86)) 'Long
  loc_11EA231:     If (CVar(CLng(0)) And (CStr(Me.FGrid.TextMatrix)) = "ü")) Then
  loc_11EA23A:       var_8A = (var_8A + 1)
  loc_11EA23D:     End If
  loc_11EA240:   Next var_178 'Integer
  loc_11EA24F:   var_10C = Me.FGrid1.Rows
  loc_11EA25E:   var_13C = CVar((CLng(var_10C) - 1)) 'Long
  loc_11EA266:   var_188 = CVar(CLng(0)) 'Long
  loc_11EA275:   var_11C = Me.FGrid1.TextMatrix)
  loc_11EA2A5:   var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11EA2F7:   If ((CVar(CLng(0)) And (CStr(Me.FGrid.TextMatrix)) <> "ü")) And (CDbl(var_88) <> CDbl(Val(CStr(var_11C))))) Then
  loc_11EA331:     If (MsgBox("Are you sure to extend item!", &H14, "Catalog...", var_10C, var_11C) = 6) Then
  loc_11EA356:       Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_11EA377:       Me.FGrid.Col = CVar(CLng(0))
  loc_11EA38F:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_11EA3A9:       Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_11EA3C4:       var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11EA3CC:       var_E8 = CVar(CLng(0)) 'Long
  loc_11EA3D1:       var_13C = "ü"
  loc_11EA3DB:       Set var_A8 = Me.FGrid
  loc_11EA3E1:       LateIdCallSt
  loc_11EA3F3:     End If
  loc_11EA3F3:   End If
  loc_11EA3F3: End If
  loc_11EA3F3: Exit Sub
End Sub

Public Sub Proc_113_58_16A80C0
  'Data Table: 54B9D8
  Dim var_98 As Variant
  Dim var_B0 As String
  Dim unk_54B9F9 As Connection15
  Dim var_94 As Variant
  Dim Proc_113_58_16A80C04 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_10C As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_8E As Integer
  Dim var_124 As MSHFlexGrid
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_C8 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_178 As TextBox
  Dim var_188 As Variant
  Dim var_170 As Recordset15
  Dim var_164 As Variant
  Dim var_1B0 As MSHFlexGrid
  loc_16A6783: Set var_94 = Me.OptCat
  loc_16A6789: Call 0.Method_Proc_113_58_16A80C00 (CInt(0))
  loc_16A6791: var_98.Value
  loc_16A67A7: If (CBool(var_98) = &HFF) Then
  loc_16A67C8:   Set var_94 = Me.Txt
  loc_16A67CE:   Call 0.Method_Proc_113_58_16A80C00 (CInt(&H2D), var_98, var_AC, "SELECT ItemMast.Name AS ItemName, ItemGrp.Name AS ItemGrpName, ItemGrp.Type AS ItemGrpType, ItemMast.Unit AS UnitName, CatalogMast.*, ItemCatMast.CatType ,GroupCatalog.Limit AS Limit FROM (((CatalogMast INNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code) INNER JOIN GroupCatalog ON CatalogMast.ItemCatCode =GroupCatalog.ItemCatCode AND GroupCatalog.CatCode=CatalogMast.Code) INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) INNER JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code WHERE CatalogMast.Code='")
  loc_16A67D6:   var_A8 = var_98.Tag
  loc_16A67DF:   var_B0 = -1 & var_AC
  loc_16A67EF:   unk_54B9F9.Execute var_B0 & "' Order By Itemgrp.Name,ItemMast.Name", var_C8, 
  loc_16A67FA:   Set var_88 = var_C8
  loc_16A6815:   var_8C = vbNullString
  loc_16A6822:   Proc_113_58_16A80C04 = Me.FGrid.Text
  loc_16A6840:   Me.FGrid.Rows = 2
  loc_16A684B:   var_C4 = CVar(CLng(0)) 'Long
  loc_16A6850:   var_E8 = &H15E
  loc_16A685D:   Set var_94 = Me.FGrid
  loc_16A6863:   LateIdCallSt
  loc_16A6871:   var_C4 = CVar(CLng(0)) 'Long
  loc_16A687C:   var_E8 = CVar(CInt(4)) 'Integer
  loc_16A6884:   Set var_94 = Me.FGrid
  loc_16A688A:   LateIdCallSt
  loc_16A68A8:   Me.FGrid.Cols = &HD
  loc_16A68B4:   Set var_FC = Me.FGrid
  loc_16A68C3:   var_FC.Row = 0
  loc_16A68DC:   global_108 = CStr(CLng(var_FC.BackColor))
  loc_16A68E6:   var_C4 = 0
  loc_16A68F2:   var_E8 = CVar(CLng(1)) 'Long
  loc_16A68F7:   var_10C = "Item Name"
  loc_16A6900:   LateIdCallSt
  loc_16A690B:   var_C4 = CVar(CLng(1)) 'Long
  loc_16A6916:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A691D:   LateIdCallSt
  loc_16A6928:   var_C4 = CVar(CLng(1)) 'Long
  loc_16A692D:   var_E8 = &H924
  loc_16A6939:   LateIdCallSt
  loc_16A6941:   var_C4 = 0
  loc_16A694D:   var_E8 = CVar(CLng(2)) 'Long
  loc_16A6952:   var_10C = "Remarks"
  loc_16A695B:   LateIdCallSt
  loc_16A6966:   var_C4 = CVar(CLng(2)) 'Long
  loc_16A6971:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A6978:   LateIdCallSt
  loc_16A6983:   var_C4 = CVar(CLng(2)) 'Long
  loc_16A6988:   var_E8 = 0
  loc_16A6994:   LateIdCallSt
  loc_16A699C:   var_C4 = 0
  loc_16A69A8:   var_E8 = CVar(CLng(3)) 'Long
  loc_16A69AD:   var_10C = "Qty"
  loc_16A69B6:   LateIdCallSt
  loc_16A69C1:   var_C4 = CVar(CLng(3)) 'Long
  loc_16A69CC:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A69D3:   LateIdCallSt
  loc_16A69DE:   var_C4 = CVar(CLng(3)) 'Long
  loc_16A69E9:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A69F0:   LateIdCallSt
  loc_16A69FB:   var_C4 = CVar(CLng(3)) 'Long
  loc_16A6A00:   var_E8 = &H320
  loc_16A6A0C:   LateIdCallSt
  loc_16A6A14:   var_C4 = 0
  loc_16A6A20:   var_E8 = CVar(CLng(4)) 'Long
  loc_16A6A25:   var_10C = "Rate"
  loc_16A6A2E:   LateIdCallSt
  loc_16A6A39:   var_C4 = CVar(CLng(4)) 'Long
  loc_16A6A44:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6A4B:   LateIdCallSt
  loc_16A6A56:   var_C4 = CVar(CLng(4)) 'Long
  loc_16A6A61:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6A68:   LateIdCallSt
  loc_16A6A73:   var_C4 = CVar(CLng(4)) 'Long
  loc_16A6A78:   var_E8 = &H320
  loc_16A6A84:   LateIdCallSt
  loc_16A6A8C:   var_C4 = 0
  loc_16A6A98:   var_E8 = CVar(CLng(6)) 'Long
  loc_16A6A9D:   var_10C = "Category"
  loc_16A6AA6:   LateIdCallSt
  loc_16A6AB1:   var_C4 = CVar(CLng(6)) 'Long
  loc_16A6ABC:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A6AC3:   LateIdCallSt
  loc_16A6ACE:   var_C4 = CVar(CLng(6)) 'Long
  loc_16A6AD9:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A6AE0:   LateIdCallSt
  loc_16A6AEB:   var_C4 = CVar(CLng(6)) 'Long
  loc_16A6AF0:   var_E8 = 0
  loc_16A6AFC:   LateIdCallSt
  loc_16A6B04:   var_C4 = 0
  loc_16A6B10:   var_E8 = CVar(CLng(7)) 'Long
  loc_16A6B15:   var_10C = "Tax"
  loc_16A6B1E:   LateIdCallSt
  loc_16A6B29:   var_C4 = CVar(CLng(7)) 'Long
  loc_16A6B34:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6B3B:   LateIdCallSt
  loc_16A6B46:   var_C4 = CVar(CLng(7)) 'Long
  loc_16A6B51:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6B58:   LateIdCallSt
  loc_16A6B63:   var_C4 = CVar(CLng(7)) 'Long
  loc_16A6B68:   var_E8 = 0
  loc_16A6B74:   LateIdCallSt
  loc_16A6B7C:   var_C4 = 0
  loc_16A6B88:   var_E8 = CVar(CLng(5)) 'Long
  loc_16A6B8D:   var_10C = "Amount"
  loc_16A6B96:   LateIdCallSt
  loc_16A6BA1:   var_C4 = CVar(CLng(5)) 'Long
  loc_16A6BAC:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6BB3:   LateIdCallSt
  loc_16A6BBE:   var_C4 = CVar(CLng(5)) 'Long
  loc_16A6BC9:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6BD0:   LateIdCallSt
  loc_16A6BDB:   var_C4 = CVar(CLng(5)) 'Long
  loc_16A6BE0:   var_E8 = 0
  loc_16A6BEC:   LateIdCallSt
  loc_16A6BF4:   var_C4 = 0
  loc_16A6C00:   var_E8 = CVar(CLng(8)) 'Long
  loc_16A6C05:   var_10C = "Total"
  loc_16A6C0E:   LateIdCallSt
  loc_16A6C19:   var_C4 = CVar(CLng(8)) 'Long
  loc_16A6C24:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6C2B:   LateIdCallSt
  loc_16A6C36:   var_C4 = CVar(CLng(8)) 'Long
  loc_16A6C41:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A6C48:   LateIdCallSt
  loc_16A6C53:   var_C4 = CVar(CLng(8)) 'Long
  loc_16A6C58:   var_E8 = 0
  loc_16A6C64:   LateIdCallSt
  loc_16A6C6F:   var_C4 = CVar(CLng(9)) 'Long
  loc_16A6C74:   var_E8 = 0
  loc_16A6C80:   LateIdCallSt
  loc_16A6C8B:   var_C4 = CVar(CLng(&HA)) 'Long
  loc_16A6C90:   var_E8 = 0
  loc_16A6C9C:   LateIdCallSt
  loc_16A6CA6:   Set var_FC = Nothing 
  loc_16A6CAA:   ' Referenced from: 16A732D
  loc_16A6CB9:   If Not(var_88.EOF) Then
  loc_16A6CD5:     var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A6CE4:     Me.FGrid.Row = var_C4
  loc_16A6CF7:     Set var_124 = Me.FGrid
  loc_16A6D37:     If CBool(CVar(var_8C) <> var_88.Fields.Item("ItemCatCode").Value) Then
  loc_16A6D40:       var_8E = (var_8E + 1)
  loc_16A6D4E:       var_124.Col = CVar(CLng(0))
  loc_16A6D66:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A6D6E:       var_E8 = CVar(CLng(0)) 'Long
  loc_16A6D78:       var_134 = CVar(CStr(var_8E)) 'String
  loc_16A6D7F:       LateIdCallSt
  loc_16A6D98:       var_124.CellFontBold = True
  loc_16A6DB8:       var_124.CellFontSize = CVar(CDbl(8))
  loc_16A6DC9:       var_124.CellForeColor = &HFFFFFF
  loc_16A6DD5:       var_124.CellFontBold = True
  loc_16A6DE6:       var_E8 = CVar(CLng(var_124.Row)) 'Long
  loc_16A6DEE:       var_10C = CVar(CLng(1)) 'Long
  loc_16A6E27:       var_154 = CVar(CStr(var_88.Fields.Item("ItemGrpName").Value & " :")) 'String
  loc_16A6E2E:       LateIdCallSt
  loc_16A6E63:       For var_168 = 1 To CInt((CLng(var_124.Cols) - 1)): var_90 = var_168 'Integer
  loc_16A6E75:         var_124.Col = CVar(CLng(var_90))
  loc_16A6E86:         var_124.CellBackColor = &H808080
  loc_16A6E8E:       Next var_168 'Integer
  loc_16A6E93:       var_C4 = vbNullString
  loc_16A6EBD:       var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A6ECC:       Me.FGrid.Row = var_C4
  loc_16A6EDB:     End If
  loc_16A6EE6:     var_124.Col = CVar(CLng(0))
  loc_16A6EF4:     var_124.CellFontName = "WINGDINGS"
  loc_16A6F04:     var_124.CellFontSize = CVar(CDbl(&HA))
  loc_16A6F1C:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A6F24:     var_E8 = CVar(CLng(0)) 'Long
  loc_16A6F32:     LateIdCallSt
  loc_16A6F88:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_124, vbNullString)) 'String
  loc_16A6F8F:     LateIdCallSt
  loc_16A6FBA:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A6FC2:     var_E8 = CVar(CLng(2)) 'Long
  loc_16A6FC7:     var_10C = vbNullString
  loc_16A6FD0:     LateIdCallSt
  loc_16A6FF1:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A6FF9:     var_E8 = CVar(CLng(3)) 'Long
  loc_16A6FFE:     var_10C = vbNullString
  loc_16A7007:     LateIdCallSt
  loc_16A7028:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A703E:     LateIdCallSt
  loc_16A706F:     var_C4 = "CatType"
  loc_16A7094:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_124, vbNullString, CVar(CLng(4)), var_C4)) 'String
  loc_16A709B:     LateIdCallSt
  loc_16A70C6:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A70CE:     var_E8 = CVar(CLng(7)) 'Long
  loc_16A70D3:     var_10C = "0.00"
  loc_16A70DC:     LateIdCallSt
  loc_16A70FD:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7105:     var_E8 = CVar(CLng(5)) 'Long
  loc_16A710A:     var_10C = "0.00"
  loc_16A7113:     LateIdCallSt
  loc_16A7134:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A714A:     LateIdCallSt
  loc_16A717B:     var_C4 = "ItemCode"
  loc_16A71A0:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_124, "0.00", CVar(CLng(8)), var_C4)) 'String
  loc_16A71A7:     LateIdCallSt
  loc_16A7207:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("UnitName")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_124, var_144, var_124)) 'String
  loc_16A720E:     LateIdCallSt
  loc_16A7239:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A723E:     var_E8 = &HB
  loc_16A724C:     var_134 = CVar(CStr(var_8E)) 'String
  loc_16A7253:     LateIdCallSt
  loc_16A7278:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A727D:     var_F8 = &HC
  loc_16A72B5:     var_154 = CVar(CStr(Int(var_88.Fields.Item("Limit").Value))) 'String
  loc_16A72BC:     LateIdCallSt
  loc_16A72D6:     var_C4 = vbNullString
  loc_16A72E9:     Set var_124 = Nothing 
  loc_16A7318:     var_8C = CStr(var_88.Fields.Item("ItemCatCode").Value)
  loc_16A7328:     var_88.MoveNext
  loc_16A732D:     GoTo loc_16A6CAA
  loc_16A7330:   End If
  loc_16A7349:   var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A7358:   Me.FGrid.Row = "ItemCatCode"
  loc_16A7379:   Me.FGrid.Col = CVar(CLng(1))
  loc_16A738F:   Me.FGrid.CellFontBold = True
  loc_16A73A9:   Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_16A73C4:   Me.FGrid.CellForeColor = &HFFFFFF
  loc_16A73DA:   Me.FGrid.CellFontBold = True
  loc_16A73F4:   Me.FGrid.Col = CVar(CLng(0))
  loc_16A740A:   Me.FGrid.CellFontBold = True
  loc_16A7425:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A742D:   var_E8 = CVar(CLng(0)) 'Long
  loc_16A743A:   var_134 = CVar(CStr((var_8E + 1))) 'String
  loc_16A7442:   Set var_98 = Me.FGrid
  loc_16A7448:   LateIdCallSt
  loc_16A7477:   var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A747F:   var_E8 = CVar(CLng(1)) 'Long
  loc_16A7484:   var_10C = "EXTRA :"
  loc_16A748E:   Set var_98 = Me.FGrid
  loc_16A7494:   LateIdCallSt
  loc_16A74CB:   For var_16C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_90 = var_16C 'Integer
  loc_16A74E4:     Me.FGrid.Col = CVar(CLng(var_90))
  loc_16A74FF:     Me.FGrid.CellBackColor = &H808080
  loc_16A750A:   Next var_16C 'Integer
  loc_16A7513:   Set var_94 = Me.TopCtrl1
  loc_16A7519:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_16A7521:   var_AC = CStr()
  loc_16A754A:   If ((var_AC <> "Add") And (Me.RecordCount <> 0)) Then
  loc_16A755A:     var_D8 = "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='"
  loc_16A7595:     var_144 = var_D8 & Me.Fields.Item("SearchCode").Value & "' AND I.Code Not In (Select Distinct ItemCode from catalogmast where code='" 
  loc_16A75A7:     Set var_C8 = Me.Txt
  loc_16A75AD:     Call 0.Method_Proc_113_58_16A80C00 (CInt(&H2D), var_178, var_AC, var_144)
  loc_16A75B5:     var_1A8 = var_178.Tag
  loc_16A75C0:     var_188 = -1 & CVar(var_AC) 
  loc_16A75D7:     unk_54B9F9.Execute CStr(var_188 & "') Order By I.Name"), var_1AC, 
  loc_16A75E2:     Set var_170 = var_1AC
  loc_16A761B:     If Not((var_170.RecordCount < 0)) Then
  loc_16A761E:       ' Referenced from: 16A7B99
  loc_16A762D:       If Not(var_170.EOF) Then
  loc_16A7630:         var_C4 = vbNullString
  loc_16A763A:         Set var_94 = Me.FGrid
  loc_16A7664:         var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A7673:         Me.FGrid.Row = var_C4
  loc_16A7694:         Me.FGrid.Col = CVar(CLng(0))
  loc_16A76AC:         Me.FGrid.CellFontName = "WINGDINGS"
  loc_16A76C6:         Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_16A76E1:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A76E9:         var_E8 = CVar(CLng(0)) 'Long
  loc_16A76F8:         Set var_98 = Me.FGrid
  loc_16A76FE:         LateIdCallSt
  loc_16A7747:         var_98 = var_170.Fields.Item("Remarks")
  loc_16A7758:         var_144 = CVar(Proc_6_38_E68A98(CVar(var_98), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_98, vbNullString)) 'String
  loc_16A7760:         Set var_178 = Me.FGrid
  loc_16A7766:         LateIdCallSt
  loc_16A77AF:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A77B7:         var_10C = CVar(CLng(3)) 'Long
  loc_16A77E4:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_16A77EC:         Set var_178 = Me.FGrid
  loc_16A77F2:         LateIdCallSt
  loc_16A783F:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7847:         var_10C = CVar(CLng(4)) 'Long
  loc_16A7874:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("Rate")), "0.00"))) 'String
  loc_16A787C:         Set var_178 = Me.FGrid
  loc_16A7882:         LateIdCallSt
  loc_16A78CF:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A78D7:         var_10C = CVar(CLng(6)) 'Long
  loc_16A7904:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_16A790C:         Set var_178 = Me.FGrid
  loc_16A7912:         LateIdCallSt
  loc_16A7943:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A794B:         var_E8 = CVar(CLng(7)) 'Long
  loc_16A7950:         var_10C = "0.00"
  loc_16A795A:         Set var_98 = Me.FGrid
  loc_16A7960:         LateIdCallSt
  loc_16A79A1:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A79A9:         var_10C = CVar(CLng(5)) 'Long
  loc_16A79D6:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("Amount")), "0.00"))) 'String
  loc_16A79DE:         Set var_178 = Me.FGrid
  loc_16A79E4:         LateIdCallSt
  loc_16A7A31:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7A39:         var_10C = CVar(CLng(8)) 'Long
  loc_16A7A66:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("Total")), "0.00"))) 'String
  loc_16A7A6E:         Set var_178 = Me.FGrid
  loc_16A7A74:         LateIdCallSt
  loc_16A7AA5:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7ABC:         Set var_98 = Me.FGrid
  loc_16A7AC2:         LateIdCallSt
  loc_16A7AD8:         Set var_C8 = Me.FGrid
  loc_16A7AF7:         var_C4 = "Unit"
  loc_16A7B0B:         var_98 = var_170.Fields.Item(var_C4)
  loc_16A7B1C:         var_144 = CVar(Proc_6_38_E68A98(CVar(var_98), CVar(CLng(&HA)), CVar(CLng(var_C8.Row)), var_98, vbNullString, CVar(CLng(9)), var_C4)) 'String
  loc_16A7B24:         Set var_178 = Me.FGrid
  loc_16A7B2A:         LateIdCallSt
  loc_16A7B57:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7B5C:         var_E8 = &HB
  loc_16A7B6D:         var_134 = CVar(CStr((var_8E + 1))) 'String
  loc_16A7B75:         Set var_98 = Me.FGrid
  loc_16A7B7B:         LateIdCallSt
  loc_16A7B94:         var_170.MoveNext
  loc_16A7B99:         GoTo loc_16A761E
  loc_16A7B9C:       End If
  loc_16A7B9C:     End If
  loc_16A7B9C:   End If
  loc_16A7B9C:   var_C4 = vbNullString
  loc_16A7BA6:   Set var_94 = Me.FGrid
  loc_16A7BC1:   var_A8 = Me.FGrid.Rows
  loc_16A7BD0:   var_C4 = CVar((CLng(var_A8) - 1)) 'Long
  loc_16A7BD9:   Set var_98 = Me.FGrid
  loc_16A7BDF:   var_98.Row = var_C4
  loc_16A7C00:   Me.FGrid.Col = CVar(CLng(0))
  loc_16A7C18:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_16A7C32:   Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_16A7C3E:   Set var_94 = Me.FGrid
  loc_16A7C4F:   var_C4 = True
  loc_16A7C5D:   Me.FGrid.Redraw = var_C4
  loc_16A7C68: Else
  loc_16A7C86:   Set var_94 = Me.Txt
  loc_16A7C8C:   Call 0.Method_Proc_113_58_16A80C00 (CInt(&H2D), var_98, var_AC, "SELECT ItemMast.Name AS ItemName, ItemGrp.Name AS ItemGrpName, ItemGrp.Type AS ItemGrpType, ItemMast.Unit AS UnitName, CatalogMast.*, ItemCatMast.CatType FROM ((CatalogMast LEFT JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code) LEFT JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code WHERE CatalogMast.Code='", var_A8, -1, var_C8)
  loc_16A7C94:   FGrid.DispID_FFFF = var_98.Tag
  loc_16A7CAD:   unk_54B9F9.Execute FGrid.DispID_10000 & var_AC & "' Order By ItemMast.ItemCatCode", var_C4, var_98
  loc_16A7CB8:   Set var_88 = var_C8
  loc_16A7CD0:   ' Referenced from:   16A80AB
  loc_16A7CDF:   If Not(var_88.EOF) Then
  loc_16A7CFB:     var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A7D0A:     Me.FGrid.Row = var_C4
  loc_16A7D1D:     Set var_1B0 = Me.FGrid
  loc_16A7D33:     var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7D3B:     var_164 = CVar(CLng(0)) 'Long
  loc_16A7D59:     var_C4 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_16A7D82:     var_154 = CVar(CStr((Val(CStr(var_1B0.TextMatrix))) + CDbl(1)))) 'String
  loc_16A7D89:     LateIdCallSt
  loc_16A7DEE:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_1B0, Me.FGrid.Row, CVar(CLng(0)))) 'String
  loc_16A7DF5:     LateIdCallSt
  loc_16A7E20:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7E28:     var_E8 = CVar(CLng(2)) 'Long
  loc_16A7E2D:     var_10C = vbNullString
  loc_16A7E36:     LateIdCallSt
  loc_16A7E57:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7E5F:     var_E8 = CVar(CLng(3)) 'Long
  loc_16A7E64:     var_10C = "0.00"
  loc_16A7E6D:     LateIdCallSt
  loc_16A7E8E:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7EA4:     LateIdCallSt
  loc_16A7ED5:     var_C4 = "CatType"
  loc_16A7EFA:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_1B0, "0.00", CVar(CLng(4)), var_C4)) 'String
  loc_16A7F01:     LateIdCallSt
  loc_16A7F2C:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7F34:     var_E8 = CVar(CLng(7)) 'Long
  loc_16A7F39:     var_10C = "0.00"
  loc_16A7F42:     LateIdCallSt
  loc_16A7F63:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7F6B:     var_E8 = CVar(CLng(5)) 'Long
  loc_16A7F70:     var_10C = "0.00"
  loc_16A7F79:     LateIdCallSt
  loc_16A7F9A:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7FB0:     LateIdCallSt
  loc_16A7FE1:     var_C4 = "ItemCode"
  loc_16A8006:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_1B0, "0.00", CVar(CLng(8)), var_C4)) 'String
  loc_16A800D:     LateIdCallSt
  loc_16A806D:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("UnitName")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_1B0, var_144, var_1B0)) 'String
  loc_16A8074:     LateIdCallSt
  loc_16A808C:     var_C4 = vbNullString
  loc_16A809F:     Set var_1B0 = Nothing 
  loc_16A80A6:     var_88.MoveNext
  loc_16A80AB:     GoTo loc_16A7CD0
  loc_16A80AE:   End If
  loc_16A80AE: End If
  loc_16A80B3: Set var_88 = Nothing
  loc_16A80BB: Set var_170 = Nothing
  loc_16A80BE: Exit Sub
End Sub

Public Sub Proc_113_59_1554E7C
  'Data Table: 54B9D8
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_54B9F9 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim var_C4 As Variant
  Dim var_8C As Recordset15
  Dim var_F8 As Long
  Dim var_C8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_180 As Variant
  Dim var_198 As Variant
  loc_1553E6A: Set var_94 = Me.Txt
  loc_1553E70: Call 0.Method_Proc_113_59_1554E7C0 (CInt(1), var_98, var_9C, "SELECT * FROM HALLBOOK WHERE DOCID='")
  loc_1553E78: var_C4 = var_98.Tag
  loc_1553E81: var_A0 = -1 & var_9C
  loc_1553E91: unk_54B9F9.Execute var_A0 & "'", var_C8, 
  loc_1553E9C: Set var_88 = var_C8
  loc_1553EC8: If (var_88.RecordCount > 0) Then
  loc_1553F04:   Set var_C8 = Me.Txt
  loc_1553F0A:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(2), var_D0)
  loc_1553F12:   var_D0.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_1553F5E:   Set var_C8 = Me.Txt
  loc_1553F64:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(3), var_D0)
  loc_1553F6C:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PartyName")))
  loc_1553FB6:   Set var_C8 = Me.Txt
  loc_1553FBC:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H29), var_D0)
  loc_1553FC4:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_155400E:   Set var_C8 = Me.Txt
  loc_1554014:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H2A), var_D0)
  loc_155401C:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_1554066:   Set var_C8 = Me.Txt
  loc_155406C:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H2E), var_D0)
  loc_1554074:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("City")))
  loc_15540BE:   Set var_C8 = Me.Txt
  loc_15540C4:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H23), var_D0)
  loc_15540CC:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PinCode")))
  loc_1554116:   Set var_C8 = Me.Txt
  loc_155411C:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(4), var_D0)
  loc_1554124:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContactNo_Off")))
  loc_155416E:   Set var_C8 = Me.Txt
  loc_1554174:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H2B), var_D0)
  loc_155417C:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContactNo_Res")))
  loc_15541C6:   Set var_C8 = Me.Txt
  loc_15541CC:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H10), var_D0)
  loc_15541D4:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")))
  loc_155421E:   Set var_C8 = Me.Txt
  loc_1554224:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H2C), var_D0)
  loc_155422C:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PanNo")))
  loc_1554276:   Set var_C8 = Me.Txt
  loc_155427C:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H14), var_D0)
  loc_1554284:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ExpAtt")))
  loc_15542CE:   Set var_C8 = Me.Txt
  loc_15542D4:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H15), var_D0)
  loc_15542DC:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuarAtt")))
  loc_1554326:   Set var_C8 = Me.Txt
  loc_155432C:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H16), var_D0)
  loc_1554334:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CoverRate")))
  loc_155435F:   var_98 = var_88.Fields.Item("Func_Name")
  loc_155437E:   Set var_C8 = Me.Txt
  loc_1554384:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H17), var_D0)
  loc_155438C:   var_D0.Tag = Proc_6_38_E68A98(CVar(var_98))
  loc_15543AE:   Set var_94 = Me.Txt
  loc_15543B4:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H17), var_98)
  loc_15543BC:   var_9C = var_98.Tag
  loc_15543D3:   If (var_9C <> vbNullString) Then
  loc_15543F4:     Set var_94 = Me.Txt
  loc_15543FA:     Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H17), var_98, var_9C, "Select * from FunctionType where Code='")
  loc_1554402:     var_C4 = var_98.Tag
  loc_155440B:     var_A0 = -1 & var_9C
  loc_155441B:     unk_54B9F9.Execute var_A0 & "'", var_C8, 
  loc_1554426:     Set var_8C = var_C8
  loc_1554452:     If (var_8C.RecordCount > 0) Then
  loc_155448B:       Set var_C8 = Me.Txt
  loc_1554491:       Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H17), var_D0)
  loc_1554499:       var_D0.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_15544AD:     End If
  loc_15544AD:   End If
  loc_15544E3:   Set var_C8 = Me.Txt
  loc_15544E9:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H18), var_D0)
  loc_15544F1:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl1")))
  loc_155453B:   Set var_C8 = Me.Txt
  loc_1554541:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H19), var_D0)
  loc_1554549:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl2")))
  loc_1554593:   Set var_C8 = Me.Txt
  loc_1554599:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H1A), var_D0)
  loc_15545A1:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl3")))
  loc_15545EB:   Set var_C8 = Me.Txt
  loc_15545F1:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H1B), var_D0)
  loc_15545F9:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl4")))
  loc_1554643:   Set var_C8 = Me.Txt
  loc_1554649:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H2F), var_D0)
  loc_1554651:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl5")))
  loc_155469B:   Set var_C8 = Me.Txt
  loc_15546A1:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H30), var_D0)
  loc_15546A9:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl6")))
  loc_15546F3:   Set var_C8 = Me.Txt
  loc_15546F9:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H31), var_D0)
  loc_1554701:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl7")))
  loc_155474B:   Set var_C8 = Me.Txt
  loc_1554751:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H1C), var_D0)
  loc_1554759:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("HouseKeep")))
  loc_15547A3:   Set var_C8 = Me.Txt
  loc_15547A9:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H1D), var_D0)
  loc_15547B1:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrontOff")))
  loc_15547FB:   Set var_C8 = Me.Txt
  loc_1554801:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H1E), var_D0)
  loc_1554809:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Engg")))
  loc_1554853:   Set var_C8 = Me.Txt
  loc_1554859:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H1F), var_D0)
  loc_1554861:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Security")))
  loc_15548AB:   Set var_C8 = Me.Txt
  loc_15548B1:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H20), var_D0)
  loc_15548B9:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Chef")))
  loc_15548E4:   var_98 = var_88.Fields.Item("Board")
  loc_15548F5:   var_9C = Proc_6_38_E68A98(CVar(var_98))
  loc_1554903:   Set var_C8 = Me.Txt
  loc_1554909:   Call 0.Method_Proc_113_59_1554E7C0 (CInt(&H21), var_D0)
  loc_1554911:   var_D0.Text = var_9C
  loc_1554925: End If
  loc_1554943: Set var_94 = Me.Txt
  loc_1554949: Call 0.Method_Proc_113_59_1554E7C0 (CInt(1), var_98, var_9C, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='")
  loc_1554951: var_C4 = var_98.Tag
  loc_155495A: var_A0 = -1 & var_9C
  loc_155496A: unk_54B9F9.Execute var_A0 & "'", var_C8, 
  loc_1554975: Set var_88 = var_C8
  loc_155498D: ' Referenced from: 1554E6D
  loc_155499C: If Not(var_88.EOF) Then
  loc_15549B8:   var_B4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_15549C7:   Me.FGrid1.Row = "Board"
  loc_15549FE:   For var_E8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_E8 'Byte
  loc_1554A0E:     var_F8 = 7
  loc_1554A3D:     Set var_98 = Me.Txt
  loc_1554A43:     Call 0.Method_Proc_113_59_1554E7C0 (CInt(1), var_C8, var_9C, CStr(Me.FGrid1.TextMatrix)))
  loc_1554A4B:     var_F8 = var_C8.Tag
  loc_1554ACF:     If ((CVar(CLng(var_8E)) = var_9C) And (CVar(CLng(var_8E)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenueName")), CStr(Me.FGrid1.TextMatrix)), 1))) Then
  loc_1554AD2:       GoTo loc_1554E65
  loc_1554AD5:     End If
  loc_1554AD8:   Next var_E8 'Byte
  loc_1554AE2:   Set var_188 = Me.FGrid1
  loc_1554AF8:   var_118 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1554AFD:   var_138 = 0
  loc_1554B1F:   var_B4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_1554B24:   var_F8 = 0
  loc_1554B50:   var_198 = CVar(CStr((Val(CStr(Me.FGrid1.TextMatrix))) + CDbl(1)))) 'String
  loc_1554B57:   LateIdCallSt
  loc_1554BBF:   var_180 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_188, var_198)) 'String
  loc_1554BC6:   LateIdCallSt
  loc_1554C27:   var_180 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1554C2E:   LateIdCallSt
  loc_1554C8F:   var_180 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1554C96:   LateIdCallSt
  loc_1554CF7:   var_180 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1554CFE:   LateIdCallSt
  loc_1554D5F:   var_180 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1554D66:   LateIdCallSt
  loc_1554DC7:   var_180 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenuCode")), 6, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1554DCE:   LateIdCallSt
  loc_1554E2F:   var_180 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FPDocId")), 7, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1554E36:   LateIdCallSt
  loc_1554E4E:   var_B4 = vbNullString
  loc_1554E61:   Set var_188 = Nothing 
  loc_1554E65:   ' Referenced from: 1554AD2
  loc_1554E68:   var_88.MoveNext
  loc_1554E6D:   GoTo loc_155498D
  loc_1554E70: End If
  loc_1554E75: Set var_88 = Nothing
  loc_1554E78: Exit Sub
End Sub

Public Sub Proc_113_60_FDE398
  'Data Table: 54B9D8
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  loc_FDE1E0: Set var_88 = Me.TopCtrl1
  loc_FDE1E6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FDE1FF: If (CStr() = "Browse") Then
  loc_FDE202:   Exit Sub
  loc_FDE203: End If
  loc_FDE20E: Set var_88 = Me.OptCat
  loc_FDE214: Call 0.Method_Proc_113_60_FDE3980 (CInt(0))
  loc_FDE21C: var_A0.Value
  loc_FDE23B: var_C4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_FDE29D: If ((CVar(CLng(0)) And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = 0)) And (CLng(Me.FGrid.Col) = 0)) Then
  loc_FDE2B3:   var_C4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_FDE2BB:   var_E4 = CVar(CLng(0)) 'Long
  loc_FDE2E9:   var_17C = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_FDE2F1:   var_19C = CVar(CLng(0)) 'Long
  loc_FDE328:   var_1BC = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDE330:   Set var_F8 = Me.FGrid
  loc_FDE336:   LateIdCallSt
  loc_FDE371:   Me.FGrid.Col = CVar(CLng(0))
  loc_FDE38C:   Me.FGrid.CellForeColor = &HFF
  loc_FDE394: End If
  loc_FDE394: Exit Sub
End Sub

Public Sub Proc_113_61_117C6B0(arg_C) '117C6B0
  'Data Table: 54B9D8
  Dim var_98 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C4 As Variant
  Dim var_B0 As TextBox
  Dim var_108 As Variant
  Dim var_F8 As String
  Dim var_11C As MSHFlexGrid
  loc_117C2FC: If (arg_C = 0) Then
  loc_117C312:   var_AC = CLng(Me.FGrid.Col)
  loc_117C322:   If (var_AC = CLng(1)) Then
  loc_117C338:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117C351:     Set var_98 = Me.TxtGrid
  loc_117C357:     Call 0.Method_Proc_113_61_117C6B00 (0, var_B0, var_F8, CVar(CLng(2)))
  loc_117C35F:     var_C4 = var_B0.Text
  loc_117C367:     var_108 = CVar(var_F8) 'String
  loc_117C36F:     Set var_11C = Me.FGrid
  loc_117C375:     LateIdCallSt
  loc_117C3BB:     Set var_98 = Me.TxtGrid
  loc_117C3C1:     Call 0.Method_Proc_113_61_117C6B00 (0, var_B0, var_F8, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_117C3C9:     var_11C = var_B0.Text
  loc_117C3D1:     var_108 = CVar(var_F8) 'String
  loc_117C3D9:     Set var_11C = Me.FGrid
  loc_117C3DF:     LateIdCallSt
  loc_117C3FC:   Else
  loc_117C403:     If (var_AC = CLng(2)) Then
  loc_117C432:       Set var_98 = Me.TxtGrid
  loc_117C438:       Call 0.Method_Proc_113_61_117C6B00 (0, var_B0, var_F8, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_117C440:       var_11C = var_B0.Text
  loc_117C448:       var_108 = CVar(var_F8) 'String
  loc_117C450:       Set var_11C = Me.FGrid
  loc_117C456:       LateIdCallSt
  loc_117C473:     Else
  loc_117C47A:       If (var_AC = CLng(3)) Then
  loc_117C487:         Set var_98 = Me.TxtGrid
  loc_117C48D:         Call 0.Method_Proc_113_61_117C6B00 (arg_C, var_B0, var_11C, var_108)
  loc_117C4A5:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_117C4AC:           var_F8 = CStr(0)
  loc_117C4B9:           Set var_98 = Me.TxtGrid
  loc_117C4BF:           Call 0.Method_Proc_113_61_117C6B00 (arg_C, var_B0, var_F8, var_108)
  loc_117C4C7:           var_B0.Text = var_108
  loc_117C4D6:         End If
  loc_117C4E3:         Set var_98 = Me.TxtGrid
  loc_117C4E9:         Call 0.Method_Proc_113_61_117C6B00 (arg_C, var_B0, var_F8)
  loc_117C4F1:         var_AC = var_B0.Text
  loc_117C55B:         LateIdCallSt
  loc_117C57F:         Call Proc_113_70_115454C(Me.FGrid, CVar(CStr(Format(CVar(var_F8), "0.00"))), 1, 1)
  loc_117C584:         Call Proc_113_68_11794E0(CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_117C58C:       Else
  loc_117C593:         If (var_AC = CLng(4)) Then
  loc_117C5A0:           Set var_98 = Me.TxtGrid
  loc_117C5A6:           Call 0.Method_Proc_113_61_117C6B00 (arg_C, var_B0)
  loc_117C5BE:           If Not(IsNumeric(CVar(var_B0))) Then
  loc_117C5D2:             Set var_98 = Me.TxtGrid
  loc_117C5D8:             Call 0.Method_Proc_113_61_117C6B00 (arg_C, var_B0)
  loc_117C5E0:             var_B0.Text = CStr(0)
  loc_117C5EF:           End If
  loc_117C5FC:           Set var_98 = Me.TxtGrid
  loc_117C602:           Call 0.Method_Proc_113_61_117C6B00 (arg_C, var_B0)
  loc_117C674:           LateIdCallSt
  loc_117C698:           Call Proc_113_70_115454C(Me.FGrid, CVar(CStr(Format(CVar(var_B0.Text), "0.00"))), 1, 1)
  loc_117C69D:           Call Proc_113_68_11794E0(CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_117C6A2:         End If
  loc_117C6A2:       End If
  loc_117C6A2:     End If
  loc_117C6A2:   End If
  loc_117C6A2: End If
  loc_117C6A7: Proc_113_61_117C6B0 = &HFF
End Sub

Public Sub Proc_113_62_19F19D8
  'Data Table: 54B9D8
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_54B9F9 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_130 As String
  Dim var_160 As Variant
  Dim var_1A4 As Variant
  Dim var_194 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1DC As String
  Dim var_1E0 As Variant
  Dim var_1EC As Recordset15
  Dim var_12C As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1F4 As MSHFlexGrid
  Dim var_124 As Variant
  Dim var_8E As Integer
  Dim var_1FC As MSHFlexGrid
  Dim var_230 As Variant
  Dim var_190 As Variant
  loc_19EE783: If (Me.RecordCount > 0) Then
  loc_19EE7DC:   unk_54B9F9.Execute CStr("Select S.* From HallBook S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_19EE7E7:   Set var_88 = var_128
  loc_19EE83B:   var_128 = var_88.Fields
  loc_19EE8A4:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_19EE8E9:   Me.LblUser.Caption = CStr(var_128 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_19EE963:   var_12C = var_88.Fields.Item("U_AE")
  loc_19EE9C4:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_19EE9DB:   var_194 = var_88.Fields
  loc_19EEA03:   Set var_1E0 = Me.LblLDt
  loc_19EEA09:   var_1E0.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_194.Item("U_EntDt")))))
  loc_19EEA55:   If (var_88.RecordCount > 0) Then
  loc_19EEA5B:     Set var_1EC = var_88 
  loc_19EEA98:     Set var_128 = Me.Txt
  loc_19EEA9E:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H22), var_12C)
  loc_19EEAA6:     var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_19EEAD6:     var_B0 = var_1EC.Fields.Item("vType")
  loc_19EEADE:     var_C0 = var_B0.Value
  loc_19EEAE7:     var_104 = CStr(var_C0)
  loc_19EEAF5:     Set var_128 = Me.Txt
  loc_19EEAFB:     Call 0.Method_Proc_113_62_19F19D80 (CInt(0), var_12C)
  loc_19EEB03:     var_12C.Tag = var_104
  loc_19EEB46:     Set var_9C = Me.Txt
  loc_19EEB4C:     Call 0.Method_Proc_113_62_19F19D80 (CInt(0), var_B0, var_104, "Select NCAT From Voucher_Type Where V_Type='", var_C0, -1)
  loc_19EEB6D:     unk_54B9F9.Execute var_12C & var_104 & "'", 0, var_194
  loc_19EEB7D:      = var_12C.Item()
  loc_19EEB85:      = var_194.Value
  loc_19EEB94:     global_140 = CStr(var_B0.Tag.Fields)
  loc_19EEBE4:     Set var_9C = Me.Txt
  loc_19EEBEA:     Call 0.Method_Proc_113_62_19F19D80 (CInt(0), var_B0, var_104, "Select Description From Voucher_type Where V_Type='", var_C0, -1)
  loc_19EEC0B:     unk_54B9F9.Execute var_12C & var_104 & "'", 0, var_194
  loc_19EEC1B:      = var_12C.Item()
  loc_19EEC23:      = var_194.Value
  loc_19EEC3A:     Set var_1A8 = Me.Txt
  loc_19EEC40:     Call 0.Method_Proc_113_62_19F19D80 (CInt(0), var_1E0)
  loc_19EEC48:     var_1E0.Text = CStr(var_B0.Tag.Fields)
  loc_19EECA9:     Set var_128 = Me.Txt
  loc_19EECAF:     Call 0.Method_Proc_113_62_19F19D80 (CInt(1), var_12C)
  loc_19EECB7:     var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_19EED1F:     Set var_128 = Me.Txt
  loc_19EED25:     Call 0.Method_Proc_113_62_19F19D80 (CInt(2), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_19EED2D:     var_12C.Text = 1
  loc_19EED7F:     Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_19EEDC7:     global_116 = CStr(var_1EC.Fields.Item("VTIME").Value)
  loc_19EEE0D:     Set var_128 = Me.Txt
  loc_19EEE13:     Call 0.Method_Proc_113_62_19F19D80 (CInt(3), var_12C)
  loc_19EEE1B:     var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("PartyName")))
  loc_19EEE81:     Set var_128 = Me.Txt
  loc_19EEE87:     Call 0.Method_Proc_113_62_19F19D80 (CInt(5), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Total")), "0.00")))
  loc_19EEE8F:     var_12C.Text = 1
  loc_19EEEFB:     Set var_128 = Me.Txt
  loc_19EEF01:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&HB), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("NetAmount")), "0.00")), 1)
  loc_19EEF09:     var_12C.Text = 1
  loc_19EEF75:     Set var_128 = Me.Txt
  loc_19EEF7B:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&HF), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Amount")), "0.00")), 1)
  loc_19EEF83:     var_12C.Text = 1
  loc_19EEFD3:     Set var_128 = Me.Txt
  loc_19EEFD9:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H18), var_12C)
  loc_19EEFE1:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl1")), 1)
  loc_19EF02B:     Set var_128 = Me.Txt
  loc_19EF031:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H19), var_12C)
  loc_19EF039:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl2")))
  loc_19EF083:     Set var_128 = Me.Txt
  loc_19EF089:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H1A), var_12C)
  loc_19EF091:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl3")))
  loc_19EF0DB:     Set var_128 = Me.Txt
  loc_19EF0E1:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H1B), var_12C)
  loc_19EF0E9:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl4")))
  loc_19EF133:     Set var_128 = Me.Txt
  loc_19EF139:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2F), var_12C)
  loc_19EF141:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl5")))
  loc_19EF18B:     Set var_128 = Me.Txt
  loc_19EF191:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H30), var_12C)
  loc_19EF199:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl6")))
  loc_19EF1E3:     Set var_128 = Me.Txt
  loc_19EF1E9:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H31), var_12C)
  loc_19EF1F1:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl7")))
  loc_19EF23B:     Set var_128 = Me.Txt
  loc_19EF241:     Call 0.Method_Proc_113_62_19F19D80 (CInt(3), var_12C)
  loc_19EF249:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("PartyName")))
  loc_19EF293:     Set var_128 = Me.Txt
  loc_19EF299:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H29), var_12C)
  loc_19EF2A1:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Add1")))
  loc_19EF2EB:     Set var_128 = Me.Txt
  loc_19EF2F1:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2A), var_12C)
  loc_19EF2F9:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Add2")))
  loc_19EF343:     Set var_128 = Me.Txt
  loc_19EF349:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2E), var_12C)
  loc_19EF351:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("City")))
  loc_19EF39B:     Set var_128 = Me.Txt
  loc_19EF3A1:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H23), var_12C)
  loc_19EF3A9:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("PinCode")))
  loc_19EF3F3:     Set var_128 = Me.Txt
  loc_19EF3F9:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2C), var_12C)
  loc_19EF401:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("PanNo")))
  loc_19EF42C:     var_B0 = var_1EC.Fields.Item("MenuCatalog")
  loc_19EF43D:     var_104 = Proc_6_38_E68A98(CVar(var_B0))
  loc_19EF44B:     Set var_128 = Me.Txt
  loc_19EF451:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2D), var_12C)
  loc_19EF459:     var_12C.Tag = var_104
  loc_19EF48B:     Set var_9C = Me.Txt
  loc_19EF491:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2D), var_B0, var_104, "Select Distinct Name  from CatalogMast Where Code='")
  loc_19EF499:     var_C0 = var_B0.Tag
  loc_19EF4A2:     var_130 = -1 & var_104
  loc_19EF4B2:     unk_54B9F9.Execute var_12C & var_104 & "'", var_128, 1
  loc_19EF4BD:     Set var_94 = var_128
  loc_19EF4E9:     If (var_94.RecordCount > 0) Then
  loc_19EF506:       var_B0 = var_94.Fields.Item(0)
  loc_19EF525:       Set var_128 = Me.Txt
  loc_19EF52B:       Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2D), var_12C)
  loc_19EF533:       var_12C.Text = CStr(var_B0.Value)
  loc_19EF54C:     Else
  loc_19EF55A:       Set var_9C = Me.Txt
  loc_19EF560:       Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2D), var_B0)
  loc_19EF568:       var_B0.Text = vbNullString
  loc_19EF574:     End If
  loc_19EF579:     Set var_94 = Nothing
  loc_19EF5B2:     Set var_128 = Me.Txt
  loc_19EF5B8:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2B), var_12C)
  loc_19EF5C0:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("ContactNo_Res")))
  loc_19EF60A:     Set var_128 = Me.Txt
  loc_19EF610:     Call 0.Method_Proc_113_62_19F19D80 (CInt(4), var_12C)
  loc_19EF618:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("ContactNo_Res")))
  loc_19EF662:     Set var_128 = Me.Txt
  loc_19EF668:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H10), var_12C)
  loc_19EF670:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MobileNo")))
  loc_19EF6D6:     Set var_128 = Me.Txt
  loc_19EF6DC:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H11), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("DiscPer")), "0.00")))
  loc_19EF6E4:     var_12C.Text = 1
  loc_19EF750:     Set var_128 = Me.Txt
  loc_19EF756:     Call 0.Method_Proc_113_62_19F19D80 (CInt(6), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("DiscAmt")), "0.00")))
  loc_19EF75E:     var_12C.Text = 1
  loc_19EF7CA:     Set var_128 = Me.Txt
  loc_19EF7D0:     Call 0.Method_Proc_113_62_19F19D80 (CInt(7), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Tax")), "0.00")), 1)
  loc_19EF7D8:     var_12C.Text = 1
  loc_19EF844:     Set var_128 = Me.Txt
  loc_19EF84A:     Call 0.Method_Proc_113_62_19F19D80 (CInt(8), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Servicecharge")), "0.00")), 1)
  loc_19EF852:     var_12C.Text = 1
  loc_19EF8BE:     Set var_128 = Me.Txt
  loc_19EF8C4:     Call 0.Method_Proc_113_62_19F19D80 (CInt(9), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("AddAmt")), "0.00")), 1)
  loc_19EF8CC:     var_12C.Text = 1
  loc_19EF938:     Set var_128 = Me.Txt
  loc_19EF93E:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H28), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("DedAmt")), "0.00")), 1)
  loc_19EF946:     var_12C.Text = 1
  loc_19EF996:     Set var_128 = Me.Txt
  loc_19EF99C:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H1C), var_12C)
  loc_19EF9A4:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("HouseKeep")), 1)
  loc_19EF9EE:     Set var_128 = Me.Txt
  loc_19EF9F4:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H1D), var_12C)
  loc_19EF9FC:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("FrontOff")))
  loc_19EFA46:     Set var_128 = Me.Txt
  loc_19EFA4C:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H1E), var_12C)
  loc_19EFA54:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Engg")))
  loc_19EFA93:     var_E0 = "0.00"
  loc_19EFABA:     Set var_128 = Me.Txt
  loc_19EFAC0:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&HA), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("RoundOff")), var_E0)))
  loc_19EFAC8:     var_12C.Text = 1
  loc_19EFB18:     Set var_128 = Me.Txt
  loc_19EFB1E:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H17), var_12C)
  loc_19EFB26:     var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Func_Name")), 1)
  loc_19EFB76:     var_130 = -1 & Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_E0)
  loc_19EFB7D:     var_1DC = var_12C & Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_E0) & "'"
  loc_19EFB86:     unk_54B9F9.Execute var_1DC, var_128, 1
  loc_19EFB91:     Set var_8C = var_128
  loc_19EFBBF:     If (var_8C.RecordCount > 0) Then
  loc_19EFBF8:       Set var_128 = Me.Txt
  loc_19EFBFE:       Call 0.Method_Proc_113_62_19F19D80 (CInt(&H17), var_12C)
  loc_19EFC06:       var_12C.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_19EFC1A:     End If
  loc_19EFC50:     Set var_128 = Me.Txt
  loc_19EFC56:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H1F), var_12C)
  loc_19EFC5E:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Security")))
  loc_19EFCA8:     Set var_128 = Me.Txt
  loc_19EFCAE:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H20), var_12C)
  loc_19EFCB6:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Chef")))
  loc_19EFD00:     Set var_128 = Me.Txt
  loc_19EFD06:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H21), var_12C)
  loc_19EFD0E:     var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Board")))
  loc_19EFD74:     Set var_128 = Me.Txt
  loc_19EFD7A:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H14), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ExpAtt")), "0")))
  loc_19EFD82:     var_12C.Text = 1
  loc_19EFDEE:     Set var_128 = Me.Txt
  loc_19EFDF4:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H15), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("GuarAtt")), "0")))
  loc_19EFDFC:     var_12C.Text = 1
  loc_19EFE68:     Set var_128 = Me.Txt
  loc_19EFE6E:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&H16), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("CoverRate")), "0.00")), 1)
  loc_19EFE76:     var_12C.Text = 1
  loc_19EFEE2:     Set var_128 = Me.Txt
  loc_19EFEE8:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&HE), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("TotalCoverRate")), "0.00")), 1)
  loc_19EFEF0:     var_12C.Text = 1
  loc_19EFF21:     var_B0 = var_1EC.Fields.Item("HallRent")
  loc_19EFF3E:     var_C0 = CVar(var_B0) 'Address
  loc_19EFF4D:     var_104 = CStr(Format(var_C0, "0.00"))
  loc_19EFF5C:     Set var_128 = Me.Txt
  loc_19EFF62:     Call 0.Method_Proc_113_62_19F19D80 (CInt(&HD), var_12C, var_104, 1)
  loc_19EFF6A:     var_12C.Text = 1
  loc_19EFF86:     Set var_1EC = Nothing 
  loc_19EFF8A:   End If
  loc_19EFFA8:   Set var_9C = Me.Txt
  loc_19EFFAE:   Call 0.Method_Proc_113_62_19F19D80 (CInt(&H2D), var_B0, var_104, "SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG INNER JOIN GroupCatalog  GC ON IG.Code = GC.ItemCatCode WHERE GC.CatCode='", var_C0)
  loc_19EFFB6:   -1 = var_B0.Tag
  loc_19EFFCF:   unk_54B9F9.Execute var_128 & var_104 & "' ORDER BY IG.Name", 1, 1
  loc_19EFFE0:   Set global_68 = var_128
  loc_19F0006:   Me.Requery -1
  loc_19F0022:   If (Me.RecordCount > 0) Then
  loc_19F0025:     var_AC = True
  loc_19F0032:     Set var_9C = Me.OptCat
  loc_19F0038:     Call 0.Method_Proc_113_62_19F19D80 (0, var_B0)
  loc_19F0056:     Call OptCat_UnknownEvent_9()
  loc_19F006E:     Me.FGrid2.Rows = 1
  loc_19F007A:     Set var_1F4 = Me.FGrid2
  loc_19F007D:     ' Referenced from: 19F0242
  loc_19F008F:     If Not(Me.EOF) Then
  loc_19F00A4:       var_AC = CVar((CLng(var_1F4.Rows) + 1)) 'Long
  loc_19F00AC:       var_1F4.Rows = 1
  loc_19F00C6:       var_AC = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19F00E7:       var_100 = CVar(CStr((CLng(var_1F4.Rows) - 1))) 'String
  loc_19F00EE:       LateIdCallSt
  loc_19F0111:       var_D0 = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19F0149:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("GroupName")), CVar(CLng(2)), "0.00", var_1F4, var_100, CVar(CLng(0)))) 'String
  loc_19F0150:       LateIdCallSt
  loc_19F0167:       var_E0 = var_1F4.Rows
  loc_19F0176:       var_D0 = CVar((CLng(var_E0) - 1)) 'Long
  loc_19F01AE:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), "0.00", var_1F4, var_100)) 'String
  loc_19F01B5:       LateIdCallSt
  loc_19F01CC:       var_100 = var_1F4.Rows
  loc_19F01DB:       var_D0 = CVar((CLng(var_100) - 1)) 'Long
  loc_19F0202:       var_B0 = Me.Fields.Item("Limit")
  loc_19F0211:       Proc_6_48_EF4270(var_E0, CVar(var_B0), CVar(CLng(3)), "0.00", var_1F4, var_100)
  loc_19F021A:       var_124 = CVar(CStr(var_E0)) 'String
  loc_19F0221:       LateIdCallSt
  loc_19F023D:       Me.MoveNext
  loc_19F0242:       GoTo loc_19F007D
  loc_19F0245:     End If
  loc_19F0257:     var_AC = CVar((CLng(var_1F4.Rows) + 1)) 'Long
  loc_19F025F:     var_1F4.Rows = "Limit"
  loc_19F0279:     var_AC = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19F0281:     var_F0 = CVar(CLng(0)) 'Long
  loc_19F029A:     var_100 = CVar(CStr((CLng(var_1F4.Rows) - 1))) 'String
  loc_19F02A1:     LateIdCallSt
  loc_19F02C4:     var_AC = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19F02CC:     var_F0 = CVar(CLng(2)) 'Long
  loc_19F02D1:     var_140 = "EXTRA"
  loc_19F02DA:     LateIdCallSt
  loc_19F02E8:     var_C0 = var_1F4.Rows
  loc_19F02F7:     var_AC = CVar((CLng(var_C0) - 1)) 'Long
  loc_19F02FF:     var_F0 = CVar(CLng(3)) 'Long
  loc_19F0308:     var_E0 = CVar(CStr(0)) 'String
  loc_19F030F:     LateIdCallSt
  loc_19F032A:     var_1F4.FixedRows = 1
  loc_19F0331:     Set var_1F4 = Nothing 
  loc_19F0338:   Else
  loc_19F0345:     Set var_9C = Me.OptCat
  loc_19F034B:     Call 0.Method_Proc_113_62_19F19D80 (1, var_B0, True, var_1F4, var_E0, var_F0, True)
  loc_19F0369:     Call OptCat_UnknownEvent_9()
  loc_19F036E:   End If
  loc_19F037D:   Me.FGrid1.Redraw = False
  loc_19F0398:   Me.FGrid1.Rows = 1
  loc_19F03A2:   var_8E = 1
  loc_19F03C3:   Set var_9C = Me.Txt
  loc_19F03C9:   Call 0.Method_Proc_113_62_19F19D80 (CInt(&H22), var_B0, var_104, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='", var_C0, -1, var_128)
  loc_19F03D1:   var_8E = var_B0.Text
  loc_19F03EA:   unk_54B9F9.Execute 1 & var_104 & "'", 1, OptCat.DispID_B
  loc_19F03F5:   Set var_88 = var_128
  loc_19F0421:   If (var_88.RecordCount > 0) Then
  loc_19F0424:     ' Referenced from: 19F06DF
  loc_19F0433:     If Not(var_88.EOF) Then
  loc_19F0436:       var_AC = vbNullString
  loc_19F0440:       Set var_9C = Me.FGrid1
  loc_19F045C:       var_AC = CVar(CLng(var_8E)) 'Long
  loc_19F0461:       var_F0 = 0
  loc_19F046F:       var_C0 = CVar(CStr(var_8E)) 'String
  loc_19F0476:       LateIdCallSt
  loc_19F0485:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_19F048A:       var_114 = 6
  loc_19F04BE:       var_E0 = CVar(CStr(var_88.Fields.Item("VenuCode").Value)) 'String
  loc_19F04C5:       LateIdCallSt
  loc_19F0515:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenuName")), 1, CVar(CLng(var_8E)), Me.FGrid1, var_E0, 1, CVar(CLng(var_8E)))) 'String
  loc_19F051C:       LateIdCallSt
  loc_19F0532:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_19F0537:       var_114 = 2
  loc_19F056B:       var_E0 = CVar(CStr(var_88.Fields.Item("FromDate").Value)) 'String
  loc_19F0572:       LateIdCallSt
  loc_19F058C:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_19F0591:       var_114 = 4
  loc_19F05C5:       var_E0 = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_19F05CC:       LateIdCallSt
  loc_19F0602:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_19F0607:       var_140 = 3
  loc_19F0638:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromTime")), "HH:MM"))) 'String
  loc_19F063F:       LateIdCallSt
  loc_19F0675:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_19F067A:       var_140 = 5
  loc_19F06AB:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("ToTime")), "HH:MM"))) 'String
  loc_19F06B2:       LateIdCallSt
  loc_19F06CA:       Set var_1F8 = Nothing 
  loc_19F06D4:       var_8E = (var_8E + 1)
  loc_19F06DA:       var_88.MoveNext
  loc_19F06DF:       GoTo loc_19F0424
  loc_19F06E2:     End If
  loc_19F06F5:     Me.FGrid1.FixedRows = 1
  loc_19F06FD:   End If
  loc_19F070B:   Me.FGrid1.Redraw = True
  loc_19F0719:   If (var_8E = 1) Then
  loc_19F072F:     Me.FGrid1.Rows = 1
  loc_19F0755:     var_C0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, CInt(0), var_8E, var_1F8, var_124, 1, 1, var_140))) 'String
  loc_19F075D:     Set var_B0 = Me.FGrid1
  loc_19F078A:     Me.FGrid1.FixedRows = 1
  loc_19F0792:   End If
  loc_19F07A1:   Me.FGrid.Redraw = False
  loc_19F07BC:   Me.FGrid.Rows = 1
  loc_19F07D4:   Set var_9C = Me.OptCat
  loc_19F07DA:   Call 0.Method_Proc_113_62_19F19D80 (CInt(0), var_B0, 1, FGrid1.DispID_10000, var_C0, var_F0)
  loc_19F07E2:   var_B0.Value
  loc_19F07F2:   Set var_128 = Me.TopCtrl1
  loc_19F07F8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((CBool(var_1F8) = &HFF))
  loc_19F081C:   If (1 And (CStr(var_124) <> "Browse")) Then
  loc_19F081F:     Call Proc_113_58_16A80C0(1, var_140)
  loc_19F083B:     If (Me.RecordCount <= 0) Then
  loc_19F083E:       Exit Sub
  loc_19F083F:     End If
  loc_19F084C:     var_D0 = "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='"
  loc_19F0895:     unk_54B9F9.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By S.Sno"), var_124, -1
  loc_19F08A0:     Set var_88 = var_128
  loc_19F08CE:     If (var_88.RecordCount > 0) Then
  loc_19F08D1:       ' Referenced from: 19F1331
  loc_19F08E0:       If Not(var_88.EOF) Then
  loc_19F08E3:         var_AC = vbNullString
  loc_19F08ED:         Set var_9C = Me.FGrid
  loc_19F0902:         Set var_1FC = Me.FGrid
  loc_19F092A:         For var_200 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_200 'Integer
  loc_19F0934:           var_AC = CVar(CLng(1)) 'Long
  loc_19F093C:           var_F0 = CVar(CLng(1)) 'Long
  loc_19F096E:           If (Trim(CVar(CStr(var_1FC.TextMatrix)))) = vbNullString) Then
  loc_19F0971:             GoTo loc_19F131A
  loc_19F0974:           End If
  loc_19F0978:           var_AC = CVar(CLng(1)) 'Long
  loc_19F0980:           var_F0 = CVar(CLng(1)) 'Long
  loc_19F0993:           var_100 = CVar(CStr(var_1FC.TextMatrix))) 'String
  loc_19F09B9:           var_E0 = var_88.Fields.Item("Remarks").Value
  loc_19F09C9:           var_160 = CVar(CLng(1)) 'Long
  loc_19F09FC:           var_1C8 = CVar(CLng(1)) And (Trim(CVar(CStr(var_1FC.TextMatrix)))) <> vbNullString)
  loc_19F0A04:           var_230 = CVar(CLng(1)) 'Long
  loc_19F0A50:           If CBool(CVar(CLng(0)) And (IsNumeric(CVar(CStr(var_1FC.TextMatrix)))) = 0)) Then
  loc_19F0A57:             var_AC = CVar(CLng(1)) 'Long
  loc_19F0A5F:             var_F0 = CVar(CLng(0)) 'Long
  loc_19F0A64:             var_140 = "ü"
  loc_19F0A6D:             LateIdCallSt
  loc_19F0AB1:             var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19F0AB8:             LateIdCallSt
  loc_19F0AF4:             Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("QtyIss")), var_1FC, var_E0, CVar(CLng(9)), CVar(CLng(1)), var_1FC)
  loc_19F0B7F:             LateIdCallSt
  loc_19F0BC9:             Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Rate")), var_1FC, CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"), vbNullString))), CVar(CLng(3)), CVar(CLng(1)), 1)
  loc_19F0C12:             var_160 = CVar(CLng(1)) 'Long
  loc_19F0C1A:             var_1A4 = CVar(CLng(4)) 'Long
  loc_19F0C4D:             var_1D8 = CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("Rate")), "0.00"), vbNullString))) 'String
  loc_19F0C54:             LateIdCallSt
  loc_19F0C98:             var_F0 = CVar(CLng(1)) 'Long
  loc_19F0CD4:             LateIdCallSt
  loc_19F0D23:             var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(1)), var_1FC, CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_19F0D2A:             LateIdCallSt
  loc_19F0D75:             var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(1)), var_1FC, var_E0, CVar(CLng(5)))) 'String
  loc_19F0D7C:             LateIdCallSt
  loc_19F0DAE:             var_F0 = CVar(CLng(1)) 'Long
  loc_19F0DB6:             var_140 = CVar(CLng(8)) 'Long
  loc_19F0DE3:             var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))) 'String
  loc_19F0DEA:             LateIdCallSt
  loc_19F0E03:           Else
  loc_19F0E07:             var_AC = CVar(CLng(1)) 'Long
  loc_19F0E0F:             var_F0 = CVar(CLng(9)) 'Long
  loc_19F0E22:             var_100 = CVar(CStr(var_1FC.TextMatrix))) 'String
  loc_19F0E48:             var_E0 = var_88.Fields.Item("Item").Value
  loc_19F0E58:             var_160 = CVar(CLng(1)) 'Long
  loc_19F0E9E:             If CBool(CVar(CLng(0)) And (IsNumeric(CVar(CStr(var_1FC.TextMatrix)))) = 0)) Then
  loc_19F0EA5:               var_AC = CVar(CLng(1)) 'Long
  loc_19F0EAD:               var_F0 = CVar(CLng(0)) 'Long
  loc_19F0EB2:               var_140 = "ü"
  loc_19F0EBB:               LateIdCallSt
  loc_19F0EFF:               var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19F0F06:               LateIdCallSt
  loc_19F0F42:               Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("QtyIss")), var_1FC, var_E0, CVar(CLng(9)), CVar(CLng(1)), var_1FC)
  loc_19F0FCD:               LateIdCallSt
  loc_19F1017:               Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Rate")), var_1FC, CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"), vbNullString))), CVar(CLng(3)), CVar(CLng(1)), 1)
  loc_19F102B:               var_128 = var_88.Fields
  loc_19F1060:               var_160 = CVar(CLng(1)) 'Long
  loc_19F1068:               var_1A4 = CVar(CLng(4)) 'Long
  loc_19F109B:               var_1D8 = CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_128.Item("Rate")), "0.00"), vbNullString))) 'String
  loc_19F10A2:               LateIdCallSt
  loc_19F10E6:               var_F0 = CVar(CLng(1)) 'Long
  loc_19F10EE:               var_140 = CVar(CLng(5)) 'Long
  loc_19F111B:               var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_19F1122:               LateIdCallSt
  loc_19F1158:               var_F0 = CVar(CLng(1)) 'Long
  loc_19F1194:               LateIdCallSt
  loc_19F11E3:               var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CatType")), CVar(CLng(6)), CVar(CLng(1)), var_1FC, CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))), 1, 1)) 'String
  loc_19F11EA:               LateIdCallSt
  loc_19F1235:               var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(1)), var_1FC, var_E0, CVar(CLng(7)))) 'String
  loc_19F123C:               LateIdCallSt
  loc_19F1287:               var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(1)), var_1FC, var_E0)) 'String
  loc_19F128E:               LateIdCallSt
  loc_19F12C0:               var_F0 = CVar(CLng(1)) 'Long
  loc_19F12C8:               var_140 = CVar(CLng(8)) 'Long
  loc_19F12F5:               var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))) 'String
  loc_19F12FC:               LateIdCallSt
  loc_19F1312:             End If
  loc_19F1312:           End If
  loc_19F1315:         Next var_200 'Integer
  loc_19F131A:         ' Referenced from: 19F0971
  loc_19F131C:         Set var_1FC = Nothing 
  loc_19F1326:         var_8E = (var_8E + 1)
  loc_19F132C:         var_88.MoveNext
  loc_19F1331:         GoTo loc_19F08D1
  loc_19F1334:       End If
  loc_19F1347:       Me.FGrid.FixedRows = 1
  loc_19F134F:     End If
  loc_19F1352:   Else
  loc_19F135F:     var_D0 = "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='"
  loc_19F13A8:     unk_54B9F9.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By S.Sno"), var_124, -1
  loc_19F13B3:     Set var_88 = var_128
  loc_19F13E1:     If (var_88.RecordCount > 0) Then
  loc_19F13E4:       ' Referenced from:   19F18F0
  loc_19F13F3:       If Not(var_88.EOF) Then
  loc_19F13F6:         var_AC = vbNullString
  loc_19F1400:         Set var_9C = Me.FGrid
  loc_19F1415:         Set var_294 = Me.FGrid
  loc_19F141C:         var_D0 = CVar(CLng(1)) 'Long
  loc_19F1424:         var_114 = CVar(CLng(9)) 'Long
  loc_19F1454:         var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19F145B:         LateIdCallSt
  loc_19F1475:         var_D0 = CVar(CLng(1)) 'Long
  loc_19F14AA:         var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), var_D0, var_294, var_E0, CVar(CLng(1)))) 'String
  loc_19F14B1:         LateIdCallSt
  loc_19F14E9:         Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("QtyIss")), var_294, var_E0, var_D0)
  loc_19F1574:         LateIdCallSt
  loc_19F15BE:         Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Rate")), var_294, CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"), vbNullString))), CVar(CLng(3)), CVar(CLng(1)))
  loc_19F1607:         var_160 = CVar(CLng(1)) 'Long
  loc_19F160F:         var_1A4 = CVar(CLng(4)) 'Long
  loc_19F1642:         var_1D8 = CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("Rate")), "0.00"), vbNullString))) 'String
  loc_19F1649:         LateIdCallSt
  loc_19F168D:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F1695:         var_140 = CVar(CLng(5)) 'Long
  loc_19F16C2:         var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_19F16C9:         LateIdCallSt
  loc_19F16FF:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F1707:         var_140 = CVar(CLng(7)) 'Long
  loc_19F1734:         var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_19F173B:         LateIdCallSt
  loc_19F1771:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F17AD:         LateIdCallSt
  loc_19F17FC:         var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(1)), var_294, CVar(CStr(Format(CVar(var_88.Fields.Item("CatType")), "0.00"))), 1, 1)) 'String
  loc_19F1803:         LateIdCallSt
  loc_19F184E:         var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(1)), var_294, var_E0, CVar(CLng(6)))) 'String
  loc_19F1855:         LateIdCallSt
  loc_19F1887:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F188F:         var_140 = CVar(CLng(8)) 'Long
  loc_19F18A3:         var_E0 = "0.00"
  loc_19F18BC:         var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), var_E0))) 'String
  loc_19F18C3:         LateIdCallSt
  loc_19F18DB:         Set var_294 = Nothing 
  loc_19F18E5:         var_8E = (var_8E + 1)
  loc_19F18EB:         var_88.MoveNext
  loc_19F18F0:         GoTo loc_19F13E4
  loc_19F18F3:       End If
  loc_19F1906:       Me.FGrid.FixedRows = 1
  loc_19F190E:     End If
  loc_19F190E:   End If
  loc_19F1914:   If (1 = 1) Then
  loc_19F192A:     Me.FGrid.Rows = 1
  loc_19F1950:     var_C0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), 1, var_294, var_124, 1, 1, var_140))) 'String
  loc_19F1958:     Set var_B0 = Me.FGrid
  loc_19F1985:     Me.FGrid.FixedRows = 1
  loc_19F198D:   End If
  loc_19F1990: Else
  loc_19F1990:   Call Proc_113_64_FF6808(FGrid.DispID_10000, var_C0, var_F0, var_294, var_E0)
  loc_19F1995: End If
  loc_19F1995: Call Proc_113_66_F286A0(var_F0, var_294)
  loc_19F19AD: Me.FGrid.FixedRows = 1
  loc_19F19C3: Me.FGrid.Redraw = True
  loc_19F19D0: Set var_88 = Nothing
  loc_19F19D3: Exit Sub
  loc_19F19D4: Exit Sub
End Sub

Public Sub Proc_113_63_11A59A4
  'Data Table: 54B9D8
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim unk_54B9F9 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_14C As Variant
  loc_11A55A5: Set var_9C = Me.TopCtrl1
  loc_11A55AB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(&HFF)
  loc_11A55B3: var_B0 = CStr()
  loc_11A55C4: If (var_B0 = "Add") Then
  loc_11A55F4:   Set var_9C = Me.Txt
  loc_11A55FA:   Call 0.Method_Proc_113_63_11A59A40 (CInt(&H22), var_B4, var_B0, "Select Count(*) From HallBook1 Where DocID='", var_AC, -1)
  loc_11A561B:   unk_54B9F9.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_11A562B:    = var_D4.Item()
  loc_11A5633:    = var_E8.Value
  loc_11A5660:   If (var_B4.Text.Fields > 0) Then
  loc_11A5669:     Call 0.Method_arg_50 (var_B0)
  loc_11A568A:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_11A56A0:     Call Proc_113_71_1105634(MemVar_1F92044)
  loc_11A56B3:     Set var_9C = Me.Txt
  loc_11A56B9:     Call 0.Method_Proc_113_63_11A59A40 (CInt(&H22), var_B4)
  loc_11A56C1:     var_B4.Text = var_B0
  loc_11A56D5:     Proc_113_63_11A59A4 = 0
  loc_11A56DB:   End If
  loc_11A56DB: End If
  loc_11A56E6: Set var_9C = Me.OptCat
  loc_11A56EC: Call 0.Method_Proc_113_63_11A59A40 (CInt(0), var_B4)
  loc_11A56F4: var_B4.Value
  loc_11A570A: If (CBool(var_B0) = &HFF) Then
  loc_11A570D:   GoTo loc_11A599E
  loc_11A5710: End If
  loc_11A5735: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_11A573F:   var_CC = CVar(CLng(var_88)) 'Long
  loc_11A5747:   var_108 = CVar(CLng(1)) 'Long
  loc_11A5767:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11A5783:   If CBool(var_118 <> vbNullString) Then
  loc_11A578A:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11A5792:     var_108 = CVar(CLng(3)) 'Long
  loc_11A57AC:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_11A57BD:     var_14C = CVar(CLng(var_88)) 'Long
  loc_11A57FD:     If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> "Food")) Then
  loc_11A5825:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11A584B:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11A5857:       Set var_9C = Me.FGrid
  loc_11A587B:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11A5888:       Proc_113_63_11A59A4 = 0
  loc_11A588E:     End If
  loc_11A5892:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11A589A:     var_108 = CVar(CLng(4)) 'Long
  loc_11A58B4:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_11A58C5:     var_14C = CVar(CLng(var_88)) 'Long
  loc_11A5905:     If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> "Food")) Then
  loc_11A592D:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11A5953:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11A595F:       Set var_9C = Me.FGrid
  loc_11A5983:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11A5990:       Proc_113_63_11A59A4 = 0
  loc_11A5996:     End If
  loc_11A5996:   End If
  loc_11A5999: Next var_12C 'Integer
  loc_11A599E: ' Referenced from: 11A570D
  loc_11A599E: Proc_113_63_11A59A4 = 
End Sub

Public Sub Proc_113_64_FF6808
  'Data Table: 54B9D8
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_FF6619: Me.LblVPrefix.Caption = vbNullString
  loc_FF662F: Set var_8C = Me.Txt
  loc_FF6635: Call 0.Method_Proc_113_64_FF6808C (var_8E, var_86)
  loc_FF6645: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FF665B:   Set var_8C = Me.Txt
  loc_FF6661:   Call 0.Method_Proc_113_64_FF68080 (CInt(var_86), var_98)
  loc_FF6669:   var_98.Text = vbNullString
  loc_FF6685:   Set var_8C = Me.Txt
  loc_FF668B:   Call 0.Method_Proc_113_64_FF68080 (CInt(var_86), var_98)
  loc_FF6693:   var_98.Tag = vbNullString
  loc_FF66A2: Next var_92 'Byte
  loc_FF66BB: Me.FGrid.Rows = 1
  loc_FF66E1: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_FF66E9: Set var_98 = Me.FGrid
  loc_FF6716: Me.FGrid.FixedRows = 1
  loc_FF6731: Me.FGrid1.Rows = 1
  loc_FF6755: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_FF675D: Set var_98 = Me.FGrid1
  loc_FF678A: Me.FGrid1.FixedRows = 1
  loc_FF67A5: Me.FGrid2.Rows = 1
  loc_FF67C9: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid2, 0, FGrid1.DispID_10000))) 'String
  loc_FF67D1: Set var_98 = Me.FGrid2
  loc_FF67FE: Me.FGrid2.FixedRows = 1
  loc_FF6806: Exit Sub
End Sub

Public Sub Proc_113_65_FAE188(arg_C) 'FAE188
  'Data Table: 54B9D8
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_FADFF2: Set var_8C = Me.Txt
  loc_FADFF8: Call 0.Method_Proc_113_65_FAE188C (var_8E, var_86)
  loc_FAE008: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FAE01E:   Set var_8C = Me.Txt
  loc_FAE024:   Call 0.Method_Proc_113_65_FAE1880 (CInt(var_86), var_98)
  loc_FAE02C:   var_98.Enabled = arg_C
  loc_FAE03B: Next var_92 'Byte
  loc_FAE04E: Set var_8C = Me.Txt
  loc_FAE054: Call 0.Method_Proc_113_65_FAE1880 (CInt(&H22), var_98)
  loc_FAE05C: var_98.Enabled = False
  loc_FAE075: Set var_8C = Me.Txt
  loc_FAE07B: Call 0.Method_Proc_113_65_FAE1880 (CInt(5), var_98)
  loc_FAE083: var_98.Enabled = False
  loc_FAE09C: Set var_8C = Me.Txt
  loc_FAE0A2: Call 0.Method_Proc_113_65_FAE1880 (CInt(&HB), var_98)
  loc_FAE0AA: var_98.Enabled = False
  loc_FAE0C3: Set var_8C = Me.Txt
  loc_FAE0C9: Call 0.Method_Proc_113_65_FAE1880 (CInt(&HE), var_98)
  loc_FAE0D1: var_98.Enabled = False
  loc_FAE0EA: Set var_8C = Me.Txt
  loc_FAE0F0: Call 0.Method_Proc_113_65_FAE1880 (CInt(&HF), var_98)
  loc_FAE0F8: var_98.Enabled = False
  loc_FAE111: Set var_8C = Me.Txt
  loc_FAE117: Call 0.Method_Proc_113_65_FAE1880 (CInt(&HA), var_98)
  loc_FAE11F: var_98.Enabled = False
  loc_FAE138: Set var_8C = Me.Txt
  loc_FAE13E: Call 0.Method_Proc_113_65_FAE1880 (CInt(7), var_98)
  loc_FAE146: var_98.Enabled = False
  loc_FAE16D: If (Me.Frame1.Visible = &HFF) Then
  loc_FAE17C:   Me.Frame1.Visible = False
  loc_FAE184: End If
  loc_FAE184: Exit Sub
End Sub

Public Sub Proc_113_66_F286A0
  'Data Table: 54B9D8
  loc_F285AC: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F285BE:   Me.DGVType.Visible = False
  loc_F285C6: End If
  loc_F285E2: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F285F4:   Me.DGHall.Visible = False
  loc_F285FC: End If
  loc_F28618: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F2862A:   Me.DGItem.Visible = False
  loc_F28632: End If
  loc_F2864E: If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_F28660:   Me.DGFPNo.Visible = False
  loc_F28668: End If
  loc_F28684: If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_F28696:   Me.DG_Catalog.Visible = False
  loc_F2869E: End If
  loc_F2869E: Exit Sub
End Sub

Public Sub Proc_113_67_F0C210
  'Data Table: 54B9D8
  loc_F0C134: Call Proc_113_66_F286A0()
  loc_F0C144: Set var_88 = Me.Txt
  loc_F0C14A: Call 0.Method_Proc_113_67_F0C2100 (CInt(2))
  loc_F0C173: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0C176:   Exit Sub
  loc_F0C177: End If
  loc_F0C182: Set var_88 = Me.Txt
  loc_F0C188: Call 0.Method_Proc_113_67_F0C2100 (CInt(1), var_8C)
  loc_F0C1B1: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0C1B4:   Exit Sub
  loc_F0C1B5: End If
  loc_F0C1EC: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C1EF:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C1F7: Else
  loc_F0C1FD:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C205:   Call var_88.SetFocus
  loc_F0C20E: End If
  loc_F0C20E: Exit Sub
End Sub

Public Sub Proc_113_68_11794E0
  'Data Table: 54B9D8
  Dim var_90 As Double
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_FC As Double
  Dim var_98 As Double
  Dim var_110 As TextBox
  Dim var_118 As TextBox
  Dim var_14C As Double
  Dim var_124 As TextBox
  Dim var_154 As Double
  Dim var_144 As String
  Dim var_140 As TextBox
  Dim var_168 As Double
  Dim var_15C As TextBox
  loc_117913B: var_90 = CDbl(0)
  loc_1179163: For var_B0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B0 'Integer
  loc_117916D:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_1179175:   var_E0 = CVar(CLng(5)) 'Long
  loc_11791A1:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11791B1:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_11791B9:   var_E0 = CVar(CLng(7)) 'Long
  loc_11791E5:   var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11791F4: Next var_B0 'Integer
  loc_1179230: Set var_9C = Me.Txt
  loc_1179236: Call 0.Method_Proc_113_68_11794E00 (CInt(5), var_110, CStr(Format(var_90, "0.00")))
  loc_117923E: var_110.Text = 1
  loc_117927C: var_F4 = CStr(Format(var_98, "0.00"))
  loc_117928B: Set var_9C = Me.Txt
  loc_1179291: Call 0.Method_Proc_113_68_11794E00 (CInt(7), var_110, var_F4)
  loc_1179299: var_110.Text = 1
  loc_11792BD: Set var_9C = Me.Txt
  loc_11792C3: Call 0.Method_Proc_113_68_11794E00 (CInt(5), var_110, var_F4)
  loc_11792CB: 1 = var_110.Text
  loc_11792D8: var_FC = Val(var_F4)
  loc_11792E9: Set var_114 = Me.Txt
  loc_11792EF: Call 0.Method_Proc_113_68_11794E00 (CInt(&HD), var_118, var_11C)
  loc_1179304: var_14C = Val(var_11C)
  loc_1179315: Set var_120 = Me.Txt
  loc_117931B: Call 0.Method_Proc_113_68_11794E00 (CInt(&HE), var_124, var_128)
  loc_1179353: var_AC = CVar(((var_118.Text + var_124.Text) + Val(var_128))) 'Double
  loc_1179362: var_144 = CStr(Format("0.00", "0.00"))
  loc_1179371: Set var_13C = Me.Txt
  loc_1179377: Call 0.Method_Proc_113_68_11794E00 (CInt(&HF), var_140, var_144, 1)
  loc_11793B9: Set var_9C = Me.Txt
  loc_11793BF: Call 0.Method_Proc_113_68_11794E00 (CInt(&HF), var_110, var_F4)
  loc_11793C7: var_154 = var_110.Text
  loc_11793D4: var_FC = Val(var_F4)
  loc_11793E5: Set var_114 = Me.Txt
  loc_11793EB: Call 0.Method_Proc_113_68_11794E00 (CInt(6), var_118, var_11C)
  loc_1179400: var_14C = Val(var_11C)
  loc_1179411: Set var_120 = Me.Txt
  loc_1179417: Call 0.Method_Proc_113_68_11794E00 (CInt(7), var_124, var_128)
  loc_117942C: var_154 = Val(var_128)
  loc_117943D: Set var_13C = Me.Txt
  loc_1179443: Call 0.Method_Proc_113_68_11794E00 (CInt(8), var_140, var_144)
  loc_1179458: var_168 = Val(var_144)
  loc_117947F: var_AC = CVar((var_118.Text - ((var_124.Text + 1) + var_168))) 'Double
  loc_117949D: Set var_158 = Me.Txt
  loc_11794A3: Call 0.Method_Proc_113_68_11794E00 (CInt(&HB), var_15C, CStr(Format("0.00", "0.00")), 1)
  loc_11794AB: var_15C.Text = 1
  loc_11794DD: Exit Sub
  loc_11794DE: Set arg_60E0 = var_168
End Sub

Public Sub Proc_113_69_138F9DC
  'Data Table: 54B9D8
  Dim var_AC As Variant
  Dim var_120 As Double
  Dim var_B8 As TextBox
  Dim var_128 As Double
  Dim var_DC As Variant
  Dim var_118 As String
  Dim var_114 As TextBox
  Dim var_13C As Double
  Dim var_134 As String
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_15C As Double
  Dim var_150 As TextBox
  Dim var_164 As Double
  Dim var_8C As Double
  Dim var_B0 As String
  Dim var_FC As Variant
  Dim unk_54B9F9 As Connection15
  Dim var_A4 As Recordset15
  Dim var_A8 As Fields15
  loc_138F138: On Error Goto loc_138F9D6
  loc_138F149: Set var_A8 = Me.Txt
  loc_138F14F: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H11), var_AC)
  loc_138F173: If (CDbl(Val(var_AC.Text)) <> CDbl(0)) Then
  loc_138F184:   Set var_A8 = Me.Txt
  loc_138F18A:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HF), var_AC)
  loc_138F192:   var_B0 = var_AC.Text
  loc_138F1B0:   Set var_B4 = Me.Txt
  loc_138F1B6:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H11), var_B8)
  loc_138F1BE:   var_BC = var_B8.Text
  loc_138F1FD:   var_118 = CStr(Format(CVar(((Val(var_B0) * Val(var_BC)) / CDbl(&H64))), "0.00"))
  loc_138F20C:   Set var_110 = Me.Txt
  loc_138F212:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(6), var_114, var_118, 1)
  loc_138F21A:   var_114.Text = 1
  loc_138F240: End If
  loc_138F24E: Set var_A8 = Me.Txt
  loc_138F254: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H12), var_AC, var_B0)
  loc_138F25C: var_128 = var_AC.Text
  loc_138F278: If (CDbl(Val(var_B0)) <> CDbl(0)) Then
  loc_138F289:   Set var_A8 = Me.Txt
  loc_138F28F:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HF), var_AC)
  loc_138F297:   var_B0 = var_AC.Text
  loc_138F2A4:   var_120 = Val(var_B0)
  loc_138F2B5:   Set var_B4 = Me.Txt
  loc_138F2BB:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(6), var_B8, var_BC)
  loc_138F2D0:   var_128 = Val(var_BC)
  loc_138F2E1:   Set var_110 = Me.Txt
  loc_138F2E7:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H12), var_114, var_118)
  loc_138F323:   var_DC = CVar((((var_B8.Text - var_114.Text) * Val(var_118)) / CDbl(&H64))) 'Double
  loc_138F341:   Set var_12C = Me.Txt
  loc_138F347:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(7), var_130, CStr(Format(CVar(((Val(var_B0) * Val(var_BC)) / CDbl(&H64))), "0.00")), 1)
  loc_138F34F:   var_130.Text = 1
  loc_138F37B: End If
  loc_138F389: Set var_A8 = Me.Txt
  loc_138F38F: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H13), var_AC, var_B0)
  loc_138F397: var_13C = var_AC.Text
  loc_138F3B3: If (CDbl(Val(var_B0)) <> CDbl(0)) Then
  loc_138F3C4:   Set var_A8 = Me.Txt
  loc_138F3CA:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(7), var_AC)
  loc_138F3D2:   var_B0 = var_AC.Text
  loc_138F3DF:   var_120 = Val(var_B0)
  loc_138F3F0:   Set var_B4 = Me.Txt
  loc_138F3F6:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H13), var_B8, var_BC)
  loc_138F44C:   Set var_110 = Me.Txt
  loc_138F452:   Call 0.Method_Proc_113_69_138F9DC0 (CInt(8), var_114, CStr(Format(CVar(((var_B8.Text * Val(var_BC)) / CDbl(&H64))), "0.00")), 1)
  loc_138F45A:   var_114.Text = 1
  loc_138F480: End If
  loc_138F48E: Set var_A8 = Me.Txt
  loc_138F494: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H15), var_AC, var_B0)
  loc_138F49C: var_128 = var_AC.Text
  loc_138F4A9: var_120 = Val(var_B0)
  loc_138F4BA: Set var_B4 = Me.Txt
  loc_138F4C0: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H16), var_B8, var_BC)
  loc_138F503: var_118 = CStr(Format(CVar((var_B8.Text * Val(var_BC))), "0.00"))
  loc_138F512: Set var_110 = Me.Txt
  loc_138F518: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HE), var_114, var_118, 1)
  loc_138F520: var_114.Text = 1
  loc_138F554: Set var_A8 = Me.Txt
  loc_138F55A: Call 0.Method_Proc_113_69_138F9DC0 (CInt(5), var_AC, var_B0)
  loc_138F562: var_128 = var_AC.Text
  loc_138F56F: var_120 = Val(var_B0)
  loc_138F580: Set var_B4 = Me.Txt
  loc_138F586: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HD), var_B8, var_BC)
  loc_138F59B: var_128 = Val(var_BC)
  loc_138F5AC: Set var_110 = Me.Txt
  loc_138F5B2: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HE), var_114, var_118)
  loc_138F5EA: var_DC = CVar(((var_B8.Text + var_114.Text) + Val(var_118))) 'Double
  loc_138F5F1: var_10C = Format(CVar((var_B8.Text * Val(var_BC))), "0.00")
  loc_138F5F9: var_134 = CStr(var_10C)
  loc_138F608: Set var_12C = Me.Txt
  loc_138F60E: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HF), var_130, var_134, 1)
  loc_138F650: Set var_B4 = Me.Txt
  loc_138F656: Call 0.Method_Proc_113_69_138F9DC0 (CInt(6), var_B8, var_BC)
  loc_138F65E: var_13C = var_B8.Text
  loc_138F66B: var_120 = Val(var_BC)
  loc_138F67C: Set var_110 = Me.Txt
  loc_138F682: Call 0.Method_Proc_113_69_138F9DC0 (CInt(7), var_114, var_118)
  loc_138F697: var_128 = Val(var_118)
  loc_138F6A8: Set var_12C = Me.Txt
  loc_138F6AE: Call 0.Method_Proc_113_69_138F9DC0 (CInt(9), var_130, var_134)
  loc_138F6C3: var_13C = Val(var_134)
  loc_138F6D4: Set var_140 = Me.Txt
  loc_138F6DA: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&H28), var_144, var_148)
  loc_138F6EF: var_15C = Val(var_148)
  loc_138F700: Set var_14C = Me.Txt
  loc_138F706: Call 0.Method_Proc_113_69_138F9DC0 (CInt(8), var_150, var_154)
  loc_138F71B: var_164 = Val(var_154)
  loc_138F72C: Set var_A8 = Me.Txt
  loc_138F732: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HF), var_AC, var_B0)
  loc_138F75B: var_8C = (((((Val(var_B0) - var_114.Text) + 1) + var_144.Text) - var_150.Text) + var_AC.Text)
  loc_138F797: var_DC = "0.00"
  loc_138F7BF: Set var_A8 = Me.Txt
  loc_138F7C5: Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HB), var_AC, CStr(Format(var_8C, var_DC)), 1)
  loc_138F7CD: var_AC.Text = 1
  loc_138F800: Proc_6_17_EAA2B0(var_DC, MemVar_1F92078, "Select RoundOff From Enviro WHERE LOGSITE_CODE=", var_10C)
  loc_138F808: var_FC = -1 & var_DC 
  loc_138F816: unk_54B9F9.Execute CStr(Format(var_8C, var_DC)), var_A8, var_8C
  loc_138F821: Set var_A4 = var_A8
  loc_138F847: If (var_A4.RecordCount > 0) Then
  loc_138F864:   var_AC = var_A4.Fields.Item("RoundOff")
  loc_138F886:   If (var_AC.Value = "Yes") Then
  loc_138F897:     Set var_A8 = Me.Txt
  loc_138F89D:     Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HB), var_AC)
  loc_138F8B2:     var_128 = Val(var_AC.Text)
  loc_138F8BE:     var_BC = "L"
  loc_138F8D3:     Proc_6_142_14A55B0(var_128, CByte(5), var_BC)
  loc_138F8E8:     Set var_B4 = Me.Txt
  loc_138F8EE:     Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HA), var_B8, CStr(2))
  loc_138F91D:     Set var_A8 = Me.Txt
  loc_138F923:     Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HB), var_AC)
  loc_138F938:     var_120 = Val(var_AC.Text)
  loc_138F949:     Set var_B4 = Me.Txt
  loc_138F94F:     Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HA), var_B8, var_BC)
  loc_138F964:     var_128 = Val(var_BC)
  loc_138F983:     var_DC = CVar((var_128 + var_128)) 'Double
  loc_138F9A1:     Set var_110 = Me.Txt
  loc_138F9A7:     Call 0.Method_Proc_113_69_138F9DC0 (CInt(&HB), var_114, CStr(Format(var_AC.Value, "0.00")), 1)
  loc_138F9AF:     var_114.Text = 1
  loc_138F9D5:   End If
  loc_138F9D5: End If
  loc_138F9D5: Exit Sub
  loc_138F9D6: ' Referenced from: 138F138
  loc_138F9D6: Proc_6_60_E62BC4(var_128)
  loc_138F9DB: Exit Sub
End Sub

Public Sub Proc_113_70_115454C
  'Data Table: 54B9D8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_11541DB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11541E3: var_C8 = CVar(CLng(4)) 'Long
  loc_115421B: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154223: var_134 = CVar(CLng(3)) 'Long
  loc_115425B: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154263: var_1F0 = CVar(CLng(5)) 'Long
  loc_1154294: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_115429C: Set var_224 = Me.FGrid
  loc_11542A2: LateIdCallSt
  loc_11542E8: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11542F0: var_C8 = CVar(CLng(6)) 'Long
  loc_1154328: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_115433E:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154346:   var_C8 = CVar(CLng(5)) 'Long
  loc_115437E:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154386:   var_134 = CVar(CLng(6)) 'Long
  loc_11543BE:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11543C6:   var_1F0 = CVar(CLng(7)) 'Long
  loc_11543FB:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1154403:   Set var_224 = Me.FGrid
  loc_1154409:   LateIdCallSt
  loc_115443C: End If
  loc_115444F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154457: var_C8 = CVar(CLng(5)) 'Long
  loc_115448F: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154497: var_134 = CVar(CLng(7)) 'Long
  loc_11544CF: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11544D7: var_1F0 = CVar(CLng(8)) 'Long
  loc_11544F8: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1154508: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1154516: LateIdCallSt
  loc_1154549: Exit Sub
  loc_115454A: Set arg_604C = Me.FGrid
End Sub

Public Sub Proc_113_71_1105634
  'Data Table: 54B9D8
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_1105340: Set var_94 = Me.Txt
  loc_1105346: Call 0.Method_Proc_113_71_11056340 (CInt(0), var_98)
  loc_1105356: var_90 = var_98.Tag
  loc_1105374: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11053A5: Set var_94 = Me.Txt
  loc_11053AB: Call 0.Method_Proc_113_71_11056340 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_11053BA: Proc_6_7_F25D88(var_CC, CVar(var_98), var_130)
  loc_11053C2: var_EC = -1 & var_CC 
  loc_11053D6: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11053E1: Set var_8C = var_134
  loc_110541D: If (var_8C.RecordCount > 0) Then
  loc_110545C:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1105490:     global_132 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11054BB:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11054D0:     var_CC = (var_98.Value + 1)
  loc_11054D8:     global_136 = CInt(var_CC)
  loc_11054E9:   End If
  loc_11054E9: End If
  loc_1105514: var_BC = Space((5 - Len(var_90)))
  loc_110551C: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_98.Value)
  loc_1105530: var_EC = Space((5 - Len(global_132)))
  loc_1105538: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_1105545: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_132))
  loc_110555E: var_14C = Space((8 - Len(CStr(global_136))))
  loc_1105566: var_15C = (var_130 + var_14C)
  loc_1105575: var_17C = (var_15C + CVar(CStr(global_136)))
  loc_1105580: global_112 = CStr(var_17C)
  loc_11055B6: Me.LblVPrefix.Caption = global_132
  loc_11055CF: Set var_94 = Me.Txt
  loc_11055D5: Call 0.Method_Proc_113_71_11056340 (CInt(&H22), var_98)
  loc_11055DD: var_98.Text = global_112
  loc_11055FF: Set var_94 = Me.Txt
  loc_1105605: Call 0.Method_Proc_113_71_11056340 (CInt(1), var_98)
  loc_110560D: var_98.Text = CStr(global_136)
  loc_1105622: var_88 = global_112
  loc_110562A: Set var_8C = Nothing
  loc_110562D: Proc_113_71_1105634 = global_136
End Sub

Public Sub Proc_113_72_10B4CA0(arg_C, arg_10, arg_14) '10B4CA0
  'Data Table: 54B9D8
  Dim unk_54B9F9 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B4A0E: If (arg_C = "HSBK") Then
  loc_10B4A35:   unk_54B9F9.Execute "Select Distinct DocId,V_Type,V_No From HallBook Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B4A40:   Set var_8C = var_C4
  loc_10B4A53:   var_94 = "Hall Booking"
  loc_10B4A59: Else
  loc_10B4A5E:   Proc_113_72_10B4CA0 = &HFF
  loc_10B4A64: End If
  loc_10B4A78: If (var_8C.RecordCount > 0) Then
  loc_10B4A7B:   ' Referenced from: 10B4BF4
  loc_10B4A8A:   If Not(var_8C.EOF) Then
  loc_10B4A95:     If (var_90 = vbNullString) Then
  loc_10B4AD8:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B4ADF:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B4B11:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B4B36:     Else
  loc_10B4B72:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B4B92:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B4BBF:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B4BC4:       var_90 = CStr(var_11C)
  loc_10B4BEC:     End If
  loc_10B4BEF:     var_8C.MoveNext
  loc_10B4BF4:     GoTo loc_10B4A7B
  loc_10B4BF7:   End If
  loc_10B4BFD:   Call 0.Method_arg_50 (var_138)
  loc_10B4C59:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B4C5C:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B4C8B:   Set var_8C = Nothing
  loc_10B4C8E:   Proc_113_72_10B4CA0 = 0
  loc_10B4C94: End If
  loc_10B4C99: Proc_113_72_10B4CA0 = &HFF
End Sub

Public Sub Proc_113_73_FC0CA0
  'Data Table: 54B9D8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC0B23: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC0B28:   var_92 = 1 'Byte
  loc_FC0B2C: End If
  loc_FC0B35: Set var_98 = Me.TxtGrid
  loc_FC0B3B: Call 0.Method_Proc_113_73_FC0CA00 (0, var_B0)
  loc_FC0B5E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC0B92: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC0BB6:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC0BB9:     GoTo loc_FC0C8B
  loc_FC0BBC:   End If
  loc_FC0BC0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC0BEA:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC0BF4:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0C29:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0C4D:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC0C66:     Set var_98 = Me.TxtGrid
  loc_FC0C6C:     Call 0.Method_Proc_113_73_FC0CA00 (0, var_B0, CVar(CLng(var_92)))
  loc_FC0C74:     var_B0.SetFocus
  loc_FC0C85:     Proc_113_73_FC0CA0 = 0
  loc_FC0C8B:     ' Referenced from: FC0BB9
  loc_FC0C8B:   End If
  loc_FC0C8E: Next var_D4 'Integer
  loc_FC0C98: Proc_113_73_FC0CA0 = &HFF
End Sub
