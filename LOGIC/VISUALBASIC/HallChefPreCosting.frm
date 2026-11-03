VERSION 5.00
Begin VB.Form HallChefPreCosting
  Caption = "Chef Pre-Costing"
  ForeColor = &H400040&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H808080&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = -360
  ClientTop = -1545
  ClientWidth = 8880
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 88
  End
  Begin Frame Frame1
    ForeColor = &H80000008&
    Left = 7335
    Top = 1350
    Width = 6135
    Height = 2535
    TabIndex = 73
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
      Index = 33
      ForeColor = &HFF0000&
      Left = 1515
      Top = 1590
      Width = 4530
      Height = 870
      TabIndex = 79
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
    Begin TextBox Txt
      Index = 31
      ForeColor = &HFF0000&
      Left = 1515
      Top = 960
      Width = 4530
      Height = 285
      TabIndex = 78
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
      TabIndex = 77
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
      TabIndex = 76
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
      TabIndex = 75
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
      Index = 32
      ForeColor = &HFF0000&
      Left = 1530
      Top = 1290
      Width = 4530
      Height = 285
      TabIndex = 74
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
    Begin BtnEnh BtnEnh1
      Left = 0
      Top = 1590
      Width = 1500
      Height = 885
      TabIndex = 80
    End
    Begin BtnEnh BtnEnh3
      Left = 0
      Top = 15
      Width = 1500
      Height = 285
      TabIndex = 81
    End
    Begin BtnEnh BtnEnh4
      Left = 0
      Top = 330
      Width = 1500
      Height = 285
      TabIndex = 82
    End
    Begin BtnEnh BtnEnh5
      Left = 0
      Top = 645
      Width = 1500
      Height = 285
      TabIndex = 83
    End
    Begin BtnEnh BtnEnh6
      Left = 0
      Top = 960
      Width = 1500
      Height = 285
      TabIndex = 84
    End
  End
End
Begin BtnEnh BtnEnh2
  Left = 0
  Top = 1275
  Width = 1500
  Height = 285
  TabIndex = 85
End
Begin DataGrid DGFPNo
  Left = 17355
  Top = 2940
  Width = 6165
  Height = 2145
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 60
End
Begin DataGrid DGVType
  Left = 17220
  Top = 2310
  Width = 4215
  Height = 3645
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 41
End
Begin DataGrid DGHall
  Left = 17610
  Top = 1620
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 32
End
Begin DataGrid DGItem
  Left = 17085
  Top = 1020
  Width = 9405
  Height = 2955
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 33
End
Begin TextBox Txt
  Index = 6
  Left = 10590
  Top = 10380
  Width = 1140
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 72
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
  Index = 5
  Left = 9120
  Top = 10305
  Width = 1200
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 71
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
Begin TextBox TxtGrid
  Index = 1
  BackColor = &H80000004&
  ForeColor = &H80000012&
  Left = 1230
  Top = 3090
  Width = 765
  Height = 225
  Visible = 0   'False
  TabIndex = 68
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
  Left = 8880
  Top = 3240
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 8880
  Top = 2925
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 8880
  Top = 2610
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 18900
  Top = 10140
  Width = 1335
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16035
  Top = 10650
  Width = 1365
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 18900
  Top = 10395
  Width = 1335
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 7815
  Top = 4245
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
  Left = 7320
  Top = 3885
  Width = 6465
  Height = 4965
  TabIndex = 23
End
Begin TextBox Txt
  Index = 46
  ForeColor = &HFF0000&
  Left = 2100
  Top = 1980
  Width = 4200
  Height = 285
  Enabled = 0   'False
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
  Left = 17505
  Top = 465
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 58
End
Begin TextBox Txt
  Index = 45
  ForeColor = &HFF0000&
  Left = 2100
  Top = 1350
  Width = 4200
  Height = 285
  Enabled = 0   'False
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
  Left = 18405
  Top = 10650
  Width = 1830
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16035
  Top = 10395
  Width = 1365
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16020
  Top = 9840
  Width = 4200
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16020
  Top = 9585
  Width = 4200
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Index = 39
  Left = 2085
  Top = 10260
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 30
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
  Left = 2085
  Top = 9495
  Width = 1350
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
  Index = 37
  Left = 2085
  Top = 9750
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 28
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
  Left = 2085
  Top = 10005
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 29
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
  Index = 23
  ForeColor = &HFF0000&
  Left = 8880
  Top = 1050
  Width = 4500
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
  Left = 8880
  Top = 1350
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 8880
  Top = 1665
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 6225
  Top = 10650
  Width = 735
  Height = 240
  Enabled = 0   'False
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
  ForeColor = &HFF0000&
  Left = 4395
  Top = 2295
  Width = 780
  Height = 285
  Enabled = 0   'False
  TabIndex = 13
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
  Index = 20
  ForeColor = &HFF0000&
  Left = 2100
  Top = 2295
  Width = 690
  Height = 285
  Enabled = 0   'False
  TabIndex = 12
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
  Index = 26
  ForeColor = &HFF0000&
  Left = 8880
  Top = 1980
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Index = 12
  Left = 2085
  Top = 9240
  Width = 1350
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
  Index = 27
  ForeColor = &HFF0000&
  Left = 8880
  Top = 2295
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 10545
  Top = 10680
  Width = 2595
  Height = 210
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 31
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
  Index = 0
  Left = 7635
  Top = 10710
  Width = 2535
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
  Left = 2100
  Top = 1035
  Width = 1200
  Height = 285
  Enabled = 0   'False
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
  Left = 5160
  Top = 1035
  Width = 1140
  Height = 285
  Enabled = 0   'False
  TabIndex = 25
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
  Left = 2100
  Top = 1665
  Width = 4200
  Height = 285
  Enabled = 0   'False
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
  Left = 3030
  Top = 3330
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 67
End
Begin MSHFlexGrid FGrid1
  Left = 435
  Top = 2880
  Width = 6690
  Height = 1620
  TabIndex = 69
End
Begin BtnEnh CmdMore
  Left = 13515
  Top = 1350
  Width = 1185
  Height = 720
  TabIndex = 87
End
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 270
  Top = 7815
  Width = 2520
  Height = 255
  TabIndex = 90
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
  Left = 255
  Top = 8145
  Width = 2430
  Height = 285
  TabIndex = 89
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
  Top = 435
  Width = 180
  Height = 540
  TabIndex = 86
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
  Left = 600
  Top = 10635
  Width = 6465
  Height = 285
  Visible = 0   'False
  Shape = 4
  BorderWidth = 2
End
Begin Label Label4
  Caption = "Venue Details"
  ForeColor = &H80&
  Left = 210
  Top = 2610
  Width = 1470
  Height = 270
  TabIndex = 70
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
  Caption = "Special Menu 7"
  Index = 45
  ForeColor = &HFF0000&
  Left = 7320
  Top = 3255
  Width = 1470
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
  Caption = "Special Menu 5"
  Index = 44
  ForeColor = &HFF0000&
  Left = 7320
  Top = 2625
  Width = 1470
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
Begin Label Label1
  Caption = "Special Menu 6"
  Index = 43
  ForeColor = &HFF0000&
  Left = 7320
  Top = 2940
  Width = 1470
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
Begin Label Label1
  Caption = "PIN"
  Index = 26
  ForeColor = &H0&
  Left = 18510
  Top = 10140
  Width = 285
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
  Caption = "Mobile No."
  Index = 24
  ForeColor = &H0&
  Left = 14580
  Top = 10650
  Width = 855
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
  Caption = "Phone No.(Off)"
  Index = 0
  ForeColor = &H0&
  Left = 17550
  Top = 10395
  Width = 1275
  Height = 210
  Visible = 0   'False
  TabIndex = 61
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
Begin Label Label3
  Caption = "City Name"
  ForeColor = &HFF0000&
  Left = 645
  Top = 1980
  Width = 975
  Height = 240
  TabIndex = 59
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
Begin Label Label1
  Caption = "Catalog Name"
  Index = 42
  ForeColor = &HFF0000&
  Left = 645
  Top = 1365
  Width = 1350
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
  Caption = "PAN No."
  Index = 41
  ForeColor = &H0&
  Left = 17550
  Top = 10665
  Width = 690
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
  Caption = "Phone No.(Res)"
  Index = 40
  ForeColor = &H0&
  Left = 14580
  Top = 10395
  Width = 1305
  Height = 210
  Visible = 0   'False
  TabIndex = 55
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
  Caption = "Add2"
  Index = 20
  ForeColor = &H0&
  Left = 14565
  Top = 9840
  Width = 435
  Height = 210
  Visible = 0   'False
  TabIndex = 54
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
  Caption = "Add1"
  Index = 13
  ForeColor = &H0&
  Left = 14565
  Top = 9600
  Width = 435
  Height = 210
  Visible = 0   'False
  TabIndex = 53
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
  Left = 765
  Top = 9510
  Width = 720
  Height = 210
  Visible = 0   'False
  TabIndex = 52
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
  Left = 765
  Top = 10275
  Width = 1230
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
  Caption = "Rect.Date"
  Index = 36
  ForeColor = &H4080&
  Left = 765
  Top = 9765
  Width = 825
  Height = 210
  Visible = 0   'False
  TabIndex = 50
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
  Left = 765
  Top = 10020
  Width = 1245
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
  Caption = "Special Menu 3"
  Index = 33
  ForeColor = &HFF0000&
  Left = 7320
  Top = 1995
  Width = 1470
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
Begin Label Label1
  Caption = "Special Menu 2"
  Index = 32
  ForeColor = &HFF0000&
  Left = 7320
  Top = 1680
  Width = 1470
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
Begin Label Label1
  Caption = "Gauranted Pax"
  Index = 31
  ForeColor = &HFF0000&
  Left = 2865
  Top = 2310
  Width = 1440
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
  Caption = "Special Menu 1"
  Index = 30
  ForeColor = &HFF0000&
  Left = 7320
  Top = 1365
  Width = 1470
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
Begin Label Label1
  Caption = "Funcation Name"
  Index = 28
  ForeColor = &HFF0000&
  Left = 7245
  Top = 1065
  Width = 1560
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
Begin Label Label1
  Caption = "Rate Per Pax"
  Index = 27
  ForeColor = &H0&
  Left = 4935
  Top = 10665
  Width = 1050
  Height = 210
  Visible = 0   'False
  TabIndex = 43
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
  Caption = "Ex. Pax"
  Index = 22
  ForeColor = &HFF0000&
  Left = 645
  Top = 2310
  Width = 735
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
  Caption = "Special Menu 4"
  Index = 23
  ForeColor = &HFF0000&
  Left = 7320
  Top = 2310
  Width = 1470
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
Begin Label Label1
  Caption = "F.P. No."
  Index = 3
  ForeColor = &HFF0000&
  Left = 645
  Top = 1050
  Width = 750
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
  Caption = "Date"
  Index = 1
  ForeColor = &HFF0000&
  Left = 4650
  Top = 1035
  Width = 435
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
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &H0&
  Left = 13785
  Top = 10695
  Width = 645
  Height = 240
  Visible = 0   'False
  TabIndex = 37
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
  Left = 645
  Top = 1680
  Width = 1110
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
Begin Label Label1
  Caption = "DocID"
  Index = 12
  BackColor = &H8000000E&
  ForeColor = &HC00000&
  Left = 6795
  Top = 105
  Width = 555
  Height = 210
  TabIndex = 35
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
  Caption = "Advance"
  Index = 6
  ForeColor = &H4080&
  Left = 765
  Top = 9255
  Width = 705
  Height = 210
  Visible = 0   'False
  TabIndex = 34
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

Attribute VB_Name = "HallChefPreCosting"

Private global_52 As Integer
Private global_142 As Integer
Private global_144 As Integer
Private global_128 As Integer

Private Sub DGVType_UnknownEvent_9 'FD4ED8
  'Data Table: 51854C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD4D1C: On Error Goto loc_FD4ED0
  loc_FD4D2E: Me.DGVType.Visible = False
  loc_FD4D4D: If (Me.RecordCount > 0) Then
  loc_FD4D9F:   Set var_CC = Me.Txt
  loc_FD4DA5:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD4DAD:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD4E05:   Set var_B4 = Me.DGVType
  loc_FD4E1C:   Set var_CC = Me.Txt
  loc_FD4E22:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD4E2A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD4E7E:   global_132 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD4E8F: End If
  loc_FD4EAD: Set var_B0 = Me.Txt
  loc_FD4EB3: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD4EBB: var_B4.SetFocus
  loc_FD4ECF: Exit Sub
  loc_FD4ED0: ' Referenced from: FD4D1C
  loc_FD4ED0: Proc_6_60_E62BC4(var_B4)
  loc_FD4ED5: Exit Sub
End Sub

Private Sub DG_Catalog_UnknownEvent_9 'F5DEA8
  'Data Table: 51854C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5DD88: On Error Goto loc_F5DEA2
  loc_F5DD9A: Me.DG_Catalog.Visible = False
  loc_F5DDB9: If (Me.RecordCount > 0) Then
  loc_F5DDF8:   Set var_B4 = Me.Txt
  loc_F5DDFE:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F5DE06:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5DE39:   var_B0 = Me.Fields.Item("Name")
  loc_F5DE58:   Set var_B4 = Me.Txt
  loc_F5DE5E:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F5DE66:   var_B8.Text = CStr(var_B0.Value)
  loc_F5DE7C: End If
  loc_F5DE87: Set var_A8 = Me.Txt
  loc_F5DE8D: Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D))
  loc_F5DE95: var_B0.SetFocus
  loc_F5DEA1: Exit Sub
  loc_F5DEA2: ' Referenced from: F5DD88
  loc_F5DEA2: Proc_6_60_E62BC4(var_B0)
  loc_F5DEA7: Exit Sub
End Sub

