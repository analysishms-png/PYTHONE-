VERSION 5.00
Begin VB.Form HallEstimate
  Caption = "Hall Estimate Entry"
  BackColor = &HE5E5E5&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC000C0&
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8880
  ClientHeight = 8595
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
  Begin DataGrid DGHall
    Left = 9105
    Top = 7875
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGParty
    Left = 8805
    Top = 7425
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin MSHFlexGrid FGCat
    Left = 105
    Top = 4410
    Width = 7320
    Height = 1800
    Visible = 0   'False
    TabIndex = 56
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1260
    Top = 2295
    Width = 765
    Height = 225
    Visible = 0   'False
    TabIndex = 72
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
  Begin TextBox Txt
    Index = 22
    Left = 6195
    Top = 755
    Width = 1095
    Height = 240
    Visible = 0   'False
    TabIndex = 69
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
    Left = 3420
    Top = 7170
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 66
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
    Index = 20
    Left = 10305
    Top = 5430
    Width = 1290
    Height = 240
    TabIndex = 63
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
    Index = 19
    Left = 2370
    Top = 7425
    Width = 3060
    Height = 240
    Visible = 0   'False
    TabIndex = 13
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
    Index = 18
    Left = 4800
    Top = 755
    Width = 815
    Height = 240
    TabIndex = 5
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
    Left = 3225
    Top = 755
    Width = 565
    Height = 240
    TabIndex = 4
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
  Begin TextBox TextGt
    Index = 1
    Left = 9825
    Top = 525
    Width = 1290
    Height = 240
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin TextBox TextPer
    Index = 1
    Left = 9255
    Top = 525
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
    Index = 4
    Left = 8895
    Top = 60
    Width = 1860
    Height = 255
    Visible = 0   'False
    TabIndex = 23
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
    Index = 16
    Left = 4080
    Top = 5610
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 54
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
  Begin TextBox TxtPer
    Index = 1
    Left = 9255
    Top = 2910
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    Left = 9825
    Top = 2910
    Width = 1290
    Height = 240
    Enabled = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin CommandButton Command1
    Caption = "Set&tlement"
    BackColor = &HE5E5E5&
    Left = 8505
    Top = 6585
    Width = 2895
    Height = 375
    TabIndex = 50
    MaskColor = &HFFC0FF&
    Style = 1
  End
  Begin TextBox Txt
    Index = 13
    Left = 10305
    Top = 6195
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 49
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
    Left = 10305
    Top = 5940
    Width = 1290
    Height = 240
    TabIndex = 48
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
    Index = 15
    Left = 10305
    Top = 5685
    Width = 1290
    Height = 240
    TabIndex = 47
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
    Left = 1410
    Top = 755
    Width = 735
    Height = 240
    TabIndex = 3
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
  Begin MaskEdBox txtM
    Index = 1
    Left = 4680
    Top = 6915
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 11
    Left = 4080
    Top = 5865
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
    Index = 10
    Left = 1155
    Top = 6120
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
    Index = 9
    Left = 1155
    Top = 5865
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 18
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
    Index = 8
    Left = 1155
    Top = 5610
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Left = 4080
    Top = 6120
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Index = 6
    Left = 3420
    Top = 6915
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 11
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
  Begin DataGrid DGItem
    Left = 8835
    Top = 7170
    Width = 9405
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 0
    Left = 1410
    Top = 490
    Width = 2385
    Height = 240
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
    Left = 5040
    Top = 490
    Width = 570
    Height = 240
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
    Left = 6195
    Top = 490
    Width = 1095
    Height = 240
    TabIndex = 2
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 135
    Top = 2955
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 14
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
  Begin TextBox Txt
    Index = 3
    Left = 1410
    Top = 1000
    Width = 5880
    Height = 240
    TabIndex = 6
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
    Index = 5
    Left = 3420
    Top = 6660
    Width = 2010
    Height = 240
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
  Begin DataGrid DGVType
    Left = 8520
    Top = 6975
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGBookNo
    Left = 8520
    Top = 6945
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 43
  End
  Begin MSHFlexGrid FGrid
    Left = 105
    Top = 2700
    Width = 7320
    Height = 2835
    TabIndex = 15
  End
  Begin TopCtrl TopCtrl1
    Left = -45
    Top = -15
    Width = 11835
    Height = 375
    TabIndex = 41
  End
  Begin MaskEdBox txtM
    Index = 0
    Left = 4680
    Top = 7170
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 65
  End
  Begin MaskEdBox txtMEd
    Index = 0
    Left = 225
    Top = 1800
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 71
  End
  Begin MSHFlexGrid FGrid1
    Left = 240
    Top = 1290
    Width = 7305
    Height = 1140
    TabIndex = 7
  End
  Begin Label Label1
    Caption = "Total"
    Index = 18
    ForeColor = &H400040&
    Left = 5670
    Top = 770
    Width = 420
    Height = 210
    Visible = 0   'False
    TabIndex = 70
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
    Left = 9765
    Top = 6945
    Width = 195
    Height = 660
    Visible = 0   'False
    TabIndex = 68
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Booking  Date And Time"
    Index = 17
    ForeColor = &HC00000&
    Left = 885
    Top = 7185
    Width = 2295
    Height = 210
    Visible = 0   'False
    TabIndex = 67
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
    Caption = "Net Amount Payable"
    Index = 16
    ForeColor = &H400040&
    Left = 8310
    Top = 5445
    Width = 1890
    Height = 210
    TabIndex = 64
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
    Caption = "Particulars"
    Index = 14
    ForeColor = &HC00000&
    Left = 885
    Top = 7440
    Width = 810
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
    Caption = "PAX Rate"
    Index = 13
    ForeColor = &H400040&
    Left = 3855
    Top = 770
    Width = 765
    Height = 210
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
  Begin Label Label1
    Caption = "No Of Paxs"
    Index = 11
    ForeColor = &H400040&
    Left = 2235
    Top = 770
    Width = 900
    Height = 210
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
  Begin Label LableCap
    Caption = "Total"
    Index = 1
    ForeColor = &H400040&
    Left = 8160
    Top = 525
    Width = 465
    Height = 240
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
  Begin Label LableAt
    Caption = "%"
    Index = 1
    ForeColor = &H400040&
    Left = 9645
    Top = 525
    Width = 180
    Height = 240
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
  Begin Label LableDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H400040&
    Left = 7965
    Top = 555
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 57
  End
  Begin Label Label1
    Caption = "DocID"
    Index = 12
    ForeColor = &HC00000&
    Left = 8730
    Top = 90
    Width = 555
    Height = 210
    TabIndex = 29
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
  Begin Shape Shape2
    Left = 105
    Top = 405
    Width = 11415
    Height = 2235
    Shape = 4
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Balance"
    Index = 9
    ForeColor = &H400040&
    Left = 2520
    Top = 5625
    Width = 615
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H400040&
    Left = 7965
    Top = 2925
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 53
  End
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H400040&
    Left = 9645
    Top = 2910
    Width = 180
    Height = 240
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &H400040&
    Left = 8160
    Top = 2910
    Width = 465
    Height = 240
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
  Begin Shape Shape1
    BorderColor = &H400040&
    Left = 8175
    Top = 5385
    Width = 3555
    Height = 1125
    BorderWidth = 2
    FillColor = &HC000C0&
  End
  Begin Label Label1
    Caption = "Cash Recd."
    Index = 8
    ForeColor = &H400040&
    Left = 8310
    Top = 5700
    Width = 900
    Height = 210
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
  Begin Label Label1
    Caption = "Cash to be Recd."
    Index = 7
    ForeColor = &H400040&
    Left = 8310
    Top = 5955
    Width = 1410
    Height = 210
    TabIndex = 45
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
    Caption = "To Refund"
    Index = 2
    ForeColor = &H400040&
    Left = 8310
    Top = 6210
    Width = 870
    Height = 210
    Visible = 0   'False
    TabIndex = 44
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
    ForeColor = &H400040&
    Left = 210
    Top = 770
    Width = 870
    Height = 210
    TabIndex = 42
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
    ForeColor = &H400040&
    Left = 2520
    Top = 5880
    Width = 1245
    Height = 210
    Visible = 0   'False
    TabIndex = 40
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
    ForeColor = &H400040&
    Left = 105
    Top = 6135
    Width = 825
    Height = 210
    Visible = 0   'False
    TabIndex = 39
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
    ForeColor = &H400040&
    Left = 2520
    Top = 6135
    Width = 1485
    Height = 210
    Visible = 0   'False
    TabIndex = 38
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
    ForeColor = &HC00000&
    Left = 885
    Top = 6930
    Width = 2475
    Height = 210
    Visible = 0   'False
    TabIndex = 37
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
    Index = 15
    ForeColor = &H400040&
    Left = 105
    Top = 5880
    Width = 720
    Height = 210
    Visible = 0   'False
    TabIndex = 35
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
    ForeColor = &H400040&
    Left = 3855
    Top = 510
    Width = 585
    Height = 210
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
  Begin Label Label1
    Caption = "V.Type "
    Index = 4
    ForeColor = &H400040&
    Left = 210
    Top = 510
    Width = 660
    Height = 210
    TabIndex = 33
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
    ForeColor = &H400040&
    Left = 5670
    Top = 510
    Width = 390
    Height = 210
    TabIndex = 32
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H400040&
    Left = 4335
    Top = 495
    Width = 645
    Height = 240
    TabIndex = 31
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
    Caption = "Party "
    Index = 5
    ForeColor = &H400040&
    Left = 210
    Top = 1005
    Width = 480
    Height = 210
    TabIndex = 30
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
    Caption = "Hall Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 885
    Top = 6690
    Width = 795
    Height = 210
    Visible = 0   'False
    TabIndex = 28
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
    ForeColor = &H400040&
    Left = 105
    Top = 5625
    Width = 705
    Height = 210
    Visible = 0   'False
    TabIndex = 27
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

Attribute VB_Name = "HallEstimate"

Private global_148 As Integer
Private global_150 As Integer
Private global_52 As Integer
Private global_116 As Integer
Private global_136 As Integer

Private Sub TxtGt_GotFocus(Index As Integer) 'ECF490
  'Data Table: 55BCF4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF3F2: Set var_88 = Me.TxtGt
  loc_ECF3F8: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECF406: Proc_6_74_E226B0(var_8C)
  loc_ECF412: Call Proc_126_82_F262C0(var_8C)
  loc_ECF426: Set var_88 = Me.TxtGt
  loc_ECF42C: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECF434: var_8C.SelStart = 0
  loc_ECF44D: Set var_88 = Me.TxtGt
  loc_ECF453: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECF46E: Set var_90 = Me.TxtGt
  loc_ECF474: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECF47C: var_98.SelLength = Len(var_8C.Text)
  loc_ECF48F: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B8A0
  'Data Table: 55BCF4
  loc_E5B86D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B876:   Proc_6_75_E527CC(Shift)
  loc_E5B87B: End If
  loc_E5B890: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B899:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5B89E: End If
  loc_E5B89E: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E5749C
  'Data Table: 55BCF4
  loc_E5746E: Set var_88 = Me.TxtGt
  loc_E57474: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E5748F: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E5749B: Exit Sub
End Sub

Private Sub TxtGt_KeyUp(KeyCode As Integer, Shift As Integer) 'E015A4
  'Data Table: 55BCF4
  loc_E0159E: Call Proc_126_89_164D58C(KeyCode)
  loc_E015A3: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4E954
  'Data Table: 55BCF4
  loc_E4E932: Set var_88 = Me.TxtGt
  loc_E4E938: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4E946: Proc_6_73_E22704(var_8C)
  loc_E4E952: Exit Sub
End Sub

Private Sub TextGt_GotFocus(Index As Integer) 'ECE5D0
  'Data Table: 55BCF4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECE532: Set var_88 = Me.TextGt
  loc_ECE538: Call 0.Method_TextGt_GotFocus0 (Index)
  loc_ECE546: Proc_6_74_E226B0(var_8C)
  loc_ECE552: Call Proc_126_82_F262C0(var_8C)
  loc_ECE566: Set var_88 = Me.TextGt
  loc_ECE56C: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ECE574: var_8C.SelStart = 0
  loc_ECE58D: Set var_88 = Me.TextGt
  loc_ECE593: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ECE5AE: Set var_90 = Me.TextGt
  loc_ECE5B4: Call 0.Method_TextGt_GotFocus0 (Index, var_98)
  loc_ECE5BC: var_98.SelLength = Len(var_8C.Text)
  loc_ECE5CF: Exit Sub
End Sub

Private Sub TextGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B3F0
  'Data Table: 55BCF4
  loc_E5B3BD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B3C6:   Proc_6_75_E527CC(Shift)
  loc_E5B3CB: End If
  loc_E5B3E0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B3E9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5B3EE: End If
  loc_E5B3EE: Exit Sub
End Sub

Private Sub TextGt_KeyPress(KeyAscii As Integer) 'E56C00
  'Data Table: 55BCF4
  loc_E56BD2: Set var_88 = Me.TextGt
  loc_E56BD8: Call 0.Method_TextGt_KeyPress0 (KeyAscii)
  loc_E56BF3: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E56BFF: Exit Sub
End Sub

Private Sub TextGt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFB820
  'Data Table: 55BCF4
  Dim arg_7FFF As Double
  loc_DFB81C: Exit Sub
  loc_DFB81D: arg_7FFF = 
End Sub

Private Sub TextGt_LostFocus(Index As Integer) 'E4F03C
  'Data Table: 55BCF4
  loc_E4F01A: Set var_88 = Me.TextGt
  loc_E4F020: Call 0.Method_TextGt_LostFocus0 (Index)
  loc_E4F02E: Proc_6_73_E22704(var_8C)
  loc_E4F03A: Exit Sub
End Sub

Private Sub TextGt_Validate(Cancel As Boolean) 'E01658
  'Data Table: 55BCF4
  loc_E01652: Call Proc_126_90_14ABF5C(Cancel)
  loc_E01657: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA1178
  'Data Table: 55BCF4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA1113: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA1129:   Me.FGrid.Col = 1
  loc_EA1131: End If
  loc_EA1144: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA1157: Set var_88 = Me.TxtGrid
  loc_EA115D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1165: var_BC.Visible = False
  loc_EA1171: Call Proc_126_82_F262C0()
  loc_EA1176: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E664E8
  'Data Table: 55BCF4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E664A4: Set var_88 = Me.TxtGrid
  loc_E664AA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E664C4: If (var_8C.Visible = 0) Then
  loc_E664DD:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E664E5: End If
  loc_E664E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF21C
  'Data Table: 55BCF4
  Dim arg_7C68 As Integer
  loc_DFF214: Call Proc_126_76_E37F90()
  loc_DFF219: Exit Sub
  loc_DFF21A: arg_7C68 = 
End Sub

Private Sub FGrid_UnknownEvent_A '11F6D14
  'Data Table: 55BCF4
  Dim var_98 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11F6870: Set var_88 = Me.TopCtrl1
  loc_11F6876: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11F68C6: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11F68CF:   Call Form_KeyDown(Cancel, arg_10)
  loc_11F68D4: End If
  loc_11F68D8: Set var_88 = Me.TopCtrl1
  loc_11F68DE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11F68F3: If ( = "Browse") Then
  loc_11F68F6:   Exit Sub
  loc_11F68F7: End If
  loc_11F696B: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11F6984:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F6994:   var_DC = "+{Tab}"
  loc_11F699A:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11F69A4:   Cancel = 0
  loc_11F69AA: Else
  loc_11F69B4:   var_B8 = Me.FGrid.Rows
  loc_11F6A01:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_11F6A1A:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F6A26:     Set var_88 = Me.TopCtrl1
  loc_11F6A2C:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_B8)
  loc_11F6A41:     If (Cancel = "Add") Then
  loc_11F6A52:       Proc_303_0_FB9B68("{Tab}", 0)
  loc_11F6A5C:       Cancel = 0
  loc_11F6A62:     Else
  loc_11F6A67:       Call Proc_126_83_F0A4C4(0, Cancel)
  loc_11F6A6C:     End If
  loc_11F6A6C:   End If
  loc_11F6A6C: End If
  loc_11F6A72: global_148 = Cancel
  loc_11F6A98: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F6ABC: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11F6AD2:   var_EC = CLng(Me.FGrid.Col)
  loc_11F6AE2:   If (var_EC = CLng(1)) Then
  loc_11F6AF8:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6B10:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F6B15:     var_11C = vbNullString
  loc_11F6B1F:     Set var_E4 = Me.FGrid
  loc_11F6B25:     LateIdCallSt
  loc_11F6B50:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6B58:     var_FC = CVar(CLng(9)) 'Long
  loc_11F6B5D:     var_11C = vbNullString
  loc_11F6B67:     Set var_E0 = Me.FGrid
  loc_11F6B6D:     LateIdCallSt
  loc_11F6B92:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6B9A:     var_FC = CVar(CLng(3)) 'Long
  loc_11F6B9F:     var_11C = vbNullString
  loc_11F6BA9:     Set var_E0 = Me.FGrid
  loc_11F6BAF:     LateIdCallSt
  loc_11F6BC4:   Else
  loc_11F6BCB:     If (var_EC = CLng(3)) Then
  loc_11F6BEA:       Set var_E0 = Me.FGrid
  loc_11F6C0E:       LateIdCallSt
  loc_11F6C26:       Call Proc_126_84_1153D5C(Me.FGrid, vbNullString, CVar(CLng(var_E0.Col)), CVar(CLng(Me.FGrid.Row)), var_E0, vbNullString, CVar(CLng(var_E0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F6C2E:     Else
  loc_11F6C35:       If (var_EC = CLng(4)) Then
  loc_11F6C54:         Set var_E0 = Me.FGrid
  loc_11F6C78:         LateIdCallSt
  loc_11F6C90:         Call Proc_126_84_1153D5C(Me.FGrid, vbNullString, CVar(CLng(var_E0.Col)), CVar(CLng(Me.FGrid.Row)), var_E0, vbNullString)
  loc_11F6C98:       Else
  loc_11F6C9F:         If (var_EC = CLng(2)) Then
  loc_11F6CB5:           var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6CCD:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F6CD2:           var_11C = vbNullString
  loc_11F6CDC:           Set var_E4 = Me.FGrid
  loc_11F6CE2:           LateIdCallSt
  loc_11F6CFA:         End If
  loc_11F6CFA:       End If
  loc_11F6CFA:     End If
  loc_11F6CFA:   End If
  loc_11F6CFA: End If
  loc_11F6D00: If (Cancel = &HD) Then
  loc_11F6D08:   global_150 = 0
  loc_11F6D0B: End If
  loc_11F6D0D: Cancel = 0
  loc_11F6D10: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0E8B8
  'Data Table: 55BCF4
  loc_E0E8A9: Call FGrid_UnknownEvent_C()
  loc_E0E8B3: global_150 = 0
  loc_E0E8B6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '106182C
  'Data Table: 55BCF4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_10615B8: Set var_88 = Me.TopCtrl1
  loc_10615BE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10615D3: If ( = "Browse") Then
  loc_10615D6:   Exit Sub
  loc_10615D7: End If
  loc_10615EA: var_BC = CLng(Me.FGrid.Col)
  loc_10615FA: If (var_BC = CLng(1)) Then
  loc_1061601:   Set var_D4 = Me.FGrid
  loc_1061625:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1061652:   Set var_C4 = var_D4
  loc_1061664:   Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_106168C:   Set var_88 = Me.TxtGrid
  loc_1061692:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_106169A:   0 = var_C4.Text
  loc_10616B3:   If (Len(var_C0) <= 1) Then
  loc_10616C2:     Set var_88 = Me.TxtGrid
  loc_10616C8:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_10616D0:     var_DA = var_C4.Text
  loc_10616E1:     Set var_C8 = Me.TxtGrid
  loc_10616E7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10616EF:     var_D4.Text = var_C0
  loc_1061702:   End If
  loc_106170E:   Set var_88 = Me.TxtGrid
  loc_1061714:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_106172E:   Set var_C8 = Me.TxtGrid
  loc_1061734:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_106173C:   var_D4.SelStart = Len(var_C4.Text)
  loc_1061752: Else
  loc_1061759:   If Not (var_BC = CLng(3)) Then
  loc_1061763:     If (var_BC = CLng(4)) Then
  loc_1061766:     End If
  loc_10617A4:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_10617B9:   Else
  loc_10617C0:     If (var_BC = CLng(2)) Then
  loc_1061801:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_1061813:     End If
  loc_1061813:   End If
  loc_1061813: End If
  loc_106181D: If (CLng(Cancel) <> &HD) Then
  loc_1061825:   global_150 = &HFF
  loc_1061828: End If
  loc_1061828: Exit Sub
  loc_106182A: If (0 = global_150) Then Exit Sub
  loc_106182A: End If
End Sub

Private Sub FGrid_UnknownEvent_D 'FECFAC
  'Data Table: 55BCF4
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_FECDD4: Set var_90 = Me.TopCtrl1
  loc_FECDDA: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FECDEF: If ( = "Browse") Then
  loc_FECDF2:   Exit Sub
  loc_FECDF3: End If
  loc_FECE10: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FECE13:   Exit Sub
  loc_FECE14: End If
  loc_FECE25: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FECE47:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FECE81:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FECEA3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FECEB9:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FECEC2:         Set var_114 = Me.FGrid
  loc_FECEDD:       Else
  loc_FECEF0:         Me.FGrid.Rows = 1
  loc_FECF16:         var_B0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FECF1E:         Set var_114 = Me.FGrid
  loc_FECF4B:         Me.FGrid.FixedRows = 1
  loc_FECF53:       End If
  loc_FECF53:       Call Proc_126_84_1153D5C(FGrid.DispID_10000, var_B0)
  loc_FECF58:     End If
  loc_FECF5B:   Else
  loc_FECF7C:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FECF8C:   End If
  loc_FECF90:   Set var_90 = Me.FGrid
  loc_FECFA1: End If
  loc_FECFA6: Set var_8C = Nothing
  loc_FECFA9: Exit Sub
  loc_FECFAA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E457C4
  'Data Table: 55BCF4
  Dim var_8C As TextBox
  loc_E45798: Call Proc_126_82_F262C0()
  loc_E457A8: Set var_88 = Me.TxtGrid
  loc_E457AE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E457B6: var_8C.Visible = False
  loc_E457C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'FF34CC
  'Data Table: 55BCF4
  Dim var_98 As Variant
  Dim unk_55BD19 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C8 As TextBox
  loc_FF32E4: On Error Goto loc_FF34C4
  loc_FF330A: Call Proc_126_81_104CAF0(Proc_5_1_100CB50("ADD", Me))
  loc_FF3315: Call Proc_126_80_1017954(global_80)
  loc_FF3333: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_98)
  loc_FF333B: var_98.Text = CStr(MemVar_1F920EC)
  loc_FF3371: unk_55BD19.Execute "Select Description,V_Type From Voucher_Type Where NCat='EBILL' AND rESTCODE='" & global_56 & "'", var_BC, -1
  loc_FF337C: Set var_88 = Me.Txt
  loc_FF33A0: If (var_88.RecordCount > 0) Then
  loc_FF33DC:   Set var_C4 = Me.Txt
  loc_FF33E2:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C8)
  loc_FF33EA:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_FF341A:   var_98 = var_88.Fields.Item("V_Type")
  loc_FF3439:   Set var_C4 = Me.Txt
  loc_FF343F:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C8)
  loc_FF3447:   var_C8.Tag = CStr(var_98.Value)
  loc_FF345D: End If
  loc_FF3468: Set var_90 = Me.Txt
  loc_FF346E: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98)
  loc_FF3476: var_98.SetFocus
  loc_FF3490: Set var_90 = Me.Txt
  loc_FF3496: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_98)
  loc_FF34AC: Call Proc_126_88_1A505FC(CDate(var_98.Text))
  loc_FF34C0: Set var_88 = Nothing
  loc_FF34C3: Exit Sub
  loc_FF34C4: ' Referenced from: FF32E4
  loc_FF34C4: Proc_6_60_E62BC4(var_90)
  loc_FF34C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'FA0F58
  'Data Table: 55BCF4
  Dim var_94 As TextBox
  loc_FA0DD0: On Error Goto loc_FA0F4F
  loc_FA0DF6: Call Proc_126_81_104CAF0(Proc_5_1_100CB50("EDIT", Me))
  loc_FA0E0E: Set var_8C = Me.Txt
  loc_FA0E14: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_FA0E1C: var_94.Enabled = False
  loc_FA0E35: Set var_8C = Me.Txt
  loc_FA0E3B: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_94)
  loc_FA0E43: var_94.Enabled = False
  loc_FA0E5C: Set var_8C = Me.Txt
  loc_FA0E62: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(3), var_94)
  loc_FA0E6A: var_94.Enabled = False
  loc_FA0E83: Set var_8C = Me.Txt
  loc_FA0E89: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(5), var_94)
  loc_FA0E91: var_94.Enabled = False
  loc_FA0EAA: Set var_8C = Me.Txt
  loc_FA0EB0: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(7), var_94)
  loc_FA0EB8: var_94.Enabled = False
  loc_FA0ED1: Set var_8C = Me.Txt
  loc_FA0ED7: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(&HC), var_94)
  loc_FA0EDF: var_94.Enabled = False
  loc_FA0EF8: Set var_8C = Me.Txt
  loc_FA0EFE: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(&HB), var_94)
  loc_FA0F06: var_94.Enabled = False
  loc_FA0F1F: Set var_8C = Me.Txt
  loc_FA0F25: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_94)
  loc_FA0F2D: var_94.Enabled = False
  loc_FA0F3D: Set var_8C = Me.FGrid
  loc_FA0F4E: Exit Sub
  loc_FA0F4F: ' Referenced from: FA0DD0
  loc_FA0F4F: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_FA0F54: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '12F44A0
  'Data Table: 55BCF4
  Dim unk_55BD28 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_12F3DD4: On Error Goto loc_12F444F
  loc_12F3E0E: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_12F3E1A:   unk_55BD28.BeginTrans var_118
  loc_12F3E30:   var_94 = Me.Bookmark 'Variant
  loc_12F3E8A:   unk_55BD28.Execute CStr("Delete From SunTran Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F3ED5:   var_160 = 0
  loc_12F3EE8:   var_158 = 0
  loc_12F3EF3:   var_154 = 0
  loc_12F3F06:   var_14C = 0
  loc_12F3F11:   var_148 = 0
  loc_12F3F24:   var_140 = 0
  loc_12F3F6D:   Proc_154_5_10E33A4(MemVar_1F92044, "SunTran", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F3FEB:   unk_55BD28.Execute CStr("Delete From SunTranH Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F4036:   var_160 = 0
  loc_12F4049:   var_158 = 0
  loc_12F4054:   var_154 = 0
  loc_12F4067:   var_14C = 0
  loc_12F4072:   var_148 = 0
  loc_12F4085:   var_140 = 0
  loc_12F40CE:   Proc_154_5_10E33A4(MemVar_1F92044, "SunTranH", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F414C:   unk_55BD28.Execute CStr("Delete From HallStock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F4197:   var_160 = 0
  loc_12F41AA:   var_158 = 0
  loc_12F41B5:   var_154 = 0
  loc_12F41C8:   var_14C = 0
  loc_12F41D3:   var_148 = 0
  loc_12F41E6:   var_140 = 0
  loc_12F422F:   Proc_154_5_10E33A4(MemVar_1F92044, "HallStock", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F429F:   var_F4 = "Delete From HallSale1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12F42AD:   unk_55BD28.Execute CStr(var_F4), var_114, -1
  loc_12F42F8:   var_160 = 0
  loc_12F430B:   var_158 = 0
  loc_12F4316:   var_154 = 0
  loc_12F4329:   var_14C = 0
  loc_12F4334:   var_148 = 0
  loc_12F4347:   var_140 = 0
  loc_12F4387:   var_124 = "HallSale1"
  loc_12F4390:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F43BE:   unk_55BD28.CommitTrans
  loc_12F43CE:   Me.Requery -1
  loc_12F43EE:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12F43FB:     Me.Bookmark = var_94
  loc_12F4403:   Else
  loc_12F4417:     If (Me.EOF = 0) Then
  loc_12F4420:       Me.MoveLast
  loc_12F4425:     End If
  loc_12F4425:   End If
  loc_12F4425:   Call Proc_126_78_183913C(var_140, 0, var_148, var_14C)
  loc_12F4446:   Proc_5_0_110649C(&HFF, Me, global_80, 0)
  loc_12F444E: End If
  loc_12F444E: Exit Sub
  loc_12F444F: ' Referenced from: 12F3DD4
  loc_12F4455: unk_55BD28.RollbackTrans
  loc_12F4462: Set var_11C = Err()
  loc_12F4468: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_12F4489: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_12F449C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E173E4
  'Data Table: 55BCF4
  loc_E173D9: Me.Global.Unload Me
  loc_E173E1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E38418
  'Data Table: 55BCF4
  Dim arg_7CFF As Double
  loc_E38408: Proc_5_0_110649C(&HFF, Me)
  loc_E38410: Call Proc_126_78_183913C(global_80)
  loc_E38415: Exit Sub
  loc_E38416: arg_7CFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E38238
  'Data Table: 55BCF4
  Dim arg_7CFF As Double
  loc_E38228: Proc_5_0_110649C(&HFF, Me)
  loc_E38230: Call Proc_126_78_183913C(global_80)
  loc_E38235: Exit Sub
  loc_E38236: arg_7CFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E38298
  'Data Table: 55BCF4
  Dim arg_7CFF As Double
  loc_E38288: Proc_5_0_110649C(&HFF, Me)
  loc_E38290: Call Proc_126_78_183913C(global_80)
  loc_E38295: Exit Sub
  loc_E38296: arg_7CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E38358
  'Data Table: 55BCF4
  Dim arg_7CFF As Double
  loc_E38348: Proc_5_0_110649C(&HFF, Me)
  loc_E38350: Call Proc_126_78_183913C(global_80)
  loc_E38355: Exit Sub
  loc_E38356: arg_7CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '197A964
  'Data Table: 55BCF4
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
  Dim unk_55BD19 As Connection15
  Dim var_244 As Variant
  Dim var_248 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Double
  Dim var_FC As Variant
  Dim var_D4 As Double
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_104 As Double
  Dim var_10C As Double
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim unk_55BD28 As Connection15
  Dim var_28C As TextBox
  Dim var_2C4 As Label
  Dim var_320 As TextBox
  Dim var_38C As TextBox
  Dim var_41C As Variant
  Dim var_D60 As Double
  Dim var_430 As Variant
  Dim var_D68 As Double
  Dim var_6E4 As Variant
  Dim var_D70 As Double
  Dim var_6F8 As Variant
  Dim var_D78 As Double
  Dim var_79C As MaskEdBox
  Dim var_7AC As Variant
  Dim var_84C As MaskEdBox
  Dim var_85C As Variant
  Dim var_8C4 As TextBox
  Dim var_910 As TextBox
  Dim var_95C As TextBox
  Dim var_D80 As Double
  Dim var_A00 As TextBox
  Dim var_D88 As Double
  Dim var_254 As String
  Dim var_270 As String
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_308 As Variant
  Dim var_3B0 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_444 As Variant
  Dim var_474 As Variant
  Dim var_484 As Variant
  Dim var_4A4 As Variant
  Dim var_4C4 As Variant
  Dim var_4E4 As Variant
  Dim var_4F4 As Variant
  Dim var_504 As Variant
  Dim var_514 As Variant
  Dim var_544 As Variant
  Dim var_554 As Variant
  Dim var_584 As Variant
  Dim var_5C4 As Variant
  Dim var_5E4 As Variant
  Dim var_604 As Variant
  Dim var_614 As Variant
  Dim var_624 As Variant
  Dim var_654 As Variant
  Dim var_664 As Variant
  Dim var_6A4 As Variant
  Dim var_70C As Variant
  Dim var_794 As Variant
  Dim var_834 As Variant
  Dim var_844 As Variant
  Dim var_87C As Variant
  Dim var_8D8 As Variant
  Dim var_8E8 As Variant
  Dim var_934 As Variant
  Dim var_9E8 As Variant
  Dim var_A24 As Variant
  Dim var_A34 As Variant
  Dim var_BAC As Variant
  Dim var_BBC As Variant
  Dim var_BEC As Variant
  Dim var_D20 As Variant
  Dim var_D34 As String
  Dim var_274 As Variant
  Dim var_388 As TextBox
  Dim var_414 As Variant
  Dim var_418 As MSHFlexGrid
  Dim var_424 As MSHFlexGrid
  Dim var_42C As Variant
  Dim var_6D8 As Variant
  Dim var_6E0 As MSHFlexGrid
  Dim var_6EC As MSHFlexGrid
  Dim var_DD4 As Variant
  Dim var_DF4 As Variant
  Dim var_6F4 As Variant
  Dim var_E38 As Variant
  Dim var_E58 As Variant
  Dim var_FF4 As Double
  Dim var_740 As MSHFlexGrid
  Dim var_FFC As Double
  Dim var_744 As MSHFlexGrid
  Dim var_258 As String
  Dim var_2C8 As String
  Dim var_434 As String
  Dim var_6E8 As String
  Dim var_914 As String
  Dim var_A04 As String
  Dim var_764 As Variant
  Dim var_814 As Variant
  Dim var_31C As Label
  Dim var_88 As Recordset15
  loc_1977E70: On Error Goto loc_197A93F
  loc_1977E7E: Set var_180 = Me.Txt
  loc_1977E84: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_1977EAD: If (Proc_6_27_EA565C(var_184, "Voucher Date") = 0) Then
  loc_1977EB0:   Exit Sub
  loc_1977EB1: End If
  loc_1977EBC: Set var_180 = Me.Txt
  loc_1977EC2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_184)
  loc_1977EEB: If (Proc_6_27_EA565C(var_184, "Voucher No") = 0) Then
  loc_1977EEE:   Exit Sub
  loc_1977EEF: End If
  loc_1977EFA: Set var_180 = Me.Txt
  loc_1977F00: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_184)
  loc_1977F29: If (Proc_6_27_EA565C(var_184, "Party name") = 0) Then
  loc_1977F2C:   Exit Sub
  loc_1977F2D: End If
  loc_1977F38: Set var_180 = Me.Txt
  loc_1977F3E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_184)
  loc_1977F4F: Set var_188 = var_184
  loc_1977F67: If (Proc_6_27_EA565C(var_188, "Booking No") = 0) Then
  loc_1977F6A:   Exit Sub
  loc_1977F6B: End If
  loc_1977F72: Set var_180 = Me.TxtGt
  loc_1977F78: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_18E)
  loc_1977F8A: Set var_184 = Me.TxtGt
  loc_1977F90: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_18E, var_188)
  loc_1977FB6: If (CDbl(Val(var_188.Text)) > CDbl(0)) Then
  loc_1977FB9:   var_1A0 = 1
  loc_1977FC2:   var_1C0 = 1
  loc_1977FE0:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1977FE6:   var_200 = Trim(var_1F0)
  loc_1978002:   If (var_200 = vbNullString) Then
  loc_197801E:     MsgBox("Fill Item Name ", 0, var_1F0, var_200, var_220)
  loc_1978041:     Me.FGrid.Row = 1
  loc_197804D:     Set var_180 = Me.FGrid
  loc_1978071:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1978079:     Exit Sub
  loc_197807A:   End If
  loc_197807A:   var_1A0 = 1
  loc_1978083:   var_1C0 = 3
  loc_19780A1:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19780A7:   var_200 = Trim(var_1F0)
  loc_19780C3:   If (var_200 = vbNullString) Then
  loc_19780DF:     MsgBox("Item Detail Required ", 0, var_1F0, var_200, var_220)
  loc_1978102:     Me.FGrid.Row = 1
  loc_197810E:     Set var_180 = Me.FGrid
  loc_1978132:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_197813A:     Exit Sub
  loc_197813B:   End If
  loc_197813B: End If
  loc_1978160: For var_224 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_224 'Integer
  loc_197816A:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1978172:   var_1C0 = CVar(CLng(7)) 'Long
  loc_19781A2:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_19781A9:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_19781B1:     var_1C0 = CVar(CLng(8)) 'Long
  loc_19781DD:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19781EC:   Else
  loc_19781F0:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_19781F8:     var_1C0 = CVar(CLng(8)) 'Long
  loc_1978207:     var_1E0 = Me.FGrid.TextMatrix)
  loc_1978212:     var_18C = CStr(var_1E0)
  loc_1978224:     var_AC = (var_AC + Val(var_18C))
  loc_1978230:   End If
  loc_1978233: Next var_224 'Integer
  loc_1978244: Set var_180 = Me.TxtGt
  loc_197824A: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_18E, var_92)
  loc_1978255: For var_230 =  To var_18E: 1 = var_230 'Integer
  loc_1978287:   Set var_180 = Me.LblCap
  loc_197828D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_1E0, -1)
  loc_19782BF:   unk_55BD19.Execute var_244 & var_18C & "' And v_type='" & global_132 & "'", 0, var_248
  loc_19782CF:    = var_244.Item()
  loc_19782D7:    = var_248.Value
  loc_197830B:   var_24C = Proc_6_38_E68A98(var_184.Tag.Fields)
  loc_1978316:   If (var_24C = "Addition") Then
  loc_1978326:     Set var_180 = Me.TxtGt
  loc_197832C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184)
  loc_1978334:     var_18C = var_184.Text
  loc_197834B:     var_B4 = (var_B4 + Val(var_18C))
  loc_1978365:     Set var_180 = Me.TxtPer
  loc_197836B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C)
  loc_1978373:     var_B4 = var_184.Text
  loc_197838A:     var_CC = (var_CC + Val(var_18C))
  loc_197839A:   Else
  loc_19783A2:     If (var_24C = "Deduction") Then
  loc_19783B2:       Set var_180 = Me.TxtGt
  loc_19783B8:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C)
  loc_19783C0:       var_CC = var_184.Text
  loc_19783D7:       var_BC = (var_BC + Val(var_18C))
  loc_19783F1:       Set var_180 = Me.TxtPer
  loc_19783F7:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_BC)
  loc_19783FF:       var_22C = var_184.Text
  loc_1978416:       var_C4 = (var_C4 + Val(var_18C))
  loc_1978426:     Else
  loc_197842E:       If (var_24C = "Discount") Then
  loc_197843E:         Set var_180 = Me.TxtGt
  loc_1978444:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_C4)
  loc_197844C:         var_22C = var_184.Text
  loc_1978463:         var_DC = (var_DC + Val(var_18C))
  loc_197847D:         Set var_180 = Me.TxtPer
  loc_1978483:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_DC)
  loc_197848B:         var_22C = var_184.Text
  loc_19784A2:         var_E4 = (var_E4 + Val(var_18C))
  loc_19784B2:       Else
  loc_19784BA:         If (var_24C = "Luxury Tax") Then
  loc_19784CA:           Set var_180 = Me.TxtGt
  loc_19784D0:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_E4)
  loc_19784D8:           var_22C = var_184.Text
  loc_19784EF:           var_FC = (var_FC + Val(var_18C))
  loc_1978509:           Set var_180 = Me.TxtPer
  loc_197850F:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_FC)
  loc_1978517:           var_22C = var_184.Text
  loc_197852E:           var_D4 = (var_D4 + Val(var_18C))
  loc_197853E:         Else
  loc_1978546:           If (var_24C = "Round Off") Then
  loc_1978556:             Set var_180 = Me.TxtGt
  loc_197855C:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_D4)
  loc_1978564:             var_22C = var_184.Text
  loc_197857B:             var_EC = (var_EC + Val(var_18C))
  loc_1978595:             Set var_180 = Me.TxtPer
  loc_197859B:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_EC)
  loc_19785A3:             var_22C = var_184.Text
  loc_19785BA:             var_F4 = (var_F4 + Val(var_18C))
  loc_19785CA:           Else
  loc_19785D2:             If (var_24C = "Sale Tax") Then
  loc_19785E2:               Set var_180 = Me.TxtGt
  loc_19785E8:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_F4)
  loc_19785F0:               var_22C = var_184.Text
  loc_1978607:               var_FC = (var_FC + Val(var_18C))
  loc_1978621:               Set var_180 = Me.TxtPer
  loc_1978627:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_FC)
  loc_197862F:               var_22C = var_184.Text
  loc_1978646:               var_D4 = (var_D4 + Val(var_18C))
  loc_1978656:             Else
  loc_197865E:               If (var_24C = "Service Charge") Then
  loc_197866E:                 Set var_180 = Me.TxtGt
  loc_1978674:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_D4)
  loc_197867C:                 var_22C = var_184.Text
  loc_1978693:                 var_104 = (var_104 + Val(var_18C))
  loc_19786AD:                 Set var_180 = Me.TxtPer
  loc_19786B3:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_104)
  loc_19786BB:                 var_22C = var_184.Text
  loc_19786D2:                 var_10C = (var_10C + Val(var_18C))
  loc_19786E2:               Else
  loc_19786EA:                 If (var_24C = "Service Tax") Then
  loc_19786FA:                   Set var_180 = Me.TxtGt
  loc_1978700:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_10C)
  loc_1978708:                   var_22C = var_184.Text
  loc_197871F:                   var_FC = (var_FC + Val(var_18C))
  loc_1978739:                   Set var_180 = Me.TxtPer
  loc_197873F:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_FC)
  loc_1978747:                   var_22C = var_184.Text
  loc_197875E:                   var_D4 = (var_D4 + Val(var_18C))
  loc_197876B:                   GoTo loc_197876E
  loc_197876E:                   ' Referenced from:               197876B
  loc_197876E:                 End If
  loc_197876E:               End If
  loc_197876E:             End If
  loc_197876E:           End If
  loc_197876E:         End If
  loc_197876E:       End If
  loc_197876E:     End If
  loc_197876E:   End If
  loc_1978771: Next var_230 'Integer
  loc_1978779: var_9C = vbNullString
  loc_197877F: Call Proc_126_79_112E344(var_18E)
  loc_197878A: If (var_18E = 0) Then
  loc_197878D:   Exit Sub
  loc_197878E: End If
  loc_1978799: Set var_180 = Me.TxtGrid
  loc_197879F: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_184)
  loc_19787A7: var_184.Visible = False
  loc_19787B3: Call Proc_126_82_F262C0()
  loc_19787C6: Set var_180 = Me.Txt
  loc_19787CC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_19787D4: var_18C = var_184.Text
  loc_19787F4: If (Proc_6_91_EF2D40(CDate(var_18C)) = 0) Then
  loc_1978802:   Set var_180 = Me.Txt
  loc_1978808:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_1978810:   var_184.SetFocus
  loc_197881C:   Exit Sub
  loc_197881D: End If
  loc_1978821: Set var_180 = Me.TopCtrl1
  loc_1978827: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_184)
  loc_197883C: If ( = "Add") Then
  loc_197886C:   Set var_180 = Me.Txt
  loc_1978872:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Select Count(*) From HallSale1 Where DocID='", var_1E0, -1)
  loc_197887A:   var_188 = var_184.Text
  loc_1978893:   unk_55BD19.Execute var_244 & var_18C & "'", 0, var_248
  loc_197889B:   var_1F0 = var_188.Fields
  loc_19788A3:    = var_244.Item()
  loc_19788AB:    = var_248.Value
  loc_19788D8:   If (var_1F0 > 0) Then
  loc_19788E1:     Call Proc_126_85_11080C4(MemVar_1F92044)
  loc_19788F4:     Set var_180 = Me.Txt
  loc_19788FA:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_1978902:     var_184.Text = var_18C
  loc_1978911:     Exit Sub
  loc_1978912:   End If
  loc_1978915: Else
  loc_1978932:   var_184 = Me.Fields.Item("DocID")
  loc_197893A:   var_1E0 = var_184.Value
  loc_1978943:   var_18C = CStr(var_1E0)
  loc_1978949:   global_104 = var_18C
  loc_197895A: End If
  loc_197895C: var_8A = &HFF
  loc_1978968: unk_55BD28.BeginTrans var_250
  loc_1978976: unk_55BD19.BeginTrans var_250
  loc_1978999: Set var_180 = Me.Txt
  loc_197899F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From SunTran Where DocID='", var_1E0)
  loc_19789A7: -1 = var_184.Text
  loc_19789C0: unk_55BD28.Execute var_188 & var_18C & "'", var_8A, var_18C
  loc_19789F8: Set var_180 = Me.Txt
  loc_19789FE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From SunTranH Where DocID='")
  loc_1978A06: var_1E0 = var_184.Text
  loc_1978A0F: var_234 = -1 & var_18C
  loc_1978A1F: unk_55BD28.Execute var_188 & var_18C & "'", var_188, 
  loc_1978A57: Set var_180 = Me.Txt
  loc_1978A5D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From HallStock Where DocID='")
  loc_1978A65: var_1E0 = var_184.Text
  loc_1978A6E: var_234 = -1 & var_18C
  loc_1978A7E: unk_55BD28.Execute var_188 & var_18C & "'", var_188, 
  loc_1978AB6: Set var_180 = Me.Txt
  loc_1978ABC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From HallSale1 Where DocID='")
  loc_1978AC4: var_1E0 = var_184.Text
  loc_1978ACD: var_234 = -1 & var_18C
  loc_1978ADD: unk_55BD28.Execute var_188 & var_18C & "'", var_188, 
  loc_1978B05: Set var_180 = Me.Txt
  loc_1978B0B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_1978B26: Set var_188 = Me.Txt
  loc_1978B2C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_244)
  loc_1978B41: var_22C = Val(var_244.Text)
  loc_1978B4F: Set var_248 = Me.Txt
  loc_1978B55: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_274)
  loc_1978B64: Proc_6_7_F25D88(var_1F0, CVar(var_274))
  loc_1978B77: Set var_288 = Me.Txt
  loc_1978B7D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_28C)
  loc_1978BAA: Set var_31C = Me.Txt
  loc_1978BB0: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_320)
  loc_1978BCB: Set var_388 = Me.Txt
  loc_1978BD1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_38C)
  loc_1978BE5: Set var_414 = Me.TextGt
  loc_1978BEB: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_18E)
  loc_1978BFD: Set var_418 = Me.TextGt
  loc_1978C03: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_18E, var_41C)
  loc_1978C18: var_D60 = Val(var_41C.Text)
  loc_1978C22: Set var_424 = Me.TxtGt
  loc_1978C28: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_426, var_D60)
  loc_1978C3A: Set var_42C = Me.TxtGt
  loc_1978C40: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_426, var_430)
  loc_1978C55: var_D68 = Val(var_430.Text)
  loc_1978C5F: Set var_6D8 = Me.TextGt
  loc_1978C65: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_6DA, var_D68)
  loc_1978C77: Set var_6E0 = Me.TextGt
  loc_1978C7D: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_6DA, var_6E4)
  loc_1978C92: var_D70 = Val(var_6E4.Text)
  loc_1978C9C: Set var_6EC = Me.TxtGt
  loc_1978CA2: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_6EE, var_D70)
  loc_1978CB4: Set var_6F4 = Me.TxtGt
  loc_1978CBA: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_6EE, var_6F8)
  loc_1978CCF: var_D78 = Val(var_6F8.Text)
  loc_1978CDD: Set var_740 = Me.Txt
  loc_1978CE3: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_744)
  loc_1978CF2: Proc_6_7_F25D88(var_764, CVar(var_744))
  loc_1978D00: Set var_798 = Me.txtM
  loc_1978D06: Call 0.Method_TopCtrl1_UnknownEvent_190 (1, var_79C)
  loc_1978D0E: var_7AC = var_79C.defaultText
  loc_1978D22: Set var_7F0 = Me.Txt
  loc_1978D28: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H15), var_7F4, var_7AC)
  loc_1978D37: Proc_6_7_F25D88(var_814, CVar(var_7F4))
  loc_1978D45: Set var_848 = Me.txtM
  loc_1978D4B: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_84C)
  loc_1978D53: var_85C = var_84C.defaultText
  loc_1978D6A: Set var_8C0 = Me.Txt
  loc_1978D70: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_8C4, var_8C8)
  loc_1978D8B: Set var_90C = Me.Txt
  loc_1978D91: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_910, var_914)
  loc_1978DAC: Set var_958 = Me.Txt
  loc_1978DB2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_95C)
  loc_1978DC7: var_D80 = Val(var_95C.Text)
  loc_1978DD5: Set var_9A4 = Me.Txt
  loc_1978DDB: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_9A8)
  loc_1978DEA: Proc_6_7_F25D88(var_9C8, CVar(var_9A8))
  loc_1978DFD: Set var_9FC = Me.Txt
  loc_1978E03: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_A00, var_A04)
  loc_1978E18: var_D88 = Val(var_A04)
  loc_1978E26: Set var_A48 = Me.Txt
  loc_1978E2C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H13), var_A4C)
  loc_1978E53: Set var_AB0 = Me.Txt
  loc_1978E59: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H11), var_AB4)
  loc_1978E68: Proc_6_39_E7C810(var_AD4, CVar(var_AB4))
  loc_1978E78: Set var_B08 = Me.Txt
  loc_1978E7E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H12), var_B0C)
  loc_1978E8D: Proc_6_39_E7C810(var_B2C, CVar(var_B0C))
  loc_1978E99: Set var_B60 = Me.TextGt
  loc_1978E9F: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_B62)
  loc_1978EAE: Set var_B68 = Me.TextGt
  loc_1978EB4: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_B62, var_B6C)
  loc_1978EC3: Proc_6_39_E7C810(var_B8C, CVar(var_B6C))
  loc_1978ED3: Proc_6_7_F25D88(var_C3C, MemVar_1F920EC)
  loc_1978EDC: Set var_C70 = Me.TopCtrl1
  loc_1978EE2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_22C)
  loc_1978F3F: var_238 = "Insert Into HallSale1(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId," & "Party,RestCode,Total," & "DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,FrBookDate,FrBookTime,ToBookDate,ToBookTime,"
  loc_1978F4D: var_240 = var_238 & "CrCardNo,CrCardHolder,RectNo,Rectdate,ADVANCE,Remarks,NoOfPax,RatePerPax,TotalPerCover," & "U_Name, U_EntDt, U_AE) "
  loc_1978F54: var_254 = var_240 & " Values("
  loc_1978F75: var_270 = var_254 & "'" & var_184.Text & "'," & CStr(var_22C)
  loc_1978FBB: var_308 = CVar(var_270 & ",") & var_1F0 & ",'" & CVar(var_28C.Tag) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) 
  loc_1979014: var_444 = CVar((var_D60 + var_D68)) 'Double
  loc_1979021: var_474 = var_308 & "','" & CVar(var_320.Tag) & "'," & "'" & CVar(var_38C.Text) & "','" & CVar(global_56) & "'," & var_444 & "," 
  loc_197902C: var_484 = CVar((var_154 + var_E4)) 'Double
  loc_1979044: var_4C4 = CVar((var_14C + var_DC)) 'Double
  loc_197905C: var_504 = CVar((var_11C + var_AC)) 'Double
  loc_1979074: var_544 = CVar((var_114 + var_A4)) 'Double
  loc_197908C: var_584 = CVar((var_16C + var_FC)) 'Double
  loc_19790A4: var_5C4 = CVar((var_174 + var_104)) 'Double
  loc_19790BC: var_604 = CVar((var_15C + var_EC)) 'Double
  loc_19790D2: var_654 = var_474 & var_484 & "," & var_4C4 & "," & var_504 & "," & var_544 & "," & var_584 & "," & var_5C4 & "," & var_604 & "," & vbNullString 
  loc_19790DD: var_664 = CVar((var_124 + var_B4)) 'Double
  loc_19790F5: var_6A4 = CVar((var_12C + var_BC)) 'Double
  loc_197910D: var_70C = CVar((var_D70 + var_910.Text)) 'Double
  loc_1979159: var_87C = var_654 & var_664 & "," & var_6A4 & "," & var_70C & "," & var_764 & ",'" & CVar(CStr(var_7AC)) & "'," & var_814 & ",'" & CVar(CStr(var_8C4.Text)) 
  loc_1979175: var_8E8 = var_87C & "'," & "'" & CVar(var_8C8) 
  loc_1979188: var_934 = var_8E8 & "','" & CVar(var_914) 
  loc_19791C0: var_A24 = var_934 & "'," & CVar(var_A00.Text) & "," & var_9C8 & "," & CVar(var_D88) 
  loc_1979209: var_BBC = var_A24 & ",'" & Trim(CVar(Proc_6_38_E68A98(CVar(var_A4C), var_D88))) & "'," & var_AD4 & "," & var_B2C & "," & var_B8C & "," 
  loc_1979249: var_D34 = CStr(var_BBC & "'" & CVar(MemVar_1F920C8) & "'," & var_C3C & ",'" & IIf((var_C90 = "Add"), "A", "E") & "')")
  loc_1979253: unk_55BD28.Execute var_D34, var_D54, -1
  loc_19793E0: For var_D8C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_D8C 'Integer
  loc_19793EA:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_19793F2:   var_1C0 = CVar(CLng(1)) 'Long
  loc_1979412:   var_200 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1979439:   Set var_184 = Me.FGrid
  loc_1979478:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_184.TextMatrix)))) <> CDbl(0))) Then
  loc_1979489:     Set var_180 = Me.Txt
  loc_197948F:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_254, CVar(CLng(var_92)), (var_200 <> vbNullString))
  loc_1979497:     var_1C0 = var_184.Text
  loc_19794A0:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_19794CA:     var_22C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19794DB:     Set var_244 = Me.Txt
  loc_19794E1:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_248, var_270, var_22C, CVar(CLng(0)))
  loc_19794E9:     var_1A0 = var_248.Tag
  loc_19794F5:     Set var_274 = Me.LblVPrefix
  loc_197950E:     Set var_288 = Me.Txt
  loc_1979514:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_28C, var_8C8)
  loc_197951C:     var_1A0 = var_28C.Text
  loc_1979529:     var_D60 = Val(var_8C8)
  loc_1979537:     Set var_2C4 = Me.Txt
  loc_197953D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_31C, var_D60)
  loc_1979545:     var_1F0 = CVar(var_31C) 'Address
  loc_197954C:     Proc_6_7_F25D88(var_200, var_1F0)
  loc_197955F:     Set var_320 = Me.Txt
  loc_1979565:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388, var_D34)
  loc_197956D:     1 = var_388.Tag
  loc_1979580:     Set var_38C = Me.Txt
  loc_1979586:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_414)
  loc_1979597:     var_3E0 = CVar(CLng(var_92)) 'Long
  loc_197959F:     var_444 = CVar(CLng(9)) 'Long
  loc_19795BE:     var_4A4 = CVar(CLng(var_92)) 'Long
  loc_19795C6:     var_4E4 = CVar(CLng(&HD)) 'Long
  loc_19795CF:     Set var_41C = Me.FGrid
  loc_19795E5:     var_544 = CVar(CLng(var_92)) 'Long
  loc_19795ED:     var_584 = CVar(CLng(&HE)) 'Long
  loc_197960C:     var_5E4 = CVar(CLng(var_92)) 'Long
  loc_1979614:     var_624 = CVar(CLng(&HA)) 'Long
  loc_197961D:     Set var_42C = Me.FGrid
  loc_1979633:     var_6A4 = CVar(CLng(var_92)) 'Long
  loc_197963B:     var_70C = CVar(CLng(3)) 'Long
  loc_197964A:     var_554 = Me.FGrid.TextMatrix)
  loc_1979664:     var_834 = CVar(CLng(var_92)) 'Long
  loc_197966C:     var_8AC = CVar(CLng(4)) 'Long
  loc_1979675:     Set var_6D8 = Me.FGrid
  loc_1979695:     var_9E8 = CVar(CLng(var_92)) 'Long
  loc_197969D:     var_A34 = CVar(CLng(5)) 'Long
  loc_19796C6:     var_BAC = CVar(CLng(var_92)) 'Long
  loc_19796CE:     var_BEC = CVar(CLng(6)) 'Long
  loc_19796D7:     Set var_6E4 = Me.FGrid
  loc_19796F7:     var_CC0 = CVar(CLng(var_92)) 'Long
  loc_19796FF:     var_D20 = CVar(CLng(7)) 'Long
  loc_1979728:     var_DD4 = CVar(CLng(var_92)) 'Long
  loc_1979730:     var_DF4 = CVar(CLng(&HB)) 'Long
  loc_1979739:     Set var_6F4 = Me.FGrid
  loc_1979759:     var_E38 = CVar(CLng(var_92)) 'Long
  loc_1979761:     var_E58 = CVar(CLng(&HC)) 'Long
  loc_1979783:     var_FF4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19797B4:     var_FFC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19797D2:     var_844 = Me.FGrid.TextMatrix)
  loc_19797E9:     Proc_6_7_F25D88(var_8E8, MemVar_1F920EC, var_844, CVar(CLng(2)), CVar(CLng(var_92)), var_FFC, CVar(CLng(8)), CVar(CLng(var_92)))
  loc_19797F2:     Set var_798 = Me.TopCtrl1
  loc_19797F8:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_FF4)
  loc_1979855:     var_238 = "Insert Into HallStock(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,Party,Item,DiscApp,RoundOff," & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,Remarks,"
  loc_1979892:     var_2C8 = var_238 & "U_Name,U_EntDt,U_AE) " & "Values(" & "'" & var_254 & "'," & CStr(var_22C) & ",'" & var_270
  loc_19798A7:     var_434 = var_2C8 & "','" & var_274.Caption & "','"
  loc_19798AE:     var_6E8 = var_434 & MemVar_1F92070
  loc_1979904:     var_308 = CVar(var_6E8 & "'," & vbNullString & CStr(var_D60) & ",") & var_200 & ",'" & CVar(var_D34) & "','" & CVar(var_414.Text) & "'," 
  loc_1979940:     var_474 = var_308 & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_41C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1979954:     var_4F4 = var_474 & "','" & CVar(CStr(var_42C.TextMatrix))) 
  loc_1979997:     var_614 = var_4F4 & "'," & vbNullString & CVar(Val(CStr(var_554))) & "," & CVar(Val(CStr(var_6D8.TextMatrix)))) & "," & vbNullString 
  loc_19799A2:     var_654 = var_614 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_19799E7:     var_794 = var_654 & "," & CVar(Val(CStr(var_6E4.TextMatrix)))) & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_6F4.TextMatrix)))) 
  loc_1979A48:     var_8D8 = var_794 & "," & CVar(var_FF4) & "," & CVar(var_FFC) & ",'" & CVar(CStr(var_844)) & "'," & "'" & CVar(MemVar_1F920C8) & "'," 
  loc_1979A76:     unk_55BD28.Execute CStr(var_8D8 & var_8E8 & ",'" & IIf((var_934 = "Add"), "A", "E") & "')"), var_A24, -1
  loc_1979B94:   End If
  loc_1979B97: Next var_D8C 'Integer
  loc_1979BA8: Set var_180 = Me.TxtGt
  loc_1979BAE: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_18E, var_92)
  loc_1979BB9: For var_1000 =  To var_18E: 1 = var_1000 'Integer
  loc_1979BCD:   Set var_180 = Me.Txt
  loc_1979BD3:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_1979BEE:   Set var_188 = Me.Txt
  loc_1979BF4:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_244)
  loc_1979C0F:   Set var_248 = Me.Txt
  loc_1979C15:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_274)
  loc_1979C38:   Set var_288 = Me.Txt
  loc_1979C3E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_28C)
  loc_1979C4D:   Proc_6_7_F25D88(var_1F0, CVar(var_28C))
  loc_1979C5F:   Set var_2C4 = Me.LblCap
  loc_1979C65:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_31C)
  loc_1979C7F:   Set var_320 = Me.TxtPer
  loc_1979C85:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_388)
  loc_1979C9A:   var_D60 = Val(var_388.Tag)
  loc_1979CAA:   Set var_38C = Me.LblCap
  loc_1979CB0:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_414, var_2C8)
  loc_1979CCA:   Set var_418 = Me.LblAt
  loc_1979CD0:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_41C)
  loc_1979CEA:   Set var_424 = Me.TxtGt
  loc_1979CF0:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_42C)
  loc_1979D0A:   Set var_430 = Me.TxtPer
  loc_1979D10:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6D8)
  loc_1979D25:   var_D68 = Val(var_6D8.Text)
  loc_1979D35:   Set var_6E0 = Me.TxtGt
  loc_1979D3B:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6E4, var_434)
  loc_1979D50:   var_D70 = Val(var_434)
  loc_1979D60:   Set var_6EC = Me.LblDummy
  loc_1979D66:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6F4, var_6E8)
  loc_1979D7B:   var_D78 = Val(var_6E8)
  loc_1979D89:   Proc_6_7_F25D88(var_4F4, MemVar_1F920EC)
  loc_1979D92:   Set var_6F8 = Me.TopCtrl1
  loc_1979D98:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_D78)
  loc_1979DE7:   var_234 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE) Values ('" & var_184.Text
  loc_1979E3B:   var_2B0 = CVar(var_234 & "'," & CStr(var_92) & ",'" & var_244.Tag & "'," & CStr(Val(var_274.Text)) & ",") & var_1F0 & ",'" & CVar(var_31C.Tag) 
  loc_1979E91:   var_3B0 = var_2B0 & "'," & CVar(var_414.Caption) & ",'" & CVar(var_2C8) & "','" & CVar(var_41C.Tag) & "','" & CVar(var_42C.Tag) & "'," 
  loc_1979EE7:   var_514 = var_3B0 & CVar(var_6E4.Text) & "," & CVar(var_6F4.Caption) & "," & CVar(var_D78) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4F4 
  loc_1979F0E:   unk_55BD28.Execute CStr(var_514 & ",'" & IIf((var_554 = "Add"), "A", "E") & "')"), var_654, -1
  loc_1979FBF: Next var_1000 'Integer
  loc_1979FD0: Set var_180 = Me.TextGt
  loc_1979FD6: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_18E, var_92)
  loc_1979FE1: For var_1004 =  To var_18E: 1 = var_1004 'Integer
  loc_1979FF5:   Set var_180 = Me.Txt
  loc_1979FFB:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_197A016:   Set var_188 = Me.Txt
  loc_197A01C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_244)
  loc_197A037:   Set var_248 = Me.Txt
  loc_197A03D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_274)
  loc_197A060:   Set var_288 = Me.Txt
  loc_197A066:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_28C)
  loc_197A075:   Proc_6_7_F25D88(var_1F0, CVar(var_28C))
  loc_197A087:   Set var_2C4 = Me.LableCap
  loc_197A08D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_31C)
  loc_197A0A7:   Set var_320 = Me.TextPer
  loc_197A0AD:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_388)
  loc_197A0C2:   var_D60 = Val(var_388.Tag)
  loc_197A0D2:   Set var_38C = Me.LableCap
  loc_197A0D8:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_414, var_2C8)
  loc_197A0F2:   Set var_418 = Me.LableAt
  loc_197A0F8:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_41C)
  loc_197A112:   Set var_424 = Me.TextGt
  loc_197A118:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_42C)
  loc_197A132:   Set var_430 = Me.TextPer
  loc_197A138:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6D8)
  loc_197A14D:   var_D68 = Val(var_6D8.Text)
  loc_197A15D:   Set var_6E0 = Me.TextGt
  loc_197A163:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6E4, var_434)
  loc_197A178:   var_D70 = Val(var_434)
  loc_197A188:   Set var_6EC = Me.LableDummy
  loc_197A18E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6F4, var_6E8)
  loc_197A1A3:   var_D78 = Val(var_6E8)
  loc_197A1B1:   Proc_6_7_F25D88(var_4F4, MemVar_1F920EC)
  loc_197A1BA:   Set var_6F8 = Me.TopCtrl1
  loc_197A1C0:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_D78)
  loc_197A20F:   var_234 = "Insert Into SunTranH (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE) Values ('" & var_184.Text
  loc_197A21E:   var_23C = CStr(var_92)
  loc_197A229:   var_258 = var_234 & "'," & var_23C & ",'"
  loc_197A26C:   var_2C0 = CVar(var_258 & var_244.Tag & "'," & CStr(Val(var_274.Text)) & ",") & var_1F0 & ",'" & CVar(var_31C.Tag) & "'," 
  loc_197A2C4:   var_3D0 = var_2C0 & CVar(var_414.Caption) & ",'" & CVar(var_2C8) & "','" & CVar(var_41C.Tag) & "','" & CVar(var_42C.Tag) & "'," & CVar(var_6E4.Text) 
  loc_197A31F:   var_614 = var_3D0 & "," & CVar(var_6F4.Caption) & "," & CVar(var_D78) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4F4 & ",'" & IIf((var_554 = "Add"), "A", "E") 
  loc_197A336:   unk_55BD28.Execute CStr(var_614 & "')"), var_654, -1
  loc_197A3E7: Next var_1004 'Integer
  loc_197A3F0: Set var_180 = Me.TopCtrl1
  loc_197A3F6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_197A40B: If ( = "Add") Then
  loc_197A422:   var_18C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_197A448:   Set var_180 = Me.Txt
  loc_197A44E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_184, var_23C, var_18C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_197A456:   var_2A0 = var_184.Tag
  loc_197A45F:   var_254 = -1 & var_23C
  loc_197A466:   var_200 = CVar(var_244.Tag & "' And VP.Date_From<=") 'String
  loc_197A477:   Set var_188 = Me.Txt
  loc_197A47D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_244, var_258)
  loc_197A485:   var_200 = var_244.Text
  loc_197A493:   Proc_6_7_F25D88(var_1F0, CVar(var_258))
  loc_197A4B2:   unk_55BD19.Execute CStr(var_248 & var_1F0 & " Order By VP.Date_From DESC"), , 
  loc_197A4BD:   Set var_88 = var_248
  loc_197A501:   If (var_88.RecordCount > 0) Then
  loc_197A512:     Set var_180 = Me.Txt
  loc_197A518:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_184)
  loc_197A52D:     var_22C = Val(var_184.Text)
  loc_197A542:     var_188 = var_88.Fields
  loc_197A552:     var_1E0 = var_188.Item("V_Type").Value
  loc_197A57D:     Proc_6_7_F25D88(var_2A0, CVar(var_88.Fields.Item("Date_From")))
  loc_197A597:     var_234 = CStr(var_22C)
  loc_197A5B7:     var_258 = "Update Voucher_Prefix Set Start_Srl_No=" & var_234 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_197A5D4:     var_2B0 = CVar(var_258 & "') and V_Type='") & var_1E0 & "' and Date_From=" & var_2A0 
  loc_197A5E2:     unk_55BD19.Execute CStr(var_2B0), var_2C0, -1
  loc_197A61C:   End If
  loc_197A61C: End If
  loc_197A620: Set var_180 = Me.TopCtrl1
  loc_197A626: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_288)
  loc_197A63B: If (var_22C = "Add") Then
  loc_197A661:   var_18C = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_197A671:   Call 0.Method_arg_50 (var_234, var_18C & "' AND ENAME='", var_1E0, -1, var_180)
  loc_197A681:   var_240 = var_184 & var_234 & "' "
  loc_197A68A:   unk_55BD19.Execute var_240, 0, var_188
  loc_197A69A:    = var_184.Item()
  loc_197A6A2:    = var_188.Value
  loc_197A6CF:   If (var_180.Fields > 0) Then
  loc_197A6F0:     Set var_180 = Me.Txt
  loc_197A6F6:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "UPDATE LASTVOU  SET DOCID='")
  loc_197A6FE:     var_1E0 = var_184.Text
  loc_197A707:     var_234 = -1 & var_18C
  loc_197A725:     Call 0.Method_arg_50 (var_240, var_234 & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_197A73E:     unk_55BD19.Execute var_188 & var_240 & "'  ", , 
  loc_197A765:   Else
  loc_197A789:     Call 0.Method_arg_50 (var_234, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_2B0)
  loc_197A792:     var_23C = -1 & var_234
  loc_197A799:     var_254 = var_234 & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_197A7AA:     Set var_180 = Me.Txt
  loc_197A7B0:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_240)
  loc_197A7B8:     var_254 = var_184.Text
  loc_197A7DC:     var_1A0 = MemVar_1F920EC
  loc_197A7E4:     Proc_6_7_F25D88(var_1E0, var_1A0)
  loc_197A816:     unk_55BD19.Execute CStr(CVar(var_188 & var_240 & "','" & MemVar_1F92070 & "',") & var_1E0 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_197A84C:   End If
  loc_197A84C: End If
  loc_197A852: unk_55BD28.CommitTrans
  loc_197A85D: unk_55BD19.CommitTrans
  loc_197A864: var_8A = 0
  loc_197A875: Set var_180 = Me.Txt
  loc_197A87B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_197A897: var_8A = 0
  loc_197A8A5: Me.Requery -1
  loc_197A8CF: Me.Find "SearchCode ='" & var_184.Text & "'", 0, 1
  loc_197A8DF: Set var_180 = Me.TopCtrl1
  loc_197A8E5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_1A0)
  loc_197A8FA: If (var_8A = "Add") Then
  loc_197A8FD:   Call TopCtrl1_UnknownEvent_11()
  loc_197A902:   Exit Sub
  loc_197A903: End If
  loc_197A926: Call Proc_126_81_104CAF0(Proc_5_1_100CB50("INI", Me), global_80)
  loc_197A931: Call Proc_126_78_183913C(var_8A)
  loc_197A93B: Set var_88 = Nothing
  loc_197A93E: Exit Sub
  loc_197A93F: ' Referenced from: 1977E70
  loc_197A945: If (var_8A = &HFF) Then
  loc_197A94E:   unk_55BD28.RollbackTrans
  loc_197A959:   unk_55BD19.RollbackTrans
  loc_197A95E: End If
  loc_197A95E: Proc_6_60_E62BC4()
  loc_197A963: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA0188
  'Data Table: 55BCF4
  loc_EA0110: On Error Goto loc_EA0181
  loc_EA014A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0170:   Call Proc_126_81_104CAF0(Proc_5_1_100CB50("INI", Me))
  loc_EA017B:   Call Proc_126_78_183913C(global_80)
  loc_EA0180: End If
  loc_EA0180: Exit Sub
  loc_EA0181: ' Referenced from: EA0110
  loc_EA0181: Proc_6_60_E62BC4()
  loc_EA0186: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB6578
  'Data Table: 55BCF4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_EB64E4: On Error Goto loc_EB6572
  loc_EB64FE: If (Me.RecordCount <= 0) Then
  loc_EB6507:   var_B8 = "Information"
  loc_EB6522:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB6532:   Exit Sub
  loc_EB6533: End If
  loc_EB653A: MemVar_1F920E4 = "Select Docid as SearchCode,S.VNo as VrNo ,S.VDate as V_Date,S.Party as PartyName,H.NAME AS HallName " & "From HallSale1 S Inner Join Depart H on S.RestCode = H.CODE Where H.RESTTYPE IN ('Banquet') Order By S.docid"
  loc_EB6547: Proc_6_126_F1BCC0("1000,900,2000,2500,2500")
  loc_EB6555: MemVar_1F92120 = Me
  loc_EB656C: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB6571: Exit Sub
  loc_EB6572: ' Referenced from: EB64E4
  loc_EB6572: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EB6577: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'E6242C
  'Data Table: 55BCF4
  loc_E6241B: If (MsgBox("Do you want window printing!", &H44, var_C4, var_E4, var_104) = 6) Then
  loc_E6241E:   Call Proc_126_97_18D4488()
  loc_E62426: Else
  loc_E62426:   Call Proc_126_75_19F7F6C()
  loc_E6242B: End If
  loc_E6242B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E6BBCC
  'Data Table: 55BCF4
  Dim Me As Recordset15
  loc_E6BB77: If Not((global_64 Is Nothing)) Then
  loc_E6BB85:   Me.Requery -1
  loc_E6BB8A: End If
  loc_E6BB95: Me.Requery -1
  loc_E6BBA5: Me.Requery -1
  loc_E6BBB5: If Not((global_64 Is Nothing)) Then
  loc_E6BBC3:   Me.Requery -1
  loc_E6BBC8: End If
  loc_E6BBC8: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E51E7C
  'Data Table: 55BCF4
  loc_E51E56: Set var_88 = Me.txtM
  loc_E51E5C: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E51E6A: Proc_6_74_E226B0(var_8C)
  loc_E51E76: Call Proc_126_82_F262C0(var_8C)
  loc_E51E7B: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4E40C
  'Data Table: 55BCF4
  loc_E4E3EA: Set var_88 = Me.txtM
  loc_E4E3F0: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E4E3FE: Proc_6_73_E22704(var_8C)
  loc_E4E40A: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E53E18
  'Data Table: 55BCF4
  Dim arg_10 As Integer
  loc_E53DEE: Set var_88 = Me.txtM
  loc_E53DF4: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E53E0E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E53E13:   arg_10 = &HFF
  loc_E53E16: End If
  loc_E53E16: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E5FA3C
  'Data Table: 55BCF4
  loc_E5F9F6: If (CLng(arg_10) = &H1B) Then
  loc_E5F9F9:   Call Proc_126_82_F262C0()
  loc_E5F9FE:   Exit Sub
  loc_E5F9FF: End If
  loc_E5FA14: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E5FA1D:   Proc_6_75_E527CC(arg_10)
  loc_E5FA22: End If
  loc_E5FA2C: If (CLng(arg_10) = &H26) Then
  loc_E5FA35:   Proc_6_76_E52838(arg_10, arg_14)
  loc_E5FA3A: End If
  loc_E5FA3A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '138E7A4
  'Data Table: 55BCF4
  Dim var_98 As Variant
  Dim var_A4 As Variant
  Dim var_A6 As Integer
  Dim var_B8 As Variant
  Dim var_94 As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A0 As Fields15
  Dim var_8C As Recordset15
  Dim var_104 As String
  Dim var_9C As String
  loc_138DEF3: Set var_94 = Me.Txt
  loc_138DEF9: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138DF01: var_98.SelStart = 0
  loc_138DF1A: Set var_94 = Me.Txt
  loc_138DF20: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138DF28: var_9C = var_98.Text
  loc_138DF3B: Set var_A0 = Me.Txt
  loc_138DF41: Call 0.Method_Txt_GotFocus0 (Index, var_A4)
  loc_138DF49: var_A4.SelLength = Len(var_9C)
  loc_138DF66: Set var_94 = Me.Txt
  loc_138DF6C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_138DF7A: Proc_6_74_E226B0(var_98)
  loc_138DF86: Call Proc_126_82_F262C0(var_98)
  loc_138DF8E: var_A6 = Index
  loc_138DF99: If (var_A6 = CInt(0)) Then
  loc_138DFAF:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_138E008:   Set var_94 = Me.Txt
  loc_138E00E:   Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C)
  loc_138E016:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_138E02E:   If (var_A6 Or (var_9C = vbNullString)) Then
  loc_138E031:     Exit Sub
  loc_138E032:   End If
  loc_138E03F:   Set var_94 = Me.Txt
  loc_138E045:   Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138E04D:   var_9C = var_98.Text
  loc_138E055:   var_E0 = CVar(var_9C) 'String
  loc_138E09A:   If CBool(var_E0 <> Me.Fields.Item("Name").Value) Then
  loc_138E0A3:     Me.MoveFirst
  loc_138E0C8:     Set var_94 = Me.Txt
  loc_138E0CE:     Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138E0D6:     0 = var_98.Text
  loc_138E0E4:     Proc_6_17_EAA2B0(var_E0, CVar(var_9C))
  loc_138E0FA:     Me.Find CStr(1 & var_E0), var_104, 
  loc_138E112:   End If
  loc_138E115: Else
  loc_138E11D:   If (var_A6 = CInt(3)) Then
  loc_138E16E:     Set var_94 = Me.Txt
  loc_138E174:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138E194:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_138E197:       Exit Sub
  loc_138E198:     End If
  loc_138E1A5:     Set var_94 = Me.Txt
  loc_138E1AB:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138E1B3:     var_9C = var_98.Text
  loc_138E1BB:     var_E0 = CVar(var_9C) 'String
  loc_138E200:     If CBool(var_E0 <> Me.Fields.Item("Name").Value) Then
  loc_138E209:       Me.MoveFirst
  loc_138E22E:       Set var_94 = Me.Txt
  loc_138E234:       Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138E23C:       0 = var_98.Text
  loc_138E24A:       Proc_6_17_EAA2B0(var_E0, CVar(var_9C))
  loc_138E260:       Me.Find CStr(1 & var_E0), var_104, 
  loc_138E278:     End If
  loc_138E27B:   Else
  loc_138E283:     If (var_A6 = CInt(5)) Then
  loc_138E2D4:       Set var_94 = Me.Txt
  loc_138E2DA:       Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138E2FA:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_138E2FD:         Exit Sub
  loc_138E2FE:       End If
  loc_138E30B:       Set var_94 = Me.Txt
  loc_138E311:       Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138E319:       var_9C = var_98.Text
  loc_138E321:       var_E0 = CVar(var_9C) 'String
  loc_138E366:       If CBool(var_E0 <> Me.Fields.Item("Name").Value) Then
  loc_138E36F:         Me.MoveFirst
  loc_138E394:         Set var_94 = Me.Txt
  loc_138E39A:         Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138E3A2:         0 = var_98.Text
  loc_138E3AA:         var_B8 = CVar(var_9C) 'String
  loc_138E3B0:         Proc_6_17_EAA2B0(var_E0, var_B8)
  loc_138E3C6:         Me.Find CStr(1 & var_E0), var_104, 
  loc_138E3DE:       End If
  loc_138E3E1:     Else
  loc_138E3E9:       If (var_A6 = CInt(7)) Then
  loc_138E3F6:         Set global_76 = New 
  loc_138E413:         Me.Connection15.Execute "Select BookDocId from HallSale1", var_B8, -1
  loc_138E41E:         Set var_8C = var_94
  loc_138E43B:         If (var_8C.RecordCount > 0) Then
  loc_138E47B:           var_90 = CStr("'" & var_8C.Fields.Item("BOOKDOCID").Value & "'")
  loc_138E491:           var_8C.MoveNext
  loc_138E496:           ' Referenced from:       138E507
  loc_138E4A5:           If Not(var_8C.EOF) Then
  loc_138E4CC:             var_98 = var_8C.Fields.Item("BOOKDOCID")
  loc_138E4E0:             var_104 = "'"
  loc_138E4EA:             var_90 = CStr(CVar(var_90 & ",'") & var_98.Value & var_104)
  loc_138E502:             var_8C.MoveNext
  loc_138E507:             GoTo loc_138E496
  loc_138E50A:           End If
  loc_138E50D:         Else
  loc_138E510:           var_90 = "''"
  loc_138E513:         End If
  loc_138E51E:         Me.CursorLocation = 3
  loc_138E544:         var_9C = "Select DocId As Code,Convert(Varchar(11),VNo) As Name From HallBook where RestCode ='" & global_56
  loc_138E563:         Me.Open CVar(var_9C & "' and Docid not in (" & var_90 & ") Order by VNo"), CVar(MemVar_1F92044), 3
  loc_138E57D:         CVarUnk
  loc_138E582:         VerifyVarObj
  loc_138E588:         Set var_94 = Me.DGBookNo
  loc_138E58E:         LateIdStAd
  loc_138E5F0:         Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_138E5F8:         global_76 = var_98.Text
  loc_138E610:         If (1 Or (var_9C = vbNullString)) Then
  loc_138E613:           Exit Sub
  loc_138E614:         End If
  loc_138E621:         Set var_94 = Me.Txt
  loc_138E627:         Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C)
  loc_138E62F:         -1 = var_98.Text
  loc_138E637:         var_E0 = CVar(var_9C) 'String
  loc_138E658:         var_A4 = Me.Fields.Item("Name")
  loc_138E67C:         If CBool(var_E0 <> var_A4.Value) Then
  loc_138E685:           Me.MoveFirst
  loc_138E6B0:           Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138E6B8:           0 = var_98.Text
  loc_138E6C6:           Proc_6_17_EAA2B0(var_E0, CVar(var_9C), 1)
  loc_138E6DC:           Me.Find CStr(var_104 & var_E0), Me.Txt, 
  loc_138E6F4:         End If
  loc_138E6F7:       Else
  loc_138E6FF:         If Not (var_A6 = CInt(&HF)) Then
  loc_138E70A:           If Not (var_A6 = CInt(&HE)) Then
  loc_138E715:             If (var_A6 = CInt(&HD)) Then
  loc_138E718:             End If
  loc_138E718:           End If
  loc_138E727:           Set var_94 = Me.Txt
  loc_138E72D:           Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138E735:           var_98.SelStart = 0
  loc_138E74E:           Set var_94 = Me.Txt
  loc_138E754:           Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138E76F:           Set var_A0 = Me.Txt
  loc_138E775:           Call 0.Method_Txt_GotFocus0 (Index, var_A4)
  loc_138E77D:           var_A4.SelLength = Len(var_98.Text)
  loc_138E790:         End If
  loc_138E790:       End If
  loc_138E790:     End If
  loc_138E790:   End If
  loc_138E790: End If
  loc_138E795: Set var_88 = Nothing
  loc_138E79D: Set var_8C = Nothing
  loc_138E7A0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1144E14
  'Data Table: 55BCF4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_1144A9A: If (CLng(Shift) = &H1B) Then
  loc_1144A9D:   Call Proc_126_82_F262C0()
  loc_1144AA2:   Exit Sub
  loc_1144AA3: End If
  loc_1144AA6: var_86 = KeyCode
  loc_1144AB1: If (var_86 = CInt(0)) Then
  loc_1144ACC:   Set var_9C = Nothing
  loc_1144AD7:   Set var_98 = Nothing
  loc_1144B05:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_1144B1C: Else
  loc_1144B24:   If (var_86 = CInt(3)) Then
  loc_1144B3F:     Set var_9C = Nothing
  loc_1144B78:     Proc_6_69_134A198(Me.DGParty, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_1144B8F:   Else
  loc_1144B97:     If (var_86 = CInt(5)) Then
  loc_1144BB2:       Set var_9C = Nothing
  loc_1144BEB:       Proc_6_69_134A198(Me.DGHall, Me.Txt, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_1144C02:     Else
  loc_1144C0A:       If (var_86 = CInt(7)) Then
  loc_1144C25:         Set var_9C = Nothing
  loc_1144C5E:         Proc_6_69_134A198(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1144C72:       End If
  loc_1144C72:     End If
  loc_1144C72:   End If
  loc_1144C72: End If
  loc_1144CA3: Set var_98 = Me.DGItem
  loc_1144CBA: Set var_9C = Me.DGBookNo
  loc_1144CFE: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_1144D1F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HC))) Then
  loc_1144D28:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, var_9C)
  loc_1144D2D:   End If
  loc_1144D31:   Set var_8C = Me.TopCtrl1
  loc_1144D37:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(0)
  loc_1144D64:   If CBool((var_9C = "Add") And (KeyCode <> CInt(0))) Then
  loc_1144D7C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1144D85:       Proc_6_76_E52838(Shift, arg_14, 0)
  loc_1144D8A:     End If
  loc_1144D8D:   Else
  loc_1144D91:     Set var_8C = Me.TopCtrl1
  loc_1144D97:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(1)
  loc_1144DC4:     If CBool((var_98 = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1144DDC:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1144DE5:         Proc_6_76_E52838(Shift)
  loc_1144DEA:       End If
  loc_1144DEA:     End If
  loc_1144DEA:   End If
  loc_1144E08:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_1144E0E:     Call Proc_126_83_F0A4C4(KeyCode)
  loc_1144E13:   End If
  loc_1144E13: End If
  loc_1144E13: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1042E48
  'Data Table: 55BCF4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_1042BE8: On Error Goto loc_1042E42
  loc_1042BEE: Proc_6_58_E054C0(arg_10)
  loc_1042BF6: var_86 = KeyAscii
  loc_1042C01: If (var_86 = CInt(0)) Then
  loc_1042C20:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_1042C36:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_1042C45:     Set var_B8 = Me.Txt
  loc_1042C50:     var_B0 = "Name"
  loc_1042C6B:     Proc_6_89_146F1AC(var_B8, KeyAscii, global_60, arg_10)
  loc_1042C7A:   End If
  loc_1042C7D: Else
  loc_1042C85:   If (var_86 = CInt(1)) Then
  loc_1042C92:     Set var_8C = Me.Txt
  loc_1042C98:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_1042CB3:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_1042CC2:   Else
  loc_1042CCA:     If (var_86 = CInt(3)) Then
  loc_1042CE9:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_1042D16:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1042D25:       End If
  loc_1042D28:     Else
  loc_1042D30:       If (var_86 = CInt(7)) Then
  loc_1042D4F:         If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_1042D7C:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_1042D8B:         End If
  loc_1042D8E:       Else
  loc_1042D96:         If (var_86 = CInt(5)) Then
  loc_1042DB5:           If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_1042DBC:             Set var_B8 = Me.Txt
  loc_1042DE2:             Proc_6_89_146F1AC(var_B8, KeyAscii, global_72, arg_10, "Name", 0)
  loc_1042DF1:           End If
  loc_1042DF4:         Else
  loc_1042DFC:           If Not (var_86 = CInt(&HF)) Then
  loc_1042E07:             If (var_86 = CInt(&HE)) Then
  loc_1042E0A:             End If
  loc_1042E14:             Set var_8C = Me.Txt
  loc_1042E1A:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0, 0)
  loc_1042E35:             Proc_6_42_129A86C(var_B8, arg_10, 8, 2)
  loc_1042E41:           End If
  loc_1042E41:         End If
  loc_1042E41:       End If
  loc_1042E41:     End If
  loc_1042E41:   End If
  loc_1042E41: End If
  loc_1042E41: Exit Sub
  loc_1042E42: ' Referenced from: 1042BE8
  loc_1042E42: Proc_6_60_E62BC4(0, 0)
  loc_1042E47: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FDB924
  'Data Table: 55BCF4
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
  loc_FDB78F: var_86 = KeyCode
  loc_FDB79A: If Not (var_86 = CInt(&HF)) Then
  loc_FDB7A5:   If (var_86 = CInt(&HE)) Then
  loc_FDB7A8:   End If
  loc_FDB7AF:   Set var_8C = Me.TxtGt
  loc_FDB7B5:   Call 0.Method_Txt_KeyUp8 (var_8E)
  loc_FDB7C7:   Set var_94 = Me.TxtGt
  loc_FDB7CD:   Call 0.Method_Txt_KeyUp0 (var_8E, var_98)
  loc_FDB7E2:   var_12C = Val(var_98.Text)
  loc_FDB7EC:   Set var_A0 = Me.TextGt
  loc_FDB7F2:   Call 0.Method_Txt_KeyUp8 (var_A2, var_12C)
  loc_FDB804:   Set var_A8 = Me.TextGt
  loc_FDB80A:   Call 0.Method_Txt_KeyUp0 (var_A2, var_AC)
  loc_FDB81F:   var_134 = Val(var_AC.Text)
  loc_FDB830:   Set var_B4 = Me.Txt
  loc_FDB836:   Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_B8, var_BC)
  loc_FDB84B:   var_13C = Val(var_BC)
  loc_FDB85C:   Set var_C0 = Me.Txt
  loc_FDB862:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_C4, var_C8)
  loc_FDB877:   var_144 = Val(var_C8)
  loc_FDB89E:   var_E8 = CVar((((var_12C + var_B8.Text) - var_C4.Text) - var_144)) 'Double
  loc_FDB8BC:   Set var_11C = Me.Txt
  loc_FDB8C2:   Call 0.Method_Txt_KeyUp0 (CInt(&HE), var_120, CStr(Format(var_E8, "0.00")), 1)
  loc_FDB8CA:   var_120.Text = 1
  loc_FDB903: Else
  loc_FDB90B:   If Not (var_86 = CInt(&H12)) Then
  loc_FDB916:     If (var_86 = CInt(&H11)) Then
  loc_FDB919:     End If
  loc_FDB91E:     Call Proc_126_90_14ABF5C(&H32, var_144)
  loc_FDB923:   End If
  loc_FDB923: End If
  loc_FDB923: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F314
  'Data Table: 55BCF4
  loc_E4F2F2: Set var_88 = Me.Txt
  loc_E4F2F8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F306: Proc_6_73_E22704(var_8C)
  loc_E4F312: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1883290
  'Data Table: 55BCF4
  Dim var_98 As Integer
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_13C As String
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_168 As TextBox
  Dim var_18C As Variant
  Dim var_194 As TextBox
  Dim var_1B8 As Variant
  Dim var_138 As String
  Dim unk_55BD19 As Connection15
  Dim var_A4 As Variant
  Dim var_164 As Variant
  Dim var_104 As Variant
  Dim var_D4 As Variant
  Dim var_8E As Integer
  Dim var_94 As Recordset15
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_140 As String
  Dim var_134 As Variant
  Dim var_220 As TextBox
  Dim Txt_Validate2 As Variant
  Dim var_228 As Double
  Dim var_240 As Double
  Dim var_248 As Double
  Dim var_230 As TextBox
  Dim var_250 As Double
  Dim var_16C As String
  Dim var_238 As TextBox
  loc_1880BE0: On Error Goto loc_1883288
  loc_1880BE6: var_98 = Cancel
  loc_1880BF1: If (var_98 = CInt(0)) Then
  loc_1880BFF:   Set var_9C = Me.Txt
  loc_1880C05:   Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_1880C0D:   var_A8 = "Voucher Type"
  loc_1880C2E:   If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_1880C3C:     Set var_9C = Me.Txt
  loc_1880C42:     Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_1880C4A:     var_A0.SetFocus
  loc_1880C58:     arg_10 = &HFF
  loc_1880C5B:     Exit Sub
  loc_1880C5C:   End If
  loc_1880CAA:   Set var_9C = Me.Txt
  loc_1880CB0:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_1880CB8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_1880CD0:   If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_1880CE0:     Set var_9C = Me.Txt
  loc_1880CE6:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1880CEE:     var_A0.Text = vbNullString
  loc_1880D07:     Set var_9C = Me.Txt
  loc_1880D0D:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1880D15:     var_A0.Tag = vbNullString
  loc_1880D27:     global_120 = vbNullString
  loc_1880D2E:   Else
  loc_1880D69:     Set var_A4 = Me.Txt
  loc_1880D6F:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1880D77:     var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1880DC8:     Set var_A4 = Me.Txt
  loc_1880DCE:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1880DD6:     var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1880E09:     var_A0 = Me.Fields.Item("NCat")
  loc_1880E1A:     var_A8 = CStr(var_A0.Value)
  loc_1880E20:     global_120 = var_A8
  loc_1880E35:     Set var_9C = Me.TopCtrl1
  loc_1880E3B:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_1880E50:     If ( = "Add") Then
  loc_1880E5E:       If (global_156 = "Automatic") Then
  loc_1880E6E:         Set var_9C = Me.Txt
  loc_1880E74:         Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_1880E7C:         var_A0.Enabled = False
  loc_1880E8B:       Else
  loc_1880E98:         Set var_9C = Me.Txt
  loc_1880E9E:         Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_1880EA6:         var_A0.Enabled = True
  loc_1880EBD:         Set var_9C = Me.Txt
  loc_1880EC3:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1880ECB:         var_A0.SetFocus
  loc_1880ED7:       End If
  loc_1880ED7:     End If
  loc_1880ED7:   End If
  loc_1880EDB:   Set var_9C = Me.TopCtrl1
  loc_1880EE1:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_A0)
  loc_1880EF6:   If ( = "Add") Then
  loc_1880EFF:     Call Proc_126_85_11080C4(MemVar_1F92044)
  loc_1880F12:     Set var_9C = Me.Txt
  loc_1880F18:     Call 0.Method_Txt_Validate0 (CInt(4), var_A0)
  loc_1880F20:     var_A0.Text = var_A8
  loc_1880F2F:   End If
  loc_1880F32: Else
  loc_1880F3A:   If (var_98 = CInt(1)) Then
  loc_1880F48:     Set var_9C = Me.Txt
  loc_1880F4E:     Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_1880F56:     var_A8 = "Vr. No"
  loc_1880F77:     If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_1880F85:       Set var_9C = Me.Txt
  loc_1880F8B:       Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_1880F93:       var_A0.SetFocus
  loc_1880FA1:       arg_10 = &HFF
  loc_1880FA4:       Exit Sub
  loc_1880FA5:     End If
  loc_1880FB3:     Set var_9C = Me.Txt
  loc_1880FB9:     Call 0.Method_Txt_Validate0 (CInt(1), var_A0, var_A8)
  loc_1880FC1:     arg_10 = var_A0.Text
  loc_1880FD9:     If (CDbl(var_A8) = CDbl(0)) Then
  loc_1880FF5:       MsgBox("Vr. No Can Not Be 0", 0, var_E4, var_114, var_134)
  loc_188100F:       Set var_9C = Me.Txt
  loc_1881015:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_188101D:       var_A0.SetFocus
  loc_188102B:       arg_10 = &HFF
  loc_188102E:       Exit Sub
  loc_188102F:     End If
  loc_1881033:     Set var_9C = Me.TopCtrl1
  loc_1881039:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_188104E:     If (var_A8 = "Add") Then
  loc_1881061:       var_A8 = Proc_6_45_EAD428(MemVar_1F92070, 2)
  loc_1881076:       Set var_9C = Me.Txt
  loc_188107C:       Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_18810A3:       Set var_A4 = Me.Txt
  loc_18810A9:       Call 0.Method_Txt_Validate0 (CInt(0), var_C4, var_140)
  loc_18810B1:       5 = var_C4.Tag
  loc_18810BE:       var_D4 = Space((CVar(MemVar_1F9206C & var_A8 & var_A0.Tag) - Len(var_140)))
  loc_18810C6:       var_114 = ( + "Vr. No Can Not Be 0")
  loc_18810DA:       var_134 = Space((5 - Len(global_112)))
  loc_18810E2:       var_150 = (var_114 + var_134)
  loc_18810EF:       var_160 = (var_150 + CVar(global_112))
  loc_1881106:       Set var_164 = Me.Txt
  loc_188110C:       Call 0.Method_Txt_Validate0 (CInt(1), var_168, var_16C)
  loc_1881114:       8 = var_168.Text
  loc_1881121:       var_17C = Space((var_160 - Len(var_16C)))
  loc_1881129:       var_18C = ( + var_17C)
  loc_188113B:       Set var_190 = Me.Txt
  loc_1881141:       Call 0.Method_Txt_Validate0 (CInt(1), var_194)
  loc_1881154:       var_1B8 = (var_18C + CVar(var_194.Text))
  loc_18811AD:       Set var_9C = Me.Txt
  loc_18811B3:       Call 0.Method_Txt_Validate0 (CInt(4), var_A0)
  loc_18811BB:       var_A0.Text = CStr(var_1B8)
  loc_18811D7:       Me.LblVPrefix.Caption = global_112
  loc_18811DF:     End If
  loc_18811E3:     Set var_9C = Me.TopCtrl1
  loc_18811E9:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_18811FE:     If ( = "Add") Then
  loc_188122E:       Set var_9C = Me.Txt
  loc_1881234:       Call 0.Method_Txt_Validate0 (CInt(4), var_A0, var_A8, "Select Count(*) From HallSale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1881245:       var_138 = var_C4 & var_A8
  loc_1881255:       unk_55BD19.Execute var_138 & "'", 0, var_164
  loc_1881265:        = var_C4.Item()
  loc_188126D:        = var_164.Value
  loc_188129A:       If (var_A0.Text.Fields > 0) Then
  loc_18812A3:         Call 0.Method_arg_50 (var_A8)
  loc_18812C4:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A8), var_114, var_134)
  loc_18812DA:         Call Proc_126_85_11080C4(MemVar_1F92044)
  loc_18812EA:         If (var_A8 = vbNullString) Then
  loc_18812F7:           Set var_9C = Me.Txt
  loc_18812FD:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1881305:           var_A0.SetFocus
  loc_1881313:           arg_10 = &HFF
  loc_1881316:           Exit Sub
  loc_1881317:         End If
  loc_188131D:         Call Proc_126_85_11080C4(MemVar_1F92044, var_A8)
  loc_1881330:         Set var_9C = Me.Txt
  loc_1881336:         Call 0.Method_Txt_Validate0 (CInt(4), var_A0, var_A8)
  loc_188133E:         var_A0.Text = arg_10
  loc_188134F:         arg_10 = &HFF
  loc_1881352:         Exit Sub
  loc_1881353:       End If
  loc_1881353:     End If
  loc_1881356:   Else
  loc_188135E:     If (var_98 = CInt(2)) Then
  loc_188136F:       Set var_9C = Me.Txt
  loc_1881375:       Call 0.Method_Txt_Validate0 (CInt(2), var_A0, var_A8)
  loc_188137D:       arg_10 = var_A0.Text
  loc_1881393:       var_114 = Len(Trim(CVar(var_A8)))
  loc_18813AD:       If (var_114 = 0) Then
  loc_18813C3:         Set var_9C = Me.Txt
  loc_18813C9:         Call 0.Method_Txt_Validate0 (CInt(2), var_A0)
  loc_18813D1:         var_A0.Text = CStr(MemVar_1F920EC)
  loc_18813E3:       Else
  loc_18813ED:         Set var_9C = Me.Txt
  loc_18813F3:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1881413:         Set var_C4 = Me.Txt
  loc_1881419:         Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_1881421:         var_164.Text = Proc_6_33_1512840(var_A0)
  loc_1881434:       End If
  loc_1881441:       Set var_9C = Me.Txt
  loc_1881447:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_188144F:       var_A8 = var_A0.Text
  loc_188146A:       Set var_A4 = Me.Txt
  loc_1881470:       Call 0.Method_Txt_Validate0 (Cancel, var_C4, var_138)
  loc_1881478:       (CDate(var_A8) >= MemVar_1F920F4) = var_C4.Text
  loc_188149A:       If Not((var_A8 And (CDate(var_138) <= MemVar_1F920FC))) Then
  loc_18814BE:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_114, var_134)
  loc_18814D8:         Set var_9C = Me.Txt
  loc_18814DE:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_18814E6:         var_A0.SetFocus
  loc_18814F4:         arg_10 = &HFF
  loc_18814F7:         Exit Sub
  loc_18814F8:       End If
  loc_18814FC:       Set var_9C = Me.TopCtrl1
  loc_1881502:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_1881521:       Set var_A0 = Me.Txt
  loc_1881527:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_188152F:       var_A8 = var_A4.Text
  loc_1881559:       If CBool((var_A0 = "Add") And (var_A8 = vbNullString)) Then
  loc_1881562:         Call Proc_126_85_11080C4(MemVar_1F92044)
  loc_1881575:         Set var_9C = Me.Txt
  loc_188157B:         Call 0.Method_Txt_Validate0 (CInt(4), var_A0)
  loc_1881583:         var_A0.Text = var_A8
  loc_1881592:       End If
  loc_1881595:     Else
  loc_188159D:       If (var_98 = CInt(3)) Then
  loc_18815AB:         Set var_9C = Me.Txt
  loc_18815B1:         Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_18815B9:         var_A8 = "Party Name"
  loc_18815DA:         If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_18815E8:           Set var_9C = Me.Txt
  loc_18815EE:           Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_18815F6:           var_A0.SetFocus
  loc_1881604:           arg_10 = &HFF
  loc_1881607:           Exit Sub
  loc_1881608:         End If
  loc_1881656:         Set var_9C = Me.Txt
  loc_188165C:         Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_1881664:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_188167C:         If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_188168C:           Set var_9C = Me.Txt
  loc_1881692:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_188169A:           var_A0.Text = vbNullString
  loc_18816B3:           Set var_9C = Me.Txt
  loc_18816B9:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_18816C1:           var_A0.Tag = vbNullString
  loc_18816D0:         Else
  loc_188170B:           Set var_A4 = Me.Txt
  loc_1881711:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1881719:           var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_188174C:           var_A0 = Me.Fields.Item("Code")
  loc_188175D:           var_A8 = CStr(var_A0.Value)
  loc_188176A:           Set var_A4 = Me.Txt
  loc_1881770:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1881778:           var_C4.Tag = var_A8
  loc_188178E:         End If
  loc_1881791:       Else
  loc_1881799:         If (var_98 = CInt(7)) Then
  loc_18817BC:           var_AE = Me.EOF
  loc_18817EA:           Set var_9C = Me.Txt
  loc_18817F0:           Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_18817F8:           ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_1881810:           If (var_A8 Or (var_A8 = vbNullString)) Then
  loc_1881820:             Set var_9C = Me.Txt
  loc_1881826:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_188182E:             var_A0.Text = vbNullString
  loc_1881847:             Set var_9C = Me.Txt
  loc_188184D:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1881855:             var_A0.Tag = vbNullString
  loc_1881863:             arg_10 = &HFF
  loc_1881869:           Else
  loc_18818A4:             Set var_A4 = Me.Txt
  loc_18818AA:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_18818B2:             var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18818E5:             var_A0 = Me.Fields.Item("Code")
  loc_18818F6:             var_A8 = CStr(var_A0.Value)
  loc_1881903:             Set var_A4 = Me.Txt
  loc_1881909:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1881911:             var_C4.Tag = var_A8
  loc_1881927:           End If
  loc_1881936:           Me.FGrid.Redraw = False
  loc_188194B:           Set var_9C = Me.FGrid
  loc_1881951:           var_9C.Rows = 1
  loc_188195B:           var_8E = 1
  loc_1881962:           Set var_94 = New 
  loc_188196D:           Me.var_9C.CursorLocation = 3
  loc_1881980:           Set var_9C = Me.Txt
  loc_1881986:           Call 0.Method_Txt_Validate0 (CInt(7), var_A0, var_A8)
  loc_188198E:           var_8E = var_A0.Tag
  loc_18819B1:           var_138 = "Select H.*,H1.QTYISS,H1.ITEM,H1.REMARKS,H1.AMOUNT AS AMOUNT1,H1.Rate as Rate1,H1.TaxAmt as Tax1,H1.Total as Total1,I.NAME AS ITEMNAME,I.RateEdit,IR.Rate as IRate,H1.TaxPer,IC.TAXSTRU From (((HallBook H  LEFT JOIN HallBook1 H1 on H.DocId=H1.DocId)LEFT JOIN ITEMMAST I ON H1.ITEM=I.CODE And H1.RestCode=I.REstCODE)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=H1.RestCode and IR.ItemCode=H1.Item WHERE H.DOCID='" & var_A8
  loc_18819BF:           var_94.Open CVar(var_138 & "' and H1.Rate<>0 Order by H1.DOCID,H1.SNo"), CVar(MemVar_1F92044), 3
  loc_18819E9:           If (var_94.RecordCount > 0) Then
  loc_1881A03:             var_A0 = var_94.Fields.Item("Advance")
  loc_1881A2F:             var_A8 = CStr(Format(CVar(var_A0), "0.00"))
  loc_1881A3E:             Set var_A4 = Me.Txt
  loc_1881A44:             Call 0.Method_Txt_Validate0 (CInt(8), var_C4, var_A8, 1)
  loc_1881A4C:             var_C4.Text = 1
  loc_1881A72:             Set var_9C = Me.TxtGt
  loc_1881A78:             Call 0.Method_Txt_Validate8 (var_AE, var_90, 1)
  loc_1881A83:             For var_1C0 = -1 To var_AE:         1 = var_1C0 'Integer
  loc_1881A96:               Set var_9C = Me.LblCap
  loc_1881A9C:               Call 0.Method_Txt_Validate0 (var_90, var_A0, var_A8)
  loc_1881AA4:               -1 = var_A0.Tag
  loc_1881ABB:               If (var_A8 = "STOT") Then
  loc_1881AD8:                 var_A0 = var_94.Fields.Item("Total")
  loc_1881AF6:                 Set var_A4 = Me.TxtGt
  loc_1881AFC:                 Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881B04:                 var_C4.Text = CStr(var_A0.Value)
  loc_1881B1D:               Else
  loc_1881B2A:                 Set var_9C = Me.LblCap
  loc_1881B30:                 Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881B4F:                 If (var_A0.Tag = "HLR") Then
  loc_1881B6C:                   var_A0 = var_94.Fields.Item("HallRent")
  loc_1881B8A:                   Set var_A4 = Me.TxtGt
  loc_1881B90:                   Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881B98:                   var_C4.Text = CStr(var_A0.Value)
  loc_1881BB1:                 Else
  loc_1881BBE:                   Set var_9C = Me.LblCap
  loc_1881BC4:                   Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881BE3:                   If (var_A0.Tag = "HLP") Then
  loc_1881C00:                     var_A0 = var_94.Fields.Item("TotalPerCover")
  loc_1881C1E:                     Set var_A4 = Me.TxtGt
  loc_1881C24:                     Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881C2C:                     var_C4.Text = CStr(var_A0.Value)
  loc_1881C45:                   Else
  loc_1881C52:                     Set var_9C = Me.LblCap
  loc_1881C58:                     Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881C77:                     If (var_A0.Tag = "SDIS") Then
  loc_1881CB2:                       Set var_A4 = Me.TxtPer
  loc_1881CB8:                       Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881CC0:                       var_C4.Text = CStr(var_94.Fields.Item("DiscPer").Value)
  loc_1881CF0:                       var_A0 = var_94.Fields.Item("DiscAmt")
  loc_1881D0E:                       Set var_A4 = Me.TxtGt
  loc_1881D14:                       Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881D1C:                       var_C4.Text = CStr(var_A0.Value)
  loc_1881D35:                     Else
  loc_1881D42:                       Set var_9C = Me.LblCap
  loc_1881D48:                       Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881D67:                       If (var_A0.Tag = "SST") Then
  loc_1881D84:                         var_A0 = var_94.Fields.Item("Tax")
  loc_1881DA2:                         Set var_A4 = Me.TxtGt
  loc_1881DA8:                         Call 0.Method_Txt_Validate0 (var_8E, var_C4)
  loc_1881DB0:                         var_C4.Text = CStr(var_A0.Value)
  loc_1881DC9:                       Else
  loc_1881DD6:                         Set var_9C = Me.LblCap
  loc_1881DDC:                         Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881DFB:                         If (var_A0.Tag = "SSTX") Then
  loc_1881DFE:                           GoTo loc_18820E2
  loc_1881E01:                         End If
  loc_1881E0E:                         Set var_9C = Me.LblCap
  loc_1881E14:                         Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881E33:                         If (var_A0.Tag = "SSCH") Then
  loc_1881E50:                           var_A0 = var_94.Fields.Item("Servicecharge")
  loc_1881E6E:                           Set var_A4 = Me.TxtGt
  loc_1881E74:                           Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881E7C:                           var_C4.Text = CStr(var_A0.Value)
  loc_1881E95:                         Else
  loc_1881EA2:                           Set var_9C = Me.LblCap
  loc_1881EA8:                           Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881EC7:                           If (var_A0.Tag = "SADD") Then
  loc_1881EE4:                             var_A0 = var_94.Fields.Item("AddAmt")
  loc_1881F02:                             Set var_A4 = Me.TxtGt
  loc_1881F08:                             Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881F10:                             var_C4.Text = CStr(var_A0.Value)
  loc_1881F29:                           Else
  loc_1881F36:                             Set var_9C = Me.LblCap
  loc_1881F3C:                             Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881F5B:                             If (var_A0.Tag = "SDED") Then
  loc_1881F78:                               var_A0 = var_94.Fields.Item("DedAmt")
  loc_1881F96:                               Set var_A4 = Me.TxtGt
  loc_1881F9C:                               Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1881FA4:                               var_C4.Text = CStr(var_A0.Value)
  loc_1881FBD:                             Else
  loc_1881FCA:                               Set var_9C = Me.LblCap
  loc_1881FD0:                               Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1881FEF:                               If (var_A0.Tag = "SROFF") Then
  loc_188200C:                                 var_A0 = var_94.Fields.Item("RoundOff")
  loc_188202A:                                 Set var_A4 = Me.TxtGt
  loc_1882030:                                 Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1882038:                                 var_C4.Text = CStr(var_A0.Value)
  loc_1882051:                               Else
  loc_188205E:                                 Set var_9C = Me.LblCap
  loc_1882064:                                 Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1882083:                                 If (var_A0.Tag = "SNET") Then
  loc_18820B1:                                   var_A8 = CStr(var_94.Fields.Item("NetAmt").Value)
  loc_18820BE:                                   Set var_A4 = Me.TxtGt
  loc_18820C4:                                   Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_18820CC:                                   var_C4.Text = var_A8
  loc_18820E2:                                 End If
  loc_18820E2:                               End If
  loc_18820E2:                             End If
  loc_18820E2:                           End If
  loc_18820E2:                           ' Referenced from:                   1881DFE
  loc_18820E2:                         End If
  loc_18820E2:                       End If
  loc_18820E2:                     End If
  loc_18820E2:                   End If
  loc_18820E2:                 End If
  loc_18820E2:               End If
  loc_18820E5:             Next var_1C0 'Integer
  loc_18820EA:             ' Referenced from:         188258F
  loc_18820F9:             If Not(var_94.EOF) Then
  loc_1882124:               For var_1C4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_96 = var_1C4 'Byte
  loc_1882137:                 var_104 = CVar(CLng(&H14)) 'Long
  loc_1882162:                 Set var_A0 = Me.Txt
  loc_1882168:                 Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8, CStr(Me.FGrid.TextMatrix)))
  loc_1882170:                 var_104 = var_A4.Text
  loc_18821F3:                 If ((CVar(CLng(var_96)) = var_A8) And (CVar(CLng(var_96)) = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Item")), CStr(Me.FGrid.TextMatrix)), CVar(CLng(9))))) Then
  loc_18821F6:                   GoTo loc_1882587
  loc_18821F9:                 End If
  loc_18821FC:               Next var_1C4 'Byte
  loc_1882202:               var_C0 = vbNullString
  loc_188220C:               Set var_9C = Me.FGrid
  loc_1882221:               Set var_218 = Me.FGrid
  loc_1882228:               var_C0 = CVar(CLng(var_8E)) 'Long
  loc_1882230:               var_104 = CVar(CLng(0)) 'Long
  loc_188223A:               var_D4 = CVar(CStr(var_8E)) 'String
  loc_1882241:               LateIdCallSt
  loc_1882285:               var_E4 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8E)), var_218, CVar(var_94.Fields.Item("Item")))) 'String
  loc_188228C:               LateIdCallSt
  loc_18822D7:               var_E4 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_218, var_E4)) 'String
  loc_18822DE:               LateIdCallSt
  loc_1882310:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_1882318:               var_1D4 = CVar(CLng(3)) 'Long
  loc_1882345:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_188234C:               LateIdCallSt
  loc_1882382:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_188238A:               var_1D4 = CVar(CLng(4)) 'Long
  loc_18823B7:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("Rate1")), "0.00"))) 'String
  loc_18823BE:               LateIdCallSt
  loc_18823F4:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_18823FC:               var_1D4 = CVar(CLng(5)) 'Long
  loc_1882429:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("Amount1")), "0.00"))) 'String
  loc_1882430:               LateIdCallSt
  loc_1882466:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_188246E:               var_1D4 = CVar(CLng(8)) 'Long
  loc_188249B:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("TOTAL1")), "0.00"))) 'String
  loc_18824A2:               LateIdCallSt
  loc_18824CF:               var_A0 = var_94.Fields.Item("TaxStru")
  loc_18824D8:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_18824E0:               var_1D4 = CVar(CLng(&H10)) 'Long
  loc_1882514:               LateIdCallSt
  loc_1882536:               var_104 = CVar(CLng(&H14)) 'Long
  loc_1882549:               Set var_9C = Me.Txt
  loc_188254F:               Call 0.Method_Txt_Validate0 (CInt(1), var_A0, var_A8, var_104, CVar(CLng(var_8E)), var_218, CVar(CStr(Format(CVar(var_A0), "0.00"))))
  loc_1882557:               1 = var_A0.Text
  loc_188255F:               var_D4 = CVar(var_A8) 'String
  loc_1882566:               LateIdCallSt
  loc_188257A:               Set var_218 = Nothing 
  loc_1882584:               var_8E = (var_8E + 1)
  loc_1882587:               ' Referenced from:         18821F6
  loc_188258A:               var_94.MoveNext
  loc_188258F:               GoTo loc_18820EA
  loc_1882592:             End If
  loc_18825A5:             Me.FGrid.FixedRows = 1
  loc_18825B0:           Else
  loc_18825BE:             Me.FGrid.Redraw = True
  loc_18825CC:             If (var_8E = 1) Then
  loc_18825E2:               Me.FGrid.Rows = 1
  loc_18825EE:               Set var_A4 = Me.FGrid
  loc_1882608:               var_D4 = CVar(CStr(Proc_6_127_F24F80(var_A4, CInt(0), var_8E, var_218, var_D4, 1))) 'String
  loc_1882610:               Set var_A0 = Me.FGrid
  loc_188263D:               Me.FGrid.FixedRows = 1
  loc_1882645:             End If
  loc_1882645:           End If
  loc_1882663:           Set var_9C = Me.Txt
  loc_1882669:           Call 0.Method_Txt_Validate0 (CInt(7), var_A0, var_A8, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_D4, -1, var_A4)
  loc_1882671:           FGrid.DispID_10000 = var_A0.Tag
  loc_188268A:           unk_55BD19.Execute var_D4 & var_A8 & "'", var_1D4, var_104
  loc_1882695:           Set var_94 = var_A4
  loc_18826AD:           ' Referenced from:         1882B89
  loc_18826BC:           If Not(var_94.EOF) Then
  loc_18826D8:             var_C0 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_18826E7:             Me.FGrid1.Row = 1
  loc_188271E:             For var_21C = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):         var_96 = var_21C 'Byte
  loc_1882729:               var_C0 = CVar(CLng(var_96)) 'Long
  loc_188275D:               Set var_A0 = Me.Txt
  loc_1882763:               Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_188276B:               var_C0 = var_A4.Text
  loc_188278C:               Set var_C4 = Me.FGrid1
  loc_18827B7:               var_168 = var_94.Fields.Item("VenueName")
  loc_18827C8:               var_140 = Proc_6_38_E68A98(CVar(var_168), CStr(var_C4.TextMatrix)), 1, CVar(CLng(var_96)))
  loc_18827EF:               If (var_218 And ((CByte(1) = var_A8) = var_140)) Then
  loc_18827F2:                 GoTo loc_1882B81
  loc_18827F5:               End If
  loc_18827F8:             Next var_21C 'Byte
  loc_1882802:             Set var_220 = Me.FGrid1
  loc_1882818:             var_1D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_188281D:             var_1F4 = 0
  loc_188283F:             var_C0 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_1882844:             var_104 = 0
  loc_1882862:             var_A8 = CStr(Me.FGrid1.TextMatrix))
  loc_1882870:             var_134 = CVar(CStr((Val(var_A8) + CDbl(1)))) 'String
  loc_1882877:             LateIdCallSt
  loc_18828DF:             var_114 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_220, CVar(CStr(Format(CVar(var_94.Fields.Item("VenueName")), "0.00"))))) 'String
  loc_18828E6:             LateIdCallSt
  loc_1882947:             var_114 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_188294E:             LateIdCallSt
  loc_18829AF:             var_114 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_18829B6:             LateIdCallSt
  loc_1882A17:             var_114 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_1882A1E:             LateIdCallSt
  loc_1882A7F:             var_114 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_1882A86:             LateIdCallSt
  loc_1882AD6:             var_A0 = var_94.Fields.Item("VenuCode")
  loc_1882AE7:             var_114 = CVar(Proc_6_38_E68A98(CVar(var_A0), 6, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_1882AEE:             LateIdCallSt
  loc_1882B1E:             var_104 = 7
  loc_1882B35:             Set var_9C = Me.Txt
  loc_1882B3B:             Call 0.Method_Txt_Validate0 (CInt(1), var_A0, var_A8, var_104, CVar(CLng(Me.FGrid1.Row)), var_220)
  loc_1882B43:             var_114 = var_A0.Text
  loc_1882B4B:             var_E4 = CVar(var_A8) 'String
  loc_1882B52:             LateIdCallSt
  loc_1882B6A:             var_C0 = vbNullString
  loc_1882B73:             Txt_Validate2 = var_220.Name
  loc_1882B7D:             Set var_220 = Nothing 
  loc_1882B81:             ' Referenced from:         18827F2
  loc_1882B84:             var_94.MoveNext
  loc_1882B89:             GoTo loc_18826AD
  loc_1882B8C:           End If
  loc_1882B90:           Set var_94 = New 
  loc_1882B9B:           var_94.CursorLocation = 3
  loc_1882BAE:           Set var_9C = Me.Txt
  loc_1882BB4:           Call 0.Method_Txt_Validate0 (CInt(7), var_A0, var_A8, Txt_Validate2, var_C0, var_220)
  loc_1882BBC:           var_E4 = var_A0.Tag
  loc_1882BED:           var_94.Open CVar("Select * From HallBook H  WHERE H.DOCID='" & var_A8 & "'"), CVar(MemVar_1F92044), 3
  loc_1882C17:           If (var_94.RecordCount > 0) Then
  loc_1882C1D:             var_C0 = "GuarAtt"
  loc_1882C40:             Proc_6_39_E7C810(var_E4, CVar(var_94.Fields.Item(var_C0)), 1, -1)
  loc_1882C57:             Set var_A4 = Me.Txt
  loc_1882C5D:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_C4, CStr(var_E4), var_104)
  loc_1882C65:             var_C4.Text = var_C0
  loc_1882CB6:             Set var_A4 = Me.Txt
  loc_1882CBC:             Call 0.Method_Txt_Validate0 (CInt(3), var_C4, CStr(var_94.Fields.Item("PartyName").Value))
  loc_1882CC4:             var_C4.Text = var_1F4
  loc_1882CF1:             var_A0 = var_94.Fields.Item("CoverRate")
  loc_1882D00:             Proc_6_39_E7C810(var_E4, CVar(var_A0))
  loc_1882D08:             var_A8 = CStr(var_E4)
  loc_1882D17:             Set var_A4 = Me.Txt
  loc_1882D1D:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C4)
  loc_1882D4B:             Set var_9C = Me.Txt
  loc_1882D51:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_A0)
  loc_1882D59:             var_A0.Text = vbNullString
  loc_1882D73:             Set var_A4 = Me.Txt
  loc_1882D79:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C4)
  loc_1882D8E:             var_228 = Val(var_A8)
  loc_1882D9F:             Set var_9C = Me.Txt
  loc_1882DA5:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_A0, var_A8)
  loc_1882DC0:             var_13C = CStr((Val(var_A8) * var_A0.Text))
  loc_1882DCC:             Set var_164 = Me.TextGt
  loc_1882DD2:             Call 0.Method_Txt_Validate0 (1, var_168)
  loc_1882DDA:             var_168.Text = var_13C
  loc_1882DF7:           End If
  loc_1882E05:           Me.FGrid.Redraw = True
  loc_1882E13:           If (var_8E = 1) Then
  loc_1882E29:             Me.FGrid.Rows = 1
  loc_1882E4F:             var_D4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1882E57:             Set var_A0 = Me.FGrid
  loc_1882E84:             Me.FGrid.FixedRows = 1
  loc_1882E8C:           End If
  loc_1882E92:           Call Proc_126_89_164D58C(Cancel, FGrid.DispID_10000)
  loc_1882E9D:           Call Proc_126_90_14ABF5C(Cancel, var_D4)
  loc_1882EA5:         Else
  loc_1882EAD:           If (var_98 = CInt(5)) Then
  loc_1882EBB:             Set var_9C = Me.Txt
  loc_1882EC1:             Call 0.Method_Txt_Validate0 (CInt(5), var_A0)
  loc_1882EC9:             var_A8 = "HallName"
  loc_1882EEA:             If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_1882EF8:               Set var_9C = Me.Txt
  loc_1882EFE:               Call 0.Method_Txt_Validate0 (CInt(5), var_A0)
  loc_1882F06:               var_A0.SetFocus
  loc_1882F14:               arg_10 = &HFF
  loc_1882F17:               Exit Sub
  loc_1882F18:             End If
  loc_1882F38:             var_AE = Me.EOF
  loc_1882F4C:             var_B0 = Me.BOF
  loc_1882F66:             Set var_9C = Me.Txt
  loc_1882F6C:             Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_1882F74:             ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (var_B0 = &HFF))) = var_A0.Text
  loc_1882F8C:             If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_1882F9C:               Set var_9C = Me.Txt
  loc_1882FA2:               Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1882FAA:               var_A0.Text = vbNullString
  loc_1882FC3:               Set var_9C = Me.Txt
  loc_1882FC9:               Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1882FD1:               var_A0.Tag = vbNullString
  loc_1882FE0:             Else
  loc_188301B:               Set var_A4 = Me.Txt
  loc_1883021:               Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1883029:               var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_188305C:               var_A0 = Me.Fields.Item("Code")
  loc_188307A:               Set var_A4 = Me.Txt
  loc_1883080:               Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1883088:               var_C4.Tag = CStr(var_A0.Value)
  loc_188309E:             End If
  loc_18830A1:           Else
  loc_18830A9:             If Not (var_98 = CInt(&HF)) Then
  loc_18830B4:               If (var_98 = CInt(&HE)) Then
  loc_18830B7:               End If
  loc_18830C4:               Set var_9C = Me.Txt
  loc_18830CA:               Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_18830E3:               Proc_6_40_EA50F0(CVar(Val(var_A0.Text)))
  loc_18830F7:               Set var_A4 = Me.Txt
  loc_18830FD:               Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1883105:               var_C4.Text = CStr(var_1D4)
  loc_1883126:               Set var_9C = Me.TxtGt
  loc_188312C:               Call 0.Method_Txt_Validate8 (var_AE)
  loc_188313E:               Set var_A0 = Me.TxtGt
  loc_1883144:               Call 0.Method_Txt_Validate0 (var_AE, var_A4)
  loc_1883163:               Set var_C4 = Me.TextGt
  loc_1883169:               Call 0.Method_Txt_Validate8 (var_B0)
  loc_188317B:               Set var_164 = Me.TextGt
  loc_1883181:               Call 0.Method_Txt_Validate0 (var_B0, var_168)
  loc_1883196:               var_240 = Val(var_168.Text)
  loc_18831A7:               Set var_190 = Me.Txt
  loc_18831AD:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_194, var_13C)
  loc_18831C2:               var_248 = Val(var_13C)
  loc_18831D3:               Set var_22C = Me.Txt
  loc_18831D9:               Call 0.Method_Txt_Validate0 (CInt(8), var_230, var_140)
  loc_18831EE:               var_250 = Val(var_140)
  loc_1883215:               var_D4 = CVar((((Val(var_A4.Text) + var_194.Text) - var_230.Text) - var_250)) 'Double
  loc_1883233:               Set var_234 = Me.Txt
  loc_1883239:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_238, CStr(Format(CVar(Val(var_A0.Text)), "0.00")), 1)
  loc_1883241:               var_238.Text = 1
  loc_1883277:             End If
  loc_1883277:           End If
  loc_1883277:         End If
  loc_1883277:       End If
  loc_1883277:     End If
  loc_1883277:   End If
  loc_1883277: End If
  loc_188327C: Set var_88 = Nothing
  loc_1883284: Set var_94 = Nothing
  loc_1883287: Exit Sub
  loc_1883288: ' Referenced from: 1880BE0
  loc_1883288: Proc_6_60_E62BC4(var_250)
  loc_188328D: Exit Sub
End Sub

Private Sub TextPer_GotFocus(Index As Integer) 'ED0700
  'Data Table: 55BCF4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED0662: Set var_88 = Me.TextPer
  loc_ED0668: Call 0.Method_TextPer_GotFocus0 (Index)
  loc_ED0676: Proc_6_74_E226B0(var_8C)
  loc_ED0682: Call Proc_126_82_F262C0(var_8C)
  loc_ED0696: Set var_88 = Me.TextPer
  loc_ED069C: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED06A4: var_8C.SelStart = 0
  loc_ED06BD: Set var_88 = Me.TextPer
  loc_ED06C3: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED06DE: Set var_90 = Me.TextPer
  loc_ED06E4: Call 0.Method_TextPer_GotFocus0 (Index, var_98)
  loc_ED06EC: var_98.SelLength = Len(var_8C.Text)
  loc_ED06FF: Exit Sub
End Sub

Private Sub TextPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B300
  'Data Table: 55BCF4
  loc_E5B2CD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B2D6:   Proc_6_75_E527CC(Shift)
  loc_E5B2DB: End If
  loc_E5B2F0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B2F9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5B2FE: End If
  loc_E5B2FE: Exit Sub
End Sub

Private Sub TextPer_KeyPress(KeyAscii As Integer) 'E562F0
  'Data Table: 55BCF4
  loc_E562C2: Set var_88 = Me.TextPer
  loc_E562C8: Call 0.Method_TextPer_KeyPress0 (KeyAscii)
  loc_E562E3: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E562EF: Exit Sub
End Sub

Private Sub TextPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E005B4
  'Data Table: 55BCF4
  loc_E005AE: Call Proc_126_90_14ABF5C(KeyCode)
  loc_E005B3: Exit Sub
End Sub

Private Sub TextPer_LostFocus(Index As Integer) 'E5021C
  'Data Table: 55BCF4
  loc_E501FA: Set var_88 = Me.TextPer
  loc_E50200: Call 0.Method_TextPer_LostFocus0 (Index)
  loc_E5020E: Proc_6_73_E22704(var_8C)
  loc_E5021A: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '1058B18
  'Data Table: 55BCF4
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
  Dim arg_7C6C As Variant
  loc_10588BF: Me.DGItem.Visible = False
  loc_10588DE: If (Me.RecordCount > 0) Then
  loc_105891B:   Set var_B4 = Me.TxtGrid
  loc_1058921:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_1058929:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1058952:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105895A:   var_EC = CVar(CLng(1)) 'Long
  loc_105898D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1058995:   Set var_B8 = Me.FGrid
  loc_105899B:   LateIdCallSt
  loc_10589CA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10589D2:   var_EC = CVar(CLng(9)) 'Long
  loc_1058A05:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1058A0D:   Set var_B8 = Me.FGrid
  loc_1058A13:   LateIdCallSt
  loc_1058A49:   var_B0 = Me.Fields.Item("Rate1")
  loc_1058A61:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1058A69:   var_FC = CVar(CLng(4)) 'Long
  loc_1058A8D:   var_11C = Format(CVar(var_B0), "0.00")
  loc_1058A96:   var_14C = CVar(CStr(var_11C)) 'String
  loc_1058A9E:   Set var_B8 = Me.FGrid
  loc_1058AA4:   LateIdCallSt
  loc_1058AC2: End If
  loc_1058ACE: Set var_A8 = Me.TxtGrid
  loc_1058AD4: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_1058ADC: var_FC = var_B0.Visible
  loc_1058AEE: If (var_15E = &HFF) Then
  loc_1058AFA:   Set var_A8 = Me.TxtGrid
  loc_1058B00:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_1058B08:   var_B0.SetFocus
  loc_1058B14: End If
  loc_1058B14: Exit Sub
  loc_1058B15: arg_7C6C = CVar(var_11C) 'Single
End Sub

Private Sub Command1_Click() '1005FB4
  'Data Table: 55BCF4
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As TextBox
  Dim var_114 As Double
  Dim var_C4 As TextBox
  Dim var_11C As Double
  Dim var_D0 As TextBox
  Dim var_124 As Double
  loc_1005E12: Set var_88 = Me.Txt
  loc_1005E18: Call 0.Method_Command1_Click0 (CInt(1), var_8C)
  loc_1005E33: Set var_90 = Me.Txt
  loc_1005E39: Call 0.Method_Command1_Click0 (CInt(4), var_94)
  loc_1005E54: Set var_98 = Me.Txt
  loc_1005E5A: Call 0.Method_Command1_Click0 (CInt(5), var_9C)
  loc_1005E6E: Set var_A4 = Me.TxtGt
  loc_1005E74: Call 0.Method_Command1_Click8 (var_A6)
  loc_1005E86: Set var_AC = Me.TxtGt
  loc_1005E8C: Call 0.Method_Command1_Click0 (var_A6, var_B0)
  loc_1005EA1: var_114 = Val(var_B0.Text)
  loc_1005EAB: Set var_B8 = Me.TextGt
  loc_1005EB1: Call 0.Method_Command1_Click8 (var_BA)
  loc_1005EC3: Set var_C0 = Me.TextGt
  loc_1005EC9: Call 0.Method_Command1_Click0 (var_BA, var_C4)
  loc_1005EDE: var_11C = Val(var_C4.Text)
  loc_1005EEF: Set var_CC = Me.Txt
  loc_1005EF5: Call 0.Method_Command1_Click0 (CInt(8), var_D0, var_D4)
  loc_1005EFD: var_11C = var_D0.Text
  loc_1005F0A: var_124 = Val(var_D4)
  loc_1005F12: var_10C = 0
  loc_1005F1D: Set var_108 = Nothing
  loc_1005F26: var_104 = "S"
  loc_1005F74: Proc_263_0_F72D90(1, 6, "EBILL", var_8C.Text, var_94.Text, 0, var_9C.Tag)
  loc_1005FB1: Exit Sub
End Sub

Private Sub DGHall_UnknownEvent_9 'F58D18
  'Data Table: 55BCF4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F58BF8: On Error Goto loc_F58D12
  loc_F58C0A: Me.DGHall.Visible = False
  loc_F58C29: If (Me.RecordCount > 0) Then
  loc_F58C68:   Set var_B4 = Me.Txt
  loc_F58C6E:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F58C76:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F58CA9:   var_B0 = Me.Fields.Item("Code")
  loc_F58CC8:   Set var_B4 = Me.Txt
  loc_F58CCE:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F58CD6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F58CEC: End If
  loc_F58CF7: Set var_A8 = Me.Txt
  loc_F58CFD: Call 0.Method_DGHall_UnknownEvent_90 (CInt(5))
  loc_F58D05: var_B0.SetFocus
  loc_F58D11: Exit Sub
  loc_F58D12: ' Referenced from: F58BF8
  loc_F58D12: Proc_6_60_E62BC4(var_B0)
  loc_F58D17: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1129470
  'Data Table: 55BCF4
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
  loc_112911A: Set var_88 = Me.TxtGrid
  loc_1129120: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_112912E: Proc_6_74_E226B0(var_8C)
  loc_112913A: Call Proc_126_82_F262C0(var_8C)
  loc_112914B: If (Index = 0) Then
  loc_1129164:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_112917F:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11291BE:   Set var_108 = Me.TxtGrid
  loc_11291C4:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11291CC:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_11291F4:   var_C4 = Me.FGrid.Col
  loc_11291FD:   var_114 = CLng(var_C4)
  loc_112920D:   If (var_114 = CLng(1)) Then
  loc_112921A:     Set global_64 = New 
  loc_112922C:     Me.var_C4.CursorLocation = 3
  loc_1129252:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IR.Rate as IRate,IC.TAXSTRU,IC.TAXSTRU ,I.Unit,I.DiscApp,I.RateEdit,I.Kitchen,i.SChrgApp From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_1129263:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1129277:     CVarUnk
  loc_112927C:     VerifyVarObj
  loc_1129282:     Set var_88 = Me.DGItem
  loc_1129288:     LateIdStAd
  loc_11292D7:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11292DA:       Exit Sub
  loc_11292DB:     End If
  loc_11292E1:     Me.MoveFirst
  loc_11292F9:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1129301:     var_E4 = CVar(CLng(9)) 'Long
  loc_112930A:     Set var_8C = Me.FGrid
  loc_1129310:     var_D4 = var_8C.TextMatrix)
  loc_1129345:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_1129375:     If (Me.EOF = &HFF) Then
  loc_112937E:       Me.MoveFirst
  loc_1129383:     End If
  loc_112938C:     CVarUnk
  loc_1129391:     VerifyVarObj
  loc_1129397:     Set var_88 = Me.DGItem
  loc_112939D:     LateIdStAd
  loc_11293AE:   Else
  loc_11293B5:     If (var_114 = CLng(2)) Then
  loc_11293CD:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_11293D5:       var_8C.MaxLength = var_E4
  loc_11293F6:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(960), var_A4, Me.TxtGrid)
  loc_11293FE:       var_8C.Height = global_64
  loc_112940D:     Else
  loc_1129414:       If Not (var_114 = CLng(3)) Then
  loc_112941E:         If (var_114 = CLng(4)) Then
  loc_1129421:         End If
  loc_1129430:         Set var_88 = Me.TxtGrid
  loc_1129436:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_112943E:         var_8C.MaxLength = 1
  loc_1129453:         If (global_150 = 0) Then
  loc_112945E:           var_110 = "{Home}+{End}"
  loc_1129464:           Proc_303_0_FB9B68(CStr(var_D4), 0)
  loc_112946C:         End If
  loc_112946C:       End If
  loc_112946C:     End If
  loc_112946C:   End If
  loc_112946C: End If
  loc_112946C: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '113D2D8
  'Data Table: 55BCF4
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_113CF60: If (KeyCode = 0) Then
  loc_113CF6D:   If (CLng(Shift) = &H1B) Then
  loc_113CF7D:     Set var_8C = Me.TxtGrid
  loc_113CF83:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_113CF9D:     Set var_98 = Me.TxtGrid
  loc_113CFA3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_113CFAB:     var_9C.Text = var_90.Tag
  loc_113CFC7:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_113CFCC:     Call Proc_126_82_F262C0(arg_14)
  loc_113CFD5:     Set var_8C = Me.FGrid
  loc_113CFF2:     Set var_8C = Me.TxtGrid
  loc_113CFF8:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_113D000:     var_90.Visible = FGrid.DispID_8001
  loc_113D00C:     Exit Sub
  loc_113D00D:   End If
  loc_113D020:   var_B0 = CLng(Me.FGrid.Col)
  loc_113D030:   If (var_B0 = CLng(1)) Then
  loc_113D04B:     Set var_9C = Nothing
  loc_113D084:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_113D0A2:     If (CLng(Shift) = &HD) Then
  loc_113D0AB:       Call Proc_126_77_1403A0C(KeyCode, var_B2, 1, Nothing)
  loc_113D0B6:       If (var_B2 = &HFF) Then
  loc_113D103:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113D113:       End If
  loc_113D113:     End If
  loc_113D116:   Else
  loc_113D11D:     If (var_B0 = CLng(2)) Then
  loc_113D12A:       If (CLng(Shift) = &HD) Then
  loc_113D133:         Call Proc_126_77_1403A0C(KeyCode, var_B2, 0, 0)
  loc_113D13E:         If (var_B2 = &HFF) Then
  loc_113D18B:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(3) + 1)), 0)
  loc_113D19B:         End If
  loc_113D19B:       End If
  loc_113D19E:     Else
  loc_113D1A5:       If (var_B0 = CLng(4)) Then
  loc_113D1AE:         Call Proc_126_77_1403A0C(KeyCode, var_B2, 0, 0)
  loc_113D1B9:         If (var_B2 = &HFF) Then
  loc_113D206:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(4) + 1)), 0)
  loc_113D216:         End If
  loc_113D219:       Else
  loc_113D220:         If (var_B0 = CLng(3)) Then
  loc_113D263:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_113D26C:             Call Proc_126_77_1403A0C(KeyCode, var_B2, 0, 0)
  loc_113D277:             If (var_B2 = &HFF) Then
  loc_113D2C4:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113D2D4:             End If
  loc_113D2D4:           End If
  loc_113D2D4:         End If
  loc_113D2D4:       End If
  loc_113D2D4:     End If
  loc_113D2D4:   End If
  loc_113D2D4: End If
  loc_113D2D4: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F809E0
  'Data Table: 55BCF4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F8088F: Proc_6_58_E054C0(arg_10)
  loc_F808A0: If (KeyAscii = 0) Then
  loc_F808B6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F808C6:   If (var_A0 = CLng(1)) Then
  loc_F808E5:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F808EC:       Set var_AC = Me.TxtGrid
  loc_F808F7:       var_A4 = "Name"
  loc_F80912:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_64, arg_10)
  loc_F80921:     End If
  loc_F80924:   Else
  loc_F8092B:     If (var_A0 = CLng(3)) Then
  loc_F80938:       Set var_8C = Me.TxtGrid
  loc_F8093E:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F80959:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F80968:     Else
  loc_F8096F:       If (var_A0 = CLng(4)) Then
  loc_F8097C:         Set var_8C = Me.TxtGrid
  loc_F80982:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F8099D:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_F809AC:       Else
  loc_F809B3:         If (var_A0 = CLng(2)) Then
  loc_F809C5:           Set var_8C = Me.TxtGrid
  loc_F809CB:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F809D3:           var_AC.MaxLength = 2
  loc_F809DF:         End If
  loc_F809DF:       End If
  loc_F809DF:     End If
  loc_F809DF:   End If
  loc_F809DF: End If
  loc_F809DF: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7B364
  'Data Table: 55BCF4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7B228: On Error Goto loc_F7B35E
  loc_F7B237: If (KeyCode = 0) Then
  loc_F7B24D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7B25D:   If (var_A0 = CLng(1)) Then
  loc_F7B283:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7B294:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_F7B29D:       Set var_AC = Me.TxtGrid
  loc_F7B2A8:       var_A8 = "Name"
  loc_F7B2C3:       Proc_6_89_146F1AC(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7B2D2:     End If
  loc_F7B2D5:   Else
  loc_F7B2DC:     If (var_A0 = CLng(2)) Then
  loc_F7B31B:       Set var_8C = Me.TxtGrid
  loc_F7B321:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7B329:       &HFF = var_AC.Text
  loc_F7B331:       var_114 = CVar(var_A8) 'String
  loc_F7B339:       Set var_128 = Me.FGrid
  loc_F7B33F:       LateIdCallSt
  loc_F7B35D:     End If
  loc_F7B35D:   End If
  loc_F7B35D: End If
  loc_F7B35D: Exit Sub
  loc_F7B35E: ' Referenced from: F7B228
  loc_F7B35E: Proc_6_60_E62BC4(var_128, var_114, 0)
  loc_F7B363: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E211B0
  'Data Table: 55BCF4
  Dim arg_10 As Integer
  loc_E21198: If (Cancel = 0) Then
  loc_E211A1:   Call Proc_126_77_1403A0C(Cancel, var_88)
  loc_E211AA:   arg_10 = Not(var_88)
  loc_E211AD: End If
  loc_E211AD: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD4068
  'Data Table: 55BCF4
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD3EAC: On Error Goto loc_FD4060
  loc_FD3EBE: Me.DGVType.Visible = False
  loc_FD3EDD: If (Me.RecordCount > 0) Then
  loc_FD3F2F:   Set var_CC = Me.Txt
  loc_FD3F35:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD3F3D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD3F95:   Set var_B4 = Me.DGVType
  loc_FD3FAC:   Set var_CC = Me.Txt
  loc_FD3FB2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD3FBA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD400E:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD401F: End If
  loc_FD403D: Set var_B0 = Me.Txt
  loc_FD4043: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD404B: var_B4.SetFocus
  loc_FD405F: Exit Sub
  loc_FD4060: ' Referenced from: FD3EAC
  loc_FD4060: Proc_6_60_E62BC4(var_B4)
  loc_FD4065: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECF3A4
  'Data Table: 55BCF4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF306: Set var_88 = Me.TxtPer
  loc_ECF30C: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECF31A: Proc_6_74_E226B0(var_8C)
  loc_ECF326: Call Proc_126_82_F262C0(var_8C)
  loc_ECF33A: Set var_88 = Me.TxtPer
  loc_ECF340: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECF348: var_8C.SelStart = 0
  loc_ECF361: Set var_88 = Me.TxtPer
  loc_ECF367: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECF382: Set var_90 = Me.TxtPer
  loc_ECF388: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECF390: var_98.SelLength = Len(var_8C.Text)
  loc_ECF3A3: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B648
  'Data Table: 55BCF4
  loc_E5B615: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B61E:   Proc_6_75_E527CC(Shift)
  loc_E5B623: End If
  loc_E5B638: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B641:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5B646: End If
  loc_E5B646: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E55D0C
  'Data Table: 55BCF4
  loc_E55CDE: Set var_88 = Me.TxtPer
  loc_E55CE4: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E55CFF: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E55D0B: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01478
  'Data Table: 55BCF4
  loc_E01472: Call Proc_126_90_14ABF5C(KeyCode)
  loc_E01477: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4EC2C
  'Data Table: 55BCF4
  loc_E4EC0A: Set var_88 = Me.TxtPer
  loc_E4EC10: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4EC1E: Proc_6_73_E22704(var_8C)
  loc_E4EC2A: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'F58BB0
  'Data Table: 55BCF4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F58A90: On Error Goto loc_F58BAA
  loc_F58AA2: Me.DGBookNo.Visible = False
  loc_F58AC1: If (Me.RecordCount > 0) Then
  loc_F58B00:   Set var_B4 = Me.Txt
  loc_F58B06:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F58B0E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F58B41:   var_B0 = Me.Fields.Item("Code")
  loc_F58B60:   Set var_B4 = Me.Txt
  loc_F58B66:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F58B6E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F58B84: End If
  loc_F58B8F: Set var_A8 = Me.Txt
  loc_F58B95: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7))
  loc_F58B9D: var_B0.SetFocus
  loc_F58BA9: Exit Sub
  loc_F58BAA: ' Referenced from: F58A90
  loc_F58BAA: Proc_6_60_E62BC4(var_B0)
  loc_F58BAF: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F3E1C4
  'Data Table: 55BCF4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E0BB: Me.DGParty.Visible = False
  loc_F3E0DA: If (Me.RecordCount > 0) Then
  loc_F3E119:   Set var_B4 = Me.Txt
  loc_F3E11F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3E127:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3E15A:   var_B0 = Me.Fields.Item("Code")
  loc_F3E179:   Set var_B4 = Me.Txt
  loc_F3E17F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3E187:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E19D: End If
  loc_F3E1A8: Set var_A8 = Me.Txt
  loc_F3E1AE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F3E1B6: var_B0.SetFocus
  loc_F3E1C2: Exit Sub
End Sub

Private Sub Form_Load() '123CF94
  'Data Table: 55BCF4
  Dim unk_55BD28 As Connection15
  Dim var_8C As String
  Dim unk_55BD19 As Connection15
  Dim var_88 As Recordset15
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_120 As String
  Dim var_BC As Fields15
  loc_123CA74: On Error Goto loc_123CF8C
  loc_123CA83: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_123CA8C: MemVar_1F9204C = New 
  loc_123CA9B: Me.Connection15.CursorLocation = 3
  loc_123CAAB: unk_55BD28.IsolationLevel = &H10
  loc_123CABB: unk_55BD28.CommandTimeout = 0
  loc_123CAE2: unk_55BD28.Open "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & MemVar_1F9210C & ";Persist Security Info=False", vbNullString, vbNullString, -1
  loc_123CAF9: Set global_164 = Nothing
  loc_123CB27: unk_55BD19.Execute "Select * from Depart where Code='" & global_56 & "'", var_B4, -1
  loc_123CB32: Set var_88 = var_94
  loc_123CB56: If (var_88.RecordCount > 0) Then
  loc_123CB70:   var_BC = var_88.Fields.Item("Name")
  loc_123CB88:   Set var_C0 = Me.LblRest
  loc_123CB8E:   var_C0.Caption = Proc_6_38_E68A98(CVar(var_BC))
  loc_123CBA0: End If
  loc_123CBAA: Set global_60 = New 
  loc_123CBBC: Me.CursorLocation = 3
  loc_123CBE2: var_8C = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where NCAT in('EBILL') and RestCode='" & global_56
  loc_123CBF3: Me.Open CVar(var_8C & "' Order by Description"), CVar(MemVar_1F92044), 3
  loc_123CC07: CVarUnk
  loc_123CC0C: VerifyVarObj
  loc_123CC12: Set var_94 = Me.DGVType
  loc_123CC18: LateIdStAd
  loc_123CC30: Set global_72 = New 
  loc_123CC42: Me.DGVType.CursorLocation = 3
  loc_123CC6A: Me.Open "Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.RESTTYPE IN('Banquet') Order by H.Name", CVar(MemVar_1F92044), 3
  loc_123CC78: CVarUnk
  loc_123CC7D: VerifyVarObj
  loc_123CC83: Set var_94 = Me.DGHall
  loc_123CC89: LateIdStAd
  loc_123CCB3: Me.DGHall.CursorLocation = 3
  loc_123CCCF: var_A4 = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK Order by pARTYName"
  loc_123CCDB: Me.Open "Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.RESTTYPE IN('Banquet') Order by H.Name", CVar(MemVar_1F92044), 2
  loc_123CCE9: CVarUnk
  loc_123CCEE: VerifyVarObj
  loc_123CCFA: LateIdStAd
  loc_123CD12: Set global_80 = New 
  loc_123CD24: Me.DGParty.CursorLocation = 3
  loc_123CD4C: var_B4 = "Select S.DocId as SearchCode,S.DocID From HallSale1 S LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE WHERE S.VDATE= #" & CDate(MemVar_1F920EC) 
  loc_123CD55: var_F0 = var_B4 & "# AND V.NCAT IN ('EBILL') AND V.RESTCODE='" 
  loc_123CD76: Me.Open var_F0 & CVar(global_56) & "' Order by S.Docid", CVar(MemVar_1F9204C), 3
  loc_123CDAB: Call 0.Method_arg_50 (var_8C, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_B4, -1, Me.DGParty, var_BC, 0, var_C0)
  loc_123CDD2: unk_55BD19.Execute var_F0 & var_8C & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_123CDDA: var_94 = var_94.Fields
  loc_123CDE2: 3 = var_BC.Item(New)
  loc_123CDEA: -1 = var_C0.Value
  loc_123CE17: If (var_F0 > 0) Then
  loc_123CE52:   Call 0.Method_arg_50 (var_8C, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_B4, -1, var_94, var_BC, 0)
  loc_123CE79:   unk_55BD19.Execute var_C0 & var_8C & "' AND UNAME='" & MemVar_1F920C8 & "'", var_F0, "SearchCode='"
  loc_123CE81:   0 = var_94.Fields
  loc_123CE89:   var_120 = var_BC.Item(1)
  loc_123CE91:    = var_C0.Value
  loc_123CEB0:   Me.Find CStr(var_F0 & "'"), , 
  loc_123CED8: End If
  loc_123CEEF: If (Me.RecordCount > 0) Then
  loc_123CF06:   If (Me.EOF = &HFF) Then
  loc_123CF0F:     Me.MoveLast
  loc_123CF14:   End If
  loc_123CF14: End If
  loc_123CF1D: Call 0.Method_arg_160 (var_94)
  loc_123CF2B: Call 0.Method_arg_164 (var_94)
  loc_123CF56: Call Proc_126_81_104CAF0(Proc_5_1_100CB50("INI", Me))
  loc_123CF79: Proc_6_23_DFBA28(Me, 7545)
  loc_123CF81: Call Proc_126_74_146B3E0(11940)
  loc_123CF86: Call Proc_126_78_183913C(global_80)
  loc_123CF8B: Exit Sub
  loc_123CF8C: ' Referenced from: 123CA74
  loc_123CF8C: Proc_6_60_E62BC4()
  loc_123CF91: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E77590
  'Data Table: 55BCF4
  loc_E77537: Set global_72 = Nothing
  loc_E77549: Set global_64 = Nothing
  loc_E7755B: Set global_84 = Nothing
  loc_E7756D: Set global_88 = Nothing
  loc_E7757F: Set global_76 = Nothing
  loc_E7758B: global_52 = 0
  loc_E7758E: Exit Sub
End Sub

Private Sub Form_Activate() 'FC6894
  'Data Table: 55BCF4
  Dim var_90 As String
  Dim unk_55BD19 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Integer
  Dim var_120 As Field20
  loc_FC6712: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE NCAT='BBILL' AND RestCode='" & global_56 & "' Order by Description"
  loc_FC671B: unk_55BD19.Execute var_90, var_B0, -1
  loc_FC6726: Set var_88 = var_B4
  loc_FC674A: If (var_88.RecordCount > 0) Then
  loc_FC6767:   var_BC = var_88.Fields.Item(0)
  loc_FC677E:   global_132 = CStr(var_BC.Value)
  loc_FC6792: Else
  loc_FC67A5:   var_B0 = "Sundries Not Defined"
  loc_FC67AB:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_FC67C8:   Me.Global.Unload Me
  loc_FC67D0:   Exit Sub
  loc_FC67D1: End If
  loc_FC67D7: var_CC = 0
  loc_FC6807: unk_55BD19.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_132 & "'", var_B0, -1
  loc_FC680F: var_B4 = var_B4.Fields
  loc_FC6817: var_CC = var_BC.Item(var_BC)
  loc_FC681F: var_120 = var_120.Value
  loc_FC6846: If (var_DC <= 0) Then
  loc_FC6862:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_FC687F:   Me.Global.Unload Me
  loc_FC6887:   Exit Sub
  loc_FC6888: End If
  loc_FC688D: Set var_88 = Nothing
  loc_FC6890: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25DDC
  'Data Table: 55BCF4
  loc_E25DC1: If (global_52 = &HFF) Then
  loc_E25DD1:   Me.Global.Unload Me
  loc_E25DD9: End If
  loc_E25DD9: Exit Sub
  loc_E25DDA: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E38538
  'Data Table: 55BCF4
  loc_E3850C: On Error Goto loc_E38530
  loc_E38527: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3852F: Exit Sub
  loc_E38530: ' Referenced from: E3850C
  loc_E38530: Proc_6_60_E62BC4(Shift)
  loc_E38535: Exit Sub
End Sub

Public Function global_52Get() '55DAA0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '55DAAF
  global_52 = Value
End Sub

Public Function global_56Get() '55DABE
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '55DACD
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E75C64
  'Data Table: 55BCF4
  Dim Me As Recordset15
  loc_E75C0E: Me.MoveFirst
  loc_E75C38: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75C58: If (Me.EOF = 0) Then
  loc_E75C5B:   Call Proc_126_78_183913C(var_9C)
  loc_E75C60: End If
  loc_E75C60: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94D40
  'Data Table: 55BCF4
  Dim Me As Recordset15
  loc_E94CCE: On Error Goto loc_E94D37
  loc_E94CD7: Me.MoveFirst
  loc_E94D01: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94D29: Proc_5_0_110649C(&HFF, Me, global_80)
  loc_E94D31: Call Proc_126_78_183913C(0)
  loc_E94D36: Exit Sub
  loc_E94D37: ' Referenced from: E94CCE
  loc_E94D37: Proc_6_60_E62BC4(var_A0)
  loc_E94D3C: Exit Sub
End Sub

Public Sub Proc_126_74_146B3E0
  'Data Table: 55BCF4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As TextBox
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_146A7F6: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_146A811: Me.FGrid.Top = CVar(CDbl(2700))
  loc_146A82C: Me.FGrid.Height = CVar(CDbl(2835))
  loc_146A847: Me.FGrid.Width = CVar(CDbl(8005))
  loc_146A861: Me.DGItem.Left = CVar(CDbl(&HF))
  loc_146A87C: Me.DGItem.Top = CVar(CDbl(4145))
  loc_146A896: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_146A8AC: Set var_B4 = Me.Txt
  loc_146A8B2: Call 0.Method_Proc_126_74_146B3E00 (CInt(3), var_B8)
  loc_146A8CD: Set var_A8 = Me.Txt
  loc_146A8D3: Call 0.Method_Proc_126_74_146B3E00 (CInt(3), var_AC)
  loc_146A8EB: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146A8FA: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_146A91A: Set var_A8 = Me.Txt
  loc_146A920: Call 0.Method_Proc_126_74_146B3E00 (CInt(5), var_AC)
  loc_146A93F: Me.DGHall.Left = CVar(var_AC.Left)
  loc_146A95B: Set var_B4 = Me.Txt
  loc_146A961: Call 0.Method_Proc_126_74_146B3E00 (CInt(5), var_B8)
  loc_146A97C: Set var_A8 = Me.Txt
  loc_146A982: Call 0.Method_Proc_126_74_146B3E00 (CInt(5), var_AC)
  loc_146A99A: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146A9A9: Me.DGHall.Top = CVar(var_AC.Left)
  loc_146A9C9: Set var_A8 = Me.Txt
  loc_146A9CF: Call 0.Method_Proc_126_74_146B3E00 (CInt(7), var_AC)
  loc_146A9EE: Me.DGBookNo.Left = CVar(var_AC.Left)
  loc_146AA0A: Set var_B4 = Me.Txt
  loc_146AA10: Call 0.Method_Proc_126_74_146B3E00 (CInt(7), var_B8)
  loc_146AA2B: Set var_A8 = Me.Txt
  loc_146AA31: Call 0.Method_Proc_126_74_146B3E00 (CInt(7), var_AC)
  loc_146AA49: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146AA58: Me.DGBookNo.Top = CVar(var_AC.Left)
  loc_146AA78: Set var_A8 = Me.Txt
  loc_146AA7E: Call 0.Method_Proc_126_74_146B3E00 (CInt(0), var_AC)
  loc_146AA9D: Me.DGVType.Left = CVar(var_AC.Left)
  loc_146AAB9: Set var_B4 = Me.Txt
  loc_146AABF: Call 0.Method_Proc_126_74_146B3E00 (CInt(0), var_B8)
  loc_146AADA: Set var_A8 = Me.Txt
  loc_146AAE0: Call 0.Method_Proc_126_74_146B3E00 (CInt(0), var_AC)
  loc_146AAF8: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146AB07: Me.DGVType.Top = CVar(var_AC.Left)
  loc_146AB1D: Set var_C4 = Me.FGrid
  loc_146AB34: global_100 = CStr(CLng(var_C4.BackColor))
  loc_146AB4A: var_C4.Cols = &H15
  loc_146AB52: var_94 = CVar(CLng(0)) 'Long
  loc_146AB57: var_E8 = &HFA
  loc_146AB63: LateIdCallSt
  loc_146AB6B: var_94 = 0
  loc_146AB77: var_E8 = CVar(CLng(1)) 'Long
  loc_146AB7C: var_108 = "Item Name"
  loc_146AB85: LateIdCallSt
  loc_146AB90: var_94 = CVar(CLng(1)) 'Long
  loc_146AB9B: var_E8 = CVar(CInt(1)) 'Integer
  loc_146ABA2: LateIdCallSt
  loc_146ABAD: var_94 = CVar(CLng(1)) 'Long
  loc_146ABB2: var_E8 = &HA0A
  loc_146ABBE: LateIdCallSt
  loc_146ABC6: var_94 = 0
  loc_146ABD2: var_E8 = CVar(CLng(2)) 'Long
  loc_146ABD7: var_108 = "Remarks"
  loc_146ABE0: LateIdCallSt
  loc_146ABEB: var_94 = CVar(CLng(2)) 'Long
  loc_146ABF6: var_E8 = CVar(CInt(1)) 'Integer
  loc_146ABFD: LateIdCallSt
  loc_146AC08: var_94 = CVar(CLng(2)) 'Long
  loc_146AC0D: var_E8 = &H61D
  loc_146AC19: LateIdCallSt
  loc_146AC21: var_94 = 0
  loc_146AC2D: var_E8 = CVar(CLng(3)) 'Long
  loc_146AC32: var_108 = "Qty"
  loc_146AC3B: LateIdCallSt
  loc_146AC46: var_94 = CVar(CLng(3)) 'Long
  loc_146AC51: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AC58: LateIdCallSt
  loc_146AC63: var_94 = CVar(CLng(3)) 'Long
  loc_146AC6E: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AC75: LateIdCallSt
  loc_146AC80: var_94 = CVar(CLng(3)) 'Long
  loc_146AC85: var_E8 = &H4CE
  loc_146AC91: LateIdCallSt
  loc_146AC99: var_94 = 0
  loc_146ACA5: var_E8 = CVar(CLng(4)) 'Long
  loc_146ACAA: var_108 = "Rate"
  loc_146ACB3: LateIdCallSt
  loc_146ACBE: var_94 = CVar(CLng(4)) 'Long
  loc_146ACC9: var_E8 = CVar(CInt(7)) 'Integer
  loc_146ACD0: LateIdCallSt
  loc_146ACDB: var_94 = CVar(CLng(4)) 'Long
  loc_146ACE6: var_E8 = CVar(CInt(7)) 'Integer
  loc_146ACED: LateIdCallSt
  loc_146ACF8: var_94 = CVar(CLng(4)) 'Long
  loc_146ACFD: var_E8 = &H44C
  loc_146AD09: LateIdCallSt
  loc_146AD11: var_94 = 0
  loc_146AD1D: var_E8 = CVar(CLng(6)) 'Long
  loc_146AD22: var_108 = "%"
  loc_146AD2B: LateIdCallSt
  loc_146AD36: var_94 = CVar(CLng(6)) 'Long
  loc_146AD41: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AD48: LateIdCallSt
  loc_146AD53: var_94 = CVar(CLng(6)) 'Long
  loc_146AD5E: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AD65: LateIdCallSt
  loc_146AD70: var_94 = CVar(CLng(6)) 'Long
  loc_146AD75: var_E8 = 0
  loc_146AD81: LateIdCallSt
  loc_146AD89: var_94 = 0
  loc_146AD95: var_E8 = CVar(CLng(7)) 'Long
  loc_146AD9A: var_108 = "Tax"
  loc_146ADA3: LateIdCallSt
  loc_146ADAE: var_94 = CVar(CLng(7)) 'Long
  loc_146ADB9: var_E8 = CVar(CInt(7)) 'Integer
  loc_146ADC0: LateIdCallSt
  loc_146ADCB: var_94 = CVar(CLng(7)) 'Long
  loc_146ADD6: var_E8 = CVar(CInt(7)) 'Integer
  loc_146ADDD: LateIdCallSt
  loc_146ADE8: var_94 = CVar(CLng(7)) 'Long
  loc_146ADED: var_E8 = 0
  loc_146ADF9: LateIdCallSt
  loc_146AE01: var_94 = 0
  loc_146AE0D: var_E8 = CVar(CLng(5)) 'Long
  loc_146AE12: var_108 = "Amount"
  loc_146AE1B: LateIdCallSt
  loc_146AE26: var_94 = CVar(CLng(5)) 'Long
  loc_146AE31: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AE38: LateIdCallSt
  loc_146AE43: var_94 = CVar(CLng(5)) 'Long
  loc_146AE4E: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AE55: LateIdCallSt
  loc_146AE60: var_94 = CVar(CLng(5)) 'Long
  loc_146AE65: var_E8 = &H46A
  loc_146AE71: LateIdCallSt
  loc_146AE79: var_94 = 0
  loc_146AE85: var_E8 = CVar(CLng(8)) 'Long
  loc_146AE8A: var_108 = "Total"
  loc_146AE93: LateIdCallSt
  loc_146AE9E: var_94 = CVar(CLng(8)) 'Long
  loc_146AEA9: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AEB0: LateIdCallSt
  loc_146AEBB: var_94 = CVar(CLng(8)) 'Long
  loc_146AEC6: var_E8 = CVar(CInt(7)) 'Integer
  loc_146AECD: LateIdCallSt
  loc_146AED8: var_94 = CVar(CLng(8)) 'Long
  loc_146AEDD: var_E8 = 0
  loc_146AEE9: LateIdCallSt
  loc_146AEF4: var_94 = CVar(CLng(9)) 'Long
  loc_146AEF9: var_E8 = 0
  loc_146AF05: LateIdCallSt
  loc_146AF10: var_94 = CVar(CLng(&HA)) 'Long
  loc_146AF15: var_E8 = 0
  loc_146AF21: LateIdCallSt
  loc_146AF2C: var_94 = CVar(CLng(&HB)) 'Long
  loc_146AF31: var_E8 = 0
  loc_146AF3D: LateIdCallSt
  loc_146AF48: var_94 = CVar(CLng(&HC)) 'Long
  loc_146AF4D: var_E8 = 0
  loc_146AF59: LateIdCallSt
  loc_146AF64: var_94 = CVar(CLng(&HD)) 'Long
  loc_146AF69: var_E8 = 0
  loc_146AF75: LateIdCallSt
  loc_146AF80: var_94 = CVar(CLng(&HF)) 'Long
  loc_146AF85: var_E8 = 0
  loc_146AF91: LateIdCallSt
  loc_146AF9C: var_94 = CVar(CLng(&HE)) 'Long
  loc_146AFA1: var_E8 = 0
  loc_146AFAD: LateIdCallSt
  loc_146AFB8: var_94 = CVar(CLng(&H10)) 'Long
  loc_146AFBD: var_E8 = 0
  loc_146AFC9: LateIdCallSt
  loc_146AFD4: var_94 = CVar(CLng(&H11)) 'Long
  loc_146AFD9: var_E8 = 0
  loc_146AFE5: LateIdCallSt
  loc_146AFF0: var_94 = CVar(CLng(&H12)) 'Long
  loc_146AFF5: var_E8 = 0
  loc_146B001: LateIdCallSt
  loc_146B00C: var_94 = CVar(CLng(&H13)) 'Long
  loc_146B011: var_E8 = 0
  loc_146B01D: LateIdCallSt
  loc_146B028: var_94 = CVar(CLng(&H14)) 'Long
  loc_146B02D: var_E8 = 0
  loc_146B039: LateIdCallSt
  loc_146B043: Set var_C4 = Nothing 
  loc_146B04B: Set var_11C = Me.FGCat
  loc_146B062: global_100 = CStr(CLng(var_11C.BackColor))
  loc_146B06F: var_94 = CVar(CLng(3)) 'Long
  loc_146B074: var_E8 = &H7D0
  loc_146B080: LateIdCallSt
  loc_146B094: var_11C.Cols = 7
  loc_146B09B: Set var_11C = Nothing 
  loc_146B0B2: Me.FGrid1.Cols = 8
  loc_146B0B7: var_94 = 0
  loc_146B0C0: var_E8 = 0
  loc_146B0C9: var_108 = "SNo"
  loc_146B0D2: LateIdCallSt
  loc_146B0DA: var_94 = 0
  loc_146B0E9: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B0F0: LateIdCallSt
  loc_146B0F8: var_94 = 0
  loc_146B107: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B10E: LateIdCallSt
  loc_146B116: var_94 = 0
  loc_146B11F: var_E8 = &H190
  loc_146B12B: LateIdCallSt
  loc_146B133: var_94 = 0
  loc_146B13C: var_E8 = 1
  loc_146B145: var_108 = "Venue Name"
  loc_146B14E: LateIdCallSt
  loc_146B156: var_94 = 1
  loc_146B165: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B16C: LateIdCallSt
  loc_146B174: var_94 = 1
  loc_146B183: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B18A: LateIdCallSt
  loc_146B192: var_94 = 1
  loc_146B19B: var_E8 = &HA8C
  loc_146B1A7: LateIdCallSt
  loc_146B1AF: var_94 = 0
  loc_146B1B8: var_E8 = 2
  loc_146B1C1: var_108 = "From Date"
  loc_146B1CA: LateIdCallSt
  loc_146B1D2: var_94 = 2
  loc_146B1E1: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B1E8: LateIdCallSt
  loc_146B1F0: var_94 = 2
  loc_146B1FF: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B206: LateIdCallSt
  loc_146B20E: var_94 = 2
  loc_146B217: var_E8 = &H44C
  loc_146B223: LateIdCallSt
  loc_146B22B: var_94 = 0
  loc_146B234: var_E8 = 3
  loc_146B23D: var_108 = "Fr Time"
  loc_146B246: LateIdCallSt
  loc_146B24E: var_94 = 3
  loc_146B25D: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B264: LateIdCallSt
  loc_146B26C: var_94 = 3
  loc_146B27B: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B282: LateIdCallSt
  loc_146B28A: var_94 = 3
  loc_146B293: var_E8 = &H384
  loc_146B29F: LateIdCallSt
  loc_146B2A7: var_94 = 0
  loc_146B2B0: var_E8 = 4
  loc_146B2B9: var_108 = "To Date"
  loc_146B2C2: LateIdCallSt
  loc_146B2CA: var_94 = 4
  loc_146B2D9: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B2E0: LateIdCallSt
  loc_146B2E8: var_94 = 4
  loc_146B2F7: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B2FE: LateIdCallSt
  loc_146B306: var_94 = 4
  loc_146B30F: var_E8 = &H44C
  loc_146B31B: LateIdCallSt
  loc_146B323: var_94 = 0
  loc_146B32C: var_E8 = 5
  loc_146B335: var_108 = "To Time"
  loc_146B33E: LateIdCallSt
  loc_146B346: var_94 = 5
  loc_146B355: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B35C: LateIdCallSt
  loc_146B364: var_94 = 5
  loc_146B373: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B37A: LateIdCallSt
  loc_146B382: var_94 = 5
  loc_146B38B: var_E8 = &H384
  loc_146B397: LateIdCallSt
  loc_146B39F: var_94 = 6
  loc_146B3A8: var_E8 = 0
  loc_146B3B4: LateIdCallSt
  loc_146B3BC: var_94 = 7
  loc_146B3C5: var_E8 = 0
  loc_146B3D1: LateIdCallSt
  loc_146B3DB: Set var_120 = Nothing 
  loc_146B3DF: Exit Sub
End Sub

Public Sub Proc_126_75_19F7F6C
  'Data Table: 55BCF4
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_55BD6C As Connection15
  Dim var_108 As Integer
  Dim var_110 As Integer
  Dim unk_55BD19 As Connection15
  Dim var_138 As Variant
  Dim var_13C As String
  Dim unk_55BD28 As Connection15
  Dim var_11C As Recordset15
  Dim var_B8 As Integer
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_198 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_124 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_B6 As Integer
  Dim var_178 As Variant
  Dim var_25C As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_290 As Variant
  Dim var_2D4 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_120 As Recordset15
  Dim var_12C As Double
  Dim var_140 As Variant
  Dim var_2FC As Variant
  Dim var_304 As Variant
  Dim var_2C4 As Variant
  Dim var_348 As Variant
  Dim var_3C0 As Variant
  Dim var_54C As Variant
  Dim var_378 As Variant
  Dim var_398 As Variant
  Dim var_4C4 As Variant
  Dim var_4E4 As Variant
  Dim var_594 As Variant
  Dim var_10C As Recordset15
  Dim var_134 As Double
  Dim var_300 As Fields15
  Dim var_3F0 As Variant
  Dim var_518 As Variant
  Dim var_620 As Variant
  Dim var_118 As Recordset15
  Dim var_640 As Double
  loc_19F4DF4: unk_55BD6C.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92070 & "FOM'", var_B0, -1
  loc_19F4DFF: Set var_88 = var_B4
  loc_19F4E16: var_108 = 1
  loc_19F4E1B: var_110 = &HFF
  loc_19F4E20: var_110 = 0
  loc_19F4E25: Close 1
  loc_19F4E2E: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_19F4E46: var_8C = "Select * from Enviro where LogSite_code='" & MemVar_1F92078
  loc_19F4E56: unk_55BD19.Execute var_8C & "'", var_B0, -1
  loc_19F4E61: Set var_124 = var_B4
  loc_19F4E8F: Set var_B4 = Me.Txt
  loc_19F4E95: Call 0.Method_Proc_126_75_19F7F6C0 (CInt(4), var_138, var_8C, "SELECT * FROM HallStock WHERE DocId='", var_B0, -1, var_140)
  loc_19F4E9D: var_B4 = var_138.Text
  loc_19F4EB6: unk_55BD28.Execute var_110 & var_8C & "' AND QTYIss>0", var_110, var_108
  loc_19F4EC1: Set var_10C = var_140
  loc_19F4EFD: Call 0.Method_Proc_126_75_19F7F6C0 (CInt(7), var_138, var_8C, "Select HB.*, SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='", var_B0)
  loc_19F4F05: -1 = var_138.Tag
  loc_19F4F1E: unk_55BD19.Execute var_140 & var_8C & "'", 0, Me.Txt
  loc_19F4F29: Set var_11C = var_140
  loc_19F4F5F: Set var_B4 = Me.Txt
  loc_19F4F65: Call 0.Method_Proc_126_75_19F7F6C0 (CInt(7), var_138, var_8C, "SELECT * FROM Hallsale1 WHERE BookDocId='")
  loc_19F4F6D: var_B0 = var_138.Tag
  loc_19F4F76: var_90 = -1 & var_8C
  loc_19F4F86: unk_55BD28.Execute var_140 & var_8C & "'", var_140, 
  loc_19F4F91: Set var_120 = var_140
  loc_19F4FA9: ' Referenced from: 19F6F42
  loc_19F4FB8: If Not(var_11C.EOF) Then
  loc_19F4FCF:   If (var_11C.RecordCount <= 0) Then
  loc_19F4FD2:     Exit Sub
  loc_19F4FD3:   End If
  loc_19F4FD9:   If (var_B6 = 0) Then
  loc_19F500A:     var_D4 = Replace(CStr(Space(&H4F)), " ", "-", 1, -1, 0)
  loc_19F5019:     var_B8 = (var_B8 + 1)
  loc_19F504E:     var_158 = (Chr(&HF) + "UPTT No. :")
  loc_19F5055:     var_188 = (var_158 + Trim(MemVar_1F92148))
  loc_19F505C:     var_1A8 = (var_188 + Chr(&H12))
  loc_19F5062:     Print 1, var_1A8
  loc_19F50A9:     var_158 = (Chr(&HF) + "CST No.  :")
  loc_19F50B0:     var_188 = (var_158 + Trim(MemVar_1F9214C))
  loc_19F50B7:     var_1A8 = (var_188 + Chr(&H12))
  loc_19F50BD:     Print 1, var_1A8
  loc_19F50F3:     Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A")
  loc_19F5148:     var_158 = (Trim(MemVar_1F92134) + ", ")
  loc_19F514F:     var_188 = (var_158 + Trim(MemVar_1F92138))
  loc_19F5158:     var_198 = (var_188 + " ")
  loc_19F515F:     var_1E8 = (Chr(&H12) + Trim(MemVar_1F9213C))
  loc_19F5168:     var_208 = (var_1E8 + " ")
  loc_19F5172:     var_228 = (var_208 + CVar(MemVar_1F9215C))
  loc_19F518B:     Print 1, Proc_6_98_11AC4E4(CStr(var_228), "B", &H4E)
  loc_19F51E8:     Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", &H7D)
  loc_19F524D:     Print 1, Proc_6_98_11AC4E4(Proc_6_38_E68A98(CVar(var_124.Fields.Item("Bill_Header")), &H4E), "D")
  loc_19F526B:     Print 1, var_D4
  loc_19F52BC:     var_178 = (Space(1) + CVar(Proc_6_45_EAD428("To,", &H2F, &HC)))
  loc_19F52C5:     var_188 = (Trim(MemVar_1F92138) + "|")
  loc_19F52CC:     var_1A8 = (var_188 + Space(3))
  loc_19F52D3:     var_208 = (Trim(MemVar_1F9213C) + Space(&H1A))
  loc_19F52D9:     Print 1, var_208
  loc_19F538C:     Set var_140 = Me.Txt
  loc_19F5392:     Call 0.Method_Proc_126_75_19F7F6C0 (CInt(1), var_25C)
  loc_19F53D2:     var_178 = (Space(4) + CVar(Proc_6_45_EAD428("M/s.", 5)))
  loc_19F53DC:     var_1A8 = (Trim(MemVar_1F92138) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("PartyName")), &H7D), &H27)))
  loc_19F53E5:     var_1E8 = (Trim(MemVar_1F9213C) + "|")
  loc_19F53EC:     var_228 = (Space(&H1A) + Space(3))
  loc_19F53F6:     var_258 = (var_228 + CVar(Proc_6_45_EAD428("Bill No:", &HA)))
  loc_19F5400:     var_280 = (var_258 + CVar(Proc_6_98_11AC4E4(var_25C.Text, "B")))
  loc_19F5407:     var_2A0 = (var_280 + Space(&HB))
  loc_19F540D:     Print 1, var_2A0
  loc_19F54BF:     var_1A8 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add1")), &HB)))), &H2C)))
  loc_19F54C8:     var_1E8 = (Trim(MemVar_1F9213C) + "|")
  loc_19F54D5:     Print 1, Space(&H1A) & Space(1)
  loc_19F553B:     var_178 = (Space(4) + CVar(Proc_6_45_EAD428(" ", &H2C)))
  loc_19F5544:     var_188 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add1")), &HB)) + "|")
  loc_19F554B:     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add1")), &HB))) + Left(var_D4, &H1E))
  loc_19F5551:     Print 1, Trim(MemVar_1F9213C)
  loc_19F55E5:     var_1A8 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add2")))))), &H2C)))
  loc_19F55EE:     var_1E8 = (Trim(MemVar_1F9213C) + "|")
  loc_19F55F5:     var_228 = (Space(&H1A) + Space(3))
  loc_19F55FC:     var_258 = (Space(&H1A) & Space(1) + Space(&H19))
  loc_19F5602:     Print 1, var_258
  loc_19F5673:     var_168 = "-"
  loc_19F5678:     var_198 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City"))))) + "|")
  loc_19F5686:     var_90 = Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add2")))))), &H2C))), &H2C)
  loc_19F56AC:     var_1E8 = (Space(4) + CVar(var_90))
  loc_19F56B5:     var_208 = (Space(&H1A) + "|")
  loc_19F56BC:     var_248 = (Space(3) + Space(3))
  loc_19F56C3:     var_270 = (Space(&H19) + Space(&H19))
  loc_19F56C9:     Print 1, CVar(Proc_6_98_11AC4E4(var_25C.Text, "B"))
  loc_19F574C:     var_168 = "dd-MMM-yyyy"
  loc_19F578E:     var_178 = (Space(4) + CVar(Proc_6_45_EAD428(" ", &H2C)))
  loc_19F5797:     var_188 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + "|")
  loc_19F579E:     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City"))))) + Space(3))
  loc_19F57A8:     var_208 = (CVar("Date:") + CVar(Proc_6_45_EAD428("Date:", 8)))
  loc_19F57B2:     var_280 = (Space(3) + CVar(Proc_6_45_EAD428(CStr(Format(Date, "|")), &HB, 1)))
  loc_19F57B9:     var_2A0 = (var_280 + Space(2))
  loc_19F57BF:     Print 1, var_2A0
  loc_19F57FC:     Print 1, var_D4
  loc_19F58BA:     var_178 = (Space(1) + CVar(Proc_6_45_EAD428("S.", &HA)))
  loc_19F58C1:     var_198 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F58C8:     var_1E8 = (Space(3) + Space(1))
  loc_19F58D2:     var_228 = (CVar(Proc_6_45_EAD428("Date:", 8)) + CVar(Proc_6_45_EAD428("Item Detail", &H1D)))
  loc_19F58DC:     var_258 = (Date + CVar(Proc_6_52_EAD4F4("QTY.", &HA)))
  loc_19F58E3:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F58ED:     var_2A0 = (var_280 + CVar(Proc_6_52_EAD4F4("Rate", 9)))
  loc_19F58F4:     var_2D4 = (var_2A0 + Space(1))
  loc_19F58FE:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAD4F4("AMOUNT ", &HE)))
  loc_19F5904:     Print 1, var_2F8
  loc_19F59FF:     var_158 = CVar(Proc_6_45_EAD428("No.", &HA)) 'String
  loc_19F5A02:     var_178 = (Space(1) + var_158)
  loc_19F5A09:     var_198 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F5A10:     var_1E8 = (Space(3) + Space(1))
  loc_19F5A1A:     var_228 = (CVar(Proc_6_45_EAD428("Date:", 8)) + CVar(Proc_6_45_EAD428("   ", &H1D)))
  loc_19F5A24:     var_258 = (Date + CVar(Proc_6_52_EAD4F4("  ", &HA)))
  loc_19F5A2B:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F5A32:     var_290 = CVar(Proc_6_52_EAD4F4("   ", &HA)) 'String
  loc_19F5A35:     var_2A0 = (var_280 + var_290)
  loc_19F5A3C:     var_2D4 = (var_2A0 + Space(1))
  loc_19F5A46:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAD4F4("Rs.    P.", &HE)))
  loc_19F5A4C:     Print 1, var_2F8
  loc_19F5A97:     Print 1, var_D4
  loc_19F5A9F:     var_B6 = &H12
  loc_19F5AA2:   End If
  loc_19F5AB6:   If (var_120.RecordCount > 0) Then
  loc_19F5ADF:     Proc_6_39_E7C810(var_158, CVar(var_120.Fields.Item("TotalPerCover")), var_B6)
  loc_19F5AF0:     var_12C = Val(CStr(var_158))
  loc_19F5BB0:     var_59C = Proc_6_45_EAD428(CStr("Pax " & var_120.Fields.Item("NoofPax").Value & "  @" & var_120.Fields.Item("RatePerPax").Value), &H1D)
  loc_19F5BCA:     var_300 = var_120.Fields.Item("NoofPax")
  loc_19F5BD2:     var_280 = CVar(var_300) 'Address
  loc_19F5BD9:     Proc_6_39_E7C810(var_290, var_280)
  loc_19F5C1A:     Proc_6_39_E7C810(var_2D4, CVar(var_120.Fields.Item("NoofPax")))
  loc_19F5C68:     var_328 = (var_290 = 0) 'Variant
  loc_19F5C89:     var_5A4 = Proc_6_52_EAD4F4(CStr(IIf(var_328, CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_2D4, "0")), &HA, 1)))), &HA, 1)
  loc_19F5CBF:     Proc_6_39_E7C810(var_3D0, CVar(var_120.Fields.Item("RatePerPax")))
  loc_19F5D00:     Proc_6_39_E7C810(var_42C, CVar(var_120.Fields.Item("RatePerPax")))
  loc_19F5D4D:     var_470 = (var_3D0 = 0) 'Variant
  loc_19F5D6E:     var_5AC = Proc_6_52_EAD4F4(CStr(IIf(var_470, CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_42C, "0.00")), &HA, 1)))), &HA, 1)
  loc_19F5DE2:     var_56C = IIf((var_12C = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_12C, "0.00")), &HA, 1)))
  loc_19F5E02:     var_158 = CVar(Proc_6_45_EAD428(CStr(var_108) & ".", &HA, var_12C)) 'String
  loc_19F5E05:     var_178 = (Space(1) + var_158)
  loc_19F5E0C:     var_198 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F5E16:     var_270 = (Space(3) + CVar(var_59C))
  loc_19F5E20:     var_378 = (Space(1) + CVar(var_5A4))
  loc_19F5E27:     var_398 = (var_378 + Space(1))
  loc_19F5E31:     var_4C4 = (var_398 + CVar(var_5AC))
  loc_19F5E38:     var_4E4 = (var_4C4 + Space(1))
  loc_19F5E42:     var_594 = (var_4E4 + CVar(Proc_6_52_EAD4F4(CStr(var_56C), &HF, 1)))
  loc_19F5E48:     Print 1, var_594
  loc_19F5EF7:     var_B6 = (var_B6 + 2)
  loc_19F5EFA:     ' Referenced from: 19F63C5
  loc_19F5EFA:   End If
  loc_19F5F09:   If Not(var_10C.EOF) Then
  loc_19F5F32:     Proc_6_39_E7C810(var_158, CVar(var_10C.Fields.Item("Amount")), var_B6)
  loc_19F5F43:     var_134 = Val(CStr(var_158))
  loc_19F5F5A:     var_12C = (var_12C + var_134)
  loc_19F5F63:     var_108 = (var_108 + 1)
  loc_19F5FDE:     var_25C = var_10C.Fields.Item("RestCode")
  loc_19F5FF1:     var_218 = 0
  loc_19F602C:     var_13C = CStr("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" & var_25C.Value & "'")
  loc_19F6036:     unk_55BD19.Execute var_13C, Space(1), -1
  loc_19F603E:     var_2FC = var_2FC.Fields
  loc_19F6046:     var_218 = var_300.Item(var_300)
  loc_19F604E:     var_304 = var_304.Value
  loc_19F608E:     Proc_6_39_E7C810(var_2D4, CVar(var_10C.Fields.Item("QtyIss")), var_134)
  loc_19F60CF:     Proc_6_39_E7C810(var_328, CVar(var_10C.Fields.Item("QtyIss")))
  loc_19F6127:     var_388 = IIf((var_2D4 = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_328, "0")), &HA, 1)))
  loc_19F6174:     Proc_6_39_E7C810(var_42C, CVar(var_10C.Fields.Item("Rate")))
  loc_19F61B5:     Proc_6_39_E7C810(var_470, CVar(var_10C.Fields.Item("Rate")))
  loc_19F620C:     var_4D4 = IIf((var_42C = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_470, "0.00")), &HA, 1)))
  loc_19F6297:     var_600 = IIf((var_134 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_134, "0.00")), &HA, 1)))
  loc_19F62BA:     var_178 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(var_108) & ".", &HA, var_108, var_12C)))
  loc_19F62C1:     var_198 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F62CB:     var_2A0 = (Space(3) + CVar(Proc_6_45_EAD428(CStr(var_280), &H1D, var_280)))
  loc_19F62D5:     var_3C0 = (var_2A0 + CVar(Proc_6_52_EAD4F4(CStr(var_388), &HA, 1)))
  loc_19F62DC:     var_3F0 = (CVar(var_120.Fields.Item("RatePerPax")) + Space(1))
  loc_19F62E6:     var_518 = (var_3F0 + CVar(Proc_6_52_EAD4F4(CStr(var_4D4), &HA, 1)))
  loc_19F62ED:     var_54C = ("0.00" + Space(1))
  loc_19F62F7:     var_620 = (CVar(Proc_6_52_EAD4F4(vbNullString, &HA)) + CVar(Proc_6_52_EAD4F4(CStr(var_600), &HF, 1)))
  loc_19F62FD:     Print 1, var_620
  loc_19F63BA:     var_B6 = (var_B6 + 1)
  loc_19F63C0:     var_10C.MoveNext
  loc_19F63C5:     GoTo loc_19F5EFA
  loc_19F63C8:   End If
  loc_19F63D0:   var_10C.Requery -1
  loc_19F63F9:   If ((var_B6 >= &H30) And (var_11C.AbsolutePosition < var_11C.RecordCount)) Then
  loc_19F6401:     Print 1, " "
  loc_19F6425:     var_188 = CVar((Val(CStr(var_B8)) + CDbl(1))) 'Double
  loc_19F6439:     var_158 = (" " + Space(&H37))
  loc_19F6442:     var_178 = (CVar(Proc_6_45_EAD428(CStr(var_108) & ".", &HA, var_108, var_12C)) + "Continued Page No ")
  loc_19F644F:     Print 1, CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) & Str(Space(1))
  loc_19F646D:     var_B6 = (var_B6 + 1)
  loc_19F6482:     Print 1, Chr(&HC)
  loc_19F648D:     var_B6 = 0
  loc_19F6490:   End If
  loc_19F6496:   var_B6 = (var_B6 + 5)
  loc_19F649F:   If (var_B6 = 0) Then
  loc_19F64A8:     var_B8 = (var_B8 + 1)
  loc_19F64B1:     var_B8 = (var_B8 + 1)
  loc_19F64E6:     var_158 = (Chr(&HF) + "UPTT No. :")
  loc_19F64ED:     var_188 = (CVar(Proc_6_45_EAD428(CStr(var_108) & ".", &HA, var_108, var_12C)) + Trim(MemVar_1F92148))
  loc_19F64F4:     var_1A8 = (Space(1) + Chr(&H12))
  loc_19F64FA:     Print 1, CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) & Str(Space(1))
  loc_19F6541:     var_158 = (Chr(&HF) + "CST No.  :")
  loc_19F6548:     var_188 = (CVar(Proc_6_45_EAD428(CStr(var_108) & ".", &HA, var_108, var_12C)) + Trim(MemVar_1F9214C))
  loc_19F654F:     var_1A8 = (Space(1) + Chr(&H12))
  loc_19F6555:     Print 1, CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) & Str(Space(1))
  loc_19F658B:     Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A", &H4E, var_B8, var_B8, var_B6)
  loc_19F65E0:     var_158 = (Trim(MemVar_1F92134) + ", ")
  loc_19F65E7:     var_188 = (CVar(Proc_6_45_EAD428(CStr(var_108) & ".", &HA, var_108, var_12C)) + Trim(MemVar_1F92138))
  loc_19F65F0:     var_198 = (Space(1) + " ")
  loc_19F65F7:     var_1E8 = (Chr(&H12) + Trim(MemVar_1F9213C))
  loc_19F6600:     var_208 = ("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value + " ")
  loc_19F660A:     var_228 = ("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" + CVar(MemVar_1F9215C))
  loc_19F6623:     Print 1, Proc_6_98_11AC4E4(CStr(var_25C.Value), "B", &H4E, var_B6)
  loc_19F6680:     Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", &H7D, var_B6)
  loc_19F66E5:     Print 1, Proc_6_98_11AC4E4(Proc_6_38_E68A98(CVar(var_124.Fields.Item("Bill_Header")), var_B6), "D", &H7D)
  loc_19F6703:     Print 1, var_D4
  loc_19F6754:     var_178 = (Space(1) + CVar(Proc_6_45_EAD428("To,", &H2F, &HC)))
  loc_19F675D:     var_188 = (Trim(MemVar_1F92138) + "|")
  loc_19F6764:     var_1A8 = (Space(1) + Space(3))
  loc_19F676B:     var_208 = (Trim(MemVar_1F9213C) + Space(&H1A))
  loc_19F6771:     Print 1, "SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='"
  loc_19F6824:     Set var_140 = Me.Txt
  loc_19F682A:     Call 0.Method_Proc_126_75_19F7F6C0 (CInt(1), var_25C)
  loc_19F686A:     var_178 = (Space(4) + CVar(Proc_6_45_EAD428("M/s.", 5)))
  loc_19F6874:     var_1A8 = (Trim(MemVar_1F92138) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("PartyName")), 1), &H27)))
  loc_19F687D:     var_1E8 = (Trim(MemVar_1F9213C) + "|")
  loc_19F6884:     var_228 = (Space(&H1A) + Space(3))
  loc_19F688E:     var_258 = (var_25C.Value + CVar(Proc_6_45_EAD428("Bill No:", &HA)))
  loc_19F6898:     var_280 = ("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" & var_25C.Value & "'" + CVar(Proc_6_98_11AC4E4(var_25C.Text, "B")))
  loc_19F689F:     var_2A0 = (var_280 + Space(&HB))
  loc_19F68A5:     Print 1, var_2A0
  loc_19F6957:     var_1A8 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add1")), &HB)))), &H2C)))
  loc_19F6960:     var_1E8 = (Trim(MemVar_1F9213C) + "|")
  loc_19F696D:     Print 1, Space(&H1A) & Space(1)
  loc_19F69D3:     var_178 = (Space(4) + CVar(Proc_6_45_EAD428(" ", &H2C)))
  loc_19F69DC:     var_188 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add1")), &HB)) + "|")
  loc_19F69E3:     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add1")), &HB))) + Left(var_D4, &H1E))
  loc_19F69E9:     Print 1, Trim(MemVar_1F9213C)
  loc_19F6A7D:     var_1A8 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add2")))))), &H2C)))
  loc_19F6A86:     var_1E8 = (Trim(MemVar_1F9213C) + "|")
  loc_19F6A8D:     var_228 = (Space(&H1A) + Space(3))
  loc_19F6A94:     var_258 = (Space(&H1A) & Space(1) + Space(&H19))
  loc_19F6A9A:     Print 1, "SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" & var_25C.Value & "'"
  loc_19F6B0B:     var_168 = "-"
  loc_19F6B10:     var_198 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City"))))) + "|")
  loc_19F6B1E:     var_90 = Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("Add2")))))), &H2C))), &H2C)
  loc_19F6B44:     var_1E8 = (Space(4) + CVar(var_90))
  loc_19F6B4D:     var_208 = (Space(&H1A) + "|")
  loc_19F6B54:     var_248 = (Space(3) + Space(3))
  loc_19F6B5B:     var_270 = (Space(&H19) + Space(&H19))
  loc_19F6B61:     Print 1, CVar(Proc_6_98_11AC4E4(var_25C.Text, "B"))
  loc_19F6BE4:     var_168 = "dd-MMM-yyyy"
  loc_19F6C26:     var_178 = (Space(4) + CVar(Proc_6_45_EAD428(" ", &H2C)))
  loc_19F6C2F:     var_188 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + "|")
  loc_19F6C36:     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City"))))) + Space(3))
  loc_19F6C40:     var_208 = (CVar("Date:") + CVar(Proc_6_45_EAD428("Date:", 8)))
  loc_19F6C4A:     var_280 = (Space(3) + CVar(Proc_6_45_EAD428(CStr(Format(Date, "|")), &HB, 1)))
  loc_19F6C51:     var_2A0 = (var_280 + Space(2))
  loc_19F6C57:     Print 1, var_2A0
  loc_19F6C94:     Print 1, var_D4
  loc_19F6D52:     var_178 = (Space(1) + CVar(Proc_6_45_EAD428("S.", &HA)))
  loc_19F6D59:     var_198 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F6D60:     var_1E8 = (Space(3) + Space(1))
  loc_19F6D6A:     var_228 = (CVar(Proc_6_45_EAD428("Date:", 8)) + CVar(Proc_6_45_EAD428("Item Detail", &H1D)))
  loc_19F6D74:     var_258 = (Date + CVar(Proc_6_52_EAD4F4("QTY.", &HA)))
  loc_19F6D7B:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F6D85:     var_2A0 = (var_280 + CVar(Proc_6_52_EAD4F4("Rate", 9)))
  loc_19F6D8C:     var_2D4 = (var_2A0 + Space(1))
  loc_19F6D96:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAD4F4("AMOUNT ", &HE)))
  loc_19F6D9C:     Print 1, CVar(var_10C.Fields.Item("QtyIss"))
  loc_19F6E0D:     var_188 = Space(1)
  loc_19F6E9A:     var_178 = (Space(1) + CVar(Proc_6_45_EAD428("No.", &HA)))
  loc_19F6EA1:     var_198 = (CVar(Proc_6_38_E68A98(CVar(var_11C.Fields.Item("City")))) + var_188)
  loc_19F6EA8:     var_1E8 = (Space(3) + Space(1))
  loc_19F6EB2:     var_228 = (CVar(Proc_6_45_EAD428("Date:", 8)) + CVar(Proc_6_45_EAD428("   ", &H1D)))
  loc_19F6EBC:     var_258 = (Date + CVar(Proc_6_52_EAD4F4("  ", &HA)))
  loc_19F6EC3:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F6ECA:     var_290 = CVar(Proc_6_52_EAD4F4("   ", &HA)) 'String
  loc_19F6ECD:     var_2A0 = (var_280 + var_290)
  loc_19F6ED4:     var_2D4 = (var_2A0 + Space(1))
  loc_19F6EDE:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAD4F4("Rs.    P.", &HE)))
  loc_19F6EE4:     Print 1, CVar(var_10C.Fields.Item("QtyIss"))
  loc_19F6F2F:     Print 1, var_D4
  loc_19F6F37:     var_B6 = &H12
  loc_19F6F3A:   End If
  loc_19F6F3D:   var_11C.MoveNext
  loc_19F6F42:   GoTo loc_19F4FA9
  loc_19F6F45:   ' Referenced from: 19F6F62
  loc_19F6F45: End If
  loc_19F6F4B: If (var_B6 <= &H32) Then
  loc_19F6F53:   Print 1, vbNullString
  loc_19F6F5F:   var_B6 = (var_B6 + 1)
  loc_19F6F62:   GoTo loc_19F6F45
  loc_19F6F65: End If
  loc_19F6F6A: Print 1, var_D4
  loc_19F6F76: var_B6 = (var_B6 + 1)
  loc_19F6F7C: var_120.MoveFirst
  loc_19F6F8E: var_168 = "SELECT SH.SunCode AS Code, SH.DispName AS SName, SH.Amount+S.Amount AS Amount FROM SunTranH AS SH LEFT JOIN SunTran AS S ON SH.DocID=S.DocID AND  SH.SunCode=S.SunCode WHERE  SH.DocId='"
  loc_19F6FD4: unk_55BD28.Execute CStr("|" & var_120.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_19F6FDF: Set var_118 = var_140
  loc_19F700D: If (var_118.RecordCount > 0) Then
  loc_19F7013:   var_12C = CDbl(0)
  loc_19F7016:   ' Referenced from: 19F7B55
  loc_19F7025:   If Not(var_118.EOF) Then
  loc_19F704E:     var_158 = Trim(CVar(var_118.Fields.Item("Code")))
  loc_19F7059:     var_178 = Ucase(var_158)
  loc_19F7061:     var_638 = var_178 'Variant
  loc_19F707A:     If (var_638 = "KTOT") Then
  loc_19F7094:       var_138 = var_118.Fields.Item("Amount")
  loc_19F70A3:       Proc_6_39_E7C810(var_158, CVar(var_138), var_12C, var_140, var_B6)
  loc_19F70AB:       var_8C = CStr(var_158)
  loc_19F70B4:       var_640 = Val(var_8C)
  loc_19F70BE:       var_12C = (var_12C + var_640)
  loc_19F70E9:       Set var_B4 = Me.Txt
  loc_19F70EF:       Call 0.Method_Proc_126_75_19F7F6C0 (CInt(7), var_138, var_8C, var_12C, var_640)
  loc_19F7102:       var_168 = 0
  loc_19F711F:       var_90 = "Select  SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='" & var_8C
  loc_19F712F:       unk_55BD19.Execute var_90 & "'", var_158, -1
  loc_19F7137:       var_140 = var_140.Fields
  loc_19F713F:       var_168 = var_25C.Item(var_25C)
  loc_19F7147:       var_2FC = var_2FC.Value
  loc_19F71CC:       Proc_6_39_E7C810(Format(Date, "|"), CVar(var_118.Fields.Item("Amount")))
  loc_19F720D:       Proc_6_39_E7C810(var_290, CVar(var_118.Fields.Item("Amount")))
  loc_19F7264:       var_328 = IIf((Format(Date, "|") = 0), CVar(Proc_6_52_EAD4F4("0.00", &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_290, "0.00")), &HA, 1)))
  loc_19F7287:       var_1A8 = (Space(1) + CVar(Proc_6_45_EAD428(CStr("Company: " & var_178), &H2F, var_178)))
  loc_19F728E:       var_208 = CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF, var_138.Tag)) 'String
  loc_19F7291:       var_228 = (Space(1) + var_208)
  loc_19F729B:       var_348 = (Date + CVar(Proc_6_52_EAD4F4(CStr(var_328), &HF, 1)))
  loc_19F72A1:       Print 1, Format(var_328, "0")
  loc_19F7307:     Else
  loc_19F7312:       If Not (var_638 = "KTT") Then
  loc_19F7320:         If Not (var_638 = "KSCH") Then
  loc_19F732E:           If Not (var_638 = "K0001") Then
  loc_19F733C:             If Not (var_638 = "KST") Then
  loc_19F734A:               If (var_638 = "KSTX") Then
  loc_19F734D:               End If
  loc_19F734D:             End If
  loc_19F734D:           End If
  loc_19F734D:         End If
  loc_19F7373:         Proc_6_39_E7C810(var_158, CVar(var_118.Fields.Item("Amount")))
  loc_19F7384:         var_640 = Val(CStr(var_158))
  loc_19F738E:         var_12C = (var_12C + var_640)
  loc_19F741C:         var_1E8 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F7423:         Proc_6_39_E7C810(var_208, var_1E8)
  loc_19F745D:         var_248 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F7464:         Proc_6_39_E7C810(Format(Date, "|"), var_248)
  loc_19F74BB:         var_2D4 = IIf((var_208 = 0), CVar(Proc_6_52_EAD4F4("0.00", &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(Format(Date, "|"), "0.00")), &HA, 1)))
  loc_19F74D8:         var_158 = CVar(Proc_6_45_EAD428(" ", &HB, var_12C)) 'String
  loc_19F74DE:         var_178 = (var_158 + Space(&H25))
  loc_19F74E8:         var_1A8 = (var_178 + CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF, var_640)))
  loc_19F74F2:         var_2F8 = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(var_2D4), &HF, 1)))
  loc_19F74F8:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format((var_208 = 0), "0.00")), &HA, 1))
  loc_19F7548:       Else
  loc_19F7553:         If (var_638 = "DIS") Then
  loc_19F757C:           Proc_6_39_E7C810(var_158, CVar(var_118.Fields.Item("Amount")))
  loc_19F758D:           var_640 = Val(CStr(var_158))
  loc_19F7597:           var_12C = (var_12C - var_640)
  loc_19F75CD:           Proc_6_39_E7C810(var_158, CVar(var_118.Fields.Item("Amount")), var_12C)
  loc_19F75F0:           If (CDbl(Val(CStr(var_158))) > CDbl(0)) Then
  loc_19F764C:             Proc_6_39_E7C810(var_1E8, CVar(var_118.Fields.Item("Amount")))
  loc_19F7686:             var_228 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F768D:             Proc_6_39_E7C810(var_248, var_228)
  loc_19F76A1:             var_258 = "0.00"
  loc_19F76E4:             var_2C4 = IIf((var_1E8 = 0), CVar(Proc_6_52_EAD4F4("0.00", &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_248, var_258)), &HA, 1)))
  loc_19F7701:             var_158 = CVar(Proc_6_45_EAD428(" ", &HB, var_640)) 'String
  loc_19F7707:             var_178 = (var_158 + Space(&H25))
  loc_19F7711:             var_198 = (var_178 + CVar(Proc_6_45_EAD428(var_D0, &HF)))
  loc_19F771B:             var_2E8 = (CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF, var_640)) + CVar(Proc_6_52_EAD4F4(CStr(var_2C4), &HF, 1)))
  loc_19F7721:             Print 1, CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_52_EAD4F4(CStr(var_2C4), &HF, 1))), &HF, 1))
  loc_19F7766:           End If
  loc_19F7769:         Else
  loc_19F7774:           If (var_638 = "KROFF") Then
  loc_19F779D:             Proc_6_39_E7C810(var_158, CVar(var_118.Fields.Item("Amount")))
  loc_19F77AE:             var_640 = Val(CStr(var_158))
  loc_19F77B8:             var_12C = (var_12C + var_640)
  loc_19F7846:             var_1E8 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F784D:             Proc_6_39_E7C810(var_208, var_1E8)
  loc_19F788E:             Proc_6_39_E7C810(var_258, CVar(var_118.Fields.Item("Amount")))
  loc_19F78E5:             var_2D4 = IIf((var_208 = 0), CVar(Proc_6_52_EAD4F4("0.00", &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_258, "0.00")), &HA, 1)))
  loc_19F7908:             var_178 = (CVar(Proc_6_45_EAD428(" ", &HB, var_12C)) + Space(&H25))
  loc_19F7912:             var_1A8 = (var_178 + CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF, var_640)))
  loc_19F791C:             var_2F8 = (CVar(var_118.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(var_2D4), &HF, 1)))
  loc_19F7922:             Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format((var_208 = 0), "0.00")), &HA, 1))
  loc_19F7972:           Else
  loc_19F797D:             If (var_638 = "KNET") Then
  loc_19F7983:               var_12C = var_12C
  loc_19F79F0:               Proc_6_39_E7C810(var_1E8, var_12C)
  loc_19F7A16:               Proc_6_39_E7C810(var_228, var_12C)
  loc_19F7A6D:               var_2A0 = IIf((var_1E8 = 0), CVar(Proc_6_52_EAD4F4("0.00", &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_228, "0.00")), &HA, 1)))
  loc_19F7A90:               var_178 = (CVar(Proc_6_45_EAD428(" ", &HB, var_12C)) + Space(&H25))
  loc_19F7A9A:               var_1A8 = (var_178 + CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF)))
  loc_19F7AA4:               var_2D4 = (CVar(var_118.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(var_2A0), &HF, 1)))
  loc_19F7AAA:               Print 1, var_2D4
  loc_19F7B2D:               Print 1, Proc_6_45_EAD428(" ", &H3F) & Proc_6_52_EAD4F4("===============", &HF)
  loc_19F7B44:             End If
  loc_19F7B44:           End If
  loc_19F7B44:         End If
  loc_19F7B44:       End If
  loc_19F7B44:     End If
  loc_19F7B4A:     var_B6 = (var_B6 + 1)
  loc_19F7B50:     var_118.MoveNext
  loc_19F7B55:     GoTo loc_19F7016
  loc_19F7B58:   End If
  loc_19F7B58: End If
  loc_19F7BA8: var_158 = CVar(Proc_6_45_EAD428("Charge: " & Proc_6_43_10041F4(Abs(var_12C), vbNullString, " "), &H48, var_118.Fields.Item("SName").Tag)) 'String
  loc_19F7BAB: var_178 = (Space(1) + var_158)
  loc_19F7BB1: Print 1, var_178
  loc_19F7BD1: var_B6 = 0
  loc_19F7BDF: Print 1, var_D4
  loc_19F7BEB: var_B6 = (var_B6 + 1)
  loc_19F7C27: var_178 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("Regardless of charge instructions I agree to be held", &H7B, var_B6, CDbl(0))))
  loc_19F7C2E: var_198 = (var_178 + Chr(&H12))
  loc_19F7C34: Print 1, CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF))
  loc_19F7C88: var_178 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("personally liable for payment of the total amount of this bill.", 134, var_B6)))
  loc_19F7C8F: var_198 = (var_178 + Chr(&H12))
  loc_19F7C95: Print 1, CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF))
  loc_19F7CB4: Print 1, vbNullString
  loc_19F7CBF: Print 1, vbNullString
  loc_19F7CD8: var_B0 = Space((&H4B - (Len(MemVar_1F92130) + 5)))
  loc_19F7D0D: var_178 = ("For: " + Chr(&HE))
  loc_19F7D14: var_198 = (var_178 + Chr(&HF))
  loc_19F7D1E: var_1A8 = (CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF)) + CVar(MemVar_1F92130))
  loc_19F7D2C: var_90 = Proc_6_52_EAD4F4(CStr(CVar(var_118.Fields.Item("Amount"))), CInt((Len(MemVar_1F92130) + 5)))
  loc_19F7D45: var_208 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("personally liable for payment of the total amount of this bill.", 134, var_B6)))
  loc_19F7D4C: var_248 = (var_208 + Chr(&H12))
  loc_19F7D52: Print 1, "0.00"
  loc_19F7D7B: Print 1, vbNullString
  loc_19F7D86: Print 1, vbNullString
  loc_19F7D91: Print 1, vbNullString
  loc_19F7D9C: Print 1, vbNullString
  loc_19F7DC9: Print 1, Proc_6_98_11AC4E4("*THANKS FOR YOUR VISIT*", "A", &H4E)
  loc_19F7DEE: If (var_124.RecordCount > 0) Then
  loc_19F7E38:   var_178 = (Chr(&HF) + var_124.Fields.Item("Bill_Footer").Value)
  loc_19F7E3F:   var_198 = (var_178 + Chr(&H12))
  loc_19F7E45:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_118.Fields.Item("SName").Value), &HF))
  loc_19F7E5F: End If
  loc_19F7E71: Print 1, Chr(&HC)
  loc_19F7E7C: Close 1
  loc_19F7E85: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_19F7EC1: Print 1, "TYPE C:\reptmp\TextFile.TXT>" & Me.Recordset15.Fields.Item("Printer").Value
  loc_19F7ED7: Close 1
  loc_19F7EE1: If (MemVar_1F923B8 = "Y") Then
  loc_19F7EFD:   var_C8 = CVar(Shell("C:\reptmp\TextFile.PIF", 0)) 'Variant
  loc_19F7F07: Else
  loc_19F7F20:   var_C8 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_19F7F27: End If
  loc_19F7F2C: Set var_124 = Nothing
  loc_19F7F34: Set var_120 = Nothing
  loc_19F7F3C: Set var_118 = Nothing
  loc_19F7F44: Set var_10C = Nothing
  loc_19F7F4C: Set var_11C = Nothing
  loc_19F7F4F: Exit Sub
  loc_19F7F56: If (var_110 = &HFF) Then
  loc_19F7F5F:   unk_55BD19.RollbackTrans
  loc_19F7F64: End If
  loc_19F7F64: Proc_6_60_E62BC4(1)
  loc_19F7F69: Exit Sub
End Sub

Public Sub Proc_126_76_E37F90
  'Data Table: 55BCF4
  loc_E37F70: Set var_88 = Me.TopCtrl1
  loc_E37F76: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E37F8B: If ( = "Browse") Then
  loc_E37F8E:   Exit Sub
  loc_E37F8F: End If
  loc_E37F8F: Exit Sub
End Sub

Public Sub Proc_126_77_1403A0C(arg_C) '1403A0C
  'Data Table: 55BCF4
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
  loc_1402FEC: If (arg_C = 0) Then
  loc_1403002:   var_AC = CLng(Me.FGrid.Col)
  loc_1403012:   If (var_AC = CLng(1)) Then
  loc_1403035:     var_B2 = Me.EOF
  loc_1403063:     Set var_98 = Me.TxtGrid
  loc_1403069:     Call 0.Method_Proc_126_77_1403A0C0 (arg_C, var_B8, var_BC)
  loc_1403071:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_1403089:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_140309F:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14030A7:       var_EC = CVar(CLng(1)) 'Long
  loc_14030AC:       var_10C = vbNullString
  loc_14030B6:       Set var_B8 = Me.FGrid
  loc_14030BC:       LateIdCallSt
  loc_14030E1:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14030E9:       var_EC = CVar(CLng(9)) 'Long
  loc_14030EE:       var_10C = vbNullString
  loc_14030F8:       Set var_B8 = Me.FGrid
  loc_14030FE:       LateIdCallSt
  loc_1403123:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140312B:       var_EC = CVar(CLng(4)) 'Long
  loc_1403130:       var_10C = vbNullString
  loc_140313A:       Set var_B8 = Me.FGrid
  loc_1403140:       LateIdCallSt
  loc_1403165:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140316D:       var_EC = CVar(CLng(&HA)) 'Long
  loc_1403172:       var_10C = vbNullString
  loc_140317C:       Set var_B8 = Me.FGrid
  loc_1403182:       LateIdCallSt
  loc_1403197:     Else
  loc_140319A:       Call Proc_126_87_FBD7E4(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_14031A5:       If (var_B2 = 0) Then
  loc_14031AD:         Proc_126_77_1403A0C = 0
  loc_14031B3:       End If
  loc_14031CC:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14031D4:       var_EC = CVar(CLng(9)) 'Long
  loc_14031EE:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_140320C:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403214:       var_150 = CVar(CLng(9)) 'Long
  loc_140322E:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1403299:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_14032B0:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_14032CC:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14032D4:         var_FC = CVar(CLng(1)) 'Long
  loc_1403307:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_140330F:         Set var_164 = Me.FGrid
  loc_1403315:         LateIdCallSt
  loc_1403344:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140334C:         var_FC = CVar(CLng(9)) 'Long
  loc_140337F:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1403387:         Set var_164 = Me.FGrid
  loc_140338D:         LateIdCallSt
  loc_14033DB:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14033E3:         var_10C = CVar(CLng(4)) 'Long
  loc_14033F7:         var_12C = "0.00"
  loc_1403410:         var_18C = CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), var_12C))) 'String
  loc_1403418:         Set var_164 = Me.FGrid
  loc_140341E:         LateIdCallSt
  loc_1403440:         var_CC = CVar(CLng(var_92)) 'Long
  loc_1403452:         var_A8 = CVar(CStr(var_92)) 'String
  loc_140345A:         Set var_98 = Me.FGrid
  loc_1403460:         LateIdCallSt
  loc_14034A0:         var_98 = Me.Fields
  loc_14034B7:         Proc_6_39_E7C810(var_12C, CVar(var_98.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_98.Item("TaxStru")), CVar(CLng(0)))
  loc_14034C0:         var_174 = CVar(CStr(var_12C)) 'String
  loc_14034C8:         Set var_164 = Me.FGrid
  loc_14034CE:         LateIdCallSt
  loc_14034FD:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403505:         var_FC = CVar(CLng(&HA)) 'Long
  loc_1403538:         var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1403540:         Set var_164 = Me.FGrid
  loc_1403546:         LateIdCallSt
  loc_1403575:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140357D:         var_FC = CVar(CLng(&HD)) 'Long
  loc_14035B0:         var_140 = CVar(CStr(Me.Fields.Item("DiscApp").Value)) 'String
  loc_14035B8:         Set var_164 = Me.FGrid
  loc_14035BE:         LateIdCallSt
  loc_140360C:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403614:         var_10C = CVar(CLng(&H11)) 'Long
  loc_140364F:         LateIdCallSt
  loc_14036A9:         var_12C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_92)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("RateEdit")), "0.00"))), 1, 1)) 'String
  loc_14036B1:         Set var_130 = Me.FGrid
  loc_14036B7:         LateIdCallSt
  loc_14036D1:         Set var_130 = Me.FGrid
  loc_14036D7:         var_140 = var_130.Row
  loc_1403707:         var_B8 = Me.Fields.Item("SChrgApp")
  loc_1403716:         Proc_6_39_E7C810(var_12C, CVar(var_B8), CVar(CLng(&H13)), CVar(CLng(var_140)), var_130, var_12C)
  loc_140371F:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1403727:         Set var_164 = Me.FGrid
  loc_140372D:         LateIdCallSt
  loc_1403749:       End If
  loc_1403749:     End If
  loc_1403749:     Call Proc_126_84_1153D5C(var_164, var_174, var_10C, var_EC)
  loc_1403751:   Else
  loc_1403758:     If (var_AC = CLng(2)) Then
  loc_1403787:       Set var_98 = Me.TxtGrid
  loc_140378D:       Call 0.Method_Proc_126_77_1403A0C0 (0, var_B8, var_BC, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_1403795:       var_164 = var_B8.Text
  loc_140379D:       var_12C = CVar(var_BC) 'String
  loc_14037A5:       Set var_164 = Me.FGrid
  loc_14037AB:       LateIdCallSt
  loc_14037C8:     Else
  loc_14037CF:       If (var_AC = CLng(3)) Then
  loc_14037DC:         Set var_98 = Me.TxtGrid
  loc_14037E2:         Call 0.Method_Proc_126_77_1403A0C0 (arg_C, var_B8, var_164, var_12C)
  loc_14037FA:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_1403801:           var_BC = CStr(0)
  loc_140380E:           Set var_98 = Me.TxtGrid
  loc_1403814:           Call 0.Method_Proc_126_77_1403A0C0 (arg_C, var_B8, var_BC)
  loc_140381C:           var_B8.Text = var_140
  loc_140382B:         End If
  loc_1403838:         Set var_98 = Me.TxtGrid
  loc_140383E:         Call 0.Method_Proc_126_77_1403A0C0 (arg_C, var_B8, var_BC)
  loc_1403846:         var_FC = var_B8.Text
  loc_140385E:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14038B0:         LateIdCallSt
  loc_14038D4:         Call Proc_126_84_1153D5C(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_14038DE:         Call Proc_126_89_164D58C(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_14038E6:       Else
  loc_14038ED:         If (var_AC = CLng(4)) Then
  loc_14038FA:           Set var_98 = Me.TxtGrid
  loc_1403900:           Call 0.Method_Proc_126_77_1403A0C0 (arg_C, var_B8)
  loc_1403918:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_140392C:             Set var_98 = Me.TxtGrid
  loc_1403932:             Call 0.Method_Proc_126_77_1403A0C0 (arg_C, var_B8, CStr(0))
  loc_140393A:             var_B8.Text = var_DC
  loc_1403949:           End If
  loc_1403956:           Set var_98 = Me.TxtGrid
  loc_140395C:           Call 0.Method_Proc_126_77_1403A0C0 (arg_C, var_B8)
  loc_140397C:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14039CE:           LateIdCallSt
  loc_14039F2:           Call Proc_126_84_1153D5C(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_14039FC:           Call Proc_126_89_164D58C(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_1403A01:         End If
  loc_1403A01:       End If
  loc_1403A01:     End If
  loc_1403A01:   End If
  loc_1403A01: End If
  loc_1403A06: Proc_126_77_1403A0C = &HFF
End Sub

Public Sub Proc_126_78_183913C
  'Data Table: 55BCF4
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_55BD28 As Connection15
  Dim var_12C As Recordset15
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_138 As String
  Dim unk_55BD19 As Connection15
  Dim var_94 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_8C As Recordset15
  Dim var_124 As Variant
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_148 As Variant
  Dim var_16C As Double
  Dim var_150 As TextBox
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As TextBox
  Dim Proc_126_78_183913C2 As Variant
  Dim var_1D0 As TextBox
  loc_1836CC0: On Error Goto loc_1839135
  loc_1836CDA: If (Me.RecordCount > 0) Then
  loc_1836D33:   unk_55BD28.Execute CStr("Select S.* From HallSale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_1836D5B:   Set var_12C = var_128 
  loc_1836D98:   Set var_128 = Me.Txt
  loc_1836D9E:   Call 0.Method_Proc_126_78_183913C0 (CInt(4), var_130)
  loc_1836DA6:   var_130.Text = CStr(var_12C.Fields.Item("DocID").Value)
  loc_1836DD6:   var_B0 = var_12C.Fields.Item("vType")
  loc_1836DE7:   var_104 = CStr(var_B0.Value)
  loc_1836DF5:   Set var_128 = Me.Txt
  loc_1836DFB:   Call 0.Method_Proc_126_78_183913C0 (CInt(0), var_130)
  loc_1836E03:   var_130.Tag = var_104
  loc_1836E37:   Set var_9C = Me.Txt
  loc_1836E3D:   Call 0.Method_Proc_126_78_183913C0 (CInt(0), var_B0, var_104, "Select Description,NCAT From Voucher_Type Where V_Type='")
  loc_1836E45:   var_C0 = var_B0.Tag
  loc_1836E4E:   var_134 = -1 & var_104
  loc_1836E5E:   unk_55BD19.Execute var_134 & "'", var_128, var_128
  loc_1836E69:   Set var_94 = var_128
  loc_1836E95:   If (var_94.RecordCount > 0) Then
  loc_1836EC6:     global_120 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("NCat")))
  loc_1836F09:     Set var_128 = Me.Txt
  loc_1836F0F:     Call 0.Method_Proc_126_78_183913C0 (CInt(0), var_130)
  loc_1836F17:     var_130.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Description")))
  loc_1836F2B:   End If
  loc_1836F64:   Set var_128 = Me.Txt
  loc_1836F6A:   Call 0.Method_Proc_126_78_183913C0 (CInt(1), var_130)
  loc_1836F72:   var_130.Text = CStr(var_12C.Fields.Item("VNo").Value)
  loc_1836FDA:   Set var_128 = Me.Txt
  loc_1836FE0:   Call 0.Method_Proc_126_78_183913C0 (CInt(2), var_130, CStr(Format(CVar(var_12C.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_1836FE8:   var_130.Text = 1
  loc_183703A:   Me.LblVPrefix.Caption = CStr(var_12C.Fields.Item("vPrefix").Value)
  loc_1837087:   Set var_128 = Me.Txt
  loc_183708D:   Call 0.Method_Proc_126_78_183913C0 (CInt(3), var_130)
  loc_1837095:   var_130.Text = CStr(var_12C.Fields.Item("Party").Value)
  loc_18370C5:   var_B0 = var_12C.Fields.Item("Party")
  loc_18370D6:   var_104 = CStr(var_B0.Value)
  loc_18370E4:   Set var_128 = Me.Txt
  loc_18370EA:   Call 0.Method_Proc_126_78_183913C0 (CInt(3), var_130)
  loc_18370F2:   var_130.Tag = var_104
  loc_1837126:   Set var_9C = Me.Txt
  loc_183712C:   Call 0.Method_Proc_126_78_183913C0 (CInt(3), var_B0, var_104, "Select Name From SubGroup Where SubCode='")
  loc_1837134:   var_C0 = var_B0.Tag
  loc_183713D:   var_134 = -1 & var_104
  loc_183714D:   unk_55BD19.Execute var_134 & "'", var_128, 1
  loc_1837158:   Set var_8C = var_128
  loc_1837184:   If (var_8C.RecordCount > 0) Then
  loc_18371BD:     Set var_128 = Me.Txt
  loc_18371C3:     Call 0.Method_Proc_126_78_183913C0 (CInt(3), var_130)
  loc_18371CB:     var_130.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_18371DF:   End If
  loc_1837207:   var_104 = Proc_6_38_E68A98(CVar(var_12C.Fields.Item("RestCode")))
  loc_1837215:   Set var_128 = Me.Txt
  loc_183721B:   Call 0.Method_Proc_126_78_183913C0 (CInt(5), var_130)
  loc_1837223:   var_130.Tag = var_104
  loc_1837251:   var_B0 = var_12C.Fields.Item("RestCode")
  loc_1837273:   If CBool(var_B0.Value <> vbNullString) Then
  loc_1837294:     Set var_9C = Me.Txt
  loc_183729A:     Call 0.Method_Proc_126_78_183913C0 (CInt(5), var_B0, var_104, "Select Name From Depart Where Code='")
  loc_18372A2:     var_C0 = var_B0.Tag
  loc_18372AB:     var_134 = -1 & var_104
  loc_18372B2:     var_138 = var_134 & "'"
  loc_18372BB:     unk_55BD19.Execute var_138, var_128, 
  loc_18372C6:     Set var_94 = var_128
  loc_18372F2:     If (var_94.RecordCount > 0) Then
  loc_183732B:       Set var_128 = Me.Txt
  loc_1837331:       Call 0.Method_Proc_126_78_183913C0 (CInt(5), var_130)
  loc_1837339:       var_130.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")))
  loc_183734D:     End If
  loc_183734D:   End If
  loc_1837383:   Set var_128 = Me.Txt
  loc_1837389:   Call 0.Method_Proc_126_78_183913C0 (CInt(7), var_130)
  loc_1837391:   var_130.Tag = Proc_6_38_E68A98(CVar(var_12C.Fields.Item("BOOKDOCID")))
  loc_18373F6:   Set var_128 = Me.Txt
  loc_18373FC:   Call 0.Method_Proc_126_78_183913C0 (CInt(7), var_130)
  loc_1837404:   var_130.Text = Proc_6_38_E68A98(Trim(Right(CVar(var_12C.Fields.Item("BOOKDOCID")), 8)))
  loc_1837470:   Set var_128 = Me.Txt
  loc_1837476:   Call 0.Method_Proc_126_78_183913C0 (CInt(&H15), var_130, CStr(Format(CVar(var_12C.Fields.Item("ToBookDate")), "DD/MMM/YYYY")))
  loc_183747E:   var_130.Text = 1
  loc_18374E9:   Set var_128 = Me.txtM
  loc_18374EF:   Call 0.Method_Proc_126_78_183913C0 (1, var_130, CVar(CStr(Format(CVar(var_12C.Fields.Item("FrBookTime")), "hh:mm"))))
  loc_18374F7:   var_130.defaultText = 1
  loc_1837562:   Set var_128 = Me.Txt
  loc_1837568:   Call 0.Method_Proc_126_78_183913C0 (CInt(6), var_130, CStr(Format(CVar(var_12C.Fields.Item("FrBookDate")), "DD/MMM/YYYY")), 1)
  loc_1837570:   var_130.Text = 1
  loc_18375B5:   var_E0 = "hh:mm"
  loc_18375CE:   var_124 = CVar(CStr(Format(CVar(var_12C.Fields.Item("ToBookTime")), var_E0))) 'String
  loc_18375DB:   Set var_128 = Me.txtM
  loc_18375E1:   Call 0.Method_Proc_126_78_183913C0 (0, var_130, var_124, 1)
  loc_18375E9:   var_130.defaultText = 1
  loc_1837638:   Set var_128 = Me.Txt
  loc_183763E:   Call 0.Method_Proc_126_78_183913C0 (CInt(&H13), var_130)
  loc_1837646:   var_130.Text = Proc_6_38_E68A98(CVar(var_12C.Fields.Item("Remarks")), 1)
  loc_1837680:   Proc_6_39_E7C810(var_E0, CVar(var_12C.Fields.Item("NoofPax")))
  loc_1837697:   Set var_128 = Me.Txt
  loc_183769D:   Call 0.Method_Proc_126_78_183913C0 (CInt(&H11), var_130)
  loc_18376A5:   var_130.Text = CStr(var_E0)
  loc_18376E3:   Proc_6_39_E7C810(var_E0, CVar(var_12C.Fields.Item("RatePerPax")))
  loc_18376FA:   Set var_128 = Me.Txt
  loc_1837700:   Call 0.Method_Proc_126_78_183913C0 (CInt(&H12), var_130)
  loc_1837708:   var_130.Text = CStr(var_E0)
  loc_183774B:   var_E0 = "0.00"
  loc_1837772:   Set var_128 = Me.Txt
  loc_1837778:   Call 0.Method_Proc_126_78_183913C0 (CInt(8), var_130, CStr(Format(CVar(var_12C.Fields.Item("Advance")), var_E0)))
  loc_1837780:   var_130.Text = 1
  loc_18377C0:   Proc_6_39_E7C810(var_E0, CVar(var_12C.Fields.Item("RectNo")))
  loc_18377D7:   Set var_128 = Me.Txt
  loc_18377DD:   Call 0.Method_Proc_126_78_183913C0 (CInt(9), var_130, CStr(var_E0))
  loc_18377E5:   var_130.Text = 1
  loc_183784F:   Set var_128 = Me.Txt
  loc_1837855:   Call 0.Method_Proc_126_78_183913C0 (CInt(&HA), var_130, CStr(Format(CVar(var_12C.Fields.Item("RectDate")), "DD/MM/YY")))
  loc_183785D:   var_130.Text = 1
  loc_18378AD:   Set var_128 = Me.Txt
  loc_18378B3:   Call 0.Method_Proc_126_78_183913C0 (CInt(&HC), var_130)
  loc_18378BB:   var_130.Text = Proc_6_38_E68A98(CVar(var_12C.Fields.Item("CrCardHoldER")), 1)
  loc_18378E6:   var_B0 = var_12C.Fields.Item("CrCardNo")
  loc_1837905:   Set var_128 = Me.Txt
  loc_183790B:   Call 0.Method_Proc_126_78_183913C0 (CInt(&HB), var_130)
  loc_1837929:   Set var_12C = Nothing 
  loc_1837939:   Set var_9C = Me.TxtGt
  loc_183793F:   Call 0.Method_Proc_126_78_183913C8 (var_13A, var_8E)
  loc_183794A:   For var_13E = 1 To var_13A: 2 = var_13E 'Integer
  loc_183795D:     Set var_9C = Me.LblCap
  loc_1837963:     Call 0.Method_Proc_126_78_183913C0 (var_8E, var_B0)
  loc_1837982:     If (var_B0.Tag = "SNET") Then
  loc_1837992:       Set var_9C = Me.TxtGt
  loc_1837998:       Call 0.Method_Proc_126_78_183913C0 (var_8E, var_B0)
  loc_18379AD:       var_15C = Val(var_B0.Text)
  loc_18379BE:       Set var_128 = Me.Txt
  loc_18379C4:       Call 0.Method_Proc_126_78_183913C0 (CInt(&HF), var_130, var_134)
  loc_18379D9:       var_164 = Val(var_134)
  loc_18379EA:       Set var_144 = Me.Txt
  loc_18379F0:       Call 0.Method_Proc_126_78_183913C0 (CInt(8), var_148, var_138)
  loc_1837A28:       var_C0 = CVar((Proc_6_38_E68A98(CVar(var_B0)) - (var_148.Text + Val(var_138)))) 'Double
  loc_1837A46:       Set var_14C = Me.Txt
  loc_1837A4C:       Call 0.Method_Proc_126_78_183913C0 (CInt(&H10), var_150, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_1837A54:       var_150.Text = 1
  loc_1837A80:     End If
  loc_1837A83:   Next var_13E 'Integer
  loc_1837A96:   Set var_9C = Me.Txt
  loc_1837A9C:   Call 0.Method_Proc_126_78_183913C0 (CInt(2), var_B0)
  loc_1837AB2:   Call Proc_126_88_1A505FC(CDate(var_B0.Text))
  loc_1837B17:   unk_55BD28.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_1837B22:   Set var_88 = var_128
  loc_1837B50:   If (var_88.RecordCount > 0) Then
  loc_1837B53:     ' Referenced from: 1837FEC
  loc_1837B62:     If Not(var_88.EOF) Then
  loc_1837BC5:       Set var_144 = Me.LblCap
  loc_1837BCB:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837BD3:       var_148.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1837C51:       Set var_144 = Me.TxtPer
  loc_1837C57:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837C5F:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1837CDD:       Set var_144 = Me.LblCap
  loc_1837CE3:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837CEB:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1837D69:       Set var_144 = Me.LblAt
  loc_1837D6F:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837D77:       var_148.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1837DF5:       Set var_144 = Me.TxtGt
  loc_1837DFB:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837E03:       var_148.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_1837E81:       Set var_144 = Me.TxtPer
  loc_1837E87:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837E8F:       var_148.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1837EEB:       var_124 = var_88.Fields.Item("SNo").Value
  loc_1837EFF:       var_E0 = "0.00"
  loc_1837F26:       Set var_144 = Me.TxtGt
  loc_1837F2C:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_124), var_148, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_1837F34:       var_148.Text = 1
  loc_1837F7A:       Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_1837F9B:       var_128 = var_88.Fields
  loc_1837FB8:       Set var_144 = Me.LblDummy
  loc_1837FBE:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_128.Item("SNo").Value), var_148, CStr(var_E0))
  loc_1837FC6:       var_148.Caption = 1
  loc_1837FE7:       var_88.MoveNext
  loc_1837FEC:       GoTo loc_1837B53
  loc_1837FEF:     End If
  loc_1837FEF:   End If
  loc_1838045:   unk_55BD28.Execute CStr("Select S.* From SunTranH S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_1838050:   Set var_88 = var_128
  loc_183807E:   If (var_88.RecordCount > 0) Then
  loc_1838081:     ' Referenced from: 183851A
  loc_1838090:     If Not(var_88.EOF) Then
  loc_18380D6:       var_128 = var_88.Fields
  loc_18380F3:       Set var_144 = Me.LableCap
  loc_18380F9:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_128.Item("SNo").Value), var_148, CStr(var_88.Fields.Item("SunCode").Value))
  loc_1838101:       var_148.Tag = var_128
  loc_183817F:       Set var_144 = Me.TextPer
  loc_1838185:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_183818D:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_183820B:       Set var_144 = Me.LableCap
  loc_1838211:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1838219:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1838297:       Set var_144 = Me.LableAt
  loc_183829D:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_18382A5:       var_148.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1838323:       Set var_144 = Me.TextGt
  loc_1838329:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1838331:       var_148.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_18383AF:       Set var_144 = Me.TextPer
  loc_18383B5:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_18383BD:       var_148.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1838419:       var_124 = var_88.Fields.Item("SNo").Value
  loc_183842D:       var_E0 = "0.00"
  loc_1838454:       Set var_144 = Me.TextGt
  loc_183845A:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_124), var_148, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_1838462:       var_148.Text = 1
  loc_18384A8:       Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_18384C9:       var_128 = var_88.Fields
  loc_18384E6:       Set var_144 = Me.LableDummy
  loc_18384EC:       Call 0.Method_Proc_126_78_183913C0 (CInt(var_128.Item("SNo").Value), var_148, CStr(var_E0))
  loc_18384F4:       var_148.Caption = 1
  loc_1838515:       var_88.MoveNext
  loc_183851A:       GoTo loc_1838081
  loc_183851D:     End If
  loc_183851D:   End If
  loc_183852C:   Me.FGrid.Redraw = False
  loc_1838547:   Me.FGrid.Rows = 1
  loc_1838551:   var_8E = 1
  loc_1838561:   var_D0 = "Select S.*,I.Name as ItemName From HallStock S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.REstCODE Where S.DocId='"
  loc_18385A0:   var_104 = CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'")
  loc_18385AA:   unk_55BD28.Execute var_104, var_124, -1
  loc_18385B5:   Set var_88 = var_128
  loc_18385E3:   If (var_88.RecordCount > 0) Then
  loc_18385E6:     ' Referenced from: 1838A85
  loc_18385F5:     If Not(var_88.EOF) Then
  loc_18385F8:       var_AC = vbNullString
  loc_1838602:       Set var_9C = Me.FGrid
  loc_1838617:       Set var_170 = Me.FGrid
  loc_183861E:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_1838626:       var_114 = CVar(CLng(0)) 'Long
  loc_1838656:       var_E0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_183865D:       LateIdCallSt
  loc_1838677:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_183867F:       var_114 = CVar(CLng(9)) 'Long
  loc_18386AF:       var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_18386B6:       LateIdCallSt
  loc_1838705:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_170, var_E0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_183870C:       LateIdCallSt
  loc_183873E:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_1838746:       var_180 = CVar(CLng(3)) 'Long
  loc_1838773:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_183877A:       LateIdCallSt
  loc_18387B0:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18387B8:       var_180 = CVar(CLng(4)) 'Long
  loc_18387E5:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18387EC:       LateIdCallSt
  loc_1838822:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_183882A:       var_180 = CVar(CLng(5)) 'Long
  loc_1838857:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_183885E:       LateIdCallSt
  loc_1838894:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_183889C:       var_180 = CVar(CLng(7)) 'Long
  loc_18388C9:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18388D0:       LateIdCallSt
  loc_1838906:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_183890E:       var_180 = CVar(CLng(6)) 'Long
  loc_183893B:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_1838942:       LateIdCallSt
  loc_1838978:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18389B4:       LateIdCallSt
  loc_1838A03:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_170, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1838A0A:       LateIdCallSt
  loc_1838A55:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_170, var_E0, CVar(CLng(8)))) 'String
  loc_1838A5C:       LateIdCallSt
  loc_1838A70:       Set var_170 = Nothing 
  loc_1838A7A:       var_8E = (var_8E + 1)
  loc_1838A80:       var_88.MoveNext
  loc_1838A85:       GoTo loc_18385E6
  loc_1838A88:     End If
  loc_1838A9B:     Me.FGrid.FixedRows = 1
  loc_1838AA3:   End If
  loc_1838AB1:   Me.FGrid.Redraw = True
  loc_1838ABF:   If (var_8E = 1) Then
  loc_1838AD5:     Me.FGrid.Rows = 1
  loc_1838AE1:     Set var_128 = Me.FGrid
  loc_1838AFB:     var_C0 = CVar(CStr(Proc_6_127_F24F80(var_128, CInt(0), var_8E, var_170, var_E0))) 'String
  loc_1838B03:     Set var_B0 = Me.FGrid
  loc_1838B30:     Me.FGrid.FixedRows = 1
  loc_1838B38:   End If
  loc_1838B56:   Set var_9C = Me.Txt
  loc_1838B5C:   Call 0.Method_Proc_126_78_183913C0 (CInt(7), var_B0, var_104, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C0, -1, var_128)
  loc_1838B64:   FGrid.DispID_10000 = var_B0.Tag
  loc_1838B6D:   var_134 = var_C0 & var_104
  loc_1838B74:   var_138 = var_134 & "'"
  loc_1838B7D:   unk_55BD19.Execute var_138, var_F0, var_170
  loc_1838B88:   Set var_88 = var_128
  loc_1838BAF:   Me.FGrid1.Redraw = False
  loc_1838BCA:   Me.FGrid1.Rows = 1
  loc_1838BD2:   var_AC = vbNullString
  loc_1838BDC:   Set var_9C = Me.FGrid1
  loc_1838C00:   Me.FGrid1.FixedRows = 1
  loc_1838C08:   ' Referenced from: 1838FDC
  loc_1838C0E:   var_13A = var_88.EOF
  loc_1838C17:   If Not(var_13A) Then
  loc_1838C33:     var_AC = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_1838C42:     Me.FGrid1.Row = 1
  loc_1838C55:     Set var_1A4 = Me.FGrid1
  loc_1838C6B:     var_180 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1838C92:     var_AC = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_1838CB5:     var_104 = CStr(Me.FGrid1.TextMatrix))
  loc_1838CC3:     var_124 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_1838CCA:     LateIdCallSt
  loc_1838D0D:     var_AC = "VenueName"
  loc_1838D32:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_AC)), 1, CVar(CLng(Me.FGrid1.Row)), var_1A4, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 0, var_AC)) 'String
  loc_1838D39:     LateIdCallSt
  loc_1838D9A:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100, 0)) 'String
  loc_1838DA1:     LateIdCallSt
  loc_1838E02:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1838E09:     LateIdCallSt
  loc_1838E6A:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1838E71:     LateIdCallSt
  loc_1838ED2:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1838ED9:     LateIdCallSt
  loc_1838F29:     var_B0 = var_88.Fields.Item("VenuCode")
  loc_1838F3A:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_B0), 6, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1838F41:     LateIdCallSt
  loc_1838F5D:     Set var_128 = Me.FGrid1
  loc_1838F88:     Set var_9C = Me.Txt
  loc_1838F8E:     Call 0.Method_Proc_126_78_183913C0 (CInt(1), var_B0, var_104, 7, CVar(CLng(var_128.Row)), var_1A4)
  loc_1838F96:     var_100 = var_B0.Text
  loc_1838F9E:     var_E0 = CVar(var_104) 'String
  loc_1838FA5:     LateIdCallSt
  loc_1838FBD:     var_AC = vbNullString
  loc_1838FC6:     Proc_126_78_183913C2 = var_1A4.Name
  loc_1838FD0:     Set var_1A4 = Nothing 
  loc_1838FD7:     var_88.MoveNext
  loc_1838FDC:     GoTo loc_1838C08
  loc_1838FDF:   End If
  loc_1838FE6:   Set var_9C = Me.TxtGt
  loc_1838FEC:   Call 0.Method_Proc_126_78_183913C8 (var_13A, Proc_126_78_183913C2, var_AC, var_1A4, var_E0)
  loc_1838FFE:   Set var_B0 = Me.TxtGt
  loc_1839004:   Call 0.Method_Proc_126_78_183913C0 (var_13A, var_128, var_104, var_180)
  loc_183900C:   FGrid1.DispID_10000 = var_128.Text
  loc_1839019:   var_15C = Val(var_104)
  loc_1839023:   Set var_130 = Me.TextGt
  loc_1839029:   Call 0.Method_Proc_126_78_183913C8 (var_1C6, var_15C, var_AC)
  loc_183903B:   Set var_144 = Me.TextGt
  loc_1839041:   Call 0.Method_Proc_126_78_183913C0 (var_1C6, var_148, var_134)
  loc_1839049:   var_124 = var_148.Text
  loc_1839056:   var_164 = Val(var_134)
  loc_1839067:   Set var_14C = Me.Txt
  loc_183906D:   Call 0.Method_Proc_126_78_183913C0 (CInt(8), var_150, var_138)
  loc_1839082:   var_16C = Val(var_138)
  loc_18390A5:   var_C0 = CVar(((var_15C + var_150.Text) - var_16C)) 'Double
  loc_18390C3:   Set var_1CC = Me.Txt
  loc_18390C9:   Call 0.Method_Proc_126_78_183913C0 (CInt(&H14), var_1D0, CStr(Format(var_128.Row, "0.00")), 1)
  loc_18390D1:   var_1D0.Text = 1
  loc_183910F:   Me.FGrid1.Redraw = True
  loc_183911A: Else
  loc_183911A:   Call Proc_126_80_1017954(var_16C)
  loc_183911F: End If
  loc_183911F: Call Proc_126_82_F262C0(1)
  loc_1839129: Set var_88 = Nothing
  loc_1839131: Set var_94 = Nothing
  loc_1839134: Exit Sub
  loc_1839135: ' Referenced from: 1836CC0
  loc_1839135: Proc_6_60_E62BC4()
  loc_183913A: Exit Sub
End Sub

Public Sub Proc_126_79_112E344
  'Data Table: 55BCF4
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_55BD19 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_112DFF1: Set var_9C = Me.TopCtrl1
  loc_112DFF7: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_112E00C: If ( = "Add") Then
  loc_112E03C:   Set var_9C = Me.Txt
  loc_112E042:   Call 0.Method_Proc_126_79_112E3440 (CInt(4), var_D0, var_D4, "Select Count(*) From HallSale1 Where DocID='", var_BC, -1)
  loc_112E063:   unk_55BD19.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_112E073:    = var_E4.Item()
  loc_112E07B:    = var_F8.Value
  loc_112E0A8:   If (var_D0.Text.Fields > 0) Then
  loc_112E0B1:     Call 0.Method_arg_50 (var_D4)
  loc_112E0D2:     MsgBox("Duplicate Bill No.", &H40, CVar(var_D4), var_118, var_128)
  loc_112E0E8:     Call Proc_126_85_11080C4(MemVar_1F92044)
  loc_112E0FB:     Set var_9C = Me.Txt
  loc_112E101:     Call 0.Method_Proc_126_79_112E3440 (CInt(4), var_D0)
  loc_112E109:     var_D0.Text = var_D4
  loc_112E11D:     Proc_126_79_112E344 = 0
  loc_112E123:   End If
  loc_112E123: End If
  loc_112E148: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_112E152:   var_AC = CVar(CLng(var_88)) 'Long
  loc_112E15A:   var_108 = CVar(CLng(1)) 'Long
  loc_112E17A:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_112E196:   If CBool(var_118 <> vbNullString) Then
  loc_112E19D:     var_AC = CVar(CLng(var_88)) 'Long
  loc_112E1A5:     var_108 = CVar(CLng(3)) 'Long
  loc_112E1D5:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_112E1FD:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_112E223:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_112E22F:       Set var_9C = Me.FGrid
  loc_112E253:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_112E260:       Proc_126_79_112E344 = 0
  loc_112E266:     End If
  loc_112E26A:     var_AC = CVar(CLng(var_88)) 'Long
  loc_112E272:     var_108 = CVar(CLng(4)) 'Long
  loc_112E2A2:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_112E2CA:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_112E2F0:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_112E2FC:       Set var_9C = Me.FGrid
  loc_112E320:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_112E32D:       Proc_126_79_112E344 = 0
  loc_112E333:     End If
  loc_112E333:   End If
  loc_112E336: Next var_12C 'Integer
  loc_112E33B: Proc_126_79_112E344 = 
End Sub

Public Sub Proc_126_80_1017954
  'Data Table: 55BCF4
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  loc_1017735: Me.LblVPrefix.Caption = vbNullString
  loc_101774B: Set var_8C = Me.Txt
  loc_1017751: Call 0.Method_Proc_126_80_1017954C (var_8E, var_86)
  loc_1017761: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1017777:   Set var_8C = Me.Txt
  loc_101777D:   Call 0.Method_Proc_126_80_10179540 (CInt(var_86), var_98)
  loc_1017785:   var_98.Text = vbNullString
  loc_10177A1:   Set var_8C = Me.Txt
  loc_10177A7:   Call 0.Method_Proc_126_80_10179540 (CInt(var_86), var_98)
  loc_10177AF:   var_98.Tag = vbNullString
  loc_10177BE: Next var_92 'Byte
  loc_10177D3: Set var_8C = Me.txtM
  loc_10177D9: Call 0.Method_Proc_126_80_10179540 (0, var_98)
  loc_10177E1: var_98.Text = "0:00"
  loc_10177FC: Set var_8C = Me.txtM
  loc_1017802: Call 0.Method_Proc_126_80_10179540 (0, var_98)
  loc_101780A: var_98.Tag = vbNullString
  loc_1017825: Set var_8C = Me.txtM
  loc_101782B: Call 0.Method_Proc_126_80_10179540 (1, var_98)
  loc_1017833: var_98.Text = "0:00"
  loc_101784E: Set var_8C = Me.txtM
  loc_1017854: Call 0.Method_Proc_126_80_10179540 (1, var_98)
  loc_101785C: var_98.Tag = vbNullString
  loc_101787B: Me.FGrid.Rows = 1
  loc_10178A1: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_10178A9: Set var_98 = Me.FGrid
  loc_10178D6: Me.FGrid.FixedRows = 1
  loc_10178F1: Me.FGrid1.Rows = 1
  loc_1017915: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_101791D: Set var_98 = Me.FGrid1
  loc_101794A: Me.FGrid1.FixedRows = 1
  loc_1017952: Exit Sub
End Sub

Public Sub Proc_126_81_104CAF0(arg_C) '104CAF0
  'Data Table: 55BCF4
  Dim var_98 As Variant
  Dim var_8C As CommandButton
  loc_104C88A: Set var_8C = Me.Txt
  loc_104C890: Call 0.Method_Proc_126_81_104CAF0C (var_8E, var_86)
  loc_104C8A0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_104C8B6:   Set var_8C = Me.Txt
  loc_104C8BC:   Call 0.Method_Proc_126_81_104CAF00 (CInt(var_86), var_98)
  loc_104C8C4:   var_98.Enabled = arg_C
  loc_104C8D3: Next var_92 'Byte
  loc_104C8E7: Set var_8C = Me.txtM
  loc_104C8ED: Call 0.Method_Proc_126_81_104CAF00 (0, var_98)
  loc_104C8F5: var_98.Enabled = False
  loc_104C90F: Set var_8C = Me.txtM
  loc_104C915: Call 0.Method_Proc_126_81_104CAF00 (1, var_98)
  loc_104C91D: var_98.Enabled = False
  loc_104C936: Set var_8C = Me.Txt
  loc_104C93C: Call 0.Method_Proc_126_81_104CAF00 (CInt(&H15), var_98)
  loc_104C944: var_98.Enabled = False
  loc_104C95D: Set var_8C = Me.Txt
  loc_104C963: Call 0.Method_Proc_126_81_104CAF00 (CInt(6), var_98)
  loc_104C96B: var_98.Enabled = False
  loc_104C984: Set var_8C = Me.Txt
  loc_104C98A: Call 0.Method_Proc_126_81_104CAF00 (CInt(4), var_98)
  loc_104C992: var_98.Enabled = False
  loc_104C9AB: Set var_8C = Me.Txt
  loc_104C9B1: Call 0.Method_Proc_126_81_104CAF00 (CInt(3), var_98)
  loc_104C9B9: var_98.Enabled = False
  loc_104C9D2: Set var_8C = Me.Txt
  loc_104C9D8: Call 0.Method_Proc_126_81_104CAF00 (CInt(8), var_98)
  loc_104C9E0: var_98.Enabled = False
  loc_104C9F9: Set var_8C = Me.Txt
  loc_104C9FF: Call 0.Method_Proc_126_81_104CAF00 (CInt(&HA), var_98)
  loc_104CA07: var_98.Enabled = False
  loc_104CA20: Set var_8C = Me.Txt
  loc_104CA26: Call 0.Method_Proc_126_81_104CAF00 (CInt(9), var_98)
  loc_104CA2E: var_98.Enabled = False
  loc_104CA47: Set var_8C = Me.Txt
  loc_104CA4D: Call 0.Method_Proc_126_81_104CAF00 (CInt(&H10), var_98)
  loc_104CA55: var_98.Enabled = False
  loc_104CA6E: Set var_8C = Me.Txt
  loc_104CA74: Call 0.Method_Proc_126_81_104CAF00 (CInt(&H14), var_98)
  loc_104CA7C: var_98.Enabled = False
  loc_104CA95: Set var_8C = Me.Txt
  loc_104CA9B: Call 0.Method_Proc_126_81_104CAF00 (CInt(&HC), var_98)
  loc_104CAA3: var_98.Enabled = False
  loc_104CABC: Set var_8C = Me.Txt
  loc_104CAC2: Call 0.Method_Proc_126_81_104CAF00 (CInt(&HB), var_98)
  loc_104CACA: var_98.Enabled = False
  loc_104CAE4: Me.Command1.Enabled = Not(arg_C)
  loc_104CAEC: Exit Sub
End Sub

Public Sub Proc_126_82_F262C0
  'Data Table: 55BCF4
  loc_F261CC: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F261DE:   Me.DGParty.Visible = False
  loc_F261E6: End If
  loc_F26202: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F26214:   Me.DGVType.Visible = False
  loc_F2621C: End If
  loc_F26238: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F2624A:   Me.DGHall.Visible = False
  loc_F26252: End If
  loc_F2626E: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F26280:   Me.DGItem.Visible = False
  loc_F26288: End If
  loc_F262A4: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F262B6:   Me.DGBookNo.Visible = False
  loc_F262BE: End If
  loc_F262BE: Exit Sub
End Sub

Public Sub Proc_126_83_F0A4C4
  'Data Table: 55BCF4
  loc_F0A3E8: Call Proc_126_82_F262C0()
  loc_F0A3F8: Set var_88 = Me.Txt
  loc_F0A3FE: Call 0.Method_Proc_126_83_F0A4C40 (CInt(2))
  loc_F0A427: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0A42A:   Exit Sub
  loc_F0A42B: End If
  loc_F0A436: Set var_88 = Me.Txt
  loc_F0A43C: Call 0.Method_Proc_126_83_F0A4C40 (CInt(1), var_8C)
  loc_F0A465: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0A468:   Exit Sub
  loc_F0A469: End If
  loc_F0A4A0: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0A4A3:   Call TopCtrl1_UnknownEvent_19()
  loc_F0A4AB: Else
  loc_F0A4B1:   Call 0.Method_arg_1E8 (var_88)
  loc_F0A4B9:   Call var_88.SetFocus
  loc_F0A4C2: End If
  loc_F0A4C2: Exit Sub
End Sub

Public Sub Proc_126_84_1153D5C
  'Data Table: 55BCF4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_11539EB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11539F3: var_C8 = CVar(CLng(4)) 'Long
  loc_1153A2B: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153A33: var_134 = CVar(CLng(3)) 'Long
  loc_1153A6B: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153A73: var_1F0 = CVar(CLng(5)) 'Long
  loc_1153AA4: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1153AAC: Set var_224 = Me.FGrid
  loc_1153AB2: LateIdCallSt
  loc_1153AF8: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153B00: var_C8 = CVar(CLng(6)) 'Long
  loc_1153B38: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1153B4E:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153B56:   var_C8 = CVar(CLng(5)) 'Long
  loc_1153B8E:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153B96:   var_134 = CVar(CLng(6)) 'Long
  loc_1153BCE:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153BD6:   var_1F0 = CVar(CLng(7)) 'Long
  loc_1153C0B:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153C13:   Set var_224 = Me.FGrid
  loc_1153C19:   LateIdCallSt
  loc_1153C4C: End If
  loc_1153C5F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153C67: var_C8 = CVar(CLng(5)) 'Long
  loc_1153C9F: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153CA7: var_134 = CVar(CLng(7)) 'Long
  loc_1153CDF: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153CE7: var_1F0 = CVar(CLng(8)) 'Long
  loc_1153D08: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1153D18: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153D20: Set var_224 = Me.FGrid
  loc_1153D26: LateIdCallSt
  loc_1153D59: Exit Sub
End Sub

Public Sub Proc_126_85_11080C4
  'Data Table: 55BCF4
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
  loc_1107DD0: Set var_94 = Me.Txt
  loc_1107DD6: Call 0.Method_Proc_126_85_11080C40 (CInt(0), var_98)
  loc_1107DE6: var_90 = var_98.Tag
  loc_1107E04: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1107E35: Set var_94 = Me.Txt
  loc_1107E3B: Call 0.Method_Proc_126_85_11080C40 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1107E4A: Proc_6_7_F25D88(var_CC, CVar(var_98), var_130)
  loc_1107E52: var_EC = -1 & var_CC 
  loc_1107E66: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1107E71: Set var_8C = var_134
  loc_1107EAD: If (var_8C.RecordCount > 0) Then
  loc_1107EEC:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1107F20:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1107F4B:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_1107F60:     var_CC = (var_98.Value + 1)
  loc_1107F68:     global_116 = CInt(var_CC)
  loc_1107F79:   End If
  loc_1107F79: End If
  loc_1107FA4: var_BC = Space((5 - Len(var_90)))
  loc_1107FAC: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_98.Value)
  loc_1107FC0: var_EC = Space((5 - Len(global_112)))
  loc_1107FC8: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_1107FD5: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_1107FEE: var_14C = Space((8 - Len(CStr(global_116))))
  loc_1107FF6: var_15C = (var_130 + var_14C)
  loc_1108005: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_1108010: global_104 = CStr(var_17C)
  loc_1108046: Me.LblVPrefix.Caption = global_112
  loc_110805F: Set var_94 = Me.Txt
  loc_1108065: Call 0.Method_Proc_126_85_11080C40 (CInt(4), var_98)
  loc_110806D: var_98.Text = global_104
  loc_110808F: Set var_94 = Me.Txt
  loc_1108095: Call 0.Method_Proc_126_85_11080C40 (CInt(1), var_98)
  loc_110809D: var_98.Text = CStr(global_116)
  loc_11080B2: var_88 = global_104
  loc_11080BA: Set var_8C = Nothing
  loc_11080BD: Proc_126_85_11080C4 = global_116
End Sub

Public Sub Proc_126_86_10B5F90(arg_C, arg_10, arg_14) '10B5F90
  'Data Table: 55BCF4
  Dim unk_55BD19 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B5CFE: If (arg_C = "HSBIL") Then
  loc_10B5D25:   unk_55BD19.Execute "Select Distinct DocId,V_Type,V_No From HallSale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B5D30:   Set var_8C = var_C4
  loc_10B5D43:   var_94 = "Sale Bill "
  loc_10B5D49: Else
  loc_10B5D4E:   Proc_126_86_10B5F90 = &HFF
  loc_10B5D54: End If
  loc_10B5D68: If (var_8C.RecordCount > 0) Then
  loc_10B5D6B:   ' Referenced from: 10B5EE4
  loc_10B5D7A:   If Not(var_8C.EOF) Then
  loc_10B5D85:     If (var_90 = vbNullString) Then
  loc_10B5DC8:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B5DCF:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B5E01:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B5E26:     Else
  loc_10B5E62:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B5E82:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B5EAF:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B5EB4:       var_90 = CStr(var_11C)
  loc_10B5EDC:     End If
  loc_10B5EDF:     var_8C.MoveNext
  loc_10B5EE4:     GoTo loc_10B5D6B
  loc_10B5EE7:   End If
  loc_10B5EED:   Call 0.Method_arg_50 (var_138)
  loc_10B5F49:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B5F4C:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B5F7B:   Set var_8C = Nothing
  loc_10B5F7E:   Proc_126_86_10B5F90 = 0
  loc_10B5F84: End If
  loc_10B5F89: Proc_126_86_10B5F90 = &HFF
End Sub

Public Sub Proc_126_87_FBD7E4
  'Data Table: 55BCF4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBD667: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBD66C:   var_92 = 1 'Byte
  loc_FBD670: End If
  loc_FBD679: Set var_98 = Me.TxtGrid
  loc_FBD67F: Call 0.Method_Proc_126_87_FBD7E40 (0, var_B0)
  loc_FBD6A2: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBD6D6: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBD6FA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBD6FD:     GoTo loc_FBD7CF
  loc_FBD700:   End If
  loc_FBD704:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBD72E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBD738:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBD76D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBD791:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBD7AA:     Set var_98 = Me.TxtGrid
  loc_FBD7B0:     Call 0.Method_Proc_126_87_FBD7E40 (0, var_B0, CVar(CLng(var_92)))
  loc_FBD7B8:     var_B0.SetFocus
  loc_FBD7C9:     Proc_126_87_FBD7E4 = 0
  loc_FBD7CF:     ' Referenced from: FBD6FD
  loc_FBD7CF:   End If
  loc_FBD7D2: Next var_D4 'Integer
  loc_FBD7DC: Proc_126_87_FBD7E4 = &HFF
End Sub

Public Sub Proc_126_88_1A505FC(arg_C) '1A505FC
  'Data Table: 55BCF4
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim unk_55BD19 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_134 As Variant
  Dim var_130 As Fields15
  Dim var_128 As Boolean
  Dim var_17C As Variant
  Dim var_138 As Fields15
  Dim var_184 As Variant
  Dim var_198 As TextBox
  Dim var_C4 As Variant
  loc_1A4CDE4: Set var_90 = Me.TextGt
  loc_1A4CDEA: Call 0.Method_Proc_126_88_1A505FC0 (1, var_94)
  loc_1A4CDFA: var_8A = var_94.TabIndex
  loc_1A4CE1B: var_9C = "Select * From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='" & global_56
  loc_1A4CE22: var_A0 = var_9C & "') aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='"
  loc_1A4CE41: Proc_6_7_F25D88(var_C4, arg_C, CVar(var_A0 & global_56 & "') aND AppDate<="), var_128)
  loc_1A4CE49: var_E4 = -1 & var_C4 
  loc_1A4CE60: unk_55BD19.Execute CStr(var_E4 & "  Order by AppDate Desc) Order by SNO"), var_90, var_8A
  loc_1A4CE6B: Set var_88 = var_90
  loc_1A4CE9D: If (var_88.RecordCount > 0) Then
  loc_1A4CEA0:   ' Referenced from: 1A4E913
  loc_1A4CEA6:   var_96 = var_88.EOF
  loc_1A4CEAF:   If Not(var_96) Then
  loc_1A4CEEE:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A4CF22:       Set var_130 = Me.LableDummy
  loc_1A4CF28:       Call 0.Method_Proc_126_88_1A505FC8 (var_96)
  loc_1A4CF42:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A4CF77:         Set var_130 = Me.LableDummy
  loc_1A4CF7D:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4CF8E:         Me.LableDummy.Load var_134
  loc_1A4CFA1:       End If
  loc_1A4CFD2:       Set var_130 = Me.TextPer
  loc_1A4CFD8:       Call 0.Method_Proc_126_88_1A505FC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4CFF2:       If (var_134 > CVar(var_96)) Then
  loc_1A4D027:         Set var_130 = Me.TextPer
  loc_1A4D02D:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4D03E:         Me.TextPer.Load var_134
  loc_1A4D051:       End If
  loc_1A4D089:       Set var_130 = Me.TextPer
  loc_1A4D08F:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D097:       var_134.TabIndex = (var_8A + 1)
  loc_1A4D0B0:       var_8A = (var_8A + 1)
  loc_1A4D0F4:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4D134:       Set var_138 = Me.TextPer
  loc_1A4D13A:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A4D142:       var_17C.Visible = var_8A
  loc_1A4D1A1:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4D200:         var_104 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4D209:         Set var_180 = Me.TextPer
  loc_1A4D20F:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(True), var_184)
  loc_1A4D251:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4D25A:         Set var_130 = Me.TextPer
  loc_1A4D260:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(CVar(var_A0 & global_56 & "') aND AppDate<=")), var_134)
  loc_1A4D284:         Set var_194 = Me.TextPer
  loc_1A4D28A:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_198)
  loc_1A4D292:         var_198.Top = ((var_134.Top + var_184.Height) + CDbl(&HF))
  loc_1A4D2BB:       End If
  loc_1A4D2F7:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4D356:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4D35F:         Set var_130 = Me.TextPer
  loc_1A4D365:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(CVar(var_A0 & global_56 & "') aND AppDate<=")), var_134)
  loc_1A4D380:         Set var_180 = Me.TextPer
  loc_1A4D386:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4D38E:         var_184.Left = var_134.Left
  loc_1A4D3AD:       End If
  loc_1A4D40A:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4D457:       Set var_180 = Me.TextPer
  loc_1A4D45D:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A4D465:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A4D4D8:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4D4ED:       Set var_138 = Me.TextPer
  loc_1A4D4F3:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4D4FB:       var_17C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A4D552:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4D589:         Set var_130 = Me.TextPer
  loc_1A4D58F:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D597:         var_134.FontBold = True
  loc_1A4D5AD:       Else
  loc_1A4D5E1:         Set var_130 = Me.TextPer
  loc_1A4D5E7:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D5EF:         var_134.FontBold = False
  loc_1A4D602:       End If
  loc_1A4D63B:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4D672:         Set var_130 = Me.TextPer
  loc_1A4D678:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D680:         var_134.Enabled = False
  loc_1A4D696:       Else
  loc_1A4D6CA:         Set var_130 = Me.TextPer
  loc_1A4D6D0:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D6D8:         var_134.Enabled = True
  loc_1A4D6EB:       End If
  loc_1A4D6EF:       Set var_90 = Me.TopCtrl1
  loc_1A4D6F5:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_134)
  loc_1A4D70A:       If ( = "Browse") Then
  loc_1A4D741:         Set var_130 = Me.TextPer
  loc_1A4D747:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D74F:         var_134.Enabled = False
  loc_1A4D762:       End If
  loc_1A4D79E:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A4D7D5:         Set var_130 = Me.TextPer
  loc_1A4D7DB:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D7E3:         var_134.Enabled = False
  loc_1A4D7F6:       End If
  loc_1A4D827:       Set var_130 = Me.LableCap
  loc_1A4D82D:       Call 0.Method_Proc_126_88_1A505FC8 (var_96)
  loc_1A4D847:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A4D87C:         Set var_130 = Me.LableCap
  loc_1A4D882:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4D893:         Me.LableCap.Load var_134
  loc_1A4D8A6:       End If
  loc_1A4D8DA:       Set var_130 = Me.LableCap
  loc_1A4D8E0:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D8E8:       var_134.Visible = True
  loc_1A4D957:       Set var_130 = Me.TextPer
  loc_1A4D95D:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D978:       Set var_180 = Me.LableCap
  loc_1A4D97E:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4D986:       var_184.Top = var_134.Top
  loc_1A4D9E1:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4DA25:         var_17C = var_88.Fields.Item("SNo")
  loc_1A4DA40:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4DA49:         Set var_130 = Me.LableCap
  loc_1A4DA4F:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DA6A:         Set var_180 = Me.LableCap
  loc_1A4DA70:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A4DA78:         var_184.Left = var_134.Left
  loc_1A4DA97:       End If
  loc_1A4DAF7:       Set var_138 = Me.LableCap
  loc_1A4DAFD:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_17C)
  loc_1A4DB05:       var_17C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A4DB6E:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4DB83:       Set var_138 = Me.LableCap
  loc_1A4DB89:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4DB91:       var_17C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A4DBE8:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4DC1F:         Set var_130 = Me.LableCap
  loc_1A4DC25:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DC2D:         var_134.FontBold = True
  loc_1A4DC43:       Else
  loc_1A4DC77:         Set var_130 = Me.LableCap
  loc_1A4DC7D:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DC85:         var_134.FontBold = False
  loc_1A4DC98:       End If
  loc_1A4DCC9:       Set var_130 = Me.LableAt
  loc_1A4DCCF:       Call 0.Method_Proc_126_88_1A505FC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4DCE9:       If (var_134 > CVar(var_96)) Then
  loc_1A4DD1E:         Set var_130 = Me.LableAt
  loc_1A4DD24:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4DD35:         Me.LableAt.Load var_134
  loc_1A4DD48:       End If
  loc_1A4DD89:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4DDC9:       Set var_138 = Me.LableAt
  loc_1A4DDCF:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4DDD7:       var_17C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A4DE3B:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4DE56:       Set var_130 = Me.TextPer
  loc_1A4DE5C:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DE77:       Set var_180 = Me.LableAt
  loc_1A4DE7D:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A4DE85:       var_184.Top = var_134.Top
  loc_1A4DEDD:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4DF14:         Set var_130 = Me.LableAt
  loc_1A4DF1A:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DF22:         var_134.FontBold = True
  loc_1A4DF38:       Else
  loc_1A4DF6C:         Set var_130 = Me.LableAt
  loc_1A4DF72:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DF7A:         var_134.FontBold = False
  loc_1A4DF8D:       End If
  loc_1A4DFD8:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4DFED:       Set var_138 = Me.LableAt
  loc_1A4DFF3:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4DFFB:       var_17C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A4E055:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4E0B4:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4E0BD:         Set var_130 = Me.LableAt
  loc_1A4E0C3:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("RoundOff").Value), var_134)
  loc_1A4E0DE:         Set var_180 = Me.LableAt
  loc_1A4E0E4:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4E0EC:         var_184.Left = var_134.Left
  loc_1A4E10B:       End If
  loc_1A4E13C:       Set var_130 = Me.TextGt
  loc_1A4E142:       Call 0.Method_Proc_126_88_1A505FC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4E15C:       If (var_134 > CVar(var_96)) Then
  loc_1A4E191:         Set var_130 = Me.TextGt
  loc_1A4E197:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4E1A8:         Me.TextGt.Load var_134
  loc_1A4E1BB:       End If
  loc_1A4E1F3:       Set var_130 = Me.TextGt
  loc_1A4E1F9:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E201:       var_134.TabIndex = (var_8A + 1)
  loc_1A4E21A:       var_8A = (var_8A + 1)
  loc_1A4E251:       Set var_130 = Me.TextGt
  loc_1A4E257:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134, &HFF)
  loc_1A4E25F:       var_134.Visible = var_8A
  loc_1A4E2CE:       Set var_130 = Me.TextPer
  loc_1A4E2D4:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E2EF:       Set var_180 = Me.TextGt
  loc_1A4E2F5:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4E2FD:       var_184.Top = var_134.Top
  loc_1A4E358:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4E3B7:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4E3C0:         Set var_130 = Me.TextGt
  loc_1A4E3C6:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E3E1:         Set var_180 = Me.TextGt
  loc_1A4E3E7:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4E3EF:         var_184.Left = var_134.Left
  loc_1A4E40E:       End If
  loc_1A4E46B:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4E4B8:       Set var_180 = Me.TextGt
  loc_1A4E4BE:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A4E4C6:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A4E536:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4E54B:       Set var_138 = Me.TextGt
  loc_1A4E551:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4E559:       var_17C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A4E5AE:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4E5E5:         Set var_130 = Me.TextGt
  loc_1A4E5EB:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E5F3:         var_134.FontBold = True
  loc_1A4E609:       Else
  loc_1A4E63D:         Set var_130 = Me.TextGt
  loc_1A4E643:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E64B:         var_134.FontBold = False
  loc_1A4E65E:       End If
  loc_1A4E697:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4E6CE:         Set var_130 = Me.TextGt
  loc_1A4E6D4:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E6DC:         var_134.Enabled = False
  loc_1A4E6F2:       Else
  loc_1A4E726:         Set var_130 = Me.TextGt
  loc_1A4E72C:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E734:         var_134.Enabled = True
  loc_1A4E747:       End If
  loc_1A4E77C:       Set var_130 = Me.LableCap
  loc_1A4E782:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E7A8:       If (var_134.Tag = "SROFF") Then
  loc_1A4E7DF:         Set var_130 = Me.TextGt
  loc_1A4E7E5:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E7ED:         var_134.Enabled = False
  loc_1A4E800:       End If
  loc_1A4E804:       Set var_90 = Me.TopCtrl1
  loc_1A4E80A:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_134)
  loc_1A4E81F:       If ( = "Browse") Then
  loc_1A4E856:         Set var_130 = Me.TextGt
  loc_1A4E85C:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E864:         var_134.Enabled = False
  loc_1A4E877:       End If
  loc_1A4E8B3:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A4E8D5:         var_94 = var_88.Fields.Item("SNo")
  loc_1A4E8EA:         Set var_130 = Me.TextGt
  loc_1A4E8F0:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_94.Value), var_134)
  loc_1A4E8F8:         var_134.Enabled = False
  loc_1A4E90B:       End If
  loc_1A4E90B:     End If
  loc_1A4E90E:     var_88.MoveNext
  loc_1A4E913:     GoTo loc_1A4CEA0
  loc_1A4E916:   End If
  loc_1A4E916: End If
  loc_1A4E91C: var_8A = (var_8A + 1)
  loc_1A4E930: Me.FGrid.TabIndex = var_8A
  loc_1A4E93E: var_8A = (var_8A + 1)
  loc_1A4E94D: Set var_90 = Me.TxtGrid
  loc_1A4E953: Call 0.Method_Proc_126_88_1A505FC0 (0, var_94, var_8A)
  loc_1A4E95B: var_94.TabIndex = var_8A
  loc_1A4E96A: var_88.MoveFirst
  loc_1A4E983: If (var_88.RecordCount > 0) Then
  loc_1A4E986:   ' Referenced from: 1A50485
  loc_1A4E98C:   var_96 = var_88.EOF
  loc_1A4E995:   If Not(var_96) Then
  loc_1A4E9D4:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A4EA08:       Set var_130 = Me.LblDummy
  loc_1A4EA0E:       Call 0.Method_Proc_126_88_1A505FC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4EA28:       If (var_8A > CVar(var_96)) Then
  loc_1A4EA5D:         Set var_130 = Me.LblDummy
  loc_1A4EA63:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4EA74:         Me.LblDummy.Load var_134
  loc_1A4EA87:       End If
  loc_1A4EAB8:       Set var_130 = Me.TxtPer
  loc_1A4EABE:       Call 0.Method_Proc_126_88_1A505FC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4EAD8:       If (var_134 > CVar(var_96)) Then
  loc_1A4EB0D:         Set var_130 = Me.TxtPer
  loc_1A4EB13:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4EB24:         Me.TxtPer.Load var_134
  loc_1A4EB37:       End If
  loc_1A4EB6F:       Set var_130 = Me.TxtPer
  loc_1A4EB75:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4EB7D:       var_134.TabIndex = (var_8A + 1)
  loc_1A4EB96:       var_8A = (var_8A + 1)
  loc_1A4EBDA:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4EC1A:       Set var_138 = Me.TxtPer
  loc_1A4EC20:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A4EC28:       var_17C.Visible = var_8A
  loc_1A4EC87:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4ECE6:         var_104 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4ECEF:         Set var_180 = Me.TxtPer
  loc_1A4ECF5:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(True), var_184)
  loc_1A4ED37:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4ED40:         Set var_130 = Me.TxtPer
  loc_1A4ED46:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_134)
  loc_1A4ED6A:         Set var_194 = Me.TxtPer
  loc_1A4ED70:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_198)
  loc_1A4ED78:         var_198.Top = ((var_134.Top + var_184.Height) + CDbl(&HF))
  loc_1A4EDA1:       End If
  loc_1A4EDDD:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4EE3C:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4EE45:         Set var_130 = Me.TxtPer
  loc_1A4EE4B:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_134)
  loc_1A4EE66:         Set var_180 = Me.TxtPer
  loc_1A4EE6C:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4EE74:         var_184.Left = var_134.Left
  loc_1A4EE93:       End If
  loc_1A4EEF0:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4EF3D:       Set var_180 = Me.TxtPer
  loc_1A4EF43:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A4EF4B:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A4EFBE:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4EFD3:       Set var_138 = Me.TxtPer
  loc_1A4EFD9:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4EFE1:       var_17C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A4F038:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4F06F:         Set var_130 = Me.TxtPer
  loc_1A4F075:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F07D:         var_134.FontBold = True
  loc_1A4F093:       Else
  loc_1A4F0C7:         Set var_130 = Me.TxtPer
  loc_1A4F0CD:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F0D5:         var_134.FontBold = False
  loc_1A4F0E8:       End If
  loc_1A4F121:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4F158:         Set var_130 = Me.TxtPer
  loc_1A4F15E:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F166:         var_134.Enabled = False
  loc_1A4F17C:       Else
  loc_1A4F1B0:         Set var_130 = Me.TxtPer
  loc_1A4F1B6:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F1BE:         var_134.Enabled = True
  loc_1A4F1D1:       End If
  loc_1A4F1D5:       Set var_90 = Me.TopCtrl1
  loc_1A4F1DB:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_134)
  loc_1A4F1F0:       If ( = "Browse") Then
  loc_1A4F227:         Set var_130 = Me.TxtPer
  loc_1A4F22D:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F235:         var_134.Enabled = False
  loc_1A4F248:       End If
  loc_1A4F284:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A4F2BB:         Set var_130 = Me.TxtPer
  loc_1A4F2C1:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F2C9:         var_134.Enabled = False
  loc_1A4F2DC:       End If
  loc_1A4F30D:       Set var_130 = Me.LblCap
  loc_1A4F313:       Call 0.Method_Proc_126_88_1A505FC8 (var_96)
  loc_1A4F32D:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A4F362:         Set var_130 = Me.LblCap
  loc_1A4F368:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4F379:         Me.LblCap.Load var_134
  loc_1A4F38C:       End If
  loc_1A4F3C0:       Set var_130 = Me.LblCap
  loc_1A4F3C6:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F3CE:       var_134.Visible = True
  loc_1A4F43D:       Set var_130 = Me.TxtPer
  loc_1A4F443:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F45E:       Set var_180 = Me.LblCap
  loc_1A4F464:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4F46C:       var_184.Top = var_134.Top
  loc_1A4F4C7:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4F50B:         var_17C = var_88.Fields.Item("SNo")
  loc_1A4F526:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4F52F:         Set var_130 = Me.LblCap
  loc_1A4F535:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F550:         Set var_180 = Me.LblCap
  loc_1A4F556:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A4F55E:         var_184.Left = var_134.Left
  loc_1A4F57D:       End If
  loc_1A4F5DD:       Set var_138 = Me.LblCap
  loc_1A4F5E3:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_17C)
  loc_1A4F5EB:       var_17C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A4F669:       Set var_138 = Me.LblCap
  loc_1A4F66F:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_17C)
  loc_1A4F677:       var_17C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A4F6E0:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4F6F5:       Set var_138 = Me.LblDummy
  loc_1A4F6FB:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4F703:       var_17C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A4F75A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4F791:         Set var_130 = Me.LblCap
  loc_1A4F797:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F79F:         var_134.FontBold = True
  loc_1A4F7B5:       Else
  loc_1A4F7E9:         Set var_130 = Me.LblCap
  loc_1A4F7EF:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F7F7:         var_134.FontBold = False
  loc_1A4F80A:       End If
  loc_1A4F83B:       Set var_130 = Me.LblAt
  loc_1A4F841:       Call 0.Method_Proc_126_88_1A505FC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4F85B:       If (var_134 > CVar(var_96)) Then
  loc_1A4F890:         Set var_130 = Me.LblAt
  loc_1A4F896:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4F8A7:         Me.LblAt.Load var_134
  loc_1A4F8BA:       End If
  loc_1A4F8FB:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4F93B:       Set var_138 = Me.LblAt
  loc_1A4F941:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4F949:       var_17C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A4F9AD:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4F9C8:       Set var_130 = Me.TxtPer
  loc_1A4F9CE:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F9E9:       Set var_180 = Me.LblAt
  loc_1A4F9EF:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A4F9F7:       var_184.Top = var_134.Top
  loc_1A4FA4F:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4FA86:         Set var_130 = Me.LblAt
  loc_1A4FA8C:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4FA94:         var_134.FontBold = True
  loc_1A4FAAA:       Else
  loc_1A4FADE:         Set var_130 = Me.LblAt
  loc_1A4FAE4:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4FAEC:         var_134.FontBold = False
  loc_1A4FAFF:       End If
  loc_1A4FB4A:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4FB5F:       Set var_138 = Me.LblAt
  loc_1A4FB65:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A4FB6D:       var_17C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A4FBC7:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4FC26:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4FC2F:         Set var_130 = Me.LblAt
  loc_1A4FC35:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("RoundOff").Value), var_134)
  loc_1A4FC50:         Set var_180 = Me.LblAt
  loc_1A4FC56:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4FC5E:         var_184.Left = var_134.Left
  loc_1A4FC7D:       End If
  loc_1A4FCAE:       Set var_130 = Me.TxtGt
  loc_1A4FCB4:       Call 0.Method_Proc_126_88_1A505FC8 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4FCCE:       If (var_134 > CVar(var_96)) Then
  loc_1A4FD03:         Set var_130 = Me.TxtGt
  loc_1A4FD09:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4FD1A:         Me.TxtGt.Load var_134
  loc_1A4FD2D:       End If
  loc_1A4FD65:       Set var_130 = Me.TxtGt
  loc_1A4FD6B:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4FD73:       var_134.TabIndex = (var_8A + 1)
  loc_1A4FD8C:       var_8A = (var_8A + 1)
  loc_1A4FDC3:       Set var_130 = Me.TxtGt
  loc_1A4FDC9:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134, &HFF)
  loc_1A4FDD1:       var_134.Visible = var_8A
  loc_1A4FE40:       Set var_130 = Me.TxtPer
  loc_1A4FE46:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4FE61:       Set var_180 = Me.TxtGt
  loc_1A4FE67:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4FE6F:       var_184.Top = var_134.Top
  loc_1A4FECA:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4FF29:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4FF32:         Set var_130 = Me.TxtGt
  loc_1A4FF38:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4FF53:         Set var_180 = Me.TxtGt
  loc_1A4FF59:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4FF61:         var_184.Left = var_134.Left
  loc_1A4FF80:       End If
  loc_1A4FFDD:       var_17C = var_88.Fields.Item("SNo")
  loc_1A5002A:       Set var_180 = Me.TxtGt
  loc_1A50030:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_17C.Value), var_184)
  loc_1A50038:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A500A8:       var_134 = var_88.Fields.Item("SNo")
  loc_1A500BD:       Set var_138 = Me.TxtGt
  loc_1A500C3:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_134.Value), var_17C)
  loc_1A500CB:       var_17C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A50120:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A50157:         Set var_130 = Me.TxtGt
  loc_1A5015D:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A50165:         var_134.FontBold = True
  loc_1A5017B:       Else
  loc_1A501AF:         Set var_130 = Me.TxtGt
  loc_1A501B5:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A501BD:         var_134.FontBold = False
  loc_1A501D0:       End If
  loc_1A50209:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A50240:         Set var_130 = Me.TxtGt
  loc_1A50246:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A5024E:         var_134.Enabled = False
  loc_1A50264:       Else
  loc_1A50298:         Set var_130 = Me.TxtGt
  loc_1A5029E:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A502A6:         var_134.Enabled = True
  loc_1A502B9:       End If
  loc_1A502EE:       Set var_130 = Me.LblCap
  loc_1A502F4:       Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A5031A:       If (var_134.Tag = "SROFF") Then
  loc_1A50351:         Set var_130 = Me.TxtGt
  loc_1A50357:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A5035F:         var_134.Enabled = False
  loc_1A50372:       End If
  loc_1A50376:       Set var_90 = Me.TopCtrl1
  loc_1A5037C:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_134)
  loc_1A50391:       If ( = "Browse") Then
  loc_1A503C8:         Set var_130 = Me.TxtGt
  loc_1A503CE:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A503D6:         var_134.Enabled = False
  loc_1A503E9:       End If
  loc_1A50425:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A50447:         var_94 = var_88.Fields.Item("SNo")
  loc_1A5045C:         Set var_130 = Me.TxtGt
  loc_1A50462:         Call 0.Method_Proc_126_88_1A505FC0 (CInt(var_94.Value), var_134)
  loc_1A5046A:         var_134.Enabled = False
  loc_1A5047D:       End If
  loc_1A5047D:     End If
  loc_1A50480:     var_88.MoveNext
  loc_1A50485:     GoTo loc_1A4E986
  loc_1A50488:   End If
  loc_1A50488: End If
  loc_1A50499: Set var_90 = Me.Txt
  loc_1A5049F: Call 0.Method_Proc_126_88_1A505FC0 (CInt(&HF), var_94)
  loc_1A504A7: var_94.TabIndex = (var_8A + 1)
  loc_1A504C4: Set var_90 = Me.Txt
  loc_1A504CA: Call 0.Method_Proc_126_88_1A505FC0 (CInt(&HE), var_94)
  loc_1A504D2: var_94.TabIndex = (var_8A + 2)
  loc_1A504EF: Set var_90 = Me.Txt
  loc_1A504F5: Call 0.Method_Proc_126_88_1A505FC0 (CInt(&HD), var_94)
  loc_1A504FD: var_94.TabIndex = (var_8A + 3)
  loc_1A50519: Me.Command1.TabIndex = (var_8A + 3)
  loc_1A50532: Set var_90 = Me.Txt
  loc_1A50538: Call 0.Method_Proc_126_88_1A505FC0 (CInt(8), var_94)
  loc_1A50540: var_94.TabIndex = (var_8A + 4)
  loc_1A5055D: Set var_90 = Me.Txt
  loc_1A50563: Call 0.Method_Proc_126_88_1A505FC0 (CInt(9), var_94)
  loc_1A5056B: var_94.TabIndex = (var_8A + 5)
  loc_1A50588: Set var_90 = Me.Txt
  loc_1A5058E: Call 0.Method_Proc_126_88_1A505FC0 (CInt(&HA), var_94)
  loc_1A50596: var_94.TabIndex = (var_8A + 6)
  loc_1A505B3: Set var_90 = Me.Txt
  loc_1A505B9: Call 0.Method_Proc_126_88_1A505FC0 (CInt(&HB), var_94)
  loc_1A505C1: var_94.TabIndex = (var_8A + 7)
  loc_1A505DE: Set var_90 = Me.Txt
  loc_1A505E4: Call 0.Method_Proc_126_88_1A505FC0 (CInt(&HC), var_94)
  loc_1A505EC: var_94.TabIndex = (var_8A + 8)
  loc_1A505F8: Exit Sub
End Sub

Public Sub Proc_126_89_164D58C(arg_C) '164D58C
  'Data Table: 55BCF4
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_AC As String
  Dim var_26C As Double
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_F0 As Variant
  Dim var_274 As Double
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_12C As Variant
  Dim var_1B0 As String
  Dim var_27C As Double
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_1D0 As Variant
  Dim var_250 As Variant
  Dim var_280 As TextBox
  Dim var_1C0 As Variant
  Dim var_90 As Double
  Dim var_264 As Variant
  Dim var_298 As Double
  Dim var_1F0 As Variant
  Dim var_2B0 As TextBox
  Dim var_2B8 As TextBox
  Dim var_2C0 As TextBox
  loc_164BF58: Set var_9C = Me.TxtGt
  loc_164BF5E: Call 0.Method_Proc_126_89_164D58C8 (var_9E, var_86)
  loc_164BF69: For var_A2 =  To var_9E: 1 = var_A2 'Integer
  loc_164BF7C:   Set var_9C = Me.TxtGt
  loc_164BF82:   Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164BF8A:   var_A8.Text = vbNullString
  loc_164BFA3:   Set var_9C = Me.LblCap
  loc_164BFA9:   Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164BFD3:   If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_164BFDB:     var_92 = CByte(var_86) 'Byte
  loc_164BFDF:   End If
  loc_164BFEC:   Set var_9C = Me.LblCap
  loc_164BFF2:   Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164C01C:   If (var_A8.Tag = MemVar_1F92070 & "ST") Then
  loc_164C024:     var_94 = CByte(var_86) 'Byte
  loc_164C02E:     global_136 = var_86
  loc_164C031:   End If
  loc_164C034: Next var_A2 'Integer
  loc_164C04C: Me.FGCat.Rows = 1
  loc_164C058: Set var_9C = Me.TopCtrl1
  loc_164C05E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_164C073: If ( = "Add") Then
  loc_164C076:   Call Proc_126_94_DFDDC0()
  loc_164C07B: End If
  loc_164C087: Set var_9C = Me.TxtGt
  loc_164C08D: Call 0.Method_Proc_126_89_164D58C8 (var_9E, var_86)
  loc_164C098: For var_F4 =  To var_9E: 2 = var_F4 'Integer
  loc_164C0AB:   Set var_9C = Me.LblCap
  loc_164C0B1:   Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164C0DB:   If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_164C0EB:     Set var_9C = Me.TxtGt
  loc_164C0F1:     Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164C0F9:     var_A8.Text = vbNullString
  loc_164C10F:     If (var_94 > var_92) Then
  loc_164C137:       For var_F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_F8 'Integer
  loc_164C14A:         Set var_9C = Me.LblCap
  loc_164C150:         Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164C17A:         If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_164C181:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C189:           var_108 = CVar(CLng(&HD)) 'Long
  loc_164C1A3:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164C1B4:           If (var_AC = "Y") Then
  loc_164C1BB:             var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C1D5:             Set var_9C = Me.TxtPer
  loc_164C1DB:             Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_164C1E3:             var_C0 = var_A8.Text
  loc_164C1F2:             var_E0 = CVar(CStr(Val(var_AC))) 'String
  loc_164C1FA:             Set var_12C = Me.FGrid
  loc_164C200:             LateIdCallSt
  loc_164C217:           End If
  loc_164C217:         End If
  loc_164C21B:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C223:         var_108 = CVar(CLng(3)) 'Long
  loc_164C24C:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164C254:         var_14C = CVar(CLng(4)) 'Long
  loc_164C27D:         var_16C = CVar(CLng(var_88)) 'Long
  loc_164C285:         var_18C = CVar(CLng(&HB)) 'Long
  loc_164C2AE:         var_210 = CVar(CLng(var_88)) 'Long
  loc_164C2B6:         var_230 = CVar(CLng(&HC)) 'Long
  loc_164C2DF:         var_1D0 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_164C2EF:         var_250 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_164C2F7:         Set var_264 = Me.FGrid
  loc_164C2FD:         LateIdCallSt
  loc_164C32E:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164C336:         var_14C = CVar(CLng(3)) 'Long
  loc_164C35F:         var_16C = CVar(CLng(var_88)) 'Long
  loc_164C367:         var_18C = CVar(CLng(5)) 'Long
  loc_164C370:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C378:         var_108 = CVar(CLng(4)) 'Long
  loc_164C3A8:         Set var_12C = Me.FGrid
  loc_164C3AE:         LateIdCallSt
  loc_164C3DB:         var_108 = CVar(CLng(5)) 'Long
  loc_164C40C:         Set var_A8 = Me.LblDummy
  loc_164C412:         Call 0.Method_Proc_126_89_164D58C0 (var_86, var_12C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_108, CVar(CLng(var_88)), var_12C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_164C41A:         var_12C.Caption = var_108
  loc_164C436:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C43E:         var_108 = CVar(CLng(5)) 'Long
  loc_164C458:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164C467:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164C46F:         var_14C = CVar(CLng(&HC)) 'Long
  loc_164C478:         Set var_A8 = Me.FGrid
  loc_164C498:         var_16C = CVar(CLng(var_88)) 'Long
  loc_164C4A0:         var_18C = CVar(CLng(7)) 'Long
  loc_164C4C2:         var_27C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164C4D1:         var_230 = CVar(CLng(8)) 'Long
  loc_164C4F6:         var_1D0 = CVar(((Val(var_AC) - Val(CStr(var_A8.TextMatrix)))) + var_27C)) 'Double
  loc_164C514:         LateIdCallSt
  loc_164C54E:         Set var_9C = Me.LblCap
  loc_164C554:         Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(var_1D0, "0.00"))), 1, 1)
  loc_164C55C:         var_230 = var_A8.Tag
  loc_164C57E:         If (var_AC = MemVar_1F92070 & "DIS") Then
  loc_164C58E:           Set var_9C = Me.TxtGt
  loc_164C594:           Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_27C)
  loc_164C59C:           var_18C = var_A8.Text
  loc_164C5B0:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C5DA:           var_274 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164C5F9:           var_F0 = CVar((Val(var_AC) + var_274)) 'Double
  loc_164C616:           Set var_264 = Me.TxtGt
  loc_164C61C:           Call 0.Method_Proc_126_89_164D58C0 (var_86, var_280, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_274)
  loc_164C624:           var_280.Text = CVar(CLng(&HC))
  loc_164C64A:         End If
  loc_164C64D:       Next var_F8 'Integer
  loc_164C655:     Else
  loc_164C67A:       For var_284 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_284 'Integer
  loc_164C68D:         Set var_9C = Me.LblCap
  loc_164C693:         Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164C6BD:         If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_164C6C4:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C6CC:           var_108 = CVar(CLng(&HD)) 'Long
  loc_164C6E6:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164C6F7:           If (var_AC = "Y") Then
  loc_164C6FE:             var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C718:             Set var_9C = Me.TxtPer
  loc_164C71E:             Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_164C726:             var_C0 = var_A8.Text
  loc_164C735:             var_E0 = CVar(CStr(Val(var_AC))) 'String
  loc_164C73D:             Set var_12C = Me.FGrid
  loc_164C743:             LateIdCallSt
  loc_164C75A:           End If
  loc_164C75A:         End If
  loc_164C797:         Set var_A8 = Me.LblDummy
  loc_164C79D:         Call 0.Method_Proc_126_89_164D58C0 (var_86, var_12C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_164C7A5:         var_12C.Caption = var_12C
  loc_164C7C1:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C7C9:         var_108 = CVar(CLng(5)) 'Long
  loc_164C7E3:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164C7F2:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164C7FA:         var_14C = CVar(CLng(&HB)) 'Long
  loc_164C803:         Set var_A8 = Me.FGrid
  loc_164C81C:         var_274 = Val(CStr(var_A8.TextMatrix)))
  loc_164C82B:         var_1C0 = CVar(CLng(&HC)) 'Long
  loc_164C86E:         LateIdCallSt
  loc_164C8A2:         Set var_9C = Me.LblCap
  loc_164C8A8:         Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_AC) * var_274) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_164C8B0:         var_1C0 = var_A8.Tag
  loc_164C8D2:         If (var_AC = MemVar_1F92070 & "DIS") Then
  loc_164C8E2:           Set var_9C = Me.TxtGt
  loc_164C8E8:           Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_274)
  loc_164C8F0:           var_14C = var_A8.Text
  loc_164C8FD:           var_26C = Val(var_AC)
  loc_164C904:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164C92E:           var_274 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164C94D:           var_F0 = CVar((var_26C + var_274)) 'Double
  loc_164C96A:           Set var_264 = Me.TxtGt
  loc_164C970:           Call 0.Method_Proc_126_89_164D58C0 (var_86, var_280, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_274)
  loc_164C978:           var_280.Text = CVar(CLng(&HC))
  loc_164C99E:         End If
  loc_164C9A1:       Next var_284 'Integer
  loc_164C9A6:     End If
  loc_164C9A9:   Else
  loc_164C9B6:     Set var_9C = Me.TxtPer
  loc_164C9BC:     Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164C9C4:     var_9E = var_A8.Visible
  loc_164C9D6:     If (var_9E = &HFF) Then
  loc_164C9DF:       Call Proc_126_91_1033230(var_86)
  loc_164C9E7:       var_90 = var_26C
  loc_164C9F7:       Set var_9C = Me.TxtPer
  loc_164C9FD:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC)
  loc_164CA05:       var_90 = var_A8.Text
  loc_164CA12:       var_26C = Val(var_AC)
  loc_164CA52:       Set var_12C = Me.TxtGt
  loc_164CA58:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_264, CStr(Format(CVar(((var_90 * var_26C) / CDbl(&H64))), "0.00")), 1)
  loc_164CA60:       var_264.Text = 1
  loc_164CA92:       Set var_9C = Me.LblDummy
  loc_164CA98:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, CStr(var_90))
  loc_164CAA0:       var_A8.Caption = var_26C
  loc_164CAAF:     End If
  loc_164CAAF:   End If
  loc_164CAB2: Next var_F4 'Integer
  loc_164CADC: For var_288 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_288 'Integer
  loc_164CAE6:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_164CAEE:   var_108 = CVar(CLng(3)) 'Long
  loc_164CB08:   var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164CB17:   var_128 = CVar(CLng(var_86)) 'Long
  loc_164CB1F:   var_14C = CVar(CLng(4)) 'Long
  loc_164CB28:   Set var_A8 = Me.FGrid
  loc_164CB48:   var_18C = CVar(CLng(var_86)) 'Long
  loc_164CB50:   var_1C0 = CVar(CLng(5)) 'Long
  loc_164CB8F:   LateIdCallSt
  loc_164CBC2:   Set var_9C = Me.TxtGt
  loc_164CBC8:   Call 0.Method_Proc_126_89_164D58C0 (1, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar((Val(var_AC) * Val(CStr(var_A8.TextMatrix))))), "0.00"))), 1, 1)
  loc_164CBD0:   var_1C0 = var_A8.Text
  loc_164CBDD:   var_26C = Val(var_AC)
  loc_164CC0E:   var_274 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164CC2D:   var_F0 = CVar((var_26C + var_274)) 'Double
  loc_164CC49:   Set var_264 = Me.TxtGt
  loc_164CC4F:   Call 0.Method_Proc_126_89_164D58C0 (1, var_280, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_274, CVar(CLng(5)))
  loc_164CC57:   var_280.Text = CVar(CLng(var_86))
  loc_164CC80: Next var_288 'Integer
  loc_164CC98: Me.FGCat.Rows = 1
  loc_164CCC5: For var_28C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_28C 'Integer
  loc_164CCD5:   If (var_94 > var_92) Then
  loc_164CCDC:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_164CCE4:     var_108 = CVar(CLng(&H10)) 'Long
  loc_164CD03:     var_128 = CVar(CLng(var_86)) 'Long
  loc_164CD0B:     var_14C = CVar(CLng(4)) 'Long
  loc_164CD34:     var_16C = CVar(CLng(var_86)) 'Long
  loc_164CD3C:     var_18C = CVar(CLng(3)) 'Long
  loc_164CD76:     Set var_264 = Me.FGrid
  loc_164CD8F:     var_298 = Val(CStr(var_264.TextMatrix)))
  loc_164CDB2:     var_1F0 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_298)) 'Double
  loc_164CDD1:     Call Proc_126_95_163586C(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_298, CVar(CLng(&HC)), CVar(CLng(var_86)))
  loc_164CE00:   Else
  loc_164CE04:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_164CE0C:     var_108 = CVar(CLng(&H10)) 'Long
  loc_164CE2B:     var_128 = CVar(CLng(var_86)) 'Long
  loc_164CE33:     var_14C = CVar(CLng(4)) 'Long
  loc_164CE3C:     Set var_A8 = Me.FGrid
  loc_164CE86:     var_27C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164CEC4:     Call Proc_126_95_163586C(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(var_A8.TextMatrix))) * var_27C)), "0.00")), 1, 1, var_27C, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_164CEEA:   End If
  loc_164CEED: Next var_28C 'Integer
  loc_164CEF6: Set var_9C = Me.TopCtrl1
  loc_164CEFC: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_164CF11: If ( = "Add") Then
  loc_164CF20:   Set var_9C = Me.TxtGt
  loc_164CF26:   Call 0.Method_Proc_126_89_164D58C8 (var_9E, var_86)
  loc_164CF31:   For var_29C =  To var_9E: 2 = var_29C 'Integer
  loc_164CF44:     Set var_9C = Me.TxtPer
  loc_164CF4A:     Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164CF52:     var_9E = var_A8.Visible
  loc_164CF6A:     Set var_12C = Me.LblCap
  loc_164CF70:     Call 0.Method_Proc_126_89_164D58C0 (var_86, var_264)
  loc_164CF78:     var_AC = var_264.Tag
  loc_164CF9F:     If ((var_9E = &HFF) And (var_AC = MemVar_1F92070 & "SCH")) Then
  loc_164CFA8:       Call Proc_126_91_1033230(var_86)
  loc_164CFB0:       var_90 = var_26C
  loc_164CFC0:       Set var_9C = Me.TxtPer
  loc_164CFC6:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC)
  loc_164CFCE:       var_90 = var_A8.Text
  loc_164CFDB:       var_26C = Val(var_AC)
  loc_164D01B:       Set var_12C = Me.TxtGt
  loc_164D021:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_264, CStr(Format(CVar(((var_90 * var_26C) / CDbl(&H64))), "0.00")), 1)
  loc_164D029:       var_264.Text = 1
  loc_164D05B:       Set var_9C = Me.LblDummy
  loc_164D061:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, CStr(var_90))
  loc_164D069:       var_A8.Caption = var_26C
  loc_164D078:     End If
  loc_164D07B:   Next var_29C 'Integer
  loc_164D080: End If
  loc_164D09F: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_164D0B5:   Me.FGCat.FixedRows = 1
  loc_164D0BD: End If
  loc_164D0EB: For var_2A0 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2A0 'Integer
  loc_164D0FD:   Set var_9C = Me.TxtGt
  loc_164D103:   Call 0.Method_Proc_126_89_164D58C8 (var_9E, var_86, 1)
  loc_164D10E:   For var_2A4 = CDbl(0) To var_9E: 0 = var_2A4 'Integer
  loc_164D121:     Set var_9C = Me.LblDummy
  loc_164D127:     Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164D12F:     var_AC = var_A8.Tag
  loc_164D13B:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D175:     If (CVar(CLng(2)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_164D185:       Set var_9C = Me.TxtGt
  loc_164D18B:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC)
  loc_164D193:       var_C0 = var_A8.Text
  loc_164D1A0:       var_26C = Val(var_AC)
  loc_164D1A7:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D1D1:       var_274 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_164D1F0:       var_F0 = CVar((var_26C + var_274)) 'Double
  loc_164D1FF:       var_1B0 = CStr(Format("0.00", "0.00"))
  loc_164D20D:       Set var_264 = Me.TxtGt
  loc_164D213:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_280, var_1B0, 1, 1, var_274)
  loc_164D21B:       var_280.Text = CVar(CLng(6))
  loc_164D241:     End If
  loc_164D244:   Next var_2A4 'Integer
  loc_164D24C: Next var_2A0 'Integer
  loc_164D25D: Set var_9C = Me.TxtGt
  loc_164D263: Call 0.Method_Proc_126_89_164D58C8 (var_9E, var_86)
  loc_164D26E: For var_2A8 =  To var_9E: 2 = var_2A8 'Integer
  loc_164D281:   Set var_9C = Me.LblCap
  loc_164D287:   Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8)
  loc_164D2B1:   If (var_A8.Tag = MemVar_1F92070 & "ROFF") Then
  loc_164D2BA:     Call Proc_126_91_1033230(var_86)
  loc_164D2C2:     var_90 = var_26C
  loc_164D2D7:     Set var_9C = Me.LblDummy
  loc_164D2DD:     Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, CStr(var_90))
  loc_164D2E5:     var_A8.Caption = var_90
  loc_164D2FD:     var_AC = "U"
  loc_164D30E:     Proc_6_142_14A55B0(var_90, CByte(0), var_AC)
  loc_164D34B:     Set var_9C = Me.TxtGt
  loc_164D351:     Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, CStr(Format(CVar(2), "0.00")), 1)
  loc_164D359:     var_A8.Text = 1
  loc_164D378:   Else
  loc_164D37F:     If (var_86 <> arg_C) Then
  loc_164D38F:       Set var_9C = Me.LblCap
  loc_164D395:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, var_AC)
  loc_164D39D:       var_26C = var_A8.Tag
  loc_164D3BE:       Set var_12C = Me.LblCap
  loc_164D3C4:       Call 0.Method_Proc_126_89_164D58C0 (var_86, var_264, var_1B0)
  loc_164D3CC:       (var_AC = MemVar_1F92070 & "TOT") = var_264.Tag
  loc_164D3F7:       If (var_26C Or (var_1B0 = MemVar_1F92070 & "NET")) Then
  loc_164D400:         Call Proc_126_91_1033230(var_86)
  loc_164D43A:         Set var_9C = Me.TxtGt
  loc_164D440:         Call 0.Method_Proc_126_89_164D58C0 (var_86, var_A8, CStr(Format(CVar(var_26C), "0.00")))
  loc_164D448:         var_A8.Text = 1
  loc_164D460:       End If
  loc_164D460:     End If
  loc_164D460:   End If
  loc_164D463: Next var_2A8 'Integer
  loc_164D46F: Set var_9C = Me.TxtGt
  loc_164D475: Call 0.Method_Proc_126_89_164D58C8 (var_9E)
  loc_164D487: Set var_A8 = Me.TxtGt
  loc_164D48D: Call 0.Method_Proc_126_89_164D58C0 (var_9E, var_12C)
  loc_164D4AC: Set var_264 = Me.TextGt
  loc_164D4B2: Call 0.Method_Proc_126_89_164D58C8 (var_2AA)
  loc_164D4C4: Set var_280 = Me.TextGt
  loc_164D4CA: Call 0.Method_Proc_126_89_164D58C0 (var_2AA, var_2B0)
  loc_164D4DF: var_274 = Val(var_2B0.Text)
  loc_164D4F0: Set var_2B4 = Me.Txt
  loc_164D4F6: Call 0.Method_Proc_126_89_164D58C0 (CInt(8), var_2B8, var_1B0)
  loc_164D52E: var_E0 = CVar(((Val(var_12C.Text) + var_2B8.Text) - Val(var_1B0))) 'Double
  loc_164D54C: Set var_2BC = Me.Txt
  loc_164D552: Call 0.Method_Proc_126_89_164D58C0 (CInt(&H14), var_2C0, CStr(Format(CVar(Val(var_12C.Text)), "0.00")), 1)
  loc_164D55A: var_2C0.Text = 1
  loc_164D58A: Exit Sub
End Sub

Public Sub Proc_126_90_14ABF5C(arg_C) '14ABF5C
  'Data Table: 55BCF4
  Dim var_A0 As Variant
  Dim var_114 As Double
  Dim var_AC As Variant
  Dim var_11C As Double
  Dim var_D0 As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_C0 As Variant
  Dim var_138 As Variant
  Dim var_A8 As Variant
  Dim var_F0 As Variant
  Dim var_104 As TextBox
  Dim var_90 As Double
  Dim var_A4 As String
  Dim var_9C As MSHFlexGrid
  Dim var_198 As TextBox
  Dim var_1A0 As TextBox
  loc_14AB2AA: Set var_9C = Me.Txt
  loc_14AB2B0: Call 0.Method_Proc_126_90_14ABF5C0 (CInt(&H11), var_A0)
  loc_14AB2C5: var_114 = Val(var_A0.Text)
  loc_14AB2D6: Set var_A8 = Me.Txt
  loc_14AB2DC: Call 0.Method_Proc_126_90_14ABF5C0 (CInt(&H12), var_AC)
  loc_14AB32C: Set var_104 = Me.TextGt
  loc_14AB332: Call 0.Method_Proc_126_90_14ABF5C0 (1, var_108, CStr(Format(CVar((var_114 * Val(var_AC.Text))), "0.00")), 1)
  loc_14AB33A: var_108.Text = 1
  loc_14AB36C: Set var_9C = Me.TextGt
  loc_14AB372: Call 0.Method_Proc_126_90_14ABF5C8 (var_11E, var_86, 1)
  loc_14AB37D: For var_122 = var_114 To var_11E: var_11C = var_122 'Integer
  loc_14AB390:   Set var_9C = Me.LableCap
  loc_14AB396:   Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB3C0:   If (var_A0.Tag = MemVar_1F92070 & "DIS") Then
  loc_14AB3C8:     var_92 = CByte(var_86) 'Byte
  loc_14AB3CC:   End If
  loc_14AB3D9:   Set var_9C = Me.LableCap
  loc_14AB3DF:   Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB409:   If (var_A0.Tag = MemVar_1F92070 & "ST") Then
  loc_14AB411:     var_94 = CByte(var_86) 'Byte
  loc_14AB41B:     global_136 = var_86
  loc_14AB41E:   End If
  loc_14AB421: Next var_122 'Integer
  loc_14AB432: Set var_9C = Me.TextGt
  loc_14AB438: Call 0.Method_Proc_126_90_14ABF5C8 (var_11E, var_86)
  loc_14AB443: For var_126 =  To var_11E: 2 = var_126 'Integer
  loc_14AB456:   Set var_9C = Me.LableCap
  loc_14AB45C:   Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB486:   If (var_A0.Tag = MemVar_1F92070 & "DIS") Then
  loc_14AB493:     If (var_94 > var_92) Then
  loc_14AB4A3:       Set var_9C = Me.LableCap
  loc_14AB4A9:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB4D3:       If (var_A0.Tag = MemVar_1F92070 & "DIS") Then
  loc_14AB4E3:         Set var_9C = Me.TextGt
  loc_14AB4E9:         Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB4F1:         var_A4 = var_A0.Text
  loc_14AB536:         Set var_A8 = Me.TextGt
  loc_14AB53C:         Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_AC, CStr(Format(CVar(Val(var_A4)), "0.00")))
  loc_14AB544:         var_AC.Text = 1
  loc_14AB564:       End If
  loc_14AB567:     Else
  loc_14AB574:       Set var_9C = Me.LableCap
  loc_14AB57A:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_A4)
  loc_14AB582:       1 = var_A0.Tag
  loc_14AB5A4:       If (var_A4 = MemVar_1F92070 & "DIS") Then
  loc_14AB5B4:         Set var_9C = Me.TextGt
  loc_14AB5BA:         Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB5C2:         var_A4 = var_A0.Text
  loc_14AB5CF:         var_114 = Val(var_A4)
  loc_14AB5D6:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14AB5DE:         var_138 = CVar(CLng(&HC)) 'Long
  loc_14AB600:         var_11C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AB61F:         var_F0 = CVar((var_114 + var_11C)) 'Double
  loc_14AB63C:         Set var_AC = Me.TextGt
  loc_14AB642:         Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_104, CStr(Format("0.00", "0.00")), 1, 1)
  loc_14AB64A:         var_104.Text = var_11C
  loc_14AB670:       End If
  loc_14AB670:     End If
  loc_14AB673:   Else
  loc_14AB680:     Set var_9C = Me.TextPer
  loc_14AB686:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_11E, var_138)
  loc_14AB68E:     var_C0 = var_A0.Visible
  loc_14AB6A0:     If (var_11E = &HFF) Then
  loc_14AB6A9:       Call Proc_126_92_10339D4(var_86, var_114)
  loc_14AB6B1:       var_90 = var_114
  loc_14AB6C1:       Set var_9C = Me.TextPer
  loc_14AB6C7:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_A4)
  loc_14AB6CF:       var_90 = var_A0.Text
  loc_14AB6DC:       var_114 = Val(var_A4)
  loc_14AB71C:       Set var_A8 = Me.TextGt
  loc_14AB722:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14AB72A:       var_AC.Text = 1
  loc_14AB75C:       Set var_9C = Me.LableDummy
  loc_14AB762:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, CStr(var_90))
  loc_14AB76A:       var_A0.Caption = var_114
  loc_14AB779:     End If
  loc_14AB779:   End If
  loc_14AB77C: Next var_126 'Integer
  loc_14AB785: Set var_9C = Me.TopCtrl1
  loc_14AB78B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_14AB7A0: If ( = "Add") Then
  loc_14AB7AF:   Set var_9C = Me.TextGt
  loc_14AB7B5:   Call 0.Method_Proc_126_90_14ABF5C8 (var_11E, var_86)
  loc_14AB7C0:   For var_17C =  To var_11E: 2 = var_17C 'Integer
  loc_14AB7D3:     Set var_9C = Me.TextPer
  loc_14AB7D9:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB7F9:     Set var_A8 = Me.LableCap
  loc_14AB7FF:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_AC)
  loc_14AB807:     var_A4 = var_AC.Tag
  loc_14AB82E:     If ((var_A0.Visible = &HFF) And (var_A4 = MemVar_1F92070 & "SCH")) Then
  loc_14AB837:       Call Proc_126_92_10339D4(var_86)
  loc_14AB83F:       var_90 = var_114
  loc_14AB84F:       Set var_9C = Me.TextPer
  loc_14AB855:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_A4)
  loc_14AB85D:       var_90 = var_A0.Text
  loc_14AB86A:       var_114 = Val(var_A4)
  loc_14AB8AA:       Set var_A8 = Me.TextGt
  loc_14AB8B0:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14AB8B8:       var_AC.Text = 1
  loc_14AB8DD:       var_A4 = CStr(var_90)
  loc_14AB8EA:       Set var_9C = Me.LableDummy
  loc_14AB8F0:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_A4)
  loc_14AB8F8:       var_A0.Caption = var_114
  loc_14AB907:     End If
  loc_14AB914:     Set var_9C = Me.TextPer
  loc_14AB91A:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14AB922:     var_11E = var_A0.Visible
  loc_14AB93A:     Set var_A8 = Me.LableCap
  loc_14AB940:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_AC, var_A4)
  loc_14AB948:     (var_11E = &HFF) = var_AC.Tag
  loc_14AB96F:     If (var_114 And (var_A4 = MemVar_1F92070 & "DIS")) Then
  loc_14AB978:       Call Proc_126_92_10339D4(var_86)
  loc_14AB980:       var_90 = var_114
  loc_14AB990:       Set var_9C = Me.TextPer
  loc_14AB996:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_A4)
  loc_14AB99E:       var_90 = var_A0.Text
  loc_14AB9AB:       var_114 = Val(var_A4)
  loc_14AB9EB:       Set var_A8 = Me.TextGt
  loc_14AB9F1:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14AB9F9:       var_AC.Text = 1
  loc_14ABA2B:       Set var_9C = Me.LableDummy
  loc_14ABA31:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, CStr(var_90))
  loc_14ABA39:       var_A0.Caption = var_114
  loc_14ABA48:     End If
  loc_14ABA4B:   Next var_17C 'Integer
  loc_14ABA50: End If
  loc_14ABA6F: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_14ABA85:   Me.FGCat.FixedRows = 1
  loc_14ABA8D: End If
  loc_14ABABB: For var_180 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_180 'Integer
  loc_14ABACD:   Set var_9C = Me.TextGt
  loc_14ABAD3:   Call 0.Method_Proc_126_90_14ABF5C8 (var_11E, var_86, 1)
  loc_14ABADE:   For var_184 = CDbl(0) To var_11E: 0 = var_184 'Integer
  loc_14ABAF1:     Set var_9C = Me.LableDummy
  loc_14ABAF7:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14ABAFF:     var_A4 = var_A0.Tag
  loc_14ABB0B:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_14ABB45:     If (CVar(CLng(2)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_14ABB55:       Set var_9C = Me.TextGt
  loc_14ABB5B:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_A4)
  loc_14ABB63:       var_C0 = var_A0.Text
  loc_14ABB70:       var_114 = Val(var_A4)
  loc_14ABB77:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_14ABBA1:       var_11C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_14ABBC0:       var_F0 = CVar((var_114 + var_11C)) 'Double
  loc_14ABBCF:       var_10C = CStr(Format("0.00", "0.00"))
  loc_14ABBDD:       Set var_AC = Me.TextGt
  loc_14ABBE3:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_104, var_10C, 1, 1, var_11C)
  loc_14ABBEB:       var_104.Text = CVar(CLng(6))
  loc_14ABC11:     End If
  loc_14ABC14:   Next var_184 'Integer
  loc_14ABC1C: Next var_180 'Integer
  loc_14ABC2D: Set var_9C = Me.TextGt
  loc_14ABC33: Call 0.Method_Proc_126_90_14ABF5C8 (var_11E, var_86)
  loc_14ABC3E: For var_188 =  To var_11E: 2 = var_188 'Integer
  loc_14ABC51:   Set var_9C = Me.LableCap
  loc_14ABC57:   Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0)
  loc_14ABC81:   If (var_A0.Tag = MemVar_1F92070 & "ROFF") Then
  loc_14ABC8A:     Call Proc_126_92_10339D4(var_86)
  loc_14ABC92:     var_90 = var_114
  loc_14ABCA7:     Set var_9C = Me.LableDummy
  loc_14ABCAD:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, CStr(var_90))
  loc_14ABCB5:     var_A0.Caption = var_90
  loc_14ABCCD:     var_A4 = "U"
  loc_14ABCDE:     Proc_6_142_14A55B0(var_90, CByte(0), var_A4)
  loc_14ABD1B:     Set var_9C = Me.TextGt
  loc_14ABD21:     Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, CStr(Format(CVar(2), "0.00")), 1)
  loc_14ABD29:     var_A0.Text = 1
  loc_14ABD48:   Else
  loc_14ABD4F:     If (var_86 <> arg_C) Then
  loc_14ABD5F:       Set var_9C = Me.LableCap
  loc_14ABD65:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, var_A4)
  loc_14ABD6D:       var_114 = var_A0.Tag
  loc_14ABD8E:       Set var_A8 = Me.LableCap
  loc_14ABD94:       Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_AC, var_10C)
  loc_14ABD9C:       (var_A4 = MemVar_1F92070 & "TOT") = var_AC.Tag
  loc_14ABDC7:       If (var_114 Or (var_10C = MemVar_1F92070 & "NET")) Then
  loc_14ABDD0:         Call Proc_126_92_10339D4(var_86)
  loc_14ABE0A:         Set var_9C = Me.TextGt
  loc_14ABE10:         Call 0.Method_Proc_126_90_14ABF5C0 (var_86, var_A0, CStr(Format(CVar(var_114), "0.00")))
  loc_14ABE18:         var_A0.Text = 1
  loc_14ABE30:       End If
  loc_14ABE30:     End If
  loc_14ABE30:   End If
  loc_14ABE33: Next var_188 'Integer
  loc_14ABE3F: Set var_9C = Me.TxtGt
  loc_14ABE45: Call 0.Method_Proc_126_90_14ABF5C8 (var_11E)
  loc_14ABE57: Set var_A0 = Me.TxtGt
  loc_14ABE5D: Call 0.Method_Proc_126_90_14ABF5C0 (var_11E, var_A8)
  loc_14ABE7C: Set var_AC = Me.TextGt
  loc_14ABE82: Call 0.Method_Proc_126_90_14ABF5C8 (var_18A)
  loc_14ABE94: Set var_104 = Me.TextGt
  loc_14ABE9A: Call 0.Method_Proc_126_90_14ABF5C0 (var_18A, var_108)
  loc_14ABEAF: var_11C = Val(var_108.Text)
  loc_14ABEC0: Set var_194 = Me.Txt
  loc_14ABEC6: Call 0.Method_Proc_126_90_14ABF5C0 (CInt(8), var_198, var_10C)
  loc_14ABEFE: var_D0 = CVar(((Val(var_A8.Text) + var_198.Text) - Val(var_10C))) 'Double
  loc_14ABF1C: Set var_19C = Me.Txt
  loc_14ABF22: Call 0.Method_Proc_126_90_14ABF5C0 (CInt(&H14), var_1A0, CStr(Format(CVar(Val(var_A8.Text)), "0.00")), 1)
  loc_14ABF2A: var_1A0.Text = 1
  loc_14ABF5A: Exit Sub
End Sub

Public Sub Proc_126_91_1033230(arg_C) '1033230
  'Data Table: 55BCF4
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_1033011: Set var_9C = Me.TxtGt
  loc_1033017: Call 0.Method_Proc_126_91_10332300 (arg_C, var_A0)
  loc_1033036: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_1033051: If (Len(var_90) > 0) Then
  loc_103306C:   var_A4 = CStr(Left(var_90, 1))
  loc_1033086:   Set var_9C = Me.TxtGt
  loc_103308C:   Call 0.Method_Proc_126_91_10332300 (CInt(Val(var_A4)), var_A0)
  loc_1033094:   var_D8 = var_A0.Text
  loc_10330A1:   var_8C = Val(var_D8)
  loc_10330D6:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_10330E0:   ' Referenced from: 1033225
  loc_10330EA:   If (Len(var_90) > 0) Then
  loc_103312D:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1033177:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_103318E:     Set var_9C = Me.TxtGt
  loc_1033194:     Call 0.Method_Proc_126_91_10332300 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_10331A9:     var_E0 = Val(var_A4)
  loc_10331C0:     Set var_F4 = Me.TxtGt
  loc_10331C6:     Call 0.Method_Proc_126_91_10332300 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_10331DC:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_10331EF:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_10331FE:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_1033203:     var_8C = CSng(var_138)
  loc_1033225:     GoTo loc_10330E0
  loc_1033228:   End If
  loc_1033228: End If
  loc_1033228: Proc_126_91_1033230 = var_8C
End Sub

Public Sub Proc_126_92_10339D4(arg_C) '10339D4
  'Data Table: 55BCF4
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_10337B5: Set var_9C = Me.TextGt
  loc_10337BB: Call 0.Method_Proc_126_92_10339D40 (arg_C, var_A0)
  loc_10337DA: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_10337F5: If (Len(var_90) > 0) Then
  loc_1033810:   var_A4 = CStr(Left(var_90, 1))
  loc_103382A:   Set var_9C = Me.TextGt
  loc_1033830:   Call 0.Method_Proc_126_92_10339D40 (CInt(Val(var_A4)), var_A0)
  loc_1033838:   var_D8 = var_A0.Text
  loc_1033845:   var_8C = Val(var_D8)
  loc_103387A:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1033884:   ' Referenced from: 10339C9
  loc_103388E:   If (Len(var_90) > 0) Then
  loc_10338D1:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_103391B:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1033932:     Set var_9C = Me.TextGt
  loc_1033938:     Call 0.Method_Proc_126_92_10339D40 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_103394D:     var_E0 = Val(var_A4)
  loc_1033964:     Set var_F4 = Me.TextGt
  loc_103396A:     Call 0.Method_Proc_126_92_10339D40 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_1033980:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_1033993:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_10339A2:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_10339A7:     var_8C = CSng(var_138)
  loc_10339C9:     GoTo loc_1033884
  loc_10339CC:   End If
  loc_10339CC: End If
  loc_10339CC: Proc_126_92_10339D4 = var_8C
End Sub

Public Sub Proc_126_93_10A5FCC
  'Data Table: 55BCF4
  Dim var_9C As Variant
  loc_10A5D04: Set var_90 = Me.TxtGt
  loc_10A5D0A: Call 0.Method_Proc_126_93_10A5FCC8 (var_92, var_86)
  loc_10A5D15: For var_96 =  To var_92: 1 = var_96 'Integer
  loc_10A5D28:   Set var_90 = Me.LblCap
  loc_10A5D2E:   Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5D4D:   If (var_9C.Tag = "STOT") Then
  loc_10A5D5D:     Set var_90 = Me.TxtGt
  loc_10A5D63:     Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5D6B:     var_9C.Text = vbNullString
  loc_10A5D7A:   Else
  loc_10A5D87:     Set var_90 = Me.LblCap
  loc_10A5D8D:     Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5DAC:     If (var_9C.Tag = "SDIS") Then
  loc_10A5DBC:       Set var_90 = Me.TxtGt
  loc_10A5DC2:       Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5DCA:       var_9C.Text = vbNullString
  loc_10A5DD9:     Else
  loc_10A5DE6:       Set var_90 = Me.LblCap
  loc_10A5DEC:       Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5E0B:       If (var_9C.Tag = "SST") Then
  loc_10A5E1B:         Set var_90 = Me.TxtGt
  loc_10A5E21:         Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5E29:         var_9C.Text = vbNullString
  loc_10A5E38:       Else
  loc_10A5E45:         Set var_90 = Me.LblCap
  loc_10A5E4B:         Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5E6A:         If (var_9C.Tag = "SSTX") Then
  loc_10A5E6D:           GoTo loc_10A5FC2
  loc_10A5E70:         End If
  loc_10A5E7D:         Set var_90 = Me.LblCap
  loc_10A5E83:         Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5EA2:         If (var_9C.Tag = "SSCH") Then
  loc_10A5EA5:           GoTo loc_10A5FC2
  loc_10A5EA8:         End If
  loc_10A5EB5:         Set var_90 = Me.LblCap
  loc_10A5EBB:         Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5EDA:         If (var_9C.Tag = "SADD") Then
  loc_10A5EEA:           Set var_90 = Me.TxtGt
  loc_10A5EF0:           Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5EF8:           var_9C.Text = vbNullString
  loc_10A5F07:         Else
  loc_10A5F14:           Set var_90 = Me.LblCap
  loc_10A5F1A:           Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5F39:           If (var_9C.Tag = "SDED") Then
  loc_10A5F49:             Set var_90 = Me.TxtGt
  loc_10A5F4F:             Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5F57:             var_9C.Text = vbNullString
  loc_10A5F66:           Else
  loc_10A5F73:             Set var_90 = Me.LblCap
  loc_10A5F79:             Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5F98:             If (var_9C.Tag = "SNET") Then
  loc_10A5FA8:               Set var_90 = Me.TxtGt
  loc_10A5FAE:               Call 0.Method_Proc_126_93_10A5FCC0 (var_86, var_9C)
  loc_10A5FB6:               var_9C.Text = vbNullString
  loc_10A5FC2:             End If
  loc_10A5FC2:           End If
  loc_10A5FC2:           ' Referenced from:       10A5EA5
  loc_10A5FC2:           ' Referenced from:       10A5E6D
  loc_10A5FC2:         End If
  loc_10A5FC2:       End If
  loc_10A5FC2:     End If
  loc_10A5FC2:   End If
  loc_10A5FC5: Next var_96 'Integer
  loc_10A5FCA: Exit Sub
End Sub

Public Sub Proc_126_94_DFDDC0
  'Data Table: 55BCF4
  loc_DFDDBC: Exit Sub
End Sub

Public Sub Proc_126_95_163586C(arg_C, arg_10, arg_14) '163586C
  'Data Table: 55BCF4
  Dim var_D8 As String
  Dim unk_55BD19 As Connection15
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_D2 As Integer
  Dim var_100 As Variant
  Dim var_FC As Variant
  Dim var_130 As Variant
  Dim var_11C As Variant
  Dim var_D0 As Double
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_21C As Variant
  Dim var_19C As Integer
  Dim var_23C As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_158 As Double
  Dim var_9C As Double
  loc_1634304: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_1634314: unk_55BD19.Execute var_D8 & "'", var_FC, -1
  loc_163431F: Set var_8C = var_100
  loc_1634332: var_94 = arg_14
  loc_1634337: var_86 = 1
  loc_163433D: var_A8 = var_94
  loc_1634343: var_B0 = var_94
  loc_1634349: var_B8 = CDbl(0)
  loc_1634360: If (var_8C.RecordCount > 0) Then
  loc_1634363:   ' Referenced from: 163584E
  loc_1634372:   If Not(var_8C.EOF) Then
  loc_1634379:     Set var_10C = Me.FGCat
  loc_163437C:     var_EC = vbNullString
  loc_16343A1:     If (var_8C.RecordCount > 0) Then
  loc_16343AA:       var_D2 = (var_D2 + 1)
  loc_16343B0:       var_EC = "Nature"
  loc_16343D5:       var_130 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8)) 'String
  loc_16343E3:       var_150 = Trim(var_130) 'Variant
  loc_16343FC:       If (var_150 = "On Base Amt") Then
  loc_163443B:         If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1634479:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_163448C:         Else
  loc_16344E8:           Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0)
  loc_16344ED:           var_D0 = var_B0
  loc_1634501:         End If
  loc_1634527:         Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_A8)
  loc_1634561:         Proc_6_39_E7C810(var_19C, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)))
  loc_163458B:         If CBool(var_86 And (var_19C > 0)) Then
  loc_1634595:           If (var_D0 > CDbl(0)) Then
  loc_16345B1:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16345B9:             var_178 = CVar(CLng(0)) 'Long
  loc_16345C3:             var_130 = CVar(CStr(var_86)) 'String
  loc_16345CA:             LateIdCallSt
  loc_16345F5:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16345FD:             var_178 = CVar(CLng(1)) 'Long
  loc_1634607:             var_130 = CVar(CStr(arg_10)) 'String
  loc_163460E:             LateIdCallSt
  loc_1634639:             var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634641:             var_1AC = CVar(CLng(2)) 'Long
  loc_1634671:             var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1634678:             LateIdCallSt
  loc_16346AB:             var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16346B3:             var_1AC = CVar(CLng(3)) 'Long
  loc_16346E3:             var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16346EA:             LateIdCallSt
  loc_163471D:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634725:             var_178 = CVar(CLng(4)) 'Long
  loc_163472F:             var_130 = CVar(CStr(var_A8)) 'String
  loc_1634736:             LateIdCallSt
  loc_1634761:             var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634769:             var_1AC = CVar(CLng(5)) 'Long
  loc_1634799:             var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16347A0:             LateIdCallSt
  loc_16347FA:             var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634802:             var_21C = CVar(CLng(6)) 'Long
  loc_1634846:             var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_163484D:             LateIdCallSt
  loc_1634871:           End If
  loc_163488A:           var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634892:           var_178 = CVar(CLng(6)) 'Long
  loc_16348B7:           var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_16348E0:           var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16348E8:           var_178 = CVar(CLng(6)) 'Long
  loc_16348F0:           var_130 = var_10C.TextMatrix)
  loc_1634903:           var_158 = Val(CStr(var_130))
  loc_163490D:           var_94 = (var_94 + var_158)
  loc_1634924:           var_B0 = (var_B0 + var_D0)
  loc_163492A:           var_B8 = var_D0
  loc_163492D:         End If
  loc_1634930:       Else
  loc_163493B:         If (var_150 = "On Running Total") Then
  loc_163497A:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_16349B8:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_16349CB:           Else
  loc_1634A27:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1634A2C:             var_D0 = var_94
  loc_1634A40:           End If
  loc_1634A66:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_158, var_178)
  loc_1634A80:           If (var_130 > 0) Then
  loc_1634A8A:             If (var_D0 > CDbl(0)) Then
  loc_1634AA6:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634AAE:               var_178 = CVar(CLng(0)) 'Long
  loc_1634AB8:               var_130 = CVar(CStr(var_86)) 'String
  loc_1634ABF:               LateIdCallSt
  loc_1634AEA:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634AF2:               var_178 = CVar(CLng(1)) 'Long
  loc_1634AFC:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1634B03:               LateIdCallSt
  loc_1634B2E:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634B36:               var_1AC = CVar(CLng(2)) 'Long
  loc_1634B66:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1634B6D:               LateIdCallSt
  loc_1634BA0:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634BA8:               var_1AC = CVar(CLng(3)) 'Long
  loc_1634BD8:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1634BDF:               LateIdCallSt
  loc_1634C12:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634C1A:               var_178 = CVar(CLng(4)) 'Long
  loc_1634C24:               var_130 = CVar(CStr(var_B0)) 'String
  loc_1634C2B:               LateIdCallSt
  loc_1634C56:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634C5E:               var_1AC = CVar(CLng(5)) 'Long
  loc_1634C8E:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1634C95:               LateIdCallSt
  loc_1634CEF:               var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634CF7:               var_21C = CVar(CLng(6)) 'Long
  loc_1634D3B:               var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1634D42:               LateIdCallSt
  loc_1634D66:             End If
  loc_1634D7F:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634D87:             var_178 = CVar(CLng(6)) 'Long
  loc_1634DAC:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1634DD5:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634DDD:             var_178 = CVar(CLng(6)) 'Long
  loc_1634E02:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_1634E19:             var_B0 = (var_B0 + var_D0)
  loc_1634E1F:             var_B8 = var_D0
  loc_1634E22:           End If
  loc_1634E25:         Else
  loc_1634E30:           If (var_150 = "On Prev. Tax Amt") Then
  loc_1634E6F:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1634EAD:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1634EC0:             Else
  loc_1634F1C:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1634F21:               var_D0 = var_94
  loc_1634F35:             End If
  loc_1634F3C:             If (var_D0 > CDbl(0)) Then
  loc_1634F58:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634F60:               var_178 = CVar(CLng(0)) 'Long
  loc_1634F6A:               var_130 = CVar(CStr(var_86)) 'String
  loc_1634F71:               LateIdCallSt
  loc_1634F9C:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634FA4:               var_178 = CVar(CLng(1)) 'Long
  loc_1634FAE:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1634FB5:               LateIdCallSt
  loc_1634FE0:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1634FE8:               var_1AC = CVar(CLng(2)) 'Long
  loc_1635018:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_163501F:               LateIdCallSt
  loc_1635052:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163505A:               var_1AC = CVar(CLng(3)) 'Long
  loc_163508A:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1635091:               LateIdCallSt
  loc_16350C4:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16350CC:               var_178 = CVar(CLng(4)) 'Long
  loc_16350D6:               var_130 = CVar(CStr(var_B8)) 'String
  loc_16350DD:               LateIdCallSt
  loc_1635108:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635110:               var_1AC = CVar(CLng(5)) 'Long
  loc_1635140:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1635147:               LateIdCallSt
  loc_16351A1:               var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16351A9:               var_21C = CVar(CLng(6)) 'Long
  loc_16351AE:               var_19C = 2
  loc_16351ED:               var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_19C))))) 'String
  loc_16351F4:               LateIdCallSt
  loc_1635218:             End If
  loc_1635231:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635239:             var_178 = CVar(CLng(6)) 'Long
  loc_163525E:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1635287:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163528F:             var_178 = CVar(CLng(6)) 'Long
  loc_1635297:             var_130 = var_10C.TextMatrix)
  loc_16352AA:             var_158 = Val(CStr(var_130))
  loc_16352B4:             var_94 = (var_94 + var_158)
  loc_16352CB:             var_B0 = (var_B0 + var_D0)
  loc_16352D1:             var_B8 = var_D0
  loc_16352D7:           Else
  loc_1635313:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1635351:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1635364:             Else
  loc_16353C0:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_16353C5:               var_D0 = var_94
  loc_16353D9:             End If
  loc_16353DC:             var_EC = "Limit"
  loc_16353FF:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_158, var_178)
  loc_1635439:             Proc_6_39_E7C810(var_19C, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_1635463:             If CBool(var_9C And (var_19C > 0)) Then
  loc_163546D:               If (var_D0 > CDbl(0)) Then
  loc_1635489:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635491:                 var_178 = CVar(CLng(0)) 'Long
  loc_163549B:                 var_130 = CVar(CStr(var_86)) 'String
  loc_16354A2:                 LateIdCallSt
  loc_16354CD:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16354D5:                 var_178 = CVar(CLng(1)) 'Long
  loc_16354DF:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_16354E6:                 LateIdCallSt
  loc_1635511:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635519:                 var_1AC = CVar(CLng(2)) 'Long
  loc_1635549:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1635550:                 LateIdCallSt
  loc_1635583:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163558B:                 var_1AC = CVar(CLng(3)) 'Long
  loc_16355BB:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16355C2:                 LateIdCallSt
  loc_16355F5:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16355FD:                 var_178 = CVar(CLng(4)) 'Long
  loc_1635607:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_163560E:                 LateIdCallSt
  loc_1635639:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635641:                 var_1AC = CVar(CLng(5)) 'Long
  loc_1635671:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1635678:                 LateIdCallSt
  loc_16356D2:                 var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16356DA:                 var_21C = CVar(CLng(6)) 'Long
  loc_163571E:                 var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1635725:                 LateIdCallSt
  loc_1635749:               End If
  loc_1635762:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163576A:               var_178 = CVar(CLng(6)) 'Long
  loc_163578F:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_16357B8:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16357C0:               var_178 = CVar(CLng(6)) 'Long
  loc_16357E5:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_16357FC:               var_B0 = (var_B0 + var_D0)
  loc_1635802:               var_B8 = var_D0
  loc_1635805:             End If
  loc_1635805:           End If
  loc_1635805:         End If
  loc_1635805:       End If
  loc_1635805:     End If
  loc_163580B:     var_86 = (var_86 + 1)
  loc_1635810:     Set var_10C = Nothing 
  loc_1635818:     var_EC = CVar(CLng(arg_10)) 'Long
  loc_1635820:     var_178 = CVar(CLng(7)) 'Long
  loc_163582A:     var_FC = CVar(CStr(var_9C)) 'String
  loc_1635832:     Set var_100 = Me.FGrid
  loc_1635838:     LateIdCallSt
  loc_1635849:     var_8C.MoveNext
  loc_163584E:     GoTo loc_1634363
  loc_1635851:   End If
  loc_1635856:   Set var_8C = Nothing
  loc_163585E:   Set var_C4 = Nothing
  loc_1635866:   Set var_C0 = Nothing
  loc_1635869: End If
  loc_1635869: Exit Sub
End Sub

Public Sub Proc_126_96_DFD2BC
  'Data Table: 55BCF4
  loc_DFD2B8: Exit Sub
End Sub

Public Sub Proc_126_97_18D4488
  'Data Table: 55BCF4
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_55BD6C As Connection15
  Dim var_E6 As Integer
  Dim var_1C4 As Recordset15
  Dim var_B4 As Fields
  Dim unk_55BD19 As Connection15
  Dim var_1D8 As Variant
  Dim unk_55BD28 As Connection15
  Dim var_E0 As Recordset15
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_1D4 As String
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_204 As Variant
  Dim var_110 As Recordset15
  Dim var_E4 As Recordset15
  Dim var_118 As Double
  Dim var_1E0 As Variant
  Dim var_26C As Variant
  Dim var_F4 As Recordset15
  Dim var_120 As Double
  Dim var_270 As Recordset15
  Dim var_108 As Recordset15
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim var_2AC As Field20
  loc_18D1C38: unk_55BD6C.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92070 & "FOM'", var_B0, -1
  loc_18D1C43: Set var_88 = var_B4
  loc_18D1C53: On Error Goto loc_18D446D
  loc_18D1C58: var_E6 = 1
  loc_18D1C61: Set var_1C4 = var_1C0 
  loc_18D1C89: var_1C4.Fields.Append "mLine", &HC8, &HA
  loc_18D1CB5: var_1C4.Fields.Append "SNo", &HC8, &HA
  loc_18D1CE1: var_1C4.Fields.Append "Item", &HC8, &H32
  loc_18D1D0D: var_1C4.Fields.Append "Qty", &HC8, &HA
  loc_18D1D39: var_1C4.Fields.Append "Rate", &HC8, &HA
  loc_18D1D65: var_1C4.Fields.Append "Amount", &HC8, &HA
  loc_18D1D89: var_B4 = var_1C4.Fields
  loc_18D1D91: var_B4.Append "Mark", &HC8, &HA
  loc_18D1DA1: var_1C4.CursorType = 3
  loc_18D1DAE: var_1C4.LockType = 3
  loc_18D1DCD: var_1C4.Open var_A0, var_1D4, -1
  loc_18D1DD4: Set var_1C4 = Nothing 
  loc_18D1DEC: var_8C = "Select * from Enviro where LogSite_code='" & MemVar_1F92078
  loc_18D1DFC: unk_55BD19.Execute var_8C & "'", var_B0, -1
  loc_18D1E07: Set var_110 = var_B4
  loc_18D1E35: Set var_B4 = Me.Txt
  loc_18D1E3B: Call 0.Method_Proc_126_97_18D44880 (CInt(4), var_1D8, var_8C, "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallStock AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode=I.REstCODE) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='", var_B0, -1, var_1E0)
  loc_18D1E43: var_B4 = var_1D8.Text
  loc_18D1E4C: var_90 = -1 & var_8C
  loc_18D1E5C: unk_55BD28.Execute var_8C & "'" & "' AND QTYIss>0", -1, &H20
  loc_18D1E67: Set var_F4 = var_1E0
  loc_18D1E9D: Set var_B4 = Me.Txt
  loc_18D1EA3: Call 0.Method_Proc_126_97_18D44880 (CInt(7), var_1D8, var_8C, "Select HB.*, SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='", var_B0)
  loc_18D1EAB: -1 = var_1D8.Tag
  loc_18D1EC4: unk_55BD19.Execute var_1E0 & var_8C & "'", var_A0, &H20
  loc_18D1ECF: Set var_E0 = var_1E0
  loc_18D1F05: Set var_B4 = Me.Txt
  loc_18D1F0B: Call 0.Method_Proc_126_97_18D44880 (CInt(7), var_1D8, var_8C, "SELECT * FROM Hallsale1 WHERE BookDocId='")
  loc_18D1F13: var_B0 = var_1D8.Tag
  loc_18D1F1C: var_90 = -1 & var_8C
  loc_18D1F2C: unk_55BD28.Execute var_1E0 & var_8C & "'", var_1E0, var_A0
  loc_18D1F37: Set var_E4 = var_1E0
  loc_18D1F63: If (var_E0.RecordCount <= 0) Then
  loc_18D1F66:   Exit Sub
  loc_18D1F67: End If
  loc_18D1F9E: var_12C = CStr(Mid(CVar(var_E0.Fields.Item("RestCode")), 2, var_1F4))
  loc_18D1FC5: var_1F4 = ("UPTT No. :" + Trim(MemVar_1F92148))
  loc_18D1FCA: var_144 = CStr(var_1F4)
  loc_18D1FEC: var_1F4 = ("CST No.  :" + Trim(MemVar_1F9214C))
  loc_18D1FF1: var_148 = CStr(var_1F4)
  loc_18D1FFE: var_164 = MemVar_1F92130
  loc_18D2019: var_1F4 = (Trim(MemVar_1F92134) + " ")
  loc_18D2030: var_224 = (var_1F4 + Trim(MemVar_1F9213C))
  loc_18D2039: var_244 = (var_224 + " ")
  loc_18D2043: var_264 = (var_244 + CVar(MemVar_1F9215C))
  loc_18D2048: var_160 = CStr(var_264)
  loc_18D206F: var_168 = "Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144
  loc_18D2091: var_1F4 = ("SUBJECT TO " + Trim(MemVar_1F9213C))
  loc_18D209A: var_204 = (var_1F4 + " JURISDITION")
  loc_18D209F: var_100 = CStr(Trim(MemVar_1F9213C))
  loc_18D20D3: var_158 = Proc_6_38_E68A98(CVar(var_110.Fields.Item("Bill_Header")))
  loc_18D20F3: var_1D8 = var_E4.Fields.Item("Party")
  loc_18D2118: var_154 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1D8)))
  loc_18D2136: Set var_B4 = Me.Txt
  loc_18D213C: Call 0.Method_Proc_126_97_18D44880 (CInt(1), var_1D8)
  loc_18D214C: var_14C = var_1D8.Text
  loc_18D218D: var_194 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E0.Fields.Item("Add1"))))))
  loc_18D21D3: var_198 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E0.Fields.Item("Add2"))))))
  loc_18D21F9: var_1D8 = var_E0.Fields.Item("City")
  loc_18D2219: var_19C = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_1D8)))))
  loc_18D2233: Set var_B4 = Me.Txt
  loc_18D2239: Call 0.Method_Proc_126_97_18D44880 (CInt(2), var_1D8)
  loc_18D2248: var_A0 = "dd-MMM-yyyy"
  loc_18D224D: var_1F4 = "City"
  loc_18D2275: var_150 = Proc_6_45_EAD428(CStr(Format(CVar(var_1D8), var_1F4)), &HB, 1)
  loc_18D22E3: If ((var_E4.RecordCount > 0) And (CDbl(Val(CStr(var_E4.Fields.Item("NoofPax").Value))) > CDbl(0))) Then
  loc_18D2311:   Proc_6_39_E7C810(var_1F4, CVar(var_E4.Fields.Item("TotalPerCover")), 1)
  loc_18D2322:   var_118 = Val(CStr(var_1F4))
  loc_18D238D:   var_1F4 = "Pax " & var_E4.Fields.Item("NoofPax").Value 
  loc_18D23AB:   var_130 = Proc_6_45_EAD428(CStr(var_1F4 & " @ " & var_E4.Fields.Item("RatePerPax").Value), &H1D, var_118)
  loc_18D23EF:   Proc_6_39_E7C810(var_1F4, CVar(var_E4.Fields.Item("NoofPax")))
  loc_18D23F8:   var_134 = CStr(var_1F4)
  loc_18D242B:   Proc_6_39_E7C810(var_1F4, CVar(var_E4.Fields.Item("RatePerPax")))
  loc_18D2454:   var_138 = CStr(Format(var_1F4, "0.00"))
  loc_18D246F:   var_1D4 = "0.00"
  loc_18D2485:   var_1F4 = Format(var_118, var_1D4)
  loc_18D248E:   var_13C = CStr(var_1F4)
  loc_18D24A0:   If (var_140 = vbNullString) Then
  loc_18D24A6:     var_140 = var_130
  loc_18D24A9:   End If
  loc_18D24AC: Else
  loc_18D24AE:   var_E6 = 0
  loc_18D24B1:   ' Referenced from:   18D2791
  loc_18D24B1: End If
  loc_18D24C0: If Not(var_F4.EOF) Then
  loc_18D24C9:   var_E6 = (var_E6 + 1)
  loc_18D24CF:   var_A0 = "Amount"
  loc_18D24F2:   Proc_6_39_E7C810(var_1F4, CVar(var_F4.Fields.Item(var_A0)), var_E6, var_E6, 1)
  loc_18D2503:   var_120 = Val(CStr(var_1F4))
  loc_18D251A:   var_118 = (var_118 + var_120)
  loc_18D2523:   Set var_270 = var_1C0 
  loc_18D2532:   var_270.AddNew var_A0, var_1D4
  loc_18D255C:   var_270.Fields.Item("mLine").Value = vbNullString
  loc_18D2597:   var_270.Fields.Item("SNo").Value = CVar(CStr(var_E6) & ".")
  loc_18D25EC:   var_270.Fields.Item("Item").Value = CVar(var_F4.Fields.Item("ItemName"))
  loc_18D2623:   Proc_6_39_E7C810(var_1F4, CVar(var_F4.Fields.Item("QtyIss")), var_118, var_120, 1)
  loc_18D264B:   var_270.Fields.Item("qty").Value = var_1F4
  loc_18D2686:   Proc_6_39_E7C810(var_1F4, CVar(var_F4.Fields.Item("Rate")), 1)
  loc_18D26A6:   var_224 = Format(var_1F4, "0.00")
  loc_18D26BE:   var_1E0 = var_270.Fields
  loc_18D26CE:   var_1E0.Item("Rate").Value = var_224
  loc_18D272F:   var_270.Fields.Item("Amount").Value = Format(var_120, "0.00")
  loc_18D2742:   var_1D4 = "*"
  loc_18D274B:   var_A0 = "Mark"
  loc_18D2767:   var_270.Fields.Item(var_A0).Value = var_1D4
  loc_18D277E:   var_270.Update var_A0, var_1D4
  loc_18D2785:   Set var_270 = Nothing 
  loc_18D278C:   var_F4.MoveNext
  loc_18D2791:   GoTo loc_18D24B1
  loc_18D2794: End If
  loc_18D279C: var_F4.Requery -1
  loc_18D27A4: var_E4.MoveFirst
  loc_18D27B6: var_1D4 = "SELECT ST.Amt AS Amount,ST.SunCode AS Code,ST.SNo as SNo, SM.Name AS SName FROM SunTransaction AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='"
  loc_18D27FC: unk_55BD19.Execute CStr(var_1D4 & var_E4.Fields.Item("DocID").Value & "' Order by SNo"), var_224, -1
  loc_18D2807: Set var_108 = var_1E0
  loc_18D2827: var_1E4 = var_108.RecordCount
  loc_18D2835: If (var_1E4 > 0) Then
  loc_18D2838:   ' Referenced from: 18D2EA1
  loc_18D2847:   If Not(var_108.EOF) Then
  loc_18D289E:     If (Ucase(Trim(CVar(var_108.Fields.Item("Code")))) = CVar(MemVar_1F92078 & "NET")) Then
  loc_18D28D1:       var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D28DA:       var_1B8 = CStr(var_1F4)
  loc_18D290D:       Proc_6_39_E7C810(var_1F4, CVar(var_108.Fields.Item("Amount")), var_1E0, 1, 1)
  loc_18D2936:       var_184 = CStr(Format(var_1F4, "0.00"))
  loc_18D294A:       var_108.MoveNext
  loc_18D2960:       If (var_108.EOF = &HFF) Then
  loc_18D2963:         GoTo loc_18D2EA4
  loc_18D2966:       End If
  loc_18D2966:     End If
  loc_18D2990:     var_280 = var_108.Fields.Item("SNo").Value 'Variant
  loc_18D29A6:     If (var_280 = 1) Then
  loc_18D29D9:       var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D29E2:       var_1A0 = CStr(var_1F4)
  loc_18D2A15:       Proc_6_39_E7C810(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1, 1)
  loc_18D2A3E:       var_16C = CStr(Format(var_1F4, "0.00"))
  loc_18D2A52:     Else
  loc_18D2A5D:       If (var_280 = 2) Then
  loc_18D2A90:         var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D2A99:         var_1A4 = CStr(var_1F4)
  loc_18D2ACC:         Proc_6_39_E7C810(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D2AF5:         var_170 = CStr(Format(var_1F4, "0.00"))
  loc_18D2B09:       Else
  loc_18D2B14:         If (var_280 = 3) Then
  loc_18D2B47:           var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D2B50:           var_1B0 = CStr(var_1F4)
  loc_18D2B83:           Proc_6_39_E7C810(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D2BAC:           var_17C = CStr(Format(var_1F4, "0.00"))
  loc_18D2BC0:         Else
  loc_18D2BCB:           If (var_280 = 4) Then
  loc_18D2BFE:             var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D2C07:             var_1A8 = CStr(var_1F4)
  loc_18D2C3A:             Proc_6_39_E7C810(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D2C63:             var_174 = CStr(Format(var_1F4, "0.00"))
  loc_18D2C77:           Else
  loc_18D2C82:             If (var_280 = 5) Then
  loc_18D2CB5:               var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D2CBE:               var_1AC = CStr(var_1F4)
  loc_18D2CF1:               Proc_6_39_E7C810(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D2D1A:               var_178 = CStr(Format(var_1F4, "0.00"))
  loc_18D2D2E:             Else
  loc_18D2D39:               If (var_280 = 6) Then
  loc_18D2D6C:                 var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D2D75:                 var_1B4 = CStr(var_1F4)
  loc_18D2DA8:                 Proc_6_39_E7C810(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D2DD1:                 var_180 = CStr(Format(var_1F4, "0.00"))
  loc_18D2DE5:               Else
  loc_18D2DF0:                 If (var_280 = 7) Then
  loc_18D2E23:                   var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D2E2C:                   var_1BC = CStr(var_1F4)
  loc_18D2E48:                   var_B4 = var_108.Fields
  loc_18D2E5F:                   Proc_6_39_E7C810(var_1F4, CVar(var_B4.Item("Amount")), 1, 1)
  loc_18D2E88:                   var_188 = CStr(Format(var_1F4, "0.00"))
  loc_18D2E99:                 End If
  loc_18D2E99:               End If
  loc_18D2E99:             End If
  loc_18D2E99:           End If
  loc_18D2E99:         End If
  loc_18D2E99:       End If
  loc_18D2E99:     End If
  loc_18D2E9C:     var_108.MoveNext
  loc_18D2EA1:     GoTo loc_18D2838
  loc_18D2EA4:     ' Referenced from: 18D2963
  loc_18D2EA4:   End If
  loc_18D2EA4: End If
  loc_18D2EDE: var_B0 = CVar(Proc_6_43_10041F4(Abs(Val(var_184)), "Rs.", vbNullString, Val(var_184), 1)) 'String
  loc_18D2EED: var_18C = CStr(StrConv(var_B0, 3, 0))
  loc_18D2F0E: var_190 = "Regardless of charge instructions I agree to be held" & vbCrLf & "personally liable for payment of the total amount of this bill."
  loc_18D2F2A: unk_55BD19.Execute "Select * From FAEnviro", var_B0, -1
  loc_18D2F35: Set var_110 = var_B4
  loc_18D2F4D: var_B4 = var_110.Fields
  loc_18D2FB1: var_244 = IIf((Proc_6_38_E68A98(CVar(var_B4.Item("daterfill")), var_B4, 1, 1) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("daterfill")), 1)))
  loc_18D2FBA: MemVar_1F923C0 = CStr(var_244)
  loc_18D304E: var_244 = IIf((Proc_6_38_E68A98(CVar(var_110.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("pagenofill")), 1)))
  loc_18D3057: MemVar_1F923C4 = CStr(var_244)
  loc_18D307B: var_A0 = "titlerfill"
  loc_18D308F: var_1D8 = var_110.Fields.Item(var_A0)
  loc_18D30A6: var_1D4 = "titlerfill"
  loc_18D30BA: var_26C = var_110.Fields.Item(var_1D4)
  loc_18D30CB: var_224 = CVar(Proc_6_38_E68A98(CVar(var_26C))) 'String
  loc_18D30E4: var_214 = (Proc_6_38_E68A98(CVar(var_1D8), MemVar_1F923C4) = vbNullString)
  loc_18D30EB: var_244 = IIf(var_214, "M", var_224)
  loc_18D3115: On Error Goto loc_18D446D
  loc_18D311B: var_EC = "SaleBillHallSecondary"
  loc_18D3121: var_F0 = "Sales Bill Report"
  loc_18D314B: Set var_B4 = var_1C0 
  loc_18D3152: CreateFieldDefFile(var_B4, MemVar_1F920B4 & "\" & var_EC & ".ttx", &HFF)
  loc_18D3180: var_8C = "\" & var_EC
  loc_18D3194: Call 0.Method_arg_1C (MemVar_1F920B4 & var_8C & ".RPT", var_A0, var_B4)
  loc_18D319F: MemVar_1F921E4 = var_B4
  loc_18D31CB: Call 0.Method_arg_64 (var_B4, CVar(var_B4), var_1D4)
  loc_18D31D3: Call 0.Method_arg_2C (var_214, CStr(var_244))
  loc_18D31E1: Call 0.Method_arg_150 (&H27)
  loc_18D31F7: Call 0.Method_arg_90 (var_B4, var_1E4)
  loc_18D31FF: Call 0.Method_arg_24 (var_E6)
  loc_18D320B: For var_298 =  To CInt(var_1E4): 1 = var_298 'Integer
  loc_18D3224:   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D322C:   Call 0.Method_arg_20 (var_1D8)
  loc_18D3234:   Call 0.Method_arg_30 (var_8C)
  loc_18D324A:   var_2A8 = Ucase(CVar(var_8C)) 'Variant
  loc_18D327A:   If (var_2A8 = Ucase("upttno")) Then
  loc_18D329E:     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D32A6:     Call 0.Method_arg_20 (var_1D8)
  loc_18D32AE:     Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_18D32C4:   Else
  loc_18D32E6:     If (var_2A8 = Ucase("csttno")) Then
  loc_18D330A:       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3312:       Call 0.Method_arg_20 (var_1D8)
  loc_18D331A:       Call 0.Method_arg_38 ("'" & var_148 & "'")
  loc_18D3330:     Else
  loc_18D3352:       If (var_2A8 = Ucase("comp_name")) Then
  loc_18D3376:         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D337E:         Call 0.Method_arg_20 (var_1D8)
  loc_18D3386:         Call 0.Method_arg_38 ("'" & var_164 & "'")
  loc_18D339C:       Else
  loc_18D33BE:         If (var_2A8 = Ucase("compaddress")) Then
  loc_18D33E2:           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D33EA:           Call 0.Method_arg_20 (var_1D8)
  loc_18D33F2:           Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_18D3408:         Else
  loc_18D342A:           If (var_2A8 = Ucase("comp_phone")) Then
  loc_18D344E:             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3456:             Call 0.Method_arg_20 (var_1D8)
  loc_18D345E:             Call 0.Method_arg_38 ("'" & var_168 & "'")
  loc_18D3474:           Else
  loc_18D3496:             If (var_2A8 = Ucase("BillHeader")) Then
  loc_18D34BA:               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D34C2:               Call 0.Method_arg_20 (var_1D8)
  loc_18D34CA:               Call 0.Method_arg_38 ("'" & var_158 & "'")
  loc_18D34E0:             Else
  loc_18D3502:               If (var_2A8 = Ucase("name")) Then
  loc_18D3526:                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D352E:                 Call 0.Method_arg_20 (var_1D8)
  loc_18D3536:                 Call 0.Method_arg_38 ("'" & var_154 & "'")
  loc_18D354C:               Else
  loc_18D356E:                 If (var_2A8 = Ucase("address1")) Then
  loc_18D3592:                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D359A:                   Call 0.Method_arg_20 (var_1D8)
  loc_18D35A2:                   Call 0.Method_arg_38 ("'" & var_194 & "'")
  loc_18D35B8:                 Else
  loc_18D35DA:                   If (var_2A8 = Ucase("address2")) Then
  loc_18D35FE:                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3606:                     Call 0.Method_arg_20 (var_1D8)
  loc_18D360E:                     Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_18D3624:                   Else
  loc_18D3646:                     If (var_2A8 = Ucase("address3")) Then
  loc_18D366A:                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3672:                       Call 0.Method_arg_20 (var_1D8)
  loc_18D367A:                       Call 0.Method_arg_38 ("'" & var_19C & "'")
  loc_18D3690:                     Else
  loc_18D36B2:                       If (var_2A8 = Ucase("PAX_Par")) Then
  loc_18D36D6:                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D36DE:                         Call 0.Method_arg_20 (var_1D8)
  loc_18D36E6:                         Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_18D36FC:                       Else
  loc_18D371E:                         If (var_2A8 = Ucase("NARATION")) Then
  loc_18D3742:                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D374A:                           Call 0.Method_arg_20 (var_1D8)
  loc_18D3752:                           Call 0.Method_arg_38 ("'" & var_140 & "'")
  loc_18D3768:                         Else
  loc_18D378A:                           If (var_2A8 = Ucase("PAX_Qty")) Then
  loc_18D37AE:                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D37B6:                             Call 0.Method_arg_20 (var_1D8)
  loc_18D37BE:                             Call 0.Method_arg_38 ("'" & var_134 & "'")
  loc_18D37D4:                           Else
  loc_18D37F6:                             If (var_2A8 = Ucase("PAX_Rate")) Then
  loc_18D381A:                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3822:                               Call 0.Method_arg_20 (var_1D8)
  loc_18D382A:                               Call 0.Method_arg_38 ("'" & var_138 & "'")
  loc_18D3840:                             Else
  loc_18D3862:                               If (var_2A8 = Ucase("PAX_Amount")) Then
  loc_18D3886:                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D388E:                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D3896:                                 Call 0.Method_arg_38 ("'" & var_13C & "'")
  loc_18D38AC:                               Else
  loc_18D38CE:                                 If (var_2A8 = Ucase("billno")) Then
  loc_18D3900:                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3908:                                   Call 0.Method_arg_20 (var_1D8)
  loc_18D3910:                                   Call 0.Method_arg_38 ("'" & var_12C & "\" & var_14C & "'")
  loc_18D392A:                                 Else
  loc_18D394C:                                   If (var_2A8 = Ucase("billdate")) Then
  loc_18D3970:                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3978:                                     Call 0.Method_arg_20 (var_1D8)
  loc_18D3980:                                     Call 0.Method_arg_38 ("'" & var_150 & "'")
  loc_18D3996:                                   Else
  loc_18D39B8:                                     If (var_2A8 = Ucase("strRupee")) Then
  loc_18D39DC:                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D39E4:                                       Call 0.Method_arg_20 (var_1D8)
  loc_18D39EC:                                       Call 0.Method_arg_38 ("'" & var_18C & "'")
  loc_18D3A02:                                     Else
  loc_18D3A24:                                       If (var_2A8 = Ucase("lblamount")) Then
  loc_18D3A48:                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3A50:                                         Call 0.Method_arg_20 (var_1D8)
  loc_18D3A58:                                         Call 0.Method_arg_38 ("'" & var_1A0 & "'")
  loc_18D3A6E:                                       Else
  loc_18D3A90:                                         If (var_2A8 = Ucase("amount")) Then
  loc_18D3AB4:                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3ABC:                                           Call 0.Method_arg_20 (var_1D8)
  loc_18D3AC4:                                           Call 0.Method_arg_38 ("'" & var_16C & "'")
  loc_18D3ADA:                                         Else
  loc_18D3AFC:                                           If (var_2A8 = Ucase("lbldiscount")) Then
  loc_18D3B20:                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3B28:                                             Call 0.Method_arg_20 (var_1D8)
  loc_18D3B30:                                             Call 0.Method_arg_38 ("'" & var_1A4 & "'")
  loc_18D3B46:                                           Else
  loc_18D3B68:                                             If (var_2A8 = Ucase("discount")) Then
  loc_18D3B8C:                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3B94:                                               Call 0.Method_arg_20 (var_1D8)
  loc_18D3B9C:                                               Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_18D3BB2:                                             Else
  loc_18D3BD4:                                               If (var_2A8 = Ucase("lbldevelopmenttax")) Then
  loc_18D3BF8:                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3C00:                                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D3C08:                                                 Call 0.Method_arg_38 ("'" & var_1B0 & "'")
  loc_18D3C1E:                                               Else
  loc_18D3C40:                                                 If (var_2A8 = Ucase("developmenttax")) Then
  loc_18D3C64:                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3C6C:                                                   Call 0.Method_arg_20 (var_1D8)
  loc_18D3C74:                                                   Call 0.Method_arg_38 ("'" & var_17C & "'")
  loc_18D3C8A:                                                 Else
  loc_18D3CAC:                                                   If (var_2A8 = Ucase("lbltradetax")) Then
  loc_18D3CD0:                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3CD8:                                                     Call 0.Method_arg_20 (var_1D8)
  loc_18D3CE0:                                                     Call 0.Method_arg_38 ("'" & var_1A8 & "'")
  loc_18D3CF6:                                                   Else
  loc_18D3D18:                                                     If (var_2A8 = Ucase("tradetax")) Then
  loc_18D3D3C:                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3D44:                                                       Call 0.Method_arg_20 (var_1D8)
  loc_18D3D4C:                                                       Call 0.Method_arg_38 ("'" & var_174 & "'")
  loc_18D3D62:                                                     Else
  loc_18D3D84:                                                       If (var_2A8 = Ucase("lblservicecharge")) Then
  loc_18D3DA8:                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3DB0:                                                         Call 0.Method_arg_20 (var_1D8)
  loc_18D3DB8:                                                         Call 0.Method_arg_38 ("'" & var_1AC & "'")
  loc_18D3DCE:                                                       Else
  loc_18D3DF0:                                                         If (var_2A8 = Ucase("servicecharge")) Then
  loc_18D3E14:                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3E1C:                                                           Call 0.Method_arg_20 (var_1D8)
  loc_18D3E24:                                                           Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_18D3E3A:                                                         Else
  loc_18D3E5C:                                                           If (var_2A8 = Ucase("lblroundoff")) Then
  loc_18D3E80:                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3E88:                                                             Call 0.Method_arg_20 (var_1D8)
  loc_18D3E90:                                                             Call 0.Method_arg_38 ("'" & var_1B4 & "'")
  loc_18D3EA6:                                                           Else
  loc_18D3EC8:                                                             If (var_2A8 = Ucase("roundoff")) Then
  loc_18D3EEC:                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3EF4:                                                               Call 0.Method_arg_20 (var_1D8)
  loc_18D3EFC:                                                               Call 0.Method_arg_38 ("'" & var_180 & "'")
  loc_18D3F12:                                                             Else
  loc_18D3F34:                                                               If (var_2A8 = Ucase("lblServiceTax")) Then
  loc_18D3F58:                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3F60:                                                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D3F68:                                                                 Call 0.Method_arg_38 ("'" & var_1BC & "'")
  loc_18D3F7E:                                                               Else
  loc_18D3FA0:                                                                 If (var_2A8 = Ucase("ServiceTax")) Then
  loc_18D3FC4:                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3FCC:                                                                   Call 0.Method_arg_20 (var_1D8)
  loc_18D3FD4:                                                                   Call 0.Method_arg_38 ("'" & var_188 & "'")
  loc_18D3FEA:                                                                 Else
  loc_18D400C:                                                                   If (var_2A8 = Ucase("lblnetamount")) Then
  loc_18D4030:                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D4038:                                                                     Call 0.Method_arg_20 (var_1D8)
  loc_18D4040:                                                                     Call 0.Method_arg_38 ("'" & var_1B8 & "'")
  loc_18D4056:                                                                   Else
  loc_18D4078:                                                                     If (var_2A8 = Ucase("netamount")) Then
  loc_18D4082:                                                                       var_8C = "'" & var_184
  loc_18D409C:                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D40A4:                                                                       Call 0.Method_arg_20 (var_1D8)
  loc_18D40AC:                                                                       Call 0.Method_arg_38 (var_8C & "'")
  loc_18D40C2:                                                                     Else
  loc_18D40E4:                                                                       If (var_2A8 = Ucase("Title")) Then
  loc_18D40F0:                                                                         Call 0.Method_arg_50 (var_8C)
  loc_18D4113:                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D411B:                                                                         Call 0.Method_arg_20 (var_1D8)
  loc_18D4123:                                                                         Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_18D413B:                                                                       Else
  loc_18D415D:                                                                         If (var_2A8 = Ucase("Jurisdition")) Then
  loc_18D4181:                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D4189:                                                                           Call 0.Method_arg_20 (var_1D8)
  loc_18D4191:                                                                           Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_18D41A7:                                                                         Else
  loc_18D41C9:                                                                           If (var_2A8 = Ucase("Dater")) Then
  loc_18D41ED:                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D41F5:                                                                             Call 0.Method_arg_20 (var_1D8)
  loc_18D41FD:                                                                             Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_18D4213:                                                                           Else
  loc_18D4235:                                                                             If (var_2A8 = Ucase("Pager")) Then
  loc_18D4259:                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D4261:                                                                               Call 0.Method_arg_20 (var_1D8)
  loc_18D4269:                                                                               Call 0.Method_arg_38 ("'" & MemVar_1F923C4 & "'")
  loc_18D427F:                                                                             Else
  loc_18D42A1:                                                                               If (var_2A8 = Ucase("billfooter")) Then
  loc_18D42C5:                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D42CD:                                                                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D42D5:                                                                                 Call 0.Method_arg_38 ("'" & var_15C & "'")
  loc_18D42EB:                                                                               Else
  loc_18D430D:                                                                                 If (var_2A8 = Ucase("comp_party")) Then
  loc_18D431B:                                                                                   var_254 = 0
  loc_18D4331:                                                                                   var_1D4 = "Select ('Company:                                                                               ' + SG.Name) AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='"
  loc_18D4360:                                                                                   var_1F4 = var_1D4 & var_E0.Fields.Item("DocID").Value 
  loc_18D4377:                                                                                   unk_55BD19.Execute CStr(var_1F4 & "'"), var_224, -1
  loc_18D437F:                                                                                   var_1E0 = var_1E0.Fields
  loc_18D4387:                                                                                   var_254 = var_26C.Item(var_26C)
  loc_18D438F:                                                                                   var_2AC = var_2AC.Value
  loc_18D43B8:                                                                                   Call 0.Method_arg_90 (var_2E0, CLng(var_E6), var_2E4)
  loc_18D43C0:                                                                                   Call 0.Method_arg_20 (CStr(var_244 & var_244 & "'"))
  loc_18D43C8:                                                                                   Call 0.Method_arg_38 ("'")
  loc_18D43F6:                                                                                 End If
  loc_18D43F6:                                                                               End If
  loc_18D43F6:                                                                             End If
  loc_18D43F6:                                                                           End If
  loc_18D43F6:                                                                         End If
  loc_18D43F6:                                                                       End If
  loc_18D43F6:                                                                     End If
  loc_18D43F6:                                                                   End If
  loc_18D43F6:                                                                 End If
  loc_18D43F6:                                                               End If
  loc_18D43F6:                                                             End If
  loc_18D43F6:                                                           End If
  loc_18D43F6:                                                         End If
  loc_18D43F6:                                                       End If
  loc_18D43F6:                                                     End If
  loc_18D43F6:                                                   End If
  loc_18D43F6:                                                 End If
  loc_18D43F6:                                               End If
  loc_18D43F6:                                             End If
  loc_18D43F6:                                           End If
  loc_18D43F6:                                         End If
  loc_18D43F6:                                       End If
  loc_18D43F6:                                     End If
  loc_18D43F6:                                   End If
  loc_18D43F6:                                 End If
  loc_18D43F6:                               End If
  loc_18D43F6:                             End If
  loc_18D43F6:                           End If
  loc_18D43F6:                         End If
  loc_18D43F6:                       End If
  loc_18D43F6:                     End If
  loc_18D43F6:                   End If
  loc_18D43F6:                 End If
  loc_18D43F6:               End If
  loc_18D43F6:             End If
  loc_18D43F6:           End If
  loc_18D43F6:         End If
  loc_18D43F6:       End If
  loc_18D43F6:     End If
  loc_18D43F6:   End If
  loc_18D43F9: Next var_298 'Integer
  loc_18D4403: Set var_1D8 = Nothing
  loc_18D4419: Set var_B4 = MemVar_1F921E4 
  loc_18D4425: Proc_6_99_1483714(var_B4, 0, var_F0)
  loc_18D4430: MemVar_1F921E4 = var_B4
  loc_18D4440: MemVar_1F921E4 = Nothing
  loc_18D4449: Set var_110 = Nothing
  loc_18D4451: Set var_1C0 = Nothing
  loc_18D4459: Set var_108 = Nothing
  loc_18D4461: Set var_E0 = Nothing
  loc_18D4469: Set var_F4 = Nothing
  loc_18D446C: Exit Sub
  loc_18D446D: ' Referenced from: 18D3115
  loc_18D446D: ' Referenced from: 18D1C53
  loc_18D4473: If (var_F8 = &HFF) Then
  loc_18D447C:   unk_55BD19.RollbackTrans
  loc_18D4481: End If
  loc_18D4481: Proc_6_60_E62BC4(&HFF)
  loc_18D4486: Exit Sub
End Sub
