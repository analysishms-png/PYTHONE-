VERSION 5.00
Begin VB.Form RsSaleBillSplit
  Caption = "Split Sale Bill"
  BackColor = &HE0E0E0&
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
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 12150
  ClientHeight = 8520
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12150
    Height = 450
    TabIndex = 57
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 9765
    Top = 465
    Width = 375
    Height = 285
    TabIndex = 26
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
    Index = 0
    ForeColor = &HC00000&
    Left = 4245
    Top = 450
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
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFF8080&
    Left = 8130
    Top = 780
    Width = 8610
    Height = 2610
    TabIndex = 39
    BorderStyle = 0 'None
    Begin TextBox TxtTable3
      Left = 7260
      Top = 2325
      Width = 750
      Height = 240
      Visible = 0   'False
      TabIndex = 54
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
    Begin TextBox TxtTable2
      Left = 4410
      Top = 2310
      Width = 720
      Height = 240
      Visible = 0   'False
      TabIndex = 52
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
    Begin TextBox TxtTable1
      Left = 1470
      Top = 2325
      Width = 750
      Height = 240
      Visible = 0   'False
      TabIndex = 50
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
    Begin TextBox TxtGt3
      Index = 1
      Left = 7380
      Top = 420
      Width = 1170
      Height = 240
      Enabled = 0   'False
      TabIndex = 42
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin TextBox TxtGt2
      Index = 1
      Left = 4515
      Top = 420
      Width = 1185
      Height = 240
      Enabled = 0   'False
      TabIndex = 41
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin TextBox TxtGt1
      Index = 1
      Left = 1605
      Top = 420
      Width = 1185
      Height = 240
      Enabled = 0   'False
      TabIndex = 40
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin Shape Shape3
      BorderColor = &HC00000&
      Left = 2850
      Top = 0
      Width = 2925
      Height = 2610
    End
    Begin Label Label1
      Caption = "Table No."
      Index = 9
      ForeColor = &HFFFF&
      Left = 5895
      Top = 2325
      Width = 840
      Height = 210
      Visible = 0   'False
      TabIndex = 55
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
      Caption = "Table No."
      Index = 8
      ForeColor = &HFFFF&
      Left = 2970
      Top = 2340
      Width = 840
      Height = 210
      Visible = 0   'False
      TabIndex = 53
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
      Caption = "Table No."
      Index = 7
      ForeColor = &HFFFF&
      Left = 90
      Top = 2325
      Width = 840
      Height = 210
      Visible = 0   'False
      TabIndex = 51
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
    Begin Line Line2
      X1 = 30
      Y1 = 270
      X2 = 8610
      Y2 = 270
    End
    Begin Shape Shape2
      BorderColor = &HC00000&
      Left = 0
      Top = 0
      Width = 8610
      Height = 2610
    End
    Begin Label Label2
      Caption = "                   Bill 1                                         Bill 2                                       BIll 3         "
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 15
      Width = 8610
      Height = 270
      TabIndex = 49
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
    Begin Label LblCap3
      Caption = "Total"
      Index = 1
      ForeColor = &HC00000&
      Left = 5835
      Top = 420
      Width = 480
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
    Begin Label LblDummy3
      Caption = "Label2"
      Index = 1
      ForeColor = &HC00000&
      Left = 5775
      Top = 735
      Width = 180
      Height = 210
      Visible = 0   'False
      TabIndex = 47
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
    Begin Label LblCap2
      Caption = "Total"
      Index = 1
      ForeColor = &HC00000&
      Left = 2925
      Top = 420
      Width = 480
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
    Begin Label LblDummy2
      Caption = "Label2"
      Index = 1
      ForeColor = &HC00000&
      Left = 2835
      Top = 720
      Width = 180
      Height = 210
      Visible = 0   'False
      TabIndex = 45
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
    Begin Label LblCap1
      Caption = "Total"
      Index = 1
      ForeColor = &HC00000&
      Left = 75
      Top = 420
      Width = 480
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
    Begin Label LblDummy1
      Caption = "Label2"
      Index = 1
      ForeColor = &HC00000&
      Left = -30
      Top = 735
      Width = 180
      Height = 210
      Visible = 0   'False
      TabIndex = 43
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
  End
  Begin CommandButton CmdSave
    Caption = "&Save"
    Left = 9105
    Top = 10350
    Width = 1530
    Height = 420
    Visible = 0   'False
    TabIndex = 11
  End
  Begin CommandButton Command2
    Caption = "&Print"
    Left = 10635
    Top = 10350
    Width = 1560
    Height = 420
    Visible = 0   'False
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC00000&
    Left = 9405
    Top = 8385
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 37
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
  Begin DataGrid DGRest
    Left = 15960
    Top = 8265
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGItem
    Left = 14595
    Top = 8625
    Width = 4095
    Height = 5400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin TextBox Txt
    Index = 9
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 35
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
  Begin MSHFlexGrid FGCat
    Left = -45
    Top = 7575
    Width = 8655
    Height = 1230
    Visible = 0   'False
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 8
    Left = 10560
    Top = 10020
    Width = 1425
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    Left = 10560
    Top = 9720
    Width = 1425
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    Left = 10560
    Top = 9420
    Width = 1425
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGTable
    Left = 11325
    Top = 6450
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin CommandButton Command1
    Caption = "Set&tlement"
    Left = 9105
    Top = 10770
    Width = 3090
    Height = 420
    Visible = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 6630
    Top = 450
    Width = 480
    Height = 285
    TabIndex = 24
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HC00000&
    Left = 9915
    Top = 3630
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HC00000&
    Left = 9375
    Top = 3630
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 3
    ForeColor = &HC00000&
    Left = 8145
    Top = 450
    Width = 870
    Height = 285
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
  Begin Frame FrmList
    Left = 12285
    Top = 9495
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 90
      Width = 2415
      Height = 1800
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &H80000000&
    Left = 8580
    Top = 8925
    Width = 2325
    Height = 210
    Visible = 0   'False
    TabIndex = 2
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
    Index = 1
    ForeColor = &HC00000&
    Left = 5475
    Top = 450
    Width = 1125
    Height = 285
    TabIndex = 0
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 255
    Top = 2205
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 4
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
    Left = -30
    Top = 780
    Width = 7785
    Height = 7470
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 15765
    Top = 6255
    Width = 1965
    Height = 1440
    Visible = 0   'False
    TabIndex = 34
  End
  Begin Label Label1
    Caption = "Covers"
    Index = 0
    ForeColor = &HC00000&
    Left = 9060
    Top = 495
    Width = 645
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
    Caption = "Table No."
    Index = 2
    ForeColor = &HC00000&
    Left = 7200
    Top = 465
    Width = 915
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 255
    Top = 465
    Width = 2940
    Height = 285
    TabIndex = 25
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Bill No."
    Index = 3
    ForeColor = &HC00000&
    Left = 3525
    Top = 480
    Width = 690
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
  End
  Begin Label Label3
    BackColor = &HFFFFFF&
    Left = 75
    Top = 450
    Width = 13980
    Height = 300
    TabIndex = 56
  End
  Begin Label lblTable
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 8700
    Top = 5640
    Width = 8325
    Height = 465
    Visible = 0   'False
    TabIndex = 38
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 7500
    Top = 9675
    Width = 1665
    Height = 330
    Visible = 0   'False
    TabIndex = 36
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HC00000&
    Left = 8055
    Top = 3930
    Width = 825
    Height = 210
    Visible = 0   'False
    TabIndex = 30
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
  Begin Label Label1
    Caption = "  To Refund    "
    Index = 6
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 9255
    Top = 10005
    Width = 2790
    Height = 270
    Visible = 0   'False
    TabIndex = 29
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Tip Amount  "
    Index = 5
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 9255
    Top = 9705
    Width = 2790
    Height = 270
    Visible = 0   'False
    TabIndex = 28
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Cash Recd.             "
    Index = 4
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 9255
    Top = 9405
    Width = 2790
    Height = 270
    Visible = 0   'False
    TabIndex = 27
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 9750
    Top = 3630
    Width = 150
    Height = 240
    Visible = 0   'False
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HC00000&
    Left = 8100
    Top = 3630
    Width = 480
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 10380
    Top = 7860
    Width = 435
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Left = 10620
    Top = 9000
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 14
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
  Begin Shape Shape1
    BorderColor = &HC0C0FF&
    Left = 9120
    Top = 9330
    Width = 3060
    Height = 1035
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
End

Attribute VB_Name = "RsSaleBillSplit"

Private global_156 As Integer
Private global_158 As Integer
Private global_128 As Integer
Private global_108 As Integer

Private Sub TxtGt1_GotFocus(Index As Integer) 'EC949C
  'Data Table: 586140
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_EC9402: Set var_88 = Me.TxtGt1
  loc_EC9408: Call 0.Method_TxtGt1_GotFocus0 (Index)
  loc_EC9416: Proc_6_74_E226B0(var_8C)
  loc_EC9431: Set var_88 = Me.TxtGt1
  loc_EC9437: Call 0.Method_TxtGt1_GotFocus0 (Index, var_8C)
  loc_EC943F: var_8C.SelStart = 0
  loc_EC9458: Set var_88 = Me.TxtGt1
  loc_EC945E: Call 0.Method_TxtGt1_GotFocus0 (Index, var_8C)
  loc_EC9479: Set var_90 = Me.TxtGt1
  loc_EC947F: Call 0.Method_TxtGt1_GotFocus0 (Index, var_98)
  loc_EC9487: var_98.SelLength = Len(var_8C.Text)
  loc_EC949A: Exit Sub
End Sub

Private Sub TxtGt1_KeyDown(KeyCode As Integer, Shift As Integer) 'E5AA18
  'Data Table: 586140
  loc_E5A9E5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A9EE:   Proc_6_75_E527CC(Shift)
  loc_E5A9F3: End If
  loc_E5AA08: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5AA11:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5AA16: End If
  loc_E5AA16: Exit Sub
End Sub

Private Sub TxtGt1_KeyPress(KeyAscii As Integer) 'E57A0C
  'Data Table: 586140
  loc_E579DE: Set var_88 = Me.TxtGt1
  loc_E579E4: Call 0.Method_TxtGt1_KeyPress0 (KeyAscii)
  loc_E579FF: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E57A0B: Exit Sub
End Sub

Private Sub TxtGt1_LostFocus(Index As Integer) 'ED1220
  'Data Table: 586140
  Dim var_D4 As TextBox
  loc_ED118A: Set var_88 = Me.TxtGt1
  loc_ED1190: Call 0.Method_TxtGt1_LostFocus0 (Index)
  loc_ED11CA: Set var_D0 = Me.TxtGt1
  loc_ED11D0: Call 0.Method_TxtGt1_LostFocus0 (Index, var_D4, CStr(Format(CVar(var_8C), "0.00")))
  loc_ED11D8: var_D4.Text = 1
  loc_ED11FC: Set var_88 = Me.TxtGt1
  loc_ED1202: Call 0.Method_TxtGt1_LostFocus0 (Index, var_8C)
  loc_ED1210: Proc_6_73_E22704(var_8C, 1)
  loc_ED121C: Exit Sub
End Sub

Private Sub TxtGt1_Validate(Cancel As Boolean) 'E04FC0
  'Data Table: 586140
  loc_E04FB7: Call Proc_162_111_129A24C(CInt(&H1D))
  loc_E04FBC: Exit Sub
End Sub

Private Sub Command2_Click() 'E1E910
  'Data Table: 586140
  loc_E1E8F4: Call TopCtrl1_UnknownEvent_14()
  loc_E1E8FD: Set var_88 = Me.FGrid
  loc_E1E90E: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86938
  'Data Table: 586140
  loc_E868E4: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E868E7:   Call DGTable_UnknownEvent_9()
  loc_E868EC: End If
  loc_E86908: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E8690B:   Call DGItem_UnknownEvent_9()
  loc_E86910: End If
  loc_E8692C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E8692F:   Call DGRest_UnknownEvent_9()
  loc_E86934: End If
  loc_E86934: Exit Sub
  loc_E86935: CExtInstUnk
End Sub

Private Sub Command1_Click() 'F9E170
  'Data Table: 586140
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_F0 As Double
  loc_F9E03E: Set var_88 = Me.Txt
  loc_F9E044: Call 0.Method_Command1_Click0 (CInt(3), var_8C)
  loc_F9E05F: Set var_94 = Me.Txt
  loc_F9E065: Call 0.Method_Command1_Click0 (CInt(2), var_98)
  loc_F9E080: Set var_9C = Me.Txt
  loc_F9E086: Call 0.Method_Command1_Click0 (CInt(3), var_A0)
  loc_F9E09A: Set var_A4 = Me.TxtGt
  loc_F9E0A0: Call 0.Method_Command1_Click8 (var_A6)
  loc_F9E0B2: Set var_AC = Me.TxtGt
  loc_F9E0B8: Call 0.Method_Command1_Click0 (var_A6, var_B0)
  loc_F9E0CD: var_F0 = Val(var_B0.Text)
  loc_F9E0D5: var_E8 = 0
  loc_F9E0E0: var_E4 = 0
  loc_F9E0EB: var_E0 = 0
  loc_F9E140: Proc_6_131_FAD2A0(1, 5, global_144, var_8C.Tag, var_98.Text, 0, var_A0.Text, global_148)
  loc_F9E16D: Exit Sub
End Sub

Private Sub TxtGt3_GotFocus(Index As Integer) 'EC9CC4
  'Data Table: 586140
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_EC9C2A: Set var_88 = Me.TxtGt3
  loc_EC9C30: Call 0.Method_TxtGt3_GotFocus0 (Index)
  loc_EC9C3E: Proc_6_74_E226B0(var_8C)
  loc_EC9C59: Set var_88 = Me.TxtGt3
  loc_EC9C5F: Call 0.Method_TxtGt3_GotFocus0 (Index, var_8C)
  loc_EC9C67: var_8C.SelStart = 0
  loc_EC9C80: Set var_88 = Me.TxtGt3
  loc_EC9C86: Call 0.Method_TxtGt3_GotFocus0 (Index, var_8C)
  loc_EC9CA1: Set var_90 = Me.TxtGt3
  loc_EC9CA7: Call 0.Method_TxtGt3_GotFocus0 (Index, var_98)
  loc_EC9CAF: var_98.SelLength = Len(var_8C.Text)
  loc_EC9CC2: Exit Sub
End Sub

Private Sub TxtGt3_KeyDown(KeyCode As Integer, Shift As Integer) 'E59758
  'Data Table: 586140
  loc_E59725: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5972E:   Proc_6_75_E527CC(Shift)
  loc_E59733: End If
  loc_E59748: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E59751:   Proc_6_76_E52838(Shift, arg_14)
  loc_E59756: End If
  loc_E59756: Exit Sub
End Sub

Private Sub TxtGt3_KeyPress(KeyAscii As Integer) 'E57088
  'Data Table: 586140
  loc_E5705A: Set var_88 = Me.TxtGt3
  loc_E57060: Call 0.Method_TxtGt3_KeyPress0 (KeyAscii)
  loc_E5707B: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E57087: Exit Sub
End Sub

Private Sub TxtGt3_LostFocus(Index As Integer) 'ED0E60
  'Data Table: 586140
  Dim var_D4 As TextBox
  loc_ED0DCA: Set var_88 = Me.TxtGt3
  loc_ED0DD0: Call 0.Method_TxtGt3_LostFocus0 (Index)
  loc_ED0E0A: Set var_D0 = Me.TxtGt3
  loc_ED0E10: Call 0.Method_TxtGt3_LostFocus0 (Index, var_D4, CStr(Format(CVar(var_8C), "0.00")))
  loc_ED0E18: var_D4.Text = 1
  loc_ED0E3C: Set var_88 = Me.TxtGt3
  loc_ED0E42: Call 0.Method_TxtGt3_LostFocus0 (Index, var_8C)
  loc_ED0E50: Proc_6_73_E22704(var_8C, 1)
  loc_ED0E5C: Exit Sub
End Sub

Private Sub TxtGt3_Validate(Cancel As Boolean) 'E05500
  'Data Table: 586140
  loc_E054F7: Call Proc_162_111_129A24C(CInt(&H1F))
  loc_E054FC: Exit Sub
  loc_E054FE: CExtInstUnk
End Sub

Private Sub TxtGt2_GotFocus(Index As Integer) 'EC9584
  'Data Table: 586140
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_EC94EA: Set var_88 = Me.TxtGt2
  loc_EC94F0: Call 0.Method_TxtGt2_GotFocus0 (Index)
  loc_EC94FE: Proc_6_74_E226B0(var_8C)
  loc_EC9519: Set var_88 = Me.TxtGt2
  loc_EC951F: Call 0.Method_TxtGt2_GotFocus0 (Index, var_8C)
  loc_EC9527: var_8C.SelStart = 0
  loc_EC9540: Set var_88 = Me.TxtGt2
  loc_EC9546: Call 0.Method_TxtGt2_GotFocus0 (Index, var_8C)
  loc_EC9561: Set var_90 = Me.TxtGt2
  loc_EC9567: Call 0.Method_TxtGt2_GotFocus0 (Index, var_98)
  loc_EC956F: var_98.SelLength = Len(var_8C.Text)
  loc_EC9582: Exit Sub
End Sub

Private Sub TxtGt2_KeyDown(KeyCode As Integer, Shift As Integer) 'E598C0
  'Data Table: 586140
  loc_E5988D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E59896:   Proc_6_75_E527CC(Shift)
  loc_E5989B: End If
  loc_E598B0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E598B9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E598BE: End If
  loc_E598BE: Exit Sub
End Sub

Private Sub TxtGt2_KeyPress(KeyAscii As Integer) 'E573B4
  'Data Table: 586140
  loc_E57386: Set var_88 = Me.TxtGt2
  loc_E5738C: Call 0.Method_TxtGt2_KeyPress0 (KeyAscii)
  loc_E573A7: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E573B3: Exit Sub
End Sub

Private Sub TxtGt2_LostFocus(Index As Integer) 'ED0F50
  'Data Table: 586140
  Dim var_D4 As TextBox
  loc_ED0EBA: Set var_88 = Me.TxtGt2
  loc_ED0EC0: Call 0.Method_TxtGt2_LostFocus0 (Index)
  loc_ED0EFA: Set var_D0 = Me.TxtGt2
  loc_ED0F00: Call 0.Method_TxtGt2_LostFocus0 (Index, var_D4, CStr(Format(CVar(var_8C), "0.00")))
  loc_ED0F08: var_D4.Text = 1
  loc_ED0F2C: Set var_88 = Me.TxtGt2
  loc_ED0F32: Call 0.Method_TxtGt2_LostFocus0 (Index, var_8C)
  loc_ED0F40: Proc_6_73_E22704(var_8C, 1)
  loc_ED0F4C: Exit Sub
End Sub

Private Sub TxtGt2_Validate(Cancel As Boolean) 'E05180
  'Data Table: 586140
  loc_E05177: Call Proc_162_111_129A24C(CInt(&H1E))
  loc_E0517C: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECC678
  'Data Table: 586140
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECC5DA: Set var_88 = Me.TxtGt
  loc_ECC5E0: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECC5EE: Proc_6_74_E226B0(var_8C)
  loc_ECC5FA: Call Proc_162_93_EF7914(var_8C)
  loc_ECC60E: Set var_88 = Me.TxtGt
  loc_ECC614: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECC61C: var_8C.SelStart = 0
  loc_ECC635: Set var_88 = Me.TxtGt
  loc_ECC63B: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECC656: Set var_90 = Me.TxtGt
  loc_ECC65C: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECC664: var_98.SelLength = Len(var_8C.Text)
  loc_ECC677: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E59A28
  'Data Table: 586140
  loc_E599F5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E599FE:   Proc_6_75_E527CC(Shift)
  loc_E59A03: End If
  loc_E59A18: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E59A21:   Proc_6_76_E52838(Shift, arg_14)
  loc_E59A26: End If
  loc_E59A26: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E57510
  'Data Table: 586140
  loc_E574E2: Set var_88 = Me.TxtGt
  loc_E574E8: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E57503: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E5750F: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E46D6C
  'Data Table: 586140
  loc_E46D4A: Set var_88 = Me.TxtGt
  loc_E46D50: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E46D5E: Proc_6_73_E22704(var_8C)
  loc_E46D6A: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E0161C
  'Data Table: 586140
  loc_E01616: Call Proc_162_101_16A66F0(Cancel)
  loc_E0161B: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECCCEC
  'Data Table: 586140
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECCC4E: Set var_88 = Me.TxtPer
  loc_ECCC54: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECCC62: Proc_6_74_E226B0(var_8C)
  loc_ECCC6E: Call Proc_162_93_EF7914(var_8C)
  loc_ECCC82: Set var_88 = Me.TxtPer
  loc_ECCC88: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECCC90: var_8C.SelStart = 0
  loc_ECCCA9: Set var_88 = Me.TxtPer
  loc_ECCCAF: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECCCCA: Set var_90 = Me.TxtPer
  loc_ECCCD0: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECCCD8: var_98.SelLength = Len(var_8C.Text)
  loc_ECCCEB: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E59140
  'Data Table: 586140
  loc_E5910D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E59116:   Proc_6_75_E527CC(Shift)
  loc_E5911B: End If
  loc_E59130: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E59139:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5913E: End If
  loc_E5913E: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E559E0
  'Data Table: 586140
  loc_E559B2: Set var_88 = Me.TxtPer
  loc_E559B8: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E559D3: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E559DF: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E008FC
  'Data Table: 586140
  loc_E008F6: Call Proc_162_101_16A66F0(KeyCode)
  loc_E008FB: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E45F9C
  'Data Table: 586140
  loc_E45F7A: Set var_88 = Me.TxtPer
  loc_E45F80: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E45F8E: Proc_6_73_E22704(var_8C)
  loc_E45F9A: Exit Sub
End Sub

Private Sub Form_Load() '1453178
  'Data Table: 586140
  Dim var_A8 As String
  Dim var_B8 As Variant
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As String
  Dim unk_586207 As Connection15
  Dim var_CC As Variant
  Dim unk_58616C As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Variant
  Dim var_E0 As Variant
  Dim var_EC As Variant
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_144 As Variant
  Dim var_104 As Variant
  Dim var_174 As String
  loc_1452634: On Error Goto loc_145316F
  loc_145263B: Set var_94 = Me.TopCtrl1
  loc_1452641: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B()
  loc_145266B: var_B8 = CVar(Replace(CStr(var_A4), "E", "*", 1, -1, 0)) 'String
  loc_1452673: Set var_CC = Me.TopCtrl1
  loc_1452679: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_B8)
  loc_14526C4: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), Proc_96_17_FDBD80(global_60, global_212, 0))
  loc_14526DF: Proc_6_23_DFBA28(Me, 0, 0)
  loc_14526F5: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_14526FD: Call Proc_162_79_143D5F8(global_216)
  loc_145270F: Set var_94 = Me.FGrid
  loc_1452715: var_94.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1452744: unk_586207.Execute "Select * from PrinterSetup where RestCode='" & global_60 & "'", var_A4, -1
  loc_1452755: Set global_192 = var_94
  loc_1452775: If (global_212 = "Room Service") Then
  loc_1452784:   Me.Command1.Visible = False
  loc_145279D:   Call 0.Method_Form_Load0 (4, var_CC, 0)
  loc_14527A5:   var_CC.Visible = Me.Label1
  loc_14527BC:   Set var_94 = Me.Label1
  loc_14527C2:   Call 0.Method_Form_Load0 (5, var_CC)
  loc_14527CA:   var_CC.Visible = False
  loc_14527E1:   Set var_94 = Me.Label1
  loc_14527E7:   Call 0.Method_Form_Load0 (6, var_CC)
  loc_14527EF:   var_CC.Visible = False
  loc_1452806:   Set var_94 = Me.Txt
  loc_145280C:   Call 0.Method_Form_Load0 (6, var_CC)
  loc_1452814:   var_CC.Visible = False
  loc_145282B:   Set var_94 = Me.Txt
  loc_1452831:   Call 0.Method_Form_Load0 (7, var_CC)
  loc_1452839:   var_CC.Visible = False
  loc_1452850:   Set var_94 = Me.Txt
  loc_1452856:   Call 0.Method_Form_Load0 (8, var_CC)
  loc_145285E:   var_CC.Visible = False
  loc_1452876:   Me.Shape1.Visible = False
  loc_145287E: End If
  loc_1452884: If (MemVar_1F920B8 <> 1) Then
  loc_145288B:   Set var_94 = Me.TopCtrl1
  loc_1452891:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(global_224)
  loc_14528BB:   var_B8 = CVar(Replace(CStr(var_A4), "D", "*", 1, -1, 0)) 'String
  loc_14528C3:   Set var_CC = Me.TopCtrl1
  loc_14528C9:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_B8)
  loc_14528DF: End If
  loc_1452906: unk_58616C.Execute "Select RateInclTax from depart where code='" & global_60 & "'", var_A4, -1
  loc_1452911: Set var_8C = var_94
  loc_1452935: If (var_8C.RecordCount > 0) Then
  loc_145294F:   var_CC = var_8C.Fields.Item("RateInclTax")
  loc_1452957:   var_A4 = CVar(var_CC) 'Address
  loc_1452969:   global_136 = Proc_6_38_E68A98(var_A4)
  loc_1452975: End If
  loc_145297A: Set var_8C = Nothing
  loc_1452983: var_E0 = 0
  loc_14529B3: unk_58616C.Execute "Select KOtYn from depart where Code='" & global_60 & "'", var_A4, -1
  loc_14529BB: var_94 = var_94.Fields
  loc_14529C3: var_E0 = var_CC.Item(var_CC)
  loc_14529CB: var_EC = var_EC.Value
  loc_14529DA: global_200 = CStr(var_B8)
  loc_14529FD: var_E0 = 0
  loc_1452A2D: unk_58616C.Execute "Select AutoSplit from depart where Code='" & global_60 & "'", var_A4, -1
  loc_1452A3D: var_E0 = var_CC.Item(var_CC)
  loc_1452A45: var_EC = var_EC.Value
  loc_1452A58: global_196 = Proc_6_38_E68A98(var_B8, var_B8)
  loc_1452A9C: unk_58616C.Execute "Select ShortName,Code from Depart Where Code='" & global_60 & "'", var_A4, -1
  loc_1452AA7: Set var_88 = var_94.Fields
  loc_1452ACB: If (var_88.RecordCount > 0) Then
  loc_1452AFF:   global_216 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_1452B2A:   var_CC = var_88.Fields.Item("Code")
  loc_1452B32:   var_A4 = var_CC.Value
  loc_1452B41:   global_220 = CStr(var_A4)
  loc_1452B52: End If
  loc_1452B6E: Me.CursorLocation = 3
  loc_1452B96: Me.Open "SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where OutletYN='Y' ORDER BY NAME", CVar(MemVar_1F92044), 3
  loc_1452BA4: CVarUnk
  loc_1452BA9: VerifyVarObj
  loc_1452BB5: LateIdStAd
  loc_1452BC3: Call Proc_162_99_114AB8C(Me.DGRest, New, 1, -1)
  loc_1452BCE: var_E0 = 0
  loc_1452BFE: unk_58616C.Execute "Select Name From Depart Where Code ='" & global_60 & "'", var_A4, -1
  loc_1452C06: var_94 = var_94.Fields
  loc_1452C0E: var_E0 = var_CC.Item(var_CC)
  loc_1452C16: var_EC = var_EC.Value
  loc_1452C2C: Me.LblRest.Caption = CStr(var_B8)
  loc_1452C56: Set global_92 = New 
  loc_1452C68: Me.Recordset15.CursorLocation = 3
  loc_1452C78: Proc_6_7_F25D88(var_A4, MemVar_1F920EC, var_B8)
  loc_1452C83: var_144 = 0
  loc_1452CA3: var_E4 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_1452CB3: unk_58616C.Execute "Select Name From Depart Where Code ='" & global_60 & "'" & "'", var_134, -1
  loc_1452CBB: var_94 = var_94.Fields
  loc_1452CC3: var_144 = var_CC.Item(var_CC)
  loc_1452CCB: var_EC = var_EC.Value
  loc_1452CEE: var_A8 = "Select S.DocId as SearchCode,S.DocID From Sale1 S INNER JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE WHERE S.LOGSITE_CODE='" & MemVar_1F92078
  loc_1452CF5: var_B8 = CVar(var_A8 & "' AND S.VDate=") 'String
  loc_1452D65: Me.Recordset15.CursorLocation = 3
  loc_1452D88: var_A8 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax From ((ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code) INNER Join Depart D On D.Code=I.RestCode) INNER join ItemCatMast IC on IC.Code=I.ItemCatCode Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1452D8F: var_A4 = CVar(var_A8 & "' or I.LOGSITE_CODE='HO') AND I.Type='Finish' And I.DispCode <>9999 Order by I.Name") 'String
  loc_1452D99: r_B8 & var_A4 & " And S.DELFLAG='N' AND S.VTYPE='" & var_154 & "' ORDER BY S.DOCID", CVar(MemVar_1F92044), 3 var_A4, CVar(MemVar_1F92044), 3
  loc_1452DAD: CVarUnk
  loc_1452DB2: VerifyVarObj
  loc_1452DB8: Set var_94 = Me.DGItem
  loc_1452DBE: LateIdStAd
  loc_1452DFF: Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_60 & "'", "SELECT COUNT(*) FROM LASTVOU WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' AND ENAME='", var_A4, -1, var_94, var_CC, 0, var_EC)
  loc_1452E26: unk_58616C.Execute var_B8 & "Select Name From Depart Where Code ='" & global_60 & "'" & "' AND UNAME='" & MemVar_1F920C8 & "'", var_94, New
  loc_1452E2E: 1 = var_94.Fields
  loc_1452E36: 1 = var_CC.Item(-1)
  loc_1452E3E: -1 = var_EC.Value
  loc_1452E6F: If (var_B8 > 0) Then
  loc_1452EB8:   Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_60 & "'", "SELECT DOCID FROM LASTVOU WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' AND ENAME='", var_A4, -1, var_94, var_CC, 0)
  loc_1452EDF:   unk_58616C.Execute var_EC & "Select Name From Depart Where Code ='" & global_60 & "'" & "' AND UNAME='" & MemVar_1F920C8 & "'", var_B8, "SearchCode='"
  loc_1452EE7:   0 = var_94.Fields
  loc_1452EEF:   var_174 = var_CC.Item(1)
  loc_1452EF7:    = var_EC.Value
  loc_1452F16:   Me.Find CStr(var_B8 & "'"), , 
  loc_1452F42: End If
  loc_1452F59: If (Me.RecordCount > 0) Then
  loc_1452F70:   If (Me.EOF = &HFF) Then
  loc_1452F79:     Me.MoveLast
  loc_1452F7E:   End If
  loc_1452F7E: End If
  loc_1452F87: Call 0.Method_arg_160 (var_94)
  loc_1452F95: Call 0.Method_arg_164 (var_94)
  loc_1452FC0: Call Proc_162_92_100626C(Proc_5_1_100CB50("INI", Me))
  loc_1452FED: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1453041: var_C8 = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_1453050: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_145308B: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_14530BC: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_14530D5: var_B8 = Me.FGrid.Width
  loc_14530E8: var_104 = Me.DGRest.Width
  loc_1453110: var_C8 = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_B8) - CDbl(var_104)))) 'Single
  loc_145311F: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_145315A: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1453169: Call Proc_162_89_1B40DBC(var_104, var_B8, var_104)
  loc_145316E: Exit Sub
  loc_145316F: ' Referenced from: 1452634
  loc_145316F: Proc_6_60_E62BC4(var_B8)
  loc_1453174: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E87D20
  'Data Table: 586140
  loc_E87CB3: Set global_84 = Nothing
  loc_E87CC5: Set global_80 = Nothing
  loc_E87CD7: Set global_96 = Nothing
  loc_E87CF1: Set global_84 = Nothing
  loc_E87D03: Set global_192 = Nothing
  loc_E87D15: Set global_52 = Nothing
  loc_E87D1C: Exit Sub
  loc_E87D1E: var_3790 = CStr(0)
End Sub

Private Sub Form_Activate() '10698E0
  'Data Table: 586140
  Dim var_A4 As Integer
  Dim var_B0 As String
  Dim unk_58616C As Connection15
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_AC As Recordset15
  loc_106967F: Set var_A8 = Me.TopCtrl1
  loc_1069685: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_1069697: Set var_A8 = Me.TopCtrl1
  loc_106969D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_10696B0: Set var_A8 = Me.TopCtrl1
  loc_10696B6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_10696C8: Set var_A8 = Me.TopCtrl1
  loc_10696CE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000F(True)
  loc_10696EE: var_A4 = 0
  loc_106970E: var_B0 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_106971E: unk_58616C.Execute var_B0 & "'", var_C4, -1
  loc_1069726: var_A8 = var_A8.Fields
  loc_106972E: var_A4 = var_C8.Item(var_C8)
  loc_1069736: var_CC = var_CC.Value
  loc_106973E: var_FC = var_DC & var_DC 
  loc_1069747: var_11C = var_FC & "' Order by Description" 
  loc_1069755: unk_58616C.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_1069760: Set var_AC = var_144
  loc_1069798: If (var_AC.RecordCount > 0) Then
  loc_10697B5:   var_C8 = var_AC.Fields.Item(0)
  loc_10697CC:   global_144 = CStr(var_C8.Value)
  loc_10697E0: Else
  loc_10697F3:   var_C4 = "Point of Sale Not Configured for selected Restaurant"
  loc_10697F9:   MsgBox(var_C4, 0, var_DC, var_FC, var_11C)
  loc_1069816:   Me.Global.Unload Me
  loc_106981E:   Exit Sub
  loc_106981F: End If
  loc_1069825: var_A4 = 0
  loc_1069855: unk_58616C.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_144 & "'", var_C4, -1
  loc_106985D: var_A8 = var_A8.Fields
  loc_1069865: var_A4 = var_C8.Item(var_C8)
  loc_106986D: var_CC = var_CC.Value
  loc_1069894: If (var_DC <= 0) Then
  loc_10698B0:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_10698CD:   Me.Global.Unload Me
  loc_10698D5:   Exit Sub
  loc_10698D6: End If
  loc_10698DB: Set var_AC = Nothing
  loc_10698DE: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26674
  'Data Table: 586140
  loc_E26659: If (global_56 = &HFF) Then
  loc_E26669:   Me.Global.Unload Me
  loc_E26671: End If
  loc_E26671: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3AB78
  'Data Table: 586140
  loc_E3AB4C: On Error Goto loc_E3AB70
  loc_E3AB67: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3AB6F: Exit Sub
  loc_E3AB70: ' Referenced from: E3AB4C
  loc_E3AB70: Proc_6_60_E62BC4(Shift)
  loc_E3AB75: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '11511E4
  'Data Table: 586140
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_1150E4F: Me.DGItem.Visible = False
  loc_1150E6E: If (Me.RecordCount > 0) Then
  loc_1150EAB:   Set var_B4 = Me.TxtGrid
  loc_1150EB1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_1150EB9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1150EE2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1150EEA:   var_EC = CVar(CLng(4)) 'Long
  loc_1150F1D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1150F25:   Set var_B8 = Me.FGrid
  loc_1150F2B:   LateIdCallSt
  loc_1150F5A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1150F62:   var_EC = CVar(CLng(&HB)) 'Long
  loc_1150F95:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1150FA3:   LateIdCallSt
  loc_115100A:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(6)))) 'String
  loc_1151012:   Set var_B8 = Me.FGrid
  loc_1151018:   LateIdCallSt
  loc_1151045:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115104D:   var_EC = CVar(CLng(3)) 'Long
  loc_1151080:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_115108E:   LateIdCallSt
  loc_11510F5:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1151103:   LateIdCallSt
  loc_1151130:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1151157:   var_B0 = Me.Fields.Item("RateIncTax")
  loc_1151168:   var_11C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(&H1C)), var_A4, Me.FGrid, var_11C, Me.FGrid)) 'String
  loc_1151170:   Set var_B8 = Me.FGrid
  loc_1151176:   LateIdCallSt
  loc_1151190: End If
  loc_115119C: Set var_A8 = Me.TxtGrid
  loc_11511A2: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C)
  loc_11511AA: var_11C = var_B0.Visible
  loc_11511BC: If (var_12E = &HFF) Then
  loc_11511C8:   Set var_A8 = Me.TxtGrid
  loc_11511CE:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_A4)
  loc_11511D6:   var_B0.SetFocus
  loc_11511E2: End If
  loc_11511E2: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9FE90
  'Data Table: 586140
  Dim var_A8 As Variant
  loc_E9FE14: Set var_88 = Me.DGItem
  loc_E9FE3E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9FE46: Set var_BC = Me.DGItem
  loc_E9FE80: Proc_6_138_106D6F8(Me.DGItem, global_80, 0, Me.FGPoint)
  loc_E9FE8E: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F108D8
  'Data Table: 586140
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F10800: Set var_A4 = Me.ListView
  loc_F1084A: Set var_BC = Me.Txt
  loc_F10850: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F10858: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F10884: Me.FrmList.Visible = False
  loc_F108B4: Set var_9C = Me.Txt
  loc_F108BA: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F108C2: var_A4.SetFocus
  loc_F108D6: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '100DBDC
  'Data Table: 586140
  Dim var_8C As Variant
  Dim var_92 As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_100D9DE: Set var_88 = Me.TxtGrid
  loc_100D9E4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_100D9F2: Proc_6_74_E226B0(var_8C)
  loc_100D9FE: Call Proc_162_93_EF7914(var_8C)
  loc_100DA11: Set var_88 = Me.TxtGrid
  loc_100DA17: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_100DA1F: var_8C.MaxLength = 0
  loc_100DA2E: var_92 = Index
  loc_100DA37: If (var_92 = 0) Then
  loc_100DA4D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100DA56:   Set var_8C = Me.FGrid
  loc_100DA8C:   Set var_108 = Me.TxtGrid
  loc_100DA92:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_100DA9A:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_100DACB:   var_114 = CLng(Me.FGrid.Col)
  loc_100DADB:   If (var_114 = CLng(&H1D)) Then
  loc_100DAED:     Set var_88 = Me.TxtGrid
  loc_100DAF3:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_100DAFB:     var_8C.MaxLength = var_114
  loc_100DB10:     If (global_158 = 0) Then
  loc_100DB1B:       var_110 = "{Home}+{End}"
  loc_100DB21:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_100DB29:     End If
  loc_100DB2C:   Else
  loc_100DB33:     If (var_114 = CLng(&H1E)) Then
  loc_100DB45:       Set var_88 = Me.TxtGrid
  loc_100DB4B:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_100DB53:       var_8C.MaxLength = var_C4
  loc_100DB68:       If (global_158 = 0) Then
  loc_100DB73:         var_110 = "{Home}+{End}"
  loc_100DB79:         Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_100DB81:       End If
  loc_100DB84:     Else
  loc_100DB8B:       If (var_114 = CLng(&H1F)) Then
  loc_100DB9D:         Set var_88 = Me.TxtGrid
  loc_100DBA3:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_100DBAB:         var_8C.MaxLength = 0
  loc_100DBC0:         If (global_158 = 0) Then
  loc_100DBCB:           var_110 = "{Home}+{End}"
  loc_100DBD1:           Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_100DBD9:         End If
  loc_100DBD9:       End If
  loc_100DBD9:     End If
  loc_100DBD9:   End If
  loc_100DBD9: End If
  loc_100DBD9: Exit Sub
  loc_100DBDA: Loop Until var_92 'do at: 100A1DE
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11249F4
  'Data Table: 586140
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_112469A: If (KeyCode = 0) Then
  loc_11246A7:   If (CLng(Shift) = &H1B) Then
  loc_11246B7:     Set var_8C = Me.TxtGrid
  loc_11246BD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_11246C5:     var_88 = var_90.Tag
  loc_11246D7:     Set var_98 = Me.TxtGrid
  loc_11246DD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11246E5:     var_9C.Text = var_94
  loc_11246F8:     Call Proc_162_93_EF7914(Shift)
  loc_1124701:     Set var_8C = Me.FGrid
  loc_112471E:     Set var_8C = Me.TxtGrid
  loc_1124724:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_112472C:     var_90.Visible = False
  loc_1124738:     Exit Sub
  loc_1124739:   End If
  loc_112474C:   var_B0 = CLng(Me.FGrid.Col)
  loc_112475C:   If (var_B0 = CLng(&H1D)) Then
  loc_1124765:     Call Proc_162_88_111C578(KeyCode, var_B2)
  loc_1124770:     If (var_B2 = &HFF) Then
  loc_112477A:       Call Proc_162_102_19DE8A8(CInt(&H1D), var_B0)
  loc_11247BF:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_11247CE:         Call Proc_162_112_12CD6A0(KeyCode, &H1D)
  loc_11247D9:         If (var_B4 = &HFF) Then
  loc_11247DC:           Exit Sub
  loc_11247DD:         End If
  loc_11247DD:       End If
  loc_1124820:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_158, &H1F)
  loc_1124830:     End If
  loc_1124833:   Else
  loc_112483A:     If (var_B0 = CLng(&H1E)) Then
  loc_1124843:       Call Proc_162_88_111C578(KeyCode, var_B2, 0, 0)
  loc_112484E:       If (var_B2 = &HFF) Then
  loc_1124858:         Call Proc_162_102_19DE8A8(CInt(&H1E), 0)
  loc_112489D:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_11248AC:           Call Proc_162_112_12CD6A0(KeyCode, &H1E, var_B4)
  loc_11248B7:           If (var_B4 = &HFF) Then
  loc_11248BA:             Exit Sub
  loc_11248BB:           End If
  loc_11248BB:         End If
  loc_1124905:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_158, CByte((CInt(&H1F) + 1)))
  loc_1124915:       End If
  loc_1124918:     Else
  loc_112491F:       If (var_B0 = CLng(&H1F)) Then
  loc_1124928:         Call Proc_162_88_111C578(KeyCode, var_B2, 0, 0)
  loc_1124933:         If (var_B2 = &HFF) Then
  loc_112493D:           Call Proc_162_102_19DE8A8(CInt(&H1F), 0)
  loc_1124982:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_1124991:             Call Proc_162_112_12CD6A0(KeyCode, &H1F, var_B4)
  loc_112499C:             If (var_B4 = &HFF) Then
  loc_112499F:               Exit Sub
  loc_11249A0:             End If
  loc_11249A0:           End If
  loc_11249E3:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_158, &H1F)
  loc_11249F3:         End If
  loc_11249F3:       End If
  loc_11249F3:     End If
  loc_11249F3:   End If
  loc_11249F3: End If
  loc_11249F3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F1D1FC
  'Data Table: 586140
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_F1D0FF: Proc_6_58_E054C0(arg_10)
  loc_F1D110: If (KeyAscii = 0) Then
  loc_F1D126:   var_A0 = CLng(Me.FGrid.Col)
  loc_F1D136:   If (var_A0 = CLng(&H1D)) Then
  loc_F1D143:     Set var_8C = Me.TxtGrid
  loc_F1D149:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_F1D164:     Proc_6_42_129A86C(var_A4, arg_10, 8)
  loc_F1D173:   Else
  loc_F1D17A:     If (var_A0 = CLng(&H1E)) Then
  loc_F1D187:       Set var_8C = Me.TxtGrid
  loc_F1D18D:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 3)
  loc_F1D1A8:       Proc_6_42_129A86C(var_A4, arg_10, 8)
  loc_F1D1B7:     Else
  loc_F1D1BE:       If (var_A0 = CLng(&H1F)) Then
  loc_F1D1CB:         Set var_8C = Me.TxtGrid
  loc_F1D1D1:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 3)
  loc_F1D1EC:         Proc_6_42_129A86C(var_A4, arg_10, 8)
  loc_F1D1F8:       End If
  loc_F1D1F8:     End If
  loc_F1D1F8:   End If
  loc_F1D1F8: End If
  loc_F1D1F8: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23670
  'Data Table: 586140
  Dim arg_10 As Integer
  loc_E23658: If (Cancel = 0) Then
  loc_E23661:   Call Proc_162_88_111C578(Cancel, var_88)
  loc_E2366A:   arg_10 = Not(var_88)
  loc_E2366D: End If
  loc_E2366D: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F54C68
  'Data Table: 586140
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54B48: On Error Goto loc_F54C62
  loc_F54B5A: Me.DGTable.Visible = False
  loc_F54B79: If (Me.RecordCount > 0) Then
  loc_F54BB8:   Set var_B4 = Me.Txt
  loc_F54BBE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F54BC6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54BF9:   var_B0 = Me.Fields.Item("Code")
  loc_F54C18:   Set var_B4 = Me.Txt
  loc_F54C1E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F54C26:   var_B8.Tag = CStr(var_B0.Value)
  loc_F54C3C: End If
  loc_F54C47: Set var_A8 = Me.Txt
  loc_F54C4D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(3))
  loc_F54C55: var_B0.SetFocus
  loc_F54C61: Exit Sub
  loc_F54C62: ' Referenced from: F54B48
  loc_F54C62: Proc_6_60_E62BC4(var_B0)
  loc_F54C67: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA1B68
  'Data Table: 586140
  Dim var_A8 As Variant
  loc_EA1AE8: Set var_88 = Me.DGTable
  loc_EA1B12: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1B1A: Set var_BC = Me.DGTable
  loc_EA1B56: Proc_6_138_106D6F8(Me.DGTable, global_96, CInt(3), Me.FGPoint)
  loc_EA1B64: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE5498
  'Data Table: 586140
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE52D3: Me.DGRest.Visible = False
  loc_FE52F2: If (Me.RecordCount > 0) Then
  loc_FE532F:   Set var_B4 = Me.TxtGrid
  loc_FE5335:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE533D:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE5366:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE536E:   var_EC = CVar(CLng(2)) 'Long
  loc_FE53A1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE53A9:   Set var_B8 = Me.FGrid
  loc_FE53AF:   LateIdCallSt
  loc_FE53DE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE53E6:   var_EC = CVar(CLng(1)) 'Long
  loc_FE5408:   var_B0 = Me.Fields.Item("Code")
  loc_FE5419:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE5421:   Set var_B8 = Me.FGrid
  loc_FE5427:   LateIdCallSt
  loc_FE5443: End If
  loc_FE544F: Set var_A8 = Me.TxtGrid
  loc_FE5455: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE545D: var_A4 = var_B0.Visible
  loc_FE546F: If (var_12E = &HFF) Then
  loc_FE547B:   Set var_A8 = Me.TxtGrid
  loc_FE5481:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE5489:   var_B0.SetFocus
  loc_FE5495: End If
  loc_FE5495: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9FF50
  'Data Table: 586140
  Dim var_A8 As Variant
  loc_E9FED4: Set var_88 = Me.DGRest
  loc_E9FEFE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9FF06: Set var_BC = Me.DGRest
  loc_E9FF40: Proc_6_138_106D6F8(Me.DGRest, global_84, 0, Me.FGPoint)
  loc_E9FF4E: Exit Sub
End Sub

Private Sub CmdSave_Click() 'DFEF0C
  'Data Table: 586140
  loc_DFEF04: Call TopCtrl1_UnknownEvent_16()
  loc_DFEF09: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F4B4
  'Data Table: 586140
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F47F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F492: Set var_A8 = Me.TxtGrid
  loc_E5F498: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F4A0: var_AC.Visible = False
  loc_E5F4AC: Call Proc_162_93_EF7914()
  loc_E5F4B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E697E8
  'Data Table: 586140
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E697A4: Set var_88 = Me.TxtGrid
  loc_E697AA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E697C4: If (var_8C.Visible = 0) Then
  loc_E697DD:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E697E5: End If
  loc_E697E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE294
  'Data Table: 586140
  loc_DFE28C: Call Proc_162_87_EFA344()
  loc_DFE291: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '114C320
  'Data Table: 586140
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim arg_C As Integer
  Dim var_EC As Long
  loc_114BF84: Set var_88 = Me.TopCtrl1
  loc_114BF8A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_114BFCF: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_114BFD8:   Call Form_KeyDown(arg_C, arg_10)
  loc_114BFDD: End If
  loc_114BFE1: Set var_88 = Me.TopCtrl1
  loc_114BFE7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_114C000: If (CStr() = "Browse") Then
  loc_114C003:   Exit Sub
  loc_114C004: End If
  loc_114C078: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_114C091:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_114C0A1:   var_9C = "+{Tab}"
  loc_114C0A7:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_114C0B1:   arg_C = 0
  loc_114C0B7: Else
  loc_114C0C1:   var_B0 = Me.FGrid.Rows
  loc_114C10E:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_114C127:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_114C13D:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_114C147:     arg_C = 0
  loc_114C14A:   End If
  loc_114C14A: End If
  loc_114C150: global_156 = arg_C
  loc_114C176: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_114C19A: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_114C1B0:   var_EC = CLng(Me.FGrid.Col)
  loc_114C1C0:   If (var_EC = CLng(&H1D)) Then
  loc_114C203:     LateIdCallSt
  loc_114C222:     Call Proc_162_102_19DE8A8(CInt(&H1D), Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_114C22A:   Else
  loc_114C231:     If (var_EC = CLng(&H1E)) Then
  loc_114C274:       LateIdCallSt
  loc_114C293:       Call Proc_162_102_19DE8A8(CInt(&H1E), Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_114C29B:     Else
  loc_114C2A2:       If (var_EC = CLng(&H1F)) Then
  loc_114C2E5:         LateIdCallSt
  loc_114C304:         Call Proc_162_102_19DE8A8(CInt(&H1F), Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_114C309:       End If
  loc_114C309:     End If
  loc_114C309:   End If
  loc_114C309: End If
  loc_114C30F: If (arg_C = &HD) Then
  loc_114C317:   global_158 = 0
  loc_114C31A: End If
  loc_114C31C: arg_C = 0
  loc_114C31F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F950
  'Data Table: 586140
  loc_E0F941: Call FGrid_UnknownEvent_C()
  loc_E0F94B: global_158 = 0
  loc_E0F94E: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'FBCA40
  'Data Table: 586140
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_FBC89C: Set var_88 = Me.TopCtrl1
  loc_FBC8A2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FBC8BB: If (CStr() = "Browse") Then
  loc_FBC8BE:   Exit Sub
  loc_FBC8BF: End If
  loc_FBC8D2: var_A0 = CLng(Me.FGrid.Col)
  loc_FBC8E2: If (var_A0 = CLng(&H1D)) Then
  loc_FBC923:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_FBC938: Else
  loc_FBC93F:   If (var_A0 = CLng(&H1E)) Then
  loc_FBC980:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_FBC995:   Else
  loc_FBC99C:     If (var_A0 = CLng(&H1F)) Then
  loc_FBC9BA:       If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_FBC9CF:         Me.FGrid.Col = CVar(CLng(&H1D))
  loc_FBC9D7:       End If
  loc_FBCA15:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_FBCA27:     End If
  loc_FBCA27:   End If
  loc_FBCA27: End If
  loc_FBCA31: If (CLng(Index) <> &HD) Then
  loc_FBCA39:   global_158 = &HFF
  loc_FBCA3C: End If
  loc_FBCA3C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3EBF4
  'Data Table: 586140
  Dim var_8C As TextBox
  loc_E3EBC8: Call Proc_162_93_EF7914()
  loc_E3EBD8: Set var_88 = Me.TxtGrid
  loc_E3EBDE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3EBE6: var_8C.Visible = False
  loc_E3EBF2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10DFE6C
  'Data Table: 586140
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_10DFB6E: Set var_88 = Me.Txt
  loc_10DFB74: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10DFB82: Proc_6_74_E226B0(var_8C)
  loc_10DFB8E: Call Proc_162_93_EF7914(var_8C)
  loc_10DFB96: var_92 = Index
  loc_10DFBA1: If (var_92 = CInt(3)) Then
  loc_10DFBBB:   If (Me.RecordCount > 0) Then
  loc_10DFBC9:     Set var_8C = Me.FGPoint
  loc_10DFBE1:     Proc_6_137_1193554(Me.DGTable, global_96, Index)
  loc_10DFBEF:   End If
  loc_10DFC3D:   Set var_88 = Me.Txt
  loc_10DFC43:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10DFC4B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10DFC63:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_10DFC66:     Exit Sub
  loc_10DFC67:   End If
  loc_10DFC74:   Set var_88 = Me.Txt
  loc_10DFC7A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DFC82:   var_A0 = var_8C.Text
  loc_10DFC8A:   var_D4 = CVar(var_A0) 'String
  loc_10DFCAB:   var_B4 = Me.Fields.Item("Name")
  loc_10DFCCF:   If CBool(var_D4 <> var_B4.Value) Then
  loc_10DFCD8:     Me.MoveFirst
  loc_10DFCFD:     Set var_88 = Me.Txt
  loc_10DFD03:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_10DFD0B:     0 = var_8C.Text
  loc_10DFD19:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_10DFD2F:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_10DFD47:   End If
  loc_10DFD4A: Else
  loc_10DFD52:   If Not (var_92 = CInt(4)) Then
  loc_10DFD5D:     If Not (var_92 = CInt(7)) Then
  loc_10DFD68:       If (var_92 = CInt(8)) Then
  loc_10DFD6B:       End If
  loc_10DFD6B:     End If
  loc_10DFD7A:     Set var_88 = Me.Txt
  loc_10DFD80:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DFD88:     var_8C.SelStart = 0
  loc_10DFDA1:     Set var_88 = Me.Txt
  loc_10DFDA7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DFDC2:     Set var_90 = Me.Txt
  loc_10DFDC8:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_10DFDD0:     var_B4.SelLength = Len(var_8C.Text)
  loc_10DFDE6:   Else
  loc_10DFDEE:     If (var_92 = CInt(6)) Then
  loc_10DFE00:       Set var_88 = Me.Txt
  loc_10DFE06:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DFE0E:       var_8C.SelStart = 0
  loc_10DFE27:       Set var_88 = Me.Txt
  loc_10DFE2D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DFE48:       Set var_90 = Me.Txt
  loc_10DFE4E:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_10DFE56:       var_B4.SelLength = Len(var_8C.Text)
  loc_10DFE69:     End If
  loc_10DFE69:   End If
  loc_10DFE69: End If
  loc_10DFE69: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1005DB0
  'Data Table: 586140
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_9C As Frame
  loc_1005BB7: var_86 = Shift
  loc_1005BC4: If (CLng(Shift) = &H1B) Then
  loc_1005BC7:   Call Proc_162_93_EF7914(var_86)
  loc_1005BCC:   Exit Sub
  loc_1005BCD: End If
  loc_1005BDB: If (KeyCode = CInt(3)) Then
  loc_1005BFB:   Set var_A0 = Me.FGPoint
  loc_1005C06:   Set var_9C = Nothing
  loc_1005C38:   Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(3), global_96, Shift, 0)
  loc_1005CA7:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1005CCD:     Proc_6_138_106D6F8(Me.DGTable, global_96, KeyCode, Me.FGPoint, 1)
  loc_1005CDB:   End If
  loc_1005CDB: End If
  loc_1005D0F: Set var_9C = Me.FrmList
  loc_1005D31: If (((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGTable.Visible) = 0)) And (var_9C.Visible = 0)) Then
  loc_1005D52:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_1005D58:     Call Proc_162_94_F0BB08(KeyCode, var_9C, var_A0)
  loc_1005D5D:     Exit Sub
  loc_1005D5E:   End If
  loc_1005D73:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1005D7C:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1005D81:   End If
  loc_1005D89:   If (KeyCode <> CInt(3)) Then
  loc_1005DA1:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1005DAA:       Proc_6_76_E52838(Shift, arg_14)
  loc_1005DAF:     End If
  loc_1005DAF:   End If
  loc_1005DAF: End If
  loc_1005DAF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F79C04
  'Data Table: 586140
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F79AB8: On Error Goto loc_F79BFE
  loc_F79ABE: Proc_6_58_E054C0(arg_10)
  loc_F79AC6: var_86 = KeyAscii
  loc_F79AD1: If Not (var_86 = CInt(0)) Then
  loc_F79ADC:   If (var_86 = CInt(4)) Then
  loc_F79ADF:   End If
  loc_F79AE9:   Set var_8C = Me.Txt
  loc_F79AEF:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F79B0A:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F79B19: Else
  loc_F79B21:   If Not (var_86 = CInt(6)) Then
  loc_F79B2C:     If (var_86 = CInt(7)) Then
  loc_F79B2F:     End If
  loc_F79B39:     Set var_8C = Me.Txt
  loc_F79B3F:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F79B5A:     Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F79B69:   Else
  loc_F79B71:     If (var_86 = CInt(3)) Then
  loc_F79B90:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F79BBD:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F79BEF:         Proc_6_138_106D6F8(Me.DGTable, global_96, KeyAscii, Me.FGPoint)
  loc_F79BFD:       End If
  loc_F79BFD:     End If
  loc_F79BFD:   End If
  loc_F79BFD: End If
  loc_F79BFD: Exit Sub
  loc_F79BFE: ' Referenced from: F79AB8
  loc_F79BFE: Proc_6_60_E62BC4(0, 2)
  loc_F79C03: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F86B68
  'Data Table: 586140
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F86A3F: var_86 = KeyCode
  loc_F86A4A: If Not (var_86 = CInt(6)) Then
  loc_F86A55:   If (var_86 = CInt(7)) Then
  loc_F86A58:   End If
  loc_F86A66:   Set var_8C = Me.Txt
  loc_F86A6C:   Call 0.Method_Txt_KeyUp0 (CInt(6), var_90)
  loc_F86A81:   var_118 = Val(var_90.Text)
  loc_F86A8B:   Set var_98 = Me.TxtGt
  loc_F86A91:   Call 0.Method_Txt_KeyUp8 (var_9A, var_118)
  loc_F86AA3:   Set var_A0 = Me.TxtGt
  loc_F86AA9:   Call 0.Method_Txt_KeyUp0 (var_9A, var_A4)
  loc_F86ABE:   var_120 = Val(var_A4.Text)
  loc_F86ACF:   Set var_AC = Me.Txt
  loc_F86AD5:   Call 0.Method_Txt_KeyUp0 (CInt(7), var_B0, var_B4)
  loc_F86B0D:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F86B2B:   Set var_108 = Me.Txt
  loc_F86B31:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_10C, CStr(Format(var_D4, "0.00")), 1)
  loc_F86B39:   var_10C.Text = 1
  loc_F86B67: End If
  loc_F86B67: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E467BC
  'Data Table: 586140
  loc_E4679A: Set var_88 = Me.Txt
  loc_E467A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E467AE: Proc_6_73_E22704(var_8C)
  loc_E467BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1707C24
  'Data Table: 586140
  Dim var_9A As Integer
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_12C As Double
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_124 As String
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_154 As Double
  Dim var_13C As TextBox
  Dim var_15C As Double
  Dim var_D8 As Variant
  Dim var_148 As TextBox
  Dim arg_10 As Integer
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_A0 As Variant
  Dim var_140 As String
  Dim unk_58616C As Connection15
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_118 As Variant
  Dim var_1EC As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_8E As Integer
  Dim var_138 As Field20
  Dim var_94 As Recordset15
  loc_1706098: On Error Goto loc_1707C1D
  loc_170609E: var_9A = Cancel
  loc_17060A9: If Not (var_9A = CInt(6)) Then
  loc_17060B4:   If (var_9A = CInt(7)) Then
  loc_17060B7:   End If
  loc_17060C4:   Set var_A0 = Me.Txt
  loc_17060CA:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17060D2:   var_A8 = var_A4.Text
  loc_17060E3:   Proc_6_40_EA50F0(CVar(Val(var_A8)))
  loc_170610A:   var_118 = Format(CVar(var_9A), "0.00")
  loc_1706120:   Set var_11C = Me.Txt
  loc_1706126:   Call 0.Method_Txt_Validate0 (Cancel, var_120, CStr(var_118))
  loc_170612E:   var_120.Text = 1
  loc_170615E:   Set var_A0 = Me.Txt
  loc_1706164:   Call 0.Method_Txt_Validate0 (CInt(6), var_A4, var_A8)
  loc_170616C:   1 = var_A4.Text
  loc_1706179:   var_12C = Val(var_A8)
  loc_1706183:   Set var_11C = Me.TxtGt
  loc_1706189:   Call 0.Method_Txt_Validate8 (var_12E, var_12C)
  loc_170619B:   Set var_120 = Me.TxtGt
  loc_17061A1:   Call 0.Method_Txt_Validate0 (var_12E, var_134)
  loc_17061B6:   var_154 = Val(var_134.Text)
  loc_17061C7:   Set var_138 = Me.Txt
  loc_17061CD:   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_140)
  loc_17061E2:   var_15C = Val(var_140)
  loc_17061F4:   var_E8 = "0.00"
  loc_1706205:   var_C8 = CVar(((var_12C - var_13C.Text) - var_15C)) 'Double
  loc_170620C:   var_108 = Format(CVar(Val(var_A8)), var_E8)
  loc_1706223:   Set var_144 = Me.Txt
  loc_1706229:   Call 0.Method_Txt_Validate0 (CInt(8), var_148, CStr(var_108), 1)
  loc_1706231:   var_148.Text = 1
  loc_1706262: Else
  loc_170626A:   If (var_9A = CInt(0)) Then
  loc_1706278:     Set var_A0 = Me.Txt
  loc_170627E:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1706286:     var_A8 = "Vr. No"
  loc_17062A7:     If (Proc_6_27_EA565C(var_A4, var_A8) = 0) Then
  loc_17062B5:       Set var_A0 = Me.Txt
  loc_17062BB:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_17062C3:       var_A4.SetFocus
  loc_17062D1:       arg_10 = &HFF
  loc_17062D4:       Exit Sub
  loc_17062D5:     End If
  loc_17062E3:     Set var_A0 = Me.Txt
  loc_17062E9:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_A8)
  loc_17062F1:     arg_10 = var_A4.Text
  loc_1706309:     If (CDbl(var_A8) = CDbl(0)) Then
  loc_1706325:       MsgBox("Vr. No Can Not Be 0", 0, var_E8, var_108, var_118)
  loc_170633F:       Set var_A0 = Me.Txt
  loc_1706345:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_170634D:       var_A4.SetFocus
  loc_170635B:       arg_10 = &HFF
  loc_170635E:       Exit Sub
  loc_170635F:     End If
  loc_1706363:     Set var_A0 = Me.TopCtrl1
  loc_1706369:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1706382:     If (CStr(var_15C) = "Add") Then
  loc_17063B6:       var_C8 = Space((5 - Len(global_144)))
  loc_17063BE:       var_108 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_144) + "Vr. No Can Not Be 0")
  loc_17063D2:       var_118 = Space((5 - Len(global_124)))
  loc_17063DA:       var_17C = (var_108 + var_118)
  loc_17063E7:       var_18C = (var_17C + CVar(global_124))
  loc_17063FE:       Set var_A0 = Me.Txt
  loc_1706404:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_140)
  loc_170640C:       8 = var_A4.Text
  loc_1706419:       var_19C = Space((var_18C - Len(var_140)))
  loc_1706421:       var_1AC = (var_12C + var_19C)
  loc_1706433:       Set var_11C = Me.Txt
  loc_1706439:       Call 0.Method_Txt_Validate0 (CInt(0), var_120)
  loc_170644C:       var_1CC = (var_1AC + CVar(var_120.Text))
  loc_1706499:       Set var_A0 = Me.Txt
  loc_170649F:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_17064A7:       var_A4.Text = CStr(var_1CC)
  loc_17064C3:       Me.LblVPrefix.Caption = global_124
  loc_17064CB:     End If
  loc_17064CF:     Set var_A0 = Me.TopCtrl1
  loc_17064D5:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17064DD:     var_A8 = CStr()
  loc_17064EE:     If (var_A8 = "Add") Then
  loc_170651E:       Set var_A0 = Me.Txt
  loc_1706524:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8, "Select Count(*) From Sale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1706535:       var_124 = var_120 & var_A8
  loc_1706545:       unk_58616C.Execute var_124 & "'", 0, var_134
  loc_1706555:        = var_120.Item()
  loc_170655D:        = var_134.Value
  loc_170658A:       If (var_A4.Text.Fields > 0) Then
  loc_1706593:         Call 0.Method_arg_50 (var_A8)
  loc_17065B4:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A8), var_108, var_118)
  loc_17065CA:         Call Proc_162_95_10E8FB8(MemVar_1F92044)
  loc_17065DA:         If (var_A8 = vbNullString) Then
  loc_17065E7:           Set var_A0 = Me.Txt
  loc_17065ED:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17065F5:           var_A4.SetFocus
  loc_1706603:           arg_10 = &HFF
  loc_1706606:           Exit Sub
  loc_1706607:         End If
  loc_170660D:         Call Proc_162_95_10E8FB8(MemVar_1F92044, var_A8)
  loc_1706620:         Set var_A0 = Me.Txt
  loc_1706626:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8)
  loc_170662E:         var_A4.Text = arg_10
  loc_170663F:         arg_10 = &HFF
  loc_1706642:         Exit Sub
  loc_1706643:       End If
  loc_1706643:     End If
  loc_1706646:   Else
  loc_170664E:     If (var_9A = CInt(1)) Then
  loc_170665F:       Set var_A0 = Me.Txt
  loc_1706665:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8)
  loc_170666D:       arg_10 = var_A4.Text
  loc_1706683:       var_108 = Len(Trim(CVar(var_A8)))
  loc_170669D:       If (var_108 = 0) Then
  loc_17066B3:         Set var_A0 = Me.Txt
  loc_17066B9:         Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_17066C1:         var_A4.Text = CStr(MemVar_1F920EC)
  loc_17066D3:       Else
  loc_17066DD:         Set var_A0 = Me.Txt
  loc_17066E3:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1706703:         Set var_120 = Me.Txt
  loc_1706709:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_1706711:         var_134.Text = Proc_6_33_1512840(var_A4)
  loc_1706724:       End If
  loc_1706731:       Set var_A0 = Me.Txt
  loc_1706737:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_170673F:       var_A8 = var_A4.Text
  loc_170675A:       Set var_11C = Me.Txt
  loc_1706760:       Call 0.Method_Txt_Validate0 (Cancel, var_120, var_124)
  loc_1706768:       (CDate(var_A8) >= MemVar_1F920F4) = var_120.Text
  loc_170678A:       If Not((var_A8 And (CDate(var_124) <= MemVar_1F920FC))) Then
  loc_17067AE:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_108, var_118)
  loc_17067C8:         Set var_A0 = Me.Txt
  loc_17067CE:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_17067D6:         var_A4.SetFocus
  loc_17067E4:         arg_10 = &HFF
  loc_17067E7:         Exit Sub
  loc_17067E8:       End If
  loc_17067EC:       Set var_A0 = Me.TopCtrl1
  loc_17067F2:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_17067FA:       var_A8 = CStr(var_A4)
  loc_1706810:       Set var_A4 = Me.Txt
  loc_1706816:       Call 0.Method_Txt_Validate0 (CInt(0), var_11C)
  loc_170683F:       If ((var_A8 = "Add") And (var_11C.Text = vbNullString)) Then
  loc_1706848:         Call Proc_162_95_10E8FB8(MemVar_1F92044)
  loc_170685B:         Set var_A0 = Me.Txt
  loc_1706861:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_1706869:         var_A4.Text = var_A8
  loc_1706878:       End If
  loc_170687B:     Else
  loc_1706883:       If (var_9A = CInt(3)) Then
  loc_17068C7:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_17068D7:           Set var_A0 = Me.Txt
  loc_17068DD:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17068FC:           If (var_A4.Text = vbNullString) Then
  loc_170690C:             Set var_A0 = Me.Txt
  loc_1706912:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_170691A:             var_A4.Text = vbNullString
  loc_1706933:             Set var_A0 = Me.Txt
  loc_1706939:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1706941:             var_A4.Tag = vbNullString
  loc_1706958:             If (global_152 = "RO") Then
  loc_1706961:               global_148 = vbNullString
  loc_1706965:             End If
  loc_1706965:           End If
  loc_1706968:         Else
  loc_17069A3:           Set var_11C = Me.Txt
  loc_17069A9:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_17069B1:           var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1706A02:           Set var_11C = Me.Txt
  loc_1706A08:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1706A10:           var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1706A31:           If (global_212 = "Room Service") Then
  loc_1706A70:             Set var_11C = Me.Txt
  loc_1706A76:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_1706A7E:             var_120.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1706A94:           End If
  loc_1706A9F:           If (global_152 = "RO") Then
  loc_1706ABF:             var_A4 = Me.Fields.Item("RoomCat")
  loc_1706AD6:             global_148 = CStr(var_A4.Value)
  loc_1706AE7:           End If
  loc_1706AE7:         End If
  loc_1706AF2:         If (global_200 = "Y") Then
  loc_1706AFF:           Set global_88 = New 
  loc_1706B11:           Me.Recordset15.CursorLocation = 3
  loc_1706B27:           If (global_212 = "Hall") Then
  loc_1706B38:             Set var_A0 = Me.Txt
  loc_1706B3E:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_1706B6C:             var_A8 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_60
  loc_1706B81:             var_C8 = CVar(var_A8 & "'AND K.RoomNo ='" & var_A4.Tag & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_1706B8B:             Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_1706BA8:           Else
  loc_1706BB3:             Proc_6_7_F25D88(var_C8, MemVar_1F920EC, 1)
  loc_1706BC6:             Set var_A0 = Me.Txt
  loc_1706BCC:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_A8)
  loc_1706BD4:             -1 = var_A4.Text
  loc_1706BF0:             var_D8 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1706BF8:             var_E8 = var_D8 & var_C8 
  loc_1706C01:             var_108 = var_E8 & " And K.RestCode='" 
  loc_1706C0E:             var_118 = var_108 & CVar(global_60) 
  loc_1706C25:             var_1FC = "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Order by K.DOCID,K.SNo"
  loc_1706C35:             Me.Open var_118 & "' aND K.RoomNo ='" & CVar(var_A8) & var_1FC, CVar(MemVar_1F92044), 3
  loc_1706C54:           End If
  loc_1706C6B:           If (Me.RecordCount > 0) Then
  loc_1706C7D:             Me.FGrid.Redraw = False
  loc_1706C9F:             var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1706CBA:             If ((global_212 = "Room Service") And (var_8E <> 1)) Then
  loc_1706CCB:               Me.FGrid.Redraw = True
  loc_1706D0B:               If (MsgBox(CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), &H14, var_E8, var_108, var_118) = 7) Then
  loc_1706D0E:                 ' Referenced from:       1707A3C
  loc_1706D0E:               End If
  loc_1706D0E:             End If
  loc_1706D20:             If Not(Me.EOF) Then
  loc_1706D48:               For var_210 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):       var_98 = var_210 'Integer
  loc_1706D52:                 var_B8 = CVar(CLng(var_98)) 'Long
  loc_1706D5A:                 var_F8 = CVar(CLng(&HD)) 'Long
  loc_1706D74:                 var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1706D9D:                 var_E8 = Me.Fields.Item("DocID").Value
  loc_1706DAD:                 var_1FC = CVar(CLng(var_98)) 'Long
  loc_1706E28:                 If CBool(CVar(CLng(&HC)) And (CVar(CStr(Me.FGrid.TextMatrix))) = Me.Fields.Item("SNo").Value)) Then
  loc_1706E2F:                   var_96 = CByte(1) 'Byte
  loc_1706E33:                   GoTo loc_17077FD
  loc_1706E36:                 End If
  loc_1706E39:               Next var_210 'Integer
  loc_1706E3E:               var_B8 = vbNullString
  loc_1706E48:               Set var_A0 = Me.FGrid
  loc_1706E5D:               Set var_244 = Me.FGrid
  loc_1706E64:               var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1706E6C:               var_F8 = CVar(CLng(0)) 'Long
  loc_1706E76:               var_C8 = CVar(CStr(var_8E)) 'String
  loc_1706E7D:               LateIdCallSt
  loc_1706E8C:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1706E94:               var_16C = CVar(CLng(&HB)) 'Long
  loc_1706EC7:               var_E8 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_1706ECE:               LateIdCallSt
  loc_1706EE8:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1706EF0:               var_16C = CVar(CLng(3)) 'Long
  loc_1706F23:               var_E8 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1706F2A:               LateIdCallSt
  loc_1706F44:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1706F4C:               var_16C = CVar(CLng(4)) 'Long
  loc_1706F7F:               var_E8 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_1706F86:               LateIdCallSt
  loc_1706FA0:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1706FA8:               var_16C = CVar(CLng(6)) 'Long
  loc_1706FDB:               var_E8 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1706FE2:               LateIdCallSt
  loc_170701B:               var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1707023:               var_1EC = CVar(CLng(7)) 'Long
  loc_1707050:               var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_1707057:               LateIdCallSt
  loc_1707090:               var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1707098:               var_1EC = CVar(CLng(8)) 'Long
  loc_17070C5:               var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_17070CC:               LateIdCallSt
  loc_1707105:               var_F8 = CVar(CLng(var_8E)) 'Long
  loc_170710D:               var_1EC = CVar(CLng(9)) 'Long
  loc_170713A:               var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1707141:               LateIdCallSt
  loc_1707196:               var_11C = Me.Fields
  loc_170719E:               var_120 = var_11C.Item("Rate")
  loc_17071AF:               var_16C = CVar(CLng(var_8E)) 'Long
  loc_17071B7:               var_1FC = CVar(CLng(&HA)) 'Long
  loc_17071EE:               var_19C = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_120.Value), "0.00"))) 'String
  loc_17071F5:               LateIdCallSt
  loc_170723A:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1707242:               var_16C = CVar(CLng(5)) 'Long
  loc_1707269:               var_108 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_1707270:               LateIdCallSt
  loc_170728B:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1707293:               var_16C = CVar(CLng(&HD)) 'Long
  loc_17072C6:               var_E8 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_17072CD:               LateIdCallSt
  loc_17072E7:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_17072EF:               var_16C = CVar(CLng(&HC)) 'Long
  loc_1707322:               var_E8 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_1707329:               LateIdCallSt
  loc_170737B:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_244, var_E8, CVar(CLng(&H19)), CVar(CLng(var_8E)))) 'String
  loc_1707382:               LateIdCallSt
  loc_17073D0:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_244, var_E8, var_244)) 'String
  loc_17073D7:               LateIdCallSt
  loc_1707425:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_170742C:               LateIdCallSt
  loc_170747A:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1707481:               LateIdCallSt
  loc_17074CF:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_17074D6:               LateIdCallSt
  loc_17074F4:               var_16C = CVar(CLng(&H1A)) 'Long
  loc_1707524:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), var_16C, CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_170752B:               LateIdCallSt
  loc_1707578:               var_A8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_E8, -1, var_11C, var_244)
  loc_170758C:               unk_58616C.Execute var_E8 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", var_E8, var_16C
  loc_1707597:               Set var_94 = var_11C
  loc_17075C5:               If (var_94.RecordCount > 0) Then
  loc_17075FF:                 Proc_6_39_E7C810(var_E8, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_1707608:                 var_108 = CVar(CStr(var_E8)) 'String
  loc_1707610:                 Set var_11C = Me.FGrid
  loc_1707616:                 LateIdCallSt
  loc_170762E:               End If
  loc_170764F:               var_C8 = CVar(Proc_6_38_E68A98(global_152, CVar(CLng(&H16)), CVar(CLng(var_8E)), var_11C)) 'String
  loc_1707656:               LateIdCallSt
  loc_1707665:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_170769D:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), var_D8, var_244, CVar(Me.Fields.Item("RoomNo")))) 'String
  loc_17076A4:               LateIdCallSt
  loc_17076EF:               Set var_11C = Me.Txt
  loc_17076F5:               Call 0.Method_Txt_Validate0 (CInt(3), var_120, Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), var_244, var_E8, var_108))
  loc_17076FD:               var_120.Tag = var_D8
  loc_170774D:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_1707754:               LateIdCallSt
  loc_17077A2:               var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_244)) 'String
  loc_17077A9:               LateIdCallSt
  loc_17077DC:               var_C8 = CVar(Proc_6_38_E68A98(global_148, CVar(CLng(&H15)), CVar(CLng(var_8E)), var_244)) 'String
  loc_17077E3:               LateIdCallSt
  loc_17077F0:               Set var_244 = Nothing 
  loc_17077FA:               var_8E = (var_8E + 1)
  loc_17077FD:               ' Referenced from:       1706E33
  loc_1707803:               Me.MoveNext
  loc_1707826:               If ((Me.EOF = &HFF) And (CInt(var_96) = 0)) Then
  loc_1707834:                 If (global_212 = "Room Service") Then
  loc_1707857:                   If (Me.lblTable.Caption = vbNullString) Then
  loc_170789E:                     Me.lblTable.Caption = CStr("Room # " & Me.Fields.Item("Name").Value)
  loc_17078B9:                   Else
  loc_1707914:                     Me.lblTable.Caption = CStr(CVar(Me.lblTable.Caption & ",") & Me.Fields.Item("Name").Value)
  loc_1707934:                   End If
  loc_1707937:                 Else
  loc_1707957:                   If (Me.lblTable.Caption = vbNullString) Then
  loc_170799E:                     Me.lblTable.Caption = CStr("Table # " & Me.Fields.Item("Code").Value)
  loc_17079B9:                   Else
  loc_17079C6:                     var_A8 = Me.lblTable.Caption
  loc_17079D2:                     var_E8 = CVar(var_A8 & ",") 'String
  loc_1707A02:                     var_108 = var_E8 & Me.Fields.Item("Code").Value 
  loc_1707A14:                     Me.lblTable.Caption = CStr(var_108)
  loc_1707A34:                   End If
  loc_1707A34:                 End If
  loc_1707A34:               End If
  loc_1707A38:               var_96 = CByte(0) 'Byte
  loc_1707A3C:               GoTo loc_1706D0E
  loc_1707A3F:             End If
  loc_1707A52:             Me.FGrid.FixedRows = 1
  loc_1707A5D:           Else
  loc_1707A6B:             Me.FGrid.Redraw = True
  loc_1707A79:             If (var_8E = 1) Then
  loc_1707A8F:               Me.FGrid.Rows = 1
  loc_1707AB5:               var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8E, var_244, var_C8))) 'String
  loc_1707ABD:               Set var_A4 = Me.FGrid
  loc_1707AEA:               Me.FGrid.FixedRows = 1
  loc_1707AF2:             End If
  loc_1707AF2:           End If
  loc_1707AF2:         End If
  loc_1707B00:         Me.FGrid.Redraw = True
  loc_1707B0E:         If (var_8E = 1) Then
  loc_1707B24:           Me.FGrid.Rows = 1
  loc_1707B4A:           var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8))) 'String
  loc_1707B52:           Set var_A4 = Me.FGrid
  loc_1707B7F:           Me.FGrid.FixedRows = 1
  loc_1707B87:         End If
  loc_1707B8D:         Call Proc_162_101_16A66F0(Cancel, FGrid.DispID_10000, var_C8, var_E8)
  loc_1707B9F:         Set var_A0 = Me.Txt
  loc_1707BA5:         Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8)
  loc_1707BAD:         var_E8 = var_A4.Text
  loc_1707BD0:         If ((var_A8 <> vbNullString) And (global_200 = "Y")) Then
  loc_1707BE0:           Set var_A0 = Me.Txt
  loc_1707BE6:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, vbNullString)
  loc_1707BEE:           var_A4.Text = var_244
  loc_1707BFA:         End If
  loc_1707BFA:       End If
  loc_1707BFA:     End If
  loc_1707BFA:   End If
  loc_1707BFA: End If
  loc_1707BFF: Set var_94 = Nothing
  loc_1707C07: Set var_88 = Nothing
  loc_1707C15: Set global_88 = Nothing
  loc_1707C1C: Exit Sub
  loc_1707C1D: ' Referenced from: 1706098
  loc_1707C1D: Proc_6_60_E62BC4(var_108)
  loc_1707C22: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F07788
  'Data Table: 586140
  loc_F076AC: On Error Goto loc_F0777F
  loc_F076E6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F0770C:   Call Proc_162_92_100626C(Proc_5_1_100CB50("INI", Me))
  loc_F07722:   Set var_10C = Me.TopCtrl1
  loc_F07728:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_F0773A:   Set var_10C = Me.TopCtrl1
  loc_F07740:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_F07753:   Set var_10C = Me.TopCtrl1
  loc_F07759:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_F0776B:   Set var_10C = Me.TopCtrl1
  loc_F07771:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000F(True)
  loc_F07779:   Call Proc_162_89_1B40DBC(global_92)
  loc_F0777E: End If
  loc_F0777E: Exit Sub
  loc_F0777F: ' Referenced from: F076AC
  loc_F0777F: Proc_6_60_E62BC4()
  loc_F07784: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12B586C
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim unk_58616C As Connection15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_12B527C: On Error Goto loc_12B581D
  loc_12B52B6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_12B52CA:   var_94 = Me.Bookmark 'Variant
  loc_12B52D9:   If (global_212 = "Outlet") Then
  loc_12B530E:     var_138 = "Settlement"
  loc_12B5356:     If (Proc_6_108_1010FEC(MemVar_1F92044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_12B5359:       Exit Sub
  loc_12B535A:     End If
  loc_12B535A:   End If
  loc_12B536E:   var_DC = "Void Reason"
  loc_12B5384:   var_9C = InputBox("Reason for Deletion :", var_DC, var_FC, var_11C, var_15C, var_17C, var_19C)
  loc_12B53B6:   If (Trim(var_9C) = vbNullString) Then
  loc_12B53D2:     MsgBox("You Should Enter a Valid Reason for Deletion", 0, var_DC, var_FC, var_11C)
  loc_12B53E2:     Exit Sub
  loc_12B53E3:   End If
  loc_12B53EC:   unk_58616C.BeginTrans var_134
  loc_12B53FC:   If (global_212 = "Room Service") Then
  loc_12B5455:     unk_58616C.Execute CStr("DELETE FROM PAYCHARGE WHERE dOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12B54A0:     var_1CC = 0
  loc_12B54B3:     var_1C4 = 0
  loc_12B54BE:     var_1C0 = 0
  loc_12B54D1:     var_1B8 = 0
  loc_12B54DC:     var_1B4 = 0
  loc_12B54EF:     var_1AC = 0
  loc_12B5538:     Proc_154_5_10E33A4(MemVar_1F92044, "PayCharge", "Docid", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12B5560:   End If
  loc_12B55B6:   unk_58616C.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12B564A:   var_11C = "Update Sale1 set delflag='D',Remark='" & Left(Trim(var_9C), &H19) & "',U_name='" 
  loc_12B5678:   unk_58616C.Execute CStr(var_11C & Trim(MemVar_1F920C8) & "',U_AE='E' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_21C, -1
  loc_12B56F8:   unk_58616C.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12B575C:   var_FC = "Update SunTran set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12B5760:   var_128 = CStr(var_FC)
  loc_12B576A:   unk_58616C.Execute var_128, var_11C, -1
  loc_12B578C:   unk_58616C.CommitTrans
  loc_12B579C:   Me.Requery -1
  loc_12B57BC:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12B57C9:     Me.Bookmark = var_94
  loc_12B57D1:   Else
  loc_12B57E5:     If (Me.EOF = 0) Then
  loc_12B57EE:       Me.MoveLast
  loc_12B57F3:     End If
  loc_12B57F3:   End If
  loc_12B57F3:   Call Proc_162_89_1B40DBC(var_1A0, var_1A0, var_1A0, var_1A0)
  loc_12B5814:   Proc_5_0_110649C(&HFF, Me, global_92, 0)
  loc_12B581C: End If
  loc_12B581C: Exit Sub
  loc_12B581D: ' Referenced from: 12B527C
  loc_12B5823: unk_58616C.RollbackTrans
  loc_12B5830: Set var_120 = Err()
  loc_12B5836: Call 0.Method_arg_2C (var_128, var_1AC, 0)
  loc_12B5857: MsgBox(CVar(var_128), &H10, " Deletion Message", var_FC, var_11C)
  loc_12B586A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FF08A8
  'Data Table: 586140
  Dim var_98 As Variant
  Dim var_90 As MSHFlexGrid
  loc_FF06B4: On Error Goto loc_FF08A0
  loc_FF06DA: Call Proc_162_92_100626C(Proc_5_1_100CB50("EDIT", Me))
  loc_FF06F2: Set var_90 = Me.Txt
  loc_FF06F8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FF0700: var_98.Enabled = False
  loc_FF0719: Set var_90 = Me.Txt
  loc_FF071F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FF0727: var_98.Enabled = False
  loc_FF0740: Set var_90 = Me.Txt
  loc_FF0746: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_FF074E: var_98.Enabled = False
  loc_FF0768: Set var_90 = Me.Txt
  loc_FF076E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FF0784: Call Proc_162_100_17EF080(CDate(var_98.Text))
  loc_FF07A5: Me.FGrid.Col = CVar(CLng(&H1D))
  loc_FF07B1: Set var_90 = Me.FGrid
  loc_FF07CE: Set var_90 = Me.TxtGt
  loc_FF07D4: Call 0.Method_TopCtrl1_UnknownEvent_DC (var_92, var_86, 1)
  loc_FF07DF: For var_C4 = global_92 To var_92: FGrid.DispID_8001 = var_C4 'Integer
  loc_FF07F2:   Set var_90 = Me.LblCap1
  loc_FF07F8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF0822:   If (var_98.Tag = MemVar_1F92078 & "ADD") Then
  loc_FF0831:     Set var_90 = Me.TxtGt1
  loc_FF0837:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF083F:     var_98.Enabled = True
  loc_FF0857:     Set var_90 = Me.TxtGt2
  loc_FF085D:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF0865:     var_98.Enabled = True
  loc_FF087D:     Set var_90 = Me.TxtGt3
  loc_FF0883:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF088B:     var_98.Enabled = True
  loc_FF0897:   End If
  loc_FF089A: Next var_C4 'Integer
  loc_FF089F: Exit Sub
  loc_FF08A0: ' Referenced from: FF06B4
  loc_FF08A0: Proc_6_60_E62BC4()
  loc_FF08A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AB1C
  'Data Table: 586140
  loc_E1AB11: Me.Global.Unload Me
  loc_E1AB19: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FB3D44
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_11C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_F8 As Integer
  Dim var_120 As String
  Dim unk_58616C As Connection15
  Dim var_138 As Recordset15
  Dim var_13C As Fields15
  Dim var_140 As Field20
  loc_FB3BD8: On Error Goto loc_FB3D3D
  loc_FB3BF2: If (Me.RecordCount <= 0) Then
  loc_FB3C10:   var_A8 = "No Records To Search."
  loc_FB3C16:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_FB3C26:   Exit Sub
  loc_FB3C27: End If
  loc_FB3C2E: var_10C = "Select  S.Docid as SearchCode,Cast(S.VNo as Varchar(11)) as VNo ,Cast(S.VDate as VarChar(11)) as VDate,s.RoomNo as TableNo " & "From (Sale1 S INNER JOIN  Voucher_Type V On S.VType= V.V_Type) "
  loc_FB3C4A: var_11C = var_10C & " INNER  Join Depart H on S.RestCode = H.Code Where (V.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  V.SITE_CODE='" & MemVar_1F92070
  loc_FB3C5F: Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_FB3C6B: var_B8 = " And V_Type='"
  loc_FB3C70: var_108 = CVar(var_11C & "') AND S.VDate=") & var_A8 & var_B8 
  loc_FB3C7A: var_F8 = 0
  loc_FB3C9A: var_120 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_FB3CAA: unk_58616C.Execute var_120 & "'", var_134, -1
  loc_FB3CB2: var_138 = var_138.Fields
  loc_FB3CBA: var_F8 = var_13C.Item(var_13C)
  loc_FB3CC2: var_140 = var_140.Value
  loc_FB3D12: Proc_6_126_F1BCC0("1000,1000,1000", CStr(var_150 & var_150 & "' Order By S.docid"))
  loc_FB3D20: MemVar_1F92120 = Me
  loc_FB3D37: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FB3D3C: Exit Sub
  loc_FB3D3D: ' Referenced from: FB3BD8
  loc_FB3D3D: Proc_6_60_E62BC4(var_108)
  loc_FB3D42: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3B598
  'Data Table: 586140
  loc_E3B588: Proc_5_0_110649C(&HFF, Me)
  loc_E3B590: Call Proc_162_89_1B40DBC(global_92)
  loc_E3B595: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D458
  'Data Table: 586140
  loc_E3D448: Proc_5_0_110649C(&HFF, Me)
  loc_E3D450: Call Proc_162_89_1B40DBC(global_92)
  loc_E3D455: Exit Sub
  loc_E3D456: Set var_3800 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2FA18
  'Data Table: 586140
  Dim var_3701 As Double
  loc_E2FA08: Proc_5_0_110649C(&HFF, Me)
  loc_E2FA10: Call Proc_162_89_1B40DBC(global_92)
  loc_E2FA15: Exit Sub
  loc_E2FA16: var_3701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B9B8
  'Data Table: 586140
  loc_E3B9A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B9B0: Call Proc_162_89_1B40DBC(global_92)
  loc_E3B9B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '112B628
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_9C As TextBox
  Dim var_E4 As TextBox
  loc_112B2D6: var_9C = Me.Fields.Item("ModDescription")
  loc_112B2FF: If (Trim(CVar(var_9C)) = "BILL DOS PLAIN PAPER RAVE3") Then
  loc_112B310:   Set var_88 = Me.Txt
  loc_112B316:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C)
  loc_112B31E:   var_E8 = var_9C.Text
  loc_112B331:   Set var_E0 = Me.Txt
  loc_112B337:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4)
  loc_112B35C:   Proc_96_32_194A070(var_E8, var_E4.Text, MemVar_1F92070)
  loc_112B376: Else
  loc_112B390:   var_9C = Me.Fields.Item("ModDescription")
  loc_112B3B9:   If (Trim(CVar(var_9C)) = "BILL DOS PLAIN (3) PAPER RUNNING (WeP TX 40)") Then
  loc_112B3CA:     Set var_88 = Me.Txt
  loc_112B3D0:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112B3D8:     global_192 = var_9C.Text
  loc_112B3EB:     Set var_E0 = Me.Txt
  loc_112B3F1:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4)
  loc_112B3F9:     var_EC = var_E4.Text
  loc_112B41C:     Proc_96_31_176C4C8(var_E8, var_EC, MemVar_1F92070, global_192)
  loc_112B436:   Else
  loc_112B450:     var_9C = Me.Fields.Item("ModDescription")
  loc_112B479:     If (Trim(CVar(var_9C)) = "BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)") Then
  loc_112B48A:       Set var_88 = Me.Txt
  loc_112B490:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112B498:       0 = var_9C.Text
  loc_112B4AB:       Set var_E0 = Me.Txt
  loc_112B4B1:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4, var_EC)
  loc_112B4B9:       global_196 = var_E4.Text
  loc_112B4DC:       Proc_96_31_176C4C8(var_E8, var_EC, MemVar_1F92070, global_192)
  loc_112B4F6:     Else
  loc_112B510:       var_9C = Me.Fields.Item("ModDescription")
  loc_112B539:       If (Trim(CVar(var_9C)) = "BILL WINDOWS PLAIN PAPER RUNNING") Then
  loc_112B54A:         Set var_88 = Me.Txt
  loc_112B550:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112B558:         0 = var_9C.Text
  loc_112B56B:         Set var_E0 = Me.Txt
  loc_112B571:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4, var_EC)
  loc_112B579:         global_196 = var_E4.Text
  loc_112B59C:         Proc_96_31_176C4C8(var_E8, var_EC, MemVar_1F92070, global_192)
  loc_112B5B6:       Else
  loc_112B5C4:         Set var_88 = Me.Txt
  loc_112B5CA:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112B5D2:         0 = var_9C.Text
  loc_112B5E5:         Set var_E0 = Me.Txt
  loc_112B5EB:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4, var_EC)
  loc_112B5F3:         global_196 = var_E4.Text
  loc_112B610:         Proc_96_37_17CD34C(var_E8, var_EC, MemVar_1F92070)
  loc_112B627:       End If
  loc_112B627:     End If
  loc_112B627:   End If
  loc_112B627: End If
  loc_112B627: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5E93C
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_3733 As Variant
  loc_E5E8F7: If (global_148 <> "FAST") Then
  loc_E5E905:   Me.Requery -1
  loc_E5E90A: End If
  loc_E5E915: If (global_148 <> "FAST") Then
  loc_E5E923:   Me.Requery -1
  loc_E5E928: End If
  loc_E5E933: Me.Requery -1
  loc_E5E938: Exit Sub
  loc_E5E939: var_3733 = InStr(, , , )
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17CF41C
  'Data Table: 586140
  Dim unk_58616C As Connection15
  Dim var_8A As Integer
  Dim var_98 As TextBox
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_B4 As String
  Dim var_94 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E0 As TextBox
  Dim var_130 As Variant
  Dim var_1B8 As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_2C0 As MSHFlexGrid
  Dim var_330 As Variant
  Dim var_350 As Variant
  Dim var_364 As Variant
  Dim var_374 As Variant
  Dim var_6D0 As Double
  Dim var_3FC As MSHFlexGrid
  Dim var_40C As Variant
  Dim var_6D8 As Double
  Dim var_6E0 As Double
  Dim var_C4 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1DC As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_450 As Variant
  Dim var_548 As Variant
  Dim var_598 As Variant
  Dim var_5B8 As Variant
  Dim var_88 As Integer
  Dim var_9C As String
  Dim var_578 As Variant
  Dim var_588 As Variant
  Dim var_5CC As Variant
  Dim var_6C4 As Variant
  Dim var_E8 As TextBox
  Dim var_2F0 As Variant
  loc_17CD489: unk_58616C.BeginTrans var_90
  loc_17CD4B1: Set var_94 = Me.Txt
  loc_17CD4B7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, "DELETE FROM SplitBillDetail WHERE DocId='")
  loc_17CD4BF: var_D4 = var_98.Text
  loc_17CD4C8: var_A0 = -1 & var_9C
  loc_17CD4F7: unk_58616C.Execute var_A0 & "' AND Site_Code='" & MemVar_1F92070 & "' AND RestCode='" & global_60 & "'", var_D8, &HFF
  loc_17CD53E: For var_DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_DC 'Integer
  loc_17CD552:   Set var_94 = Me.Txt
  loc_17CD558:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CD573:   Set var_D8 = Me.Txt
  loc_17CD579:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_17CD581:   var_A8 = var_E0.Text
  loc_17CD591:   Set var_E4 = Me.Txt
  loc_17CD597:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CD5A6:   Proc_6_7_F25D88(var_F8, CVar(var_E8))
  loc_17CD5B9:   Set var_12C = Me.Txt
  loc_17CD5BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130)
  loc_17CD5C7:   var_B4 = var_130.Text
  loc_17CD5DA:   Set var_1B4 = Me.Txt
  loc_17CD5E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CD5F1:   var_28C = CVar(CLng(var_86)) 'Long
  loc_17CD5F9:   var_2AC = CVar(CLng(4)) 'Long
  loc_17CD622:   var_330 = CVar(CLng(var_86)) 'Long
  loc_17CD62A:   var_350 = CVar(CLng(7)) 'Long
  loc_17CD67D:   var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CD6AE:   var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CD6BF:   Proc_6_7_F25D88(var_588, Date, var_6E0, CVar(CLng(7)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CD6C8:   Set var_5BC = Me.TopCtrl1
  loc_17CD6CE:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CD6DC:   var_620 = "E"
  loc_17CD719:   var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CD777:   var_1DC = CVar(var_A0 & var_98.Text & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CD7C1:   var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_86) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_17CD81F:   var_598 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & ",0,'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_588 
  loc_17CD828:   var_5B8 = var_598 & ",'" 
  loc_17CD859:   unk_58616C.Execute CStr(var_5B8 & IIf((CStr(var_5CC) = "Add"), "A", var_620) & "','N','" & CVar(MemVar_1F92078) & "')"), var_6C4, -1
  loc_17CD900: Next var_DC 'Integer
  loc_17CD907: var_88 = 0
  loc_17CD92F: For var_6E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_6E4 'Integer
  loc_17CD939:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_17CD941:   var_180 = CVar(CLng(&H1D)) 'Long
  loc_17CD95B:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_17CD971:   If (CDbl(Val(var_9C)) > CDbl(0)) Then
  loc_17CD97A:     var_88 = (var_88 + 1)
  loc_17CD98B:     Set var_94 = Me.Txt
  loc_17CD991:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, var_88)
  loc_17CD999:     var_180 = var_98.Text
  loc_17CD9AC:     Set var_D8 = Me.Txt
  loc_17CD9B2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0, var_A8)
  loc_17CD9BA:     var_C4 = var_E0.Text
  loc_17CD9CA:     Set var_E4 = Me.Txt
  loc_17CD9D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CD9DF:     Proc_6_7_F25D88(var_F8, CVar(var_E8))
  loc_17CD9F2:     Set var_12C = Me.Txt
  loc_17CD9F8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130, var_B4)
  loc_17CDA00:     1 = var_130.Text
  loc_17CDA13:     Set var_1B4 = Me.Txt
  loc_17CDA19:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CDA2A:     var_28C = CVar(CLng(var_86)) 'Long
  loc_17CDA32:     var_2AC = CVar(CLng(4)) 'Long
  loc_17CDA5B:     var_330 = CVar(CLng(var_86)) 'Long
  loc_17CDA63:     var_350 = CVar(CLng(7)) 'Long
  loc_17CDAB6:     var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CDAE7:     var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CDAF8:     Proc_6_7_F25D88(var_5B8, Date, var_6E0, CVar(CLng(&H1D)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CDB01:     Set var_5BC = Me.TopCtrl1
  loc_17CDB07:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CDB52:     var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CDBB0:     var_1DC = CVar(var_A0 & var_9C & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CDBFA:     var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_88) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_17CDC5B:     var_578 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & "," & &H1D & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_17CDCA5:     unk_58616C.Execute CStr(var_578 & "'," & var_5B8 & ",'" & IIf((CStr(var_620) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F92078) & "')"), var_724, -1
  loc_17CDD4D:   End If
  loc_17CDD50: Next var_6E4 'Integer
  loc_17CDD57: var_88 = 0
  loc_17CDD7F: For var_728 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_728 'Integer
  loc_17CDD89:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_17CDD91:   var_180 = CVar(CLng(&H1E)) 'Long
  loc_17CDDAB:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_17CDDC1:   If (CDbl(Val(var_9C)) > CDbl(0)) Then
  loc_17CDDCA:     var_88 = (var_88 + 1)
  loc_17CDDDB:     Set var_94 = Me.Txt
  loc_17CDDE1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, var_88)
  loc_17CDDE9:     var_180 = var_98.Text
  loc_17CDDFC:     Set var_D8 = Me.Txt
  loc_17CDE02:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0, var_A8)
  loc_17CDE0A:     var_C4 = var_E0.Text
  loc_17CDE1A:     Set var_E4 = Me.Txt
  loc_17CDE20:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CDE2F:     Proc_6_7_F25D88(var_F8, CVar(var_E8))
  loc_17CDE42:     Set var_12C = Me.Txt
  loc_17CDE48:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130, var_B4)
  loc_17CDE50:     1 = var_130.Text
  loc_17CDE63:     Set var_1B4 = Me.Txt
  loc_17CDE69:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CDE7A:     var_28C = CVar(CLng(var_86)) 'Long
  loc_17CDE82:     var_2AC = CVar(CLng(4)) 'Long
  loc_17CDEAB:     var_330 = CVar(CLng(var_86)) 'Long
  loc_17CDEB3:     var_350 = CVar(CLng(7)) 'Long
  loc_17CDF06:     var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CDF37:     var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CDF48:     Proc_6_7_F25D88(var_5B8, Date, var_6E0, CVar(CLng(&H1E)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CDF51:     Set var_5BC = Me.TopCtrl1
  loc_17CDF57:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CDFA2:     var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CE000:     var_1DC = CVar(var_A0 & var_9C & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CE04A:     var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_88) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_17CE0AB:     var_578 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & "," & &H1E & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_17CE0F5:     unk_58616C.Execute CStr(var_578 & "'," & var_5B8 & ",'" & IIf((CStr(var_620) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F92078) & "')"), var_724, -1
  loc_17CE19D:   End If
  loc_17CE1A0: Next var_728 'Integer
  loc_17CE1A7: var_88 = 0
  loc_17CE1CF: For var_72C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_72C 'Integer
  loc_17CE1D9:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_17CE1E1:   var_180 = CVar(CLng(&H1F)) 'Long
  loc_17CE1FB:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_17CE211:   If (CDbl(Val(var_9C)) > CDbl(0)) Then
  loc_17CE21A:     var_88 = (var_88 + 1)
  loc_17CE22B:     Set var_94 = Me.Txt
  loc_17CE231:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, var_88)
  loc_17CE239:     var_180 = var_98.Text
  loc_17CE24C:     Set var_D8 = Me.Txt
  loc_17CE252:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0, var_A8)
  loc_17CE25A:     var_C4 = var_E0.Text
  loc_17CE26A:     Set var_E4 = Me.Txt
  loc_17CE270:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CE27F:     Proc_6_7_F25D88(var_F8, CVar(var_E8))
  loc_17CE292:     Set var_12C = Me.Txt
  loc_17CE298:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130, var_B4)
  loc_17CE2A0:     1 = var_130.Text
  loc_17CE2B3:     Set var_1B4 = Me.Txt
  loc_17CE2B9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CE2CA:     var_28C = CVar(CLng(var_86)) 'Long
  loc_17CE2D2:     var_2AC = CVar(CLng(4)) 'Long
  loc_17CE2FB:     var_330 = CVar(CLng(var_86)) 'Long
  loc_17CE303:     var_350 = CVar(CLng(7)) 'Long
  loc_17CE30C:     Set var_364 = Me.FGrid
  loc_17CE312:     var_374 = var_364.TextMatrix)
  loc_17CE343:     var_40C = Me.FGrid.TextMatrix)
  loc_17CE356:     var_6D8 = Val(CStr(var_40C))
  loc_17CE387:     var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CE398:     Proc_6_7_F25D88(var_5B8, Date, var_6E0, CVar(CLng(&H1F)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CE3A1:     Set var_5BC = Me.TopCtrl1
  loc_17CE3A7:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CE3F2:     var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CE450:     var_1DC = CVar(var_A0 & var_9C & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CE49A:     var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_88) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(var_374))) 
  loc_17CE4E8:     var_548 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & "," & &H1F & ",'" & CVar(MemVar_1F92070) 
  loc_17CE4FB:     var_578 = var_548 & "','" & CVar(MemVar_1F920C8) 
  loc_17CE545:     unk_58616C.Execute CStr(var_578 & "'," & var_5B8 & ",'" & IIf((CStr(var_620) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F92078) & "')"), var_724, -1
  loc_17CE5ED:   End If
  loc_17CE5F0: Next var_72C 'Integer
  loc_17CE5FB: unk_58616C.CommitTrans
  loc_17CE609: unk_58616C.BeginTrans var_90
  loc_17CE62C: Set var_94 = Me.Txt
  loc_17CE632: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, "DELETE FROM SplitSunTran WHERE DocId='")
  loc_17CE63A: var_D4 = var_98.Text
  loc_17CE643: var_A0 = -1 & var_9C
  loc_17CE669: var_B4 = var_A0 & "' AND Site_Code='" & MemVar_1F92070 & "' AND RestCode='" & global_60 & "'"
  loc_17CE672: unk_58616C.Execute var_B4, var_D8, 
  loc_17CE6A0: Set var_94 = Me.TxtGt
  loc_17CE6A6: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CE6B1: For var_732 =  To var_72E: 1 = var_732 'Integer
  loc_17CE6C4:   Set var_94 = Me.TxtGt
  loc_17CE6CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CE6D2:   var_72E = var_98.Visible
  loc_17CE6E4:   If (var_72E = &HFF) Then
  loc_17CE6F5:     Set var_94 = Me.Txt
  loc_17CE6FB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CE713:     Set var_D8 = Me.Txt
  loc_17CE719:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CE728:     Proc_6_7_F25D88(var_F8, CVar(var_E0))
  loc_17CE73A:     Set var_E4 = Me.TxtGt
  loc_17CE740:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CE755:     var_6D0 = Val(var_E8.Text)
  loc_17CE765:     Set var_12C = Me.LblCap
  loc_17CE76B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CE785:     Set var_1B4 = Me.LblCap
  loc_17CE78B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CE7A5:     Set var_2C0 = Me.LblDummy
  loc_17CE7AB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CE7C0:     var_6D8 = Val(var_364.Caption)
  loc_17CE7D1:     Proc_6_7_F25D88(var_374, Date)
  loc_17CE7DA:     Set var_3FC = Me.TopCtrl1
  loc_17CE7E0:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_6D8)
  loc_17CE7EE:     var_450 = "E"
  loc_17CE82B:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CE880:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CE8D7:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & ",0,'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_17CE8F0:     var_3B8 = var_2F0 & "'," & var_374 & ",'" 
  loc_17CE921:     unk_58616C.Execute CStr(var_3B8 & IIf((CStr(var_40C) = "Add"), "A", var_450) & "','N','" & CVar(MemVar_1F92078) & "')"), var_548, -1
  loc_17CE9A1:   End If
  loc_17CE9A4: Next var_732 'Integer
  loc_17CE9B5: Set var_94 = Me.TxtGt1
  loc_17CE9BB: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CE9C6: For var_736 =  To var_72E: 1 = var_736 'Integer
  loc_17CE9D9:   Set var_94 = Me.TxtGt1
  loc_17CE9DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CE9E7:   var_72E = var_98.Visible
  loc_17CE9F9:   If (var_72E = &HFF) Then
  loc_17CEA0A:     Set var_94 = Me.Txt
  loc_17CEA10:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CEA28:     Set var_D8 = Me.Txt
  loc_17CEA2E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CEA3D:     Proc_6_7_F25D88(var_F8, CVar(var_E0))
  loc_17CEA4F:     Set var_E4 = Me.TxtGt1
  loc_17CEA55:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CEA6A:     var_6D0 = Val(var_E8.Text)
  loc_17CEA7A:     Set var_12C = Me.LblCap1
  loc_17CEA80:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CEA9A:     Set var_1B4 = Me.LblCap1
  loc_17CEAA0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CEABA:     Set var_2C0 = Me.LblDummy1
  loc_17CEAC0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CEAD5:     var_6D8 = Val(var_364.Caption)
  loc_17CEAE6:     Proc_6_7_F25D88(var_3B8, Date)
  loc_17CEAEF:     Set var_3FC = Me.TopCtrl1
  loc_17CEAF5:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_6D8)
  loc_17CEB40:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CEB95:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CEBEC:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & "," & &H1D & ",'" & CVar(MemVar_1F92070) 
  loc_17CEC32:     var_548 = var_2F0 & "','" & CVar(MemVar_1F920C8) & "'," & var_3B8 & ",'" & IIf((CStr(var_450) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F92078) 
  loc_17CEC49:     unk_58616C.Execute CStr(var_548 & "')"), var_578, -1
  loc_17CECCD:   End If
  loc_17CECD0: Next var_736 'Integer
  loc_17CECE1: Set var_94 = Me.TxtGt2
  loc_17CECE7: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CECF2: For var_73A =  To var_72E: 1 = var_73A 'Integer
  loc_17CED05:   Set var_94 = Me.TxtGt2
  loc_17CED0B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CED13:   var_72E = var_98.Visible
  loc_17CED25:   If (var_72E = &HFF) Then
  loc_17CED36:     Set var_94 = Me.Txt
  loc_17CED3C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CED54:     Set var_D8 = Me.Txt
  loc_17CED5A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CED69:     Proc_6_7_F25D88(var_F8, CVar(var_E0))
  loc_17CED7B:     Set var_E4 = Me.TxtGt2
  loc_17CED81:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CED96:     var_6D0 = Val(var_E8.Text)
  loc_17CEDA6:     Set var_12C = Me.LblCap2
  loc_17CEDAC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CEDC6:     Set var_1B4 = Me.LblCap2
  loc_17CEDCC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CEDE6:     Set var_2C0 = Me.LblDummy2
  loc_17CEDEC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CEE01:     var_6D8 = Val(var_364.Caption)
  loc_17CEE12:     Proc_6_7_F25D88(var_3B8, Date)
  loc_17CEE1B:     Set var_3FC = Me.TopCtrl1
  loc_17CEE21:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_6D8)
  loc_17CEE6C:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CEEC1:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CEF18:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & "," & &H1E & ",'" & CVar(MemVar_1F92070) 
  loc_17CEF5E:     var_548 = var_2F0 & "','" & CVar(MemVar_1F920C8) & "'," & var_3B8 & ",'" & IIf((CStr(var_450) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F92078) 
  loc_17CEF75:     unk_58616C.Execute CStr(var_548 & "')"), var_578, -1
  loc_17CEFF9:   End If
  loc_17CEFFC: Next var_73A 'Integer
  loc_17CF00D: Set var_94 = Me.TxtGt3
  loc_17CF013: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CF01E: For var_73E =  To var_72E: 1 = var_73E 'Integer
  loc_17CF031:   Set var_94 = Me.TxtGt3
  loc_17CF037:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CF051:   If (var_98.Visible = &HFF) Then
  loc_17CF062:     Set var_94 = Me.Txt
  loc_17CF068:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CF080:     Set var_D8 = Me.Txt
  loc_17CF086:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CF095:     Proc_6_7_F25D88(var_F8, CVar(var_E0))
  loc_17CF0A7:     Set var_E4 = Me.TxtGt3
  loc_17CF0AD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CF0C2:     var_6D0 = Val(var_E8.Text)
  loc_17CF0D2:     Set var_12C = Me.LblCap3
  loc_17CF0D8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CF0F2:     Set var_1B4 = Me.LblCap3
  loc_17CF0F8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CF112:     Set var_2C0 = Me.LblDummy3
  loc_17CF118:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CF12D:     var_6D8 = Val(var_364.Caption)
  loc_17CF13E:     Proc_6_7_F25D88(var_3B8, Date)
  loc_17CF147:     Set var_3FC = Me.TopCtrl1
  loc_17CF14D:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_6D8)
  loc_17CF198:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CF1ED:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CF244:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & "," & &H1F & ",'" & CVar(MemVar_1F92070) 
  loc_17CF28A:     var_548 = var_2F0 & "','" & CVar(MemVar_1F920C8) & "'," & var_3B8 & ",'" & IIf((CStr(var_450) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F92078) 
  loc_17CF2A1:     unk_58616C.Execute CStr(var_548 & "')"), var_578, -1
  loc_17CF325:   End If
  loc_17CF328: Next var_73E 'Integer
  loc_17CF333: unk_58616C.CommitTrans
  loc_17CF33A: var_8A = 0
  loc_17CF360: Call Proc_162_92_100626C(Proc_5_1_100CB50("INI", Me), global_92)
  loc_17CF376: Set var_94 = Me.TopCtrl1
  loc_17CF37C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_17CF38E: Set var_94 = Me.TopCtrl1
  loc_17CF394: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_17CF3A7: Set var_94 = Me.TopCtrl1
  loc_17CF3AD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_17CF3BF: Set var_94 = Me.TopCtrl1
  loc_17CF3C5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000F(True)
  loc_17CF3F0: Call Proc_162_92_100626C(Proc_5_1_100CB50("INI", Me), global_92)
  loc_17CF3FB: Call Proc_162_89_1B40DBC(var_8A)
  loc_17CF400: Exit Sub
  loc_17CF407: If (var_8A = &HFF) Then
  loc_17CF410:   unk_58616C.RollbackTrans
  loc_17CF415: End If
  loc_17CF415: Proc_6_60_E62BC4()
  loc_17CF41A: Exit Sub
End Sub

Public Function global_5792064Get() '588714
  BVM60.DLL.GetMemNewObj
End Function

Public Function global_5792064Get() '58872E
  BVM60.DLL.PutMemNewObj
End Function

Public Function global_5792064Get() '588748
  BVM60.DLL.SetMemNewObj
End Function

Public Function global_56Get() '588762
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '588771
  global_56 = Value
End Sub

Public Function global_60Get() '588780
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '58878F
  global_60 = Value
End Sub

Public Sub FindMove(mDocId) 'E707FC
  'Data Table: 586140
  Dim Me As Variant
  loc_E707A6: Me.MoveFirst
  loc_E707D0: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E707F0: If (Me.EOF = 0) Then
  loc_E707F3:   Call Proc_162_89_1B40DBC(var_9C)
  loc_E707F8: End If
  loc_E707F8: Exit Sub
  loc_E707F9: MeFF = 
End Sub

Public Sub SEARCHBACK(MyValue) 'E965B0
  'Data Table: 586140
  Dim Me As Recordset15
  loc_E9653E: On Error Goto loc_E965A7
  loc_E96547: Me.MoveFirst
  loc_E96571: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96599: Proc_5_0_110649C(&HFF, Me, global_92)
  loc_E965A1: Call Proc_162_89_1B40DBC(0)
  loc_E965A6: Exit Sub
  loc_E965A7: ' Referenced from: E9653E
  loc_E965A7: Proc_6_60_E62BC4(var_A0)
  loc_E965AC: Exit Sub
End Sub

Public Sub Proc_162_79_143D5F8
  'Data Table: 586140
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_143CAF2: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_143CB0D: Me.FGrid.Top = CVar(CDbl(700))
  loc_143CB28: Me.DGItem.Left = CVar(CDbl(3000))
  loc_143CB43: Me.DGItem.Top = CVar(CDbl(1000))
  loc_143CB59: Set var_A8 = Me.Txt
  loc_143CB5F: Call 0.Method_Proc_162_79_143D5F80 (CInt(3), var_AC)
  loc_143CB7E: Me.DGTable.Left = CVar(var_AC.Left)
  loc_143CB9A: Set var_B4 = Me.Txt
  loc_143CBA0: Call 0.Method_Proc_162_79_143D5F80 (CInt(3), var_B8)
  loc_143CBBB: Set var_A8 = Me.Txt
  loc_143CBC1: Call 0.Method_Proc_162_79_143D5F80 (CInt(3), var_AC)
  loc_143CBD9: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_143CBE8: Me.DGTable.Top = CVar(var_AC.Left)
  loc_143CC0D: Me.DGRest.Left = CVar(CDbl(3000))
  loc_143CC28: Me.DGRest.Top = CVar(CDbl(1000))
  loc_143CC34: Set var_C4 = Me.FGrid
  loc_143CC4B: global_112 = CStr(CLng(var_C4.BackColor))
  loc_143CC61: var_C4.Cols = &H20
  loc_143CC69: var_94 = CVar(CLng(0)) 'Long
  loc_143CC6E: var_E8 = &HFA
  loc_143CC7A: LateIdCallSt
  loc_143CC82: var_94 = 0
  loc_143CC8E: var_E8 = CVar(CLng(&HC)) 'Long
  loc_143CC93: var_108 = "KSNo"
  loc_143CC9C: LateIdCallSt
  loc_143CCA7: var_94 = CVar(CLng(&HC)) 'Long
  loc_143CCAC: var_E8 = 0
  loc_143CCB8: LateIdCallSt
  loc_143CCC0: var_94 = 0
  loc_143CCCC: var_E8 = CVar(CLng(1)) 'Long
  loc_143CCD1: var_108 = "Rest"
  loc_143CCDA: LateIdCallSt
  loc_143CCE5: var_94 = CVar(CLng(1)) 'Long
  loc_143CCF0: var_E8 = CVar(CInt(1)) 'Integer
  loc_143CCF7: LateIdCallSt
  loc_143CD02: var_94 = CVar(CLng(1)) 'Long
  loc_143CD07: var_E8 = 0
  loc_143CD13: LateIdCallSt
  loc_143CD1B: var_94 = 0
  loc_143CD27: var_E8 = CVar(CLng(2)) 'Long
  loc_143CD2C: var_108 = "Rest."
  loc_143CD35: LateIdCallSt
  loc_143CD40: var_94 = CVar(CLng(2)) 'Long
  loc_143CD4B: var_E8 = CVar(CInt(1)) 'Integer
  loc_143CD52: LateIdCallSt
  loc_143CD5D: var_94 = CVar(CLng(2)) 'Long
  loc_143CD62: var_E8 = 0
  loc_143CD6E: LateIdCallSt
  loc_143CD76: var_94 = 0
  loc_143CD82: var_E8 = CVar(CLng(3)) 'Long
  loc_143CD87: var_108 = "Item Code"
  loc_143CD90: LateIdCallSt
  loc_143CD9B: var_94 = CVar(CLng(3)) 'Long
  loc_143CDA6: var_E8 = CVar(CInt(1)) 'Integer
  loc_143CDAD: LateIdCallSt
  loc_143CDB8: var_94 = CVar(CLng(3)) 'Long
  loc_143CDBD: var_E8 = 0
  loc_143CDC9: LateIdCallSt
  loc_143CDD1: var_94 = 0
  loc_143CDDD: var_E8 = CVar(CLng(4)) 'Long
  loc_143CDE2: var_108 = "Item Name"
  loc_143CDEB: LateIdCallSt
  loc_143CDF6: var_94 = CVar(CLng(4)) 'Long
  loc_143CE01: var_E8 = CVar(CInt(1)) 'Integer
  loc_143CE08: LateIdCallSt
  loc_143CE13: var_94 = CVar(CLng(4)) 'Long
  loc_143CE18: var_E8 = &H76C
  loc_143CE24: LateIdCallSt
  loc_143CE2C: var_94 = 0
  loc_143CE38: var_E8 = CVar(CLng(5)) 'Long
  loc_143CE3D: var_108 = "KOT No."
  loc_143CE46: LateIdCallSt
  loc_143CE51: var_94 = CVar(CLng(5)) 'Long
  loc_143CE5C: var_E8 = CVar(CInt(7)) 'Integer
  loc_143CE63: LateIdCallSt
  loc_143CE6E: var_94 = CVar(CLng(5)) 'Long
  loc_143CE79: var_E8 = CVar(CInt(7)) 'Integer
  loc_143CE80: LateIdCallSt
  loc_143CE93: If (global_200 = "Y") Then
  loc_143CE99:   var_94 = CVar(CLng(5)) 'Long
  loc_143CE9E:   var_E8 = &H258
  loc_143CEAA:   LateIdCallSt
  loc_143CEB5: Else
  loc_143CEB8:   var_94 = CVar(CLng(5)) 'Long
  loc_143CEBD:   var_E8 = 0
  loc_143CEC9:   LateIdCallSt
  loc_143CED1: End If
  loc_143CED1: var_94 = 0
  loc_143CEDD: var_E8 = CVar(CLng(6)) 'Long
  loc_143CEE2: var_108 = "Unit"
  loc_143CEEB: LateIdCallSt
  loc_143CEF6: var_94 = CVar(CLng(6)) 'Long
  loc_143CF01: var_E8 = CVar(CInt(1)) 'Integer
  loc_143CF08: LateIdCallSt
  loc_143CF13: var_94 = CVar(CLng(6)) 'Long
  loc_143CF18: var_E8 = &H258
  loc_143CF24: LateIdCallSt
  loc_143CF2C: var_94 = 0
  loc_143CF38: var_E8 = CVar(CLng(7)) 'Long
  loc_143CF3D: var_108 = "Qty"
  loc_143CF46: LateIdCallSt
  loc_143CF51: var_94 = CVar(CLng(7)) 'Long
  loc_143CF5C: var_E8 = CVar(CInt(7)) 'Integer
  loc_143CF63: LateIdCallSt
  loc_143CF6E: var_94 = CVar(CLng(7)) 'Long
  loc_143CF79: var_E8 = CVar(CInt(7)) 'Integer
  loc_143CF80: LateIdCallSt
  loc_143CF8B: var_94 = CVar(CLng(7)) 'Long
  loc_143CF90: var_E8 = &H258
  loc_143CF9C: LateIdCallSt
  loc_143CFA4: var_94 = 0
  loc_143CFB0: var_E8 = CVar(CLng(8)) 'Long
  loc_143CFB5: var_108 = "Rate"
  loc_143CFBE: LateIdCallSt
  loc_143CFC9: var_94 = CVar(CLng(8)) 'Long
  loc_143CFD4: var_E8 = CVar(CInt(7)) 'Integer
  loc_143CFDB: LateIdCallSt
  loc_143CFE6: var_94 = CVar(CLng(8)) 'Long
  loc_143CFF1: var_E8 = CVar(CInt(7)) 'Integer
  loc_143CFF8: LateIdCallSt
  loc_143D003: var_94 = CVar(CLng(8)) 'Long
  loc_143D008: var_E8 = &H320
  loc_143D014: LateIdCallSt
  loc_143D01C: var_94 = 0
  loc_143D028: var_E8 = CVar(CLng(9)) 'Long
  loc_143D02D: var_108 = "Rate1"
  loc_143D036: LateIdCallSt
  loc_143D041: var_94 = CVar(CLng(9)) 'Long
  loc_143D04C: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D053: LateIdCallSt
  loc_143D05E: var_94 = CVar(CLng(9)) 'Long
  loc_143D069: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D070: LateIdCallSt
  loc_143D07B: var_94 = CVar(CLng(9)) 'Long
  loc_143D080: var_E8 = 0
  loc_143D08C: LateIdCallSt
  loc_143D094: var_94 = 0
  loc_143D0A0: var_E8 = CVar(CLng(&HA)) 'Long
  loc_143D0A5: var_108 = "Amount"
  loc_143D0AE: LateIdCallSt
  loc_143D0B9: var_94 = CVar(CLng(&HA)) 'Long
  loc_143D0C4: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D0CB: LateIdCallSt
  loc_143D0D6: var_94 = CVar(CLng(&HA)) 'Long
  loc_143D0E1: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D0E8: LateIdCallSt
  loc_143D0F3: var_94 = CVar(CLng(&HA)) 'Long
  loc_143D0F8: var_E8 = &H384
  loc_143D104: LateIdCallSt
  loc_143D10F: var_94 = CVar(CLng(&HD)) 'Long
  loc_143D114: var_E8 = 0
  loc_143D120: LateIdCallSt
  loc_143D12B: var_94 = CVar(CLng(&HB)) 'Long
  loc_143D130: var_E8 = 0
  loc_143D13C: LateIdCallSt
  loc_143D147: var_94 = CVar(CLng(&HE)) 'Long
  loc_143D14C: var_E8 = 0
  loc_143D158: LateIdCallSt
  loc_143D163: var_94 = CVar(CLng(&HF)) 'Long
  loc_143D168: var_E8 = 0
  loc_143D174: LateIdCallSt
  loc_143D17F: var_94 = CVar(CLng(&H10)) 'Long
  loc_143D184: var_E8 = 0
  loc_143D190: LateIdCallSt
  loc_143D19B: var_94 = CVar(CLng(&H11)) 'Long
  loc_143D1A0: var_E8 = 0
  loc_143D1AC: LateIdCallSt
  loc_143D1B7: var_94 = CVar(CLng(&H12)) 'Long
  loc_143D1BC: var_E8 = 0
  loc_143D1C8: LateIdCallSt
  loc_143D1D3: var_94 = CVar(CLng(&H14)) 'Long
  loc_143D1D8: var_E8 = 0
  loc_143D1E4: LateIdCallSt
  loc_143D1EF: var_94 = CVar(CLng(&H13)) 'Long
  loc_143D1F4: var_E8 = 0
  loc_143D200: LateIdCallSt
  loc_143D20B: var_94 = CVar(CLng(&H18)) 'Long
  loc_143D210: var_E8 = 0
  loc_143D21C: LateIdCallSt
  loc_143D227: var_94 = CVar(CLng(&H19)) 'Long
  loc_143D22C: var_E8 = 0
  loc_143D238: LateIdCallSt
  loc_143D243: var_94 = CVar(CLng(&H1A)) 'Long
  loc_143D248: var_E8 = 0
  loc_143D254: LateIdCallSt
  loc_143D25C: var_94 = 0
  loc_143D268: var_E8 = CVar(CLng(&HB)) 'Long
  loc_143D26D: var_108 = "Item Code"
  loc_143D276: LateIdCallSt
  loc_143D27E: var_94 = 0
  loc_143D28A: var_E8 = CVar(CLng(&HE)) 'Long
  loc_143D28F: var_108 = "Disc %"
  loc_143D298: LateIdCallSt
  loc_143D2A0: var_94 = 0
  loc_143D2AC: var_E8 = CVar(CLng(&HF)) 'Long
  loc_143D2B1: var_108 = "Disc Amt."
  loc_143D2BA: LateIdCallSt
  loc_143D2C2: var_94 = 0
  loc_143D2CE: var_E8 = CVar(CLng(&H10)) 'Long
  loc_143D2D3: var_108 = "Tax %"
  loc_143D2DC: LateIdCallSt
  loc_143D2E4: var_94 = 0
  loc_143D2F0: var_E8 = CVar(CLng(&H11)) 'Long
  loc_143D2F5: var_108 = "Tax Amt"
  loc_143D2FE: LateIdCallSt
  loc_143D306: var_94 = 0
  loc_143D312: var_E8 = CVar(CLng(&H12)) 'Long
  loc_143D317: var_108 = "Total"
  loc_143D320: LateIdCallSt
  loc_143D328: var_94 = 0
  loc_143D334: var_E8 = CVar(CLng(&H14)) 'Long
  loc_143D339: var_108 = "R Off"
  loc_143D342: LateIdCallSt
  loc_143D34A: var_94 = 0
  loc_143D356: var_E8 = CVar(CLng(&H13)) 'Long
  loc_143D35B: var_108 = "Disc Y/N"
  loc_143D364: LateIdCallSt
  loc_143D36C: var_94 = 0
  loc_143D378: var_E8 = CVar(CLng(&H18)) 'Long
  loc_143D37D: var_108 = "Tax Cat Code"
  loc_143D386: LateIdCallSt
  loc_143D391: var_94 = CVar(CLng(&H15)) 'Long
  loc_143D396: var_E8 = 0
  loc_143D3A2: LateIdCallSt
  loc_143D3AD: var_94 = CVar(CLng(&H16)) 'Long
  loc_143D3B2: var_E8 = 0
  loc_143D3BE: LateIdCallSt
  loc_143D3C9: var_94 = CVar(CLng(&H17)) 'Long
  loc_143D3CE: var_E8 = 0
  loc_143D3DA: LateIdCallSt
  loc_143D3E5: var_94 = CVar(CLng(&H1B)) 'Long
  loc_143D3EA: var_E8 = 0
  loc_143D3F6: LateIdCallSt
  loc_143D401: var_94 = CVar(CLng(&H1C)) 'Long
  loc_143D406: var_E8 = 0
  loc_143D412: LateIdCallSt
  loc_143D41A: var_94 = 0
  loc_143D426: var_E8 = CVar(CLng(&H1D)) 'Long
  loc_143D42B: var_108 = "Bill 1"
  loc_143D434: LateIdCallSt
  loc_143D43F: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143D44A: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D451: LateIdCallSt
  loc_143D45C: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143D467: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D46E: LateIdCallSt
  loc_143D479: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143D47E: var_E8 = &H258
  loc_143D48A: LateIdCallSt
  loc_143D492: var_94 = 0
  loc_143D49E: var_E8 = CVar(CLng(&H1E)) 'Long
  loc_143D4A3: var_108 = "Bill 2"
  loc_143D4AC: LateIdCallSt
  loc_143D4B7: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143D4C2: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D4C9: LateIdCallSt
  loc_143D4D4: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143D4DF: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D4E6: LateIdCallSt
  loc_143D4F1: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143D4F6: var_E8 = &H258
  loc_143D502: LateIdCallSt
  loc_143D50A: var_94 = 0
  loc_143D516: var_E8 = CVar(CLng(&H1F)) 'Long
  loc_143D51B: var_108 = "Bill 3"
  loc_143D524: LateIdCallSt
  loc_143D52F: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143D53A: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D541: LateIdCallSt
  loc_143D54C: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143D557: var_E8 = CVar(CInt(7)) 'Integer
  loc_143D55E: LateIdCallSt
  loc_143D569: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143D56E: var_E8 = &H258
  loc_143D57A: LateIdCallSt
  loc_143D591: var_C4.BackColorBkg = CVar(CLng(global_224))
  loc_143D598: Set var_C4 = Nothing 
  loc_143D5A0: Set var_11C = Me.FGCat
  loc_143D5B7: global_112 = CStr(CLng(var_11C.BackColor))
  loc_143D5C4: var_94 = CVar(CLng(3)) 'Long
  loc_143D5C9: var_E8 = &H7D0
  loc_143D5D5: LateIdCallSt
  loc_143D5E9: var_11C.Cols = 8
  loc_143D5F0: Set var_11C = Nothing 
  loc_143D5F4: Exit Sub
End Sub

Public Sub Proc_162_80_1B6D500
  'Data Table: 586140
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_14C As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1F0 As Variant
  Dim var_190 As Variant
  Dim var_158 As String
  Dim unk_58616C As Connection15
  Dim var_88 As Variant
  Dim var_150 As Variant
  Dim var_1FC As Variant
  Dim var_208 As Double
  Dim var_A4 As Double
  Dim var_AC As Variant
  Dim var_200 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_154 As Variant
  Dim var_1F8 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Double
  Dim MemVar_1F920EC As Double
  Dim Me As Recordset15
  Dim var_240 As Variant
  Dim var_254 As String
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_118 As Recordset15
  Dim var_8A As Variant
  Dim var_2A8 As Variant
  Dim var_2F0 As Variant
  Dim var_3DC As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_42C As Variant
  Dim var_46C As Variant
  Dim var_44C As Variant
  Dim var_4B4 As Variant
  Dim var_A0C As Double
  Dim var_504 As Variant
  Dim var_A14 As Double
  Dim var_794 As Variant
  Dim var_A1C As Double
  Dim var_8E0 As Variant
  Dim var_8C0 As String
  Dim var_958 As Variant
  Dim var_29C As String
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_2BC As Variant
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_1D0 As Variant
  Dim var_2EC As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_264 As Variant
  Dim var_364 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_394 As Variant
  Dim var_3A4 As Variant
  Dim var_3D4 As Variant
  Dim var_48C As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_4C8 As Variant
  Dim var_4F8 As Variant
  Dim var_528 As Variant
  Dim var_558 As Variant
  Dim var_568 As Variant
  Dim var_598 As Variant
  Dim var_5C8 As Variant
  Dim var_5F8 As Variant
  Dim var_608 As Variant
  Dim var_628 As Variant
  Dim var_638 As Variant
  Dim var_648 As Variant
  Dim var_688 As Variant
  Dim var_698 As Variant
  Dim var_6C8 As Variant
  Dim var_6D8 As Variant
  Dim var_708 As Variant
  Dim var_728 As Variant
  Dim var_738 As Variant
  Dim var_768 As Variant
  Dim var_778 As Variant
  Dim var_788 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_7E8 As Variant
  Dim var_828 As Variant
  Dim var_838 As Variant
  Dim var_940 As Variant
  Dim var_96C As Variant
  Dim var_99C As Variant
  Dim var_9BC As Variant
  Dim var_2A4 As Variant
  Dim var_408 As Variant
  Dim var_3D8 As Variant
  Dim var_3E8 As Variant
  Dim var_508 As String
  Dim var_428 As Variant
  Dim var_47C As Variant
  Dim var_2A0 As TextBox
  Dim var_3E4 As Variant
  Dim var_4B0 As MSHFlexGrid
  Dim var_4FC As MSHFlexGrid
  Dim var_500 As Variant
  Dim var_78C As Variant
  Dim var_A30 As String
  Dim var_790 As MSHFlexGrid
  Dim var_A34 As String
  Dim var_9F0 As Variant
  Dim var_A54 As Variant
  Dim var_A68 As String
  Dim var_A98 As Variant
  Dim var_AB8 As Variant
  Dim var_AFC As Variant
  Dim var_B1C As Variant
  Dim var_954 As Variant
  Dim var_B60 As Variant
  Dim var_B80 As Variant
  Dim var_B94 As String
  Dim var_105C As Double
  Dim var_BE4 As Variant
  Dim var_A04 As Variant
  Dim var_878 As Variant
  Dim var_BF8 As String
  Dim var_1064 As Double
  Dim var_C5C As Variant
  Dim var_8BC As Variant
  Dim var_C60 As String
  Dim var_106C As Double
  Dim var_1074 As Double
  Dim var_DD0 As Variant
  Dim var_DF0 As Variant
  Dim var_E04 As MSHFlexGrid
  Dim var_E64 As Variant
  Dim var_E84 As Variant
  Dim var_EF8 As Variant
  Dim var_F18 As Variant
  Dim var_F3C As Variant
  Dim var_107C As Double
  Dim var_2F4 As String
  Dim var_4B8 As String
  Dim var_A24 As String
  Dim var_A28 As String
  Dim var_A00 As Variant
  Dim var_DA0 As Variant
  Dim var_F5C As Variant
  Dim var_3E0 As String
  Dim var_95C As String
  Dim var_146 As Integer
  Dim var_128 As Recordset15
  Dim var_12C As Recordset15
  Dim var_D1C As Field20
  Dim var_A2C As String
  loc_1B68690: On Error Goto loc_1B6D4E6
  loc_1B6869E: Set var_14C = Me.Txt
  loc_1B686A4: Call 0.Method_Proc_162_80_1B6D5000 (CInt(1))
  loc_1B686CD: If (Proc_6_27_EA565C(var_150, "Voucher Date") = 0) Then
  loc_1B686D0:   Exit Sub
  loc_1B686D1: End If
  loc_1B686D8: Set var_14C = Me.TxtGt
  loc_1B686DE: Call 0.Method_Proc_162_80_1B6D5008 (var_15A)
  loc_1B686F1: Call TxtGt_Validate((var_15A + 1))
  loc_1B68704: Set var_14C = Me.Txt
  loc_1B6870A: Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_150)
  loc_1B68733: If (Proc_6_27_EA565C(var_150, "Voucher No") = 0) Then
  loc_1B68736:   Exit Sub
  loc_1B68737: End If
  loc_1B68742: Set var_14C = Me.Txt
  loc_1B68748: Call 0.Method_Proc_162_80_1B6D5000 (CInt(5), var_150)
  loc_1B68771: If (Proc_6_27_EA565C(var_150, "CashRegData Time") = 0) Then
  loc_1B68774:   Exit Sub
  loc_1B68775: End If
  loc_1B68780: If (global_60 = vbNullString) Then
  loc_1B6879C:   MsgBox("Open RestaurantChange Form ", 0, var_1A0, var_1C0, var_1E0)
  loc_1B687AC:   Exit Sub
  loc_1B687AD: End If
  loc_1B687AD: var_170 = 1
  loc_1B687B9: var_1B0 = CVar(CLng(4)) 'Long
  loc_1B687D3: var_1A0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B687D9: var_1C0 = Trim(var_1A0)
  loc_1B687F5: If (var_1C0 = vbNullString) Then
  loc_1B6880B:   var_180 = "No Item On First Row.."
  loc_1B68811:   MsgBox(var_180, 0, var_1A0, var_1C0, var_1E0)
  loc_1B68834:   Me.FGrid.Row = 1
  loc_1B68840:   Set var_14C = Me.FGrid
  loc_1B68851:   Exit Sub
  loc_1B68852: End If
  loc_1B6885D: If (global_212 = "Room Service") Then
  loc_1B68875:   var_170 = MemVar_1F92078
  loc_1B6887D:   Proc_6_17_EAA2B0(var_180, var_170, "Select RoomPayType From enviro WHERE LOGSITE_CODE=", var_1C0, -1, var_14C)
  loc_1B68893:   unk_58616C.Execute CStr(FGrid.DispID_8001 & var_180), var_1B0, var_170
  loc_1B6889E:   Set var_88 = var_14C
  loc_1B688C4:   If (var_88.RecordCount > 0) Then
  loc_1B688D9:     var_14C = var_88.Fields
  loc_1B688E1:     var_150 = var_14C.Item(0)
  loc_1B6890B:     If (Proc_6_38_E68A98(var_150.Value, 0) = vbNullString) Then
  loc_1B68929:       var_180 = "Please define Room Payment Type From Enviro"
  loc_1B6892F:       MsgBox(var_180, &H40, "HMS", var_1C0, var_1E0)
  loc_1B6893F:       Exit Sub
  loc_1B68940:     End If
  loc_1B68940:   End If
  loc_1B68943: Else
  loc_1B68960:   Proc_6_17_EAA2B0(var_180, MemVar_1F92078, "Select CashPayType From enviro WHERE LOGSITE_CODE=", var_1C0)
  loc_1B68968:   var_1A0 = -1 & var_180 
  loc_1B68976:   unk_58616C.Execute CStr("HMS"), var_14C, var_150
  loc_1B68981:   Set var_88 = var_14C
  loc_1B689A7:   If (var_88.RecordCount > 0) Then
  loc_1B689C4:     var_150 = var_88.Fields.Item(0)
  loc_1B689D9:     var_124 = Proc_6_38_E68A98(var_150.Value)
  loc_1B689EE:     If (var_124 = vbNullString) Then
  loc_1B68A12:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1C0, var_1E0)
  loc_1B68A22:       Exit Sub
  loc_1B68A23:     End If
  loc_1B68A23:   End If
  loc_1B68A23: End If
  loc_1B68A31: Set var_14C = Me.Txt
  loc_1B68A37: Call 0.Method_Proc_162_80_1B6D5000 (CInt(6), var_150)
  loc_1B68A5B: If (CDbl(Val(var_150.Text)) <> CDbl(0)) Then
  loc_1B68A65:   Set var_154 = Me.TxtGt
  loc_1B68A6B:   Call 0.Method_Proc_162_80_1B6D5008 (var_15A)
  loc_1B68A7D:   Set var_1F8 = Me.TxtGt
  loc_1B68A83:   Call 0.Method_Proc_162_80_1B6D5000 (var_15A, var_1FC)
  loc_1B68AA9:   Set var_14C = Me.Txt
  loc_1B68AAF:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(6), var_150)
  loc_1B68ADE:   If (CDbl(Val(var_150.Text)) < CDbl(Val(var_1FC.Text))) Then
  loc_1B68B02:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1C0, var_1E0)
  loc_1B68B1D:     Set var_14C = Me.Txt
  loc_1B68B23:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(6), var_150)
  loc_1B68B2B:     var_150.SetFocus
  loc_1B68B37:     Exit Sub
  loc_1B68B38:   End If
  loc_1B68B38: End If
  loc_1B68B5D: For var_20C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_20C 'Integer
  loc_1B68B67:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B68B6F:   var_1B0 = CVar(CLng(&H11)) 'Long
  loc_1B68B9F:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1B68BA6:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B68BAE:     var_1B0 = CVar(CLng(&HA)) 'Long
  loc_1B68BDA:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1B68BE9:   Else
  loc_1B68BED:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B68BF5:     var_1B0 = CVar(CLng(&HA)) 'Long
  loc_1B68C04:     var_180 = Me.FGrid.TextMatrix)
  loc_1B68C0F:     var_158 = CStr(var_180)
  loc_1B68C21:     var_AC = (var_AC + Val(var_158))
  loc_1B68C2D:   End If
  loc_1B68C30: Next var_20C 'Integer
  loc_1B68C41: Set var_14C = Me.TxtGt
  loc_1B68C47: Call 0.Method_Proc_162_80_1B6D5008 (var_15A, var_92)
  loc_1B68C52: For var_210 =  To var_15A: 1 = var_210 'Integer
  loc_1B68C84:   Set var_14C = Me.LblCap
  loc_1B68C8A:   Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_180, -1)
  loc_1B68CBC:   unk_58616C.Execute var_1F8 & var_158 & "' And V_Type='" & global_144 & "'", 0, var_1FC
  loc_1B68CC4:   var_1A0 = var_150.Tag.Fields
  loc_1B68CCC:    = var_1F8.Item()
  loc_1B68CD4:    = var_1FC.Value
  loc_1B68D08:   var_220 = Proc_6_38_E68A98(var_1A0)
  loc_1B68D13:   If (var_220 = "Addition") Then
  loc_1B68D23:     Set var_14C = Me.TxtGt
  loc_1B68D29:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150)
  loc_1B68D31:     var_158 = var_150.Text
  loc_1B68D48:     var_B4 = (var_B4 + Val(var_158))
  loc_1B68D62:     Set var_14C = Me.TxtPer
  loc_1B68D68:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158)
  loc_1B68D70:     var_B4 = var_150.Text
  loc_1B68D87:     var_CC = (var_CC + Val(var_158))
  loc_1B68D97:   Else
  loc_1B68D9F:     If (var_220 = "Deduction") Then
  loc_1B68DAF:       Set var_14C = Me.TxtGt
  loc_1B68DB5:       Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158)
  loc_1B68DBD:       var_CC = var_150.Text
  loc_1B68DD4:       var_BC = (var_BC + Val(var_158))
  loc_1B68DEE:       Set var_14C = Me.TxtPer
  loc_1B68DF4:       Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_BC)
  loc_1B68DFC:       var_208 = var_150.Text
  loc_1B68E13:       var_C4 = (var_C4 + Val(var_158))
  loc_1B68E23:     Else
  loc_1B68E2B:       If (var_220 = "Discount") Then
  loc_1B68E3B:         Set var_14C = Me.TxtGt
  loc_1B68E41:         Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_C4)
  loc_1B68E49:         var_208 = var_150.Text
  loc_1B68E60:         var_DC = (var_DC + Val(var_158))
  loc_1B68E7A:         Set var_14C = Me.TxtPer
  loc_1B68E80:         Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_DC)
  loc_1B68E88:         var_208 = var_150.Text
  loc_1B68E9F:         var_E4 = (var_E4 + Val(var_158))
  loc_1B68EAF:       Else
  loc_1B68EB7:         If (var_220 = "Luxury Tax") Then
  loc_1B68EC7:           Set var_14C = Me.TxtGt
  loc_1B68ECD:           Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_E4)
  loc_1B68ED5:           var_208 = var_150.Text
  loc_1B68EEC:           var_FC = (var_FC + Val(var_158))
  loc_1B68F06:           Set var_14C = Me.TxtPer
  loc_1B68F0C:           Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_FC)
  loc_1B68F14:           var_208 = var_150.Text
  loc_1B68F2B:           var_D4 = (var_D4 + Val(var_158))
  loc_1B68F3B:         Else
  loc_1B68F43:           If (var_220 = "Round Off") Then
  loc_1B68F53:             Set var_14C = Me.TxtGt
  loc_1B68F59:             Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_D4)
  loc_1B68F61:             var_208 = var_150.Text
  loc_1B68F78:             var_EC = (var_EC + Val(var_158))
  loc_1B68F92:             Set var_14C = Me.TxtPer
  loc_1B68F98:             Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_EC)
  loc_1B68FA0:             var_208 = var_150.Text
  loc_1B68FB7:             var_F4 = (var_F4 + Val(var_158))
  loc_1B68FC7:           Else
  loc_1B68FCF:             If (var_220 = "Sale Tax") Then
  loc_1B68FDF:               Set var_14C = Me.TxtGt
  loc_1B68FE5:               Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_F4)
  loc_1B68FED:               var_208 = var_150.Text
  loc_1B69004:               var_FC = (var_FC + Val(var_158))
  loc_1B6901E:               Set var_14C = Me.TxtPer
  loc_1B69024:               Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_FC)
  loc_1B6902C:               var_208 = var_150.Text
  loc_1B69043:               var_D4 = (var_D4 + Val(var_158))
  loc_1B69053:             Else
  loc_1B6905B:               If (var_220 = "Service Charge") Then
  loc_1B6906B:                 Set var_14C = Me.TxtGt
  loc_1B69071:                 Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_D4)
  loc_1B69079:                 var_208 = var_150.Text
  loc_1B69090:                 var_104 = (var_104 + Val(var_158))
  loc_1B690AA:                 Set var_14C = Me.TxtPer
  loc_1B690B0:                 Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_104)
  loc_1B690B8:                 var_208 = var_150.Text
  loc_1B690CF:                 var_10C = (var_10C + Val(var_158))
  loc_1B690DF:               Else
  loc_1B690E7:                 If (var_220 = "Service Tax") Then
  loc_1B690F7:                   Set var_14C = Me.TxtGt
  loc_1B690FD:                   Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_10C)
  loc_1B69105:                   var_208 = var_150.Text
  loc_1B6911C:                   var_FC = (var_FC + Val(var_158))
  loc_1B69136:                   Set var_14C = Me.TxtPer
  loc_1B6913C:                   Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150, var_158, var_FC)
  loc_1B69144:                   var_208 = var_150.Text
  loc_1B6915B:                   var_D4 = (var_D4 + Val(var_158))
  loc_1B69168:                 End If
  loc_1B69168:               End If
  loc_1B69168:             End If
  loc_1B69168:           End If
  loc_1B69168:         End If
  loc_1B69168:       End If
  loc_1B69168:     End If
  loc_1B69168:   End If
  loc_1B6916B: Next var_210 'Integer
  loc_1B69173: var_9C = vbNullString
  loc_1B69179: Call Proc_162_90_110AF10(var_15A)
  loc_1B69184: If (var_15A = 0) Then
  loc_1B69187:   Exit Sub
  loc_1B69188: End If
  loc_1B69193: Set var_14C = Me.TxtGrid
  loc_1B69199: Call 0.Method_Proc_162_80_1B6D5000 (0, var_150)
  loc_1B691A1: var_150.Visible = False
  loc_1B691AD: Call Proc_162_93_EF7914()
  loc_1B691C0: Set var_14C = Me.Txt
  loc_1B691C6: Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_150)
  loc_1B691EE: If (Proc_6_91_EF2D40(CDate(var_150.Text)) = 0) Then
  loc_1B691FC:   Set var_14C = Me.Txt
  loc_1B69202:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(1))
  loc_1B6920A:   var_150.SetFocus
  loc_1B69216:   Exit Sub
  loc_1B69217: End If
  loc_1B6921B: Set var_14C = Me.TopCtrl1
  loc_1B69221: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_150)
  loc_1B6923A: If (CStr() = "Add") Then
  loc_1B69243:   var_190 = 0
  loc_1B69260:   var_158 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078
  loc_1B69270:   unk_58616C.Execute var_158 & "'", var_180, -1
  loc_1B69278:   var_14C = var_14C.Fields
  loc_1B69280:   var_190 = var_150.Item(var_150)
  loc_1B69288:   var_154 = var_154.Value
  loc_1B69292:   MemVar_1F920EC = CDate(var_1A0)
  loc_1B692B2:   var_190 = 0
  loc_1B692D9:   Set var_14C = Me.Txt
  loc_1B692DF:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, "Select Count(*) From Sale1 Where DocID='", var_180, -1, var_154)
  loc_1B692E7:   var_1F8 = var_150.Text
  loc_1B69300:   unk_58616C.Execute var_190 & var_158 & "'", var_1FC, var_1A0
  loc_1B69308:   MemVar_1F920EC = var_154.Fields
  loc_1B69310:    = var_1F8.Item(var_1A0)
  loc_1B69318:    = var_1FC.Value
  loc_1B69345:   If (var_1A0 > 0) Then
  loc_1B6934E:     Call Proc_162_95_10E8FB8(MemVar_1F92044)
  loc_1B69361:     Set var_14C = Me.Txt
  loc_1B69367:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150)
  loc_1B6936F:     var_150.Text = var_158
  loc_1B6937E:     Exit Sub
  loc_1B6937F:   End If
  loc_1B69382: Else
  loc_1B693B6:   global_116 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B693C7: End If
  loc_1B693C7: var_170 = 1
  loc_1B693D3: var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B693EE: var_1F0 = 1
  loc_1B693FA: var_240 = CVar(CLng(&HC)) 'Long
  loc_1B6941C: var_208 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B69453: unk_58616C.Execute "Select Waiter From CashRegData where DocID='" & CStr(Me.FGrid.TextMatrix)) & "' And SNO =" & CStr(var_208), var_1C0, -1
  loc_1B6945E: Set var_88 = var_154
  loc_1B69496: If (var_88.RecordCount > 0) Then
  loc_1B694AB:   var_14C = var_88.Fields
  loc_1B694CA:   global_204 = CStr(var_14C.Item(0).Value)
  loc_1B694DB: End If
  loc_1B694E1: global_140 = vbNullString
  loc_1B694EB: Call Proc_162_98_EAB644(var_118, var_14C, var_154, var_208, var_240)
  loc_1B694F3: Set var_118 = var_14C
  loc_1B6951B: For var_268 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_268 'Integer
  loc_1B69525:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6952D:   var_1B0 = CVar(CLng(4)) 'Long
  loc_1B6954D:   var_1C0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B69555:   var_1F0 = vbNullString
  loc_1B69563:   var_230 = CVar(CLng(var_92)) 'Long
  loc_1B695B3:   If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1B695CA:     If (var_118.RecordCount > 0) Then
  loc_1B695D0:       var_118.MoveFirst
  loc_1B695E1:       var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B6964A:       var_118.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1B69674:       If var_118.EOF Then
  loc_1B69682:         var_118.AddNew CVar(CLng(var_92)), var_190
  loc_1B6968B:         var_170 = CVar(CLng(var_92)) 'Long
  loc_1B69693:         var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B696D9:         var_230 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B696E7:         var_118.Collect = "V_NO"
  loc_1B69708:         var_118.Update var_170, var_190
  loc_1B6970D:       End If
  loc_1B69710:     Else
  loc_1B6971B:       var_118.AddNew var_170, var_190
  loc_1B6972C:       var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B69772:       var_230 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B69780:       var_118.Collect = "V_NO"
  loc_1B697A1:       var_118.Update CVar(CLng(var_92)), var_190
  loc_1B697A6:     End If
  loc_1B697A6:   End If
  loc_1B697A9: Next var_268 'Integer
  loc_1B697B4: var_1F4 = var_118.RecordCount
  loc_1B697C2: If (var_1F4 > 0) Then
  loc_1B697CB:   var_118.Sort = "V_NO"
  loc_1B697D3:   var_118.MoveFirst
  loc_1B697D8:   ' Referenced from: 1B698CA
  loc_1B697DE:   var_15A = var_118.EOF
  loc_1B697E7:   If Not(var_15A) Then
  loc_1B697F5:     If (global_140 <> vbNullString) Then
  loc_1B6984A:       global_140 = CStr(Trim(CVar(global_140 & "," & CStr(var_118.Fields.Item("V_NO").Value))))
  loc_1B6986A:     Else
  loc_1B69884:       var_150 = var_118.Fields.Item("V_NO")
  loc_1B69896:       var_1A0 = CVar(CStr(var_150.Value)) 'String
  loc_1B698A5:       var_158 = CStr(Trim(var_1A0))
  loc_1B698AB:       global_140 = var_158
  loc_1B698C2:     End If
  loc_1B698C5:     var_118.MoveNext
  loc_1B698CA:     GoTo loc_1B697D8
  loc_1B698CD:   End If
  loc_1B698D6:   global_140 = global_140
  loc_1B698DA: End If
  loc_1B698DC: var_8A = &HFF
  loc_1B698E8: unk_58616C.BeginTrans var_1F4
  loc_1B6990B: Set var_14C = Me.Txt
  loc_1B69911: Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, "Delete From Stock Where DocID='")
  loc_1B69919: var_180 = var_150.Text
  loc_1B69922: var_200 = -1 & var_158
  loc_1B69932: unk_58616C.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, var_8A
  loc_1B6996A: Set var_14C = Me.Txt
  loc_1B69970: Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, "Delete From Sale1 Where DocID='")
  loc_1B69978: var_180 = var_150.Text
  loc_1B69981: var_200 = -1 & var_158
  loc_1B69991: unk_58616C.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B699C9: Set var_14C = Me.Txt
  loc_1B699CF: Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, "Delete From Sale2 Where DocID='")
  loc_1B699D7: var_180 = var_150.Text
  loc_1B699E0: var_200 = -1 & var_158
  loc_1B699F0: unk_58616C.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B69A28: Set var_14C = Me.Txt
  loc_1B69A2E: Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, "Delete From SunTran Where DocID='")
  loc_1B69A36: var_180 = var_150.Text
  loc_1B69A3F: var_200 = -1 & var_158
  loc_1B69A4F: unk_58616C.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B69A74: If (global_212 = "Room Service") Then
  loc_1B69A85:   Set var_14C = Me.Txt
  loc_1B69A8B:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150)
  loc_1B69A93:   var_158 = var_150.Text
  loc_1B69AA6:   Set var_154 = Me.Txt
  loc_1B69AAC:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1F8)
  loc_1B69ACF:   Set var_1FC = Me.Txt
  loc_1B69AD5:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A0)
  loc_1B69AE4:   Proc_6_7_F25D88(var_1A0, CVar(var_2A0))
  loc_1B69AF7:   Set var_2A4 = Me.Txt
  loc_1B69AFD:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(5), var_2A8)
  loc_1B69B17:   var_2F4 = Me.LblVPrefix.Caption
  loc_1B69B2A:   Set var_3D8 = Me.Txt
  loc_1B69B30:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_3DC)
  loc_1B69B38:   var_3E0 = var_3DC.Text
  loc_1B69B48:   Set var_3E4 = Me.Txt
  loc_1B69B4E:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_3E8)
  loc_1B69B53:   var_3F8 = 1
  loc_1B69B5F:   var_418 = CVar(CLng(&H17)) 'Long
  loc_1B69BA5:   Set var_4B0 = Me.Txt
  loc_1B69BAB:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(4), var_4B4, var_4B8)
  loc_1B69BB3:   var_418 = var_4B4.Text
  loc_1B69BC0:   var_A0C = Val(var_4B8)
  loc_1B69BCA:   Set var_4FC = Me.TxtGt
  loc_1B69BD0:   Call 0.Method_Proc_162_80_1B6D5004 (var_15A, var_A0C)
  loc_1B69BE2:   Set var_500 = Me.TxtGt
  loc_1B69BE8:   Call 0.Method_Proc_162_80_1B6D5000 (var_15A, var_504, var_508)
  loc_1B69BF0:   var_3F8 = var_504.Text
  loc_1B69BFD:   var_A14 = Val(var_508)
  loc_1B69C07:   Set var_78C = Me.TxtGt
  loc_1B69C0D:   Call 0.Method_Proc_162_80_1B6D5008 (var_15C, var_A14)
  loc_1B69C1F:   Set var_790 = Me.TxtGt
  loc_1B69C25:   Call 0.Method_Proc_162_80_1B6D5000 (var_15C, var_794)
  loc_1B69C3A:   var_A1C = Val(var_794.Text)
  loc_1B69C4B:   Proc_6_7_F25D88(var_878, Date)
  loc_1B69C54:   Set var_8AC = Me.TopCtrl1
  loc_1B69C5A:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A1C)
  loc_1B69C9F:   Set var_954 = Me.Txt
  loc_1B69CA5:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(5), var_958)
  loc_1B69CAD:   var_95C = var_958.Text
  loc_1B69CC6:   var_200 = "Insert Into Sale1(Docid,VNo,VDate,VTime,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B69D16:   var_2DC = CVar(var_200 & var_158 & "'," & CStr(Val(var_1F8.Text)) & ",") & var_1A0 & ",'" & CVar(var_2A8.Text) & "','" & CVar(global_144) 
  loc_1B69D68:   var_374 = var_2DC & "','" & CVar(var_2F4) & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_60) & "','" & CVar(global_148) 
  loc_1B69D8E:   var_48C = var_374 & "','" & CVar(global_152) & "','" & IIf((var_3E0 <> vbNullString), CVar(var_3E8), CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B69E06:   var_628 = var_48C & "'," & CVar(var_A0C) & "," & CVar(var_A14) & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) 
  loc_1B69E7E:   var_7B8 = var_628 & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A1C) 
  loc_1B69EA7:   var_838 = var_7B8 & ",'" & CVar(global_140) & "', '" & CVar(MemVar_1F920C8) 
  loc_1B69EE3:   var_99C = var_838 & "'," & var_878 & ",'" & IIf((CStr(var_8BC) = "Add"), "A", "E") & "','" & CVar(var_95C) & "','" 
  loc_1B69EF0:   var_9BC = var_99C & CVar(global_204) 
  loc_1B69F07:   unk_58616C.Execute CStr(var_9BC & "','N')"), var_A00, -1
  loc_1B69FF4: Else
  loc_1B6A002:   Set var_14C = Me.Txt
  loc_1B6A008:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158)
  loc_1B6A010:   var_A04 = var_150.Text
  loc_1B6A023:   Set var_154 = Me.Txt
  loc_1B6A029:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1F8)
  loc_1B6A03E:   var_208 = Val(var_1F8.Text)
  loc_1B6A04C:   Set var_1FC = Me.Txt
  loc_1B6A052:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A0)
  loc_1B6A061:   Proc_6_7_F25D88(var_1A0, CVar(var_2A0))
  loc_1B6A084:   var_408 = CVar(CLng(&H17)) 'Long
  loc_1B6A08D:   Set var_2A8 = Me.FGrid
  loc_1B6A093:   var_394 = var_2A8.TextMatrix)
  loc_1B6A0AD:   Set var_2F0 = Me.Txt
  loc_1B6A0B3:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(4), var_3D8, var_2F4, var_394)
  loc_1B6A0BB:   var_408 = var_3D8.Text
  loc_1B6A0C8:   var_A0C = Val(var_2F4)
  loc_1B6A0D2:   Set var_3DC = Me.TxtGt
  loc_1B6A0D8:   Call 0.Method_Proc_162_80_1B6D5004 (var_15A, var_A0C, 1)
  loc_1B6A0EA:   Set var_3E4 = Me.TxtGt
  loc_1B6A0F0:   Call 0.Method_Proc_162_80_1B6D5000 (var_15A, var_3E8, var_3E0)
  loc_1B6A105:   var_A14 = Val(var_3E0)
  loc_1B6A10F:   Set var_42C = Me.TxtGt
  loc_1B6A115:   Call 0.Method_Proc_162_80_1B6D5008 (var_15C, var_A14)
  loc_1B6A127:   Set var_4B0 = Me.TxtGt
  loc_1B6A12D:   Call 0.Method_Proc_162_80_1B6D5000 (var_15C, var_4B4)
  loc_1B6A142:   var_A1C = Val(var_4B4.Text)
  loc_1B6A176:   Proc_6_7_F25D88(var_838, Date)
  loc_1B6A17F:   Set var_4FC = Me.TopCtrl1
  loc_1B6A185:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A1C)
  loc_1B6A1CA:   Set var_500 = Me.Txt
  loc_1B6A1D0:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(5), var_504)
  loc_1B6A1F1:   var_200 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B6A241:   var_2DC = CVar(var_200 & var_158 & "'," & CStr(var_3E8.Text) & ",") & var_1A0 & ",'" & CVar(global_144) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B6A296:   var_364 = var_2DC & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_60) & "','" & CVar(global_148) & "','" & CVar(global_152) 
  loc_1B6A2FA:   var_4F8 = var_364 & "','" & CVar(CStr(var_394)) & "'," & CVar(var_A0C) & "," & CVar(var_A14) & "," & CVar(var_E4) & "," & CVar(var_DC) 
  loc_1B6A372:   var_688 = var_4F8 & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) 
  loc_1B6A3BD:   var_7D8 = var_688 & "," & CVar(var_EC) & "," & CVar(var_A1C) & ",'" & Trim(Left(global_140, &HFF)) & "', '" & CVar(MemVar_1F920C8) 
  loc_1B6A406:   var_96C = var_7D8 & "'," & var_838 & ",'" & IIf((CStr(var_878) = "Add"), "A", "E") & "','" & CVar(var_504.Text) & "','" & CVar(global_204) 
  loc_1B6A41D:   unk_58616C.Execute CStr(var_96C & "','N')"), var_99C, -1
  loc_1B6A4F3: End If
  loc_1B6A518: For var_A20 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A20 'Integer
  loc_1B6A522:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6A52A:   var_1B0 = CVar(CLng(4)) 'Long
  loc_1B6A54A:   var_1C0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B6A571:   Set var_150 = Me.FGrid
  loc_1B6A582:   var_158 = CStr(var_150.TextMatrix))
  loc_1B6A5B0:   If CBool(CVar(CLng(7)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B6A5C1:     Set var_14C = Me.Txt
  loc_1B6A5C7:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, CVar(CLng(var_92)), (var_1C0 <> vbNullString))
  loc_1B6A5CF:     var_1B0 = var_150.Text
  loc_1B6A5D8:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6A602:     var_208 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6A625:     Set var_1FC = Me.Txt
  loc_1B6A62B:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_2A0, var_95C, var_208, CVar(CLng(0)))
  loc_1B6A640:     var_A0C = Val(var_95C)
  loc_1B6A64E:     Set var_2A4 = Me.Txt
  loc_1B6A654:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A8, var_A0C, var_2A0.Text)
  loc_1B6A663:     Proc_6_7_F25D88(var_1C0, CVar(var_2A8), 1)
  loc_1B6A66C:     var_250 = CVar(CLng(var_92)) 'Long
  loc_1B6A67D:     Set var_2F0 = Me.FGrid
  loc_1B6A683:     var_2DC = var_2F0.TextMatrix)
  loc_1B6A6AA:     var_324 = Me.FGrid.TextMatrix)
  loc_1B6A6C4:     Set var_3DC = Me.Txt
  loc_1B6A6CA:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_3E4, var_A2C, var_324, CVar(CLng(&H16)), CVar(CLng(var_92)))
  loc_1B6A6E2:     Set var_3E8 = Me.Txt
  loc_1B6A6E8:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_42C, CVar(CLng(&H15)))
  loc_1B6A6ED:     var_44C = 1
  loc_1B6A6F9:     var_4C8 = CVar(CLng(&H17)) 'Long
  loc_1B6A735:     var_558 = CVar(CLng(var_92)) 'Long
  loc_1B6A73D:     var_598 = CVar(CLng(&HB)) 'Long
  loc_1B6A746:     Set var_4B4 = Me.FGrid
  loc_1B6A75C:     var_5F8 = CVar(CLng(var_92)) 'Long
  loc_1B6A764:     var_638 = CVar(CLng(&H13)) 'Long
  loc_1B6A783:     var_698 = CVar(CLng(var_92)) 'Long
  loc_1B6A78B:     var_6D8 = CVar(CLng(&H14)) 'Long
  loc_1B6A794:     Set var_500 = Me.FGrid
  loc_1B6A7AA:     var_738 = CVar(CLng(var_92)) 'Long
  loc_1B6A7B2:     var_778 = CVar(CLng(6)) 'Long
  loc_1B6A7C1:     var_5C8 = Me.FGrid.TextMatrix)
  loc_1B6A7D1:     var_7E8 = CVar(CLng(var_92)) 'Long
  loc_1B6A7D9:     var_828 = CVar(CLng(7)) 'Long
  loc_1B6A7E2:     Set var_78C = Me.FGrid
  loc_1B6A7E8:     var_648 = var_78C.TextMatrix)
  loc_1B6A802:     var_8E0 = CVar(CLng(var_92)) 'Long
  loc_1B6A80A:     var_940 = CVar(CLng(9)) 'Long
  loc_1B6A833:     var_9F0 = CVar(CLng(var_92)) 'Long
  loc_1B6A83B:     var_A54 = CVar(CLng(8)) 'Long
  loc_1B6A844:     Set var_794 = Me.FGrid
  loc_1B6A864:     var_A98 = CVar(CLng(var_92)) 'Long
  loc_1B6A86C:     var_AB8 = CVar(CLng(&HA)) 'Long
  loc_1B6A895:     var_AFC = CVar(CLng(var_92)) 'Long
  loc_1B6A89D:     var_B1C = CVar(CLng(&H10)) 'Long
  loc_1B6A8C6:     var_B60 = CVar(CLng(var_92)) 'Long
  loc_1B6A8CE:     var_B80 = CVar(CLng(&H11)) 'Long
  loc_1B6A8D7:     Set var_958 = Me.FGrid
  loc_1B6A8F7:     var_BC4 = CVar(CLng(var_92)) 'Long
  loc_1B6A8FF:     var_BE4 = CVar(CLng(&HE)) 'Long
  loc_1B6A921:     var_1064 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6A939:     Set var_C5C = Me.FGrid
  loc_1B6A952:     var_106C = Val(CStr(var_C5C.TextMatrix)))
  loc_1B6A983:     var_1074 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6A994:     Proc_6_7_F25D88(var_9BC, Date, var_1074, CVar(CLng(&H12)), CVar(CLng(var_92)), var_106C, CVar(CLng(&HF)), CVar(CLng(var_92)))
  loc_1B6A99D:     Set var_D1C = Me.TopCtrl1
  loc_1B6A9A3:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1064)
  loc_1B6A9DE:     var_DD0 = CVar(CLng(var_92)) 'Long
  loc_1B6A9E6:     var_DF0 = CVar(CLng(&H1A)) 'Long
  loc_1B6A9EF:     Set var_E04 = Me.FGrid
  loc_1B6AA05:     var_E64 = CVar(CLng(var_92)) 'Long
  loc_1B6AA0D:     var_E84 = CVar(CLng(&H1A)) 'Long
  loc_1B6AA2C:     var_EF8 = CVar(CLng(var_92)) 'Long
  loc_1B6AA34:     var_F18 = CVar(CLng(&HD)) 'Long
  loc_1B6AA7D:     var_107C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6AA94:     var_200 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag) Values (" & "'"
  loc_1B6AADB:     var_8C0 = var_200 & var_158 & "'," & CStr(var_208) & ",'" & global_144 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070
  loc_1B6AAF5:     var_1E0 = CVar(var_8C0 & "'," & CStr(var_A0C) & ",") 'String
  loc_1B6AB42:     var_354 = var_1E0 & var_1C0 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_3E4.Text)) & "','" & CVar(CStr(var_324)) & "','" 
  loc_1B6AB5D:     var_47C = var_354 & IIf((var_A2C <> vbNullString), CVar(var_42C), CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(CStr(var_4B4.TextMatrix))) 
  loc_1B6AB66:     var_48C = var_47C & "','" 
  loc_1B6AB71:     var_4F8 = var_48C & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B6ABC1:     var_6C8 = var_4F8 & "','" & CVar(CStr(var_500.TextMatrix))) & "','" & CVar(CStr(var_5C8)) & "'," & CVar(Val(CStr(var_648))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B6ABE9:     var_788 = var_6C8 & "," & CVar(Val(CStr(var_794.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B6AC25:     var_888 = var_788 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_958.TextMatrix)))) & "," & CVar(var_1064) 
  loc_1B6AC2E:     var_8A8 = var_888 & "," 
  loc_1B6AC80:     var_DA0 = var_8A8 & CVar(var_106C) & "," & CVar(var_1074) & ",'" & CVar(MemVar_1F920C8) & "'," & var_9BC & ",'" & IIf((CStr(var_D2C) = "Add"), "A", "E") 
  loc_1B6ACBC:     var_F5C = var_DA0 & "','" & CVar(CStr(var_E04.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B6ACE7:     unk_58616C.Execute CStr(var_F5C & "'," & CVar(var_107C) & ",'N')"), var_1038, -1
  loc_1B6AE3C:     If (global_200 = "Y") Then
  loc_1B6AE4D:       Set var_14C = Me.Txt
  loc_1B6AE53:       Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, var_103C, var_107C, CVar(CLng(&HC)), CVar(CLng(var_92)))
  loc_1B6AE5B:       var_F3C = var_150.Text
  loc_1B6AE64:       var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6AE6C:       var_1B0 = CVar(CLng(0)) 'Long
  loc_1B6AE95:       var_1F0 = CVar(CLng(var_92)) 'Long
  loc_1B6AE9D:       var_240 = CVar(CLng(&HD)) 'Long
  loc_1B6AEBC:       var_264 = CVar(CLng(var_92)) 'Long
  loc_1B6AEC4:       var_384 = CVar(CLng(&HC)) 'Long
  loc_1B6AF17:       var_29C = "Update CashRegData Set ContraDocId='" & var_158 & "',ContraSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " where docid='"
  loc_1B6AF3E:       unk_58616C.Execute var_29C & CStr(Me.FGrid.TextMatrix)) & "' And SNo=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_1E0, -1
  loc_1B6AF7A:     End If
  loc_1B6AF7A:   End If
  loc_1B6AF7D: Next var_A20 'Integer
  loc_1B6AFA7: For var_1080 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_1080 'Integer
  loc_1B6AFB1:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6AFB9:   var_1B0 = CVar(CLng(2)) 'Long
  loc_1B6B000:   Set var_150 = Me.FGCat
  loc_1B6B011:   var_158 = CStr(var_150.TextMatrix))
  loc_1B6B03F:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B6B050:     Set var_14C = Me.Txt
  loc_1B6B056:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, CVar(CLng(var_92)))
  loc_1B6B05E:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_150.Text
  loc_1B6B091:     var_208 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B6B0A9:     Set var_1F8 = Me.FGCat
  loc_1B6B0AF:     var_1A0 = var_1F8.TextMatrix)
  loc_1B6B0C2:     var_A0C = Val(CStr(var_1A0))
  loc_1B6B0D2:     var_8C0 = Me.LblVPrefix.Caption
  loc_1B6B0E5:     Set var_2A0 = Me.Txt
  loc_1B6B0EB:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_2A4, var_A2C, var_A0C, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B6B100:     var_A14 = Val(var_A2C)
  loc_1B6B10E:     Set var_2A8 = Me.Txt
  loc_1B6B114:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2F0, var_A14, CVar(CLng(1)))
  loc_1B6B123:     Proc_6_7_F25D88(var_1E0, CVar(var_2F0), CVar(CLng(var_92)))
  loc_1B6B12C:     var_3A4 = CVar(CLng(var_92)) 'Long
  loc_1B6B134:     var_3F8 = CVar(CLng(2)) 'Long
  loc_1B6B13D:     Set var_3D8 = Me.FGCat
  loc_1B6B153:     var_428 = CVar(CLng(var_92)) 'Long
  loc_1B6B15B:     var_49C = CVar(CLng(4)) 'Long
  loc_1B6B17D:     var_A1C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B6B195:     Set var_3E4 = Me.FGCat
  loc_1B6B1AE:     var_1044 = Val(CStr(var_3E4.TextMatrix)))
  loc_1B6B1DF:     var_104C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B6B1F0:     Proc_6_7_F25D88(var_48C, Date, var_104C, CVar(CLng(6)), CVar(CLng(var_92)), var_1044, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1B6B1F9:     Set var_42C = Me.TopCtrl1
  loc_1B6B1FF:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A1C)
  loc_1B6B231:     var_568 = IIf((CStr(var_4F8) = "Add"), "A", "E")
  loc_1B6B24A:     var_200 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag) Values (" & "'"
  loc_1B6B2A4:     var_A28 = var_200 & var_158 & "'," & CStr(var_2A4.Text) & "," & CStr(var_A0C) & ",'" & global_144 & "','" & var_8C0 & "','" & MemVar_1F92070
  loc_1B6B2EE:     var_314 = CVar(var_A28 & "'," & CStr(var_A14) & ",") & var_1E0 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_3D8.TextMatrix))) 
  loc_1B6B34D:     var_4AC = var_314 & "'," & CVar(var_A1C) & "," & CVar(var_1044) & "," & CVar(var_104C) & ",'" & CVar(MemVar_1F920C8) & "'," & var_48C 
  loc_1B6B374:     unk_58616C.Execute CStr(var_4AC & ",'" & var_568 & "','N')"), var_5C8, -1
  loc_1B6B41C:   End If
  loc_1B6B41F: Next var_1080 'Integer
  loc_1B6B430: Set var_14C = Me.TxtGt
  loc_1B6B436: Call 0.Method_Proc_162_80_1B6D5008 (var_15A, var_92)
  loc_1B6B441: For var_1084 =  To var_15A: 1 = var_1084 'Integer
  loc_1B6B454:   Set var_14C = Me.TxtGt
  loc_1B6B45A:   Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_150)
  loc_1B6B462:   var_15A = var_150.Visible
  loc_1B6B474:   If (var_15A = &HFF) Then
  loc_1B6B485:     Set var_14C = Me.Txt
  loc_1B6B48B:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150)
  loc_1B6B4A6:     Set var_154 = Me.Txt
  loc_1B6B4AC:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1F8)
  loc_1B6B4CF:     Set var_1FC = Me.Txt
  loc_1B6B4D5:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A0)
  loc_1B6B4E4:     Proc_6_7_F25D88(var_1A0, CVar(var_2A0))
  loc_1B6B4F6:     Set var_2A4 = Me.LblCap
  loc_1B6B4FC:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_2A8)
  loc_1B6B516:     Set var_2F0 = Me.TxtPer
  loc_1B6B51C:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_3D8)
  loc_1B6B531:     var_A0C = Val(var_3D8.Tag)
  loc_1B6B541:     Set var_3DC = Me.LblCap
  loc_1B6B547:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_3E4, var_8C0)
  loc_1B6B561:     Set var_3E8 = Me.LblAt
  loc_1B6B567:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_42C)
  loc_1B6B581:     Set var_4B0 = Me.TxtGt
  loc_1B6B587:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_4B4)
  loc_1B6B5A1:     Set var_4FC = Me.TxtPer
  loc_1B6B5A7:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_500)
  loc_1B6B5BC:     var_A14 = Val(var_500.Text)
  loc_1B6B5CC:     Set var_504 = Me.TxtGt
  loc_1B6B5D2:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_78C, var_A28)
  loc_1B6B5E7:     var_A1C = Val(var_A28)
  loc_1B6B5F7:     Set var_790 = Me.LblDummy
  loc_1B6B5FD:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_794, var_A2C)
  loc_1B6B612:     var_1044 = Val(var_A2C)
  loc_1B6B623:     Proc_6_7_F25D88(var_4F8, Date)
  loc_1B6B62C:     Set var_8AC = Me.TopCtrl1
  loc_1B6B632:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1044)
  loc_1B6B655:     var_A30 = CStr(var_568)
  loc_1B6B664:     var_5C8 = IIf((var_A30 = "Add"), "A", "E")
  loc_1B6B674:     Set var_954 = Me.Txt
  loc_1B6B67A:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(9), var_958)
  loc_1B6B682:     var_628 = CVar(var_958) 'Address
  loc_1B6B689:     Proc_6_7_F25D88(var_648, var_628)
  loc_1B6B69B:     Set var_A04 = Me.LblDummy
  loc_1B6B6A1:     Call 0.Method_Proc_162_80_1B6D5000 (var_92, var_C5C)
  loc_1B6B6A9:     var_A34 = var_C5C.Tag
  loc_1B6B6C2:     var_200 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode) Values ('" & var_150.Text
  loc_1B6B6C9:     var_214 = var_200 & "',"
  loc_1B6B719:     var_2BC = CVar(var_214 & CStr(var_92) & ",'" & global_144 & "'," & CStr(Val(var_1F8.Text)) & ",") & var_1A0 & ",'" & CVar(var_2A8.Tag) 
  loc_1B6B72D:     var_2DC = var_2BC & "'," & CVar(var_3E4.Caption) 
  loc_1B6B783:     var_3D4 = var_2DC & ",'" & CVar(var_8C0) & "','" & CVar(var_42C.Tag) & "','" & CVar(var_4B4.Tag) & "'," & CVar(var_78C.Text) & "," 
  loc_1B6B7DE:     var_608 = var_3D4 & CVar(var_794.Caption) & "," & CVar(var_1044) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4F8 & ",'" & var_5C8 & "'," 
  loc_1B6B817:     var_728 = var_608 & var_648 & ",'" & CVar(var_A34) & "','" & CVar(global_60) & "','N','" 
  loc_1B6B82A:     var_768 = var_728 & CVar(MemVar_1F92070) & "')" 
  loc_1B6B838:     unk_58616C.Execute CStr(var_768), var_788, -1
  loc_1B6B900:   End If
  loc_1B6B903: Next var_1084 'Integer
  loc_1B6B913: If (global_200 = "Y") Then
  loc_1B6B93B:   For var_1088 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_1088 'Integer
  loc_1B6B945:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6B94D:     var_1B0 = CVar(CLng(4)) 'Long
  loc_1B6B95C:     var_180 = Me.FGrid.TextMatrix)
  loc_1B6B994:     Set var_150 = Me.FGrid
  loc_1B6B9D3:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_150.TextMatrix)))) <> CDbl(0))) Then
  loc_1B6B9D9:       Proc_6_104_ED5D18(var_180, CVar(CLng(var_92)), (Trim(CVar(CStr(var_180))) <> vbNullString))
  loc_1B6B9E2:       var_190 = CVar(CLng(var_92)) 'Long
  loc_1B6B9EA:       var_1D0 = CVar(CLng(&HD)) 'Long
  loc_1B6BA2F:       var_1E0 = CVar("Update CashRegData Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_180 & ",U_AE1='E' where docid='" 
  loc_1B6BA51:       unk_58616C.Execute CStr(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_2DC, -1
  loc_1B6BA79:     End If
  loc_1B6BA7C:   Next var_1088 'Integer
  loc_1B6BA81: End If
  loc_1B6BA8C: If (global_212 = "Room Service") Then
  loc_1B6BA92:   var_190 = 0
  loc_1B6BAC2:   unk_58616C.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_60 & "'", var_180, -1
  loc_1B6BACA:   var_14C = var_14C.Fields
  loc_1B6BAD2:   var_190 = var_150.Item(var_150)
  loc_1B6BAE9:   var_1B0 = " BILL NO.-"
  loc_1B6BAEE:   var_1E0 = (Trim(CVar(var_154)) + var_1B0)
  loc_1B6BAF7:   var_278 = (var_1E0 + " ")
  loc_1B6BB09:   Set var_1F8 = Me.Txt
  loc_1B6BB0F:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1FC, var_214)
  loc_1B6BB17:   var_278 = var_1FC.Text
  loc_1B6BB22:   var_2BC = (var_154 + CVar(var_214))
  loc_1B6BB27:   var_120 = CStr(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B6BB53:   var_146 = (var_146 + 1)
  loc_1B6BB6A:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150)
  loc_1B6BB8B:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1F8)
  loc_1B6BBA0:   var_208 = Val(var_1F8.Text)
  loc_1B6BBA7:   var_180 = CVar(Me.LblVPrefix) 'Address
  loc_1B6BBBE:   Set var_1FC = Me.Txt
  loc_1B6BBC4:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A0)
  loc_1B6BBD3:   Proc_6_7_F25D88(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))), CVar(var_2A0))
  loc_1B6BBE3:   Set var_2A4 = Me.Txt
  loc_1B6BBE9:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(5), var_2A8)
  loc_1B6BC04:   Set var_2F0 = Me.TxtGt
  loc_1B6BC0A:   Call 0.Method_Proc_162_80_1B6D5008 (var_15A, var_208)
  loc_1B6BC1C:   Set var_3D8 = Me.TxtGt
  loc_1B6BC22:   Call 0.Method_Proc_162_80_1B6D5000 (var_15A, var_3DC)
  loc_1B6BC37:   var_A0C = Val(var_3DC.Text)
  loc_1B6BC41:   Set var_3E4 = Me.TxtGt
  loc_1B6BC47:   Call 0.Method_Proc_162_80_1B6D5008 (var_15C, var_A0C)
  loc_1B6BC59:   Set var_3E8 = Me.TxtGt
  loc_1B6BC5F:   Call 0.Method_Proc_162_80_1B6D5000 (var_15C, var_42C)
  loc_1B6BC74:   var_A14 = Val(var_42C.Text)
  loc_1B6BC85:   Set var_4B0 = Me.Txt
  loc_1B6BC8B:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(7), var_4B4, var_A30)
  loc_1B6BCA0:   var_A1C = Val(var_A30)
  loc_1B6BCB1:   Set var_4FC = Me.Txt
  loc_1B6BCB7:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_500, var_A34)
  loc_1B6BCCF:   Set var_504 = Me.Txt
  loc_1B6BCD5:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_78C)
  loc_1B6BCE8:   Set var_790 = Me.Txt
  loc_1B6BCEE:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_794)
  loc_1B6BD2A:   Proc_6_7_F25D88(var_5C8, Date)
  loc_1B6BD33:   Set var_8AC = Me.TopCtrl1
  loc_1B6BD39:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_146)
  loc_1B6BD84:   var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B6BDA0:   var_254 = var_158 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'" & var_150.Text
  loc_1B6BDEC:   var_1C0 = CVar(var_254 & "'," & CStr(var_146) & ",'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F92070 & "','") 'String
  loc_1B6BDF2:   var_1E0 = var_1C0 & Trim(var_180) 
  loc_1B6BE2E:   var_344 = var_1E0 & "'," & var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))) & ",'" & Trim(CVar(var_2A8)) & "'" & ",'','','" & CVar(var_120) 
  loc_1B6BE86:   var_46C = var_344 & "','" & CVar(var_124) & "','Room'," & CVar(var_A0C) & "," & CVar(var_4B4.Text) & "," & CVar(var_500.Text) & ",'REST'," 
  loc_1B6BEB2:   var_568 = var_46C & "'RO','" & IIf((var_A34 <> vbNullString), CVar(var_78C), CVar(var_794.Tag)) & "','','','',Null," & "Null,'" & CVar(MemVar_1F920C8) 
  loc_1B6BEF1:   var_708 = var_568 & "'," & var_5C8 & ",'" & IIf((CStr(var_628) = "Add"), "A", "E") & "','" & CVar(global_60) & "')" 
  loc_1B6BEFF:   unk_58616C.Execute CStr(var_708), var_728, -1
  loc_1B6BFF0:   unk_58616C.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_180, -1
  loc_1B6BFFB:   Set var_128 = Me.Txt
  loc_1B6C021:   If (var_128.RecordCount > 0) Then
  loc_1B6C050:     var_150 = var_128.Fields.Item("TaxStru")
  loc_1B6C060:     var_1A0 = "Select * from taxstru where Code='" & var_150.Value 
  loc_1B6C069:     var_1C0 = var_1A0 & "' Order by Sno" 
  loc_1B6C06D:     var_158 = CStr(var_1C0)
  loc_1B6C077:     unk_58616C.Execute var_158, var_1E0, -1
  loc_1B6C082:     Set var_118 = Me.Txt
  loc_1B6C09F:   Else
  loc_1B6C0B2:     var_180 = "System Defined Revenue is not defined"
  loc_1B6C0B8:     MsgBox(var_180, 0, var_1A0, var_1C0, var_1E0)
  loc_1B6C0CE:     unk_58616C.RollbackTrans
  loc_1B6C0D3:     Exit Sub
  loc_1B6C0D4:   End If
  loc_1B6C0DA:   var_146 = (var_146 + 1)
  loc_1B6C101:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(&HA), var_150, var_158, "Select GuestProf,Docid from GuestFolio where FolioNo=", var_180, -1)
  loc_1B6C109:   var_154 = var_150.Text
  loc_1B6C11B:   unk_58616C.Execute var_146 & var_158, var_154, Me.Txt
  loc_1B6C126:   Set var_12C = var_154
  loc_1B6C150:   If (var_12C.RecordCount > 0) Then
  loc_1B6C16D:     var_150 = var_12C.Fields.Item("GuestProf")
  loc_1B6C17E:     var_11C = CStr(var_150.Value)
  loc_1B6C18B:   End If
  loc_1B6C199:   Set var_14C = Me.Txt
  loc_1B6C19F:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150)
  loc_1B6C1A7:   var_218 = var_150.Text
  loc_1B6C1BA:   Set var_154 = Me.Txt
  loc_1B6C1C0:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1F8)
  loc_1B6C1C8:   var_508 = var_1F8.Text
  loc_1B6C1D5:   var_208 = Val(var_508)
  loc_1B6C1F3:   Set var_1FC = Me.Txt
  loc_1B6C1F9:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A0)
  loc_1B6C208:   Proc_6_7_F25D88(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))), CVar(var_2A0))
  loc_1B6C218:   Set var_2A4 = Me.Txt
  loc_1B6C21E:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(5), var_2A8)
  loc_1B6C22D:   var_304 = Trim(CVar(var_2A8))
  loc_1B6C260:   Set var_3DC = Me.TxtGt
  loc_1B6C266:   Call 0.Method_Proc_162_80_1B6D5008 (var_15A, var_208)
  loc_1B6C278:   Set var_3E4 = Me.TxtGt
  loc_1B6C27E:   Call 0.Method_Proc_162_80_1B6D5000 (var_15A, var_3E8)
  loc_1B6C286:   var_A28 = var_3E8.Text
  loc_1B6C293:   var_A0C = Val(var_A28)
  loc_1B6C29D:   Set var_42C = Me.TxtGt
  loc_1B6C2A3:   Call 0.Method_Proc_162_80_1B6D5008 (var_15C, var_A0C)
  loc_1B6C2B5:   Set var_4B0 = Me.TxtGt
  loc_1B6C2BB:   Call 0.Method_Proc_162_80_1B6D5000 (var_15C, var_4B4)
  loc_1B6C2D0:   var_A14 = Val(var_4B4.Text)
  loc_1B6C2E1:   Set var_4FC = Me.Txt
  loc_1B6C2E7:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(7), var_500, var_A30)
  loc_1B6C2FC:   var_A1C = Val(var_A30)
  loc_1B6C30D:   Set var_504 = Me.Txt
  loc_1B6C313:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_78C, var_A34)
  loc_1B6C32B:   Set var_790 = Me.Txt
  loc_1B6C331:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_794)
  loc_1B6C344:   Set var_8AC = Me.Txt
  loc_1B6C34A:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_954)
  loc_1B6C373:   var_5C8 = IIf((var_A34 <> vbNullString), CVar(var_794), CVar(var_954.Tag))
  loc_1B6C386:   Set var_958 = Me.Txt
  loc_1B6C38C:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(&HA), var_A04)
  loc_1B6C3A7:   Proc_6_7_F25D88(var_708, Date)
  loc_1B6C3B0:   Set var_C5C = Me.TopCtrl1
  loc_1B6C3B6:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_954)
  loc_1B6C428:   var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1B6C436:   var_214 = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid) Values ("
  loc_1B6C43D:   var_21C = var_214 & "'"
  loc_1B6C490:   var_1C0 = CVar(var_21C & var_218 & "'," & CStr(var_146) & ",'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F92070 & "','") 'String
  loc_1B6C4AF:   var_2DC = var_1C0 & Trim(CVar(Me.LblVPrefix)) & "'," & var_1C0 & Trim(CVar(Me.LblVPrefix)) & CVar(CStr(Me.FGrid.TextMatrix))) & ",'" 
  loc_1B6C4FE:   var_3D4 = var_2DC & var_304 & "'" & ",'" & CVar(var_11C) & "','','" & CVar(var_120) & "','" & var_128.Fields.Item("Code").Value & "','Room'," 
  loc_1B6C559:   var_528 = var_3D4 & CVar(var_A0C) & "," & CVar(var_500.Text) & "," & CVar(var_78C.Text) & ",'" & CVar(global_148) & "'," & "'" 
  loc_1B6C56F:   var_568 = var_528 & CVar(global_152) & "','" 
  loc_1B6C5AE:   var_6C8 = var_568 & var_5C8 & "'," & CVar(var_A04.Text) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," 
  loc_1B6C5EB:   var_878 = var_6C8 & var_708 & ",'" & IIf((CStr(var_768) = "Add"), "A", "E") & "','" & CVar(global_60) & "','" & var_12C.Fields.Item("DocID").Value 
  loc_1B6C602:   unk_58616C.Execute CStr(var_878 & "')"), var_8A8, -1
  loc_1B6C6FC:   Set var_14C = Me.Txt
  loc_1B6C702:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150)
  loc_1B6C71D:   Set var_154 = Me.Txt
  loc_1B6C723:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1F8)
  loc_1B6C72B:   var_158 = var_1F8.Text
  loc_1B6C738:   var_105C = Val(var_158)
  loc_1B6C759:   Set var_1FC = Me.Txt
  loc_1B6C75F:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A0, var_508)
  loc_1B6C777:   Set var_2A4 = Me.Txt
  loc_1B6C77D:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(5), var_2A8)
  loc_1B6C78C:   var_1E0 = Trim(CVar(var_2A8))
  loc_1B6C7A3:   var_2F0 = var_128.Fields
  loc_1B6C7B3:   var_344 = var_2F0.Item("Code").Value
  loc_1B6C7BF:   Set var_3DC = Me.TxtGt
  loc_1B6C7C5:   Call 0.Method_Proc_162_80_1B6D5008 (var_15A)
  loc_1B6C7D7:   Set var_3E4 = Me.TxtGt
  loc_1B6C7DD:   Call 0.Method_Proc_162_80_1B6D5000 (var_15A, var_3E8)
  loc_1B6C7F2:   var_1064 = Val(var_3E8.Text)
  loc_1B6C7FC:   Set var_42C = Me.TxtGt
  loc_1B6C802:   Call 0.Method_Proc_162_80_1B6D5008 (var_15C, var_1064)
  loc_1B6C814:   Set var_4B0 = Me.TxtGt
  loc_1B6C81A:   Call 0.Method_Proc_162_80_1B6D5000 (var_15C, var_4B4)
  loc_1B6C82F:   var_106C = Val(var_4B4.Text)
  loc_1B6C840:   Set var_4FC = Me.Txt
  loc_1B6C846:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(7), var_500, var_218)
  loc_1B6C84E:   var_106C = var_500.Text
  loc_1B6C85B:   var_1074 = Val(var_218)
  loc_1B6C86C:   Set var_504 = Me.Txt
  loc_1B6C872:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_78C, var_21C)
  loc_1B6C87A:   var_1074 = var_78C.Text
  loc_1B6C88A:   Set var_790 = Me.Txt
  loc_1B6C890:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_794)
  loc_1B6C8A3:   Set var_8AC = Me.Txt
  loc_1B6C8A9:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_954)
  loc_1B6C8D2:   var_2BC = IIf((var_21C <> vbNullString), CVar(var_794), CVar(var_954.Tag))
  loc_1B6C8E5:   Set var_958 = Me.Txt
  loc_1B6C8EB:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(&HA), var_A04)
  loc_1B6C8F3:   var_A2C = var_A04.Text
  loc_1B6C8FB:   var_2CC = Date
  loc_1B6C903:   var_2DC = Date
  loc_1B6C90B:   var_2EC = Date
  loc_1B6C914:   Set var_C5C = Me.TopCtrl1
  loc_1B6C91A:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E04)
  loc_1B6C94C:   var_334 = IIf((CStr(var_304) = "Add"), "A", "E")
  loc_1B6C973:   var_354 = var_12C.Fields.Item("DocID").Value
  loc_1B6C97D:   var_CC8 = 0
  loc_1B6C988:   var_C60 = 0
  loc_1B6C99B:   var_BF8 = 0
  loc_1B6C9A6:   var_B94 = 0
  loc_1B6C9E3:   var_A68 = vbNullString
  loc_1B6C9EC:   var_A34 = vbNullString
  loc_1B6C9F5:   var_A30 = vbNullString
  loc_1B6CA2E:   var_A24 = "Room"
  loc_1B6CA42:   var_95C = vbNullString
  loc_1B6CA4B:   var_8C0 = vbNullString
  loc_1B6CA8F:   Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_150.Text, var_146, global_144, CLng(var_2A0.Text), MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_508))
  loc_1B6CB2E: Else
  loc_1B6CB3C:   Set var_14C = Me.Txt
  loc_1B6CB42:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(6), var_150, var_158, CStr(var_1E0), var_8C0)
  loc_1B6CB4A:   var_95C = var_150.Text
  loc_1B6CB66:   If (CDbl(Val(var_158)) > CDbl(0)) Then
  loc_1B6CB90:     var_218 = "CASH RECD. " & Me.LblRest.Caption & " " & "BILL NO.-"
  loc_1B6CBA8:     Set var_150 = Me.Txt
  loc_1B6CBAE:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_154, var_21C, var_218 & " ")
  loc_1B6CBB6:     var_120 = var_154.Text
  loc_1B6CBE8:     Set var_14C = Me.Txt
  loc_1B6CBEE:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_218)
  loc_1B6CBF6:     var_A24 = var_150.Text
  loc_1B6CC09:     Set var_154 = Me.Txt
  loc_1B6CC0F:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_1F8)
  loc_1B6CC24:     var_208 = Val(var_1F8.Text)
  loc_1B6CC32:     var_1A0 = Trim(CVar(Me.LblVPrefix))
  loc_1B6CC42:     Set var_1FC = Me.Txt
  loc_1B6CC48:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_2A0)
  loc_1B6CC57:     Proc_6_7_F25D88(var_2BC, CVar(var_2A0))
  loc_1B6CC63:     Set var_2A4 = Me.TxtGt
  loc_1B6CC69:     Call 0.Method_Proc_162_80_1B6D5008 (var_15A, var_208)
  loc_1B6CC7B:     Set var_2A8 = Me.TxtGt
  loc_1B6CC81:     Call 0.Method_Proc_162_80_1B6D5000 (var_15A, var_2F0)
  loc_1B6CC96:     var_A0C = Val(var_2F0.Text)
  loc_1B6CCA0:     Set var_3D8 = Me.TxtGt
  loc_1B6CCA6:     Call 0.Method_Proc_162_80_1B6D5008 (var_15C, var_A0C)
  loc_1B6CCB8:     Set var_3DC = Me.TxtGt
  loc_1B6CCBE:     Call 0.Method_Proc_162_80_1B6D5000 (var_15C, var_3E4)
  loc_1B6CCD3:     var_A14 = Val(var_3E4.Text)
  loc_1B6CCE4:     Set var_3E8 = Me.Txt
  loc_1B6CCEA:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(7), var_42C, var_A24)
  loc_1B6CCFF:     var_A1C = Val(var_A24)
  loc_1B6CD10:     Set var_4B0 = Me.Txt
  loc_1B6CD16:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(3), var_4B4, var_A28)
  loc_1B6CD31:     Proc_6_7_F25D88(var_568, Date)
  loc_1B6CD3A:     Set var_4FC = Me.TopCtrl1
  loc_1B6CD40:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1064)
  loc_1B6CD8B:     var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B6CDA0:     var_21C = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'"
  loc_1B6CDA7:     var_254 = var_21C & var_218
  loc_1B6CDF6:     var_2CC = CVar(var_254 & "',1,'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F92070 & "','") & var_1A0 & "'," & var_2BC 
  loc_1B6CE44:     var_354 = var_2CC & ",'','','" & CVar(CStr(var_344) & var_21C) & "','" & CVar(var_124) & "','Cash'," & CVar(var_A0C) & "," & CVar(var_42C.Text) 
  loc_1B6CEA0:     var_48C = var_354 & "," & CVar(var_4B4.Tag) & ",'" & CVar(global_148) & "'," & "'" & CVar(global_152) & "','" & CVar(var_A28) 
  loc_1B6CEDC:     var_648 = var_48C & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_568 & ",'" & IIf((CStr(var_5C8) = "Add"), "A", "E") 
  loc_1B6CF09:     unk_58616C.Execute CStr(var_648 & "','" & CVar(global_60) & "')"), var_6C8, -1
  loc_1B6CFB7:   End If
  loc_1B6CFB7: End If
  loc_1B6CFBB: Set var_14C = Me.TopCtrl1
  loc_1B6CFC1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_500)
  loc_1B6CFDA: If (CStr() = "Add") Then
  loc_1B6CFF1:   var_158 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1B6D017:   var_1C0 = CVar(var_158 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_144 & "' And VP.Date_From<=") 'String
  loc_1B6D028:   Set var_14C = Me.Txt
  loc_1B6D02E:   Call 0.Method_Proc_162_80_1B6D5000 (CInt(1), var_150, var_254, var_1C0)
  loc_1B6D036:   var_298 = var_150.Text
  loc_1B6D044:   Proc_6_7_F25D88(var_1A0, CVar(var_254))
  loc_1B6D04C:   var_1E0 = -1 & var_1A0 
  loc_1B6D055:   var_278 = CVar(var_254 & "',1,'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F92070 & "','") & var_1A0 & " Order By VP.Date_From DESC" 
  loc_1B6D063:   unk_58616C.Execute CStr(var_278), var_154, 
  loc_1B6D06E:   Set var_88 = var_154
  loc_1B6D0AC:   If (var_88.RecordCount > 0) Then
  loc_1B6D0BD:     Set var_14C = Me.Txt
  loc_1B6D0C3:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(0), var_150)
  loc_1B6D0D8:     var_208 = Val(var_150.Text)
  loc_1B6D0ED:     var_154 = var_88.Fields
  loc_1B6D0FD:     var_180 = var_154.Item("V_Type").Value
  loc_1B6D128:     Proc_6_7_F25D88(var_298, CVar(var_88.Fields.Item("Date_From")))
  loc_1B6D142:     var_200 = CStr(var_208)
  loc_1B6D162:     var_29C = "Update Voucher_Prefix Set Start_Srl_No=" & var_200 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1B6D18D:     unk_58616C.Execute CStr(CVar(var_29C & "') and V_Type='") & var_180 & "' and Date_From=" & var_298), var_2CC, -1
  loc_1B6D1C7:   End If
  loc_1B6D1C7: End If
  loc_1B6D1CB: Set var_14C = Me.TopCtrl1
  loc_1B6D1D1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_2A4)
  loc_1B6D1EA: If (CStr(var_208) = "Add") Then
  loc_1B6D210:   var_158 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_1B6D220:   Call 0.Method_arg_50 (var_200, var_158 & "' AND ENAME='", var_180, -1, var_14C)
  loc_1B6D230:   var_21C = var_150 & var_200 & "' "
  loc_1B6D239:   unk_58616C.Execute var_21C, 0, var_154
  loc_1B6D241:   var_1A0 = var_14C.Fields
  loc_1B6D249:    = var_150.Item()
  loc_1B6D251:    = var_154.Value
  loc_1B6D27E:   If (var_1A0 > 0) Then
  loc_1B6D29F:     Set var_14C = Me.Txt
  loc_1B6D2A5:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_158, "UPDATE LASTVOU  SET DOCID='")
  loc_1B6D2AD:     var_180 = var_150.Text
  loc_1B6D2B6:     var_200 = -1 & var_158
  loc_1B6D2D4:     Call 0.Method_arg_50 (var_21C, var_200 & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_1B6D2ED:     unk_58616C.Execute var_154 & var_21C & "'  ", , 
  loc_1B6D314:   Else
  loc_1B6D338:     Call 0.Method_arg_50 (var_200, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_2CC)
  loc_1B6D341:     var_218 = -1 & var_200
  loc_1B6D348:     var_254 = var_200 & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1B6D359:     Set var_14C = Me.Txt
  loc_1B6D35F:     Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150, var_21C)
  loc_1B6D367:     var_254 = var_150.Text
  loc_1B6D396:     Proc_6_7_F25D88(var_1A0, Date)
  loc_1B6D3A2:     var_170 = ",'A','"
  loc_1B6D3C8:     unk_58616C.Execute CStr(CVar(var_154 & var_21C & "','" & MemVar_1F92070 & "',") & var_1A0 & var_170 & CVar(MemVar_1F92078) & "')"), , 
  loc_1B6D400:   End If
  loc_1B6D400: End If
  loc_1B6D406: unk_58616C.CommitTrans
  loc_1B6D40D: var_8A = 0
  loc_1B6D41E: Set var_14C = Me.Txt
  loc_1B6D424: Call 0.Method_Proc_162_80_1B6D5000 (CInt(2), var_150)
  loc_1B6D440: var_8A = 0
  loc_1B6D44E: Me.Requery -1
  loc_1B6D478: Me.Find "SearchCode ='" & var_150.Text & "'", 0, 1
  loc_1B6D48F: If (global_148 <> "FAST") Then
  loc_1B6D49D:   Me.Requery -1
  loc_1B6D4A2: End If
  loc_1B6D4C5: Call Proc_162_92_100626C(Proc_5_1_100CB50("INI", Me, global_92), var_170)
  loc_1B6D4D0: Call Proc_162_89_1B40DBC(var_8A)
  loc_1B6D4DA: Set var_88 = Nothing
  loc_1B6D4E2: Set var_12C = Nothing
  loc_1B6D4E5: Exit Sub
  loc_1B6D4E6: ' Referenced from: 1B68690
  loc_1B6D4EC: If (var_8A = &HFF) Then
  loc_1B6D4F5:   unk_58616C.RollbackTrans
  loc_1B6D4FA: End If
  loc_1B6D4FA: Proc_6_60_E62BC4(var_8A)
  loc_1B6D4FF: Exit Sub
End Sub

Public Sub Proc_162_81_15EDF04
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_F4 As Fields15
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim unk_58616C As Connection15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_170 As Variant
  Dim var_2D8 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2E8 As Variant
  Dim var_1E0 As Variant
  Dim var_2A0 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_434 As Variant
  Dim var_108 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_15ECC14: On Error Goto loc_15EDEFD
  loc_15ECC23: Me.Filter = "ModType='POS'"
  loc_15ECC3F: If (Me.RecordCount > 0) Then
  loc_15ECC45:   MemVar_1F923C0 = "N"
  loc_15ECC4C:   MemVar_1F923C4 = "N"
  loc_15ECC53:   MemVar_1F923C8 = "K"
  loc_15ECC89:   var_128 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_15ECC97:   var_8C = CStr(var_128 & "'")
  loc_15ECCB1:   var_128 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_15ECD24:   var_1A0 = var_128 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_15ECD29:   var_90 = CStr(var_1A0)
  loc_15ECD67:   var_F4 = Me.Fields
  loc_15ECD77:   var_108 = var_F4.Item("SearchCode").Value
  loc_15ECD7F:   var_148 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_108 
  loc_15ECD8D:   var_94 = CStr(var_148 & "' order by sno ")
  loc_15ECDAA:   If (var_8C = vbNullString) Then
  loc_15ECDAD:     Exit Sub
  loc_15ECDAE:   End If
  loc_15ECDB6:   If (var_90 = vbNullString) Then
  loc_15ECDB9:     Exit Sub
  loc_15ECDBA:   End If
  loc_15ECDC2:   If (var_94 = vbNullString) Then
  loc_15ECDC5:     Exit Sub
  loc_15ECDC6:   End If
  loc_15ECDDC:   unk_58616C.Execute var_8C, var_108, -1
  loc_15ECDE7:   Set var_BC = var_F4
  loc_15ECE06:   unk_58616C.Execute var_90, var_108, -1
  loc_15ECE11:   Set var_C0 = var_F4
  loc_15ECE30:   unk_58616C.Execute var_94, var_108, -1
  loc_15ECE3B:   Set var_C4 = var_F4
  loc_15ECE46:   var_AE = 7
  loc_15ECE4B:   Close 1
  loc_15ECE54:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15ECE58:   ' Referenced from: 15EDD8F
  loc_15ECE67:   If Not(var_BC.EOF) Then
  loc_15ECE6C:     var_9A = 0
  loc_15ECE71:     var_9C = 1
  loc_15ECE8B:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_15ECE9C:       var_98 = "** " & "BILL" & " **"
  loc_15ECEA5:     Else
  loc_15ECEB6:       var_98 = "** " & global_212 & " **"
  loc_15ECEBC:     End If
  loc_15ECEC2:     If (var_9A = 0) Then
  loc_15ECEF3:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15ECF2A:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15ECF66:       Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("VNo")), var_9C, var_9A)
  loc_15ECF89:       var_170 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(var_148), &HA, var_AE)))
  loc_15ECF8F:       Print 1, Me.Fields.Item("SearchCode").Value
  loc_15ECFAE:       Print 1
  loc_15ECFD0:       var_F4 = var_BC.Fields
  loc_15ED117:       Proc_6_39_E7C810(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15ED138:       var_148 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_F4.Item("VDate")), var_F4), &H12)) 'String
  loc_15ED13B:       var_158 = (Space(6) + var_148)
  loc_15ED142:       var_180 = (CVar(Proc_6_45_EAD428(CStr(var_148), &HA, var_AE)) + Space(4))
  loc_15ED14C:       var_1D0 = (CVar(var_F4.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME")), var_F4), &HA)))
  loc_15ED153:       var_1F0 = (var_1D0 + Space(6))
  loc_15ED15D:       var_230 = (var_1F0 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15ED164:       var_250 = (var_230 + Space(4))
  loc_15ED16E:       var_290 = (var_250 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15ED175:       var_2B0 = (var_290 + Space(6))
  loc_15ED17F:       var_310 = (var_2B0 + CVar(Proc_6_45_EAD428(CStr(var_2E8), 7)))
  loc_15ED185:       Print 1, var_310
  loc_15ED1F3:       Print 1, vbNullString
  loc_15ED1FE:       Print 1, vbNullString
  loc_15ED206:       var_9A = 5
  loc_15ED209:     End If
  loc_15ED20B:     var_B6 = 1
  loc_15ED222:     If (var_C0.RecordCount > 0) Then
  loc_15ED228:       var_C0.MoveFirst
  loc_15ED22D:       ' Referenced from: 15ED98D
  loc_15ED22D:     End If
  loc_15ED23C:     If Not(var_C0.EOF) Then
  loc_15ED245:       If (var_9A = 0) Then
  loc_15ED276:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15ED2AD:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15ED2E9:         Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_15ED30C:         var_170 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(var_148), &HA)))
  loc_15ED312:         Print 1, Space(4)
  loc_15ED331:         Print 1
  loc_15ED49A:         Proc_6_39_E7C810(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15ED4BE:         var_158 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_15ED4C5:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12))), &HA)) + Space(4))
  loc_15ED4CF:         var_1D0 = (CVar(var_BC.Fields.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_15ED4D6:         var_1F0 = (var_1D0 + Space(6))
  loc_15ED4E0:         var_230 = (var_1F0 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15ED4E7:         var_250 = (var_230 + Space(4))
  loc_15ED4F1:         var_290 = (var_250 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15ED4F8:         var_2B0 = (var_290 + Space(6))
  loc_15ED4FF:         var_300 = CVar(Proc_6_45_EAD428(CStr(var_2E8), 7)) 'String
  loc_15ED502:         var_310 = (var_2B0 + var_300)
  loc_15ED508:         Print 1, var_310
  loc_15ED576:         Print 1, vbNullString
  loc_15ED581:         Print 1, vbNullString
  loc_15ED589:         var_9A = 5
  loc_15ED58C:       End If
  loc_15ED62B:       Proc_6_39_E7C810(var_250, CVar(var_C0.Fields.Item("qty")))
  loc_15ED676:       Proc_6_39_E7C810(var_300, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_15ED6C1:       Proc_6_39_E7C810(var_3E0, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_15ED70C:       var_148 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_15ED722:       var_170 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("KOTNo").Value), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_15ED725:       var_180 = (1 + var_170)
  loc_15ED739:       var_1C0 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + Space(2))
  loc_15ED74E:       var_1E0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ICODE")), var_9A), 7, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_15ED751:       var_1F0 = (1 + var_1E0)
  loc_15ED76A:       var_230 = (var_1F0 + CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ItemName").Value), &H1E)))
  loc_15ED783:       var_2A0 = (var_230 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0")), 4)))
  loc_15ED797:       var_2D8 = (Space(6) + Space(3))
  loc_15ED7B0:       var_388 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_300, "0.00")), 7)))
  loc_15ED7C4:       var_3A8 = (var_388 + Space(1))
  loc_15ED7DD:       var_434 = (var_3A8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3E0, "0.00")), &HB)))
  loc_15ED85B:       Print 1, CStr(var_434)
  loc_15ED867:       var_9A = (var_9A + 1)
  loc_15ED874:       If (var_9A = (&H1A - var_AE)) Then
  loc_15ED88B:         If (var_C0.RecordCount = &HE) Then
  loc_15ED893:           Print 1, vbNullString
  loc_15ED89F:           var_9A = (var_9A + 1)
  loc_15ED8A5:         Else
  loc_15ED8AB:           var_9C = (var_9C + 1)
  loc_15ED8B3:           Print 1, vbNullString
  loc_15ED8BF:           var_9A = (var_9A + 1)
  loc_15ED8D7:           var_128 = (Space(&H3E) + "Contd. Page ")
  loc_15ED8F2:           Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & CVar(CStr(var_9C)) & "..."
  loc_15ED90B:           var_9A = (var_9A + 1)
  loc_15ED90E:           ' Referenced from:   15ED92B
  loc_15ED914:           If (var_9A <> &H24) Then
  loc_15ED91C:             Print 1, vbNullString
  loc_15ED928:             var_9A = (var_9A + 1)
  loc_15ED92B:             GoTo loc_15ED90E
  loc_15ED92E:           End If
  loc_15ED930:           var_9A = 0
  loc_15ED933:         End If
  loc_15ED960:         Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A, var_9A)
  loc_15ED968:         var_148 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)))
  loc_15ED96D:         var_CC = CSng(CVar(CStr(var_9C)))
  loc_15ED982:         var_B6 = (var_B6 + 1)
  loc_15ED988:         var_C0.MoveNext
  loc_15ED98D:         GoTo loc_15ED22D
  loc_15ED990:       End If
  loc_15ED990:     End If
  loc_15ED99A:     If (var_9A < (&H1A - var_AE)) Then
  loc_15ED99D:       ' Referenced from: 15ED9C1
  loc_15ED9AA:       If (var_9A <> ((&H1A - var_AE) + 1)) Then
  loc_15ED9B2:         Print 1, vbNullString
  loc_15ED9BE:         var_9A = (var_9A + 1)
  loc_15ED9C1:         GoTo loc_15ED99D
  loc_15ED9C4:       End If
  loc_15ED9C4:     End If
  loc_15ED9C7:     var_C4.MoveFirst
  loc_15ED9CC:     ' Referenced from: 15EDD84
  loc_15ED9DB:     If Not(var_C4.EOF) Then
  loc_15EDA08:       var_444 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_15EDA26:       If (var_444 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_15EDA29:         GoTo loc_15EDD7C
  loc_15EDA2C:       End If
  loc_15EDA3F:       If (var_444 = CVar(MemVar_1F92078 & "NET")) Then
  loc_15EDA47:         Print 1, vbNullString
  loc_15EDA73:         Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)), CVar(var_C4.Fields.Item("Amount")), var_9A, var_B6, var_CC)
  loc_15EDA8D:         If (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) > 0) Then
  loc_15EDAC3:           Proc_6_39_E7C810(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9C)
  loc_15EDB06:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1, 1)))
  loc_15EDB0C:           Print 1, Space(2)
  loc_15EDB2D:         End If
  loc_15EDB30:       Else
  loc_15EDB43:         If (var_444 = CVar(MemVar_1F92078 & "SCH")) Then
  loc_15EDB79:           Proc_6_39_E7C810(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_15EDBBC:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15EDBC2:           Print 1, Space(2)
  loc_15EDBE6:         Else
  loc_15EDBF9:           If (var_444 = CVar(MemVar_1F92078 & "ST")) Then
  loc_15EDC28:             var_128 = CVar(var_C4.Fields.Item("Amount")) 'Address
  loc_15EDC2F:             Proc_6_39_E7C810(CVar(CStr(var_9C)), var_128, 1)
  loc_15EDC72:             var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15EDC78:             Print 1, Space(2)
  loc_15EDC9C:           Else
  loc_15EDCC2:             Proc_6_39_E7C810(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_15EDCDC:             If (var_128 > 0) Then
  loc_15EDD12:               Proc_6_39_E7C810(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")))
  loc_15EDD26:               var_158 = "0.00"
  loc_15EDD55:               var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), var_158)), &H12, 1)))
  loc_15EDD5B:               Print 1, Space(2)
  loc_15EDD7C:             End If
  loc_15EDD7C:           End If
  loc_15EDD7C:         End If
  loc_15EDD7C:         ' Referenced from: 15EDA29
  loc_15EDD7C:       End If
  loc_15EDD7F:       var_C4.MoveNext
  loc_15EDD84:       GoTo loc_15ED9CC
  loc_15EDD87:     End If
  loc_15EDD8A:     var_BC.MoveNext
  loc_15EDD8F:     GoTo loc_15ECE58
  loc_15EDD92:   End If
  loc_15EDD97:   Print 1, vbNullString
  loc_15EDDA2:   Print 1, vbNullString
  loc_15EDDAD:   Print 1, vbNullString
  loc_15EDDB8:   Print 1, vbNullString
  loc_15EDDC3:   Print 1, vbNullString
  loc_15EDDCE:   Print 1, vbNullString
  loc_15EDDD9:   Print 1, vbNullString
  loc_15EDDE4:   Print 1, vbNullString
  loc_15EDDEF:   Print 1, vbNullString
  loc_15EDDFA:   Print 1, vbNullString
  loc_15EDE05:   Print 1, vbNullString
  loc_15EDE0D:   Close 1
  loc_15EDE16:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15EDE4C:   var_128 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_15EDE52:   Print 1, var_128
  loc_15EDE68:   Close 1
  loc_15EDE72:   If (MemVar_1F923B8 = "Y") Then
  loc_15EDE8E:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15EDE98:   Else
  loc_15EDEB1:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15EDEB8:   End If
  loc_15EDEBD:   Set var_BC = Nothing
  loc_15EDEC5:   Set var_C0 = Nothing
  loc_15EDECD:   Set var_C4 = Nothing
  loc_15EDED3: Else
  loc_15EDEEC:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_128, CVar(CStr(var_9C)), var_158)
  loc_15EDEFC: End If
  loc_15EDEFC: Exit Sub
  loc_15EDEFD: ' Referenced from: 15ECC14
  loc_15EDEFD: Proc_6_60_E62BC4(1, var_9A)
  loc_15EDF02: Exit Sub
End Sub

Public Sub Proc_162_82_16BD290
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_FC As String
  Dim unk_58616C As Connection15
  Dim var_110 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E0 As Recordset15
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_188 As Variant
  Dim var_1E8 As Variant
  Dim var_270 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_218 As Variant
  Dim var_2BC As Variant
  Dim var_2E0 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2F0 As Variant
  Dim var_310 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_430 As Variant
  Dim var_10C As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16BB9AC: On Error Goto loc_16BD287
  loc_16BB9BB: Me.Filter = "ModType='POS'"
  loc_16BB9D7: If (Me.RecordCount > 0) Then
  loc_16BB9DD:   MemVar_1F923C0 = "N"
  loc_16BB9E4:   MemVar_1F923C4 = "N"
  loc_16BB9EB:   MemVar_1F923C8 = "K"
  loc_16BBA16:   unk_58616C.Execute "Select * from Depart Where Code='" & global_60 & "'", var_10C, -1
  loc_16BBA21:   Set var_E0 = var_110
  loc_16BBA63:   var_134 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_16BBA71:   var_8C = CStr(var_134 & "'")
  loc_16BBA8B:   var_134 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_16BBAC9:   var_90 = CStr(var_134 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_16BBAFD:   var_110 = Me.Fields
  loc_16BBB0D:   var_10C = var_110.Item("SearchCode").Value
  loc_16BBB1E:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_10C & "' order by sno " 
  loc_16BBB23:   var_94 = CStr(var_164)
  loc_16BBB40:   If (var_8C = vbNullString) Then
  loc_16BBB43:     Exit Sub
  loc_16BBB44:   End If
  loc_16BBB4C:   If (var_90 = vbNullString) Then
  loc_16BBB4F:     Exit Sub
  loc_16BBB50:   End If
  loc_16BBB58:   If (var_94 = vbNullString) Then
  loc_16BBB5B:     Exit Sub
  loc_16BBB5C:   End If
  loc_16BBB72:   unk_58616C.Execute var_8C, var_10C, -1
  loc_16BBB7D:   Set var_BC = var_110
  loc_16BBB9C:   unk_58616C.Execute var_90, var_10C, -1
  loc_16BBBA7:   Set var_C0 = var_110
  loc_16BBBC6:   unk_58616C.Execute var_94, var_10C, -1
  loc_16BBBD1:   Set var_C4 = var_110
  loc_16BBBDC:   Close 1
  loc_16BBBE5:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16BBBE9:   ' Referenced from: 16BD18A
  loc_16BBBF8:   If Not(var_BC.EOF) Then
  loc_16BBBFD:     var_9A = 0
  loc_16BBC02:     var_9C = 1
  loc_16BBC1C:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_16BBC2D:       var_98 = "** " & "BILL" & " **"
  loc_16BBC36:     Else
  loc_16BBC56:       var_98 = "** " & Me.LblRest.Caption & " **"
  loc_16BBC63:     End If
  loc_16BBC69:     If (var_9A = 0) Then
  loc_16BBC90:       var_110 = var_E0.Fields
  loc_16BBCB1:       var_FC = Proc_6_38_E68A98("UPTT No: " & var_110.Item("LstNo").Value, var_9C, var_9A, var_110)
  loc_16BBCDE:       var_178 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H1E, var_110)))
  loc_16BBCE5:       var_198 = (var_178 + Chr(&H12))
  loc_16BBCEB:       Print 1, var_198
  loc_16BBD18:       var_9A = (var_9A + 1)
  loc_16BBD2F:       Call Proc_162_105_10AA09C(var_98, "D", &H3C, var_FC)
  loc_16BBD39:       Print 1, var_FC
  loc_16BBD4B:       Print 1, vbNullString
  loc_16BBD57:       var_9A = (var_9A + 1)
  loc_16BBD88:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_16BBDBF:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16BBDD6:       Call Proc_162_106_128C764(var_9C, var_9A, &H3C, var_19E)
  loc_16BBDDE:       var_9A = var_19E
  loc_16BBE25:       var_154 = (Chr(&H11) + Space(&H14))
  loc_16BBE2E:       var_164 = ("UPTT No: " & var_110.Item("LstNo").Value + "PHONE NO.")
  loc_16BBE38:       var_188 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_9A, var_9A), &H1E, var_110)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_9A, var_9A), &H1E, var_9A)))
  loc_16BBE3E:       Print 1, Chr(&H12)
  loc_16BBE62:       var_9A = (var_9A + 1)
  loc_16BBE6A:       Print 1, vbNullString
  loc_16BBE76:       var_9A = (var_9A + 1)
  loc_16BBE7E:       Print 1, vbNullString
  loc_16BBE8A:       var_9A = (var_9A + 1)
  loc_16BBEA9:       var_110 = var_BC.Fields
  loc_16BBEC0:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_9A, var_9A), &H1E, var_110)), CVar(var_110.Item("VNo")), var_9A, var_9A)
  loc_16BBED7:       var_298 = Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_9A, var_9A), &H1E, var_110))), &HA, var_9A)
  loc_16BBF7A:       var_134 = (Chr(&HF) + "Bill No.   : ")
  loc_16BBF84:       var_188 = (Space(&H14) + CVar(var_298))
  loc_16BBF8B:       var_1B0 = (Chr(&H12) + Space(4))
  loc_16BBF94:       var_1C0 = (var_1B0 + "Dt : ")
  loc_16BBF9E:       var_208 = (var_1C0 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_110), &HF)))
  loc_16BBFA5:       var_228 = (var_208 + Space(4))
  loc_16BBFAE:       var_248 = (var_228 + "Time : ")
  loc_16BBFB8:       var_294 = (var_248 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_16BBFBE:       Print 1, var_294
  loc_16BC00D:       var_9A = (var_9A + 1)
  loc_16BC01B:       If (global_212 = "Outlet") Then
  loc_16BC072:         var_134 = (Chr(&HF) + "Table No.  : ")
  loc_16BC07C:         var_178 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo")), var_9A), 5)))
  loc_16BC082:         Print 1, CVar(var_298)
  loc_16BC0A7:         var_9A = (var_9A + 1)
  loc_16BC0AA:       End If
  loc_16BC0B5:       If (global_212 = "Room Service") Then
  loc_16BC10C:         var_134 = (Chr(&HF) + "Room No.   : ")
  loc_16BC116:         var_178 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo")), var_9A), 5)))
  loc_16BC11C:         Print 1, CVar(var_298)
  loc_16BC141:         var_9A = (var_9A + 1)
  loc_16BC144:       End If
  loc_16BC14F:       If (global_212 = "Hall") Then
  loc_16BC1A6:         var_134 = (Chr(&HF) + "Hall  No.  : ")
  loc_16BC1B0:         var_178 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo")), var_9A), 5)))
  loc_16BC1B6:         Print 1, CVar(var_298)
  loc_16BC1DB:         var_9A = (var_9A + 1)
  loc_16BC1DE:       End If
  loc_16BC25E:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_16BC2B5:         var_134 = (Chr(&HF) + "KOT No.    : ")
  loc_16BC2BF:         var_178 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("KOTNo")), var_9A), &H34)))
  loc_16BC2C5:         Print 1, (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)
  loc_16BC2EA:         var_9A = (var_9A + 1)
  loc_16BC2ED:       End If
  loc_16BC303:       var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BC309:       Print 1, Space(&H14)
  loc_16BC31C:       var_9A = (var_9A + 1)
  loc_16BC31F:     End If
  loc_16BC345:     var_154 = (CVar(Proc_6_45_EAD428("SNo", 3, var_9A)) + Space(1))
  loc_16BC351:     var_FC = "ITEM NAME"
  loc_16BC35F:     var_178 = (var_9A + CVar(Proc_6_45_EAD428(var_FC, &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16BC373:     var_198 = ((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_16BC38D:     var_1C0 = (Space(4) + CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)
  loc_16BC399:     var_1E8 = Space(1)
  loc_16BC3A1:     var_1F8 = (var_1C0 + var_1E8)
  loc_16BC3BB:     var_218 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_BC.Fields), &HF)) + CVar(Proc_6_52_EAD4F4("Rate", &HA)))
  loc_16BC3CF:     var_248 = (Space(4) + Space(1))
  loc_16BC3E9:     var_284 = (var_248 + CVar(Proc_6_52_EAD4F4("Qty", &HA)))
  loc_16BC3F5:     var_294 = Space(1)
  loc_16BC3FD:     var_2BC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), 8)) + var_294)
  loc_16BC417:     var_2E0 = (var_2BC + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_16BC41C:     var_B4 = CStr(var_2E0)
  loc_16BC471:     var_134 = (Chr(&HF) + CVar(var_B4))
  loc_16BC477:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_9A))
  loc_16BC49A:     var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BC4A0:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_9A))
  loc_16BC4B3:     var_9A = (var_9A + 1)
  loc_16BC4B8:     var_B6 = 1
  loc_16BC4BE:     var_C0.MoveFirst
  loc_16BC4C3:     ' Referenced from: 16BC972
  loc_16BC4D2:     If Not(var_C0.EOF) Then
  loc_16BC522:       Proc_6_39_E7C810(var_1E8, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_16BC56D:       Proc_6_39_E7C810(var_294, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_16BC5B8:       Proc_6_39_E7C810(var_338, CVar(var_C0.Fields.Item("qty")), 1, 1)
  loc_16BC603:       Proc_6_39_E7C810(var_3E0, CVar(var_C0.Fields.Item("Amt")), 1, 1)
  loc_16BC64E:       var_154 = (CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1)) + Space(1))
  loc_16BC667:       var_188 = (1 + CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ItemName").Value), &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16BC67B:       var_1B0 = (Space(1) + Space(1))
  loc_16BC694:       var_228 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)) 'String)
  loc_16BC6A8:       var_270 = (Space(1) + Space(1))
  loc_16BC6C1:       var_2F0 = (CVar(Proc_6_52_EAD4F4("Qty", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_294, "0.00")), &HA)))
  loc_16BC6D5:       var_310 = (var_2F0 + Space(1))
  loc_16BC6EE:       var_388 = (var_310 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_338, "0.00")), &HA)))
  loc_16BC702:       var_3A8 = (var_388 + Space(1))
  loc_16BC71B:       var_430 = (var_3A8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3E0, "0.00")), &HA)))
  loc_16BC7A6:       var_134 = (Chr(&HF) + CVar(CStr(var_430)))
  loc_16BC7AC:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_16BC7C3:       If (var_9A = (&H45 - var_AE)) Then
  loc_16BC7DC:         var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BC7E2:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_16BC7F5:         var_9A = (var_9A + 1)
  loc_16BC7FD:         Print 1, "Contd."
  loc_16BC809:         var_9A = (var_9A + 1)
  loc_16BC81E:         Print 1, Chr(&HC)
  loc_16BC82D:         var_9A = (var_9A + 1)
  loc_16BC836:         var_9C = (var_9C + 1)
  loc_16BC84C:         Call Proc_162_106_128C764(var_9C, 0, &H3C, var_19E, 0)
  loc_16BC86B:         Call Proc_162_105_10AA09C(var_98, "B", &H3C, var_FC, var_19E)
  loc_16BC875:         Print 1, var_FC
  loc_16BC888:         var_9A = (var_9A + 1)
  loc_16BC8A1:         var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BC8A7:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_16BC8BA:         var_9A = (var_9A + 1)
  loc_16BC8D3:         var_134 = (Chr(&HF) + CVar(var_B4))
  loc_16BC8D9:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_16BC8FC:         var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BC902:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_16BC915:         var_9A = (var_9A + 1)
  loc_16BC918:       End If
  loc_16BC945:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_19E, var_19E, var_19E)
  loc_16BC94D:       var_154 = (var_9C + CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1)))
  loc_16BC952:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_16BC967:       var_B6 = (var_B6 + 1)
  loc_16BC96D:       var_C0.MoveNext
  loc_16BC972:       GoTo loc_16BC4C3
  loc_16BC975:     End If
  loc_16BC995:     var_154 = (Chr(&HF) + Space(&H35))
  loc_16BC99F:     var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16BC9A5:     Print 1, var_C0.Fields.Item("ItemName").Value
  loc_16BC9BC:     var_9A = (var_9A + 1)
  loc_16BC9C2:     var_C4.MoveFirst
  loc_16BC9C7:     ' Referenced from: 16BCEE4
  loc_16BC9D6:     If Not(var_C4.EOF) Then
  loc_16BCA03:       var_440 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_16BCA21:       If (var_440 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_16BCAAD:         Proc_6_39_E7C810(var_1E8, CVar(var_C4.Fields.Item("Amount")), var_19E)
  loc_16BCAFA:         var_154 = (Chr(&HF) + Space(&H23))
  loc_16BCB04:         var_188 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_19E, var_B6, var_CC)))
  loc_16BCB0B:         var_1B0 = (Space(1) + Space(4))
  loc_16BCB15:         var_228 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), &HA, 1, 1)))
  loc_16BCB1C:         var_270 = (Space(1) + Chr(&H12))
  loc_16BCB22:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_16BCB65:         var_9A = (var_9A + 1)
  loc_16BCB6B:       Else
  loc_16BCB7E:         If (var_440 = CVar(MemVar_1F92078 & "NET")) Then
  loc_16BCB96:           var_134 = Space(&H35)
  loc_16BCBA1:           var_154 = (Chr(&HF) + var_134)
  loc_16BCBAB:           var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16BCBB1:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_16BCBC8:           var_9A = (var_9A + 1)
  loc_16BCBF1:           Proc_6_39_E7C810(var_134, CVar(var_C4.Fields.Item("Amount")), var_19E, var_19E)
  loc_16BCC0B:           If (var_134 > 0) Then
  loc_16BCC23:             var_134 = Space(&H23)
  loc_16BCC97:             Proc_6_39_E7C810(var_1E8, CVar(var_C4.Fields.Item("Amount")))
  loc_16BCCE4:             var_154 = (Chr(&HF) + var_134)
  loc_16BCCEE:             var_188 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_19E)))
  loc_16BCCF5:             var_1B0 = (Space(1) + Space(4))
  loc_16BCCFF:             var_228 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_16BCD06:             var_270 = (Space(1) + Chr(&H12))
  loc_16BCD0C:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_16BCD4F:             var_9A = (var_9A + 1)
  loc_16BCD52:           End If
  loc_16BCD55:         Else
  loc_16BCD7B:           Proc_6_39_E7C810(var_134, CVar(var_C4.Fields.Item("Amount")), var_19E)
  loc_16BCD95:           If (var_134 > 0) Then
  loc_16BCE21:             Proc_6_39_E7C810(var_1E8, CVar(var_C4.Fields.Item("Amount")))
  loc_16BCE6E:             var_154 = (Chr(&HF) + Space(&H23))
  loc_16BCE78:             var_188 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_16BCE7F:             var_1B0 = (Space(1) + Space(4))
  loc_16BCE89:             var_228 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_16BCE90:             var_270 = (Space(1) + Chr(&H12))
  loc_16BCE96:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_16BCED9:             var_9A = (var_9A + 1)
  loc_16BCEDC:           End If
  loc_16BCEDC:         End If
  loc_16BCEDC:       End If
  loc_16BCEDF:       var_C4.MoveNext
  loc_16BCEE4:       GoTo loc_16BC9C7
  loc_16BCEE7:     End If
  loc_16BCEFD:     var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BCF03:     Print 1, Space(&H23)
  loc_16BCF16:     var_9A = (var_9A + 1)
  loc_16BCF55:     If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_16BCFAC:       var_134 = (Chr(&HF) + "Steward Name  : ")
  loc_16BCFB6:       var_178 = (Space(&H23) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName")), var_19E, var_19E), &H14, 1)))
  loc_16BCFBC:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16BCFE1:       var_9A = (var_9A + 1)
  loc_16BCFE4:     End If
  loc_16BD038:     var_134 = (Chr(&HF) + "User Name     : ")
  loc_16BD042:     var_178 = (Space(&H23) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("U_Name")), var_19E), &HA)))
  loc_16BD048:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16BD06D:     var_9A = (var_9A + 1)
  loc_16BD075:     Print 1, vbNullString
  loc_16BD081:     var_9A = (var_9A + 1)
  loc_16BD099:     var_134 = (Chr(&HF) + "HAVE A NICE DAY ")
  loc_16BD09F:     Print 1, Space(&H23)
  loc_16BD0B2:     var_9A = (var_9A + 1)
  loc_16BD0D5:     var_154 = (Chr(&HF) + Space(&H32))
  loc_16BD0DE:     var_164 = (CVar(var_BC.Fields.Item("U_Name")) + "Guest Signature")
  loc_16BD0E4:     Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("U_Name")), var_19E), &HA))
  loc_16BD0FB:     var_9A = (var_9A + 1)
  loc_16BD103:     Print 1, vbNullString
  loc_16BD10F:     var_9A = (var_9A + 1)
  loc_16BD127:     var_134 = (Chr(&HF) + "# ")
  loc_16BD131:     var_154 = Space(&H32) & CVar(MemVar_1F9221C) 
  loc_16BD13A:     var_164 = var_154 & " # " 
  loc_16BD140:     Print 1, var_164
  loc_16BD157:     var_9A = (var_9A + 1)
  loc_16BD15D:     var_BC.MoveNext
  loc_16BD167:     Print 1, vbNullString
  loc_16BD173:     var_9A = (var_9A + 1)
  loc_16BD17B:     Print 1, vbNullString
  loc_16BD187:     var_9A = (var_9A + 1)
  loc_16BD18A:     GoTo loc_16BBBE9
  loc_16BD18D:   End If
  loc_16BD18F:   Close 1
  loc_16BD198:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16BD1CE:   var_134 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_16BD1D4:   Print 1, var_134
  loc_16BD1EA:   Close 1
  loc_16BD1F4:   If (MemVar_1F923B8 = "Y") Then
  loc_16BD210:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16BD21A:   Else
  loc_16BD233:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16BD23A:   End If
  loc_16BD23F:   Set var_BC = Nothing
  loc_16BD247:   Set var_C0 = Nothing
  loc_16BD24F:   Set var_C4 = Nothing
  loc_16BD257:   Set var_E0 = Nothing
  loc_16BD25D: Else
  loc_16BD276:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_134, var_154, var_164)
  loc_16BD286: End If
  loc_16BD286: Exit Sub
  loc_16BD287: ' Referenced from: 16BB9AC
  loc_16BD287: Proc_6_60_E62BC4(var_19E, var_19E, var_19E, var_19E, var_19E)
  loc_16BD28C: Exit Sub
End Sub

Public Sub Proc_162_83_1812154
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_10C As String
  Dim unk_58616C As Connection15
  Dim var_134 As Variant
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_1CC As Fields15
  Dim var_1F0 As Variant
  Dim var_258 As Fields15
  Dim var_27C As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_1A8 As Variant
  Dim var_224 As Variant
  Dim var_2CC As Variant
  Dim var_2F0 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_440 As Variant
  Dim var_11C As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  Dim var_280 As String
  Dim var_C4 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_310 As Variant
  Dim var_EC As Recordset15
  loc_180FECC: On Error Goto loc_181214D
  loc_180FEDB: Me.Filter = "ModType='POS'"
  loc_180FEF7: If (Me.RecordCount > 0) Then
  loc_180FEFD:   MemVar_1F923C0 = "N"
  loc_180FF04:   MemVar_1F923C4 = "N"
  loc_180FF0B:   MemVar_1F923C8 = "K"
  loc_180FF36:   unk_58616C.Execute "Select * from Depart Where Code='" & global_60 & "'", var_11C, -1
  loc_180FF41:   Set var_EC = var_120
  loc_180FF83:   var_144 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_180FF91:   var_8C = CStr(var_144 & "'")
  loc_180FFAB:   var_144 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_180FFE9:   var_90 = CStr(var_144 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_1810035:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Me.Fields.Item("SearchCode").Value 
  loc_1810043:   var_94 = CStr(var_164 & "' order by sno")
  loc_181005F:   var_144 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And I.RestCode=S.ItemRestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1810077:   var_120 = Me.Fields
  loc_1810087:   var_11C = var_120.Item("SearchCode").Value
  loc_1810098:   var_174 = var_144 & var_11C & "' ORDER BY I.Kitchen" 
  loc_181009D:   var_98 = CStr(var_174)
  loc_18100BA:   If (var_8C = vbNullString) Then
  loc_18100BD:     Exit Sub
  loc_18100BE:   End If
  loc_18100C6:   If (var_90 = vbNullString) Then
  loc_18100C9:     Exit Sub
  loc_18100CA:   End If
  loc_18100D2:   If (var_94 = vbNullString) Then
  loc_18100D5:     Exit Sub
  loc_18100D6:   End If
  loc_18100EC:   unk_58616C.Execute var_8C, var_11C, -1
  loc_18100F7:   Set var_C0 = var_120
  loc_1810116:   unk_58616C.Execute var_90, var_11C, -1
  loc_1810121:   Set var_CC = var_120
  loc_1810140:   unk_58616C.Execute var_94, var_11C, -1
  loc_181014B:   Set var_D0 = var_120
  loc_181016A:   unk_58616C.Execute var_98, var_11C, -1
  loc_1810175:   Set var_C4 = var_120
  loc_1810180:   Close 1
  loc_1810189:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_181018D:   ' Referenced from: 1812040
  loc_181019C:   If Not(var_C0.EOF) Then
  loc_18101CD:     var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_18101D8:     var_9E = 0
  loc_18101DD:     var_A0 = 1
  loc_18101F7:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_1810208:       var_9C = "** " & "BILL" & " **"
  loc_1810211:     Else
  loc_1810226:       var_9C = Me.LblRest.Caption
  loc_181022C:     End If
  loc_1810232:     If (var_9E = 0) Then
  loc_1810263:       var_DC = Replace(CStr(Space(&H32)), " ", "-", 1, -1, 0)
  loc_181029A:       var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_18102BF:       var_120 = var_C0.Fields
  loc_18102D6:       Proc_6_39_E7C810(var_174, CVar(var_120.Item("VNo")), var_A0, var_9E, var_120)
  loc_1810390:       var_144 = (Chr(&HF) + "Bill No.  : ")
  loc_181039A:       var_198 = (var_144 + CVar(Proc_6_45_EAD428(CStr(var_174), 5, var_120)))
  loc_18103A1:       var_1B8 = (var_198 + Space(2))
  loc_18103AA:       var_1C8 = (var_1B8 + "Dt : ")
  loc_18103B4:       var_214 = (var_1C8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_120), &HB)))
  loc_18103BB:       var_234 = (var_214 + Space(3))
  loc_18103C4:       var_254 = (var_234 + "Time : ")
  loc_18103CE:       var_2A4 = (var_254 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME")), var_120), 5)))
  loc_18103D4:       Print 1, var_2A4
  loc_1810423:       var_9E = (var_9E + 1)
  loc_1810431:       If (global_212 = "Outlet") Then
  loc_1810488:         var_144 = (Chr(&HF) + "Table No. : ")
  loc_1810492:         var_188 = (var_144 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5)))
  loc_1810498:         Print 1, CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5))), 5, var_C0.Fields))
  loc_18104BD:         var_9E = (var_9E + 1)
  loc_18104C0:       End If
  loc_18104CB:       If (global_212 = "Room Service") Then
  loc_1810522:         var_144 = (Chr(&HF) + "Room No.  : ")
  loc_181052C:         var_188 = (var_144 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5)))
  loc_1810532:         Print 1, CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5))), 5, var_C0.Fields))
  loc_1810557:         var_9E = (var_9E + 1)
  loc_181055A:       End If
  loc_1810565:       If (global_212 = "Hall") Then
  loc_18105BC:         var_144 = (Chr(&HF) + "Hall  No. : ")
  loc_18105C6:         var_188 = (var_144 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5)))
  loc_18105CC:         Print 1, CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5))), 5, var_C0.Fields))
  loc_18105F1:         var_9E = (var_9E + 1)
  loc_18105F4:       End If
  loc_1810674:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_18106CB:         var_144 = (Chr(&HF) + "KOT No.   : ")
  loc_18106D5:         var_188 = (var_144 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H34)))
  loc_18106DB:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_1810700:         var_9E = (var_9E + 1)
  loc_1810703:       End If
  loc_1810719:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_181071F:       Print 1, var_144
  loc_1810732:       var_9E = (var_9E + 1)
  loc_181075B:       var_164 = (CVar(Proc_6_45_EAD428("SNo", 3, var_9E)) + Space(1))
  loc_1810767:       var_10C = "Particulars"
  loc_1810775:       var_188 = (var_9E + CVar(Proc_6_45_EAD428(var_10C, &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1810789:       var_1A8 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_18107A3:       var_1C8 = (Space(2) + CVar(Proc_6_52_EAD4F4("T, 2)) 'String)
  loc_18107AF:       var_1F0 = Space(1)
  loc_18107B7:       var_204 = (var_1C8 + var_1F0)
  loc_18107D1:       var_224 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_C0.Fields), &HB)) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_18107E5:       var_254 = (Space(3) + Space(1))
  loc_18107FF:       var_294 = (var_254 + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_181080B:       var_2A4 = Space(1)
  loc_1810813:       var_2CC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME")), var_C0.Fields), 5)) + var_2A4)
  loc_181082D:       var_2F0 = (var_2CC + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_1810832:       var_B8 = CStr(var_2F0)
  loc_1810887:       var_144 = (Chr(&HF) + CVar(var_B8))
  loc_181088D:       Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_9E))
  loc_18108B0:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_18108B6:       Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_9E))
  loc_18108C9:       var_9E = (var_9E + 1)
  loc_18108CE:       var_BA = 1
  loc_18108D4:       var_CC.MoveFirst
  loc_18108D9:       ' Referenced from: 1810D88
  loc_18108E8:       If Not(var_CC.EOF) Then
  loc_1810938:         Proc_6_39_E7C810(var_1F0, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_181096C:         var_258 = var_CC.Fields
  loc_1810983:         Proc_6_39_E7C810(var_2A4, CVar(var_258.Item("Rate")), 1)
  loc_18109CE:         Proc_6_39_E7C810(var_348, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1810A19:         Proc_6_39_E7C810(var_3F0, CVar(var_CC.Fields.Item("Amt")), 1, 1)
  loc_1810A64:         var_164 = (CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1)) + Space(1))
  loc_1810A7D:         var_198 = (1 + CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1810A91:         var_1B8 = (Space(1) + Space(2))
  loc_1810AAA:         var_234 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F0, "0")), 1, CVar(Proc_6_52_EAD4F4("T, 2)) 'String)) 'String)
  loc_1810ABE:         var_27C = (Space(1) + Space(1))
  loc_1810AD7:         var_300 = (CVar(Proc_6_52_EAD4F4("Qty", 6)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2A4, "0.00")), 7)))
  loc_1810AEB:         var_320 = (var_300 + Space(1))
  loc_1810B04:         var_398 = (var_320 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_348, "0.00")), 6)))
  loc_1810B18:         var_3B8 = (var_398 + Space(1))
  loc_1810B31:         var_440 = (var_3B8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3F0, "0.00")), 9)))
  loc_1810BBC:         var_144 = (Chr(&HF) + CVar(CStr(var_440)))
  loc_1810BC2:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1810BD9:         If (var_9E = (&H45 - var_B2)) Then
  loc_1810BF2:           var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1810BF8:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1810C0B:           var_9E = (var_9E + 1)
  loc_1810C13:           Print 1, "Contd."
  loc_1810C1F:           var_9E = (var_9E + 1)
  loc_1810C34:           Print 1, Chr(&HC)
  loc_1810C43:           var_9E = (var_9E + 1)
  loc_1810C4C:           var_A0 = (var_A0 + 1)
  loc_1810C62:           Call Proc_162_106_128C764(var_A0, 0, &H32, var_1F2, 0)
  loc_1810C81:           Call Proc_162_105_10AA09C(var_9C, "B", &H32, var_10C, var_1F2)
  loc_1810C8B:           Print 1, var_10C
  loc_1810C9E:           var_9E = (var_9E + 1)
  loc_1810CB7:           var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1810CBD:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1810CD0:           var_9E = (var_9E + 1)
  loc_1810CE9:           var_144 = (Chr(&HF) + CVar(var_B8))
  loc_1810CEF:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1810D12:           var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1810D18:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1810D2B:           var_9E = (var_9E + 1)
  loc_1810D2E:         End If
  loc_1810D5B:         Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), var_1F2, var_1F2, var_1F2)
  loc_1810D63:         var_164 = (var_A0 + CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1)))
  loc_1810D68:         var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_1810D7D:         var_BA = (var_BA + 1)
  loc_1810D83:         var_CC.MoveNext
  loc_1810D88:         GoTo loc_18108D9
  loc_1810D8B:       End If
  loc_1810DAB:       var_164 = (Chr(&HF) + Space(&H29))
  loc_1810DB5:       var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_1810DBB:       Print 1, var_CC.Fields.Item("ItemName").Value
  loc_1810DD2:       var_9E = (var_9E + 1)
  loc_1810DD8:       var_D0.MoveFirst
  loc_1810DDD:       ' Referenced from: 18112FA
  loc_1810DEC:       If Not(var_D0.EOF) Then
  loc_1810E19:         var_450 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1810E37:         If (var_450 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1810EC3:           Proc_6_39_E7C810(var_1F0, CVar(var_D0.Fields.Item("Amount")), var_1F2)
  loc_1810F10:           var_164 = (Chr(&HF) + Space(&H1C))
  loc_1810F1A:           var_198 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, var_1F2, var_BA, var_D8)))
  loc_1810F21:           var_1B8 = (Space(1) + Space(1))
  loc_1810F2B:           var_234 = (CVar(Proc_6_52_EAD4F4("T, 2)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F0, "0.00")), 9, 1, 1)))
  loc_1810F32:           var_27C = (Space(1) + Chr(&H12))
  loc_1810F38:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1810F7B:           var_9E = (var_9E + 1)
  loc_1810F81:         Else
  loc_1810F94:           If (var_450 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1810FAC:             var_144 = Space(&H29)
  loc_1810FB7:             var_164 = (Chr(&HF) + var_144)
  loc_1810FC1:             var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_1810FC7:             Print 1, var_D0.Fields.Item("DispName").Value
  loc_1810FDE:             var_9E = (var_9E + 1)
  loc_1811007:             Proc_6_39_E7C810(var_144, CVar(var_D0.Fields.Item("Amount")), var_1F2, var_1F2)
  loc_1811021:             If (var_144 > 0) Then
  loc_1811039:               var_144 = Space(&H1C)
  loc_18110AD:               Proc_6_39_E7C810(var_1F0, CVar(var_D0.Fields.Item("Amount")))
  loc_18110FA:               var_164 = (Chr(&HF) + var_144)
  loc_1811104:               var_198 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, var_1F2)))
  loc_181110B:               var_1B8 = (Space(1) + Space(1))
  loc_1811115:               var_234 = (CVar(Proc_6_52_EAD4F4("T, 2)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F0, "0.00")), 9, 1)))
  loc_181111C:               var_27C = (Space(1) + Chr(&H12))
  loc_1811122:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1811165:               var_9E = (var_9E + 1)
  loc_1811168:             End If
  loc_181116B:           Else
  loc_1811191:             Proc_6_39_E7C810(var_144, CVar(var_D0.Fields.Item("Amount")), var_1F2)
  loc_18111AB:             If (var_144 > 0) Then
  loc_1811220:               var_1CC = var_D0.Fields
  loc_1811237:               Proc_6_39_E7C810(var_1F0, CVar(var_1CC.Item("Amount")))
  loc_1811284:               var_164 = (Chr(&HF) + Space(&H1C))
  loc_181128E:               var_198 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)))
  loc_1811295:               var_1B8 = (Space(1) + Space(1))
  loc_181129F:               var_234 = (CVar(Proc_6_52_EAD4F4("T, 2)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F0, "0.00")), 9, 1)))
  loc_18112A6:               var_27C = (Space(1) + Chr(&H12))
  loc_18112AC:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_18112EF:               var_9E = (var_9E + 1)
  loc_18112F2:             End If
  loc_18112F2:           End If
  loc_18112F2:         End If
  loc_18112F5:         var_D0.MoveNext
  loc_18112FA:         GoTo loc_1810DDD
  loc_18112FD:       End If
  loc_1811313:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1811319:       Print 1, Space(&H1C)
  loc_181132C:       var_9E = (var_9E + 1)
  loc_181136B:       If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_18113C2:         var_144 = (Chr(&HF) + "Steward Name  : ")
  loc_18113CC:         var_188 = (Space(&H1C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), var_1F2, var_1F2), &H14, 1)))
  loc_18113D2:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_18113F7:         var_9E = (var_9E + 1)
  loc_18113FA:       End If
  loc_1811402:       var_11C = Chr(&HF)
  loc_1811416:       var_120 = var_C0.Fields
  loc_181144E:       var_144 = (var_11C + "User Name     : ")
  loc_1811458:       var_188 = (Space(&H1C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), var_1F2), &HA)))
  loc_181145E:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_1811483:       var_9E = (var_9E + 1)
  loc_181148B:       Print 1, vbNullString
  loc_1811497:       var_9E = (var_9E + 1)
  loc_18114C1:       unk_58616C.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_18114CC:       Set var_F0 = var_120
  loc_18114F0:       If (var_F0.RecordCount > 0) Then
  loc_1811533:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_181153E:           var_11C = Chr(&HF)
  loc_1811552:           var_120 = var_F0.Fields
  loc_1811574:           var_174 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_181157A:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), var_1F2), &HA))
  loc_1811594:           var_9E = (var_9E + 1)
  loc_1811597:         End If
  loc_1811597:       End If
  loc_18115BE:       unk_58616C.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_18115C9:       Set var_F0 = var_120
  loc_18115ED:       If (var_F0.RecordCount > 0) Then
  loc_1811630:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1811657:           var_124 = var_F0.Fields.Item("Slogan2")
  loc_1811671:           var_174 = (Chr(&HF) + Trim(CVar(var_124)))
  loc_1811677:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_F0.Fields.Item("U_Name")), var_1F2), &HA))
  loc_1811691:           var_9E = (var_9E + 1)
  loc_1811694:         End If
  loc_1811694:       End If
  loc_1811699:       Set var_F0 = Nothing
  loc_18116A1:       Print 1, vbNullString
  loc_18116AD:       var_9E = (var_9E + 1)
  loc_18116B8:       var_11C = Chr(&HF)
  loc_18116C5:       var_144 = (var_11C + "# ")
  loc_18116DE:       Print 1, CVar(var_124) & CVar(MemVar_1F9221C) & " # "
  loc_18116F5:       var_9E = (var_9E + 1)
  loc_18116FB:       var_134 = 0
  loc_181172B:       unk_58616C.Execute "SELECT TOKENPrint FROM Depart where Code ='" & global_60 & "'", var_11C, -1
  loc_1811733:       var_120 = var_120.Fields
  loc_181173B:       var_134 = var_124.Item(var_124)
  loc_181174C:       var_280 = Proc_6_38_E68A98(CVar(var_1CC), var_1CC, var_1F2, var_1F2, var_1F2)
  loc_181176B:       If (var_280 = "Yes") Then
  loc_1811782:         If (var_C4.RecordCount > 0) Then
  loc_181178A:           Print 1, vbNullString
  loc_18117CB:           var_10C = Replace(CStr(Space(&H32)), " ", "=", 1, -1, 0)
  loc_18117D7:           var_174 = (Chr(&HF) + CVar("SELECT TOKENPrint FROM Depart where Code ='" & global_60 & "'"))
  loc_18117DD:           Print 1, CVar(var_124) & CVar(MemVar_1F9221C) & " # "
  loc_18117FA:           Print 1, vbNullString
  loc_1811806:           var_9E = (var_9E + 1)
  loc_1811809:           ' Referenced from: 1811E1E
  loc_1811818:           If Not(var_C4.EOF) Then
  loc_181181D:             var_BA = 1
  loc_1811834:             var_144 = CVar("Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_181186D:             var_174 = var_144 & Me.Fields.Item("SearchCode").Value & "' AND I.Kitchen='" 
  loc_18118B2:             unk_58616C.Execute CStr(var_174 & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)"), CVar(Proc_6_52_EAD4F4("T, 2)) 'String, -1
  loc_18118BD:             Set var_C8 = var_258
  loc_18118F7:             If (var_C8.RecordCount > 0) Then
  loc_181193A:               Call Proc_162_105_10AA09C(CStr(var_C4.Fields.Item("Department").Value), "D", &H2D, var_280, var_258, var_BA)
  loc_1811944:               Print 1, var_280
  loc_1811979:               var_120 = var_C0.Fields
  loc_1811990:               Proc_6_39_E7C810(var_174, CVar(var_120.Item("VNo")), var_1F2, var_120)
  loc_1811A4A:               var_144 = (Chr(&HF) + "Bill No.  : ")
  loc_1811A54:               var_198 = (var_144 + CVar(Proc_6_45_EAD428(CStr(var_174), 5, var_1F2)))
  loc_1811A5B:               var_1B8 = (var_174 & var_C4.Fields.Item("Kitchen").Value + Space(2))
  loc_1811A64:               var_1C8 = (CVar(Proc_6_52_EAD4F4("T, 2)) 'String + "Dt : ")
  loc_1811A6E:               var_214 = (CVar(var_C0.Fields.Item("Amount")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_120), &HB)))
  loc_1811A75:               var_234 = (Format(CVar(var_C0.Fields.Item("VDate")), "0.00") + Space(3))
  loc_1811A7E:               var_254 = (Space(1) + "Time : ")
  loc_1811A88:               var_2A4 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME")), var_1F2), 5)))
  loc_1811A8E:               Print 1, var_2A4
  loc_1811ADD:               var_9E = (var_9E + 1)
  loc_1811B51:               var_214 = Space(1)
  loc_1811BBB:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_1811BC2:               var_188 = (CVar(var_120.Item("VNo")) + Space(1))
  loc_1811BCC:               var_1A8 = (CVar(Proc_6_45_EAD428(CStr(Space(1)), 5, var_1F2)) + CVar(Proc_6_45_EAD428("Particulars", &HF)))
  loc_1811BD3:               var_1C8 = (Space(2) + Space(1))
  loc_1811BDD:               var_204 = (CVar(var_C0.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4("Tax, 5)) 'String)
  loc_1811BE4:               var_224 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_120), &HB)) + var_214)
  loc_1811BEE:               var_254 = (Space(3) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_1811BF5:               var_294 = (Chr(&H12) + Space(1))
  loc_1811BFF:               var_2CC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME")), var_1F2), 5)) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1811C06:               var_2F0 = ("0.00" + Space(1))
  loc_1811C10:               var_310 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Qty", 6)), "0.00")), 7)) + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_1811C16:               Print 1, Space(1)
  loc_1811C7E:               var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1811C84:               Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_1811C91:               ' Referenced from: 1811E08
  loc_1811CA0:               If Not(var_C8.EOF) Then
  loc_1811D42:                 Proc_6_39_E7C810(var_214, CVar(var_C8.Fields.Item("qty")))
  loc_1811D85:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3)))
  loc_1811D8C:                 var_188 = (CVar(var_C8.Fields.Item("VNo")) + Space(1))
  loc_1811D96:                 var_1B8 = (CVar(Proc_6_45_EAD428(CStr(Space(1)), 5, var_1F2)) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H1E)))
  loc_1811D9D:                 var_1F0 = (Space(1) + Space(1))
  loc_1811DA7:                 var_27C = (CVar(Proc_6_52_EAD4F4("Tax, 5)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_214, "0.00")), &HD, 1)))
  loc_1811DAD:                 Print 1, Space(1)
  loc_1811DF1:                 var_C8.MoveNext
  loc_1811DFC:                 var_9E = (var_9E + 1)
  loc_1811E05:                 var_BA = (var_BA + 1)
  loc_1811E08:                 GoTo loc_1811C91
  loc_1811E0B:               End If
  loc_1811E0B:             End If
  loc_1811E0E:             var_C4.MoveNext
  loc_1811E18:             Print 1, vbNullString
  loc_1811E1E:             GoTo loc_1811809
  loc_1811E21:           End If
  loc_1811E21:         End If
  loc_1811E21:       End If
  loc_1811E21:     End If
  loc_1811E26:     Print 1, vbNullString
  loc_1811E32:     var_9E = (var_9E + 1)
  loc_1811E3A:     Print 1, vbNullString
  loc_1811E46:     var_9E = (var_9E + 1)
  loc_1811E4E:     Print 1, vbNullString
  loc_1811E5A:     var_9E = (var_9E + 1)
  loc_1811E62:     Print 1, vbNullString
  loc_1811E6E:     var_9E = (var_9E + 1)
  loc_1811E76:     Print 1, vbNullString
  loc_1811E82:     var_9E = (var_9E + 1)
  loc_1811E8A:     Print 1, vbNullString
  loc_1811E96:     var_9E = (var_9E + 1)
  loc_1811E9E:     Print 1, vbNullString
  loc_1811EAA:     var_9E = (var_9E + 1)
  loc_1811EF2:     var_10C = Proc_6_38_E68A98("UPTT No: " & var_EC.Fields.Item("LstNo").Value, var_1F2, var_1F2, var_1F2, var_1F2, var_1F2)
  loc_1811F1F:     var_188 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_10C, &H1E, var_1F2, var_1F2)))
  loc_1811F26:     var_1A8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(var_10C, &H1E, var_1F2, var_1F2))), 5, var_1F2)) + Chr(&H12))
  loc_1811F2C:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H1E))
  loc_1811F59:     var_9E = (var_9E + 1)
  loc_1811F70:     Call Proc_162_105_10AA09C(var_9C, "D", &H2D, var_10C)
  loc_1811F7A:     Print 1, var_10C
  loc_1811F95:     Call Proc_162_106_128C764(var_A0, var_1F2, &H32, var_1F2)
  loc_1811FE4:     var_164 = (Chr(&H11) + Space(&HE))
  loc_1811FED:     var_174 = ("UPTT No: " & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_1811FF7:     var_198 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_1F2, var_1F2), &H1E, var_1F2, var_1F2)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_1F2, var_1F2), &H1E, var_BA)))
  loc_1811FFD:     Print 1, Chr(&H12)
  loc_1812021:     var_9E = (var_9E + 1)
  loc_1812027:     var_C0.MoveNext
  loc_1812031:     Print 1, vbNullString
  loc_181203D:     var_9E = (var_9E + 1)
  loc_1812040:     GoTo loc_181018D
  loc_1812043:   End If
  loc_1812045:   Close 1
  loc_181204E:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1812084:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_181208A:   Print 1, var_144
  loc_18120A0:   Close 1
  loc_18120AA:   If (MemVar_1F923B8 = "Y") Then
  loc_18120C6:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18120D0:   Else
  loc_18120E9:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18120F0:   End If
  loc_18120F5:   Set var_C0 = Nothing
  loc_18120FD:   Set var_CC = Nothing
  loc_1812105:   Set var_D0 = Nothing
  loc_181210D:   Set var_EC = Nothing
  loc_1812115:   Set var_C4 = Nothing
  loc_181211D:   Set var_C8 = Nothing
  loc_1812123: Else
  loc_181213C:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, "UPTT No: " & var_EC.Fields.Item("LstNo").Value, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_1F2, var_1F2), &H1E, var_1F2, var_1F2)))
  loc_181214C: End If
  loc_181214C: Exit Sub
  loc_181214D: ' Referenced from: 180FECC
  loc_181214D: Proc_6_60_E62BC4(var_1F2, var_1F2)
  loc_1812152: Exit Sub
End Sub

Public Sub Proc_162_84_15E79BC
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_10C As String
  Dim unk_58616C As Connection15
  Dim var_120 As Fields15
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_208 As Variant
  Dim var_288 As Variant
  Dim var_198 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_360 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_188 As Variant
  Dim var_3B4 As Variant
  Dim var_11C As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  loc_15E66F4: On Error Goto loc_15E79B5
  loc_15E6703: Me.Filter = "ModType='POS'"
  loc_15E671F: If (Me.RecordCount > 0) Then
  loc_15E6725:   MemVar_1F923C0 = "N"
  loc_15E672C:   MemVar_1F923C4 = "N"
  loc_15E6733:   MemVar_1F923C8 = "K"
  loc_15E6755:   var_10C = "Select * from Depart Where Code='" & global_60 & "'"
  loc_15E675E:   unk_58616C.Execute var_10C, var_11C, -1
  loc_15E6769:   Set var_EC = var_120
  loc_15E67AB:   var_144 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_15E67B9:   var_8C = CStr(var_144 & "'")
  loc_15E67D3:   var_144 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_15E6811:   var_90 = CStr(var_144 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_15E685D:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Me.Fields.Item("SearchCode").Value 
  loc_15E686B:   var_94 = CStr(var_164 & "' order by sno")
  loc_15E6887:   var_144 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And I.RestCode=S.ItemRestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_15E689F:   var_120 = Me.Fields
  loc_15E68AF:   var_11C = var_120.Item("SearchCode").Value
  loc_15E68C5:   var_98 = CStr(var_144 & var_11C & "' ORDER BY I.Kitchen")
  loc_15E68E2:   If (var_8C = vbNullString) Then
  loc_15E68E5:     Exit Sub
  loc_15E68E6:   End If
  loc_15E68EE:   If (var_90 = vbNullString) Then
  loc_15E68F1:     Exit Sub
  loc_15E68F2:   End If
  loc_15E68FA:   If (var_94 = vbNullString) Then
  loc_15E68FD:     Exit Sub
  loc_15E68FE:   End If
  loc_15E6914:   unk_58616C.Execute var_8C, var_11C, -1
  loc_15E691F:   Set var_C0 = var_120
  loc_15E693E:   unk_58616C.Execute var_90, var_11C, -1
  loc_15E6949:   Set var_CC = var_120
  loc_15E6968:   unk_58616C.Execute var_94, var_11C, -1
  loc_15E6973:   Set var_D0 = var_120
  loc_15E6992:   unk_58616C.Execute var_98, var_11C, -1
  loc_15E699D:   Set var_C4 = var_120
  loc_15E69A8:   Close 1
  loc_15E69B1:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15E69B5:   ' Referenced from: 15E78A8
  loc_15E69C4:   If Not(var_C0.EOF) Then
  loc_15E69C9:     var_9E = 0
  loc_15E69D7:     If (var_9E = 0) Then
  loc_15E69DF:       Print 1, vbNullString
  loc_15E69EA:       Print 1, vbNullString
  loc_15E69F5:       Print 1, vbNullString
  loc_15E6A00:       Print 1, vbNullString
  loc_15E6A0B:       Print 1, vbNullString
  loc_15E6A16:       Print 1, vbNullString
  loc_15E6A4A:       var_DC = Replace(CStr(Space(&H37)), " ", "-", 1, -1, 0)
  loc_15E6A81:       var_E0 = Replace(CStr(Space(&HA)), " ", "-", 1, -1, 0)
  loc_15E6A98:       Call Proc_162_106_128C764(1, var_9E, &H3C, var_178, 1, var_9E)
  loc_15E6AA0:       var_9E = var_178
  loc_15E6AA8:       Print 1, vbNullString
  loc_15E6AB4:       var_9E = (var_9E + 1)
  loc_15E6ABC:       Print 1, vbNullString
  loc_15E6AC8:       var_9E = (var_9E + 1)
  loc_15E6AE7:       var_120 = var_C0.Fields
  loc_15E6B6B:       var_1E0 = Space(2)
  loc_15E6BFF:       var_288 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")))) 'String
  loc_15E6C52:       Proc_6_39_E7C810(var_338, CVar(var_C0.Fields.Item("VNo")))
  loc_15E6C72:       var_164 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("WaiterName")), var_9E, var_9E, var_9E, var_120), &HF, var_120)) 'String
  loc_15E6C75:       var_174 = (Space(1) + var_164)
  loc_15E6C7C:       var_198 = (CVar(var_120.Item("WaiterName")) & Space(1) & "' ORDER BY I.Kitchen" + Space(2))
  loc_15E6C86:       var_1D0 = (var_198 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_120), &HA)))
  loc_15E6C8D:       var_1F0 = (var_1D0 + var_1E0)
  loc_15E6C97:       var_230 = (var_1F0 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME")), var_120), 5)))
  loc_15E6C9E:       var_250 = (var_230 + Space(2))
  loc_15E6CA8:       var_2E0 = (var_250 + CVar(Proc_6_45_EAD428(CStr(Format(var_288, "dd/MM/yy")), &HB, 1)))
  loc_15E6CAF:       var_300 = (var_2E0 + Space(2))
  loc_15E6CB9:       var_360 = (var_300 + CVar(Proc_6_45_EAD428(CStr(var_338), &HA)))
  loc_15E6CBF:       Print 1, var_360
  loc_15E6D32:       var_9E = (var_9E + 1)
  loc_15E6D3A:       Print 1, vbNullString
  loc_15E6D45:       Print 1, vbNullString
  loc_15E6D50:       Print 1, vbNullString
  loc_15E6D56:     End If
  loc_15E6D58:     var_BA = 1
  loc_15E6D5E:     var_CC.MoveFirst
  loc_15E6D63:     ' Referenced from: 15E70F9
  loc_15E6D72:     If Not(var_CC.EOF) Then
  loc_15E6DC2:       Proc_6_39_E7C810(var_1E0, CVar(var_CC.Fields.Item("qty")), var_BA)
  loc_15E6E0D:       Proc_6_39_E7C810(var_288, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_15E6E58:       Proc_6_39_E7C810(var_338, CVar(var_CC.Fields.Item("Amt")), 1, 1)
  loc_15E6E97:       var_144 = CVar(Proc_6_45_EAD428(CStr(var_BA) & ".", 3, 1, 1)) 'String
  loc_15E6EAA:       var_164 = (var_144 + Space(1))
  loc_15E6EC3:       var_198 = (var_9E + CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H14, var_164)))
  loc_15E6ED7:       var_1C0 = (var_198 + Space(1))
  loc_15E6EED:       var_220 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E0, "0.00")), 9, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_CC.Fields), &HA)))) 'String
  loc_15E6EF0:       var_230 = (1 + var_220)
  loc_15E6F04:       var_250 = (var_230 + Space(1))
  loc_15E6F1D:       var_2E0 = (var_250 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_288, "0.00")), 9)))
  loc_15E6F31:       var_300 = (var_2E0 + Space(1))
  loc_15E6F4A:       var_3B4 = (var_300 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_338, "0.00")), &HA)))
  loc_15E6FB2:       Print 1, CStr(var_3B4)
  loc_15E6FC2:       If (var_9E = (&H45 - var_B2)) Then
  loc_15E6FCA:         Print 1, var_DC
  loc_15E6FD6:         var_9E = (var_9E + 1)
  loc_15E6FDE:         Print 1, "Contd."
  loc_15E6FEA:         var_9E = (var_9E + 1)
  loc_15E6FFF:         Print 1, Chr(&HC)
  loc_15E700E:         var_9E = (var_9E + 1)
  loc_15E7017:         var_A0 = (var_A0 + 1)
  loc_15E702D:         Call Proc_162_106_128C764(1, 0, &H3C, var_178, 0)
  loc_15E704C:         Call Proc_162_105_10AA09C(var_9C, "B", &H3C, var_10C, var_178)
  loc_15E7056:         Print 1, var_10C
  loc_15E7069:         var_9E = (var_9E + 1)
  loc_15E7071:         Print 1, var_DC
  loc_15E707D:         var_9E = (var_9E + 1)
  loc_15E7085:         Print 1, var_B8
  loc_15E7090:         Print 1, var_DC
  loc_15E709C:         var_9E = (var_9E + 1)
  loc_15E709F:       End If
  loc_15E70CC:       Proc_6_39_E7C810(var_144, CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), var_178, var_178, var_178)
  loc_15E70D4:       var_164 = (1 + var_144)
  loc_15E70D9:       var_D8 = CSng(var_164)
  loc_15E70EE:       var_BA = (var_BA + 1)
  loc_15E70F4:       var_CC.MoveNext
  loc_15E70F9:       GoTo loc_15E6D63
  loc_15E70FC:     End If
  loc_15E7112:     var_144 = (Space(&H2D) + CVar(var_E0))
  loc_15E7118:     Print 1, var_144
  loc_15E712B:     var_9E = (var_9E + 1)
  loc_15E7131:     var_D0.MoveFirst
  loc_15E7136:     ' Referenced from: 15E75AB
  loc_15E7145:     If Not(var_D0.EOF) Then
  loc_15E7172:       var_3C4 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_15E7190:       If (var_3C4 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_15E720F:         Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), CVar(var_D0.Fields.Item("Amount")), var_178)
  loc_15E7246:         var_2BC = Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00")), &HA, 1, 1)
  loc_15E7252:         var_174 = (Space(&H1E) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HE, var_178, var_BA, var_D8)))
  loc_15E7259:         var_198 = (var_CC.Fields.Item("ItemName").Value + Space(1))
  loc_15E7263:         var_208 = (var_198 + CVar(var_2BC))
  loc_15E7269:         Print 1, Format(Format(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00"), "0.00")
  loc_15E72A4:         var_9E = (var_9E + 1)
  loc_15E72AA:       Else
  loc_15E72BD:         If (var_3C4 = CVar(MemVar_1F92078 & "NET")) Then
  loc_15E72D6:           var_144 = (Space(&H2D) + CVar(var_E0))
  loc_15E72DC:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_15E72EF:           var_9E = (var_9E + 1)
  loc_15E7318:           Proc_6_39_E7C810(var_D0.Fields.Item("DispName").Value, CVar(var_D0.Fields.Item("Amount")), var_178, var_178)
  loc_15E7332:           If (var_D0.Fields.Item("DispName").Value > 0) Then
  loc_15E7364:             var_144 = var_D0.Fields.Item("DispName").Value
  loc_15E73B1:             Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), CVar(var_D0.Fields.Item("Amount")))
  loc_15E73E8:             var_2BC = Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00")), &HA, 1)
  loc_15E73F4:             var_174 = (Space(&H1E) + CVar(Proc_6_45_EAD428(CStr(var_144), &HE, var_178)))
  loc_15E73FB:             var_198 = (var_CC.Fields.Item("ItemName").Value + Space(1))
  loc_15E7405:             var_208 = (var_198 + CVar(var_2BC))
  loc_15E740B:             Print 1, Format(Format(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00"), "0.00")
  loc_15E7446:             var_9E = (var_9E + 1)
  loc_15E7449:           End If
  loc_15E744C:         Else
  loc_15E7472:           Proc_6_39_E7C810(var_144, CVar(var_D0.Fields.Item("Amount")), var_178)
  loc_15E748C:           If (var_144 > 0) Then
  loc_15E750B:             Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), CVar(var_D0.Fields.Item("Amount")))
  loc_15E7542:             var_2BC = Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00")), &HA, 1)
  loc_15E754E:             var_174 = (Space(&H1E) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HE, 1)))
  loc_15E7555:             var_198 = (var_CC.Fields.Item("ItemName").Value + Space(1))
  loc_15E755F:             var_208 = (var_198 + CVar(var_2BC))
  loc_15E7565:             Print 1, Format(Format(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00"), "0.00")
  loc_15E75A0:             var_9E = (var_9E + 1)
  loc_15E75A3:           End If
  loc_15E75A3:         End If
  loc_15E75A3:       End If
  loc_15E75A6:       var_D0.MoveNext
  loc_15E75AB:       GoTo loc_15E7136
  loc_15E75AE:     End If
  loc_15E75B3:     Print 1, var_DC
  loc_15E75BF:     var_9E = (var_9E + 1)
  loc_15E75D1:     var_120 = var_C0.Fields
  loc_15E75E1:     var_11C = CVar(var_120.Item("U_Name")) 'Address
  loc_15E7610:     Print 1, "User Name     : " & Proc_6_45_EAD428(Proc_6_38_E68A98(var_11C, var_178, var_178), &HA, 1)
  loc_15E762F:     var_9E = (var_9E + 1)
  loc_15E7637:     Print 1, vbNullString
  loc_15E7643:     var_9E = (var_9E + 1)
  loc_15E766D:     unk_58616C.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_15E7678:     Set var_F0 = var_120
  loc_15E769C:     If (var_F0.RecordCount > 0) Then
  loc_15E76DF:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_15E76F1:         var_120 = var_F0.Fields
  loc_15E7701:         var_11C = CVar(var_120.Item("Slogan1")) 'Address
  loc_15E7712:         Print 1, Trim(var_11C)
  loc_15E7728:         var_9E = (var_9E + 1)
  loc_15E772B:       End If
  loc_15E772B:     End If
  loc_15E7752:     unk_58616C.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_15E775D:     Set var_F0 = var_120
  loc_15E7781:     If (var_F0.RecordCount > 0) Then
  loc_15E77C4:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_15E77F7:         Print 1, Trim(CVar(var_F0.Fields.Item("Slogan2")))
  loc_15E780D:         var_9E = (var_9E + 1)
  loc_15E7810:       End If
  loc_15E7810:     End If
  loc_15E7815:     Set var_F0 = Nothing
  loc_15E782D:     var_174 = Chr(&H12)
  loc_15E783A:     var_144 = (Chr(&HF) + "# ")
  loc_15E7844:     var_164 = Trim(CVar(var_F0.Fields.Item("Slogan2"))) & CVar(MemVar_1F9221C) 
  loc_15E7850:     var_188 = (" # " + var_174)
  loc_15E785A:     Print 1, var_164 & Space(1)
  loc_15E7875:     var_9E = (var_9E + 1)
  loc_15E787B:     var_C0.MoveNext
  loc_15E7885:     Print 1, vbNullString
  loc_15E7891:     var_9E = (var_9E + 1)
  loc_15E7899:     Print 1, vbNullString
  loc_15E78A5:     var_9E = (var_9E + 1)
  loc_15E78A8:     GoTo loc_15E69B5
  loc_15E78AB:   End If
  loc_15E78AD:   Close 1
  loc_15E78B6:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15E78CF:   var_120 = Me.Fields
  loc_15E78EC:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & var_120.Item("Printer").Value 
  loc_15E78F2:   Print 1, var_144
  loc_15E7908:   Close 1
  loc_15E7912:   If (MemVar_1F923B8 = "Y") Then
  loc_15E792E:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15E7938:   Else
  loc_15E7951:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15E7958:   End If
  loc_15E795D:   Set var_C0 = Nothing
  loc_15E7965:   Set var_CC = Nothing
  loc_15E796D:   Set var_D0 = Nothing
  loc_15E7975:   Set var_EC = Nothing
  loc_15E797D:   Set var_C4 = Nothing
  loc_15E7985:   Set var_C8 = Nothing
  loc_15E798B: Else
  loc_15E79A4:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, var_164, var_174)
  loc_15E79B4: End If
  loc_15E79B4: Exit Sub
  loc_15E79B5: ' Referenced from: 15E66F4
  loc_15E79B5: Proc_6_60_E62BC4(var_178, var_178, var_178, var_178, var_120, var_178)
  loc_15E79BA: Exit Sub
End Sub

Public Sub Proc_162_85_1804B48
  'Data Table: 586140
  Dim Me As Recordset15
  Dim var_10C As String
  Dim unk_58616C As Connection15
  Dim var_134 As Variant
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C0 As Recordset15
  Dim var_180 As String
  Dim var_C4 As Recordset15
  Dim var_BA As Integer
  Dim var_17C As Fields15
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_C8 As Recordset15
  Dim var_208 As Variant
  Dim var_1E8 As Fields15
  Dim var_280 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim var_1F8 As Variant
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_25C As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_23C As Variant
  Dim var_2CC As Variant
  Dim var_2F0 As Variant
  Dim var_CC As Recordset15
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_440 As Variant
  Dim var_11C As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  loc_1802974: On Error Goto loc_1804B40
  loc_1802983: Me.Filter = "ModType='POS'"
  loc_180299F: If (Me.RecordCount > 0) Then
  loc_18029A5:   MemVar_1F923C0 = "N"
  loc_18029AC:   MemVar_1F923C4 = "N"
  loc_18029B3:   MemVar_1F923C8 = "K"
  loc_18029DE:   unk_58616C.Execute "Select * from Depart Where Code='" & global_60 & "'", var_11C, -1
  loc_18029E9:   Set var_EC = var_120
  loc_1802A2B:   var_144 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_1802A39:   var_8C = CStr(var_144 & "'")
  loc_1802A53:   var_144 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_1802A91:   var_90 = CStr(var_144 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_1802ADD:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Me.Fields.Item("SearchCode").Value 
  loc_1802AEB:   var_94 = CStr(var_164 & "' order by sno")
  loc_1802B07:   var_144 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And I.RestCode=S.ItemRestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1802B1F:   var_120 = Me.Fields
  loc_1802B27:   var_124 = var_120.Item("SearchCode")
  loc_1802B2F:   var_11C = var_124.Value
  loc_1802B45:   var_98 = CStr(var_144 & var_11C & "' ORDER BY I.Kitchen")
  loc_1802B62:   If (var_8C = vbNullString) Then
  loc_1802B65:     Exit Sub
  loc_1802B66:   End If
  loc_1802B6E:   If (var_90 = vbNullString) Then
  loc_1802B71:     Exit Sub
  loc_1802B72:   End If
  loc_1802B7A:   If (var_94 = vbNullString) Then
  loc_1802B7D:     Exit Sub
  loc_1802B7E:   End If
  loc_1802B94:   unk_58616C.Execute var_8C, var_11C, -1
  loc_1802B9F:   Set var_C0 = var_120
  loc_1802BBE:   unk_58616C.Execute var_90, var_11C, -1
  loc_1802BC9:   Set var_CC = var_120
  loc_1802BE8:   unk_58616C.Execute var_94, var_11C, -1
  loc_1802BF3:   Set var_D0 = var_120
  loc_1802C12:   unk_58616C.Execute var_98, var_11C, -1
  loc_1802C1D:   Set var_C4 = var_120
  loc_1802C28:   Close 1
  loc_1802C31:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1802C35:   ' Referenced from: 1804A33
  loc_1802C44:   If Not(var_C0.EOF) Then
  loc_1802C4F:     var_11C = Space(&H41)
  loc_1802C75:     var_DC = Replace(CStr(var_11C), " ", "-", 1, -1, 0)
  loc_1802C81:     var_134 = 0
  loc_1802CB1:     unk_58616C.Execute "SELECT TOKENPrint FROM Depart where Code='" & global_60 & "'", var_11C, -1
  loc_1802CC1:     var_134 = var_124.Item(var_124)
  loc_1802CD2:     var_180 = Proc_6_38_E68A98(CVar(var_17C), var_17C, var_120.Fields, var_120.Fields)
  loc_1802CF1:     If (var_180 = "Yes") Then
  loc_1802D08:       If (var_C4.RecordCount > 0) Then
  loc_1802D0B:         ' Referenced from: 18032D0
  loc_1802D1A:         If Not(var_C4.EOF) Then
  loc_1802D1F:           var_BA = 1
  loc_1802D36:           var_144 = CVar("Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_1802D6F:           var_174 = var_144 & Me.Fields.Item("SearchCode").Value & "' AND I.Kitchen='" 
  loc_1802DB4:           unk_58616C.Execute CStr(var_174 & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)"), var_1E4, -1
  loc_1802DBF:           Set var_C8 = var_1E8
  loc_1802DF9:           If (var_C8.RecordCount > 0) Then
  loc_1802E3C:             Call Proc_162_105_10AA09C(CStr(var_C4.Fields.Item("Department").Value), "D", &H3C, var_180, var_1E8)
  loc_1802E46:             Print 1, var_180
  loc_1802E7B:             var_120 = var_C0.Fields
  loc_1802E92:             Proc_6_39_E7C810(var_174, CVar(var_120.Item("VNo")), var_BA)
  loc_1802F4C:             var_144 = (Chr(&HF) + "Bill No.   : ")
  loc_1802F56:             var_1A4 = (var_144 + CVar(Proc_6_45_EAD428(CStr(var_174), &HA, var_120)))
  loc_1802F5D:             var_1E4 = (var_174 & var_C4.Fields.Item("Kitchen").Value + Space(4))
  loc_1802F66:             var_1F8 = (var_1E4 + "Dt : ")
  loc_1802F70:             var_22C = (var_1F8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_120), &HF)))
  loc_1802F77:             var_24C = (var_22C + Space(4))
  loc_1802F80:             var_25C = (var_24C + "Time : ")
  loc_1802F8A:             var_2A4 = (var_25C + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_1802F90:             Print 1, var_2A4
  loc_1802FDF:             var_9E = (var_9E + 1)
  loc_1803054:             var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_180305B:             var_194 = (CVar(var_120.Item("VNo")) + Space(1))
  loc_1803065:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Space(1)), &HA, var_120)) + CVar(Proc_6_45_EAD428("PARTICULARS", &H28)))
  loc_180306C:             var_1F8 = (Space(4) + Space(1))
  loc_1803076:             var_21C = (var_1F8 + CVar(Proc_6_52_EAD4F4("Qty", &H12)))
  loc_180307C:             Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_120), &HF))
  loc_18030C0:             var_144 = (Chr(&HF) + CVar(var_DC))
  loc_18030C6:             Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_18030D3:             ' Referenced from: 180324A
  loc_18030E2:             If Not(var_C8.EOF) Then
  loc_1803184:               Proc_6_39_E7C810(var_22C, CVar(var_C8.Fields.Item("qty")))
  loc_18031C7:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3)))
  loc_18031CE:               var_194 = (CVar(var_C8.Fields.Item("VNo")) + Space(1))
  loc_18031D8:               var_1E4 = (CVar(Proc_6_45_EAD428(CStr(Space(1)), &HA, var_C8.Fields)) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H28)))
  loc_18031DF:               var_208 = (Space(1) + Space(1))
  loc_18031E9:               var_280 = (CVar(Proc_6_52_EAD4F4("Qty", &H12)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_22C, "0.00")), &H12, 1)))
  loc_18031EF:               Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1803233:               var_C8.MoveNext
  loc_180323E:               var_9E = (var_9E + 1)
  loc_1803247:               var_BA = (var_BA + 1)
  loc_180324A:               GoTo loc_18030D3
  loc_180324D:             End If
  loc_180324D:           End If
  loc_1803250:           var_C4.MoveNext
  loc_180325A:           Print 1, vbNullString
  loc_180329B:           var_10C = Replace(CStr(Space(&H41)), " ", "=", 1, -1, 0)
  loc_18032A7:           var_174 = (Chr(&HF) + CVar("PARTICULARS"))
  loc_18032AD:           Print 1, Space(1)
  loc_18032CA:           Print 1, vbNullString
  loc_18032D0:           GoTo loc_1802D0B
  loc_18032D3:         End If
  loc_18032D3:       End If
  loc_18032D3:     End If
  loc_18032D5:     var_9E = 0
  loc_18032DA:     var_A0 = 1
  loc_18032F4:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_1803305:       var_9C = "** " & "BILL" & " **"
  loc_180330E:     Else
  loc_180332E:       var_9C = "** " & Me.LblRest.Caption & " **"
  loc_180333B:     End If
  loc_1803341:     If (var_9E = 0) Then
  loc_1803389:       var_10C = Proc_6_38_E68A98("UPTT No: " & var_EC.Fields.Item("LstNo").Value, var_A0, var_9E, var_BA)
  loc_18033B6:       var_194 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_10C, &H1E, var_9E)))
  loc_18033BD:       var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(var_10C, &H1E, var_9E))), &HA, var_EC.Fields)) + Chr(&H12))
  loc_18033C3:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H28))
  loc_18033F0:       var_9E = (var_9E + 1)
  loc_1803407:       Call Proc_162_105_10AA09C(var_9C, "D", &H3C, var_10C)
  loc_1803411:       Print 1, var_10C
  loc_1803423:       Print 1, vbNullString
  loc_180342F:       var_9E = (var_9E + 1)
  loc_1803460:       var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_1803497:       var_E0 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_18034AE:       Call Proc_162_106_128C764(var_A0, var_9E, &H3C, var_20A, var_9E)
  loc_18034FD:       var_164 = (Chr(&H11) + Space(&H14))
  loc_1803506:       var_174 = ("UPTT No: " & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_1803510:       var_1A4 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_20A, var_20A), &H1E, var_20A)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_20A, var_20A), &H1E, 1)))
  loc_1803516:       Print 1, Chr(&H12)
  loc_180353A:       var_9E = (var_9E + 1)
  loc_1803542:       Print 1, vbNullString
  loc_180354E:       var_9E = (var_9E + 1)
  loc_1803556:       Print 1, vbNullString
  loc_1803562:       var_9E = (var_9E + 1)
  loc_1803598:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_20A, var_20A), &H1E, var_20A)), CVar(var_C0.Fields.Item("VNo")), var_20A, var_20A)
  loc_18035AF:       var_2A8 = Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_20A, var_20A), &H1E, var_20A))), &HA, var_20A)
  loc_1803652:       var_144 = (Chr(&HF) + "Bill No.   : ")
  loc_180365C:       var_1A4 = (Space(&H14) + CVar(var_2A8))
  loc_1803663:       var_1E4 = (Chr(&H12) + Space(4))
  loc_180366C:       var_1F8 = (Space(1) + "Dt : ")
  loc_1803676:       var_22C = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_20A), &HF)))
  loc_180367D:       var_24C = (var_22C + Space(4))
  loc_1803686:       var_25C = (Format(var_22C, "0.00") + "Time : ")
  loc_1803690:       var_2A4 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_22C, "0.00")), &H12, 1)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_1803696:       Print 1, var_2A4
  loc_18036E5:       var_9E = (var_9E + 1)
  loc_18036F3:       If (global_212 = "Outlet") Then
  loc_180374A:         var_144 = (Chr(&HF) + "Table No.  : ")
  loc_1803754:         var_194 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_20A), 5)))
  loc_180375A:         Print 1, CVar(var_2A8)
  loc_180377F:         var_9E = (var_9E + 1)
  loc_1803782:       End If
  loc_180378D:       If (global_212 = "Room Service") Then
  loc_18037E4:         var_144 = (Chr(&HF) + "Room No.   : ")
  loc_18037EE:         var_194 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_20A), 5)))
  loc_18037F4:         Print 1, CVar(var_2A8)
  loc_1803819:         var_9E = (var_9E + 1)
  loc_180381C:       End If
  loc_1803827:       If (global_212 = "Hall") Then
  loc_180387E:         var_144 = (Chr(&HF) + "Hall  No.  : ")
  loc_1803888:         var_194 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), var_20A), 5)))
  loc_180388E:         Print 1, CVar(var_2A8)
  loc_18038B3:         var_9E = (var_9E + 1)
  loc_18038B6:       End If
  loc_1803936:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_180398D:         var_144 = (Chr(&HF) + "KOT No.    : ")
  loc_1803997:         var_194 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_20A), &H34)))
  loc_180399D:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_18039C2:         var_9E = (var_9E + 1)
  loc_18039C5:       End If
  loc_18039DB:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_18039E1:       Print 1, Space(&H14)
  loc_18039F4:       var_9E = (var_9E + 1)
  loc_18039F7:     End If
  loc_1803A1D:     var_164 = (CVar(Proc_6_45_EAD428("SNo", 3, var_20A)) + Space(1))
  loc_1803A29:     var_10C = "ITEM NAME"
  loc_1803A37:     var_194 = (var_20A + CVar(Proc_6_45_EAD428(var_10C, &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1803A4B:     var_1C4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_1803A65:     var_1F8 = (Space(4) + CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)
  loc_1803A71:     var_208 = Space(1)
  loc_1803A79:     var_21C = (Space(1) + var_208)
  loc_1803A93:     var_23C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_20A), &HF)) + CVar(Proc_6_52_EAD4F4("Rate", &HA)))
  loc_1803AA7:     var_25C = (Space(4) + Space(1))
  loc_1803AC1:     var_294 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Rate", &HA)), "0.00")), &H12, 1)) + CVar(Proc_6_52_EAD4F4("Qty", &HA)))
  loc_1803ACD:     var_2A4 = Space(1)
  loc_1803AD5:     var_2CC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 8)) + var_2A4)
  loc_1803AEF:     var_2F0 = (var_2CC + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_1803AF4:     var_B8 = CStr(var_2F0)
  loc_1803B49:     var_144 = (Chr(&HF) + CVar(var_B8))
  loc_1803B4F:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_20A))
  loc_1803B72:     var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1803B78:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_20A))
  loc_1803B8B:     var_9E = (var_9E + 1)
  loc_1803B90:     var_BA = 1
  loc_1803B96:     var_CC.MoveFirst
  loc_1803B9B:     ' Referenced from: 180404A
  loc_1803BAA:     If Not(var_CC.EOF) Then
  loc_1803BFA:       Proc_6_39_E7C810(var_208, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_1803C45:       Proc_6_39_E7C810(var_2A4, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_1803C90:       Proc_6_39_E7C810(var_348, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1803CDB:       Proc_6_39_E7C810(var_3F0, CVar(var_CC.Fields.Item("Amt")), 1, 1)
  loc_1803D26:       var_164 = (CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1)) + Space(1))
  loc_1803D3F:       var_1A4 = (1 + CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1803D53:       var_1E4 = (Space(1) + Space(1))
  loc_1803D6C:       var_24C = (var_20A + CVar(Proc_6_52_EAD4F4(CStr(Format(var_208, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)) 'String)
  loc_1803D80:       var_280 = (Space(1) + Space(1))
  loc_1803D99:       var_300 = (CVar(Proc_6_52_EAD4F4("Qty", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2A4, "0.00")), &HA)))
  loc_1803DAD:       var_320 = (var_300 + Space(1))
  loc_1803DC6:       var_398 = (var_320 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_348, "0.00")), &HA)))
  loc_1803DDA:       var_3B8 = (var_398 + Space(1))
  loc_1803DF3:       var_440 = (var_3B8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3F0, "0.00")), &HA)))
  loc_1803E7E:       var_144 = (Chr(&HF) + CVar(CStr(var_440)))
  loc_1803E84:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1803E9B:       If (var_20A = (&H45 - var_B2)) Then
  loc_1803EB4:         var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1803EBA:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1803ECD:         var_9E = (var_9E + 1)
  loc_1803ED5:         Print 1, "Contd."
  loc_1803EE1:         var_9E = (var_9E + 1)
  loc_1803EF6:         Print 1, Chr(&HC)
  loc_1803F05:         var_9E = (var_9E + 1)
  loc_1803F0E:         var_A0 = (var_A0 + 1)
  loc_1803F24:         Call Proc_162_106_128C764(var_A0, 0, &H3C, var_20A, 0)
  loc_1803F43:         Call Proc_162_105_10AA09C(var_9C, "B", &H3C, var_10C, var_20A)
  loc_1803F4D:         Print 1, var_10C
  loc_1803F60:         var_9E = (var_9E + 1)
  loc_1803F79:         var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1803F7F:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1803F92:         var_9E = (var_9E + 1)
  loc_1803FAB:         var_144 = (Chr(&HF) + CVar(var_B8))
  loc_1803FB1:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1803FD4:         var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1803FDA:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1))
  loc_1803FED:         var_9E = (var_9E + 1)
  loc_1803FF0:       End If
  loc_180401D:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), var_20A, var_20A, var_20A)
  loc_1804025:       var_164 = (var_A0 + CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1, 1)))
  loc_180402A:       var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_180403F:       var_BA = (var_BA + 1)
  loc_1804045:       var_CC.MoveNext
  loc_180404A:       GoTo loc_1803B9B
  loc_180404D:     End If
  loc_180406D:     var_164 = (Chr(&HF) + Space(&H35))
  loc_1804077:     var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_180407D:     Print 1, var_CC.Fields.Item("ItemName").Value
  loc_1804094:     var_9E = (var_9E + 1)
  loc_180409A:     var_D0.MoveFirst
  loc_180409F:     ' Referenced from: 18045BC
  loc_18040AE:     If Not(var_D0.EOF) Then
  loc_18040DB:       var_450 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_18040F9:       If (var_450 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1804185:         Proc_6_39_E7C810(var_208, CVar(var_D0.Fields.Item("Amount")), var_20A)
  loc_18041D2:         var_164 = (Chr(&HF) + Space(&H23))
  loc_18041DC:         var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, var_20A, var_BA, var_D8)))
  loc_18041E3:         var_1E4 = (Space(1) + Space(4))
  loc_18041ED:         var_24C = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_208, "0.00")), &HA, 1, 1)))
  loc_18041F4:         var_280 = (Space(1) + Chr(&H12))
  loc_18041FA:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_180423D:         var_9E = (var_9E + 1)
  loc_1804243:       Else
  loc_1804256:         If (var_450 = CVar(MemVar_1F92078 & "NET")) Then
  loc_180426E:           var_144 = Space(&H35)
  loc_1804279:           var_164 = (Chr(&HF) + var_144)
  loc_1804283:           var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_1804289:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_18042A0:           var_9E = (var_9E + 1)
  loc_18042C9:           Proc_6_39_E7C810(var_144, CVar(var_D0.Fields.Item("Amount")), var_20A, var_20A)
  loc_18042E3:           If (var_144 > 0) Then
  loc_18042FB:             var_144 = Space(&H23)
  loc_180436F:             Proc_6_39_E7C810(var_208, CVar(var_D0.Fields.Item("Amount")))
  loc_18043BC:             var_164 = (Chr(&HF) + var_144)
  loc_18043C6:             var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, var_20A)))
  loc_18043CD:             var_1E4 = (Space(1) + Space(4))
  loc_18043D7:             var_24C = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_208, "0.00")), &HA, 1)))
  loc_18043DE:             var_280 = (Space(1) + Chr(&H12))
  loc_18043E4:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_1804427:             var_9E = (var_9E + 1)
  loc_180442A:           End If
  loc_180442D:         Else
  loc_1804453:           Proc_6_39_E7C810(var_144, CVar(var_D0.Fields.Item("Amount")), var_20A)
  loc_180446D:           If (var_144 > 0) Then
  loc_18044F9:             Proc_6_39_E7C810(var_208, CVar(var_D0.Fields.Item("Amount")))
  loc_1804546:             var_164 = (Chr(&HF) + Space(&H23))
  loc_1804550:             var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1)))
  loc_1804557:             var_1E4 = (Space(1) + Space(4))
  loc_1804561:             var_24C = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_208, "0.00")), &HA, 1)))
  loc_1804568:             var_280 = (Space(1) + Chr(&H12))
  loc_180456E:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_18045B1:             var_9E = (var_9E + 1)
  loc_18045B4:           End If
  loc_18045B4:         End If
  loc_18045B4:       End If
  loc_18045B7:       var_D0.MoveNext
  loc_18045BC:       GoTo loc_180409F
  loc_18045BF:     End If
  loc_18045D5:     var_144 = (Chr(&HF) + CVar(var_DC))
  loc_18045DB:     Print 1, Space(&H23)
  loc_18045EE:     var_9E = (var_9E + 1)
  loc_180462D:     If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1804684:       var_144 = (Chr(&HF) + "Steward Name  : ")
  loc_180468E:       var_194 = (Space(&H23) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), var_20A, var_20A), &H14, 1)))
  loc_1804694:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_18046B9:       var_9E = (var_9E + 1)
  loc_18046BC:     End If
  loc_18046C4:     var_11C = Chr(&HF)
  loc_18046D8:     var_120 = var_C0.Fields
  loc_1804710:     var_144 = (var_11C + "User Name     : ")
  loc_180471A:     var_194 = (Space(&H23) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), var_20A), &HA)))
  loc_1804720:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_1804745:     var_9E = (var_9E + 1)
  loc_180474D:     Print 1, vbNullString
  loc_1804759:     var_9E = (var_9E + 1)
  loc_1804783:     unk_58616C.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_180478E:     Set var_F0 = var_120
  loc_18047B2:     If (var_F0.RecordCount > 0) Then
  loc_18047F5:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1804800:         var_11C = Chr(&HF)
  loc_1804814:         var_120 = var_F0.Fields
  loc_1804836:         var_174 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_180483C:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), var_20A), &HA))
  loc_1804856:         var_9E = (var_9E + 1)
  loc_1804859:       End If
  loc_1804859:     End If
  loc_1804880:     unk_58616C.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_180488B:     Set var_F0 = var_120
  loc_18048AF:     If (var_F0.RecordCount > 0) Then
  loc_18048F2:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1804933:         var_174 = (Chr(&HF) + Trim(CVar(var_F0.Fields.Item("Slogan2"))))
  loc_1804939:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_F0.Fields.Item("U_Name")), var_20A), &HA))
  loc_1804953:         var_9E = (var_9E + 1)
  loc_1804956:       End If
  loc_1804956:     End If
  loc_180495B:     Set var_F0 = Nothing
  loc_180497E:     var_164 = (Chr(&HF) + Space(&H32))
  loc_1804987:     var_174 = (Trim(CVar(var_F0.Fields.Item("Slogan2"))) + "Guest Signature")
  loc_180498D:     Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_F0.Fields.Item("U_Name")), var_20A), &HA))
  loc_18049A4:     var_9E = (var_9E + 1)
  loc_18049AC:     Print 1, vbNullString
  loc_18049B8:     var_9E = (var_9E + 1)
  loc_18049D0:     var_144 = (Chr(&HF) + "# ")
  loc_18049DA:     var_164 = Space(&H32) & CVar(MemVar_1F9221C) 
  loc_18049E3:     var_174 = var_164 & " # " 
  loc_18049E9:     Print 1, var_174
  loc_1804A00:     var_9E = (var_9E + 1)
  loc_1804A06:     var_C0.MoveNext
  loc_1804A10:     Print 1, vbNullString
  loc_1804A1C:     var_9E = (var_9E + 1)
  loc_1804A24:     Print 1, vbNullString
  loc_1804A30:     var_9E = (var_9E + 1)
  loc_1804A33:     GoTo loc_1802C35
  loc_1804A36:   End If
  loc_1804A38:   Close 1
  loc_1804A41:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1804A77:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_1804A7D:   Print 1, var_144
  loc_1804A93:   Close 1
  loc_1804A9D:   If (MemVar_1F923B8 = "Y") Then
  loc_1804AB9:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1804AC3:   Else
  loc_1804ADC:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1804AE3:   End If
  loc_1804AE8:   Set var_C0 = Nothing
  loc_1804AF0:   Set var_CC = Nothing
  loc_1804AF8:   Set var_D0 = Nothing
  loc_1804B00:   Set var_EC = Nothing
  loc_1804B08:   Set var_C4 = Nothing
  loc_1804B10:   Set var_C8 = Nothing
  loc_1804B16: Else
  loc_1804B2F:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, var_164, var_174)
  loc_1804B3F: End If
  loc_1804B3F: Exit Sub
  loc_1804B40: ' Referenced from: 1802974
  loc_1804B40: Proc_6_60_E62BC4(var_20A, var_20A, var_20A, var_20A, var_20A, var_20A)
  loc_1804B45: Exit Sub
End Sub

Public Sub Proc_162_86_17298A0
  'Data Table: 586140
  Dim Me As Recordset15
  Dim unk_58616C As Connection15
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_E4 As Recordset15
  Dim var_168 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_180 As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_E0 As Recordset15
  Dim var_110 As Variant
  Dim var_250 As Variant
  Dim var_2DC As Variant
  Dim var_378 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_350 As Variant
  Dim var_38C As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_458 As Variant
  Dim var_230 As Variant
  Dim var_284 As Variant
  Dim var_2B4 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_1727D28: On Error Goto loc_1729899
  loc_1727D37: Me.Filter = "ModType='POS'"
  loc_1727D53: If (Me.RecordCount > 0) Then
  loc_1727D59:   MemVar_1F923C0 = "N"
  loc_1727D60:   MemVar_1F923C4 = "N"
  loc_1727D67:   MemVar_1F923C8 = "K"
  loc_1727D92:   unk_58616C.Execute "Select * from Depart where code='" & global_60 & "'", var_110, -1
  loc_1727D9D:   Set var_E4 = var_114
  loc_1727DDF:   var_138 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_1727DED:   var_8C = CStr(var_138 & "'")
  loc_1727E14:   If (var_E4.RecordCount > 0) Then
  loc_1727E53:     If (var_E4.Fields.Item("KotYN").Value = "Y") Then
  loc_1727E5D:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_1727ED0:       var_1B0 = var_138 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_1727ED5:       var_90 = CStr(var_1B0)
  loc_1727EF7:     Else
  loc_1727EFE:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_1727F3C:       var_90 = CStr(var_138 & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) ")
  loc_1727F51:     End If
  loc_1727F51:     GoTo loc_1727F54
  loc_1727F54:     ' Referenced from: 1727F51
  loc_1727F54:   End If
  loc_1727F73:   var_114 = Me.Fields
  loc_1727F83:   var_110 = var_114.Item("SearchCode").Value
  loc_1727F94:   var_168 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_110 & "' order by sno " 
  loc_1727F99:   var_94 = CStr(var_168)
  loc_1727FB6:   If (var_8C = vbNullString) Then
  loc_1727FB9:     Exit Sub
  loc_1727FBA:   End If
  loc_1727FC2:   If (var_90 = vbNullString) Then
  loc_1727FC5:     Exit Sub
  loc_1727FC6:   End If
  loc_1727FCE:   If (var_94 = vbNullString) Then
  loc_1727FD1:     Exit Sub
  loc_1727FD2:   End If
  loc_1727FE8:   unk_58616C.Execute var_8C, var_110, -1
  loc_1727FF3:   Set var_BC = var_114
  loc_1728012:   unk_58616C.Execute var_90, var_110, -1
  loc_172801D:   Set var_C0 = var_114
  loc_172803C:   unk_58616C.Execute var_94, var_110, -1
  loc_1728047:   Set var_C4 = var_114
  loc_1728052:   var_AE = &HA
  loc_1728057:   Close 1
  loc_1728060:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1728088:   unk_58616C.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_110, -1
  loc_1728093:   Set var_E0 = var_114
  loc_17280A3:   ' Referenced from: 1729716
  loc_17280B2:   If Not(var_BC.EOF) Then
  loc_17280B7:     var_9A = 0
  loc_17280C5:     If (var_9A = 0) Then
  loc_1728106:       var_158 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_1728109:       var_168 = (Chr(&HF) + CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF))
  loc_172811D:       var_190 = (var_168 + Chr(&H12))
  loc_1728122:       var_D0 = CStr(Space(&H88) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value)
  loc_1728165:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_1728175:       Set var_114 = Me.LblRest
  loc_172818B:       var_1B8 = "A"
  loc_1728198:       Call Proc_162_105_10AA09C(var_114.Caption, var_1B8, &H4E, var_1BC, 1, var_9A)
  loc_17281A2:       Print 1, var_1BC
  loc_17281DF:       var_190 = Trim(MemVar_1F9213C)
  loc_17281FD:       var_138 = (Trim(MemVar_1F92134) + ", ")
  loc_1728204:       var_168 = (Space(&H88) + Trim(MemVar_1F92138))
  loc_172820D:       var_180 = (var_168 + " ")
  loc_1728214:       var_1B0 = (Chr(&H12) + var_190)
  loc_172821D:       var_1EC = (var_1B0 + " ")
  loc_1728227:       var_20C = (var_1EC + CVar(MemVar_1F9215C))
  loc_1728230:       Call Proc_162_105_10AA09C(CStr(var_20C), "B", &H4E, var_1B8, var_114)
  loc_172823A:       Print 1, var_1B8
  loc_1728289:       Call Proc_162_105_10AA09C("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "E", 137, var_210, var_AE)
  loc_1728293:       Print 1, var_210
  loc_17282BA:       If (var_E0.RecordCount > 0) Then
  loc_17282CC:         var_114 = var_E0.Fields
  loc_1728307:         If (Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), var_114, var_114))) = vbNullString) Then
  loc_172830F:           Print 1, vbNullString
  loc_1728318:         Else
  loc_1728327:           var_114 = var_E0.Fields
  loc_172835C:           Call Proc_162_105_10AA09C(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), var_114), "E", 137)
  loc_1728366:           Print 1, var_1B8
  loc_172837D:         End If
  loc_1728380:       Else
  loc_1728385:         Print 1, vbNullString
  loc_172838B:       End If
  loc_172839D:       Print 1, Chr(&H12)
  loc_17283E6:       Proc_6_39_E7C810(var_190, CVar(var_BC.Fields.Item("VNo")))
  loc_1728408:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_172840F:       var_168 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_1728419:       var_1EC = (var_168 + CVar(Proc_6_45_EAD428(CStr(var_190), &HA)))
  loc_172841F:       Print 1, var_1EC
  loc_17285E6:       Proc_6_39_E7C810(var_434, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1728609:       var_138 = (Chr(&HF) + "Date : ")
  loc_1728610:       var_168 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_172861A:       var_1B0 = (var_168 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)))
  loc_1728621:       var_20C = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12))), &HA)) + Chr(&HF))
  loc_172862A:       var_220 = (var_20C + "Time : ")
  loc_1728631:       var_240 = (var_220 + Chr(&H12))
  loc_172863B:       var_274 = (var_240 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_1728642:       var_294 = (var_274 + Chr(&HF))
  loc_172864B:       var_2A4 = (var_294 + "Steward :")
  loc_1728652:       var_2C4 = (var_2A4 + Chr(&H12))
  loc_172865C:       var_300 = (var_2C4 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_1728663:       var_320 = (var_300 + Chr(&HF))
  loc_172866C:       var_330 = (var_320 + "Table : ")
  loc_1728673:       var_350 = (var_330 + Chr(&H12))
  loc_172867D:       var_39C = (var_350 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_1728684:       var_3BC = (var_39C + Chr(&HF))
  loc_172868D:       var_3DC = (var_3BC + "Covers: ")
  loc_1728694:       var_3FC = (var_3DC + Chr(&H12))
  loc_172869E:       var_458 = (var_3FC + CVar(Proc_6_45_EAD428(CStr(var_434), 7)))
  loc_17286A4:       Print 1, var_458
  loc_1728730:       Print 1, var_D0
  loc_17287E7:       var_3AC = Space(&HA)
  loc_17287FF:       var_158 = (Chr(&HF) + Space(3))
  loc_1728808:       var_168 = (Chr(&H12) + "S.No")
  loc_172880F:       var_190 = (var_168 + Space(3))
  loc_1728816:       var_1EC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(4))
  loc_172881F:       var_20C = (Chr(&HF) + "KOT#")
  loc_1728826:       var_230 = (var_20C + Space(4))
  loc_172882D:       var_250 = (Chr(&H12) + Space(5))
  loc_1728836:       var_264 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_172883D:       var_284 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_1728844:       var_2A4 = (Chr(&HF) + Space(&H15))
  loc_172884D:       var_2B4 = (var_2A4 + "ITEM NAME")
  loc_1728854:       var_2DC = (Chr(&H12) + Space(&H15))
  loc_172885B:       var_300 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_1728864:       var_310 = (var_300 + "QTY")
  loc_172886B:       var_330 = (Chr(&HF) + Space(5))
  loc_1728872:       var_350 = (var_330 + Space(5))
  loc_172887B:       var_378 = (var_350 + "RATE")
  loc_1728882:       var_39C = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_1728889:       var_3BC = (var_39C + var_3AC)
  loc_1728892:       var_3DC = (var_3BC + "AMOUNT")
  loc_1728899:       var_3FC = (var_3DC + Chr(&H12))
  loc_172889F:       Print 1, var_3FC
  loc_17288F5:       Print 1, var_D0
  loc_17288FD:       var_9A = &HA
  loc_1728900:     End If
  loc_1728902:     var_B6 = 1
  loc_1728908:     var_C0.MoveFirst
  loc_172890D:     ' Referenced from: 1729029
  loc_172891C:     If Not(var_C0.EOF) Then
  loc_1728925:       If (var_9A = 0) Then
  loc_1728956:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_172898D:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_17289C9:         Proc_6_39_E7C810(Chr(&H12), CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_17289EC:         var_180 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA)))
  loc_17289F2:         Print 1, Space(3)
  loc_1728A11:         Print 1
  loc_1728B7A:         Proc_6_39_E7C810(var_300, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1728B9E:         var_168 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_1728BA5:         var_190 = (CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA)) + Space(4))
  loc_1728BAF:         var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_1728BB6:         var_230 = (var_20C + Space(6))
  loc_1728BC0:         var_264 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_1728BC7:         var_284 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_1728BD1:         var_2B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_1728BD8:         var_2DC = (Chr(&H12) + Space(6))
  loc_1728BDF:         var_310 = CVar(Proc_6_45_EAD428(CStr(var_300), 7)) 'String
  loc_1728BE2:         var_320 = (CVar(var_BC.Fields.Item("WaiterName")) + var_310)
  loc_1728BE8:         Print 1, Space(5)
  loc_1728C56:         Print 1, vbNullString
  loc_1728C61:         Print 1, vbNullString
  loc_1728C69:         var_9A = 5
  loc_1728C6C:       End If
  loc_1728CE4:       var_240 = var_C0.Fields.Item("ItemName").Value
  loc_1728D0F:       Proc_6_39_E7C810(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_1728D5A:       Proc_6_39_E7C810(var_310, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_1728DA5:       Proc_6_39_E7C810(var_3AC, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_1728DF0:       var_158 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_1728E05:       var_180 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_1728E08:       var_190 = (1 + var_180)
  loc_1728E1C:       var_1EC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(2))
  loc_1728E31:       var_220 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_1728E34:       var_230 = (1 + var_220)
  loc_1728E4D:       var_264 = (Chr(&H12) + CVar(Proc_6_45_EAD428(CStr(var_240), &H1E)))
  loc_1728E66:       var_2C4 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_1728E7A:       var_2F0 = (Space(6) + Space(1))
  loc_1728E93:       var_350 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_310, "0.00")), 7)))
  loc_1728EA7:       var_38C = (var_350 + Space(1))
  loc_1728EC0:       var_3FC = (Space(5) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3AC, "0.00")), &HB)))
  loc_1728F3E:       Print 1, CStr(var_3FC)
  loc_1728F4A:       var_9A = (var_9A + 1)
  loc_1728F57:       If (var_9A = (&H36 - var_AE)) Then
  loc_1728F60:         var_9C = (var_9C + 1)
  loc_1728F78:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_1728F93:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..."
  loc_1728FAC:         var_9A = (var_9A + 1)
  loc_1728FC1:         Print 1, Chr(&HC)
  loc_1728FCC:         var_9A = 0
  loc_1728FCF:       End If
  loc_1728FFC:       Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_1729004:       var_158 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)))
  loc_1729009:       var_CC = CSng(CVar(CStr(1)))
  loc_172901E:       var_B6 = (var_B6 + 1)
  loc_1729024:       var_C0.MoveNext
  loc_1729029:       GoTo loc_172890D
  loc_172902C:     End If
  loc_1729036:     If (var_9A < (&H36 - var_AE)) Then
  loc_1729039:       ' Referenced from: 172905D
  loc_1729046:       If (var_9A <> ((&H36 - var_AE) + 1)) Then
  loc_172904E:         Print 1, vbNullString
  loc_172905A:         var_9A = (var_9A + 1)
  loc_172905D:         GoTo loc_1729039
  loc_1729060:       End If
  loc_1729060:     End If
  loc_1729063:     var_C4.MoveFirst
  loc_172906D:     Print 1, var_D0
  loc_1729073:     ' Referenced from: 172970B
  loc_1729082:     If Not(var_C4.EOF) Then
  loc_17290AF:       var_49C = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_17290CD:       If (var_49C = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1729171:         Proc_6_39_E7C810(var_240, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_1729185:         var_250 = "0.00"
  loc_17291B4:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6)))
  loc_17291BB:         var_180 = (CVar(CStr(1)) + Chr(&H12))
  loc_17291C5:         var_1EC = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_CC)))
  loc_17291CC:         var_220 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_17291D6:         var_284 = (var_220 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_240, var_250)), &HA, 1)))
  loc_17291DC:         Print 1, Chr(&HF)
  loc_1729220:       Else
  loc_1729233:         If (var_49C = CVar(MemVar_1F92078 & "NET")) Then
  loc_172924C:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_1729252:           Print 1, CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6))
  loc_1729273:           If (var_E0.RecordCount > 0) Then
  loc_17292C0:             If (Trim(CVar(Proc_6_38_E68A98(CVar(var_E0.Fields.Item("Bill_Footer")), 1))) = vbNullString) Then
  loc_172936E:               Proc_6_39_E7C810(var_250, CVar(var_C4.Fields.Item("Amount")))
  loc_17293B1:               var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Space(1)), &H54)))
  loc_17293B8:               var_190 = (Chr(&H12) + Chr(&H12))
  loc_17293C2:               var_20C = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_17293C9:               var_230 = (Space(4) + Space(4))
  loc_17293D3:               var_294 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.00")), &HA, 1)))
  loc_17293D9:               Print 1, "0.00"
  loc_172941F:             Else
  loc_172944B:               var_138 = CVar(var_E0.Fields.Item("Bill_Footer")) 'Address
  loc_17294E7:               Proc_6_39_E7C810(var_250, CVar(var_C4.Fields.Item("Amount")))
  loc_172952A:               var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_138, 1), &H54)))
  loc_1729531:               var_190 = (Chr(&H12) + Chr(&H12))
  loc_1729538:               var_1EC = CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)) 'String
  loc_172953B:               var_20C = (var_C4.Fields.Item("DispName").Value + var_1EC)
  loc_1729542:               var_230 = (Space(4) + Space(4))
  loc_172954C:               var_294 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.00")), &HA, 1)))
  loc_1729552:               Print 1, "0.00"
  loc_1729599:             End If
  loc_172959C:           Else
  loc_17295A1:             Print 1, vbNullString
  loc_17295A7:           End If
  loc_17295AC:           Print 1, var_D0
  loc_17295B5:         Else
  loc_17295DB:           Proc_6_39_E7C810(var_138, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_17295F5:           If (var_138 > 0) Then
  loc_172963E:             var_1B8 = Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)
  loc_1729674:             Proc_6_39_E7C810(var_1EC, CVar(var_C4.Fields.Item("Amount")))
  loc_17296B4:             var_158 = CVar(var_1B8) 'String
  loc_17296B7:             var_168 = (Space(&H31) + var_158)
  loc_17296BE:             var_190 = (Chr(&H12) + Space(4))
  loc_17296C8:             var_240 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1EC, "0.00")), &HA, 1)))
  loc_17296CE:             Print 1, CVar(var_C4.Fields.Item("Amount"))
  loc_1729703:           End If
  loc_1729703:         End If
  loc_1729703:       End If
  loc_1729706:       var_C4.MoveNext
  loc_172970B:       GoTo loc_1729073
  loc_172970E:     End If
  loc_1729711:     var_BC.MoveNext
  loc_1729716:     GoTo loc_17280A3
  loc_1729719:   End If
  loc_1729733:   Call Proc_162_105_10AA09C("* THANKS FOR YOUR VISIT *", "A", &H4E, var_1B8)
  loc_172973D:   Print 1, var_1B8
  loc_172974E:   Print 1
  loc_1729756:   Print 1
  loc_172975E:   Print 1
  loc_1729779:   var_138 = (Space(&H48) + "CASHIER")
  loc_172977F:   Print 1, var_C4.Fields.Item("DispName").Value
  loc_172979E:   Print 1, Chr(&HC)
  loc_17297A9:   Close 1
  loc_17297B2:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_17297E8:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_17297EE:   Print 1, var_138
  loc_1729804:   Close 1
  loc_172980E:   If (MemVar_1F923B8 = "Y") Then
  loc_172982A:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1729834:   Else
  loc_172984D:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1729854:   End If
  loc_1729859:   Set var_BC = Nothing
  loc_1729861:   Set var_C0 = Nothing
  loc_1729869:   Set var_C4 = Nothing
  loc_172986F: Else
  loc_1729888:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, var_158, Chr(&H12))
  loc_1729898: End If
  loc_1729898: Exit Sub
  loc_1729899: ' Referenced from: 1727D28
  loc_1729899: Proc_6_60_E62BC4(1, var_9A)
  loc_172989E: Exit Sub
End Sub

Public Sub Proc_162_87_EFA344
  'Data Table: 586140
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_EFA274: Set var_88 = Me.TopCtrl1
  loc_EFA27A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EFA293: If (CStr() = "Browse") Then
  loc_EFA296:   Exit Sub
  loc_EFA297: End If
  loc_EFA2D6: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(8))) Then
  loc_EFA2EC:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EFA2F4:   var_E0 = CVar(CLng(&H19)) 'Long
  loc_EFA327:   If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_EFA333:     Call FGrid_UnknownEvent_C(CInt(&HD))
  loc_EFA33D:     global_158 = 0
  loc_EFA340:   End If
  loc_EFA340: End If
  loc_EFA340: Exit Sub
End Sub

Public Sub Proc_162_88_111C578(arg_C) '111C578
  'Data Table: 586140
  Dim var_98 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_B4 As String
  Dim var_B0 As TextBox
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_111C23C: If (arg_C = 0) Then
  loc_111C252:   var_AC = CLng(Me.FGrid.Col)
  loc_111C262:   If (var_AC = CLng(&H1D)) Then
  loc_111C26F:     Set var_98 = Me.TxtGrid
  loc_111C275:     Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0)
  loc_111C28D:     If Not(IsNumeric(CVar(var_B0))) Then
  loc_111C2A1:       Set var_98 = Me.TxtGrid
  loc_111C2A7:       Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0, CStr(0))
  loc_111C2AF:       var_B0.Text = var_AC
  loc_111C2BE:     End If
  loc_111C2CB:     Set var_98 = Me.TxtGrid
  loc_111C2D1:     Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0)
  loc_111C2F1:     var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C2F9:     var_128 = CVar(CLng(&H1D)) 'Long
  loc_111C333:     LateIdCallSt
  loc_111C35A:     Call Proc_162_102_19DE8A8(CInt(&H1D), Me.FGrid, CVar(CStr(Format(CVar(var_B0.Text), "0.00"))), 1)
  loc_111C362:   Else
  loc_111C369:     If (var_AC = CLng(&H1E)) Then
  loc_111C376:       Set var_98 = Me.TxtGrid
  loc_111C37C:       Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0, 1)
  loc_111C394:       If Not(IsNumeric(CVar(var_B0))) Then
  loc_111C39B:         var_B4 = CStr(0)
  loc_111C3A8:         Set var_98 = Me.TxtGrid
  loc_111C3AE:         Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0, var_B4)
  loc_111C3B6:         var_B0.Text = var_128
  loc_111C3C5:       End If
  loc_111C3D2:       Set var_98 = Me.TxtGrid
  loc_111C3D8:       Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0, var_B4)
  loc_111C3E0:       var_108 = var_B0.Text
  loc_111C3F8:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C400:       var_128 = CVar(CLng(&H1E)) 'Long
  loc_111C43A:       LateIdCallSt
  loc_111C461:       Call Proc_162_102_19DE8A8(CInt(&H1E), Me.FGrid, CVar(CStr(Format(CVar(var_B4), "0.00"))), 1)
  loc_111C469:     Else
  loc_111C470:       If (var_AC = CLng(&H1F)) Then
  loc_111C47D:         Set var_98 = Me.TxtGrid
  loc_111C483:         Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0, 1)
  loc_111C49B:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_111C4A2:           var_B4 = CStr(0)
  loc_111C4AF:           Set var_98 = Me.TxtGrid
  loc_111C4B5:           Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0, var_B4)
  loc_111C4BD:           var_B0.Text = var_128
  loc_111C4CC:         End If
  loc_111C4D9:         Set var_98 = Me.TxtGrid
  loc_111C4DF:         Call 0.Method_Proc_162_88_111C5780 (arg_C, var_B0, var_B4)
  loc_111C4E7:         var_108 = var_B0.Text
  loc_111C4FF:         var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C507:         var_128 = CVar(CLng(&H1F)) 'Long
  loc_111C541:         LateIdCallSt
  loc_111C568:         Call Proc_162_102_19DE8A8(CInt(&H1F), Me.FGrid, CVar(CStr(Format(CVar(var_B4), "0.00"))), 1)
  loc_111C56D:       End If
  loc_111C56D:     End If
  loc_111C56D:   End If
  loc_111C56D: End If
  loc_111C572: Proc_162_88_111C578 = &HFF
End Sub

Public Sub Proc_162_89_1B40DBC
  'Data Table: 586140
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim unk_58616C As Connection15
  Dim var_138 As Recordset15
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_134 As Variant
  Dim var_CC As Variant
  Dim var_8C As Recordset15
  Dim var_14C As Double
  Dim var_88 As Recordset15
  Dim var_164 As Variant
  Dim var_8E As Integer
  Dim var_9E As Integer
  Dim var_9A As Integer
  Dim var_120 As Variant
  Dim var_17C As Variant
  Dim var_130 As Variant
  Dim var_1A8 As String
  Dim var_160 As Variant
  Dim var_18C As Variant
  Dim var_1B8 As Variant
  Dim var_1F8 As Variant
  Dim var_204 As Field20
  Dim var_20C As Variant
  Dim var_210 As String
  Dim var_1F4 As Field20
  Dim var_208 As Variant
  loc_1B3C2A0: On Error Goto loc_1B40D67
  loc_1B3C2B0: Me.lblTable.Caption = vbNullString
  loc_1B3C2CF: If (Me.RecordCount > 0) Then
  loc_1B3C311:   var_EC = "Select S.* From Sale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_1B3C328:   unk_58616C.Execute CStr(var_EC & "'"), var_130, -1
  loc_1B3C350:   Set var_138 = var_134 
  loc_1B3C38D:   Set var_134 = Me.Txt
  loc_1B3C393:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_13C)
  loc_1B3C39B:   var_13C.Text = CStr(var_138.Fields.Item("DocID").Value)
  loc_1B3C3CB:   var_BC = var_138.Fields.Item("vType")
  loc_1B3C3D3:   var_CC = var_BC.Value
  loc_1B3C3F9:   var_DC = 0
  loc_1B3C429:   unk_58616C.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'", var_CC, -1
  loc_1B3C431:   var_A4 = var_A4.Fields
  loc_1B3C439:   var_DC = var_BC.Item(var_BC)
  loc_1B3C441:   var_134 = var_134.Value
  loc_1B3C450:   global_132 = CStr(var_EC)
  loc_1B3C4A6:   Set var_134 = Me.Txt
  loc_1B3C4AC:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(0), var_13C, CStr(var_138.Fields.Item("VNo").Value))
  loc_1B3C4B4:   var_13C.Text = var_EC
  loc_1B3C4E1:   var_BC = var_138.Fields.Item("VDate")
  loc_1B3C51C:   Set var_134 = Me.Txt
  loc_1B3C522:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(1), var_13C, CStr(Format(CVar(var_BC), "DD/MMM/YYYY")))
  loc_1B3C52A:   var_13C.Text = 1
  loc_1B3C54F:   Set var_A4 = Me.Txt
  loc_1B3C555:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(1), var_BC)
  loc_1B3C587:   Call Proc_162_100_17EF080(CDate(Format(CVar(var_BC), "DD/MMM/YYYY")), 1, 1)
  loc_1B3C5CA:   Set var_134 = Me.LblVPrefix
  loc_1B3C5D0:   var_134.Caption = CStr(var_138.Fields.Item("vPrefix").Value)
  loc_1B3C615:   global_140 = CStr(var_138.Fields.Item("KOTNo").Value)
  loc_1B3C637:   If (global_212 = "Hall") Then
  loc_1B3C676:     var_EC = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_138.Fields.Item("RoomNo").Value 
  loc_1B3C68D:     unk_58616C.Execute CStr(var_EC & "'"), var_130, -1
  loc_1B3C698:     Set var_8C = var_134
  loc_1B3C6C6:     If (var_8C.RecordCount > 0) Then
  loc_1B3C708:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_13C, CStr(var_8C.Fields.Item(0).Value))
  loc_1B3C710:       var_13C.Text = Me.Txt
  loc_1B3C726:     End If
  loc_1B3C729:   Else
  loc_1B3C75F:     Set var_134 = Me.Txt
  loc_1B3C765:     Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_13C)
  loc_1B3C76D:     var_13C.Text = Proc_6_38_E68A98(CVar(var_138.Fields.Item("RoomNo")), 1)
  loc_1B3C781:   End If
  loc_1B3C7B7:   Set var_134 = Me.Txt
  loc_1B3C7BD:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_13C)
  loc_1B3C7C5:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_138.Fields.Item("RoomNo")))
  loc_1B3C7FF:   Proc_6_39_E7C810(var_EC, CVar(var_138.Fields.Item("GuarAtt")))
  loc_1B3C816:   Set var_134 = Me.Txt
  loc_1B3C81C:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(4), var_13C)
  loc_1B3C824:   var_13C.Text = CStr(var_EC)
  loc_1B3C867:   var_EC = "hh:nn"
  loc_1B3C88E:   Set var_134 = Me.Txt
  loc_1B3C894:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(5), var_13C, CStr(Format(CVar(var_138.Fields.Item("VTIME")), var_EC)))
  loc_1B3C89C:   var_13C.Text = 1
  loc_1B3C8FE:   var_140 = Replace(CStr(var_138.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_1B3C906:   var_14C = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_138.Fields.Item("VTIME").Value) & "'")
  loc_1B3C932:   unk_58616C.Execute "Select Name From SessionMast WHERE " & CStr(var_14C) & " BETWEEN FromTime AND ToTime", var_EC, -1
  loc_1B3C93D:   Set var_94 = var_134
  loc_1B3C974:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1B3C9A9:     Set var_134 = Me.lblSession
  loc_1B3C9AF:     var_134.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")), var_134, var_14C)
  loc_1B3C9C1:   End If
  loc_1B3C9C3:   Set var_138 = Nothing 
  loc_1B3CA1D:   unk_58616C.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_130, -1
  loc_1B3CA28:   Set var_88 = var_134
  loc_1B3CA56:   If (var_88.RecordCount > 0) Then
  loc_1B3CA89:     Call Proc_162_100_17EF080(CDate(var_88.Fields.Item("SunAppDate").Value), var_134)
  loc_1B3CA98:     ' Referenced from: 1B3CF2C
  loc_1B3CAA7:     If Not(var_88.EOF) Then
  loc_1B3CB0A:       Set var_160 = Me.LblCap
  loc_1B3CB10:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164, CStr(var_88.Fields.Item("SunCode").Value))
  loc_1B3CB18:       var_164.Tag = 1
  loc_1B3CB96:       Set var_160 = Me.TxtPer
  loc_1B3CB9C:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3CBA4:       var_164.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1B3CC22:       Set var_160 = Me.LblCap
  loc_1B3CC28:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3CC30:       var_164.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1B3CCAE:       Set var_160 = Me.LblAt
  loc_1B3CCB4:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3CCBC:       var_164.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1B3CD37:       Set var_160 = Me.TxtGt
  loc_1B3CD3D:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3CD45:       var_164.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B3CDC1:       Set var_160 = Me.TxtPer
  loc_1B3CDC7:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3CDCF:       var_164.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1B3CE2B:       var_130 = var_88.Fields.Item("SNo").Value
  loc_1B3CE3F:       var_EC = "0.00"
  loc_1B3CE66:       Set var_160 = Me.TxtGt
  loc_1B3CE6C:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_130), var_164, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_EC)))
  loc_1B3CE74:       var_164.Text = 1
  loc_1B3CEAB:       var_BC = var_88.Fields.Item("BaseAmount")
  loc_1B3CEBA:       Proc_6_39_E7C810(var_EC, CVar(var_BC))
  loc_1B3CEC2:       var_110 = CStr(var_EC)
  loc_1B3CEDB:       var_134 = var_88.Fields
  loc_1B3CEE3:       var_13C = var_134.Item("SNo")
  loc_1B3CEF8:       Set var_160 = Me.LblDummy
  loc_1B3CEFE:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_13C.Value), var_164, var_110)
  loc_1B3CF06:       var_164.Caption = 1
  loc_1B3CF27:       var_88.MoveNext
  loc_1B3CF2C:       GoTo loc_1B3CA98
  loc_1B3CF2F:     End If
  loc_1B3CF2F:   End If
  loc_1B3CF4D:   Set var_A4 = Me.Txt
  loc_1B3CF53:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='")
  loc_1B3CF5B:   var_CC = var_BC.Text
  loc_1B3CF64:   var_140 = -1 & var_110
  loc_1B3CF74:   unk_58616C.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'" & "' And PayType='Cash'", var_134, var_134
  loc_1B3CF7F:   Set var_8C = var_134
  loc_1B3CFA5:   Set var_A4 = Me.Txt
  loc_1B3CFAB:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(6), var_BC)
  loc_1B3CFB3:   var_BC.Text = vbNullString
  loc_1B3CFCD:   Set var_A4 = Me.Txt
  loc_1B3CFD3:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(7), var_BC)
  loc_1B3CFDB:   var_BC.Text = vbNullString
  loc_1B3CFF5:   Set var_A4 = Me.Txt
  loc_1B3CFFB:   Call 0.Method_Proc_162_89_1B40DBC0 (CInt(8), var_BC)
  loc_1B3D003:   var_BC.Text = vbNullString
  loc_1B3D023:   If (var_8C.RecordCount > 0) Then
  loc_1B3D078:     Set var_134 = Me.Txt
  loc_1B3D07E:     Call 0.Method_Proc_162_89_1B40DBC0 (CInt(6), var_13C, CStr(Format(CVar(var_8C.Fields.Item("Amount")), "0.00")))
  loc_1B3D086:     var_13C.Text = 1
  loc_1B3D0F2:     Set var_134 = Me.Txt
  loc_1B3D0F8:     Call 0.Method_Proc_162_89_1B40DBC0 (CInt(7), var_13C, CStr(Format(CVar(var_8C.Fields.Item("TipAmt")), "0.00")))
  loc_1B3D100:     var_13C.Text = 1
  loc_1B3D11A:   End If
  loc_1B3D129:   Me.FGrid.Redraw = False
  loc_1B3D144:   Me.FGrid.Rows = 1
  loc_1B3D14E:   var_8E = 1
  loc_1B3D15E:   var_DC = "Select S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.TAxStru as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And I.RestCode=S.ItemRestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_1B3D1A7:   unk_58616C.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_130, -1
  loc_1B3D1B2:   Set var_88 = var_134
  loc_1B3D1E0:   If (var_88.RecordCount > 0) Then
  loc_1B3D1F0:     ReDim Preserve var_98(0 To 0)
  loc_1B3D1FA:     ' Referenced from: 1B3E2C4
  loc_1B3D209:     If Not(var_88.EOF) Then
  loc_1B3D20C:       var_B8 = vbNullString
  loc_1B3D216:       Set var_A4 = Me.FGrid
  loc_1B3D234:       For var_168 = 0 To CInt(UBound(var_98, 1)): var_9C = var_168 'Integer
  loc_1B3D245:         var_B8 = "RoomNo"
  loc_1B3D278:         If (var_134 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_B8)), var_98(CLng(var_9C)), 0, FGrid.DispID_10000, var_B8)) Then
  loc_1B3D27D:           var_9E = &HFF
  loc_1B3D280:         End If
  loc_1B3D283:       Next var_168 'Integer
  loc_1B3D28E:       If (var_9E = 0) Then
  loc_1B3D29D:         ReDim Preserve var_98(0 To CLng(var_9A))
  loc_1B3D2D9:         var_98(CLng(var_9A)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_1B3D2E9:         var_9A = (var_9A + 1)
  loc_1B3D2EC:       End If
  loc_1B3D2EE:       var_9E = 0
  loc_1B3D2F5:       Set var_16C = Me.FGrid
  loc_1B3D2FC:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_1B3D304:       var_120 = CVar(CLng(0)) 'Long
  loc_1B3D334:       var_EC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1B3D33B:       LateIdCallSt
  loc_1B3D38A:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3D391:       LateIdCallSt
  loc_1B3D3DC:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3D3E3:       LateIdCallSt
  loc_1B3D42E:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3D435:       LateIdCallSt
  loc_1B3D480:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3D487:       LateIdCallSt
  loc_1B3D4D2:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3D4D9:       LateIdCallSt
  loc_1B3D50B:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D513:       var_17C = CVar(CLng(7)) 'Long
  loc_1B3D540:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1B3D547:       LateIdCallSt
  loc_1B3D57D:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D585:       var_17C = CVar(CLng(8)) 'Long
  loc_1B3D5B2:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_1B3D5B9:       LateIdCallSt
  loc_1B3D5EF:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D5F7:       var_17C = CVar(CLng(9)) 'Long
  loc_1B3D624:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1B3D62B:       LateIdCallSt
  loc_1B3D661:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D669:       var_17C = CVar(CLng(&HA)) 'Long
  loc_1B3D696:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1B3D69D:       LateIdCallSt
  loc_1B3D6B7:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_1B3D6BF:       var_120 = CVar(CLng(&HB)) 'Long
  loc_1B3D6EF:       var_EC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1B3D6F6:       LateIdCallSt
  loc_1B3D72C:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D734:       var_17C = CVar(CLng(&HE)) 'Long
  loc_1B3D761:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1B3D768:       LateIdCallSt
  loc_1B3D79E:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D7A6:       var_17C = CVar(CLng(&HF)) 'Long
  loc_1B3D7D3:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1B3D7DA:       LateIdCallSt
  loc_1B3D810:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D818:       var_17C = CVar(CLng(&H10)) 'Long
  loc_1B3D845:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_1B3D84C:       LateIdCallSt
  loc_1B3D882:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3D88A:       var_17C = CVar(CLng(&H11)) 'Long
  loc_1B3D8B7:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1B3D8BE:       LateIdCallSt
  loc_1B3D930:       LateIdCallSt
  loc_1B3D97F:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_16C, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1B3D986:       LateIdCallSt
  loc_1B3D9D1:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_16C, var_EC, CVar(CLng(&H12)))) 'String
  loc_1B3D9D8:       LateIdCallSt
  loc_1B3DA23:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3DA2A:       LateIdCallSt
  loc_1B3DA75:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3DA7C:       LateIdCallSt
  loc_1B3DABD:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_1B3DAC5:       var_120 = CVar(CLng(5)) 'Long
  loc_1B3DAE0:       var_110 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_16C, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_16C, var_EC, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_1B3DAF2:       LateIdCallSt
  loc_1B3DB48:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_16C, CVar(CStr(Val(var_110))), CVar(CLng(&HD)))) 'String
  loc_1B3DB4F:       LateIdCallSt
  loc_1B3DB98:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_16C, var_EC)
  loc_1B3DBA8:       LateIdCallSt
  loc_1B3DBF5:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_16C, CVar(CStr(var_EC)))) 'String
  loc_1B3DBFC:       LateIdCallSt
  loc_1B3DC47:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3DC4E:       LateIdCallSt
  loc_1B3DC97:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_16C, var_EC)
  loc_1B3DCA7:       LateIdCallSt
  loc_1B3DCE3:       var_BC = var_88.Fields.Item("Godowncode")
  loc_1B3DCEB:       var_CC = CVar(var_BC) 'Address
  loc_1B3DCF4:       var_EC = CVar(Proc_6_38_E68A98(var_CC, CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_16C, CVar(CStr(var_EC)))) 'String
  loc_1B3DCFB:       LateIdCallSt
  loc_1B3DD3A:       Set var_A4 = Me.Txt
  loc_1B3DD40:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110, "SELECT Count(*) FROM SplitBillDetail WHERE DocId='", var_CC, -1, var_134)
  loc_1B3DD48:       var_13C = var_BC.Text
  loc_1B3DD7F:       unk_58616C.Execute 0 & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1D), var_160, var_EC
  loc_1B3DD87:       var_16C = var_134.Fields
  loc_1B3DD8F:       var_DC = var_13C.Item(var_EC)
  loc_1B3DD97:        = var_160.Value
  loc_1B3DDCE:       If (var_EC = 0) Then
  loc_1B3DDD5:         var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1B3DDDD:         var_FC = CVar(CLng(&H1D)) 'Long
  loc_1B3DDE2:         var_17C = "0.00"
  loc_1B3DDEB:         LateIdCallSt
  loc_1B3DDF6:       Else
  loc_1B3DE04:         Set var_A4 = Me.Txt
  loc_1B3DE0A:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110, var_16C)
  loc_1B3DE12:         var_17C = var_BC.Text
  loc_1B3DE1A:         var_DC = 0
  loc_1B3DE5C:         var_1A8 = "SELECT BillQty FROM SplitBillDetail WHERE DocId='" & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1D)
  loc_1B3DE65:         unk_58616C.Execute var_1A8, var_CC, -1
  loc_1B3DE6D:         var_134 = var_134.Fields
  loc_1B3DE75:         var_DC = var_13C.Item(var_13C)
  loc_1B3DE7E:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_1B3DE86:         var_18C = CVar(CLng(&H1D)) 'Long
  loc_1B3DEA3:         var_EC = CVar(var_160) 'Address
  loc_1B3DEB3:         var_1B8 = CVar(CStr(Format(var_EC, "0.00"))) 'String
  loc_1B3DEBA:         LateIdCallSt
  loc_1B3DEED:       End If
  loc_1B3DF1A:       Set var_A4 = Me.Txt
  loc_1B3DF20:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110, "SELECT Count(*) FROM SplitBillDetail WHERE DocId='", var_CC, -1, var_134)
  loc_1B3DF28:       var_13C = var_BC.Text
  loc_1B3DF5F:       unk_58616C.Execute 0 & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1E), var_160, var_EC
  loc_1B3DF67:       var_16C = var_134.Fields
  loc_1B3DF6F:       1 = var_13C.Item(var_1B8)
  loc_1B3DF77:        = var_160.Value
  loc_1B3DFAE:       If (var_EC = 0) Then
  loc_1B3DFB5:         var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1B3DFBD:         var_FC = CVar(CLng(&H1E)) 'Long
  loc_1B3DFC2:         var_17C = "0.00"
  loc_1B3DFCB:         LateIdCallSt
  loc_1B3DFD6:       Else
  loc_1B3DFE4:         Set var_A4 = Me.Txt
  loc_1B3DFEA:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110, var_16C)
  loc_1B3DFF2:         var_17C = var_BC.Text
  loc_1B3DFFA:         var_DC = 0
  loc_1B3E03C:         var_1A8 = "SELECT BillQty FROM SplitBillDetail WHERE DocId='" & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1E)
  loc_1B3E045:         unk_58616C.Execute var_1A8, var_CC, -1
  loc_1B3E04D:         var_134 = var_134.Fields
  loc_1B3E055:         var_DC = var_13C.Item(var_13C)
  loc_1B3E05E:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_1B3E066:         var_18C = CVar(CLng(&H1E)) 'Long
  loc_1B3E083:         var_EC = CVar(var_160) 'Address
  loc_1B3E093:         var_1B8 = CVar(CStr(Format(var_EC, "0.00"))) 'String
  loc_1B3E09A:         LateIdCallSt
  loc_1B3E0CD:       End If
  loc_1B3E0FA:       Set var_A4 = Me.Txt
  loc_1B3E100:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110, "SELECT Count(*) FROM SplitBillDetail WHERE DocId='", var_CC, -1, var_134)
  loc_1B3E108:       var_13C = var_BC.Text
  loc_1B3E13F:       unk_58616C.Execute 0 & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1F), var_160, var_EC
  loc_1B3E147:       var_16C = var_134.Fields
  loc_1B3E14F:       1 = var_13C.Item(var_1B8)
  loc_1B3E157:        = var_160.Value
  loc_1B3E18E:       If (var_EC = 0) Then
  loc_1B3E195:         var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1B3E19D:         var_FC = CVar(CLng(&H1F)) 'Long
  loc_1B3E1A2:         var_17C = "0.00"
  loc_1B3E1AB:         LateIdCallSt
  loc_1B3E1B6:       Else
  loc_1B3E1C4:         Set var_A4 = Me.Txt
  loc_1B3E1CA:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110, var_16C)
  loc_1B3E1D2:         var_17C = var_BC.Text
  loc_1B3E1DA:         var_DC = 0
  loc_1B3E21C:         var_1A8 = "SELECT BillQty FROM SplitBillDetail WHERE DocId='" & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1F)
  loc_1B3E225:         unk_58616C.Execute var_1A8, var_CC, -1
  loc_1B3E22D:         var_134 = var_134.Fields
  loc_1B3E235:         var_DC = var_13C.Item(var_13C)
  loc_1B3E23E:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_1B3E246:         var_18C = CVar(CLng(&H1F)) 'Long
  loc_1B3E273:         var_1B8 = CVar(CStr(Format(CVar(var_160), "0.00"))) 'String
  loc_1B3E27A:         LateIdCallSt
  loc_1B3E2AD:       End If
  loc_1B3E2AF:       Set var_16C = Nothing 
  loc_1B3E2B9:       var_8E = (var_8E + 1)
  loc_1B3E2BF:       var_88.MoveNext
  loc_1B3E2C4:       GoTo loc_1B3D1FA
  loc_1B3E2C7:     End If
  loc_1B3E2DA:     Me.FGrid.FixedRows = 1
  loc_1B3E2F0:     Set var_A4 = Me.Txt
  loc_1B3E2F6:     Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_BC, vbNullString, var_8E, var_16C, var_1B8, 1)
  loc_1B3E2FE:     var_BC.Text = 1
  loc_1B3E317:     For var_1CC = 0 To CInt(UBound(var_98, 1)): var_9A = var_1CC 'Integer
  loc_1B3E32B:       Set var_A4 = Me.Txt
  loc_1B3E331:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_BC, var_110, 0, var_18C)
  loc_1B3E339:       var_120 = var_BC.Text
  loc_1B3E35F:       Set var_134 = Me.Txt
  loc_1B3E365:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_13C, var_110 & var_98(CLng(var_9A)) & ",")
  loc_1B3E36D:       var_13C.Text = var_160
  loc_1B3E389:     Next var_1CC 'Integer
  loc_1B3E399:     Set var_A4 = Me.Txt
  loc_1B3E39F:     Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3))
  loc_1B3E3AF:     Set var_134 = Me.Txt
  loc_1B3E3B5:     Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_13C)
  loc_1B3E3D5:     var_130 = (Len(Trim(CVar(var_13C))) - 1)
  loc_1B3E3E8:     var_1B8 = CVar(var_BC) 'Address
  loc_1B3E406:     Set var_160 = Me.Txt
  loc_1B3E40C:     Call 0.Method_Proc_162_89_1B40DBC0 (CInt(3), var_164)
  loc_1B3E414:     var_164.Text = CStr(Mid(var_1B8, 1, Format(CVar(var_160), "0.00")))
  loc_1B3E434:   End If
  loc_1B3E442:   Me.FGrid.Redraw = True
  loc_1B3E45E:   var_EC = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1B3E497:   var_130 = var_EC & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1B3E4A5:   unk_58616C.Execute CStr(var_130), var_1B8, -1
  loc_1B3E4B0:   Set var_88 = var_134
  loc_1B3E4DF:   Me.FGCat.Rows = 1
  loc_1B3E4FB:   If (var_88.RecordCount > 0) Then
  loc_1B3E4FE:     ' Referenced from: 1B3E8C6
  loc_1B3E50D:     If Not(var_88.EOF) Then
  loc_1B3E514:       Set var_1F0 = Me.FGCat
  loc_1B3E517:       var_B8 = vbNullString
  loc_1B3E541:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E549:       var_120 = CVar(CLng(0)) 'Long
  loc_1B3E579:       var_10C = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1B3E580:       LateIdCallSt
  loc_1B3E5B3:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E5BB:       var_120 = CVar(CLng(1)) 'Long
  loc_1B3E5EB:       var_10C = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1B3E5F2:       LateIdCallSt
  loc_1B3E625:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E62D:       var_120 = CVar(CLng(2)) 'Long
  loc_1B3E65D:       var_10C = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1B3E664:       LateIdCallSt
  loc_1B3E697:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E69F:       var_120 = CVar(CLng(3)) 'Long
  loc_1B3E6CF:       var_10C = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1B3E6D6:       LateIdCallSt
  loc_1B3E709:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E711:       var_120 = CVar(CLng(4)) 'Long
  loc_1B3E741:       var_10C = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1B3E748:       LateIdCallSt
  loc_1B3E77B:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E783:       var_120 = CVar(CLng(5)) 'Long
  loc_1B3E7B3:       var_10C = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1B3E7BA:       LateIdCallSt
  loc_1B3E7ED:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E7F5:       var_120 = CVar(CLng(6)) 'Long
  loc_1B3E825:       var_10C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_1B3E82C:       LateIdCallSt
  loc_1B3E85F:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B3E867:       var_120 = CVar(CLng(7)) 'Long
  loc_1B3E897:       var_10C = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1B3E89E:       LateIdCallSt
  loc_1B3E8BA:       Set var_1F0 = Nothing 
  loc_1B3E8C1:       var_88.MoveNext
  loc_1B3E8C6:       GoTo loc_1B3E4FE
  loc_1B3E8C9:     End If
  loc_1B3E8C9:   End If
  loc_1B3E8CF:   If (var_8E = 1) Then
  loc_1B3E8E5:     Me.FGrid.Rows = 1
  loc_1B3E8F1:     Set var_134 = Me.FGrid
  loc_1B3E90B:     var_CC = CVar(CStr(Proc_6_127_F24F80(var_134, CInt(0), var_1F0, var_10C, var_120, "'", var_1F0, var_10C))) 'String
  loc_1B3E913:     Set var_BC = Me.FGrid
  loc_1B3E940:     Me.FGrid.FixedRows = 1
  loc_1B3E948:   End If
  loc_1B3E94B: Else
  loc_1B3E94B:   Call Proc_162_91_10AAA18(FGrid.DispID_10000, var_CC, var_120, "'", var_1F0)
  loc_1B3E950: End If
  loc_1B3E950: Call Proc_162_93_EF7914(var_10C, var_120)
  loc_1B3E96C: If (Me.RecordCount > 0) Then
  loc_1B3E9C5:   unk_58616C.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_130, -1
  loc_1B3E9D0:   Set var_88 = var_134
  loc_1B3E9FE:   If (var_88.RecordCount > 0) Then
  loc_1B3EA01:     ' Referenced from: 1B40B15
  loc_1B3EA07:     var_15A = var_88.EOF
  loc_1B3EA10:     If Not(var_15A) Then
  loc_1B3EA4A:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value, Me.LblDummy1)
  loc_1B3EA64:       If (CVar(var_15A) > CVar(var_15A)) Then
  loc_1B3EA99:         Set var_134 = Me.LblDummy1
  loc_1B3EA9F:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3EAB0:         Me.LblDummy1.Load var_13C
  loc_1B3EAF7:         Set var_134 = Me.LblDummy1
  loc_1B3EAFD:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3EB05:         var_13C.Visible = False
  loc_1B3EB18:       End If
  loc_1B3EB49:       Set var_134 = Me.LblCap1
  loc_1B3EB4F:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3EB69:       If (var_1F0 > CVar(var_15A)) Then
  loc_1B3EB9E:         Set var_134 = Me.LblCap1
  loc_1B3EBA4:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3EBB5:         Me.LblCap1.Load var_13C
  loc_1B3EC24:         Set var_1F4 = Me.LblCap1
  loc_1B3EC2A:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B3EC6C:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B3EC75:         Set var_134 = Me.LblCap1
  loc_1B3EC7B:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B3EC9F:         Set var_208 = Me.LblCap1
  loc_1B3ECA5:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B3ECAD:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B3ECD6:       End If
  loc_1B3ED07:       Set var_134 = Me.TxtGt1
  loc_1B3ED0D:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3ED27:       If (var_13C > CVar(var_15A)) Then
  loc_1B3ED5C:         Set var_134 = Me.TxtGt1
  loc_1B3ED62:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3ED73:         Me.TxtGt1.Load var_13C
  loc_1B3EDE2:         Set var_1F4 = Me.TxtGt1
  loc_1B3EDE8:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B3EE2A:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B3EE33:         Set var_134 = Me.TxtGt1
  loc_1B3EE39:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B3EE5D:         Set var_208 = Me.TxtGt1
  loc_1B3EE63:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B3EE6B:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B3EE94:       End If
  loc_1B3EEC5:       Set var_134 = Me.LblDummy2
  loc_1B3EECB:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3EEE5:       If (var_13C > CVar(var_15A)) Then
  loc_1B3EF1A:         Set var_134 = Me.LblDummy2
  loc_1B3EF20:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3EF31:         Me.LblDummy2.Load var_13C
  loc_1B3EF78:         Set var_134 = Me.LblDummy2
  loc_1B3EF7E:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3EF86:         var_13C.Visible = False
  loc_1B3EF99:       End If
  loc_1B3EFCA:       Set var_134 = Me.LblCap2
  loc_1B3EFD0:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3EFEA:       If (var_13C > CVar(var_15A)) Then
  loc_1B3F01F:         Set var_134 = Me.LblCap2
  loc_1B3F025:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3F036:         Me.LblCap2.Load var_13C
  loc_1B3F0A5:         Set var_1F4 = Me.LblCap2
  loc_1B3F0AB:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B3F0ED:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B3F0F6:         Set var_134 = Me.LblCap2
  loc_1B3F0FC:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B3F120:         Set var_208 = Me.LblCap2
  loc_1B3F126:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B3F12E:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B3F157:       End If
  loc_1B3F188:       Set var_134 = Me.TxtGt2
  loc_1B3F18E:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3F1A8:       If (var_13C > CVar(var_15A)) Then
  loc_1B3F1DD:         Set var_134 = Me.TxtGt2
  loc_1B3F1E3:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3F1F4:         Me.TxtGt2.Load var_13C
  loc_1B3F263:         Set var_1F4 = Me.TxtGt2
  loc_1B3F269:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B3F2AB:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B3F2B4:         Set var_134 = Me.TxtGt2
  loc_1B3F2BA:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B3F2DE:         Set var_208 = Me.TxtGt2
  loc_1B3F2E4:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B3F2EC:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B3F315:       End If
  loc_1B3F346:       Set var_134 = Me.LblDummy3
  loc_1B3F34C:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3F366:       If (var_13C > CVar(var_15A)) Then
  loc_1B3F39B:         Set var_134 = Me.LblDummy3
  loc_1B3F3A1:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3F3B2:         Me.LblDummy3.Load var_13C
  loc_1B3F3F9:         Set var_134 = Me.LblDummy3
  loc_1B3F3FF:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F407:         var_13C.Visible = False
  loc_1B3F41A:       End If
  loc_1B3F44B:       Set var_134 = Me.LblCap3
  loc_1B3F451:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3F46B:       If (var_13C > CVar(var_15A)) Then
  loc_1B3F4A0:         Set var_134 = Me.LblCap3
  loc_1B3F4A6:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3F4B7:         Me.LblCap3.Load var_13C
  loc_1B3F526:         Set var_1F4 = Me.LblCap3
  loc_1B3F52C:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B3F56E:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B3F577:         Set var_134 = Me.LblCap3
  loc_1B3F57D:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B3F5A1:         Set var_208 = Me.LblCap3
  loc_1B3F5A7:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B3F5AF:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B3F5D8:       End If
  loc_1B3F609:       Set var_134 = Me.TxtGt3
  loc_1B3F60F:       Call 0.Method_Proc_162_89_1B40DBC8 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B3F629:       If (var_13C > CVar(var_15A)) Then
  loc_1B3F65E:         Set var_134 = Me.TxtGt3
  loc_1B3F664:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B3F675:         Me.TxtGt3.Load var_13C
  loc_1B3F6C9:         var_164 = var_88.Fields.Item("SNo")
  loc_1B3F6E4:         Set var_1F4 = Me.TxtGt3
  loc_1B3F6EA:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_164.Value), var_1F8)
  loc_1B3F72C:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B3F735:         Set var_134 = Me.TxtGt3
  loc_1B3F73B:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B3F743:         var_A8 = var_13C.Top
  loc_1B3F75F:         Set var_208 = Me.TxtGt3
  loc_1B3F765:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B3F76D:         var_20C.Top = ((var_A8 + var_1F8.Height) + CDbl(&HF))
  loc_1B3F796:       End If
  loc_1B3F7CA:       Set var_134 = Me.LblCap1
  loc_1B3F7D0:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F7D8:       var_13C.Visible = True
  loc_1B3F81F:       Set var_134 = Me.LblCap2
  loc_1B3F825:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F82D:       var_13C.Visible = True
  loc_1B3F874:       Set var_134 = Me.LblCap3
  loc_1B3F87A:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F882:       var_13C.Visible = True
  loc_1B3F8C9:       Set var_134 = Me.LblDummy1
  loc_1B3F8CF:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F8D7:       var_13C.Visible = False
  loc_1B3F91E:       Set var_134 = Me.LblDummy2
  loc_1B3F924:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F92C:       var_13C.Visible = False
  loc_1B3F973:       Set var_134 = Me.LblDummy3
  loc_1B3F979:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F981:       var_13C.Visible = False
  loc_1B3F9C8:       Set var_134 = Me.TxtGt1
  loc_1B3F9CE:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3F9D6:       var_13C.Visible = True
  loc_1B3FA1D:       Set var_134 = Me.TxtGt2
  loc_1B3FA23:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3FA2B:       var_13C.Visible = True
  loc_1B3FA72:       Set var_134 = Me.TxtGt3
  loc_1B3FA78:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B3FA80:       var_13C.Visible = True
  loc_1B3FAF3:       Set var_160 = Me.LblCap1
  loc_1B3FAF9:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3FB01:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1B3FB8D:       Set var_160 = Me.LblCap1
  loc_1B3FB93:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3FB9B:       var_164.Caption = CStr(StrConv(CVar(var_88.Fields.Item("DispName")), 3, 0))
  loc_1B3FC16:       Set var_160 = Me.TxtGt1
  loc_1B3FC1C:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3FC24:       var_164.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B3FCA0:       Set var_160 = Me.LblCap2
  loc_1B3FCA6:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3FCAE:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1B3FD3A:       Set var_160 = Me.LblCap2
  loc_1B3FD40:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3FD48:       var_164.Caption = CStr(StrConv(CVar(var_88.Fields.Item("DispName")), 3, 0))
  loc_1B3FDC3:       Set var_160 = Me.TxtGt2
  loc_1B3FDC9:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3FDD1:       var_164.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B3FE4D:       Set var_160 = Me.LblCap3
  loc_1B3FE53:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3FE5B:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1B3FEB7:       var_10C = var_88.Fields.Item("SNo").Value
  loc_1B3FEE7:       Set var_160 = Me.LblCap3
  loc_1B3FEED:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_10C), var_164)
  loc_1B3FEF5:       var_164.Caption = CStr(StrConv(CVar(var_88.Fields.Item("DispName")), 3, 0))
  loc_1B3FF2A:       var_BC = var_88.Fields.Item("CalcFormula")
  loc_1B3FF63:       var_EC = var_88.Fields.Item("SNo").Value
  loc_1B3FF70:       Set var_160 = Me.TxtGt3
  loc_1B3FF76:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_EC), var_164)
  loc_1B3FF7E:       var_164.Tag = Proc_6_38_E68A98(CVar(var_BC))
  loc_1B3FFA8:       Set var_A4 = Me.Txt
  loc_1B3FFAE:       Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC)
  loc_1B3FFD5:       var_13C = var_88.Fields.Item("SNo")
  loc_1B3FFEE:       var_14C = Val(CStr(var_13C.Value))
  loc_1B3FFF7:       var_FC = 0
  loc_1B40039:       var_210 = "SELECT Count(*) FROM SplitSunTran WHERE DocId='" & var_BC.Text & "' AND BillCat=" & CStr(&H1D) & " AND SNo=" & CStr(var_14C)
  loc_1B40042:       unk_58616C.Execute var_210, var_EC, -1
  loc_1B4004A:       var_160 = var_160.Fields
  loc_1B40052:       var_FC = var_164.Item(var_164)
  loc_1B4005A:       var_1F4 = var_1F4.Value
  loc_1B40099:       If (var_10C = 0) Then
  loc_1B400D1:         Set var_134 = Me.TxtGt1
  loc_1B400D7:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C, "0.00")
  loc_1B400DF:         var_13C.Text = var_10C
  loc_1B40127:         Set var_134 = Me.LblDummy1
  loc_1B4012D:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C, vbNullString)
  loc_1B40135:         var_13C.Caption = var_14C
  loc_1B4017D:         Set var_134 = Me.TxtGt2
  loc_1B40183:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B4018B:         var_13C.Text = "0.00"
  loc_1B401D3:         Set var_134 = Me.LblDummy2
  loc_1B401D9:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B401E1:         var_13C.Caption = vbNullString
  loc_1B40229:         Set var_134 = Me.TxtGt3
  loc_1B4022F:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B40237:         var_13C.Text = "0.00"
  loc_1B4026A:         var_BC = var_88.Fields.Item("SNo")
  loc_1B4027F:         Set var_134 = Me.LblDummy3
  loc_1B40285:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_BC.Value), var_13C)
  loc_1B4028D:         var_13C.Caption = vbNullString
  loc_1B402A3:       Else
  loc_1B402B1:         Set var_A4 = Me.Txt
  loc_1B402B7:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC)
  loc_1B402BF:         var_110 = var_BC.Text
  loc_1B402FD:         var_FC = 0
  loc_1B4033F:         var_210 = "SELECT Amount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1D) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B40348:         unk_58616C.Execute var_210, var_EC, -1
  loc_1B40350:         var_160 = var_160.Fields
  loc_1B40358:         var_FC = var_164.Item(var_164)
  loc_1B403BA:         Set var_204 = Me.TxtGt1
  loc_1B403C0:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1)
  loc_1B403C8:         var_208.Text = 1
  loc_1B40418:         Set var_A4 = Me.Txt
  loc_1B4041E:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110)
  loc_1B40426:         var_1F4 = var_BC.Text
  loc_1B40464:         var_FC = 0
  loc_1B404A6:         var_210 = "SELECT BaseAmount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1D) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B404AF:         unk_58616C.Execute var_210, var_EC, -1
  loc_1B404B7:         var_160 = var_160.Fields
  loc_1B404BF:         var_FC = var_164.Item(var_164)
  loc_1B40521:         Set var_204 = Me.LblDummy1
  loc_1B40527:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B4052F:         var_208.Caption = var_1F4
  loc_1B4057F:         Set var_A4 = Me.Txt
  loc_1B40585:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110)
  loc_1B4058D:         var_14C = var_BC.Text
  loc_1B405CB:         var_FC = 0
  loc_1B4060D:         var_210 = "SELECT Amount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1E) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B40616:         unk_58616C.Execute var_210, var_EC, -1
  loc_1B4061E:         var_160 = var_160.Fields
  loc_1B40626:         var_FC = var_164.Item(var_164)
  loc_1B40688:         Set var_204 = Me.TxtGt2
  loc_1B4068E:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B40696:         var_208.Text = var_1F4
  loc_1B406E6:         Set var_A4 = Me.Txt
  loc_1B406EC:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110)
  loc_1B406F4:         var_14C = var_BC.Text
  loc_1B40732:         var_FC = 0
  loc_1B40774:         var_210 = "SELECT BaseAmount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1E) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B4077D:         unk_58616C.Execute var_210, var_EC, -1
  loc_1B40785:         var_160 = var_160.Fields
  loc_1B4078D:         var_FC = var_164.Item(var_164)
  loc_1B407EF:         Set var_204 = Me.LblDummy2
  loc_1B407F5:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B407FD:         var_208.Caption = var_1F4
  loc_1B4084D:         Set var_A4 = Me.Txt
  loc_1B40853:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110)
  loc_1B4085B:         var_14C = var_BC.Text
  loc_1B40899:         var_FC = 0
  loc_1B408DB:         var_210 = "SELECT Amount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1F) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B408E4:         unk_58616C.Execute var_210, var_EC, -1
  loc_1B408EC:         var_160 = var_160.Fields
  loc_1B408F4:         var_FC = var_164.Item(var_164)
  loc_1B40956:         Set var_204 = Me.TxtGt3
  loc_1B4095C:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B40964:         var_208.Text = var_1F4
  loc_1B409B4:         Set var_A4 = Me.Txt
  loc_1B409BA:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(2), var_BC, var_110)
  loc_1B409C2:         var_14C = var_BC.Text
  loc_1B409D9:         var_134 = var_88.Fields
  loc_1B409E1:         var_13C = var_134.Item("SNo")
  loc_1B409FA:         var_14C = Val(CStr(var_13C.Value))
  loc_1B40A00:         var_FC = 0
  loc_1B40A42:         var_210 = "SELECT BaseAmount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1F) & " AND SNo=" & CStr(var_14C)
  loc_1B40A4B:         unk_58616C.Execute var_210, var_EC, -1
  loc_1B40A53:         var_160 = var_160.Fields
  loc_1B40A5B:         var_FC = var_164.Item(var_164)
  loc_1B40A96:         var_130 = "0.00"
  loc_1B40A9F:         var_10C = CVar(var_1F4) 'Address
  loc_1B40ABD:         Set var_204 = Me.LblDummy3
  loc_1B40AC3:         Call 0.Method_Proc_162_89_1B40DBC0 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(var_10C, var_130)), 1, 1)
  loc_1B40ACB:         var_208.Caption = var_1F4
  loc_1B40B0D:       End If
  loc_1B40B10:       var_88.MoveNext
  loc_1B40B15:       GoTo loc_1B3EA01
  loc_1B40B18:     End If
  loc_1B40B23:     Set var_A4 = Me.LblCap1
  loc_1B40B29:     Call 0.Method_Proc_162_89_1B40DBC0 (1, var_BC, &HFF)
  loc_1B40B31:     var_BC.FontBold = var_14C
  loc_1B40B49:     Set var_A4 = Me.LblCap1
  loc_1B40B4F:     Call 0.Method_Proc_162_89_1B40DBCC (var_15A, var_134, &HFF)
  loc_1B40B5B:     Set var_BC = Me.LblCap1
  loc_1B40B61:     Call 0.Method_Proc_162_89_1B40DBC0 (var_15A, var_14C)
  loc_1B40B69:     var_134.FontBold = var_13C
  loc_1B40B82:     Set var_A4 = Me.TxtGt1
  loc_1B40B88:     Call 0.Method_Proc_162_89_1B40DBC0 (1, var_BC)
  loc_1B40B90:     var_BC.FontBold = True
  loc_1B40BA8:     Set var_A4 = Me.TxtGt1
  loc_1B40BAE:     Call 0.Method_Proc_162_89_1B40DBCC (var_15A, var_134)
  loc_1B40BBA:     Set var_BC = Me.TxtGt1
  loc_1B40BC0:     Call 0.Method_Proc_162_89_1B40DBC0 (var_15A)
  loc_1B40BC8:     var_134.FontBold = True
  loc_1B40BE1:     Set var_A4 = Me.LblCap2
  loc_1B40BE7:     Call 0.Method_Proc_162_89_1B40DBC0 (1, var_BC)
  loc_1B40BEF:     var_BC.FontBold = True
  loc_1B40C07:     Set var_A4 = Me.LblCap2
  loc_1B40C0D:     Call 0.Method_Proc_162_89_1B40DBCC (var_15A, var_134)
  loc_1B40C19:     Set var_BC = Me.LblCap2
  loc_1B40C1F:     Call 0.Method_Proc_162_89_1B40DBC0 (var_15A)
  loc_1B40C27:     var_134.FontBold = True
  loc_1B40C40:     Set var_A4 = Me.TxtGt2
  loc_1B40C46:     Call 0.Method_Proc_162_89_1B40DBC0 (1, var_BC)
  loc_1B40C4E:     var_BC.FontBold = True
  loc_1B40C66:     Set var_A4 = Me.TxtGt2
  loc_1B40C6C:     Call 0.Method_Proc_162_89_1B40DBCC (var_15A, var_134)
  loc_1B40C78:     Set var_BC = Me.TxtGt2
  loc_1B40C7E:     Call 0.Method_Proc_162_89_1B40DBC0 (var_15A)
  loc_1B40C86:     var_134.FontBold = True
  loc_1B40C9F:     Set var_A4 = Me.LblCap3
  loc_1B40CA5:     Call 0.Method_Proc_162_89_1B40DBC0 (1, var_BC)
  loc_1B40CAD:     var_BC.FontBold = True
  loc_1B40CC5:     Set var_A4 = Me.LblCap3
  loc_1B40CCB:     Call 0.Method_Proc_162_89_1B40DBCC (var_15A, var_134)
  loc_1B40CD7:     Set var_BC = Me.LblCap3
  loc_1B40CDD:     Call 0.Method_Proc_162_89_1B40DBC0 (var_15A)
  loc_1B40CE5:     var_134.FontBold = True
  loc_1B40CFE:     Set var_A4 = Me.TxtGt3
  loc_1B40D04:     Call 0.Method_Proc_162_89_1B40DBC0 (1, var_BC)
  loc_1B40D0C:     var_BC.FontBold = True
  loc_1B40D24:     Set var_A4 = Me.TxtGt3
  loc_1B40D2A:     Call 0.Method_Proc_162_89_1B40DBCC (var_15A, var_134)
  loc_1B40D36:     Set var_BC = Me.TxtGt3
  loc_1B40D3C:     Call 0.Method_Proc_162_89_1B40DBC0 (var_15A)
  loc_1B40D44:     var_134.FontBold = True
  loc_1B40D52:   End If
  loc_1B40D52: End If
  loc_1B40D57: Set var_88 = Nothing
  loc_1B40D5F: Set var_94 = Nothing
  loc_1B40D66: Exit Sub
  loc_1B40D67: ' Referenced from: 1B3C2A0
  loc_1B40D6F: Set var_A4 = Err()
  loc_1B40D75: Call 0.Method_arg_1C (var_A8)
  loc_1B40D86: If (var_A8 = &HBCD) Then
  loc_1B40DA2:   MsgBox("Record is Deleted by somebody", &H40, var_EC, var_10C, var_130)
  loc_1B40DB2:   Exit Sub
  loc_1B40DB3: End If
  loc_1B40DB3: Proc_6_60_E62BC4()
  loc_1B40DB8: Exit Sub
End Sub

Public Sub Proc_162_90_110AF10
  'Data Table: 586140
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_58616C As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_110ABF1: Set var_9C = Me.TopCtrl1
  loc_110ABF7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_110ABFF: var_B0 = CStr()
  loc_110AC10: If (var_B0 = "Add") Then
  loc_110AC40:   Set var_9C = Me.Txt
  loc_110AC46:   Call 0.Method_Proc_162_90_110AF100 (CInt(2), var_B4, var_B0, "Select Count(*) From Sale1 Where DocID='", var_AC, -1)
  loc_110AC67:   unk_58616C.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_110AC77:    = var_D4.Item()
  loc_110AC7F:    = var_E8.Value
  loc_110ACAC:   If (var_B4.Text.Fields > 0) Then
  loc_110ACB5:     Call 0.Method_arg_50 (var_B0)
  loc_110ACD6:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_110ACEC:     Call Proc_162_95_10E8FB8(MemVar_1F92044)
  loc_110ACFF:     Set var_9C = Me.Txt
  loc_110AD05:     Call 0.Method_Proc_162_90_110AF100 (CInt(2), var_B4)
  loc_110AD0D:     var_B4.Text = var_B0
  loc_110AD21:     Proc_162_90_110AF10 = 0
  loc_110AD27:   End If
  loc_110AD27: End If
  loc_110AD4C: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_110AD56:   var_CC = CVar(CLng(var_88)) 'Long
  loc_110AD5E:   var_108 = CVar(CLng(4)) 'Long
  loc_110AD7E:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_110AD9A:   If CBool(var_118 <> vbNullString) Then
  loc_110ADA1:     var_CC = CVar(CLng(var_88)) 'Long
  loc_110ADA9:     var_108 = CVar(CLng(7)) 'Long
  loc_110ADD9:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_110AE01:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_110AE27:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_110AE33:       Set var_9C = Me.FGrid
  loc_110AE49:       Proc_162_90_110AF10 = 0
  loc_110AE4F:     End If
  loc_110AE53:     var_CC = CVar(CLng(var_88)) 'Long
  loc_110AE5B:     var_108 = CVar(CLng(8)) 'Long
  loc_110AE8B:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_110AEB3:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_110AED9:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_110AEE5:       Set var_9C = Me.FGrid
  loc_110AEFB:       Proc_162_90_110AF10 = 0
  loc_110AF01:     End If
  loc_110AF01:   End If
  loc_110AF04: Next var_12C 'Integer
  loc_110AF09: Proc_162_90_110AF10 = 
End Sub

Public Sub Proc_162_91_10AAA18
  'Data Table: 586140
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_10AA74D: Me.LblVPrefix.Caption = vbNullString
  loc_10AA763: Set var_8C = Me.Txt
  loc_10AA769: Call 0.Method_Proc_162_91_10AAA18C (var_8E, var_86)
  loc_10AA779: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10AA78F:   Set var_8C = Me.Txt
  loc_10AA795:   Call 0.Method_Proc_162_91_10AAA180 (CInt(var_86), var_98)
  loc_10AA79D:   var_98.Text = vbNullString
  loc_10AA7B9:   Set var_8C = Me.Txt
  loc_10AA7BF:   Call 0.Method_Proc_162_91_10AAA180 (CInt(var_86), var_98)
  loc_10AA7C7:   var_98.Tag = vbNullString
  loc_10AA7D6: Next var_92 'Byte
  loc_10AA7EF: Me.FGrid.Rows = 1
  loc_10AA804: Me.lblTable.Caption = vbNullString
  loc_10AA82A: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_10AA832: Set var_98 = Me.FGrid
  loc_10AA84C: var_A8 = 1
  loc_10AA858: var_DC = CVar(CLng(1)) 'Long
  loc_10AA86B: Set var_8C = Me.FGrid
  loc_10AA871: LateIdCallSt
  loc_10AA87C: var_A8 = 1
  loc_10AA888: var_DC = CVar(CLng(2)) 'Long
  loc_10AA89B: Set var_8C = Me.FGrid
  loc_10AA8A1: LateIdCallSt
  loc_10AA8AC: var_A8 = 1
  loc_10AA8BF: Me.FGrid.FixedRows = var_A8
  loc_10AA8DB: Call 0.Method_Proc_162_91_10AAA18C (var_8E, var_86, CByte(1), Me.TxtPer, global_216, var_DC, var_A8)
  loc_10AA8E8: For var_100 = global_220 To CByte(var_8E): var_8C = var_100 'Byte
  loc_10AA8FE:   Set var_8C = Me.TxtPer
  loc_10AA904:   Call 0.Method_Proc_162_91_10AAA180 (CInt(var_86), var_98, vbNullString, global_220, var_DC)
  loc_10AA90C:   var_98.Text = var_A8
  loc_10AA91B: Next var_100 'Byte
  loc_10AA92F: Set var_8C = Me.TxtGt
  loc_10AA935: Call 0.Method_Proc_162_91_10AAA18C (var_8E, var_86)
  loc_10AA942: For var_104 =  To CByte(var_8E): CByte(1) = var_104 'Byte
  loc_10AA958:   Set var_8C = Me.TxtGt
  loc_10AA95E:   Call 0.Method_Proc_162_91_10AAA180 (CInt(var_86), var_98)
  loc_10AA966:   var_98.Text = vbNullString
  loc_10AA975: Next var_104 'Byte
  loc_10AA989: Set var_8C = Me.Txt
  loc_10AA98F: Call 0.Method_Proc_162_91_10AAA180 (CInt(5), var_98)
  loc_10AA997: var_98.Text = "00:00"
  loc_10AA9B1: Set var_8C = Me.Txt
  loc_10AA9B7: Call 0.Method_Proc_162_91_10AAA180 (CInt(5), var_98)
  loc_10AA9BF: var_98.Tag = vbNullString
  loc_10AA9DD: Set var_8C = Me.Txt
  loc_10AA9E3: Call 0.Method_Proc_162_91_10AAA180 (CInt(4), var_98)
  loc_10AA9EB: var_98.Text = CStr(1)
  loc_10AAA0D: Me.FGCat.Rows = 0
  loc_10AAA15: Exit Sub
  loc_10AAA16: var_3701 = 
End Sub

Public Sub Proc_162_92_100626C(arg_C) '100626C
  'Data Table: 586140
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_1006062: Set var_8C = Me.Txt
  loc_1006068: Call 0.Method_Proc_162_92_100626CC (var_8E, var_86)
  loc_1006078: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_100608E:   Set var_8C = Me.Txt
  loc_1006094:   Call 0.Method_Proc_162_92_100626C0 (CInt(var_86), var_98)
  loc_100609C:   var_98.Enabled = arg_C
  loc_10060AB: Next var_92 'Byte
  loc_10060BF: Set var_8C = Me.TxtPer
  loc_10060C5: Call 0.Method_Proc_162_92_100626CC (var_8E, var_86)
  loc_10060D2: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_10060E8:   Set var_8C = Me.TxtPer
  loc_10060EE:   Call 0.Method_Proc_162_92_100626C0 (CInt(var_86), var_98)
  loc_10060F6:   var_98.Enabled = arg_C
  loc_1006105: Next var_9C 'Byte
  loc_1006119: Set var_8C = Me.TxtGt
  loc_100611F: Call 0.Method_Proc_162_92_100626CC (var_8E, var_86)
  loc_100612C: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_1006142:   Set var_8C = Me.TxtGt
  loc_1006148:   Call 0.Method_Proc_162_92_100626C0 (CInt(var_86), var_98)
  loc_1006150:   var_98.Enabled = arg_C
  loc_100615F: Next var_A0 'Byte
  loc_1006172: Set var_8C = Me.Txt
  loc_1006178: Call 0.Method_Proc_162_92_100626C0 (CInt(2), var_98)
  loc_1006180: var_98.Enabled = False
  loc_1006199: Set var_8C = Me.Txt
  loc_100619F: Call 0.Method_Proc_162_92_100626C0 (CInt(5), var_98)
  loc_10061A7: var_98.Enabled = False
  loc_10061C0: Set var_8C = Me.Txt
  loc_10061C6: Call 0.Method_Proc_162_92_100626C0 (CInt(1), var_98)
  loc_10061CE: var_98.Enabled = False
  loc_10061E7: Set var_8C = Me.Txt
  loc_10061ED: Call 0.Method_Proc_162_92_100626C0 (CInt(0), var_98)
  loc_10061F5: var_98.Enabled = False
  loc_100620E: Set var_8C = Me.Txt
  loc_1006214: Call 0.Method_Proc_162_92_100626C0 (CInt(8), var_98)
  loc_100621C: var_98.Enabled = False
  loc_1006236: Me.Command1.Enabled = Not(arg_C)
  loc_100624C: Me.Command2.Enabled = Not(arg_C)
  loc_1006261: Me.CmdSave.Enabled = arg_C
  loc_1006269: Exit Sub
End Sub

Public Sub Proc_162_93_EF7914
  'Data Table: 586140
  loc_EF7854: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF7866:   Me.DGItem.Visible = False
  loc_EF786E: End If
  loc_EF788A: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF789C:   Me.DGTable.Visible = False
  loc_EF78A4: End If
  loc_EF78C0: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF78D2:   Me.DGRest.Visible = False
  loc_EF78DA: End If
  loc_EF78F6: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF7908:   Me.FGPoint.Visible = False
  loc_EF7910: End If
  loc_EF7910: Exit Sub
  loc_EF7911: var_A0 = 
End Sub

Public Sub Proc_162_94_F0BB08
  'Data Table: 586140
  loc_F0BA2C: Call Proc_162_93_EF7914()
  loc_F0BA3C: Set var_88 = Me.Txt
  loc_F0BA42: Call 0.Method_Proc_162_94_F0BB080 (CInt(1))
  loc_F0BA6B: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0BA6E:   Exit Sub
  loc_F0BA6F: End If
  loc_F0BA7A: Set var_88 = Me.Txt
  loc_F0BA80: Call 0.Method_Proc_162_94_F0BB080 (CInt(0), var_8C)
  loc_F0BAA9: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0BAAC:   Exit Sub
  loc_F0BAAD: End If
  loc_F0BAE4: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0BAE7:   Call TopCtrl1_UnknownEvent_16()
  loc_F0BAEF: Else
  loc_F0BAF3:   Call 0.Method_arg_1E8 (var_88)
  loc_F0BAFB:   Call var_88.SetFocus
  loc_F0BB04: End If
  loc_F0BB04: Exit Sub
End Sub

Public Sub Proc_162_95_10E8FB8
  'Data Table: 586140
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
  loc_10E8CE0: var_90 = global_144
  loc_10E8CF7: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E8D28: Set var_A8 = Me.Txt
  loc_10E8D2E: Call 0.Method_Proc_162_95_10E8FB80 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E8D3D: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10E8D45: var_EC = -1 & var_CC 
  loc_10E8D59: R.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E8D64: Set var_8C = var_134
  loc_10E8DA0: If (var_8C.RecordCount > 0) Then
  loc_10E8DDF:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E8E13:     global_124 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E8E3E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E8E53:     var_CC = (var_AC.Value + 1)
  loc_10E8E5B:     global_128 = CInt(var_CC)
  loc_10E8E6C:   End If
  loc_10E8E6C: End If
  loc_10E8E97: var_BC = Space((5 - Len(var_90)))
  loc_10E8E9F: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E8EB3: var_EC = Space((5 - Len(global_124)))
  loc_10E8EBB: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E8EC8: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_124))
  loc_10E8EE1: var_14C = Space((8 - Len(CStr(global_128))))
  loc_10E8EE9: var_15C = (var_130 + var_14C)
  loc_10E8EF8: var_17C = (var_15C + CVar(CStr(global_128)))
  loc_10E8F03: global_116 = CStr(var_17C)
  loc_10E8F39: Me.LblVPrefix.Caption = global_124
  loc_10E8F52: Set var_A8 = Me.Txt
  loc_10E8F58: Call 0.Method_Proc_162_95_10E8FB80 (CInt(2), var_AC)
  loc_10E8F60: var_AC.Text = global_116
  loc_10E8F82: Set var_A8 = Me.Txt
  loc_10E8F88: Call 0.Method_Proc_162_95_10E8FB80 (CInt(0), var_AC)
  loc_10E8F90: var_AC.Text = CStr(global_128)
  loc_10E8FA5: var_88 = global_116
  loc_10E8FAD: Set var_8C = Nothing
  loc_10E8FB0: Proc_162_95_10E8FB8 = global_128
End Sub

Public Sub Proc_162_96_10B6F58(arg_C, arg_10, arg_14) '10B6F58
  'Data Table: 586140
  Dim unk_58616C As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B6CC6: If (arg_C = "RSBIL") Then
  loc_10B6CED:   unk_58616C.Execute "Select Distinct DocId,V_Type,V_No From Sale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B6CF8:   Set var_8C = var_C4
  loc_10B6D0B:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B6D11: Else
  loc_10B6D16:   Proc_162_96_10B6F58 = &HFF
  loc_10B6D1C: End If
  loc_10B6D30: If (var_8C.RecordCount > 0) Then
  loc_10B6D33:   ' Referenced from: 10B6EAC
  loc_10B6D42:   If Not(var_8C.EOF) Then
  loc_10B6D4D:     If (var_90 = vbNullString) Then
  loc_10B6D90:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B6D97:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B6DC9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B6DEE:     Else
  loc_10B6E2A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B6E4A:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B6E77:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B6E7C:       var_90 = CStr(var_11C)
  loc_10B6EA4:     End If
  loc_10B6EA7:     var_8C.MoveNext
  loc_10B6EAC:     GoTo loc_10B6D33
  loc_10B6EAF:   End If
  loc_10B6EB5:   Call 0.Method_arg_50 (var_138)
  loc_10B6F11:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B6F14:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B6F43:   Set var_8C = Nothing
  loc_10B6F46:   Proc_162_96_10B6F58 = 0
  loc_10B6F4C: End If
  loc_10B6F51: Proc_162_96_10B6F58 = &HFF
End Sub

Public Sub Proc_162_97_FBBC8C
  'Data Table: 586140
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBBB0F: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FBBB14:   var_92 = 4 'Byte
  loc_FBBB18: End If
  loc_FBBB21: Set var_98 = Me.TxtGrid
  loc_FBBB27: Call 0.Method_Proc_162_97_FBBC8C0 (0, var_B0)
  loc_FBBB4A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBBB7E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBBBA2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBBBA5:     GoTo loc_FBBC77
  loc_FBBBA8:   End If
  loc_FBBBAC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBBBD6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBBBE0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBBC15:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBBC39:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBBC52:     Set var_98 = Me.TxtGrid
  loc_FBBC58:     Call 0.Method_Proc_162_97_FBBC8C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FBBC60:     var_B0.SetFocus
  loc_FBBC71:     Proc_162_97_FBBC8C = 0
  loc_FBBC77:     ' Referenced from: FBBBA5
  loc_FBBC77:   End If
  loc_FBBC7A: Next var_D4 'Integer
  loc_FBBC84: Proc_162_97_FBBC8C = &HFF
End Sub

Public Sub Proc_162_98_EAB644(arg_C) 'EAB644
  'Data Table: 586140
  Dim var_8C As Recordset15
  loc_EAB5BE: IStAdFunc
  loc_EAB5C5: Set var_8C = arg_C 
  loc_EAB5ED: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EAB5FD: var_8C.CursorType = 3
  loc_EAB60A: var_8C.LockType = 3
  loc_EAB629: var_8C.Open var_A0, var_B0, -1
  loc_EAB630: Set var_8C = Nothing 
  loc_EAB637: Set var_88 = arg_C 
  loc_EAB63B: Proc_162_98_EAB644 = -1
End Sub

Public Sub Proc_162_99_114AB8C
  'Data Table: 586140
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114A802: Set global_96 = New 
  loc_114A814: Me.Recordset15.CursorLocation = 3
  loc_114A81F: var_90 = global_212
  loc_114A82A: If (var_90 = "Hall") Then
  loc_114A838:   If (global_200 = "Y") Then
  loc_114A85C:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114A86D:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F92044), 3
  loc_114A87B:   Else
  loc_114A89E:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_114A8A3:   End If
  loc_114A8AF:   Set var_8C = Me.Label1
  loc_114A8B5:   Call 0.Method_Proc_162_99_114AB8C0 (2, var_C8, "Hall", 1)
  loc_114A8BD:   var_C8.Caption = -1
  loc_114A8D9:   Set var_8C = Me.DGTable
  loc_114A8EA:   Set var_C8 = DGTable.DispID_69
  loc_114A8F8:   var_C8.Item(1).Caption = "Hall"
  loc_114A90F:   global_148 = "HALL"
  loc_114A919:   global_152 = "HL"
  loc_114A920: Else
  loc_114A928:   If Not (var_90 = "Fast Food") Then
  loc_114A933:     If (var_90 = "Outlet") Then
  loc_114A936:     End If
  loc_114A942:     Set var_8C = Me.Label1
  loc_114A948:     Call 0.Method_Proc_162_99_114AB8C0 (2, var_C8, "Table #")
  loc_114A950:     var_C8.Caption = 1
  loc_114A96C:     Set var_8C = Me.DGTable
  loc_114A97D:     Set var_C8 = DGTable.DispID_69
  loc_114A98B:     var_C8.Item(1).Caption = "Table #"
  loc_114A99F:     var_88 = " Order by Code"
  loc_114A9AD:     If (global_200 = "Y") Then
  loc_114A9D8:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_60 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114A9E9:       var_D8 = var_D0 & global_60 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND DELFLAG='N' AND NCKOT<>'Y') "
  loc_114A9FA:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F92044), 3
  loc_114AA10:     Else
  loc_114AA3F:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_60 & "' " & var_88) 'String
  loc_114AA49:       Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_114AA58:     End If
  loc_114AA5E:     global_148 = "REST"
  loc_114AA68:     global_152 = "TB"
  loc_114AA6F:   Else
  loc_114AA77:     If (var_90 = "Room Service") Then
  loc_114AA86:       Set var_8C = Me.Label1
  loc_114AA8C:       Call 0.Method_Proc_162_99_114AB8C0 (2, var_C8, "Room #", 1)
  loc_114AA94:       var_C8.Caption = -1
  loc_114AAB0:       Set var_8C = Me.DGTable
  loc_114AACF:       DGTable.DispID_69.Item(1).Caption = "Room #"
  loc_114AAEB:       If (global_200 = "Y") Then
  loc_114AB0F:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114AB16:         var_A4 = CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG is NULL) AND NCKOT<>'Y') Order by RC.roomno") 'String
  loc_114AB20:         Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_114AB2E:       Else
  loc_114AB45:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114AB51:         Me.Open var_B4, CVar(MemVar_1F92044), 3
  loc_114AB56:       End If
  loc_114AB5C:       global_152 = "RO"
  loc_114AB60:     End If
  loc_114AB60:   End If
  loc_114AB60: End If
  loc_114AB69: CVarUnk
  loc_114AB6E: VerifyVarObj
  loc_114AB74: Set var_8C = Me.DGTable
  loc_114AB7A: LateIdStAd
  loc_114AB88: Exit Sub
  loc_114AB89: DOC
End Sub

Public Sub Proc_162_100_17EF080(arg_C) '17EF080
  'Data Table: 586140
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As String
  Dim var_DC As Variant
  Dim unk_58616C As Connection15
  Dim var_90 As Variant
  Dim var_E0 As Variant
  Dim var_130 As Variant
  Dim var_170 As Integer
  Dim var_134 As String
  Dim var_15C As Variant
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_88 As Recordset15
  Dim var_158 As Boolean
  Dim var_23C As Variant
  Dim var_F0 As Variant
  Dim var_24C As TextBox
  Dim var_A8 As Variant
  loc_17ECEE4: Set var_90 = Me.TxtGt
  loc_17ECEEA: Call 0.Method_Proc_162_100_17EF0800 (1, var_94)
  loc_17ECEF2: var_96 = var_94.TabIndex
  loc_17ECEFA: var_8A = var_96
  loc_17ECF08: Set var_90 = Me.TopCtrl1
  loc_17ECF0E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_17ECF27: If (CStr() = "Add") Then
  loc_17ECF36:   Set var_90 = Me.TxtPer
  loc_17ECF3C:   Call 0.Method_Proc_162_100_17EF080C (var_96, var_8C)
  loc_17ECF47:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_17ECF59:     Set var_90 = Me.TxtPer
  loc_17ECF5F:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ECF67:     var_94.Visible = False
  loc_17ECF76:   Next var_B0 'Integer
  loc_17ECF87:   Set var_90 = Me.TxtGt
  loc_17ECF8D:   Call 0.Method_Proc_162_100_17EF080C (var_96, var_8C)
  loc_17ECF98:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_17ECFAA:     Set var_90 = Me.TxtGt
  loc_17ECFB0:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ECFB8:     var_94.Visible = False
  loc_17ECFC7:   Next var_B4 'Integer
  loc_17ECFD8:   Set var_90 = Me.LblCap
  loc_17ECFDE:   Call 0.Method_Proc_162_100_17EF080C (var_96, var_8C)
  loc_17ECFE9:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_17ECFFB:     Set var_90 = Me.LblCap
  loc_17ED001:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ED009:     var_94.Visible = False
  loc_17ED018:   Next var_B8 'Integer
  loc_17ED01D: End If
  loc_17ED021: Set var_90 = Me.TopCtrl1
  loc_17ED027: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17ED040: If (CStr() <> "Browse") Then
  loc_17ED05B:   var_DC = 0
  loc_17ED07B:   var_AC = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17ED08B:   unk_58616C.Execute CStr() & "'", var_A8, -1
  loc_17ED093:   var_90 = var_90.Fields
  loc_17ED09B:   var_DC = var_94.Item(var_94)
  loc_17ED0A3:   var_E0 = var_E0.Value
  loc_17ED0BE:   var_170 = 0
  loc_17ED0DE:   var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17ED0EE:   unk_58616C.Execute var_134 & "'", var_158, -1
  loc_17ED0F6:   var_15C = var_15C.Fields
  loc_17ED0FE:   var_170 = var_160.Item(var_160)
  loc_17ED106:   var_174 = var_174.Value
  loc_17ED126:   Proc_6_7_F25D88(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate<=", var_F0 & var_F0 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17ED145:   unk_58616C.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17ED150:   Set var_88 = var_22C
  loc_17ED18F: Else
  loc_17ED193:   Set var_90 = Me.TopCtrl1
  loc_17ED199:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_22C)
  loc_17ED1B2:   If (CStr() = "Browse") Then
  loc_17ED1CD:     var_DC = 0
  loc_17ED1ED:     var_AC = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17ED1FD:     unk_58616C.Execute CStr() & "'", var_A8, -1
  loc_17ED205:     var_90 = var_90.Fields
  loc_17ED20D:     var_DC = var_94.Item(var_94)
  loc_17ED215:     var_E0 = var_E0.Value
  loc_17ED230:     var_170 = 0
  loc_17ED250:     var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17ED260:     unk_58616C.Execute var_134 & "'", var_158, -1
  loc_17ED268:     var_15C = var_15C.Fields
  loc_17ED270:     var_170 = var_160.Item(var_160)
  loc_17ED278:     var_174 = var_174.Value
  loc_17ED298:     Proc_6_7_F25D88(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate=", var_F0 & var_F0 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17ED2B7:     unk_58616C.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17ED2C2:     Set var_88 = var_22C
  loc_17ED2FE:   End If
  loc_17ED2FE: End If
  loc_17ED305: Set var_90 = Me.LblCap
  loc_17ED30B: Call 0.Method_Proc_162_100_17EF0808 (var_96)
  loc_17ED33B: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_17ED35D:   Set var_90 = Me.LblCap
  loc_17ED363:   Call 0.Method_Proc_162_100_17EF0808 (var_96, var_8C)
  loc_17ED36E:   For var_238 = var_22C To var_96: CInt((var_88.RecordCount + 1)) = var_238 'Integer
  loc_17ED37E:     Set var_90 = Me.LblCap
  loc_17ED384:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ED395:     Me.LblCap.Unload var_94
  loc_17ED3AB:     Set var_90 = Me.LblDummy
  loc_17ED3B1:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ED3C2:     Me.LblDummy.Unload var_94
  loc_17ED3D8:     Set var_90 = Me.LblAt
  loc_17ED3DE:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ED3EF:     Me.LblAt.Unload var_94
  loc_17ED405:     Set var_90 = Me.TxtPer
  loc_17ED40B:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ED41C:     Me.TxtPer.Unload var_94
  loc_17ED432:     Set var_90 = Me.TxtGt
  loc_17ED438:     Call 0.Method_Proc_162_100_17EF0800 (var_8C, var_94)
  loc_17ED449:     Me.TxtGt.Unload var_94
  loc_17ED458:   Next var_238 'Integer
  loc_17ED45D: End If
  loc_17ED471: If (var_88.RecordCount > 0) Then
  loc_17ED4AD:   Set var_E0 = Me.Txt
  loc_17ED4B3:   Call 0.Method_Proc_162_100_17EF0800 (CInt(9), var_15C)
  loc_17ED4BB:   var_15C.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17ED4D1:   ' Referenced from: 17EEFE3
  loc_17ED4D7:   var_96 = var_88.EOF
  loc_17ED4E0:   If Not(var_96) Then
  loc_17ED51F:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17ED553:       Set var_E0 = Me.LblDummy
  loc_17ED559:       Call 0.Method_Proc_162_100_17EF0808 (var_96)
  loc_17ED573:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17ED5A8:         Set var_E0 = Me.LblDummy
  loc_17ED5AE:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17ED5BF:         Me.LblDummy.Load var_15C
  loc_17ED5D2:       End If
  loc_17ED61D:       var_15C = var_88.Fields.Item("SNo")
  loc_17ED632:       Set var_160 = Me.LblDummy
  loc_17ED638:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_15C.Value), var_174)
  loc_17ED640:       var_174.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17ED68F:       Set var_E0 = Me.TxtPer
  loc_17ED695:       Call 0.Method_Proc_162_100_17EF0808 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17ED6AF:       If (var_15C > CVar(var_96)) Then
  loc_17ED6E4:         Set var_E0 = Me.TxtPer
  loc_17ED6EA:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17ED6FB:         Me.TxtPer.Load var_15C
  loc_17ED70E:       End If
  loc_17ED746:       Set var_E0 = Me.TxtPer
  loc_17ED74C:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED754:       var_15C.TabIndex = (var_8A + 1)
  loc_17ED76D:       var_8A = (var_8A + 1)
  loc_17ED7B1:       var_15C = var_88.Fields.Item("SNo")
  loc_17ED7F1:       Set var_160 = Me.TxtPer
  loc_17ED7F7:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_15C.Value), var_174, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17ED7FF:       var_174.Visible = var_8A
  loc_17ED85E:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17ED8BD:         var_130 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17ED8C6:         Set var_22C = Me.TxtPer
  loc_17ED8CC:         Call 0.Method_Proc_162_100_17EF0800 (CInt(True), var_23C)
  loc_17ED90E:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17ED917:         Set var_E0 = Me.TxtPer
  loc_17ED91D:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17ED941:         Set var_248 = Me.TxtPer
  loc_17ED947:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_24C)
  loc_17ED94F:         var_24C.Top = ((var_15C.Top + var_23C.Height) + CDbl(&HF))
  loc_17ED978:       End If
  loc_17ED9B4:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17EDA13:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17EDA1C:         Set var_E0 = Me.TxtPer
  loc_17EDA22:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17EDA3D:         Set var_22C = Me.TxtPer
  loc_17EDA43:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17EDA4B:         var_23C.Left = var_15C.Left
  loc_17EDA6A:       End If
  loc_17EDA6E:       Set var_90 = Me.TopCtrl1
  loc_17EDA74:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_15C)
  loc_17EDA8D:       If (CStr() = "Add") Then
  loc_17EDAED:         var_174 = var_88.Fields.Item("SNo")
  loc_17EDB3A:         Set var_22C = Me.TxtPer
  loc_17EDB40:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_174.Value), var_23C)
  loc_17EDB48:         var_23C.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17EDB70:       End If
  loc_17EDBBB:       var_15C = var_88.Fields.Item("SNo")
  loc_17EDBD0:       Set var_160 = Me.TxtPer
  loc_17EDBD6:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_15C.Value), var_174)
  loc_17EDBDE:       var_174.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17EDC35:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EDC6C:         Set var_E0 = Me.TxtPer
  loc_17EDC72:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDC7A:         var_15C.FontBold = True
  loc_17EDC90:       Else
  loc_17EDCC4:         Set var_E0 = Me.TxtPer
  loc_17EDCCA:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDCD2:         var_15C.FontBold = False
  loc_17EDCE5:       End If
  loc_17EDD1E:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EDD55:         Set var_E0 = Me.TxtPer
  loc_17EDD5B:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDD63:         var_15C.Enabled = False
  loc_17EDD79:       Else
  loc_17EDDAD:         Set var_E0 = Me.TxtPer
  loc_17EDDB3:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDDBB:         var_15C.Enabled = True
  loc_17EDDCE:       End If
  loc_17EDE02:       Set var_E0 = Me.TxtPer
  loc_17EDE08:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDE10:       var_15C.Enabled = False
  loc_17EDE5F:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17EDE96:         Set var_E0 = Me.TxtPer
  loc_17EDE9C:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDEA4:         var_15C.Enabled = False
  loc_17EDEB7:       End If
  loc_17EDEE8:       Set var_E0 = Me.LblCap
  loc_17EDEEE:       Call 0.Method_Proc_162_100_17EF0808 (var_96)
  loc_17EDF08:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17EDF3D:         Set var_E0 = Me.LblCap
  loc_17EDF43:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17EDF54:         Me.LblCap.Load var_15C
  loc_17EDF67:       End If
  loc_17EDF9B:       Set var_E0 = Me.LblCap
  loc_17EDFA1:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDFA9:       var_15C.Visible = True
  loc_17EE018:       Set var_E0 = Me.TxtPer
  loc_17EE01E:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE039:       Set var_22C = Me.LblCap
  loc_17EE03F:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17EE047:       var_23C.Top = var_15C.Top
  loc_17EE0A2:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17EE0E6:         var_174 = var_88.Fields.Item("SNo")
  loc_17EE101:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17EE10A:         Set var_E0 = Me.LblCap
  loc_17EE110:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE12B:         Set var_22C = Me.LblCap
  loc_17EE131:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_174.Value), var_23C)
  loc_17EE139:         var_23C.Left = var_15C.Left
  loc_17EE158:       End If
  loc_17EE1B8:       Set var_160 = Me.LblCap
  loc_17EE1BE:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_174)
  loc_17EE1C6:       var_174.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17EE22F:       var_15C = var_88.Fields.Item("SNo")
  loc_17EE244:       Set var_160 = Me.LblCap
  loc_17EE24A:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_15C.Value), var_174)
  loc_17EE252:       var_174.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17EE2A9:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EE2E0:         Set var_E0 = Me.LblCap
  loc_17EE2E6:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE2EE:         var_15C.FontBold = True
  loc_17EE304:       Else
  loc_17EE338:         Set var_E0 = Me.LblCap
  loc_17EE33E:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE346:         var_15C.FontBold = False
  loc_17EE359:       End If
  loc_17EE38A:       Set var_E0 = Me.LblAt
  loc_17EE390:       Call 0.Method_Proc_162_100_17EF0808 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17EE3AA:       If (var_15C > CVar(var_96)) Then
  loc_17EE3DF:         Set var_E0 = Me.LblAt
  loc_17EE3E5:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17EE3F6:         Me.LblAt.Load var_15C
  loc_17EE409:       End If
  loc_17EE44A:       var_15C = var_88.Fields.Item("SNo")
  loc_17EE48A:       Set var_160 = Me.LblAt
  loc_17EE490:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_15C.Value), var_174)
  loc_17EE498:       var_174.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17EE4FC:       var_174 = var_88.Fields.Item("SNo")
  loc_17EE517:       Set var_E0 = Me.TxtPer
  loc_17EE51D:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE538:       Set var_22C = Me.LblAt
  loc_17EE53E:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_174.Value), var_23C)
  loc_17EE546:       var_23C.Top = var_15C.Top
  loc_17EE59E:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EE5D5:         Set var_E0 = Me.LblAt
  loc_17EE5DB:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE5E3:         var_15C.FontBold = True
  loc_17EE5F9:       Else
  loc_17EE62D:         Set var_E0 = Me.LblAt
  loc_17EE633:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE63B:         var_15C.FontBold = False
  loc_17EE64E:       End If
  loc_17EE699:       var_15C = var_88.Fields.Item("SNo")
  loc_17EE6AE:       Set var_160 = Me.LblAt
  loc_17EE6B4:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_15C.Value), var_174)
  loc_17EE6BC:       var_174.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17EE716:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17EE775:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17EE77E:         Set var_E0 = Me.LblAt
  loc_17EE784:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("RoundOff").Value), var_15C)
  loc_17EE79F:         Set var_22C = Me.LblAt
  loc_17EE7A5:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17EE7AD:         var_23C.Left = var_15C.Left
  loc_17EE7CC:       End If
  loc_17EE7FD:       Set var_E0 = Me.TxtGt
  loc_17EE803:       Call 0.Method_Proc_162_100_17EF0808 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17EE81D:       If (var_15C > CVar(var_96)) Then
  loc_17EE852:         Set var_E0 = Me.TxtGt
  loc_17EE858:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17EE869:         Me.TxtGt.Load var_15C
  loc_17EE87C:       End If
  loc_17EE8B4:       Set var_E0 = Me.TxtGt
  loc_17EE8BA:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE8C2:       var_15C.TabIndex = (var_8A + 1)
  loc_17EE8DB:       var_8A = (var_8A + 1)
  loc_17EE912:       Set var_E0 = Me.TxtGt
  loc_17EE918:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C, &HFF)
  loc_17EE920:       var_15C.Visible = var_8A
  loc_17EE98F:       Set var_E0 = Me.TxtPer
  loc_17EE995:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EE9B0:       Set var_22C = Me.TxtGt
  loc_17EE9B6:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17EE9BE:       var_23C.Top = var_15C.Top
  loc_17EEA19:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17EEA78:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17EEA81:         Set var_E0 = Me.TxtGt
  loc_17EEA87:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EEAA2:         Set var_22C = Me.TxtGt
  loc_17EEAA8:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17EEAB0:         var_23C.Left = var_15C.Left
  loc_17EEACF:       End If
  loc_17EEAD3:       Set var_90 = Me.TopCtrl1
  loc_17EEAD9:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_15C)
  loc_17EEAF2:       If (CStr() = "Add") Then
  loc_17EEB52:         var_174 = var_88.Fields.Item("SNo")
  loc_17EEB9F:         Set var_22C = Me.TxtGt
  loc_17EEBA5:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_174.Value), var_23C)
  loc_17EEBAD:         var_23C.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17EEBD5:       End If
  loc_17EEC1D:       var_15C = var_88.Fields.Item("SNo")
  loc_17EEC32:       Set var_160 = Me.TxtGt
  loc_17EEC38:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_15C.Value), var_174)
  loc_17EEC40:       var_174.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17EEC95:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EECCC:         Set var_E0 = Me.TxtGt
  loc_17EECD2:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EECDA:         var_15C.FontBold = True
  loc_17EECF0:       Else
  loc_17EED24:         Set var_E0 = Me.TxtGt
  loc_17EED2A:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EED32:         var_15C.FontBold = False
  loc_17EED45:       End If
  loc_17EED7E:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EEDB5:         Set var_E0 = Me.TxtGt
  loc_17EEDBB:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EEDC3:         var_15C.Enabled = False
  loc_17EEDD9:       Else
  loc_17EEE0D:         Set var_E0 = Me.TxtGt
  loc_17EEE13:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EEE1B:         var_15C.Enabled = True
  loc_17EEE2E:       End If
  loc_17EEE63:       Set var_E0 = Me.LblCap
  loc_17EEE69:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EEE9A:       If (var_15C.Tag = MemVar_1F92078 & "ROFF") Then
  loc_17EEED1:         Set var_E0 = Me.TxtGt
  loc_17EEED7:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EEEDF:         var_15C.Enabled = False
  loc_17EEEF2:       End If
  loc_17EEF26:       Set var_E0 = Me.TxtGt
  loc_17EEF2C:       Call 0.Method_Proc_162_100_17EF0800 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EEF34:       var_15C.Enabled = False
  loc_17EEF83:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17EEFA5:         var_94 = var_88.Fields.Item("SNo")
  loc_17EEFBA:         Set var_E0 = Me.TxtGt
  loc_17EEFC0:         Call 0.Method_Proc_162_100_17EF0800 (CInt(var_94.Value), var_15C)
  loc_17EEFC8:         var_15C.Enabled = False
  loc_17EEFDB:       End If
  loc_17EEFDB:     End If
  loc_17EEFDE:     var_88.MoveNext
  loc_17EEFE3:     GoTo loc_17ED4D1
  loc_17EEFE6:   End If
  loc_17EEFE6: End If
  loc_17EEFF7: Set var_90 = Me.Txt
  loc_17EEFFD: Call 0.Method_Proc_162_100_17EF0800 (CInt(6), var_94)
  loc_17EF005: var_94.TabIndex = (var_8A + 1)
  loc_17EF022: Set var_90 = Me.Txt
  loc_17EF028: Call 0.Method_Proc_162_100_17EF0800 (CInt(7), var_94)
  loc_17EF030: var_94.TabIndex = (var_8A + 2)
  loc_17EF04D: Set var_90 = Me.Txt
  loc_17EF053: Call 0.Method_Proc_162_100_17EF0800 (CInt(8), var_94)
  loc_17EF05B: var_94.TabIndex = (var_8A + 3)
  loc_17EF077: Me.Command1.TabIndex = (var_8A + 3)
  loc_17EF07F: Exit Sub
End Sub

Public Sub Proc_162_101_16A66F0(arg_C) '16A66F0
  'Data Table: 586140
  Dim var_BC As Variant
  Dim var_C8 As Variant
  Dim var_D4 As Variant
  Dim var_90 As Double
  Dim var_D8 As String
  Dim unk_58616C As Connection15
  Dim var_C4 As Variant
  Dim var_D0 As Variant
  Dim var_144 As Variant
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_E8 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As String
  Dim var_F8 As Variant
  Dim var_120 As Variant
  Dim Me As Variant
  Dim var_130 As Variant
  Dim var_158 As Variant
  Dim var_AC As Recordset15
  Dim var_29C As Double
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_2A4 As Double
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_2AC As Double
  Dim var_244 As Variant
  Dim var_264 As Variant
  Dim var_168 As Variant
  Dim var_284 As Variant
  Dim var_214 As Variant
  Dim var_9C As Double
  Dim var_2C0 As Double
  Dim var_178 As Variant
  Dim var_88 As Recordset15
  loc_16A4DBC: Set var_B0 = Me.TxtGt
  loc_16A4DC2: Call 0.Method_Proc_162_101_16A66F08 (var_B2, var_92)
  loc_16A4DCD: For var_B6 =  To var_B2: 1 = var_B6 'Integer
  loc_16A4DE0:   Set var_B0 = Me.LblCap
  loc_16A4DE6:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A4E08:   Set var_C4 = Me.TxtGt
  loc_16A4E0E:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C8)
  loc_16A4E36:   Set var_D0 = Me.TxtPer
  loc_16A4E3C:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_D4)
  loc_16A4E6F:   If (((var_BC.Tag = "KADD") And (CDbl(Val(var_C8.Text)) > CDbl(0))) And (CDbl(Val(var_D4.Text)) <= CDbl(0))) Then
  loc_16A4E7F:     Set var_B0 = Me.TxtGt
  loc_16A4E85:     Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A4E9A:     var_90 = Val(var_BC.Text)
  loc_16A4EA7:   End If
  loc_16A4EB4:   Set var_B0 = Me.TxtGt
  loc_16A4EBA:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A4EC2:   var_BC.Text = vbNullString
  loc_16A4EDB:   Set var_B0 = Me.LblCap
  loc_16A4EE1:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A4EE9:   var_C0 = var_BC.Tag
  loc_16A4F0B:   If (var_C0 = MemVar_1F92078 & "DIS") Then
  loc_16A4F13:     var_9E = CByte(var_92) 'Byte
  loc_16A4F17:   End If
  loc_16A4F43:   Set var_B0 = Me.LblCap
  loc_16A4F49:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0, "Select IsNull(Max(Nature),'') from SundryMast where Code='", var_F8, -1)
  loc_16A4F51:   var_C4 = var_BC.Tag
  loc_16A4F6A:   unk_58616C.Execute var_C8 & var_C0 & "'", 0, var_D0
  loc_16A4F72:   var_168 = var_C4.Fields
  loc_16A4F7A:    = var_C8.Item(var_90)
  loc_16A4F82:    = var_D0.Value
  loc_16A4F90:   var_144 = 0
  loc_16A4FBD:   unk_58616C.Execute "Select IsNull(Max(Nature),'') from SundryMast where Code='" & MemVar_1F92078 & "ST'", var_130, -1
  loc_16A4FC5:   var_D4 = var_D4.Fields
  loc_16A4FCD:   var_144 = var_134.Item(var_134)
  loc_16A4FD5:   var_148 = var_148.Value
  loc_16A500A:   If (var_158 = var_158) Then
  loc_16A5012:     var_A0 = CByte(var_92) 'Byte
  loc_16A501C:     global_108 = var_92
  loc_16A501F:   End If
  loc_16A5022: Next var_B6 'Integer
  loc_16A503A: Me.FGCat.Rows = 1
  loc_16A5046: Set var_B0 = Me.TopCtrl1
  loc_16A504C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16A5065: If (CStr() = "Add") Then
  loc_16A5068:   Call Proc_162_109_1314F58()
  loc_16A506D: End If
  loc_16A5079: Set var_B0 = Me.TxtGt
  loc_16A507F: Call 0.Method_Proc_162_101_16A66F08 (var_B2, var_92)
  loc_16A508A: For var_17C =  To var_B2: 2 = var_17C 'Integer
  loc_16A509D:   Set var_B0 = Me.LblCap
  loc_16A50A3:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A50CD:   If (var_BC.Tag = MemVar_1F92078 & "DIS") Then
  loc_16A50DD:     Set var_B0 = Me.TxtGt
  loc_16A50E3:     Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A50EB:     var_BC.Text = vbNullString
  loc_16A5101:     If (var_A0 > var_9E) Then
  loc_16A5129:       For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_180 'Integer
  loc_16A513C:         Set var_B0 = Me.LblCap
  loc_16A5142:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A516C:         If (var_BC.Tag = MemVar_1F92078 & "DIS") Then
  loc_16A5173:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A517B:           var_120 = CVar(CLng(&H13)) 'Long
  loc_16A51A6:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_16A51B4:             If (global_152 = "RO") Then
  loc_16A51F6:               var_130 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_16A51FA:               var_120 = vbNullString
  loc_16A520D:               unk_58616C.Execute CStr(var_130 & var_120), var_168, -1
  loc_16A5218:               Set var_AC = var_C4
  loc_16A5246:               If (var_AC.RecordCount > 0) Then
  loc_16A526F:                 Proc_6_39_E7C810(var_130, CVar(var_AC.Fields.Item("RSDisc")), var_C4)
  loc_16A5289:                 If (var_130 > 0) Then
  loc_16A52C3:                   Proc_6_39_E7C810(var_130, CVar(var_AC.Fields.Item("RSDisc")), CVar(CLng(&HE)), CVar(CLng(var_94)))
  loc_16A52DA:                   LateIdCallSt
  loc_16A5309:                   var_BC = var_AC.Fields.Item("RSDisc")
  loc_16A5318:                   Proc_6_39_E7C810(var_130, CVar(var_BC), Me.FGrid, CVar(CStr(var_130)))
  loc_16A5320:                   var_C0 = CStr(var_130)
  loc_16A532E:                   Set var_C4 = Me.TxtPer
  loc_16A5334:                   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C8, var_C0)
  loc_16A533C:                   var_C8.Text = var_120
  loc_16A5357:                 Else
  loc_16A535B:                   var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A5375:                   Set var_B0 = Me.TxtPer
  loc_16A537B:                   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0, CVar(CLng(&HE)))
  loc_16A5383:                   var_E8 = var_BC.Text
  loc_16A5392:                   var_F8 = CVar(CStr(Val(var_C0))) 'String
  loc_16A539A:                   Set var_C4 = Me.FGrid
  loc_16A53A0:                   LateIdCallSt
  loc_16A53B7:                 End If
  loc_16A53B7:               End If
  loc_16A53BA:             Else
  loc_16A53D8:               Set var_B0 = Me.TxtPer
  loc_16A53DE:               Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0, CVar(CLng(&HE)), CVar(CLng(var_94)))
  loc_16A53E6:               var_C4 = var_BC.Text
  loc_16A53F5:               var_F8 = CVar(CStr(Val(var_C0))) 'String
  loc_16A53FD:               Set var_C4 = Me.FGrid
  loc_16A5403:               LateIdCallSt
  loc_16A541A:             End If
  loc_16A541A:           End If
  loc_16A541A:         End If
  loc_16A541E:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A5426:         var_120 = CVar(CLng(7)) 'Long
  loc_16A544F:         var_194 = CVar(CLng(var_94)) 'Long
  loc_16A5457:         var_1B4 = CVar(CLng(9)) 'Long
  loc_16A5480:         var_1D4 = CVar(CLng(var_94)) 'Long
  loc_16A5488:         var_1F4 = CVar(CLng(&HE)) 'Long
  loc_16A54B1:         var_244 = CVar(CLng(var_94)) 'Long
  loc_16A54B9:         var_264 = CVar(CLng(&HF)) 'Long
  loc_16A54E2:         var_168 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_16A54F2:         var_284 = CVar(CStr(Format(var_168, "0.00"))) 'String
  loc_16A54FA:         Set var_C8 = Me.FGrid
  loc_16A5500:         LateIdCallSt
  loc_16A5531:         var_194 = CVar(CLng(var_94)) 'Long
  loc_16A5539:         var_1B4 = CVar(CLng(7)) 'Long
  loc_16A5562:         var_1D4 = CVar(CLng(var_94)) 'Long
  loc_16A5573:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A557B:         var_120 = CVar(CLng(9)) 'Long
  loc_16A55AB:         Set var_C4 = Me.FGrid
  loc_16A55B1:         LateIdCallSt
  loc_16A55D6:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A55DE:         var_120 = CVar(CLng(&HA)) 'Long
  loc_16A55F8:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A560F:         Set var_BC = Me.LblDummy
  loc_16A5615:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C4, CStr(Val(var_C0)), var_120, var_E8, var_C4, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_16A561D:         var_C4.Caption = var_120
  loc_16A5642:         Set var_B0 = Me.LblCap
  loc_16A5648:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0, var_E8, CVar(CLng(&HA)))
  loc_16A5650:         var_1D4 = var_BC.Tag
  loc_16A5672:         If (var_C0 = MemVar_1F92078 & "DIS") Then
  loc_16A5682:           Set var_B0 = Me.TxtGt
  loc_16A5688:           Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0)
  loc_16A5690:           var_29C = var_BC.Text
  loc_16A56A4:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A56CE:           var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A56ED:           var_130 = CVar((Val(var_C0) + var_2A4)) 'Double
  loc_16A570A:           Set var_C8 = Me.TxtGt
  loc_16A5710:           Call 0.Method_Proc_162_101_16A66F00 (var_92, var_D0, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1, 1, var_2A4)
  loc_16A5718:           var_D0.Text = CVar(CLng(&HF))
  loc_16A573E:         End If
  loc_16A5741:       Next var_180 'Integer
  loc_16A5749:     Else
  loc_16A576E:       For var_2B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_94 = var_2B0 'Integer
  loc_16A5781:         Set var_B0 = Me.LblCap
  loc_16A5787:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A57B1:         If (var_BC.Tag = MemVar_1F92078 & "DIS") Then
  loc_16A57B8:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A57C0:           var_120 = CVar(CLng(&H13)) 'Long
  loc_16A57DA:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A57EB:           If (var_C0 = "Y") Then
  loc_16A57F2:             var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A580C:             Set var_B0 = Me.TxtPer
  loc_16A5812:             Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0, CVar(CLng(&HE)))
  loc_16A581A:             var_E8 = var_BC.Text
  loc_16A5829:             var_F8 = CVar(CStr(Val(var_C0))) 'String
  loc_16A5831:             Set var_C4 = Me.FGrid
  loc_16A5837:             LateIdCallSt
  loc_16A584E:           End If
  loc_16A584E:         End If
  loc_16A588B:         Set var_BC = Me.LblDummy
  loc_16A5891:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C4, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HA)), CVar(CLng(var_94)))
  loc_16A5899:         var_C4.Caption = var_C4
  loc_16A58B5:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A58BD:         var_120 = CVar(CLng(&HA)) 'Long
  loc_16A58D7:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A58E6:         var_194 = CVar(CLng(var_94)) 'Long
  loc_16A58EE:         var_1B4 = CVar(CLng(&HE)) 'Long
  loc_16A58F7:         Set var_BC = Me.FGrid
  loc_16A5910:         var_2A4 = Val(CStr(var_BC.TextMatrix)))
  loc_16A591F:         var_214 = CVar(CLng(&HF)) 'Long
  loc_16A5962:         LateIdCallSt
  loc_16A5996:         Set var_B0 = Me.LblCap
  loc_16A599C:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_C0) * var_2A4) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_16A59A4:         var_214 = var_BC.Tag
  loc_16A59C6:         If (var_C0 = MemVar_1F92078 & "DIS") Then
  loc_16A59D6:           Set var_B0 = Me.TxtGt
  loc_16A59DC:           Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0, CVar(CLng(var_94)), var_2A4)
  loc_16A59E4:           var_1B4 = var_BC.Text
  loc_16A59F1:           var_29C = Val(var_C0)
  loc_16A59F8:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A5A22:           var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A5A41:           var_130 = CVar((var_29C + var_2A4)) 'Double
  loc_16A5A5E:           Set var_C8 = Me.TxtGt
  loc_16A5A64:           Call 0.Method_Proc_162_101_16A66F00 (var_92, var_D0, CStr(Format(var_BC.TextMatrix), "0.00")), 1, 1, var_2A4)
  loc_16A5A6C:           var_D0.Text = CVar(CLng(&HF))
  loc_16A5A92:         End If
  loc_16A5A95:       Next var_2B0 'Integer
  loc_16A5A9A:     End If
  loc_16A5A9D:   Else
  loc_16A5AAA:     Set var_B0 = Me.TxtPer
  loc_16A5AB0:     Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A5AB8:     var_B2 = var_BC.Visible
  loc_16A5ACA:     If (var_B2 = &HFF) Then
  loc_16A5AD3:       Call Proc_162_104_11FB264(var_92)
  loc_16A5ADB:       var_9C = var_29C
  loc_16A5AEB:       Set var_B0 = Me.TxtPer
  loc_16A5AF1:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0)
  loc_16A5AF9:       var_9C = var_BC.Text
  loc_16A5B46:       Set var_C4 = Me.TxtGt
  loc_16A5B4C:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C8, CStr(Format(CVar(((var_9C * Val(var_C0)) / CDbl(&H64))), "0.00")), 1)
  loc_16A5B54:       var_C8.Text = 1
  loc_16A5B81:       Set var_B0 = Me.LblCap
  loc_16A5B87:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0)
  loc_16A5B8F:       var_29C = var_BC.Tag
  loc_16A5BAE:       If ((var_C0 = "KADD") And (var_90 > CDbl(0))) Then
  loc_16A5BE7:         Set var_B0 = Me.TxtGt
  loc_16A5BED:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, CStr(Format(var_90, "0.00")))
  loc_16A5BF5:         var_BC.Text = 1
  loc_16A5C0B:       End If
  loc_16A5C1D:       Set var_B0 = Me.LblDummy
  loc_16A5C23:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, CStr(var_9C))
  loc_16A5C2B:       var_BC.Caption = 1
  loc_16A5C3A:     End If
  loc_16A5C3A:   End If
  loc_16A5C3D: Next var_17C 'Integer
  loc_16A5C67: For var_2B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_2B4 'Integer
  loc_16A5C71:   var_E8 = CVar(CLng(var_92)) 'Long
  loc_16A5C79:   var_120 = CVar(CLng(7)) 'Long
  loc_16A5C93:   var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A5CA2:   var_194 = CVar(CLng(var_92)) 'Long
  loc_16A5CAA:   var_1B4 = CVar(CLng(9)) 'Long
  loc_16A5CB3:   Set var_BC = Me.FGrid
  loc_16A5CD3:   var_1F4 = CVar(CLng(var_92)) 'Long
  loc_16A5CDB:   var_214 = CVar(CLng(&HA)) 'Long
  loc_16A5D1A:   LateIdCallSt
  loc_16A5D4D:   Set var_B0 = Me.TxtGt
  loc_16A5D53:   Call 0.Method_Proc_162_101_16A66F00 (1, var_BC, var_C0, Me.FGrid, CVar(CStr(Format(CVar((Val(var_C0) * Val(CStr(var_BC.TextMatrix))))), "0.00"))), 1, 1)
  loc_16A5D5B:   var_214 = var_BC.Text
  loc_16A5D68:   var_29C = Val(var_C0)
  loc_16A5D99:   var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A5DB8:   var_130 = CVar((var_29C + var_2A4)) 'Double
  loc_16A5DD4:   Set var_C8 = Me.TxtGt
  loc_16A5DDA:   Call 0.Method_Proc_162_101_16A66F00 (1, var_D0, CStr(Format(var_BC.TextMatrix), "0.00")), 1, 1, var_2A4, CVar(CLng(&HA)))
  loc_16A5DE2:   var_D0.Text = CVar(CLng(var_92))
  loc_16A5E0B: Next var_2B4 'Integer
  loc_16A5E23: Me.FGCat.Rows = 1
  loc_16A5E50: For var_2B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_2B8 'Integer
  loc_16A5E60:   If (var_A0 > var_9E) Then
  loc_16A5E67:     var_E8 = CVar(CLng(var_92)) 'Long
  loc_16A5E6F:     var_120 = CVar(CLng(&H18)) 'Long
  loc_16A5E8E:     var_194 = CVar(CLng(var_92)) 'Long
  loc_16A5E96:     var_1B4 = CVar(CLng(9)) 'Long
  loc_16A5EBF:     var_1D4 = CVar(CLng(var_92)) 'Long
  loc_16A5EC7:     var_1F4 = CVar(CLng(7)) 'Long
  loc_16A5F01:     Set var_C8 = Me.FGrid
  loc_16A5F1A:     var_2C0 = Val(CStr(var_C8.TextMatrix)))
  loc_16A5F3D:     var_178 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2C0)) 'Double
  loc_16A5F5C:     Call Proc_162_107_183DB84(CStr(Me.FGrid.TextMatrix)), var_92, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(&HF)), CVar(CLng(var_92)))
  loc_16A5F8B:   Else
  loc_16A5F8F:     var_E8 = CVar(CLng(var_92)) 'Long
  loc_16A5F97:     var_120 = CVar(CLng(&H18)) 'Long
  loc_16A5FB6:     var_194 = CVar(CLng(var_92)) 'Long
  loc_16A5FBE:     var_1B4 = CVar(CLng(9)) 'Long
  loc_16A5FC7:     Set var_BC = Me.FGrid
  loc_16A6011:     var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A604F:     Call Proc_162_107_183DB84(CStr(Me.FGrid.TextMatrix)), var_92, CSng(Format(CVar((Val(CStr(var_BC.TextMatrix))) * var_2AC)), "0.00")), 1, 1, var_2AC, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_16A6075:   End If
  loc_16A6078: Next var_2B8 'Integer
  loc_16A6081: Set var_B0 = Me.TopCtrl1
  loc_16A6087: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16A60A0: If (CStr() = "Add") Then
  loc_16A60AF:   Set var_B0 = Me.TxtGt
  loc_16A60B5:   Call 0.Method_Proc_162_101_16A66F08 (var_B2, var_92)
  loc_16A60C0:   For var_2C4 =  To var_B2: 2 = var_2C4 'Integer
  loc_16A60D3:     Set var_B0 = Me.TxtPer
  loc_16A60D9:     Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A60E1:     var_B2 = var_BC.Visible
  loc_16A60F9:     Set var_C4 = Me.LblCap
  loc_16A60FF:     Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C8)
  loc_16A6107:     var_C0 = var_C8.Tag
  loc_16A612E:     If ((var_B2 = &HFF) And (var_C0 = MemVar_1F92078 & "SCH")) Then
  loc_16A6137:       Call Proc_162_104_11FB264(var_92)
  loc_16A613F:       var_9C = var_29C
  loc_16A614F:       Set var_B0 = Me.TxtPer
  loc_16A6155:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0)
  loc_16A615D:       var_9C = var_BC.Text
  loc_16A616A:       var_29C = Val(var_C0)
  loc_16A61AA:       Set var_C4 = Me.TxtGt
  loc_16A61B0:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C8, CStr(Format(CVar(((var_9C * var_29C) / CDbl(&H64))), "0.00")), 1)
  loc_16A61B8:       var_C8.Text = 1
  loc_16A61EA:       Set var_B0 = Me.LblDummy
  loc_16A61F0:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, CStr(var_9C))
  loc_16A61F8:       var_BC.Caption = var_29C
  loc_16A6207:     End If
  loc_16A620A:   Next var_2C4 'Integer
  loc_16A620F: End If
  loc_16A622E: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_16A6244:   Me.FGCat.FixedRows = 1
  loc_16A624C: End If
  loc_16A627A: For var_2C8 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_94 = var_2C8 'Integer
  loc_16A628C:   Set var_B0 = Me.TxtGt
  loc_16A6292:   Call 0.Method_Proc_162_101_16A66F08 (var_B2, var_92, 1)
  loc_16A629D:   For var_2CC = CDbl(0) To var_B2: 0 = var_2CC 'Integer
  loc_16A62B0:     Set var_B0 = Me.LblCap
  loc_16A62B6:     Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A62BE:     var_C0 = var_BC.Tag
  loc_16A62CA:     var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A6304:     If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_16A6314:       Set var_B0 = Me.TxtGt
  loc_16A631A:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0)
  loc_16A6322:       var_E8 = var_BC.Text
  loc_16A632F:       var_29C = Val(var_C0)
  loc_16A6336:       var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A634D:       var_F8 = Me.FGCat.TextMatrix)
  loc_16A6360:       var_2A4 = Val(CStr(var_F8))
  loc_16A637F:       var_130 = CVar((var_29C + var_2A4)) 'Double
  loc_16A638E:       var_D8 = CStr(Format("0.00", "0.00"))
  loc_16A639C:       Set var_C8 = Me.TxtGt
  loc_16A63A2:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_D0, var_D8, 1, 1, var_2A4)
  loc_16A63AA:       var_D0.Text = CVar(CLng(6))
  loc_16A63D0:     End If
  loc_16A63D3:   Next var_2CC 'Integer
  loc_16A63DB: Next var_2C8 'Integer
  loc_16A63EC: Set var_B0 = Me.TxtGt
  loc_16A63F2: Call 0.Method_Proc_162_101_16A66F08 (var_B2, var_92)
  loc_16A63FD: For var_2D0 =  To var_B2: 2 = var_2D0 'Integer
  loc_16A6410:   Set var_B0 = Me.LblCap
  loc_16A6416:   Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC)
  loc_16A6440:   If (var_BC.Tag = MemVar_1F92078 & "ROFF") Then
  loc_16A6449:     Call Proc_162_104_11FB264(var_92)
  loc_16A6451:     var_9C = var_29C
  loc_16A646C:     Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, CStr(var_9C))
  loc_16A6474:     var_BC.Caption = var_9C
  loc_16A6499:     unk_58616C.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_F8, -1
  loc_16A64A4:     Set var_88 = Me.LblDummy
  loc_16A64C1:     If (var_88.RecordCount > 0) Then
  loc_16A64D3:       var_B0 = var_88.Fields
  loc_16A64DB:       var_BC = var_B0.Item("RoundOffType")
  loc_16A6507:       Proc_6_85_1261068(var_9C, CByte(2), CStr(Left(CVar(var_BC), 1)))
  loc_16A6544:       Set var_C4 = Me.TxtGt
  loc_16A654A:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C8, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_16A6552:       var_C8.Text = 1
  loc_16A6577:     Else
  loc_16A657A:       var_C0 = "S"
  loc_16A658B:       Proc_6_85_1261068(var_9C, CByte(2), var_C0)
  loc_16A65C8:       Set var_B0 = Me.TxtGt
  loc_16A65CE:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, CStr(Format(CVar(var_29C), "0.00")), 1)
  loc_16A65D6:       var_BC.Text = 1
  loc_16A65F2:     End If
  loc_16A65F5:   Else
  loc_16A65FC:     If (var_92 <> arg_C) Then
  loc_16A660C:       Set var_B0 = Me.LblCap
  loc_16A6612:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, var_C0)
  loc_16A661A:       var_29C = var_BC.Tag
  loc_16A663B:       Set var_C4 = Me.LblCap
  loc_16A6641:       Call 0.Method_Proc_162_101_16A66F00 (var_92, var_C8, var_D8)
  loc_16A6649:       (var_C0 = MemVar_1F92078 & "TOT") = var_C8.Tag
  loc_16A6674:       If (var_29C Or (var_D8 = MemVar_1F92078 & "NET")) Then
  loc_16A667D:         Call Proc_162_104_11FB264(var_92)
  loc_16A66B7:         Set var_B0 = Me.TxtGt
  loc_16A66BD:         Call 0.Method_Proc_162_101_16A66F00 (var_92, var_BC, CStr(Format(CVar(var_29C), "0.00")))
  loc_16A66C5:         var_BC.Text = 1
  loc_16A66DD:       End If
  loc_16A66DD:     End If
  loc_16A66DD:   End If
  loc_16A66E0: Next var_2D0 'Integer
  loc_16A66EA: Set var_88 = Nothing
  loc_16A66ED: Exit Sub
End Sub

Public Sub Proc_162_102_19DE8A8(arg_C) '19DE8A8
  'Data Table: 586140
  Dim Me As Variant
  Dim var_BC As Integer
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim var_D0 As Variant
  Dim var_90 As Double
  Dim var_164 As Variant
  Dim var_C4 As String
  Dim var_104 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_D4 As String
  Dim unk_58616C As Connection15
  Dim var_CC As Variant
  Dim var_1D0 As Variant
  Dim var_198 As String
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim var_20A As Integer
  Dim var_B4 As Variant
  Dim var_2A8 As Double
  Dim var_2B0 As Double
  Dim var_230 As Variant
  Dim var_F4 As Variant
  Dim var_2B8 As Double
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_168 As Variant
  Dim var_2C0 As Double
  Dim var_9C As Double
  Dim var_2DC As Double
  Dim var_2E4 As Double
  Dim var_2EC As Double
  Dim var_2F4 As Double
  Dim var_312 As Integer
  Dim var_290 As Variant
  Dim var_328 As Variant
  Dim var_154 As Variant
  Dim var_39C As TextBox
  Dim var_3AA As Integer
  Dim var_88 As Recordset15
  loc_19DB70F: If (Me.RecordCount <= 0) Then
  loc_19DB712:   Exit Sub
  loc_19DB713: End If
  loc_19DB71F: Set var_B4 = Me.TxtGt
  loc_19DB725: Call 0.Method_Proc_162_102_19DE8A88 (var_B6, var_92)
  loc_19DB730: For var_BA =  To var_B6: 1 = var_BA 'Integer
  loc_19DB739:   var_BC = arg_C
  loc_19DB744:   If (var_BC = CInt(&H1D)) Then
  loc_19DB754:     Set var_B4 = Me.LblCap1
  loc_19DB75A:     Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DB783:     Set var_CC = Me.TxtGt1
  loc_19DB789:     Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, var_D4)
  loc_19DB791:     (var_C0.Tag = MemVar_1F92078 & "ADD") = var_D0.Text
  loc_19DB7B8:     If (var_BC And (CDbl(Val(var_D4)) > CDbl(0))) Then
  loc_19DB7C8:       Set var_B4 = Me.TxtGt1
  loc_19DB7CE:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DB7E3:       var_90 = Val(var_C0.Text)
  loc_19DB7F0:     End If
  loc_19DB7FD:     Set var_B4 = Me.TxtGt1
  loc_19DB803:     Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DB80B:     var_C0.Text = vbNullString
  loc_19DB824:     Set var_B4 = Me.LblCap1
  loc_19DB82A:     Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DB841:     var_C8 = MemVar_1F92078 & "DIS"
  loc_19DB854:     If (var_C0.Tag = var_C8) Then
  loc_19DB85C:       var_9E = CByte(var_92) 'Byte
  loc_19DB860:     End If
  loc_19DB880:     var_C4 = "Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F92078
  loc_19DB897:     Set var_B4 = Me.LblCap
  loc_19DB89D:     Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C8, CVar(var_C4 & "' and Code='"), var_154, -1)
  loc_19DB8C8:     var_D4 = CStr(var_D0 & Trim(CVar(var_C8)) & "'")
  loc_19DB8D2:     unk_58616C.Execute var_D4, 0, var_168
  loc_19DB8DA:     var_90 = var_C0.Tag.Fields
  loc_19DB8E2:      = var_D0.Item()
  loc_19DB8F1:     var_188 = Trim(CVar(var_168))
  loc_19DB8FC:     var_1D0 = 0
  loc_19DB92E:     var_198 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='" & MemVar_1F92078 & "ST'"
  loc_19DB937:     unk_58616C.Execute var_198, var_1B8, -1
  loc_19DB93F:     var_1BC = var_1BC.Fields
  loc_19DB947:     var_1D0 = var_1C0.Item(var_1C0)
  loc_19DB997:     If (var_1D4 = Trim(CVar(var_1D4))) Then
  loc_19DB99F:       var_A0 = CByte(var_92) 'Byte
  loc_19DB9A9:       global_108 = var_92
  loc_19DB9AC:     End If
  loc_19DB9AF:   Else
  loc_19DB9B7:     If (var_BC = CInt(&H1E)) Then
  loc_19DB9C7:       Set var_B4 = Me.LblCap2
  loc_19DB9CD:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DB9D5:       global_108 = var_C0.Tag
  loc_19DB9F6:       Set var_CC = Me.TxtGt2
  loc_19DB9FC:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, var_D4)
  loc_19DBA04:       (var_C4 = MemVar_1F92078 & "ADD") = var_D0.Text
  loc_19DBA2B:       If (var_188 And (CDbl(Val(var_D4)) > CDbl(0))) Then
  loc_19DBA3B:         Set var_B4 = Me.TxtGt2
  loc_19DBA41:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBA56:         var_90 = Val(var_C0.Text)
  loc_19DBA63:       End If
  loc_19DBA70:       Set var_B4 = Me.TxtGt2
  loc_19DBA76:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBA7E:       var_C0.Text = vbNullString
  loc_19DBA97:       Set var_B4 = Me.LblCap2
  loc_19DBA9D:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBAB4:       var_C8 = MemVar_1F92078 & "DIS"
  loc_19DBAC7:       If (var_C0.Tag = var_C8) Then
  loc_19DBACF:         var_9E = CByte(var_92) 'Byte
  loc_19DBAD3:       End If
  loc_19DBAF3:       var_C4 = "Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F92078
  loc_19DBB0A:       Set var_B4 = Me.LblCap
  loc_19DBB10:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C8, CVar(var_C4 & "' and Code='"), var_154, -1)
  loc_19DBB3B:       var_D4 = CStr(var_D0 & Trim(CVar(var_C8)) & "'")
  loc_19DBB45:       unk_58616C.Execute var_D4, 0, var_168
  loc_19DBB4D:       var_90 = var_C0.Tag.Fields
  loc_19DBB55:        = var_D0.Item()
  loc_19DBB64:       var_188 = Trim(CVar(var_168))
  loc_19DBB6F:       var_1D0 = 0
  loc_19DBBA1:       var_198 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='" & MemVar_1F92078 & "ST'"
  loc_19DBBAA:       unk_58616C.Execute var_198, var_1B8, -1
  loc_19DBBB2:       var_1BC = var_1BC.Fields
  loc_19DBBBA:       var_1D0 = var_1C0.Item(var_1C0)
  loc_19DBC0A:       If (var_1D4 = Trim(CVar(var_1D4))) Then
  loc_19DBC12:         var_A0 = CByte(var_92) 'Byte
  loc_19DBC1C:         global_108 = var_92
  loc_19DBC1F:       End If
  loc_19DBC22:     Else
  loc_19DBC2A:       If (var_BC = CInt(&H1F)) Then
  loc_19DBC3A:         Set var_B4 = Me.LblCap3
  loc_19DBC40:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DBC48:         global_108 = var_C0.Tag
  loc_19DBC69:         Set var_CC = Me.TxtGt3
  loc_19DBC6F:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, var_D4)
  loc_19DBC77:         (var_C4 = MemVar_1F92078 & "ADD") = var_D0.Text
  loc_19DBC9E:         If (var_188 And (CDbl(Val(var_D4)) > CDbl(0))) Then
  loc_19DBCAE:           Set var_B4 = Me.TxtGt3
  loc_19DBCB4:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBCC9:           var_90 = Val(var_C0.Text)
  loc_19DBCD6:         End If
  loc_19DBCE3:         Set var_B4 = Me.TxtGt3
  loc_19DBCE9:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBCF1:         var_C0.Text = vbNullString
  loc_19DBD0A:         Set var_B4 = Me.LblCap3
  loc_19DBD10:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBD27:         var_C8 = MemVar_1F92078 & "DIS"
  loc_19DBD3A:         If (var_C0.Tag = var_C8) Then
  loc_19DBD42:           var_9E = CByte(var_92) 'Byte
  loc_19DBD46:         End If
  loc_19DBD7D:         Set var_B4 = Me.LblCap
  loc_19DBD83:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C8, CVar("Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F92078 & "' and Code='"), var_154, -1)
  loc_19DBDB8:         unk_58616C.Execute CStr(var_D0 & Trim(CVar(var_C8)) & "'"), 0, var_168
  loc_19DBDC0:         var_90 = var_C0.Tag.Fields
  loc_19DBDC8:          = var_D0.Item()
  loc_19DBDD7:         var_188 = Trim(CVar(var_168))
  loc_19DBDE2:         var_1D0 = 0
  loc_19DBE14:         var_198 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='" & MemVar_1F92078 & "ST'"
  loc_19DBE1D:         unk_58616C.Execute var_198, var_1B8, -1
  loc_19DBE25:         var_1BC = var_1BC.Fields
  loc_19DBE2D:         var_1D0 = var_1C0.Item(var_1C0)
  loc_19DBE7D:         If (var_1D4 = Trim(CVar(var_1D4))) Then
  loc_19DBE85:           var_A0 = CByte(var_92) 'Byte
  loc_19DBE8F:           global_108 = var_92
  loc_19DBE92:         End If
  loc_19DBE92:       End If
  loc_19DBE92:     End If
  loc_19DBE92:   End If
  loc_19DBE95: Next var_BA 'Integer
  loc_19DBEA6: Set var_B4 = Me.TxtGt
  loc_19DBEAC: Call 0.Method_Proc_162_102_19DE8A88 (var_B6, var_92)
  loc_19DBEB7: For var_208 =  To var_B6: 2 = var_208 'Integer
  loc_19DBEC0:   var_20A = arg_C
  loc_19DBECB:   If (var_20A = CInt(&H1D)) Then
  loc_19DBEDB:     Set var_B4 = Me.LblCap1
  loc_19DBEE1:     Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBF0B:     If (var_C0.Tag = MemVar_1F92078 & "DIS") Then
  loc_19DBF1B:       Set var_B4 = Me.TxtGt1
  loc_19DBF21:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DBF29:       var_C0.Text = "0.00"
  loc_19DBF3F:       If (var_A0 > var_9E) Then
  loc_19DBF67:         For var_20E = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_20E 'Integer
  loc_19DBF71:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DBF93:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DBFA9:           If (CDbl(Val(var_C4)) > CDbl(0)) Then
  loc_19DBFB9:             Set var_B4 = Me.LblCap1
  loc_19DBFBF:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, CVar(CLng(&H1D)))
  loc_19DBFC7:             var_124 = var_C0.Tag
  loc_19DBFE9:             If (var_C4 = MemVar_1F92078 & "DIS") Then
  loc_19DBFF9:               Set var_B4 = Me.TxtGt1
  loc_19DBFFF:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DC007:               1 = var_C0.Text
  loc_19DC01B:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC023:               var_164 = CVar(CLng(&HF)) 'Long
  loc_19DC04C:               var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DC054:               var_230 = CVar(CLng(7)) 'Long
  loc_19DC05D:               Set var_D0 = Me.FGrid
  loc_19DC08E:               Set var_168 = Me.FGrid
  loc_19DC0A7:               var_2C0 = Val(CStr(var_168.TextMatrix)))
  loc_19DC0CE:               var_114 = CVar((Val(var_C4) + ((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(var_D0.TextMatrix)))) * var_2C0))) 'Double
  loc_19DC0EB:               Set var_1BC = Me.TxtGt1
  loc_19DC0F1:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_1C0, CStr(Format(var_D0 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), "0.00")), 1, 1, var_2C0, CVar(CLng(&H1D)))
  loc_19DC0F9:               var_1C0.Text = CVar(CLng(var_94))
  loc_19DC12B:             End If
  loc_19DC12B:           End If
  loc_19DC12E:         Next var_20E 'Integer
  loc_19DC136:       Else
  loc_19DC15B:         For var_2C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_94 = var_2C4 'Integer
  loc_19DC165:           var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DC16E:           var_230 = CVar(CLng(arg_C)) 'Long
  loc_19DC177:           Set var_C0 = Me.FGrid
  loc_19DC190:           var_2A8 = Val(CStr(var_C0.TextMatrix)))
  loc_19DC1B9:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DC1D4:           Set var_CC = Me.LblDummy1
  loc_19DC1DA:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr((Val(var_C4) * var_2A8)), CVar(CLng(8)), CVar(CLng(var_94)))
  loc_19DC1E2:           var_D0.Caption = var_2A8
  loc_19DC20F:           Set var_B4 = Me.LblCap1
  loc_19DC215:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DC21D:           var_230 = var_C0.Tag
  loc_19DC23F:           If (var_C4 = MemVar_1F92078 & "DIS") Then
  loc_19DC24F:             Set var_B4 = Me.TxtGt1
  loc_19DC255:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DC25D:             var_1D0 = var_C0.Text
  loc_19DC26A:             var_2A8 = Val(var_C4)
  loc_19DC271:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC279:             var_164 = CVar(CLng(&HF)) 'Long
  loc_19DC29B:             var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC2BA:             var_F4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_19DC2D7:             Set var_D0 = Me.TxtGt1
  loc_19DC2DD:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_168, CStr(Format(var_C0.TextMatrix), "0.00")), 1, 1)
  loc_19DC2E5:             var_168.Text = var_2B0
  loc_19DC30B:           End If
  loc_19DC30E:         Next var_2C4 'Integer
  loc_19DC313:       End If
  loc_19DC316:     Else
  loc_19DC326:       Set var_B4 = Me.TxtGt
  loc_19DC32C:       Call 0.Method_Proc_162_102_19DE8A8C (var_B6, var_92)
  loc_19DC33C:       If ( And ((var_92 > 1) < (var_B6 - 2))) Then
  loc_19DC34C:         Call Proc_162_103_151D3B0(var_92, CInt(&H1D))
  loc_19DC354:         var_9C = var_2A8
  loc_19DC364:         Set var_B4 = Me.LblCap
  loc_19DC36A:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DC372:         var_9C = var_C0.Tag
  loc_19DC391:         If ((var_C4 = "KADD") And (var_90 > CDbl(0))) Then
  loc_19DC3CA:           Set var_B4 = Me.TxtGt
  loc_19DC3D0:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(Format(var_90, "0.00")))
  loc_19DC3D8:           var_C0.Text = 1
  loc_19DC3EE:         End If
  loc_19DC400:         Set var_B4 = Me.LblDummy1
  loc_19DC406:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(var_9C))
  loc_19DC40E:         var_C0.Caption = 1
  loc_19DC41D:       End If
  loc_19DC41D:     End If
  loc_19DC420:   Else
  loc_19DC428:     If (var_20A = CInt(&H1E)) Then
  loc_19DC438:       Set var_B4 = Me.LblCap2
  loc_19DC43E:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DC468:       If (var_C0.Tag = MemVar_1F92078 & "DIS") Then
  loc_19DC478:         Set var_B4 = Me.TxtGt2
  loc_19DC47E:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DC486:         var_C0.Text = "0.00"
  loc_19DC49C:         If (var_A0 > var_9E) Then
  loc_19DC4C4:           For var_2C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_94 = var_2C8 'Integer
  loc_19DC4CE:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC4F0:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DC506:             If (CDbl(Val(var_C4)) > CDbl(0)) Then
  loc_19DC516:               Set var_B4 = Me.LblCap2
  loc_19DC51C:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, CVar(CLng(&H1E)))
  loc_19DC524:               var_124 = var_C0.Tag
  loc_19DC546:               If (var_C4 = MemVar_1F92078 & "DIS") Then
  loc_19DC556:                 Set var_B4 = Me.TxtGt2
  loc_19DC55C:                 Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DC564:                 1 = var_C0.Text
  loc_19DC578:                 var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC580:                 var_164 = CVar(CLng(&HF)) 'Long
  loc_19DC5A9:                 var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DC5B1:                 var_230 = CVar(CLng(7)) 'Long
  loc_19DC5BA:                 Set var_D0 = Me.FGrid
  loc_19DC5EB:                 Set var_168 = Me.FGrid
  loc_19DC604:                 var_2C0 = Val(CStr(var_168.TextMatrix)))
  loc_19DC62B:                 var_114 = CVar((Val(var_C4) + ((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(var_D0.TextMatrix)))) * var_2C0))) 'Double
  loc_19DC648:                 Set var_1BC = Me.TxtGt2
  loc_19DC64E:                 Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_1C0, CStr(Format(Format(var_C0.TextMatrix), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(&H1E)))
  loc_19DC656:                 var_1C0.Text = CVar(CLng(var_94))
  loc_19DC688:               End If
  loc_19DC688:             End If
  loc_19DC68B:           Next var_2C8 'Integer
  loc_19DC693:         Else
  loc_19DC6B8:           For var_2CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_94 = var_2CC 'Integer
  loc_19DC6C2:             var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DC6CB:             var_230 = CVar(CLng(arg_C)) 'Long
  loc_19DC6D4:             Set var_C0 = Me.FGrid
  loc_19DC6ED:             var_2A8 = Val(CStr(var_C0.TextMatrix)))
  loc_19DC716:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DC731:             Set var_CC = Me.LblDummy2
  loc_19DC737:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr((Val(var_C4) * var_2A8)), CVar(CLng(8)), CVar(CLng(var_94)))
  loc_19DC73F:             var_D0.Caption = var_2A8
  loc_19DC76C:             Set var_B4 = Me.LblCap2
  loc_19DC772:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DC77A:             var_230 = var_C0.Tag
  loc_19DC79C:             If (var_C4 = MemVar_1F92078 & "DIS") Then
  loc_19DC7AC:               Set var_B4 = Me.TxtGt2
  loc_19DC7B2:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DC7BA:               var_1D0 = var_C0.Text
  loc_19DC7C7:               var_2A8 = Val(var_C4)
  loc_19DC7CE:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC7D6:               var_164 = CVar(CLng(&HF)) 'Long
  loc_19DC7F8:               var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC817:               var_F4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_19DC834:               Set var_D0 = Me.TxtGt2
  loc_19DC83A:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_168, CStr(Format(var_C0.TextMatrix), "0.00")), 1, 1)
  loc_19DC842:               var_168.Text = var_2B0
  loc_19DC868:             End If
  loc_19DC86B:           Next var_2CC 'Integer
  loc_19DC870:         End If
  loc_19DC873:       Else
  loc_19DC883:         Set var_B4 = Me.TxtGt
  loc_19DC889:         Call 0.Method_Proc_162_102_19DE8A8C (var_B6, var_92)
  loc_19DC899:         If ( And ((var_92 > 1) < (var_B6 - 2))) Then
  loc_19DC8A9:           Call Proc_162_103_151D3B0(var_92, CInt(&H1E))
  loc_19DC8B1:           var_9C = var_2A8
  loc_19DC8C6:           Set var_B4 = Me.LblDummy2
  loc_19DC8CC:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(var_9C))
  loc_19DC8D4:           var_C0.Caption = var_9C
  loc_19DC8E3:         End If
  loc_19DC8E3:       End If
  loc_19DC8E6:     Else
  loc_19DC8EE:       If (var_20A = CInt(&H1F)) Then
  loc_19DC8FE:         Set var_B4 = Me.LblCap3
  loc_19DC904:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DC92E:         If (var_C0.Tag = MemVar_1F92078 & "DIS") Then
  loc_19DC93E:           Set var_B4 = Me.TxtGt3
  loc_19DC944:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DC94C:           var_C0.Text = "0.00"
  loc_19DC962:           If (var_A0 > var_9E) Then
  loc_19DC98A:             For var_2D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_94 = var_2D0 'Integer
  loc_19DC994:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC9B6:               var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DC9CC:               If (CDbl(Val(var_C4)) > CDbl(0)) Then
  loc_19DC9DC:                 Set var_B4 = Me.LblCap3
  loc_19DC9E2:                 Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, CVar(CLng(&H1F)))
  loc_19DC9EA:                 var_124 = var_C0.Tag
  loc_19DCA0C:                 If (var_C4 = MemVar_1F92078 & "DIS") Then
  loc_19DCA1C:                   Set var_B4 = Me.TxtGt3
  loc_19DCA22:                   Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DCA2A:                   1 = var_C0.Text
  loc_19DCA3E:                   var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCA46:                   var_164 = CVar(CLng(&HF)) 'Long
  loc_19DCA6F:                   var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DCA77:                   var_230 = CVar(CLng(7)) 'Long
  loc_19DCA80:                   Set var_D0 = Me.FGrid
  loc_19DCAB1:                   Set var_168 = Me.FGrid
  loc_19DCACA:                   var_2C0 = Val(CStr(var_168.TextMatrix)))
  loc_19DCAF1:                   var_114 = CVar((Val(var_C4) + ((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(var_D0.TextMatrix)))) * var_2C0))) 'Double
  loc_19DCB0E:                   Set var_1BC = Me.TxtGt3
  loc_19DCB14:                   Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_1C0, CStr(Format(Format(var_C0.TextMatrix), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(&H1F)))
  loc_19DCB1C:                   var_1C0.Text = CVar(CLng(var_94))
  loc_19DCB4E:                 End If
  loc_19DCB4E:               End If
  loc_19DCB51:             Next var_2D0 'Integer
  loc_19DCB59:           Else
  loc_19DCB7E:             For var_2D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):       var_94 = var_2D4 'Integer
  loc_19DCB88:               var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DCB91:               var_230 = CVar(CLng(arg_C)) 'Long
  loc_19DCB9A:               Set var_C0 = Me.FGrid
  loc_19DCBB3:               var_2A8 = Val(CStr(var_C0.TextMatrix)))
  loc_19DCBDC:               var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DCBF7:               Set var_CC = Me.LblDummy3
  loc_19DCBFD:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr((Val(var_C4) * var_2A8)), CVar(CLng(8)), CVar(CLng(var_94)))
  loc_19DCC05:               var_D0.Caption = var_2A8
  loc_19DCC32:               Set var_B4 = Me.LblCap3
  loc_19DCC38:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DCC40:               var_230 = var_C0.Tag
  loc_19DCC62:               If (var_C4 = MemVar_1F92078 & "DIS") Then
  loc_19DCC72:                 Set var_B4 = Me.TxtGt3
  loc_19DCC78:                 Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DCC80:                 var_1D0 = var_C0.Text
  loc_19DCC8D:                 var_2A8 = Val(var_C4)
  loc_19DCC94:                 var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCC9C:                 var_164 = CVar(CLng(&HF)) 'Long
  loc_19DCCBE:                 var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DCCDD:                 var_F4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_19DCCFA:                 Set var_D0 = Me.TxtGt3
  loc_19DCD00:                 Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_168, CStr(Format(var_C0.TextMatrix), "0.00")), 1, 1)
  loc_19DCD08:                 var_168.Text = var_2B0
  loc_19DCD2E:               End If
  loc_19DCD31:             Next var_2D4 'Integer
  loc_19DCD36:           End If
  loc_19DCD39:         Else
  loc_19DCD49:           Set var_B4 = Me.TxtGt
  loc_19DCD4F:           Call 0.Method_Proc_162_102_19DE8A8C (var_B6, var_92)
  loc_19DCD5F:           If ( And ((var_92 > 1) < (var_B6 - 2))) Then
  loc_19DCD6F:             Call Proc_162_103_151D3B0(var_92, CInt(&H1F))
  loc_19DCD77:             var_9C = var_2A8
  loc_19DCD8C:             Set var_B4 = Me.LblDummy3
  loc_19DCD92:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(var_9C))
  loc_19DCD9A:             var_C0.Caption = var_9C
  loc_19DCDA9:           End If
  loc_19DCDA9:         End If
  loc_19DCDA9:       End If
  loc_19DCDA9:     End If
  loc_19DCDA9:   End If
  loc_19DCDAC: Next var_208 'Integer
  loc_19DCDB4: var_2DC = CDbl(0)
  loc_19DCDBA: var_2E4 = CDbl(0)
  loc_19DCDC0: var_2EC = CDbl(0)
  loc_19DCDC6: var_2F4 = CDbl(0)
  loc_19DCDCC: var_2DC = CDbl(0)
  loc_19DCDD2: var_2E4 = CDbl(0)
  loc_19DCDD8: var_2EC = CDbl(0)
  loc_19DCDDE: var_2F4 = CDbl(0)
  loc_19DCE06: For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_2F8 'Integer
  loc_19DCE10:   var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCE18:   var_164 = CVar(CLng(&HB)) 'Long
  loc_19DCE54:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_19DCE5B:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCE63:     var_164 = CVar(CLng(7)) 'Long
  loc_19DCE8F:     var_2DC = (var_2DC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19DCE9F:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCEA7:     var_164 = CVar(CLng(&H1D)) 'Long
  loc_19DCED3:     var_2E4 = (var_2E4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19DCEE3:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCEEB:     var_164 = CVar(CLng(&H1E)) 'Long
  loc_19DCF17:     var_2EC = (var_2EC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19DCF27:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCF2F:     var_164 = CVar(CLng(&H1F)) 'Long
  loc_19DCF49:     var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DCF51:     var_2A8 = Val(var_C4)
  loc_19DCF5B:     var_2F4 = (var_2F4 + var_2A8)
  loc_19DCF67:   End If
  loc_19DCF6A: Next var_2F8 'Integer
  loc_19DCF94: For var_2FC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_2FC 'Integer
  loc_19DCFA6:   var_164 = CVar(CLng(&HB)) 'Long
  loc_19DCFE2:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_19DCFF1:     Set var_B4 = Me.TxtGt
  loc_19DCFF7:     Call 0.Method_Proc_162_102_19DE8A88 (var_B6, var_92, 2)
  loc_19DD002:     For var_300 = CVar(CLng(var_94)) To var_B6: var_164 = var_300 'Integer
  loc_19DD015:       Set var_B4 = Me.LblCap
  loc_19DD01B:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DD023:       var_124 = var_C0.Tag
  loc_19DD045:       If (var_C4 = MemVar_1F92078 & "SCH") Then
  loc_19DD055:         Call Proc_162_103_151D3B0(var_92, CInt(&H1D))
  loc_19DD05D:         var_9C = var_2A8
  loc_19DD06D:         Set var_B4 = Me.TxtGt1
  loc_19DD073:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, "0.00")
  loc_19DD094:         Set var_B4 = Me.TxtGt
  loc_19DD09A:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DD0A2:         var_2A8 = var_9C
  loc_19DD0AF:         var_2A8 = Val(var_C4)
  loc_19DD0EF:         Set var_CC = Me.TxtGt1
  loc_19DD0F5:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr(Format(CVar(((var_2A8 / var_2DC) * var_2E4)), "0.00")), 1)
  loc_19DD0FD:         var_D0.Text = 1
  loc_19DD122:         var_C4 = CStr(var_9C)
  loc_19DD12F:         Set var_B4 = Me.LblDummy1
  loc_19DD135:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DD13D:         var_C0.Caption = var_2A8
  loc_19DD159:         Call Proc_162_103_151D3B0(var_92, CInt(&H1E))
  loc_19DD161:         var_9C = var_2A8
  loc_19DD171:         Set var_B4 = Me.TxtGt2
  loc_19DD177:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, "0.00")
  loc_19DD198:         Set var_B4 = Me.TxtGt
  loc_19DD19E:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DD1A6:         var_2A8 = var_9C
  loc_19DD1B3:         var_2A8 = Val(var_C4)
  loc_19DD1F3:         Set var_CC = Me.TxtGt2
  loc_19DD1F9:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr(Format(CVar(((var_2A8 / var_2DC) * var_2EC)), "0.00")), 1)
  loc_19DD201:         var_D0.Text = 1
  loc_19DD226:         var_C4 = CStr(var_9C)
  loc_19DD233:         Set var_B4 = Me.LblDummy2
  loc_19DD239:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DD241:         var_C0.Caption = var_2A8
  loc_19DD25D:         Call Proc_162_103_151D3B0(var_92, CInt(&H1F))
  loc_19DD265:         var_9C = var_2A8
  loc_19DD275:         Set var_B4 = Me.TxtGt3
  loc_19DD27B:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, "0.00")
  loc_19DD29C:         Set var_B4 = Me.TxtGt
  loc_19DD2A2:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DD2AA:         var_2A8 = var_9C
  loc_19DD2B7:         var_2A8 = Val(var_C4)
  loc_19DD2F7:         Set var_CC = Me.TxtGt3
  loc_19DD2FD:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr(Format(CVar(((var_2A8 / var_2DC) * var_2F4)), "0.00")), 1)
  loc_19DD305:         var_D0.Text = 1
  loc_19DD337:         Set var_B4 = Me.LblDummy3
  loc_19DD33D:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(var_9C))
  loc_19DD345:         var_C0.Caption = var_2A8
  loc_19DD354:       End If
  loc_19DD357:     Next var_300 'Integer
  loc_19DD35C:   End If
  loc_19DD35F: Next var_2FC 'Integer
  loc_19DD370: Set var_B4 = Me.TxtGt1
  loc_19DD376: Call 0.Method_Proc_162_102_19DE8A80 (1, var_C0)
  loc_19DD37E: var_C0.Text = "0.00"
  loc_19DD396: Set var_B4 = Me.TxtGt2
  loc_19DD39C: Call 0.Method_Proc_162_102_19DE8A80 (1, var_C0)
  loc_19DD3A4: var_C0.Text = "0.00"
  loc_19DD3BC: Set var_B4 = Me.TxtGt3
  loc_19DD3C2: Call 0.Method_Proc_162_102_19DE8A80 (1, var_C0)
  loc_19DD3CA: var_C0.Text = "0.00"
  loc_19DD3FB: For var_304 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_304 'Integer
  loc_19DD40D:   Set var_B4 = Me.TxtGt1
  loc_19DD413:   Call 0.Method_Proc_162_102_19DE8A80 (1, var_C0)
  loc_19DD41B:   var_C4 = var_C0.Text
  loc_19DD42F:   var_124 = CVar(CLng(var_92)) 'Long
  loc_19DD437:   var_164 = CVar(CLng(&H1D)) 'Long
  loc_19DD459:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DD48A:   var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DD4AD:   var_104 = CVar((Val(var_C4) + (var_2B0 * var_2B8))) 'Double
  loc_19DD4C9:   Set var_168 = Me.TxtGt1
  loc_19DD4CF:   Call 0.Method_Proc_162_102_19DE8A80 (1, var_1BC, CStr(Format(Format(CVar(((Val(var_C4) / var_2DC) * var_2F4)), "0.00"), "0.00")), 1, 1, var_2B8, CVar(CLng(9)))
  loc_19DD4D7:   var_1BC.Text = CVar(CLng(var_92))
  loc_19DD50F:   Set var_B4 = Me.TxtGt2
  loc_19DD515:   Call 0.Method_Proc_162_102_19DE8A80 (1, var_C0, var_C4, var_2B0)
  loc_19DD51D:   var_164 = var_C0.Text
  loc_19DD531:   var_124 = CVar(CLng(var_92)) 'Long
  loc_19DD55B:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DD58C:   var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DD5AF:   var_104 = CVar((Val(var_C4) + (var_2B0 * var_2B8))) 'Double
  loc_19DD5CB:   Set var_168 = Me.TxtGt2
  loc_19DD5D1:   Call 0.Method_Proc_162_102_19DE8A80 (1, var_1BC, CStr(Format(Format(CVar(((Val(var_C4) / var_2DC) * var_2F4)), "0.00"), "0.00")), 1, 1, var_2B8, CVar(CLng(9)))
  loc_19DD5D9:   var_1BC.Text = CVar(CLng(var_92))
  loc_19DD611:   Set var_B4 = Me.TxtGt3
  loc_19DD617:   Call 0.Method_Proc_162_102_19DE8A80 (1, var_C0, var_C4, var_2B0, CVar(CLng(&H1E)))
  loc_19DD61F:   var_124 = var_C0.Text
  loc_19DD633:   var_124 = CVar(CLng(var_92)) 'Long
  loc_19DD63B:   var_164 = CVar(CLng(&H1F)) 'Long
  loc_19DD68E:   var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DD6B1:   var_104 = CVar((Val(var_C4) + (Val(CStr(Me.FGrid.TextMatrix))) * var_2B8))) 'Double
  loc_19DD6CD:   Set var_168 = Me.TxtGt3
  loc_19DD6D3:   Call 0.Method_Proc_162_102_19DE8A80 (1, var_1BC, CStr(Format(Format(CVar(((Val(var_C4) / var_2DC) * var_2F4)), "0.00"), "0.00")), 1, 1, var_2B8, CVar(CLng(9)))
  loc_19DD6DB:   var_1BC.Text = CVar(CLng(var_92))
  loc_19DD70A: Next var_304 'Integer
  loc_19DD72E: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_19DD744:   Me.FGCat.FixedRows = 1
  loc_19DD74C: End If
  loc_19DD752: global_100 = CDbl(0)
  loc_19DD77A: For var_308 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_94 = var_308 'Integer
  loc_19DD78E:   If (arg_C = CInt(&H1D)) Then
  loc_19DD79D:     Set var_B4 = Me.TxtGt1
  loc_19DD7A3:     Call 0.Method_Proc_162_102_19DE8A88 (var_B6, var_92, 1)
  loc_19DD7AE:     For var_316 = 0 To var_B6: var_312 = var_316 'Integer
  loc_19DD7C1:       Set var_B4 = Me.LblCap1
  loc_19DD7C7:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DD7CF:       0 = var_C0.Tag
  loc_19DD7DB:       var_124 = CVar(CLng(var_94)) 'Long
  loc_19DD815:       If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_19DD81C:         var_124 = CVar(CLng(var_94)) 'Long
  loc_19DD824:         var_164 = CVar(CLng(1)) 'Long
  loc_19DD83E:         var_C4 = CStr(Me.FGCat.TextMatrix))
  loc_19DD854:         Set var_C0 = Me.FGrid
  loc_19DD887:         If (CDbl(Val(CStr(var_C0.TextMatrix)))) > CDbl(0)) Then
  loc_19DD897:           Set var_B4 = Me.TxtGt1
  loc_19DD89D:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, CVar(CLng(arg_C)), CVar(CLng(var_C4)))
  loc_19DD8A5:           var_164 = var_C0.Text
  loc_19DD8B9:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DD8C1:           var_164 = CVar(CLng(6)) 'Long
  loc_19DD8EA:           var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DD8F2:           var_230 = CVar(CLng(1)) 'Long
  loc_19DD910:           var_250 = CVar(CLng(CStr(Me.FGCat.TextMatrix)))) 'Long
  loc_19DD918:           var_270 = CVar(CLng(7)) 'Long
  loc_19DD941:           var_290 = CVar(CLng(var_94)) 'Long
  loc_19DD949:           var_328 = CVar(CLng(1)) 'Long
  loc_19DD992:           var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DD9B9:           var_154 = CVar((Val(var_C4) + ((Val(CStr(Me.FGCat.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix)))) * var_2C0))) 'Double
  loc_19DD9D6:           Set var_1D4 = Me.TxtGt1
  loc_19DD9DC:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_39C, CStr(Format(Format(Format(var_C0.TextMatrix), "0.00"), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(arg_C)))
  loc_19DD9E4:           var_39C.Text = CVar(CLng(CStr(Me.FGCat.TextMatrix))))
  loc_19DDA22:         End If
  loc_19DDA22:       End If
  loc_19DDA25:     Next var_316 'Integer
  loc_19DDA2D:   Else
  loc_19DDA35:     If (arg_C = CInt(&H1E)) Then
  loc_19DDA44:       Set var_B4 = Me.TxtGt2
  loc_19DDA4A:       Call 0.Method_Proc_162_102_19DE8A88 (var_B6, var_92)
  loc_19DDA55:       For var_3A0 =  To var_B6:   1 = var_3A0 'Integer
  loc_19DDA68:         Set var_B4 = Me.LblCap2
  loc_19DDA6E:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DDA76:         var_C4 = var_C0.Tag
  loc_19DDA82:         var_124 = CVar(CLng(var_94)) 'Long
  loc_19DDABC:         If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_19DDAC3:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DDACB:           var_164 = CVar(CLng(1)) 'Long
  loc_19DDAE5:           var_C4 = CStr(Me.FGCat.TextMatrix))
  loc_19DDAFB:           Set var_C0 = Me.FGrid
  loc_19DDB2E:           If (CDbl(Val(CStr(var_C0.TextMatrix)))) > CDbl(0)) Then
  loc_19DDB3E:             Set var_B4 = Me.TxtGt2
  loc_19DDB44:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, CVar(CLng(arg_C)), CVar(CLng(var_C4)))
  loc_19DDB4C:             var_164 = var_C0.Text
  loc_19DDB60:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DDB68:             var_164 = CVar(CLng(6)) 'Long
  loc_19DDB91:             var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DDB99:             var_230 = CVar(CLng(1)) 'Long
  loc_19DDBB7:             var_250 = CVar(CLng(CStr(Me.FGCat.TextMatrix)))) 'Long
  loc_19DDBBF:             var_270 = CVar(CLng(7)) 'Long
  loc_19DDBE8:             var_290 = CVar(CLng(var_94)) 'Long
  loc_19DDBF0:             var_328 = CVar(CLng(1)) 'Long
  loc_19DDC39:             var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DDC60:             var_154 = CVar((Val(var_C4) + ((Val(CStr(Me.FGCat.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix)))) * var_2C0))) 'Double
  loc_19DDC7D:             Set var_1D4 = Me.TxtGt2
  loc_19DDC83:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_39C, CStr(Format(Format(Format(var_C0.TextMatrix), "0.00"), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(arg_C)))
  loc_19DDC8B:             var_39C.Text = CVar(CLng(CStr(Me.FGCat.TextMatrix))))
  loc_19DDCC9:           End If
  loc_19DDCC9:         End If
  loc_19DDCCC:       Next var_3A0 'Integer
  loc_19DDCD4:     Else
  loc_19DDCDC:       If (arg_C = CInt(&H1F)) Then
  loc_19DDCEB:         Set var_B4 = Me.TxtGt3
  loc_19DDCF1:         Call 0.Method_Proc_162_102_19DE8A88 (var_B6, var_92)
  loc_19DDCFC:         For var_3A4 =  To var_B6:     1 = var_3A4 'Integer
  loc_19DDD0F:           Set var_B4 = Me.LblCap3
  loc_19DDD15:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DDD1D:           var_C4 = var_C0.Tag
  loc_19DDD29:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DDD63:           If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_19DDD6A:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DDD72:             var_164 = CVar(CLng(1)) 'Long
  loc_19DDD8C:             var_C4 = CStr(Me.FGCat.TextMatrix))
  loc_19DDDA2:             Set var_C0 = Me.FGrid
  loc_19DDDD5:             If (CDbl(Val(CStr(var_C0.TextMatrix)))) > CDbl(0)) Then
  loc_19DDDE5:               Set var_B4 = Me.TxtGt3
  loc_19DDDEB:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, CVar(CLng(arg_C)), CVar(CLng(var_C4)))
  loc_19DDDF3:               var_164 = var_C0.Text
  loc_19DDE00:               var_2A8 = Val(var_C4)
  loc_19DDE07:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DDE0F:               var_164 = CVar(CLng(6)) 'Long
  loc_19DDE1E:               var_E4 = Me.FGCat.TextMatrix)
  loc_19DDE38:               var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DDE40:               var_230 = CVar(CLng(1)) 'Long
  loc_19DDE49:               Set var_D0 = Me.FGCat
  loc_19DDE5A:               var_D4 = CStr(var_D0.TextMatrix))
  loc_19DDE5E:               var_250 = CVar(CLng(var_D4)) 'Long
  loc_19DDE66:               var_270 = CVar(CLng(7)) 'Long
  loc_19DDE8F:               var_290 = CVar(CLng(var_94)) 'Long
  loc_19DDE97:               var_328 = CVar(CLng(1)) 'Long
  loc_19DDEE0:               var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DDF07:               var_154 = CVar((var_2A8 + ((Val(CStr(var_E4)) / Val(CStr(Me.FGrid.TextMatrix)))) * var_2C0))) 'Double
  loc_19DDF24:               Set var_1D4 = Me.TxtGt3
  loc_19DDF2A:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_39C, CStr(Format(Format(Format(var_C0.TextMatrix), "0.00"), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(arg_C)))
  loc_19DDF32:               var_39C.Text = CVar(CLng(CStr(Me.FGCat.TextMatrix))))
  loc_19DDF70:             End If
  loc_19DDF70:           End If
  loc_19DDF73:         Next var_3A4 'Integer
  loc_19DDF78:       End If
  loc_19DDF78:     End If
  loc_19DDF78:   End If
  loc_19DDF7B: Next var_308 'Integer
  loc_19DDF8C: Set var_B4 = Me.TxtGt
  loc_19DDF92: Call 0.Method_Proc_162_102_19DE8A88 (var_B6, var_92)
  loc_19DDF9D: For var_3A8 =  To var_B6: 2 = var_3A8 'Integer
  loc_19DDFA6:   var_3AA = arg_C
  loc_19DDFB1:   If (var_3AA = CInt(&H1D)) Then
  loc_19DDFC1:     Set var_B4 = Me.LblCap1
  loc_19DDFC7:     Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0)
  loc_19DDFF1:     If (var_C0.Tag = MemVar_1F92078 & "ROFF") Then
  loc_19DDFFD:       Call Proc_162_103_151D3B0(var_92, arg_C)
  loc_19DE005:       var_9C = var_2A8
  loc_19DE020:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(var_9C))
  loc_19DE028:       var_C0.Caption = var_9C
  loc_19DE04D:       unk_58616C.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_E4, -1
  loc_19DE058:       Set var_88 = Me.LblDummy1
  loc_19DE075:       If (var_88.RecordCount > 0) Then
  loc_19DE087:         var_B4 = var_88.Fields
  loc_19DE08F:         var_C0 = var_B4.Item("RoundOffType")
  loc_19DE0BB:         Proc_6_85_1261068(var_9C, CByte(2), CStr(Left(CVar(var_C0), 1)))
  loc_19DE0F8:         Set var_CC = Me.TxtGt1
  loc_19DE0FE:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_19DE106:         var_D0.Text = 1
  loc_19DE12B:       Else
  loc_19DE12E:         var_C4 = "S"
  loc_19DE13F:         Proc_6_85_1261068(var_9C, CByte(2), var_C4)
  loc_19DE17C:         Set var_B4 = Me.TxtGt1
  loc_19DE182:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DE18A:         var_C0.Text = 1
  loc_19DE1A6:       End If
  loc_19DE1A9:     Else
  loc_19DE1B0:       If (var_92 <> arg_C) Then
  loc_19DE1C0:         Set var_B4 = Me.LblCap1
  loc_19DE1C6:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DE1CE:         var_2A8 = var_C0.Tag
  loc_19DE1EF:         Set var_CC = Me.LblCap1
  loc_19DE1F5:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, var_D4)
  loc_19DE1FD:         (var_C4 = MemVar_1F92078 & "TOT") = var_D0.Tag
  loc_19DE228:         If (var_2A8 Or (var_D4 = MemVar_1F92078 & "NET")) Then
  loc_19DE234:           Call Proc_162_103_151D3B0(var_92, arg_C)
  loc_19DE251:           var_E4 = CVar(var_2A8) 'Double
  loc_19DE260:           var_C4 = CStr(Format(var_E4, "0.00"))
  loc_19DE26E:           Set var_B4 = Me.TxtGt1
  loc_19DE274:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, 1)
  loc_19DE27C:           var_C0.Text = 1
  loc_19DE294:         End If
  loc_19DE294:       End If
  loc_19DE294:     End If
  loc_19DE297:   Else
  loc_19DE29F:     If (var_3AA = CInt(&H1E)) Then
  loc_19DE2AF:       Set var_B4 = Me.LblCap2
  loc_19DE2B5:       Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DE2DF:       If (var_C4 = MemVar_1F92078 & "ROFF") Then
  loc_19DE2EB:         Call Proc_162_103_151D3B0(var_92, arg_C)
  loc_19DE2F3:         var_9C = var_C0.Tag
  loc_19DE30E:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(var_9C))
  loc_19DE316:         var_C0.Caption = var_9C
  loc_19DE33B:         unk_58616C.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_E4, -1
  loc_19DE346:         Set var_88 = Me.LblDummy2
  loc_19DE363:         If (var_88.RecordCount > 0) Then
  loc_19DE375:           var_B4 = var_88.Fields
  loc_19DE37D:           var_C0 = var_B4.Item("RoundOffType")
  loc_19DE3A9:           Proc_6_85_1261068(var_9C, CByte(2), CStr(Left(CVar(var_C0), 1)))
  loc_19DE3E6:           Set var_CC = Me.TxtGt2
  loc_19DE3EC:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_19DE3F4:           var_D0.Text = 1
  loc_19DE419:         Else
  loc_19DE41C:           var_C4 = "S"
  loc_19DE42D:           Proc_6_85_1261068(var_9C, CByte(2), var_C4)
  loc_19DE46A:           Set var_B4 = Me.TxtGt2
  loc_19DE470:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DE478:           var_C0.Text = 1
  loc_19DE494:         End If
  loc_19DE497:       Else
  loc_19DE49E:         If (var_92 <> arg_C) Then
  loc_19DE4AE:           Set var_B4 = Me.LblCap2
  loc_19DE4B4:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DE4BC:           var_2A8 = var_C0.Tag
  loc_19DE4DD:           Set var_CC = Me.LblCap2
  loc_19DE4E3:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, var_D4)
  loc_19DE4EB:           (var_C4 = MemVar_1F92078 & "TOT") = var_D0.Tag
  loc_19DE516:           If (var_2A8 Or (var_D4 = MemVar_1F92078 & "NET")) Then
  loc_19DE522:             Call Proc_162_103_151D3B0(var_92, arg_C)
  loc_19DE53F:             var_E4 = CVar(var_2A8) 'Double
  loc_19DE54E:             var_C4 = CStr(Format(var_E4, "0.00"))
  loc_19DE55C:             Set var_B4 = Me.TxtGt2
  loc_19DE562:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4, 1)
  loc_19DE56A:             var_C0.Text = 1
  loc_19DE582:           End If
  loc_19DE582:         End If
  loc_19DE582:       End If
  loc_19DE585:     Else
  loc_19DE58D:       If (var_3AA = CInt(&H1F)) Then
  loc_19DE59D:         Set var_B4 = Me.LblCap3
  loc_19DE5A3:         Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DE5CD:         If (var_C4 = MemVar_1F92078 & "ROFF") Then
  loc_19DE5D9:           Call Proc_162_103_151D3B0(var_92, arg_C)
  loc_19DE5E1:           var_9C = var_C0.Tag
  loc_19DE5FC:           Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(var_9C))
  loc_19DE604:           var_C0.Caption = var_9C
  loc_19DE629:           unk_58616C.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_E4, -1
  loc_19DE634:           Set var_88 = Me.LblDummy3
  loc_19DE651:           If (var_88.RecordCount > 0) Then
  loc_19DE663:             var_B4 = var_88.Fields
  loc_19DE66B:             var_C0 = var_B4.Item("RoundOffType")
  loc_19DE697:             Proc_6_85_1261068(var_9C, CByte(2), CStr(Left(CVar(var_C0), 1)))
  loc_19DE6D4:             Set var_CC = Me.TxtGt3
  loc_19DE6DA:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_19DE6E2:             var_D0.Text = 1
  loc_19DE707:           Else
  loc_19DE70A:             var_C4 = "S"
  loc_19DE71B:             Proc_6_85_1261068(var_9C, CByte(2), var_C4)
  loc_19DE758:             Set var_B4 = Me.TxtGt3
  loc_19DE75E:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DE766:             var_C0.Text = 1
  loc_19DE782:           End If
  loc_19DE785:         Else
  loc_19DE78C:           If (var_92 <> arg_C) Then
  loc_19DE79C:             Set var_B4 = Me.LblCap3
  loc_19DE7A2:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, var_C4)
  loc_19DE7AA:             var_2A8 = var_C0.Tag
  loc_19DE7CB:             Set var_CC = Me.LblCap3
  loc_19DE7D1:             Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_D0, var_D4)
  loc_19DE7D9:             (var_C4 = MemVar_1F92078 & "TOT") = var_D0.Tag
  loc_19DE804:             If (var_2A8 Or (var_D4 = MemVar_1F92078 & "NET")) Then
  loc_19DE810:               Call Proc_162_103_151D3B0(var_92, arg_C)
  loc_19DE84A:               Set var_B4 = Me.TxtGt3
  loc_19DE850:               Call 0.Method_Proc_162_102_19DE8A80 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DE858:               var_C0.Text = 1
  loc_19DE870:             End If
  loc_19DE870:           End If
  loc_19DE870:         End If
  loc_19DE870:       End If
  loc_19DE870:     End If
  loc_19DE870:   End If
  loc_19DE873: Next var_3A8 'Integer
  loc_19DE87F: Call Proc_162_111_129A24C(CInt(&H1D))
  loc_19DE88B: Call Proc_162_111_129A24C(CInt(&H1E))
  loc_19DE897: Call Proc_162_111_129A24C(CInt(&H1F))
  loc_19DE8A1: Set var_88 = Nothing
  loc_19DE8A4: Exit Sub
End Sub

Public Sub Proc_162_103_151D3B0(arg_C, arg_10) '151D3B0
  'Data Table: 586140
  Dim var_A4 As Integer
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_160 As Double
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_D0 As Variant
  Dim var_A0 As Double
  Dim var_174 As Variant
  Dim var_184 As Label
  Dim var_8C As Double
  Dim var_1AC As Variant
  loc_151C483: var_A4 = arg_10
  loc_151C48E: If (var_A4 = CInt(&H1D)) Then
  loc_151C49E:   Set var_A8 = Me.TxtGt1
  loc_151C4A4:   Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC)
  loc_151C4C3:   var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_151C4E1:   Set var_A8 = Me.LblCap1
  loc_151C4E7:   Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC)
  loc_151C511:   If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_151C539:     For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_151C543:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151C54B:       var_108 = CVar(CLng(&H1B)) 'Long
  loc_151C576:       If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_151C57D:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151C585:         var_108 = CVar(CLng(8)) 'Long
  loc_151C5AE:         var_128 = CVar(CLng(var_A2)) 'Long
  loc_151C5B7:         var_148 = CVar(CLng(arg_10)) 'Long
  loc_151C5E7:         var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_151C5FF:       End If
  loc_151C602:     Next var_D8 'Integer
  loc_151C60A:   Else
  loc_151C62F:     For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_16C 'Integer
  loc_151C639:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151C641:       var_108 = CVar(CLng(8)) 'Long
  loc_151C66A:       var_128 = CVar(CLng(var_A2)) 'Long
  loc_151C673:       var_148 = CVar(CLng(arg_10)) 'Long
  loc_151C67C:       Set var_AC = Me.FGrid
  loc_151C6A3:       var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_AC.TextMatrix)))))
  loc_151C6BE:     Next var_16C 'Integer
  loc_151C6C3:   End If
  loc_151C6CD:   If (Len(var_90) > 0) Then
  loc_151C6FF:     Set var_A8 = Me.LblCap1
  loc_151C705:     Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC)
  loc_151C71C:     var_D4 = MemVar_1F92078 & "SCH"
  loc_151C72E:     Set var_170 = Me.LblCap1
  loc_151C734:     Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_174, var_178)
  loc_151C73C:     (var_AC.Tag = var_D4) = var_174.Tag
  loc_151C75E:     Set var_180 = Me.LblCap1
  loc_151C764:     Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_184)
  loc_151C7B0:     If CBool( And (((Left(var_90, 1) = "1") Or (var_178 = MemVar_1F92078 & "ADD")) Or (var_184.Tag = MemVar_1F92078 & "DED"))) Then
  loc_151C7B6:       var_8C = var_A0
  loc_151C7BC:     Else
  loc_151C7D4:       var_B0 = CStr(Left(var_90, 1))
  loc_151C7EE:       Set var_A8 = Me.TxtGt1
  loc_151C7F4:       Call 0.Method_Proc_162_103_151D3B00 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_151C7FC:       var_160 = var_AC.Text
  loc_151C809:       var_8C = Val(var_D4)
  loc_151C81D:     End If
  loc_151C83E:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151C848:     ' Referenced from: 151C98D
  loc_151C852:     If (Len(var_90) > 0) Then
  loc_151C895:       var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151C8DF:       var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151C8F6:       Set var_A8 = Me.TxtGt1
  loc_151C8FC:       Call 0.Method_Proc_162_103_151D3B00 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_151C911:       var_160 = Val(var_B0)
  loc_151C928:       Set var_170 = Me.TxtGt1
  loc_151C92E:       Call 0.Method_Proc_162_103_151D3B00 (var_AC.Text, var_174, var_D4, CVar(var_8C))
  loc_151C944:       var_D0 = CVar(-Val(var_D4)) 'Double
  loc_151C957:       var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_151C966:       var_1AC = (var_8C + IIf(var_90, CVar(var_174.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_151C96B:       var_8C = CSng(var_1AC)
  loc_151C98D:       GoTo loc_151C848
  loc_151C990:     End If
  loc_151C990:   End If
  loc_151C993: Else
  loc_151C99B:   If (var_A4 = CInt(&H1E)) Then
  loc_151C9AB:     Set var_A8 = Me.TxtGt
  loc_151C9B1:     Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC, var_B0)
  loc_151C9B9:     var_8C = var_AC.Tag
  loc_151C9D0:     var_90 = CStr(Trim(CVar(var_B0)))
  loc_151C9EE:     Set var_A8 = Me.LblCap2
  loc_151C9F4:     Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC)
  loc_151CA1E:     If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_151CA46:       For var_1B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_1B0 'Integer
  loc_151CA50:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151CA58:         var_108 = CVar(CLng(&H1B)) 'Long
  loc_151CA83:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_151CA8A:           var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151CA92:           var_108 = CVar(CLng(8)) 'Long
  loc_151CABB:           var_128 = CVar(CLng(var_A2)) 'Long
  loc_151CAC4:           var_148 = CVar(CLng(arg_10)) 'Long
  loc_151CAF4:           var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_151CB0C:         End If
  loc_151CB0F:       Next var_1B0 'Integer
  loc_151CB17:     Else
  loc_151CB3C:       For var_1B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_A2 = var_1B4 'Integer
  loc_151CB46:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151CB4E:         var_108 = CVar(CLng(8)) 'Long
  loc_151CB77:         var_128 = CVar(CLng(var_A2)) 'Long
  loc_151CB80:         var_148 = CVar(CLng(arg_10)) 'Long
  loc_151CB89:         Set var_AC = Me.FGrid
  loc_151CBB0:         var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_AC.TextMatrix)))))
  loc_151CBCB:       Next var_1B4 'Integer
  loc_151CBD0:     End If
  loc_151CBDA:     If (Len(var_90) > 0) Then
  loc_151CC0C:       Set var_A8 = Me.LblCap2
  loc_151CC12:       Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC)
  loc_151CC29:       var_D4 = MemVar_1F92078 & "SCH"
  loc_151CC3B:       Set var_170 = Me.LblCap2
  loc_151CC41:       Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_174, var_178)
  loc_151CC49:       (var_AC.Tag = var_D4) = var_174.Tag
  loc_151CC6B:       Set var_180 = Me.LblCap2
  loc_151CC71:       Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_184)
  loc_151CCBD:       If CBool( And (((Left(var_90, 1) = "1") Or (var_178 = MemVar_1F92078 & "ADD")) Or (var_184.Tag = MemVar_1F92078 & "DED"))) Then
  loc_151CCC3:         var_8C = var_A0
  loc_151CCC9:       Else
  loc_151CCE1:         var_B0 = CStr(Left(var_90, 1))
  loc_151CCFB:         Set var_A8 = Me.TxtGt2
  loc_151CD01:         Call 0.Method_Proc_162_103_151D3B00 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_151CD09:         var_160 = var_AC.Text
  loc_151CD16:         var_8C = Val(var_D4)
  loc_151CD2A:       End If
  loc_151CD4B:       var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151CD55:       ' Referenced from:   151CE9A
  loc_151CD5F:       If (Len(var_90) > 0) Then
  loc_151CDA2:         var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151CDEC:         var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151CE03:         Set var_A8 = Me.TxtGt2
  loc_151CE09:         Call 0.Method_Proc_162_103_151D3B00 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_151CE1E:         var_160 = Val(var_B0)
  loc_151CE35:         Set var_170 = Me.TxtGt2
  loc_151CE3B:         Call 0.Method_Proc_162_103_151D3B00 (var_AC.Text, var_174, var_D4, CVar(var_8C))
  loc_151CE51:         var_D0 = CVar(-Val(var_D4)) 'Double
  loc_151CE64:         var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_151CE73:         var_1AC = (var_8C + IIf(var_90, CVar(var_174.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_151CE78:         var_8C = CSng(var_1AC)
  loc_151CE9A:         GoTo loc_151CD55
  loc_151CE9D:       End If
  loc_151CE9D:     End If
  loc_151CEA0:   Else
  loc_151CEA8:     If (var_A4 = CInt(&H1F)) Then
  loc_151CEB8:       Set var_A8 = Me.TxtGt3
  loc_151CEBE:       Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC, var_B0)
  loc_151CEC6:       var_8C = var_AC.Tag
  loc_151CEDD:       var_90 = CStr(Trim(CVar(var_B0)))
  loc_151CEFB:       Set var_A8 = Me.LblCap3
  loc_151CF01:       Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC)
  loc_151CF2B:       If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_151CF53:         For var_1B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_A2 = var_1B8 'Integer
  loc_151CF5D:           var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151CF65:           var_108 = CVar(CLng(&H1B)) 'Long
  loc_151CF90:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_151CF97:             var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151CF9F:             var_108 = CVar(CLng(8)) 'Long
  loc_151CFC8:             var_128 = CVar(CLng(var_A2)) 'Long
  loc_151CFD1:             var_148 = CVar(CLng(arg_10)) 'Long
  loc_151D001:             var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_151D019:           End If
  loc_151D01C:         Next var_1B8 'Integer
  loc_151D024:       Else
  loc_151D049:         For var_1BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):       var_A2 = var_1BC 'Integer
  loc_151D053:           var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151D05B:           var_108 = CVar(CLng(8)) 'Long
  loc_151D084:           var_128 = CVar(CLng(var_A2)) 'Long
  loc_151D08D:           var_148 = CVar(CLng(arg_10)) 'Long
  loc_151D096:           Set var_AC = Me.FGrid
  loc_151D0BD:           var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_AC.TextMatrix)))))
  loc_151D0D8:         Next var_1BC 'Integer
  loc_151D0DD:       End If
  loc_151D0E7:       If (Len(var_90) > 0) Then
  loc_151D119:         Set var_A8 = Me.LblCap3
  loc_151D11F:         Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_AC)
  loc_151D136:         var_D4 = MemVar_1F92078 & "SCH"
  loc_151D148:         Set var_170 = Me.LblCap3
  loc_151D14E:         Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_174, var_178)
  loc_151D156:         (var_AC.Tag = var_D4) = var_174.Tag
  loc_151D178:         Set var_180 = Me.LblCap3
  loc_151D17E:         Call 0.Method_Proc_162_103_151D3B00 (arg_C, var_184)
  loc_151D1CA:         If CBool( And (((Left(var_90, 1) = "1") Or (var_178 = MemVar_1F92078 & "ADD")) Or (var_184.Tag = MemVar_1F92078 & "DED"))) Then
  loc_151D1D0:           var_8C = var_A0
  loc_151D1D6:         Else
  loc_151D1EE:           var_B0 = CStr(Left(var_90, 1))
  loc_151D208:           Set var_A8 = Me.TxtGt3
  loc_151D20E:           Call 0.Method_Proc_162_103_151D3B00 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_151D216:           var_160 = var_AC.Text
  loc_151D223:           var_8C = Val(var_D4)
  loc_151D237:         End If
  loc_151D258:         var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151D262:         ' Referenced from:     151D3A7
  loc_151D26C:         If (Len(var_90) > 0) Then
  loc_151D2AF:           var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151D2F9:           var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151D310:           Set var_A8 = Me.TxtGt3
  loc_151D316:           Call 0.Method_Proc_162_103_151D3B00 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_151D32B:           var_160 = Val(var_B0)
  loc_151D342:           Set var_170 = Me.TxtGt3
  loc_151D348:           Call 0.Method_Proc_162_103_151D3B00 (var_AC.Text, var_174, var_D4, CVar(var_8C))
  loc_151D35E:           var_D0 = CVar(-Val(var_D4)) 'Double
  loc_151D371:           var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_151D380:           var_1AC = (var_8C + IIf(var_90, CVar(var_174.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_151D385:           var_8C = CSng(var_1AC)
  loc_151D3A7:           GoTo loc_151D262
  loc_151D3AA:         End If
  loc_151D3AA:       End If
  loc_151D3AA:     End If
  loc_151D3AA:   End If
  loc_151D3AA: End If
  loc_151D3AA: Proc_162_103_151D3B0 = var_8C
End Sub

Public Sub Proc_162_104_11FB264(arg_C) '11FB264
  'Data Table: 586140
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_12C As Variant
  Dim var_13C As Label
  Dim var_8C As Double
  Dim var_D0 As Variant
  Dim var_164 As Variant
  loc_11FADED: Set var_A8 = Me.TxtGt
  loc_11FADF3: Call 0.Method_Proc_162_104_11FB2640 (arg_C, var_AC)
  loc_11FAE12: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_11FAE30: Set var_A8 = Me.LblCap
  loc_11FAE36: Call 0.Method_Proc_162_104_11FB2640 (arg_C, var_AC)
  loc_11FAE60: If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_11FAE88:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_11FAE92:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FAE9A:     var_108 = CVar(CLng(&H1B)) 'Long
  loc_11FAEC5:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11FAECC:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FAED4:       var_108 = CVar(CLng(&HA)) 'Long
  loc_11FAF00:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FAF0C:     End If
  loc_11FAF0F:   Next var_D8 'Integer
  loc_11FAF17: Else
  loc_11FAF3C:   For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_124 'Integer
  loc_11FAF46:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FAF4E:     var_108 = CVar(CLng(&HA)) 'Long
  loc_11FAF7A:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FAF89:   Next var_124 'Integer
  loc_11FAF8E: End If
  loc_11FAF98: If (Len(var_90) > 0) Then
  loc_11FAFCA:   Set var_A8 = Me.LblCap
  loc_11FAFD0:   Call 0.Method_Proc_162_104_11FB2640 (arg_C, var_AC)
  loc_11FAFE7:   var_D4 = MemVar_1F92078 & "SCH"
  loc_11FAFF9:   Set var_128 = Me.LblCap
  loc_11FAFFF:   Call 0.Method_Proc_162_104_11FB2640 (arg_C, var_12C, var_130)
  loc_11FB007:   (var_AC.Tag = var_D4) = var_12C.Tag
  loc_11FB029:   Set var_138 = Me.LblCap
  loc_11FB02F:   Call 0.Method_Proc_162_104_11FB2640 (arg_C, var_13C)
  loc_11FB07B:   If CBool( And (((Left(var_90, 1) = "1") Or (var_130 = MemVar_1F92078 & "ADD")) Or (var_13C.Tag = MemVar_1F92078 & "DED"))) Then
  loc_11FB081:     var_8C = var_A0
  loc_11FB087:   Else
  loc_11FB09F:     var_B0 = CStr(Left(var_90, 1))
  loc_11FB0B9:     Set var_A8 = Me.TxtGt
  loc_11FB0BF:     Call 0.Method_Proc_162_104_11FB2640 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_11FB0C7:     var_120 = var_AC.Text
  loc_11FB0D4:     var_8C = Val(var_D4)
  loc_11FB0E8:   End If
  loc_11FB109:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FB113:   ' Referenced from: 11FB258
  loc_11FB11D:   If (Len(var_90) > 0) Then
  loc_11FB160:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FB1AA:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FB1C1:     Set var_A8 = Me.TxtGt
  loc_11FB1C7:     Call 0.Method_Proc_162_104_11FB2640 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_11FB1DC:     var_120 = Val(var_B0)
  loc_11FB1F3:     Set var_128 = Me.TxtGt
  loc_11FB1F9:     Call 0.Method_Proc_162_104_11FB2640 (var_AC.Text, var_12C, var_D4, CVar(var_8C))
  loc_11FB20F:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_11FB222:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_11FB231:     var_164 = (var_8C + IIf(var_90, CVar(var_12C.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_11FB236:     var_8C = CSng(var_164)
  loc_11FB258:     GoTo loc_11FB113
  loc_11FB25B:   End If
  loc_11FB25B: End If
  loc_11FB25B: Proc_162_104_11FB264 = var_8C
End Sub

Public Sub Proc_162_105_10AA09C(arg_C, arg_10, arg_14) '10AA09C
  'Data Table: 586140
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10A9DF1: var_88 = vbNullString
  loc_10A9E08: arg_C = CStr(Trim(arg_C))
  loc_10A9E14: var_8A = CInt(Len(arg_C))
  loc_10A9E1A: var_C0 = arg_10
  loc_10A9E25: If (var_C0 = "A") Then
  loc_10A9E44:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10A9E48:   var_9C = arg_C 'Variant
  loc_10A9E9E:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10A9EB2:   var_110 = (0 + Chr(&H1B))
  loc_10A9EBB:   var_120 = (var_110 + "G")
  loc_10A9ECF:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10A9ED9:   var_150 = (var_140 + CVar(arg_C))
  loc_10A9EED:   var_170 = (var_150 + Chr(&H1B))
  loc_10A9EF6:   var_190 = (var_170 + "H")
  loc_10A9EFB:   var_88 = CStr(var_190)
  loc_10A9F1C: Else
  loc_10A9F24:   If (var_C0 = "D") Then
  loc_10A9F32:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10A9F43:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10A9F47:     var_9C = "G" 'Variant
  loc_10A9F9D:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10A9FB1:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10A9FBB:     var_120 = (var_110 + CVar(arg_C))
  loc_10A9FC0:     var_88 = CStr(var_120)
  loc_10A9FD5:   Else
  loc_10A9FDD:     If (var_C0 = "E") Then
  loc_10A9FEE:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10A9FF2:       var_9C = CVar(arg_C) 'Variant
  loc_10AA048:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10AA05C:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AA066:       var_120 = (var_110 + CVar(arg_C))
  loc_10AA07A:       var_140 = (var_120 + Chr(&H12))
  loc_10AA07F:       var_88 = CStr(var_140)
  loc_10AA095:     End If
  loc_10AA095:   End If
  loc_10AA095: End If
  loc_10AA095: Proc_162_105_10AA09C = arg_14
End Sub

Public Sub Proc_162_106_128C764(arg_C, arg_10, arg_14) '128C764
  'Data Table: 586140
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_58616C As Connection15
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_128C1E9: var_90 = vbNullString
  loc_128C1EF: var_94 = vbNullString
  loc_128C1F5: var_98 = vbNullString
  loc_128C1FB: var_9C = vbNullString
  loc_128C206: If (MemVar_1F923C0 = "Y") Then
  loc_128C210:   var_E8 = vbNullString & "DATE "
  loc_128C241:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_128C254: End If
  loc_128C25C: If (MemVar_1F923C4 = "Y") Then
  loc_128C26E:   var_D4 = "dd/MM/yy"
  loc_128C2C0:   var_16C = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_D4)))), 0))
  loc_128C2E7:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_128C2EF:   var_1DC = (var_16C - Len(var_1BC))
  loc_128C300:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_128C309:   var_22C = (var_20C + " PAGE NO ")
  loc_128C32B:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_128C330:   var_8C = CStr(var_26C)
  loc_128C35D: End If
  loc_128C38A: unk_58616C.Execute "Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R  Where R.CODE='" & global_60 & "'", var_D4, -1
  loc_128C395: Set var_A0 = var_270
  loc_128C3AC: If (MemVar_1F923C8 = "K") Then
  loc_128C3EB:   If (var_A0.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_128C3F8:     If (Len(MemVar_1F92130) <= &H28) Then
  loc_128C411:       var_E4 = (CVar(var_90) + Chr(&HF))
  loc_128C425:       var_13C = (Format(MemVar_1F920EC, Chr(&HF)) + Chr(&HE))
  loc_128C439:       var_16C = (0 + Chr(&H1B))
  loc_128C44D:       var_19C = (var_16C + Chr(&H45))
  loc_128C457:       var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_128C46B:       var_1DC = (var_1BC + Chr(&H1B))
  loc_128C47F:       var_20C = (var_1DC + Chr(&H46))
  loc_128C493:       var_24C = (var_20C + Chr(&HE))
  loc_128C498:       var_90 = CStr(Str(arg_C))
  loc_128C4BF:     Else
  loc_128C4D5:       var_E4 = (CVar(var_90) + Chr(&H12))
  loc_128C4E9:       var_13C = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_128C4FD:       var_16C = (0 + Chr(&HF))
  loc_128C507:       var_18C = (var_16C + CVar(MemVar_1F92130))
  loc_128C51B:       var_1BC = (Chr(&H45) + Chr(&H12))
  loc_128C520:       var_90 = CStr(var_1BC)
  loc_128C538:     End If
  loc_128C538:   End If
  loc_128C54C:   If (var_A0.RecordCount > 0) Then
  loc_128C55E:     var_270 = var_A0.Fields
  loc_128C588:     If (Proc_6_38_E68A98(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_128C5BF:       var_290 = Val(CStr(arg_14))
  loc_128C5E0:       Call Proc_162_105_10AA09C(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_128C5E9:       var_94 = var_288 & var_288
  loc_128C601:     End If
  loc_128C63A:     If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_128C692:       Call Proc_162_105_10AA09C(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_128C69B:       var_98 = var_288 & var_288
  loc_128C6B3:     End If
  loc_128C6B3:   End If
  loc_128C6B3: End If
  loc_128C6BD: If (Len(var_8C) > 0) Then
  loc_128C6C5:   Print 1, var_8C
  loc_128C6D1:   arg_10 = (arg_10 + 1)
  loc_128C6D4: End If
  loc_128C6DE: If (Len(var_90) > 0) Then
  loc_128C6E6:   Print 1, var_90
  loc_128C6F2:   arg_10 = (arg_10 + 1)
  loc_128C6F5: End If
  loc_128C6FF: If (Len(var_94) > 0) Then
  loc_128C707:   Print 1, var_94
  loc_128C713:   arg_10 = (arg_10 + 1)
  loc_128C716: End If
  loc_128C720: If (Len(var_98) > 0) Then
  loc_128C728:   Print 1, var_98
  loc_128C734:   arg_10 = (arg_10 + 1)
  loc_128C737: End If
  loc_128C741: If (Len(var_9C) > 0) Then
  loc_128C749:   Print 1, var_9C
  loc_128C755:   arg_10 = (arg_10 + 1)
  loc_128C758: End If
  loc_128C75E: Proc_162_106_128C764 = arg_10
End Sub

Public Sub Proc_162_107_183DB84(arg_C, arg_10, arg_14) '183DB84
  'Data Table: 586140
  Dim var_E4 As String
  Dim unk_58616C As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_124 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Variant
  Dim var_1FC As Variant
  Dim var_114 As Field20
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_1C0 As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_183B700: unk_58616C.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_183B70B: Set var_D8 = var_10C
  loc_183B72F: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_183B73F: unk_58616C.Execute var_E4 & "'", var_108, -1
  loc_183B74A: Set var_8C = var_10C
  loc_183B76E: If (var_D8.RecordCount > 0) Then
  loc_183B786:   var_10C = var_D8.Fields
  loc_183B78E:   var_114 = var_10C.Item("RestCode")
  loc_183B7AD:   If (var_10C <> Proc_6_38_E68A98(CVar(var_114), global_60)) Then
  loc_183B7B2:     var_DA = &HFF
  loc_183B7B8:   Else
  loc_183B7BA:     var_DA = 0
  loc_183B7BD:   End If
  loc_183B7C0: Else
  loc_183B7C2:   var_DA = 0
  loc_183B7C5: End If
  loc_183B7C8: var_94 = arg_14
  loc_183B7CD: var_86 = 1
  loc_183B7DB: If (global_212 = "Room Service") Then
  loc_183B7FB:   Set var_10C = Me.Txt
  loc_183B801:   Call 0.Method_Proc_162_107_183DB840 (CInt(&HA), var_114, "Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8)
  loc_183B810:   Proc_6_39_E7C810(var_124, CVar(var_114), var_86, var_94)
  loc_183B821:   var_154 = var_DA & var_124 & " and Site_Code='" 
  loc_183B842:   unk_58616C.Execute CStr(var_154 & CVar(MemVar_1F92070) & "'"), var_DA, var_DA
  loc_183B84D:   Set var_C0 = var_1B8
  loc_183B86B: End If
  loc_183B86E: var_A8 = var_94
  loc_183B874: var_B0 = var_94
  loc_183B87A: var_B8 = CDbl(0)
  loc_183B891: If (var_8C.RecordCount > 0) Then
  loc_183B894:   ' Referenced from: 183DB56
  loc_183B8A3:   If Not(var_8C.EOF) Then
  loc_183B8AA:     Set var_1C0 = Me.FGCat
  loc_183B8AD:     var_F8 = vbNullString
  loc_183B8D2:     If (var_8C.RecordCount > 0) Then
  loc_183B8DB:       var_D2 = (var_D2 + 1)
  loc_183B8E1:       var_F8 = "Nature"
  loc_183B914:       var_1D0 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8))) 'Variant
  loc_183B92D:       If (var_1D0 = "On Base Amt") Then
  loc_183B958:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_B8, var_B0)) 'String
  loc_183B97A:         If (Trim(var_124) = "Room Rate") Then
  loc_183B988:           If (global_212 = "Room Service") Then
  loc_183B9B1:             Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Limit")))
  loc_183B9DF:             Proc_6_39_E7C810(var_154, CVar(var_C0.Fields.Item("RoomRate")), var_124)
  loc_183B9E7:             var_174 = (var_A8 <= var_154)
  loc_183BA11:             Proc_6_39_E7C810(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_183BA41:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_183BA80:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183BABE:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183BAD1:               Else
  loc_183BB04:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_183BB2D:                 Proc_6_142_14A55B0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_183BB32:                 var_D0 = var_210
  loc_183BB46:               End If
  loc_183BB4D:               If (var_D0 > CDbl(0)) Then
  loc_183BB69:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BB71:                 var_164 = CVar(CLng(0)) 'Long
  loc_183BB7B:                 var_124 = CVar(CStr(var_86)) 'String
  loc_183BB82:                 LateIdCallSt
  loc_183BBAD:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BBB5:                 var_164 = CVar(CLng(1)) 'Long
  loc_183BBBF:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_183BBC6:                 LateIdCallSt
  loc_183BBDE:                 If (var_DA = 0) Then
  loc_183BBE5:                   Set var_1B8 = Me.FGCat
  loc_183BBFA:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183BC02:                   var_184 = CVar(CLng(2)) 'Long
  loc_183BC32:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183BC39:                   LateIdCallSt
  loc_183BC56:                 Else
  loc_183BC6D:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183BCA1:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183BCB8:                   unk_58616C.Execute CStr(var_134 & "')"), var_174, -1
  loc_183BCC3:                   Set var_E0 = var_1B8
  loc_183BCF7:                   If (var_E0.RecordCount > 0) Then
  loc_183BD13:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BD1B:                     var_184 = CVar(CLng(2)) 'Long
  loc_183BD4B:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183BD52:                     LateIdCallSt
  loc_183BD6C:                   End If
  loc_183BD6C:                 End If
  loc_183BD85:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BD8D:                 var_184 = CVar(CLng(3)) 'Long
  loc_183BDBD:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183BDC4:                 LateIdCallSt
  loc_183BDF7:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BDFF:                 var_164 = CVar(CLng(4)) 'Long
  loc_183BE09:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_183BE10:                 LateIdCallSt
  loc_183BE3B:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BE43:                 var_184 = CVar(CLng(5)) 'Long
  loc_183BE73:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183BE7A:                 LateIdCallSt
  loc_183BED4:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BEDC:                 var_240 = CVar(CLng(6)) 'Long
  loc_183BEE1:                 var_174 = 2
  loc_183BF20:                 var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_183BF27:                 LateIdCallSt
  loc_183BF64:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BF6C:                 var_184 = CVar(CLng(7)) 'Long
  loc_183BF9C:                 var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183BFA3:                 LateIdCallSt
  loc_183BFC0:               Else
  loc_183BFC6:                 var_86 = (var_86 - 1)
  loc_183BFDC:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_183BFF2:               End If
  loc_183C00B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C013:               var_164 = CVar(CLng(6)) 'Long
  loc_183C038:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183C061:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C069:               var_164 = CVar(CLng(6)) 'Long
  loc_183C071:               var_124 = var_1C0.TextMatrix)
  loc_183C084:               var_204 = Val(CStr(var_124))
  loc_183C08E:               var_94 = (var_94 + var_204)
  loc_183C0A5:               var_B0 = (var_B0 + var_D0)
  loc_183C0AB:               var_B8 = var_D0
  loc_183C0B5:               var_B0 = (var_B0 + var_D0)
  loc_183C0BB:               var_B8 = var_D0
  loc_183C0BE:             End If
  loc_183C0BE:           End If
  loc_183C0C1:         Else
  loc_183C0FD:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183C13B:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183C14E:           Else
  loc_183C1AA:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183C1AF:             var_D0 = var_B8
  loc_183C1C3:           End If
  loc_183C1E9:           Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_183C200:           var_164 = "Rate"
  loc_183C223:           Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item(var_164)), (var_124 <= CVar(var_94)), var_204)
  loc_183C24D:           If CBool(var_164 And (var_174 > 0)) Then
  loc_183C257:             If (var_D0 > CDbl(0)) Then
  loc_183C273:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C27B:               var_164 = CVar(CLng(0)) 'Long
  loc_183C285:               var_124 = CVar(CStr(var_86)) 'String
  loc_183C28C:               LateIdCallSt
  loc_183C2B7:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C2BF:               var_164 = CVar(CLng(1)) 'Long
  loc_183C2C9:               var_124 = CVar(CStr(arg_10)) 'String
  loc_183C2D0:               LateIdCallSt
  loc_183C2E8:               If (var_DA = 0) Then
  loc_183C2EF:                 Set var_1B8 = Me.FGCat
  loc_183C304:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183C30C:                 var_184 = CVar(CLng(2)) 'Long
  loc_183C33C:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183C343:                 LateIdCallSt
  loc_183C360:               Else
  loc_183C377:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183C3AB:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183C3C2:                 unk_58616C.Execute CStr(var_134 & "')"), var_174, -1
  loc_183C3CD:                 Set var_E0 = var_1B8
  loc_183C401:                 If (var_E0.RecordCount > 0) Then
  loc_183C41D:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C425:                   var_184 = CVar(CLng(2)) 'Long
  loc_183C455:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183C45C:                   LateIdCallSt
  loc_183C476:                 End If
  loc_183C476:               End If
  loc_183C48F:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C497:               var_184 = CVar(CLng(3)) 'Long
  loc_183C4C7:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183C4CE:               LateIdCallSt
  loc_183C501:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C509:               var_164 = CVar(CLng(4)) 'Long
  loc_183C513:               var_124 = CVar(CStr(var_A8)) 'String
  loc_183C51A:               LateIdCallSt
  loc_183C545:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C54D:               var_184 = CVar(CLng(5)) 'Long
  loc_183C57D:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183C584:               LateIdCallSt
  loc_183C5DE:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C5EB:               var_174 = 2
  loc_183C631:               LateIdCallSt
  loc_183C66E:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C6A3:               var_134 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))), CVar(CLng(6)), var_220)) 'String
  loc_183C6AA:               LateIdCallSt
  loc_183C6C2:             End If
  loc_183C6DB:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C6E3:             var_164 = CVar(CLng(6)) 'Long
  loc_183C708:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183C731:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C739:             var_164 = CVar(CLng(6)) 'Long
  loc_183C741:             var_124 = var_1C0.TextMatrix)
  loc_183C754:             var_204 = Val(CStr(var_124))
  loc_183C75E:             var_94 = (var_94 + var_204)
  loc_183C775:             var_B0 = (var_B0 + var_D0)
  loc_183C77B:             var_B8 = var_D0
  loc_183C77E:           End If
  loc_183C77E:         End If
  loc_183C781:       Else
  loc_183C78C:         If (var_1D0 = "On Running Total") Then
  loc_183C7CB:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183C809:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_183C81C:           Else
  loc_183C878:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183C87D:             var_D0 = var_94
  loc_183C891:           End If
  loc_183C8B7:           Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Rate")), var_D0, var_204, var_164)
  loc_183C8D1:           If (var_124 > 0) Then
  loc_183C8DB:             If (var_D0 > CDbl(0)) Then
  loc_183C8F7:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C8FF:               var_164 = CVar(CLng(0)) 'Long
  loc_183C909:               var_124 = CVar(CStr(var_86)) 'String
  loc_183C910:               LateIdCallSt
  loc_183C93B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C943:               var_164 = CVar(CLng(1)) 'Long
  loc_183C94D:               var_124 = CVar(CStr(arg_10)) 'String
  loc_183C954:               LateIdCallSt
  loc_183C96C:               If (var_DA = 0) Then
  loc_183C973:                 Set var_1B8 = Me.FGCat
  loc_183C988:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183C990:                 var_184 = CVar(CLng(2)) 'Long
  loc_183C9C0:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183C9C7:                 LateIdCallSt
  loc_183C9E4:               Else
  loc_183C9FB:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183CA2F:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183CA46:                 unk_58616C.Execute CStr(var_134 & "')"), var_174, -1
  loc_183CA51:                 Set var_E0 = var_1B8
  loc_183CA85:                 If (var_E0.RecordCount > 0) Then
  loc_183CAA1:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CAA9:                   var_184 = CVar(CLng(2)) 'Long
  loc_183CAD9:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183CAE0:                   LateIdCallSt
  loc_183CAFA:                 End If
  loc_183CAFA:               End If
  loc_183CB13:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CB1B:               var_184 = CVar(CLng(3)) 'Long
  loc_183CB4B:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183CB52:               LateIdCallSt
  loc_183CB85:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CB8D:               var_164 = CVar(CLng(4)) 'Long
  loc_183CB97:               var_124 = CVar(CStr(var_B0)) 'String
  loc_183CB9E:               LateIdCallSt
  loc_183CBC9:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CBD1:               var_184 = CVar(CLng(5)) 'Long
  loc_183CC01:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183CC08:               LateIdCallSt
  loc_183CC62:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CC6A:               var_240 = CVar(CLng(6)) 'Long
  loc_183CC6F:               var_174 = 2
  loc_183CCAE:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_183CCB5:               LateIdCallSt
  loc_183CCF2:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CCFA:               var_184 = CVar(CLng(7)) 'Long
  loc_183CD2A:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183CD31:               LateIdCallSt
  loc_183CD4B:             End If
  loc_183CD64:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CD6C:             var_164 = CVar(CLng(6)) 'Long
  loc_183CD91:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183CDBA:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CDC2:             var_164 = CVar(CLng(6)) 'Long
  loc_183CDE7:             var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_183CDFE:             var_B0 = (var_B0 + var_D0)
  loc_183CE04:             var_B8 = var_D0
  loc_183CE07:           End If
  loc_183CE0A:         Else
  loc_183CE15:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_183CE54:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183CE92:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_183CEA5:             Else
  loc_183CF01:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183CF06:               var_D0 = var_94
  loc_183CF1A:             End If
  loc_183CF21:             If (var_D0 > CDbl(0)) Then
  loc_183CF3D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CF45:               var_164 = CVar(CLng(0)) 'Long
  loc_183CF4F:               var_124 = CVar(CStr(var_86)) 'String
  loc_183CF56:               LateIdCallSt
  loc_183CF81:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CF89:               var_164 = CVar(CLng(1)) 'Long
  loc_183CF93:               var_124 = CVar(CStr(arg_10)) 'String
  loc_183CF9A:               LateIdCallSt
  loc_183CFB2:               If (var_DA = 0) Then
  loc_183CFB9:                 Set var_1B8 = Me.FGCat
  loc_183CFCE:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183CFD6:                 var_184 = CVar(CLng(2)) 'Long
  loc_183D006:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183D00D:                 LateIdCallSt
  loc_183D02A:               Else
  loc_183D041:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183D075:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183D08C:                 unk_58616C.Execute CStr(var_134 & "')"), var_174, -1
  loc_183D097:                 Set var_E0 = var_1B8
  loc_183D0CB:                 If (var_E0.RecordCount > 0) Then
  loc_183D0E7:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D0EF:                   var_184 = CVar(CLng(2)) 'Long
  loc_183D11F:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183D126:                   LateIdCallSt
  loc_183D140:                 End If
  loc_183D140:               End If
  loc_183D159:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D161:               var_184 = CVar(CLng(3)) 'Long
  loc_183D191:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183D198:               LateIdCallSt
  loc_183D1CB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D1D3:               var_164 = CVar(CLng(4)) 'Long
  loc_183D1DD:               var_124 = CVar(CStr(var_B8)) 'String
  loc_183D1E4:               LateIdCallSt
  loc_183D20F:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D217:               var_184 = CVar(CLng(5)) 'Long
  loc_183D247:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183D24E:               LateIdCallSt
  loc_183D2A8:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D2B0:               var_240 = CVar(CLng(6)) 'Long
  loc_183D2B5:               var_174 = 2
  loc_183D2F4:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_183D2FB:               LateIdCallSt
  loc_183D338:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D340:               var_184 = CVar(CLng(7)) 'Long
  loc_183D370:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183D377:               LateIdCallSt
  loc_183D391:             End If
  loc_183D3AA:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D3B2:             var_164 = CVar(CLng(6)) 'Long
  loc_183D3D7:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183D400:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D408:             var_164 = CVar(CLng(6)) 'Long
  loc_183D410:             var_124 = var_1C0.TextMatrix)
  loc_183D423:             var_204 = Val(CStr(var_124))
  loc_183D42D:             var_94 = (var_94 + var_204)
  loc_183D444:             var_B0 = (var_B0 + var_D0)
  loc_183D44A:             var_B8 = var_D0
  loc_183D450:           Else
  loc_183D48C:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183D4CA:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183D4DD:             Else
  loc_183D539:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183D53E:               var_D0 = var_94
  loc_183D552:             End If
  loc_183D555:             var_F8 = "Limit"
  loc_183D578:             Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_204, var_164)
  loc_183D5B2:             Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)), var_F8)
  loc_183D5DC:             If CBool(var_9C And (var_174 > 0)) Then
  loc_183D5E6:               If (var_D0 > CDbl(0)) Then
  loc_183D602:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D60A:                 var_164 = CVar(CLng(0)) 'Long
  loc_183D614:                 var_124 = CVar(CStr(var_86)) 'String
  loc_183D61B:                 LateIdCallSt
  loc_183D646:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D64E:                 var_164 = CVar(CLng(1)) 'Long
  loc_183D658:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_183D65F:                 LateIdCallSt
  loc_183D677:                 If (var_DA = 0) Then
  loc_183D67E:                   Set var_1B8 = Me.FGCat
  loc_183D693:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183D69B:                   var_184 = CVar(CLng(2)) 'Long
  loc_183D6CB:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183D6D2:                   LateIdCallSt
  loc_183D6EF:                 Else
  loc_183D706:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183D73A:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183D751:                   unk_58616C.Execute CStr(var_134 & "')"), var_174, -1
  loc_183D75C:                   Set var_E0 = var_1B8
  loc_183D790:                   If (var_E0.RecordCount > 0) Then
  loc_183D7AC:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D7B4:                     var_184 = CVar(CLng(2)) 'Long
  loc_183D7E4:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183D7EB:                     LateIdCallSt
  loc_183D805:                   End If
  loc_183D805:                 End If
  loc_183D81E:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D826:                 var_184 = CVar(CLng(3)) 'Long
  loc_183D856:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183D85D:                 LateIdCallSt
  loc_183D890:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D898:                 var_164 = CVar(CLng(4)) 'Long
  loc_183D8A2:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_183D8A9:                 LateIdCallSt
  loc_183D8D4:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D8DC:                 var_184 = CVar(CLng(5)) 'Long
  loc_183D90C:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183D913:                 LateIdCallSt
  loc_183D96D:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183D9C0:                 LateIdCallSt
  loc_183D9FD:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183DA32:                 var_134 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))), CVar(CLng(6)), var_220)) 'String
  loc_183DA39:                 LateIdCallSt
  loc_183DA51:               End If
  loc_183DA6A:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183DA72:               var_164 = CVar(CLng(6)) 'Long
  loc_183DA97:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183DAC0:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183DAC8:               var_164 = CVar(CLng(6)) 'Long
  loc_183DAED:               var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_183DB04:               var_B0 = (var_B0 + var_D0)
  loc_183DB0A:               var_B8 = var_D0
  loc_183DB0D:             End If
  loc_183DB0D:           End If
  loc_183DB0D:         End If
  loc_183DB0D:       End If
  loc_183DB0D:     End If
  loc_183DB13:     var_86 = (var_86 + 1)
  loc_183DB18:     Set var_1C0 = Nothing 
  loc_183DB20:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_183DB28:     var_164 = CVar(CLng(&H11)) 'Long
  loc_183DB32:     var_108 = CVar(CStr(var_9C)) 'String
  loc_183DB3A:     Set var_10C = Me.FGrid
  loc_183DB40:     LateIdCallSt
  loc_183DB51:     var_8C.MoveNext
  loc_183DB56:     GoTo loc_183B894
  loc_183DB59:   End If
  loc_183DB5E:   Set var_8C = Nothing
  loc_183DB66:   Set var_C4 = Nothing
  loc_183DB6E:   Set var_C0 = Nothing
  loc_183DB76:   Set var_D8 = Nothing
  loc_183DB7E:   Set var_E0 = Nothing
  loc_183DB81: End If
  loc_183DB81: Exit Sub
End Sub

Public Sub Proc_162_108_F26E20(arg_C, arg_10) 'F26E20
  'Data Table: 586140
  Dim unk_58616C As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F26D61: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F26D96: unk_58616C.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(global_220) & "' Order by Appdate Desc"), -1, var_15C
  loc_F26DA1: Set var_90 = var_15C
  loc_F26DD3: If (var_90.RecordCount > 0) Then
  loc_F26E01:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F26E11: Else
  loc_F26E14:   var_8C = CDbl(0)
  loc_F26E17: End If
  loc_F26E17: Proc_162_108_F26E20 = var_8C
  loc_F26E1D: var_8C = 
End Sub

Public Sub Proc_162_109_1314F58
  'Data Table: 586140
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_58616C As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_154 As Field20
  Dim var_1C8 As Variant
  Dim var_184 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_21C As Variant
  Dim var_94 As Double
  loc_1314851: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_131485B:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314863:   var_100 = CVar(CLng(8)) 'Long
  loc_1314885:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1314895:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_131489D:   var_100 = CVar(CLng(&H18)) 'Long
  loc_13148D0:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_13148E0:   unk_58616C.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_13148EB:   Set var_8C = var_140
  loc_1314919:   If (var_8C.RecordCount > 0) Then
  loc_131491F:     var_A4 = CDbl(0)
  loc_1314922:     ' Referenced from: 1314ABA
  loc_1314931:     If Not(var_8C.EOF) Then
  loc_1314983:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + Val(CStr(var_8C.Fields.Item("Rate").Value)))) * CDbl(&H64))
  loc_131499B:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13149A3:       var_100 = CVar(CLng(7)) 'Long
  loc_1314A6D:       var_27C = Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2)))
  loc_1314A76:       var_AC = CSng(var_27C)
  loc_1314AA5:       var_A4 = (var_AC + var_A4)
  loc_1314AAF:       var_B4 = (var_B4 + var_AC)
  loc_1314AB5:       var_8C.MoveNext
  loc_1314ABA:       GoTo loc_1314922
  loc_1314ABD:     End If
  loc_1314AC1:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314AC9:     var_100 = CVar(CLng(&H1C)) 'Long
  loc_1314AF4:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1314AFB:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_1314B03:       var_110 = CVar(CLng(9)) 'Long
  loc_1314B21:       var_13C = CVar(CStr(Round(var_9C, 2))) 'String
  loc_1314B29:       Set var_BC = Me.FGrid
  loc_1314B2F:       LateIdCallSt
  loc_1314B45:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314B4D:       var_100 = CVar(CLng(9)) 'Long
  loc_1314B6C:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1314B74:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1314BA1:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_1314BA9:       Set var_140 = Me.FGrid
  loc_1314BAF:       LateIdCallSt
  loc_1314BCF:       var_12C = CVar(CLng(var_86)) 'Long
  loc_1314BD7:       var_184 = CVar(CLng(7)) 'Long
  loc_1314C00:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_1314C08:       var_21C = CVar(CLng(&HA)) 'Long
  loc_1314C11:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314C19:       var_100 = CVar(CLng(9)) 'Long
  loc_1314C41:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1314C49:       Set var_154 = Me.FGrid
  loc_1314C4F:       LateIdCallSt
  loc_1314C74:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314C7C:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1314CA8:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1314CB7:     Else
  loc_1314CBB:       var_12C = CVar(CLng(var_86)) 'Long
  loc_1314CC3:       var_184 = CVar(CLng(9)) 'Long
  loc_1314CCC:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314CD4:       var_100 = CVar(CLng(8)) 'Long
  loc_1314CF8:       var_13C = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_1314D00:       Set var_140 = Me.FGrid
  loc_1314D06:       LateIdCallSt
  loc_1314D23:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314D2B:       var_100 = CVar(CLng(9)) 'Long
  loc_1314D4A:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1314D52:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1314D7F:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_1314D87:       Set var_140 = Me.FGrid
  loc_1314D8D:       LateIdCallSt
  loc_1314DAD:       var_12C = CVar(CLng(var_86)) 'Long
  loc_1314DB5:       var_184 = CVar(CLng(7)) 'Long
  loc_1314DDE:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_1314DE6:       var_21C = CVar(CLng(&HA)) 'Long
  loc_1314DEF:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314DF7:       var_100 = CVar(CLng(9)) 'Long
  loc_1314E1F:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1314E27:       Set var_154 = Me.FGrid
  loc_1314E2D:       LateIdCallSt
  loc_1314E52:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314E5A:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1314E79:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1314E81:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1314EAE:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_1314EB6:       Set var_140 = Me.FGrid
  loc_1314EBC:       LateIdCallSt
  loc_1314EDC:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314EE4:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1314F10:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1314F1C:     End If
  loc_1314F20:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1314F28:     var_100 = CVar(CLng(&H11)) 'Long
  loc_1314F32:     var_CC = CVar(CStr(var_A4)) 'String
  loc_1314F3A:     Set var_BC = Me.FGrid
  loc_1314F40:     LateIdCallSt
  loc_1314F4E:   End If
  loc_1314F51: Next var_D0 'Integer
  loc_1314F56: Exit Sub
End Sub

Public Sub Proc_162_110_1128D0C
  'Data Table: 586140
  Dim Me As Recordset15
  loc_11289AF: If (Me.RecordCount > 0) Then
  loc_11289B8:   Me.MoveFirst
  loc_11289BD:   ' Referenced from: 1128D06
  loc_11289BD: End If
  loc_11289CF: If Not(Me.EOF) Then
  loc_1128A11:   If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING") Then
  loc_1128A53:     If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1128A56:       Call Proc_162_85_1804B48()
  loc_1128A5E:     Else
  loc_1128A8D:       If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_1128A90:         Call Proc_162_85_1804B48()
  loc_1128A98:       Else
  loc_1128A98:         Exit Sub
  loc_1128A99:       End If
  loc_1128A99:     End If
  loc_1128A9C:   Else
  loc_1128AC5:     var_D4 = Trim(CVar(Me.Fields.Item("ModDescription")))
  loc_1128ADF:     If (var_D4 = "BILL DOS PLAIN (3) PAPER RUNNING") Then
  loc_1128B21:       If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1128B24:         Call Proc_162_83_1812154()
  loc_1128B2C:       Else
  loc_1128B5B:         If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_1128B5E:           Call Proc_162_83_1812154()
  loc_1128B66:         Else
  loc_1128B66:           Exit Sub
  loc_1128B67:         End If
  loc_1128B67:       End If
  loc_1128B6A:     Else
  loc_1128BA9:       If (Me.Fields.Item("ModDescription").Value = "BILL DOS PRE PRINTED") Then
  loc_1128BEB:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1128BEE:           Call Proc_162_81_15EDF04()
  loc_1128BF6:         Else
  loc_1128C25:           If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_1128C28:             Call Proc_162_81_15EDF04()
  loc_1128C30:           Else
  loc_1128C30:             Exit Sub
  loc_1128C31:           End If
  loc_1128C31:         End If
  loc_1128C34:       Else
  loc_1128C73:         If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER") Then
  loc_1128CB5:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1128CB8:             Call Proc_162_86_17298A0()
  loc_1128CC0:           Else
  loc_1128CEF:             If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_1128CF2:               Call Proc_162_86_17298A0()
  loc_1128CFA:             Else
  loc_1128CFA:               Exit Sub
  loc_1128CFB:             End If
  loc_1128CFB:           End If
  loc_1128CFB:         End If
  loc_1128CFB:       End If
  loc_1128CFB:     End If
  loc_1128CFB:   End If
  loc_1128D01:   Me.MoveNext
  loc_1128D06:   GoTo loc_11289BD
  loc_1128D09: End If
  loc_1128D09: Exit Sub
End Sub

Public Sub Proc_162_111_129A24C(arg_C) '129A24C
  'Data Table: 586140
  Dim var_90 As Double
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_10C As Double
  Dim var_100 As TextBox
  Dim var_A8 As String
  Dim var_FC As TextBox
  loc_1299C68: If (arg_C = CInt(&H1D)) Then
  loc_1299C77:   Set var_98 = Me.TxtGt
  loc_1299C7D:   Call 0.Method_Proc_162_111_129A24C8 (var_9A, var_86, 1)
  loc_1299C8B:   For var_9E = CDbl(0) To (var_9A - 1): var_92 = var_9E 'Integer
  loc_1299C9E:     Set var_98 = Me.TxtGt1
  loc_1299CA4:     Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4)
  loc_1299CAC:     var_A8 = var_A4.Text
  loc_1299CF1:     Set var_FC = Me.TxtGt1
  loc_1299CF7:     Call 0.Method_Proc_162_111_129A24C0 (var_86, var_100, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_1299CFF:     var_100.Text = 1
  loc_1299D2C:     Set var_98 = Me.LblCap
  loc_1299D32:     Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4, var_A8)
  loc_1299D3A:     var_10C = var_A4.Tag
  loc_1299D5C:     If (var_A8 = MemVar_1F92078 & "DIS") Then
  loc_1299D6C:       Set var_98 = Me.TxtGt1
  loc_1299D72:       Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4)
  loc_1299D7A:       var_A8 = var_A4.Text
  loc_1299D91:       var_90 = (var_90 - Val(var_A8))
  loc_1299DA1:     Else
  loc_1299DAE:       Set var_98 = Me.TxtGt1
  loc_1299DB4:       Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4, var_A8)
  loc_1299DBC:       var_90 = var_A4.Text
  loc_1299DD3:       var_90 = (var_90 + Val(var_A8))
  loc_1299DE0:     End If
  loc_1299DE3:   Next var_9E 'Integer
  loc_1299DEF:   Set var_98 = Me.TxtGt
  loc_1299DF5:   Call 0.Method_Proc_162_111_129A24C8 (var_9A)
  loc_1299E30:   Set var_A4 = Me.TxtGt1
  loc_1299E36:   Call 0.Method_Proc_162_111_129A24C0 (var_9A, var_FC, CStr(Format(var_90, "0.00")))
  loc_1299E3E:   var_FC.Text = 1
  loc_1299E59: Else
  loc_1299E61:   If (arg_C = CInt(&H1E)) Then
  loc_1299E70:     Set var_98 = Me.TxtGt
  loc_1299E76:     Call 0.Method_Proc_162_111_129A24C8 (var_9A, var_86)
  loc_1299E84:     For var_110 = 1 To (var_9A - 1):   1 = var_110 'Integer
  loc_1299E97:       Set var_98 = Me.TxtGt2
  loc_1299E9D:       Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4)
  loc_1299EA5:       var_A8 = var_A4.Text
  loc_1299EEA:       Set var_FC = Me.TxtGt2
  loc_1299EF0:       Call 0.Method_Proc_162_111_129A24C0 (var_86, var_100, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_1299EF8:       var_100.Text = 1
  loc_1299F25:       Set var_98 = Me.LblCap
  loc_1299F2B:       Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4, var_A8)
  loc_1299F33:       var_10C = var_A4.Tag
  loc_1299F55:       If (var_A8 = MemVar_1F92078 & "DIS") Then
  loc_1299F65:         Set var_98 = Me.TxtGt2
  loc_1299F6B:         Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4)
  loc_1299F73:         var_A8 = var_A4.Text
  loc_1299F8A:         var_90 = (var_90 - Val(var_A8))
  loc_1299F9A:       Else
  loc_1299FA7:         Set var_98 = Me.TxtGt2
  loc_1299FAD:         Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4, var_A8)
  loc_1299FB5:         var_90 = var_A4.Text
  loc_1299FCC:         var_90 = (var_90 + Val(var_A8))
  loc_1299FD9:       End If
  loc_1299FDC:     Next var_110 'Integer
  loc_1299FE8:     Set var_98 = Me.TxtGt
  loc_1299FEE:     Call 0.Method_Proc_162_111_129A24C8 (var_9A)
  loc_129A029:     Set var_A4 = Me.TxtGt2
  loc_129A02F:     Call 0.Method_Proc_162_111_129A24C0 (var_9A, var_FC, CStr(Format(var_90, "0.00")))
  loc_129A037:     var_FC.Text = 1
  loc_129A052:   Else
  loc_129A05A:     If (arg_C = CInt(&H1F)) Then
  loc_129A069:       Set var_98 = Me.TxtGt
  loc_129A06F:       Call 0.Method_Proc_162_111_129A24C8 (var_9A, var_86)
  loc_129A07D:       For var_114 = 1 To (var_9A - 1):     1 = var_114 'Integer
  loc_129A090:         Set var_98 = Me.TxtGt3
  loc_129A096:         Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4)
  loc_129A09E:         var_A8 = var_A4.Text
  loc_129A0E3:         Set var_FC = Me.TxtGt3
  loc_129A0E9:         Call 0.Method_Proc_162_111_129A24C0 (var_86, var_100, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_129A0F1:         var_100.Text = 1
  loc_129A11E:         Set var_98 = Me.LblCap
  loc_129A124:         Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4, var_A8)
  loc_129A12C:         var_10C = var_A4.Tag
  loc_129A14E:         If (var_A8 = MemVar_1F92078 & "DIS") Then
  loc_129A15E:           Set var_98 = Me.TxtGt3
  loc_129A164:           Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4)
  loc_129A16C:           var_A8 = var_A4.Text
  loc_129A183:           var_90 = (var_90 - Val(var_A8))
  loc_129A193:         Else
  loc_129A1A0:           Set var_98 = Me.TxtGt3
  loc_129A1A6:           Call 0.Method_Proc_162_111_129A24C0 (var_86, var_A4, var_A8)
  loc_129A1AE:           var_90 = var_A4.Text
  loc_129A1C5:           var_90 = (var_90 + Val(var_A8))
  loc_129A1D2:         End If
  loc_129A1D5:       Next var_114 'Integer
  loc_129A1E1:       Set var_98 = Me.TxtGt
  loc_129A1E7:       Call 0.Method_Proc_162_111_129A24C8 (var_9A)
  loc_129A222:       Set var_A4 = Me.TxtGt3
  loc_129A228:       Call 0.Method_Proc_162_111_129A24C0 (var_9A, var_FC, CStr(Format(var_90, "0.00")))
  loc_129A230:       var_FC.Text = 1
  loc_129A248:     End If
  loc_129A248:   End If
  loc_129A248: End If
  loc_129A248: Exit Sub
  loc_129A249: WMemStVarAdFunc
End Sub

Public Sub Proc_162_112_12CD6A0(arg_C, arg_10) '12CD6A0
  'Data Table: 586140
  Dim var_90 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_86 As Integer
  Dim var_240 As MSHFlexGrid
  Dim var_244 As MSHFlexGrid
  Dim var_248 As MSHFlexGrid
  loc_12CD048: If (arg_C = 0) Then
  loc_12CD04F:   var_8A = arg_10 'Byte
  loc_12CD05A:   If (var_8A = &H1D) Then
  loc_12CD061:     Set var_90 = Me.FGrid
  loc_12CD067:     var_104 = var_90.Row
  loc_12CD070:     var_114 = CVar(CLng(var_104)) 'Long
  loc_12CD078:     var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CD080:     var_154 = var_90.TextMatrix)
  loc_12CD0A2:     var_178 = CVar(CLng(var_90.Row)) 'Long
  loc_12CD0AA:     var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD0D4:     var_1DC = CVar(CLng(var_90.Row)) 'Long
  loc_12CD0DC:     var_1FC = CVar(CLng(7)) 'Long
  loc_12CD106:     var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_12CD10E:     var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD155:     If (CDbl(((Val(CStr(var_90.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_90.TextMatrix))))) > CDbl(Val(CStr(var_90.TextMatrix))))) Then
  loc_12CD179:       MsgBox("Please Check Quantity!", &H40, "Split Bill...", var_104, var_154)
  loc_12CD195:       var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_12CD19D:       var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD1A2:       var_114 = vbNullString
  loc_12CD1AB:       LateIdCallSt
  loc_12CD1C3:       var_90.Col = CVar(CLng(arg_10))
  loc_12CD1D8:       Proc_162_112_12CD6A0 = &HFF
  loc_12CD1DE:     End If
  loc_12CD1E0:     Set var_90 = Nothing 
  loc_12CD1EB:     Call Proc_162_102_19DE8A8(CInt(&H1D))
  loc_12CD1F3:   Else
  loc_12CD1FA:     If (var_8A = &H1E) Then
  loc_12CD201:       Set var_240 = Me.FGrid
  loc_12CD207:       var_104 = var_240.Row
  loc_12CD210:       var_114 = CVar(CLng(var_104)) 'Long
  loc_12CD218:       var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CD220:       var_154 = var_240.TextMatrix)
  loc_12CD242:       var_178 = CVar(CLng(var_240.Row)) 'Long
  loc_12CD24A:       var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD274:       var_1DC = CVar(CLng(var_240.Row)) 'Long
  loc_12CD27C:       var_1FC = CVar(CLng(7)) 'Long
  loc_12CD2A6:       var_B0 = CVar(CLng(var_240.Row)) 'Long
  loc_12CD2AE:       var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD2F5:       If (CDbl(((Val(CStr(var_240.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_240.TextMatrix))))) > CDbl(Val(CStr(var_240.TextMatrix))))) Then
  loc_12CD319:         MsgBox("Please Check Quantity!", &H40, "Split Bill...", var_104, var_154)
  loc_12CD335:         var_B0 = CVar(CLng(var_240.Row)) 'Long
  loc_12CD33D:         var_D0 = CVar(CLng(&H1E)) 'Long
  loc_12CD342:         var_114 = vbNullString
  loc_12CD34B:         LateIdCallSt
  loc_12CD363:         var_240.Col = CVar(CLng(arg_10))
  loc_12CD378:         Proc_162_112_12CD6A0 = &HFF
  loc_12CD37E:       End If
  loc_12CD380:       Set var_240 = Nothing 
  loc_12CD38B:       Call Proc_162_102_19DE8A8(CInt(&H1E))
  loc_12CD393:     Else
  loc_12CD39A:       If (var_8A = &H1F) Then
  loc_12CD3A1:         Set var_244 = Me.FGrid
  loc_12CD3A7:         var_104 = var_244.Row
  loc_12CD3B0:         var_114 = CVar(CLng(var_104)) 'Long
  loc_12CD3B8:         var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CD3C0:         var_154 = var_244.TextMatrix)
  loc_12CD3E2:         var_178 = CVar(CLng(var_244.Row)) 'Long
  loc_12CD3EA:         var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD414:         var_1DC = CVar(CLng(var_244.Row)) 'Long
  loc_12CD41C:         var_1FC = CVar(CLng(7)) 'Long
  loc_12CD446:         var_B0 = CVar(CLng(var_244.Row)) 'Long
  loc_12CD44E:         var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD495:         If (CDbl(((Val(CStr(var_244.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_244.TextMatrix))))) > CDbl(Val(CStr(var_244.TextMatrix))))) Then
  loc_12CD4B9:           MsgBox("Please Check Quantity!", &H40, "Split Bill...", var_104, var_154)
  loc_12CD4D5:           var_B0 = CVar(CLng(var_244.Row)) 'Long
  loc_12CD4DD:           var_D0 = CVar(CLng(&H1F)) 'Long
  loc_12CD4E2:           var_114 = vbNullString
  loc_12CD4EB:           LateIdCallSt
  loc_12CD503:           var_244.Col = CVar(CLng(arg_10))
  loc_12CD518:           Proc_162_112_12CD6A0 = &HFF
  loc_12CD51E:         End If
  loc_12CD520:         Set var_244 = Nothing 
  loc_12CD528:         Set var_248 = Me.FGrid
  loc_12CD52E:         var_104 = var_248.Row
  loc_12CD537:         var_114 = CVar(CLng(var_104)) 'Long
  loc_12CD53F:         var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CD547:         var_154 = var_248.TextMatrix)
  loc_12CD569:         var_178 = CVar(CLng(var_248.Row)) 'Long
  loc_12CD571:         var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD59B:         var_1DC = CVar(CLng(var_248.Row)) 'Long
  loc_12CD5A3:         var_1FC = CVar(CLng(7)) 'Long
  loc_12CD5CD:         var_B0 = CVar(CLng(var_248.Row)) 'Long
  loc_12CD5D5:         var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD61C:         If (CDbl(((Val(CStr(var_248.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_248.TextMatrix))))) <> CDbl(Val(CStr(var_248.TextMatrix))))) Then
  loc_12CD646:           MsgBox(CVar("Please verify item Quantity!" & vbCrLf & "Quantity not matched."), &H10, "Split Bill...", var_104, var_154)
  loc_12CD666:           var_248.Col = CVar(CLng(arg_10))
  loc_12CD67B:           Proc_162_112_12CD6A0 = &HFF
  loc_12CD681:         End If
  loc_12CD683:         Set var_248 = Nothing 
  loc_12CD68E:         Call Proc_162_102_19DE8A8(CInt(&H1F))
  loc_12CD693:       End If
  loc_12CD693:     End If
  loc_12CD693:   End If
  loc_12CD695:   var_86 = 0
  loc_12CD698: End If
  loc_12CD698: Proc_162_112_12CD6A0 = var_86
End Sub

Public Sub Proc_162_113_1382800(arg_C, arg_10, arg_14, arg_18) '1382800
  'Data Table: 586140
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_58616C As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_290 As Double
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_1381FB5: var_90 = vbNullString
  loc_1381FBB: var_94 = vbNullString
  loc_1381FC1: var_98 = vbNullString
  loc_1381FC7: var_9C = vbNullString
  loc_1381FCD: var_A0 = vbNullString
  loc_1381FD3: var_A4 = vbNullString
  loc_1381FDE: If (MemVar_1F923C0 = "Y") Then
  loc_1381FE8:   var_F0 = vbNullString & "DATE "
  loc_1382019:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_138202C: End If
  loc_1382034: If (MemVar_1F923C4 = "Y") Then
  loc_1382046:   var_DC = "dd/MM/yy"
  loc_1382098:   var_174 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_DC)))), 0))
  loc_13820BF:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_13820C7:   var_1E4 = (var_174 - Len(var_1C4))
  loc_13820D8:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_13820E1:   var_234 = (var_214 + " PAGE NO ")
  loc_1382103:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_1382108:   var_8C = CStr(var_274)
  loc_1382135: End If
  loc_1382143: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R  Where R.CODE='" & arg_18 & "'"
  loc_138215F: unk_58616C.Execute var_AC, var_DC, -1
  loc_138216A: Set var_A8 = var_278
  loc_1382181: If (MemVar_1F923C8 = "K") Then
  loc_13821C0:   If (var_A8.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_13821CD:     If (Len(MemVar_1F92130) <= &H23) Then
  loc_13821F9:       Call Proc_162_105_10AA09C(MemVar_1F92130, "D", CInt(Val(CStr(arg_14))))
  loc_1382202:       var_90 = var_288 & var_288
  loc_1382211:     Else
  loc_1382227:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_138223B:       var_144 = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_138224F:       var_174 = (0 + Chr(&HF))
  loc_1382259:       var_194 = (var_174 + CVar(MemVar_1F92130))
  loc_138226D:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_1382272:       var_90 = CStr(var_1C4)
  loc_138228A:     End If
  loc_138228A:   End If
  loc_13822C6:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_1382309:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_1382340:       var_290 = Val(CStr(arg_14))
  loc_1382361:       Call Proc_162_105_10AA09C(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(var_290))
  loc_138236A:       var_94 = var_294 & var_294
  loc_1382385:     Else
  loc_138239B:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_13823AF:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_13823C3:       var_174 = (0 + Chr(&HF))
  loc_13823F1:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_1382405:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_138240A:       var_94 = CStr(Len(Chr(&H12)))
  loc_138242B:     End If
  loc_138242B:   End If
  loc_138243F:   If (var_A8.RecordCount > 0) Then
  loc_138247B:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header1")), var_94, var_290, var_90, var_290) <> vbNullString) Then
  loc_13824B2:       var_290 = Val(CStr(arg_14))
  loc_13824D3:       Call Proc_162_105_10AA09C(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_13824DC:       var_98 = var_294 & var_294
  loc_13824F4:     End If
  loc_1382503:     var_278 = var_A8.Fields
  loc_138252D:     If (Proc_6_38_E68A98(CVar(var_278.Item("Header2")), var_98, var_290, var_278) <> vbNullString) Then
  loc_1382564:       var_290 = Val(CStr(arg_14))
  loc_1382585:       Call Proc_162_105_10AA09C(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(var_290))
  loc_138258E:       var_9C = var_294 & var_294
  loc_13825A6:     End If
  loc_13825DF:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header3")), var_9C, var_290, 1) <> vbNullString) Then
  loc_1382616:       var_290 = Val(CStr(arg_14))
  loc_1382637:       Call Proc_162_105_10AA09C(CStr(var_A8.Fields.Item("Header3").Value), "D", CInt(var_290))
  loc_1382640:       var_A0 = var_294 & var_294
  loc_1382658:     End If
  loc_1382691:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header4")), var_A0, var_290) <> vbNullString) Then
  loc_13826E9:       Call Proc_162_105_10AA09C(CStr(var_A8.Fields.Item("Header4").Value), "D", CInt(Val(CStr(arg_14))))
  loc_13826F2:       var_A4 = var_294 & var_294
  loc_138270A:     End If
  loc_138270A:   End If
  loc_138270A: End If
  loc_1382714: If (Len(var_8C) > 0) Then
  loc_138271C:   Print 1, var_8C
  loc_1382728:   arg_10 = (arg_10 + 1)
  loc_138272B: End If
  loc_1382735: If (Len(var_90) > 0) Then
  loc_138273D:   Print 1, var_90
  loc_1382749:   arg_10 = (arg_10 + 1)
  loc_138274C: End If
  loc_1382756: If (Len(var_94) > 0) Then
  loc_138275E:   Print 1, var_94
  loc_138276A:   arg_10 = (arg_10 + 1)
  loc_138276D: End If
  loc_1382777: If (Len(var_98) > 0) Then
  loc_138277F:   Print 1, var_98
  loc_138278B:   arg_10 = (arg_10 + 1)
  loc_138278E: End If
  loc_1382798: If (Len(var_9C) > 0) Then
  loc_13827A0:   Print 1, var_9C
  loc_13827AC:   arg_10 = (arg_10 + 1)
  loc_13827AF: End If
  loc_13827B9: If (Len(var_A0) > 0) Then
  loc_13827C1:   Print 1, var_A0
  loc_13827CD:   arg_10 = (arg_10 + 1)
  loc_13827D0: End If
  loc_13827DA: If (Len(var_A4) > 0) Then
  loc_13827E2:   Print 1, var_A4
  loc_13827EE:   arg_10 = (arg_10 + 1)
  loc_13827F1: End If
  loc_13827F7: Proc_162_113_1382800 = arg_10
End Sub