Private Sub Form_Load() '12ABC1C
  'Data Table: 51854C
  Dim var_8C As String
  Dim var_90 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim unk_518574 As Connection15
  Dim var_88 As Variant
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_12AB60C: On Error Goto loc_12ABC15
  loc_12AB619: Set global_60 = New 
  loc_12AB62B: Me.Recordset15.CursorLocation = 3
  loc_12AB655: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_12AB66D: Me.Open CVar(var_90 & MemVar_1F92070 & "' and Category in('HALBOOK') Order by Description"), CVar(MemVar_1F92044), 3
  loc_12AB687: CVarUnk
  loc_12AB68C: VerifyVarObj
  loc_12AB692: Set var_88 = Me.DGVType
  loc_12AB698: LateIdStAd
  loc_12AB6B0: Set global_76 = New 
  loc_12AB6C2: Me.DGVType.CursorLocation = 3
  loc_12AB6DC: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_12AB6E5:   global_120 = "IKOT"
  loc_12AB6EC: Else
  loc_12AB701:   If (global_56 = MemVar_1F92078 & "ODC") Then
  loc_12AB70A:     global_120 = "OKOT"
  loc_12AB70E:   End If
  loc_12AB70E: End If
  loc_12AB719: If (global_120 = "IKOT") Then
  loc_12AB73A:   var_8C = "Select DISTINCT DocId As Code,Convert(Varchar(10),VNO) As FPNo,VNO,PartyName FROM HALLBOOK1 Where LogSite_Code='" & MemVar_1F92078
  loc_12AB741:   var_A4 = CVar(var_8C & "' and VType='IBOOK' AND DocId NOT IN (SELECT DISTINCT CONTRADOCID FROM HallPreCosting)  Order by VNO") 'String
  loc_12AB74B:   Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_12AB759: Else
  loc_12AB777:   var_8C = "Select DISTINCT DocId As Code,Convert(Varchar(10),VNO) As FPNo,VNO,PartyName,City FROM HALLBOOK Where LogSite_Code='" & MemVar_1F92078
  loc_12AB77E:   var_A4 = CVar(var_8C & "' and VType='OBOOK' AND DocId NOT IN (SELECT DISTINCT CONTRADOCID FROM HallPreCosting)  Order by VNO") 'String
  loc_12AB788:   Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_12AB793: End If
  loc_12AB79C: CVarUnk
  loc_12AB7A1: VerifyVarObj
  loc_12AB7A7: Set var_88 = Me.DGFPNo
  loc_12AB7AD: LateIdStAd
  loc_12AB7C5: Set global_72 = New 
  loc_12AB7D7: Me.DGFPNo.CursorLocation = 3
  loc_12AB801: var_A4 = CVar("Select H.Code As Code,H.Name As Name From Depart H WHERE H.LogSite_Code='" & MemVar_1F92078 & "' and H.RestType IN ('Banquet') Order by H.Name") 'String
  loc_12AB80B: Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_12AB81F: CVarUnk
  loc_12AB824: VerifyVarObj
  loc_12AB82A: Set var_88 = Me.DGHall
  loc_12AB830: LateIdStAd
  loc_12AB85A: Me.DGHall.CursorLocation = 3
  loc_12AB884: var_A4 = CVar("Select DIstinct H.Code As Code,H.Name As Name From CATALOGMAST H  Where LogSite_Code='" & MemVar_1F92078 & "' Order by H.Name") 'String
  loc_12AB8A2: CVarUnk
  loc_12AB8A7: VerifyVarObj
  loc_12AB8B3: LateIdStAd
  loc_12AB8CB: Set global_80 = New 
  loc_12AB8DD: Me.DG_Catalog.CursorLocation = 3
  loc_12AB900: var_8C = "Select Distinct S.DocId as SearchCode,S.DocID,S.ContraDocid,S.LogSite_Code,S.Site_Code From HallPreCosting S WHERE S.LogSite_Code='" & MemVar_1F92078
  loc_12AB907: var_90 = var_8C & "' and S.VTYPE IN(select V_Type From Voucher_Type where LogSite_Code='"
  loc_12AB934: var_A4 = CVar(var_90 & MemVar_1F92078 & "' and Site_Code='" & MemVar_1F92070 & "' and NCAt='BKOT' and RestCode='" & global_56 & "') Order by Docid") 'String
  loc_12AB93E: r_A4, CVar(MemVar_1F92044), 3 var_A4, CVar(MemVar_1F92044), 3
  loc_12AB98A: Call 0.Method_arg_50 (var_90, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_A4, -1, Me.DG_Catalog, var_C8, 0, var_DC)
  loc_12AB9B1: unk_518574.Execute var_EC & var_90 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_12AB9B9: var_88 = var_88.Fields
  loc_12AB9C1: 1 = var_C8.Item(New)
  loc_12AB9C9: -1 = var_DC.Value
  loc_12AB9FA: If (var_EC > 0) Then
  loc_12ABA43:   Call 0.Method_arg_50 (var_90, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_A4, -1, var_88, var_C8, 0)
  loc_12ABA6A:   unk_518574.Execute var_DC & var_90 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_EC, "SearchCode='"
  loc_12ABA72:   0 = var_88.Fields
  loc_12ABA7A:   var_140 = var_C8.Item(1)
  loc_12ABA82:    = var_DC.Value
  loc_12ABAA1:   Me.Find CStr(var_EC & "'"), , 
  loc_12ABACD: End If
  loc_12ABAE4: If (Me.RecordCount > 0) Then
  loc_12ABAFB:   If (Me.EOF = &HFF) Then
  loc_12ABB04:     Me.MoveLast
  loc_12ABB09:   End If
  loc_12ABB09: End If
  loc_12ABB2C: Call Proc_129_57_E98F18(Proc_5_1_100CB50("INI", Me))
  loc_12ABB3E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12ABB56: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12ABB71: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12ABB87: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_12ABB9E: Me.LblUser.Left = CDbl(14000)
  loc_12ABBB5: Me.LblUser.Top = CDbl(7800)
  loc_12ABBCC: Me.LblLDt.Top = CDbl(8160)
  loc_12ABBDD: Set var_88 = Me.LblLDt
  loc_12ABBE3: var_88.Left = CDbl(14000)
  loc_12ABBF4: Call 0.Method_arg_160 (var_88)
  loc_12ABC02: Call 0.Method_arg_164 (var_88)
  loc_12ABC0A: Call Proc_129_49_1417D40(global_80)
  loc_12ABC0F: Call Proc_129_54_1720970()
  loc_12ABC14: Exit Sub
  loc_12ABC15: ' Referenced from: 12AB60C
  loc_12ABC15: Proc_6_60_E62BC4()
  loc_12ABC1A: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2D58
  'Data Table: 51854C
  Dim var_8C As Label
  loc_ED2CB6: Call 0.Method_arg_50 (var_88)
  loc_ED2CC8: Me.LblFormCaption.Caption = var_88
  loc_ED2CE1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED2CED: Set var_A0 = Me.TopCtrl1
  loc_ED2CF3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED2D00: Set var_8C = Me.TopCtrl1
  loc_ED2D06: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED2D20: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED2D3B: Call 0.Method_arg_100 (var_B8)
  loc_ED2D4D: Me.LblFormCaption.Width = var_B8
  loc_ED2D55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E89148
  'Data Table: 51854C
  loc_E890DB: Set global_72 = Nothing
  loc_E890ED: Set global_76 = Nothing
  loc_E890FF: Set global_64 = Nothing
  loc_E89111: Set global_84 = Nothing
  loc_E89123: Set global_88 = Nothing
  loc_E89135: Set global_92 = Nothing
  loc_E89141: global_52 = 0
  loc_E89144: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2564C
  'Data Table: 51854C
  loc_E25631: If (global_52 = &HFF) Then
  loc_E25641:   Me.Global.Unload Me
  loc_E25649: End If
  loc_E25649: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E378D8
  'Data Table: 51854C
  loc_E378AC: On Error Goto loc_E378D0
  loc_E378C7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E378CF: Exit Sub
  loc_E378D0: ' Referenced from: E378AC
  loc_E378D0: Proc_6_60_E62BC4(Shift)
  loc_E378D5: Exit Sub
  loc_E378D6: CExtInstUnk
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F5DBD8
  'Data Table: 51854C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5DAB8: On Error Goto loc_F5DBD2
  loc_F5DACA: Me.DGFPNo.Visible = False
  loc_F5DAE9: If (Me.RecordCount > 0) Then
  loc_F5DB28:   Set var_B4 = Me.Txt
  loc_F5DB2E:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5DB36:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5DB69:   var_B0 = Me.Fields.Item("Name")
  loc_F5DB88:   Set var_B4 = Me.Txt
  loc_F5DB8E:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5DB96:   var_B8.Text = CStr(var_B0.Value)
  loc_F5DBAC: End If
  loc_F5DBB7: Set var_A8 = Me.Txt
  loc_F5DBBD: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1))
  loc_F5DBC5: var_B0.SetFocus
  loc_F5DBD1: Exit Sub
  loc_F5DBD2: ' Referenced from: F5DAB8
  loc_F5DBD2: Proc_6_60_E62BC4(var_B0)
  loc_F5DBD7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA10B4
  'Data Table: 51854C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA104F: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA1065:   Me.FGrid.Col = 1
  loc_EA106D: End If
  loc_EA1080: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA1093: Set var_88 = Me.TxtGrid
  loc_EA1099: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA10A1: var_BC.Visible = False
  loc_EA10AD: Call Proc_129_58_F26178()
  loc_EA10B2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66460
  'Data Table: 51854C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6641C: Set var_88 = Me.TxtGrid
  loc_E66422: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6643C: If (var_8C.Visible = 0) Then
  loc_E66455:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E6645D: End If
  loc_E6645D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE80C
  'Data Table: 51854C
  loc_DFE804: Call Proc_129_52_E45B44()
  loc_DFE809: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11CF458
  'Data Table: 51854C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11CEFEC: Set var_88 = Me.TopCtrl1
  loc_11CEFF2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11CF037: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_11CF040:   Call Form_KeyDown(KeyCode, Shift)
  loc_11CF045: End If
  loc_11CF049: Set var_88 = Me.TopCtrl1
  loc_11CF04F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11CF068: If (CStr() = "Browse") Then
  loc_11CF06B:   Exit Sub
  loc_11CF06C: End If
  loc_11CF0E0: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11CF0F9:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11CF109:   var_9C = "+{Tab}"
  loc_11CF10F:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11CF119:   KeyCode = 0
  loc_11CF11F: Else
  loc_11CF129:   var_B0 = Me.FGrid.Rows
  loc_11CF176:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11CF18F:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11CF1A5:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_11CF1AF:     KeyCode = 0
  loc_11CF1B2:   End If
  loc_11CF1B2: End If
  loc_11CF1B8: global_142 = KeyCode
  loc_11CF1DE: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11CF202: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_11CF218:   var_EC = CLng(Me.FGrid.Col)
  loc_11CF228:   If (var_EC = CLng(1)) Then
  loc_11CF23E:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11CF256:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11CF25B:     var_11C = vbNullString
  loc_11CF265:     Set var_B4 = Me.FGrid
  loc_11CF26B:     LateIdCallSt
  loc_11CF296:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11CF29E:     var_FC = CVar(CLng(9)) 'Long
  loc_11CF2A3:     var_11C = vbNullString
  loc_11CF2AD:     Set var_A0 = Me.FGrid
  loc_11CF2B3:     LateIdCallSt
  loc_11CF2D8:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11CF2E0:     var_FC = CVar(CLng(3)) 'Long
  loc_11CF2E5:     var_11C = vbNullString
  loc_11CF2EF:     Set var_A0 = Me.FGrid
  loc_11CF2F5:     LateIdCallSt
  loc_11CF30A:   Else
  loc_11CF311:     If (var_EC = CLng(3)) Then
  loc_11CF330:       Set var_A0 = Me.FGrid
  loc_11CF354:       LateIdCallSt
  loc_11CF36C:       Call Proc_129_60_115356C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11CF374:     Else
  loc_11CF37B:       If (var_EC = CLng(4)) Then
  loc_11CF39A:         Set var_A0 = Me.FGrid
  loc_11CF3BE:         LateIdCallSt
  loc_11CF3D6:         Call Proc_129_60_115356C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_11CF3DE:       Else
  loc_11CF3E5:         If (var_EC = CLng(2)) Then
  loc_11CF3FB:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11CF413:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11CF418:           var_11C = vbNullString
  loc_11CF422:           Set var_B4 = Me.FGrid
  loc_11CF428:           LateIdCallSt
  loc_11CF440:         End If
  loc_11CF440:       End If
  loc_11CF440:     End If
  loc_11CF440:   End If
  loc_11CF440: End If
  loc_11CF446: If (KeyCode = &HD) Then
  loc_11CF44E:   global_144 = 0
  loc_11CF451: End If
  loc_11CF453: KeyCode = 0
  loc_11CF456: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0EF30
  'Data Table: 51854C
  loc_E0EF21: Call FGrid_UnknownEvent_C()
  loc_E0EF2B: global_144 = 0
  loc_E0EF2E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1066664
  'Data Table: 51854C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10663EC: Set var_88 = Me.TopCtrl1
  loc_10663F2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_106640B: If (CStr() = "Browse") Then
  loc_106640E:   Exit Sub
  loc_106640F: End If
  loc_1066422: var_A0 = CLng(Me.FGrid.Col)
  loc_1066432: If (var_A0 = CLng(1)) Then
  loc_1066439:   Set var_C4 = Me.FGrid
  loc_106645D:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_106648A:   Set var_B4 = var_C4
  loc_106649C:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10664C4:   Set var_88 = Me.TxtGrid
  loc_10664CA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10664D2:   0 = var_B4.Text
  loc_10664EB:   If (Len(var_9C) <= 1) Then
  loc_10664FA:     Set var_88 = Me.TxtGrid
  loc_1066500:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1066508:     var_CA = var_B4.Text
  loc_1066519:     Set var_B8 = Me.TxtGrid
  loc_106651F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1066527:     var_C4.Text = var_9C
  loc_106653A:   End If
  loc_1066546:   Set var_88 = Me.TxtGrid
  loc_106654C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1066566:   Set var_B8 = Me.TxtGrid
  loc_106656C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1066574:   var_C4.SelStart = Len(var_B4.Text)
  loc_106658A: Else
  loc_1066591:   If Not (var_A0 = CLng(3)) Then
  loc_106659B:     If (var_A0 = CLng(4)) Then
  loc_106659E:     End If
  loc_10665DC:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_10665F1:   Else
  loc_10665F8:     If (var_A0 = CLng(2)) Then
  loc_1066639:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_106664B:     End If
  loc_106664B:   End If
  loc_106664B: End If
  loc_1066655: If (CLng(KeyCode) <> &HD) Then
  loc_106665D:   global_144 = &HFF
  loc_1066660: End If
  loc_1066660: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FF0660
  'Data Table: 51854C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF0484: Set var_90 = Me.TopCtrl1
  loc_FF048A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FF04A3: If (CStr() = "Browse") Then
  loc_FF04A6:   Exit Sub
  loc_FF04A7: End If
  loc_FF04C4: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF04C7:   Exit Sub
  loc_FF04C8: End If
  loc_FF04D9: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FF04FB:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF0535:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF0557:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF056D:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF0576:         Set var_118 = Me.FGrid
  loc_FF0591:       Else
  loc_FF05A4:         Me.FGrid.Rows = 1
  loc_FF05CA:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FF05D2:         Set var_118 = Me.FGrid
  loc_FF05FF:         Me.FGrid.FixedRows = 1
  loc_FF0607:       End If
  loc_FF0607:       Call Proc_129_60_115356C(FGrid.DispID_10000, var_A0)
  loc_FF060C:     End If
  loc_FF060F:   Else
  loc_FF0630:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF0640:   End If
  loc_FF0644:   Set var_90 = Me.FGrid
  loc_FF0655: End If
  loc_FF065A: Set var_8C = Nothing
  loc_FF065D: Exit Sub
  loc_FF065E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4588C
  'Data Table: 51854C
  Dim var_8C As TextBox
  loc_E45860: Call Proc_129_58_F26178()
  loc_E45870: Set var_88 = Me.TxtGrid
  loc_E45876: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4587E: var_8C.Visible = False
  loc_E4588A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1271354
  'Data Table: 51854C
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_BC As String
  Dim var_94 As Fields15
  loc_1270DC7: Set var_88 = Me.Txt
  loc_1270DCD: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1270DD5: var_8C.SelStart = 0
  loc_1270DEE: Set var_88 = Me.Txt
  loc_1270DF4: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1270DFC: var_90 = var_8C.Text
  loc_1270E0F: Set var_94 = Me.Txt
  loc_1270E15: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1270E1D: var_98.SelLength = Len(var_90)
  loc_1270E3A: Set var_88 = Me.Txt
  loc_1270E40: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1270E4E: Proc_6_74_E226B0(var_8C)
  loc_1270E5A: Call Proc_129_58_F26178(var_8C)
  loc_1270E62: var_9A = Index
  loc_1270E6D: If (var_9A = CInt(0)) Then
  loc_1270E83:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_1270EDC:   Set var_88 = Me.Txt
  loc_1270EE2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90)
  loc_1270EEA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1270F02:   If (var_9A Or (var_90 = vbNullString)) Then
  loc_1270F05:     Exit Sub
  loc_1270F06:   End If
  loc_1270F13:   Set var_88 = Me.Txt
  loc_1270F19:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1270F21:   var_90 = var_8C.Text
  loc_1270F29:   var_D4 = CVar(var_90) 'String
  loc_1270F6E:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1270F77:     Me.MoveFirst
  loc_1270F9C:     Set var_88 = Me.Txt
  loc_1270FA2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_1270FAA:     0 = var_8C.Text
  loc_1270FB8:     Proc_6_17_EAA2B0(var_D4, CVar(var_90))
  loc_1270FCE:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_1270FE6:   End If
  loc_1270FE9: Else
  loc_1270FF1:   If (var_9A = CInt(&H2D)) Then
  loc_1271042:     Set var_88 = Me.Txt
  loc_1271048:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1271068:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_127106B:       Exit Sub
  loc_127106C:     End If
  loc_1271079:     Set var_88 = Me.Txt
  loc_127107F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1271087:     var_90 = var_8C.Text
  loc_127108F:     var_D4 = CVar(var_90) 'String
  loc_12710D4:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12710DD:       Me.MoveFirst
  loc_1271102:       Set var_88 = Me.Txt
  loc_1271108:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_1271110:       0 = var_8C.Text
  loc_127111E:       Proc_6_17_EAA2B0(var_D4, CVar(var_90))
  loc_1271134:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_127114C:     End If
  loc_127114F:   Else
  loc_1271157:     If (var_9A = CInt(1)) Then
  loc_12711A8:       Set var_88 = Me.Txt
  loc_12711AE:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12711CE:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_12711D1:         Exit Sub
  loc_12711D2:       End If
  loc_12711DF:       Set var_88 = Me.Txt
  loc_12711E5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12711FF:       var_BC = "FPNo"
  loc_1271216:       var_98 = Me.Fields.Item(var_BC)
  loc_127123A:       If CBool(CVar(var_8C.Text) <> var_98.Value) Then
  loc_1271243:         Me.MoveFirst
  loc_1271255:         Set var_88 = Me.Txt
  loc_127125B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1271296:         Me.Find "FPNo =" & CStr(Val(var_8C.Text)), 0, 1
  loc_12712AB:       End If
  loc_12712AE:     Else
  loc_12712B6:       If Not (var_9A = CInt(&H14)) Then
  loc_12712C1:         If Not (var_9A = CInt(&H15)) Then
  loc_12712CC:           If Not (var_9A = CInt(&H16)) Then
  loc_12712D7:             If (var_9A = CInt(&HC)) Then
  loc_12712DA:             End If
  loc_12712DA:           End If
  loc_12712DA:         End If
  loc_12712E9:         Set var_88 = Me.Txt
  loc_12712EF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_12712F7:         var_8C.SelStart = var_BC
  loc_1271310:         Set var_88 = Me.Txt
  loc_1271316:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1271331:         Set var_94 = Me.Txt
  loc_1271337:         Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_127133F:         var_98.SelLength = Len(var_8C.Text)
  loc_1271352:       End If
  loc_1271352:     End If
  loc_1271352:   End If
  loc_1271352: End If
  loc_1271352: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10C279C
  'Data Table: 51854C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_10C24D2: If (CLng(Shift) = &H1B) Then
  loc_10C24D5:   Call Proc_129_58_F26178()
  loc_10C24DA:   Exit Sub
  loc_10C24DB: End If
  loc_10C24DE: var_86 = KeyCode
  loc_10C24E9: If (var_86 = CInt(0)) Then
  loc_10C2504:   Set var_9C = Nothing
  loc_10C250F:   Set var_98 = Nothing
  loc_10C253D:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_10C2554: Else
  loc_10C255C:   If (var_86 = CInt(1)) Then
  loc_10C2577:     Set var_9C = Nothing
  loc_10C25B0:     Proc_6_69_134A198(Me.DGFPNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_10C25C7:   Else
  loc_10C25CF:     If (var_86 = CInt(&H2D)) Then
  loc_10C25EA:       Set var_9C = Nothing
  loc_10C2623:       Proc_6_69_134A198(Me.DG_Catalog, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_10C2637:     End If
  loc_10C2637:   End If
  loc_10C2637: End If
  loc_10C2668: Set var_98 = Me.DGFPNo
  loc_10C267F: Set var_9C = Me.DG_Catalog
  loc_10C26C3: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_10C26E4:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_10C26ED:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, var_9C)
  loc_10C26F2:   End If
  loc_10C26F6:   Set var_8C = Me.TopCtrl1
  loc_10C26FC:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_10C271E:   If ((CStr(1) = "Add") And (KeyCode <> CInt(0))) Then
  loc_10C2736:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C273F:       Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_10C2744:     End If
  loc_10C2747:   Else
  loc_10C274B:     Set var_8C = Me.TopCtrl1
  loc_10C2751:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9C)
  loc_10C2773:     If ((CStr(0) = "Edit") And (KeyCode <> CInt(6))) Then
  loc_10C278B:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C2794:         Proc_6_76_E52838(Shift)
  loc_10C2799:       End If
  loc_10C2799:     End If
  loc_10C2799:   End If
  loc_10C2799: End If
  loc_10C2799: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10472F0
  'Data Table: 51854C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_1047090: On Error Goto loc_10472E7
  loc_1047096: Proc_6_58_E054C0(arg_10)
  loc_104709E: var_86 = KeyAscii
  loc_10470A9: If (var_86 = CInt(0)) Then
  loc_10470C8:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_10470DE:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_10470F8:     var_B0 = "Name"
  loc_1047113:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_1047122:   End If
  loc_1047125: Else
  loc_104712D:   If (var_86 = CInt(1)) Then
  loc_104714C:     If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_1047162:       Me.DGFPNo.Tag = CVar(CStr(KeyAscii))
  loc_1047171:       Set var_B8 = Me.Txt
  loc_1047197:       Proc_6_89_146F1AC(var_B8, KeyAscii, global_76, arg_10, "FPNO")
  loc_10471A6:     End If
  loc_10471A9:   Else
  loc_10471B1:     If (var_86 = CInt(&H26)) Then
  loc_10471BE:       Set var_8C = Me.Txt
  loc_10471C4:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_10471DF:       Proc_6_42_129A86C(var_B8, arg_10, 8, 0)
  loc_10471EE:     Else
  loc_10471F6:       If (var_86 = CInt(&H2D)) Then
  loc_1047215:         If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_104721C:           Set var_B8 = Me.Txt
  loc_1047227:           var_B0 = "Name"
  loc_1047242:           Proc_6_89_146F1AC(var_B8, KeyAscii, global_68, arg_10, var_B0)
  loc_1047251:         End If
  loc_1047254:       Else
  loc_104725C:         If Not (var_86 = CInt(&H14)) Then
  loc_1047267:           If (var_86 = CInt(&H15)) Then
  loc_104726A:           End If
  loc_1047274:           Set var_8C = Me.Txt
  loc_104727A:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_1047295:           Proc_6_42_129A86C(var_B8, arg_10, 4, 0)
  loc_10472A4:         Else
  loc_10472AC:           If (var_86 = CInt(&H16)) Then
  loc_10472B9:             Set var_8C = Me.Txt
  loc_10472BF:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_10472DA:             Proc_6_42_129A86C(var_B8, arg_10, 5)
  loc_10472E6:           End If
  loc_10472E6:         End If
  loc_10472E6:       End If
  loc_10472E6:     End If
  loc_10472E6:   End If
  loc_10472E6: End If
  loc_10472E6: Exit Sub
  loc_10472E7: ' Referenced from: 1047090
  loc_10472E7: Proc_6_60_E62BC4(2, 0)
  loc_10472EC: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D1C4
  'Data Table: 51854C
  loc_E4D1A2: Set var_88 = Me.Txt
  loc_E4D1A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D1B6: Proc_6_73_E22704(var_8C)
  loc_E4D1C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1440F20
  'Data Table: 51854C
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A0 As String
  Dim var_BC As TextBox
  Dim var_EC As Long
  Dim var_100 As TextBox
  Dim var_9C As TextBox
  Dim var_13C As Double
  Dim var_104 As String
  loc_144040C: On Error Goto loc_1440F1A
  loc_1440412: var_8E = Cancel
  loc_144041D: If (var_8E = CInt(0)) Then
  loc_144042B:   Set var_94 = Me.Txt
  loc_1440431:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1440439:   var_A0 = "Voucher Type"
  loc_144045A:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1440468:     Set var_94 = Me.Txt
  loc_144046E:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1440476:     var_98.SetFocus
  loc_1440484:     arg_10 = &HFF
  loc_1440487:     Exit Sub
  loc_1440488:   End If
  loc_14404D6:   Set var_94 = Me.Txt
  loc_14404DC:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_14404E4:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14404FC:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_144050C:     Set var_94 = Me.Txt
  loc_1440512:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_144051A:     var_98.Text = vbNullString
  loc_1440533:     Set var_94 = Me.Txt
  loc_1440539:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440541:     var_98.Tag = vbNullString
  loc_1440553:     global_132 = vbNullString
  loc_144055A:   Else
  loc_1440595:     Set var_9C = Me.Txt
  loc_144059B:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14405A3:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14405F4:     Set var_9C = Me.Txt
  loc_14405FA:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1440602:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1440635:     var_98 = Me.Fields.Item("NCat")
  loc_144064C:     global_132 = CStr(var_98.Value)
  loc_1440661:     Set var_94 = Me.TopCtrl1
  loc_1440667:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_8E)
  loc_1440680:     If (CStr() = "Add") Then
  loc_144068E:       If (global_152 = "Automatic") Then
  loc_144069E:         Set var_94 = Me.Txt
  loc_14406A4:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14406AC:         var_98.Enabled = False
  loc_14406BB:       Else
  loc_14406C8:         Set var_94 = Me.Txt
  loc_14406CE:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14406D6:         var_98.Enabled = True
  loc_14406ED:         Set var_94 = Me.Txt
  loc_14406F3:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_14406FB:         var_98.SetFocus
  loc_1440707:       End If
  loc_1440707:     End If
  loc_1440707:   End If
  loc_144070B:   Set var_94 = Me.TopCtrl1
  loc_1440711:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_1440719:   var_A0 = CStr()
  loc_144072A:   If (var_A0 = "Add") Then
  loc_1440733:     Call Proc_129_61_10E7B48(MemVar_1F92044)
  loc_1440746:     Set var_94 = Me.Txt
  loc_144074C:     Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_1440754:     var_98.Text = var_A0
  loc_1440763:   End If
  loc_1440766: Else
  loc_144076E:   If (var_8E = CInt(1)) Then
  loc_144077C:     Set var_94 = Me.Txt
  loc_1440782:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_144078A:     var_A0 = "FP No."
  loc_14407AB:     If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_14407B9:       Set var_94 = Me.Txt
  loc_14407BF:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14407C7:       var_98.SetFocus
  loc_14407D5:       arg_10 = &HFF
  loc_14407D8:       Exit Sub
  loc_14407D9:     End If
  loc_1440827:     Set var_94 = Me.Txt
  loc_144082D:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1440835:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_144084D:     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_144085D:       Set var_94 = Me.Txt
  loc_1440863:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_144086B:       var_98.Text = vbNullString
  loc_1440884:       Set var_94 = Me.Txt
  loc_144088A:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440892:       var_98.Tag = vbNullString
  loc_14408A1:     Else
  loc_14408DC:       Set var_9C = Me.Txt
  loc_14408E2:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14408EA:       var_BC.Text = CStr(Me.Fields.Item("FPNo").Value)
  loc_144091D:       var_98 = Me.Fields.Item("Code")
  loc_144092E:       var_A0 = CStr(var_98.Value)
  loc_144093B:       Set var_9C = Me.Txt
  loc_1440941:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1440949:       var_BC.Tag = var_A0
  loc_144095F:       Call Proc_129_51_16B0238(var_A0)
  loc_1440964:     End If
  loc_1440967:   Else
  loc_144096F:     If (var_8E = CInt(6)) Then
  loc_1440980:       Set var_94 = Me.Txt
  loc_1440986:       Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_14409A4:       var_EC = Len(Trim(CVar(var_98.Text)))
  loc_14409BE:       If (var_EC = 0) Then
  loc_14409D4:         Set var_94 = Me.Txt
  loc_14409DA:         Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_14409E2:         var_98.Text = CStr(MemVar_1F920EC)
  loc_14409F4:       Else
  loc_14409FE:         Set var_94 = Me.Txt
  loc_1440A04:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1440A24:         Set var_BC = Me.Txt
  loc_1440A2A:         Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_1440A32:         var_100.Text = Proc_6_33_1512840(var_98)
  loc_1440A45:       End If
  loc_1440A52:       Set var_94 = Me.Txt
  loc_1440A58:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440A7B:       Set var_9C = Me.Txt
  loc_1440A81:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_104)
  loc_1440A89:       (CDate(var_98.Text) >= MemVar_1F920F4) = var_BC.Text
  loc_1440AAB:       If Not((var_98 And (CDate(var_104) <= MemVar_1F920FC))) Then
  loc_1440ACF:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_EC, var_FC)
  loc_1440AE9:         Set var_94 = Me.Txt
  loc_1440AEF:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1440AF7:         var_98.SetFocus
  loc_1440B05:         arg_10 = &HFF
  loc_1440B08:         Exit Sub
  loc_1440B09:       End If
  loc_1440B0D:       Set var_94 = Me.TopCtrl1
  loc_1440B13:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_1440B1B:       var_A0 = CStr(var_98)
  loc_1440B31:       Set var_98 = Me.Txt
  loc_1440B37:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_1440B60:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_1440B69:         Call Proc_129_61_10E7B48(MemVar_1F92044)
  loc_1440B7C:         Set var_94 = Me.Txt
  loc_1440B82:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_1440B8A:         var_98.Text = var_A0
  loc_1440B99:       End If
  loc_1440B9C:     Else
  loc_1440BA4:       If (var_8E = CInt(&H2D)) Then
  loc_1440BF5:         Set var_94 = Me.Txt
  loc_1440BFB:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1440C03:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1440C1B:         If (var_A0 Or (var_A0 = vbNullString)) Then
  loc_1440C2B:           Set var_94 = Me.Txt
  loc_1440C31:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440C39:           var_98.Text = vbNullString
  loc_1440C52:           Set var_94 = Me.Txt
  loc_1440C58:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440C60:           var_98.Tag = vbNullString
  loc_1440C6F:         Else
  loc_1440CAA:           Set var_9C = Me.Txt
  loc_1440CB0:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1440CB8:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1440CEB:           var_98 = Me.Fields.Item("Code")
  loc_1440D09:           Set var_9C = Me.Txt
  loc_1440D0F:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1440D17:           var_BC.Tag = CStr(var_98.Value)
  loc_1440D2D:           Call Proc_129_50_11C6B68()
  loc_1440D32:         End If
  loc_1440D35:       Else
  loc_1440D3D:         If (var_8E = CInt(&H25)) Then
  loc_1440D4D:           Set var_94 = Me.Txt
  loc_1440D53:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440D8B:           If (Len(Trim(CVar(var_98.Text))) = 0) Then
  loc_1440DA0:             Set var_94 = Me.Txt
  loc_1440DA6:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440DAE:             var_98.Text = CStr(MemVar_1F920EC)
  loc_1440DC0:           Else
  loc_1440DCA:             Set var_94 = Me.Txt
  loc_1440DD0:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_1440DF0:             Set var_BC = Me.Txt
  loc_1440DF6:             Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_1440DFE:             var_100.Text = Proc_6_33_1512840(var_98)
  loc_1440E11:           End If
  loc_1440E14:         Else
  loc_1440E1C:           If Not (var_8E = CInt(&H14)) Then
  loc_1440E27:             If (var_8E = CInt(&H15)) Then
  loc_1440E2A:             End If
  loc_1440E34:             Set var_94 = Me.Txt
  loc_1440E3A:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440E52:             If Not(IsNumeric(CVar(var_98))) Then
  loc_1440E66:               Set var_94 = Me.Txt
  loc_1440E6C:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440E74:               var_98.Text = CStr(0)
  loc_1440E83:             End If
  loc_1440E90:             Set var_94 = Me.Txt
  loc_1440E96:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1440EAB:             var_13C = Val(var_98.Text)
  loc_1440EE3:             Set var_9C = Me.Txt
  loc_1440EE9:             Call 0.Method_Txt_Validate0 (Cancel, var_BC, CStr(Format(CVar(var_13C), "0")), 1)
  loc_1440EF1:             var_BC.Text = 1
  loc_1440F11:           End If
  loc_1440F11:         End If
  loc_1440F11:       End If
  loc_1440F11:     End If
  loc_1440F11:   End If
  loc_1440F11: End If
  loc_1440F16: Set var_88 = Nothing
  loc_1440F19: Exit Sub
  loc_1440F1A: ' Referenced from: 144040C
  loc_1440F1A: Proc_6_60_E62BC4(var_13C)
  loc_1440F1F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EF44A0
  'Data Table: 51854C
  Dim var_8C As String
  Dim var_98 As TextBox
  loc_EF43D0: On Error Goto loc_EF449A
  loc_EF43F6: Call Proc_129_57_E98F18(Proc_5_1_100CB50("ADD", Me))
  loc_EF4401: Call Proc_129_56_100A384(global_80)
  loc_EF440B: var_8C = CStr(MemVar_1F920EC)
  loc_EF4419: Set var_90 = Me.Txt
  loc_EF441F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98)
  loc_EF4427: var_98.Text = var_8C
  loc_EF4441: Set var_90 = Me.Txt
  loc_EF4447: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EF444F: var_98.SetFocus
  loc_EF4461: Call Proc_129_61_10E7B48(MemVar_1F92044, var_8C)
  loc_EF4474: Set var_90 = Me.Txt
  loc_EF447A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H22), var_98)
  loc_EF4482: var_98.Text = var_8C
  loc_EF4496: Set var_88 = Nothing
  loc_EF4499: Exit Sub
  loc_EF449A: ' Referenced from: EF43D0
  loc_EF449A: Proc_6_60_E62BC4(var_98)
  loc_EF449F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0488
  'Data Table: 51854C
  loc_EA0410: On Error Goto loc_EA0481
  loc_EA044A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0470:   Call Proc_129_57_E98F18(Proc_5_1_100CB50("INI", Me))
  loc_EA047B:   Call Proc_129_54_1720970(global_80)
  loc_EA0480: End If
  loc_EA0480: Exit Sub
  loc_EA0481: ' Referenced from: EA0410
  loc_EA0481: Proc_6_60_E62BC4()
  loc_EA0486: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10CA23C
  'Data Table: 51854C
  Dim unk_518574 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10C9F74: On Error Goto loc_10CA1EE
  loc_10C9F85: If (Proc_183_56_FE8818(global_80) = &HFF) Then
  loc_10C9F88:   Exit Sub
  loc_10C9F89: End If
  loc_10C9FC0: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10C9FCC:   unk_518574.BeginTrans var_118
  loc_10C9FE2:   var_94 = Me.Bookmark 'Variant
  loc_10CA02E:   var_F4 = "Delete From HallPreCosting Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10CA03C:   unk_518574.Execute CStr(var_F4), var_114, -1
  loc_10CA087:   var_160 = 0
  loc_10CA09A:   var_158 = 0
  loc_10CA0A5:   var_154 = 0
  loc_10CA0B8:   var_14C = 0
  loc_10CA0C3:   var_148 = 0
  loc_10CA0D6:   var_140 = 0
  loc_10CA116:   var_124 = "HallPreCosting"
  loc_10CA11F:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10CA14D:   unk_518574.CommitTrans
  loc_10CA15D:   Me.Requery -1
  loc_10CA16D:   Me.Requery -1
  loc_10CA18D:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10CA19A:     Me.Bookmark = var_94
  loc_10CA1A2:   Else
  loc_10CA1B6:     If (Me.EOF = 0) Then
  loc_10CA1BF:       Me.MoveLast
  loc_10CA1C4:     End If
  loc_10CA1C4:   End If
  loc_10CA1C4:   Call Proc_129_54_1720970(var_140, 0, var_148, var_14C)
  loc_10CA1E5:   Proc_5_0_110649C(&HFF, Me, global_80, 0)
  loc_10CA1ED: End If
  loc_10CA1ED: Exit Sub
  loc_10CA1EE: ' Referenced from: 10C9F74
  loc_10CA1F4: unk_518574.RollbackTrans
  loc_10CA201: Set var_11C = Err()
  loc_10CA207: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10CA228: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10CA23B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E8CD40
  'Data Table: 51854C
  Dim var_94 As TextBox
  loc_E8CCCC: On Error Goto loc_E8CD37
  loc_E8CCDD: If (Proc_183_55_FE7900(global_80) = &HFF) Then
  loc_E8CCE0:   Exit Sub
  loc_E8CCE1: End If
  loc_E8CD04: Call Proc_129_57_E98F18(Proc_5_1_100CB50("EDIT", Me))
  loc_E8CD1C: Set var_8C = Me.Txt
  loc_E8CD22: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_E8CD2A: var_94.Enabled = False
  loc_E8CD36: Exit Sub
  loc_E8CD37: ' Referenced from: E8CCCC
  loc_E8CD37: Proc_6_60_E62BC4(global_80)
  loc_E8CD3C: Exit Sub
  loc_E8CD3D: Set var_90 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18224
  'Data Table: 51854C
  loc_E18219: Me.Global.Unload Me
  loc_E18221: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ED2F34
  'Data Table: 51854C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_ED2E90: On Error Goto loc_ED2F2B
  loc_ED2EAA: If (Me.RecordCount <= 0) Then
  loc_ED2EB3:   var_B8 = "Information"
  loc_ED2ECE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ED2EDE:   Exit Sub
  loc_ED2EDF: End If
  loc_ED2EE6: var_10C = "Select Distinct HC.Docid as SearchCode,S.VNo as FPNo ,S.VDate as V_Date,PartyName,S.fRbOOKDATE,S.TOBOOKDATE " & "From ((HallBook S iNNER Join Voucher_Type V On (S.VType= V.V_Type AND S.LogSite_Code=V.LogSite_Code) ) Inner Join HallPreCosting as HC on S.Docid=HC.Contradocid"
  loc_ED2EFB: MemVar_1F920E4 = var_10C & ") Where S.LogSite_Code='" & MemVar_1F92078 & "' Order By S.VNo"
  loc_ED2F0E: MemVar_1F92120 = Me
  loc_ED2F25: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ED2F2A: Exit Sub
  loc_ED2F2B: ' Referenced from: ED2E90
  loc_ED2F2B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_ED2F30: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37938
  'Data Table: 51854C
  loc_E37928: Proc_5_0_110649C(&HFF, Me)
  loc_E37930: Call Proc_129_54_1720970(global_80)
  loc_E37935: Exit Sub
  loc_E37936: var_2B88 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37998
  'Data Table: 51854C
  Dim var_2B01 As Double
  loc_E37988: Proc_5_0_110649C(&HFF, Me)
  loc_E37990: Call Proc_129_54_1720970(global_80)
  loc_E37995: Exit Sub
  loc_E37996: var_2B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37E78
  'Data Table: 51854C
  loc_E37E68: Proc_5_0_110649C(&HFF, Me)
  loc_E37E70: Call Proc_129_54_1720970(global_80)
  loc_E37E75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37ED8
  'Data Table: 51854C
  loc_E37EC8: Proc_5_0_110649C(&HFF, Me)
  loc_E37ED0: Call Proc_129_54_1720970(global_80)
  loc_E37ED5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14ACC78
  'Data Table: 51854C
  Dim var_C8 As String
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim unk_518574 As Connection15
  Dim var_C4 As Recordset15
  Dim var_F8 As Variant
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_174 As Variant
  Dim var_9C As Recordset15
  Dim var_162 As Integer
  Dim var_BC As Recordset15
  Dim var_15C As Variant
  Dim var_1AC As Variant
  Dim var_184 As Variant
  Dim var_1B0 As Field20
  loc_14ABFD8: On Error Goto loc_14ACC72
  loc_14ABFE2: var_C8 = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName "
  loc_14ABFF0: var_D0 = var_C8 & "From (HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code And HB1.RoomNo=I.RestCode "
  loc_14AC030: var_138 = CVar(var_D0 & "Where HB.DocID='") & Me.Fields.Item("ContraDocId").Value & "'" 
  loc_14AC035: var_88 = CStr(var_138)
  loc_14AC092: var_108 = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_14AC0A9: unk_518574.Execute CStr(var_108 & "'"), var_138, -1
  loc_14AC0B4: Set var_BC = var_15C
  loc_14AC10D: var_108 = "Select AmtCr,PayType,VNo,VDate FROM PayChargeH Where VType='AD' AND ContraDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_14AC124: unk_518574.Execute CStr(var_108 & "'"), var_138, -1
  loc_14AC12F: Set var_C4 = var_15C
  loc_14AC15D: If (var_C4.RecordCount > 0) Then
  loc_14AC188:   var_B4 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VNo")), var_15C)
  loc_14AC1C0:   var_B8 = var_15C & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")), "& ")
  loc_14AC1F9:   Proc_6_47_EF59D0(var_108, CVar(var_C4.Fields.Item("AmtCr")))
  loc_14AC201:   var_118 = (CVar(var_AC) + var_108)
  loc_14AC206:   var_AC = CSng(var_108 & "'")
  loc_14AC23D:   var_B0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")))
  loc_14AC249:   var_C4.MoveNext
  loc_14AC24E:   ' Referenced from: 14AC3BF
  loc_14AC25D:   If Not(var_C4.EOF) Then
  loc_14AC28D:     Proc_6_47_EF59D0(var_108, CVar(var_C4.Fields.Item("AmtCr")))
  loc_14AC295:     var_118 = (CVar(var_AC) + var_108)
  loc_14AC29A:     var_AC = CSng(var_108 & "'")
  loc_14AC2E2:     If (var_AC <> Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")), var_B0)) Then
  loc_14AC31B:       var_B0 = var_AC & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")), var_B0 & ", ")
  loc_14AC361:       var_B4 = var_B4 & ", " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VNo")))
  loc_14AC3A7:       var_B8 = var_B8 & ", " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")))
  loc_14AC3B7:     End If
  loc_14AC3BA:     var_C4.MoveNext
  loc_14AC3BF:     GoTo loc_14AC24E
  loc_14AC3C2:   End If
  loc_14AC3C5: Else
  loc_14AC3CE:   var_AC = 0
  loc_14AC3D4:   var_B0 = vbNullString
  loc_14AC3D7: End If
  loc_14AC416: var_108 = "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_14AC423: var_C8 = CStr(var_108 & "'")
  loc_14AC42D: unk_518574.Execute var_C8, var_138, -1
  loc_14AC438: Set var_C0 = var_15C
  loc_14AC466: If (var_C0.RecordCount > 0) Then
  loc_14AC469:   ' Referenced from: 14AC504
  loc_14AC478:   If Not(var_C0.EOF) Then
  loc_14AC491:     var_F8 = vbNullString
  loc_14AC4A6:     var_118 = IIf((var_A4 = vbNullString), var_F8, ",")
  loc_14AC4AE:     var_138 = CVar(var_A4) & var_118 
  loc_14AC4C4:     var_D4 = var_C0.Fields
  loc_14AC4CC:     var_E8 = var_D4.Item("VenuName")
  loc_14AC4E1:     var_A4 = CStr(var_138 & var_E8.Value)
  loc_14AC4FF:     var_C0.MoveNext
  loc_14AC504:     GoTo loc_14AC469
  loc_14AC507:   End If
  loc_14AC507: End If
  loc_14AC50F: If (var_88 = vbNullString) Then
  loc_14AC512:   Exit Sub
  loc_14AC513: End If
  loc_14AC529: unk_518574.Execute var_88, var_F8, -1
  loc_14AC534: Set var_9C = var_D4
  loc_14AC543: var_160 = var_9C.RecordCount
  loc_14AC551: If (var_160 <= 0) Then
  loc_14AC55A:   Call 0.Method_arg_50 (var_C8, var_D4)
  loc_14AC57B:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_118, var_138)
  loc_14AC58B:   Exit Sub
  loc_14AC58C: End If
  loc_14AC5A2: Set var_D4 = var_9C 
  loc_14AC5AE: var_162 = CreateFieldDefFile(var_D4, MemVar_1F920B4 & "\FuncProspect.ttx", &HFF)
  loc_14AC5B8: Set var_9C = var_D4
  loc_14AC5BE: var_E4 = CVar(var_162) 'Integer
  loc_14AC5C1: var_98 = var_E4 'Variant
  loc_14AC5DD: var_C8 = MemVar_1F920B4 & "\FuncProspect.RPT"
  loc_14AC5E6: Call 0.Method_arg_1C (var_C8, var_E4, var_D4)
  loc_14AC5F1: MemVar_1F921E4 = var_D4
  loc_14AC60C: Call 0.Method_arg_90 (var_D4, var_160, var_9E, 1)
  loc_14AC614: Call 0.Method_arg_24 (var_162, var_15C)
  loc_14AC620: For var_198 =  To CInt(var_160): var_AC = var_198 'Integer
  loc_14AC639:   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AC641:   Call 0.Method_arg_20 (var_E8)
  loc_14AC649:   Call 0.Method_arg_30 (var_C8)
  loc_14AC65F:   var_1A8 = Ucase(CVar(var_C8)) 'Variant
  loc_14AC678:   If (var_1A8 = "FDATE") Then
  loc_14AC6D1:     Call 0.Method_arg_90 (var_15C, CLng(var_9E))
  loc_14AC6D9:     Call 0.Method_arg_20 (var_1AC)
  loc_14AC6E1:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & "'"))
  loc_14AC700:   Else
  loc_14AC70B:     If (var_1A8 = "FTIME") Then
  loc_14AC725:       var_D4 = var_BC.Fields
  loc_14AC72D:       var_E8 = var_D4.Item("FromTime")
  loc_14AC741:       var_148 = " - "
  loc_14AC75C:       var_15C = var_BC.Fields
  loc_14AC764:       var_1AC = var_15C.Item("ToTime")
  loc_14AC76C:       var_138 = var_1AC.Value
  loc_14AC774:       var_184 = "'" & var_E8.Value & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & var_138 
  loc_14AC795:       Call 0.Method_arg_90 (var_1B0, CLng(var_9E))
  loc_14AC79D:       Call 0.Method_arg_20 (var_1B4)
  loc_14AC7A5:       Call 0.Method_arg_38 (CStr(var_184 & "'"))
  loc_14AC7CE:     Else
  loc_14AC7D9:       If (var_1A8 = "VENUENAME") Then
  loc_14AC7FD:         Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AC805:         Call 0.Method_arg_20 (var_E8)
  loc_14AC80D:         Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_14AC823:       Else
  loc_14AC82E:         If (var_1A8 = "TITLE") Then
  loc_14AC844:           Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AC84C:           Call 0.Method_arg_20 (var_E8)
  loc_14AC854:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_14AC863:         Else
  loc_14AC86E:           If (var_1A8 = "FDAY") Then
  loc_14AC8D3:             Call 0.Method_arg_90 (var_15C, CLng(var_9E))
  loc_14AC8DB:             Call 0.Method_arg_20 (var_1AC)
  loc_14AC8E3:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_BC.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_14AC904:           Else
  loc_14AC926:             If (var_1A8 = Ucase("FunctionName")) Then
  loc_14AC934:               var_174 = 0
  loc_14AC94A:               var_128 = "SELECT Name FROM FunctionType WHERE Code='"
  loc_14AC961:               var_D4 = var_9C.Fields
  loc_14AC969:               var_E8 = var_D4.Item("Func_Name")
  loc_14AC97D:               var_148 = "'"
  loc_14AC990:               unk_518574.Execute CStr(var_128 & var_E8.Value & var_148), var_138, -1
  loc_14AC998:               var_15C = var_15C.Fields
  loc_14AC9A0:               var_174 = var_1AC.Item(var_1AC)
  loc_14AC9A8:               var_1B0 = var_1B0.Value
  loc_14AC9D1:               Call 0.Method_arg_90 (var_1B4, CLng(var_9E), var_1E8)
  loc_14AC9D9:               Call 0.Method_arg_20 (CStr(var_184 & var_184 & "'"))
  loc_14AC9E1:               Call 0.Method_arg_38 ("'")
  loc_14ACA12:             Else
  loc_14ACA34:               If (var_1A8 = Ucase("Advance")) Then
  loc_14ACA5D:                 Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14ACA65:                 Call 0.Method_arg_20 (var_E8)
  loc_14ACA6D:                 Call 0.Method_arg_38 ("'" & CStr(var_AC) & "'")
  loc_14ACA85:               Else
  loc_14ACAA7:                 If (var_1A8 = Ucase("PayType")) Then
  loc_14ACACB:                   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14ACAD3:                   Call 0.Method_arg_20 (var_E8)
  loc_14ACADB:                   Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_14ACAF1:                 Else
  loc_14ACB13:                   If (var_1A8 = Ucase("aVNo")) Then
  loc_14ACB37:                     Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14ACB3F:                     Call 0.Method_arg_20 (var_E8)
  loc_14ACB47:                     Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_14ACB5D:                   Else
  loc_14ACB7F:                     If (var_1A8 = Ucase("aVDate")) Then
  loc_14ACB89:                       var_C8 = "'" & var_B8
  loc_14ACBA3:                       Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14ACBAB:                       Call 0.Method_arg_20 (var_E8)
  loc_14ACBB3:                       Call 0.Method_arg_38 (var_C8 & "'")
  loc_14ACBC6:                     End If
  loc_14ACBC6:                   End If
  loc_14ACBC6:                 End If
  loc_14ACBC6:               End If
  loc_14ACBC6:             End If
  loc_14ACBC6:           End If
  loc_14ACBC6:         End If
  loc_14ACBC6:       End If
  loc_14ACBC6:     End If
  loc_14ACBC6:   End If
  loc_14ACBC9: Next var_198 'Integer
  loc_14ACBE7: Call 0.Method_arg_64 (var_D4, CVar(var_9C))
  loc_14ACBEF: Call 0.Method_arg_2C (var_128)
  loc_14ACBFD: Call 0.Method_arg_150 (var_148)
  loc_14ACC08: Call 0.Method_arg_50 (var_C8)
  loc_14ACC12: Set var_E8 = Nothing
  loc_14ACC2C: Set var_D4 = MemVar_1F921E4 
  loc_14ACC38: Proc_6_99_1483714(var_D4, 0, var_C8)
  loc_14ACC43: MemVar_1F921E4 = var_D4
  loc_14ACC56: Set var_9C = Nothing
  loc_14ACC5E: Set var_BC = Nothing
  loc_14ACC66: Set var_C0 = Nothing
  loc_14ACC6E: Set var_C4 = Nothing
  loc_14ACC71: Exit Sub
  loc_14ACC72: ' Referenced from: 14ABFD8
  loc_14ACC72: Proc_6_60_E62BC4(&HFF)
  loc_14ACC77: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E54054
  'Data Table: 51854C
  Dim Me As Recordset15
  loc_E5401F: If Not((global_64 Is Nothing)) Then
  loc_E5402D:   Me.Requery -1
  loc_E54032: End If
  loc_E5403D: Me.Requery -1
  loc_E5404D: Me.Requery -1
  loc_E54052: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '151C2AC
  'Data Table: 51854C
  Dim var_AC As String
  Dim var_CC As Variant
  Dim var_A4 As Variant
  Dim var_8A As Variant
  Dim unk_518574 As Connection15
  Dim var_108 As String
  Dim var_10C As String
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_DC As Variant
  Dim var_150 As String
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_200 As Variant
  Dim var_A8 As Variant
  Dim var_290 As Variant
  Dim var_2A4 As MSHFlexGrid
  Dim var_2E4 As Variant
  Dim var_338 As Variant
  Dim var_348 As Variant
  Dim var_9A4 As Double
  Dim var_9AC As Double
  Dim var_334 As Variant
  Dim var_444 As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_9C4 As Double
  Dim var_650 As Variant
  Dim var_9CC As Double
  Dim var_8B0 As Variant
  Dim var_8D0 As Variant
  Dim var_3AC As String
  Dim var_3B0 As String
  Dim var_3B8 As String
  Dim var_3CC As String
  Dim var_1E0 As Variant
  Dim var_388 As Variant
  Dim var_4AC As Variant
  Dim var_690 As Variant
  Dim var_880 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_88 As Recordset15
  Dim var_3B4 As String
  Dim Me As Recordset15
  loc_151B4D8: On Error Goto loc_151C292
  loc_151B4E6: Set var_A0 = Me.Txt
  loc_151B4EC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_151B515: If (Proc_6_27_EA565C(var_A4, "Voucher No") = 0) Then
  loc_151B518:   Exit Sub
  loc_151B519: End If
  loc_151B524: Set var_A0 = Me.Txt
  loc_151B52A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_151B53B: Set var_A8 = var_A4
  loc_151B553: If (Proc_6_27_EA565C(var_A8, "Party name") = 0) Then
  loc_151B556:   Exit Sub
  loc_151B557: End If
  loc_151B55B: Set var_A0 = Me.TopCtrl1
  loc_151B561: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A4)
  loc_151B57A: If (CStr() = "Add") Then
  loc_151B5B9:   var_AC = CStr(Left(Format(Time, "HH:mm"), 5))
  loc_151B5C2:   global_108 = var_AC
  loc_151B5D3: End If
  loc_151B5DC: If (global_54 = &HFF) Then
  loc_151B5DF:   Exit Sub
  loc_151B5E0: End If
  loc_151B5E3: Call Proc_129_55_10C1790(var_FE, 1)
  loc_151B5EE: If (var_FE = 0) Then
  loc_151B5F1:   Exit Sub
  loc_151B5F2: End If
  loc_151B5FD: Set var_A0 = Me.TxtGrid
  loc_151B603: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4)
  loc_151B60B: var_A4.Visible = False
  loc_151B617: Call Proc_129_58_F26178(1)
  loc_151B61E: var_8A = &HFF
  loc_151B62A: unk_518574.BeginTrans var_104
  loc_151B64D: Set var_A0 = Me.Txt
  loc_151B653: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "Delete From HallPreCosting Where DocID='")
  loc_151B65B: var_BC = var_A4.Text
  loc_151B664: var_108 = -1 & var_AC
  loc_151B674: unk_518574.Execute var_108 & "'", var_A8, var_8A
  loc_151B6B3: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_110 'Integer
  loc_151B6BD:   var_CC = CVar(CLng(var_92)) 'Long
  loc_151B6C5:   var_130 = CVar(CLng(6)) 'Long
  loc_151B6E5:   var_EC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_151B6ED:   var_150 = "Food"
  loc_151B70C:   Set var_A4 = Me.FGrid
  loc_151B73D:   var_200 = CVar(CLng(var_92)) 'Long
  loc_151B7C7:   Set var_338 = Me.FGrid
  loc_151B7CD:   var_348 = var_338.TextMatrix)
  loc_151B829:   If CBool(CVar(CLng(var_92)) Or CVar(CLng(1)) And (Trim(CVar(CStr(var_348))) <> vbNullString)) Then
  loc_151B83A:     Set var_A0 = Me.Txt
  loc_151B840:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_3B4, (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Food"), CVar(CLng(6)), CVar(CLng(var_92)), CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)))
  loc_151B848:     var_200 = var_A4.Text
  loc_151B851:     var_CC = CVar(CLng(var_92)) 'Long
  loc_151B862:     Set var_A8 = Me.FGrid
  loc_151B87B:     var_9A4 = Val(CStr(var_A8.TextMatrix)))
  loc_151B881:     var_DC = Time
  loc_151B890:     var_150 = "HH:mm"
  loc_151B895:     var_EC = var_150
  loc_151B8B4:     Set var_2A4 = Me.Txt
  loc_151B8BA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_338, var_3D8, 1, 1, var_9A4, CVar(CLng(0)))
  loc_151B8C2:     var_CC = var_338.Text
  loc_151B8CF:     var_9AC = Val(var_3D8)
  loc_151B8DD:     Set var_3DC = Me.Txt
  loc_151B8E3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3E0, var_9AC, CVar(CLng(1)) And (Trim(CVar(CStr(var_A4.TextMatrix)))) <> vbNullString), CVar(CLng(var_92)))
  loc_151B8F2:     Proc_6_7_F25D88(var_348, CVar(var_3E0), (var_EC <> var_150))
  loc_151B8FB:     var_290 = CVar(CLng(var_92)) 'Long
  loc_151B903:     var_2E4 = CVar(CLng(9)) 'Long
  loc_151B922:     var_334 = CVar(CLng(var_92)) 'Long
  loc_151B92A:     var_444 = CVar(CLng(3)) 'Long
  loc_151B953:     var_4BC = CVar(CLng(var_92)) 'Long
  loc_151B95B:     var_4DC = CVar(CLng(4)) 'Long
  loc_151B984:     var_574 = CVar(CLng(var_92)) 'Long
  loc_151B98C:     var_594 = CVar(CLng(5)) 'Long
  loc_151B9AE:     var_9C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_151B9CC:     var_650 = Me.FGrid.TextMatrix)
  loc_151BA06:     var_9CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_151BA17:     Proc_6_7_F25D88(var_7C8, Date, var_9CC, CVar(CLng(7)), CVar(CLng(var_92)), var_650, CVar(CLng(6)), CVar(CLng(var_92)))
  loc_151BA20:     Set var_7FC = Me.TopCtrl1
  loc_151BA26:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9C4)
  loc_151BA61:     var_8B0 = CVar(CLng(var_92)) 'Long
  loc_151BA69:     var_8D0 = CVar(CLng(&HB)) 'Long
  loc_151BAA6:     var_10C = "Insert Into HallPreCosting(" & "DocId,SNo,VType,VTIME,VPrefix,Site_Code," & "VNo,VDate,RestCode,Item," & "Qty,Rate,Amount,VoidYN,"
  loc_151BAD5:     var_3CC = var_10C & "ContraDocID,ContraSno,U_Name,U_EntDt,U_AE,DepartCode,LogSite_Code) " & "Values(" & "'" & var_3B4 & "'," & CStr(var_9A4)
  loc_151BB09:     var_1E0 = CVar(var_3CC & ",'" & global_120 & "','") & Format(var_DC, var_EC) & "','" & CVar(global_124) 
  loc_151BB5F:     var_388 = var_1E0 & "','" & CVar(MemVar_1F92070) & "'," & vbNullString & CVar(var_9AC) & "," & var_348 & ",'" & CVar(global_56) 
  loc_151BBA2:     var_4AC = var_388 & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_151BBE7:     var_690 = var_4AC & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString & CVar(var_9C4) & ",'N','" & CVar(CStr(var_650)) & "'," 
  loc_151BC37:     var_880 = var_690 & vbNullString & CVar(var_9CC) & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_7C8 & ",'" & IIf((CStr(var_80C) = "Add"), "A", "E") 
  loc_151BC75:     unk_518574.Execute CStr(var_880 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F92078) & "')"), var_998, -1
  loc_151BD4D:   End If
  loc_151BD50: Next var_110 'Integer
  loc_151BD59: Set var_A0 = Me.TopCtrl1
  loc_151BD5F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_151BD78: If (CStr() = "Add") Then
  loc_151BD8F:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_151BDB5:   var_EC = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_120 & "' And VP.Date_From<=") 'String
  loc_151BDC6:   Set var_A0 = Me.Txt
  loc_151BDCC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A4, var_3B4, var_EC)
  loc_151BDD4:   var_1B0 = var_A4.Text
  loc_151BDE2:   Proc_6_7_F25D88(var_DC, CVar(var_3B4))
  loc_151BDEA:   var_FC = -1 & var_DC 
  loc_151BDF3:   var_1A0 = Format(var_DC, var_EC) & " Order By VP.Date_From DESC" 
  loc_151BE01:   unk_518574.Execute CStr(var_1A0), var_A8, 
  loc_151BE0C:   Set var_88 = var_A8
  loc_151BE4A:   If (var_88.RecordCount > 0) Then
  loc_151BE5B:     Set var_A0 = Me.Txt
  loc_151BE61:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_151BE76:     var_9A4 = Val(var_A4.Text)
  loc_151BE88:     var_A8 = var_88.Fields
  loc_151BE98:     var_BC = CVar(var_A8.Item("Date_From")) 'Address
  loc_151BE9F:     Proc_6_7_F25D88(var_DC, var_BC)
  loc_151BEC4:     var_3AC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_9A4) & " Where (SITE_CODE='"
  loc_151BEF1:     var_EC = CVar(var_3AC & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='" & global_120 & "' and Date_From=") 'String
  loc_151BF05:     unk_518574.Execute CStr(var_EC & var_DC), var_1A0, -1
  loc_151BF39:   End If
  loc_151BF39: End If
  loc_151BF3D: Set var_A0 = Me.TopCtrl1
  loc_151BF43: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_338)
  loc_151BF5C: If (CStr(var_9A4) = "Add") Then
  loc_151BF82:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078
  loc_151BFA0:   Call 0.Method_arg_50 (var_3AC, var_AC & "' and UNAME='" & MemVar_1F920C8 & "' AND ENAME='", var_BC, -1, var_A0)
  loc_151BFB0:   var_3B8 = var_A4 & var_3AC & "' "
  loc_151BFB9:   unk_518574.Execute var_3B8, 0, var_A8
  loc_151BFC1:   var_DC = var_A0.Fields
  loc_151BFC9:    = var_A4.Item()
  loc_151BFD1:    = var_A8.Value
  loc_151C002:   If (var_DC > 0) Then
  loc_151C023:     Set var_A0 = Me.Txt
  loc_151C029:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_151C031:     var_BC = var_A4.Text
  loc_151C03A:     var_108 = -1 & var_AC
  loc_151C04F:     var_3B0 = var_AC & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "' and UNAME='"
  loc_151C066:     Call 0.Method_arg_50 (var_3B8, var_3B0 & MemVar_1F920C8 & "' AND ENAME='")
  loc_151C07F:     unk_518574.Execute var_A8 & var_3B8 & "'  ", , 
  loc_151C0AA:   Else
  loc_151C0CE:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_1E0)
  loc_151C0D7:     var_3AC = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='"
  loc_151C0DE:     var_3B4 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "','"
  loc_151C0EF:     Set var_A0 = Me.Txt
  loc_151C0F5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_3B0)
  loc_151C0FD:     var_3B4 = var_A4.Text
  loc_151C12C:     Proc_6_7_F25D88(var_DC, Date)
  loc_151C138:     var_CC = ",'A','"
  loc_151C15E:     unk_518574.Execute CStr(CVar(var_A8 & var_3B0 & "','" & MemVar_1F92070 & "',") & var_DC & var_CC & CVar(MemVar_1F92078) & "')"), , 
  loc_151C196:   End If
  loc_151C196: End If
  loc_151C19C: unk_518574.CommitTrans
  loc_151C1A3: var_8A = 0
  loc_151C1B4: Set var_A0 = Me.Txt
  loc_151C1BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4)
  loc_151C1D6: var_8A = 0
  loc_151C1E4: Me.Requery -1
  loc_151C1F4: Me.Requery -1
  loc_151C21E: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_151C22E: Set var_A0 = Me.TopCtrl1
  loc_151C234: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_151C24D: If (CStr(var_8A) = "Add") Then
  loc_151C250:   Call TopCtrl1_UnknownEvent_A()
  loc_151C255:   Exit Sub
  loc_151C256: End If
  loc_151C279: Call Proc_129_57_E98F18(Proc_5_1_100CB50("INI", Me), global_80)
  loc_151C284: Call Proc_129_54_1720970(var_8A)
  loc_151C28E: Set var_88 = Nothing
  loc_151C291: Exit Sub
  loc_151C292: ' Referenced from: 151B4D8
  loc_151C298: If (var_8A = &HFF) Then
  loc_151C2A1:   unk_518574.RollbackTrans
  loc_151C2A6: End If
  loc_151C2A6: Proc_6_60_E62BC4()
  loc_151C2AB: Exit Sub
