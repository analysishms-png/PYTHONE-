VERSION 5.00
Begin VB.Form HallBillEstimate
  Caption = "Banquet Estimate Bill"
  BackColor = &HC0C0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin TextBox Txt
    Index = 25
    ForeColor = &HFF0000&
    Left = 4335
    Top = 7560
    Width = 1290
    Height = 360
    TabIndex = 79
    Alignment = 1 'Right Justify
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HFF0000&
    Left = 4365
    Top = 990
    Width = 1095
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
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 73
  End
  Begin DataGrid DGItem
    Left = 16590
    Top = 2985
    Width = 9405
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 37
  End
  Begin DataGrid DGVType
    Left = 16200
    Top = 2340
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin DataGrid DGParty
    Left = 16485
    Top = 1620
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 40
  End
  Begin DataGrid DGHall
    Left = 16695
    Top = 990
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &H0&
    Left = 15600
    Top = 9840
    Width = 2010
    Height = 240
    Visible = 0   'False
    TabIndex = 14
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
    Index = 3
    ForeColor = &HFF0000&
    Left = 1380
    Top = 1620
    Width = 5760
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0FF&
    ForeColor = &H80000012&
    Left = 8565
    Top = 1740
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 38
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
    Index = 1
    ForeColor = &HFF0000&
    Left = 7095
    Top = 990
    Width = 570
    Height = 285
    TabIndex = 11
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 930
    Top = 990
    Width = 2385
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
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
    Index = 6
    ForeColor = &H0&
    Left = 15600
    Top = 10095
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Index = 12
    ForeColor = &H0&
    Left = 16380
    Top = 9330
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 24
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
    Index = 8
    ForeColor = &HFF0000&
    Left = 4335
    Top = 7920
    Width = 1290
    Height = 360
    TabIndex = 20
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
  End
  Begin TextBox Txt
    Index = 9
    ForeColor = &H0&
    Left = 13455
    Top = 9075
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
    ForeColor = &H0&
    Left = 13455
    Top = 9330
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Index = 11
    ForeColor = &H0&
    Left = 16380
    Top = 9075
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
    Index = 7
    ForeColor = &HFF0000&
    Left = 1380
    Top = 1305
    Width = 735
    Height = 285
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 15
    ForeColor = &H0&
    Left = 18930
    Top = 7980
    Width = 1290
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
    Index = 14
    ForeColor = &H0&
    Left = 18930
    Top = 8235
    Width = 1290
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
    ForeColor = &H0&
    Left = 18930
    Top = 8490
    Width = 1290
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
  Begin CommandButton Command1
    Caption = "Set&tlement"
    Left = 17685
    Top = 10545
    Width = 2895
    Height = 375
    Visible = 0   'False
    TabIndex = 36
    MaskColor = &H8000000F&
    Style = 1
  End
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 5895
    Top = 3645
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
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
    ForeColor = &HFF0000&
    Left = 5325
    Top = 3645
    Width = 400
    Height = 285
    Visible = 0   'False
    TabIndex = 8
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
    Index = 16
    ForeColor = &H0&
    Left = 16380
    Top = 8820
    Width = 1215
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
    Index = 4
    Left = 18540
    Top = 9735
    Width = 1860
    Height = 255
    Visible = 0   'False
    TabIndex = 34
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
  Begin TextBox TextPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 1500
    Top = 3600
    Width = 400
    Height = 285
    Visible = 0   'False
    TabIndex = 5
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
  Begin TextBox TextGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2070
    Top = 3600
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
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
  Begin TextBox Txt
    Index = 17
    ForeColor = &HFF0000&
    Left = 3825
    Top = 1305
    Width = 555
    Height = 285
    TabIndex = 1
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
    Index = 18
    ForeColor = &HFF0000&
    Left = 6270
    Top = 1305
    Width = 855
    Height = 285
    TabIndex = 2
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
    Index = 19
    ForeColor = &H0&
    Left = 14550
    Top = 10605
    Width = 3060
    Height = 240
    Visible = 0   'False
    TabIndex = 19
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
    Index = 20
    ForeColor = &HFF0000&
    Left = 4335
    Top = 8265
    Width = 1290
    Height = 360
    TabIndex = 25
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
  End
  Begin TextBox Txt
    Index = 21
    ForeColor = &H0&
    Left = 15600
    Top = 10350
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 17
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
    Index = 22
    ForeColor = &HFF0000&
    Left = 19095
    Top = 7650
    Width = 975
    Height = 285
    Visible = 0   'False
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0C0FF&
    ForeColor = &H80000012&
    Left = 1065
    Top = 3255
    Width = 1110
    Height = 225
    Visible = 0   'False
    TabIndex = 32
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
    Index = 23
    Left = 5595
    Top = 2595
    Width = 1470
    Height = 240
    Visible = 0   'False
    TabIndex = 30
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
    Index = 24
    ForeColor = &HFF0000&
    Left = 1380
    Top = 1935
    Width = 5760
    Height = 285
    TabIndex = 4
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
  Begin DataGrid DGBookNo
    Left = 16815
    Top = 405
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin MSHFlexGrid FGCat
    Left = 7830
    Top = 2835
    Width = 7320
    Height = 1425
    Visible = 0   'False
    TabIndex = 33
  End
  Begin MaskEdBox txtM
    Index = 1
    Left = 16860
    Top = 10095
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 16
  End
  Begin MSHFlexGrid FGrid
    Left = 7830
    Top = 1410
    Width = 8940
    Height = 2835
    TabIndex = 7
  End
  Begin MaskEdBox txtM
    Index = 0
    Left = 16860
    Top = 10350
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 18
  End
  Begin MaskEdBox txtMEd
    Index = 0
    Left = 30
    Top = 2760
    Width = 1110
    Height = 240
    Visible = 0   'False
    TabIndex = 42
  End
  Begin MSHFlexGrid FGrid1
    Left = 90
    Top = 2250
    Width = 7530
    Height = 1140
    TabIndex = 29
  End
  Begin BtnEnh BtnEnh4
    Left = 2610
    Top = 7560
    Width = 1695
    Height = 330
    TabIndex = 76
  End
  Begin BtnEnh BtnEnh2
    Left = 2610
    Top = 7905
    Width = 1695
    Height = 330
    TabIndex = 77
  End
  Begin BtnEnh BtnEnh3
    Left = 2610
    Top = 8250
    Width = 1695
    Height = 345
    TabIndex = 78
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 12090
    Top = 8670
    Width = 2430
    Height = 285
    TabIndex = 81
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
    Left = 12105
    Top = 8340
    Width = 2520
    Height = 255
    TabIndex = 80
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
    Caption = "Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3855
    Top = 1020
    Width = 435
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
  Begin Label Label2
    BackColor = &HFFC0C0&
    Left = 0
    Top = 990
    Width = 9270
    Height = 285
    TabIndex = 75
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 74
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
    Caption = "Hall Name"
    Index = 0
    ForeColor = &H0&
    Left = 13065
    Top = 9870
    Width = 795
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
    Caption = "Party "
    Index = 5
    ForeColor = &HFF0000&
    Left = 210
    Top = 1635
    Width = 555
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 18615
    Top = 10230
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 70
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
    Caption = "V.Type "
    Index = 4
    ForeColor = &H0&
    Left = 18030
    Top = 8775
    Width = 660
    Height = 210
    Visible = 0   'False
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
    Caption = "Vr. No."
    Index = 3
    ForeColor = &HFF0000&
    Left = 18705
    Top = 8790
    Width = 645
    Height = 240
    Visible = 0   'False
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
    Caption = "Rect.No."
    Index = 15
    ForeColor = &H0&
    Left = 12405
    Top = 9090
    Width = 720
    Height = 210
    Visible = 0   'False
    TabIndex = 66
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
    Caption = "From Booking  Date And Time"
    Index = 10
    ForeColor = &H0&
    Left = 13065
    Top = 10110
    Width = 2475
    Height = 210
    Visible = 0   'False
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
    Caption = "Credit Card Holder"
    Index = 21
    ForeColor = &H0&
    Left = 14820
    Top = 9345
    Width = 1485
    Height = 210
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Rect.Date"
    Index = 24
    ForeColor = &H0&
    Left = 12405
    Top = 9345
    Width = 825
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
    Caption = "Credit Card No."
    Index = 26
    ForeColor = &H0&
    Left = 14820
    Top = 9090
    Width = 1245
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
    Caption = "BookingNo"
    Index = 35
    ForeColor = &HFF0000&
    Left = 210
    Top = 1320
    Width = 1035
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
  Begin Label Label1
    Caption = "To Refund"
    Index = 2
    ForeColor = &H0&
    Left = 16935
    Top = 8505
    Width = 870
    Height = 210
    Visible = 0   'False
    TabIndex = 60
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
    Caption = "Tip Amount"
    Index = 7
    ForeColor = &H0&
    Left = 16935
    Top = 8250
    Width = 975
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
    Caption = "Cash Recd."
    Index = 8
    ForeColor = &H0&
    Left = 16935
    Top = 7995
    Width = 900
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 4080
    Top = 3645
    Width = 480
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 5715
    Top = 3645
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 56
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
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
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 3885
    Top = 3660
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 55
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Balance"
    Index = 9
    ForeColor = &H0&
    Left = 15630
    Top = 8835
    Width = 615
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
    Caption = "DocID"
    Index = 12
    ForeColor = &HC00000&
    Left = 19410
    Top = 10185
    Width = 555
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
  Begin Label LableDummy
    Caption = "Label2"
    Index = 1
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 60
    Top = 3630
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 52
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LableAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 1890
    Top = 3600
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 51
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LableCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 255
    Top = 3600
    Width = 480
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
    Caption = "No of Pax"
    Index = 11
    ForeColor = &HFF0000&
    Left = 2850
    Top = 1320
    Width = 930
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
  Begin Label Label1
    Caption = "Pax @ Rate"
    Index = 13
    ForeColor = &HFF0000&
    Left = 5070
    Top = 1320
    Width = 1125
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
    Caption = "Particulars"
    Index = 14
    ForeColor = &H0&
    Left = 13065
    Top = 10620
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 47
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
    Caption = "To Booking  Date And Time"
    Index = 17
    ForeColor = &H0&
    Left = 13050
    Top = 10365
    Width = 2295
    Height = 210
    Visible = 0   'False
    TabIndex = 46
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 18120
    Top = 10005
    Width = 315
    Height = 435
    Visible = 0   'False
    TabIndex = 45
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Total"
    Index = 18
    ForeColor = &HFF0000&
    Left = 18555
    Top = 7665
    Width = 480
    Height = 240
    Visible = 0   'False
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
    Caption = "Particular"
    Index = 19
    ForeColor = &HFF0000&
    Left = 210
    Top = 1950
    Width = 930
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

Attribute VB_Name = "HallBillEstimate"

Private global_148 As Integer
Private global_150 As Integer
Private global_52 As Integer
Private global_116 As Integer
Private global_136 As Integer

Private Sub TxtPer_GotFocus(Index As Integer) 'ED0528
  'Data Table: 56A9F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED048A: Set var_88 = Me.TxtPer
  loc_ED0490: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ED049E: Proc_6_74_E226B0(var_8C)
  loc_ED04AA: Call Proc_210_81_F24170(var_8C)
  loc_ED04BE: Set var_88 = Me.TxtPer
  loc_ED04C4: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED04CC: var_8C.SelStart = 0
  loc_ED04E5: Set var_88 = Me.TxtPer
  loc_ED04EB: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED0506: Set var_90 = Me.TxtPer
  loc_ED050C: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ED0514: var_98.SelLength = Len(var_8C.Text)
  loc_ED0527: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A748
  'Data Table: 56A9F4
  loc_E5A715: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A71E:   Proc_6_75_E527CC(Shift)
  loc_E5A723: End If
  loc_E5A738: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A741:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A746: End If
  loc_E5A746: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E570FC
  'Data Table: 56A9F4
  loc_E570CE: Set var_88 = Me.TxtPer
  loc_E570D4: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E570EF: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E570FB: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01400
  'Data Table: 56A9F4
  loc_E013FA: Call Proc_210_88_167661C(KeyCode)
  loc_E013FF: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4B8FC
  'Data Table: 56A9F4
  loc_E4B8DA: Set var_88 = Me.TxtPer
  loc_E4B8E0: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4B8EE: Proc_6_73_E22704(var_8C)
  loc_E4B8FA: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11290B4
  'Data Table: 56A9F4
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
  loc_1128D5E: Set var_88 = Me.TxtGrid
  loc_1128D64: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1128D72: Proc_6_74_E226B0(var_8C)
  loc_1128D7E: Call Proc_210_81_F24170(var_8C)
  loc_1128D8F: If (Index = 0) Then
  loc_1128DA8:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_1128DC3:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1128E02:   Set var_108 = Me.TxtGrid
  loc_1128E08:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1128E10:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1128E38:   var_C4 = Me.FGrid.Col
  loc_1128E41:   var_114 = CLng(var_C4)
  loc_1128E51:   If (var_114 = CLng(1)) Then
  loc_1128E5E:     Set global_64 = New 
  loc_1128E70:     Me.var_C4.CursorLocation = 3
  loc_1128E96:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IR.Rate as IRate,IC.TAXSTRU,IC.TAXSTRU ,I.Unit,I.DiscApp,I.RateEdit,I.Kitchen,i.SChrgApp From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on  IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_1128EA7:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1128EBB:     CVarUnk
  loc_1128EC0:     VerifyVarObj
  loc_1128EC6:     Set var_88 = Me.DGItem
  loc_1128ECC:     LateIdStAd
  loc_1128F1B:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1128F1E:       Exit Sub
  loc_1128F1F:     End If
  loc_1128F25:     Me.MoveFirst
  loc_1128F3D:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1128F45:     var_E4 = CVar(CLng(9)) 'Long
  loc_1128F4E:     Set var_8C = Me.FGrid
  loc_1128F54:     var_D4 = var_8C.TextMatrix)
  loc_1128F89:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_1128FB9:     If (Me.EOF = &HFF) Then
  loc_1128FC2:       Me.MoveFirst
  loc_1128FC7:     End If
  loc_1128FD0:     CVarUnk
  loc_1128FD5:     VerifyVarObj
  loc_1128FDB:     Set var_88 = Me.DGItem
  loc_1128FE1:     LateIdStAd
  loc_1128FF2:   Else
  loc_1128FF9:     If (var_114 = CLng(2)) Then
  loc_1129011:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_1129019:       var_8C.MaxLength = var_E4
  loc_112903A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(960), var_A4, Me.TxtGrid)
  loc_1129042:       var_8C.Height = global_64
  loc_1129051:     Else
  loc_1129058:       If Not (var_114 = CLng(3)) Then
  loc_1129062:         If (var_114 = CLng(4)) Then
  loc_1129065:         End If
  loc_1129074:         Set var_88 = Me.TxtGrid
  loc_112907A:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_1129082:         var_8C.MaxLength = 1
  loc_1129097:         If (global_150 = 0) Then
  loc_11290A2:           var_110 = "{Home}+{End}"
  loc_11290A8:           Proc_303_0_FB9B68(CStr(var_D4), 0)
  loc_11290B0:         End If
  loc_11290B0:       End If
  loc_11290B0:     End If
  loc_11290B0:   End If
  loc_11290B0: End If
  loc_11290B0: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '113B438
  'Data Table: 56A9F4
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_113B0C0: If (KeyCode = 0) Then
  loc_113B0CD:   If (CLng(Shift) = &H1B) Then
  loc_113B0DD:     Set var_8C = Me.TxtGrid
  loc_113B0E3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_113B0FD:     Set var_98 = Me.TxtGrid
  loc_113B103:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_113B10B:     var_9C.Text = var_90.Tag
  loc_113B127:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_113B12C:     Call Proc_210_81_F24170(arg_14)
  loc_113B135:     Set var_8C = Me.FGrid
  loc_113B152:     Set var_8C = Me.TxtGrid
  loc_113B158:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_113B160:     var_90.Visible = FGrid.DispID_8001
  loc_113B16C:     Exit Sub
  loc_113B16D:   End If
  loc_113B180:   var_B0 = CLng(Me.FGrid.Col)
  loc_113B190:   If (var_B0 = CLng(1)) Then
  loc_113B1AB:     Set var_9C = Nothing
  loc_113B1E4:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_113B202:     If (CLng(Shift) = &HD) Then
  loc_113B20B:       Call Proc_210_76_1422140(KeyCode, var_B2, 1, Nothing)
  loc_113B216:       If (var_B2 = &HFF) Then
  loc_113B263:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113B273:       End If
  loc_113B273:     End If
  loc_113B276:   Else
  loc_113B27D:     If (var_B0 = CLng(2)) Then
  loc_113B28A:       If (CLng(Shift) = &HD) Then
  loc_113B293:         Call Proc_210_76_1422140(KeyCode, var_B2, 0, 0)
  loc_113B29E:         If (var_B2 = &HFF) Then
  loc_113B2EB:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(3) + 1)), 0)
  loc_113B2FB:         End If
  loc_113B2FB:       End If
  loc_113B2FE:     Else
  loc_113B305:       If (var_B0 = CLng(4)) Then
  loc_113B30E:         Call Proc_210_76_1422140(KeyCode, var_B2, 0, 0)
  loc_113B319:         If (var_B2 = &HFF) Then
  loc_113B366:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(4) + 1)), 0)
  loc_113B376:         End If
  loc_113B379:       Else
  loc_113B380:         If (var_B0 = CLng(3)) Then
  loc_113B3C3:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_113B3CC:             Call Proc_210_76_1422140(KeyCode, var_B2, 0, 0)
  loc_113B3D7:             If (var_B2 = &HFF) Then
  loc_113B424:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113B434:             End If
  loc_113B434:           End If
  loc_113B434:         End If
  loc_113B434:       End If
  loc_113B434:     End If
  loc_113B434:   End If
  loc_113B434: End If
  loc_113B434: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F80EA8
  'Data Table: 56A9F4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F80D57: Proc_6_58_E054C0(arg_10)
  loc_F80D68: If (KeyAscii = 0) Then
  loc_F80D7E:   var_A0 = CLng(Me.FGrid.Col)
  loc_F80D8E:   If (var_A0 = CLng(1)) Then
  loc_F80DAD:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F80DB4:       Set var_AC = Me.TxtGrid
  loc_F80DBF:       var_A4 = "Name"
  loc_F80DDA:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_64, arg_10)
  loc_F80DE9:     End If
  loc_F80DEC:   Else
  loc_F80DF3:     If (var_A0 = CLng(3)) Then
  loc_F80E00:       Set var_8C = Me.TxtGrid
  loc_F80E06:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F80E21:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F80E30:     Else
  loc_F80E37:       If (var_A0 = CLng(4)) Then
  loc_F80E44:         Set var_8C = Me.TxtGrid
  loc_F80E4A:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F80E65:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_F80E74:       Else
  loc_F80E7B:         If (var_A0 = CLng(2)) Then
  loc_F80E8D:           Set var_8C = Me.TxtGrid
  loc_F80E93:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F80E9B:           var_AC.MaxLength = 2
  loc_F80EA7:         End If
  loc_F80EA7:       End If
  loc_F80EA7:     End If
  loc_F80EA7:   End If
  loc_F80EA7: End If
  loc_F80EA7: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7CF84
  'Data Table: 56A9F4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7CE48: On Error Goto loc_F7CF7E
  loc_F7CE57: If (KeyCode = 0) Then
  loc_F7CE6D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7CE7D:   If (var_A0 = CLng(1)) Then
  loc_F7CEA3:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7CEB4:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_F7CEBD:       Set var_AC = Me.TxtGrid
  loc_F7CEC8:       var_A8 = "Name"
  loc_F7CEE3:       Proc_6_89_146F1AC(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7CEF2:     End If
  loc_F7CEF5:   Else
  loc_F7CEFC:     If (var_A0 = CLng(2)) Then
  loc_F7CF3B:       Set var_8C = Me.TxtGrid
  loc_F7CF41:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7CF49:       &HFF = var_AC.Text
  loc_F7CF51:       var_114 = CVar(var_A8) 'String
  loc_F7CF59:       Set var_128 = Me.FGrid
  loc_F7CF5F:       LateIdCallSt
  loc_F7CF7D:     End If
  loc_F7CF7D:   End If
  loc_F7CF7D: End If
  loc_F7CF7D: Exit Sub
  loc_F7CF7E: ' Referenced from: F7CE48
  loc_F7CF7E: Proc_6_60_E62BC4(var_128, var_114, 0)
  loc_F7CF83: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20EBC
  'Data Table: 56A9F4
  Dim arg_10 As Integer
  loc_E20EA4: If (Cancel = 0) Then
  loc_E20EAD:   Call Proc_210_76_1422140(Cancel, var_88)
  loc_E20EB6:   arg_10 = Not(var_88)
  loc_E20EB9: End If
  loc_E20EB9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA464C
  'Data Table: 56A9F4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA45E7: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA45FD:   Me.FGrid.Col = 1
  loc_EA4605: End If
  loc_EA4618: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA462B: Set var_88 = Me.TxtGrid
  loc_EA4631: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA4639: var_BC.Visible = False
  loc_EA4645: Call Proc_210_81_F24170()
  loc_EA464A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69E48
  'Data Table: 56A9F4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69E04: Set var_88 = Me.TxtGrid
  loc_E69E0A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69E24: If (var_8C.Visible = 0) Then
  loc_E69E3D:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E69E45: End If
  loc_E69E45: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF67C
  'Data Table: 56A9F4
  loc_DFF674: Call Proc_210_75_E43178()
  loc_DFF679: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11F5E3C
  'Data Table: 56A9F4
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11F599C: Set var_88 = Me.topCtrl1
  loc_11F59A2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F59E7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11F59F0:   Call Form_KeyDown(Cancel, arg_10)
  loc_11F59F5: End If
  loc_11F59F9: Set var_88 = Me.topCtrl1
  loc_11F59FF: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F5A18: If (CStr() = "Browse") Then
  loc_11F5A1B:   Exit Sub
  loc_11F5A1C: End If
  loc_11F5A90: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11F5AA9:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F5AB9:   var_9C = "+{Tab}"
  loc_11F5ABF:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11F5AC9:   Cancel = 0
  loc_11F5ACF: Else
  loc_11F5AD9:   var_B0 = Me.FGrid.Rows
  loc_11F5B26:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11F5B3F:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F5B4B:     Set var_88 = Me.topCtrl1
  loc_11F5B51:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B0)
  loc_11F5B6A:     If (CStr(Cancel) = "Add") Then
  loc_11F5B7B:       Proc_303_0_FB9B68("{Tab}", 0)
  loc_11F5B85:       Cancel = 0
  loc_11F5B8B:     Else
  loc_11F5B90:       Call Proc_210_82_F09EE8(0, Cancel)
  loc_11F5B95:     End If
  loc_11F5B95:   End If
  loc_11F5B95: End If
  loc_11F5B9B: global_148 = Cancel
  loc_11F5BC1: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F5BE5: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11F5BFB:   var_EC = CLng(Me.FGrid.Col)
  loc_11F5C0B:   If (var_EC = CLng(1)) Then
  loc_11F5C21:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F5C39:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F5C3E:     var_11C = vbNullString
  loc_11F5C48:     Set var_B4 = Me.FGrid
  loc_11F5C4E:     LateIdCallSt
  loc_11F5C79:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F5C81:     var_FC = CVar(CLng(9)) 'Long
  loc_11F5C86:     var_11C = vbNullString
  loc_11F5C90:     Set var_A0 = Me.FGrid
  loc_11F5C96:     LateIdCallSt
  loc_11F5CBB:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F5CC3:     var_FC = CVar(CLng(3)) 'Long
  loc_11F5CC8:     var_11C = vbNullString
  loc_11F5CD2:     Set var_A0 = Me.FGrid
  loc_11F5CD8:     LateIdCallSt
  loc_11F5CED:   Else
  loc_11F5CF4:     If (var_EC = CLng(3)) Then
  loc_11F5D13:       Set var_A0 = Me.FGrid
  loc_11F5D37:       LateIdCallSt
  loc_11F5D4F:       Call Proc_210_83_115552C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F5D57:     Else
  loc_11F5D5E:       If (var_EC = CLng(4)) Then
  loc_11F5D7D:         Set var_A0 = Me.FGrid
  loc_11F5DA1:         LateIdCallSt
  loc_11F5DB9:         Call Proc_210_83_115552C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_11F5DC1:       Else
  loc_11F5DC8:         If (var_EC = CLng(2)) Then
  loc_11F5DDE:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F5DF6:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F5DFB:           var_11C = vbNullString
  loc_11F5E05:           Set var_B4 = Me.FGrid
  loc_11F5E0B:           LateIdCallSt
  loc_11F5E23:         End If
  loc_11F5E23:       End If
  loc_11F5E23:     End If
  loc_11F5E23:   End If
  loc_11F5E23: End If
  loc_11F5E29: If (Cancel = &HD) Then
  loc_11F5E31:   global_150 = 0
  loc_11F5E34: End If
  loc_11F5E39: Exit Sub
  loc_11F5E3A: Set arg_7C60 = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D430
  'Data Table: 56A9F4
  loc_E0D421: Call FGrid_UnknownEvent_C()
  loc_E0D42B: global_150 = 0
  loc_E0D42E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10652D0
  'Data Table: 56A9F4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  Dim arg_213D As Boolean
  loc_1065058: Set var_88 = Me.topCtrl1
  loc_106505E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1065077: If (CStr() = "Browse") Then
  loc_106507A:   Exit Sub
  loc_106507B: End If
  loc_106508E: var_A0 = CLng(Me.FGrid.Col)
  loc_106509E: If (var_A0 = CLng(1)) Then
  loc_10650A5:   Set var_C4 = Me.FGrid
  loc_10650C9:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10650F6:   Set var_B4 = var_C4
  loc_1065108:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1065130:   Set var_88 = Me.TxtGrid
  loc_1065136:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_106513E:   0 = var_B4.Text
  loc_1065157:   If (Len(var_9C) <= 1) Then
  loc_1065166:     Set var_88 = Me.TxtGrid
  loc_106516C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1065174:     var_CA = var_B4.Text
  loc_1065185:     Set var_B8 = Me.TxtGrid
  loc_106518B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1065193:     var_C4.Text = var_9C
  loc_10651A6:   End If
  loc_10651B2:   Set var_88 = Me.TxtGrid
  loc_10651B8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_10651D2:   Set var_B8 = Me.TxtGrid
  loc_10651D8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10651E0:   var_C4.SelStart = Len(var_B4.Text)
  loc_10651F6: Else
  loc_10651FD:   If Not (var_A0 = CLng(3)) Then
  loc_1065207:     If (var_A0 = CLng(4)) Then
  loc_106520A:     End If
  loc_1065248:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_106525D:   Else
  loc_1065264:     If (var_A0 = CLng(2)) Then
  loc_10652A5:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_10652B7:     End If
  loc_10652B7:   End If
  loc_10652B7: End If
  loc_10652C1: If (CLng(Cancel) <> &HD) Then
  loc_10652C9:   global_150 = &HFF
  loc_10652CC: End If
  loc_10652CC: Exit Sub
  loc_10652CD: arg_213D = True
End Sub

Private Sub FGrid_UnknownEvent_D 'FF8BC8
  'Data Table: 56A9F4
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF89E0: Set var_90 = Me.topCtrl1
  loc_FF89E6: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FF89FF: If (CStr() = "Browse") Then
  loc_FF8A02:   Exit Sub
  loc_FF8A03: End If
  loc_FF8A20: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF8A23:   Exit Sub
  loc_FF8A24: End If
  loc_FF8A35: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FF8A57:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF8A91:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF8AB3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF8AC9:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF8AD2:         Set var_118 = Me.FGrid
  loc_FF8AED:       Else
  loc_FF8B00:         Me.FGrid.Rows = 1
  loc_FF8B26:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FF8B2E:         Set var_118 = Me.FGrid
  loc_FF8B5B:         Me.FGrid.FixedRows = 1
  loc_FF8B63:       End If
  loc_FF8B63:       Call Proc_210_83_115552C(FGrid.DispID_10000, var_A0)
  loc_FF8B6D:       Call Proc_210_88_167661C(&H32, FGrid.DispID_10000)
  loc_FF8B72:     End If
  loc_FF8B75:   Else
  loc_FF8B96:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF8BA6:   End If
  loc_FF8BAA:   Set var_90 = Me.FGrid
  loc_FF8BBB: End If
  loc_FF8BC0: Set var_8C = Nothing
  loc_FF8BC3: Exit Sub
  loc_FF8BC4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43564
  'Data Table: 56A9F4
  Dim var_8C As TextBox
  loc_E43538: Call Proc_210_81_F24170()
  loc_E43548: Set var_88 = Me.TxtGrid
  loc_E4354E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43556: var_8C.Visible = False
  loc_E43562: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '106DF7C
  'Data Table: 56A9F4
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim unk_56AA14 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As TextBox
  loc_106DCF4: On Error Goto loc_106DF75
  loc_106DD1A: Call Proc_210_80_10374EC(Proc_5_1_100CB50("ADD", Me))
  loc_106DD25: Call Proc_210_79_10187DC(global_80)
  loc_106DD37: Me.LblUser.Caption = vbNullString
  loc_106DD4C: Me.LblLDt.Caption = vbNullString
  loc_106DD6D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_106DD75: var_98.Text = CStr(MemVar_1F920EC)
  loc_106DDAB: unk_56AA14.Execute "Select Description,V_Type From Voucher_Type Where NCat='ESBIL' AND rESTCODE='" & global_56 & "'", var_BC, -1
  loc_106DDB6: Set var_88 = Me.Txt
  loc_106DDDA: If (var_88.RecordCount > 0) Then
  loc_106DE16:   Set var_C4 = Me.Txt
  loc_106DE1C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_106DE24:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_106DE54:   var_98 = var_88.Fields.Item("V_Type")
  loc_106DE73:   Set var_C4 = Me.Txt
  loc_106DE79:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_106DE81:   var_C8.Tag = CStr(var_98.Value)
  loc_106DE97: End If
  loc_106DEA4: Set var_90 = Me.Txt
  loc_106DEAA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_98)
  loc_106DEB2: var_98.Enabled = False
  loc_106DECB: Set var_90 = Me.Txt
  loc_106DED1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_106DED9: var_98.Enabled = False
  loc_106DEF4: Set var_90 = Me.Txt
  loc_106DEFA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_106DF02: var_98.FontSize = CDbl(&HC)
  loc_106DF19: Set var_90 = Me.Txt
  loc_106DF1F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_98)
  loc_106DF27: var_98.SetFocus
  loc_106DF41: Set var_90 = Me.Txt
  loc_106DF47: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_106DF5D: Call Proc_210_87_1A83C18(CDate(var_98.Text))
  loc_106DF71: Set var_88 = Nothing
  loc_106DF74: Exit Sub
  loc_106DF75: ' Referenced from: 106DCF4
  loc_106DF75: Proc_6_60_E62BC4(var_90)
  loc_106DF7A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA147C
  'Data Table: 56A9F4
  loc_EA1400: On Error Goto loc_EA1476
  loc_EA143A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA143D:   Call Proc_210_79_10187DC()
  loc_EA1465:   Call Proc_210_80_10374EC(Proc_5_1_100CB50("INI", Me))
  loc_EA1470:   Call Proc_210_77_18B04F0(global_80)
  loc_EA1475: End If
  loc_EA1475: Exit Sub
  loc_EA1476: ' Referenced from: EA1400
  loc_EA1476: Proc_6_60_E62BC4()
  loc_EA147B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12FC108
  'Data Table: 56A9F4
  Dim unk_56AA14 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_12FBA2C: On Error Goto loc_12FC0B9
  loc_12FBA3D: If (Proc_183_56_FE8818(global_80) = &HFF) Then
  loc_12FBA40:   Exit Sub
  loc_12FBA41: End If
  loc_12FBA78: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_12FBA84:   unk_56AA14.BeginTrans var_118
  loc_12FBA9A:   var_94 = Me.Bookmark 'Variant
  loc_12FBAF4:   unk_56AA14.Execute CStr("Delete From SunTranEst Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12FBB3F:   var_160 = 0
  loc_12FBB52:   var_158 = 0
  loc_12FBB5D:   var_154 = 0
  loc_12FBB70:   var_14C = 0
  loc_12FBB7B:   var_148 = 0
  loc_12FBB8E:   var_140 = 0
  loc_12FBBD7:   Proc_154_5_10E33A4(MemVar_1F92044, "SunTranEst", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FBC55:   unk_56AA14.Execute CStr("Delete From SunTranHEst Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12FBCA0:   var_160 = 0
  loc_12FBCB3:   var_158 = 0
  loc_12FBCBE:   var_154 = 0
  loc_12FBCD1:   var_14C = 0
  loc_12FBCDC:   var_148 = 0
  loc_12FBCEF:   var_140 = 0
  loc_12FBD38:   Proc_154_5_10E33A4(MemVar_1F92044, "SunTranHEst", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FBDB6:   unk_56AA14.Execute CStr("Delete From HallStockEst Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12FBE01:   var_160 = 0
  loc_12FBE14:   var_158 = 0
  loc_12FBE1F:   var_154 = 0
  loc_12FBE32:   var_14C = 0
  loc_12FBE3D:   var_148 = 0
  loc_12FBE50:   var_140 = 0
  loc_12FBE99:   Proc_154_5_10E33A4(MemVar_1F92044, "HallStockEst", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FBF09:   var_F4 = "Delete From HallSale1Est Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12FBF17:   unk_56AA14.Execute CStr(var_F4), var_114, -1
  loc_12FBF62:   var_160 = 0
  loc_12FBF75:   var_158 = 0
  loc_12FBF80:   var_154 = 0
  loc_12FBF93:   var_14C = 0
  loc_12FBF9E:   var_148 = 0
  loc_12FBFB1:   var_140 = 0
  loc_12FBFF1:   var_124 = "HallSale1Est"
  loc_12FBFFA:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FC028:   unk_56AA14.CommitTrans
  loc_12FC038:   Me.Requery -1
  loc_12FC058:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12FC065:     Me.Bookmark = var_94
  loc_12FC06D:   Else
  loc_12FC081:     If (Me.EOF = 0) Then
  loc_12FC08A:       Me.MoveLast
  loc_12FC08F:     End If
  loc_12FC08F:   End If
  loc_12FC08F:   Call Proc_210_77_18B04F0(var_140, 0, var_148, var_14C)
  loc_12FC0B0:   Proc_5_0_110649C(&HFF, Me, global_80, 0)
  loc_12FC0B8: End If
  loc_12FC0B8: Exit Sub
  loc_12FC0B9: ' Referenced from: 12FBA2C
  loc_12FC0BF: unk_56AA14.RollbackTrans
  loc_12FC0CC: Set var_11C = Err()
  loc_12FC0D2: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_12FC0F3: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_12FC106: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1002678
  'Data Table: 56A9F4
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_1002468: On Error Goto loc_1002671
  loc_1002479: If (Proc_183_55_FE7900(global_80) = &HFF) Then
  loc_100247C:   Exit Sub
  loc_100247D: End If
  loc_10024A0: Call Proc_210_80_10374EC(Proc_5_1_100CB50("EDIT", Me))
  loc_10024B8: Set var_8C = Me.Txt
  loc_10024BE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_10024C6: var_94.Enabled = False
  loc_10024DF: Set var_8C = Me.Txt
  loc_10024E5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_10024ED: var_94.Enabled = False
  loc_1002506: Set var_8C = Me.Txt
  loc_100250C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_1002514: var_94.Enabled = False
  loc_100252D: Set var_8C = Me.Txt
  loc_1002533: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_94)
  loc_100253B: var_94.Enabled = False
  loc_1002554: Set var_8C = Me.Txt
  loc_100255A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HF), var_94)
  loc_1002562: var_94.Enabled = False
  loc_100257B: Set var_8C = Me.Txt
  loc_1002581: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HE), var_94)
  loc_1002589: var_94.Enabled = False
  loc_10025A2: Set var_8C = Me.Txt
  loc_10025A8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HD), var_94)
  loc_10025B0: var_94.Enabled = False
  loc_10025C9: Set var_8C = Me.Txt
  loc_10025CF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HC), var_94)
  loc_10025D7: var_94.Enabled = False
  loc_10025F0: Set var_8C = Me.Txt
  loc_10025F6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HB), var_94)
  loc_10025FE: var_94.Enabled = False
  loc_1002617: Set var_8C = Me.Txt
  loc_100261D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_1002625: var_94.Enabled = False
  loc_1002635: Set var_8C = Me.FGrid
  loc_1002653: Me.LblUser.Caption = vbNullString
  loc_1002668: Me.LblLDt.Caption = vbNullString
  loc_1002670: Exit Sub
  loc_1002671: ' Referenced from: 1002468
  loc_1002671: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_1002676: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A5C4
  'Data Table: 56A9F4
  loc_E1A5B9: Me.Global.Unload Me
  loc_E1A5C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F30594
  'Data Table: 56A9F4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F920E4 As String
  loc_F30490: On Error Goto loc_F3058B
  loc_F304AA: If (Me.RecordCount <= 0) Then
  loc_F304C8:   var_A8 = "No Records To Search."
  loc_F304CE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F304DE:   Exit Sub
  loc_F304DF: End If
  loc_F304E6: var_10C = "Select Docid as SearchCode,CAST(S.VNo AS vARcHAR(11)) as VNo ,CAST(S.VDate AS VARCHAR(11)) AS vdate ,S.Party " & " From HallSale1Est S Where S.RESTCODE ='"
  loc_F30505: Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F30511: var_B8 = " and "
  loc_F30525: Proc_6_7_F25D88(var_120, MemVar_1F920FC)
  loc_F3053B: MemVar_1F920E4 = CStr(CVar(var_10C & global_56 & "' AND S.VDate between ") & var_A8 & var_B8 & var_120 & " Order By S.docid")
  loc_F3055D: MemVar_1F92120 = Me
  loc_F3056A: Proc_6_126_F1BCC0("1000,1200,2000")
  loc_F30585: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F3058A: Exit Sub
  loc_F3058B: ' Referenced from: F30490
  loc_F3058B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F30590: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E39A98
  'Data Table: 56A9F4
  loc_E39A88: Proc_5_0_110649C(&HFF, Me)
  loc_E39A90: Call Proc_210_77_18B04F0(global_80)
  loc_E39A95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39AF8
  'Data Table: 56A9F4
  loc_E39AE8: Proc_5_0_110649C(&HFF, Me)
  loc_E39AF0: Call Proc_210_77_18B04F0(global_80)
  loc_E39AF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39C18
  'Data Table: 56A9F4
  Dim arg_7CFF As Double
  loc_E39C08: Proc_5_0_110649C(&HFF, Me)
  loc_E39C10: Call Proc_210_77_18B04F0(global_80)
  loc_E39C15: Exit Sub
  loc_E39C16: arg_7CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E335B8
  'Data Table: 56A9F4
  loc_E335A8: Proc_5_0_110649C(&HFF, Me)
  loc_E335B0: Call Proc_210_77_18B04F0(global_80)
  loc_E335B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFF59C
  'Data Table: 56A9F4
  loc_DFF594: Call Proc_210_96_1977CF4()
  loc_DFF599: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E8D63C
  'Data Table: 56A9F4
  Dim Me As Recordset15
  loc_E8D5C7: If Not((global_64 Is Nothing)) Then
  loc_E8D5D5:   Me.Requery -1
  loc_E8D5DA: End If
  loc_E8D5E5: Me.Requery -1
  loc_E8D5F5: Me.Requery -1
  loc_E8D605: Me.Requery -1
  loc_E8D615: Me.Requery -1
  loc_E8D625: If Not((global_64 Is Nothing)) Then
  loc_E8D633:   Me.Requery -1
  loc_E8D638: End If
  loc_E8D638: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1A1F6F8
  'Data Table: 56A9F4
  Dim var_188 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_180 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_18C As String
  Dim var_22C As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_184 As Variant
  Dim var_234 As String
  Dim var_238 As String
  Dim var_23C As String
  Dim var_240 As String
  Dim unk_56AA14 As Connection15
  Dim var_244 As Variant
  Dim var_248 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_124 As Double
  Dim var_13C As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_16C As Double
  Dim var_144 As Double
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_174 As Double
  Dim var_17C As Double
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_294 As TextBox
  Dim var_2CC As Label
  Dim var_328 As TextBox
  Dim var_394 As TextBox
  Dim var_424 As Variant
  Dim var_DD8 As Double
  Dim var_438 As Variant
  Dim var_DE0 As Double
  Dim var_6EC As Variant
  Dim var_DE8 As Double
  Dim var_700 As Variant
  Dim var_DF0 As Double
  Dim var_75C As Variant
  Dim var_7A4 As Variant
  Dim var_7B4 As Variant
  Dim var_854 As MaskEdBox
  Dim var_864 As Variant
  Dim var_8CC As TextBox
  Dim var_918 As TextBox
  Dim var_964 As TextBox
  Dim var_DF8 As Double
  Dim var_A08 As TextBox
  Dim var_E00 As Double
  Dim var_CAC As Variant
  Dim var_C8C As String
  Dim var_D24 As TextBox
  Dim var_25C As String
  Dim var_278 As String
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2A8 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As Variant
  Dim var_310 As Variant
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_3E8 As Variant
  Dim var_44C As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_4EC As Variant
  Dim var_4FC As Variant
  Dim var_50C As Variant
  Dim var_51C As Variant
  Dim var_54C As Variant
  Dim var_55C As Variant
  Dim var_58C As Variant
  Dim var_5CC As Variant
  Dim var_5DC As Variant
  Dim var_5EC As Variant
  Dim var_60C As Variant
  Dim var_61C As Variant
  Dim var_62C As Variant
  Dim var_63C As Variant
  Dim var_65C As Variant
  Dim var_66C As Variant
  Dim var_6AC As Variant
  Dim var_714 As Variant
  Dim var_724 As Variant
  Dim var_83C As Variant
  Dim var_84C As Variant
  Dim var_884 As Variant
  Dim var_8B4 As Variant
  Dim var_8F0 As Variant
  Dim var_910 As Variant
  Dim var_93C As Variant
  Dim var_9F0 As Variant
  Dim var_A2C As Variant
  Dim var_A3C As Variant
  Dim var_BB4 As Variant
  Dim var_BF4 As Variant
  Dim var_D0C As Variant
  Dim var_27C As Variant
  Dim var_390 As TextBox
  Dim var_41C As Variant
  Dim var_420 As MSHFlexGrid
  Dim var_42C As MSHFlexGrid
  Dim var_434 As Variant
  Dim var_6E0 As Variant
  Dim var_6E8 As MSHFlexGrid
  Dim var_6F4 As MSHFlexGrid
  Dim var_DBC As Variant
  Dim var_E34 As Variant
  Dim var_6FC As Variant
  Dim var_E78 As Variant
  Dim var_E98 As Variant
  Dim var_1058 As Double
  Dim var_748 As MSHFlexGrid
  Dim var_1060 As Double
  Dim var_74C As MSHFlexGrid
  Dim var_260 As String
  Dim var_2D0 As String
  Dim var_43C As String
  Dim var_6F0 As String
  Dim var_91C As String
  Dim var_A0C As String
  Dim var_76C As Variant
  Dim var_81C As Variant
  Dim var_9D0 As Variant
  Dim var_324 As Label
  Dim var_88 As Recordset15
  loc_1A1C448: On Error Goto loc_1A1F6DC
  loc_1A1C456: Set var_180 = Me.Txt
  loc_1A1C45C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1A1C485: If (Proc_6_27_EA565C(var_184, "Voucher Date") = 0) Then
  loc_1A1C488:   Exit Sub
  loc_1A1C489: End If
  loc_1A1C494: Set var_180 = Me.Txt
  loc_1A1C49A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_184)
  loc_1A1C4C3: If (Proc_6_27_EA565C(var_184, "Voucher No") = 0) Then
  loc_1A1C4C6:   Exit Sub
  loc_1A1C4C7: End If
  loc_1A1C4D2: Set var_180 = Me.Txt
  loc_1A1C4D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_184)
  loc_1A1C501: If (Proc_6_27_EA565C(var_184, "Party name") = 0) Then
  loc_1A1C504:   Exit Sub
  loc_1A1C505: End If
  loc_1A1C510: Set var_180 = Me.Txt
  loc_1A1C516: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_184)
  loc_1A1C527: Set var_188 = var_184
  loc_1A1C53F: If (Proc_6_27_EA565C(var_188, "Booking No") = 0) Then
  loc_1A1C542:   Exit Sub
  loc_1A1C543: End If
  loc_1A1C54A: Set var_180 = Me.TxtGt
  loc_1A1C550: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_18E)
  loc_1A1C562: Set var_184 = Me.TxtGt
  loc_1A1C568: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_18E, var_188)
  loc_1A1C58E: If (CDbl(Val(var_188.Text)) > CDbl(0)) Then
  loc_1A1C591:   var_1A0 = 1
  loc_1A1C59A:   var_1C0 = 1
  loc_1A1C5B8:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A1C5BE:   var_200 = Trim(var_1F0)
  loc_1A1C5DA:   If (var_200 = vbNullString) Then
  loc_1A1C5F6:     MsgBox("Fill Item Name ", 0, var_1F0, var_200, var_220)
  loc_1A1C619:     Me.FGrid.Row = 1
  loc_1A1C625:     Set var_180 = Me.FGrid
  loc_1A1C649:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A1C651:     Exit Sub
  loc_1A1C652:   End If
  loc_1A1C652:   var_1A0 = 1
  loc_1A1C65B:   var_1C0 = 3
  loc_1A1C679:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A1C67F:   var_200 = Trim(var_1F0)
  loc_1A1C69B:   If (var_200 = vbNullString) Then
  loc_1A1C6B7:     MsgBox("Item Detail Required ", 0, var_1F0, var_200, var_220)
  loc_1A1C6DA:     Me.FGrid.Row = 1
  loc_1A1C6E6:     Set var_180 = Me.FGrid
  loc_1A1C70A:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A1C712:     Exit Sub
  loc_1A1C713:   End If
  loc_1A1C713: End If
  loc_1A1C738: For var_224 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_224 'Integer
  loc_1A1C742:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1C74A:   var_1C0 = CVar(CLng(7)) 'Long
  loc_1A1C77A:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1A1C781:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1C789:     var_1C0 = CVar(CLng(5)) 'Long
  loc_1A1C7B5:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1A1C7C4:   Else
  loc_1A1C7C8:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1C7D0:     var_1C0 = CVar(CLng(8)) 'Long
  loc_1A1C7DF:     var_1E0 = Me.FGrid.TextMatrix)
  loc_1A1C7EA:     var_18C = CStr(var_1E0)
  loc_1A1C7FC:     var_AC = (var_AC + Val(var_18C))
  loc_1A1C808:   End If
  loc_1A1C80B: Next var_224 'Integer
  loc_1A1C81C: Set var_180 = Me.TxtGt
  loc_1A1C822: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1C82D: For var_230 =  To var_18E: 1 = var_230 'Integer
  loc_1A1C85F:   Set var_180 = Me.LblCap
  loc_1A1C865:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_1E0, -1)
  loc_1A1C897:   unk_56AA14.Execute var_244 & var_18C & "' And V_Type='" & global_132 & "'", 0, var_248
  loc_1A1C8A7:    = var_244.Item()
  loc_1A1C8AF:    = var_248.Value
  loc_1A1C8E3:   var_24C = Proc_6_38_E68A98(var_184.Tag.Fields)
  loc_1A1C8EE:   If (var_24C = "Addition") Then
  loc_1A1C8FE:     Set var_180 = Me.TxtGt
  loc_1A1C904:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184)
  loc_1A1C90C:     var_18C = var_184.Text
  loc_1A1C923:     var_B4 = (var_B4 + Val(var_18C))
  loc_1A1C93D:     Set var_180 = Me.TxtPer
  loc_1A1C943:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1C94B:     var_B4 = var_184.Text
  loc_1A1C962:     var_CC = (var_CC + Val(var_18C))
  loc_1A1C972:   Else
  loc_1A1C97A:     If (var_24C = "Deduction") Then
  loc_1A1C98A:       Set var_180 = Me.TxtGt
  loc_1A1C990:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1C998:       var_CC = var_184.Text
  loc_1A1C9AF:       var_BC = (var_BC + Val(var_18C))
  loc_1A1C9C9:       Set var_180 = Me.TxtPer
  loc_1A1C9CF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_BC)
  loc_1A1C9D7:       var_22C = var_184.Text
  loc_1A1C9EE:       var_C4 = (var_C4 + Val(var_18C))
  loc_1A1C9FE:     Else
  loc_1A1CA06:       If (var_24C = "Discount") Then
  loc_1A1CA16:         Set var_180 = Me.TxtGt
  loc_1A1CA1C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_C4)
  loc_1A1CA24:         var_22C = var_184.Text
  loc_1A1CA3B:         var_DC = (var_DC + Val(var_18C))
  loc_1A1CA55:         Set var_180 = Me.TxtPer
  loc_1A1CA5B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_DC)
  loc_1A1CA63:         var_22C = var_184.Text
  loc_1A1CA7A:         var_E4 = (var_E4 + Val(var_18C))
  loc_1A1CA8A:       Else
  loc_1A1CA92:         If (var_24C = "Luxury Tax") Then
  loc_1A1CAA2:           Set var_180 = Me.TxtGt
  loc_1A1CAA8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_E4)
  loc_1A1CAB0:           var_22C = var_184.Text
  loc_1A1CAC7:           var_FC = (var_FC + Val(var_18C))
  loc_1A1CAE1:           Set var_180 = Me.TxtPer
  loc_1A1CAE7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_FC)
  loc_1A1CAEF:           var_22C = var_184.Text
  loc_1A1CB06:           var_D4 = (var_D4 + Val(var_18C))
  loc_1A1CB16:         Else
  loc_1A1CB1E:           If (var_24C = "Round Off") Then
  loc_1A1CB2E:             Set var_180 = Me.TxtGt
  loc_1A1CB34:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_D4)
  loc_1A1CB3C:             var_22C = var_184.Text
  loc_1A1CB53:             var_EC = (var_EC + Val(var_18C))
  loc_1A1CB6D:             Set var_180 = Me.TxtPer
  loc_1A1CB73:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_EC)
  loc_1A1CB7B:             var_22C = var_184.Text
  loc_1A1CB92:             var_F4 = (var_F4 + Val(var_18C))
  loc_1A1CBA2:           Else
  loc_1A1CBAA:             If (var_24C = "Sale Tax") Then
  loc_1A1CBBA:               Set var_180 = Me.TxtGt
  loc_1A1CBC0:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_F4)
  loc_1A1CBC8:               var_22C = var_184.Text
  loc_1A1CBDF:               var_FC = (var_FC + Val(var_18C))
  loc_1A1CBF9:               Set var_180 = Me.TxtPer
  loc_1A1CBFF:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_FC)
  loc_1A1CC07:               var_22C = var_184.Text
  loc_1A1CC1E:               var_D4 = (var_D4 + Val(var_18C))
  loc_1A1CC2E:             Else
  loc_1A1CC36:               If (var_24C = "Service Charge") Then
  loc_1A1CC46:                 Set var_180 = Me.TxtGt
  loc_1A1CC4C:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_D4)
  loc_1A1CC54:                 var_22C = var_184.Text
  loc_1A1CC6B:                 var_104 = (var_104 + Val(var_18C))
  loc_1A1CC85:                 Set var_180 = Me.TxtPer
  loc_1A1CC8B:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_104)
  loc_1A1CC93:                 var_22C = var_184.Text
  loc_1A1CCAA:                 var_10C = (var_10C + Val(var_18C))
  loc_1A1CCBA:               Else
  loc_1A1CCC2:                 If (var_24C = "Service Tax") Then
  loc_1A1CCD2:                   Set var_180 = Me.TxtGt
  loc_1A1CCD8:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_10C)
  loc_1A1CCE0:                   var_22C = var_184.Text
  loc_1A1CCF7:                   var_FC = (var_FC + Val(var_18C))
  loc_1A1CD11:                   Set var_180 = Me.TxtPer
  loc_1A1CD17:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_FC)
  loc_1A1CD1F:                   var_22C = var_184.Text
  loc_1A1CD36:                   var_D4 = (var_D4 + Val(var_18C))
  loc_1A1CD43:                   GoTo loc_1A1CD46
  loc_1A1CD46:                   ' Referenced from:               1A1CD43
  loc_1A1CD46:                 End If
  loc_1A1CD46:               End If
  loc_1A1CD46:             End If
  loc_1A1CD46:           End If
  loc_1A1CD46:         End If
  loc_1A1CD46:       End If
  loc_1A1CD46:     End If
  loc_1A1CD46:   End If
  loc_1A1CD49: Next var_230 'Integer
  loc_1A1CD5A: Set var_180 = Me.TextGt
  loc_1A1CD60: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1CD6B: For var_250 =  To var_18E: 1 = var_250 'Integer
  loc_1A1CD9D:   Set var_180 = Me.LableCap
  loc_1A1CDA3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_1E0, -1)
  loc_1A1CDAB:   var_188 = var_184.Tag
  loc_1A1CDD5:   unk_56AA14.Execute var_244 & var_18C & "' And V_Type='" & global_132 & "'", 0, var_248
  loc_1A1CDE5:    = var_244.Item()
  loc_1A1CDED:    = var_248.Value
  loc_1A1CE21:   var_254 = Proc_6_38_E68A98(var_188.Fields)
  loc_1A1CE2C:   If (var_254 = "Addition") Then
  loc_1A1CE3C:     Set var_180 = Me.TextGt
  loc_1A1CE42:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184)
  loc_1A1CE4A:     var_18C = var_184.Text
  loc_1A1CE61:     var_124 = (var_124 + Val(var_18C))
  loc_1A1CE7B:     Set var_180 = Me.TextPer
  loc_1A1CE81:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1CE89:     var_124 = var_184.Text
  loc_1A1CEA0:     var_13C = (var_13C + Val(var_18C))
  loc_1A1CEB0:   Else
  loc_1A1CEB8:     If (var_254 = "Deduction") Then
  loc_1A1CEC8:       Set var_180 = Me.TextGt
  loc_1A1CECE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1CED6:       var_13C = var_184.Text
  loc_1A1CEED:       var_12C = (var_12C + Val(var_18C))
  loc_1A1CF07:       Set var_180 = Me.TextPer
  loc_1A1CF0D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_12C)
  loc_1A1CF15:       var_22C = var_184.Text
  loc_1A1CF2C:       var_134 = (var_134 + Val(var_18C))
  loc_1A1CF3C:     Else
  loc_1A1CF44:       If (var_254 = "Discount") Then
  loc_1A1CF54:         Set var_180 = Me.TextGt
  loc_1A1CF5A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_134)
  loc_1A1CF62:         var_22C = var_184.Text
  loc_1A1CF79:         var_14C = (var_14C + Val(var_18C))
  loc_1A1CF93:         Set var_180 = Me.TextPer
  loc_1A1CF99:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_14C)
  loc_1A1CFA1:         var_22C = var_184.Text
  loc_1A1CFB8:         var_154 = (var_154 + Val(var_18C))
  loc_1A1CFC8:       Else
  loc_1A1CFD0:         If (var_254 = "Luxury Tax") Then
  loc_1A1CFE0:           Set var_180 = Me.TextGt
  loc_1A1CFE6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_154)
  loc_1A1CFEE:           var_22C = var_184.Text
  loc_1A1D005:           var_16C = (var_16C + Val(var_18C))
  loc_1A1D01F:           Set var_180 = Me.TextPer
  loc_1A1D025:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_16C)
  loc_1A1D02D:           var_22C = var_184.Text
  loc_1A1D044:           var_144 = (var_144 + Val(var_18C))
  loc_1A1D054:         Else
  loc_1A1D05C:           If (var_254 = "Round Off") Then
  loc_1A1D06C:             Set var_180 = Me.TextGt
  loc_1A1D072:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_144)
  loc_1A1D07A:             var_22C = var_184.Text
  loc_1A1D091:             var_15C = (var_15C + Val(var_18C))
  loc_1A1D0AB:             Set var_180 = Me.TextPer
  loc_1A1D0B1:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_15C)
  loc_1A1D0B9:             var_22C = var_184.Text
  loc_1A1D0D0:             var_164 = (var_164 + Val(var_18C))
  loc_1A1D0E0:           Else
  loc_1A1D0E8:             If (var_254 = "Sale Tax") Then
  loc_1A1D0F8:               Set var_180 = Me.TextGt
  loc_1A1D0FE:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_164)
  loc_1A1D106:               var_22C = var_184.Text
  loc_1A1D11D:               var_16C = (var_16C + Val(var_18C))
  loc_1A1D137:               Set var_180 = Me.TextPer
  loc_1A1D13D:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_16C)
  loc_1A1D145:               var_22C = var_184.Text
  loc_1A1D15C:               var_144 = (var_144 + Val(var_18C))
  loc_1A1D16C:             Else
  loc_1A1D174:               If (var_254 = "Service Charge") Then
  loc_1A1D184:                 Set var_180 = Me.TextGt
  loc_1A1D18A:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_144)
  loc_1A1D192:                 var_22C = var_184.Text
  loc_1A1D1A9:                 var_174 = (var_174 + Val(var_18C))
  loc_1A1D1C3:                 Set var_180 = Me.TextPer
  loc_1A1D1C9:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_174)
  loc_1A1D1D1:                 var_22C = var_184.Text
  loc_1A1D1E8:                 var_17C = (var_17C + Val(var_18C))
  loc_1A1D1F8:               Else
  loc_1A1D200:                 If (var_254 = "Service Tax") Then
  loc_1A1D210:                   Set var_180 = Me.TextGt
  loc_1A1D216:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_17C)
  loc_1A1D21E:                   var_22C = var_184.Text
  loc_1A1D235:                   var_16C = (var_16C + Val(var_18C))
  loc_1A1D24F:                   Set var_180 = Me.TextPer
  loc_1A1D255:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_16C)
  loc_1A1D25D:                   var_22C = var_184.Text
  loc_1A1D274:                   var_144 = (var_144 + Val(var_18C))
  loc_1A1D281:                   GoTo loc_1A1D284
  loc_1A1D284:                   ' Referenced from:               1A1D281
  loc_1A1D284:                 End If
  loc_1A1D284:               End If
  loc_1A1D284:             End If
  loc_1A1D284:           End If
  loc_1A1D284:         End If
  loc_1A1D284:       End If
  loc_1A1D284:     End If
  loc_1A1D284:   End If
  loc_1A1D287: Next var_250 'Integer
  loc_1A1D293: If (var_16C <> CDbl(0)) Then
  loc_1A1D29D:   Set var_180 = Me.TextGt
  loc_1A1D2A3:   Call 0.Method_TopCtrl1_UnknownEvent_164 (var_18E)
  loc_1A1D2B5:   Set var_184 = Me.TextGt
  loc_1A1D2BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_18E, var_188)
  loc_1A1D2D0:   var_22C = Val(var_188.Text)
  loc_1A1D2DA:   var_A4 = (var_A4 + var_22C)
  loc_1A1D2E9: End If
  loc_1A1D2EC: var_9C = vbNullString
  loc_1A1D2F2: Call Proc_210_78_1132384(var_18E, var_A4)
  loc_1A1D2FD: If (var_18E = 0) Then
  loc_1A1D300:   Exit Sub
  loc_1A1D301: End If
  loc_1A1D30C: Set var_180 = Me.TxtGrid
  loc_1A1D312: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_184)
  loc_1A1D31A: var_184.Visible = False
  loc_1A1D326: Call Proc_210_81_F24170(var_22C)
  loc_1A1D339: Set var_180 = Me.Txt
  loc_1A1D33F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_184)
  loc_1A1D367: If (Proc_6_91_EF2D40(CDate(var_184.Text)) = 0) Then
  loc_1A1D375:   Set var_180 = Me.Txt
  loc_1A1D37B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1A1D383:   var_184.SetFocus
  loc_1A1D38F:   Exit Sub
  loc_1A1D390: End If
  loc_1A1D394: Set var_180 = Me.topCtrl1
  loc_1A1D39A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_184)
  loc_1A1D3A2: var_18C = CStr()
  loc_1A1D3B3: If (var_18C = "Add") Then
  loc_1A1D3E3:   Set var_180 = Me.Txt
  loc_1A1D3E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Select Count(*) From HallSale1Est Where DocID='", var_1E0, -1)
  loc_1A1D3F1:   var_188 = var_184.Text
  loc_1A1D40A:   unk_56AA14.Execute var_244 & var_18C & "'", 0, var_248
  loc_1A1D412:   var_1F0 = var_188.Fields
  loc_1A1D41A:    = var_244.Item()
  loc_1A1D422:    = var_248.Value
  loc_1A1D44F:   If (var_1F0 > 0) Then
  loc_1A1D458:     Call Proc_210_84_11BDF58(MemVar_1F92044)
  loc_1A1D46B:     Set var_180 = Me.Txt
  loc_1A1D471:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1D479:     var_184.Text = var_18C
  loc_1A1D488:     Exit Sub
  loc_1A1D489:   End If
  loc_1A1D48C: Else
  loc_1A1D4A9:   var_184 = Me.Fields.Item("DocID")
  loc_1A1D4B1:   var_1E0 = var_184.Value
  loc_1A1D4BA:   var_18C = CStr(var_1E0)
  loc_1A1D4C0:   global_104 = var_18C
  loc_1A1D4D1: End If
  loc_1A1D4D3: var_8A = &HFF
  loc_1A1D4DF: unk_56AA14.BeginTrans var_258
  loc_1A1D502: Set var_180 = Me.Txt
  loc_1A1D508: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From SunTranEst Where DocID='", var_1E0)
  loc_1A1D510: -1 = var_184.Text
  loc_1A1D529: unk_56AA14.Execute var_188 & var_18C & "'", var_8A, var_18C
  loc_1A1D561: Set var_180 = Me.Txt
  loc_1A1D567: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From SunTranHEst Where DocID='")
  loc_1A1D56F: var_1E0 = var_184.Text
  loc_1A1D578: var_234 = -1 & var_18C
  loc_1A1D588: unk_56AA14.Execute var_188 & var_18C & "'", var_188, 
  loc_1A1D5C0: Set var_180 = Me.Txt
  loc_1A1D5C6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From HallStockEst Where DocID='")
  loc_1A1D5CE: var_1E0 = var_184.Text
  loc_1A1D5D7: var_234 = -1 & var_18C
  loc_1A1D5E7: unk_56AA14.Execute var_188 & var_18C & "'", var_188, 
  loc_1A1D61F: Set var_180 = Me.Txt
  loc_1A1D625: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From HallSale1Est Where DocID='")
  loc_1A1D62D: var_1E0 = var_184.Text
  loc_1A1D636: var_234 = -1 & var_18C
  loc_1A1D646: unk_56AA14.Execute var_188 & var_18C & "'", var_188, 
  loc_1A1D66E: Set var_180 = Me.Txt
  loc_1A1D674: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1D68F: Set var_188 = Me.Txt
  loc_1A1D695: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_244)
  loc_1A1D6AA: var_22C = Val(var_244.Text)
  loc_1A1D6B8: Set var_248 = Me.Txt
  loc_1A1D6BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_27C)
  loc_1A1D6CD: Proc_6_7_F25D88(var_1F0, CVar(var_27C))
  loc_1A1D6E0: Set var_290 = Me.Txt
  loc_1A1D6E6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_294)
  loc_1A1D713: Set var_324 = Me.Txt
  loc_1A1D719: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_328)
  loc_1A1D734: Set var_390 = Me.Txt
  loc_1A1D73A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_394)
  loc_1A1D74E: Set var_41C = Me.TextGt
  loc_1A1D754: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_18E)
  loc_1A1D766: Set var_420 = Me.TextGt
  loc_1A1D76C: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_18E, var_424)
  loc_1A1D781: var_DD8 = Val(var_424.Text)
  loc_1A1D78B: Set var_42C = Me.TxtGt
  loc_1A1D791: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_42E, var_DD8)
  loc_1A1D7A3: Set var_434 = Me.TxtGt
  loc_1A1D7A9: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_42E, var_438)
  loc_1A1D7BE: var_DE0 = Val(var_438.Text)
  loc_1A1D7C8: Set var_6E0 = Me.TextGt
  loc_1A1D7CE: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_6E2, var_DE0)
  loc_1A1D7E0: Set var_6E8 = Me.TextGt
  loc_1A1D7E6: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_6E2, var_6EC)
  loc_1A1D7FB: var_DE8 = Val(var_6EC.Text)
  loc_1A1D805: Set var_6F4 = Me.TxtGt
  loc_1A1D80B: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_6F6, var_DE8)
  loc_1A1D81D: Set var_6FC = Me.TxtGt
  loc_1A1D823: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_6F6, var_700)
  loc_1A1D838: var_DF0 = Val(var_700.Text)
  loc_1A1D846: Set var_748 = Me.Txt
  loc_1A1D84C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_74C)
  loc_1A1D85B: Proc_6_7_F25D88(var_76C, CVar(var_74C))
  loc_1A1D869: Set var_7A0 = Me.txtM
  loc_1A1D86F: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_7A4)
  loc_1A1D877: var_7B4 = var_7A4.defaultText
  loc_1A1D88B: Set var_7F8 = Me.Txt
  loc_1A1D891: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_7FC, var_7B4)
  loc_1A1D8A0: Proc_6_7_F25D88(var_81C, CVar(var_7FC))
  loc_1A1D8AE: Set var_850 = Me.txtM
  loc_1A1D8B4: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_854)
  loc_1A1D8BC: var_864 = var_854.defaultText
  loc_1A1D8D3: Set var_8C8 = Me.Txt
  loc_1A1D8D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_8CC, var_8D0)
  loc_1A1D8F4: Set var_914 = Me.Txt
  loc_1A1D8FA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_918, var_91C)
  loc_1A1D915: Set var_960 = Me.Txt
  loc_1A1D91B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_964)
  loc_1A1D930: var_DF8 = Val(var_964.Text)
  loc_1A1D93E: Set var_9AC = Me.Txt
  loc_1A1D944: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_9B0)
  loc_1A1D953: Proc_6_7_F25D88(var_9D0, CVar(var_9B0))
  loc_1A1D966: Set var_A04 = Me.Txt
  loc_1A1D96C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A08, var_A0C)
  loc_1A1D981: var_E00 = Val(var_A0C)
  loc_1A1D98F: Set var_A50 = Me.Txt
  loc_1A1D995: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_A54)
  loc_1A1D9BC: Set var_AB8 = Me.Txt
  loc_1A1D9C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_ABC)
  loc_1A1D9D1: Proc_6_39_E7C810(var_ADC, CVar(var_ABC))
  loc_1A1D9E1: Set var_B10 = Me.Txt
  loc_1A1D9E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_B14)
  loc_1A1D9F6: Proc_6_39_E7C810(var_B34, CVar(var_B14))
  loc_1A1DA02: Set var_B68 = Me.TextGt
  loc_1A1DA08: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_B6A)
  loc_1A1DA17: Set var_B70 = Me.TextGt
  loc_1A1DA1D: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B6A, var_B74)
  loc_1A1DA2C: Proc_6_39_E7C810(var_B94, CVar(var_B74))
  loc_1A1DA3C: Proc_6_7_F25D88(var_C44, MemVar_1F920EC)
  loc_1A1DA45: Set var_C78 = Me.topCtrl1
  loc_1A1DA4B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_22C)
  loc_1A1DA6E: var_C8C = CStr(var_C88)
  loc_1A1DA90: Set var_D20 = Me.Txt
  loc_1A1DA96: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_D24)
  loc_1A1DAC5: var_238 = "Insert Into HallSale1Est(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId," & "Party,RestCode,Total," & "DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,FrBookDate,FrBookTime,ToBookDate,ToBookTime,"
  loc_1A1DAD3: var_240 = var_238 & "CrCardNo,CrCardHolder,RectNo,Rectdate,ADVANCE,Remarks,NoOfPax,RatePerPax,TotalPerCover," & "U_Name, U_EntDt, U_AE, Narration,LogSite_Code) "
  loc_1A1DADA: var_25C = var_240 & " Values("
  loc_1A1DAFB: var_278 = var_25C & "'" & var_184.Text & "'," & CStr(var_22C)
  loc_1A1DB41: var_310 = CVar(var_278 & ",") & var_1F0 & ",'" & CVar(var_294.Tag) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) 
  loc_1A1DB9A: var_44C = CVar((var_DD8 + var_DE0)) 'Double
  loc_1A1DBA7: var_47C = var_310 & "','" & CVar(var_328.Tag) & "'," & "'" & CVar(var_394.Text) & "','" & CVar(global_56) & "'," & var_44C & "," 
  loc_1A1DBB2: var_48C = CVar((var_154 + var_E4)) 'Double
  loc_1A1DBCA: var_4CC = CVar((var_14C + var_DC)) 'Double
  loc_1A1DBE2: var_50C = CVar((var_11C + var_AC)) 'Double
  loc_1A1DBFA: var_54C = CVar((var_114 + var_A4)) 'Double
  loc_1A1DC12: var_58C = CVar((var_16C + var_FC)) 'Double
  loc_1A1DC2A: var_5CC = CVar((var_174 + var_104)) 'Double
  loc_1A1DC42: var_60C = CVar((var_15C + var_EC)) 'Double
  loc_1A1DC58: var_65C = var_47C & var_48C & "," & var_4CC & "," & var_50C & "," & var_54C & "," & var_58C & "," & var_5CC & "," & var_60C & "," & vbNullString 
  loc_1A1DC63: var_66C = CVar((var_124 + var_B4)) 'Double
  loc_1A1DC7B: var_6AC = CVar((var_12C + var_BC)) 'Double
  loc_1A1DC93: var_714 = CVar((var_DE8 + var_918.Text)) 'Double
  loc_1A1DCDF: var_884 = var_65C & var_66C & "," & var_6AC & "," & var_714 & "," & var_76C & ",'" & CVar(CStr(var_7B4)) & "'," & var_81C & ",'" & CVar(CStr(var_8CC.Text)) 
  loc_1A1DCFB: var_8F0 = var_884 & "'," & "'" & CVar(var_8D0) 
  loc_1A1DD0E: var_93C = var_8F0 & "','" & CVar(var_91C) 
  loc_1A1DD46: var_A2C = var_93C & "'," & CVar(var_A08.Text) & "," & var_9D0 & "," & CVar(var_E00) 
  loc_1A1DD8F: var_BC4 = var_A2C & ",'" & Trim(CVar(Proc_6_38_E68A98(CVar(var_A54), var_E00))) & "'," & var_ADC & "," & var_B34 & "," & var_B94 & "," 
  loc_1A1DDD5: var_D48 = var_BC4 & "'" & CVar(MemVar_1F920C8) & "'," & var_C44 & ",'" & IIf((var_C8C = "Add"), "A", "E") & "','" & CVar(var_D24.Text) 
  loc_1A1DDFF: unk_56AA14.Execute CStr(var_D48 & "','" & CVar(MemVar_1F92078) & "')"), var_DCC, -1
  loc_1A1DF9C: For var_E04 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_E04 'Integer
  loc_1A1DFA6:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1DFAE:   var_1C0 = CVar(CLng(1)) 'Long
  loc_1A1DFCE:   var_200 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A1DFF5:   Set var_184 = Me.FGrid
  loc_1A1E034:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_184.TextMatrix)))) <> CDbl(0))) Then
  loc_1A1E045:     Set var_180 = Me.Txt
  loc_1A1E04B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_25C, CVar(CLng(var_92)), (var_200 <> vbNullString))
  loc_1A1E053:     var_1C0 = var_184.Text
  loc_1A1E05C:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1E086:     var_22C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A1E097:     Set var_244 = Me.Txt
  loc_1A1E09D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_248, var_278, var_22C, CVar(CLng(0)))
  loc_1A1E0A5:     var_1A0 = var_248.Tag
  loc_1A1E0B1:     Set var_27C = Me.LblVPrefix
  loc_1A1E0CA:     Set var_290 = Me.Txt
  loc_1A1E0D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_294, var_8D0)
  loc_1A1E0D8:     var_1A0 = var_294.Text
  loc_1A1E0E5:     var_DD8 = Val(var_8D0)
  loc_1A1E0F3:     Set var_2CC = Me.Txt
  loc_1A1E0F9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_324, var_DD8)
  loc_1A1E101:     var_1F0 = CVar(var_324) 'Address
  loc_1A1E108:     Proc_6_7_F25D88(var_200, var_1F0)
  loc_1A1E11B:     Set var_328 = Me.Txt
  loc_1A1E121:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_390, var_C8C)
  loc_1A1E129:     1 = var_390.Tag
  loc_1A1E13C:     Set var_394 = Me.Txt
  loc_1A1E142:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_41C)
  loc_1A1E153:     var_3E8 = CVar(CLng(var_92)) 'Long
  loc_1A1E15B:     var_44C = CVar(CLng(9)) 'Long
  loc_1A1E17A:     var_4AC = CVar(CLng(var_92)) 'Long
  loc_1A1E182:     var_4EC = CVar(CLng(&HD)) 'Long
  loc_1A1E18B:     Set var_424 = Me.FGrid
  loc_1A1E1A1:     var_54C = CVar(CLng(var_92)) 'Long
  loc_1A1E1A9:     var_58C = CVar(CLng(&HE)) 'Long
  loc_1A1E1C8:     var_5EC = CVar(CLng(var_92)) 'Long
  loc_1A1E1D0:     var_62C = CVar(CLng(&HA)) 'Long
  loc_1A1E1D9:     Set var_434 = Me.FGrid
  loc_1A1E1EF:     var_6AC = CVar(CLng(var_92)) 'Long
  loc_1A1E1F7:     var_714 = CVar(CLng(3)) 'Long
  loc_1A1E206:     var_55C = Me.FGrid.TextMatrix)
  loc_1A1E220:     var_83C = CVar(CLng(var_92)) 'Long
  loc_1A1E228:     var_8B4 = CVar(CLng(4)) 'Long
  loc_1A1E231:     Set var_6E0 = Me.FGrid
  loc_1A1E251:     var_9F0 = CVar(CLng(var_92)) 'Long
  loc_1A1E259:     var_A3C = CVar(CLng(5)) 'Long
  loc_1A1E268:     var_63C = Me.FGrid.TextMatrix)
  loc_1A1E282:     var_BB4 = CVar(CLng(var_92)) 'Long
  loc_1A1E28A:     var_BF4 = CVar(CLng(6)) 'Long
  loc_1A1E293:     Set var_6EC = Me.FGrid
  loc_1A1E2B3:     var_CAC = CVar(CLng(var_92)) 'Long
  loc_1A1E2BB:     var_D0C = CVar(CLng(7)) 'Long
  loc_1A1E2E4:     var_DBC = CVar(CLng(var_92)) 'Long
  loc_1A1E2EC:     var_E34 = CVar(CLng(&HB)) 'Long
  loc_1A1E2F5:     Set var_6FC = Me.FGrid
  loc_1A1E315:     var_E78 = CVar(CLng(var_92)) 'Long
  loc_1A1E31D:     var_E98 = CVar(CLng(&HC)) 'Long
  loc_1A1E33F:     var_1058 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A1E370:     var_1060 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A1E388:     Set var_74C = Me.FGrid
  loc_1A1E38E:     var_84C = var_74C.TextMatrix)
  loc_1A1E3A5:     Proc_6_7_F25D88(var_8F0, MemVar_1F920EC, var_84C, CVar(CLng(2)), CVar(CLng(var_92)), var_1060, CVar(CLng(8)), CVar(CLng(var_92)))
  loc_1A1E3AE:     Set var_7A0 = Me.topCtrl1
  loc_1A1E3B4:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1058)
  loc_1A1E40D:     var_238 = "Insert Into HallStockEst(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,Party,Item,DiscApp,RoundOff," & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,Remarks,"
  loc_1A1E44A:     var_2D0 = var_238 & "U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'" & var_25C & "'," & CStr(var_22C) & ",'" & var_278
  loc_1A1E45F:     var_43C = var_2D0 & "','" & var_27C.Caption & "','"
  loc_1A1E466:     var_6F0 = var_43C & MemVar_1F92070
  loc_1A1E4BC:     var_310 = CVar(var_6F0 & "'," & vbNullString & CStr(var_DD8) & ",") & var_200 & ",'" & CVar(var_C8C) & "','" & CVar(var_41C.Text) & "'," 
  loc_1A1E4F8:     var_47C = var_310 & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_424.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1A1E50C:     var_4FC = var_47C & "','" & CVar(CStr(var_434.TextMatrix))) 
  loc_1A1E54F:     var_61C = var_4FC & "'," & vbNullString & CVar(Val(CStr(var_55C))) & "," & CVar(Val(CStr(var_6E0.TextMatrix)))) & "," & vbNullString 
  loc_1A1E58B:     var_75C = var_61C & CVar(Val(CStr(var_63C))) & "," & CVar(Val(CStr(var_6EC.TextMatrix)))) & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1A1E5A8:     var_7B4 = var_75C & "," & CVar(Val(CStr(var_6FC.TextMatrix)))) & "," 
  loc_1A1E607:     var_910 = var_7B4 & CVar(var_1058) & "," & CVar(var_1060) & ",'" & CVar(CStr(var_84C)) & "'," & "'" & CVar(MemVar_1F920C8) & "'," & var_8F0 
  loc_1A1E641:     unk_56AA14.Execute CStr(var_910 & ",'" & IIf((CStr(var_93C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_A2C, -1
  loc_1A1E765:   End If
  loc_1A1E768: Next var_E04 'Integer
  loc_1A1E779: Set var_180 = Me.TxtGt
  loc_1A1E77F: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1E78A: For var_1064 =  To var_18E: 1 = var_1064 'Integer
  loc_1A1E79E:   Set var_180 = Me.Txt
  loc_1A1E7A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1E7BF:   Set var_188 = Me.Txt
  loc_1A1E7C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_244)
  loc_1A1E7E0:   Set var_248 = Me.Txt
  loc_1A1E7E6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_27C)
  loc_1A1E809:   Set var_290 = Me.Txt
  loc_1A1E80F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_294)
  loc_1A1E81E:   Proc_6_7_F25D88(var_1F0, CVar(var_294))
  loc_1A1E830:   Set var_2CC = Me.LblCap
  loc_1A1E836:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_324)
  loc_1A1E850:   Set var_328 = Me.TxtPer
  loc_1A1E856:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_390)
  loc_1A1E86B:   var_DD8 = Val(var_390.Tag)
  loc_1A1E87B:   Set var_394 = Me.LblCap
  loc_1A1E881:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_41C, var_2D0)
  loc_1A1E89B:   Set var_420 = Me.LblAt
  loc_1A1E8A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_424)
  loc_1A1E8BB:   Set var_42C = Me.TxtGt
  loc_1A1E8C1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_434)
  loc_1A1E8DB:   Set var_438 = Me.TxtPer
  loc_1A1E8E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6E0)
  loc_1A1E8F6:   var_DE0 = Val(var_6E0.Text)
  loc_1A1E906:   Set var_6E8 = Me.TxtGt
  loc_1A1E90C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6EC, var_43C)
  loc_1A1E921:   var_DE8 = Val(var_43C)
  loc_1A1E931:   Set var_6F4 = Me.LblDummy
  loc_1A1E937:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6FC, var_6F0)
  loc_1A1E94C:   var_DF0 = Val(var_6F0)
  loc_1A1E95A:   Proc_6_7_F25D88(var_4FC, MemVar_1F920EC)
  loc_1A1E963:   Set var_700 = Me.topCtrl1
  loc_1A1E969:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DF0)
  loc_1A1E9AB:   Set var_748 = Me.Txt
  loc_1A1E9B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_74C)
  loc_1A1E9C0:   Proc_6_7_F25D88(var_63C, CVar(var_74C))
  loc_1A1E9D2:   Set var_7A0 = Me.LblDummy
  loc_1A1E9D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7A4)
  loc_1A1E9F9:   var_234 = "Insert Into SunTranEst (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_184.Text
  loc_1A1EA4D:   var_2B8 = CVar(var_234 & "'," & CStr(var_92) & ",'" & var_244.Tag & "'," & CStr(Val(var_27C.Text)) & ",") & var_1F0 & ",'" & CVar(var_324.Tag) 
  loc_1A1EAA3:   var_3B8 = var_2B8 & "'," & CVar(var_41C.Caption) & ",'" & CVar(var_2D0) & "','" & CVar(var_424.Tag) & "','" & CVar(var_434.Tag) & "'," 
  loc_1A1EAF9:   var_51C = var_3B8 & CVar(var_6EC.Text) & "," & CVar(var_6FC.Caption) & "," & CVar(var_DF0) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4FC 
  loc_1A1EB42:   var_724 = var_51C & ",'" & IIf((CStr(var_55C) = "Add"), "A", "E") & "'," & var_63C & ",'" & CVar(var_7A4.Tag) & "','" & CVar(global_56) 
  loc_1A1EB7F:   unk_56AA14.Execute CStr(var_724 & "','N','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_7B4, -1
  loc_1A1EC52: Next var_1064 'Integer
  loc_1A1EC63: Set var_180 = Me.TextGt
  loc_1A1EC69: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1EC74: For var_1068 =  To var_18E: 1 = var_1068 'Integer
  loc_1A1EC88:   Set var_180 = Me.Txt
  loc_1A1EC8E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1ECA9:   Set var_188 = Me.Txt
  loc_1A1ECAF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_244)
  loc_1A1ECCA:   Set var_248 = Me.Txt
  loc_1A1ECD0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_27C)
  loc_1A1ECF3:   Set var_290 = Me.Txt
  loc_1A1ECF9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_294)
  loc_1A1ED08:   Proc_6_7_F25D88(var_1F0, CVar(var_294))
  loc_1A1ED1A:   Set var_2CC = Me.LableCap
  loc_1A1ED20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_324)
  loc_1A1ED3A:   Set var_328 = Me.TextPer
  loc_1A1ED40:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_390)
  loc_1A1ED55:   var_DD8 = Val(var_390.Tag)
  loc_1A1ED65:   Set var_394 = Me.LableCap
  loc_1A1ED6B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_41C, var_2D0)
  loc_1A1ED85:   Set var_420 = Me.LableAt
  loc_1A1ED8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_424)
  loc_1A1EDA5:   Set var_42C = Me.TextGt
  loc_1A1EDAB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_434)
  loc_1A1EDC5:   Set var_438 = Me.TextPer
  loc_1A1EDCB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6E0)
  loc_1A1EDE0:   var_DE0 = Val(var_6E0.Text)
  loc_1A1EDF0:   Set var_6E8 = Me.TextGt
  loc_1A1EDF6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6EC, var_43C)
  loc_1A1EE0B:   var_DE8 = Val(var_43C)
  loc_1A1EE1B:   Set var_6F4 = Me.LableDummy
  loc_1A1EE21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6FC, var_6F0)
  loc_1A1EE36:   var_DF0 = Val(var_6F0)
  loc_1A1EE44:   Proc_6_7_F25D88(var_4FC, MemVar_1F920EC)
  loc_1A1EE4D:   Set var_700 = Me.topCtrl1
  loc_1A1EE53:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DF0)
  loc_1A1EE95:   Set var_748 = Me.Txt
  loc_1A1EE9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_74C)
  loc_1A1EEAA:   Proc_6_7_F25D88(var_63C, CVar(var_74C))
  loc_1A1EEBC:   Set var_7A0 = Me.LableDummy
  loc_1A1EEC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7A4)
  loc_1A1EEE3:   var_234 = "Insert Into SunTranHEst (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_184.Text
  loc_1A1EEF2:   var_23C = CStr(var_92)
  loc_1A1EEFD:   var_260 = var_234 & "'," & var_23C & ",'"
  loc_1A1EF40:   var_2C8 = CVar(var_260 & var_244.Tag & "'," & CStr(Val(var_27C.Text)) & ",") & var_1F0 & ",'" & CVar(var_324.Tag) & "'," 
  loc_1A1EF98:   var_3D8 = var_2C8 & CVar(var_41C.Caption) & ",'" & CVar(var_2D0) & "','" & CVar(var_424.Tag) & "','" & CVar(var_434.Tag) & "'," & CVar(var_6EC.Text) 
  loc_1A1EFF3:   var_5DC = var_3D8 & "," & CVar(var_6FC.Caption) & "," & CVar(var_DF0) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4FC & ",'" & IIf((CStr(var_55C) = "Add"), "A", "E") 
  loc_1A1F048:   var_76C = var_5DC & "'," & var_63C & ",'" & CVar(var_7A4.Tag) & "','" & CVar(global_56) & "','N','" & CVar(MemVar_1F92070) & "','" 
  loc_1A1F069:   unk_56AA14.Execute CStr(var_76C & CVar(MemVar_1F92078) & "')"), var_7B4, -1
  loc_1A1F13C: Next var_1068 'Integer
  loc_1A1F145: Set var_180 = Me.topCtrl1
  loc_1A1F14B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A1F164: If (CStr() = "Add") Then
  loc_1A1F17B:   var_18C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1A1F1A1:   Set var_180 = Me.Txt
  loc_1A1F1A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_184, var_23C, var_18C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_1A1F1AF:   var_2A8 = var_184.Tag
  loc_1A1F1B8:   var_25C = -1 & var_23C
  loc_1A1F1BF:   var_200 = CVar(var_244.Tag & "' And VP.Date_From<=") 'String
  loc_1A1F1D0:   Set var_188 = Me.Txt
  loc_1A1F1D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_244, var_260)
  loc_1A1F1DE:   var_200 = var_244.Text
  loc_1A1F1EC:   Proc_6_7_F25D88(var_1F0, CVar(var_260))
  loc_1A1F20B:   unk_56AA14.Execute CStr(var_248 & var_1F0 & " Order By VP.Date_From DESC"), , 
  loc_1A1F216:   Set var_88 = var_248
  loc_1A1F24C:   var_258 = var_88.RecordCount
  loc_1A1F25A:   If (var_258 > 0) Then
  loc_1A1F26B:     Set var_180 = Me.Txt
  loc_1A1F271:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_184)
  loc_1A1F286:     var_22C = Val(var_184.Text)
  loc_1A1F29B:     var_188 = var_88.Fields
  loc_1A1F2AB:     var_1E0 = var_188.Item("V_Type").Value
  loc_1A1F2D6:     Proc_6_7_F25D88(var_2A8, CVar(var_88.Fields.Item("Date_From")))
  loc_1A1F2FB:     var_23C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_22C) & " Where (SITE_CODE='"
  loc_1A1F326:     var_220 = CVar(var_23C & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_1E0 & "' and Date_From=" 
  loc_1A1F32D:     var_2B8 = var_220 & var_2A8 
  loc_1A1F33B:     unk_56AA14.Execute CStr(var_2B8), var_2C8, -1
  loc_1A1F375:   End If
  loc_1A1F375: End If
  loc_1A1F379: Set var_180 = Me.topCtrl1
  loc_1A1F37F: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_290)
  loc_1A1F398: If (CStr(var_22C) = "Add") Then
  loc_1A1F3BE:   var_18C = "SELECT COUNT(*) FROM LASTVOU WHERE Logsite_Code='" & MemVar_1F92078
  loc_1A1F3DC:   Call 0.Method_arg_50 (var_23C, var_18C & "' and UNAME='" & MemVar_1F920C8 & "' AND ENAME='", var_1E0, -1, var_180)
  loc_1A1F3EC:   var_260 = var_184 & var_23C & "' "
  loc_1A1F3F5:   unk_56AA14.Execute var_260, 0, var_188
  loc_1A1F405:    = var_184.Item()
  loc_1A1F40D:    = var_188.Value
  loc_1A1F43E:   If (var_180.Fields > 0) Then
  loc_1A1F45F:     Set var_180 = Me.Txt
  loc_1A1F465:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "UPDATE LASTVOU  SET DOCID='")
  loc_1A1F46D:     var_1E0 = var_184.Text
  loc_1A1F476:     var_234 = -1 & var_18C
  loc_1A1F48B:     var_240 = var_18C & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "' and UNAME='"
  loc_1A1F4A2:     Call 0.Method_arg_50 (var_260, var_240 & MemVar_1F920C8 & "' AND ENAME='")
  loc_1A1F4BB:     unk_56AA14.Execute var_188 & var_260 & "'  ", , 
  loc_1A1F4E6:   Else
  loc_1A1F4FA:     var_18C = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8
  loc_1A1F50A:     Call 0.Method_arg_50 (var_18C & "' and UNAME='", var_18C & "','", var_2B8)
  loc_1A1F513:     var_23C = -1 & var_18C & "' and UNAME='"
  loc_1A1F51A:     var_25C = var_18C & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "','"
  loc_1A1F52B:     Set var_180 = Me.Txt
  loc_1A1F531:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_240)
  loc_1A1F539:     var_25C = var_184.Text
  loc_1A1F55D:     var_1A0 = MemVar_1F920EC
  loc_1A1F565:     Proc_6_7_F25D88(var_1E0, var_1A0)
  loc_1A1F597:     unk_56AA14.Execute CStr(CVar(var_188 & var_240 & "','" & MemVar_1F92070 & "',") & var_1E0 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1A1F5CD:   End If
  loc_1A1F5CD: End If
  loc_1A1F5D3: unk_56AA14.CommitTrans
  loc_1A1F5DA: var_8A = 0
  loc_1A1F5E6: unk_56AA14.BeginTrans var_258
  loc_1A1F5ED: var_8A = &HFF
  loc_1A1F5F6: unk_56AA14.CommitTrans
  loc_1A1F5FD: var_8A = 0
  loc_1A1F60E: Set var_180 = Me.Txt
  loc_1A1F614: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C)
  loc_1A1F61C: var_8A = var_184.Text
  loc_1A1F630: var_8A = 0
  loc_1A1F63E: Me.Requery -1
  loc_1A1F668: Me.Find "SearchCode ='" & "SearchCode ='" & var_18C & "'", 0, 1
  loc_1A1F678: Set var_180 = Me.topCtrl1
  loc_1A1F67E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A0)
  loc_1A1F697: If (CStr(var_8A) = "Add") Then
  loc_1A1F69A:   Call TopCtrl1_UnknownEvent_A()
  loc_1A1F69F:   Exit Sub
  loc_1A1F6A0: End If
  loc_1A1F6C3: Call Proc_210_80_10374EC(Proc_5_1_100CB50("INI", Me, global_80), var_8A)
  loc_1A1F6CE: Call Proc_210_77_18B04F0(var_8A)
  loc_1A1F6D8: Set var_88 = Nothing
  loc_1A1F6DB: Exit Sub
  loc_1A1F6DC: ' Referenced from: 1A1C448
  loc_1A1F6E2: If (var_8A = &HFF) Then
  loc_1A1F6EB:   unk_56AA14.RollbackTrans
  loc_1A1F6F0: End If
  loc_1A1F6F0: Proc_6_60_E62BC4()
  loc_1A1F6F5: Exit Sub
End Sub

Private Sub Form_Load() '12CC8EC
  'Data Table: 56A9F4
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_56AA14 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_DC As Variant
  Dim var_BC As Fields15
  loc_12CC294: On Error Goto loc_12CC8E3
  loc_12CC2AC: If (global_56 = MemVar_1F92070 & "BANQ") Then
  loc_12CC2B5:   global_108 = "IBOOK"
  loc_12CC2BC: Else
  loc_12CC2D1:   If (global_56 = MemVar_1F92070 & "ODC") Then
  loc_12CC2DA:     global_108 = "OBOOK"
  loc_12CC2DE:   End If
  loc_12CC2DE: End If
  loc_12CC305: unk_56AA14.Execute "Select * from Depart where Code='" & global_56 & "'", var_B0, -1
  loc_12CC310: Set var_88 = var_B4
  loc_12CC334: If (var_88.RecordCount > 0) Then
  loc_12CC34E:   var_BC = var_88.Fields.Item("Name")
  loc_12CC366:   Set var_C0 = Me.LblRest
  loc_12CC36C:   var_C0.Caption = Proc_6_38_E68A98(CVar(var_BC))
  loc_12CC37E: End If
  loc_12CC388: Set global_60 = New 
  loc_12CC39A: Me.CursorLocation = 3
  loc_12CC3C4: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where Site_Code='" & MemVar_1F92070 & "' And LogSite_Code='"
  loc_12CC3ED: Me.Open CVar(var_90 & MemVar_1F92078 & "' and NCAT in('ESBIL') and RestCode='" & global_56 & "' Order by Description"), CVar(MemVar_1F92044), 3
  loc_12CC40B: CVarUnk
  loc_12CC410: VerifyVarObj
  loc_12CC416: Set var_B4 = Me.DGVType
  loc_12CC41C: LateIdStAd
  loc_12CC434: Set global_72 = New 
  loc_12CC446: Me.DGVType.CursorLocation = 3
  loc_12CC470: var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F92078 & "' and  H.RESTTYPE IN('Banquet') Order by H.Name") 'String
  loc_12CC47A: Me.Open var_B0, CVar(MemVar_1F92044), 3
  loc_12CC48E: CVarUnk
  loc_12CC493: VerifyVarObj
  loc_12CC499: Set var_B4 = Me.DGHall
  loc_12CC49F: LateIdStAd
  loc_12CC4B7: Set global_68 = New 
  loc_12CC4C9: Me.DGHall.CursorLocation = 3
  loc_12CC4D9: If (global_108 = "IBOOK") Then
  loc_12CC4FA:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F92078
  loc_12CC501:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F92078 & "' and VType='IBOOK' Order by pARTYName") 'String
  loc_12CC50B:   Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_12CC519: Else
  loc_12CC537:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F92078
  loc_12CC53E:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F92078 & "' and VType='OBOOK' Order by pARTYName") 'String
  loc_12CC548:   Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_12CC553: End If
  loc_12CC55C: CVarUnk
  loc_12CC561: VerifyVarObj
  loc_12CC567: Set var_B4 = Me.DGParty
  loc_12CC56D: LateIdStAd
  loc_12CC585: Set global_80 = New 
  loc_12CC597: Me.DGParty.CursorLocation = 3
  loc_12CC5A7: Proc_6_7_F25D88(var_B0, MemVar_1F920F4, var_B4, global_68, 3, -1, 3, -1)
  loc_12CC5B7: Proc_6_7_F25D88(var_12C, MemVar_1F920FC, var_B4, global_72, 1)
  loc_12CC5DA: var_8C = "Select S.DocId as SearchCode,S.DocID,S.BookDocId,S.LogSite_Code,S.Site_Code From HallSale1Est S Inner JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE and S.LogSite_Code=V.LogSite_Code) WHERE S.LogSite_Code='" & MemVar_1F92078
  loc_12CC5E1: var_90 = var_8C & "' and V.NCAT IN ('ESBIL') and V.RestCode='"
  loc_12CC5F2: var_DC = CVar(var_90 & global_56 & "' AND S.VDate between ") 'String
  loc_12CC61C: Me.Open var_DC & var_B0 & " and " & var_12C & " Order by S.Docid", CVar(MemVar_1F92044), 3
  loc_12CC66E: Call 0.Method_arg_50 (var_90, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0, var_C0)
  loc_12CC695: unk_56AA14.Execute var_DC & var_90 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_12CC69D: -1 = var_B4.Fields
  loc_12CC6A5: global_60 = var_BC.Item(var_B4)
  loc_12CC6AD: 1 = var_C0.Value
  loc_12CC6DE: If (var_DC > 0) Then
  loc_12CC727:   Call 0.Method_arg_50 (var_90, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0)
  loc_12CC74E:   unk_56AA14.Execute var_C0 & var_90 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_DC, "SearchCode='"
  loc_12CC756:   0 = var_B4.Fields
  loc_12CC75E:   var_16C = var_BC.Item(1)
  loc_12CC766:    = var_C0.Value
  loc_12CC785:   Me.Find CStr(var_DC & "'"), , 
  loc_12CC7B1: End If
  loc_12CC7C8: If (Me.RecordCount > 0) Then
  loc_12CC7DF:   If (Me.EOF = &HFF) Then
  loc_12CC7E8:     Me.MoveLast
  loc_12CC7ED:   End If
  loc_12CC7ED: End If
  loc_12CC7F6: Call 0.Method_arg_160 (var_B4)
  loc_12CC804: Call 0.Method_arg_164 (var_B4)
  loc_12CC82F: Call Proc_210_80_10374EC(Proc_5_1_100CB50("INI", Me))
  loc_12CC841: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12CC859: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12CC874: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12CC88B: Me.LblUser.Left = CDbl(13500)
  loc_12CC8A2: Me.LblUser.Top = CDbl(7800)
  loc_12CC8B9: Me.LblLDt.Top = CDbl(8160)
  loc_12CC8D0: Me.LblLDt.Left = CDbl(13500)
  loc_12CC8D8: Call Proc_210_74_1472FD0(global_80)
  loc_12CC8DD: Call Proc_210_77_18B04F0()
  loc_12CC8E2: Exit Sub
  loc_12CC8E3: ' Referenced from: 12CC294
  loc_12CC8E3: Proc_6_60_E62BC4()
  loc_12CC8E8: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4A68
  'Data Table: 56A9F4
  Dim var_8C As Label
  loc_ED49C6: Call 0.Method_arg_50 (var_88)
  loc_ED49D8: Me.LblFormCaption.Caption = var_88
  loc_ED49F1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED49FD: Set var_A0 = Me.topCtrl1
  loc_ED4A03: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4A10: Set var_8C = Me.topCtrl1
  loc_ED4A16: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4A30: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED4A4B: Call 0.Method_arg_100 (var_B8)
  loc_ED4A5D: Me.LblFormCaption.Width = var_B8
  loc_ED4A65: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7AE90
  'Data Table: 56A9F4
  loc_E7AE37: Set global_72 = Nothing
  loc_E7AE49: Set global_64 = Nothing
  loc_E7AE5B: Set global_84 = Nothing
  loc_E7AE6D: Set global_88 = Nothing
  loc_E7AE7F: Set global_76 = Nothing
  loc_E7AE8B: global_52 = 0
  loc_E7AE8E: Exit Sub
End Sub

Private Sub Form_Activate() 'FC7464
  'Data Table: 56A9F4
  Dim var_90 As String
  Dim unk_56AA14 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Integer
  Dim var_120 As Field20
  Dim arg_35FF As Integer
  loc_FC72E2: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE NCAT='BBILL' AND RestCode='" & global_56 & "' Order by Description"
  loc_FC72EB: unk_56AA14.Execute var_90, var_B0, -1
  loc_FC72F6: Set var_88 = var_B4
  loc_FC731A: If (var_88.RecordCount > 0) Then
  loc_FC7337:   var_BC = var_88.Fields.Item(0)
  loc_FC734E:   global_132 = CStr(var_BC.Value)
  loc_FC7362: Else
  loc_FC7375:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_FC737B:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_FC7398:   Me.Global.Unload Me
  loc_FC73A0:   Exit Sub
  loc_FC73A1: End If
  loc_FC73A7: var_CC = 0
  loc_FC73D7: unk_56AA14.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_132 & "'", var_B0, -1
  loc_FC73DF: var_B4 = var_B4.Fields
  loc_FC73E7: var_CC = var_BC.Item(var_BC)
  loc_FC73EF: var_120 = var_120.Value
  loc_FC7416: If (var_DC <= 0) Then
  loc_FC7432:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_FC744F:   Me.Global.Unload Me
  loc_FC7457:   Exit Sub
  loc_FC7458: End If
  loc_FC745D: Set var_88 = Nothing
  loc_FC7460: Exit Sub
  loc_FC7461: arg_35FF = var_DC
End Sub

Private Sub Form_Deactivate() 'E2640C
  'Data Table: 56A9F4
  loc_E263F1: If (global_52 = &HFF) Then
  loc_E26401:   Me.Global.Unload Me
  loc_E26409: End If
  loc_E26409: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E32E38
  'Data Table: 56A9F4
  loc_E32E0C: On Error Goto loc_E32E30
  loc_E32E27: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E32E2F: Exit Sub
  loc_E32E30: ' Referenced from: E32E0C
  loc_E32E30: Proc_6_60_E62BC4(Shift)
  loc_E32E35: Exit Sub
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E27054
  'Data Table: 56A9F4
  loc_E27035: If ((Button = 2) And (Shift = 2)) Then
  loc_E2704B:   Call 0.Method_arg_2B0 (1)
  loc_E27050: End If
  loc_E27050: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E50AA8
  'Data Table: 56A9F4
  loc_E50A82: Set var_88 = Me.txtM
  loc_E50A88: Call 0.Method_txtM_UnknownEvent_00 (Button)
  loc_E50A96: Proc_6_74_E226B0(var_8C)
  loc_E50AA2: Call Proc_210_81_F24170(var_8C)
  loc_E50AA7: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4BD74
  'Data Table: 56A9F4
  loc_E4BD52: Set var_88 = Me.txtM
  loc_E4BD58: Call 0.Method_txtM_UnknownEvent_10 (Button)
  loc_E4BD66: Proc_6_73_E22704(var_8C)
  loc_E4BD72: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E54828
  'Data Table: 56A9F4
  Dim Shift As Integer
  loc_E547FE: Set var_88 = Me.txtM
  loc_E54804: Call 0.Method_txtM_UnknownEvent_80 (Button)
  loc_E5481E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E54823:   Shift = &HFF
  loc_E54826: End If
  loc_E54826: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E5F13C
  'Data Table: 56A9F4
  loc_E5F0F6: If (CLng(Shift) = &H1B) Then
  loc_E5F0F9:   Call Proc_210_81_F24170()
  loc_E5F0FE:   Exit Sub
  loc_E5F0FF: End If
  loc_E5F114: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5F11D:   Proc_6_75_E527CC(Shift)
  loc_E5F122: End If
  loc_E5F12C: If (CLng(Shift) = &H26) Then
  loc_E5F135:   Proc_6_76_E52838(Shift, X)
  loc_E5F13A: End If
  loc_E5F13A: Exit Sub
End Sub

Private Sub TextPer_GotFocus(Index As Integer) 'ED09C4
  'Data Table: 56A9F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED0926: Set var_88 = Me.TextPer
  loc_ED092C: Call 0.Method_TextPer_GotFocus0 (Index)
  loc_ED093A: Proc_6_74_E226B0(var_8C)
  loc_ED0946: Call Proc_210_81_F24170(var_8C)
  loc_ED095A: Set var_88 = Me.TextPer
  loc_ED0960: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED0968: var_8C.SelStart = 0
  loc_ED0981: Set var_88 = Me.TextPer
  loc_ED0987: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED09A2: Set var_90 = Me.TextPer
  loc_ED09A8: Call 0.Method_TextPer_GotFocus0 (Index, var_98)
  loc_ED09B0: var_98.SelLength = Len(var_8C.Text)
  loc_ED09C3: Exit Sub
End Sub

Private Sub TextPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A928
  'Data Table: 56A9F4
  loc_E5A8F5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A8FE:   Proc_6_75_E527CC(Shift)
  loc_E5A903: End If
  loc_E5A918: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A921:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A926: End If
  loc_E5A926: Exit Sub
End Sub

Private Sub TextPer_KeyPress(KeyAscii As Integer) 'E57428
  'Data Table: 56A9F4
  loc_E573FA: Set var_88 = Me.TextPer
  loc_E57400: Call 0.Method_TextPer_KeyPress0 (KeyAscii)
  loc_E5741B: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E57427: Exit Sub
End Sub

Private Sub TextPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E00A28
  'Data Table: 56A9F4
  loc_E00A22: Call Proc_210_89_14E0520(KeyCode)
  loc_E00A27: Exit Sub
End Sub

Private Sub TextPer_LostFocus(Index As Integer) 'E4B5BC
  'Data Table: 56A9F4
  loc_E4B59A: Set var_88 = Me.TextPer
  loc_E4B5A0: Call 0.Method_TextPer_LostFocus0 (Index)
  loc_E4B5AE: Proc_6_73_E22704(var_8C)
  loc_E4B5BA: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '105B198
  'Data Table: 56A9F4
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
  Dim var_14C As Variant
  loc_105AF3F: Me.DGItem.Visible = False
  loc_105AF5E: If (Me.RecordCount > 0) Then
  loc_105AF9B:   Set var_B4 = Me.TxtGrid
  loc_105AFA1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_105AFA9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_105AFD2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105AFDA:   var_EC = CVar(CLng(1)) 'Long
  loc_105B00D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_105B015:   Set var_B8 = Me.FGrid
  loc_105B01B:   LateIdCallSt
  loc_105B04A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105B052:   var_EC = CVar(CLng(9)) 'Long
  loc_105B085:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_105B08D:   Set var_B8 = Me.FGrid
  loc_105B093:   LateIdCallSt
  loc_105B0C9:   var_B0 = Me.Fields.Item("Rate1")
  loc_105B0E1:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105B0E9:   var_FC = CVar(CLng(4)) 'Long
  loc_105B116:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_105B11E:   Set var_B8 = Me.FGrid
  loc_105B124:   LateIdCallSt
  loc_105B142: End If
  loc_105B14E: Set var_A8 = Me.TxtGrid
  loc_105B154: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_105B15C: var_FC = var_B0.Visible
  loc_105B16E: If (var_15E = &HFF) Then
  loc_105B17A:   Set var_A8 = Me.TxtGrid
  loc_105B180:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_105B188:   var_B0.SetFocus
  loc_105B194: End If
  loc_105B194: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4CE44
  'Data Table: 56A9F4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4CD3B: Me.DGParty.Visible = False
  loc_F4CD5A: If (Me.RecordCount > 0) Then
  loc_F4CD99:   Set var_B4 = Me.Txt
  loc_F4CD9F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4CDA7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4CDDA:   var_B0 = Me.Fields.Item("Code")
  loc_F4CDF9:   Set var_B4 = Me.Txt
  loc_F4CDFF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4CE07:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4CE1D: End If
  loc_F4CE28: Set var_A8 = Me.Txt
  loc_F4CE2E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F4CE36: var_B0.SetFocus
  loc_F4CE42: Exit Sub
End Sub

Private Sub DGHall_UnknownEvent_9 'F54998
  'Data Table: 56A9F4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54878: On Error Goto loc_F54992
  loc_F5488A: Me.DGHall.Visible = False
  loc_F548A9: If (Me.RecordCount > 0) Then
  loc_F548E8:   Set var_B4 = Me.Txt
  loc_F548EE:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F548F6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54929:   var_B0 = Me.Fields.Item("Code")
  loc_F54948:   Set var_B4 = Me.Txt
  loc_F5494E:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F54956:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5496C: End If
  loc_F54977: Set var_A8 = Me.Txt
  loc_F5497D: Call 0.Method_DGHall_UnknownEvent_90 (CInt(5))
  loc_F54985: var_B0.SetFocus
  loc_F54991: Exit Sub
  loc_F54992: ' Referenced from: F54878
  loc_F54992: Proc_6_60_E62BC4(var_B0)
  loc_F54997: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED0AB0
  'Data Table: 56A9F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED0A12: Set var_88 = Me.TxtGt
  loc_ED0A18: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ED0A26: Proc_6_74_E226B0(var_8C)
  loc_ED0A32: Call Proc_210_81_F24170(var_8C)
  loc_ED0A46: Set var_88 = Me.TxtGt
  loc_ED0A4C: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED0A54: var_8C.SelStart = 0
  loc_ED0A6D: Set var_88 = Me.TxtGt
  loc_ED0A73: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED0A8E: Set var_90 = Me.TxtGt
  loc_ED0A94: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ED0A9C: var_98.SelLength = Len(var_8C.Text)
  loc_ED0AAF: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A6D0
  'Data Table: 56A9F4
  loc_E5A69D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A6A6:   Proc_6_75_E527CC(Shift)
  loc_E5A6AB: End If
  loc_E5A6C0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A6C9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A6CE: End If
  loc_E5A6CE: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E56C74
  'Data Table: 56A9F4
  loc_E56C46: Set var_88 = Me.TxtGt
  loc_E56C4C: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E56C67: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E56C73: Exit Sub
End Sub

Private Sub TxtGt_KeyUp(KeyCode As Integer, Shift As Integer) 'E01130
  'Data Table: 56A9F4
  loc_E0112A: Call Proc_210_88_167661C(KeyCode)
  loc_E0112F: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4BB04
  'Data Table: 56A9F4
  loc_E4BAE2: Set var_88 = Me.TxtGt
  loc_E4BAE8: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4BAF6: Proc_6_73_E22704(var_8C)
  loc_E4BB02: Exit Sub
End Sub

Private Sub TextGt_GotFocus(Index As Integer) 'ED07EC
  'Data Table: 56A9F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED074E: Set var_88 = Me.TextGt
  loc_ED0754: Call 0.Method_TextGt_GotFocus0 (Index)
  loc_ED0762: Proc_6_74_E226B0(var_8C)
  loc_ED076E: Call Proc_210_81_F24170(var_8C)
  loc_ED0782: Set var_88 = Me.TextGt
  loc_ED0788: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ED0790: var_8C.SelStart = 0
  loc_ED07A9: Set var_88 = Me.TextGt
  loc_ED07AF: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ED07CA: Set var_90 = Me.TextGt
  loc_ED07D0: Call 0.Method_TextGt_GotFocus0 (Index, var_98)
  loc_ED07D8: var_98.SelLength = Len(var_8C.Text)
  loc_ED07EB: Exit Sub
End Sub

Private Sub TextGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A8B0
  'Data Table: 56A9F4
  loc_E5A87D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A886:   Proc_6_75_E527CC(Shift)
  loc_E5A88B: End If
  loc_E5A8A0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A8A9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A8AE: End If
  loc_E5A8AE: Exit Sub
End Sub

Private Sub TextGt_KeyPress(KeyAscii As Integer) 'E572CC
  'Data Table: 56A9F4
  loc_E5729E: Set var_88 = Me.TextGt
  loc_E572A4: Call 0.Method_TextGt_KeyPress0 (KeyAscii)
  loc_E572BF: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E572CB: Exit Sub
End Sub

Private Sub TextGt_LostFocus(Index As Integer) 'E4B75C
  'Data Table: 56A9F4
  loc_E4B73A: Set var_88 = Me.TextGt
  loc_E4B740: Call 0.Method_TextGt_LostFocus0 (Index)
  loc_E4B74E: Proc_6_73_E22704(var_8C)
  loc_E4B75A: Exit Sub
End Sub

Private Sub TextGt_Validate(Cancel As Boolean) 'E00A64
  'Data Table: 56A9F4
  loc_E00A5E: Call Proc_210_89_14E0520(Cancel)
  loc_E00A63: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1322218
  'Data Table: 56A9F4
  Dim var_90 As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim var_B0 As Variant
  Dim var_8C As DataGrid
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_98 As Fields15
  Dim var_94 As String
  loc_1321A9B: Set var_8C = Me.Txt
  loc_1321AA1: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1321AA9: var_90.SelStart = 0
  loc_1321AC2: Set var_8C = Me.Txt
  loc_1321AC8: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1321AD0: var_94 = var_90.Text
  loc_1321AE3: Set var_98 = Me.Txt
  loc_1321AE9: Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1321AF1: var_9C.SelLength = Len(var_94)
  loc_1321B0E: Set var_8C = Me.Txt
  loc_1321B14: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1321B22: Proc_6_74_E226B0(var_90)
  loc_1321B2E: Call Proc_210_81_F24170(var_90)
  loc_1321B36: var_9E = Index
  loc_1321B41: If (var_9E = CInt(0)) Then
  loc_1321B57:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_1321BB0:   Set var_8C = Me.Txt
  loc_1321BB6:   Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_1321BBE:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1321BD6:   If (var_9E Or (var_94 = vbNullString)) Then
  loc_1321BD9:     Exit Sub
  loc_1321BDA:   End If
  loc_1321BE7:   Set var_8C = Me.Txt
  loc_1321BED:   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1321BF5:   var_94 = var_90.Text
  loc_1321BFD:   var_D8 = CVar(var_94) 'String
  loc_1321C42:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1321C4B:     Me.MoveFirst
  loc_1321C70:     Set var_8C = Me.Txt
  loc_1321C76:     Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1321C7E:     0 = var_90.Text
  loc_1321C8C:     Proc_6_17_EAA2B0(var_D8, CVar(var_94))
  loc_1321CA2:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_1321CBA:   End If
  loc_1321CBD: Else
  loc_1321CC5:   If (var_9E = CInt(3)) Then
  loc_1321D16:     Set var_8C = Me.Txt
  loc_1321D1C:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1321D3C:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1321D3F:       Exit Sub
  loc_1321D40:     End If
  loc_1321D4D:     Set var_8C = Me.Txt
  loc_1321D53:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1321D5B:     var_94 = var_90.Text
  loc_1321D63:     var_D8 = CVar(var_94) 'String
  loc_1321DA8:     If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1321DB1:       Me.MoveFirst
  loc_1321DD6:       Set var_8C = Me.Txt
  loc_1321DDC:       Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1321DE4:       0 = var_90.Text
  loc_1321DF2:       Proc_6_17_EAA2B0(var_D8, CVar(var_94))
  loc_1321E08:       Me.Find CStr(1 & var_D8), var_FC, 
  loc_1321E20:     End If
  loc_1321E23:   Else
  loc_1321E2B:     If (var_9E = CInt(5)) Then
  loc_1321E7C:       Set var_8C = Me.Txt
  loc_1321E82:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1321EA2:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1321EA5:         Exit Sub
  loc_1321EA6:       End If
  loc_1321EB3:       Set var_8C = Me.Txt
  loc_1321EB9:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1321EC1:       var_94 = var_90.Text
  loc_1321EC9:       var_D8 = CVar(var_94) 'String
  loc_1321F0E:       If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1321F17:         Me.MoveFirst
  loc_1321F3C:         Set var_8C = Me.Txt
  loc_1321F42:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1321F4A:         0 = var_90.Text
  loc_1321F58:         Proc_6_17_EAA2B0(var_D8, CVar(var_94))
  loc_1321F6E:         Me.Find CStr(1 & var_D8), var_FC, 
  loc_1321F86:       End If
  loc_1321F89:     Else
  loc_1321F91:       If (var_9E = CInt(7)) Then
  loc_1321FB0:         Me.Recordset15.CursorLocation = 3
  loc_1321FD6:         var_94 = "Select DocId As Code, Convert(varchar(10),VNo) As Name,PartyName as Party,Vdate From HallBook where RestCode ='" & global_56
  loc_1321FDD:         var_B0 = CVar(var_94 & "' and Docid not in (Select BookDocId from HallSale1Est) And Docid not in (Select BookDocId from HallSale1) Order by VNo") 'String
  loc_1321FE7:         Me.Open var_B0, CVar(MemVar_1F92044), 3
  loc_1321FFB:         CVarUnk
  loc_1322000:         VerifyVarObj
  loc_1322006:         Set var_8C = Me.DGBookNo
  loc_132200C:         LateIdStAd
  loc_1322068:         Set var_8C = Me.Txt
  loc_132206E:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1322076:         var_8C = var_90.Text
  loc_132208E:         If (New Or (var_94 = vbNullString)) Then
  loc_1322091:           Exit Sub
  loc_1322092:         End If
  loc_132209F:         Set var_8C = Me.Txt
  loc_13220A5:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_13220AD:         1 = var_90.Text
  loc_13220B5:         var_D8 = CVar(var_94) 'String
  loc_13220D6:         var_9C = Me.Fields.Item("Name")
  loc_13220FA:         If CBool(var_D8 <> var_9C.Value) Then
  loc_1322103:           Me.MoveFirst
  loc_1322128:           Set var_8C = Me.Txt
  loc_132212E:           Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1322136:           0 = var_90.Text
  loc_1322144:           Proc_6_17_EAA2B0(var_D8, CVar(var_94), 1)
  loc_132215A:           Me.Find CStr(var_FC & var_D8), -1, 
  loc_1322172:         End If
  loc_1322175:       Else
  loc_132217D:         If Not (var_9E = CInt(&HF)) Then
  loc_1322188:           If Not (var_9E = CInt(&HE)) Then
  loc_1322193:             If (var_9E = CInt(&HD)) Then
  loc_1322196:             End If
  loc_1322196:           End If
  loc_13221A5:           Set var_8C = Me.Txt
  loc_13221AB:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_13221B3:           var_90.SelStart = 0
  loc_13221CC:           Set var_8C = Me.Txt
  loc_13221D2:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_13221ED:           Set var_98 = Me.Txt
  loc_13221F3:           Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_13221FB:           var_9C.SelLength = Len(var_90.Text)
  loc_132220E:         End If
  loc_132220E:       End If
  loc_132220E:     End If
  loc_132220E:   End If
  loc_132220E: End If
  loc_1322213: Set var_88 = Nothing
  loc_1322216: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '112F62C
  'Data Table: 56A9F4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_112F2CE: If (CLng(Shift) = &H1B) Then
  loc_112F2D1:   Call Proc_210_81_F24170()
  loc_112F2D6:   Exit Sub
  loc_112F2D7: End If
  loc_112F2DA: var_86 = KeyCode
  loc_112F2E5: If (var_86 = CInt(0)) Then
  loc_112F300:   Set var_9C = Nothing
  loc_112F30B:   Set var_98 = Nothing
  loc_112F339:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_112F350: Else
  loc_112F358:   If (var_86 = CInt(3)) Then
  loc_112F373:     Set var_98 = Nothing
  loc_112F3A5:     Proc_6_79_11ACE04(Me.DGParty, Me.Txt, CInt(3), global_68, Shift, &HFF, 1)
  loc_112F3BA:   Else
  loc_112F3C2:     If (var_86 = CInt(5)) Then
  loc_112F3DD:       Set var_9C = Nothing
  loc_112F416:       Proc_6_69_134A198(Me.DGHall, Me.Txt, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_112F42D:     Else
  loc_112F435:       If (var_86 = CInt(7)) Then
  loc_112F450:         Set var_9C = Nothing
  loc_112F489:         Proc_6_69_134A198(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_112F49D:       End If
  loc_112F49D:     End If
  loc_112F49D:   End If
  loc_112F49D: End If
  loc_112F4CE: Set var_98 = Me.DGItem
  loc_112F4E5: Set var_9C = Me.DGBookNo
  loc_112F529: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_112F54A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HC))) Then
  loc_112F553:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, var_9C)
  loc_112F558:   End If
  loc_112F55C:   Set var_8C = Me.topCtrl1
  loc_112F562:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_112F584:   If ((CStr(var_98) = "Add") And (KeyCode <> CInt(0))) Then
  loc_112F59C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_112F5A5:       Proc_6_76_E52838(Shift, arg_14, 0)
  loc_112F5AA:     End If
  loc_112F5AD:   Else
  loc_112F5B1:     Set var_8C = Me.topCtrl1
  loc_112F5B7:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_112F5D9:     If ((CStr(var_98) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_112F5F1:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_112F5FA:         Proc_6_76_E52838(Shift)
  loc_112F5FF:       End If
  loc_112F5FF:     End If
  loc_112F5FF:   End If
  loc_112F61D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_112F623:     Call Proc_210_82_F09EE8(KeyCode)
  loc_112F628:   End If
  loc_112F628: End If
  loc_112F628: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFA258
  'Data Table: 56A9F4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FFA05C: On Error Goto loc_FFA250
  loc_FFA062: Proc_6_58_E054C0(arg_10)
  loc_FFA06A: var_86 = KeyAscii
  loc_FFA075: If (var_86 = CInt(0)) Then
  loc_FFA094:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FFA0AA:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_FFA0B9:     Set var_B8 = Me.Txt
  loc_FFA0C4:     var_B0 = "Name"
  loc_FFA0DF:     Proc_6_89_146F1AC(var_B8, KeyAscii, global_60, arg_10)
  loc_FFA0EE:   End If
  loc_FFA0F1: Else
  loc_FFA0F9:   If (var_86 = CInt(1)) Then
  loc_FFA106:     Set var_8C = Me.Txt
  loc_FFA10C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_FFA127:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_FFA136:   Else
  loc_FFA13E:     If (var_86 = CInt(7)) Then
  loc_FFA15D:       If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FFA18A:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_FFA199:       End If
  loc_FFA19C:     Else
  loc_FFA1A4:       If (var_86 = CInt(5)) Then
  loc_FFA1C3:         If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_FFA1CA:           Set var_B8 = Me.Txt
  loc_FFA1F0:           Proc_6_89_146F1AC(var_B8, KeyAscii, global_72, arg_10, "Name")
  loc_FFA1FF:         End If
  loc_FFA202:       Else
  loc_FFA20A:         If Not (var_86 = CInt(&HF)) Then
  loc_FFA215:           If (var_86 = CInt(&HE)) Then
  loc_FFA218:           End If
  loc_FFA222:           Set var_8C = Me.Txt
  loc_FFA228:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0, 0)
  loc_FFA243:           Proc_6_42_129A86C(var_B8, arg_10, 8, 2)
  loc_FFA24F:         End If
  loc_FFA24F:       End If
  loc_FFA24F:     End If
  loc_FFA24F:   End If
  loc_FFA24F: End If
  loc_FFA24F: Exit Sub
  loc_FFA250: ' Referenced from: FFA05C
  loc_FFA250: Proc_6_60_E62BC4(0, 0)
  loc_FFA255: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10297EC
  'Data Table: 56A9F4
  Dim var_86 As Integer
  Dim var_98 As TextBox
  Dim var_12C As Double
  Dim var_AC As TextBox
  Dim var_134 As Double
  Dim var_B8 As TextBox
  Dim var_13C As Double
  Dim var_C4 As TextBox
  Dim var_144 As Double
  Dim var_E8 As Variant
  Dim var_120 As TextBox
  Dim var_8C As DataGrid
  loc_10295EF: var_86 = KeyCode
  loc_10295FA: If Not (var_86 = CInt(&HF)) Then
  loc_1029605:   If (var_86 = CInt(&HE)) Then
  loc_1029608:   End If
  loc_102960F:   Set var_8C = Me.TxtGt
  loc_1029615:   Call 0.Method_Txt_KeyUp8 (var_8E)
  loc_1029627:   Set var_94 = Me.TxtGt
  loc_102962D:   Call 0.Method_Txt_KeyUp0 (var_8E, var_98)
  loc_1029642:   var_12C = Val(var_98.Text)
  loc_102964C:   Set var_A0 = Me.TextGt
  loc_1029652:   Call 0.Method_Txt_KeyUp8 (var_A2, var_12C)
  loc_1029664:   Set var_A8 = Me.TextGt
  loc_102966A:   Call 0.Method_Txt_KeyUp0 (var_A2, var_AC)
  loc_102967F:   var_134 = Val(var_AC.Text)
  loc_1029690:   Set var_B4 = Me.Txt
  loc_1029696:   Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_B8, var_BC)
  loc_10296AB:   var_13C = Val(var_BC)
  loc_10296BC:   Set var_C0 = Me.Txt
  loc_10296C2:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_C4, var_C8)
  loc_10296D7:   var_144 = Val(var_C8)
  loc_10296FE:   var_E8 = CVar((((var_12C + var_B8.Text) - var_C4.Text) - var_144)) 'Double
  loc_102971C:   Set var_11C = Me.Txt
  loc_1029722:   Call 0.Method_Txt_KeyUp0 (CInt(&HD), var_120, CStr(Format(var_E8, "0.00")), 1)
  loc_102972A:   var_120.Text = 1
  loc_1029763: Else
  loc_102976B:   If Not (var_86 = CInt(&H12)) Then
  loc_1029776:     If (var_86 = CInt(&H11)) Then
  loc_1029779:     End If
  loc_102977E:     Call Proc_210_89_14E0520(&H32, var_144)
  loc_1029786:   Else
  loc_102978E:     If (var_86 = CInt(3)) Then
  loc_10297AD:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_10297BA:         var_9C = "Name"
  loc_10297D9:         Proc_6_80_FF0AC0(Me.Txt, CInt(3), global_68)
  loc_10297E8:       End If
  loc_10297E8:     End If
  loc_10297E8:   End If
  loc_10297E8: End If
  loc_10297E8: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C184
  'Data Table: 56A9F4
  loc_E4C162: Set var_88 = Me.Txt
  loc_E4C168: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C176: Proc_6_73_E22704(var_8C)
  loc_E4C182: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18F6EFC
  'Data Table: 56A9F4
  Dim var_9C As Integer
  Dim var_A4 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim var_AC As String
  Dim var_C8 As Variant
  Dim var_140 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_16C As TextBox
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim var_E8 As Variant
  Dim var_13C As String
  Dim unk_56AA14 As Connection15
  Dim var_A8 As Variant
  Dim var_168 As Variant
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_92 As Integer
  Dim var_98 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_144 As String
  Dim var_138 As Variant
  Dim var_224 As TextBox
  Dim Txt_Validate2 As Variant
  Dim var_22C As Double
  Dim var_244 As Double
  Dim var_24C As Double
  Dim var_234 As TextBox
  Dim var_254 As Double
  Dim var_170 As String
  Dim var_23C As TextBox
  loc_18F44A0: On Error Goto loc_18F6EF3
  loc_18F44A6: var_9C = Cancel
  loc_18F44B1: If (var_9C = CInt(0)) Then
  loc_18F44BF:   Set var_A0 = Me.Txt
  loc_18F44C5:   Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_18F44CD:   var_AC = "Voucher Type"
  loc_18F44EE:   If (Proc_6_27_EA565C(var_A4, var_AC) = 0) Then
  loc_18F44FC:     Set var_A0 = Me.Txt
  loc_18F4502:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_18F450A:     var_A4.SetFocus
  loc_18F4518:     arg_10 = &HFF
  loc_18F451B:     Exit Sub
  loc_18F451C:   End If
  loc_18F456A:   Set var_A0 = Me.Txt
  loc_18F4570:   Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_18F4578:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_18F4590:   If (arg_10 Or (var_AC = vbNullString)) Then
  loc_18F45A0:     Set var_A0 = Me.Txt
  loc_18F45A6:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F45AE:     var_A4.Text = vbNullString
  loc_18F45C7:     Set var_A0 = Me.Txt
  loc_18F45CD:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F45D5:     var_A4.Tag = vbNullString
  loc_18F45E7:     global_120 = vbNullString
  loc_18F45EE:   Else
  loc_18F4629:     Set var_A8 = Me.Txt
  loc_18F462F:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F4637:     var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18F4688:     Set var_A8 = Me.Txt
  loc_18F468E:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F4696:     var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_18F46C9:     var_A4 = Me.Fields.Item("NCat")
  loc_18F46E0:     global_120 = CStr(var_A4.Value)
  loc_18F46F1:   End If
  loc_18F46F5:   Set var_A0 = Me.topCtrl1
  loc_18F46FB:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_18F4703:   var_AC = CStr()
  loc_18F4714:   If (var_AC = "Add") Then
  loc_18F471D:     Call Proc_210_84_11BDF58(MemVar_1F92044)
  loc_18F4730:     Set var_A0 = Me.Txt
  loc_18F4736:     Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_18F473E:     var_A4.Text = var_AC
  loc_18F474D:   End If
  loc_18F4751:   Set var_A0 = Me.topCtrl1
  loc_18F4757:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_18F4770:   If (CStr() = "Add") Then
  loc_18F477E:     If (global_156 = "Automatic") Then
  loc_18F478E:       Set var_A0 = Me.Txt
  loc_18F4794:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F479C:       var_A4.Enabled = False
  loc_18F47AB:     Else
  loc_18F47B8:       Set var_A0 = Me.Txt
  loc_18F47BE:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F47C6:       var_A4.Enabled = True
  loc_18F47DD:       Set var_A0 = Me.Txt
  loc_18F47E3:       Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18F47EB:       var_A4.SetFocus
  loc_18F47F7:     End If
  loc_18F47F7:   End If
  loc_18F47FA: Else
  loc_18F4802:   If (var_9C = CInt(1)) Then
  loc_18F4810:     Set var_A0 = Me.Txt
  loc_18F4816:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F481E:     var_AC = "Vr. No"
  loc_18F483F:     If (Proc_6_27_EA565C(var_A4, var_AC) = 0) Then
  loc_18F484D:       Set var_A0 = Me.Txt
  loc_18F4853:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F485B:       var_A4.SetFocus
  loc_18F4869:       arg_10 = &HFF
  loc_18F486C:       Exit Sub
  loc_18F486D:     End If
  loc_18F487B:     Set var_A0 = Me.Txt
  loc_18F4881:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC)
  loc_18F4889:     arg_10 = var_A4.Text
  loc_18F48A1:     If (CDbl(var_AC) = CDbl(0)) Then
  loc_18F48BD:       MsgBox("Vr. No Can Not Be 0", 0, var_F8, var_118, var_138)
  loc_18F48D7:       Set var_A0 = Me.Txt
  loc_18F48DD:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F48E5:       var_A4.SetFocus
  loc_18F48F3:       arg_10 = &HFF
  loc_18F48F6:       Exit Sub
  loc_18F48F7:     End If
  loc_18F48FB:     Set var_A0 = Me.topCtrl1
  loc_18F4901:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_18F491A:     If (CStr(var_A4) = "Add") Then
  loc_18F4942:       Set var_A0 = Me.Txt
  loc_18F4948:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_18F496F:       Set var_A8 = Me.Txt
  loc_18F4975:       Call 0.Method_Txt_Validate0 (CInt(0), var_C8, var_144)
  loc_18F497D:       5 = var_C8.Tag
  loc_18F498A:       var_D8 = Space((CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_A4.Tag) - Len(var_144)))
  loc_18F4992:       var_118 = ( + "Vr. No Can Not Be 0")
  loc_18F49A6:       var_138 = Space((5 - Len(global_112)))
  loc_18F49AE:       var_154 = (var_118 + var_138)
  loc_18F49BB:       var_164 = (var_154 + CVar(global_112))
  loc_18F49D2:       Set var_168 = Me.Txt
  loc_18F49D8:       Call 0.Method_Txt_Validate0 (CInt(1), var_16C, var_170)
  loc_18F49E0:       8 = var_16C.Text
  loc_18F49ED:       var_180 = Space((var_164 - Len(var_170)))
  loc_18F49F5:       var_190 = ( + var_180)
  loc_18F4A07:       Set var_194 = Me.Txt
  loc_18F4A0D:       Call 0.Method_Txt_Validate0 (CInt(1), var_198)
  loc_18F4A20:       var_1BC = (var_190 + CVar(var_198.Text))
  loc_18F4A79:       Set var_A0 = Me.Txt
  loc_18F4A7F:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_18F4A87:       var_A4.Text = CStr(var_1BC)
  loc_18F4AA3:       Me.LblVPrefix.Caption = global_112
  loc_18F4AAB:     End If
  loc_18F4AAF:     Set var_A0 = Me.topCtrl1
  loc_18F4AB5:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_18F4ABD:     var_AC = CStr()
  loc_18F4ACE:     If (var_AC = "Add") Then
  loc_18F4AFE:       Set var_A0 = Me.Txt
  loc_18F4B04:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC, "Select Count(*) From HallSale1Est Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_18F4B15:       var_13C = var_C8 & var_AC
  loc_18F4B25:       unk_56AA14.Execute var_13C & "'", 0, var_168
  loc_18F4B35:        = var_C8.Item()
  loc_18F4B3D:        = var_168.Value
  loc_18F4B6A:       If (var_A4.Text.Fields > 0) Then
  loc_18F4B73:         Call 0.Method_arg_50 (var_AC)
  loc_18F4B94:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_AC), var_118, var_138)
  loc_18F4BAA:         Call Proc_210_84_11BDF58(MemVar_1F92044)
  loc_18F4BBA:         If (var_AC = vbNullString) Then
  loc_18F4BC7:           Set var_A0 = Me.Txt
  loc_18F4BCD:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F4BD5:           var_A4.SetFocus
  loc_18F4BE3:           arg_10 = &HFF
  loc_18F4BE6:           Exit Sub
  loc_18F4BE7:         End If
  loc_18F4BED:         Call Proc_210_84_11BDF58(MemVar_1F92044, var_AC)
  loc_18F4C00:         Set var_A0 = Me.Txt
  loc_18F4C06:         Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC)
  loc_18F4C0E:         var_A4.Text = arg_10
  loc_18F4C1F:         arg_10 = &HFF
  loc_18F4C22:         Exit Sub
  loc_18F4C23:       End If
  loc_18F4C23:     End If
  loc_18F4C26:   Else
  loc_18F4C2E:     If (var_9C = CInt(2)) Then
  loc_18F4C3F:       Set var_A0 = Me.Txt
  loc_18F4C45:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_AC)
  loc_18F4C4D:       arg_10 = var_A4.Text
  loc_18F4C63:       var_118 = Len(Trim(CVar(var_AC)))
  loc_18F4C7D:       If (var_118 = 0) Then
  loc_18F4C93:         Set var_A0 = Me.Txt
  loc_18F4C99:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_18F4CA1:         var_A4.Text = CStr(MemVar_1F920EC)
  loc_18F4CB3:       Else
  loc_18F4CBD:         Set var_A0 = Me.Txt
  loc_18F4CC3:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F4CE3:         Set var_C8 = Me.Txt
  loc_18F4CE9:         Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_18F4CF1:         var_168.Text = Proc_6_33_1512840(var_A4)
  loc_18F4D04:       End If
  loc_18F4D11:       Set var_A0 = Me.Txt
  loc_18F4D17:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F4D1F:       var_AC = var_A4.Text
  loc_18F4D3A:       Set var_A8 = Me.Txt
  loc_18F4D40:       Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_13C)
  loc_18F4D48:       (CDate(var_AC) >= MemVar_1F920F4) = var_C8.Text
  loc_18F4D6A:       If Not((var_AC And (CDate(var_13C) <= MemVar_1F920FC))) Then
  loc_18F4D78:         var_F8 = "Date Validate"
  loc_18F4D83:         var_C4 = "V.Date Not Between Current Fin. Year"
  loc_18F4D8E:         MsgBox(var_C4, 0, var_F8, var_118, var_138)
  loc_18F4DA8:         Set var_A0 = Me.Txt
  loc_18F4DAE:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_18F4DB6:         var_A4.SetFocus
  loc_18F4DC4:         arg_10 = &HFF
  loc_18F4DC7:         Exit Sub
  loc_18F4DC8:       End If
  loc_18F4DCB:     Else
  loc_18F4DD3:       If (var_9C = CInt(3)) Then
  loc_18F4DED:         If (Me.RecordCount <= 0) Then
  loc_18F4DF0:           GoTo loc_18F4F6C
  loc_18F4DF3:         End If
  loc_18F4DF9:         Me.MoveFirst
  loc_18F4E0B:         Set var_A0 = Me.Txt
  loc_18F4E11:         Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_18F4E19:         arg_10 = var_A4.Text
  loc_18F4E30:         If (var_AC <> vbNullString) Then
  loc_18F4E52:           Set var_A0 = Me.Txt
  loc_18F4E58:           Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_AC, "Name like '")
  loc_18F4E60:           0 = var_A4.Text
  loc_18F4E79:           Me.Find 1 & var_AC & "*'", var_C4, var_A4
  loc_18F4E91:         Else
  loc_18F4E94:         Else
  loc_18F4EAB:           If (Me.AbsolutePosition > 0) Then
  loc_18F4EE9:             Set var_A8 = Me.Txt
  loc_18F4EEF:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F4EF7:             var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18F4F2A:             var_A4 = Me.Fields.Item("Code")
  loc_18F4F48:             Set var_A8 = Me.Txt
  loc_18F4F4E:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F4F56:             var_C8.Tag = CStr(var_A4.Value)
  loc_18F4F6C:           End If
  loc_18F4F6C:           ' Referenced from:       18F4DF0
  loc_18F4F6C:         End If
  loc_18F4F6F:       Else
  loc_18F4F77:         If (var_9C = CInt(7)) Then
  loc_18F4F9A:           var_B2 = Me.EOF
  loc_18F4FC8:           Set var_A0 = Me.Txt
  loc_18F4FCE:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F4FEE:           If (((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) Or (var_A4.Text = vbNullString)) Then
  loc_18F4FFE:             Set var_A0 = Me.Txt
  loc_18F5004:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F500C:             var_A4.Text = vbNullString
  loc_18F5025:             Set var_A0 = Me.Txt
  loc_18F502B:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F5033:             var_A4.Tag = vbNullString
  loc_18F5041:             arg_10 = &HFF
  loc_18F5047:           Else
  loc_18F5082:             Set var_A8 = Me.Txt
  loc_18F5088:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F50D4:             var_AC = CStr(Me.Fields.Item("Code").Value)
  loc_18F50E1:             Set var_A8 = Me.Txt
  loc_18F50E7:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F50EF:             var_C8.Tag = var_AC
  loc_18F5122:             var_A4 = Me.Fields.Item("VDate")
  loc_18F512A:             var_D8 = var_A4.Value
  loc_18F5140:             Set var_A8 = Me.Txt
  loc_18F5146:             Call 0.Method_Txt_Validate0 (CInt(2), var_C8, var_AC)
  loc_18F514E:             var_D8 = CStr(Me.Fields.Item("Name").Value)
  loc_18F5170:             If (arg_10 > CDate(CDate(var_AC))) Then
  loc_18F518C:               MsgBox("Bill Date can't be before Booking Date", 0, var_F8, var_118, var_138)
  loc_18F519E:               arg_10 = &HFF
  loc_18F51A1:               Exit Sub
  loc_18F51A2:             End If
  loc_18F51A2:           End If
  loc_18F51A6:           Set var_A0 = Me.topCtrl1
  loc_18F51AC:           Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_18F51B4:           var_AC = CStr()
  loc_18F51C5:           If (var_AC = "Add") Then
  loc_18F51CE:             Call Proc_210_84_11BDF58(MemVar_1F92044)
  loc_18F51DE:             If (var_AC = vbNullString) Then
  loc_18F51EB:               Set var_A0 = Me.Txt
  loc_18F51F1:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F51F9:               var_A4.SetFocus
  loc_18F5207:               arg_10 = &HFF
  loc_18F520A:               Exit Sub
  loc_18F520B:             End If
  loc_18F5211:             Call Proc_210_84_11BDF58(MemVar_1F92044, var_AC)
  loc_18F5224:             Set var_A0 = Me.Txt
  loc_18F522A:             Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC)
  loc_18F5232:             var_A4.Text = arg_10
  loc_18F5241:           End If
  loc_18F5250:           Me.FGrid.Redraw = False
  loc_18F5265:           Set var_A0 = Me.FGrid
  loc_18F526B:           var_A0.Rows = 1
  loc_18F5275:           var_92 = 1
  loc_18F527C:           Set var_98 = New 
  loc_18F5287:           Me.var_A0.CursorLocation = 3
  loc_18F529A:           Set var_A0 = Me.Txt
  loc_18F52A0:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC)
  loc_18F52A8:           var_92 = var_A4.Tag
  loc_18F52CB:           var_13C = "Select H.*,H1.QTYISS,H1.ITEM,H1.REMARKS,H1.AMOUNT AS AMOUNT1,H1.Rate as Rate1,H1.TaxAmt as Tax1,H1.Total as Total1,I.NAME AS ITEMNAME,I.RateEdit,IR.Rate as IRate,H1.TaxPer,IC.TAXSTRU,H.advance AS Advance,H.RECTNO,H.RECTDATE From (((HallBook H LEFT JOIN HallBook1 H1 on H.DocId=H1.DocId)LEFT JOIN ITEMMAST I ON H1.ITEM=I.CODE And H1.RestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=H1.RestCode and IR.ItemCode=H1.Item WHERE H.DOCID='" & var_AC
  loc_18F52D9:           var_98.Open CVar(var_13C & "' and H1.Rate<>0 Order by H1.DOCID,H1.SNo"), CVar(MemVar_1F92044), 3
  loc_18F5303:           If (var_98.RecordCount > 0) Then
  loc_18F5313:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_18F5359:             unk_56AA14.Execute CStr(CDate(CDate(var_AC)) & var_98.Fields.Item("DocID").Value & "'"), var_138, -1
  loc_18F5364:             Set var_8C = var_A8
  loc_18F53C4:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_18F53E1:               var_A4 = var_8C.Fields.Item("Advance")
  loc_18F53F2:               var_AC = CStr(var_A4.Value)
  loc_18F5406:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, var_AC, Me.Txt)
  loc_18F540E:               var_C8.Text = 1
  loc_18F5427:             Else
  loc_18F5435:               Set var_A0 = Me.Txt
  loc_18F543B:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00")
  loc_18F5443:               var_A4.Text = -1
  loc_18F544F:             End If
  loc_18F545B:             Set var_A0 = Me.TxtGt
  loc_18F5461:             Call 0.Method_Txt_Validate8 (var_B2, var_94)
  loc_18F546C:             For var_1C4 = var_AC To var_B2:         1 = var_1C4 'Integer
  loc_18F547F:               Set var_A0 = Me.LblCap
  loc_18F5485:               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F54A4:               If (var_A4.Tag = "STOT") Then
  loc_18F54C1:                 var_A4 = var_98.Fields.Item("Total")
  loc_18F54DF:                 Set var_A8 = Me.TxtGt
  loc_18F54E5:                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F54ED:                 var_C8.Text = CStr(var_A4.Value)
  loc_18F5506:               Else
  loc_18F5513:                 Set var_A0 = Me.LblCap
  loc_18F5519:                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F5538:                 If (var_A4.Tag = "HLR") Then
  loc_18F5555:                   var_A4 = var_98.Fields.Item("HallRent")
  loc_18F5573:                   Set var_A8 = Me.TxtGt
  loc_18F5579:                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F5581:                   var_C8.Text = CStr(var_A4.Value)
  loc_18F559A:                 Else
  loc_18F55A7:                   Set var_A0 = Me.LblCap
  loc_18F55AD:                   Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F55CC:                   If (var_A4.Tag = "HLP") Then
  loc_18F55E9:                     var_A4 = var_98.Fields.Item("TotalPerCover")
  loc_18F5607:                     Set var_A8 = Me.TxtGt
  loc_18F560D:                     Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F5615:                     var_C8.Text = CStr(var_A4.Value)
  loc_18F562E:                   Else
  loc_18F563B:                     Set var_A0 = Me.LblCap
  loc_18F5641:                     Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F5660:                     If (var_A4.Tag = "SDIS") Then
  loc_18F569B:                       Set var_A8 = Me.TxtPer
  loc_18F56A1:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F56A9:                       var_C8.Text = CStr(var_98.Fields.Item("DiscPer").Value)
  loc_18F56D9:                       var_A4 = var_98.Fields.Item("DiscAmt")
  loc_18F56F7:                       Set var_A8 = Me.TxtGt
  loc_18F56FD:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F5705:                       var_C8.Text = CStr(var_A4.Value)
  loc_18F571E:                     Else
  loc_18F572B:                       Set var_A0 = Me.LblCap
  loc_18F5731:                       Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F5750:                       If (var_A4.Tag = "SST") Then
  loc_18F576D:                         var_A4 = var_98.Fields.Item("Tax")
  loc_18F578B:                         Set var_A8 = Me.TxtGt
  loc_18F5791:                         Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F5799:                         var_C8.Text = CStr(var_A4.Value)
  loc_18F57B2:                       Else
  loc_18F57BF:                         Set var_A0 = Me.LblCap
  loc_18F57C5:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F57E4:                         If (var_A4.Tag = "SSTX") Then
  loc_18F57E7:                           GoTo loc_18F5ACB
  loc_18F57EA:                         End If
  loc_18F57F7:                         Set var_A0 = Me.LblCap
  loc_18F57FD:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F581C:                         If (var_A4.Tag = "SSCH") Then
  loc_18F5839:                           var_A4 = var_98.Fields.Item("Servicecharge")
  loc_18F5857:                           Set var_A8 = Me.TxtGt
  loc_18F585D:                           Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F5865:                           var_C8.Text = CStr(var_A4.Value)
  loc_18F587E:                         Else
  loc_18F588B:                           Set var_A0 = Me.LblCap
  loc_18F5891:                           Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F58B0:                           If (var_A4.Tag = "SADD") Then
  loc_18F58CD:                             var_A4 = var_98.Fields.Item("AddAmt")
  loc_18F58EB:                             Set var_A8 = Me.TxtGt
  loc_18F58F1:                             Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F58F9:                             var_C8.Text = CStr(var_A4.Value)
  loc_18F5912:                           Else
  loc_18F591F:                             Set var_A0 = Me.LblCap
  loc_18F5925:                             Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F5944:                             If (var_A4.Tag = "SDED") Then
  loc_18F5961:                               var_A4 = var_98.Fields.Item("DedAmt")
  loc_18F597F:                               Set var_A8 = Me.TxtGt
  loc_18F5985:                               Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F598D:                               var_C8.Text = CStr(var_A4.Value)
  loc_18F59A6:                             Else
  loc_18F59B3:                               Set var_A0 = Me.LblCap
  loc_18F59B9:                               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F59D8:                               If (var_A4.Tag = "SROFF") Then
  loc_18F59F5:                                 var_A4 = var_98.Fields.Item("RoundOff")
  loc_18F5A13:                                 Set var_A8 = Me.TxtGt
  loc_18F5A19:                                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F5A21:                                 var_C8.Text = CStr(var_A4.Value)
  loc_18F5A3A:                               Else
  loc_18F5A47:                                 Set var_A0 = Me.LblCap
  loc_18F5A4D:                                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F5A6C:                                 If (var_A4.Tag = "SNET") Then
  loc_18F5A9A:                                   var_AC = CStr(var_98.Fields.Item("NetAmt").Value)
  loc_18F5AA7:                                   Set var_A8 = Me.TxtGt
  loc_18F5AAD:                                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F5AB5:                                   var_C8.Text = var_AC
  loc_18F5ACB:                                 End If
  loc_18F5ACB:                               End If
  loc_18F5ACB:                             End If
  loc_18F5ACB:                           End If
  loc_18F5ACB:                           ' Referenced from:                   18F57E7
  loc_18F5ACB:                         End If
  loc_18F5ACB:                       End If
  loc_18F5ACB:                     End If
  loc_18F5ACB:                   End If
  loc_18F5ACB:                 End If
  loc_18F5ACB:               End If
  loc_18F5ACE:             Next var_1C4 'Integer
  loc_18F5AD3:             ' Referenced from:         18F5F78
  loc_18F5AE2:             If Not(var_98.EOF) Then
  loc_18F5B0D:               For var_1C8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_9A = var_1C8 'Byte
  loc_18F5B20:                 var_108 = CVar(CLng(&H14)) 'Long
  loc_18F5B4B:                 Set var_A4 = Me.Txt
  loc_18F5B51:                 Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid.TextMatrix)))
  loc_18F5B59:                 var_108 = var_A8.Text
  loc_18F5BDC:                 If ((CVar(CLng(var_9A)) = var_AC) And (CVar(CLng(var_9A)) = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Item")), CStr(Me.FGrid.TextMatrix)), CVar(CLng(9))))) Then
  loc_18F5BDF:                   GoTo loc_18F5F70
  loc_18F5BE2:                 End If
  loc_18F5BE5:               Next var_1C8 'Byte
  loc_18F5BEB:               var_C4 = vbNullString
  loc_18F5BF5:               Set var_A0 = Me.FGrid
  loc_18F5C0A:               Set var_21C = Me.FGrid
  loc_18F5C11:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_18F5C19:               var_108 = CVar(CLng(0)) 'Long
  loc_18F5C23:               var_D8 = CVar(CStr(var_92)) 'String
  loc_18F5C2A:               LateIdCallSt
  loc_18F5C6E:               var_F8 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_92)), var_21C, CVar(var_98.Fields.Item("Item")))) 'String
  loc_18F5C75:               LateIdCallSt
  loc_18F5CC0:               var_F8 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_92)), var_21C, var_F8)) 'String
  loc_18F5CC7:               LateIdCallSt
  loc_18F5CF9:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F5D01:               var_1D8 = CVar(CLng(3)) 'Long
  loc_18F5D2E:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_18F5D35:               LateIdCallSt
  loc_18F5D6B:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F5D73:               var_1D8 = CVar(CLng(4)) 'Long
  loc_18F5DA0:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Rate1")), "0.00"))) 'String
  loc_18F5DA7:               LateIdCallSt
  loc_18F5DDD:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F5DE5:               var_1D8 = CVar(CLng(5)) 'Long
  loc_18F5E12:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Amount1")), "0.00"))) 'String
  loc_18F5E19:               LateIdCallSt
  loc_18F5E4F:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F5E57:               var_1D8 = CVar(CLng(8)) 'Long
  loc_18F5E84:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("TOTAL1")), "0.00"))) 'String
  loc_18F5E8B:               LateIdCallSt
  loc_18F5EB8:               var_A4 = var_98.Fields.Item("TaxStru")
  loc_18F5EC1:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F5EC9:               var_1D8 = CVar(CLng(&H10)) 'Long
  loc_18F5EFD:               LateIdCallSt
  loc_18F5F1F:               var_108 = CVar(CLng(&H14)) 'Long
  loc_18F5F32:               Set var_A0 = Me.Txt
  loc_18F5F38:               Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, var_108, CVar(CLng(var_92)), var_21C, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_18F5F40:               1 = var_A4.Text
  loc_18F5F48:               var_D8 = CVar(var_AC) 'String
  loc_18F5F4F:               LateIdCallSt
  loc_18F5F63:               Set var_21C = Nothing 
  loc_18F5F6D:               var_92 = (var_92 + 1)
  loc_18F5F70:               ' Referenced from:         18F5BDF
  loc_18F5F73:               var_98.MoveNext
  loc_18F5F78:               GoTo loc_18F5AD3
  loc_18F5F7B:             End If
  loc_18F5F8E:             Me.FGrid.FixedRows = 1
  loc_18F5F99:           Else
  loc_18F5FA7:             Me.FGrid.Redraw = True
  loc_18F5FB5:             If (var_92 = 1) Then
  loc_18F5FCB:               Me.FGrid.Rows = 1
  loc_18F5FD7:               Set var_A8 = Me.FGrid
  loc_18F5FF1:               var_D8 = CVar(CStr(Proc_6_127_F24F80(var_A8, CInt(0), var_92, var_21C, var_D8, 1))) 'String
  loc_18F5FF9:               Set var_A4 = Me.FGrid
  loc_18F6026:               Me.FGrid.FixedRows = 1
  loc_18F602E:             End If
  loc_18F602E:           End If
  loc_18F604C:           Set var_A0 = Me.Txt
  loc_18F6052:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_D8, -1, var_A8)
  loc_18F605A:           FGrid.DispID_10000 = var_A4.Tag
  loc_18F6073:           unk_56AA14.Execute var_D8 & var_AC & "'", var_1D8, var_108
  loc_18F607E:           Set var_98 = var_A8
  loc_18F6096:           ' Referenced from:         18F6572
  loc_18F60A5:           If Not(var_98.EOF) Then
  loc_18F60C1:             var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_18F60D0:             Me.FGrid1.Row = 1
  loc_18F6107:             For var_220 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):         var_9A = var_220 'Byte
  loc_18F6112:               var_C4 = CVar(CLng(var_9A)) 'Long
  loc_18F6146:               Set var_A4 = Me.Txt
  loc_18F614C:               Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_18F6154:               var_C4 = var_A8.Text
  loc_18F6175:               Set var_C8 = Me.FGrid1
  loc_18F61A0:               var_16C = var_98.Fields.Item("VenueName")
  loc_18F61B1:               var_144 = Proc_6_38_E68A98(CVar(var_16C), CStr(var_C8.TextMatrix)), 1, CVar(CLng(var_9A)))
  loc_18F61D8:               If (var_21C And ((CByte(1) = var_AC) = var_144)) Then
  loc_18F61DB:                 GoTo loc_18F656A
  loc_18F61DE:               End If
  loc_18F61E1:             Next var_220 'Byte
  loc_18F61EB:             Set var_224 = Me.FGrid1
  loc_18F6201:             var_1D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_18F6206:             var_1F8 = 0
  loc_18F6228:             var_C4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_18F622D:             var_108 = 0
  loc_18F624B:             var_AC = CStr(Me.FGrid1.TextMatrix))
  loc_18F6259:             var_138 = CVar(CStr((Val(var_AC) + CDbl(1)))) 'String
  loc_18F6260:             LateIdCallSt
  loc_18F62C8:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_224, CVar(CStr(Format(CVar(var_98.Fields.Item("VenueName")), "0.00"))))) 'String
  loc_18F62CF:             LateIdCallSt
  loc_18F6330:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F6337:             LateIdCallSt
  loc_18F6398:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F639F:             LateIdCallSt
  loc_18F6400:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F6407:             LateIdCallSt
  loc_18F6468:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F646F:             LateIdCallSt
  loc_18F64BF:             var_A4 = var_98.Fields.Item("VenuCode")
  loc_18F64D0:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_A4), 6, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F64D7:             LateIdCallSt
  loc_18F64F3:             Set var_A8 = Me.FGrid1
  loc_18F651E:             Set var_A0 = Me.Txt
  loc_18F6524:             Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, 7, CVar(CLng(var_A8.Row)), var_224)
  loc_18F652C:             var_118 = var_A4.Text
  loc_18F6534:             var_F8 = CVar(var_AC) 'String
  loc_18F653B:             LateIdCallSt
  loc_18F6553:             var_C4 = vbNullString
  loc_18F655C:             Txt_Validate2 = var_224.Name
  loc_18F6566:             Set var_224 = Nothing 
  loc_18F656A:             ' Referenced from:         18F61DB
  loc_18F656D:             var_98.MoveNext
  loc_18F6572:             GoTo loc_18F6096
  loc_18F6575:           End If
  loc_18F6579:           Set var_98 = New 
  loc_18F6584:           var_98.CursorLocation = 3
  loc_18F6597:           Set var_A0 = Me.Txt
  loc_18F659D:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, Txt_Validate2, var_C4, var_224)
  loc_18F65A5:           var_F8 = var_A4.Tag
  loc_18F65D6:           var_98.Open CVar("Select * From HallBook H  WHERE H.DOCID='" & var_AC & "'"), CVar(MemVar_1F92044), 3
  loc_18F6600:           If (var_98.RecordCount > 0) Then
  loc_18F6610:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_18F663F:             var_F8 = CVar(CLng(Me.FGrid1.Row)) & var_98.Fields.Item("DocID").Value 
  loc_18F6643:             var_108 = "'"
  loc_18F6656:             unk_56AA14.Execute CStr(var_F8 & var_108), CVar(CStr(Format(CVar(var_98.Fields.Item("DocID")), "0.00"))), -1
  loc_18F6661:             Set var_8C = var_A8
  loc_18F66C1:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_18F66CA:               var_C4 = "Advance"
  loc_18F66DE:               var_A4 = var_8C.Fields.Item(var_C4)
  loc_18F6703:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, CStr(var_A4.Value), Me.Txt, 1)
  loc_18F670B:               var_C8.Text = -1
  loc_18F6724:             Else
  loc_18F6732:               Set var_A0 = Me.Txt
  loc_18F6738:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00", var_108)
  loc_18F6740:               var_A4.Text = var_C4
  loc_18F674C:             End If
  loc_18F6763:             var_A4 = var_98.Fields.Item("GuarAtt")
  loc_18F6772:             Proc_6_39_E7C810(var_F8, CVar(var_A4))
  loc_18F6789:             Set var_A8 = Me.Txt
  loc_18F678F:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_C8, CStr(var_F8))
  loc_18F6797:             var_C8.Text = var_1F8
  loc_18F67BA:             Set var_A0 = Me.Txt
  loc_18F67C0:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_18F67CF:             var_F8 = Trim(CVar(var_A4))
  loc_18F67E9:             If (var_F8 = vbNullString) Then
  loc_18F6825:               Set var_A8 = Me.Txt
  loc_18F682B:               Call 0.Method_Txt_Validate0 (CInt(3), var_C8)
  loc_18F6833:               var_C8.Text = CStr(var_98.Fields.Item("PartyName").Value)
  loc_18F6849:             End If
  loc_18F6860:             var_A4 = var_98.Fields.Item("CoverRate")
  loc_18F686F:             Proc_6_39_E7C810(var_F8, CVar(var_A4))
  loc_18F6877:             var_AC = CStr(var_F8)
  loc_18F6886:             Set var_A8 = Me.Txt
  loc_18F688C:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_18F68BA:             Set var_A0 = Me.Txt
  loc_18F68C0:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_A4)
  loc_18F68C8:             var_A4.Text = vbNullString
  loc_18F68E2:             Set var_A8 = Me.Txt
  loc_18F68E8:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_18F68FD:             var_22C = Val(var_AC)
  loc_18F690E:             Set var_A0 = Me.Txt
  loc_18F6914:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_A4, var_AC)
  loc_18F692F:             var_140 = CStr((Val(var_AC) * var_A4.Text))
  loc_18F693B:             Set var_168 = Me.TextGt
  loc_18F6941:             Call 0.Method_Txt_Validate0 (1, var_16C)
  loc_18F6949:             var_16C.Text = var_140
  loc_18F6974:             Set var_A0 = Me.Txt
  loc_18F697A:             Call 0.Method_Txt_Validate0 (CInt(8), var_A4)
  loc_18F699E:             If (CDbl(Val(var_A4.Text)) > CDbl(0)) Then
  loc_18F69D7:               Set var_A8 = Me.Txt
  loc_18F69DD:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_C8)
  loc_18F69E5:               var_C8.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("RectDate")))
  loc_18F6A1F:               Proc_6_39_E7C810(var_F8, CVar(var_98.Fields.Item("RectNo")))
  loc_18F6A36:               Set var_A8 = Me.Txt
  loc_18F6A3C:               Call 0.Method_Txt_Validate0 (CInt(9), var_C8)
  loc_18F6A44:               var_C8.Text = CStr(var_F8)
  loc_18F6A5C:             End If
  loc_18F6A5C:           End If
  loc_18F6A6A:           Me.FGrid.Redraw = True
  loc_18F6A78:           If (var_92 = 1) Then
  loc_18F6A8E:             Me.FGrid.Rows = 1
  loc_18F6AB4:             var_D8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_18F6ABC:             Set var_A4 = Me.FGrid
  loc_18F6AE9:             Me.FGrid.FixedRows = 1
  loc_18F6AF1:           End If
  loc_18F6AF6:           Call Proc_210_88_167661C(&H32, FGrid.DispID_10000)
  loc_18F6B00:           Call Proc_210_89_14E0520(&H32, var_D8)
  loc_18F6B08:         Else
  loc_18F6B10:           If (var_9C = CInt(5)) Then
  loc_18F6B1E:             Set var_A0 = Me.Txt
  loc_18F6B24:             Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_18F6B2C:             var_AC = "HallName"
  loc_18F6B4D:             If (Proc_6_27_EA565C(var_A4, var_AC) = 0) Then
  loc_18F6B5B:               Set var_A0 = Me.Txt
  loc_18F6B61:               Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_18F6B69:               var_A4.SetFocus
  loc_18F6B77:               arg_10 = &HFF
  loc_18F6B7A:               Exit Sub
  loc_18F6B7B:             End If
  loc_18F6B9B:             var_B2 = Me.EOF
  loc_18F6BAF:             var_B4 = Me.BOF
  loc_18F6BC9:             Set var_A0 = Me.Txt
  loc_18F6BCF:             Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_18F6BD7:             ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (var_B4 = &HFF))) = var_A4.Text
  loc_18F6BEF:             If (arg_10 Or (var_AC = vbNullString)) Then
  loc_18F6BFF:               Set var_A0 = Me.Txt
  loc_18F6C05:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F6C0D:               var_A4.Text = vbNullString
  loc_18F6C26:               Set var_A0 = Me.Txt
  loc_18F6C2C:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F6C34:               var_A4.Tag = vbNullString
  loc_18F6C43:             Else
  loc_18F6C7E:               Set var_A8 = Me.Txt
  loc_18F6C84:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F6C8C:               var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18F6CBF:               var_A4 = Me.Fields.Item("Code")
  loc_18F6CDD:               Set var_A8 = Me.Txt
  loc_18F6CE3:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F6CEB:               var_C8.Tag = CStr(var_A4.Value)
  loc_18F6D01:             End If
  loc_18F6D04:           Else
  loc_18F6D0C:             If Not (var_9C = CInt(&HF)) Then
  loc_18F6D17:               If (var_9C = CInt(&HE)) Then
  loc_18F6D1A:               End If
  loc_18F6D27:               Set var_A0 = Me.Txt
  loc_18F6D2D:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F6D46:               Proc_6_40_EA50F0(CVar(Val(var_A4.Text)))
  loc_18F6D5A:               Set var_A8 = Me.Txt
  loc_18F6D60:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F6D68:               var_C8.Text = CStr(var_1D8)
  loc_18F6D89:               Set var_A0 = Me.TxtGt
  loc_18F6D8F:               Call 0.Method_Txt_Validate8 (var_B2)
  loc_18F6DA1:               Set var_A4 = Me.TxtGt
  loc_18F6DA7:               Call 0.Method_Txt_Validate0 (var_B2, var_A8)
  loc_18F6DC6:               Set var_C8 = Me.TextGt
  loc_18F6DCC:               Call 0.Method_Txt_Validate8 (var_B4)
  loc_18F6DDE:               Set var_168 = Me.TextGt
  loc_18F6DE4:               Call 0.Method_Txt_Validate0 (var_B4, var_16C)
  loc_18F6DF9:               var_244 = Val(var_16C.Text)
  loc_18F6E0A:               Set var_194 = Me.Txt
  loc_18F6E10:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_198, var_140)
  loc_18F6E25:               var_24C = Val(var_140)
  loc_18F6E36:               Set var_230 = Me.Txt
  loc_18F6E3C:               Call 0.Method_Txt_Validate0 (CInt(8), var_234, var_144)
  loc_18F6E51:               var_254 = Val(var_144)
  loc_18F6E78:               var_D8 = CVar((((Val(var_A8.Text) + var_198.Text) - var_234.Text) - var_254)) 'Double
  loc_18F6E96:               Set var_238 = Me.Txt
  loc_18F6E9C:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_23C, CStr(Format(CVar(Val(var_A4.Text)), "0.00")), 1)
  loc_18F6EA4:               var_23C.Text = 1
  loc_18F6EDA:             End If
  loc_18F6EDA:           End If
  loc_18F6EDA:         End If
  loc_18F6EDA:       End If
  loc_18F6EDA:     End If
  loc_18F6EDA:   End If
  loc_18F6EDA: End If
  loc_18F6EDF: Set var_88 = Nothing
  loc_18F6EE7: Set var_8C = Nothing
  loc_18F6EEF: Set var_98 = Nothing
  loc_18F6EF2: Exit Sub
  loc_18F6EF3: ' Referenced from: 18F44A0
  loc_18F6EF3: Proc_6_60_E62BC4(var_254)
  loc_18F6EF8: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'F55EB0
  'Data Table: 56A9F4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F55D90: On Error Goto loc_F55EAA
  loc_F55DA2: Me.DGBookNo.Visible = False
  loc_F55DC1: If (Me.RecordCount > 0) Then
  loc_F55E00:   Set var_B4 = Me.Txt
  loc_F55E06:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F55E0E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F55E41:   var_B0 = Me.Fields.Item("Code")
  loc_F55E60:   Set var_B4 = Me.Txt
  loc_F55E66:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F55E6E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F55E84: End If
  loc_F55E8F: Set var_A8 = Me.Txt
  loc_F55E95: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7))
  loc_F55E9D: var_B0.SetFocus
  loc_F55EA9: Exit Sub
  loc_F55EAA: ' Referenced from: F55D90
  loc_F55EAA: Proc_6_60_E62BC4(var_B0)
  loc_F55EAF: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD4488
  'Data Table: 56A9F4
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD42CC: On Error Goto loc_FD4480
  loc_FD42DE: Me.DGVType.Visible = False
  loc_FD42FD: If (Me.RecordCount > 0) Then
  loc_FD434F:   Set var_CC = Me.Txt
  loc_FD4355:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD435D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD43B5:   Set var_B4 = Me.DGVType
  loc_FD43CC:   Set var_CC = Me.Txt
  loc_FD43D2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD43DA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD442E:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD443F: End If
  loc_FD445D: Set var_B0 = Me.Txt
  loc_FD4463: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD446B: var_B4.SetFocus
  loc_FD447F: Exit Sub
  loc_FD4480: ' Referenced from: FD42CC
  loc_FD4480: Proc_6_60_E62BC4(var_B4)
  loc_FD4485: Exit Sub
End Sub

Public Function global_52Get() '56CB98
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '56CBA7
  global_52 = Value
End Sub

Public Function global_56Get() '56CBB6
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '56CBC5
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E75D8C
  'Data Table: 56A9F4
  Dim Me As Recordset15
  loc_E75D36: Me.MoveFirst
  loc_E75D60: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75D80: If (Me.EOF = 0) Then
  loc_E75D83:   Call Proc_210_77_18B04F0(var_9C)
  loc_E75D88: End If
  loc_E75D88: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94108
  'Data Table: 56A9F4
  Dim Me As Recordset15
  loc_E94096: On Error Goto loc_E940FF
  loc_E9409F: Me.MoveFirst
  loc_E940C9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E940F1: Proc_5_0_110649C(&HFF, Me, global_80)
  loc_E940F9: Call Proc_210_77_18B04F0(0)
  loc_E940FE: Exit Sub
  loc_E940FF: ' Referenced from: E94096
  loc_E940FF: Proc_6_60_E62BC4(var_A0)
  loc_E94104: Exit Sub
  loc_E94105: CExtInstUnk
End Sub

Public Sub Proc_210_74_1472FD0
  'Data Table: 56A9F4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_C4 As DataGrid
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_14723CB: Me.FGrid.Left = CVar(CDbl(7260))
  loc_14723E6: Me.FGrid.Top = CVar(CDbl(1635))
  loc_1472401: Me.FGrid.Height = CVar(CDbl(5700))
  loc_147241C: Me.FGrid.Width = CVar(CDbl(8005))
  loc_1472437: Me.DGItem.Left = CVar(CDbl(7300))
  loc_1472456: var_94 = CVar((CDbl(Me.FGrid.Height) + CDbl(&HA))) 'Single
  loc_147245F: Set var_BC = Me.DGItem
  loc_1472465: var_BC.Top = CVar(CDbl(7300))
  loc_1472486: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_147249C: Set var_C4 = Me.Txt
  loc_14724A2: Call 0.Method_Proc_210_74_1472FD00 (CInt(3), var_C8)
  loc_14724BD: Set var_A8 = Me.Txt
  loc_14724C3: Call 0.Method_Proc_210_74_1472FD00 (CInt(3), var_BC)
  loc_14724DB: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_14724EA: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_147250A: Set var_A8 = Me.Txt
  loc_1472510: Call 0.Method_Proc_210_74_1472FD00 (CInt(5), var_BC)
  loc_147252F: Me.DGHall.Left = CVar(var_BC.Left)
  loc_147254B: Set var_C4 = Me.Txt
  loc_1472551: Call 0.Method_Proc_210_74_1472FD00 (CInt(5), var_C8)
  loc_147256C: Set var_A8 = Me.Txt
  loc_1472572: Call 0.Method_Proc_210_74_1472FD00 (CInt(5), var_BC)
  loc_147258A: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1472599: Me.DGHall.Top = CVar(var_BC.Left)
  loc_14725B9: Set var_A8 = Me.Txt
  loc_14725BF: Call 0.Method_Proc_210_74_1472FD00 (CInt(7), var_BC)
  loc_14725DE: Me.DGBookNo.Left = CVar(var_BC.Left)
  loc_14725FA: Set var_C4 = Me.Txt
  loc_1472600: Call 0.Method_Proc_210_74_1472FD00 (CInt(7), var_C8)
  loc_147261B: Set var_A8 = Me.Txt
  loc_1472621: Call 0.Method_Proc_210_74_1472FD00 (CInt(7), var_BC)
  loc_1472639: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1472648: Me.DGBookNo.Top = CVar(var_BC.Left)
  loc_1472668: Set var_A8 = Me.Txt
  loc_147266E: Call 0.Method_Proc_210_74_1472FD00 (CInt(0), var_BC)
  loc_147268D: Me.DGVType.Left = CVar(var_BC.Left)
  loc_14726A9: Set var_C4 = Me.Txt
  loc_14726AF: Call 0.Method_Proc_210_74_1472FD00 (CInt(0), var_C8)
  loc_14726CA: Set var_A8 = Me.Txt
  loc_14726D0: Call 0.Method_Proc_210_74_1472FD00 (CInt(0), var_BC)
  loc_14726E8: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_14726F7: Me.DGVType.Top = CVar(var_BC.Left)
  loc_147270D: Set var_D4 = Me.FGrid
  loc_1472724: global_100 = CStr(CLng(var_D4.BackColor))
  loc_147273A: var_D4.Cols = &H15
  loc_1472742: var_94 = CVar(CLng(0)) 'Long
  loc_1472747: var_E8 = &H190
  loc_1472753: LateIdCallSt
  loc_147275B: var_94 = 0
  loc_1472767: var_E8 = CVar(CLng(1)) 'Long
  loc_147276C: var_108 = "Item Name"
  loc_1472775: LateIdCallSt
  loc_1472780: var_94 = CVar(CLng(1)) 'Long
  loc_147278B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472792: LateIdCallSt
  loc_147279D: var_94 = CVar(CLng(1)) 'Long
  loc_14727A2: var_E8 = &H9C4
  loc_14727AE: LateIdCallSt
  loc_14727B6: var_94 = 0
  loc_14727C2: var_E8 = CVar(CLng(2)) 'Long
  loc_14727C7: var_108 = "Remarks"
  loc_14727D0: LateIdCallSt
  loc_14727DB: var_94 = CVar(CLng(2)) 'Long
  loc_14727E6: var_E8 = CVar(CInt(1)) 'Integer
  loc_14727ED: LateIdCallSt
  loc_14727F8: var_94 = CVar(CLng(2)) 'Long
  loc_14727FD: var_E8 = &H61D
  loc_1472809: LateIdCallSt
  loc_1472811: var_94 = 0
  loc_147281D: var_E8 = CVar(CLng(3)) 'Long
  loc_1472822: var_108 = "Qty"
  loc_147282B: LateIdCallSt
  loc_1472836: var_94 = CVar(CLng(3)) 'Long
  loc_1472841: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472848: LateIdCallSt
  loc_1472853: var_94 = CVar(CLng(3)) 'Long
  loc_147285E: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472865: LateIdCallSt
  loc_1472870: var_94 = CVar(CLng(3)) 'Long
  loc_1472875: var_E8 = &H46A
  loc_1472881: LateIdCallSt
  loc_1472889: var_94 = 0
  loc_1472895: var_E8 = CVar(CLng(4)) 'Long
  loc_147289A: var_108 = "Rate"
  loc_14728A3: LateIdCallSt
  loc_14728AE: var_94 = CVar(CLng(4)) 'Long
  loc_14728B9: var_E8 = CVar(CInt(7)) 'Integer
  loc_14728C0: LateIdCallSt
  loc_14728CB: var_94 = CVar(CLng(4)) 'Long
  loc_14728D6: var_E8 = CVar(CInt(7)) 'Integer
  loc_14728DD: LateIdCallSt
  loc_14728E8: var_94 = CVar(CLng(4)) 'Long
  loc_14728ED: var_E8 = &H44C
  loc_14728F9: LateIdCallSt
  loc_1472901: var_94 = 0
  loc_147290D: var_E8 = CVar(CLng(6)) 'Long
  loc_1472912: var_108 = "%"
  loc_147291B: LateIdCallSt
  loc_1472926: var_94 = CVar(CLng(6)) 'Long
  loc_1472931: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472938: LateIdCallSt
  loc_1472943: var_94 = CVar(CLng(6)) 'Long
  loc_147294E: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472955: LateIdCallSt
  loc_1472960: var_94 = CVar(CLng(6)) 'Long
  loc_1472965: var_E8 = 0
  loc_1472971: LateIdCallSt
  loc_1472979: var_94 = 0
  loc_1472985: var_E8 = CVar(CLng(7)) 'Long
  loc_147298A: var_108 = "Tax"
  loc_1472993: LateIdCallSt
  loc_147299E: var_94 = CVar(CLng(7)) 'Long
  loc_14729A9: var_E8 = CVar(CInt(7)) 'Integer
  loc_14729B0: LateIdCallSt
  loc_14729BB: var_94 = CVar(CLng(7)) 'Long
  loc_14729C6: var_E8 = CVar(CInt(7)) 'Integer
  loc_14729CD: LateIdCallSt
  loc_14729D8: var_94 = CVar(CLng(7)) 'Long
  loc_14729DD: var_E8 = 0
  loc_14729E9: LateIdCallSt
  loc_14729F1: var_94 = 0
  loc_14729FD: var_E8 = CVar(CLng(5)) 'Long
  loc_1472A02: var_108 = "Amount"
  loc_1472A0B: LateIdCallSt
  loc_1472A16: var_94 = CVar(CLng(5)) 'Long
  loc_1472A21: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472A28: LateIdCallSt
  loc_1472A33: var_94 = CVar(CLng(5)) 'Long
  loc_1472A3E: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472A45: LateIdCallSt
  loc_1472A50: var_94 = CVar(CLng(5)) 'Long
  loc_1472A55: var_E8 = &H46A
  loc_1472A61: LateIdCallSt
  loc_1472A69: var_94 = 0
  loc_1472A75: var_E8 = CVar(CLng(8)) 'Long
  loc_1472A7A: var_108 = "Total"
  loc_1472A83: LateIdCallSt
  loc_1472A8E: var_94 = CVar(CLng(8)) 'Long
  loc_1472A99: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472AA0: LateIdCallSt
  loc_1472AAB: var_94 = CVar(CLng(8)) 'Long
  loc_1472AB6: var_E8 = CVar(CInt(7)) 'Integer
  loc_1472ABD: LateIdCallSt
  loc_1472AC8: var_94 = CVar(CLng(8)) 'Long
  loc_1472ACD: var_E8 = 0
  loc_1472AD9: LateIdCallSt
  loc_1472AE4: var_94 = CVar(CLng(9)) 'Long
  loc_1472AE9: var_E8 = 0
  loc_1472AF5: LateIdCallSt
  loc_1472B00: var_94 = CVar(CLng(&HA)) 'Long
  loc_1472B05: var_E8 = 0
  loc_1472B11: LateIdCallSt
  loc_1472B1C: var_94 = CVar(CLng(&HB)) 'Long
  loc_1472B21: var_E8 = 0
  loc_1472B2D: LateIdCallSt
  loc_1472B38: var_94 = CVar(CLng(&HC)) 'Long
  loc_1472B3D: var_E8 = 0
  loc_1472B49: LateIdCallSt
  loc_1472B54: var_94 = CVar(CLng(&HD)) 'Long
  loc_1472B59: var_E8 = 0
  loc_1472B65: LateIdCallSt
  loc_1472B70: var_94 = CVar(CLng(&HF)) 'Long
  loc_1472B75: var_E8 = 0
  loc_1472B81: LateIdCallSt
  loc_1472B8C: var_94 = CVar(CLng(&HE)) 'Long
  loc_1472B91: var_E8 = 0
  loc_1472B9D: LateIdCallSt
  loc_1472BA8: var_94 = CVar(CLng(&H10)) 'Long
  loc_1472BAD: var_E8 = 0
  loc_1472BB9: LateIdCallSt
  loc_1472BC4: var_94 = CVar(CLng(&H11)) 'Long
  loc_1472BC9: var_E8 = 0
  loc_1472BD5: LateIdCallSt
  loc_1472BE0: var_94 = CVar(CLng(&H12)) 'Long
  loc_1472BE5: var_E8 = 0
  loc_1472BF1: LateIdCallSt
  loc_1472BFC: var_94 = CVar(CLng(&H13)) 'Long
  loc_1472C01: var_E8 = 0
  loc_1472C0D: LateIdCallSt
  loc_1472C18: var_94 = CVar(CLng(&H14)) 'Long
  loc_1472C1D: var_E8 = 0
  loc_1472C29: LateIdCallSt
  loc_1472C33: Set var_D4 = Nothing 
  loc_1472C3B: Set var_11C = Me.FGCat
  loc_1472C52: global_100 = CStr(CLng(var_11C.BackColor))
  loc_1472C5F: var_94 = CVar(CLng(3)) 'Long
  loc_1472C64: var_E8 = &H7D0
  loc_1472C70: LateIdCallSt
  loc_1472C84: var_11C.Cols = 8
  loc_1472C8B: Set var_11C = Nothing 
  loc_1472CA2: Me.FGrid1.Cols = 8
  loc_1472CA7: var_94 = 0
  loc_1472CB0: var_E8 = 0
  loc_1472CB9: var_108 = "SNo"
  loc_1472CC2: LateIdCallSt
  loc_1472CCA: var_94 = 0
  loc_1472CD9: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472CE0: LateIdCallSt
  loc_1472CE8: var_94 = 0
  loc_1472CF7: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472CFE: LateIdCallSt
  loc_1472D06: var_94 = 0
  loc_1472D0F: var_E8 = &H1C2
  loc_1472D1B: LateIdCallSt
  loc_1472D23: var_94 = 0
  loc_1472D2C: var_E8 = 1
  loc_1472D35: var_108 = "Venue Name"
  loc_1472D3E: LateIdCallSt
  loc_1472D46: var_94 = 1
  loc_1472D55: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472D5C: LateIdCallSt
  loc_1472D64: var_94 = 1
  loc_1472D73: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472D7A: LateIdCallSt
  loc_1472D82: var_94 = 1
  loc_1472D8B: var_E8 = &H960
  loc_1472D97: LateIdCallSt
  loc_1472D9F: var_94 = 0
  loc_1472DA8: var_E8 = 2
  loc_1472DB1: var_108 = "Date From"
  loc_1472DBA: LateIdCallSt
  loc_1472DC2: var_94 = 2
  loc_1472DD1: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472DD8: LateIdCallSt
  loc_1472DE0: var_94 = 2
  loc_1472DEF: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472DF6: LateIdCallSt
  loc_1472DFE: var_94 = 2
  loc_1472E07: var_E8 = &H47E
  loc_1472E13: LateIdCallSt
  loc_1472E1B: var_94 = 0
  loc_1472E24: var_E8 = 3
  loc_1472E2D: var_108 = "TimeFrom"
  loc_1472E36: LateIdCallSt
  loc_1472E3E: var_94 = 3
  loc_1472E4D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472E54: LateIdCallSt
  loc_1472E5C: var_94 = 3
  loc_1472E6B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472E72: LateIdCallSt
  loc_1472E7A: var_94 = 3
  loc_1472E83: var_E8 = &H3E8
  loc_1472E8F: LateIdCallSt
  loc_1472E97: var_94 = 0
  loc_1472EA0: var_E8 = 4
  loc_1472EA9: var_108 = "Date To"
  loc_1472EB2: LateIdCallSt
  loc_1472EBA: var_94 = 4
  loc_1472EC9: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472ED0: LateIdCallSt
  loc_1472ED8: var_94 = 4
  loc_1472EE7: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472EEE: LateIdCallSt
  loc_1472EF6: var_94 = 4
  loc_1472EFF: var_E8 = &H47E
  loc_1472F0B: LateIdCallSt
  loc_1472F13: var_94 = 0
  loc_1472F1C: var_E8 = 5
  loc_1472F25: var_108 = "Time To"
  loc_1472F2E: LateIdCallSt
  loc_1472F36: var_94 = 5
  loc_1472F45: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472F4C: LateIdCallSt
  loc_1472F54: var_94 = 5
  loc_1472F63: var_E8 = CVar(CInt(1)) 'Integer
  loc_1472F6A: LateIdCallSt
  loc_1472F72: var_94 = 5
  loc_1472F7B: var_E8 = &H384
  loc_1472F87: LateIdCallSt
  loc_1472F8F: var_94 = 6
  loc_1472F98: var_E8 = 0
  loc_1472FA4: LateIdCallSt
  loc_1472FAC: var_94 = 7
  loc_1472FB5: var_E8 = 0
  loc_1472FC1: LateIdCallSt
  loc_1472FCB: Set var_120 = Nothing 
  loc_1472FCF: Exit Sub
End Sub

Public Sub Proc_210_75_E43178
  'Data Table: 56A9F4
  loc_E43154: Set var_88 = Me.topCtrl1
  loc_E4315A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E43173: If (CStr() = "Browse") Then
  loc_E43176:   Exit Sub
  loc_E43177: End If
  loc_E43177: Exit Sub
End Sub

Public Sub Proc_210_76_1422140(arg_C) '1422140
  'Data Table: 56A9F4
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
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_18C As Variant
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_14216C8: If (arg_C = 0) Then
  loc_14216DE:   var_AC = CLng(Me.FGrid.Col)
  loc_14216EE:   If (var_AC = CLng(1)) Then
  loc_1421711:     var_B2 = Me.EOF
  loc_142173F:     Set var_98 = Me.TxtGrid
  loc_1421745:     Call 0.Method_Proc_210_76_14221400 (arg_C, var_B8, var_BC)
  loc_142174D:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_1421765:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_142177B:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421783:       var_EC = CVar(CLng(1)) 'Long
  loc_1421788:       var_10C = vbNullString
  loc_1421792:       Set var_B8 = Me.FGrid
  loc_1421798:       LateIdCallSt
  loc_14217BD:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14217C5:       var_EC = CVar(CLng(9)) 'Long
  loc_14217CA:       var_10C = vbNullString
  loc_14217D4:       Set var_B8 = Me.FGrid
  loc_14217DA:       LateIdCallSt
  loc_14217FF:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421807:       var_EC = CVar(CLng(4)) 'Long
  loc_142180C:       var_10C = vbNullString
  loc_1421816:       Set var_B8 = Me.FGrid
  loc_142181C:       LateIdCallSt
  loc_1421841:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421849:       var_EC = CVar(CLng(&HA)) 'Long
  loc_142184E:       var_10C = vbNullString
  loc_1421858:       Set var_B8 = Me.FGrid
  loc_142185E:       LateIdCallSt
  loc_1421873:     Else
  loc_1421876:       Call Proc_210_86_FC4544(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_1421881:       If (var_B2 = 0) Then
  loc_1421889:         Proc_210_76_1422140 = 0
  loc_142188F:       End If
  loc_14218A8:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14218B0:       var_EC = CVar(CLng(9)) 'Long
  loc_14218CA:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_14218E8:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14218F0:       var_150 = CVar(CLng(9)) 'Long
  loc_142190A:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1421975:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_142198C:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_14219A8:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14219B0:         var_FC = CVar(CLng(1)) 'Long
  loc_14219E3:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14219EB:         Set var_164 = Me.FGrid
  loc_14219F1:         LateIdCallSt
  loc_1421A20:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421A28:         var_FC = CVar(CLng(9)) 'Long
  loc_1421A5B:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1421A63:         Set var_164 = Me.FGrid
  loc_1421A69:         LateIdCallSt
  loc_1421A98:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421AA0:         var_EC = CVar(CLng(3)) 'Long
  loc_1421ABA:         var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1421AD8:         If (CDbl(Val(var_BC)) <= CDbl(0)) Then
  loc_1421B0D:           var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421B15:           var_10C = CVar(CLng(4)) 'Long
  loc_1421B29:           var_12C = "0.00"
  loc_1421B42:           var_18C = CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), var_12C))) 'String
  loc_1421B4A:           Set var_164 = Me.FGrid
  loc_1421B50:           LateIdCallSt
  loc_1421B6E:         End If
  loc_1421B72:         var_CC = CVar(CLng(var_92)) 'Long
  loc_1421B84:         var_A8 = CVar(CStr(var_92)) 'String
  loc_1421B8C:         Set var_98 = Me.FGrid
  loc_1421B92:         LateIdCallSt
  loc_1421BD2:         var_98 = Me.Fields
  loc_1421BE9:         Proc_6_39_E7C810(var_12C, CVar(var_98.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_98.Item("TaxStru")), CVar(CLng(0)))
  loc_1421BF2:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1421BFA:         Set var_164 = Me.FGrid
  loc_1421C00:         LateIdCallSt
  loc_1421C2F:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421C37:         var_FC = CVar(CLng(&HA)) 'Long
  loc_1421C6A:         var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1421C72:         Set var_164 = Me.FGrid
  loc_1421C78:         LateIdCallSt
  loc_1421CA7:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421CAF:         var_FC = CVar(CLng(&HD)) 'Long
  loc_1421CE2:         var_140 = CVar(CStr(Me.Fields.Item("DiscApp").Value)) 'String
  loc_1421CEA:         Set var_164 = Me.FGrid
  loc_1421CF0:         LateIdCallSt
  loc_1421D3E:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421D46:         var_10C = CVar(CLng(&H11)) 'Long
  loc_1421D81:         LateIdCallSt
  loc_1421DDB:         var_12C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_92)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("RateEdit")), "0.00"))), 1, 1)) 'String
  loc_1421DE3:         Set var_130 = Me.FGrid
  loc_1421DE9:         LateIdCallSt
  loc_1421E03:         Set var_130 = Me.FGrid
  loc_1421E09:         var_140 = var_130.Row
  loc_1421E39:         var_B8 = Me.Fields.Item("SChrgApp")
  loc_1421E48:         Proc_6_39_E7C810(var_12C, CVar(var_B8), CVar(CLng(&H13)), CVar(CLng(var_140)), var_130, var_12C)
  loc_1421E51:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1421E59:         Set var_164 = Me.FGrid
  loc_1421E5F:         LateIdCallSt
  loc_1421E7B:       End If
  loc_1421E7B:     End If
  loc_1421E7B:     Call Proc_210_83_115552C(var_164, var_174, var_10C, var_EC)
  loc_1421E83:   Else
  loc_1421E8A:     If (var_AC = CLng(2)) Then
  loc_1421EB9:       Set var_98 = Me.TxtGrid
  loc_1421EBF:       Call 0.Method_Proc_210_76_14221400 (0, var_B8, var_BC, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_1421EC7:       var_164 = var_B8.Text
  loc_1421ECF:       var_12C = CVar(var_BC) 'String
  loc_1421ED7:       Set var_164 = Me.FGrid
  loc_1421EDD:       LateIdCallSt
  loc_1421EFA:     Else
  loc_1421F01:       If (var_AC = CLng(3)) Then
  loc_1421F0E:         Set var_98 = Me.TxtGrid
  loc_1421F14:         Call 0.Method_Proc_210_76_14221400 (arg_C, var_B8, var_164, var_12C)
  loc_1421F2C:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_1421F33:           var_BC = CStr(0)
  loc_1421F40:           Set var_98 = Me.TxtGrid
  loc_1421F46:           Call 0.Method_Proc_210_76_14221400 (arg_C, var_B8, var_BC)
  loc_1421F4E:           var_B8.Text = var_140
  loc_1421F5D:         End If
  loc_1421F6A:         Set var_98 = Me.TxtGrid
  loc_1421F70:         Call 0.Method_Proc_210_76_14221400 (arg_C, var_B8, var_BC)
  loc_1421F78:         var_FC = var_B8.Text
  loc_1421F90:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421FE2:         LateIdCallSt
  loc_1422006:         Call Proc_210_83_115552C(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_1422010:         Call Proc_210_88_167661C(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_1422018:       Else
  loc_142201F:         If (var_AC = CLng(4)) Then
  loc_142202C:           Set var_98 = Me.TxtGrid
  loc_1422032:           Call 0.Method_Proc_210_76_14221400 (arg_C, var_B8)
  loc_142204A:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_142205E:             Set var_98 = Me.TxtGrid
  loc_1422064:             Call 0.Method_Proc_210_76_14221400 (arg_C, var_B8, CStr(0))
  loc_142206C:             var_B8.Text = var_DC
  loc_142207B:           End If
  loc_1422088:           Set var_98 = Me.TxtGrid
  loc_142208E:           Call 0.Method_Proc_210_76_14221400 (arg_C, var_B8)
  loc_14220AE:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422100:           LateIdCallSt
  loc_1422124:           Call Proc_210_83_115552C(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_142212E:           Call Proc_210_88_167661C(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_1422133:         End If
  loc_1422133:       End If
  loc_1422133:     End If
  loc_1422133:   End If
  loc_1422133: End If
  loc_1422138: Proc_210_76_1422140 = &HFF
End Sub

Public Sub Proc_210_77_18B04F0
  'Data Table: 56A9F4
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_56AA14 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_130 As String
  Dim var_194 As Fields15
  Dim var_1DC As String
  Dim var_1E0 As Label
  Dim var_1EC As Recordset15
  Dim var_12C As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_124 As Variant
  Dim var_200 As Double
  Dim var_208 As Double
  Dim var_1A8 As Variant
  Dim var_210 As Double
  Dim var_1F8 As TextBox
  Dim var_8E As Integer
  Dim var_218 As TextBox
  Dim Proc_210_77_18B04F02 As Variant
  Dim var_234 As TextBox
  loc_18ADCF0: On Error Goto loc_18B04E9
  loc_18ADD0A: If (Me.RecordCount > 0) Then
  loc_18ADD63:   unk_56AA14.Execute CStr("Select S.* From HallSale1Est S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_18ADD6E:   Set var_88 = var_128
  loc_18ADDC2:   var_128 = var_88.Fields
  loc_18ADE2B:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_18ADE70:   Me.LblUser.Caption = CStr(var_128 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_18ADEEA:   var_12C = var_88.Fields.Item("U_AE")
  loc_18ADF4B:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_18ADF6A:   var_1A8 = var_88.Fields.Item("U_EntDt")
  loc_18ADF90:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_1A8))))
  loc_18ADFCB:   Set var_1EC = var_88 
  loc_18AE008:   Set var_128 = Me.Txt
  loc_18AE00E:   Call 0.Method_Proc_210_77_18B04F00 (CInt(4), var_12C)
  loc_18AE016:   var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_18AE046:   var_B0 = var_1EC.Fields.Item("vType")
  loc_18AE057:   var_104 = CStr(var_B0.Value)
  loc_18AE065:   Set var_128 = Me.Txt
  loc_18AE06B:   Call 0.Method_Proc_210_77_18B04F00 (CInt(0), var_12C)
  loc_18AE073:   var_12C.Tag = var_104
  loc_18AE0A7:   Set var_9C = Me.Txt
  loc_18AE0AD:   Call 0.Method_Proc_210_77_18B04F00 (CInt(0), var_B0, var_104, "Select Description,NCAT From Voucher_Type Where V_Type='")
  loc_18AE0B5:   var_C0 = var_B0.Tag
  loc_18AE0BE:   var_130 = -1 & var_104
  loc_18AE0CE:   unk_56AA14.Execute Proc_6_38_E68A98(CVar(var_12C)) & "'", var_128, 
  loc_18AE0D9:   Set var_94 = var_128
  loc_18AE105:   If (var_94.RecordCount > 0) Then
  loc_18AE136:     global_120 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("NCat")))
  loc_18AE179:     Set var_128 = Me.Txt
  loc_18AE17F:     Call 0.Method_Proc_210_77_18B04F00 (CInt(0), var_12C)
  loc_18AE187:     var_12C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Description")))
  loc_18AE19B:   End If
  loc_18AE1D4:   Set var_128 = Me.Txt
  loc_18AE1DA:   Call 0.Method_Proc_210_77_18B04F00 (CInt(1), var_12C)
  loc_18AE1E2:   var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_18AE24A:   Set var_128 = Me.Txt
  loc_18AE250:   Call 0.Method_Proc_210_77_18B04F00 (CInt(2), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_18AE258:   var_12C.Text = 1
  loc_18AE2AA:   Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_18AE2F7:   Set var_128 = Me.Txt
  loc_18AE2FD:   Call 0.Method_Proc_210_77_18B04F00 (CInt(3), var_12C)
  loc_18AE305:   var_12C.Text = CStr(var_1EC.Fields.Item("Party").Value)
  loc_18AE335:   var_B0 = var_1EC.Fields.Item("Party")
  loc_18AE346:   var_104 = CStr(var_B0.Value)
  loc_18AE354:   Set var_128 = Me.Txt
  loc_18AE35A:   Call 0.Method_Proc_210_77_18B04F00 (CInt(3), var_12C)
  loc_18AE362:   var_12C.Tag = var_104
  loc_18AE396:   Set var_9C = Me.Txt
  loc_18AE39C:   Call 0.Method_Proc_210_77_18B04F00 (CInt(3), var_B0, var_104, "Select Name From SubGroup Where SubCode='")
  loc_18AE3A4:   var_C0 = var_B0.Tag
  loc_18AE3AD:   var_130 = -1 & var_104
  loc_18AE3BD:   unk_56AA14.Execute Proc_6_38_E68A98(CVar(var_12C)) & "'", var_128, 1
  loc_18AE3C8:   Set var_8C = var_128
  loc_18AE3F4:   If (var_8C.RecordCount > 0) Then
  loc_18AE42D:     Set var_128 = Me.Txt
  loc_18AE433:     Call 0.Method_Proc_210_77_18B04F00 (CInt(3), var_12C)
  loc_18AE43B:     var_12C.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_18AE44F:   End If
  loc_18AE477:   var_104 = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("RestCode")))
  loc_18AE485:   Set var_128 = Me.Txt
  loc_18AE48B:   Call 0.Method_Proc_210_77_18B04F00 (CInt(5), var_12C)
  loc_18AE493:   var_12C.Tag = var_104
  loc_18AE4C1:   var_B0 = var_1EC.Fields.Item("RestCode")
  loc_18AE4E3:   If CBool(var_B0.Value <> vbNullString) Then
  loc_18AE504:     Set var_9C = Me.Txt
  loc_18AE50A:     Call 0.Method_Proc_210_77_18B04F00 (CInt(5), var_B0, var_104, "Select Name From Depart Where Code='")
  loc_18AE512:     var_C0 = var_B0.Tag
  loc_18AE51B:     var_130 = -1 & var_104
  loc_18AE522:     var_1DC = Proc_6_38_E68A98(CVar(var_12C)) & "'"
  loc_18AE52B:     unk_56AA14.Execute var_1DC, var_128, 
  loc_18AE536:     Set var_94 = var_128
  loc_18AE562:     If (var_94.RecordCount > 0) Then
  loc_18AE59B:       Set var_128 = Me.Txt
  loc_18AE5A1:       Call 0.Method_Proc_210_77_18B04F00 (CInt(5), var_12C)
  loc_18AE5A9:       var_12C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")))
  loc_18AE5BD:     End If
  loc_18AE5BD:   End If
  loc_18AE5F3:   Set var_128 = Me.Txt
  loc_18AE5F9:   Call 0.Method_Proc_210_77_18B04F00 (CInt(7), var_12C)
  loc_18AE601:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BOOKDOCID")))
  loc_18AE666:   Set var_128 = Me.Txt
  loc_18AE66C:   Call 0.Method_Proc_210_77_18B04F00 (CInt(7), var_12C)
  loc_18AE674:   var_12C.Text = Proc_6_38_E68A98(Trim(Right(CVar(var_1EC.Fields.Item("BOOKDOCID")), 8)))
  loc_18AE6E0:   Set var_128 = Me.Txt
  loc_18AE6E6:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&H15), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ToBookDate")), "DD/MMM/YYYY")))
  loc_18AE6EE:   var_12C.Text = 1
  loc_18AE759:   Set var_128 = Me.txtM
  loc_18AE75F:   Call 0.Method_Proc_210_77_18B04F00 (1, var_12C, CVar(CStr(Format(CVar(var_1EC.Fields.Item("FrBookTime")), "hh:mm"))))
  loc_18AE767:   var_12C.defaultText = 1
  loc_18AE7D2:   Set var_128 = Me.Txt
  loc_18AE7D8:   Call 0.Method_Proc_210_77_18B04F00 (CInt(6), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("FrBookDate")), "DD/MMM/YYYY")), 1)
  loc_18AE7E0:   var_12C.Text = 1
  loc_18AE825:   var_E0 = "hh:mm"
  loc_18AE83E:   var_124 = CVar(CStr(Format(CVar(var_1EC.Fields.Item("ToBookTime")), var_E0))) 'String
  loc_18AE84B:   Set var_128 = Me.txtM
  loc_18AE851:   Call 0.Method_Proc_210_77_18B04F00 (0, var_12C, var_124, 1)
  loc_18AE859:   var_12C.defaultText = 1
  loc_18AE8A8:   Set var_128 = Me.Txt
  loc_18AE8AE:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&H13), var_12C)
  loc_18AE8B6:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Remarks")), 1)
  loc_18AE8F0:   Proc_6_39_E7C810(var_E0, CVar(var_1EC.Fields.Item("NoofPax")))
  loc_18AE907:   Set var_128 = Me.Txt
  loc_18AE90D:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&H11), var_12C)
  loc_18AE915:   var_12C.Text = CStr(var_E0)
  loc_18AE953:   Proc_6_39_E7C810(var_E0, CVar(var_1EC.Fields.Item("RatePerPax")))
  loc_18AE96A:   Set var_128 = Me.Txt
  loc_18AE970:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&H12), var_12C)
  loc_18AE978:   var_12C.Text = CStr(var_E0)
  loc_18AE9BB:   var_E0 = "0.00"
  loc_18AE9E2:   Set var_128 = Me.Txt
  loc_18AE9E8:   Call 0.Method_Proc_210_77_18B04F00 (CInt(8), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Advance")), var_E0)))
  loc_18AE9F0:   var_12C.Text = 1
  loc_18AEA30:   Proc_6_39_E7C810(var_E0, CVar(var_1EC.Fields.Item("RectNo")))
  loc_18AEA47:   Set var_128 = Me.Txt
  loc_18AEA4D:   Call 0.Method_Proc_210_77_18B04F00 (CInt(9), var_12C, CStr(var_E0))
  loc_18AEA55:   var_12C.Text = 1
  loc_18AEABF:   Set var_128 = Me.Txt
  loc_18AEAC5:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&HA), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("RectDate")), "DD/MMM/YYYY")))
  loc_18AEACD:   var_12C.Text = 1
  loc_18AEB1D:   Set var_128 = Me.Txt
  loc_18AEB23:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&HC), var_12C)
  loc_18AEB2B:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("CrCardHoldER")), 1)
  loc_18AEB75:   Set var_128 = Me.Txt
  loc_18AEB7B:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&HB), var_12C)
  loc_18AEB83:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("CrCardNo")))
  loc_18AEBAE:   var_B0 = var_1EC.Fields.Item("Narration")
  loc_18AEBCD:   Set var_128 = Me.Txt
  loc_18AEBD3:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&H18), var_12C)
  loc_18AEBF1:   Set var_1EC = Nothing 
  loc_18AEC01:   Set var_9C = Me.TxtGt
  loc_18AEC07:   Call 0.Method_Proc_210_77_18B04F08 (var_1EE, var_8E)
  loc_18AEC12:   For var_1F2 = 1 To var_1EE: 2 = var_1F2 'Integer
  loc_18AEC25:     Set var_9C = Me.LblCap
  loc_18AEC2B:     Call 0.Method_Proc_210_77_18B04F00 (var_8E, var_B0)
  loc_18AEC4A:     If (var_B0.Tag = "SNET") Then
  loc_18AEC5A:       Set var_9C = Me.TxtGt
  loc_18AEC60:       Call 0.Method_Proc_210_77_18B04F00 (var_8E, var_B0)
  loc_18AEC75:       var_200 = Val(var_B0.Text)
  loc_18AEC86:       Set var_128 = Me.Txt
  loc_18AEC8C:       Call 0.Method_Proc_210_77_18B04F00 (CInt(&HF), var_12C, Proc_6_38_E68A98(CVar(var_12C)))
  loc_18AECA1:       var_208 = Val(Proc_6_38_E68A98(CVar(var_12C)))
  loc_18AECB2:       Set var_194 = Me.Txt
  loc_18AECB8:       Call 0.Method_Proc_210_77_18B04F00 (CInt(8), var_1A8, var_1DC)
  loc_18AECF0:       var_C0 = CVar((Proc_6_38_E68A98(CVar(var_B0)) - (var_1A8.Text + Val(var_1DC)))) 'Double
  loc_18AED0E:       Set var_1E0 = Me.Txt
  loc_18AED14:       Call 0.Method_Proc_210_77_18B04F00 (CInt(&H10), var_1F8, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_18AED1C:       var_1F8.Text = 1
  loc_18AED48:     End If
  loc_18AED4B:   Next var_1F2 'Integer
  loc_18AED5E:   Set var_9C = Me.Txt
  loc_18AED64:   Call 0.Method_Proc_210_77_18B04F00 (CInt(2), var_B0)
  loc_18AED7A:   Call Proc_210_87_1A83C18(CDate(var_B0.Text))
  loc_18AEDDF:   unk_56AA14.Execute CStr("Select S.* From SunTranEst S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_18AEDEA:   Set var_88 = var_128
  loc_18AEE18:   If (var_88.RecordCount > 0) Then
  loc_18AEE1B:     ' Referenced from: 18AF2B4
  loc_18AEE2A:     If Not(var_88.EOF) Then
  loc_18AEE8D:       Set var_194 = Me.LblCap
  loc_18AEE93:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AEE9B:       var_1A8.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_18AEF19:       Set var_194 = Me.TxtPer
  loc_18AEF1F:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AEF27:       var_1A8.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_18AEFA5:       Set var_194 = Me.LblCap
  loc_18AEFAB:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AEFB3:       var_1A8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_18AF031:       Set var_194 = Me.LblAt
  loc_18AF037:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF03F:       var_1A8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_18AF0BD:       Set var_194 = Me.TxtGt
  loc_18AF0C3:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF0CB:       var_1A8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_18AF149:       Set var_194 = Me.TxtPer
  loc_18AF14F:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF157:       var_1A8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_18AF1B3:       var_124 = var_88.Fields.Item("SNo").Value
  loc_18AF1C7:       var_E0 = "0.00"
  loc_18AF1EE:       Set var_194 = Me.TxtGt
  loc_18AF1F4:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_124), var_1A8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_18AF1FC:       var_1A8.Text = 1
  loc_18AF242:       Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_18AF263:       var_128 = var_88.Fields
  loc_18AF280:       Set var_194 = Me.LblDummy
  loc_18AF286:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_128.Item("SNo").Value), var_1A8, CStr(var_E0))
  loc_18AF28E:       var_1A8.Caption = 1
  loc_18AF2AF:       var_88.MoveNext
  loc_18AF2B4:       GoTo loc_18AEE1B
  loc_18AF2B7:     End If
  loc_18AF2B7:   End If
  loc_18AF30D:   unk_56AA14.Execute CStr("Select S.* From SunTranHEst S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_18AF318:   Set var_88 = var_128
  loc_18AF346:   If (var_88.RecordCount > 0) Then
  loc_18AF349:     ' Referenced from: 18AF7E2
  loc_18AF358:     If Not(var_88.EOF) Then
  loc_18AF39E:       var_128 = var_88.Fields
  loc_18AF3BB:       Set var_194 = Me.LableCap
  loc_18AF3C1:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_128.Item("SNo").Value), var_1A8, CStr(var_88.Fields.Item("SunCode").Value))
  loc_18AF3C9:       var_1A8.Tag = var_128
  loc_18AF447:       Set var_194 = Me.TextPer
  loc_18AF44D:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF455:       var_1A8.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_18AF4D3:       Set var_194 = Me.LableCap
  loc_18AF4D9:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF4E1:       var_1A8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_18AF55F:       Set var_194 = Me.LableAt
  loc_18AF565:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF56D:       var_1A8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_18AF5EB:       Set var_194 = Me.TextGt
  loc_18AF5F1:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF5F9:       var_1A8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_18AF677:       Set var_194 = Me.TextPer
  loc_18AF67D:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AF685:       var_1A8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_18AF6E1:       var_124 = var_88.Fields.Item("SNo").Value
  loc_18AF6F5:       var_E0 = "0.00"
  loc_18AF71C:       Set var_194 = Me.TextGt
  loc_18AF722:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_124), var_1A8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_18AF72A:       var_1A8.Text = 1
  loc_18AF770:       Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_18AF791:       var_128 = var_88.Fields
  loc_18AF7AE:       Set var_194 = Me.LableDummy
  loc_18AF7B4:       Call 0.Method_Proc_210_77_18B04F00 (CInt(var_128.Item("SNo").Value), var_1A8, CStr(var_E0))
  loc_18AF7BC:       var_1A8.Caption = 1
  loc_18AF7DD:       var_88.MoveNext
  loc_18AF7E2:       GoTo loc_18AF349
  loc_18AF7E5:     End If
  loc_18AF7E5:   End If
  loc_18AF7F4:   Me.FGrid.Redraw = False
  loc_18AF80F:   Me.FGrid.Rows = 1
  loc_18AF819:   var_8E = 1
  loc_18AF829:   var_D0 = "Select S.*,I.Name as ItemName From HallStockEst S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode Where S.DocId='"
  loc_18AF868:   var_104 = CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'")
  loc_18AF872:   unk_56AA14.Execute var_104, var_124, -1
  loc_18AF87D:   Set var_88 = var_128
  loc_18AF8AB:   If (var_88.RecordCount > 0) Then
  loc_18AF8AE:     ' Referenced from: 18AFD4D
  loc_18AF8BD:     If Not(var_88.EOF) Then
  loc_18AF8C0:       var_AC = vbNullString
  loc_18AF8CA:       Set var_9C = Me.FGrid
  loc_18AF8DF:       Set var_214 = Me.FGrid
  loc_18AF8E6:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AF8EE:       var_114 = CVar(CLng(0)) 'Long
  loc_18AF91E:       var_E0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18AF925:       LateIdCallSt
  loc_18AF93F:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AF947:       var_114 = CVar(CLng(9)) 'Long
  loc_18AF977:       var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_18AF97E:       LateIdCallSt
  loc_18AF9CD:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_214, var_E0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_18AF9D4:       LateIdCallSt
  loc_18AFA06:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AFA0E:       var_140 = CVar(CLng(3)) 'Long
  loc_18AFA3B:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_18AFA42:       LateIdCallSt
  loc_18AFA78:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AFA80:       var_140 = CVar(CLng(4)) 'Long
  loc_18AFAAD:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18AFAB4:       LateIdCallSt
  loc_18AFAEA:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AFAF2:       var_140 = CVar(CLng(5)) 'Long
  loc_18AFB1F:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_18AFB26:       LateIdCallSt
  loc_18AFB5C:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AFB64:       var_140 = CVar(CLng(7)) 'Long
  loc_18AFB91:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18AFB98:       LateIdCallSt
  loc_18AFBCE:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AFBD6:       var_140 = CVar(CLng(6)) 'Long
  loc_18AFC03:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18AFC0A:       LateIdCallSt
  loc_18AFC40:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AFC7C:       LateIdCallSt
  loc_18AFCCB:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_214, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_18AFCD2:       LateIdCallSt
  loc_18AFD1D:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_214, var_E0, CVar(CLng(8)))) 'String
  loc_18AFD24:       LateIdCallSt
  loc_18AFD38:       Set var_214 = Nothing 
  loc_18AFD42:       var_8E = (var_8E + 1)
  loc_18AFD48:       var_88.MoveNext
  loc_18AFD4D:       GoTo loc_18AF8AE
  loc_18AFD50:     End If
  loc_18AFD63:     Me.FGrid.FixedRows = 1
  loc_18AFD6B:   End If
  loc_18AFD79:   Me.FGrid.Redraw = True
  loc_18AFD87:   If (var_8E = 1) Then
  loc_18AFD9D:     Me.FGrid.Rows = 1
  loc_18AFDA9:     Set var_128 = Me.FGrid
  loc_18AFDC3:     var_C0 = CVar(CStr(Proc_6_127_F24F80(var_128, CInt(0), var_8E, var_214, var_E0))) 'String
  loc_18AFDCB:     Set var_B0 = Me.FGrid
  loc_18AFDF8:     Me.FGrid.FixedRows = 1
  loc_18AFE00:   End If
  loc_18AFE1E:   Set var_9C = Me.Txt
  loc_18AFE24:   Call 0.Method_Proc_210_77_18B04F00 (CInt(7), var_B0, var_104, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C0, -1, var_128)
  loc_18AFE2C:   FGrid.DispID_10000 = var_B0.Tag
  loc_18AFE35:   var_130 = var_C0 & var_104
  loc_18AFE3C:   var_1DC = var_130 & "'"
  loc_18AFE45:   unk_56AA14.Execute var_1DC, var_F0, var_214
  loc_18AFE50:   Set var_88 = var_128
  loc_18AFE77:   Me.FGrid1.Redraw = False
  loc_18AFE92:   Me.FGrid1.Rows = 1
  loc_18AFE9A:   var_AC = vbNullString
  loc_18AFEA4:   Set var_9C = Me.FGrid1
  loc_18AFEC8:   Me.FGrid1.FixedRows = 1
  loc_18AFED0:   ' Referenced from: 18B02A4
  loc_18AFED6:   var_1EE = var_88.EOF
  loc_18AFEDF:   If Not(var_1EE) Then
  loc_18AFEFB:     var_AC = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_18AFF0A:     Me.FGrid1.Row = 1
  loc_18AFF1D:     Set var_218 = Me.FGrid1
  loc_18AFF33:     var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_18AFF5A:     var_AC = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_18AFF7D:     var_104 = CStr(Me.FGrid1.TextMatrix))
  loc_18AFF8B:     var_124 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_18AFF92:     LateIdCallSt
  loc_18AFFD5:     var_AC = "VenueName"
  loc_18AFFFA:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_AC)), 1, CVar(CLng(Me.FGrid1.Row)), var_218, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 0, var_AC)) 'String
  loc_18B0001:     LateIdCallSt
  loc_18B0062:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_218, var_100, 0)) 'String
  loc_18B0069:     LateIdCallSt
  loc_18B00CA:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18B00D1:     LateIdCallSt
  loc_18B0132:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18B0139:     LateIdCallSt
  loc_18B019A:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18B01A1:     LateIdCallSt
  loc_18B01F1:     var_B0 = var_88.Fields.Item("VenuCode")
  loc_18B0202:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_B0), 6, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18B0209:     LateIdCallSt
  loc_18B0225:     Set var_128 = Me.FGrid1
  loc_18B0250:     Set var_9C = Me.Txt
  loc_18B0256:     Call 0.Method_Proc_210_77_18B04F00 (CInt(1), var_B0, var_104, 7, CVar(CLng(var_128.Row)), var_218)
  loc_18B025E:     var_100 = var_B0.Text
  loc_18B0266:     var_E0 = CVar(var_104) 'String
  loc_18B026D:     LateIdCallSt
  loc_18B0285:     var_AC = vbNullString
  loc_18B028E:     Proc_210_77_18B04F02 = var_218.Name
  loc_18B0298:     Set var_218 = Nothing 
  loc_18B029F:     var_88.MoveNext
  loc_18B02A4:     GoTo loc_18AFED0
  loc_18B02A7:   End If
  loc_18B02AE:   Set var_9C = Me.TxtGt
  loc_18B02B4:   Call 0.Method_Proc_210_77_18B04F08 (var_1EE, Proc_210_77_18B04F02, var_AC, var_218, var_E0)
  loc_18B02C6:   Set var_B0 = Me.TxtGt
  loc_18B02CC:   Call 0.Method_Proc_210_77_18B04F00 (var_1EE, var_128, var_104, var_140)
  loc_18B02D4:   FGrid1.DispID_10000 = var_128.Text
  loc_18B02E1:   var_200 = Val(var_104)
  loc_18B02EB:   Set var_12C = Me.TextGt
  loc_18B02F1:   Call 0.Method_Proc_210_77_18B04F08 (var_22A, var_200, var_AC)
  loc_18B0303:   Set var_194 = Me.TextGt
  loc_18B0309:   Call 0.Method_Proc_210_77_18B04F00 (var_22A, var_1A8, var_130)
  loc_18B0311:   var_124 = var_1A8.Text
  loc_18B031E:   var_208 = Val(var_130)
  loc_18B032F:   Set var_1E0 = Me.Txt
  loc_18B0335:   Call 0.Method_Proc_210_77_18B04F00 (CInt(8), var_1F8, var_1DC)
  loc_18B034A:   var_210 = Val(var_1DC)
  loc_18B036D:   var_C0 = CVar(((var_200 + var_1F8.Text) - var_210)) 'Double
  loc_18B038B:   Set var_230 = Me.Txt
  loc_18B0391:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&H14), var_234, CStr(Format(var_128.Row, "0.00")), 1)
  loc_18B0399:   var_234.Text = 1
  loc_18B03D0:   Set var_9C = Me.TxtGt
  loc_18B03D6:   Call 0.Method_Proc_210_77_18B04F08 (var_1EE, var_210)
  loc_18B03E8:   Set var_B0 = Me.TxtGt
  loc_18B03EE:   Call 0.Method_Proc_210_77_18B04F00 (var_1EE, var_128)
  loc_18B0403:   var_200 = Val(var_128.Text)
  loc_18B040D:   Set var_12C = Me.TextGt
  loc_18B0413:   Call 0.Method_Proc_210_77_18B04F08 (var_22A, var_200)
  loc_18B0425:   Set var_194 = Me.TextGt
  loc_18B042B:   Call 0.Method_Proc_210_77_18B04F00 (var_22A, var_1A8)
  loc_18B0440:   var_208 = Val(var_1A8.Text)
  loc_18B045F:   var_C0 = CVar((var_200 + var_208)) 'Double
  loc_18B047D:   Set var_1E0 = Me.Txt
  loc_18B0483:   Call 0.Method_Proc_210_77_18B04F00 (CInt(&H19), var_1F8, CStr(Format(var_128.Row, "0.00")), 1)
  loc_18B048B:   var_1F8.Text = 1
  loc_18B04C3:   Me.FGrid1.Redraw = True
  loc_18B04CE: Else
  loc_18B04CE:   Call Proc_210_79_10187DC(var_208)
  loc_18B04D3: End If
  loc_18B04D3: Call Proc_210_81_F24170(1)
  loc_18B04DD: Set var_88 = Nothing
  loc_18B04E5: Set var_94 = Nothing
  loc_18B04E8: Exit Sub
  loc_18B04E9: ' Referenced from: 18ADCF0
  loc_18B04E9: Proc_6_60_E62BC4()
  loc_18B04EE: Exit Sub
End Sub

Public Sub Proc_210_78_1132384
  'Data Table: 56A9F4
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_56AA14 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_113202D: Set var_9C = Me.topCtrl1
  loc_1132033: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_113203B: var_B0 = CStr()
  loc_113204C: If (var_B0 = "Add") Then
  loc_113207C:   Set var_9C = Me.Txt
  loc_1132082:   Call 0.Method_Proc_210_78_11323840 (CInt(4), var_B4, var_B0, "Select Count(*) From HallSale1Est Where DocID='", var_AC, -1)
  loc_11320A3:   unk_56AA14.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_11320B3:    = var_D4.Item()
  loc_11320BB:    = var_E8.Value
  loc_11320E8:   If (var_B4.Text.Fields > 0) Then
  loc_11320F1:     Call 0.Method_arg_50 (var_B0)
  loc_1132112:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_1132128:     Call Proc_210_84_11BDF58(MemVar_1F92044)
  loc_113213B:     Set var_9C = Me.Txt
  loc_1132141:     Call 0.Method_Proc_210_78_11323840 (CInt(4), var_B4)
  loc_1132149:     var_B4.Text = var_B0
  loc_113215D:     Proc_210_78_1132384 = 0
  loc_1132163:   End If
  loc_1132163: End If
  loc_1132188: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1132192:   var_CC = CVar(CLng(var_88)) 'Long
  loc_113219A:   var_108 = CVar(CLng(1)) 'Long
  loc_11321BA:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11321D6:   If CBool(var_118 <> vbNullString) Then
  loc_11321DD:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11321E5:     var_108 = CVar(CLng(3)) 'Long
  loc_1132215:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_113223D:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1132263:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_113226F:       Set var_9C = Me.FGrid
  loc_1132293:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11322A0:       Proc_210_78_1132384 = 0
  loc_11322A6:     End If
  loc_11322AA:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11322B2:     var_108 = CVar(CLng(4)) 'Long
  loc_11322E2:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_113230A:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1132330:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_113233C:       Set var_9C = Me.FGrid
  loc_1132360:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_113236D:       Proc_210_78_1132384 = 0
  loc_1132373:     End If
  loc_1132373:   End If
  loc_1132376: Next var_12C 'Integer
  loc_113237B: Proc_210_78_1132384 = 
End Sub

Public Sub Proc_210_79_10187DC
  'Data Table: 56A9F4
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  loc_10185BD: Me.LblVPrefix.Caption = vbNullString
  loc_10185D3: Set var_8C = Me.Txt
  loc_10185D9: Call 0.Method_Proc_210_79_10187DCC (var_8E, var_86)
  loc_10185E9: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10185FF:   Set var_8C = Me.Txt
  loc_1018605:   Call 0.Method_Proc_210_79_10187DC0 (CInt(var_86), var_98)
  loc_101860D:   var_98.Text = vbNullString
  loc_1018629:   Set var_8C = Me.Txt
  loc_101862F:   Call 0.Method_Proc_210_79_10187DC0 (CInt(var_86), var_98)
  loc_1018637:   var_98.Tag = vbNullString
  loc_1018646: Next var_92 'Byte
  loc_101865B: Set var_8C = Me.txtM
  loc_1018661: Call 0.Method_Proc_210_79_10187DC0 (0, var_98)
  loc_1018669: var_98.Text = "0:00"
  loc_1018684: Set var_8C = Me.txtM
  loc_101868A: Call 0.Method_Proc_210_79_10187DC0 (0, var_98)
  loc_1018692: var_98.Tag = vbNullString
  loc_10186AD: Set var_8C = Me.txtM
  loc_10186B3: Call 0.Method_Proc_210_79_10187DC0 (1, var_98)
  loc_10186BB: var_98.Text = "0:00"
  loc_10186D6: Set var_8C = Me.txtM
  loc_10186DC: Call 0.Method_Proc_210_79_10187DC0 (1, var_98)
  loc_10186E4: var_98.Tag = vbNullString
  loc_1018703: Me.FGrid.Rows = 1
  loc_1018729: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_1018731: Set var_98 = Me.FGrid
  loc_101875E: Me.FGrid.FixedRows = 1
  loc_1018779: Me.FGrid1.Rows = 1
  loc_101879D: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_10187A5: Set var_98 = Me.FGrid1
  loc_10187D2: Me.FGrid1.FixedRows = 1
  loc_10187DA: Exit Sub
End Sub

Public Sub Proc_210_80_10374EC(arg_C) '10374EC
  'Data Table: 56A9F4
  Dim var_98 As Variant
  loc_103729E: Set var_8C = Me.Txt
  loc_10372A4: Call 0.Method_Proc_210_80_10374ECC (var_8E, var_86)
  loc_10372B4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10372CA:   Set var_8C = Me.Txt
  loc_10372D0:   Call 0.Method_Proc_210_80_10374EC0 (CInt(var_86), var_98)
  loc_10372D8:   var_98.Enabled = arg_C
  loc_10372E7: Next var_92 'Byte
  loc_10372FB: Set var_8C = Me.txtM
  loc_1037301: Call 0.Method_Proc_210_80_10374EC0 (0, var_98)
  loc_1037309: var_98.Enabled = False
  loc_1037323: Set var_8C = Me.txtM
  loc_1037329: Call 0.Method_Proc_210_80_10374EC0 (1, var_98)
  loc_1037331: var_98.Enabled = False
  loc_103734A: Set var_8C = Me.Txt
  loc_1037350: Call 0.Method_Proc_210_80_10374EC0 (CInt(&H15), var_98)
  loc_1037358: var_98.Enabled = False
  loc_1037371: Set var_8C = Me.Txt
  loc_1037377: Call 0.Method_Proc_210_80_10374EC0 (CInt(6), var_98)
  loc_103737F: var_98.Enabled = False
  loc_1037398: Set var_8C = Me.Txt
  loc_103739E: Call 0.Method_Proc_210_80_10374EC0 (CInt(4), var_98)
  loc_10373A6: var_98.Enabled = False
  loc_10373BF: Set var_8C = Me.Txt
  loc_10373C5: Call 0.Method_Proc_210_80_10374EC0 (CInt(8), var_98)
  loc_10373CD: var_98.Enabled = False
  loc_10373E6: Set var_8C = Me.Txt
  loc_10373EC: Call 0.Method_Proc_210_80_10374EC0 (CInt(&HA), var_98)
  loc_10373F4: var_98.Enabled = False
  loc_103740D: Set var_8C = Me.Txt
  loc_1037413: Call 0.Method_Proc_210_80_10374EC0 (CInt(9), var_98)
  loc_103741B: var_98.Enabled = False
  loc_1037434: Set var_8C = Me.Txt
  loc_103743A: Call 0.Method_Proc_210_80_10374EC0 (CInt(&H10), var_98)
  loc_1037442: var_98.Enabled = False
  loc_103745B: Set var_8C = Me.Txt
  loc_1037461: Call 0.Method_Proc_210_80_10374EC0 (CInt(&H14), var_98)
  loc_1037469: var_98.Enabled = False
  loc_1037482: Set var_8C = Me.Txt
  loc_1037488: Call 0.Method_Proc_210_80_10374EC0 (CInt(&H19), var_98)
  loc_1037490: var_98.Enabled = False
  loc_10374A9: Set var_8C = Me.Txt
  loc_10374AF: Call 0.Method_Proc_210_80_10374EC0 (CInt(&HC), var_98)
  loc_10374B7: var_98.Enabled = False
  loc_10374D0: Set var_8C = Me.Txt
  loc_10374D6: Call 0.Method_Proc_210_80_10374EC0 (CInt(&HB), var_98)
  loc_10374DE: var_98.Enabled = False
  loc_10374EA: Exit Sub
End Sub

Public Sub Proc_210_81_F24170
  'Data Table: 56A9F4
  loc_F2407C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F2408E:   Me.DGParty.Visible = False
  loc_F24096: End If
  loc_F240B2: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F240C4:   Me.DGVType.Visible = False
  loc_F240CC: End If
  loc_F240E8: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F240FA:   Me.DGHall.Visible = False
  loc_F24102: End If
  loc_F2411E: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F24130:   Me.DGItem.Visible = False
  loc_F24138: End If
  loc_F24154: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F24166:   Me.DGBookNo.Visible = False
  loc_F2416E: End If
  loc_F2416E: Exit Sub
End Sub

Public Sub Proc_210_82_F09EE8
  'Data Table: 56A9F4
  loc_F09E0C: Call Proc_210_81_F24170()
  loc_F09E1C: Set var_88 = Me.Txt
  loc_F09E22: Call 0.Method_Proc_210_82_F09EE80 (CInt(2))
  loc_F09E4B: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F09E4E:   Exit Sub
  loc_F09E4F: End If
  loc_F09E5A: Set var_88 = Me.Txt
  loc_F09E60: Call 0.Method_Proc_210_82_F09EE80 (CInt(1), var_8C)
  loc_F09E89: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F09E8C:   Exit Sub
  loc_F09E8D: End If
  loc_F09EC4: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F09EC7:   Call TopCtrl1_UnknownEvent_16()
  loc_F09ECF: Else
  loc_F09ED5:   Call 0.Method_arg_1E8 (var_88)
  loc_F09EDD:   Call var_88.SetFocus
  loc_F09EE6: End If
  loc_F09EE6: Exit Sub
End Sub

Public Sub Proc_210_83_115552C
  'Data Table: 56A9F4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_11551BB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11551C3: var_C8 = CVar(CLng(4)) 'Long
  loc_11551FB: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1155203: var_134 = CVar(CLng(3)) 'Long
  loc_115523B: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1155243: var_1F0 = CVar(CLng(5)) 'Long
  loc_1155274: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_115527C: Set var_224 = Me.FGrid
  loc_1155282: LateIdCallSt
  loc_11552C8: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11552D0: var_C8 = CVar(CLng(6)) 'Long
  loc_1155308: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_115531E:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1155326:   var_C8 = CVar(CLng(5)) 'Long
  loc_115535E:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1155366:   var_134 = CVar(CLng(6)) 'Long
  loc_115539E:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11553A6:   var_1F0 = CVar(CLng(7)) 'Long
  loc_11553DB:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11553E3:   Set var_224 = Me.FGrid
  loc_11553E9:   LateIdCallSt
  loc_115541C: End If
  loc_115542F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1155437: var_C8 = CVar(CLng(5)) 'Long
  loc_115546F: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1155477: var_134 = CVar(CLng(7)) 'Long
  loc_11554AF: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11554B7: var_1F0 = CVar(CLng(8)) 'Long
  loc_11554D8: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_11554E8: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11554F0: Set var_224 = Me.FGrid
  loc_11554F6: LateIdCallSt
  loc_1155529: Exit Sub
End Sub

Public Sub Proc_210_84_11BDF58
  'Data Table: 56A9F4
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
  loc_11BDB4C: Set var_94 = Me.Txt
  loc_11BDB52: Call 0.Method_Proc_210_84_11BDF580 (CInt(0), var_98)
  loc_11BDB62: var_90 = var_98.Tag
  loc_11BDB80: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11BDBB1: Set var_94 = Me.Txt
  loc_11BDBB7: Call 0.Method_Proc_210_84_11BDF580 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_11BDBC6: Proc_6_7_F25D88(var_CC, CVar(var_98), var_130)
  loc_11BDBCE: var_EC = -1 & var_CC 
  loc_11BDBE2: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11BDBED: Set var_8C = var_134
  loc_11BDC29: If (var_8C.RecordCount > 0) Then
  loc_11BDC5A:   global_156 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Number_Method")))
  loc_11BDCA3:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_11BDCD7:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11BDD02:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11BDD17:     var_CC = (var_98.Value + 1)
  loc_11BDD1F:     global_116 = CInt(var_CC)
  loc_11BDD3D:     Set var_94 = Me.Txt
  loc_11BDD43:     Call 0.Method_Proc_210_84_11BDF580 (CInt(1), var_98)
  loc_11BDD4B:     var_98.Enabled = False
  loc_11BDD64:     Set var_94 = Me.Txt
  loc_11BDD6A:     Call 0.Method_Proc_210_84_11BDF580 (CInt(2), var_98)
  loc_11BDD72:     var_98.Enabled = False
  loc_11BDD81:   Else
  loc_11BDDB2:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11BDDDD:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11BDDF2:     var_CC = (var_98.Value + 1)
  loc_11BDDFA:     global_116 = CInt(var_CC)
  loc_11BDE0B:   End If
  loc_11BDE0B: End If
  loc_11BDE36: var_BC = Space((5 - Len(var_90)))
  loc_11BDE3E: var_DC = (CVar(global_116 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_98.Value)
  loc_11BDE52: var_EC = Space((5 - Len(global_112)))
  loc_11BDE5A: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_11BDE67: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_11BDE80: var_14C = Space((8 - Len(CStr(global_116))))
  loc_11BDE88: var_15C = (var_130 + var_14C)
  loc_11BDE97: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_11BDEA2: global_104 = CStr(var_17C)
  loc_11BDED8: Me.LblVPrefix.Caption = global_112
  loc_11BDEF1: Set var_94 = Me.Txt
  loc_11BDEF7: Call 0.Method_Proc_210_84_11BDF580 (CInt(4), var_98)
  loc_11BDEFF: var_98.Text = global_104
  loc_11BDF21: Set var_94 = Me.Txt
  loc_11BDF27: Call 0.Method_Proc_210_84_11BDF580 (CInt(1), var_98)
  loc_11BDF2F: var_98.Text = CStr(global_116)
  loc_11BDF44: var_88 = global_104
  loc_11BDF4C: Set var_8C = Nothing
  loc_11BDF4F: Proc_210_84_11BDF58 = global_116
  loc_11BDF55: () = 
End Sub

Public Sub Proc_210_85_10B9860(arg_C, arg_10, arg_14) '10B9860
  'Data Table: 56A9F4
  Dim unk_56AA14 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B95CE: If (arg_C = "HSBIL") Then
  loc_10B95F5:   unk_56AA14.Execute "Select Distinct DocId,V_Type,V_No From HallSale1Est Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B9600:   Set var_8C = var_C4
  loc_10B9613:   var_94 = "Sale Bill "
  loc_10B9619: Else
  loc_10B961E:   Proc_210_85_10B9860 = &HFF
  loc_10B9624: End If
  loc_10B9638: If (var_8C.RecordCount > 0) Then
  loc_10B963B:   ' Referenced from: 10B97B4
  loc_10B964A:   If Not(var_8C.EOF) Then
  loc_10B9655:     If (var_90 = vbNullString) Then
  loc_10B9698:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B969F:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B96D1:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B96F6:     Else
  loc_10B9732:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B9752:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B977F:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B9784:       var_90 = CStr(var_11C)
  loc_10B97AC:     End If
  loc_10B97AF:     var_8C.MoveNext
  loc_10B97B4:     GoTo loc_10B963B
  loc_10B97B7:   End If
  loc_10B97BD:   Call 0.Method_arg_50 (var_138)
  loc_10B9819:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B981C:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B984B:   Set var_8C = Nothing
  loc_10B984E:   Proc_210_85_10B9860 = 0
  loc_10B9854: End If
  loc_10B9859: Proc_210_85_10B9860 = &HFF
End Sub

Public Sub Proc_210_86_FC4544
  'Data Table: 56A9F4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC43C7: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC43CC:   var_92 = 1 'Byte
  loc_FC43D0: End If
  loc_FC43D9: Set var_98 = Me.TxtGrid
  loc_FC43DF: Call 0.Method_Proc_210_86_FC45440 (0, var_B0)
  loc_FC4402: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC4436: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC445A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC445D:     GoTo loc_FC452F
  loc_FC4460:   End If
  loc_FC4464:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC448E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC4498:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC44CD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC44F1:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC450A:     Set var_98 = Me.TxtGrid
  loc_FC4510:     Call 0.Method_Proc_210_86_FC45440 (0, var_B0, CVar(CLng(var_92)))
  loc_FC4518:     var_B0.SetFocus
  loc_FC4529:     Proc_210_86_FC4544 = 0
  loc_FC452F:     ' Referenced from: FC445D
  loc_FC452F:   End If
  loc_FC4532: Next var_D4 'Integer
  loc_FC453C: Proc_210_86_FC4544 = &HFF
End Sub

Public Sub Proc_210_87_1A83C18(arg_C) '1A83C18
  'Data Table: 56A9F4
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_A0 As String
  Dim var_B8 As String
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim unk_56AA14 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_154 As Variant
  Dim var_150 As Fields15
  Dim var_15C As Variant
  Dim var_140 As Boolean
  Dim var_158 As Fields15
  Dim var_1A4 As Variant
  Dim var_1B4 As TextBox
  Dim var_DC As Variant
  loc_1A7FFA0: Set var_90 = Me.TextGt
  loc_1A7FFA6: Call 0.Method_Proc_210_87_1A83C180 (1, var_94)
  loc_1A7FFAE: var_96 = var_94.TabIndex
  loc_1A7FFB6: var_8A = var_96
  loc_1A7FFDB: var_A0 = "Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Site_Code='"
  loc_1A80008: var_B8 = var_A0 & MemVar_1F92070 & "' and LogSite_Code='" & MemVar_1F92078 & "' and NCAT='BBILL' AND RESTCODE='" & global_56 & "') aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='"
  loc_1A80027: Proc_6_7_F25D88(var_DC, arg_C, CVar(var_B8 & global_56 & "') aND AppDate<="), var_140)
  loc_1A8002F: var_FC = -1 & var_DC 
  loc_1A80046: unk_56AA14.Execute CStr(var_FC & "  Order by AppDate Desc) Order by SNO"), var_90, var_8A
  loc_1A80051: Set var_88 = var_90
  loc_1A80082: Set var_90 = Me.LableCap
  loc_1A80088: Call 0.Method_Proc_210_87_1A83C188 (var_96)
  loc_1A800B8: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A800DA:   Set var_90 = Me.LableCap
  loc_1A800E0:   Call 0.Method_Proc_210_87_1A83C188 (var_96, var_8C)
  loc_1A800EB:   For var_14C =  To var_96: CInt((var_88.RecordCount + 1)) = var_14C 'Integer
  loc_1A800FB:     Set var_90 = Me.LableCap
  loc_1A80101:     Call 0.Method_Proc_210_87_1A83C180 (var_8C)
  loc_1A80112:     Me.LableCap.Unload var_94
  loc_1A80128:     Set var_90 = Me.LableDummy
  loc_1A8012E:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A8013F:     Me.LableDummy.Unload var_94
  loc_1A80155:     Set var_90 = Me.LableAt
  loc_1A8015B:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A8016C:     Me.LableAt.Unload var_94
  loc_1A80182:     Set var_90 = Me.TextPer
  loc_1A80188:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A80199:     Me.TextPer.Unload var_94
  loc_1A801AF:     Set var_90 = Me.TextGt
  loc_1A801B5:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A801C6:     Me.TextGt.Unload var_94
  loc_1A801D5:   Next var_14C 'Integer
  loc_1A801DA: End If
  loc_1A801EE: If (var_88.RecordCount > 0) Then
  loc_1A8022A:   Set var_150 = Me.Txt
  loc_1A80230:   Call 0.Method_Proc_210_87_1A83C180 (CInt(&H17), var_154)
  loc_1A80238:   var_154.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1A8024E:   ' Referenced from: 1A81D55
  loc_1A80254:   var_96 = var_88.EOF
  loc_1A8025D:   If Not(var_96) Then
  loc_1A8029C:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A802D0:       Set var_150 = Me.LableDummy
  loc_1A802D6:       Call 0.Method_Proc_210_87_1A83C188 (var_96)
  loc_1A802F0:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A80325:         Set var_150 = Me.LableDummy
  loc_1A8032B:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A8033C:         Me.LableDummy.Load var_154
  loc_1A8034F:       End If
  loc_1A8039A:       var_154 = var_88.Fields.Item("SNo")
  loc_1A803AF:       Set var_158 = Me.LableDummy
  loc_1A803B5:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A803BD:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A8040C:       Set var_150 = Me.TextPer
  loc_1A80412:       Call 0.Method_Proc_210_87_1A83C188 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A8042C:       If (var_154 > CVar(var_96)) Then
  loc_1A80461:         Set var_150 = Me.TextPer
  loc_1A80467:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A80478:         Me.TextPer.Load var_154
  loc_1A8048B:       End If
  loc_1A804C3:       Set var_150 = Me.TextPer
  loc_1A804C9:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A804D1:       var_154.TabIndex = (var_8A + 1)
  loc_1A804EA:       var_8A = (var_8A + 1)
  loc_1A8052E:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8056E:       Set var_158 = Me.TextPer
  loc_1A80574:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A8057C:       var_15C.Visible = var_8A
  loc_1A805DB:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A8063A:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A80643:         Set var_1A0 = Me.TextPer
  loc_1A80649:         Call 0.Method_Proc_210_87_1A83C180 (CInt(True), var_1A4)
  loc_1A8068B:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A80694:         Set var_150 = Me.TextPer
  loc_1A8069A:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A806BE:         Set var_1B0 = Me.TextPer
  loc_1A806C4:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A806CC:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A806F5:       End If
  loc_1A80731:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A80790:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A80799:         Set var_150 = Me.TextPer
  loc_1A8079F:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A807BA:         Set var_1A0 = Me.TextPer
  loc_1A807C0:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A807C8:         var_1A4.Left = var_154.Left
  loc_1A807E7:       End If
  loc_1A80844:       var_15C = var_88.Fields.Item("SNo")
  loc_1A80891:       Set var_1A0 = Me.TextPer
  loc_1A80897:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A8089F:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A80912:       var_154 = var_88.Fields.Item("SNo")
  loc_1A80927:       Set var_158 = Me.TextPer
  loc_1A8092D:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A80935:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A8098C:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A809C3:         Set var_150 = Me.TextPer
  loc_1A809C9:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A809D1:         var_154.FontBold = True
  loc_1A809E7:       Else
  loc_1A80A1B:         Set var_150 = Me.TextPer
  loc_1A80A21:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80A29:         var_154.FontBold = False
  loc_1A80A3C:       End If
  loc_1A80A75:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A80AAC:         Set var_150 = Me.TextPer
  loc_1A80AB2:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80ABA:         var_154.Enabled = False
  loc_1A80AD0:       Else
  loc_1A80B04:         Set var_150 = Me.TextPer
  loc_1A80B0A:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80B12:         var_154.Enabled = True
  loc_1A80B25:       End If
  loc_1A80B29:       Set var_90 = Me.topCtrl1
  loc_1A80B2F:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A80B48:       If (CStr() = "Browse") Then
  loc_1A80B7F:         Set var_150 = Me.TextPer
  loc_1A80B85:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80B8D:         var_154.Enabled = False
  loc_1A80BA0:       End If
  loc_1A80BDC:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A80C13:         Set var_150 = Me.TextPer
  loc_1A80C19:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80C21:         var_154.Enabled = False
  loc_1A80C34:       End If
  loc_1A80C65:       Set var_150 = Me.LableCap
  loc_1A80C6B:       Call 0.Method_Proc_210_87_1A83C188 (var_96)
  loc_1A80C85:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A80CBA:         Set var_150 = Me.LableCap
  loc_1A80CC0:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A80CD1:         Me.LableCap.Load var_154
  loc_1A80CE4:       End If
  loc_1A80D18:       Set var_150 = Me.LableCap
  loc_1A80D1E:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80D26:       var_154.Visible = True
  loc_1A80D95:       Set var_150 = Me.TextPer
  loc_1A80D9B:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80DB6:       Set var_1A0 = Me.LableCap
  loc_1A80DBC:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A80DC4:       var_1A4.Top = var_154.Top
  loc_1A80E1F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A80E63:         var_15C = var_88.Fields.Item("SNo")
  loc_1A80E7E:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A80E87:         Set var_150 = Me.LableCap
  loc_1A80E8D:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A80EA8:         Set var_1A0 = Me.LableCap
  loc_1A80EAE:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A80EB6:         var_1A4.Left = var_154.Left
  loc_1A80ED5:       End If
  loc_1A80F35:       Set var_158 = Me.LableCap
  loc_1A80F3B:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A80F43:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A80FAC:       var_154 = var_88.Fields.Item("SNo")
  loc_1A80FC1:       Set var_158 = Me.LableCap
  loc_1A80FC7:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A80FCF:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A81026:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8105D:         Set var_150 = Me.LableCap
  loc_1A81063:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8106B:         var_154.FontBold = True
  loc_1A81081:       Else
  loc_1A810B5:         Set var_150 = Me.LableCap
  loc_1A810BB:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A810C3:         var_154.FontBold = False
  loc_1A810D6:       End If
  loc_1A81107:       Set var_150 = Me.LableAt
  loc_1A8110D:       Call 0.Method_Proc_210_87_1A83C188 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A81127:       If (var_154 > CVar(var_96)) Then
  loc_1A8115C:         Set var_150 = Me.LableAt
  loc_1A81162:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A81173:         Me.LableAt.Load var_154
  loc_1A81186:       End If
  loc_1A811C7:       var_154 = var_88.Fields.Item("SNo")
  loc_1A81207:       Set var_158 = Me.LableAt
  loc_1A8120D:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A81215:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A81279:       var_15C = var_88.Fields.Item("SNo")
  loc_1A81294:       Set var_150 = Me.TextPer
  loc_1A8129A:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A812B5:       Set var_1A0 = Me.LableAt
  loc_1A812BB:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A812C3:       var_1A4.Top = var_154.Top
  loc_1A8131B:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A81352:         Set var_150 = Me.LableAt
  loc_1A81358:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81360:         var_154.FontBold = True
  loc_1A81376:       Else
  loc_1A813AA:         Set var_150 = Me.LableAt
  loc_1A813B0:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A813B8:         var_154.FontBold = False
  loc_1A813CB:       End If
  loc_1A81416:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8142B:       Set var_158 = Me.LableAt
  loc_1A81431:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A81439:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A81493:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A814F2:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A814FB:         Set var_150 = Me.LableAt
  loc_1A81501:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A8151C:         Set var_1A0 = Me.LableAt
  loc_1A81522:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A8152A:         var_1A4.Left = var_154.Left
  loc_1A81549:       End If
  loc_1A8157A:       Set var_150 = Me.TextGt
  loc_1A81580:       Call 0.Method_Proc_210_87_1A83C188 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A8159A:       If (var_154 > CVar(var_96)) Then
  loc_1A815CF:         Set var_150 = Me.TextGt
  loc_1A815D5:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A815E6:         Me.TextGt.Load var_154
  loc_1A815F9:       End If
  loc_1A81631:       Set var_150 = Me.TextGt
  loc_1A81637:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8163F:       var_154.TabIndex = (var_8A + 1)
  loc_1A81658:       var_8A = (var_8A + 1)
  loc_1A8168F:       Set var_150 = Me.TextGt
  loc_1A81695:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A8169D:       var_154.Visible = var_8A
  loc_1A8170C:       Set var_150 = Me.TextPer
  loc_1A81712:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8172D:       Set var_1A0 = Me.TextGt
  loc_1A81733:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A8173B:       var_1A4.Top = var_154.Top
  loc_1A81796:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A817F5:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A817FE:         Set var_150 = Me.TextGt
  loc_1A81804:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8181F:         Set var_1A0 = Me.TextGt
  loc_1A81825:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A8182D:         var_1A4.Left = var_154.Left
  loc_1A8184C:       End If
  loc_1A818A9:       var_15C = var_88.Fields.Item("SNo")
  loc_1A818F6:       Set var_1A0 = Me.TextGt
  loc_1A818FC:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A81904:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A81974:       var_154 = var_88.Fields.Item("SNo")
  loc_1A81989:       Set var_158 = Me.TextGt
  loc_1A8198F:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A81997:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A819EC:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A81A23:         Set var_150 = Me.TextGt
  loc_1A81A29:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81A31:         var_154.FontBold = True
  loc_1A81A47:       Else
  loc_1A81A7B:         Set var_150 = Me.TextGt
  loc_1A81A81:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81A89:         var_154.FontBold = False
  loc_1A81A9C:       End If
  loc_1A81AD5:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A81B0C:         Set var_150 = Me.TextGt
  loc_1A81B12:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81B1A:         var_154.Enabled = False
  loc_1A81B30:       Else
  loc_1A81B64:         Set var_150 = Me.TextGt
  loc_1A81B6A:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81B72:         var_154.Enabled = True
  loc_1A81B85:       End If
  loc_1A81BBA:       Set var_150 = Me.LableCap
  loc_1A81BC0:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81BE6:       If (var_154.Tag = "SROFF") Then
  loc_1A81C1D:         Set var_150 = Me.TextGt
  loc_1A81C23:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81C2B:         var_154.Enabled = False
  loc_1A81C3E:       End If
  loc_1A81C42:       Set var_90 = Me.topCtrl1
  loc_1A81C48:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A81C61:       If (CStr() = "Browse") Then
  loc_1A81C98:         Set var_150 = Me.TextGt
  loc_1A81C9E:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A81CA6:         var_154.Enabled = False
  loc_1A81CB9:       End If
  loc_1A81CF5:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A81D17:         var_94 = var_88.Fields.Item("SNo")
  loc_1A81D2C:         Set var_150 = Me.TextGt
  loc_1A81D32:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_94.Value), var_154)
  loc_1A81D3A:         var_154.Enabled = False
  loc_1A81D4D:       End If
  loc_1A81D4D:     End If
  loc_1A81D50:     var_88.MoveNext
  loc_1A81D55:     GoTo loc_1A8024E
  loc_1A81D58:   End If
  loc_1A81D58: End If
  loc_1A81D5F: Set var_90 = Me.LblCap
  loc_1A81D65: Call 0.Method_Proc_210_87_1A83C188 (var_96)
  loc_1A81D95: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A81DB7:   Set var_90 = Me.LblCap
  loc_1A81DBD:   Call 0.Method_Proc_210_87_1A83C188 (var_96, var_8C)
  loc_1A81DC8:   For var_1B8 =  To var_96: CInt((var_88.RecordCount + 1)) = var_1B8 'Integer
  loc_1A81DD8:     Set var_90 = Me.LblCap
  loc_1A81DDE:     Call 0.Method_Proc_210_87_1A83C180 (var_8C)
  loc_1A81DEF:     Me.LblCap.Unload var_94
  loc_1A81E05:     Set var_90 = Me.LblDummy
  loc_1A81E0B:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A81E1C:     Me.LblDummy.Unload var_94
  loc_1A81E32:     Set var_90 = Me.LblAt
  loc_1A81E38:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A81E49:     Me.LblAt.Unload var_94
  loc_1A81E5F:     Set var_90 = Me.TxtPer
  loc_1A81E65:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A81E76:     Me.TxtPer.Unload var_94
  loc_1A81E8C:     Set var_90 = Me.TxtGt
  loc_1A81E92:     Call 0.Method_Proc_210_87_1A83C180 (var_8C, var_94)
  loc_1A81EA3:     Me.TxtGt.Unload var_94
  loc_1A81EB2:   Next var_1B8 'Integer
  loc_1A81EB7: End If
  loc_1A81EBD: var_8A = (var_8A + 1)
  loc_1A81ED1: Me.FGrid.TabIndex = var_8A
  loc_1A81EDF: var_8A = (var_8A + 1)
  loc_1A81EEE: Set var_90 = Me.TxtGrid
  loc_1A81EF4: Call 0.Method_Proc_210_87_1A83C180 (0, var_94, var_8A)
  loc_1A81EFC: var_94.TabIndex = var_8A
  loc_1A81F0B: var_88.MoveFirst
  loc_1A81F24: If (var_88.RecordCount > 0) Then
  loc_1A81F27:   ' Referenced from: 1A83ABA
  loc_1A81F2D:   var_96 = var_88.EOF
  loc_1A81F36:   If Not(var_96) Then
  loc_1A81F75:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A81FA9:       Set var_150 = Me.LblDummy
  loc_1A81FAF:       Call 0.Method_Proc_210_87_1A83C188 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A81FC9:       If (var_8A > CVar(var_96)) Then
  loc_1A81FFE:         Set var_150 = Me.LblDummy
  loc_1A82004:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A82015:         Me.LblDummy.Load var_154
  loc_1A82028:       End If
  loc_1A82073:       var_154 = var_88.Fields.Item("SNo")
  loc_1A82088:       Set var_158 = Me.LblDummy
  loc_1A8208E:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A82096:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A820E5:       Set var_150 = Me.TxtPer
  loc_1A820EB:       Call 0.Method_Proc_210_87_1A83C188 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A82105:       If (var_154 > CVar(var_96)) Then
  loc_1A8213A:         Set var_150 = Me.TxtPer
  loc_1A82140:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A82151:         Me.TxtPer.Load var_154
  loc_1A82164:       End If
  loc_1A8219C:       Set var_150 = Me.TxtPer
  loc_1A821A2:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A821AA:       var_154.TabIndex = (var_8A + 1)
  loc_1A821C3:       var_8A = (var_8A + 1)
  loc_1A82207:       var_154 = var_88.Fields.Item("SNo")
  loc_1A82247:       Set var_158 = Me.TxtPer
  loc_1A8224D:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A82255:       var_15C.Visible = var_8A
  loc_1A822B4:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A82313:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8231C:         Set var_1A0 = Me.TxtPer
  loc_1A82322:         Call 0.Method_Proc_210_87_1A83C180 (CInt(True), var_1A4)
  loc_1A82364:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8236D:         Set var_150 = Me.TxtPer
  loc_1A82373:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A82397:         Set var_1B0 = Me.TxtPer
  loc_1A8239D:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A823A5:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A823CE:       End If
  loc_1A8240A:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A82469:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A82472:         Set var_150 = Me.TxtPer
  loc_1A82478:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A82493:         Set var_1A0 = Me.TxtPer
  loc_1A82499:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A824A1:         var_1A4.Left = var_154.Left
  loc_1A824C0:       End If
  loc_1A8251D:       var_15C = var_88.Fields.Item("SNo")
  loc_1A8256A:       Set var_1A0 = Me.TxtPer
  loc_1A82570:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A82578:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A825EB:       var_154 = var_88.Fields.Item("SNo")
  loc_1A82600:       Set var_158 = Me.TxtPer
  loc_1A82606:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A8260E:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A82665:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8269C:         Set var_150 = Me.TxtPer
  loc_1A826A2:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A826AA:         var_154.FontBold = True
  loc_1A826C0:       Else
  loc_1A826F4:         Set var_150 = Me.TxtPer
  loc_1A826FA:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82702:         var_154.FontBold = False
  loc_1A82715:       End If
  loc_1A8274E:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A82785:         Set var_150 = Me.TxtPer
  loc_1A8278B:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82793:         var_154.Enabled = False
  loc_1A827A9:       Else
  loc_1A827DD:         Set var_150 = Me.TxtPer
  loc_1A827E3:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A827EB:         var_154.Enabled = True
  loc_1A827FE:       End If
  loc_1A82802:       Set var_90 = Me.topCtrl1
  loc_1A82808:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A82821:       If (CStr() = "Browse") Then
  loc_1A82858:         Set var_150 = Me.TxtPer
  loc_1A8285E:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82866:         var_154.Enabled = False
  loc_1A82879:       End If
  loc_1A828B5:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A828EC:         Set var_150 = Me.TxtPer
  loc_1A828F2:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A828FA:         var_154.Enabled = False
  loc_1A8290D:       End If
  loc_1A8293E:       Set var_150 = Me.LblCap
  loc_1A82944:       Call 0.Method_Proc_210_87_1A83C188 (var_96)
  loc_1A8295E:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A82993:         Set var_150 = Me.LblCap
  loc_1A82999:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A829AA:         Me.LblCap.Load var_154
  loc_1A829BD:       End If
  loc_1A829F1:       Set var_150 = Me.LblCap
  loc_1A829F7:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A829FF:       var_154.Visible = True
  loc_1A82A6E:       Set var_150 = Me.TxtPer
  loc_1A82A74:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82A8F:       Set var_1A0 = Me.LblCap
  loc_1A82A95:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A82A9D:       var_1A4.Top = var_154.Top
  loc_1A82AF8:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A82B3C:         var_15C = var_88.Fields.Item("SNo")
  loc_1A82B57:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A82B60:         Set var_150 = Me.LblCap
  loc_1A82B66:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82B81:         Set var_1A0 = Me.LblCap
  loc_1A82B87:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A82B8F:         var_1A4.Left = var_154.Left
  loc_1A82BAE:       End If
  loc_1A82C0E:       Set var_158 = Me.LblCap
  loc_1A82C14:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A82C1C:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A82C9A:       Set var_158 = Me.LblCap
  loc_1A82CA0:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A82CA8:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A82D11:       var_154 = var_88.Fields.Item("SNo")
  loc_1A82D26:       Set var_158 = Me.LblDummy
  loc_1A82D2C:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A82D34:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A82D8B:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A82DC2:         Set var_150 = Me.LblCap
  loc_1A82DC8:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82DD0:         var_154.FontBold = True
  loc_1A82DE6:       Else
  loc_1A82E1A:         Set var_150 = Me.LblCap
  loc_1A82E20:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82E28:         var_154.FontBold = False
  loc_1A82E3B:       End If
  loc_1A82E6C:       Set var_150 = Me.LblAt
  loc_1A82E72:       Call 0.Method_Proc_210_87_1A83C188 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A82E8C:       If (var_154 > CVar(var_96)) Then
  loc_1A82EC1:         Set var_150 = Me.LblAt
  loc_1A82EC7:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A82ED8:         Me.LblAt.Load var_154
  loc_1A82EEB:       End If
  loc_1A82F2C:       var_154 = var_88.Fields.Item("SNo")
  loc_1A82F6C:       Set var_158 = Me.LblAt
  loc_1A82F72:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A82F7A:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A82FDE:       var_15C = var_88.Fields.Item("SNo")
  loc_1A82FF9:       Set var_150 = Me.TxtPer
  loc_1A82FFF:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8301A:       Set var_1A0 = Me.LblAt
  loc_1A83020:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A83028:       var_1A4.Top = var_154.Top
  loc_1A83080:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A830B7:         Set var_150 = Me.LblAt
  loc_1A830BD:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A830C5:         var_154.FontBold = True
  loc_1A830DB:       Else
  loc_1A8310F:         Set var_150 = Me.LblAt
  loc_1A83115:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8311D:         var_154.FontBold = False
  loc_1A83130:       End If
  loc_1A8317B:       var_154 = var_88.Fields.Item("SNo")
  loc_1A83190:       Set var_158 = Me.LblAt
  loc_1A83196:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A8319E:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A831F8:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A83257:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A83260:         Set var_150 = Me.LblAt
  loc_1A83266:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A83281:         Set var_1A0 = Me.LblAt
  loc_1A83287:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A8328F:         var_1A4.Left = var_154.Left
  loc_1A832AE:       End If
  loc_1A832DF:       Set var_150 = Me.TxtGt
  loc_1A832E5:       Call 0.Method_Proc_210_87_1A83C188 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A832FF:       If (var_154 > CVar(var_96)) Then
  loc_1A83334:         Set var_150 = Me.TxtGt
  loc_1A8333A:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A8334B:         Me.TxtGt.Load var_154
  loc_1A8335E:       End If
  loc_1A83396:       Set var_150 = Me.TxtGt
  loc_1A8339C:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A833A4:       var_154.TabIndex = (var_8A + 1)
  loc_1A833BD:       var_8A = (var_8A + 1)
  loc_1A833F4:       Set var_150 = Me.TxtGt
  loc_1A833FA:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A83402:       var_154.Visible = var_8A
  loc_1A83471:       Set var_150 = Me.TxtPer
  loc_1A83477:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83492:       Set var_1A0 = Me.TxtGt
  loc_1A83498:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A834A0:       var_1A4.Top = var_154.Top
  loc_1A834FB:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A8355A:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A83563:         Set var_150 = Me.TxtGt
  loc_1A83569:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83584:         Set var_1A0 = Me.TxtGt
  loc_1A8358A:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A83592:         var_1A4.Left = var_154.Left
  loc_1A835B1:       End If
  loc_1A8360E:       var_15C = var_88.Fields.Item("SNo")
  loc_1A8365B:       Set var_1A0 = Me.TxtGt
  loc_1A83661:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_15C.Value), var_1A4)
  loc_1A83669:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A836D9:       var_154 = var_88.Fields.Item("SNo")
  loc_1A836EE:       Set var_158 = Me.TxtGt
  loc_1A836F4:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_154.Value), var_15C)
  loc_1A836FC:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A83751:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A83788:         Set var_150 = Me.TxtGt
  loc_1A8378E:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83796:         var_154.FontBold = True
  loc_1A837AC:       Else
  loc_1A837E0:         Set var_150 = Me.TxtGt
  loc_1A837E6:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A837EE:         var_154.FontBold = False
  loc_1A83801:       End If
  loc_1A8383A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A83871:         Set var_150 = Me.TxtGt
  loc_1A83877:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8387F:         var_154.Enabled = False
  loc_1A83895:       Else
  loc_1A838C9:         Set var_150 = Me.TxtGt
  loc_1A838CF:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A838D7:         var_154.Enabled = True
  loc_1A838EA:       End If
  loc_1A8391F:       Set var_150 = Me.LblCap
  loc_1A83925:       Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8394B:       If (var_154.Tag = "SROFF") Then
  loc_1A83982:         Set var_150 = Me.TxtGt
  loc_1A83988:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83990:         var_154.Enabled = False
  loc_1A839A3:       End If
  loc_1A839A7:       Set var_90 = Me.topCtrl1
  loc_1A839AD:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A839C6:       If (CStr() = "Browse") Then
  loc_1A839FD:         Set var_150 = Me.TxtGt
  loc_1A83A03:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83A0B:         var_154.Enabled = False
  loc_1A83A1E:       End If
  loc_1A83A5A:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A83A7C:         var_94 = var_88.Fields.Item("SNo")
  loc_1A83A91:         Set var_150 = Me.TxtGt
  loc_1A83A97:         Call 0.Method_Proc_210_87_1A83C180 (CInt(var_94.Value), var_154)
  loc_1A83A9F:         var_154.Enabled = False
  loc_1A83AB2:       End If
  loc_1A83AB2:     End If
  loc_1A83AB5:     var_88.MoveNext
  loc_1A83ABA:     GoTo loc_1A81F27
  loc_1A83ABD:   End If
  loc_1A83ABD: End If
  loc_1A83ACE: Set var_90 = Me.Txt
  loc_1A83AD4: Call 0.Method_Proc_210_87_1A83C180 (CInt(&HF), var_94)
  loc_1A83ADC: var_94.TabIndex = (var_8A + 1)
  loc_1A83AF9: Set var_90 = Me.Txt
  loc_1A83AFF: Call 0.Method_Proc_210_87_1A83C180 (CInt(&HE), var_94)
  loc_1A83B07: var_94.TabIndex = (var_8A + 2)
  loc_1A83B24: Set var_90 = Me.Txt
  loc_1A83B2A: Call 0.Method_Proc_210_87_1A83C180 (CInt(&HD), var_94)
  loc_1A83B32: var_94.TabIndex = (var_8A + 3)
  loc_1A83B4F: Set var_90 = Me.Txt
  loc_1A83B55: Call 0.Method_Proc_210_87_1A83C180 (CInt(8), var_94)
  loc_1A83B5D: var_94.TabIndex = (var_8A + 4)
  loc_1A83B7A: Set var_90 = Me.Txt
  loc_1A83B80: Call 0.Method_Proc_210_87_1A83C180 (CInt(9), var_94)
  loc_1A83B88: var_94.TabIndex = (var_8A + 5)
  loc_1A83BA5: Set var_90 = Me.Txt
  loc_1A83BAB: Call 0.Method_Proc_210_87_1A83C180 (CInt(&HA), var_94)
  loc_1A83BB3: var_94.TabIndex = (var_8A + 6)
  loc_1A83BD0: Set var_90 = Me.Txt
  loc_1A83BD6: Call 0.Method_Proc_210_87_1A83C180 (CInt(&HB), var_94)
  loc_1A83BDE: var_94.TabIndex = (var_8A + 7)
  loc_1A83BFB: Set var_90 = Me.Txt
  loc_1A83C01: Call 0.Method_Proc_210_87_1A83C180 (CInt(&HC), var_94)
  loc_1A83C09: var_94.TabIndex = (var_8A + 8)
  loc_1A83C15: Exit Sub
End Sub

Public Sub Proc_210_88_167661C(arg_C) '167661C
  'Data Table: 56A9F4
  Dim var_A8 As Variant
  Dim var_B0 As String
  Dim var_14C As Variant
  Dim var_AC As String
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_114 As String
  Dim unk_56AA14 As Connection15
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_1B8 As Variant
  Dim var_180 As String
  Dim var_1A4 As Variant
  Dim var_1A8 As Fields15
  Dim var_9C As MSHFlexGrid
  Dim var_2DC As Double
  Dim var_214 As Variant
  Dim var_D0 As Variant
  Dim var_2E4 As Double
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2EC As Double
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_150 As TextBox
  Dim var_274 As Variant
  Dim var_134 As Variant
  Dim var_90 As Double
  Dim var_1A0 As Variant
  Dim var_1BC As TextBox
  Dim var_314 As TextBox
  loc_1674EC0: Set var_9C = Me.TxtGt
  loc_1674EC6: Call 0.Method_Proc_210_88_167661C8 (var_9E, var_86)
  loc_1674ED1: For var_A2 =  To var_9E: 1 = var_A2 'Integer
  loc_1674EE4:   Set var_9C = Me.TxtGt
  loc_1674EEA:   Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_1674EF2:   var_A8.Text = vbNullString
  loc_1674F0B:   Set var_9C = Me.LblCap
  loc_1674F11:   Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_1674F28:   var_B0 = MemVar_1F92070 & "DIS"
  loc_1674F3B:   If (var_A8.Tag = var_B0) Then
  loc_1674F43:     var_92 = CByte(var_86) 'Byte
  loc_1674F47:   End If
  loc_1674F7E:   Set var_9C = Me.LblCap
  loc_1674F84:   Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_B0, CVar("Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F92078 & "' and Code='"), var_134)
  loc_1674F8C:   -1 = var_A8.Tag
  loc_1674FB9:   unk_56AA14.Execute CStr(var_138 & Trim(CVar(var_B0)) & "'"), var_13C, 0
  loc_1674FC1:   var_150 = var_138.Fields
  loc_1674FC9:    = var_13C.Item()
  loc_1674FD8:   var_170 = Trim(CVar(var_150))
  loc_1674FE3:   var_1B8 = 0
  loc_1675015:   var_180 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='" & MemVar_1F92078 & "ST'"
  loc_167501E:   unk_56AA14.Execute var_180, var_1A0, -1
  loc_1675026:   var_1A4 = var_1A4.Fields
  loc_167502E:   var_1B8 = var_1A8.Item(var_1A8)
  loc_167507E:   If (var_1BC = Trim(CVar(var_1BC))) Then
  loc_1675086:     var_94 = CByte(var_86) 'Byte
  loc_1675090:     global_136 = var_86
  loc_1675093:   End If
  loc_1675096: Next var_A2 'Integer
  loc_16750AE: Me.FGCat.Rows = 1
  loc_16750BA: Set var_9C = Me.topCtrl1
  loc_16750C0: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16750D9: If (CStr() = "Add") Then
  loc_16750DC:   Call Proc_210_93_E001D8()
  loc_16750E1: End If
  loc_16750ED: Set var_9C = Me.TxtGt
  loc_16750F3: Call 0.Method_Proc_210_88_167661C8 (var_9E, var_86)
  loc_16750FE: For var_1F0 =  To var_9E: 2 = var_1F0 'Integer
  loc_1675111:   Set var_9C = Me.LblCap
  loc_1675117:   Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_1675141:   If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_1675151:     Set var_9C = Me.TxtGt
  loc_1675157:     Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_167515F:     var_A8.Text = vbNullString
  loc_1675175:     If (var_94 > var_92) Then
  loc_167519D:       For var_1F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1F4 'Integer
  loc_16751B0:         Set var_9C = Me.LblCap
  loc_16751B6:         Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_16751E0:         If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_16751E7:           var_100 = CVar(CLng(var_88)) 'Long
  loc_16751EF:           var_14C = CVar(CLng(&HD)) 'Long
  loc_1675209:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_167521A:           If (var_AC = "Y") Then
  loc_1675221:             var_100 = CVar(CLng(var_88)) 'Long
  loc_167523B:             Set var_9C = Me.TxtPer
  loc_1675241:             Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_1675249:             var_100 = var_A8.Text
  loc_1675258:             var_C0 = CVar(CStr(Val(var_AC))) 'String
  loc_1675260:             Set var_138 = Me.FGrid
  loc_1675266:             LateIdCallSt
  loc_167527D:           End If
  loc_167527D:         End If
  loc_1675281:         var_100 = CVar(CLng(var_88)) 'Long
  loc_1675289:         var_14C = CVar(CLng(3)) 'Long
  loc_16752B2:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_16752BA:         var_214 = CVar(CLng(4)) 'Long
  loc_16752E3:         var_234 = CVar(CLng(var_88)) 'Long
  loc_16752EB:         var_254 = CVar(CLng(&HB)) 'Long
  loc_1675314:         var_294 = CVar(CLng(var_88)) 'Long
  loc_167531C:         var_2B4 = CVar(CLng(&HC)) 'Long
  loc_1675345:         var_F0 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_1675355:         var_160 = CVar(CStr(Format(var_F0, "0.00"))) 'String
  loc_167535D:         Set var_13C = Me.FGrid
  loc_1675363:         LateIdCallSt
  loc_1675394:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_167539C:         var_214 = CVar(CLng(3)) 'Long
  loc_16753C5:         var_234 = CVar(CLng(var_88)) 'Long
  loc_16753CD:         var_254 = CVar(CLng(5)) 'Long
  loc_16753D6:         var_100 = CVar(CLng(var_88)) 'Long
  loc_16753DE:         var_14C = CVar(CLng(4)) 'Long
  loc_167540E:         Set var_138 = Me.FGrid
  loc_1675414:         LateIdCallSt
  loc_1675441:         var_14C = CVar(CLng(5)) 'Long
  loc_1675472:         Set var_A8 = Me.LblDummy
  loc_1675478:         Call 0.Method_Proc_210_88_167661C0 (var_86, var_138, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_14C, CVar(CLng(var_88)), var_138, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_1675480:         var_138.Caption = var_14C
  loc_167549C:         var_100 = CVar(CLng(var_88)) 'Long
  loc_16754A4:         var_14C = CVar(CLng(5)) 'Long
  loc_16754BE:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_16754CD:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_16754D5:         var_214 = CVar(CLng(&HC)) 'Long
  loc_16754DE:         Set var_A8 = Me.FGrid
  loc_16754FE:         var_234 = CVar(CLng(var_88)) 'Long
  loc_1675506:         var_254 = CVar(CLng(7)) 'Long
  loc_1675528:         var_2EC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1675537:         var_2B4 = CVar(CLng(8)) 'Long
  loc_167555C:         var_F0 = CVar(((Val(var_AC) - Val(CStr(var_A8.TextMatrix)))) + var_2EC)) 'Double
  loc_167557A:         LateIdCallSt
  loc_16755B4:         Set var_9C = Me.LblCap
  loc_16755BA:         Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(var_F0, "0.00"))), 1, 1)
  loc_16755C2:         var_2B4 = var_A8.Tag
  loc_16755E4:         If (var_AC = MemVar_1F92070 & "DIS") Then
  loc_16755F4:           Set var_9C = Me.TxtGt
  loc_16755FA:           Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_2EC)
  loc_1675602:           var_254 = var_A8.Text
  loc_1675616:           var_100 = CVar(CLng(var_88)) 'Long
  loc_1675640:           var_2E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_167565F:           var_D0 = CVar((Val(var_AC) + var_2E4)) 'Double
  loc_167567C:           Set var_13C = Me.TxtGt
  loc_1675682:           Call 0.Method_Proc_210_88_167661C0 (var_86, var_150, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_2E4)
  loc_167568A:           var_150.Text = CVar(CLng(&HC))
  loc_16756B0:         End If
  loc_16756B3:       Next var_1F4 'Integer
  loc_16756BB:     Else
  loc_16756E0:       For var_2F0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2F0 'Integer
  loc_16756F3:         Set var_9C = Me.LblCap
  loc_16756F9:         Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_1675723:         If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_167572A:           var_100 = CVar(CLng(var_88)) 'Long
  loc_1675732:           var_14C = CVar(CLng(&HD)) 'Long
  loc_167574C:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_167575D:           If (var_AC = "Y") Then
  loc_1675764:             var_100 = CVar(CLng(var_88)) 'Long
  loc_167577E:             Set var_9C = Me.TxtPer
  loc_1675784:             Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_167578C:             var_100 = var_A8.Text
  loc_167579B:             var_C0 = CVar(CStr(Val(var_AC))) 'String
  loc_16757A3:             Set var_138 = Me.FGrid
  loc_16757A9:             LateIdCallSt
  loc_16757C0:           End If
  loc_16757C0:         End If
  loc_16757FD:         Set var_A8 = Me.LblDummy
  loc_1675803:         Call 0.Method_Proc_210_88_167661C0 (var_86, var_138, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_167580B:         var_138.Caption = var_138
  loc_1675827:         var_100 = CVar(CLng(var_88)) 'Long
  loc_167582F:         var_14C = CVar(CLng(5)) 'Long
  loc_1675849:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_1675858:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_1675860:         var_214 = CVar(CLng(&HB)) 'Long
  loc_1675869:         Set var_A8 = Me.FGrid
  loc_1675882:         var_2E4 = Val(CStr(var_A8.TextMatrix)))
  loc_1675891:         var_274 = CVar(CLng(&HC)) 'Long
  loc_16758D4:         LateIdCallSt
  loc_1675908:         Set var_9C = Me.LblCap
  loc_167590E:         Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_AC) * var_2E4) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_1675916:         var_274 = var_A8.Tag
  loc_1675938:         If (var_AC = MemVar_1F92070 & "DIS") Then
  loc_1675948:           Set var_9C = Me.TxtGt
  loc_167594E:           Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_2E4)
  loc_1675956:           var_214 = var_A8.Text
  loc_1675963:           var_2DC = Val(var_AC)
  loc_167596A:           var_100 = CVar(CLng(var_88)) 'Long
  loc_1675994:           var_2E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16759B3:           var_D0 = CVar((var_2DC + var_2E4)) 'Double
  loc_16759D0:           Set var_13C = Me.TxtGt
  loc_16759D6:           Call 0.Method_Proc_210_88_167661C0 (var_86, var_150, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_2E4)
  loc_16759DE:           var_150.Text = CVar(CLng(&HC))
  loc_1675A04:         End If
  loc_1675A07:       Next var_2F0 'Integer
  loc_1675A0C:     End If
  loc_1675A0F:   Else
  loc_1675A1C:     Set var_9C = Me.TxtPer
  loc_1675A22:     Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_1675A2A:     var_9E = var_A8.Visible
  loc_1675A3C:     If (var_9E = &HFF) Then
  loc_1675A45:       Call Proc_210_90_10313A0(var_86)
  loc_1675A4D:       var_90 = var_2DC
  loc_1675A5D:       Set var_9C = Me.TxtPer
  loc_1675A63:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC)
  loc_1675A6B:       var_90 = var_A8.Text
  loc_1675A78:       var_2DC = Val(var_AC)
  loc_1675AB8:       Set var_138 = Me.TxtGt
  loc_1675ABE:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_13C, CStr(Format(CVar(((var_90 * var_2DC) / CDbl(&H64))), "0.00")), 1)
  loc_1675AC6:       var_13C.Text = 1
  loc_1675AF8:       Set var_9C = Me.LblDummy
  loc_1675AFE:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, CStr(var_90))
  loc_1675B06:       var_A8.Caption = var_2DC
  loc_1675B15:     End If
  loc_1675B15:   End If
  loc_1675B18: Next var_1F0 'Integer
  loc_1675B42: For var_2F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2F4 'Integer
  loc_1675B4C:   var_100 = CVar(CLng(var_86)) 'Long
  loc_1675B54:   var_14C = CVar(CLng(3)) 'Long
  loc_1675B6E:   var_AC = CStr(Me.FGrid.TextMatrix))
  loc_1675B7D:   var_1B8 = CVar(CLng(var_86)) 'Long
  loc_1675B85:   var_214 = CVar(CLng(4)) 'Long
  loc_1675B8E:   Set var_A8 = Me.FGrid
  loc_1675BAE:   var_254 = CVar(CLng(var_86)) 'Long
  loc_1675BB6:   var_274 = CVar(CLng(5)) 'Long
  loc_1675BF5:   LateIdCallSt
  loc_1675C28:   Set var_9C = Me.TxtGt
  loc_1675C2E:   Call 0.Method_Proc_210_88_167661C0 (1, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar((Val(var_AC) * Val(CStr(var_A8.TextMatrix))))), "0.00"))), 1, 1)
  loc_1675C36:   var_274 = var_A8.Text
  loc_1675C43:   var_2DC = Val(var_AC)
  loc_1675C74:   var_2E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1675C93:   var_D0 = CVar((var_2DC + var_2E4)) 'Double
  loc_1675CAF:   Set var_13C = Me.TxtGt
  loc_1675CB5:   Call 0.Method_Proc_210_88_167661C0 (1, var_150, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_2E4, CVar(CLng(5)))
  loc_1675CBD:   var_150.Text = CVar(CLng(var_86))
  loc_1675CE6: Next var_2F4 'Integer
  loc_1675CFE: Me.FGCat.Rows = 1
  loc_1675D2B: For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2F8 'Integer
  loc_1675D35:   var_100 = CVar(CLng(var_86)) 'Long
  loc_1675D3D:   var_14C = CVar(CLng(&H10)) 'Long
  loc_1675D5C:   var_1B8 = CVar(CLng(var_86)) 'Long
  loc_1675D64:   var_214 = CVar(CLng(4)) 'Long
  loc_1675DB7:   var_2EC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1675DF5:   Call Proc_210_94_1836C1C(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_2EC)), "0.00")), 1, 1, var_2EC, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_1675E1E: Next var_2F8 'Integer
  loc_1675E27: Set var_9C = Me.topCtrl1
  loc_1675E2D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1675E41: Set var_A8 = Me.topCtrl1
  loc_1675E47: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_1675E6D: If ( Or (CStr() = "Edit")) Then
  loc_1675E7C:   Set var_9C = Me.TxtGt
  loc_1675E82:   Call 0.Method_Proc_210_88_167661C8 (var_9E, var_86)
  loc_1675E8D:   For var_2FC =  To var_9E: 2 = var_2FC 'Integer
  loc_1675EA0:     Set var_9C = Me.TxtPer
  loc_1675EA6:     Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_1675EAE:     var_9E = var_A8.Visible
  loc_1675EC6:     Set var_138 = Me.LblCap
  loc_1675ECC:     Call 0.Method_Proc_210_88_167661C0 (var_86, var_13C)
  loc_1675ED4:     var_AC = var_13C.Tag
  loc_1675EFB:     If ((var_9E = &HFF) And (var_AC = MemVar_1F92070 & "SCH")) Then
  loc_1675F04:       Call Proc_210_90_10313A0(var_86)
  loc_1675F0C:       var_90 = var_2DC
  loc_1675F1C:       Set var_9C = Me.TxtPer
  loc_1675F22:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC)
  loc_1675F2A:       var_90 = var_A8.Text
  loc_1675F37:       var_2DC = Val(var_AC)
  loc_1675F77:       Set var_138 = Me.TxtGt
  loc_1675F7D:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_13C, CStr(Format(CVar(((var_90 * var_2DC) / CDbl(&H64))), "0.00")), 1)
  loc_1675F85:       var_13C.Text = 1
  loc_1675FB7:       Set var_9C = Me.LblDummy
  loc_1675FBD:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, CStr(var_90))
  loc_1675FC5:       var_A8.Caption = var_2DC
  loc_1675FD4:     End If
  loc_1675FD7:   Next var_2FC 'Integer
  loc_1675FDC: End If
  loc_1675FFB: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1676011:   Me.FGCat.FixedRows = 1
  loc_1676019: End If
  loc_1676047: For var_300 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_300 'Integer
  loc_1676059:   Set var_9C = Me.TxtGt
  loc_167605F:   Call 0.Method_Proc_210_88_167661C8 (var_9E, var_86, 1)
  loc_167606A:   For var_304 = CDbl(0) To var_9E: 0 = var_304 'Integer
  loc_167607D:     Set var_9C = Me.LblCap
  loc_1676083:     Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_167608B:     var_AC = var_A8.Tag
  loc_1676099:     var_D0 = Trim(CVar(var_AC))
  loc_16760A5:     var_100 = CVar(CLng(var_88)) 'Long
  loc_16760ED:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_16760FD:       Set var_9C = Me.TxtGt
  loc_1676103:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC)
  loc_167610B:       var_100 = var_A8.Text
  loc_1676118:       var_2DC = Val(var_AC)
  loc_167611F:       var_100 = CVar(CLng(var_88)) 'Long
  loc_1676149:       var_2E4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1676168:       var_D0 = CVar((var_2DC + var_2E4)) 'Double
  loc_1676177:       var_114 = CStr(Format(var_D0, "0.00"))
  loc_1676185:       Set var_13C = Me.TxtGt
  loc_167618B:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_150, var_114, 1, 1, var_2E4)
  loc_1676193:       var_150.Text = CVar(CLng(6))
  loc_16761B9:     End If
  loc_16761BC:   Next var_304 'Integer
  loc_16761C4: Next var_300 'Integer
  loc_16761D5: Set var_9C = Me.TxtGt
  loc_16761DB: Call 0.Method_Proc_210_88_167661C8 (var_9E, var_86)
  loc_16761E6: For var_308 =  To var_9E: 2 = var_308 'Integer
  loc_16761F9:   Set var_9C = Me.LblCap
  loc_16761FF:   Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8)
  loc_1676229:   If (var_A8.Tag = MemVar_1F92070 & "ROFF") Then
  loc_1676232:     Call Proc_210_90_10313A0(var_86)
  loc_167623A:     var_90 = var_2DC
  loc_167624F:     Set var_9C = Me.LblDummy
  loc_1676255:     Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, CStr(var_90))
  loc_167625D:     var_A8.Caption = var_90
  loc_1676275:     var_AC = "U"
  loc_1676286:     Proc_6_142_14A55B0(var_90, CByte(0), var_AC)
  loc_16762B5:     var_B0 = CStr(Format(CVar(2), "0.00"))
  loc_16762C3:     Set var_9C = Me.TxtGt
  loc_16762C9:     Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_B0, 1)
  loc_16762D1:     var_A8.Text = 1
  loc_16762F0:   Else
  loc_16762F7:     If (var_86 <> arg_C) Then
  loc_1676307:       Set var_9C = Me.LblCap
  loc_167630D:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, var_AC)
  loc_1676315:       var_2DC = var_A8.Tag
  loc_1676347:       Set var_138 = Me.LblCap
  loc_167634D:       Call 0.Method_Proc_210_88_167661C0 (var_86, var_13C, var_B0)
  loc_1676355:       (Trim(CVar(var_AC)) = CVar(MemVar_1F92070 & "TOT")) = var_13C.Tag
  loc_167639A:       If CBool(var_2DC Or (Trim(CVar(var_B0)) = CVar(MemVar_1F92070 & "NET"))) Then
  loc_16763A3:         Call Proc_210_90_10313A0(var_86)
  loc_16763DD:         Set var_9C = Me.TxtGt
  loc_16763E3:         Call 0.Method_Proc_210_88_167661C0 (var_86, var_A8, CStr(Format(CVar(var_2DC), "0.00")))
  loc_16763EB:         var_A8.Text = 1
  loc_1676403:       End If
  loc_1676403:     End If
  loc_1676403:   End If
  loc_1676406: Next var_308 'Integer
  loc_1676412: Set var_9C = Me.TxtGt
  loc_1676418: Call 0.Method_Proc_210_88_167661C8 (var_9E)
  loc_167642A: Set var_A8 = Me.TxtGt
  loc_1676430: Call 0.Method_Proc_210_88_167661C0 (var_9E, var_138)
  loc_167644F: Set var_13C = Me.TextGt
  loc_1676455: Call 0.Method_Proc_210_88_167661C8 (var_30A)
  loc_1676467: Set var_150 = Me.TextGt
  loc_167646D: Call 0.Method_Proc_210_88_167661C0 (var_30A, var_1A4)
  loc_1676482: var_2E4 = Val(var_1A4.Text)
  loc_1676493: Set var_1A8 = Me.Txt
  loc_1676499: Call 0.Method_Proc_210_88_167661C0 (CInt(8), var_1BC, var_114)
  loc_16764AE: var_2EC = Val(var_114)
  loc_16764D1: var_C0 = CVar(((Val(var_138.Text) + var_1BC.Text) - var_2EC)) 'Double
  loc_16764EF: Set var_310 = Me.Txt
  loc_16764F5: Call 0.Method_Proc_210_88_167661C0 (CInt(&H14), var_314, CStr(Format(CVar(Val(var_138.Text)), "0.00")), 1)
  loc_16764FD: var_314.Text = 1
  loc_1676534: Set var_9C = Me.TxtGt
  loc_167653A: Call 0.Method_Proc_210_88_167661C8 (var_9E, var_2EC)
  loc_167654C: Set var_A8 = Me.TxtGt
  loc_1676552: Call 0.Method_Proc_210_88_167661C0 (var_9E, var_138)
  loc_1676567: var_2DC = Val(var_138.Text)
  loc_1676571: Set var_13C = Me.TextGt
  loc_1676577: Call 0.Method_Proc_210_88_167661C8 (var_30A, var_2DC)
  loc_1676589: Set var_150 = Me.TextGt
  loc_167658F: Call 0.Method_Proc_210_88_167661C0 (var_30A, var_1A4)
  loc_16765C3: var_C0 = CVar((var_2DC + Val(var_1A4.Text))) 'Double
  loc_16765E1: Set var_1A8 = Me.Txt
  loc_16765E7: Call 0.Method_Proc_210_88_167661C0 (CInt(&H19), var_1BC, CStr(Format(CVar(var_2DC), "0.00")), 1)
  loc_16765EF: var_1BC.Text = 1
  loc_1676619: Exit Sub
End Sub

Public Sub Proc_210_89_14E0520(arg_C) '14E0520
  'Data Table: 56A9F4
  Dim var_A0 As Variant
  Dim var_114 As Double
  Dim var_AC As Variant
  Dim var_11C As Double
  Dim var_D0 As Variant
  Dim var_10C As String
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_164 As Variant
  Dim var_A4 As String
  Dim var_C0 As Variant
  Dim unk_56AA14 As Connection15
  Dim var_A8 As Variant
  Dim var_1C8 As Integer
  Dim var_194 As String
  Dim var_1B8 As Fields15
  Dim var_90 As Double
  Dim var_F0 As Variant
  Dim var_104 As TextBox
  Dim var_1B4 As Variant
  Dim var_1CC As TextBox
  Dim var_22C As Double
  Dim var_224 As TextBox
  loc_14DF796: Set var_9C = Me.Txt
  loc_14DF79C: Call 0.Method_Proc_210_89_14E05200 (CInt(&H11), var_A0)
  loc_14DF7B1: var_114 = Val(var_A0.Text)
  loc_14DF7C2: Set var_A8 = Me.Txt
  loc_14DF7C8: Call 0.Method_Proc_210_89_14E05200 (CInt(&H12), var_AC)
  loc_14DF818: Set var_104 = Me.TextGt
  loc_14DF81E: Call 0.Method_Proc_210_89_14E05200 (1, var_108, CStr(Format(CVar((var_114 * Val(var_AC.Text))), "0.00")), 1)
  loc_14DF826: var_108.Text = 1
  loc_14DF858: Set var_9C = Me.TextGt
  loc_14DF85E: Call 0.Method_Proc_210_89_14E05208 (var_11E, var_86, 1)
  loc_14DF869: For var_122 = var_114 To var_11E: var_11C = var_122 'Integer
  loc_14DF87C:   Set var_9C = Me.LableCap
  loc_14DF882:   Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DF899:   var_B0 = MemVar_1F92070 & "DIS"
  loc_14DF8AC:   If (var_A0.Tag = var_B0) Then
  loc_14DF8B4:     var_92 = CByte(var_86) 'Byte
  loc_14DF8B8:   End If
  loc_14DF8EF:   Set var_9C = Me.LableCap
  loc_14DF8F5:   Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_B0, CVar("Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F92078 & "' and Code='"), var_154, -1)
  loc_14DF92A:   unk_56AA14.Execute CStr(var_AC & Trim(CVar(var_B0)) & "'"), 0, var_104
  loc_14DF932:   var_114 = var_A0.Tag.Fields
  loc_14DF93A:    = var_AC.Item()
  loc_14DF949:   var_184 = Trim(CVar(var_104))
  loc_14DF954:   var_1C8 = 0
  loc_14DF986:   var_194 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='" & MemVar_1F92078 & "ST'"
  loc_14DF98F:   unk_56AA14.Execute var_194, var_1B4, -1
  loc_14DF997:   var_108 = var_108.Fields
  loc_14DF99F:   var_1C8 = var_1B8.Item(var_1B8)
  loc_14DF9EF:   If (var_1CC = Trim(CVar(var_1CC))) Then
  loc_14DF9F7:     var_94 = CByte(var_86) 'Byte
  loc_14DFA01:     global_136 = var_86
  loc_14DFA04:   End If
  loc_14DFA07: Next var_122 'Integer
  loc_14DFA18: Set var_9C = Me.TextGt
  loc_14DFA1E: Call 0.Method_Proc_210_89_14E05208 (var_11E, var_86)
  loc_14DFA29: For var_200 =  To var_11E: 2 = var_200 'Integer
  loc_14DFA3C:   Set var_9C = Me.LableCap
  loc_14DFA42:   Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DFA6C:   If (var_A0.Tag = MemVar_1F92070 & "DIS") Then
  loc_14DFA79:     If (var_94 > var_92) Then
  loc_14DFA89:       Set var_9C = Me.TextPer
  loc_14DFA8F:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DFA97:       var_11E = var_A0.Visible
  loc_14DFAA9:       If (var_11E = &HFF) Then
  loc_14DFAB9:         Set var_9C = Me.TextPer
  loc_14DFABF:         Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DFAC7:         var_A4 = var_A0.Text
  loc_14DFAE3:         If (CDbl(Val(var_A4)) <> CDbl(0)) Then
  loc_14DFAEC:           Call Proc_210_91_103162C(var_86)
  loc_14DFAF4:           var_90 = var_114
  loc_14DFB04:           Set var_9C = Me.TextPer
  loc_14DFB0A:           Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_A4)
  loc_14DFB12:           var_90 = var_A0.Text
  loc_14DFB1F:           var_114 = Val(var_A4)
  loc_14DFB5F:           Set var_A8 = Me.TextGt
  loc_14DFB65:           Call 0.Method_Proc_210_89_14E05200 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14DFB6D:           var_AC.Text = 1
  loc_14DFB9F:           Set var_9C = Me.LableDummy
  loc_14DFBA5:           Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, CStr(var_90))
  loc_14DFBAD:           var_A0.Caption = var_114
  loc_14DFBBF:         Else
  loc_14DFBCC:           Set var_9C = Me.TextGt
  loc_14DFBD2:           Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DFBDA:           var_A4 = var_A0.Text
  loc_14DFC1F:           Set var_A8 = Me.TextGt
  loc_14DFC25:           Call 0.Method_Proc_210_89_14E05200 (var_86, var_AC, CStr(Format(CVar(Val(var_A4)), "0.00")), 1)
  loc_14DFC2D:           var_AC.Text = 1
  loc_14DFC4D:         End If
  loc_14DFC50:       Else
  loc_14DFC5D:         Set var_9C = Me.LableCap
  loc_14DFC63:         Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_A4)
  loc_14DFC6B:         var_114 = var_A0.Tag
  loc_14DFC8D:         If (var_A4 = MemVar_1F92070 & "DIS") Then
  loc_14DFC9D:           Set var_9C = Me.TextGt
  loc_14DFCA3:           Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DFCAB:           var_A4 = var_A0.Text
  loc_14DFCF0:           Set var_A8 = Me.TextGt
  loc_14DFCF6:           Call 0.Method_Proc_210_89_14E05200 (var_86, var_AC, CStr(Format(CVar(Val(var_A4)), "0.00")), 1)
  loc_14DFCFE:           var_AC.Text = 1
  loc_14DFD1E:         End If
  loc_14DFD1E:       End If
  loc_14DFD21:     Else
  loc_14DFD2E:       Set var_9C = Me.LableCap
  loc_14DFD34:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_A4)
  loc_14DFD3C:       var_114 = var_A0.Tag
  loc_14DFD5E:       If (var_A4 = MemVar_1F92070 & "DIS") Then
  loc_14DFD6E:         Set var_9C = Me.TextGt
  loc_14DFD74:         Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DFD7C:         var_A4 = var_A0.Text
  loc_14DFD89:         var_114 = Val(var_A4)
  loc_14DFD90:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14DFD98:         var_164 = CVar(CLng(&HC)) 'Long
  loc_14DFDBA:         var_11C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14DFDD9:         var_F0 = CVar((var_114 + var_11C)) 'Double
  loc_14DFDE8:         var_10C = CStr(Format("0.00", "0.00"))
  loc_14DFDF6:         Set var_AC = Me.TextGt
  loc_14DFDFC:         Call 0.Method_Proc_210_89_14E05200 (var_86, var_104, var_10C, 1, 1)
  loc_14DFE04:         var_104.Text = var_11C
  loc_14DFE2A:       End If
  loc_14DFE2A:     End If
  loc_14DFE2D:   Else
  loc_14DFE3A:     Set var_9C = Me.TextPer
  loc_14DFE40:     Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_11E, var_164)
  loc_14DFE48:     var_C0 = var_A0.Visible
  loc_14DFE5A:     If (var_11E = &HFF) Then
  loc_14DFE63:       Call Proc_210_91_103162C(var_86, var_114)
  loc_14DFE6B:       var_90 = var_114
  loc_14DFE7B:       Set var_9C = Me.TextPer
  loc_14DFE81:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_A4)
  loc_14DFE89:       var_90 = var_A0.Text
  loc_14DFE96:       var_114 = Val(var_A4)
  loc_14DFED6:       Set var_A8 = Me.TextGt
  loc_14DFEDC:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14DFEE4:       var_AC.Text = 1
  loc_14DFF16:       Set var_9C = Me.LableDummy
  loc_14DFF1C:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, CStr(var_90))
  loc_14DFF24:       var_A0.Caption = var_114
  loc_14DFF33:     End If
  loc_14DFF33:   End If
  loc_14DFF36: Next var_200 'Integer
  loc_14DFF3F: Set var_9C = Me.topCtrl1
  loc_14DFF45: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14DFF5E: If (CStr() = "Add") Then
  loc_14DFF6D:   Set var_9C = Me.TextGt
  loc_14DFF73:   Call 0.Method_Proc_210_89_14E05208 (var_11E, var_86)
  loc_14DFF7E:   For var_214 =  To var_11E: 2 = var_214 'Integer
  loc_14DFF91:     Set var_9C = Me.TextPer
  loc_14DFF97:     Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14DFF9F:     var_11E = var_A0.Visible
  loc_14DFFB7:     Set var_A8 = Me.LableCap
  loc_14DFFBD:     Call 0.Method_Proc_210_89_14E05200 (var_86, var_AC)
  loc_14DFFC5:     var_A4 = var_AC.Tag
  loc_14DFFEC:     If ((var_11E = &HFF) And (var_A4 = MemVar_1F92070 & "SCH")) Then
  loc_14DFFF5:       Call Proc_210_91_103162C(var_86)
  loc_14DFFFD:       var_90 = var_114
  loc_14E000D:       Set var_9C = Me.TextPer
  loc_14E0013:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_A4)
  loc_14E001B:       var_90 = var_A0.Text
  loc_14E0028:       var_114 = Val(var_A4)
  loc_14E0068:       Set var_A8 = Me.TextGt
  loc_14E006E:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14E0076:       var_AC.Text = 1
  loc_14E00A8:       Set var_9C = Me.LableDummy
  loc_14E00AE:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, CStr(var_90))
  loc_14E00B6:       var_A0.Caption = var_114
  loc_14E00C5:     End If
  loc_14E00C8:   Next var_214 'Integer
  loc_14E00CD: End If
  loc_14E00D9: Set var_9C = Me.TextGt
  loc_14E00DF: Call 0.Method_Proc_210_89_14E05208 (var_11E, var_86)
  loc_14E00EA: For var_218 =  To var_11E: 2 = var_218 'Integer
  loc_14E00FD:   Set var_9C = Me.LableCap
  loc_14E0103:   Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0)
  loc_14E012D:   If (var_A0.Tag = MemVar_1F92070 & "ROFF") Then
  loc_14E0136:     Call Proc_210_91_103162C(var_86)
  loc_14E013E:     var_90 = var_114
  loc_14E0153:     Set var_9C = Me.LableDummy
  loc_14E0159:     Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, CStr(var_90))
  loc_14E0161:     var_A0.Caption = var_90
  loc_14E0179:     var_A4 = "U"
  loc_14E018A:     Proc_6_142_14A55B0(var_90, CByte(0), var_A4)
  loc_14E01B9:     var_B0 = CStr(Format(CVar(2), "0.00"))
  loc_14E01C7:     Set var_9C = Me.TextGt
  loc_14E01CD:     Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_B0, 1)
  loc_14E01D5:     var_A0.Text = 1
  loc_14E01F4:   Else
  loc_14E01FB:     If (var_86 <> arg_C) Then
  loc_14E020B:       Set var_9C = Me.LableCap
  loc_14E0211:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, var_A4)
  loc_14E0219:       var_114 = var_A0.Tag
  loc_14E024B:       Set var_A8 = Me.LableCap
  loc_14E0251:       Call 0.Method_Proc_210_89_14E05200 (var_86, var_AC, var_B0)
  loc_14E0259:       (Trim(CVar(var_A4)) = CVar(MemVar_1F92070 & "TOT")) = var_AC.Tag
  loc_14E029E:       If CBool(var_114 Or (Trim(CVar(var_B0)) = CVar(MemVar_1F92070 & "NET"))) Then
  loc_14E02A7:         Call Proc_210_91_103162C(var_86)
  loc_14E02E1:         Set var_9C = Me.TextGt
  loc_14E02E7:         Call 0.Method_Proc_210_89_14E05200 (var_86, var_A0, CStr(Format(CVar(var_114), "0.00")))
  loc_14E02EF:         var_A0.Text = 1
  loc_14E0307:       End If
  loc_14E0307:     End If
  loc_14E0307:   End If
  loc_14E030A: Next var_218 'Integer
  loc_14E0316: Set var_9C = Me.TxtGt
  loc_14E031C: Call 0.Method_Proc_210_89_14E05208 (var_11E)
  loc_14E032E: Set var_A0 = Me.TxtGt
  loc_14E0334: Call 0.Method_Proc_210_89_14E05200 (var_11E, var_A8)
  loc_14E0353: Set var_AC = Me.TextGt
  loc_14E0359: Call 0.Method_Proc_210_89_14E05208 (var_21A)
  loc_14E036B: Set var_104 = Me.TextGt
  loc_14E0371: Call 0.Method_Proc_210_89_14E05200 (var_21A, var_108)
  loc_14E0386: var_11C = Val(var_108.Text)
  loc_14E0397: Set var_1B8 = Me.Txt
  loc_14E039D: Call 0.Method_Proc_210_89_14E05200 (CInt(8), var_1CC, var_10C)
  loc_14E03B2: var_22C = Val(var_10C)
  loc_14E03D5: var_D0 = CVar(((Val(var_A8.Text) + var_1CC.Text) - var_22C)) 'Double
  loc_14E03F3: Set var_220 = Me.Txt
  loc_14E03F9: Call 0.Method_Proc_210_89_14E05200 (CInt(&H14), var_224, CStr(Format(CVar(Val(var_A8.Text)), "0.00")), 1)
  loc_14E0401: var_224.Text = 1
  loc_14E0438: Set var_9C = Me.TxtGt
  loc_14E043E: Call 0.Method_Proc_210_89_14E05208 (var_11E, var_22C)
  loc_14E0450: Set var_A0 = Me.TxtGt
  loc_14E0456: Call 0.Method_Proc_210_89_14E05200 (var_11E, var_A8)
  loc_14E046B: var_114 = Val(var_A8.Text)
  loc_14E0475: Set var_AC = Me.TextGt
  loc_14E047B: Call 0.Method_Proc_210_89_14E05208 (var_21A, var_114)
  loc_14E048D: Set var_104 = Me.TextGt
  loc_14E0493: Call 0.Method_Proc_210_89_14E05200 (var_21A, var_108)
  loc_14E04C7: var_D0 = CVar((var_114 + Val(var_108.Text))) 'Double
  loc_14E04E5: Set var_1B8 = Me.Txt
  loc_14E04EB: Call 0.Method_Proc_210_89_14E05200 (CInt(&H19), var_1CC, CStr(Format(CVar(var_114), "0.00")), 1)
  loc_14E04F3: var_1CC.Text = 1
  loc_14E051D: Exit Sub
End Sub

Public Sub Proc_210_90_10313A0(arg_C) '10313A0
  'Data Table: 56A9F4
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_1031181: Set var_9C = Me.TxtGt
  loc_1031187: Call 0.Method_Proc_210_90_10313A00 (arg_C, var_A0)
  loc_10311A6: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_10311C1: If (Len(var_90) > 0) Then
  loc_10311DC:   var_A4 = CStr(Left(var_90, 1))
  loc_10311F6:   Set var_9C = Me.TxtGt
  loc_10311FC:   Call 0.Method_Proc_210_90_10313A00 (CInt(Val(var_A4)), var_A0)
  loc_1031204:   var_D8 = var_A0.Text
  loc_1031211:   var_8C = Val(var_D8)
  loc_1031246:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1031250:   ' Referenced from: 1031395
  loc_103125A:   If (Len(var_90) > 0) Then
  loc_103129D:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_10312E7:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_10312FE:     Set var_9C = Me.TxtGt
  loc_1031304:     Call 0.Method_Proc_210_90_10313A00 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_1031319:     var_E0 = Val(var_A4)
  loc_1031330:     Set var_F4 = Me.TxtGt
  loc_1031336:     Call 0.Method_Proc_210_90_10313A00 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_103134C:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_103135F:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_103136E:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_1031373:     var_8C = CSng(var_138)
  loc_1031395:     GoTo loc_1031250
  loc_1031398:   End If
  loc_1031398: End If
  loc_1031398: Proc_210_90_10313A0 = var_8C
End Sub

Public Sub Proc_210_91_103162C(arg_C) '103162C
  'Data Table: 56A9F4
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_103140D: Set var_9C = Me.TextGt
  loc_1031413: Call 0.Method_Proc_210_91_103162C0 (arg_C, var_A0)
  loc_1031432: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_103144D: If (Len(var_90) > 0) Then
  loc_1031468:   var_A4 = CStr(Left(var_90, 1))
  loc_1031482:   Set var_9C = Me.TextGt
  loc_1031488:   Call 0.Method_Proc_210_91_103162C0 (CInt(Val(var_A4)), var_A0)
  loc_1031490:   var_D8 = var_A0.Text
  loc_103149D:   var_8C = Val(var_D8)
  loc_10314D2:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_10314DC:   ' Referenced from: 1031621
  loc_10314E6:   If (Len(var_90) > 0) Then
  loc_1031529:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1031573:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_103158A:     Set var_9C = Me.TextGt
  loc_1031590:     Call 0.Method_Proc_210_91_103162C0 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_10315A5:     var_E0 = Val(var_A4)
  loc_10315BC:     Set var_F4 = Me.TextGt
  loc_10315C2:     Call 0.Method_Proc_210_91_103162C0 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_10315D8:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_10315EB:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_10315FA:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_10315FF:     var_8C = CSng(var_138)
  loc_1031621:     GoTo loc_10314DC
  loc_1031624:   End If
  loc_1031624: End If
  loc_1031624: Proc_210_91_103162C = var_8C
End Sub

Public Sub Proc_210_92_10A5068
  'Data Table: 56A9F4
  Dim var_9C As Variant
  loc_10A4DA0: Set var_90 = Me.TxtGt
  loc_10A4DA6: Call 0.Method_Proc_210_92_10A50688 (var_92, var_86)
  loc_10A4DB1: For var_96 =  To var_92: 1 = var_96 'Integer
  loc_10A4DC4:   Set var_90 = Me.LblCap
  loc_10A4DCA:   Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4DE9:   If (var_9C.Tag = "STOT") Then
  loc_10A4DF9:     Set var_90 = Me.TxtGt
  loc_10A4DFF:     Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4E07:     var_9C.Text = vbNullString
  loc_10A4E16:   Else
  loc_10A4E23:     Set var_90 = Me.LblCap
  loc_10A4E29:     Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4E48:     If (var_9C.Tag = "SDIS") Then
  loc_10A4E58:       Set var_90 = Me.TxtGt
  loc_10A4E5E:       Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4E66:       var_9C.Text = vbNullString
  loc_10A4E75:     Else
  loc_10A4E82:       Set var_90 = Me.LblCap
  loc_10A4E88:       Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4EA7:       If (var_9C.Tag = "SST") Then
  loc_10A4EB7:         Set var_90 = Me.TxtGt
  loc_10A4EBD:         Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4EC5:         var_9C.Text = vbNullString
  loc_10A4ED4:       Else
  loc_10A4EE1:         Set var_90 = Me.LblCap
  loc_10A4EE7:         Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4F06:         If (var_9C.Tag = "SSTX") Then
  loc_10A4F09:           GoTo loc_10A505E
  loc_10A4F0C:         End If
  loc_10A4F19:         Set var_90 = Me.LblCap
  loc_10A4F1F:         Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4F3E:         If (var_9C.Tag = "SSCH") Then
  loc_10A4F41:           GoTo loc_10A505E
  loc_10A4F44:         End If
  loc_10A4F51:         Set var_90 = Me.LblCap
  loc_10A4F57:         Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4F76:         If (var_9C.Tag = "SADD") Then
  loc_10A4F86:           Set var_90 = Me.TxtGt
  loc_10A4F8C:           Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4F94:           var_9C.Text = vbNullString
  loc_10A4FA3:         Else
  loc_10A4FB0:           Set var_90 = Me.LblCap
  loc_10A4FB6:           Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4FD5:           If (var_9C.Tag = "SDED") Then
  loc_10A4FE5:             Set var_90 = Me.TxtGt
  loc_10A4FEB:             Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A4FF3:             var_9C.Text = vbNullString
  loc_10A5002:           Else
  loc_10A500F:             Set var_90 = Me.LblCap
  loc_10A5015:             Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A5034:             If (var_9C.Tag = "SNET") Then
  loc_10A5044:               Set var_90 = Me.TxtGt
  loc_10A504A:               Call 0.Method_Proc_210_92_10A50680 (var_86, var_9C)
  loc_10A5052:               var_9C.Text = vbNullString
  loc_10A505E:             End If
  loc_10A505E:           End If
  loc_10A505E:           ' Referenced from:       10A4F41
  loc_10A505E:           ' Referenced from:       10A4F09
  loc_10A505E:         End If
  loc_10A505E:       End If
  loc_10A505E:     End If
  loc_10A505E:   End If
  loc_10A5061: Next var_96 'Integer
  loc_10A5066: Exit Sub
End Sub

Public Sub Proc_210_93_E001D8
  'Data Table: 56A9F4
  Dim arg_7FFF As Double
  loc_E001D4: Exit Sub
  loc_E001D5: arg_7FFF = 
End Sub

Public Sub Proc_210_94_1836C1C(arg_C, arg_10, arg_14) '1836C1C
  'Data Table: 56A9F4
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_56AA14 As Connection15
  Dim var_D8 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_110 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_C0 As Recordset15
  Dim var_178 As Variant
  Dim var_154 As Variant
  Dim var_18C As Variant
  Dim var_1A0 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_D0 As Double
  Dim var_208 As Double
  Dim var_174 As Variant
  Dim var_E0 As Recordset15
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_1FC As Double
  Dim var_9C As Double
  Dim var_1C4 As Variant
  loc_18347F9: unk_56AA14.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "' And DeskCode='" & global_56 & "'", var_110, -1
  loc_1834804: Set var_D8 = var_114
  loc_183482C: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_183483C: unk_56AA14.Execute var_E4 & "'", var_110, -1
  loc_1834847: Set var_8C = var_114
  loc_183486B: If (var_D8.RecordCount > 0) Then
  loc_1834883:   var_114 = var_D8.Fields
  loc_18348AA:   If (var_114 <> Proc_6_38_E68A98(CVar(var_114.Item("RestCode")), global_56)) Then
  loc_18348AF:     var_DA = &HFF
  loc_18348B5:   Else
  loc_18348B7:     var_DA = 0
  loc_18348BA:   End If
  loc_18348BD: Else
  loc_18348BF:   var_DA = 0
  loc_18348C2: End If
  loc_18348C5: var_94 = arg_14
  loc_18348CA: var_86 = 1
  loc_18348D0: var_A8 = var_94
  loc_18348D6: var_B0 = var_94
  loc_18348DC: var_B8 = CDbl(0)
  loc_18348F3: If (var_8C.RecordCount > 0) Then
  loc_18348F6:   ' Referenced from: 1836BEE
  loc_1834905:   If Not(var_8C.EOF) Then
  loc_183490C:     Set var_124 = Me.FGCat
  loc_183490F:     var_100 = vbNullString
  loc_1834934:     If (var_8C.RecordCount > 0) Then
  loc_183493D:       var_D2 = (var_D2 + 1)
  loc_1834943:       var_100 = "Nature"
  loc_1834968:       var_144 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_100)), var_D2, FGCat.DispID_10000, var_100, var_B8, var_B0, var_A8)) 'String
  loc_1834976:       var_164 = Trim(var_144) 'Variant
  loc_183498F:       If (var_164 = "On Base Amt") Then
  loc_18349BA:         var_144 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_86, var_94, var_DA)) 'String
  loc_18349DC:         If (Trim(var_144) = "Room Rate") Then
  loc_18349EA:           If (global_56 = "Room Service") Then
  loc_1834A13:             Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item("Limit")), var_DA)
  loc_1834A41:             Proc_6_39_E7C810(var_174, CVar(var_C0.Fields.Item("RoomRate")), var_144)
  loc_1834A49:             var_18C = (var_DA <= var_174)
  loc_1834A73:             Proc_6_39_E7C810(var_1C4, CVar(var_8C.Fields.Item("Rate")))
  loc_1834AA3:             If CBool(var_18C And (var_1C4 > 0)) Then
  loc_1834AE6:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1834B24:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1834B37:               Else
  loc_1834B6A:                 var_208 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1834B93:                 Proc_6_142_14A55B0(((var_208 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_1834B98:                 var_D0 = var_208
  loc_1834BAC:               End If
  loc_1834BB3:               If (var_D0 > CDbl(0)) Then
  loc_1834BCF:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834BD7:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_1834BE1:                 var_144 = CVar(CStr(var_86)) 'String
  loc_1834BE8:                 LateIdCallSt
  loc_1834C13:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834C1B:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_1834C25:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_1834C2C:                 LateIdCallSt
  loc_1834C44:                 If (var_DA = 0) Then
  loc_1834C4B:                   Set var_178 = Me.FGCat
  loc_1834C60:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_1834C68:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_1834C98:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1834C9F:                   LateIdCallSt
  loc_1834CBC:                 Else
  loc_1834CD7:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F92078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_1834D15:                   var_154 = CVar(var_E8 & global_56 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1834D2C:                   unk_56AA14.Execute CStr(var_154 & "')"), var_18C, -1
  loc_1834D37:                   Set var_E0 = var_178
  loc_1834D6F:                   If (var_E0.RecordCount > 0) Then
  loc_1834D8B:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834D93:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_1834DC3:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1834DCA:                     LateIdCallSt
  loc_1834DE4:                   End If
  loc_1834DE4:                 End If
  loc_1834DFD:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834E05:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_1834E35:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1834E3C:                 LateIdCallSt
  loc_1834E6F:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834E77:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_1834E81:                 var_144 = CVar(CStr(var_A8)) 'String
  loc_1834E88:                 LateIdCallSt
  loc_1834EB3:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834EBB:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_1834EEB:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1834EF2:                 LateIdCallSt
  loc_1834F50:                 var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834F58:                 var_248 = CVar(CLng(6)) 'Long
  loc_1834F62:                 var_18C = 0
  loc_1834F9C:                 var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_18C, 2))))) 'String
  loc_1834FA3:                 LateIdCallSt
  loc_1834FE0:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834FE8:                 var_1D4 = CVar(CLng(7)) 'Long
  loc_1835018:                 var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183501F:                 LateIdCallSt
  loc_183503C:               Else
  loc_1835042:                 var_86 = (var_86 - 1)
  loc_1835058:                 var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_183506E:               End If
  loc_1835087:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183508F:               var_1A0 = CVar(CLng(6)) 'Long
  loc_18350B4:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_18350DD:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18350E5:               var_1A0 = CVar(CLng(6)) 'Long
  loc_1835100:               var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_183510A:               var_94 = (var_94 + var_1FC)
  loc_1835121:               var_B0 = (var_B0 + var_D0)
  loc_1835127:               var_B8 = var_D0
  loc_1835131:               var_B0 = (var_B0 + var_D0)
  loc_1835137:               var_B8 = var_D0
  loc_183513A:             End If
  loc_183513A:           End If
  loc_183513D:         Else
  loc_1835163:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_183517D:           If (var_144 = "No") Then
  loc_18351BB:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_18351CE:           Else
  loc_183522A:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183522F:             var_D0 = var_B8
  loc_1835243:           End If
  loc_1835269:           Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_1835280:           var_1A0 = "Rate"
  loc_18352A3:           Proc_6_39_E7C810(var_18C, CVar(var_8C.Fields.Item(var_1A0)), (var_144 <= CVar(var_94)), var_1FC)
  loc_18352CD:           If CBool(var_1A0 And (var_18C > 0)) Then
  loc_18352D7:             If (var_D0 > CDbl(0)) Then
  loc_18352F3:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18352FB:               var_1A0 = CVar(CLng(0)) 'Long
  loc_1835305:               var_144 = CVar(CStr(var_86)) 'String
  loc_183530C:               LateIdCallSt
  loc_1835337:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183533F:               var_1A0 = CVar(CLng(1)) 'Long
  loc_1835349:               var_144 = CVar(CStr(arg_10)) 'String
  loc_1835350:               LateIdCallSt
  loc_1835368:               If (var_DA = 0) Then
  loc_183536F:                 Set var_178 = Me.FGCat
  loc_1835384:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_183538C:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_18353BC:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18353C3:                 LateIdCallSt
  loc_18353E0:               Else
  loc_18353F7:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_183542B:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1835442:                 unk_56AA14.Execute CStr(var_154 & "')"), var_18C, -1
  loc_183544D:                 Set var_E0 = var_178
  loc_1835481:                 If (var_E0.RecordCount > 0) Then
  loc_183549D:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18354A5:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_18354D5:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18354DC:                   LateIdCallSt
  loc_18354F6:                 End If
  loc_18354F6:               End If
  loc_183550F:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835517:               var_1D4 = CVar(CLng(3)) 'Long
  loc_1835547:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183554E:               LateIdCallSt
  loc_1835581:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835589:               var_1A0 = CVar(CLng(4)) 'Long
  loc_1835593:               var_144 = CVar(CStr(var_A8)) 'String
  loc_183559A:               LateIdCallSt
  loc_18355C5:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18355CD:               var_1D4 = CVar(CLng(5)) 'Long
  loc_18355FD:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1835604:               LateIdCallSt
  loc_1835662:               var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835674:               var_18C = 0
  loc_18356B5:               LateIdCallSt
  loc_18356F2:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835727:               var_154 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_124, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_18C, 2))))), CVar(CLng(6)), var_228)) 'String
  loc_183572E:               LateIdCallSt
  loc_1835746:             End If
  loc_183575F:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835767:             var_1A0 = CVar(CLng(6)) 'Long
  loc_183578C:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_18357B5:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18357BD:             var_1A0 = CVar(CLng(6)) 'Long
  loc_18357D8:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_18357E2:             var_94 = (var_94 + var_1FC)
  loc_18357F9:             var_B0 = (var_B0 + var_D0)
  loc_18357FF:             var_B8 = var_D0
  loc_1835802:           End If
  loc_1835802:         End If
  loc_1835805:       Else
  loc_1835810:         If (var_164 = "On Running Total") Then
  loc_1835839:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_1835853:           If (var_144 = "No") Then
  loc_1835891:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_18358A4:           Else
  loc_1835900:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1835905:             var_D0 = var_94
  loc_1835919:           End If
  loc_183593F:           Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1FC, var_1A0)
  loc_1835959:           If (var_144 > 0) Then
  loc_1835963:             If (var_D0 > CDbl(0)) Then
  loc_183597F:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835987:               var_1A0 = CVar(CLng(0)) 'Long
  loc_1835991:               var_144 = CVar(CStr(var_86)) 'String
  loc_1835998:               LateIdCallSt
  loc_18359C3:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18359CB:               var_1A0 = CVar(CLng(1)) 'Long
  loc_18359D5:               var_144 = CVar(CStr(arg_10)) 'String
  loc_18359DC:               LateIdCallSt
  loc_18359F4:               If (var_DA = 0) Then
  loc_18359FB:                 Set var_178 = Me.FGCat
  loc_1835A10:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_1835A18:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_1835A48:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1835A4F:                 LateIdCallSt
  loc_1835A6C:               Else
  loc_1835A83:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1835AB7:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1835ACE:                 unk_56AA14.Execute CStr(var_154 & "')"), var_18C, -1
  loc_1835AD9:                 Set var_E0 = var_178
  loc_1835B0D:                 If (var_E0.RecordCount > 0) Then
  loc_1835B29:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835B31:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_1835B61:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1835B68:                   LateIdCallSt
  loc_1835B82:                 End If
  loc_1835B82:               End If
  loc_1835B9B:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835BA3:               var_1D4 = CVar(CLng(3)) 'Long
  loc_1835BD3:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1835BDA:               LateIdCallSt
  loc_1835C0D:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835C15:               var_1A0 = CVar(CLng(4)) 'Long
  loc_1835C1F:               var_144 = CVar(CStr(var_B0)) 'String
  loc_1835C26:               LateIdCallSt
  loc_1835C51:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835C59:               var_1D4 = CVar(CLng(5)) 'Long
  loc_1835C89:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1835C90:               LateIdCallSt
  loc_1835CEE:               var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835CF6:               var_248 = CVar(CLng(6)) 'Long
  loc_1835D00:               var_18C = 0
  loc_1835D3A:               var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_18C, 2))))) 'String
  loc_1835D41:               LateIdCallSt
  loc_1835D7E:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835D86:               var_1D4 = CVar(CLng(7)) 'Long
  loc_1835DB6:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1835DBD:               LateIdCallSt
  loc_1835DD7:             End If
  loc_1835DF0:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835DF8:             var_1A0 = CVar(CLng(6)) 'Long
  loc_1835E1D:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_1835E46:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835E4E:             var_1A0 = CVar(CLng(6)) 'Long
  loc_1835E73:             var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_1835E8A:             var_B0 = (var_B0 + var_D0)
  loc_1835E90:             var_B8 = var_D0
  loc_1835E93:           End If
  loc_1835E96:         Else
  loc_1835EA1:           If (var_164 = "On Prev. Tax Amt") Then
  loc_1835EE4:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1835F22:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1835F35:             Else
  loc_1835F91:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1835F96:               var_D0 = var_94
  loc_1835FAA:             End If
  loc_1835FB1:             If (var_D0 > CDbl(0)) Then
  loc_1835FCD:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835FD5:               var_1A0 = CVar(CLng(0)) 'Long
  loc_1835FDF:               var_144 = CVar(CStr(var_86)) 'String
  loc_1835FE6:               LateIdCallSt
  loc_1836011:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836019:               var_1A0 = CVar(CLng(1)) 'Long
  loc_1836023:               var_144 = CVar(CStr(arg_10)) 'String
  loc_183602A:               LateIdCallSt
  loc_1836042:               If (var_DA = 0) Then
  loc_1836049:                 Set var_178 = Me.FGCat
  loc_183605E:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_1836066:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_1836096:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183609D:                 LateIdCallSt
  loc_18360BA:               Else
  loc_18360D1:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1836105:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183611C:                 unk_56AA14.Execute CStr(var_154 & "')"), var_18C, -1
  loc_1836127:                 Set var_E0 = var_178
  loc_183615B:                 If (var_E0.RecordCount > 0) Then
  loc_1836177:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183617F:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_18361AF:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18361B6:                   LateIdCallSt
  loc_18361D0:                 End If
  loc_18361D0:               End If
  loc_18361E9:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18361F1:               var_1D4 = CVar(CLng(3)) 'Long
  loc_1836221:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1836228:               LateIdCallSt
  loc_183625B:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836263:               var_1A0 = CVar(CLng(4)) 'Long
  loc_183626D:               var_144 = CVar(CStr(var_B8)) 'String
  loc_1836274:               LateIdCallSt
  loc_183629F:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18362A7:               var_1D4 = CVar(CLng(5)) 'Long
  loc_18362D7:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_18362DE:               LateIdCallSt
  loc_1836338:               var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836340:               var_248 = CVar(CLng(6)) 'Long
  loc_1836345:               var_18C = 2
  loc_1836384:               var_1F4 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_18C))))) 'String
  loc_183638B:               LateIdCallSt
  loc_18363C8:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18363D0:               var_1D4 = CVar(CLng(7)) 'Long
  loc_1836400:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1836407:               LateIdCallSt
  loc_1836421:             End If
  loc_183643A:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836442:             var_1A0 = CVar(CLng(6)) 'Long
  loc_1836467:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_1836490:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836498:             var_1A0 = CVar(CLng(6)) 'Long
  loc_18364B3:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_18364BD:             var_94 = (var_94 + var_1FC)
  loc_18364D4:             var_B0 = (var_B0 + var_D0)
  loc_18364DA:             var_B8 = var_D0
  loc_18364E0:           Else
  loc_1836506:             var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_1836520:             If (var_144 = "No") Then
  loc_183655E:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1836571:             Else
  loc_18365CD:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_18365D2:               var_D0 = var_94
  loc_18365E6:             End If
  loc_18365E9:             var_100 = "Limit"
  loc_183660C:             Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item(var_100)), var_D0, var_1FC, var_1A0)
  loc_1836646:             Proc_6_39_E7C810(var_18C, CVar(var_8C.Fields.Item("Rate")), (var_144 <= CVar(var_94)), var_100)
  loc_1836670:             If CBool(var_9C And (var_18C > 0)) Then
  loc_183667A:               If (var_D0 > CDbl(0)) Then
  loc_1836696:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183669E:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_18366A8:                 var_144 = CVar(CStr(var_86)) 'String
  loc_18366AF:                 LateIdCallSt
  loc_18366DA:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18366E2:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_18366EC:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_18366F3:                 LateIdCallSt
  loc_183670B:                 If (var_DA = 0) Then
  loc_1836712:                   Set var_178 = Me.FGCat
  loc_1836727:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_183672F:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_183675F:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1836766:                   LateIdCallSt
  loc_1836783:                 Else
  loc_183679A:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_18367CE:                   var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_18367E5:                   unk_56AA14.Execute CStr(var_154 & "')"), var_18C, -1
  loc_18367F0:                   Set var_E0 = var_178
  loc_1836824:                   If (var_E0.RecordCount > 0) Then
  loc_1836840:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836848:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_1836878:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183687F:                     LateIdCallSt
  loc_1836899:                   End If
  loc_1836899:                 End If
  loc_18368B2:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18368BA:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_18368EA:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_18368F1:                 LateIdCallSt
  loc_1836924:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183692C:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_1836936:                 var_144 = CVar(CStr(var_A8)) 'String
  loc_183693D:                 LateIdCallSt
  loc_1836968:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836970:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_18369A0:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_18369A7:                 LateIdCallSt
  loc_1836A05:                 var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836A58:                 LateIdCallSt
  loc_1836A95:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836ACA:                 var_154 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_124, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_228)) 'String
  loc_1836AD1:                 LateIdCallSt
  loc_1836AE9:               End If
  loc_1836B02:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836B0A:               var_1A0 = CVar(CLng(6)) 'Long
  loc_1836B2F:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_1836B58:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1836B60:               var_1A0 = CVar(CLng(6)) 'Long
  loc_1836B85:               var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_1836B9C:               var_B0 = (var_B0 + var_D0)
  loc_1836BA2:               var_B8 = var_D0
  loc_1836BA5:             End If
  loc_1836BA5:           End If
  loc_1836BA5:         End If
  loc_1836BA5:       End If
  loc_1836BA5:     End If
  loc_1836BAB:     var_86 = (var_86 + 1)
  loc_1836BB0:     Set var_124 = Nothing 
  loc_1836BB8:     var_100 = CVar(CLng(arg_10)) 'Long
  loc_1836BC0:     var_1A0 = CVar(CLng(7)) 'Long
  loc_1836BCA:     var_110 = CVar(CStr(var_9C)) 'String
  loc_1836BD2:     Set var_114 = Me.FGrid
  loc_1836BD8:     LateIdCallSt
  loc_1836BE9:     var_8C.MoveNext
  loc_1836BEE:     GoTo loc_18348F6
  loc_1836BF1:   End If
  loc_1836BF6:   Set var_8C = Nothing
  loc_1836BFE:   Set var_C4 = Nothing
  loc_1836C06:   Set var_C0 = Nothing
  loc_1836C0E:   Set var_D8 = Nothing
  loc_1836C16:   Set var_E0 = Nothing
  loc_1836C19: End If
  loc_1836C19: Exit Sub
End Sub

Public Sub Proc_210_95_E6AA0C
  'Data Table: 56A9F4
  Dim var_8C As String
  Dim var_98 As String
  Dim var_9C As String
  loc_E6A9D1: var_8C = "(SELECT     SUM(dbo.SunTranEst.Amount) + SUM(dbo.SunTranHEst.Amount) AS Amt, dbo.SunTranHEst.DocId, dbo.SunTranHEst.Sno, dbo.SunTranHEst.Vtype, dbo.SunTranHEst.VNo," & "dbo.SunTranHEst.Vdate, dbo.SunTranHEst.PartyCode, dbo.SunTranHEst.SunCode, dbo.SunTranHEst.ROff, dbo.SunTranEst.RestCode, dbo.SunTranEst.SunAppDate,"
  loc_E6A9E6: var_98 = var_8C & "dbo.SunTranEst.RevCode " & "FROM         dbo.SunTranEst INNER JOIN " & " dbo.SunTranHEst ON dbo.SunTranEst.Sno = dbo.SunTranHEst.Sno AND dbo.SunTranEst.DocId = dbo.SunTranHEst.DocId "
  loc_E6A9ED: var_9C = var_98 & "GROUP BY dbo.SunTranHEst.DocId, dbo.SunTranHEst.Sno, dbo.SunTranHEst.Vtype, dbo.SunTranHEst.VNo, dbo.SunTranHEst.Vdate, dbo.SunTranHEst.PartyCode,"
  loc_E6A9F4: var_88 = var_9C & "dbo.SunTranHEst.SunCode , dbo.SunTranHEst.Roff, dbo.SunTranEst.RestCode, dbo.SunTranEst.SunAppDate, dbo.SunTranEst.RevCode)"
  loc_E6AA04: Proc_210_95_E6AA0C = 
End Sub

Public Sub Proc_210_96_1977CF4
  'Data Table: 56A9F4
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_56ABA3 As Connection15
  Dim var_E6 As Integer
  Dim var_1D8 As Recordset15
  Dim var_B4 As Fields
  Dim unk_56AA14 As Connection15
  Dim var_1EC As Variant
  Dim var_E0 As Recordset15
  Dim var_1E8 As String
  Dim var_A0 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  Dim var_228 As Variant
  Dim var_110 As Recordset15
  Dim var_B0 As Variant
  Dim var_E4 As Recordset15
  Dim var_118 As Double
  Dim var_1F4 As Variant
  Dim var_280 As Variant
  Dim var_F4 As Recordset15
  Dim var_120 As Double
  Dim var_284 As Recordset15
  Dim var_108 As Recordset15
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim var_2C0 As Field20
  loc_1975080: unk_56ABA3.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92070 & "FOM'", var_B0, -1
  loc_197508B: Set var_88 = var_B4
  loc_197509B: On Error Goto loc_1977CD9
  loc_19750A0: var_E6 = 1
  loc_19750A9: Set var_1D8 = var_1D4 
  loc_19750D1: var_1D8.Fields.Append "mLine", &HC8, &HA
  loc_19750FD: var_1D8.Fields.Append "SNo", &HC8, &HA
  loc_1975129: var_1D8.Fields.Append "Item", &HC8, &H32
  loc_1975155: var_1D8.Fields.Append "Qty", &HC8, &HA
  loc_1975181: var_1D8.Fields.Append "Rate", &HC8, &HA
  loc_19751AD: var_1D8.Fields.Append "Amount", &HC8, &HA
  loc_19751D1: var_B4 = var_1D8.Fields
  loc_19751D9: var_B4.Append "Mark", &HC8, &HA
  loc_19751E9: var_1D8.CursorType = 3
  loc_19751F6: var_1D8.LockType = 3
  loc_1975215: var_1D8.Open var_A0, var_1E8, -1
  loc_197521C: Set var_1D8 = Nothing 
  loc_1975234: var_8C = "Select * from Enviro where LOgSite_code='" & MemVar_1F92078
  loc_1975244: unk_56AA14.Execute var_8C & "'", var_B0, -1
  loc_197524F: Set var_110 = var_B4
  loc_197527D: Set var_B4 = Me.Txt
  loc_1975283: Call 0.Method_Proc_210_96_1977CF40 (CInt(4), var_1EC, var_8C, "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallStockEst AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode = I.RestCode) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='", var_B0, -1, var_1F4)
  loc_197528B: var_B4 = var_1EC.Text
  loc_1975294: var_90 = -1 & var_8C
  loc_19752A4: unk_56AA14.Execute var_8C & "'" & "' AND QTYIss>0", -1, &H20
  loc_19752AF: Set var_F4 = var_1F4
  loc_19752E5: Set var_B4 = Me.Txt
  loc_19752EB: Call 0.Method_Proc_210_96_1977CF40 (CInt(7), var_1EC, var_8C, "Select HB.*, SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='", var_B0)
  loc_19752F3: -1 = var_1EC.Tag
  loc_197530C: unk_56AA14.Execute var_1F4 & var_8C & "'", var_A0, &H20
  loc_1975317: Set var_E0 = var_1F4
  loc_197534D: Set var_B4 = Me.Txt
  loc_1975353: Call 0.Method_Proc_210_96_1977CF40 (CInt(7), var_1EC, var_8C, "SELECT * FROM HallSale1Est WHERE BookDocId='")
  loc_197535B: var_B0 = var_1EC.Tag
  loc_1975364: var_90 = -1 & var_8C
  loc_1975374: unk_56AA14.Execute var_1F4 & var_8C & "'", var_1F4, var_A0
  loc_197537F: Set var_E4 = var_1F4
  loc_19753AB: If (var_E0.RecordCount <= 0) Then
  loc_19753AE:   Exit Sub
  loc_19753AF: End If
  loc_19753BD: Set var_B4 = Me.Txt
  loc_19753C3: Call 0.Method_Proc_210_96_1977CF40 (CInt(0), var_1EC)
  loc_19753D3: var_12C = var_1EC.Tag
  loc_19753F5: var_208 = ("UPTT No. :" + Trim(MemVar_1F92148))
  loc_19753FA: var_148 = CStr(var_208)
  loc_197541C: var_208 = ("CST No.  :" + Trim(MemVar_1F9214C))
  loc_1975421: var_14C = CStr(var_208)
  loc_197542E: var_168 = MemVar_1F92130
  loc_1975449: var_208 = (Trim(MemVar_1F92134) + " ")
  loc_1975460: var_238 = (var_208 + Trim(MemVar_1F9213C))
  loc_1975469: var_258 = (var_238 + " ")
  loc_1975473: var_278 = (var_258 + CVar(MemVar_1F9215C))
  loc_1975478: var_164 = CStr(var_278)
  loc_197549F: var_16C = "Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144
  loc_19754C1: var_208 = ("SUBJECT TO " + Trim(MemVar_1F9213C))
  loc_19754CA: var_228 = (var_208 + " JURISDITION")
  loc_19754CF: var_100 = CStr(Trim(MemVar_1F9213C))
  loc_1975503: var_15C = Proc_6_38_E68A98(CVar(var_110.Fields.Item("Bill_Header")))
  loc_1975523: var_1EC = var_E4.Fields.Item("Party")
  loc_1975548: var_158 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1EC)))
  loc_1975566: Set var_B4 = Me.Txt
  loc_197556C: Call 0.Method_Proc_210_96_1977CF40 (CInt(1), var_1EC)
  loc_197557C: var_150 = var_1EC.Text
  loc_19755BD: var_1A0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E0.Fields.Item("Add1"))))))
  loc_1975603: var_1A4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E0.Fields.Item("Add2"))))))
  loc_1975629: var_1EC = var_E0.Fields.Item("City")
  loc_1975649: var_1A8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_1EC)))))
  loc_1975663: Set var_B4 = Me.Txt
  loc_1975669: Call 0.Method_Proc_210_96_1977CF40 (CInt(2), var_1EC)
  loc_1975678: var_A0 = "dd-MMM-yyyy"
  loc_197567D: var_208 = "City"
  loc_19756A5: var_154 = Proc_6_45_EAD428(CStr(Format(CVar(var_1EC), var_208)), &HB, 1)
  loc_1975713: If ((var_E4.RecordCount > 0) And (CDbl(Val(CStr(var_E4.Fields.Item("NoofPax").Value))) > CDbl(0))) Then
  loc_197573C:   Proc_6_39_E7C810(var_208, CVar(var_E4.Fields.Item("Advance")))
  loc_1975765:   var_144 = CStr(Format(var_208, "0.00"))
  loc_19757A1:   Proc_6_39_E7C810(var_208, CVar(var_E4.Fields.Item("TotalPerCover")), 1, 1)
  loc_19757B2:   var_118 = Val(CStr(var_208))
  loc_197581D:   var_208 = "Pax " & var_E4.Fields.Item("NoofPax").Value 
  loc_197582D:   var_258 = var_208 & " @ " & var_E4.Fields.Item("RatePerPax").Value 
  loc_197583B:   var_130 = Proc_6_45_EAD428(CStr(var_258), &H1D, var_118)
  loc_197587F:   Proc_6_39_E7C810(var_208, CVar(var_E4.Fields.Item("NoofPax")), 1)
  loc_1975888:   var_134 = CStr(var_208)
  loc_19758AC:   var_1EC = var_E4.Fields.Item("RatePerPax")
  loc_19758BB:   Proc_6_39_E7C810(var_208, CVar(var_1EC))
  loc_19758E4:   var_138 = CStr(Format(var_208, "0.00"))
  loc_19758FF:   var_1E8 = "0.00"
  loc_197591E:   var_13C = CStr(Format(var_118, var_1E8))
  loc_1975933:   Set var_B4 = Me.Txt
  loc_1975939:   Call 0.Method_Proc_210_96_1977CF40 (CInt(&H18), var_1EC, 1, 1)
  loc_1975948:   var_208 = Trim(CVar(var_1EC))
  loc_1975966:   If (CStr(var_208) = vbNullString) Then
  loc_197596C:     var_140 = var_130
  loc_197596F:   End If
  loc_1975972: Else
  loc_1975974:   var_E6 = 0
  loc_1975977:   ' Referenced from:   1975C57
  loc_1975977: End If
  loc_1975986: If Not(var_F4.EOF) Then
  loc_197598F:   var_E6 = (var_E6 + 1)
  loc_1975995:   var_A0 = "Amount"
  loc_19759B8:   Proc_6_39_E7C810(var_208, CVar(var_F4.Fields.Item(var_A0)), var_E6, var_E6)
  loc_19759C9:   var_120 = Val(CStr(var_208))
  loc_19759E0:   var_118 = (var_118 + var_120)
  loc_19759E9:   Set var_284 = var_1D4 
  loc_19759F8:   var_284.AddNew var_A0, var_1E8
  loc_1975A22:   var_284.Fields.Item("mLine").Value = vbNullString
  loc_1975A33:   var_8C = CStr(var_E6)
  loc_1975A5D:   var_284.Fields.Item("SNo").Value = CVar(var_8C & ".")
  loc_1975AB2:   var_284.Fields.Item("Item").Value = CVar(var_F4.Fields.Item("ItemName"))
  loc_1975AE9:   Proc_6_39_E7C810(var_208, CVar(var_F4.Fields.Item("QtyIss")), var_118, var_120)
  loc_1975B11:   var_284.Fields.Item("qty").Value = var_208
  loc_1975B4C:   Proc_6_39_E7C810(var_208, CVar(var_F4.Fields.Item("Rate")), 1)
  loc_1975B84:   var_1F4 = var_284.Fields
  loc_1975B94:   var_1F4.Item("Rate").Value = Format(var_208, "0.00")
  loc_1975BF5:   var_284.Fields.Item("Amount").Value = Format(var_120, "0.00")
  loc_1975C08:   var_1E8 = "*"
  loc_1975C11:   var_A0 = "Mark"
  loc_1975C2D:   var_284.Fields.Item(var_A0).Value = var_1E8
  loc_1975C44:   var_284.Update var_A0, var_1E8
  loc_1975C4B:   Set var_284 = Nothing 
  loc_1975C52:   var_F4.MoveNext
  loc_1975C57:   GoTo loc_1975977
  loc_1975C5A: End If
  loc_1975C62: var_F4.Requery -1
  loc_1975C6A: var_E4.MoveFirst
  loc_1975C82: Call Proc_210_95_E6AA0C(var_8C, "SELECT ST.Amt AS Amount,ST.SunCode AS Code,ST.SNo as SNo, SM.Name AS SName FROM ", var_258, -1, var_1F4, 1)
  loc_1975CBF: var_228 = CVar(1 & var_8C & " AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='") & var_E4.Fields.Item("DocID").Value 
  loc_1975CD6: unk_56AA14.Execute CStr(var_228 & "' Order by SNo"), 1, 1
  loc_1975CE1: Set var_108 = var_1F4
  loc_1975D09: var_1F8 = var_108.RecordCount
  loc_1975D17: If (var_1F8 > 0) Then
  loc_1975D1A:   ' Referenced from: 19764F1
  loc_1975D29:   If Not(var_108.EOF) Then
  loc_1975D80:     If (Ucase(Trim(CVar(var_108.Fields.Item("Code")))) = CVar(MemVar_1F92078 & "NET")) Then
  loc_1975DB3:       var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1975DBC:       var_1C4 = CStr(var_208)
  loc_1975DEF:       Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1)
  loc_1975E18:       var_190 = CStr(Format(var_208, "0.00"))
  loc_1975E2C:       var_108.MoveNext
  loc_1975E42:       If (var_108.EOF = &HFF) Then
  loc_1975E45:         GoTo loc_19764F4
  loc_1975E48:       End If
  loc_1975E48:     End If
  loc_1975E72:     var_294 = var_108.Fields.Item("SNo").Value 'Variant
  loc_1975E88:     If (var_294 = 1) Then
  loc_1975EBB:       var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1975EC4:       var_1AC = CStr(var_208)
  loc_1975EF7:       Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1)
  loc_1975F20:       var_170 = CStr(Format(var_208, "0.00"))
  loc_1975F34:     Else
  loc_1975F3F:       If (var_294 = 2) Then
  loc_1975F72:         var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1975F7B:         var_1B0 = CStr(var_208)
  loc_1975FAE:         Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1975FD7:         var_174 = CStr(Format(var_208, "0.00"))
  loc_1975FEB:       Else
  loc_1975FF6:         If (var_294 = 3) Then
  loc_1976029:           var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1976032:           var_1BC = CStr(var_208)
  loc_1976065:           Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_197608E:           var_188 = CStr(Format(var_208, "0.00"))
  loc_19760A2:         Else
  loc_19760AD:           If (var_294 = 4) Then
  loc_19760E0:             var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_19760E9:             var_1B4 = CStr(var_208)
  loc_197611C:             Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1976145:             var_178 = CStr(Format(var_208, "0.00"))
  loc_1976159:           Else
  loc_1976164:             If (var_294 = 5) Then
  loc_1976197:               var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_19761A0:               var_1B8 = CStr(var_208)
  loc_19761D3:               Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_19761FC:               var_17C = CStr(Format(var_208, "0.00"))
  loc_1976210:             Else
  loc_197621B:               If (var_294 = 6) Then
  loc_197624E:                 var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1976257:                 var_1C0 = CStr(var_208)
  loc_197628A:                 Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_19762B3:                 var_18C = CStr(Format(var_208, "0.00"))
  loc_19762C7:               Else
  loc_19762D2:                 If (var_294 = 7) Then
  loc_1976305:                   var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_197630E:                   var_1C8 = CStr(var_208)
  loc_1976341:                   Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_197636A:                   var_194 = CStr(Format(var_208, "0.00"))
  loc_197637E:                 Else
  loc_1976389:                   If (var_294 = 8) Then
  loc_19763BC:                     var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_19763C5:                     var_1CC = CStr(var_208)
  loc_19763F8:                     Proc_6_39_E7C810(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1976421:                     var_180 = CStr(Format(var_208, "0.00"))
  loc_1976435:                   Else
  loc_1976440:                     If (var_294 = 9) Then
  loc_1976473:                       var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_197647C:                       var_1D0 = CStr(var_208)
  loc_1976498:                       var_B4 = var_108.Fields
  loc_19764AF:                       Proc_6_39_E7C810(var_208, CVar(var_B4.Item("Amount")), 1, 1)
  loc_19764D8:                       var_184 = CStr(Format(var_208, "0.00"))
  loc_19764E9:                     End If
  loc_19764E9:                   End If
  loc_19764E9:                 End If
  loc_19764E9:               End If
  loc_19764E9:             End If
  loc_19764E9:           End If
  loc_19764E9:         End If
  loc_19764E9:       End If
  loc_19764E9:     End If
  loc_19764EC:     var_108.MoveNext
  loc_19764F1:     GoTo loc_1975D1A
  loc_19764F4:     ' Referenced from: 1975E45
  loc_19764F4:   End If
  loc_19764F4: End If
  loc_197652E: var_B0 = CVar(Proc_6_43_10041F4(Abs(Val(var_190)), "Rs.", vbNullString, Val(var_190), 1)) 'String
  loc_197653D: var_198 = CStr(StrConv(var_B0, 3, 0))
  loc_197655E: var_19C = "Regardless of charge instructions I agree to be held" & vbCrLf & "personally liable for payment of the total amount of this bill."
  loc_197657A: unk_56AA14.Execute "Select * From FAEnviro", var_B0, -1
  loc_1976585: Set var_110 = var_B4
  loc_197659D: var_B4 = var_110.Fields
  loc_1976601: var_258 = IIf((Proc_6_38_E68A98(CVar(var_B4.Item("daterfill")), var_B4, 1) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("daterfill")), 1)))
  loc_197660A: MemVar_1F923C0 = CStr(var_258)
  loc_197669E: var_258 = IIf((Proc_6_38_E68A98(CVar(var_110.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("pagenofill")), 1)))
  loc_19766A7: MemVar_1F923C4 = CStr(var_258)
  loc_19766CB: var_A0 = "titlerfill"
  loc_19766DF: var_1EC = var_110.Fields.Item(var_A0)
  loc_19766F6: var_1E8 = "titlerfill"
  loc_197670A: var_280 = var_110.Fields.Item(var_1E8)
  loc_197671B: var_238 = CVar(Proc_6_38_E68A98(CVar(var_280))) 'String
  loc_1976734: var_218 = (Proc_6_38_E68A98(CVar(var_1EC), MemVar_1F923C4) = vbNullString)
  loc_197673B: var_258 = IIf(var_218, "M", var_238)
  loc_1976765: On Error Goto loc_1977CD9
  loc_197676B: var_EC = "SaleBillHallEstimate"
  loc_1976771: var_F0 = "Sales Bill Report"
  loc_197679B: Set var_B4 = var_1D4 
  loc_19767A2: CreateFieldDefFile(var_B4, MemVar_1F920B4 & "\" & var_EC & ".ttx", &HFF)
  loc_19767D0: var_8C = "\" & var_EC
  loc_19767E4: Call 0.Method_arg_1C (MemVar_1F920B4 & var_8C & ".RPT", var_A0, var_B4)
  loc_19767EF: MemVar_1F921E4 = var_B4
  loc_197681B: Call 0.Method_arg_64 (var_B4, CVar(var_B4), var_1E8)
  loc_1976823: Call 0.Method_arg_2C (var_218, CStr(var_258))
  loc_1976831: Call 0.Method_arg_150 (&H27)
  loc_1976847: Call 0.Method_arg_90 (var_B4, var_1F8)
  loc_197684F: Call 0.Method_arg_24 (var_E6)
  loc_197685B: For var_2AC =  To CInt(var_1F8): 1 = var_2AC 'Integer
  loc_1976874:   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197687C:   Call 0.Method_arg_20 (var_1EC)
  loc_1976884:   Call 0.Method_arg_30 (var_8C)
  loc_197689A:   var_2BC = Ucase(CVar(var_8C)) 'Variant
  loc_19768CA:   If (var_2BC = Ucase("upttno")) Then
  loc_19768EE:     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19768F6:     Call 0.Method_arg_20 (var_1EC)
  loc_19768FE:     Call 0.Method_arg_38 ("'" & var_148 & "'")
  loc_1976914:   Else
  loc_1976936:     If (var_2BC = Ucase("csttno")) Then
  loc_197695A:       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976962:       Call 0.Method_arg_20 (var_1EC)
  loc_197696A:       Call 0.Method_arg_38 ("'" & var_14C & "'")
  loc_1976980:     Else
  loc_19769A2:       If (var_2BC = Ucase("comp_name")) Then
  loc_19769C6:         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19769CE:         Call 0.Method_arg_20 (var_1EC)
  loc_19769D6:         Call 0.Method_arg_38 ("'" & var_168 & "'")
  loc_19769EC:       Else
  loc_1976A0E:         If (var_2BC = Ucase("compaddress")) Then
  loc_1976A32:           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976A3A:           Call 0.Method_arg_20 (var_1EC)
  loc_1976A42:           Call 0.Method_arg_38 ("'" & var_164 & "'")
  loc_1976A58:         Else
  loc_1976A7A:           If (var_2BC = Ucase("comp_phone")) Then
  loc_1976A9E:             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976AA6:             Call 0.Method_arg_20 (var_1EC)
  loc_1976AAE:             Call 0.Method_arg_38 ("'" & var_16C & "'")
  loc_1976AC4:           Else
  loc_1976AE6:             If (var_2BC = Ucase("BillHeader")) Then
  loc_1976B0A:               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976B12:               Call 0.Method_arg_20 (var_1EC)
  loc_1976B1A:               Call 0.Method_arg_38 ("'" & var_15C & "'")
  loc_1976B30:             Else
  loc_1976B52:               If (var_2BC = Ucase("name")) Then
  loc_1976B76:                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976B7E:                 Call 0.Method_arg_20 (var_1EC)
  loc_1976B86:                 Call 0.Method_arg_38 ("'" & var_158 & "'")
  loc_1976B9C:               Else
  loc_1976BBE:                 If (var_2BC = Ucase("address1")) Then
  loc_1976BE2:                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976BEA:                   Call 0.Method_arg_20 (var_1EC)
  loc_1976BF2:                   Call 0.Method_arg_38 ("'" & var_1A0 & "'")
  loc_1976C08:                 Else
  loc_1976C2A:                   If (var_2BC = Ucase("address2")) Then
  loc_1976C4E:                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976C56:                     Call 0.Method_arg_20 (var_1EC)
  loc_1976C5E:                     Call 0.Method_arg_38 ("'" & var_1A4 & "'")
  loc_1976C74:                   Else
  loc_1976C96:                     If (var_2BC = Ucase("address3")) Then
  loc_1976CBA:                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976CC2:                       Call 0.Method_arg_20 (var_1EC)
  loc_1976CCA:                       Call 0.Method_arg_38 ("'" & var_1A8 & "'")
  loc_1976CE0:                     Else
  loc_1976D02:                       If (var_2BC = Ucase("PAX_Par")) Then
  loc_1976D26:                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976D2E:                         Call 0.Method_arg_20 (var_1EC)
  loc_1976D36:                         Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_1976D4C:                       Else
  loc_1976D6E:                         If (var_2BC = Ucase("NARATION")) Then
  loc_1976D92:                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976D9A:                           Call 0.Method_arg_20 (var_1EC)
  loc_1976DA2:                           Call 0.Method_arg_38 ("'" & var_140 & "'")
  loc_1976DB8:                         Else
  loc_1976DDA:                           If (var_2BC = Ucase("PAX_Qty")) Then
  loc_1976DFE:                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976E06:                             Call 0.Method_arg_20 (var_1EC)
  loc_1976E0E:                             Call 0.Method_arg_38 ("'" & var_134 & "'")
  loc_1976E24:                           Else
  loc_1976E46:                             If (var_2BC = Ucase("PAX_Rate")) Then
  loc_1976E6A:                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976E72:                               Call 0.Method_arg_20 (var_1EC)
  loc_1976E7A:                               Call 0.Method_arg_38 ("'" & var_138 & "'")
  loc_1976E90:                             Else
  loc_1976EB2:                               If (var_2BC = Ucase("PAX_Amount")) Then
  loc_1976ED6:                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976EDE:                                 Call 0.Method_arg_20 (var_1EC)
  loc_1976EE6:                                 Call 0.Method_arg_38 ("'" & var_13C & "'")
  loc_1976EFC:                               Else
  loc_1976F1E:                                 If (var_2BC = Ucase("billno")) Then
  loc_1976F50:                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976F58:                                   Call 0.Method_arg_20 (var_1EC)
  loc_1976F60:                                   Call 0.Method_arg_38 ("'" & var_12C & "\" & var_150 & "'")
  loc_1976F7A:                                 Else
  loc_1976F9C:                                   If (var_2BC = Ucase("billdate")) Then
  loc_1976FC0:                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976FC8:                                     Call 0.Method_arg_20 (var_1EC)
  loc_1976FD0:                                     Call 0.Method_arg_38 ("'" & var_154 & "'")
  loc_1976FE6:                                   Else
  loc_1977008:                                     If (var_2BC = Ucase("strRupee")) Then
  loc_197702C:                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977034:                                       Call 0.Method_arg_20 (var_1EC)
  loc_197703C:                                       Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_1977052:                                     Else
  loc_1977074:                                       If (var_2BC = Ucase("lblamount")) Then
  loc_1977098:                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19770A0:                                         Call 0.Method_arg_20 (var_1EC)
  loc_19770A8:                                         Call 0.Method_arg_38 ("'" & var_1AC & "'")
  loc_19770BE:                                       Else
  loc_19770E0:                                         If (var_2BC = Ucase("amount")) Then
  loc_1977104:                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197710C:                                           Call 0.Method_arg_20 (var_1EC)
  loc_1977114:                                           Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_197712A:                                         Else
  loc_197714C:                                           If (var_2BC = Ucase("lbldiscount")) Then
  loc_1977170:                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977178:                                             Call 0.Method_arg_20 (var_1EC)
  loc_1977180:                                             Call 0.Method_arg_38 ("'" & var_1B0 & "'")
  loc_1977196:                                           Else
  loc_19771B8:                                             If (var_2BC = Ucase("discount")) Then
  loc_19771DC:                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19771E4:                                               Call 0.Method_arg_20 (var_1EC)
  loc_19771EC:                                               Call 0.Method_arg_38 ("'" & var_174 & "'")
  loc_1977202:                                             Else
  loc_1977224:                                               If (var_2BC = Ucase("lbldevelopmenttax")) Then
  loc_1977248:                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977250:                                                 Call 0.Method_arg_20 (var_1EC)
  loc_1977258:                                                 Call 0.Method_arg_38 ("'" & var_1BC & "'")
  loc_197726E:                                               Else
  loc_1977290:                                                 If (var_2BC = Ucase("developmenttax")) Then
  loc_19772B4:                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19772BC:                                                   Call 0.Method_arg_20 (var_1EC)
  loc_19772C4:                                                   Call 0.Method_arg_38 ("'" & var_188 & "'")
  loc_19772DA:                                                 Else
  loc_19772FC:                                                   If (var_2BC = Ucase("lbltradetax")) Then
  loc_1977320:                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977328:                                                     Call 0.Method_arg_20 (var_1EC)
  loc_1977330:                                                     Call 0.Method_arg_38 ("'" & var_1B4 & "'")
  loc_1977346:                                                   Else
  loc_1977368:                                                     If (var_2BC = Ucase("tradetax")) Then
  loc_197738C:                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977394:                                                       Call 0.Method_arg_20 (var_1EC)
  loc_197739C:                                                       Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_19773B2:                                                     Else
  loc_19773D4:                                                       If (var_2BC = Ucase("lblservicecharge")) Then
  loc_19773F8:                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977400:                                                         Call 0.Method_arg_20 (var_1EC)
  loc_1977408:                                                         Call 0.Method_arg_38 ("'" & var_1B8 & "'")
  loc_197741E:                                                       Else
  loc_1977440:                                                         If (var_2BC = Ucase("servicecharge")) Then
  loc_1977464:                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197746C:                                                           Call 0.Method_arg_20 (var_1EC)
  loc_1977474:                                                           Call 0.Method_arg_38 ("'" & var_17C & "'")
  loc_197748A:                                                         Else
  loc_19774AC:                                                           If (var_2BC = Ucase("lblroundoff")) Then
  loc_19774D0:                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19774D8:                                                             Call 0.Method_arg_20 (var_1EC)
  loc_19774E0:                                                             Call 0.Method_arg_38 ("'" & var_1C0 & "'")
  loc_19774F6:                                                           Else
  loc_1977518:                                                             If (var_2BC = Ucase("roundoff")) Then
  loc_197753C:                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977544:                                                               Call 0.Method_arg_20 (var_1EC)
  loc_197754C:                                                               Call 0.Method_arg_38 ("'" & var_18C & "'")
  loc_1977562:                                                             Else
  loc_1977584:                                                               If (var_2BC = Ucase("lblServiceTax")) Then
  loc_19775A8:                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19775B0:                                                                 Call 0.Method_arg_20 (var_1EC)
  loc_19775B8:                                                                 Call 0.Method_arg_38 ("'" & var_1C8 & "'")
  loc_19775CE:                                                               Else
  loc_19775F0:                                                                 If (var_2BC = Ucase("ServiceTax")) Then
  loc_1977614:                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197761C:                                                                   Call 0.Method_arg_20 (var_1EC)
  loc_1977624:                                                                   Call 0.Method_arg_38 ("'" & var_194 & "'")
  loc_197763A:                                                                 Else
  loc_197765C:                                                                   If (var_2BC = Ucase("lblTax8")) Then
  loc_1977680:                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977688:                                                                     Call 0.Method_arg_20 (var_1EC)
  loc_1977690:                                                                     Call 0.Method_arg_38 ("'" & var_1CC & "'")
  loc_19776A6:                                                                   Else
  loc_19776C8:                                                                     If (var_2BC = Ucase("Tax8Amt")) Then
  loc_19776EC:                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19776F4:                                                                       Call 0.Method_arg_20 (var_1EC)
  loc_19776FC:                                                                       Call 0.Method_arg_38 ("'" & var_180 & "'")
  loc_1977712:                                                                     Else
  loc_1977734:                                                                       If (var_2BC = Ucase("lblTax9")) Then
  loc_1977758:                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977760:                                                                         Call 0.Method_arg_20 (var_1EC)
  loc_1977768:                                                                         Call 0.Method_arg_38 ("'" & var_1D0 & "'")
  loc_197777E:                                                                       Else
  loc_19777A0:                                                                         If (var_2BC = Ucase("Tax9Amt")) Then
  loc_19777C4:                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19777CC:                                                                           Call 0.Method_arg_20 (var_1EC)
  loc_19777D4:                                                                           Call 0.Method_arg_38 ("'" & var_184 & "'")
  loc_19777EA:                                                                         Else
  loc_197780C:                                                                           If (var_2BC = Ucase("lblnetamount")) Then
  loc_1977830:                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977838:                                                                             Call 0.Method_arg_20 (var_1EC)
  loc_1977840:                                                                             Call 0.Method_arg_38 ("'" & var_1C4 & "'")
  loc_1977856:                                                                           Else
  loc_1977878:                                                                             If (var_2BC = Ucase("netamount")) Then
  loc_1977882:                                                                               var_8C = "'" & var_190
  loc_197789C:                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19778A4:                                                                               Call 0.Method_arg_20 (var_1EC)
  loc_19778AC:                                                                               Call 0.Method_arg_38 (var_8C & "'")
  loc_19778C2:                                                                             Else
  loc_19778E4:                                                                               If (var_2BC = Ucase("Title")) Then
  loc_19778F0:                                                                                 Call 0.Method_arg_50 (var_8C)
  loc_1977913:                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197791B:                                                                                 Call 0.Method_arg_20 (var_1EC)
  loc_1977923:                                                                                 Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_197793B:                                                                               Else
  loc_197795D:                                                                                 If (var_2BC = Ucase("Jurisdition")) Then
  loc_1977981:                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977989:                                                                                   Call 0.Method_arg_20 (var_1EC)
  loc_1977991:                                                                                   Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_19779A7:                                                                                 Else
  loc_19779C9:                                                                                   If (var_2BC = Ucase("Dater")) Then
  loc_19779ED:                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19779F5:                                                                                     Call 0.Method_arg_20 (var_1EC)
  loc_19779FD:                                                                                     Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_1977A13:                                                                                   Else
  loc_1977A35:                                                                                     If (var_2BC = Ucase("Pager")) Then
  loc_1977A59:                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977A61:                                                                                       Call 0.Method_arg_20 (var_1EC)
  loc_1977A69:                                                                                       Call 0.Method_arg_38 ("'" & MemVar_1F923C4 & "'")
  loc_1977A7F:                                                                                     Else
  loc_1977AA1:                                                                                       If (var_2BC = Ucase("billfooter")) Then
  loc_1977AC5:                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977ACD:                                                                                         Call 0.Method_arg_20 (var_1EC)
  loc_1977AD5:                                                                                         Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_1977AEB:                                                                                       Else
  loc_1977B0D:                                                                                         If (var_2BC = Ucase("AdvanceDetail")) Then
  loc_1977B31:                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1977B39:                                                                                           Call 0.Method_arg_20 (var_1EC)
  loc_1977B41:                                                                                           Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_1977B57:                                                                                         Else
  loc_1977B79:                                                                                           If (var_2BC = Ucase("comp_party")) Then
  loc_1977B87:                                                                                             var_268 = 0
  loc_1977B9D:                                                                                             var_1E8 = "Select ('Company:                                                                                         ' + SG.Name) AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='"
  loc_1977BCC:                                                                                             var_208 = var_1E8 & var_E0.Fields.Item("DocID").Value 
  loc_1977BE3:                                                                                             unk_56AA14.Execute CStr(var_208 & "'"), var_238, -1
  loc_1977BEB:                                                                                             var_1F4 = var_1F4.Fields
  loc_1977BF3:                                                                                             var_268 = var_280.Item(var_280)
  loc_1977BFB:                                                                                             var_2C0 = var_2C0.Value
  loc_1977C24:                                                                                             Call 0.Method_arg_90 (var_2F4, CLng(var_E6), var_2F8)
  loc_1977C2C:                                                                                             Call 0.Method_arg_20 (CStr(var_258 & var_258 & "'"))
  loc_1977C34:                                                                                             Call 0.Method_arg_38 ("'")
  loc_1977C62:                                                                                           End If
  loc_1977C62:                                                                                         End If
  loc_1977C62:                                                                                       End If
  loc_1977C62:                                                                                     End If
  loc_1977C62:                                                                                   End If
  loc_1977C62:                                                                                 End If
  loc_1977C62:                                                                               End If
  loc_1977C62:                                                                             End If
  loc_1977C62:                                                                           End If
  loc_1977C62:                                                                         End If
  loc_1977C62:                                                                       End If
  loc_1977C62:                                                                     End If
  loc_1977C62:                                                                   End If
  loc_1977C62:                                                                 End If
  loc_1977C62:                                                               End If
  loc_1977C62:                                                             End If
  loc_1977C62:                                                           End If
  loc_1977C62:                                                         End If
  loc_1977C62:                                                       End If
  loc_1977C62:                                                     End If
  loc_1977C62:                                                   End If
  loc_1977C62:                                                 End If
  loc_1977C62:                                               End If
  loc_1977C62:                                             End If
  loc_1977C62:                                           End If
  loc_1977C62:                                         End If
  loc_1977C62:                                       End If
  loc_1977C62:                                     End If
  loc_1977C62:                                   End If
  loc_1977C62:                                 End If
  loc_1977C62:                               End If
  loc_1977C62:                             End If
  loc_1977C62:                           End If
  loc_1977C62:                         End If
  loc_1977C62:                       End If
  loc_1977C62:                     End If
  loc_1977C62:                   End If
  loc_1977C62:                 End If
  loc_1977C62:               End If
  loc_1977C62:             End If
  loc_1977C62:           End If
  loc_1977C62:         End If
  loc_1977C62:       End If
  loc_1977C62:     End If
  loc_1977C62:   End If
  loc_1977C65: Next var_2AC 'Integer
  loc_1977C6F: Set var_1EC = Nothing
  loc_1977C85: Set var_B4 = MemVar_1F921E4 
  loc_1977C91: Proc_6_99_1483714(var_B4, 0, var_F0)
  loc_1977C9C: MemVar_1F921E4 = var_B4
  loc_1977CAC: MemVar_1F921E4 = Nothing
  loc_1977CB5: Set var_110 = Nothing
  loc_1977CBD: Set var_1D4 = Nothing
  loc_1977CC5: Set var_108 = Nothing
  loc_1977CCD: Set var_E0 = Nothing
  loc_1977CD5: Set var_F4 = Nothing
  loc_1977CD8: Exit Sub
  loc_1977CD9: ' Referenced from: 1976765
  loc_1977CD9: ' Referenced from: 197509B
  loc_1977CDF: If (var_F8 = &HFF) Then
  loc_1977CE8:   unk_56AA14.RollbackTrans
  loc_1977CED: End If
  loc_1977CED: Proc_6_60_E62BC4(&HFF)
  loc_1977CF2: Exit Sub
End Sub