End Sub

Private Sub CmdMore_UnknownEvent_9 'E618B8
  'Data Table: 51854C
  loc_E61887: If (Me.Frame1.Visible = 0) Then
  loc_E61896:   Me.Frame1.Visible = True
  loc_E618A1: Else
  loc_E618AD:   Me.Frame1.Visible = False
  loc_E618B5: End If
  loc_E618B5: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1127690
  'Data Table: 51854C
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_112733A: Set var_88 = Me.TxtGrid
  loc_1127340: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_112734E: Proc_6_74_E226B0(var_8C)
  loc_112735A: Call Proc_129_58_F26178(var_8C)
  loc_112736B: If (Index = 0) Then
  loc_1127384:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_112739F:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11273DE:   Set var_108 = Me.TxtGrid
  loc_11273E4:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11273EC:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1127414:   var_C4 = Me.FGrid.Col
  loc_112741D:   var_114 = CLng(var_C4)
  loc_112742D:   If (var_114 = CLng(1)) Then
  loc_112743A:     Set global_64 = New 
  loc_112744C:     Me.var_C4.CursorLocation = 3
  loc_1127472:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IC.CatType,IR.Rate as IRate,IC.RoundOff as Roundoff1,I.Kitchen as DepartCode  From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_1127483:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1127497:     CVarUnk
  loc_112749C:     VerifyVarObj
  loc_11274A2:     Set var_88 = Me.DGItem
  loc_11274A8:     LateIdStAd
  loc_11274F7:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11274FA:       Exit Sub
  loc_11274FB:     End If
  loc_1127501:     Me.MoveFirst
  loc_1127519:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1127521:     var_E4 = CVar(CLng(9)) 'Long
  loc_112752A:     Set var_8C = Me.FGrid
  loc_1127530:     var_D4 = var_8C.TextMatrix)
  loc_1127565:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_1127595:     If (Me.EOF = &HFF) Then
  loc_112759E:       Me.MoveFirst
  loc_11275A3:     End If
  loc_11275AC:     CVarUnk
  loc_11275B1:     VerifyVarObj
  loc_11275B7:     Set var_88 = Me.DGItem
  loc_11275BD:     LateIdStAd
  loc_11275CE:   Else
  loc_11275D5:     If (var_114 = CLng(2)) Then
  loc_11275ED:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_11275F5:       var_8C.MaxLength = var_E4
  loc_1127616:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(480), var_A4, Me.TxtGrid)
  loc_112761E:       var_8C.Height = global_64
  loc_112762D:     Else
  loc_1127634:       If Not (var_114 = CLng(3)) Then
  loc_112763E:         If (var_114 = CLng(4)) Then
  loc_1127641:         End If
  loc_1127650:         Set var_88 = Me.TxtGrid
  loc_1127656:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_112765E:         var_8C.MaxLength = 1
  loc_1127673:         If (global_144 = 0) Then
  loc_112767E:           var_110 = "{Home}+{End}"
  loc_1127684:           Proc_303_0_FB9B68(CStr(var_D4), 0)
  loc_112768C:         End If
  loc_112768C:       End If
  loc_112768C:     End If
  loc_112768C:   End If
  loc_112768C: End If
  loc_112768C: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11AC978
  'Data Table: 51854C
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_11AC55C: If (KeyCode = 0) Then
  loc_11AC569:   If (CLng(Shift) = &H1B) Then
  loc_11AC579:     Set var_8C = Me.TxtGrid
  loc_11AC57F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11AC599:     Set var_98 = Me.TxtGrid
  loc_11AC59F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11AC5A7:     var_9C.Text = var_90.Tag
  loc_11AC5C3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11AC5C8:     Call Proc_129_58_F26178(arg_14)
  loc_11AC5D1:     Set var_8C = Me.FGrid
  loc_11AC5EE:     Set var_8C = Me.TxtGrid
  loc_11AC5F4:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11AC5FC:     var_90.Visible = FGrid.DispID_8001
  loc_11AC608:     Exit Sub
  loc_11AC609:   End If
  loc_11AC61C:   var_B0 = CLng(Me.FGrid.Col)
  loc_11AC62C:   If (var_B0 = CLng(1)) Then
  loc_11AC647:     Set var_9C = Nothing
  loc_11AC680:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_11AC69E:     If (CLng(Shift) = &HD) Then
  loc_11AC6A7:       Call Proc_129_53_13CD554(KeyCode, var_B2, 1, Nothing)
  loc_11AC6B2:       If (var_B2 = &HFF) Then
  loc_11AC6FF:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(5) + 1)), 0)
  loc_11AC70F:       End If
  loc_11AC70F:     End If
  loc_11AC712:   Else
  loc_11AC719:     If (var_B0 = CLng(2)) Then
  loc_11AC726:       If (CLng(Shift) = &HD) Then
  loc_11AC72F:         Call Proc_129_53_13CD554(KeyCode, var_B2, 0, 0)
  loc_11AC73A:         If (var_B2 = &HFF) Then
  loc_11AC750:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11AC758:           var_F4 = CVar(CLng(6)) 'Long
  loc_11AC78B:           If (CStr(Me.FGrid.TextMatrix)) = "Food") Then
  loc_11AC7D8:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(3) + 1)), 0, 0)
  loc_11AC7EB:           Else
  loc_11AC835:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(3) + 1)), 0, 0)
  loc_11AC845:           End If
  loc_11AC845:         End If
  loc_11AC845:       End If
  loc_11AC848:     Else
  loc_11AC84F:       If (var_B0 = CLng(4)) Then
  loc_11AC858:         Call Proc_129_53_13CD554(KeyCode, var_B2, 0, 0, var_F4)
  loc_11AC863:         If (var_B2 = &HFF) Then
  loc_11AC8B0:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(4) + 1)), 0)
  loc_11AC8C0:         End If
  loc_11AC8C3:       Else
  loc_11AC8CA:         If (var_B0 = CLng(3)) Then
  loc_11AC90D:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_144 = &HFF))) Then
  loc_11AC916:             Call Proc_129_53_13CD554(KeyCode, var_B2, 0, 0, var_D4)
  loc_11AC921:             If (var_B2 = &HFF) Then
  loc_11AC967:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, 3, 0)
  loc_11AC977:             End If
  loc_11AC977:           End If
  loc_11AC977:         End If
  loc_11AC977:       End If
  loc_11AC977:     End If
  loc_11AC977:   End If
  loc_11AC977: End If
  loc_11AC977: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F81370
  'Data Table: 51854C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F8121F: Proc_6_58_E054C0(arg_10)
  loc_F81230: If (KeyAscii = 0) Then
  loc_F81246:   var_A0 = CLng(Me.FGrid.Col)
  loc_F81256:   If (var_A0 = CLng(1)) Then
  loc_F81275:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F8127C:       Set var_AC = Me.TxtGrid
  loc_F81287:       var_A4 = "Name"
  loc_F812A2:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_64, arg_10)
  loc_F812B1:     End If
  loc_F812B4:   Else
  loc_F812BB:     If (var_A0 = CLng(3)) Then
  loc_F812C8:       Set var_8C = Me.TxtGrid
  loc_F812CE:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F812E9:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F812F8:     Else
  loc_F812FF:       If (var_A0 = CLng(4)) Then
  loc_F8130C:         Set var_8C = Me.TxtGrid
  loc_F81312:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F8132D:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_F8133C:       Else
  loc_F81343:         If (var_A0 = CLng(2)) Then
  loc_F81355:           Set var_8C = Me.TxtGrid
  loc_F8135B:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F81363:           var_AC.MaxLength = 3
  loc_F8136F:         End If
  loc_F8136F:       End If
  loc_F8136F:     End If
  loc_F8136F:   End If
  loc_F8136F: End If
  loc_F8136F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7C304
  'Data Table: 51854C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7C1C8: On Error Goto loc_F7C2FE
  loc_F7C1D7: If (KeyCode = 0) Then
  loc_F7C1ED:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7C1FD:   If (var_A0 = CLng(1)) Then
  loc_F7C223:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7C234:       Call TxtGrid_KeyDown(KeyCode, global_142)
  loc_F7C23D:       Set var_AC = Me.TxtGrid
  loc_F7C248:       var_A8 = "Name"
  loc_F7C263:       Proc_6_89_146F1AC(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7C272:     End If
  loc_F7C275:   Else
  loc_F7C27C:     If (var_A0 = CLng(2)) Then
  loc_F7C2BB:       Set var_8C = Me.TxtGrid
  loc_F7C2C1:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7C2C9:       &HFF = var_AC.Text
  loc_F7C2D1:       var_114 = CVar(var_A8) 'String
  loc_F7C2D9:       Set var_128 = Me.FGrid
  loc_F7C2DF:       LateIdCallSt
  loc_F7C2FD:     End If
  loc_F7C2FD:   End If
  loc_F7C2FD: End If
  loc_F7C2FD: Exit Sub
  loc_F7C2FE: ' Referenced from: F7C1C8
  loc_F7C2FE: Proc_6_60_E62BC4(var_128, var_114, 0)
  loc_F7C303: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2058C
  'Data Table: 51854C
  Dim arg_10 As Integer
  loc_E20574: If (Cancel = 0) Then
  loc_E2057D:   Call Proc_129_53_13CD554(Cancel, var_88)
  loc_E20586:   arg_10 = Not(var_88)
  loc_E20589: End If
  loc_E20589: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '11685FC
  'Data Table: 51854C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  loc_1168253: Me.DGItem.Visible = False
  loc_1168272: If (Me.RecordCount > 0) Then
  loc_11682A3:   var_CC = CStr(Me.Fields.Item("Name").Value)
  loc_11682AF:   Set var_B4 = Me.TxtGrid
  loc_11682B5:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_11682BD:   var_B8.Text = var_CC
  loc_11682E6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11682EE:   var_EC = CVar(CLng(1)) 'Long
  loc_1168321:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1168329:   Set var_B8 = Me.FGrid
  loc_116832F:   LateIdCallSt
  loc_116835E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1168366:   var_EC = CVar(CLng(9)) 'Long
  loc_1168399:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_11683A1:   Set var_B8 = Me.FGrid
  loc_11683A7:   LateIdCallSt
  loc_11683F5:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11683FD:   var_FC = CVar(CLng(4)) 'Long
  loc_1168438:   LateIdCallSt
  loc_1168490:   var_B0 = Me.Fields.Item("Unit")
  loc_11684A1:   var_11C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), "0.00"))), 1, 1)) 'String
  loc_11684AF:   LateIdCallSt
  loc_11684F7:   Set var_A8 = Me.Txt
  loc_11684FD:   Call 0.Method_DGItem_UnknownEvent_90 (CInt(1), var_B0, var_CC, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C)
  loc_1168505:   var_FC = var_B0.Tag
  loc_116850D:   var_10C = CVar(var_CC) 'String
  loc_116851B:   LateIdCallSt
  loc_116853F:   var_10C = Me.FGrid.Row
  loc_116856F:   var_B0 = Me.Fields.Item("DepartCode")
  loc_1168580:   var_11C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(&HB)), CVar(CLng(var_10C)), Me.FGrid, var_10C)) 'String
  loc_1168588:   Set var_B8 = Me.FGrid
  loc_116858E:   LateIdCallSt
  loc_11685A8: End If
  loc_11685B4: Set var_A8 = Me.TxtGrid
  loc_11685BA: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_11C)
  loc_11685C2: var_DC = var_B0.Visible
  loc_11685D4: If (var_15E = &HFF) Then
  loc_11685E0:   Set var_A8 = Me.TxtGrid
  loc_11685E6:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_11685EE:   var_B0.SetFocus
  loc_11685FA: End If
  loc_11685FA: Exit Sub
End Sub

Public Function global_52Get() '519E68
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '519E77
  global_52 = Value
End Sub

Public Function global_54Get() '519E86
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '519E95
  global_54 = Value
End Sub

Public Function global_56Get() '519EA4
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '519EB3
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E7569C
  'Data Table: 51854C
  Dim Me As Recordset15
  loc_E75646: Me.MoveFirst
  loc_E75670: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75690: If (Me.EOF = 0) Then
  loc_E75693:   Call Proc_129_54_1720970(var_9C)
  loc_E75698: End If
  loc_E75698: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95248
  'Data Table: 51854C
  Dim Me As Recordset15
  loc_E951D6: On Error Goto loc_E9523F
  loc_E951DF: Me.MoveFirst
  loc_E95209: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95231: Proc_5_0_110649C(&HFF, Me, global_80)
  loc_E95239: Call Proc_129_54_1720970(0)
  loc_E9523E: Exit Sub
  loc_E9523F: ' Referenced from: E951D6
  loc_E9523F: Proc_6_60_E62BC4(var_A0)
  loc_E95244: Exit Sub
End Sub

Public Sub Proc_129_49_1417D40
  'Data Table: 51854C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_14172BF: Me.FGrid.Left = CVar(CDbl(7320))
  loc_14172DA: Me.FGrid.Top = CVar(CDbl(3885))
  loc_14172F5: Me.FGrid.Width = CVar(CDbl(6600))
  loc_141730C: Me.Frame1.Left = CDbl(7300)
  loc_1417323: Me.Frame1.Top = CDbl(1350)
  loc_141733E: Me.DGItem.Left = CVar(CDbl(7320))
  loc_1417359: Me.DGItem.Top = CVar(CDbl(900))
  loc_141736F: Set var_A8 = Me.Txt
  loc_1417375: Call 0.Method_Proc_129_49_1417D400 (CInt(&H2D), var_AC)
  loc_1417394: Me.DG_Catalog.Left = CVar(var_AC.Left)
  loc_14173B0: Set var_B4 = Me.Txt
  loc_14173B6: Call 0.Method_Proc_129_49_1417D400 (CInt(&H2D), var_B8)
  loc_14173D1: Set var_A8 = Me.Txt
  loc_14173D7: Call 0.Method_Proc_129_49_1417D400 (CInt(&H2D), var_AC)
  loc_14173EF: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_14173FE: Me.DG_Catalog.Top = CVar(var_AC.Left)
  loc_141741E: Set var_A8 = Me.Txt
  loc_1417424: Call 0.Method_Proc_129_49_1417D400 (CInt(1), var_AC)
  loc_1417443: Me.DGFPNo.Left = CVar(var_AC.Left)
  loc_141745F: Set var_B4 = Me.Txt
  loc_1417465: Call 0.Method_Proc_129_49_1417D400 (CInt(1), var_B8)
  loc_1417480: Set var_A8 = Me.Txt
  loc_1417486: Call 0.Method_Proc_129_49_1417D400 (CInt(1), var_AC)
  loc_141749E: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_14174AD: Me.DGFPNo.Top = CVar(var_AC.Left)
  loc_14174CD: Set var_A8 = Me.Txt
  loc_14174D3: Call 0.Method_Proc_129_49_1417D400 (CInt(0), var_AC)
  loc_14174F2: Me.DGVType.Left = CVar(var_AC.Left)
  loc_141750E: Set var_B4 = Me.Txt
  loc_1417514: Call 0.Method_Proc_129_49_1417D400 (CInt(0), var_B8)
  loc_141752F: Set var_A8 = Me.Txt
  loc_1417535: Call 0.Method_Proc_129_49_1417D400 (CInt(0), var_AC)
  loc_141754D: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_141755C: Me.DGVType.Top = CVar(var_AC.Left)
  loc_1417572: Set var_C4 = Me.FGrid
  loc_1417589: global_100 = CStr(CLng(var_C4.BackColor))
  loc_141759F: var_C4.Cols = &HC
  loc_14175A4: var_94 = 0
  loc_14175AD: var_E8 = 0
  loc_14175B6: var_108 = "SNo"
  loc_14175BF: LateIdCallSt
  loc_14175C7: var_94 = 0
  loc_14175D6: var_E8 = CVar(CInt(1)) 'Integer
  loc_14175DD: LateIdCallSt
  loc_14175E5: var_94 = 0
  loc_14175F4: var_E8 = CVar(CInt(1)) 'Integer
  loc_14175FB: LateIdCallSt
  loc_1417606: var_94 = CVar(CLng(0)) 'Long
  loc_141760B: var_E8 = &H1C2
  loc_1417617: LateIdCallSt
  loc_141761F: var_94 = 0
  loc_141762B: var_E8 = CVar(CLng(1)) 'Long
  loc_1417630: var_108 = "Item Name"
  loc_1417639: LateIdCallSt
  loc_1417644: var_94 = CVar(CLng(1)) 'Long
  loc_141764F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417656: LateIdCallSt
  loc_1417661: var_94 = CVar(CLng(1)) 'Long
  loc_1417666: var_E8 = &H1194
  loc_1417672: LateIdCallSt
  loc_141767A: var_94 = 0
  loc_1417686: var_E8 = CVar(CLng(2)) 'Long
  loc_141768B: var_108 = "Remarks"
  loc_1417694: LateIdCallSt
  loc_141769F: var_94 = CVar(CLng(2)) 'Long
  loc_14176AA: var_E8 = CVar(CInt(1)) 'Integer
  loc_14176B1: LateIdCallSt
  loc_14176BC: var_94 = CVar(CLng(2)) 'Long
  loc_14176C1: var_E8 = 0
  loc_14176CD: LateIdCallSt
  loc_14176D5: var_94 = 0
  loc_14176E1: var_E8 = CVar(CLng(3)) 'Long
  loc_14176E6: var_108 = "Qty"
  loc_14176EF: LateIdCallSt
  loc_14176FA: var_94 = CVar(CLng(3)) 'Long
  loc_1417705: var_E8 = CVar(CInt(7)) 'Integer
  loc_141770C: LateIdCallSt
  loc_1417717: var_94 = CVar(CLng(3)) 'Long
  loc_1417722: var_E8 = CVar(CInt(7)) 'Integer
  loc_1417729: LateIdCallSt
  loc_1417734: var_94 = CVar(CLng(3)) 'Long
  loc_1417739: var_E8 = &H5DC
  loc_1417745: LateIdCallSt
  loc_141774D: var_94 = 0
  loc_1417759: var_E8 = CVar(CLng(4)) 'Long
  loc_141775E: var_108 = "Rate"
  loc_1417767: LateIdCallSt
  loc_1417772: var_94 = CVar(CLng(4)) 'Long
  loc_141777D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1417784: LateIdCallSt
  loc_141778F: var_94 = CVar(CLng(4)) 'Long
  loc_141779A: var_E8 = CVar(CInt(7)) 'Integer
  loc_14177A1: LateIdCallSt
  loc_14177AC: var_94 = CVar(CLng(4)) 'Long
  loc_14177B1: var_E8 = 0
  loc_14177BD: LateIdCallSt
  loc_14177C5: var_94 = 0
  loc_14177D1: var_E8 = CVar(CLng(6)) 'Long
  loc_14177D6: var_108 = "Category"
  loc_14177DF: LateIdCallSt
  loc_14177EA: var_94 = CVar(CLng(6)) 'Long
  loc_14177F5: var_E8 = CVar(CInt(1)) 'Integer
  loc_14177FC: LateIdCallSt
  loc_1417807: var_94 = CVar(CLng(6)) 'Long
  loc_1417812: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417819: LateIdCallSt
  loc_1417824: var_94 = CVar(CLng(6)) 'Long
  loc_1417829: var_E8 = 0
  loc_1417835: LateIdCallSt
  loc_141783D: var_94 = 0
  loc_1417849: var_E8 = CVar(CLng(7)) 'Long
  loc_141784E: var_108 = "Tax"
  loc_1417857: LateIdCallSt
  loc_1417862: var_94 = CVar(CLng(7)) 'Long
  loc_141786D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1417874: LateIdCallSt
  loc_141787F: var_94 = CVar(CLng(7)) 'Long
  loc_141788A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1417891: LateIdCallSt
  loc_141789C: var_94 = CVar(CLng(7)) 'Long
  loc_14178A1: var_E8 = 0
  loc_14178AD: LateIdCallSt
  loc_14178B5: var_94 = 0
  loc_14178C1: var_E8 = CVar(CLng(5)) 'Long
  loc_14178C6: var_108 = "Amount"
  loc_14178CF: LateIdCallSt
  loc_14178DA: var_94 = CVar(CLng(5)) 'Long
  loc_14178E5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14178EC: LateIdCallSt
  loc_14178F7: var_94 = CVar(CLng(5)) 'Long
  loc_1417902: var_E8 = CVar(CInt(7)) 'Integer
  loc_1417909: LateIdCallSt
  loc_1417914: var_94 = CVar(CLng(5)) 'Long
  loc_1417919: var_E8 = 0
  loc_1417925: LateIdCallSt
  loc_141792D: var_94 = 0
  loc_1417939: var_E8 = CVar(CLng(8)) 'Long
  loc_141793E: var_108 = "Total"
  loc_1417947: LateIdCallSt
  loc_1417952: var_94 = CVar(CLng(8)) 'Long
  loc_141795D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1417964: LateIdCallSt
  loc_141796F: var_94 = CVar(CLng(8)) 'Long
  loc_141797A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1417981: LateIdCallSt
  loc_141798C: var_94 = CVar(CLng(8)) 'Long
  loc_1417991: var_E8 = 0
  loc_141799D: LateIdCallSt
  loc_14179A8: var_94 = CVar(CLng(9)) 'Long
  loc_14179AD: var_E8 = 0
  loc_14179B9: LateIdCallSt
  loc_14179C4: var_94 = CVar(CLng(&HA)) 'Long
  loc_14179C9: var_E8 = 0
  loc_14179D5: LateIdCallSt
  loc_14179E0: var_94 = CVar(CLng(&HB)) 'Long
  loc_14179E5: var_E8 = 0
  loc_14179F1: LateIdCallSt
  loc_14179FB: Set var_C4 = Nothing 
  loc_1417A12: Me.FGrid1.Cols = 8
  loc_1417A17: var_94 = 0
  loc_1417A20: var_E8 = 0
  loc_1417A29: var_108 = "SNo"
  loc_1417A32: LateIdCallSt
  loc_1417A3A: var_94 = 0
  loc_1417A49: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417A50: LateIdCallSt
  loc_1417A58: var_94 = 0
  loc_1417A67: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417A6E: LateIdCallSt
  loc_1417A76: var_94 = 0
  loc_1417A7F: var_E8 = &H1C2
  loc_1417A8B: LateIdCallSt
  loc_1417A93: var_94 = 0
  loc_1417A9C: var_E8 = 1
  loc_1417AA5: var_108 = "Venue Name"
  loc_1417AAE: LateIdCallSt
  loc_1417AB6: var_94 = 1
  loc_1417AC5: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417ACC: LateIdCallSt
  loc_1417AD4: var_94 = 1
  loc_1417AE3: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417AEA: LateIdCallSt
  loc_1417AF2: var_94 = 1
  loc_1417AFB: var_E8 = &H76C
  loc_1417B07: LateIdCallSt
  loc_1417B0F: var_94 = 0
  loc_1417B18: var_E8 = 2
  loc_1417B21: var_108 = "Date From"
  loc_1417B2A: LateIdCallSt
  loc_1417B32: var_94 = 2
  loc_1417B41: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417B48: LateIdCallSt
  loc_1417B50: var_94 = 2
  loc_1417B5F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417B66: LateIdCallSt
  loc_1417B6E: var_94 = 2
  loc_1417B77: var_E8 = &H47E
  loc_1417B83: LateIdCallSt
  loc_1417B8B: var_94 = 0
  loc_1417B94: var_E8 = 3
  loc_1417B9D: var_108 = "FromTime"
  loc_1417BA6: LateIdCallSt
  loc_1417BAE: var_94 = 3
  loc_1417BBD: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417BC4: LateIdCallSt
  loc_1417BCC: var_94 = 3
  loc_1417BDB: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417BE2: LateIdCallSt
  loc_1417BEA: var_94 = 3
  loc_1417BF3: var_E8 = &H3E8
  loc_1417BFF: LateIdCallSt
  loc_1417C07: var_94 = 0
  loc_1417C10: var_E8 = 4
  loc_1417C19: var_108 = "Date To"
  loc_1417C22: LateIdCallSt
  loc_1417C2A: var_94 = 4
  loc_1417C39: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417C40: LateIdCallSt
  loc_1417C48: var_94 = 4
  loc_1417C57: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417C5E: LateIdCallSt
  loc_1417C66: var_94 = 4
  loc_1417C6F: var_E8 = &H47E
  loc_1417C7B: LateIdCallSt
  loc_1417C83: var_94 = 0
  loc_1417C8C: var_E8 = 5
  loc_1417C95: var_108 = "To Time"
  loc_1417C9E: LateIdCallSt
  loc_1417CA6: var_94 = 5
  loc_1417CB5: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417CBC: LateIdCallSt
  loc_1417CC4: var_94 = 5
  loc_1417CD3: var_E8 = CVar(CInt(1)) 'Integer
  loc_1417CDA: LateIdCallSt
  loc_1417CE2: var_94 = 5
  loc_1417CEB: var_E8 = &H384
  loc_1417CF7: LateIdCallSt
  loc_1417CFF: var_94 = 6
  loc_1417D08: var_E8 = 0
  loc_1417D14: LateIdCallSt
  loc_1417D1C: var_94 = 7
  loc_1417D25: var_E8 = 0
  loc_1417D31: LateIdCallSt
  loc_1417D3B: Set var_11C = Nothing 
  loc_1417D3F: Exit Sub
End Sub

Public Sub Proc_129_50_11C6B68
  'Data Table: 51854C
  Dim var_90 As Variant
  Dim var_98 As String
  Dim unk_518574 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_E8 As Variant
  Dim var_D8 As MSHFlexGrid
  Dim var_94 As String
  Dim var_168 As Variant
  Dim var_C0 As MSHFlexGrid
  loc_11C6736: Set var_8C = Me.Txt
  loc_11C673C: Call 0.Method_Proc_129_50_11C6B680 (CInt(&H2D), var_90, var_94, "SELECT ItemMast.Name AS ItemName, ItemGrp.Name AS ItemGrpName, ItemGrp.Type AS ItemGrpType, ItemMast.Unit AS UnitName, CatalogMast.*, ItemCatMast.CatType FROM ((CatalogMast LEFT JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code And CatalogMast.RestCode=ItemMast.RestCode) LEFT JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code WHERE CatalogMast.Code='")
  loc_11C6744: var_BC = var_90.Tag
  loc_11C674D: var_98 = -1 & var_94
  loc_11C675D: unk_518574.Execute var_98 & "'", var_C0, 
  loc_11C6768: Set var_88 = var_C0
  loc_11C6780: ' Referenced from: 11C6B5B
  loc_11C678F: If Not(var_88.EOF) Then
  loc_11C67AB:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11C67BA:   Me.FGrid.Row = var_AC
  loc_11C67CD:   Set var_D8 = Me.FGrid
  loc_11C67E3:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C67EB:   var_148 = CVar(CLng(0)) 'Long
  loc_11C6809:   var_AC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_11C6811:   var_E8 = CVar(CLng(0)) 'Long
  loc_11C6832:   var_168 = CVar(CStr((Val(CStr(var_D8.TextMatrix))) + CDbl(1)))) 'String
  loc_11C6839:   LateIdCallSt
  loc_11C689E:   var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_D8, var_168)) 'String
  loc_11C68A5:   LateIdCallSt
  loc_11C68D0:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C68D8:   var_E8 = CVar(CLng(2)) 'Long
  loc_11C68DD:   var_128 = vbNullString
  loc_11C68E6:   LateIdCallSt
  loc_11C6907:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C690F:   var_E8 = CVar(CLng(3)) 'Long
  loc_11C6914:   var_128 = "0.00"
  loc_11C691D:   LateIdCallSt
  loc_11C693E:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C6954:   LateIdCallSt
  loc_11C6985:   var_AC = "CatType"
  loc_11C69AA:   var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_AC)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_D8, "0.00", CVar(CLng(4)), var_AC)) 'String
  loc_11C69B1:   LateIdCallSt
  loc_11C69DC:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C69E4:   var_E8 = CVar(CLng(7)) 'Long
  loc_11C69E9:   var_128 = "0.00"
  loc_11C69F2:   LateIdCallSt
  loc_11C6A13:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C6A1B:   var_E8 = CVar(CLng(5)) 'Long
  loc_11C6A20:   var_128 = "0.00"
  loc_11C6A29:   LateIdCallSt
  loc_11C6A4A:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C6A60:   LateIdCallSt
  loc_11C6A91:   var_AC = "ItemCode"
  loc_11C6AB6:   var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_AC)), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_D8, "0.00", CVar(CLng(8)), var_AC)) 'String
  loc_11C6ABD:   LateIdCallSt
  loc_11C6B1D:   var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("UnitName")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_D8, var_118, var_D8)) 'String
  loc_11C6B24:   LateIdCallSt
  loc_11C6B3C:   var_AC = vbNullString
  loc_11C6B4F:   Set var_D8 = Nothing 
  loc_11C6B56:   var_88.MoveNext
  loc_11C6B5B:   GoTo loc_11C6780
  loc_11C6B5E: End If
  loc_11C6B63: Set var_88 = Nothing
  loc_11C6B66: Exit Sub
End Sub

Public Sub Proc_129_51_16B0238
  'Data Table: 51854C
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_518574 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim var_8C As Recordset15
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_C8 As Variant
  Dim var_168 As Long
  Dim var_18C As Fields15
  loc_16AE8F2: Set var_94 = Me.Txt
  loc_16AE8F8: Call 0.Method_Proc_129_51_16B02380 (CInt(1), var_98, var_9C, "SELECT HallBook.*,CatalogMast.Name as CatName FROM HALLBOOK inner Join CatalogMast on HallBook.MenuCatalog=CatalogMast.Code WHERE DOCID='")
  loc_16AE900: var_C4 = var_98.Tag
  loc_16AE909: var_A0 = -1 & var_9C
  loc_16AE919: unk_518574.Execute var_A0 & "'", var_C8, 
  loc_16AE924: Set var_88 = var_C8
  loc_16AE950: If (var_88.RecordCount > 0) Then
  loc_16AE989:   Set var_C8 = Me.Txt
  loc_16AE98F:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H2D), var_D0)
  loc_16AE997:   var_D0.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuCatalog")))
  loc_16AE9E1:   Set var_C8 = Me.Txt
  loc_16AE9E7:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H2D), var_D0)
  loc_16AE9EF:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CatName")))
  loc_16AEA3C:   Set var_C8 = Me.Txt
  loc_16AEA42:   Call 0.Method_Proc_129_51_16B02380 (CInt(2), var_D0)
  loc_16AEA4A:   var_D0.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_16AEA96:   Set var_C8 = Me.Txt
  loc_16AEA9C:   Call 0.Method_Proc_129_51_16B02380 (CInt(3), var_D0)
  loc_16AEAA4:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PartyName")))
  loc_16AEAEE:   Set var_C8 = Me.Txt
  loc_16AEAF4:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H29), var_D0)
  loc_16AEAFC:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_16AEB46:   Set var_C8 = Me.Txt
  loc_16AEB4C:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H2A), var_D0)
  loc_16AEB54:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_16AEB9E:   Set var_C8 = Me.Txt
  loc_16AEBA4:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H2E), var_D0)
  loc_16AEBAC:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("City")))
  loc_16AEBF6:   Set var_C8 = Me.Txt
  loc_16AEBFC:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H23), var_D0)
  loc_16AEC04:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PinCode")))
  loc_16AEC4E:   Set var_C8 = Me.Txt
  loc_16AEC54:   Call 0.Method_Proc_129_51_16B02380 (CInt(4), var_D0)
  loc_16AEC5C:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContactNo_Off")))
  loc_16AECA6:   Set var_C8 = Me.Txt
  loc_16AECAC:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H2B), var_D0)
  loc_16AECB4:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContactNo_Res")))
  loc_16AECFE:   Set var_C8 = Me.Txt
  loc_16AED04:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H10), var_D0)
  loc_16AED0C:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")))
  loc_16AED56:   Set var_C8 = Me.Txt
  loc_16AED5C:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H2C), var_D0)
  loc_16AED64:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PanNo")))
  loc_16AEDAE:   Set var_C8 = Me.Txt
  loc_16AEDB4:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H14), var_D0)
  loc_16AEDBC:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ExpAtt")))
  loc_16AEE06:   Set var_C8 = Me.Txt
  loc_16AEE0C:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H15), var_D0)
  loc_16AEE14:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuarAtt")))
  loc_16AEE5E:   Set var_C8 = Me.Txt
  loc_16AEE64:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H16), var_D0)
  loc_16AEE6C:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CoverRate")))
  loc_16AEE97:   var_98 = var_88.Fields.Item("Func_Name")
  loc_16AEEB6:   Set var_C8 = Me.Txt
  loc_16AEEBC:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H17), var_D0)
  loc_16AEEC4:   var_D0.Tag = Proc_6_38_E68A98(CVar(var_98))
  loc_16AEEE6:   Set var_94 = Me.Txt
  loc_16AEEEC:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H17), var_98)
  loc_16AEEF4:   var_9C = var_98.Tag
  loc_16AEF0B:   If (var_9C <> vbNullString) Then
  loc_16AEF2C:     Set var_94 = Me.Txt
  loc_16AEF32:     Call 0.Method_Proc_129_51_16B02380 (CInt(&H17), var_98, var_9C, "Select * from FunctionType where Code='")
  loc_16AEF3A:     var_C4 = var_98.Tag
  loc_16AEF43:     var_A0 = -1 & var_9C
  loc_16AEF53:     unk_518574.Execute var_A0 & "'", var_C8, 
  loc_16AEF5E:     Set var_8C = var_C8
  loc_16AEF8A:     If (var_8C.RecordCount > 0) Then
  loc_16AEFC3:       Set var_C8 = Me.Txt
  loc_16AEFC9:       Call 0.Method_Proc_129_51_16B02380 (CInt(&H17), var_D0)
  loc_16AEFD1:       var_D0.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_16AEFE5:     End If
  loc_16AEFE5:   End If
  loc_16AF01B:   Set var_C8 = Me.Txt
  loc_16AF021:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H18), var_D0)
  loc_16AF029:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl1")))
  loc_16AF073:   Set var_C8 = Me.Txt
  loc_16AF079:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H19), var_D0)
  loc_16AF081:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl2")))
  loc_16AF0CB:   Set var_C8 = Me.Txt
  loc_16AF0D1:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H1A), var_D0)
  loc_16AF0D9:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl3")))
  loc_16AF123:   Set var_C8 = Me.Txt
  loc_16AF129:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H1B), var_D0)
  loc_16AF131:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl4")))
  loc_16AF17B:   Set var_C8 = Me.Txt
  loc_16AF181:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H2F), var_D0)
  loc_16AF189:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl5")))
  loc_16AF1D3:   Set var_C8 = Me.Txt
  loc_16AF1D9:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H30), var_D0)
  loc_16AF1E1:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl6")))
  loc_16AF22B:   Set var_C8 = Me.Txt
  loc_16AF231:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H31), var_D0)
  loc_16AF239:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MenuSpl7")))
  loc_16AF283:   Set var_C8 = Me.Txt
  loc_16AF289:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H1C), var_D0)
  loc_16AF291:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("HouseKeep")))
  loc_16AF2DB:   Set var_C8 = Me.Txt
  loc_16AF2E1:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H1D), var_D0)
  loc_16AF2E9:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrontOff")))
  loc_16AF333:   Set var_C8 = Me.Txt
  loc_16AF339:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H1E), var_D0)
  loc_16AF341:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Engg")))
  loc_16AF38B:   Set var_C8 = Me.Txt
  loc_16AF391:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H1F), var_D0)
  loc_16AF399:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Security")))
  loc_16AF3E3:   Set var_C8 = Me.Txt
  loc_16AF3E9:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H20), var_D0)
  loc_16AF3F1:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Chef")))
  loc_16AF41C:   var_98 = var_88.Fields.Item("Board")
  loc_16AF42D:   var_9C = Proc_6_38_E68A98(CVar(var_98))
  loc_16AF43B:   Set var_C8 = Me.Txt
  loc_16AF441:   Call 0.Method_Proc_129_51_16B02380 (CInt(&H21), var_D0)
  loc_16AF449:   var_D0.Text = var_9C
  loc_16AF45D: End If
  loc_16AF46C: Me.FGrid.Redraw = False
  loc_16AF487: Me.FGrid.Rows = 1
  loc_16AF493: var_8E = CByte(1) 'Byte
  loc_16AF4B5: Set var_94 = Me.Txt
  loc_16AF4BB: Call 0.Method_Proc_129_51_16B02380 (CInt(1), var_98, var_9C, "SELECT S.*, I.Name AS ItemName, I.Type,I.Kitchen ,ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RoomNo = I.RestCode) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='")
  loc_16AF4C3: var_C4 = var_98.Tag
  loc_16AF4CC: var_A0 = -1 & var_9C
  loc_16AF4DC: unk_518574.Execute var_A0 & "'", var_C8, 
  loc_16AF4E7: Set var_88 = var_C8
  loc_16AF513: If (var_88.RecordCount > 0) Then
  loc_16AF516:   ' Referenced from: 16AFC2E
  loc_16AF525:   If Not(var_88.EOF) Then
  loc_16AF528:     var_B4 = vbNullString
  loc_16AF532:     Set var_94 = Me.FGrid
  loc_16AF547:     Set var_E8 = Me.FGrid
  loc_16AF54F:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16AF557:     var_108 = CVar(CLng(0)) 'Long
  loc_16AF587:     var_128 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16AF58E:     LateIdCallSt
  loc_16AF5A9:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16AF5B1:     var_108 = CVar(CLng(9)) 'Long
  loc_16AF5E1:     var_128 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_16AF5E8:     LateIdCallSt
  loc_16AF62F:     If (IsNull(CVar(var_88.Fields.Item("ItemName"))) = &HFF) Then
  loc_16AF66C:       var_128 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(1)), CVar(CLng(var_8E)), var_E8, var_128, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_16AF673:       LateIdCallSt
  loc_16AF688:     Else
  loc_16AF6C2:       var_128 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_E8, var_128, var_E8)) 'String
  loc_16AF6C9:       LateIdCallSt
  loc_16AF6DB:     End If
  loc_16AF6FC:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16AF718:     var_128 = "0.000"
  loc_16AF738:     LateIdCallSt
  loc_16AF774:     Proc_6_39_E7C810(var_128, CVar(var_88.Fields.Item("Rate")), var_E8, CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), var_128))), 1, 1, CVar(CLng(3)))
  loc_16AF78E:     If (var_128 > 0) Then
  loc_16AF7B2:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16AF7BA:       var_118 = CVar(CLng(4)) 'Long
  loc_16AF7E7:       var_158 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_16AF7EE:       LateIdCallSt
  loc_16AF807:     Else
  loc_16AF847:       var_F8 = "' And RestCode='"
  loc_16AF872:       var_158 = var_88.Fields.Item("RestCode").Value
  loc_16AF87E:       var_118 = "' And AppDate<="
  loc_16AF892:       Set var_18C = Me.Txt
  loc_16AF898:       Call 0.Method_Proc_129_51_16B02380 (CInt(2), var_190, "Select Rate from ItemRate where ItemCode='" & var_88.Fields.Item("Item").Value & var_F8 & var_158 & var_118, var_1D0, -1, var_1D4, var_E8)
  loc_16AF8A7:       Proc_6_7_F25D88(var_1B0, CVar(var_190), var_158, 1)
  loc_16AF8B3:       var_9C = CStr(1 & var_1B0)
  loc_16AF8BD:       unk_518574.Execute var_9C, var_118, var_F8
  loc_16AF8C8:       Set var_8C = var_1D4
  loc_16AF908:       If (var_8C.RecordCount > 0) Then
  loc_16AF92C:         var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16AF934:         var_118 = CVar(CLng(4)) 'Long
  loc_16AF961:         var_158 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Rate")), "0.00"))) 'String
  loc_16AF968:         LateIdCallSt
  loc_16AF97E:       End If
  loc_16AF97E:     End If
  loc_16AF983:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16AF98B:     var_108 = CVar(CLng(6)) 'Long
  loc_16AF9BB:     var_128 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_16AF9C2:     LateIdCallSt
  loc_16AF9DD:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16AF9E5:     var_108 = CVar(CLng(7)) 'Long
  loc_16AFA15:     var_128 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16AFA1C:     LateIdCallSt
  loc_16AFA53:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16AFA8F:     LateIdCallSt
  loc_16AFADF:     var_128 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_16AFAE6:     LateIdCallSt
  loc_16AFB32:     var_128 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_E8, var_128, CVar(CLng(5)))) 'String
  loc_16AFB39:     LateIdCallSt
  loc_16AFB6C:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16AFB74:     var_118 = CVar(CLng(8)) 'Long
  loc_16AFBA8:     LateIdCallSt
  loc_16AFBF8:     var_128 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_16AFBFF:     LateIdCallSt
  loc_16AFC13:     Set var_E8 = Nothing 
  loc_16AFC22:     var_8E = CByte((CInt(var_8E) + 1)) 'Byte
  loc_16AFC29:     var_88.MoveNext
  loc_16AFC2E:     GoTo loc_16AF516
  loc_16AFC31:   End If
  loc_16AFC44:   Me.FGrid.FixedRows = 1
  loc_16AFC4C: End If
  loc_16AFC5A: Me.FGrid.Redraw = True
  loc_16AFC6B: If (CInt(var_8E) = 1) Then
  loc_16AFC81:   Me.FGrid.Rows = 1
  loc_16AFC8D:   Set var_C8 = Me.FGrid
  loc_16AFCA7:   var_C4 = CVar(CStr(Proc_6_127_F24F80(var_C8, CInt(0), var_E8, var_128, var_118))) 'String
  loc_16AFCAF:   Set var_98 = Me.FGrid
  loc_16AFCDC:   Me.FGrid.FixedRows = 1
  loc_16AFCE4: End If
  loc_16AFD02: Set var_94 = Me.Txt
  loc_16AFD08: Call 0.Method_Proc_129_51_16B02380 (CInt(1), var_98, var_9C, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C4, -1, var_C8)
  loc_16AFD10: FGrid.DispID_10000 = var_98.Tag
  loc_16AFD29: unk_518574.Execute var_C4 & var_9C & "'", var_F8, var_E8
  loc_16AFD34: Set var_88 = var_C8
  loc_16AFD4C: ' Referenced from: 16B022C
  loc_16AFD5B: If Not(var_88.EOF) Then
  loc_16AFD77:   var_B4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_16AFD86:   Me.FGrid1.Row = 1
  loc_16AFDBD:   For var_1D8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_1D8 'Byte
  loc_16AFDC8:     var_B4 = CVar(CLng(var_8E)) 'Long
  loc_16AFDFC:     Set var_98 = Me.Txt
  loc_16AFE02:     Call 0.Method_Proc_129_51_16B02380 (CInt(1), var_C8, var_9C, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_16AFE0A:     var_B4 = var_C8.Tag
  loc_16AFE31:     var_128 = Me.FGrid1.TextMatrix)
  loc_16AFE8E:     If (var_128 And ((CByte(1) = var_9C) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenueName")), CStr(var_128), 1, CVar(CLng(var_8E))))) Then
  loc_16AFE91:       GoTo loc_16B0224
  loc_16AFE94:     End If
  loc_16AFE97:   Next var_1D8 'Byte
  loc_16AFEA1:   Set var_200 = Me.FGrid1
  loc_16AFEB7:   var_118 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16AFEBC:   var_168 = 0
  loc_16AFEDE:   var_B4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_16AFEE3:   var_F8 = 0
  loc_16AFF0F:   var_158 = CVar(CStr((Val(CStr(Me.FGrid1.TextMatrix))) + CDbl(1)))) 'String
  loc_16AFF16:   LateIdCallSt
  loc_16AFF7E:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_200, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))))) 'String
  loc_16AFF85:   LateIdCallSt
  loc_16AFFE6:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16AFFED:   LateIdCallSt
  loc_16B004E:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0055:   LateIdCallSt
  loc_16B00B6:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B00BD:   LateIdCallSt
  loc_16B011E:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0125:   LateIdCallSt
  loc_16B0186:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenuCode")), 6, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B018D:   LateIdCallSt
  loc_16B01EE:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FPDocId")), 7, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B01F5:   LateIdCallSt
  loc_16B020D:   var_B4 = vbNullString
  loc_16B0220:   Set var_200 = Nothing 
  loc_16B0224:   ' Referenced from: 16AFE91
  loc_16B0227:   var_88.MoveNext
  loc_16B022C:   GoTo loc_16AFD4C
  loc_16B022F: End If
  loc_16B0234: Set var_88 = Nothing
  loc_16B0237: Exit Sub
End Sub

Public Sub Proc_129_52_E45B44
  'Data Table: 51854C
  loc_E45B20: Set var_88 = Me.TopCtrl1
  loc_E45B26: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E45B3F: If (CStr() = "Browse") Then
  loc_E45B42:   Exit Sub
  loc_E45B43: End If
  loc_E45B43: Exit Sub
End Sub

Public Sub Proc_129_53_13CD554(arg_C) '13CD554
  'Data Table: 51854C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_178 As String
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_13CCBE0: If (arg_C = 0) Then
  loc_13CCBF6:   var_AC = CLng(Me.FGrid.Col)
  loc_13CCC06:   If (var_AC = CLng(1)) Then
  loc_13CCC29:     var_B2 = Me.EOF
  loc_13CCC57:     Set var_98 = Me.TxtGrid
  loc_13CCC5D:     Call 0.Method_Proc_129_53_13CD5540 (arg_C, var_B8, var_BC)
  loc_13CCC65:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_13CCC7D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_13CCC93:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCC9B:       var_EC = CVar(CLng(1)) 'Long
  loc_13CCCA0:       var_10C = vbNullString
  loc_13CCCAA:       Set var_B8 = Me.FGrid
  loc_13CCCB0:       LateIdCallSt
  loc_13CCCD5:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCCDD:       var_EC = CVar(CLng(9)) 'Long
  loc_13CCCE2:       var_10C = vbNullString
  loc_13CCCEC:       Set var_B8 = Me.FGrid
  loc_13CCCF2:       LateIdCallSt
  loc_13CCD17:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCD1F:       var_EC = CVar(CLng(4)) 'Long
  loc_13CCD24:       var_10C = vbNullString
  loc_13CCD2E:       Set var_B8 = Me.FGrid
  loc_13CCD34:       LateIdCallSt
  loc_13CCD59:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCD61:       var_EC = CVar(CLng(&HA)) 'Long
  loc_13CCD66:       var_10C = vbNullString
  loc_13CCD70:       Set var_B8 = Me.FGrid
  loc_13CCD76:       LateIdCallSt
  loc_13CCD9B:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCDA3:       var_EC = CVar(CLng(6)) 'Long
  loc_13CCDA8:       var_10C = vbNullString
  loc_13CCDB2:       Set var_B8 = Me.FGrid
  loc_13CCDB8:       LateIdCallSt
  loc_13CCDDD:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCDE5:       var_EC = CVar(CLng(&HB)) 'Long
  loc_13CCDEA:       var_10C = vbNullString
  loc_13CCDF4:       Set var_B8 = Me.FGrid
  loc_13CCDFA:       LateIdCallSt
  loc_13CCE0F:     Else
  loc_13CCE12:       Call Proc_129_63_FBC268(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_13CCE1D:       If (var_B2 = 0) Then
  loc_13CCE25:         Proc_129_53_13CD554 = 0
  loc_13CCE2B:       End If
  loc_13CCE44:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCE4C:       var_EC = CVar(CLng(9)) 'Long
  loc_13CCE66:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_13CCE84:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCE8C:       var_150 = CVar(CLng(9)) 'Long
  loc_13CCEA6:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_13CCF11:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_13CCF28:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_13CCF44:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCF4C:         var_FC = CVar(CLng(1)) 'Long
  loc_13CCF7F:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13CCF87:         Set var_164 = Me.FGrid
  loc_13CCF8D:         LateIdCallSt
  loc_13CCFBC:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCFC4:         var_FC = CVar(CLng(9)) 'Long
  loc_13CCFF7:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_13CCFFF:         Set var_164 = Me.FGrid
  loc_13CD005:         LateIdCallSt
  loc_13CD060:         If CBool(Me.Fields.Item("CatType").Value <> "Food") Then
  loc_13CD076:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD07E:           var_FC = CVar(CLng(4)) 'Long
  loc_13CD0B1:           var_140 = CVar(CStr(Me.Fields.Item("IRate").Value)) 'String
  loc_13CD0B9:           Set var_164 = Me.FGrid
  loc_13CD0BF:           LateIdCallSt
  loc_13CD0DE:         Else
  loc_13CD0F1:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD0F9:           var_EC = CVar(CLng(4)) 'Long
  loc_13CD0FE:           var_10C = "0.00"
  loc_13CD108:           Set var_B8 = Me.FGrid
  loc_13CD10E:           LateIdCallSt
  loc_13CD120:         End If
  loc_13CD124:         var_CC = CVar(CLng(var_92)) 'Long
  loc_13CD136:         var_A8 = CVar(CStr(var_92)) 'String
  loc_13CD13E:         Set var_98 = Me.FGrid
  loc_13CD144:         LateIdCallSt
  loc_13CD175:         var_CC = "Unit"
  loc_13CD184:         var_98 = Me.Fields
  loc_13CD18C:         var_B8 = var_98.Item(var_CC)
  loc_13CD19D:         var_140 = CVar(Proc_6_38_E68A98(CVar(var_B8), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_B8), CVar(CLng(0)), var_CC)) 'String
  loc_13CD1AB:         LateIdCallSt
  loc_13CD1E0:         var_EC = CVar(CLng(6)) 'Long
  loc_13CD1F3:         Set var_98 = Me.Txt
  loc_13CD1F9:         Call 0.Method_Proc_129_53_13CD5540 (CInt(1), var_B8, var_BC, var_EC, CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_140)
  loc_13CD201:         var_B8 = var_B8.Tag
  loc_13CD209:         var_12C = CVar(var_BC) 'String
  loc_13CD217:         LateIdCallSt
  loc_13CD23B:         var_12C = Me.FGrid.Row
  loc_13CD26B:         var_B8 = Me.Fields.Item("DepartCode")
  loc_13CD27C:         var_140 = CVar(Proc_6_38_E68A98(CVar(var_B8), CVar(CLng(&HB)), CVar(CLng(var_12C)), Me.FGrid, var_12C)) 'String
  loc_13CD284:         Set var_164 = Me.FGrid
  loc_13CD28A:         LateIdCallSt
  loc_13CD2A4:       End If
  loc_13CD2A4:     End If
  loc_13CD2A4:     Call Proc_129_60_115356C(var_164, var_140, var_10C, var_EC)
  loc_13CD2AC:   Else
  loc_13CD2B3:     If (var_AC = CLng(2)) Then
  loc_13CD2C9:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD2E2:       Set var_98 = Me.TxtGrid
  loc_13CD2E8:       Call 0.Method_Proc_129_53_13CD5540 (0, var_B8, var_BC, CVar(CLng(2)))
  loc_13CD2F0:       var_CC = var_B8.Text
  loc_13CD2F8:       var_12C = CVar(var_BC) 'String
  loc_13CD300:       Set var_164 = Me.FGrid
  loc_13CD306:       LateIdCallSt
  loc_13CD323:     Else
  loc_13CD32A:       If (var_AC = CLng(3)) Then
  loc_13CD337:         Set var_98 = Me.TxtGrid
  loc_13CD33D:         Call 0.Method_Proc_129_53_13CD5540 (arg_C, var_B8, var_164, var_12C)
  loc_13CD355:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_13CD35C:           var_BC = CStr(0)
  loc_13CD369:           Set var_98 = Me.TxtGrid
  loc_13CD36F:           Call 0.Method_Proc_129_53_13CD5540 (arg_C, var_B8, var_BC)
  loc_13CD377:           var_B8.Text = var_CC
  loc_13CD386:         End If
  loc_13CD393:         Set var_98 = Me.TxtGrid
  loc_13CD399:         Call 0.Method_Proc_129_53_13CD5540 (arg_C, var_B8, var_BC)
  loc_13CD3A1:         var_164 = var_B8.Text
  loc_13CD3B9:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD3D1:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13CD40B:         LateIdCallSt
  loc_13CD42F:         Call Proc_129_60_115356C(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_13CD437:       Else
  loc_13CD43E:         If (var_AC = CLng(4)) Then
  loc_13CD44B:           Set var_98 = Me.TxtGrid
  loc_13CD451:           Call 0.Method_Proc_129_53_13CD5540 (arg_C, var_B8, var_FC)
  loc_13CD469:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_13CD47D:             Set var_98 = Me.TxtGrid
  loc_13CD483:             Call 0.Method_Proc_129_53_13CD5540 (arg_C, var_B8, CStr(0))
  loc_13CD48B:             var_B8.Text = var_DC
  loc_13CD49A:           End If
  loc_13CD4A7:           Set var_98 = Me.TxtGrid
  loc_13CD4AD:           Call 0.Method_Proc_129_53_13CD5540 (arg_C, var_B8)
  loc_13CD4CD:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD4E5:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13CD51F:           LateIdCallSt
  loc_13CD543:           Call Proc_129_60_115356C(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_13CD548:         End If
  loc_13CD548:       End If
  loc_13CD548:     End If
  loc_13CD548:   End If
  loc_13CD548: End If
  loc_13CD54D: Proc_129_53_13CD554 = &HFF
End Sub

Public Sub Proc_129_54_1720970
  'Data Table: 51854C
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_518574 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_12C As String
  Dim var_190 As Variant
  Dim var_1D8 As String
  Dim var_1DC As Variant
  Dim var_128 As Variant
  Dim var_1E8 As Recordset15
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_120 As Variant
  loc_171ED80: On Error Goto loc_1720968
  loc_171ED9A: If (Me.RecordCount > 0) Then
  loc_171ED9D:   Call Proc_129_56_100A384()
  loc_171EDF8:   unk_518574.Execute CStr("Select S.* From HallBook S Where S.Docid='" & Me.Fields.Item("ContraDocId").Value & "'"), var_120, -1
  loc_171EE03:   Set var_88 = var_124
  loc_171EE57:   var_124 = var_88.Fields
  loc_171EEC0:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_171EF05:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_171EF7F:   var_128 = var_88.Fields.Item("U_AE")
  loc_171EF98:   var_120 = "entdt : "
  loc_171EFE0:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", var_120))
  loc_171EFF7:   var_190 = var_88.Fields
  loc_171F01F:   Set var_1DC = Me.LblLDt
  loc_171F025:   var_1DC.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_190.Item("U_EntDt")))))
  loc_171F060:   Set var_1E8 = var_88 
  loc_171F0A0:   Set var_124 = Me.Txt
  loc_171F0A6:   Call 0.Method_Proc_129_54_17209700 (CInt(&H22), var_128)
  loc_171F0AE:   var_128.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_171F0DE:   var_AC = var_1E8.Fields.Item("vType")
  loc_171F0E6:   var_BC = var_AC.Value
  loc_171F0EF:   var_100 = CStr(var_BC)
  loc_171F0FD:   Set var_124 = Me.Txt
  loc_171F103:   Call 0.Method_Proc_129_54_17209700 (CInt(0), var_128)
  loc_171F10B:   var_128.Tag = var_100
  loc_171F14E:   Set var_98 = Me.Txt
  loc_171F154:   Call 0.Method_Proc_129_54_17209700 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_171F175:   unk_518574.Execute var_128 & var_100 & "'", 0, var_190
  loc_171F185:    = var_128.Item()
  loc_171F18D:    = var_190.Value
  loc_171F19C:   global_132 = CStr(var_AC.Tag.Fields)
  loc_171F1EC:   Set var_98 = Me.Txt
  loc_171F1F2:   Call 0.Method_Proc_129_54_17209700 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_171F213:   unk_518574.Execute var_128 & var_100 & "'", 0, var_190
  loc_171F223:    = var_128.Item()
  loc_171F22B:    = var_190.Value
  loc_171F242:   Set var_1A4 = Me.Txt
  loc_171F248:   Call 0.Method_Proc_129_54_17209700 (CInt(0), var_1DC)
  loc_171F250:   var_1DC.Text = CStr(var_AC.Tag.Fields)
  loc_171F2B1:   Set var_124 = Me.Txt
  loc_171F2B7:   Call 0.Method_Proc_129_54_17209700 (CInt(1), var_128)
  loc_171F2BF:   var_128.Text = CStr(var_1E8.Fields.Item("VNo").Value)
  loc_171F311:   Set var_124 = Me.Txt
  loc_171F317:   Call 0.Method_Proc_129_54_17209700 (CInt(1), var_128)
  loc_171F31F:   var_128.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_171F387:   Set var_124 = Me.Txt
  loc_171F38D:   Call 0.Method_Proc_129_54_17209700 (CInt(2), var_128, CStr(Format(CVar(var_1E8.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_171F395:   var_128.Text = 1
  loc_171F3E7:   Me.LblVPrefix.Caption = CStr(var_1E8.Fields.Item("vPrefix").Value)
  loc_171F42F:   global_108 = CStr(var_1E8.Fields.Item("VTIME").Value)
  loc_171F475:   Set var_124 = Me.Txt
  loc_171F47B:   Call 0.Method_Proc_129_54_17209700 (CInt(3), var_128)
  loc_171F483:   var_128.Tag = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("PartyName")))
  loc_171F4CD:   Set var_124 = Me.Txt
  loc_171F4D3:   Call 0.Method_Proc_129_54_17209700 (CInt(&H18), var_128)
  loc_171F4DB:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuSpl1")))
  loc_171F525:   Set var_124 = Me.Txt
  loc_171F52B:   Call 0.Method_Proc_129_54_17209700 (CInt(&H19), var_128)
  loc_171F533:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuSpl2")))
  loc_171F57D:   Set var_124 = Me.Txt
  loc_171F583:   Call 0.Method_Proc_129_54_17209700 (CInt(&H1A), var_128)
  loc_171F58B:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuSpl3")))
  loc_171F5D5:   Set var_124 = Me.Txt
  loc_171F5DB:   Call 0.Method_Proc_129_54_17209700 (CInt(&H1B), var_128)
  loc_171F5E3:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuSpl4")))
  loc_171F62D:   Set var_124 = Me.Txt
  loc_171F633:   Call 0.Method_Proc_129_54_17209700 (CInt(&H2F), var_128)
  loc_171F63B:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuSpl5")))
  loc_171F685:   Set var_124 = Me.Txt
  loc_171F68B:   Call 0.Method_Proc_129_54_17209700 (CInt(&H30), var_128)
  loc_171F693:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuSpl6")))
  loc_171F6DD:   Set var_124 = Me.Txt
  loc_171F6E3:   Call 0.Method_Proc_129_54_17209700 (CInt(&H31), var_128)
  loc_171F6EB:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuSpl7")))
  loc_171F735:   Set var_124 = Me.Txt
  loc_171F73B:   Call 0.Method_Proc_129_54_17209700 (CInt(3), var_128)
  loc_171F743:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("PartyName")))
  loc_171F78D:   Set var_124 = Me.Txt
  loc_171F793:   Call 0.Method_Proc_129_54_17209700 (CInt(&H29), var_128)
  loc_171F79B:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Add1")))
  loc_171F7E5:   Set var_124 = Me.Txt
  loc_171F7EB:   Call 0.Method_Proc_129_54_17209700 (CInt(&H2A), var_128)
  loc_171F7F3:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Add2")))
  loc_171F83D:   Set var_124 = Me.Txt
  loc_171F843:   Call 0.Method_Proc_129_54_17209700 (CInt(&H2E), var_128)
  loc_171F84B:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("City")))
  loc_171F895:   Set var_124 = Me.Txt
  loc_171F89B:   Call 0.Method_Proc_129_54_17209700 (CInt(&H23), var_128)
  loc_171F8A3:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("PinCode")))
  loc_171F8ED:   Set var_124 = Me.Txt
  loc_171F8F3:   Call 0.Method_Proc_129_54_17209700 (CInt(&H2C), var_128)
  loc_171F8FB:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("PanNo")))
  loc_171F945:   Set var_124 = Me.Txt
  loc_171F94B:   Call 0.Method_Proc_129_54_17209700 (CInt(&H2D), var_128)
  loc_171F953:   var_128.Tag = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MenuCatalog")))
  loc_171F97E:   var_AC = var_1E8.Fields.Item("MenuCatalog")
  loc_171F986:   var_BC = CVar(var_AC) 'Address
  loc_171F98F:   var_100 = Proc_6_38_E68A98(var_BC)
  loc_171F9A0:   If (var_100 <> vbNullString) Then
  loc_171F9D0:     Set var_98 = Me.Txt
  loc_171F9D6:     Call 0.Method_Proc_129_54_17209700 (CInt(&H2D), var_AC, var_100, "Select Distinct Name  from CatalogMast Where Code='", var_BC, -1)
  loc_171F9F7:     unk_518574.Execute var_128 & var_100 & "'", 0, var_190
  loc_171F9FF:     var_DC = var_AC.Tag.Fields
  loc_171FA07:      = var_128.Item(1)
  loc_171FA0F:      = var_190.Value
  loc_171FA26:     Set var_1A4 = Me.Txt
  loc_171FA2C:     Call 0.Method_Proc_129_54_17209700 (CInt(&H2D), var_1DC)
  loc_171FA34:     var_1DC.Text = CStr(var_DC)
  loc_171FA5C:   End If
  loc_171FA92:   Set var_124 = Me.Txt
  loc_171FA98:   Call 0.Method_Proc_129_54_17209700 (CInt(&H2B), var_128)
  loc_171FAA0:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("ContactNo_Res")))
  loc_171FAEA:   Set var_124 = Me.Txt
  loc_171FAF0:   Call 0.Method_Proc_129_54_17209700 (CInt(4), var_128)
  loc_171FAF8:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("ContactNo_Res")))
  loc_171FB42:   Set var_124 = Me.Txt
  loc_171FB48:   Call 0.Method_Proc_129_54_17209700 (CInt(&H10), var_128)
  loc_171FB50:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("MobileNo")))
  loc_171FB9A:   Set var_124 = Me.Txt
  loc_171FBA0:   Call 0.Method_Proc_129_54_17209700 (CInt(&H1C), var_128)
  loc_171FBA8:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("HouseKeep")))
  loc_171FBF2:   Set var_124 = Me.Txt
  loc_171FBF8:   Call 0.Method_Proc_129_54_17209700 (CInt(&H1D), var_128)
  loc_171FC00:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("FrontOff")))
  loc_171FC4A:   Set var_124 = Me.Txt
  loc_171FC50:   Call 0.Method_Proc_129_54_17209700 (CInt(&H1E), var_128)
  loc_171FC58:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Engg")))
  loc_171FCA2:   Set var_124 = Me.Txt
  loc_171FCA8:   Call 0.Method_Proc_129_54_17209700 (CInt(&H17), var_128)
  loc_171FCB0:   var_128.Tag = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Func_Name")))
  loc_171FD00:   var_12C = -1 & Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_DC)
  loc_171FD07:   var_1D8 = var_128 & Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_DC) & "'"
  loc_171FD10:   unk_518574.Execute var_1D8, var_124, 
  loc_171FD1B:   Set var_8C = var_124
  loc_171FD49:   If (var_8C.RecordCount > 0) Then
  loc_171FD82:     Set var_124 = Me.Txt
  loc_171FD88:     Call 0.Method_Proc_129_54_17209700 (CInt(&H17), var_128)
  loc_171FD90:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_171FDA4:   End If
  loc_171FDDA:   Set var_124 = Me.Txt
  loc_171FDE0:   Call 0.Method_Proc_129_54_17209700 (CInt(&H1F), var_128)
  loc_171FDE8:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Security")))
  loc_171FE32:   Set var_124 = Me.Txt
  loc_171FE38:   Call 0.Method_Proc_129_54_17209700 (CInt(&H20), var_128)
  loc_171FE40:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Chef")))
  loc_171FE8A:   Set var_124 = Me.Txt
  loc_171FE90:   Call 0.Method_Proc_129_54_17209700 (CInt(&H21), var_128)
  loc_171FE98:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Board")))
  loc_171FEFE:   Set var_124 = Me.Txt
  loc_171FF04:   Call 0.Method_Proc_129_54_17209700 (CInt(&H14), var_128, CStr(Format(CVar(var_1E8.Fields.Item("ExpAtt")), "0")))
  loc_171FF0C:   var_128.Text = 1
  loc_171FF78:   Set var_124 = Me.Txt
  loc_171FF7E:   Call 0.Method_Proc_129_54_17209700 (CInt(&H15), var_128, CStr(Format(CVar(var_1E8.Fields.Item("GuarAtt")), "0")))
  loc_171FF86:   var_128.Text = 1
  loc_171FFF8:   Call 0.Method_Proc_129_54_17209700 (CInt(&H16), var_128, CStr(Format(CVar(var_1E8.Fields.Item("CoverRate")), "0.00")), 1)
  loc_1720000:   var_128.Text = 1
  loc_172001C:   Set var_1E8 = Nothing 
  loc_1720022:   var_8E = 1
  loc_1720032:   var_CC = "Select S.*,I.Name as ItemName From HallPreCosting S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode Where S.DocId='"
  loc_172007B:   unk_518574.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_1720086:   Set var_88 = Me.Txt
  loc_17200B4:   If (var_88.RecordCount > 0) Then
  loc_17200B7:     ' Referenced from: 1720460
  loc_17200C6:     If Not(var_88.EOF) Then
  loc_17200C9:       var_A8 = vbNullString
  loc_17200D3:       Set var_98 = Me.FGrid
  loc_17200E8:       Set var_1F0 = Me.FGrid
  loc_17200EF:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17200F7:       var_110 = CVar(CLng(0)) 'Long
  loc_1720127:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_172012E:       LateIdCallSt
  loc_1720148:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1720150:       var_110 = CVar(CLng(9)) 'Long
  loc_1720180:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1720187:       LateIdCallSt
  loc_17201D6:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1F0, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_17201DD:       LateIdCallSt
  loc_172020F:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1720217:       var_13C = CVar(CLng(3)) 'Long
  loc_1720244:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_172024B:       LateIdCallSt
  loc_1720281:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1720289:       var_13C = CVar(CLng(4)) 'Long
  loc_17202B6:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_17202BD:       LateIdCallSt
  loc_17202F3:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_17202FB:       var_13C = CVar(CLng(5)) 'Long
  loc_1720328:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_172032F:       LateIdCallSt
  loc_172037E:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(6)), CVar(CLng(var_8E)), var_1F0, var_120, 1, 1)) 'String
  loc_1720385:       LateIdCallSt
  loc_172039B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17203A3:       var_110 = CVar(CLng(7)) 'Long
  loc_17203D3:       var_DC = CVar(CStr(var_88.Fields.Item("ContraSNo").Value)) 'String
  loc_17203DA:       LateIdCallSt
  loc_17203F4:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17203FC:       var_110 = CVar(CLng(&HB)) 'Long
  loc_172042C:       var_DC = CVar(CStr(var_88.Fields.Item("DepartCode").Value)) 'String
  loc_1720433:       LateIdCallSt
  loc_172044B:       Set var_1F0 = Nothing 
  loc_1720455:       var_8E = (var_8E + 1)
  loc_172045B:       var_88.MoveNext
  loc_1720460:       GoTo loc_17200B7
  loc_1720463:     End If
  loc_1720476:     Me.FGrid.FixedRows = 1
  loc_172047E:   End If
  loc_172048C:   Me.FGrid.Redraw = True
  loc_172049A:   If (var_8E = 1) Then
  loc_17204B0:     Me.FGrid.Rows = 1
  loc_17204BC:     Set var_124 = Me.FGrid
  loc_17204D6:     var_BC = CVar(CStr(Proc_6_127_F24F80(var_124, CInt(0), var_8E, var_1F0, var_DC, var_110, var_CC, var_1F0))) 'String
  loc_17204DE:     Set var_AC = Me.FGrid
  loc_172050B:     Me.FGrid.FixedRows = 1
  loc_1720513:   End If
  loc_1720522:   Me.FGrid1.Redraw = False
  loc_172053D:   Me.FGrid1.Rows = 1
  loc_1720547:   var_8E = 1
  loc_1720589:   var_DC = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_17205A0:   unk_518574.Execute CStr(var_DC & "'"), var_120, -1
  loc_17205AB:   Set var_88 = var_124
  loc_17205D9:   If (var_88.RecordCount > 0) Then
  loc_17205DC:     ' Referenced from: 1720897
  loc_17205EB:     If Not(var_88.EOF) Then
  loc_17205EE:       var_A8 = vbNullString
  loc_17205F8:       Set var_98 = Me.FGrid1
  loc_1720614:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1720619:       var_EC = 0
  loc_1720627:       var_BC = CVar(CStr(var_8E)) 'String
  loc_172062E:       LateIdCallSt
  loc_172063D:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1720642:       var_110 = 6
  loc_1720676:       var_DC = CVar(CStr(var_88.Fields.Item("VenuCode").Value)) 'String
  loc_172067D:       LateIdCallSt
  loc_17206CD:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenuName")), 1, CVar(CLng(var_8E)), Me.FGrid1, var_DC, 1, CVar(CLng(var_8E)))) 'String
  loc_17206D4:       LateIdCallSt
  loc_17206EA:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17206EF:       var_110 = 2
  loc_1720723:       var_DC = CVar(CStr(var_88.Fields.Item("FromDate").Value)) 'String
  loc_172072A:       LateIdCallSt
  loc_1720744:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1720749:       var_110 = 4
  loc_172077D:       var_DC = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_1720784:       LateIdCallSt
  loc_17207BA:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_17207BF:       var_13C = 3
  loc_17207F0:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromTime")), "HH:MM"))) 'String
  loc_17207F7:       LateIdCallSt
  loc_172082D:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1720832:       var_13C = 5
  loc_1720863:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("ToTime")), "HH:MM"))) 'String
  loc_172086A:       LateIdCallSt
  loc_1720882:       Set var_1F4 = Nothing 
  loc_172088C:       var_8E = (var_8E + 1)
  loc_1720892:       var_88.MoveNext
  loc_1720897:       GoTo loc_17205DC
  loc_172089A:     End If
  loc_17208AD:     Me.FGrid1.FixedRows = 1
  loc_17208B5:   End If
  loc_17208C3:   Me.FGrid1.Redraw = True
  loc_17208D1:   If (var_8E = 1) Then
  loc_17208E7:     Me.FGrid1.Rows = 1
  loc_172090D:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, CInt(0), var_8E, var_1F4, var_120, 1, 1, var_13C))) 'String
  loc_1720915:     Set var_AC = Me.FGrid1
  loc_1720942:     Me.FGrid1.FixedRows = 1
  loc_172094A:   End If
  loc_172094D: Else
  loc_172094D:   Call Proc_129_56_100A384(FGrid1.DispID_10000, var_BC, var_EC, var_1F4, var_120)
  loc_1720952: End If
  loc_1720952: Call Proc_129_58_F26178(1, 1)
  loc_172095C: Set var_88 = Nothing
  loc_1720964: Set var_8C = Nothing
  loc_1720967: Exit Sub
  loc_1720968: ' Referenced from: 171ED80
  loc_1720968: Proc_6_60_E62BC4(var_13C)
  loc_172096D: Exit Sub
End Sub

Public Sub Proc_129_55_10C1790
  'Data Table: 51854C
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim unk_518574 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_14C As Variant
  loc_10C14CD: Set var_9C = Me.TopCtrl1
  loc_10C14D3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_10C14DB: var_B0 = CStr()
  loc_10C14EC: If (var_B0 = "Add") Then
  loc_10C151C:   Set var_9C = Me.Txt
  loc_10C1522:   Call 0.Method_Proc_129_55_10C17900 (CInt(&H22), var_B4, var_B0, "Select Count(*) From HallBook1 Where DocID='", var_AC, -1)
  loc_10C1543:   unk_518574.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_10C1553:    = var_D4.Item()
  loc_10C155B:    = var_E8.Value
  loc_10C1588:   If (var_B4.Text.Fields > 0) Then
  loc_10C1591:     Call 0.Method_arg_50 (var_B0)
  loc_10C15B2:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_10C15C8:     Call Proc_129_61_10E7B48(MemVar_1F92044)
  loc_10C15DB:     Set var_9C = Me.Txt
  loc_10C15E1:     Call 0.Method_Proc_129_55_10C17900 (CInt(&H22), var_B4)
  loc_10C15E9:     var_B4.Text = var_B0
  loc_10C15FD:     Proc_129_55_10C1790 = 0
  loc_10C1603:   End If
  loc_10C1603: End If
  loc_10C1628: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_10C1632:   var_CC = CVar(CLng(var_88)) 'Long
  loc_10C163A:   var_108 = CVar(CLng(1)) 'Long
  loc_10C165A:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_10C1676:   If CBool(var_118 <> vbNullString) Then
  loc_10C167D:     var_CC = CVar(CLng(var_88)) 'Long
  loc_10C1685:     var_108 = CVar(CLng(3)) 'Long
  loc_10C169F:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_10C16B0:     var_14C = CVar(CLng(var_88)) 'Long
  loc_10C16F0:     If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> "Food")) Then
  loc_10C1718:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_10C173E:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10C174A:       Set var_9C = Me.FGrid
  loc_10C176E:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_10C177B:       Proc_129_55_10C1790 = 0
  loc_10C1781:     End If
  loc_10C1781:   End If
  loc_10C1784: Next var_12C 'Integer
  loc_10C1789: Proc_129_55_10C1790 = 
End Sub

Public Sub Proc_129_56_100A384
  'Data Table: 51854C
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_100A179: Me.LblVPrefix.Caption = vbNullString
  loc_100A18F: Set var_8C = Me.Txt
  loc_100A195: Call 0.Method_Proc_129_56_100A384C (var_8E, var_86)
  loc_100A1A5: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_100A236:   If ((((((((((((((CInt(var_86) <> 5) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &HF)) And (CInt(var_86) <> &H11)) And (CInt(var_86) <> &H12)) And (CInt(var_86) <> &H13)) And (CInt(var_86) <> &H28)) Then
  loc_100A249:     Set var_8C = Me.Txt
  loc_100A24F:     Call 0.Method_Proc_129_56_100A3840 (CInt(var_86), var_98)
  loc_100A257:     var_98.Text = vbNullString
  loc_100A273:     Set var_8C = Me.Txt
  loc_100A279:     Call 0.Method_Proc_129_56_100A3840 (CInt(var_86), var_98)
  loc_100A281:     var_98.Tag = vbNullString
  loc_100A28D:   End If
  loc_100A290: Next var_92 'Byte
  loc_100A2A9: Me.FGrid.Rows = 1
  loc_100A2CF: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_100A2D7: Set var_98 = Me.FGrid
  loc_100A304: Me.FGrid.FixedRows = 1
  loc_100A31F: Me.FGrid1.Rows = 1
  loc_100A34B: Set var_98 = Me.FGrid1
  loc_100A378: Me.FGrid1.FixedRows = 1
  loc_100A380: Exit Sub
  loc_100A381: FGrid1.DispID_10000 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, 0, FGrid.DispID_10000)))
End Sub

Public Sub Proc_129_57_E98F18(arg_C) 'E98F18
  'Data Table: 51854C
  Dim var_90 As TextBox
  Dim var_8C As Frame
  loc_E98EA2: Set var_8C = Me.Txt
  loc_E98EA8: Call 0.Method_Proc_129_57_E98F180 (CInt(1), var_90)
  loc_E98EB0: var_90.Enabled = arg_C
  loc_E98EC9: Set var_8C = Me.Txt
  loc_E98ECF: Call 0.Method_Proc_129_57_E98F180 (CInt(&H22), var_90)
  loc_E98ED7: var_90.Enabled = False
  loc_E98EFE: If (Me.Frame1.Visible = &HFF) Then
  loc_E98F0D:   Me.Frame1.Visible = False
  loc_E98F15: End If
  loc_E98F15: Exit Sub
End Sub

Public Sub Proc_129_58_F26178
  'Data Table: 51854C
  loc_F26084: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F26096:   Me.DGVType.Visible = False
  loc_F2609E: End If
  loc_F260BA: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F260CC:   Me.DGHall.Visible = False
  loc_F260D4: End If
  loc_F260F0: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F26102:   Me.DGItem.Visible = False
  loc_F2610A: End If
  loc_F26126: If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_F26138:   Me.DGFPNo.Visible = False
  loc_F26140: End If
  loc_F2615C: If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_F2616E:   Me.DG_Catalog.Visible = False
  loc_F26176: End If
  loc_F26176: Exit Sub
End Sub

Public Sub Proc_129_59_F0C918
  'Data Table: 51854C
  loc_F0C83C: Call Proc_129_58_F26178()
  loc_F0C84C: Set var_88 = Me.Txt
  loc_F0C852: Call 0.Method_Proc_129_59_F0C9180 (CInt(2))
  loc_F0C87B: If (Proc_6_27_EA565C(var_8C, "FP Date") = 0) Then
  loc_F0C87E:   Exit Sub
  loc_F0C87F: End If
  loc_F0C88A: Set var_88 = Me.Txt
  loc_F0C890: Call 0.Method_Proc_129_59_F0C9180 (CInt(1), var_8C)
  loc_F0C8B9: If (Proc_6_27_EA565C(var_8C, "FP No") = 0) Then
  loc_F0C8BC:   Exit Sub
  loc_F0C8BD: End If
  loc_F0C8F4: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C8F7:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C8FF: Else
  loc_F0C905:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C90D:   Call var_88.SetFocus
  loc_F0C916: End If
  loc_F0C916: Exit Sub
End Sub

Public Sub Proc_129_60_115356C
  'Data Table: 51854C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_11531FB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153203: var_C8 = CVar(CLng(4)) 'Long
  loc_115323B: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153243: var_134 = CVar(CLng(3)) 'Long
  loc_115327B: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153283: var_1F0 = CVar(CLng(5)) 'Long
  loc_11532B4: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11532BC: Set var_224 = Me.FGrid
  loc_11532C2: LateIdCallSt
  loc_1153308: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153310: var_C8 = CVar(CLng(6)) 'Long
  loc_1153348: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_115335E:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153366:   var_C8 = CVar(CLng(5)) 'Long
  loc_115339E:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11533A6:   var_134 = CVar(CLng(6)) 'Long
  loc_11533DE:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11533E6:   var_1F0 = CVar(CLng(7)) 'Long
  loc_115341B:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153423:   Set var_224 = Me.FGrid
  loc_1153429:   LateIdCallSt
  loc_115345C: End If
  loc_115346F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153477: var_C8 = CVar(CLng(5)) 'Long
  loc_11534AF: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11534B7: var_134 = CVar(CLng(7)) 'Long
  loc_11534EF: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11534F7: var_1F0 = CVar(CLng(8)) 'Long
  loc_1153518: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1153528: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153530: Set var_224 = Me.FGrid
  loc_1153536: LateIdCallSt
  loc_1153569: Exit Sub
End Sub

Public Sub Proc_129_61_10E7B48
  'Data Table: 51854C
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
  loc_10E7870: var_90 = global_120
  loc_10E7887: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E78B8: Set var_A8 = Me.Txt
  loc_10E78BE: Call 0.Method_Proc_129_61_10E7B480 (CInt(6), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E78CD: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10E78D5: var_EC = -1 & var_CC 
  loc_10E78E9: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E78F4: Set var_8C = var_134
  loc_10E7930: If (var_8C.RecordCount > 0) Then
  loc_10E796F:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E79A3:     global_124 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E79CE:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E79E3:     var_CC = (var_AC.Value + 1)
  loc_10E79EB:     global_128 = CInt(var_CC)
  loc_10E79FC:   End If
  loc_10E79FC: End If
  loc_10E7A27: var_BC = Space((5 - Len(var_90)))
  loc_10E7A2F: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E7A43: var_EC = Space((5 - Len(global_124)))
  loc_10E7A4B: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E7A58: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_124))
  loc_10E7A71: var_14C = Space((8 - Len(CStr(global_128))))
  loc_10E7A79: var_15C = (var_130 + var_14C)
  loc_10E7A88: var_17C = (var_15C + CVar(CStr(global_128)))
  loc_10E7A93: global_104 = CStr(var_17C)
  loc_10E7AC9: Me.LblVPrefix.Caption = global_124
  loc_10E7AE2: Set var_A8 = Me.Txt
  loc_10E7AE8: Call 0.Method_Proc_129_61_10E7B480 (CInt(&H22), var_AC)
  loc_10E7AF0: var_AC.Text = global_104
  loc_10E7B12: Set var_A8 = Me.Txt
  loc_10E7B18: Call 0.Method_Proc_129_61_10E7B480 (CInt(5), var_AC)
  loc_10E7B20: var_AC.Text = CStr(global_128)
  loc_10E7B35: var_88 = global_104
  loc_10E7B3D: Set var_8C = Nothing
  loc_10E7B40: Proc_129_61_10E7B48 = global_128
End Sub

Public Sub Proc_129_62_10BAE78(arg_C, arg_10, arg_14) '10BAE78
  'Data Table: 51854C
  Dim unk_518574 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10BABE6: If (arg_C = "HSBK") Then
  loc_10BAC0D:   unk_518574.Execute "Select Distinct DocId,V_Type,V_No From HallBook Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10BAC18:   Set var_8C = var_C4
  loc_10BAC2B:   var_94 = "Hall Booking"
  loc_10BAC31: Else
  loc_10BAC36:   Proc_129_62_10BAE78 = &HFF
  loc_10BAC3C: End If
  loc_10BAC50: If (var_8C.RecordCount > 0) Then
  loc_10BAC53:   ' Referenced from: 10BADCC
  loc_10BAC62:   If Not(var_8C.EOF) Then
  loc_10BAC6D:     If (var_90 = vbNullString) Then
  loc_10BACB0:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10BACB7:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10BACE9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10BAD0E:     Else
  loc_10BAD4A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10BAD6A:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10BAD97:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10BAD9C:       var_90 = CStr(var_11C)
  loc_10BADC4:     End If
  loc_10BADC7:     var_8C.MoveNext
  loc_10BADCC:     GoTo loc_10BAC53
  loc_10BADCF:   End If
  loc_10BADD5:   Call 0.Method_arg_50 (var_138)
  loc_10BAE31:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10BAE34:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10BAE63:   Set var_8C = Nothing
  loc_10BAE66:   Proc_129_62_10BAE78 = 0
  loc_10BAE6C: End If
  loc_10BAE71: Proc_129_62_10BAE78 = &HFF
End Sub

Public Sub Proc_129_63_FBC268
  'Data Table: 51854C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  Dim var_2B02 As Integer
  loc_FBC0EB: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBC0F0:   var_92 = 1 'Byte
  loc_FBC0F4: End If
  loc_FBC0FD: Set var_98 = Me.TxtGrid
  loc_FBC103: Call 0.Method_Proc_129_63_FBC2680 (0, var_B0)
  loc_FBC126: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBC15A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBC17E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBC181:     GoTo loc_FBC253
  loc_FBC184:   End If
  loc_FBC188:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBC1B2:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBC1BC:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBC1F1:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBC215:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBC22E:     Set var_98 = Me.TxtGrid
  loc_FBC234:     Call 0.Method_Proc_129_63_FBC2680 (0, var_B0, CVar(CLng(var_92)))
  loc_FBC23C:     var_B0.SetFocus
  loc_FBC24D:     Proc_129_63_FBC268 = 0
  loc_FBC253:     ' Referenced from: FBC181
  loc_FBC253:   End If
  loc_FBC256: Next var_D4 'Integer
  loc_FBC260: Proc_129_63_FBC268 = &HFF
  loc_FBC266: var_2B02 = 
End Sub
