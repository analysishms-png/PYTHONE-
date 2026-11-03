VERSION 5.00
Begin VB.Form CompMast
  Caption = "Company Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "CompMast.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12990
  ClientHeight = 9705
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 5415
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 100
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 5100
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 100
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
    Index = 33
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3975
    Top = 2010
    Width = 1905
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 20
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 4785
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 21
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
  Begin MainCtrl tOPCtrl1
    Left = 0
    Top = 0
    Width = 12990
    Height = 450
    TabIndex = 92
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 4470
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 32
    BackColor = &HFFFFFF&
    Left = 16470
    Top = 3135
    Width = 4140
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    PasswordChar = "*"
    MaxLength = 15
  End
  Begin TextBox Txt
    Index = 31
    BackColor = &HFFFFFF&
    Left = 1740
    Top = 2325
    Width = 550
    Height = 285
    Enabled = 0   'False
    Text = "Yes"
    TabIndex = 83
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
  Begin TextBox TxtGrid1
    Index = 2
    BackColor = &HFF8080&
    ForeColor = &HC00000&
    Left = 10815
    Top = 735
    Width = 1020
    Height = 240
    Visible = 0   'False
    TabIndex = 82
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid1
    Index = 1
    BackColor = &HFF8080&
    ForeColor = &HFF0000&
    Left = 3540
    Top = 6045
    Width = 1020
    Height = 240
    Visible = 0   'False
    TabIndex = 27
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
  Begin MSHFlexGrid Fgrid1
    Left = 3495
    Top = 5745
    Width = 4035
    Height = 3105
    Visible = 0   'False
    TabIndex = 26
  End
  Begin PictureBox Picture2
    Picture = "CompMast.frx":442
    Left = 17670
    Top = 3765
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 79
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "CompMast.frx":790
    Left = 17670
    Top = 3495
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 78
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 14325
    Top = 6435
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 76
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 225
      Top = 105
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 77
    End
  End
  Begin DataGrid DgUser
    Left = 9000
    Top = 8895
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 73
  End
  Begin DataGrid DGUnderAc
    Left = 9615
    Top = 8610
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin DataGrid DGAcName
    Left = 9585
    Top = 7965
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin MSFlexGrid FGPoint
    Left = 14265
    Top = 4890
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 75
  End
  Begin DataGrid DGCity
    Left = 9210
    Top = 7605
    Width = 4845
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 74
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    Left = 16470
    Top = 4095
    Width = 1905
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 24
    BackColor = &HFFFFFF&
    Left = 16485
    Top = 4455
    Width = 1905
    Height = 255
    Enabled = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 4155
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 27
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2880
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 36
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
  Begin TextBox Txt
    Index = 26
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2610
    Width = 3195
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 1740
    Top = 2010
    Width = 550
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 3840
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 3525
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 20
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
    Left = 7575
    Top = 3210
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 2895
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1950
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1635
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1320
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 2265
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 2580
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 6
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2340
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 34
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
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2070
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 1800
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 1530
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 31
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1740
    Top = 1695
    Width = 4140
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
    BackColor = &HE0E0E0&
    Left = 1320
    Top = 3840
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox txtCurrBal
    ForeColor = &HC00000&
    Left = 3870
    Top = 3000
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 53
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
  End
  Begin TextBox Txt
    Index = 30
    BackColor = &HFFFFFF&
    Left = 16065
    Top = 3795
    Width = 975
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 52
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
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 780
    Top = 3000
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 37
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1740
    Top = 1380
    Width = 4140
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8025
    Top = 1005
    Width = 3585
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1005
    Width = 420
    Height = 285
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 4
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
    Left = 1740
    Top = 750
    Width = 1410
    Height = 285
    TabIndex = 0
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
    Index = 17
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 1260
    Width = 3195
    Height = 255
    Visible = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1740
    Top = 1065
    Width = 4140
    Height = 285
    TabIndex = 1
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 720
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 29
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 450
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 28
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
  Begin MSHFlexGrid FGrid
    Left = 240
    Top = 3540
    Width = 5715
    Height = 1215
    TabIndex = 80
  End
  Begin MSHFlexGrid FgridPlan
    Left = 11640
    Top = 1005
    Width = 4305
    Height = 7320
    TabIndex = 81
  End
  Begin MSHFlexGrid FGridIncl
    Left = 7575
    Top = 5745
    Width = 3960
    Height = 2175
    TabIndex = 93
  End
  Begin Label Lbl
    Caption = "Trade Name"
    Index = 34
    ForeColor = &HC00000&
    Left = 6120
    Top = 5445
    Width = 1170
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
  Begin Label Lbl
    Caption = "Legal Name"
    Index = 33
    ForeColor = &HC00000&
    Left = 6120
    Top = 5130
    Width = 1155
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
  Begin Label Lbl
    Caption = "Map Code"
    Index = 32
    ForeColor = &HC00000&
    Left = 2985
    Top = 2025
    Width = 960
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
  Begin Label Lbl
    Caption = "GSTIN"
    Index = 31
    ForeColor = &HC00000&
    Left = 6120
    Top = 4815
    Width = 600
    Height = 240
    TabIndex = 94
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4125
    Top = 7470
    Width = 2790
    Height = 285
    TabIndex = 91
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
    Left = 750
    Top = 7470
    Width = 2880
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 89
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
  Begin Label Lbl
    Caption = "PAN No."
    Index = 13
    ForeColor = &HC00000&
    Left = 6120
    Top = 4485
    Width = 780
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &HC0&
    Left = 2310
    Top = 2340
    Width = 645
    Height = 285
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 0
    BackColor = &HC0FFFF&
    ForeColor = &HC0&
    Left = 2310
    Top = 2025
    Width = 645
    Height = 285
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
  Begin Label Lbl
    Caption = "Web Password"
    Index = 30
    ForeColor = &H0&
    Left = 14925
    Top = 3150
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 85
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
  Begin Label Lbl
    Caption = "Active"
    Index = 29
    ForeColor = &HC00000&
    Left = 240
    Top = 2340
    Width = 585
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
  Begin Label Lbl
    Caption = "Commission"
    Index = 28
    ForeColor = &H0&
    Left = 14910
    Top = 4095
    Width = 1035
    Height = 240
    Visible = 0   'False
    TabIndex = 72
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
  Begin Label Lbl
    Caption = "Contract Type"
    Index = 27
    ForeColor = &H0&
    Left = 14910
    Top = 4365
    Width = 1200
    Height = 240
    TabIndex = 71
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
  Begin Label Lbl
    Caption = "Discount Type"
    Index = 26
    ForeColor = &HC00000&
    Left = 6120
    Top = 4155
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
  Begin Label Lbl
    Caption = "Black Listed By"
    Index = 25
    ForeColor = &H0&
    Left = 14880
    Top = 2910
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 69
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
  Begin Label Lbl
    Caption = "BlackList Reason"
    Index = 24
    ForeColor = &H0&
    Left = 14880
    Top = 2640
    Width = 1410
    Height = 240
    Visible = 0   'False
    TabIndex = 68
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
  Begin Label Lbl
    Caption = "Allow Credit"
    Index = 23
    ForeColor = &HC00000&
    Left = 225
    Top = 2025
    Width = 1170
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &HC00000&
    Left = 6120
    Top = 2895
    Width = 1140
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 3
    ForeColor = &HC00000&
    Left = 6120
    Top = 1005
    Width = 1440
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
  Begin Label Lbl
    Caption = "Address"
    Index = 4
    ForeColor = &HC00000&
    Left = 6120
    Top = 1320
    Width = 750
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
  Begin Label Lbl
    Caption = "City Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 6120
    Top = 2250
    Width = 975
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
  Begin Label Lbl
    Caption = "Mobile No."
    Index = 8
    ForeColor = &HC00000&
    Left = 6120
    Top = 3210
    Width = 1020
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
  Begin Label Lbl
    Caption = "Fax No."
    Index = 9
    ForeColor = &HC00000&
    Left = 6120
    Top = 3525
    Width = 735
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
  Begin Label Lbl
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 6120
    Top = 3840
    Width = 585
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
  Begin Label Lbl
    Caption = "PinCode"
    Index = 1
    ForeColor = &HC00000&
    Left = 6120
    Top = 2580
    Width = 810
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
  Begin Label Lbl
    Caption = "Black Listed"
    Index = 22
    ForeColor = &H0&
    Left = 14880
    Top = 2370
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 58
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
  Begin Label Lbl
    Caption = "Credit Limit"
    Index = 21
    ForeColor = &H0&
    Left = 14880
    Top = 2100
    Width = 975
    Height = 240
    Visible = 0   'False
    TabIndex = 57
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
  Begin Label Lbl
    Caption = "Interest"
    Index = 20
    ForeColor = &H0&
    Left = 14880
    Top = 1830
    Width = 660
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
  Begin Label Lbl
    Caption = "Credit days"
    Index = 19
    ForeColor = &H0&
    Left = 14880
    Top = 1545
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 55
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
  Begin Label Lbl
    Caption = "Company Type"
    Index = 18
    ForeColor = &HC00000&
    Left = 225
    Top = 1695
    Width = 1425
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
  Begin Label Lbl
    Caption = "Account Nature"
    Index = 6
    ForeColor = &HC00000&
    Left = 15615
    Top = 3465
    Width = 1455
    Height = 240
    Visible = 0   'False
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
  Begin Shape Shape2
    BorderColor = &HC00000&
    Left = 540
    Top = 2715
    Width = 5100
    Height = 660
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 1980
    Top = 3015
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
  Begin Label LblCurBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 5070
    Top = 3015
    Width = 480
    Height = 240
    Visible = 0   'False
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
  Begin Label Lbl
    Caption = "Opening Balance"
    Index = 17
    ForeColor = &H4000&
    Left = 600
    Top = 2745
    Width = 1650
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
  Begin Label Lbl
    Caption = "Current Balance"
    Index = 16
    ForeColor = &H4000&
    Left = 3600
    Top = 2745
    Width = 1545
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
  Begin Label Lbl
    Caption = "Code"
    Index = 15
    ForeColor = &HC00000&
    Left = 225
    Top = 750
    Width = 495
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
  Begin Label Lbl
    Caption = "Remark"
    Index = 14
    ForeColor = &H0&
    Left = 14925
    Top = 1260
    Width = 660
    Height = 240
    Visible = 0   'False
    TabIndex = 43
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
  Begin Label LblNature
    Caption = "Nature"
    ForeColor = &HFF&
    Left = 2385
    Top = 2700
    Width = 1395
    Height = 240
    TabIndex = 42
    Alignment = 2 'Center
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
  Begin Label Lbl
    Caption = "LST No."
    Index = 12
    ForeColor = &H0&
    Left = 14880
    Top = 720
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 41
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
  Begin Label Lbl
    Caption = "CST No."
    Index = 11
    ForeColor = &H0&
    Left = 14880
    Top = 450
    Width = 705
    Height = 240
    Visible = 0   'False
    TabIndex = 40
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
  Begin Label Lbl
    Caption = "Under Group"
    Index = 2
    ForeColor = &HC00000&
    Left = 225
    Top = 1380
    Width = 1215
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
  Begin Label Lbl
    Caption = "Company Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 225
    Top = 1065
    Width = 1515
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
End

Attribute VB_Name = "CompMast"

Private global_56 As Integer
Private global_54 As Integer
Private global_52 As Integer
Private global_64 As Long

Private Sub FGPoint_UnknownEvent_9 'EAE690
  'Data Table: 547210
  loc_EAE618: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_EAE61B:   Call DGUnderAc_UnknownEvent_9()
  loc_EAE620: End If
  loc_EAE63C: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EAE63F:   Call DGAcName_UnknownEvent_9()
  loc_EAE644: End If
  loc_EAE660: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EAE663:   Call DGCity_UnknownEvent_9()
  loc_EAE668: End If
  loc_EAE684: If (CBool(Me.DgUser.Visible) = &HFF) Then
  loc_EAE687:   Call DGUser_UnknownEvent_9()
  loc_EAE68C: End If
  loc_EAE68C: Exit Sub
  loc_EAE68D: StAryRecMove
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E9F054
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_E9EFF0: If (CDbl(CLng(Me.Fgrid1.BackColorSel)) = CDbl("14737632")) Then
  loc_E9F006:   Me.Fgrid1.Col = 3
  loc_E9F00E: End If
  loc_E9F021: Me.Fgrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E9F034: Set var_88 = Me.TxtGrid1
  loc_E9F03A: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_BC)
  loc_E9F042: var_BC.Visible = False
  loc_E9F04E: Call Proc_22_81_F6C2B0()
  loc_E9F053: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E62CD0
  'Data Table: 547210
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E62C90: Set var_88 = Me.TxtGrid1
  loc_E62C96: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E62CB0: If (var_8C.Visible = 0) Then
  loc_E62CC6:   Me.Fgrid1.BackColorSel = CVar(CLng("16777215"))
  loc_E62CCE: End If
  loc_E62CCE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_8 'E1CAC0
  'Data Table: 547210
  loc_E1CAB7: Me.Fgrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1CABF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E2C6B4
  'Data Table: 547210
  Dim var_8C As TextBox
  loc_E2C697: Set var_88 = Me.TxtGrid1
  loc_E2C69D: Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_8C)
  loc_E2C6A5: var_8C.Visible = False
  loc_E2C6B1: Exit Sub
  loc_E2C6B2: Set var_6794 = 
End Sub

Public Sub Fgrid1_UnknownEvent_A(arg_C, arg_10) '1123B20
  'Data Table: 547210
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_130 As Long
  loc_11237B8: On Error Goto loc_1123B1A
  loc_11237BF: Set var_88 = Me.tOPCtrl1
  loc_11237C5: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_11237DE: If (CStr() = "Browse") Then
  loc_11237E1:   Exit Sub
  loc_11237E2: End If
  loc_1123856: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.Fgrid1.Tag))) = CDbl((CLng(Me.Fgrid1.Rows) - (CLng(Me.Fgrid1.Rows) - 1))))) Then
  loc_112386F:   Me.Fgrid1.CellBackColor = CVar(CLng(global_188))
  loc_112387F:   var_9C = "+{Tab}"
  loc_1123885:   Proc_303_0_FB9B68(CStr(Me.Fgrid1.Tag), 0)
  loc_112388F:   arg_C = 0
  loc_1123895: Else
  loc_11238C4:   var_9C = CStr(Me.Fgrid1.Tag)
  loc_11238EC:   If ((CLng(arg_C) = &H28) And (CDbl(Val(var_9C)) = CDbl((CLng(Me.Fgrid1.Rows) - 1)))) Then
  loc_1123905:     Me.Fgrid1.CellBackColor = CVar(CLng(global_188))
  loc_112390D:   End If
  loc_112390D: End If
  loc_1123913: global_56 = arg_C
  loc_1123939: Me.Fgrid1.Tag = CVar(CStr(CLng(Me.Fgrid1.Row)))
  loc_112395D: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1123973:   var_EC = CLng(Me.Fgrid1.Col)
  loc_1123983:   If (var_EC = CLng(4)) Then
  loc_1123999:     var_D4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_11239A2:     Set var_A0 = Me.Fgrid1
  loc_11239B1:     var_FC = CVar(CLng(var_A0.Col)) 'Long
  loc_11239B6:     var_11C = vbNullString
  loc_11239C0:     Set var_B4 = Me.Fgrid1
  loc_11239C6:     LateIdCallSt
  loc_11239DE:   End If
  loc_11239DE: End If
  loc_11239E4: If (arg_C = &HD) Then
  loc_11239FA:   var_130 = CLng(Me.Fgrid1.Col)
  loc_1123A0A:   If (var_130 = CLng(1)) Then
  loc_1123A1B:     Set var_88 = Me.Txt
  loc_1123A21:     Call 0.Method_Fgrid1_UnknownEvent_A0 (CInt(&H1C), var_A0, var_9C, var_130, var_B4, var_11C, var_FC)
  loc_1123A29:     var_D4 = var_A0.Text
  loc_1123A40:     If (var_9C = "Percent") Then
  loc_1123A43:       GoTo loc_1123A96
  loc_1123A46:     End If
  loc_1123A54:     Set var_88 = Me.Txt
  loc_1123A5A:     Call 0.Method_Fgrid1_UnknownEvent_A0 (CInt(&H1C), var_A0, var_9C, var_EC, global_56)
  loc_1123A62:     var_B0 = var_A0.Text
  loc_1123A79:     If (var_9C = "Amount") Then
  loc_1123A8E:       Me.Fgrid1.Col = CVar(CLng(4))
  loc_1123A96:       ' Referenced from: 1123A43
  loc_1123A96:     End If
  loc_1123A96:   End If
  loc_1123A96: End If
  loc_1123B00: If ((((((arg_C = &HD) Or (CLng(arg_C) = &H26)) Or (arg_C = &H10)) Or (CLng(arg_C) = &H28)) Or (CLng(arg_C) = 9)) And (CLng(Me.Fgrid1.Row) = (CLng(Me.Fgrid1.Rows) - 1))) Then
  loc_1123B03: End If
  loc_1123B09: If (arg_C = &HD) Then
  loc_1123B11:   global_54 = 0
  loc_1123B14: End If
  loc_1123B16: arg_C = 0
  loc_1123B19: Exit Sub
  loc_1123B1A: ' Referenced from: 11237B8
  loc_1123B1A: Proc_6_60_E62BC4(arg_C, global_54, arg_C)
  loc_1123B1F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E12698
  'Data Table: 547210
  loc_E12689: Call Fgrid1_UnknownEvent_C()
  loc_E12693: global_54 = 0
  loc_E12696: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'EEFDE4
  'Data Table: 547210
  loc_EEFD43: var_88 = CStr(Ucase(Chr(CLng(Index))))
  loc_EEFD4D: On Error Goto loc_EEFDDC
  loc_EEFD73: If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_EEFDB4:   Proc_6_63_110ABA4(Me, Me.Fgrid1, Me.TxtGrid1, 1)
  loc_EEFDC6: End If
  loc_EEFDD0: If (CLng(Index) <> &HD) Then
  loc_EEFDD8:   global_54 = &HFF
  loc_EEFDDB: End If
  loc_EEFDDB: Exit Sub
  loc_EEFDDC: ' Referenced from: EEFD4D
  loc_EEFDDC: Proc_6_60_E62BC4(global_54, &HFF, Index)
  loc_EEFDE1: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_D(arg_C, arg_10) 'FDF290
  'Data Table: 547210
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FDF0BC: On Error Goto loc_FDF289
  loc_FDF0C3: Set var_8C = Me.tOPCtrl1
  loc_FDF0C9: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FDF0E2: If (CStr() = "Browse") Then
  loc_FDF0E5:   Exit Sub
  loc_FDF0E6: End If
  loc_FDF103: If (CLng(Me.Fgrid1.ColSel) = CLng(0)) Then
  loc_FDF106:   Exit Sub
  loc_FDF107: End If
  loc_FDF118: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FDF13A:   If (CLng(Me.Fgrid1.Row) >= 1) Then
  loc_FDF174:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FDF196:       If (CLng(Me.Fgrid1.Rows) > 2) Then
  loc_FDF1AC:         var_B0 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_FDF1B5:         Set var_114 = Me.Fgrid1
  loc_FDF1D0:       Else
  loc_FDF1E3:         Me.Fgrid1.Rows = 1
  loc_FDF200:         var_D0 = CVar(CStr(CLng(Me.Fgrid1.Rows))) 'String
  loc_FDF208:         Set var_114 = Me.Fgrid1
  loc_FDF237:         Me.Fgrid1.FixedRows = 1
  loc_FDF23F:       End If
  loc_FDF23F:     End If
  loc_FDF242:   Else
  loc_FDF24D:     var_D0 = "Delete Module"
  loc_FDF263:     MsgBox("No Entries To Delete", &H10, var_D0, var_F0, var_110)
  loc_FDF273:   End If
  loc_FDF277:   Set var_8C = Me.Fgrid1
  loc_FDF288: End If
  loc_FDF288: Exit Sub
  loc_FDF289: ' Referenced from: FDF0BC
  loc_FDF289: Proc_6_60_E62BC4(Fgrid1.DispID_8001, Fgrid1.DispID_10000, var_D0)
  loc_FDF28E: Exit Sub
  loc_FDF28F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2661C
  'Data Table: 547210
  loc_E2660B: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E26613: Call Proc_22_81_F6C2B0()
  loc_E26618: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1CA20
  'Data Table: 547210
  loc_E1CA17: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CA1F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2F8F4
  'Data Table: 547210
  Dim var_8C As TextBox
  loc_E2F8D7: Set var_88 = Me.TxtGrid
  loc_E2F8DD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2F8E5: var_8C.Visible = False
  loc_E2F8F1: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1137728
  'Data Table: 547210
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim arg_C As Integer
  Dim var_D8 As Variant
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  Dim var_140 As Long
  loc_11373B0: On Error Goto loc_11376C3
  loc_11373B7: Set var_88 = Me.tOPCtrl1
  loc_11373BD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_11373D6: If (CStr() = "Browse") Then
  loc_11373D9:   Exit Sub
  loc_11373DA: End If
  loc_11373F7: var_C4 = Me.FGrid.Rows
  loc_113744E: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1137459:   var_9C = "+{Tab}"
  loc_113745F:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1137469:   arg_C = 0
  loc_113746F: Else
  loc_1137479:   var_B0 = Me.FGrid.Rows
  loc_11374C6:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11374D1:     var_9C = "{Tab}"
  loc_11374D7:     Proc_303_0_FB9B68(var_9C, 0, var_B0)
  loc_11374EB:     If (CInt(global_100) = 0) Then
  loc_1137525:       If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1137528:         Call TopCtrl1_UnknownEvent_16()
  loc_113752D:       End If
  loc_113752D:     End If
  loc_113752F:     arg_C = 0
  loc_1137532:   End If
  loc_1137532: End If
  loc_1137538: global_56 = arg_C
  loc_113755E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1137584: var_11C = CLng(Me.FGrid.Col)
  loc_1137594: If Not (var_11C = CLng(1)) Then
  loc_113759E:   If Not (var_11C = CLng(2)) Then
  loc_11375A8:     If Not (var_11C = CLng(4)) Then
  loc_11375B2:       If (var_11C = CLng(3)) Then
  loc_11375B5:       End If
  loc_11375B5:     End If
  loc_11375B5:   End If
  loc_11375C6:   If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_11375DC:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11375F4:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11375F9:     var_12C = vbNullString
  loc_1137603:     Set var_B4 = Me.FGrid
  loc_1137609:     LateIdCallSt
  loc_1137621:   End If
  loc_1137621: End If
  loc_113762B: If (CLng(arg_C) = &HD) Then
  loc_1137641:   var_140 = CLng(Me.FGrid.Col)
  loc_1137651:   If Not (var_140 = CLng(1)) Then
  loc_113765B:     If Not (var_140 = CLng(2)) Then
  loc_1137665:       If Not (var_140 = CLng(4)) Then
  loc_113766F:         If (var_140 = CLng(3)) Then
  loc_1137672:         End If
  loc_1137672:       End If
  loc_1137672:     End If
  loc_11376A3:     Proc_183_24_1044608(Me, Me.FGrid, Me.TxtGrid, 0, var_140, Me.TxtGrid, var_12C, var_F8)
  loc_11376B5:   End If
  loc_11376BA:   global_54 = 0
  loc_11376BD: End If
  loc_11376BF: arg_C = 0
  loc_11376C2: Exit Sub
  loc_11376C3: ' Referenced from: 11373B0
  loc_11376CB: Set var_88 = Err()
  loc_11376D1: Call 0.Method_arg_1C (var_14C, arg_C, global_54, var_D8, var_11C)
  loc_11376E2: If (var_14C <> 0) Then
  loc_11376ED:   Set var_88 = Err()
  loc_11376F3:   Call 0.Method_arg_2C (var_9C, global_56, arg_C)
  loc_1137714:   MsgBox(CVar(var_9C), &H40, "Validation", var_C4, var_118)
  loc_1137727: End If
  loc_1137727: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F672E0
  'Data Table: 547210
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F671C0: On Error Goto loc_F6727A
  loc_F671C7: Set var_88 = Me.tOPCtrl1
  loc_F671CD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_F671D5: var_9C = CStr()
  loc_F671E6: If (var_9C = "Browse") Then
  loc_F671E9:   Exit Sub
  loc_F671EA: End If
  loc_F671FD: var_A0 = CLng(Me.FGrid.Col)
  loc_F6720D: If Not (var_A0 = CLng(1)) Then
  loc_F67217:   If Not (var_A0 = CLng(2)) Then
  loc_F67221:     If Not (var_A0 = CLng(4)) Then
  loc_F6722B:       If (var_A0 = CLng(3)) Then
  loc_F6722E:       End If
  loc_F6722E:     End If
  loc_F6722E:   End If
  loc_F6725F:   Proc_183_24_1044608(Me, Me.FGrid, Me.TxtGrid)
  loc_F67271: End If
  loc_F67276: global_54 = 0
  loc_F67279: Exit Sub
  loc_F6727A: ' Referenced from: F671C0
  loc_F67282: Set var_88 = Err()
  loc_F67288: Call 0.Method_arg_1C (var_B8, global_54)
  loc_F67299: If (var_B8 <> 0) Then
  loc_F672A4:   Set var_88 = Err()
  loc_F672AA:   Call 0.Method_arg_2C (var_9C, 0)
  loc_F672CB:   MsgBox(CVar(var_9C), &H40, "Validation", var_F8, var_118)
  loc_F672DE: End If
  loc_F672DE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F972F8
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_F9719C: On Error Goto loc_F97292
  loc_F971B2: var_9C = CLng(Me.FGrid.Col)
  loc_F971C2: If Not (var_9C = CLng(1)) Then
  loc_F971CC:   If Not (var_9C = CLng(2)) Then
  loc_F971D6:     If (var_9C = CLng(4)) Then
  loc_F971D9:     End If
  loc_F971D9:   End If
  loc_F97212:   Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F97227: Else
  loc_F9722E:   If (var_9C = CLng(3)) Then
  loc_F9726A:     Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F9727C:   End If
  loc_F9727C: End If
  loc_F97286: If (CLng(Index) <> &HD) Then
  loc_F9728E:   global_54 = &HFF
  loc_F97291: End If
  loc_F97291: Exit Sub
  loc_F97292: ' Referenced from: F9719C
  loc_F9729A: Set var_88 = Err()
  loc_F972A0: Call 0.Method_arg_1C (var_B4, global_54, Index)
  loc_F972B1: If (var_B4 <> 0) Then
  loc_F972BC:   Set var_88 = Err()
  loc_F972C2:   Call 0.Method_arg_2C (var_B8, 0)
  loc_F972E3:   MsgBox(CVar(var_B8), &H40, "Validation", var_F8, var_118)
  loc_F972F6: End If
  loc_F972F6: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '107BF6C
  'Data Table: 547210
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  loc_107BCD0: On Error Goto loc_107BF07
  loc_107BCD7: Set var_8C = Me.tOPCtrl1
  loc_107BCDD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_107BCE5: var_A0 = CStr()
  loc_107BCF6: If (var_A0 = "Browse") Then
  loc_107BCF9:   Exit Sub
  loc_107BCFA: End If
  loc_107BD17: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_107BD1A:   Exit Sub
  loc_107BD1B: End If
  loc_107BD2C: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_107BD4E:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_107BD88:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_107BDAA:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_107BDC0:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107BDC9:         Set var_114 = Me.FGrid
  loc_107BDE1:         Call Proc_22_86_1129BEC(FGrid.DispID_10000)
  loc_107BDE9:       Else
  loc_107BDFC:         Me.FGrid.Rows = 1
  loc_107BE19:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_107BE21:         Set var_114 = Me.FGrid
  loc_107BE50:         Me.FGrid.FixedRows = 1
  loc_107BE58:       End If
  loc_107BE58:     End If
  loc_107BE7D:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_107BE87:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_107BE8F:       var_E0 = CVar(CLng(0)) 'Long
  loc_107BE99:       var_9C = CVar(CStr(var_86)) 'String
  loc_107BEA1:       Set var_8C = Me.FGrid
  loc_107BEA7:       LateIdCallSt
  loc_107BEB8:     Next var_118 'Integer
  loc_107BEC0:   Else
  loc_107BEE1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_107BEF1:   End If
  loc_107BEF5:   Set var_8C = Me.FGrid
  loc_107BF06: End If
  loc_107BF06: Exit Sub
  loc_107BF07: ' Referenced from: 107BCD0
  loc_107BF0F: Set var_8C = Err()
  loc_107BF15: Call 0.Method_arg_1C (var_12C)
  loc_107BF26: If (var_12C <> 0) Then
  loc_107BF31:   Set var_8C = Err()
  loc_107BF37:   Call 0.Method_arg_2C (var_A0)
  loc_107BF58:   MsgBox(CVar(var_A0), &H40, "Validation", var_F0, var_110)
  loc_107BF6B: End If
  loc_107BF6B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D9C0
  'Data Table: 547210
  loc_E1D9B7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D9BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1C250
  'Data Table: 547210
  loc_E1C247: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C24F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FCC0
  'Data Table: 547210
  Dim var_8C As TextBox
  loc_E3FC9F: Set var_88 = Me.TxtGrid
  loc_E3FCA5: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3FCAD: var_8C.Visible = False
  loc_E3FCB9: Call Proc_22_81_F6C2B0()
  loc_E3FCBE: Exit Sub
End Sub

Private Sub Form_Load() '12C4810
  'Data Table: 547210
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim unk_547249 As Connection15
  loc_12C41A0: On Error Goto loc_12C47D4
  loc_12C41B0: Set var_8C = Me.Txt
  loc_12C41B6: Call 0.Method_Form_Load0 (CInt(&H18), var_90)
  loc_12C41BE: var_90.Visible = False
  loc_12C41D5: Set var_8C = Me.Lbl
  loc_12C41DB: Call 0.Method_Form_Load0 (&H1B, var_90)
  loc_12C41E3: var_90.Visible = False
  loc_12C41FE: Me.LblUser.Left = CDbl(500)
  loc_12C4215: Me.LblUser.Top = CDbl(7800)
  loc_12C422C: Me.LblLDt.Top = CDbl(8160)
  loc_12C4243: Me.LblLDt.Left = CDbl(500)
  loc_12C4252: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12C426A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12C4285: Me.Fgrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12C42A0: Me.FGridIncl.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12C42BB: Me.FgridPlan.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12C42CF: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_12C42E0: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_12C42F1: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_12C4302: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_12C4313: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_12C4324: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_12C4335: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_12C4346: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_12C4357: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_12C4368: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_12C4382: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_12C4390: Set var_8C = MemVar_1F92044
  loc_12C439F: Call 0.Method_Form_Load8 (var_8C)
  loc_12C43B5: Me.var_8C.Clone
  loc_12C43C0: Set var_90 = var_8C
  loc_12C43CF: Call 0.Method_arg_50 (var_90, -1)
  loc_12C4413: Proc_183_1_F5B310(Me, CStr(-2147483643), CStr(&HC00000))
  loc_12C442B: Set var_8C = Me.txtCurrBal
  loc_12C4431: Me.txtCurrBal.BackColor = -2147483643
  loc_12C4448: Me.txtCurrBal.ForeColor = &HC00000
  loc_12C4455: global_52 = 0
  loc_12C4461: If (global_52 = &HFF) Then
  loc_12C446F:   Set var_8C = Me.Lbl
  loc_12C4475:   Call 0.Method_Form_Load0 (&HF, var_90, &HFF, global_52)
  loc_12C447D:   var_90.Visible = CByte(1)
  loc_12C4496:   Set var_8C = Me.Txt
  loc_12C449C:   Call 0.Method_Form_Load0 (CInt(0), var_90, &HFF)
  loc_12C44A4:   var_90.Visible = CByte(1)
  loc_12C44B3: Else
  loc_12C44BE:   Set var_8C = Me.Lbl
  loc_12C44C4:   Call 0.Method_Form_Load0 (&HF, var_90)
  loc_12C44CC:   var_90.Visible = False
  loc_12C44E5:   Set var_8C = Me.Txt
  loc_12C44EB:   Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_12C44F3:   var_90.Visible = False
  loc_12C44FF: End If
  loc_12C4509: Set global_112 = New 
  loc_12C451B: Me.Recordset15.CursorLocation = 3
  loc_12C4545: var_C8 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE NATURE='Customer' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_12C454F: Me.Open var_C8, CVar(MemVar_1F921DC), 2
  loc_12C4563: CVarUnk
  loc_12C4568: VerifyVarObj
  loc_12C456E: Set var_8C = Me.DGAcName
  loc_12C4574: LateIdStAd
  loc_12C459E: Me.DGAcName.CursorLocation = 3
  loc_12C45C1: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where NATURE='Customer' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_12C45D2: Me.Open CVar(var_B4 & "' or LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F921DC), 2
  loc_12C45E6: CVarUnk
  loc_12C45EB: VerifyVarObj
  loc_12C45F1: Set var_8C = Me.DGUnderAc
  loc_12C45F7: LateIdStAd
  loc_12C4621: Me.DGUnderAc.CursorLocation = 3
  loc_12C464B: var_C8 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by CityName") 'String
  loc_12C4669: CVarUnk
  loc_12C466E: VerifyVarObj
  loc_12C4674: Set var_8C = Me.DGCity
  loc_12C467A: LateIdStAd
  loc_12C46A4: Me.DGCity.CursorLocation = 3
  loc_12C46CE: var_C8 = CVar("Select  Code, Name From Employee WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_12C46D8: r_C8, CVar(MemVar_1F921DC), 2 var_C8, CVar(MemVar_1F921DC), 2
  loc_12C46EC: CVarUnk
  loc_12C46F1: VerifyVarObj
  loc_12C46FD: LateIdStAd
  loc_12C4715: Set global_108 = New 
  loc_12C4727: Me.DgUser.LockType = 3
  loc_12C4737: Me.CursorLocation = 3
  loc_12C4747: Me.CursorType = 2
  loc_12C4760: var_B4 = "Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup Where CompanyType in ('Corporate','Travel Agency','Mesh') and (LOGSITE_CODE='" & MemVar_1F92078
  loc_12C4770: unk_547249.Execute var_B4 & "' or LOGSITE_CODE='HO') order by Name", var_C8, -1
  loc_12C47A2: Set var_8C = Me
  loc_12C47AB: var_B4 = "INI"
  loc_12C47B9: Call Proc_22_78_F5E734(Proc_5_1_100CB50(var_B4, var_8C, Me.DgUser, var_8C, var_8C, New, 3, -1), var_8C, New, 3)
  loc_12C47C4: Call Proc_22_83_1049D70(-1, var_8C)
  loc_12C47C9: Call Proc_22_82_1009338(New)
  loc_12C47CE: Call Proc_22_91_18269A4(3)
  loc_12C47D3: Exit Sub
  loc_12C47D4: ' Referenced from: 12C41A0
  loc_12C47DC: Set var_8C = Err()
  loc_12C47E2: Call 0.Method_arg_2C (var_B4)
  loc_12C47FB: MsgBox(CVar(var_B4), &H40, var_DC, var_EC, var_10C)
  loc_12C480E: Exit Sub
End Sub

Private Sub Form_Resize() '10CAC34
  'Data Table: 547210
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_10CA946: Call 0.Method_arg_50 (var_88)
  loc_10CA958: Me.LblFormCaption.Caption = var_88
  loc_10CA971: Me.LblFormCaption.Left = CDbl(0)
  loc_10CA97D: Set var_A0 = Me.tOPCtrl1
  loc_10CA983: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_10CA990: Set var_8C = Me.tOPCtrl1
  loc_10CA996: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_10CA9B0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_10CA9CB: Call 0.Method_arg_100 (var_B8)
  loc_10CA9DD: Me.LblFormCaption.Width = var_B8
  loc_10CA9E5: Call Proc_22_85_102FD00()
  loc_10CA9EA: Call Proc_22_83_1049D70()
  loc_10CA9FD: Set var_8C = Me.Txt
  loc_10CAA03: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_10CAA22: Me.DGAcName.Left = CVar(var_A0.Left)
  loc_10CAA3E: Set var_B4 = Me.Txt
  loc_10CAA44: Call 0.Method_Form_Resize0 (CInt(1), var_DC)
  loc_10CAA5F: Set var_8C = Me.Txt
  loc_10CAA65: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_10CAA7D: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_10CAA8C: Me.DGAcName.Top = CVar(var_A0.Left)
  loc_10CAAAC: Set var_8C = Me.Txt
  loc_10CAAB2: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_10CAAD1: Me.DGUnderAc.Left = CVar(var_A0.Left)
  loc_10CAAED: Set var_B4 = Me.Txt
  loc_10CAAF3: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_10CAB0E: Set var_8C = Me.Txt
  loc_10CAB14: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_10CAB2C: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_10CAB3B: Me.DGUnderAc.Top = CVar(var_A0.Left)
  loc_10CAB5B: Set var_8C = Me.Txt
  loc_10CAB61: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_10CAB80: Me.DGCity.Left = CVar(var_A0.Left)
  loc_10CAB9C: Set var_B4 = Me.Txt
  loc_10CABA2: Call 0.Method_Form_Resize0 (CInt(8), var_DC)
  loc_10CABBD: Set var_8C = Me.Txt
  loc_10CABC3: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_10CABDB: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_10CABEA: Me.DGCity.Top = CVar(var_A0.Left)
  loc_10CAC0F: Me.DgUser.Left = CVar(CDbl(250))
  loc_10CAC2A: Me.DgUser.Top = CVar(CDbl(4000))
  loc_10CAC32: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E925FC
  'Data Table: 547210
  loc_E92587: Set global_108 = Nothing
  loc_E92599: Set global_112 = Nothing
  loc_E925AB: Set global_116 = Nothing
  loc_E925BD: Set global_120 = Nothing
  loc_E925CF: Set global_124 = Nothing
  loc_E925E1: Set global_128 = Nothing
  loc_E925F3: Set global_184 = Nothing
  loc_E925FA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '110B9A0
  'Data Table: 547210
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A0 As DataGrid
  Dim var_B4 As DataGrid
  Dim var_C4 As Variant
  Dim var_C8 As Frame
  Dim var_E0 As Variant
  loc_110B698: On Error Goto loc_110B939
  loc_110B69E: var_86 = KeyCode
  loc_110B6AB: If Not (var_86 = CInt(&HD)) Then
  loc_110B6B8:   If Not (var_86 = CInt(&H28)) Then
  loc_110B6C5:     If (var_86 = CInt(&H26)) Then
  loc_110B6C8:     End If
  loc_110B6C8:   End If
  loc_110B6CB:   var_88 = KeyCode
  loc_110B6D8:   If Not (var_88 = CInt(&H28)) Then
  loc_110B6E5:     If (var_88 = CInt(&H26)) Then
  loc_110B6E8:     End If
  loc_110B6EC:     Set var_8C = Me.DGAcName
  loc_110B702:     Set var_A0 = Me.DGUnderAc
  loc_110B719:     Set var_B4 = Me.DGCity
  loc_110B71F:     var_C4 = var_B4.Visible
  loc_110B733:     Set var_C8 = Me.FrmList
  loc_110B739:     var_CA = var_C8.Visible
  loc_110B78F:     If ((((((CBool(var_8C.Visible) = &HFF) Or (CBool(var_A0.Visible) = &HFF)) Or (CBool(var_C4) = &HFF)) Or (var_CA = &HFF)) Or (CBool(Me.DgUser.Visible) = &HFF)) Or (CBool(Me.Fgrid1.Visible) = &HFF)) Then
  loc_110B792:       Exit Sub
  loc_110B793:     End If
  loc_110B793:   End If
  loc_110B799:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_110B7A8:   If TypeOf var_8C Is arg_5 Then
  loc_110B7B1:     Call 0.Method_arg_1E8 (var_8C)
  loc_110B7CC:     Call Txt_Validate(CInt(var_8C.index))
  loc_110B7D7:   End If
  loc_110B7E3:   Set var_8C = Me 
  loc_110B7F3:   Call 0.Method_arg_58 (var_8C, KeyCode, Shift, var_CA)
  loc_110B801:   If (var_CA = &HFF) Then
  loc_110B80A:     Call 0.Method_arg_1E8 (var_8C, 0)
  loc_110B812:     var_9C = var_8C.Name
  loc_110B832:     Call 0.Method_arg_1E8 (var_A0, (Ucase(var_9C) = "TXTGRID"))
  loc_110B83A:     var_E0 = var_A0.Name
  loc_110B85E:     Call 0.Method_arg_1E8 (var_B4, var_9C Or (Ucase(var_E0) = "FGRID"))
  loc_110B88A:     Call 0.Method_arg_1E8 (var_C8)
  loc_110B8D0:     If CBool(var_86 Or (Ucase(var_B4.Name) = "TXTGRID1") Or (Ucase(var_C8.Name) = "FGRID1")) Then
  loc_110B8DD:       If (CLng(KeyCode) = &H28) Then
  loc_110B8E6:         Call 0.Method_arg_1E8 (var_8C)
  loc_110B8F4:         Call Proc_22_96_E08300(var_8C)
  loc_110B8FC:       End If
  loc_110B8FF:     Else
  loc_110B905:       Call 0.Method_arg_1E8 (var_8C)
  loc_110B913:       Call Proc_22_96_E08300(var_8C)
  loc_110B91B:     End If
  loc_110B91B:   End If
  loc_110B91E: Else
  loc_110B930:   Proc_183_40_F30B0C(Me, KeyCode)
  loc_110B938: End If
  loc_110B938: Exit Sub
  loc_110B939: ' Referenced from: 110B698
  loc_110B941: Set var_8C = Err()
  loc_110B947: Call 0.Method_arg_1C (var_1DC)
  loc_110B958: If (var_1DC <> 0) Then
  loc_110B963:   Set var_8C = Err()
  loc_110B969:   Call 0.Method_arg_2C (var_1E0)
  loc_110B98A:   MsgBox(CVar(var_1E0), &H40, "Validation", var_C4, var_E0)
  loc_110B99D: End If
  loc_110B99D: Exit Sub
  loc_110B99E: CExtInstUnk
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E151C4
  'Data Table: 547210
  Dim KeyAscii As Integer
  loc_E151B8: If (KeyAscii = CInt(&HD)) Then
  loc_E151BD:   KeyAscii = 0
  loc_E151C0: End If
  loc_E151C0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FD6DF8
  'Data Table: 547210
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_FD6C30: On Error Goto loc_FD6D91
  loc_FD6C40: Me.LblUser.Caption = vbNullString
  loc_FD6C55: Me.LblLDt.Caption = vbNullString
  loc_FD6C5D: Call Proc_22_80_101447C()
  loc_FD6C77: var_8C = "ADD"
  loc_FD6C85: Call Proc_22_78_F5E734(Proc_5_1_100CB50(var_8C, Me))
  loc_FD6C9E: Set var_88 = Me.Txt
  loc_FD6CA4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1F), var_94)
  loc_FD6CAC: var_94.Text = "Yes"
  loc_FD6CC0: Call Proc_22_88_EDD598(CByte(0))
  loc_FD6CCE: If (global_52 = &HFF) Then
  loc_FD6CDC:   Set var_88 = Me.Txt
  loc_FD6CE2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_FD6CEA:   var_94.SetFocus
  loc_FD6CF9: Else
  loc_FD6D04:   Set var_88 = Me.Txt
  loc_FD6D0A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_FD6D12:   var_94.SetFocus
  loc_FD6D1E: End If
  loc_FD6D2D: global_96 = vbNullString
  loc_FD6D37: global_60 = "N"
  loc_FD6D3B: Call Proc_22_97_10DC8C4(CDbl(0))
  loc_FD6D4E: Set var_88 = Me.Txt
  loc_FD6D54: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_FD6D5C: var_94.Text = "Corporate"
  loc_FD6D76: Set var_88 = Me.Txt
  loc_FD6D7C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H13), var_94)
  loc_FD6D84: var_94.Text = "Yes"
  loc_FD6D90: Exit Sub
  loc_FD6D91: ' Referenced from: FD6C30
  loc_FD6D99: Set var_88 = Err()
  loc_FD6D9F: Call 0.Method_arg_1C (var_98)
  loc_FD6DB0: If (var_98 <> 0) Then
  loc_FD6DBB:   Set var_88 = Err()
  loc_FD6DC1:   Call 0.Method_arg_2C (var_8C)
  loc_FD6DE2:   MsgBox(CVar(var_8C), &H40, "Validation", var_E8, var_108)
  loc_FD6DF5: End If
  loc_FD6DF5: Exit Sub
  loc_FD6DF6: End Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F9D564
  'Data Table: 547210
  Dim var_11C As TextBox
  loc_F9D3F0: On Error Goto loc_F9D4FD
  loc_F9D3F3: Call Proc_22_81_F6C2B0()
  loc_F9D42F: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_F9D447:   var_10C = "INI"
  loc_F9D455:   Call Proc_22_78_F5E734(Proc_5_1_100CB50(var_10C, Me))
  loc_F9D460:   Call Proc_22_91_18269A4(global_108)
  loc_F9D473:   Set var_110 = Me.Txt
  loc_F9D479:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_F9D489:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_F9D498:     If (CInt(var_86) <> 3) Then
  loc_F9D4AD:       Set var_110 = Me.Txt
  loc_F9D4B3:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F9D4BB:       var_11C.BackColor = -2147483643
  loc_F9D4D9:       Set var_110 = Me.Txt
  loc_F9D4DF:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F9D4E7:       var_11C.ForeColor = &HC00000
  loc_F9D4F3:     End If
  loc_F9D4F6:   Next var_116 'Byte
  loc_F9D4FC: End If
  loc_F9D4FC: Exit Sub
  loc_F9D4FD: ' Referenced from: F9D3F0
  loc_F9D505: Set var_110 = Err()
  loc_F9D50B: Call 0.Method_arg_1C (var_120)
  loc_F9D51C: If (var_120 <> 0) Then
  loc_F9D527:   Set var_110 = Err()
  loc_F9D52D:   Call 0.Method_arg_2C (var_10C)
  loc_F9D54E:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F9D561: End If
  loc_F9D561: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FCE1EC
  'Data Table: 547210
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim unk_547249 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_8C As Fields15
  loc_FCE063: If (Me.RecordCount > 0) Then
  loc_FCE093:   Set var_8C = Me.Txt
  loc_FCE099:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1)
  loc_FCE0BA:   unk_547249.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_FCE0CA:    = var_C4.Item()
  loc_FCE0D2:    = var_D8.Value
  loc_FCE0FF:   If (var_90.Text.Fields > 0) Then
  loc_FCE123:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_108, var_128)
  loc_FCE133:     Exit Sub
  loc_FCE134:   End If
  loc_FCE166:   var_12C = "Group Profile"
  loc_FCE1AE:   If (Proc_6_108_1010FEC(MemVar_1F92044, "GroupProf", "TravelAgency", CStr(Me.Fields.Item("subcode").Value)) = 0) Then
  loc_FCE1B1:     Exit Sub
  loc_FCE1B2:   End If
  loc_FCE1B2:   Call Proc_22_95_1285EBC(0, var_12C)
  loc_FCE1BA: Else
  loc_FCE1DB:   MsgBox("There Is No Record To Delete", &H40, "Information", var_108, var_128)
  loc_FCE1EB: End If
  loc_FCE1EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1257A84
  'Data Table: 547210
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_B0 As String
  Dim unk_54724B As Connection15
  Dim var_11C As Variant
  Dim var_128 As Variant
  Dim var_124 As Fields15
  Dim var_134 As TextBox
  Dim var_C8 As Variant
  loc_1257545: Me.LblUser.Caption = vbNullString
  loc_125755A: Me.LblLDt.Caption = vbNullString
  loc_125756B: var_8C = Me.RecordCount
  loc_1257579: If (var_8C > 0) Then
  loc_125758A:   Me.Fgrid1.Visible = True
  loc_12575B5:   Call Proc_22_78_F5E734(Proc_5_1_100CB50("EDIT", Me))
  loc_12575CD:   Set var_88 = Me.Txt
  loc_12575D3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B8)
  loc_12575DB:   var_B8.Enabled = False
  loc_1257610:   Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_1257626:   unk_54724B.Execute CStr(var_88 & var_C8), var_B8, 0
  loc_1257636:    = var_B8.Item(global_108)
  loc_1257668:   If (Proc_6_38_E68A98(CVar(var_88.Fields)) <> vbNullString) Then
  loc_1257694:     Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_12576A0:     var_B0 = CStr(var_88 & var_C8)
  loc_12576AA:     unk_54724B.Execute var_B0, var_B8, 0
  loc_12576BA:      = var_B8.Item()
  loc_12576C2:     var_11C = CVar(var_88.Fields) 'Address
  loc_12576D9:     Set var_124 = Me.Txt
  loc_12576DF:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_128)
  loc_12576E7:     var_128.Tag = Proc_6_38_E68A98(var_11C)
  loc_1257736:     Set var_88 = Me.Txt
  loc_125773C:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B8, var_B0, "Select GroupName From Acgroup Where GroupCode='", var_C8, -1)
  loc_125775D:     unk_54724B.Execute var_124 & var_B0 & "'", 0, var_128
  loc_125776D:      = var_124.Item()
  loc_1257775:      = var_128.Value
  loc_125778C:     Set var_130 = Me.Txt
  loc_1257792:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_134)
  loc_125779A:     var_134.Text = CStr(var_B8.Tag.Fields)
  loc_12577CF:     Set var_88 = Me.Txt
  loc_12577D5:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B8)
  loc_12577DD:     var_B8.Enabled = False
  loc_12577F5:     Call Txt_Validate(CInt(2))
  loc_12577FA:   End If
  loc_1257800:   Call Proc_22_88_EDD598(global_100)
  loc_125781A:   var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1257822:   Set var_B8 = Me.FGrid
  loc_1257849:   Set var_88 = Me.Txt
  loc_125784F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B8, FGrid.DispID_10000)
  loc_1257857:   var_B8.SetFocus
  loc_1257871:   Set var_88 = Me.Txt
  loc_1257877:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H18), var_B8, var_B0)
  loc_125787F:   var_D8 = var_B8.Text
  loc_125788F:   global_132 = Val(var_B0)
  loc_12578AA:   Set var_88 = Me.Txt
  loc_12578B0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H1C), var_B8, var_B0)
  loc_12578B8:   global_132 = var_B8.Text
  loc_12578C3:   global_140 = var_B0
  loc_12578DF:   Set var_88 = Me.Txt
  loc_12578E5:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H19), var_B8)
  loc_12578ED:   var_B0 = var_B8.Text
  loc_12578FD:   global_144 = Val(var_B0)
  loc_1257918:   Set var_88 = Me.Txt
  loc_125791E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H1A), var_B8, var_B0)
  loc_1257926:   global_144 = var_B8.Text
  loc_1257931:   global_152 = var_B0
  loc_125794D:   Set var_88 = Me.Txt
  loc_1257953:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H1B), var_B8)
  loc_1257966:   global_156 = var_B8.Text
  loc_125799B:   var_B0 = CStr(Me.FgridPlan.TextMatrix))
  loc_12579AC:   If (var_B0 = vbNullString) Then
  loc_12579AF:     Call Proc_22_97_10DC8C4(2, 1)
  loc_12579D0:     If (CBool(Me.FgridPlan.Visible) = 0) Then
  loc_12579E1:       Me.FgridPlan.Visible = True
  loc_12579E9:     End If
  loc_12579E9:   End If
  loc_12579EC: Else
  loc_1257A0D:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_11C)
  loc_1257A1D: End If
  loc_1257A1D: Exit Sub
  loc_1257A26: Set var_88 = Err()
  loc_1257A2C: Call 0.Method_arg_1C (var_8C)
  loc_1257A3D: If (var_8C <> 0) Then
  loc_1257A48:   Set var_88 = Err()
  loc_1257A4E:   Call 0.Method_arg_2C (var_B0)
  loc_1257A6F:   MsgBox(CVar(var_B0), &H40, "Validation", var_F8, var_11C)
  loc_1257A82: End If
  loc_1257A82: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15634
  'Data Table: 547210
  loc_E15629: Me.Global.Unload Me
  loc_E15631: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F243F0
  'Data Table: 547210
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F242F0: On Error Goto loc_F24388
  loc_F242FC: var_88 = Me.RecordCount
  loc_F2430A: If (var_88 <= 0) Then
  loc_F24313:   var_B8 = "Information"
  loc_F2432E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F2433E:   Exit Sub
  loc_F2433F: End If
  loc_F24346: var_10C = "Select SubCode As SearchCode,SubCode As Code,Name,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,LegalName,TradeName,CreditLimit,CreditDays,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode))  Where S.Companytype in ('Corporate','Travel Agency','Mesh') AND  (S.LOGSITE_CODE='" & MemVar_1F92078
  loc_F2434D: MemVar_1F920E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_F2435A: MemVar_1F92120 = Me
  loc_F24361: var_10C = "1000,3000,1000,2000,1500,900,2000,2000"
  loc_F24367: Proc_183_54_F1DE80(var_10C)
  loc_F24382: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F24387: Exit Sub
  loc_F24388: ' Referenced from: F242F0
  loc_F24390: Set var_110 = Err()
  loc_F24396: Call 0.Method_arg_1C (var_88)
  loc_F243A7: If (var_88 <> 0) Then
  loc_F243B2:   Set var_110 = Err()
  loc_F243B8:   Call 0.Method_arg_2C (var_10C)
  loc_F243D9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F243EC: End If
  loc_F243EC: Exit Sub
  loc_F243EF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C4D8
  'Data Table: 547210
  loc_E2C4C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C4D0: Call Proc_22_91_18269A4(global_108)
  loc_E2C4D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C3B8
  'Data Table: 547210
  loc_E2C3A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C3B0: Call Proc_22_91_18269A4(global_108)
  loc_E2C3B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C418
  'Data Table: 547210
  loc_E2C408: Proc_5_0_110649C(&HFF, Me)
  loc_E2C410: Call Proc_22_91_18269A4(global_108)
  loc_E2C415: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C478
  'Data Table: 547210
  loc_E2C468: Proc_5_0_110649C(&HFF, Me)
  loc_E2C470: Call Proc_22_91_18269A4(global_108)
  loc_E2C475: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C2E04
  'Data Table: 547210
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_547249 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_132 As Integer
  Dim var_C8 As Variant
  loc_10C2B30: On Error Goto loc_10C2D9C
  loc_10C2B4A: If (Me.RecordCount <= 0) Then
  loc_10C2B4D:   Exit Sub
  loc_10C2B4E: End If
  loc_10C2B51: var_A0 = vbNullString
  loc_10C2B72: var_A8 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,CreditLimit,CreditDays,Remark,GSTIN,LegalName,TradeName From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & var_A0 & " Where G.Nature='Customer'and S.CompanyType in ('Corporate','Travel Agency','Mesh')"
  loc_10C2B7B: unk_547249.Execute var_A8, var_C8, -1
  loc_10C2B86: Set var_88 = var_CC
  loc_10C2B98: var_A4 = var_88.RecordCount
  loc_10C2BA6: If (var_A4 = 0) Then
  loc_10C2BC2:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_10C2BD2:   Exit Sub
  loc_10C2BD3: End If
  loc_10C2BE9: Set var_CC = var_88 
  loc_10C2BF5: var_132 = CreateFieldDefFile(var_CC, MemVar_1F920B4 & "\COMPANYMast.ttx")
  loc_10C2BFF: Set var_88 = var_CC
  loc_10C2C05: var_B8 = CVar(var_132) 'Integer
  loc_10C2C08: var_98 = var_B8 'Variant
  loc_10C2C24: var_A8 = MemVar_1F920B4 & "\COMPANYMast.RPT"
  loc_10C2C2D: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_10C2C38: MemVar_1F921E4 = var_CC
  loc_10C2C53: Call 0.Method_arg_90 (var_CC, var_A4, var_9A, 1)
  loc_10C2C5B: Call 0.Method_arg_24 (var_132, &HFF)
  loc_10C2C67: For var_136 =  To CInt(var_A4): var_CC = var_136 'Integer
  loc_10C2C80:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10C2C88:   Call 0.Method_arg_20 (var_13C)
  loc_10C2C90:   Call 0.Method_arg_30 (var_A8)
  loc_10C2CD6:   If (Ucase(CVar(var_A8)) = Ucase("Title")) Then
  loc_10C2CEC:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10C2CF4:     Call 0.Method_arg_20 (var_13C)
  loc_10C2CFC:     Call 0.Method_arg_38 ("'Company Detail List'")
  loc_10C2D08:   End If
  loc_10C2D0B: Next var_136 'Integer
  loc_10C2D29: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_10C2D31: Call 0.Method_arg_2C (var_DC)
  loc_10C2D3F: Call 0.Method_arg_150 (var_FC)
  loc_10C2D4A: Call 0.Method_arg_50 (var_A8)
  loc_10C2D54: Set var_13C = Nothing
  loc_10C2D6E: Set var_CC = MemVar_1F921E4 
  loc_10C2D7A: Proc_6_99_1483714(var_CC, 0, var_A8)
  loc_10C2D85: MemVar_1F921E4 = var_CC
  loc_10C2D98: Set var_88 = Nothing
  loc_10C2D9B: Exit Sub
  loc_10C2D9C: ' Referenced from: 10C2B30
  loc_10C2DA4: Set var_CC = Err()
  loc_10C2DAA: Call 0.Method_arg_1C (var_A4, &HFF)
  loc_10C2DBB: If (var_A4 <> 0) Then
  loc_10C2DC6:   Set var_CC = Err()
  loc_10C2DCC:   Call 0.Method_arg_2C (var_A8)
  loc_10C2DED:   MsgBox(CVar(var_A8), &H40, "Validation", var_10C, var_12C)
  loc_10C2E00: End If
  loc_10C2E00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E55408
  'Data Table: 547210
  Dim Me As Recordset15
  loc_E553CF: Me.Requery -1
  loc_E553DF: Me.Requery -1
  loc_E553EF: Me.Requery -1
  loc_E553FF: Me.Requery -1
  loc_E55404: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1320274
  'Data Table: 547210
  Dim var_94 As TextBox
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_A0 As String
  Dim var_F4 As TextBox
  Dim var_F0 As Long
  Dim var_15C As String
  Dim unk_547249 As Connection15
  Dim var_90 As MSHFlexGrid
  loc_131FB24: Set var_90 = Me.TxtGrid
  loc_131FB2A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_131FB32: var_96 = var_94.Visible
  loc_131FB44: If (var_96 = &HFF) Then
  loc_131FB4A:   Call Proc_22_90_11CBB70(var_96)
  loc_131FB55:   If (var_96 = 0) Then
  loc_131FB5D:     Call TxtGrid_LostFocus()
  loc_131FB6B:     Set var_90 = Me.TxtGrid
  loc_131FB71:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_131FB79:     var_94.SetFocus
  loc_131FB85:     Exit Sub
  loc_131FB86:   End If
  loc_131FB86: End If
  loc_131FB86: Call Proc_22_81_F6C2B0(0)
  loc_131FB96: Set var_90 = Me.Txt
  loc_131FB9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_131FBC5: If (Proc_183_19_E8DAFC(var_94, "A/C Name") = 0) Then
  loc_131FBC8:   Exit Sub
  loc_131FBC9: End If
  loc_131FBD4: Set var_90 = Me.Txt
  loc_131FBDA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_131FC03: If (Proc_183_19_E8DAFC(var_94, "Under Group") = 0) Then
  loc_131FC06:   Exit Sub
  loc_131FC07: End If
  loc_131FC12: Set var_90 = Me.Txt
  loc_131FC18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_94)
  loc_131FC41: If (Proc_183_19_E8DAFC(var_94, "Company Type") = 0) Then
  loc_131FC44:   Exit Sub
  loc_131FC45: End If
  loc_131FC50: Set var_90 = Me.Txt
  loc_131FC56: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_131FC7F: If (Proc_183_19_E8DAFC(var_94, "Active") = 0) Then
  loc_131FC82:   Exit Sub
  loc_131FC83: End If
  loc_131FC91: Set var_90 = Me.Txt
  loc_131FC97: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_131FCB6: If (var_94.Text <> vbNullString) Then
  loc_131FCC9:   Set var_90 = Me.Txt
  loc_131FCCF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_131FCE5:   var_D0 = InStr(1, CVar(var_94), "@", 0)
  loc_131FD03:   Set var_9C = Me.Txt
  loc_131FD09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4, 1)
  loc_131FD11:   var_114 = CVar(var_F4) 'Address
  loc_131FD45:   If CBool(var_94 Or (InStr((var_D0 = 0), var_114, ".", 0) = 0)) Then
  loc_131FD61:     MsgBox("Please fill a Valid EMail Id.", 0, var_D0, var_F0, var_114)
  loc_131FD71:     Exit Sub
  loc_131FD72:   End If
  loc_131FD7D:   Set var_90 = Me.Txt
  loc_131FD83:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_131FDA9:   Set var_9C = Me.Txt
  loc_131FDAF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4)
  loc_131FDB7:   var_F4.Text = CStr(LCase(CVar(var_94)))
  loc_131FDCF: End If
  loc_131FDDA: Set var_90 = Me.Txt
  loc_131FDE0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_94)
  loc_131FE09: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_131FE17:   Set var_90 = Me.Txt
  loc_131FE1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_94)
  loc_131FE2C:   var_D0 = Trim(CVar(var_94))
  loc_131FE34:   var_F0 = Len(var_D0)
  loc_131FE4A:   If CBool(var_F0 <> 15) Then
  loc_131FE66:     MsgBox("Please fill a Valid GSTIN of 15 DIGIT", 0, var_D0, var_F0, var_114)
  loc_131FE81:     Set var_90 = Me.Txt
  loc_131FE87:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_94)
  loc_131FE8F:     var_94.SetFocus
  loc_131FE9B:     Exit Sub
  loc_131FE9C:   End If
  loc_131FE9C: End If
  loc_131FEA0: Set var_90 = Me.tOPCtrl1
  loc_131FEA6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_94)
  loc_131FEAE: var_A0 = CStr()
  loc_131FEBF: If (var_A0 = "Add") Then
  loc_131FEE0:   Set var_90 = Me.Txt
  loc_131FEE6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_131FEEE:   var_C0 = var_94.Text
  loc_131FEFF:   var_15C = Proc_183_20_FB3974(var_A0, -1)
  loc_131FF13:   unk_547249.Execute var_9C & var_15C & "'", , 
  loc_131FF4C:   If (var_9C.RecordCount > 0) Then
  loc_131FF70:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_131FF8B:     Set var_90 = Me.Txt
  loc_131FF91:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_131FF99:     var_94.SetFocus
  loc_131FFA5:     Exit Sub
  loc_131FFA6:   End If
  loc_131FFA9: Else
  loc_131FFAD:   Set var_90 = Me.tOPCtrl1
  loc_131FFB3:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_94)
  loc_131FFBB:   var_A0 = CStr()
  loc_131FFCC:   If (var_A0 = "Edit") Then
  loc_131FFED:     Set var_90 = Me.Txt
  loc_131FFF3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_131FFFB:     var_C0 = var_94.Text
  loc_132000C:     var_15C = Proc_183_20_FB3974(var_A0, -1)
  loc_1320031:     unk_547249.Execute var_9C & var_15C & "' and Name<>'" & global_80 & "'", , 
  loc_132006E:     If (var_9C.RecordCount > 0) Then
  loc_1320092:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_13200B3:       Set var_90 = Me.Txt
  loc_13200B9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_13200C1:       var_94.Text = global_80
  loc_13200D8:       Set var_90 = Me.Txt
  loc_13200DE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13200E6:       var_94.SetFocus
  loc_13200F2:       Exit Sub
  loc_13200F3:     End If
  loc_13200F3:   End If
  loc_13200F3: End If
  loc_1320118: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_174 'Integer
  loc_1320122:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_132012A:   var_104 = CVar(CLng(3)) 'Long
  loc_132015A:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1320161:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1320169:     var_104 = CVar(CLng(4)) 'Long
  loc_1320194:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13201BC:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_F0, var_114)
  loc_13201E2:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_13201FC:       Me.FGrid.Col = CVar(CLng(4))
  loc_1320208:       Set var_90 = Me.FGrid
  loc_132022C:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1320234:       Exit Sub
  loc_1320235:     End If
  loc_1320235:   End If
  loc_1320238: Next var_174 'Integer
  loc_1320241: Set var_90 = Me.tOPCtrl1
  loc_1320247: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1320260: If (CStr() = "Add") Then
  loc_1320263:   Call Proc_22_93_15C4FC8()
  loc_132026B: Else
  loc_132026B:   Call Proc_22_94_16904FC()
  loc_1320270: End If
  loc_1320270: Exit Sub
End Sub

Private Sub Txt_Change(Index As Integer) 'E8D998
  'Data Table: 547210
  Dim var_A0 As Long
  Dim var_C0 As Variant
  Dim var_90 As TextBox
  Dim var_E4 As Variant
  loc_E8D93A: If (Index = CInt(&H1C)) Then
  loc_E8D93D:   var_A0 = 0
  loc_E8D949:   var_C0 = CVar(CLng(4)) 'Long
  loc_E8D95C:   Set var_8C = Me.Txt
  loc_E8D962:   Call 0.Method_Txt_Change0 (CInt(&H1C), var_90, var_D4)
  loc_E8D96A:   var_C0 = var_90.Text
  loc_E8D972:   var_E4 = CVar(var_D4) 'String
  loc_E8D97A:   Set var_F8 = Me.Fgrid1
  loc_E8D980:   LateIdCallSt
  loc_E8D994: End If
  loc_E8D994: Exit Sub
  loc_E8D995: CopyBytes 22528
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1429AAC
  'Data Table: 547210
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_1429002: Set var_88 = Me.Txt
  loc_1429008: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1429016: Proc_183_28_E20B20(var_8C)
  loc_1429022: Call Proc_22_81_F6C2B0(var_8C)
  loc_142902A: var_92 = Index
  loc_1429035: If (var_92 = CInt(1)) Then
  loc_142904F:   If (Me.RecordCount > 0) Then
  loc_142905D:     Set var_8C = Me.FGPoint
  loc_1429075:     Proc_6_137_1193554(Me.DGAcName, global_112, Index)
  loc_1429083:   End If
  loc_14290D1:   Set var_88 = Me.Txt
  loc_14290D7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14290DF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14290F7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_14290FA:     Exit Sub
  loc_14290FB:   End If
  loc_1429108:   Set var_88 = Me.Txt
  loc_142910E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1429116:   var_A0 = var_8C.Text
  loc_1429128:   var_B0 = "Name"
  loc_1429163:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_142916C:     Me.MoveFirst
  loc_142918F:     Set var_88 = Me.Txt
  loc_1429195:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_142919D:     0 = var_8C.Text
  loc_14291B6:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_14291CB:   End If
  loc_14291CE: Else
  loc_14291D6:   If (var_92 = CInt(2)) Then
  loc_14291F0:     If (Me.RecordCount > 0) Then
  loc_14291FE:       Set var_8C = Me.FGPoint
  loc_1429216:       Proc_6_137_1193554(Me.DGUnderAc, global_120)
  loc_1429224:     End If
  loc_142922D:     var_98 = Me.RecordCount
  loc_1429272:     Set var_88 = Me.Txt
  loc_1429278:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1429280:     ((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1429298:     If (Index Or (var_A0 = vbNullString)) Then
  loc_142929B:       Exit Sub
  loc_142929C:     End If
  loc_14292A9:     Set var_88 = Me.Txt
  loc_14292AF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14292B7:     var_A0 = var_8C.Text
  loc_14292C9:     var_B0 = "Name"
  loc_1429304:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_142930D:       Me.MoveFirst
  loc_1429330:       Set var_88 = Me.Txt
  loc_1429336:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_142933E:       0 = var_8C.Text
  loc_1429357:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_142936C:     End If
  loc_142936F:   Else
  loc_1429377:     If (var_92 = CInt(3)) Then
  loc_1429387:       ReDim var_F0(0 To 3)
  loc_142939E:       var_F0(0) = "Mr."
  loc_14293AD:       var_F0(1) = "Mrs."
  loc_14293BC:       var_F0(2) = "Miss"
  loc_14293CB:       var_F0(3) = "M/S"
  loc_14293E2:       global_164 = Array(var_F0)
  loc_14293ED:       Set var_B4 = Me.ListView
  loc_1429408:       Set var_8C = Me.Txt
  loc_1429422:       Set global_180 = Proc_183_37_EFE3E8(var_B4, var_8C, Index)
  loc_1429436:     Else
  loc_142943E:       If (var_92 = CInt(8)) Then
  loc_1429454:         Me.DGCity.Tag = CVar(CStr(Index))
  loc_142946C:         Set var_88 = Me.Txt
  loc_1429472:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_142947A:         global_164 = var_8C.Left
  loc_1429491:         Me.DGCity.Left = CVar(var_98)
  loc_14294AC:         Set var_90 = Me.Txt
  loc_14294B2:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_128)
  loc_14294BA:         4 = var_B4.Height
  loc_14294CC:         Set var_88 = Me.Txt
  loc_14294D2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14294EA:         var_B0 = CVar(((var_8C.Top + var_128) + CDbl(&HF))) 'Single
  loc_14294F9:         Me.DGCity.Top = CVar(var_8C.Top)
  loc_1429522:         If (Me.RecordCount > 0) Then
  loc_1429530:           Set var_8C = Me.FGPoint
  loc_1429548:           Proc_6_137_1193554(Me.DGCity, global_124, Index)
  loc_1429556:         End If
  loc_14295A4:         Set var_88 = Me.Txt
  loc_14295AA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14295B2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14295CA:         If (var_8C Or (var_A0 = vbNullString)) Then
  loc_14295CD:           Exit Sub
  loc_14295CE:         End If
  loc_14295DB:         Set var_88 = Me.Txt
  loc_14295E1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14295E9:         var_A0 = var_8C.Text
  loc_14295FB:         var_B0 = "Name"
  loc_1429636:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_142963F:           Me.MoveFirst
  loc_1429662:           Set var_88 = Me.Txt
  loc_1429668:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1429670:           0 = var_8C.Text
  loc_1429689:           Me.Find 1 & var_A0 & "'", var_B0, global_164
  loc_142969E:         End If
  loc_14296A1:       Else
  loc_14296A9:         If (var_92 = CInt(&H1B)) Then
  loc_14296BF:           Me.DgUser.Tag = CVar(CStr(Index))
  loc_14296DD:           Me.DgUser.Left = CVar(CDbl(250))
  loc_14296F8:           Me.DgUser.Top = CVar(CDbl(4000))
  loc_1429717:           If (Me.RecordCount > 0) Then
  loc_1429725:             Set var_8C = Me.FGPoint
  loc_142973D:             Proc_6_137_1193554(Me.DgUser, global_128)
  loc_142974B:           End If
  loc_1429799:           Set var_88 = Me.Txt
  loc_142979F:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14297A7:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14297BF:           If (Index Or (var_A0 = vbNullString)) Then
  loc_14297C2:             Exit Sub
  loc_14297C3:           End If
  loc_14297D0:           Set var_88 = Me.Txt
  loc_14297D6:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14297DE:           var_A0 = var_8C.Text
  loc_14297F0:           var_B0 = "Name"
  loc_142982B:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1429834:             Me.MoveFirst
  loc_1429857:             Set var_88 = Me.Txt
  loc_142985D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1429865:             0 = var_8C.Text
  loc_142987E:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1429893:           End If
  loc_1429896:         Else
  loc_142989E:           If (var_92 = CInt(&H14)) Then
  loc_14298AE:             ReDim var_F0(0 To 2)
  loc_14298C5:             var_F0(0) = "Corporate"
  loc_14298D4:             var_F0(1) = "Travel Agency"
  loc_14298E3:             var_F0(2) = "Mesh"
  loc_14298FA:             global_164 = Array(var_F0)
  loc_142993A:             Set global_180 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, Index)
  loc_142994E:           Else
  loc_1429956:             If Not (var_92 = CInt(&H13)) Then
  loc_1429961:               If (var_92 = CInt(&H12)) Then
  loc_1429964:               End If
  loc_1429971:               ReDim var_F0(0 To 1)
  loc_1429988:               var_F0(0) = "Yes"
  loc_1429997:               var_F0(1) = "No"
  loc_14299EE:               Set global_180 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, Index, Array(var_F0), 2)
  loc_1429A02:             Else
  loc_1429A0A:               If (var_92 = CInt(&H1C)) Then
  loc_1429A1A:                 ReDim var_F0(0 To 1)
  loc_1429A31:                 var_F0(0) = "Fix Rate"
  loc_1429A40:                 var_F0(1) = "Discount %"
  loc_1429A97:                 Set global_180 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, Index, Array(var_F0), 2)
  loc_1429AA8:               End If
  loc_1429AA8:             End If
  loc_1429AA8:           End If
  loc_1429AA8:         End If
  loc_1429AA8:       End If
  loc_1429AA8:     End If
  loc_1429AA8:   End If
  loc_1429AA8: End If
  loc_1429AA8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13F4728
  'Data Table: 547210
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As Variant
  Dim var_BC As TextBox
  Dim var_8C As Variant
  Dim var_98 As DataGrid
  Dim var_12C As Variant
  Dim var_A4 As DataGrid
  Dim var_13C As Variant
  Dim var_150 As String
  loc_13F3D28: On Error Goto loc_13F46C0
  loc_13F3D35: If (CLng(Shift) = &H1B) Then
  loc_13F3D38:   Call Proc_22_81_F6C2B0()
  loc_13F3D3D:   Exit Sub
  loc_13F3D3E: End If
  loc_13F3D41: var_86 = KeyCode
  loc_13F3D4C: If (var_86 = CInt(1)) Then
  loc_13F3D6C:   Set var_98 = Me.FGPoint
  loc_13F3D9A:   Proc_6_79_11ACE04(Me.DGAcName, Me.Txt, KeyCode, global_112, Shift)
  loc_13F3E07:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13F3E2D:     Proc_6_138_106D6F8(Me.DGAcName, global_112, KeyCode, Me.FGPoint, 0)
  loc_13F3E3B:   End If
  loc_13F3E3E: Else
  loc_13F3E46:   If (var_86 = CInt(2)) Then
  loc_13F3E54:     Set var_A8 = Me.Txt
  loc_13F3E66:     Set var_A0 = Me.FGPoint
  loc_13F3E71:     Set var_98 = Nothing
  loc_13F3E9F:     Proc_6_69_134A198(Me.DGUnderAc, var_A8, KeyCode, global_120, Shift, 0, 1)
  loc_13F3EBE:     var_AC = Me.RecordCount
  loc_13F3F0E:     If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13F3F15:       Set var_98 = Me.DGUnderAc
  loc_13F3F1C:       Set var_90 = Me.FGPoint
  loc_13F3F34:       Proc_6_138_106D6F8(var_98, global_120, KeyCode, var_90, var_98, var_A0)
  loc_13F3F42:     End If
  loc_13F3F45:   Else
  loc_13F3F4D:     If (var_86 = CInt(3)) Then
  loc_13F3F72:       Set var_8C = Me.Txt
  loc_13F3F78:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_13F3F80:       1 = var_90.Left
  loc_13F3F92:       Set var_98 = Me.Txt
  loc_13F3F98:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F3FA0:       var_98 = var_A0.Top
  loc_13F3FB2:       Set var_A4 = Me.Txt
  loc_13F3FB8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F3FC0:       0 = var_A8.Height
  loc_13F3FD2:       Set var_B0 = Me.Txt
  loc_13F3FD8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F3FE0:       var_C0 = var_BC.Width
  loc_13F4028:       Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F404F:     Else
  loc_13F4057:       If (var_86 = CInt(8)) Then
  loc_13F4065:         Set var_A8 = Me.Txt
  loc_13F40B0:         Proc_6_69_134A198(Me.DGCity, var_A8, KeyCode, global_124, Shift, 0, 1, Nothing)
  loc_13F40CF:         var_AC = Me.RecordCount
  loc_13F411F:         If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13F4145:           Proc_6_138_106D6F8(Me.DGCity, global_124, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13F4153:         End If
  loc_13F4156:       Else
  loc_13F415E:         If (var_86 = CInt(&H1B)) Then
  loc_13F416C:           Set var_A0 = Me.Txt
  loc_13F4188:           Set var_90 = var_A0
  loc_13F4197:           Proc_183_34_1305540(Me.DgUser, var_90, KeyCode, global_128, Shift, 0)
  loc_13F41AA:         Else
  loc_13F41B2:           If Not (var_86 = CInt(&H13)) Then
  loc_13F41BD:             If (var_86 = CInt(&H12)) Then
  loc_13F41C0:             End If
  loc_13F41E2:             Set var_8C = Me.Txt
  loc_13F41E8:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1, CInt(var_AC))
  loc_13F41F0:             CInt((var_B4 + var_B8)) = var_90.Left
  loc_13F4202:             Set var_98 = Me.Txt
  loc_13F4208:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F4210:             CInt(var_C0) = var_A0.Top
  loc_13F4222:             Set var_A4 = Me.Txt
  loc_13F4228:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F4230:             1200 = var_A8.Height
  loc_13F4242:             Set var_B0 = Me.Txt
  loc_13F4248:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F4250:             var_C0 = var_BC.Width
  loc_13F4298:             Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F42BF:           Else
  loc_13F42C7:             If (var_86 = CInt(&H14)) Then
  loc_13F42EC:               Set var_8C = Me.Txt
  loc_13F42F2:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13F42FA:               CInt((var_B4 + var_B8)) = var_90.Left
  loc_13F430C:               Set var_98 = Me.Txt
  loc_13F4312:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F431A:               CInt(var_C0) = var_A0.Top
  loc_13F432C:               Set var_A4 = Me.Txt
  loc_13F4332:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F433A:               600 = var_A8.Height
  loc_13F434C:               Set var_B0 = Me.Txt
  loc_13F4352:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F435A:               var_C0 = var_BC.Width
  loc_13F43A2:               Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F43C9:             Else
  loc_13F43D1:               If (var_86 = CInt(&H1C)) Then
  loc_13F43F6:                 Set var_8C = Me.Txt
  loc_13F43FC:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13F4404:                 CInt((var_B4 + var_B8)) = var_90.Left
  loc_13F4416:                 Set var_98 = Me.Txt
  loc_13F441C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F4424:                 CInt(var_C0) = var_A0.Top
  loc_13F4436:                 Set var_A4 = Me.Txt
  loc_13F443C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F4444:                 800 = var_A8.Height
  loc_13F4456:                 Set var_B0 = Me.Txt
  loc_13F445C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F44AC:                 Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F44FE:                 If (((((Shift = &HD) Or (CLng(Shift) = &H26)) Or (Shift = &H10)) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = 9)) Then
  loc_13F4501:                   Call Proc_22_83_1049D70(CInt(var_AC), CInt((var_B4 + var_B8)), CInt(var_BC.Width))
  loc_13F4506:                   Call Proc_22_79_1421608(600)
  loc_13F451D:                   Me.Fgrid1.Col = CVar(CLng(4))
  loc_13F4541:                   If (CBool(Me.Fgrid1.Visible) = &HFF) Then
  loc_13F4544:                     GoTo loc_13F455D
  loc_13F4547:                   End If
  loc_13F4555:                   Me.Fgrid1.Visible = True
  loc_13F455D:                   ' Referenced from:               13F4544
  loc_13F455D:                 End If
  loc_13F455D:               End If
  loc_13F455D:             End If
  loc_13F455D:           End If
  loc_13F455D:         End If
  loc_13F455D:       End If
  loc_13F455D:     End If
  loc_13F455D:   End If
  loc_13F455D: End If
  loc_13F4594: var_12C = Me.DGCity.Visible
  loc_13F45C4: var_13C = Me.DgUser.Visible
  loc_13F4604: If ((((((CBool(Me.DGUnderAc.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(var_12C) = 0)) And (Me.FrmList.Visible = 0)) And (CBool(var_13C) = 0)) And (CBool(Me.DGUnderAc.Visible) = &HFF)) Then
  loc_13F461C:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13F4625:     Proc_6_75_E527CC(Shift, arg_14)
  loc_13F462A:   End If
  loc_13F462E:   Set var_8C = Me.tOPCtrl1
  loc_13F4634:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_86)
  loc_13F464D:   If (CStr() = "Add") Then
  loc_13F4665:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13F466E:       Proc_6_76_E52838(Shift)
  loc_13F4673:     End If
  loc_13F4676:   Else
  loc_13F467A:     Set var_8C = Me.tOPCtrl1
  loc_13F4680:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_14)
  loc_13F4688:     var_150 = CStr()
  loc_13F4699:     If (var_150 = "Edit") Then
  loc_13F46B1:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13F46BA:         Proc_6_76_E52838(Shift)
  loc_13F46BF:       End If
  loc_13F46BF:     End If
  loc_13F46BF:   End If
  loc_13F46BF: End If
  loc_13F46BF: Exit Sub
  loc_13F46C0: ' Referenced from: 13F3D28
  loc_13F46C8: Set var_8C = Err()
  loc_13F46CE: Call 0.Method_arg_1C (var_AC)
  loc_13F46DF: If (var_AC <> 0) Then
  loc_13F46EA:   Set var_8C = Err()
  loc_13F46F0:   Call 0.Method_arg_2C (var_150)
  loc_13F4711:   MsgBox(CVar(var_150), &H40, "Validation", var_12C, var_13C)
  loc_13F4724: End If
  loc_13F4724: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1223890
  'Data Table: 547210
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_1223390: On Error Goto loc_122382A
  loc_1223399: Proc_6_133_E7EF78(var_94)
  loc_12233AE: If (CInt(var_94) = &H27) Then
  loc_12233B3:   arg_10 = 0
  loc_12233B6:   Exit Sub
  loc_12233B7: End If
  loc_12233BA: var_96 = KeyAscii
  loc_12233C5: If (var_96 = CInt(2)) Then
  loc_12233E4:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_1223411:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_1223443:     Proc_6_138_106D6F8(Me.DGUnderAc, global_120, KeyAscii, Me.FGPoint, 0)
  loc_1223451:   End If
  loc_1223454: Else
  loc_122345C:   If (var_96 = CInt(8)) Then
  loc_122347B:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_12234A8:       Proc_183_41_1459C78(Me.Txt, KeyAscii, global_124, arg_10, "Name")
  loc_12234DA:       Proc_6_138_106D6F8(Me.DGCity, global_124, KeyAscii, Me.FGPoint, 0)
  loc_12234E8:     End If
  loc_12234EB:   Else
  loc_12234F3:     If (var_96 = CInt(&H1B)) Then
  loc_1223500:       var_94 = Me.DgUser.Visible
  loc_1223512:       If (CBool(var_94) = &HFF) Then
  loc_1223524:         var_A0 = "Name"
  loc_122353F:         Proc_183_41_1459C78(Me.Txt, KeyAscii, global_128, arg_10, var_A0)
  loc_1223559:         Set var_A8 = Me.FGPoint
  loc_1223571:         Proc_6_138_106D6F8(Me.DgUser, global_128, KeyAscii, var_A8, 0)
  loc_122357F:       End If
  loc_1223582:     Else
  loc_122358A:       If (var_96 = CInt(&H15)) Then
  loc_1223597:         Set var_9C = Me.Txt
  loc_122359D:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_12235B8:         Proc_6_42_129A86C(var_A8, arg_10, 3, 0)
  loc_12235C7:       Else
  loc_12235CF:         If Not (var_96 = CInt(&H16)) Then
  loc_12235DA:           If (var_96 = CInt(&H19)) Then
  loc_12235DD:           End If
  loc_12235E7:           Set var_9C = Me.Txt
  loc_12235ED:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, arg_10)
  loc_1223608:           Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_1223617:         Else
  loc_122361F:           If (var_96 = CInt(&H17)) Then
  loc_122362C:             Set var_9C = Me.Txt
  loc_1223632:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_122364D:             Proc_6_42_129A86C(var_A8, arg_10, 7)
  loc_122365C:           Else
  loc_1223664:             If (var_96 = CInt(&H18)) Then
  loc_1223675:               Set var_9C = Me.Txt
  loc_122367B:               Call 0.Method_Txt_KeyPress0 (CInt(&H1C), var_A8, var_A0)
  loc_1223683:               2 = var_A8.Text
  loc_122369A:               If (var_A0 = "Percent") Then
  loc_12236A7:                 Set var_9C = Me.Txt
  loc_12236AD:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_12236C8:                 Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_12236D7:               Else
  loc_12236E1:                 Set var_9C = Me.Txt
  loc_12236E7:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_1223702:                 Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_122370E:               End If
  loc_1223711:             Else
  loc_1223719:               If (var_96 = CInt(&H1C)) Then
  loc_122371C:                 GoTo loc_1223829
  loc_122371F:               End If
  loc_1223727:               If (var_96 = CInt(&H1F)) Then
  loc_1223745:                 If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_1223755:                   If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_1223765:                     Set var_9C = Me.Txt
  loc_122376B:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1223773:                     var_A8.Text = 2
  loc_1223781:                     arg_10 = 0
  loc_1223787:                   Else
  loc_1223794:                     If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_12237A4:                       Set var_9C = Me.Txt
  loc_12237AA:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_12237B2:                       var_A8.Text = arg_10
  loc_12237C0:                       arg_10 = 0
  loc_12237C3:                     End If
  loc_12237C3:                   End If
  loc_12237C6:                 Else
  loc_12237C8:                   arg_10 = 0
  loc_12237CB:                 End If
  loc_12237CE:               Else
  loc_12237D6:                 If (var_96 = CInt(&H22)) Then
  loc_12237DF:                   Proc_6_133_E7EF78(var_94, arg_10, arg_10)
  loc_122381E:                   If (((((CInt(var_94) >= &H41) And (CInt(var_94) <= &H5A)) Or ((CInt(var_94) >= &H61) And (CInt(var_94) <= &H7A))) Or ((CInt(var_94) >= &H30) And (CInt(var_94) <= &H39))) Or (CInt(var_94) = 8)) Then
  loc_1223821:                     GoTo loc_1223829
  loc_1223824:                   End If
  loc_1223826:                   arg_10 = 0
  loc_1223829:                   ' Referenced from:                 1223821
  loc_1223829:                 End If
  loc_1223829:                 ' Referenced from:               122371C
  loc_1223829:               End If
  loc_1223829:             End If
  loc_1223829:           End If
  loc_1223829:         End If
  loc_1223829:       End If
  loc_1223829:     End If
  loc_1223829:   End If
  loc_1223829: End If
  loc_1223829: Exit Sub
  loc_122382A: ' Referenced from: 1223390
  loc_1223832: Set var_9C = Err()
  loc_1223838: Call 0.Method_arg_1C (var_B4, arg_10, arg_10)
  loc_1223849: If (var_B4 <> 0) Then
  loc_1223854:   Set var_9C = Err()
  loc_122385A:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_122387B:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_122388E: End If
  loc_122388E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '12766D8
  'Data Table: 547210
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_B0 As TextBox
  loc_1276134: On Error Goto loc_1276670
  loc_127613A: var_86 = KeyCode
  loc_1276145: If (var_86 = CInt(1)) Then
  loc_1276164:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_1276171:     var_A0 = "Name"
  loc_127618C:     Proc_183_32_FE7F70(Me.Txt, KeyCode, global_112)
  loc_12761BE:     Proc_6_138_106D6F8(Me.DGAcName, global_112, KeyCode, Me.FGPoint)
  loc_12761CC:   End If
  loc_12761CF: Else
  loc_12761D7:   If (var_86 = CInt(3)) Then
  loc_12761F5:     If (Me.FrmList.Visible = &HFF) Then
  loc_1276224:       Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_1276234:     End If
  loc_1276237:   Else
  loc_127623F:     If Not (var_86 = CInt(&H13)) Then
  loc_127624A:       If (var_86 = CInt(&H1C)) Then
  loc_127624D:       End If
  loc_1276268:       If (Me.FrmList.Visible = &HFF) Then
  loc_1276297:         Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift, global_180)
  loc_12762A7:       End If
  loc_12762AA:     Else
  loc_12762B2:       If (var_86 = CInt(&H12)) Then
  loc_12762D0:         If (Me.FrmList.Visible = &HFF) Then
  loc_12762F0:           Set var_A4 = Me.Txt
  loc_12762FF:           Proc_183_35_F29A04(Me.ListView, var_A4, KeyCode, Shift, global_180)
  loc_127630F:         End If
  loc_127631D:         Set var_8C = Me.Txt
  loc_1276323:         Call 0.Method_Txt_KeyUp0 (CInt(&H12), var_A4, var_A0, global_180)
  loc_127632B:         Shift = var_A4.Text
  loc_1276342:         If (var_A0 = "Yes") Then
  loc_1276352:           Set var_8C = Me.Txt
  loc_1276358:           Call 0.Method_Txt_KeyUp0 (CInt(&H1B), var_A4, &HFF)
  loc_1276360:           var_A4.Enabled = var_A0
  loc_1276379:           Set var_8C = Me.Txt
  loc_127637F:           Call 0.Method_Txt_KeyUp0 (CInt(&H1A), var_A4)
  loc_1276387:           var_A4.Enabled = True
  loc_1276396:         Else
  loc_12763A3:           Set var_8C = Me.Txt
  loc_12763A9:           Call 0.Method_Txt_KeyUp0 (CInt(&H1B), var_A4)
  loc_12763B1:           var_A4.Enabled = False
  loc_12763CA:           Set var_8C = Me.Txt
  loc_12763D0:           Call 0.Method_Txt_KeyUp0 (CInt(&H1A), var_A4)
  loc_12763D8:           var_A4.Enabled = False
  loc_12763E4:         End If
  loc_12763E7:       Else
  loc_12763EF:         If (var_86 = CInt(&H14)) Then
  loc_127640D:           If (Me.FrmList.Visible = &HFF) Then
  loc_127641B:             Set var_B0 = Me.Txt
  loc_127642D:             Set var_A4 = var_B0
  loc_127643C:             Proc_183_35_F29A04(Me.ListView, var_A4, KeyCode)
  loc_127644C:           End If
  loc_127645A:           Set var_8C = Me.Txt
  loc_1276460:           Call 0.Method_Txt_KeyUp0 (CInt(&H14), var_A4, var_A0)
  loc_1276468:           Shift = var_A4.Text
  loc_127647F:           If (var_A0 = "Travel Agency") Then
  loc_127648D:             Set var_8C = Me.Lbl
  loc_1276493:             Call 0.Method_Txt_KeyUp0 (&H1C, var_A4, &HFF)
  loc_127649B:             var_A4.Visible = global_180
  loc_12764B4:             Set var_8C = Me.Txt
  loc_12764BA:             Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_12764C2:             var_A4.Visible = True
  loc_12764DB:             Set var_8C = Me.Txt
  loc_12764E1:             Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_12764E9:             var_A4.Enabled = True
  loc_1276502:             Set var_8C = Me.Txt
  loc_1276508:             Call 0.Method_Txt_KeyUp0 (CInt(&H18), var_A4)
  loc_1276510:             var_A4.Enabled = True
  loc_1276529:             Set var_8C = Me.Txt
  loc_127652F:             Call 0.Method_Txt_KeyUp0 (CInt(&H1C), var_A4)
  loc_1276537:             var_A4.Enabled = True
  loc_1276546:           Else
  loc_1276554:             Set var_8C = Me.Txt
  loc_127655A:             Call 0.Method_Txt_KeyUp0 (CInt(&H14), var_A4)
  loc_1276562:             var_A0 = var_A4.Text
  loc_127657D:             Set var_A8 = Me.Txt
  loc_1276583:             Call 0.Method_Txt_KeyUp0 (CInt(&H14), var_B0, var_B4)
  loc_127658B:             (var_A0 = "Corporate") = var_B0.Text
  loc_12765AB:             If (var_86 Or (var_B4 = "Mesh")) Then
  loc_12765B9:               Set var_8C = Me.Lbl
  loc_12765BF:               Call 0.Method_Txt_KeyUp0 (&H1C, var_A4)
  loc_12765C7:               var_A4.Visible = False
  loc_12765E0:               Set var_8C = Me.Txt
  loc_12765E6:               Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_12765EE:               var_A4.Visible = False
  loc_1276607:               Set var_8C = Me.Txt
  loc_127660D:               Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_1276615:               var_A4.Enabled = False
  loc_127662E:               Set var_8C = Me.Txt
  loc_1276634:               Call 0.Method_Txt_KeyUp0 (CInt(&H18), var_A4)
  loc_127663C:               var_A4.Enabled = True
  loc_1276655:               Set var_8C = Me.Txt
  loc_127665B:               Call 0.Method_Txt_KeyUp0 (CInt(&H1C), var_A4)
  loc_1276663:               var_A4.Enabled = True
  loc_127666F:             End If
  loc_127666F:           End If
  loc_127666F:         End If
  loc_127666F:       End If
  loc_127666F:     End If
  loc_127666F:   End If
  loc_127666F: End If
  loc_127666F: Exit Sub
  loc_1276670: ' Referenced from: 1276134
  loc_1276678: Set var_8C = Err()
  loc_127667E: Call 0.Method_arg_1C (var_B8)
  loc_127668F: If (var_B8 <> 0) Then
  loc_127669A:   Set var_8C = Err()
  loc_12766A0:   Call 0.Method_arg_2C (var_A0)
  loc_12766C1:   MsgBox(CVar(var_A0), &H40, "Validation", var_F8, var_118)
  loc_12766D4: End If
  loc_12766D4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DDF4
  'Data Table: 547210
  loc_E4DDD2: Set var_88 = Me.Txt
  loc_E4DDD8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DDE6: Proc_183_27_E22608(var_8C)
  loc_E4DDF2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15E8ED8
  'Data Table: 547210
  Dim var_90 As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim unk_547249 As Connection15
  Dim var_A4 As Variant
  Dim var_C0 As String
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_9A As Integer
  Dim var_8E As Integer
  Dim arg_10 As Integer
  loc_15E7B17: var_90 = Cancel
  loc_15E7B22: If (var_90 = CInt(&H1C)) Then
  loc_15E7B25:   GoTo loc_15E8ECE
  loc_15E7B28: End If
  loc_15E7B30: If (var_90 = CInt(0)) Then
  loc_15E7B41:   Set var_94 = Me.Txt
  loc_15E7B47:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E7B61:   If (var_98.Visible = &HFF) Then
  loc_15E7B72:     Set var_94 = Me.Txt
  loc_15E7B78:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E7B97:     If (var_98.Text = vbNullString) Then
  loc_15E7BA8:       Set var_94 = Me.Txt
  loc_15E7BAE:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E7BB6:       var_A0 = var_98.Tag
  loc_15E7BC9:       Set var_A4 = Me.Txt
  loc_15E7BCF:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_15E7BD7:       var_A8.Text = var_A0
  loc_15E7BF5:       Set var_94 = Me.Txt
  loc_15E7BFB:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E7C03:       var_98.SetFocus
  loc_15E7C0F:       Exit Sub
  loc_15E7C10:     End If
  loc_15E7C31:     Set var_94 = Me.Txt
  loc_15E7C37:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0)
  loc_15E7C3F:     -1 = var_98.Text
  loc_15E7C58:     unk_547249.Execute var_A4 & var_A0 & "'", var_D4, var_90
  loc_15E7C60:      = var_A4.RecordCount
  loc_15E7C83:     If (var_D4 > 0) Then
  loc_15E7CA7:       MsgBox("A/c Code Already Exists", &H40, "Validation", var_114, var_134)
  loc_15E7CC5:       Set var_94 = Me.Txt
  loc_15E7CCB:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E7CE6:       Set var_A4 = Me.Txt
  loc_15E7CEC:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_15E7CF4:       var_A8.Text = var_98.Tag
  loc_15E7D12:       Set var_94 = Me.Txt
  loc_15E7D18:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_15E7D20:       var_98.SetFocus
  loc_15E7D2C:       Exit Sub
  loc_15E7D2D:     End If
  loc_15E7D2D:   End If
  loc_15E7D30: Else
  loc_15E7D38:   If (var_90 = CInt(2)) Then
  loc_15E7D48:     Set var_94 = Me.Txt
  loc_15E7D4E:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E7D56:     var_A0 = var_98.Text
  loc_15E7D6D:     If (var_A0 = vbNullString) Then
  loc_15E7D70:       Exit Sub
  loc_15E7D71:     End If
  loc_15E7DBF:     Set var_94 = Me.Txt
  loc_15E7DC5:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15E7DCD:     ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_98.Text
  loc_15E7DE5:     If (var_98 Or (var_A0 <> vbNullString)) Then
  loc_15E7E27:       var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_15E7E3E:       unk_547249.Execute CStr(var_F4 & "'"), var_134, -1
  loc_15E7E49:       Set var_88 = var_A4
  loc_15E7E77:       If (var_88.RecordCount > 0) Then
  loc_15E7E8B:         Call Proc_22_88_EDD598(CByte(1), CByte(1))
  loc_15E7EF3:         var_134 = IIf(IsNull(CVar(var_88.Fields.Item("Nature"))), vbNullString, CVar(var_88.Fields.Item("Nature")))
  loc_15E7F09:         Me.LblNature.Caption = CStr(var_134)
  loc_15E7F75:         var_A8 = var_88.Fields.Item("GroupNature")
  loc_15E7F7D:         var_114 = var_A8.Value
  loc_15E7FA7:         If CBool((var_88.Fields.Item("GroupNature").Value = "A") Or (var_114 = "L")) Then
  loc_15E7FB1:           global_100 = CByte(1)
  loc_15E7FB8:         Else
  loc_15E7FBF:           global_100 = CByte(0)
  loc_15E7FC3:         End If
  loc_15E7FC9:         Call Proc_22_88_EDD598(global_100, global_100, global_100)
  loc_15E7FCE:         ' Referenced from:   15E80E7
  loc_15E7FD4:         var_9A = var_88.EOF
  loc_15E7FDD:         If Not(var_9A) Then
  loc_15E801C:           If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_15E805C:             Set var_A4 = Me.Txt
  loc_15E8062:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_15E806A:             var_A8.Text = var_9A
  loc_15E809C:             var_98 = var_88.Fields.Item("GroupCode")
  loc_15E80BB:             Set var_A4 = Me.Txt
  loc_15E80C1:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_15E80C9:             var_A8.Tag = CStr(var_98.Value)
  loc_15E80DF:           End If
  loc_15E80E2:           var_88.MoveNext
  loc_15E80E7:           GoTo loc_15E7FCE
  loc_15E80EA:         End If
  loc_15E80EA:       End If
  loc_15E80EA:     End If
  loc_15E80ED:   Else
  loc_15E80F5:     If (var_90 = CInt(3)) Then
  loc_15E8105:       Set var_94 = Me.Txt
  loc_15E810B:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E812A:       If (var_98.Text <> vbNullString) Then
  loc_15E8145:         Set var_98 = Me.ListView.SelectedItem
  loc_15E815D:         Set var_A4 = Me.Txt
  loc_15E8163:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E816B:         var_A8.Text = var_98.Text
  loc_15E8181:       End If
  loc_15E8184:     Else
  loc_15E818C:       If Not (var_90 = CInt(&H13)) Then
  loc_15E8197:         If (var_90 = CInt(&H1C)) Then
  loc_15E819A:         End If
  loc_15E81A7:         Set var_94 = Me.Txt
  loc_15E81AD:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E81CC:         If (var_98.Text <> vbNullString) Then
  loc_15E81E7:           Set var_98 = Me.ListView.SelectedItem
  loc_15E81FF:           Set var_A4 = Me.Txt
  loc_15E8205:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E820D:           var_A8.Text = var_98.Text
  loc_15E8223:         End If
  loc_15E8226:       Else
  loc_15E822E:         If (var_90 = CInt(&H14)) Then
  loc_15E823E:           Set var_94 = Me.Txt
  loc_15E8244:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8263:           If (var_98.Text = vbNullString) Then
  loc_15E8266:             Exit Sub
  loc_15E8267:           End If
  loc_15E8274:           Set var_94 = Me.Txt
  loc_15E827A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8299:           If (var_98.Text <> vbNullString) Then
  loc_15E82B4:             Set var_98 = Me.ListView.SelectedItem
  loc_15E82CC:             Set var_A4 = Me.Txt
  loc_15E82D2:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E82DA:             var_A8.Text = var_98.Text
  loc_15E82F0:           End If
  loc_15E82FE:           Set var_94 = Me.Txt
  loc_15E8304:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_15E8323:           If (var_98.Text = "Travel Agency") Then
  loc_15E8331:             Set var_94 = Me.Lbl
  loc_15E8337:             Call 0.Method_Txt_Validate0 (&H1C, var_98)
  loc_15E833F:             var_98.Visible = True
  loc_15E8358:             Set var_94 = Me.Txt
  loc_15E835E:             Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E8366:             var_98.Visible = True
  loc_15E837F:             Set var_94 = Me.Txt
  loc_15E8385:             Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E838D:             var_98.Enabled = True
  loc_15E83A6:             Set var_94 = Me.Txt
  loc_15E83AC:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E83B4:             var_98.Enabled = False
  loc_15E83CD:             Set var_94 = Me.Txt
  loc_15E83D3:             Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E83DB:             var_98.Enabled = False
  loc_15E83F5:             Set var_94 = Me.Txt
  loc_15E83FB:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E8403:             var_98.Text = vbNullString
  loc_15E841D:             Set var_94 = Me.Txt
  loc_15E8423:             Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E842B:             var_98.Text = vbNullString
  loc_15E843B:             Set var_94 = Me.tOPCtrl1
  loc_15E8441:             Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_A4)
  loc_15E845A:             If (CStr() = "Edit") Then
  loc_15E8473:               Set var_94 = Me.Txt
  loc_15E8479:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E8481:               var_98.Text = CStr(global_144)
  loc_15E8490:             End If
  loc_15E8493:           Else
  loc_15E84A1:             Set var_94 = Me.Txt
  loc_15E84A7:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_15E84CA:             Set var_A4 = Me.Txt
  loc_15E84D0:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_A8)
  loc_15E84F8:             If ((var_98.Text = "Corporate") Or (var_A8.Text = "Mesh")) Then
  loc_15E8506:               Set var_94 = Me.Lbl
  loc_15E850C:               Call 0.Method_Txt_Validate0 (&H1C, var_98)
  loc_15E8514:               var_98.Visible = False
  loc_15E852D:               Set var_94 = Me.Txt
  loc_15E8533:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E853B:               var_98.Visible = False
  loc_15E8554:               Set var_94 = Me.Txt
  loc_15E855A:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E8562:               var_98.Enabled = False
  loc_15E857C:               Set var_94 = Me.Txt
  loc_15E8582:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E858A:               var_98.Text = vbNullString
  loc_15E85A3:               Set var_94 = Me.Txt
  loc_15E85A9:               Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E85B1:               var_98.Enabled = True
  loc_15E85CA:               Set var_94 = Me.Txt
  loc_15E85D0:               Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E85D8:               var_98.Enabled = True
  loc_15E85E8:               Set var_94 = Me.tOPCtrl1
  loc_15E85EE:               Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_15E8607:               If (CStr() = "Edit") Then
  loc_15E8620:                 Set var_94 = Me.Txt
  loc_15E8626:                 Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E862E:                 var_98.Text = CStr(global_132)
  loc_15E864E:                 Set var_94 = Me.Txt
  loc_15E8654:                 Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E865C:                 var_98.Text = global_140
  loc_15E8668:               End If
  loc_15E8668:             End If
  loc_15E8668:           End If
  loc_15E866B:         Else
  loc_15E8673:           If (var_90 = CInt(8)) Then
  loc_15E86B7:             If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_15E86C7:               Set var_94 = Me.Txt
  loc_15E86CD:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E86EC:               If (var_98.Text <> vbNullString) Then
  loc_15E872A:                 Set var_A4 = Me.Txt
  loc_15E8730:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E8738:                 var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15E876B:                 var_98 = Me.Fields.Item("Code")
  loc_15E8789:                 Set var_A4 = Me.Txt
  loc_15E878F:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E8797:                 var_A8.Tag = CStr(var_98.Value)
  loc_15E87B0:               Else
  loc_15E87BD:                 Set var_94 = Me.Txt
  loc_15E87C3:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E87CB:                 var_98.Text = vbNullString
  loc_15E87E4:                 Set var_94 = Me.Txt
  loc_15E87EA:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E87F2:                 var_98.Tag = vbNullString
  loc_15E87FE:               End If
  loc_15E87FE:             End If
  loc_15E8801:           Else
  loc_15E8809:             If (var_90 = CInt(&H1B)) Then
  loc_15E884D:               If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_15E885D:                 Set var_94 = Me.Txt
  loc_15E8863:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8882:                 If (var_98.Text <> vbNullString) Then
  loc_15E88C0:                   Set var_A4 = Me.Txt
  loc_15E88C6:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E88CE:                   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15E8901:                   var_98 = Me.Fields.Item("Code")
  loc_15E891F:                   Set var_A4 = Me.Txt
  loc_15E8925:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E892D:                   var_A8.Tag = CStr(var_98.Value)
  loc_15E8946:                 Else
  loc_15E8953:                   Set var_94 = Me.Txt
  loc_15E8959:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8961:                   var_98.Text = vbNullString
  loc_15E897A:                   Set var_94 = Me.Txt
  loc_15E8980:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8988:                   var_98.Tag = vbNullString
  loc_15E8994:                 End If
  loc_15E8994:               End If
  loc_15E8997:             Else
  loc_15E899F:               If (var_90 = CInt(&H12)) Then
  loc_15E89AF:                 Set var_94 = Me.Txt
  loc_15E89B5:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E89D4:                 If (var_98.Text <> vbNullString) Then
  loc_15E89EF:                   Set var_98 = Me.ListView.SelectedItem
  loc_15E8A07:                   Set var_A4 = Me.Txt
  loc_15E8A0D:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E8A15:                   var_A8.Text = var_98.Text
  loc_15E8A2B:                 End If
  loc_15E8A39:                 Set var_94 = Me.Txt
  loc_15E8A3F:                 Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_15E8A5E:                 If (var_98.Text = "Yes") Then
  loc_15E8A6E:                   Set var_94 = Me.Txt
  loc_15E8A74:                   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E8A7C:                   var_98.Enabled = True
  loc_15E8A95:                   Set var_94 = Me.Txt
  loc_15E8A9B:                   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E8AA3:                   var_98.Enabled = True
  loc_15E8AB3:                   Set var_94 = Me.tOPCtrl1
  loc_15E8AB9:                   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_15E8AD2:                   If (CStr() = "Edit") Then
  loc_15E8AE6:                     Set var_94 = Me.Txt
  loc_15E8AEC:                     Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E8AF4:                     var_98.Text = global_156
  loc_15E8B11:                     Set var_94 = Me.Txt
  loc_15E8B17:                     Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E8B1F:                     var_98.Text = global_152
  loc_15E8B2B:                   End If
  loc_15E8B2E:                 Else
  loc_15E8B3B:                   Set var_94 = Me.Txt
  loc_15E8B41:                   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E8B49:                   var_98.Enabled = False
  loc_15E8B62:                   Set var_94 = Me.Txt
  loc_15E8B68:                   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E8B70:                   var_98.Enabled = False
  loc_15E8B8A:                   Set var_94 = Me.Txt
  loc_15E8B90:                   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E8B98:                   var_98.Text = vbNullString
  loc_15E8BB2:                   Set var_94 = Me.Txt
  loc_15E8BB8:                   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E8BC0:                   var_98.Text = vbNullString
  loc_15E8BCC:                 End If
  loc_15E8BCF:               Else
  loc_15E8BD7:                 If (var_90 = CInt(&HD)) Then
  loc_15E8BE7:                   Set var_94 = Me.Txt
  loc_15E8BED:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8C0C:                   If (var_98.Text <> vbNullString) Then
  loc_15E8C1E:                     Set var_94 = Me.Txt
  loc_15E8C24:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8C3F:                     var_8E = CInt(InStr(1, CVar(var_98), "@", 0))
  loc_15E8C52:                     If (var_8E <> 0) Then
  loc_15E8C66:                       Set var_94 = Me.Txt
  loc_15E8C6C:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8C82:                       var_F4 = InStr(CLng((var_8E + 1)), CVar(var_98), "@", 0)
  loc_15E8C98:                       If CBool(InStr(1, CVar(var_98), "@", 0) <> 0) Then
  loc_15E8C9D:                         arg_10 = &HFF
  loc_15E8CA0:                         Exit Sub
  loc_15E8CA1:                       End If
  loc_15E8CA4:                     Else
  loc_15E8CB2:                       var_C0 = "Enter Valid E-Mail Id."
  loc_15E8CBD:                       MsgBox("@", &H40, InStr(1, CVar(var_98), "@", 0), var_114, var_134)
  loc_15E8CCF:                       arg_10 = &HFF
  loc_15E8CD2:                       Exit Sub
  loc_15E8CD3:                     End If
  loc_15E8CDD:                     Set var_94 = Me.Txt
  loc_15E8CE3:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_15E8D08:                     Set var_A4 = Me.Txt
  loc_15E8D0E:                     Call 0.Method_Txt_Validate0 (Cancel, var_A8, CStr(LCase(CVar(var_98))))
  loc_15E8D16:                     var_A8.Text = arg_10
  loc_15E8D2E:                   End If
  loc_15E8D31:                 Else
  loc_15E8D39:                   If (var_90 = CInt(&H22)) Then
  loc_15E8D4A:                     Set var_94 = Me.Txt
  loc_15E8D50:                     Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_15E8D7A:                     var_AC = Replace(var_98.Text, " ", vbNullString, 1, -1, 0)
  loc_15E8D88:                     Set var_A4 = Me.Txt
  loc_15E8D8E:                     Call 0.Method_Txt_Validate0 (CInt(&H22), var_A8)
  loc_15E8D96:                     var_A8.Text = var_A8.Text
  loc_15E8DB0:                   Else
  loc_15E8DB8:                     If (var_90 = CInt(&H15)) Then
  loc_15E8DC5:                       Set var_94 = Me.Txt
  loc_15E8DCB:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8E05:                       Set var_A4 = Me.Txt
  loc_15E8E0B:                       Call 0.Method_Txt_Validate0 (Cancel, var_A8, CStr(Format(CVar(var_98), "0")))
  loc_15E8E13:                       var_A8.Text = 1
  loc_15E8E30:                     Else
  loc_15E8E38:                       If Not (var_90 = CInt(&H16)) Then
  loc_15E8E43:                         If Not (var_90 = CInt(&H19)) Then
  loc_15E8E4E:                           If Not (var_90 = CInt(&H17)) Then
  loc_15E8E59:                             If (var_90 = CInt(&H18)) Then
  loc_15E8E5C:                             End If
  loc_15E8E5C:                           End If
  loc_15E8E5C:                         End If
  loc_15E8E66:                         Set var_94 = Me.Txt
  loc_15E8E6C:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8EA6:                         Set var_A4 = Me.Txt
  loc_15E8EAC:                         Call 0.Method_Txt_Validate0 (Cancel, var_A8, CStr(Format(CVar(var_98), "0.00")), 1)
  loc_15E8EB4:                         var_A8.Text = 1
  loc_15E8ECE:                       End If
  loc_15E8ECE:                     End If
  loc_15E8ECE:                   End If
  loc_15E8ECE:                 End If
  loc_15E8ECE:               End If
  loc_15E8ECE:             End If
  loc_15E8ECE:           End If
  loc_15E8ECE:         End If
  loc_15E8ECE:       End If
  loc_15E8ECE:     End If
  loc_15E8ECE:   End If
  loc_15E8ECE:   ' Referenced from: 15E7B25
  loc_15E8ECE: End If
  loc_15E8ED3: Set var_88 = Nothing
  loc_15E8ED6: Exit Sub
End Sub

Private Sub TxtGrid1_GotFocus(Index As Integer) '1004FC8
  'Data Table: 547210
  Dim var_8C As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_A4 As Variant
  Dim var_108 As Variant
  Dim var_114 As String
  Dim var_110 As TextBox
  Dim var_118 As Long
  Dim var_8A As Integer
  Dim var_11C As Integer
  loc_1004DD4: On Error Goto loc_1004F63
  loc_1004DDA: var_8C = Index
  loc_1004DE3: If (var_8C = 1) Then
  loc_1004DF9:   var_C4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_1004E02:   Set var_A4 = Me.Fgrid1
  loc_1004E20:   var_108 = Me.Fgrid1.TextMatrix)
  loc_1004E37:   Set var_10C = Me.TxtGrid1
  loc_1004E3D:   Call 0.Method_TxtGrid1_GotFocus0 (1, var_110, CStr(var_108))
  loc_1004E45:   var_110.Tag = CVar(CLng(var_A4.Col))
  loc_1004E76:   var_118 = CLng(Me.Fgrid1.Col)
  loc_1004E86:   If (var_118 = CLng(4)) Then
  loc_1004E97:     Set var_90 = Me.TxtGrid1
  loc_1004E9D:     Call 0.Method_TxtGrid1_GotFocus0 (1, var_A4, 8)
  loc_1004EA5:     var_A4.MaxLength = var_118
  loc_1004EBA:     If (global_54 = 0) Then
  loc_1004EC5:       var_114 = "{Home}+{End}"
  loc_1004ECB:       Proc_303_0_FB9B68(CStr(var_108), 0)
  loc_1004ED3:     End If
  loc_1004ED3:   End If
  loc_1004ED6: Else
  loc_1004EDC:   If (var_8C = 2) Then
  loc_1004EFF:     var_8A = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_1004F0B:     var_11C = var_8A
  loc_1004F14:     If (var_11C = 0) Then
  loc_1004F26:       Set var_90 = Me.TxtGrid1
  loc_1004F2C:       Call 0.Method_TxtGrid1_GotFocus0 (Index, var_A4, 8, var_11C)
  loc_1004F34:       var_A4.MaxLength = var_8A
  loc_1004F49:       If (global_54 = 0) Then
  loc_1004F54:         var_114 = "{Home}+{End}"
  loc_1004F5A:         Proc_303_0_FB9B68(CStr(var_108), 0)
  loc_1004F62:       End If
  loc_1004F62:     End If
  loc_1004F62:   End If
  loc_1004F62: End If
  loc_1004F62: Exit Sub
  loc_1004F63: ' Referenced from: 1004DD4
  loc_1004F6B: Set var_90 = Err()
  loc_1004F71: Call 0.Method_arg_1C (var_120, var_C4)
  loc_1004F82: If (var_120 <> 0) Then
  loc_1004F8D:   Set var_90 = Err()
  loc_1004F93:   Call 0.Method_arg_2C (CStr(var_108))
  loc_1004FB4:   MsgBox(CVar(CStr(var_108)), &H40, "Validation", var_108, var_130)
  loc_1004FC7: End If
  loc_1004FC7: Exit Sub
End Sub

Private Sub TxtGrid1_KeyDown(KeyCode As Integer, Shift As Integer) '113F940
  'Data Table: 547210
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_86 As Integer
  Dim var_BC As Integer
  loc_113F5BC: On Error Goto loc_113F8DB
  loc_113F5C2: var_88 = KeyCode
  loc_113F5CB: If (var_88 = 1) Then
  loc_113F5D8:   If (CLng(Shift) = &H1B) Then
  loc_113F5E7:     Set var_8C = Me.TxtGrid1
  loc_113F5ED:     Call 0.Method_TxtGrid1_KeyDown0 (1, var_90)
  loc_113F5F5:     var_94 = var_90.Tag
  loc_113F606:     Set var_98 = Me.TxtGrid1
  loc_113F60C:     Call 0.Method_TxtGrid1_KeyDown0 (1, var_9C)
  loc_113F614:     var_9C.Text = var_94
  loc_113F630:     Call TxtGrid1_KeyUp(KeyCode, Shift)
  loc_113F639:     Set var_8C = Me.Fgrid1
  loc_113F655:     Set var_8C = Me.TxtGrid1
  loc_113F65B:     Call 0.Method_TxtGrid1_KeyDown0 (1, var_90, 0)
  loc_113F663:     var_90.Visible = Fgrid1.DispID_8001
  loc_113F66F:     Exit Sub
  loc_113F670:   End If
  loc_113F683:   var_B0 = CLng(Me.Fgrid1.Col)
  loc_113F693:   If (var_B0 = CLng(4)) Then
  loc_113F6D6:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_113F6E4:       Call Proc_22_89_114EE48(KeyCode, 0, var_B4)
  loc_113F6EF:       If (var_B4 = &HFF) Then
  loc_113F6FD:         Set var_9C = Me.TxtGrid1
  loc_113F725:         Set var_90 = var_9C
  loc_113F734:         Proc_6_62_1253BC4(Me.Fgrid1, var_90, KeyCode, Shift, 0, 4)
  loc_113F744:       End If
  loc_113F744:     End If
  loc_113F744:   End If
  loc_113F747: Else
  loc_113F74D:   If (var_88 = 2) Then
  loc_113F75A:     If (CLng(Shift) = &H1B) Then
  loc_113F769:       Set var_8C = Me.TxtGrid1
  loc_113F76F:       Call 0.Method_TxtGrid1_KeyDown0 (2, var_90, var_94, 0, 0)
  loc_113F777:       0 = var_90.Tag
  loc_113F788:       Set var_98 = Me.TxtGrid1
  loc_113F78E:       Call 0.Method_TxtGrid1_KeyDown0 (2, var_9C, var_94)
  loc_113F796:       var_9C.Text = var_B0
  loc_113F7B2:       Call TxtGrid1_KeyUp(KeyCode, Shift)
  loc_113F7BB:       Set var_8C = Me.FgridPlan
  loc_113F7D7:       Set var_8C = Me.TxtGrid1
  loc_113F7DD:       Call 0.Method_TxtGrid1_KeyDown0 (2, var_90, 0, FgridPlan.DispID_8001)
  loc_113F7E5:       var_90.Visible = arg_14
  loc_113F7F1:       Exit Sub
  loc_113F7F2:     End If
  loc_113F812:     var_86 = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_113F81E:     var_BC = var_86
  loc_113F827:     If (var_BC = 0) Then
  loc_113F86A:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_113F87A:         Call Proc_22_89_114EE48(2, 0, var_B6, var_BC)
  loc_113F885:         If (var_B6 = &HFF) Then
  loc_113F8CA:           Proc_6_62_1253BC4(Me.FgridPlan, Me.TxtGrid1, KeyCode, Shift, 0, 4)
  loc_113F8DA:         End If
  loc_113F8DA:       End If
  loc_113F8DA:     End If
  loc_113F8DA:   End If
  loc_113F8DA: End If
  loc_113F8DA: Exit Sub
  loc_113F8DB: ' Referenced from: 113F5BC
  loc_113F8E3: Set var_8C = Err()
  loc_113F8E9: Call 0.Method_arg_1C (var_C0, 0, 0, 0)
  loc_113F8FA: If (var_C0 <> 0) Then
  loc_113F905:   Set var_8C = Err()
  loc_113F90B:   Call 0.Method_arg_2C (var_94, var_86)
  loc_113F92C:   MsgBox(CVar(var_94), &H40, "Validation", var_100, var_120)
  loc_113F93F: End If
  loc_113F93F: Exit Sub
End Sub

Private Sub TxtGrid1_KeyPress(KeyAscii As Integer) 'E8E49C
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  loc_E8E42C: On Error Goto loc_E8E495
  loc_E8E432: Proc_6_58_E054C0(arg_10)
  loc_E8E45A: If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_E8E467:   Set var_88 = Me.TxtGrid1
  loc_E8E46D:   Call 0.Method_TxtGrid1_KeyPress0 (KeyAscii, var_A0)
  loc_E8E488:   Proc_6_42_129A86C(var_A0, arg_10, 5)
  loc_E8E494: End If
  loc_E8E494: Exit Sub
  loc_E8E495: ' Referenced from: E8E42C
  loc_E8E495: Proc_6_60_E62BC4(2)
  loc_E8E49A: Exit Sub
End Sub

Private Sub TxtGrid1_KeyUp(KeyCode As Integer, Shift As Integer) 'FFBD48
  'Data Table: 547210
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Long
  loc_FFBB64: On Error Goto loc_FFBD3F
  loc_FFBB6A: var_86 = KeyCode
  loc_FFBB73: If (var_86 = 1) Then
  loc_FFBB99:   If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_FFBBA9:     Set var_8C = Me.TxtGrid1
  loc_FFBBAF:     Call 0.Method_TxtGrid1_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_FFBBB7:     var_A0 = var_A4.Text
  loc_FFBBDA:     var_120 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_FFBBF2:     var_140 = CVar(CLng(Me.Fgrid1.Col)) 'Long
  loc_FFBC1F:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_FFBC27:     Set var_174 = Me.Fgrid1
  loc_FFBC2D:     LateIdCallSt
  loc_FFBC54:   End If
  loc_FFBC57: Else
  loc_FFBC5D:   If (var_86 = 2) Then
  loc_FFBC73:     var_180 = CLng(Me.FgridPlan.Col)
  loc_FFBC83:     If (var_180 = CLng(4)) Then
  loc_FFBC93:       Set var_8C = Me.TxtGrid1
  loc_FFBC99:       Call 0.Method_TxtGrid1_KeyUp0 (KeyCode, var_A4, var_A8, var_180, var_174, var_160)
  loc_FFBCA1:       1 = var_A4.Text
  loc_FFBCC4:       var_120 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_FFBCDC:       var_140 = CVar(CLng(Me.FgridPlan.Col)) 'Long
  loc_FFBD09:       var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_FFBD11:       Set var_174 = Me.FgridPlan
  loc_FFBD17:       LateIdCallSt
  loc_FFBD3E:     End If
  loc_FFBD3E:   End If
  loc_FFBD3E: End If
  loc_FFBD3E: Exit Sub
  loc_FFBD3F: ' Referenced from: FFBB64
  loc_FFBD3F: Proc_6_60_E62BC4(var_174, var_160, 1, 1, var_140, var_120)
  loc_FFBD44: Exit Sub
End Sub

Private Sub DGUser_UnknownEvent_9 'FEDCB8
  'Data Table: 547210
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FEDAE4: On Error Goto loc_FEDC53
  loc_FEDAF6: Me.DgUser.Visible = False
  loc_FEDB07: var_AC = Me.RecordCount
  loc_FEDB15: If (var_AC > 0) Then
  loc_FEDB67:   Set var_CC = Me.Txt
  loc_FEDB6D:   Call 0.Method_DGUser_UnknownEvent_90 (CInt(CStr(Me.DgUser.Tag)), var_D0)
  loc_FEDB75:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEDBCD:   Set var_B4 = Me.DgUser
  loc_FEDBE4:   Set var_CC = Me.Txt
  loc_FEDBEA:   Call 0.Method_DGUser_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FEDBF2:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FEDC12: End If
  loc_FEDC27: var_C8 = CStr(Me.DgUser.Tag)
  loc_FEDC30: Set var_B0 = Me.Txt
  loc_FEDC36: Call 0.Method_DGUser_UnknownEvent_90 (CInt(var_C8))
  loc_FEDC3E: var_B4.SetFocus
  loc_FEDC52: Exit Sub
  loc_FEDC53: ' Referenced from: FEDAE4
  loc_FEDC5B: Set var_A8 = Err()
  loc_FEDC61: Call 0.Method_arg_1C (var_AC)
  loc_FEDC72: If (var_AC <> 0) Then
  loc_FEDC7D:   Set var_A8 = Err()
  loc_FEDC83:   Call 0.Method_arg_2C (var_C8)
  loc_FEDCA4:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FEDCB7: End If
  loc_FEDCB7: Exit Sub
End Sub

Private Sub DGUser_UnknownEvent_1F 'E76100
  'Data Table: 547210
  loc_E760BE: Proc_6_153_E91194(Me.DgUser, arg_14)
  loc_E760D5: Set var_8C = Me.FGPoint
  loc_E760F1: Proc_6_138_106D6F8(Me.DgUser, global_128, CInt(&H1B))
  loc_E760FF: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_0 'E9D314
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_E9D2B0: If (CDbl(CLng(Me.FgridPlan.BackColorSel)) = CDbl("14737632")) Then
  loc_E9D2C6:   Me.FgridPlan.Col = 3
  loc_E9D2CE: End If
  loc_E9D2E1: Me.FgridPlan.BackColorSel = CVar(CLng("14737632"))
  loc_E9D2F4: Set var_88 = Me.TxtGrid1
  loc_E9D2FA: Call 0.Method_FgridPlan_UnknownEvent_00 (2, var_BC)
  loc_E9D302: var_BC.Visible = False
  loc_E9D30E: Call Proc_22_81_F6C2B0()
  loc_E9D313: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_1 'E64698
  'Data Table: 547210
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E64658: Set var_88 = Me.TxtGrid1
  loc_E6465E: Call 0.Method_FgridPlan_UnknownEvent_10 (2, var_8C)
  loc_E64678: If (var_8C.Visible = 0) Then
  loc_E6468E:   Me.FgridPlan.BackColorSel = CVar(CLng("16777215"))
  loc_E64696: End If
  loc_E64696: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_8 'E1E1E0
  'Data Table: 547210
  loc_E1E1D7: Me.FgridPlan.CellBackColor = CVar(CLng("16777215"))
  loc_E1E1DF: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_9 'E2E994
  'Data Table: 547210
  Dim var_8C As TextBox
  loc_E2E977: Set var_88 = Me.TxtGrid1
  loc_E2E97D: Call 0.Method_FgridPlan_UnknownEvent_90 (2, var_8C)
  loc_E2E985: var_8C.Visible = False
  loc_E2E991: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_A '1034E58
  'Data Table: 547210
  Dim var_A0 As String
  Dim var_B8 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim KeyCode As Integer
  Dim var_86 As Integer
  Dim var_EC As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1034C14: On Error Goto loc_1034E52
  loc_1034C1B: Set var_8C = Me.tOPCtrl1
  loc_1034C21: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1034C3A: If (CStr() = "Browse") Then
  loc_1034C3D:   Exit Sub
  loc_1034C3E: End If
  loc_1034CB2: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FgridPlan.Tag))) = CDbl((CLng(Me.FgridPlan.Rows) - (CLng(Me.FgridPlan.Rows) - 1))))) Then
  loc_1034CCB:   Me.FgridPlan.CellBackColor = CVar(CLng(global_188))
  loc_1034CDB:   var_A0 = "+{Tab}"
  loc_1034CE1:   Proc_303_0_FB9B68(CStr(Me.FgridPlan.Tag), 0)
  loc_1034CEB:   KeyCode = 0
  loc_1034CF1: Else
  loc_1034D48:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FgridPlan.Tag))) = CDbl((CLng(Me.FgridPlan.Rows) - 1)))) Then
  loc_1034D61:     Me.FgridPlan.CellBackColor = CVar(CLng(global_188))
  loc_1034D69:   End If
  loc_1034D69: End If
  loc_1034D6F: global_56 = KeyCode
  loc_1034D95: Me.FgridPlan.Tag = CVar(CStr(CLng(Me.FgridPlan.Row)))
  loc_1034DB9: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1034DDC:   var_86 = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_1034DE8:   var_EC = var_86
  loc_1034DF1:   If (var_EC = 0) Then
  loc_1034E07:     var_D8 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_1034E1F:     var_FC = CVar(CLng(Me.FgridPlan.Col)) 'Long
  loc_1034E24:     var_11C = vbNullString
  loc_1034E2E:     Set var_B8 = Me.FgridPlan
  loc_1034E34:     LateIdCallSt
  loc_1034E4C:   End If
  loc_1034E4C: End If
  loc_1034E4E: KeyCode = 0
  loc_1034E51: Exit Sub
  loc_1034E52: ' Referenced from: 1034C14
  loc_1034E52: Proc_6_60_E62BC4(KeyCode, var_B8, var_11C, var_FC, var_D8, var_EC)
  loc_1034E57: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_B 'E0FC20
  'Data Table: 547210
  loc_E0FC11: Call FgridPlan_UnknownEvent_C()
  loc_E0FC1B: global_54 = 0
  loc_E0FC1E: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_C 'F0D5F8
  'Data Table: 547210
  Dim var_8A As Integer
  loc_F0D53B: var_88 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_F0D545: On Error Goto loc_F0D5F2
  loc_F0D571: var_8A = CInt((CLng((Val(CStr(CLng(Me.FgridPlan.Col))) + CDbl(1))) Mod 2))
  loc_F0D589: If (var_8A = 0) Then
  loc_F0D5CA:   Proc_6_63_110ABA4(Me, Me.FgridPlan, Me.TxtGrid1, 2, &HFF)
  loc_F0D5DC: End If
  loc_F0D5E6: If (CLng(KeyCode) <> &HD) Then
  loc_F0D5EE:   global_54 = &HFF
  loc_F0D5F1: End If
  loc_F0D5F1: Exit Sub
  loc_F0D5F2: ' Referenced from: F0D545
  loc_F0D5F2: Proc_6_60_E62BC4(global_54, KeyCode, 0)
  loc_F0D5F7: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_D 'FDDF70
  'Data Table: 547210
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FDDD9C: On Error Goto loc_FDDF69
  loc_FDDDA3: Set var_8C = Me.tOPCtrl1
  loc_FDDDA9: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FDDDC2: If (CStr() = "Browse") Then
  loc_FDDDC5:   Exit Sub
  loc_FDDDC6: End If
  loc_FDDDE3: If (CLng(Me.FgridPlan.ColSel) = CLng(0)) Then
  loc_FDDDE6:   Exit Sub
  loc_FDDDE7: End If
  loc_FDDDF8: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FDDE1A:   If (CLng(Me.FgridPlan.Row) >= 1) Then
  loc_FDDE54:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FDDE76:       If (CLng(Me.FgridPlan.Rows) > 2) Then
  loc_FDDE8C:         var_B0 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_FDDE95:         Set var_114 = Me.FgridPlan
  loc_FDDEB0:       Else
  loc_FDDEC3:         Me.FgridPlan.Rows = 1
  loc_FDDEE0:         var_D0 = CVar(CStr(CLng(Me.FgridPlan.Rows))) 'String
  loc_FDDEE8:         Set var_114 = Me.FgridPlan
  loc_FDDF17:         Me.FgridPlan.FixedRows = 1
  loc_FDDF1F:       End If
  loc_FDDF1F:     End If
  loc_FDDF22:   Else
  loc_FDDF2D:     var_D0 = "Delete Module"
  loc_FDDF43:     MsgBox("No Entries To Delete", &H10, var_D0, var_F0, var_110)
  loc_FDDF53:   End If
  loc_FDDF57:   Set var_8C = Me.FgridPlan
  loc_FDDF68: End If
  loc_FDDF68: Exit Sub
  loc_FDDF69: ' Referenced from: FDDD9C
  loc_FDDF69: Proc_6_60_E62BC4(FgridPlan.DispID_8001, FgridPlan.DispID_10000, var_D0)
  loc_FDDF6E: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_0 'E40684
  'Data Table: 547210
  Dim var_8C As TextBox
  loc_E40663: Set var_88 = Me.TxtGrid
  loc_E40669: Call 0.Method_FGridIncl_UnknownEvent_00 (0, var_8C)
  loc_E40671: var_8C.Visible = False
  loc_E4067D: Call Proc_22_81_F6C2B0()
  loc_E40682: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_A '100C8F0
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim KeyCode As Integer
  loc_100C6F8: Set var_88 = Me.tOPCtrl1
  loc_100C6FE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_100C743: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_100C74C:   Call Form_KeyDown(KeyCode, Shift)
  loc_100C751: End If
  loc_100C755: Set var_88 = Me.tOPCtrl1
  loc_100C75B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_100C774: If (CStr() = "Browse") Then
  loc_100C777:   Exit Sub
  loc_100C778: End If
  loc_100C7A0: If ((CLng(KeyCode) = &H20) And (CLng(Me.FGridIncl.Col) = CLng(1))) Then
  loc_100C7B3:   Me.FGridIncl.CellFontName = "WINGDINGS"
  loc_100C7CD:   Me.FGridIncl.CellFontSize = CVar(CDbl(&HE))
  loc_100C7E8:   var_AC = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_100C7F0:   var_CC = CVar(CLng(1)) 'Long
  loc_100C81E:   var_174 = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_100C826:   var_194 = CVar(CLng(1)) 'Long
  loc_100C85D:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGridIncl.TextMatrix)) = "�"), " ", "�"))) 'String
  loc_100C865:   Set var_1C8 = Me.FGridIncl
  loc_100C86B:   LateIdCallSt
  loc_100C894: End If
  loc_100C8BC: If ((CLng(KeyCode) = &HD) And (CLng(Me.FGridIncl.Col) = CLng(1))) Then
  loc_100C8D1:   Me.FGridIncl.Col = CVar(CLng(2))
  loc_100C8D9: End If
  loc_100C8DF: If (KeyCode = &HD) Then
  loc_100C8E7:   global_54 = 0
  loc_100C8EA: End If
  loc_100C8EC: KeyCode = 0
  loc_100C8EF: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_B 'E0F878
  'Data Table: 547210
  loc_E0F869: Call FGridIncl_UnknownEvent_C()
  loc_E0F873: global_54 = 0
  loc_E0F876: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_C 'E5CABC
  'Data Table: 547210
  loc_E5CA80: Set var_88 = Me.tOPCtrl1
  loc_E5CA86: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E5CA9F: If (CStr() = "Browse") Then
  loc_E5CAA2:   Exit Sub
  loc_E5CAA3: End If
  loc_E5CAAD: If (CLng(KeyCode) <> &HD) Then
  loc_E5CAB5:   global_54 = &HFF
  loc_E5CAB8: End If
  loc_E5CAB8: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_E 'E28B9C
  'Data Table: 547210
  loc_E28B95: If (CLng(Me.FGridIncl.Col) <> CLng(1)) Then
  loc_E28B98:   Exit Sub
  loc_E28B99: End If
  loc_E28B99: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_10 'F9DC50
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_F9DAF4: Set var_88 = Me.tOPCtrl1
  loc_F9DAFA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_F9DB13: If (CStr() = "Browse") Then
  loc_F9DB16:   Exit Sub
  loc_F9DB17: End If
  loc_F9DB34: If (CLng(Me.FGridIncl.Col) <> CLng(1)) Then
  loc_F9DB37:   Exit Sub
  loc_F9DB38: End If
  loc_F9DB57: If (CLng(Me.FGridIncl.Row) = 0) Then
  loc_F9DB5A:   Exit Sub
  loc_F9DB5B: End If
  loc_F9DB6B: Me.FGridIncl.CellFontName = "WINGDINGS"
  loc_F9DB85: Me.FGridIncl.CellFontSize = CVar(CDbl(&HE))
  loc_F9DBA0: var_AC = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_F9DBA8: var_CC = CVar(CLng(1)) 'Long
  loc_F9DBD6: var_174 = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_F9DBDE: var_194 = CVar(CLng(1)) 'Long
  loc_F9DC15: var_1B4 = CVar(CStr(IIf((CStr(Me.FGridIncl.TextMatrix)) = "�"), " ", "�"))) 'String
  loc_F9DC1D: Set var_1C8 = Me.FGridIncl
  loc_F9DC23: LateIdCallSt
  loc_F9DC4C: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FABE58
  'Data Table: 547210
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_100 As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FABCD8: On Error Goto loc_FABDF1
  loc_FABCE5: Set var_88 = Me.TxtGrid
  loc_FABCEB: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_FABCF9: Proc_183_28_E20B20(var_8C)
  loc_FABD05: Call Proc_22_81_F6C2B0(var_8C)
  loc_FABD1D: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FABD38: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FABD41: Set var_8C = Me.FGrid
  loc_FABD5F: var_100 = Me.FGrid.TextMatrix)
  loc_FABD6A: var_10C = CStr(var_100)
  loc_FABD76: Set var_104 = Me.TxtGrid
  loc_FABD7C: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_10C)
  loc_FABD84: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_FABDB5: var_110 = CLng(Me.FGrid.Col)
  loc_FABDC5: If (var_110 = CLng(2)) Then
  loc_FABDD6:   Set var_88 = Me.TxtGrid
  loc_FABDDC:   Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &HF)
  loc_FABDE4:   var_8C.MaxLength = var_110
  loc_FABDF0: End If
  loc_FABDF0: Exit Sub
  loc_FABDF1: ' Referenced from: FABCD8
  loc_FABDF9: Set var_88 = Err()
  loc_FABDFF: Call 0.Method_arg_1C (var_114)
  loc_FABE10: If (var_114 <> 0) Then
  loc_FABE1B:   Set var_88 = Err()
  loc_FABE21:   Call 0.Method_arg_2C (var_10C)
  loc_FABE42:   MsgBox(CVar(var_10C), &H40, "Validation", var_100, var_124)
  loc_FABE55: End If
  loc_FABE55: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10259F0
  'Data Table: 547210
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10257C8: On Error Goto loc_1025989
  loc_10257D5: If (CLng(Shift) = &H1B) Then
  loc_10257E4:   Set var_88 = Me.TxtGrid
  loc_10257EA:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_10257F2:   var_90 = var_8C.Tag
  loc_1025803:   Set var_94 = Me.TxtGrid
  loc_1025809:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1025811:   var_98.Text = var_90
  loc_102582D:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_102583D:   Set var_88 = Me.TxtGrid
  loc_1025843:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_102584B:   var_8C.Visible = False
  loc_102585B:   Set var_88 = Me.FGrid
  loc_102586C:   Exit Sub
  loc_102586D: End If
  loc_1025880: var_AC = CLng(Me.FGrid.Col)
  loc_1025890: If Not (var_AC = CLng(1)) Then
  loc_102589A:   If Not (var_AC = CLng(2)) Then
  loc_10258A4:     If Not (var_AC = CLng(4)) Then
  loc_10258AE:       If (var_AC = CLng(3)) Then
  loc_10258B1:       End If
  loc_10258B1:     End If
  loc_10258B1:   End If
  loc_10258F1:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_10258F7:     Call Proc_22_90_11CBB70(var_AE, var_AC)
  loc_1025902:     If (var_AE = &HFF) Then
  loc_1025939:       Set var_8C = Me.TxtGrid
  loc_1025948:       Proc_183_25_11BD654(Me.FGrid, var_8C, KeyCode, Shift, global_54, 4)
  loc_102595B:     Else
  loc_1025960:       Call TxtGrid_LostFocus()
  loc_102596E:       Set var_88 = Me.TxtGrid
  loc_1025974:       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, 0)
  loc_102597C:       var_8C.SetFocus
  loc_1025988:     End If
  loc_1025988:   End If
  loc_1025988: End If
  loc_1025988: Exit Sub
  loc_1025989: ' Referenced from: 10257C8
  loc_1025991: Set var_88 = Err()
  loc_1025997: Call 0.Method_arg_1C (var_B8, 0, 0)
  loc_10259A8: If (var_B8 <> 0) Then
  loc_10259B3:   Set var_88 = Err()
  loc_10259B9:   Call 0.Method_arg_2C (var_90, FGrid.DispID_8001)
  loc_10259DA:   MsgBox(CVar(var_90), &H40, "Validation", var_F8, var_118)
  loc_10259ED: End If
  loc_10259ED: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F02280
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  loc_F021B0: On Error Goto loc_F02219
  loc_F021B6: Proc_183_46_E070C0(arg_10)
  loc_F021DE: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_F021EB:   Set var_88 = Me.TxtGrid
  loc_F021F1:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_F0220C:   Proc_183_22_129AEBC(var_A0, arg_10, &HA)
  loc_F02218: End If
  loc_F02218: Exit Sub
  loc_F02219: ' Referenced from: F021B0
  loc_F02221: Set var_88 = Err()
  loc_F02227: Call 0.Method_arg_1C (var_AC, 2)
  loc_F02238: If (var_AC <> 0) Then
  loc_F02243:   Set var_88 = Err()
  loc_F02249:   Call 0.Method_arg_2C (var_B0)
  loc_F0226A:   MsgBox(CVar(var_B0), &H40, "Validation", var_F0, var_110)
  loc_F0227D: End If
  loc_F0227D: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10AA6E0
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_14C As Variant
  loc_10AA424: On Error Goto loc_10AA679
  loc_10AA43A: var_9C = CLng(Me.FGrid.Col)
  loc_10AA44A: If (var_9C = CLng(4)) Then
  loc_10AA457:   Set var_A8 = Me.TxtGrid
  loc_10AA45D:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_10AA46F:   Set var_88 = Me.TxtGrid
  loc_10AA475:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AA4E0:   If CBool((Len(var_A0.Text) = 0) Or (Ucase(Mid(CVar(var_AC), 1, 1)) = "C")) Then
  loc_10AA4F0:     Set var_88 = Me.TxtGrid
  loc_10AA4F6:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AA4FE:     var_A0.Text = "Cr"
  loc_10AA50D:   Else
  loc_10AA517:     Set var_88 = Me.TxtGrid
  loc_10AA51D:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AA55F:     If (Ucase(Mid(CVar(var_A0), 1, 1)) = "D") Then
  loc_10AA56F:       Set var_88 = Me.TxtGrid
  loc_10AA575:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AA57D:       var_A0.Text = "Dr"
  loc_10AA58C:     Else
  loc_10AA599:       Set var_88 = Me.TxtGrid
  loc_10AA59F:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AA5A7:       var_A0.Text = "Cr"
  loc_10AA5B3:     End If
  loc_10AA5B3:   End If
  loc_10AA5B6: Else
  loc_10AA5BD:   If (var_9C = CLng(3)) Then
  loc_10AA5CD:     Set var_88 = Me.TxtGrid
  loc_10AA5D3:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AA5DB:     var_A4 = var_A0.Text
  loc_10AA5F5:     var_EC = Me.FGrid.Row
  loc_10AA5FE:     var_11C = CVar(CLng(var_EC)) 'Long
  loc_10AA616:     var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10AA63A:     var_DC = Format(CVar(Val(var_A4)), "0.00")
  loc_10AA643:     var_12C = CVar(CStr(var_DC)) 'String
  loc_10AA64B:     Set var_170 = Me.FGrid
  loc_10AA651:     LateIdCallSt
  loc_10AA678:   End If
  loc_10AA678: End If
  loc_10AA678: Exit Sub
  loc_10AA679: ' Referenced from: 10AA424
  loc_10AA681: Set var_88 = Err()
  loc_10AA687: Call 0.Method_arg_1C (var_17C, var_170, var_12C, 1, 1)
  loc_10AA698: If (var_17C <> 0) Then
  loc_10AA6A3:   Set var_88 = Err()
  loc_10AA6A9:   Call 0.Method_arg_2C (var_A4, var_14C, var_11C)
  loc_10AA6CA:   MsgBox(CVar(var_A4), &H40, "Validation", var_DC, var_EC)
  loc_10AA6DD: End If
  loc_10AA6DD: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'ED3B60
  'Data Table: 547210
  loc_ED3AC0: On Error Goto loc_ED3AFB
  loc_ED3ACC: If (global_58 = 0) Then
  loc_ED3ACF:   Exit Sub
  loc_ED3AD0: End If
  loc_ED3ADA: Set var_88 = Me.TxtGrid
  loc_ED3AE0: Call 0.Method_TxtGrid_LostFocus0 (Index)
  loc_ED3AEE: Proc_183_27_E22608(var_8C)
  loc_ED3AFA: Exit Sub
  loc_ED3AFB: ' Referenced from: ED3AC0
  loc_ED3B03: Set var_88 = Err()
  loc_ED3B09: Call 0.Method_arg_1C (var_94)
  loc_ED3B1A: If (var_94 <> 0) Then
  loc_ED3B25:   Set var_88 = Err()
  loc_ED3B2B:   Call 0.Method_arg_2C (var_98)
  loc_ED3B4C:   MsgBox(CVar(var_98), &H40, "Validation", var_E8, var_108)
  loc_ED3B5F: End If
  loc_ED3B5F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) '11E3958
  'Data Table: 547210
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_120 As Variant
  Dim var_164 As Variant
  Dim var_190 As Double
  loc_11E34EC: On Error Goto loc_11E38F3
  loc_11E3502: var_9C = CLng(Me.FGrid.Col)
  loc_11E3512: If (var_9C = CLng(1)) Then
  loc_11E351F:   Set var_88 = Me.TxtGrid
  loc_11E3525:   Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0)
  loc_11E353D:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E356F:   Call 0.Method_arg_184 (var_A0, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_11E3577:   var_110 = CVar(var_A8) 'String
  loc_11E357F:   Set var_124 = Me.FGrid
  loc_11E3585:   LateIdCallSt
  loc_11E35A6: Else
  loc_11E35AD:   If Not (var_9C = CLng(2)) Then
  loc_11E35B7:     If (var_9C = CLng(4)) Then
  loc_11E35BA:     End If
  loc_11E35F7:     Set var_88 = Me.TxtGrid
  loc_11E35FD:     Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E3605:     var_124 = var_A0.Text
  loc_11E361B:     LateIdCallSt
  loc_11E3656:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11E3659:       Call Proc_22_86_1129BEC(Me.FGrid, CVar(var_A8), CVar(var_A8))
  loc_11E3677:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E367F:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E3699:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E36BA:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E3707:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11E371F:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E3727:         Set var_A0 = Me.FGrid
  loc_11E3743:       End If
  loc_11E3743:     End If
  loc_11E3746:   Else
  loc_11E374D:     If (var_9C = CLng(3)) Then
  loc_11E375D:       Set var_88 = Me.TxtGrid
  loc_11E3763:       Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, FGrid.DispID_10000, var_C0, var_120)
  loc_11E376B:       (var_A8 <> vbNullString) = var_A0.Text
  loc_11E3778:       var_190 = Val(var_A8)
  loc_11E37E1:       LateIdCallSt
  loc_11E3808:       Call Proc_22_86_1129BEC(Me.FGrid, CVar(CStr(Format(CVar(var_190), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E3826:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E382E:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E3848:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E385A:       var_110 = Me.FGrid.Rows
  loc_11E3869:       var_120 = CVar((CLng(var_110) - 1)) 'Long
  loc_11E3880:       var_164 = Me.FGrid.TextMatrix)
  loc_11E38B6:       If (CVar(CLng(3)) And (CDbl(Val(CStr(var_164))) <> CDbl(0))) Then
  loc_11E38CE:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E38D6:         Set var_A0 = Me.FGrid
  loc_11E38F2:       End If
  loc_11E38F2:     End If
  loc_11E38F2:   End If
  loc_11E38F2: End If
  loc_11E38F2: Exit Sub
  loc_11E38F3: ' Referenced from: 11E34EC
  loc_11E38FB: Set var_88 = Err()
  loc_11E3901: Call 0.Method_arg_1C (var_194, FGrid.DispID_10000, var_C0, CVar(CLng(Me.FGrid.Col)), (var_A8 <> vbNullString), var_F0)
  loc_11E3912: If (var_194 <> 0) Then
  loc_11E391D:   Set var_88 = Err()
  loc_11E3923:   Call 0.Method_arg_2C (var_A8, CVar(CLng(Me.FGrid.Row)), var_190, var_F0)
  loc_11E3944:   MsgBox(CVar(var_A8), &H40, "Validation", var_110, var_164)
  loc_11E3957: End If
  loc_11E3957: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F888BC
  'Data Table: 547210
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F88778: On Error Goto loc_F88856
  loc_F8877F: Set var_A4 = Me.ListView
  loc_F887C9: Set var_BC = Me.Txt
  loc_F887CF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F887D7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F88803: Me.FrmList.Visible = False
  loc_F8881D: var_A0 = CStr(Me.ListView.Tag)
  loc_F88825: var_C8 = Val(var_A0)
  loc_F88833: Set var_9C = Me.Txt
  loc_F88839: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F88841: var_A4.SetFocus
  loc_F88855: Exit Sub
  loc_F88856: ' Referenced from: F88778
  loc_F8885E: Set var_88 = Err()
  loc_F88864: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F88875: If (var_CC <> 0) Then
  loc_F88880:   Set var_88 = Err()
  loc_F88886:   Call 0.Method_arg_2C (var_A0)
  loc_F888A7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F888BA: End If
  loc_F888BA: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'F39784
  'Data Table: 547210
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3967B: Me.DGAcName.Visible = False
  loc_F3969A: If (Me.RecordCount > 0) Then
  loc_F396D9:   Set var_B4 = Me.Txt
  loc_F396DF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F396E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3971A:   var_B0 = Me.Fields.Item("Code")
  loc_F39739:   Set var_B4 = Me.Txt
  loc_F3973F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F39747:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3975D: End If
  loc_F39768: Set var_A8 = Me.Txt
  loc_F3976E: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1))
  loc_F39776: var_B0.SetFocus
  loc_F39782: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E75604
  'Data Table: 547210
  loc_E755C2: Proc_6_153_E91194(Me.DGAcName, arg_14)
  loc_E755D9: Set var_8C = Me.FGPoint
  loc_E755F5: Proc_6_138_106D6F8(Me.DGAcName, global_112, CInt(1))
  loc_E75603: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'FEDEE8
  'Data Table: 547210
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FEDD14: On Error Goto loc_FEDE83
  loc_FEDD26: Me.DGCity.Visible = False
  loc_FEDD37: var_AC = Me.RecordCount
  loc_FEDD45: If (var_AC > 0) Then
  loc_FEDD97:   Set var_CC = Me.Txt
  loc_FEDD9D:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FEDDA5:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEDDFD:   Set var_B4 = Me.DGCity
  loc_FEDE14:   Set var_CC = Me.Txt
  loc_FEDE1A:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FEDE22:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FEDE42: End If
  loc_FEDE57: var_C8 = CStr(Me.DGCity.Tag)
  loc_FEDE60: Set var_B0 = Me.Txt
  loc_FEDE66: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FEDE6E: var_B4.SetFocus
  loc_FEDE82: Exit Sub
  loc_FEDE83: ' Referenced from: FEDD14
  loc_FEDE8B: Set var_A8 = Err()
  loc_FEDE91: Call 0.Method_arg_1C (var_AC)
  loc_FEDEA2: If (var_AC <> 0) Then
  loc_FEDEAD:   Set var_A8 = Err()
  loc_FEDEB3:   Call 0.Method_arg_2C (var_C8)
  loc_FEDED4:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FEDEE7: End If
  loc_FEDEE7: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E7675C
  'Data Table: 547210
  loc_E7671A: Proc_6_153_E91194(Me.DGCity, arg_14)
  loc_E76731: Set var_8C = Me.FGPoint
  loc_E7674D: Proc_6_138_106D6F8(Me.DGCity, global_124, CInt(8))
  loc_E7675B: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'FA8B20
  'Data Table: 547210
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA89A0: On Error Goto loc_FA8ABA
  loc_FA89B2: Me.DGUnderAc.Visible = False
  loc_FA89C3: var_AC = Me.RecordCount
  loc_FA89D1: If (var_AC > 0) Then
  loc_FA8A10:   Set var_B4 = Me.Txt
  loc_FA8A16:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA8A1E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA8A51:   var_B0 = Me.Fields.Item("Code")
  loc_FA8A62:   var_CC = CStr(var_B0.Value)
  loc_FA8A70:   Set var_B4 = Me.Txt
  loc_FA8A76:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA8A7E:   var_B8.Tag = var_CC
  loc_FA8A94: End If
  loc_FA8A9F: Set var_A8 = Me.Txt
  loc_FA8AA5: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2))
  loc_FA8AAD: var_B0.SetFocus
  loc_FA8AB9: Exit Sub
  loc_FA8ABA: ' Referenced from: FA89A0
  loc_FA8AC2: Set var_A8 = Err()
  loc_FA8AC8: Call 0.Method_arg_1C (var_AC)
  loc_FA8AD9: If (var_AC <> 0) Then
  loc_FA8AE4:   Set var_A8 = Err()
  loc_FA8AEA:   Call 0.Method_arg_2C (var_CC)
  loc_FA8B0B:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA8B1E: End If
  loc_FA8B1E: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_1F 'E75F44
  'Data Table: 547210
  loc_E75F02: Proc_6_153_E91194(Me.DGUnderAc, arg_14)
  loc_E75F19: Set var_8C = Me.FGPoint
  loc_E75F35: Proc_6_138_106D6F8(Me.DGUnderAc, global_120, CInt(2))
  loc_E75F43: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'F06E60
  'Data Table: 547210
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_F06D92: On Error Goto loc_F06DFB
  loc_F06D9B: Me.MoveFirst
  loc_F06DB5: var_8C = "SearchCode='" & MyValue
  loc_F06DC5: Me.Find var_8C & "'", 0, 1
  loc_F06DD1: Call Proc_22_91_18269A4(var_A0)
  loc_F06DF2: Proc_5_0_110649C(&HFF, Me)
  loc_F06DFA: Exit Sub
  loc_F06DFB: ' Referenced from: F06D92
  loc_F06E03: Set var_A8 = Err()
  loc_F06E09: Call 0.Method_arg_1C (var_B0, global_108)
  loc_F06E1A: If (var_B0 <> 0) Then
  loc_F06E25:   Set var_A8 = Err()
  loc_F06E2B:   Call 0.Method_arg_2C (var_8C)
  loc_F06E4C:   MsgBox(CVar(var_8C), &H40, "Validation", var_F0, var_110)
  loc_F06E5F: End If
  loc_F06E5F: Exit Sub
End Sub

Public Sub Proc_22_78_F5E734(arg_C) 'F5E734
  'Data Table: 547210
  Dim var_98 As Variant
  loc_F5E60E: Set var_8C = Me.Txt
  loc_F5E614: Call 0.Method_Proc_22_78_F5E734C (var_8E, var_86)
  loc_F5E624: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F5E639:   If ((var_86 = &H1D) Or (var_86 = &H1E)) Then
  loc_F5E63C:     GoTo loc_F5E669
  loc_F5E63F:   End If
  loc_F5E64F:   Set var_8C = Me.Txt
  loc_F5E655:   Call 0.Method_Proc_22_78_F5E7340 (CInt(var_86), var_98)
  loc_F5E65D:   var_98.Enabled = arg_C
  loc_F5E669:   ' Referenced from: F5E63C
  loc_F5E66C: Next var_92 'Byte
  loc_F5E67F: Set var_8C = Me.Txt
  loc_F5E685: Call 0.Method_Proc_22_78_F5E7340 (CInt(&H19), var_98)
  loc_F5E68D: var_98.Enabled = False
  loc_F5E6A6: Set var_8C = Me.Txt
  loc_F5E6AC: Call 0.Method_Proc_22_78_F5E7340 (CInt(&H1B), var_98)
  loc_F5E6B4: var_98.Enabled = False
  loc_F5E6CD: Set var_8C = Me.Txt
  loc_F5E6D3: Call 0.Method_Proc_22_78_F5E7340 (CInt(&H1A), var_98)
  loc_F5E6DB: var_98.Enabled = False
  loc_F5E6F4: Set var_8C = Me.Txt
  loc_F5E6FA: Call 0.Method_Proc_22_78_F5E7340 (CInt(&H19), var_98)
  loc_F5E702: var_98.Visible = False
  loc_F5E719: Set var_8C = Me.Lbl
  loc_F5E71F: Call 0.Method_Proc_22_78_F5E7340 (&H1C, var_98)
  loc_F5E727: var_98.Visible = False
  loc_F5E733: Exit Sub
End Sub

Public Sub Proc_22_79_1421608
  'Data Table: 547210
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_8C As Integer
  Dim var_D4 As String
  Dim unk_54724B As Connection15
  Dim var_88 As Recordset15
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_108 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim unk_547249 As Connection15
  Dim var_180 As Variant
  Dim var_184 As Variant
  Dim var_188 As Variant
  Dim var_118 As String
  Dim var_17C As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_324 As Double
  Dim var_274 As Integer
  Dim var_1BC As Variant
  Dim var_23C As Variant
  Dim var_264 As Fields15
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  loc_1420BC4: On Error Goto loc_14215FF
  loc_1420BDA: Me.Fgrid1.Rows = 2
  loc_1420BE6: Set var_C0 = Me.Fgrid1
  loc_1420BEC: var_D0 = var_C0.Row
  loc_1420BF6: var_8C = CInt(CLng(var_D0))
  loc_1420C23: unk_54724B.Execute "SELECT Code,Name as CatName FROM Roomcat where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_D0, -1
  loc_1420C2E: Set var_88 = var_C0
  loc_1420C52: If (var_88.RecordCount > 0) Then
  loc_1420C55:   ' Referenced from: 1420DBD
  loc_1420C64:   If Not(var_88.EOF) Then
  loc_1420C72:     For var_E2 = CByte(1) To CByte(2): var_8A = var_E2 'Byte
  loc_1420C78:       var_AC = vbNullString
  loc_1420C82:       Set var_C0 = Me.Fgrid1
  loc_1420C97:       Set var_E8 = Me.Fgrid1
  loc_1420C9E:       var_AC = CVar(CLng(var_8C)) 'Long
  loc_1420CA6:       var_F8 = CVar(CLng(0)) 'Long
  loc_1420CB0:       var_D0 = CVar(CStr(var_8C)) 'String
  loc_1420CB7:       LateIdCallSt
  loc_1420CC6:       var_BC = CVar(CLng(var_8C)) 'Long
  loc_1420CCE:       var_108 = CVar(CLng(1)) 'Long
  loc_1420CFE:       var_12C = CVar(CStr(var_88.Fields.Item("CatName").Value)) 'String
  loc_1420D05:       LateIdCallSt
  loc_1420D1F:       var_BC = CVar(CLng(var_8C)) 'Long
  loc_1420D27:       var_108 = CVar(CLng(2)) 'Long
  loc_1420D57:       var_12C = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_1420D5E:       LateIdCallSt
  loc_1420D78:       var_AC = CVar(CLng(var_8C)) 'Long
  loc_1420D80:       var_F8 = CVar(CLng(3)) 'Long
  loc_1420D8B:       var_D0 = CVar(CStr(var_8A)) 'String
  loc_1420D92:       LateIdCallSt
  loc_1420D9F:       Set var_E8 = Nothing 
  loc_1420DA9:       var_8C = (var_8C + 1)
  loc_1420DAF:     Next var_E2 'Byte
  loc_1420DB8:     var_88.MoveNext
  loc_1420DBD:     GoTo loc_1420C55
  loc_1420DC0:   End If
  loc_1420DD3:   Me.Fgrid1.FixedRows = 1
  loc_1420DDB: End If
  loc_1420DE1: If (var_8C = 1) Then
  loc_1420DF7:   Me.Fgrid1.Rows = 1
  loc_1420E14:   var_12C = CVar(CStr(CLng(Me.Fgrid1.Rows))) 'String
  loc_1420E1C:   Set var_11C = Me.Fgrid1
  loc_1420E4B:   Me.Fgrid1.FixedRows = 1
  loc_1420E53: End If
  loc_1420E7D: var_14C = CVar("Select count(*) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and Code='") 'String
  loc_1420E8B: Set var_C0 = Me.Txt
  loc_1420E91: Call 0.Method_Proc_22_79_14216080 (CInt(0), var_11C, var_14C, var_17C, -1, var_180)
  loc_1420EBF: unk_547249.Execute CStr(var_184 & Trim(CVar(var_11C)) & "'"), 0, var_188
  loc_1420ECF: var_12C = var_184.Item(Fgrid1.DispID_10000)
  loc_1420ED7:  = var_188.Value
  loc_1420F0A: If (var_180.Fields > 0) Then
  loc_1420F1B:   Me.Fgrid1.Visible = True
  loc_1420F48:   For var_1AC = 1 To CInt((CLng(Me.Fgrid1.Rows) - 2)): var_8C = var_1AC 'Integer
  loc_1420F51:     var_AC = CVar(CLng(4)) 'Long
  loc_1420F5C:     var_F8 = CVar(CInt(7)) 'Integer
  loc_1420F64:     Set var_C0 = Me.Fgrid1
  loc_1420F6A:     LateIdCallSt
  loc_1420FBD:     If CBool(Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) <> vbNullString) Then
  loc_1420FCB:       Set var_C0 = Me.Txt
  loc_1420FD1:       Call 0.Method_Proc_22_79_14216080 (CInt(&H1C), var_11C, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_1421007:       If (Ucase(Trim(CVar(var_11C))) = "DISCOUNT AMT") Then
  loc_142101B:         Call 0.Method_Proc_22_79_14216080 (CInt(0), var_11C, Me.Txt)
  loc_1421033:         var_BC = CVar(CLng(var_8C)) 'Long
  loc_142103B:         var_108 = CVar(CLng(2)) 'Long
  loc_1421064:         var_1DC = CVar(CLng(var_8C)) 'Long
  loc_142106C:         var_1FC = CVar(CLng(3)) 'Long
  loc_142108E:         var_324 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_1421094:         var_274 = 0
  loc_14210B8:         var_14C = CVar("Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and Code='") 'String
  loc_14210E2:         var_23C = var_14C & Trim(CVar(var_11C)) & "' AND RoomCat='" & Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) & "' AND Adult=" & CVar(var_324) 
  loc_14210F0:         unk_547249.Execute CStr(var_23C), var_260, -1
  loc_14210F8:         var_188 = var_188.Fields
  loc_1421100:         var_274 = var_264.Item(var_264)
  loc_1421109:         var_2C8 = CVar(CLng(var_8C)) 'Long
  loc_1421111:         var_2E8 = CVar(CLng(4)) 'Long
  loc_142113E:         var_308 = CVar(CStr(Format(CVar(var_278), "0.00"))) 'String
  loc_1421146:         Set var_31C = Me.Fgrid1
  loc_142114C:         LateIdCallSt
  loc_1421194:       Else
  loc_142119F:         Set var_C0 = Me.Txt
  loc_14211A5:         Call 0.Method_Proc_22_79_14216080 (CInt(&H1C), var_11C, var_31C, var_308, 1, 1, var_2E8)
  loc_14211DB:         If (Ucase(Trim(CVar(var_11C))) = "DISCOUNT %") Then
  loc_14211E9:           Set var_C0 = Me.Txt
  loc_14211EF:           Call 0.Method_Proc_22_79_14216080 (CInt(0), var_11C, var_2C8, var_278, var_324)
  loc_1421207:           var_BC = CVar(CLng(var_8C)) 'Long
  loc_142120F:           var_108 = CVar(CLng(2)) 'Long
  loc_1421238:           var_1DC = CVar(CLng(var_8C)) 'Long
  loc_1421240:           var_1FC = CVar(CLng(3)) 'Long
  loc_1421268:           var_274 = 0
  loc_142128C:           var_14C = CVar("Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and Code='") 'String
  loc_14212B6:           var_23C = var_14C & Trim(CVar(var_11C)) & "' AND RoomCat='" & Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) & "' AND Adult=" & CVar(Val(CStr(Me.Fgrid1.TextMatrix)))) 
  loc_14212C4:           unk_547249.Execute CStr(var_23C), var_260, -1
  loc_14212CC:           var_188 = var_188.Fields
  loc_14212D4:           var_274 = var_264.Item(var_264)
  loc_14212DD:           var_2C8 = CVar(CLng(var_8C)) 'Long
  loc_14212E5:           var_2E8 = CVar(CLng(4)) 'Long
  loc_1421312:           var_308 = CVar(CStr(Format(CVar(var_278), "0.00"))) 'String
  loc_142131A:           Set var_31C = Me.Fgrid1
  loc_1421320:           LateIdCallSt
  loc_1421368:         Else
  loc_1421373:           Set var_C0 = Me.Txt
  loc_1421379:           Call 0.Method_Proc_22_79_14216080 (CInt(0), var_11C, var_31C, var_308, 1, 1, var_2E8)
  loc_1421391:           var_BC = CVar(CLng(var_8C)) 'Long
  loc_1421399:           var_108 = CVar(CLng(2)) 'Long
  loc_14213C2:           var_1DC = CVar(CLng(var_8C)) 'Long
  loc_14213CA:           var_1FC = CVar(CLng(3)) 'Long
  loc_14213F2:           var_274 = 0
  loc_142140F:           var_D4 = "Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_142142C:           var_1BC = CVar(var_D4 & "' or LOGSITE_CODE='HO')  and Code='") & Trim(CVar(var_11C)) & "' AND RoomCat='" & Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) 
  loc_142144E:           unk_547249.Execute CStr(var_1BC & "' AND Adult=" & CVar(Val(CStr(Me.Fgrid1.TextMatrix))))), var_260, -1
  loc_1421456:           var_188 = var_188.Fields
  loc_142145E:           var_274 = var_264.Item(var_264)
  loc_1421467:           var_2C8 = CVar(CLng(var_8C)) 'Long
  loc_142146F:           var_2E8 = CVar(CLng(4)) 'Long
  loc_142149C:           var_308 = CVar(CStr(Format(CVar(var_278), "0"))) 'String
  loc_14214A4:           Set var_31C = Me.Fgrid1
  loc_14214AA:           LateIdCallSt
  loc_14214EF:         End If
  loc_14214EF:       End If
  loc_14214F2:     Else
  loc_14214F6:       var_AC = CVar(CLng(var_8C)) 'Long
  loc_14214FE:       var_F8 = CVar(CLng(4)) 'Long
  loc_1421503:       var_118 = "0"
  loc_142150D:       Set var_C0 = Me.Fgrid1
  loc_1421513:       LateIdCallSt
  loc_142151E:     End If
  loc_1421521:   Next var_1AC 'Integer
  loc_1421529: Else
  loc_142154E:   For var_328 = 1 To CInt((CLng(Me.Fgrid1.Rows) - 2)):   var_8C = var_328 'Integer
  loc_1421558:     var_AC = CVar(CLng(var_8C)) 'Long
  loc_1421560:     var_F8 = CVar(CLng(4)) 'Long
  loc_1421565:     var_118 = "0"
  loc_142156F:     Set var_C0 = Me.Fgrid1
  loc_1421575:     LateIdCallSt
  loc_1421583:   Next var_328 'Integer
  loc_1421597:   Me.Fgrid1.Visible = False
  loc_142159F: End If
  loc_142159F: var_AC = 0
  loc_14215AB: var_F8 = CVar(CLng(4)) 'Long
  loc_14215BE: Set var_C0 = Me.Txt
  loc_14215C4: Call 0.Method_Proc_22_79_14216080 (CInt(&H1C), var_11C, var_D4)
  loc_14215CC: var_F8 = var_11C.Text
  loc_14215D4: var_D0 = CVar(var_D4) 'String
  loc_14215DC: Set var_180 = Me.Fgrid1
  loc_14215E2: LateIdCallSt
  loc_14215FB: Set var_88 = Nothing
  loc_14215FE: Exit Sub
  loc_14215FF: ' Referenced from: 1420BC4
  loc_14215FF: Proc_6_60_E62BC4(var_180, var_D0)
  loc_1421604: Exit Sub
End Sub

Public Sub Proc_22_80_101447C
  'Data Table: 547210
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_101426E: Set var_8C = Me.Txt
  loc_1014274: Call 0.Method_Proc_22_80_101447CC (var_8E, var_86)
  loc_1014284: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_101429A:   Set var_8C = Me.Txt
  loc_10142A0:   Call 0.Method_Proc_22_80_101447C0 (CInt(var_86), var_98)
  loc_10142A8:   var_98.Text = vbNullString
  loc_10142C4:   Set var_8C = Me.Txt
  loc_10142CA:   Call 0.Method_Proc_22_80_101447C0 (CInt(var_86), var_98)
  loc_10142D2:   var_98.Tag = vbNullString
  loc_10142E1: Next var_92 'Byte
  loc_10142F4: Me.LblNature.Caption = vbNullString
  loc_1014309: Me.LblOpBalType.Caption = vbNullString
  loc_101431E: Me.LblCurBalType.Caption = vbNullString
  loc_1014333: Me.txtCurrBal.Text = vbNullString
  loc_101434E: Me.FGrid.Rows = 1
  loc_101436B: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1014373: Set var_98 = Me.FGrid
  loc_10143A2: Me.FGrid.FixedRows = 1
  loc_10143CC: Proc_183_1_F5B310(Me, CStr(-2147483643), CStr(&HC00000))
  loc_10143EA: Me.txtCurrBal.BackColor = -2147483643
  loc_1014401: Me.txtCurrBal.ForeColor = &HC00000
  loc_101441C: Me.Fgrid1.Rows = 1
  loc_1014439: var_D8 = CVar(CStr(CLng(Me.Fgrid1.Rows))) 'String
  loc_1014441: Set var_98 = Me.Fgrid1
  loc_1014470: Me.Fgrid1.FixedRows = 1
  loc_1014478: Exit Sub
End Sub

Public Sub Proc_22_81_F6C2B0
  'Data Table: 547210
  loc_F6C188: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F6C19A:   Me.DGAcName.Visible = False
  loc_F6C1A2: End If
  loc_F6C1BE: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_F6C1D0:   Me.DGUnderAc.Visible = False
  loc_F6C1D8: End If
  loc_F6C1F4: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F6C206:   Me.DGCity.Visible = False
  loc_F6C20E: End If
  loc_F6C229: If (Me.FrmList.Visible = &HFF) Then
  loc_F6C238:   Me.FrmList.Visible = False
  loc_F6C240: End If
  loc_F6C25C: If (CBool(Me.DgUser.Visible) = &HFF) Then
  loc_F6C26E:   Me.DgUser.Visible = False
  loc_F6C276: End If
  loc_F6C292: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6C2A4:   Me.FGPoint.Visible = False
  loc_F6C2AC: End If
  loc_F6C2AC: Exit Sub
End Sub

Public Sub Proc_22_82_1009338
  'Data Table: 547210
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_CC As MSHFlexGrid
  Dim var_E0 As String
  loc_1009133: Me.FGridIncl.Row = 0
  loc_100914E: Me.FGridIncl.Col = 0
  loc_1009156: var_94 = 0
  loc_1009165: var_B8 = CVar(CInt(3)) 'Integer
  loc_100916D: Set var_A8 = Me.FGridIncl
  loc_1009173: LateIdCallSt
  loc_1009191: Me.FGridIncl.Row = 1
  loc_100919D: Set var_CC = Me.FGridIncl
  loc_10091AD: global_188 = CStr(&HE0E0E0)
  loc_10091C0: var_CC.Cols = 3
  loc_10091C5: var_94 = 0
  loc_10091D1: var_B8 = CVar(CLng(0)) 'Long
  loc_10091D6: var_E0 = "Code"
  loc_10091DF: LateIdCallSt
  loc_10091EA: var_94 = CVar(CLng(0)) 'Long
  loc_10091EF: var_B8 = 0
  loc_10091FB: LateIdCallSt
  loc_1009203: var_94 = 0
  loc_100920F: var_B8 = CVar(CLng(1)) 'Long
  loc_1009214: var_E0 = vbNullString
  loc_100921D: LateIdCallSt
  loc_1009228: var_94 = CVar(CLng(1)) 'Long
  loc_100922D: var_B8 = &H1F4
  loc_1009239: LateIdCallSt
  loc_1009241: var_94 = 0
  loc_100924D: var_B8 = CVar(CLng(2)) 'Long
  loc_1009252: var_E0 = "Inclusive(s)"
  loc_100925B: LateIdCallSt
  loc_1009266: var_94 = CVar(CLng(2)) 'Long
  loc_1009271: var_B8 = CVar(CInt(1)) 'Integer
  loc_1009278: LateIdCallSt
  loc_1009283: var_94 = CVar(CLng(2)) 'Long
  loc_100928E: var_B8 = CVar(CInt(1)) 'Integer
  loc_1009295: LateIdCallSt
  loc_10092A0: var_94 = CVar(CLng(2)) 'Long
  loc_10092A5: var_B8 = &HAF0
  loc_10092B1: LateIdCallSt
  loc_10092C5: var_CC.Rows = 4
  loc_10092CA: var_94 = 1
  loc_10092D6: var_B8 = CVar(CLng(2)) 'Long
  loc_10092DB: var_E0 = "Breakfast"
  loc_10092E4: LateIdCallSt
  loc_10092EC: var_94 = 2
  loc_10092F8: var_B8 = CVar(CLng(2)) 'Long
  loc_10092FD: var_E0 = "Extra Bed"
  loc_1009306: LateIdCallSt
  loc_100930E: var_94 = 3
  loc_100931A: var_B8 = CVar(CLng(2)) 'Long
  loc_100931F: var_E0 = "Wi-Fi"
  loc_1009328: LateIdCallSt
  loc_1009332: Set var_CC = Nothing 
  loc_1009336: Exit Sub
End Sub

Public Sub Proc_22_83_1049D70
  'Data Table: 547210
  Dim unk_54724B As Connection15
  Dim var_9C As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  Dim var_AC As Variant
  Dim var_128 As Variant
  loc_1049B26: unk_54724B.Execute "Select * from PlanMast where Plan_Package='Plan'", var_AC, -1
  loc_1049B31: Set var_88 = var_B0
  loc_1049B3E: Set var_B4 = Me.Fgrid1
  loc_1049B48: var_B4.Visible = True
  loc_1049B59: var_B4.Cols = 5
  loc_1049B6A: var_B4.RowHeightMin = &HEB
  loc_1049B6F: var_9C = 0
  loc_1049B7B: var_D4 = CVar(CLng(0)) 'Long
  loc_1049B80: var_F4 = "SNo"
  loc_1049B89: LateIdCallSt
  loc_1049B94: var_9C = CVar(CLng(0)) 'Long
  loc_1049B9F: var_D4 = CVar(CInt(1)) 'Integer
  loc_1049BA6: LateIdCallSt
  loc_1049BB1: var_9C = CVar(CLng(0)) 'Long
  loc_1049BB6: var_D4 = 5
  loc_1049BC2: LateIdCallSt
  loc_1049BCA: var_9C = 0
  loc_1049BD6: var_D4 = CVar(CLng(1)) 'Long
  loc_1049BDB: var_F4 = "Room Category"
  loc_1049BE4: LateIdCallSt
  loc_1049BEF: var_9C = CVar(CLng(1)) 'Long
  loc_1049BFA: var_D4 = CVar(CInt(1)) 'Integer
  loc_1049C01: LateIdCallSt
  loc_1049C0C: var_9C = CVar(CLng(1)) 'Long
  loc_1049C11: var_D4 = &H834
  loc_1049C1D: LateIdCallSt
  loc_1049C25: var_9C = 0
  loc_1049C31: var_D4 = CVar(CLng(2)) 'Long
  loc_1049C36: var_F4 = "Code"
  loc_1049C3F: LateIdCallSt
  loc_1049C4A: var_9C = CVar(CLng(2)) 'Long
  loc_1049C55: var_D4 = CVar(CInt(7)) 'Integer
  loc_1049C5C: LateIdCallSt
  loc_1049C67: var_9C = CVar(CLng(2)) 'Long
  loc_1049C6C: var_D4 = 0
  loc_1049C78: LateIdCallSt
  loc_1049C80: var_9C = 0
  loc_1049C8C: var_D4 = CVar(CLng(3)) 'Long
  loc_1049C91: var_F4 = "Rate"
  loc_1049C9A: LateIdCallSt
  loc_1049CA5: var_9C = CVar(CLng(3)) 'Long
  loc_1049CB0: var_D4 = CVar(CInt(7)) 'Integer
  loc_1049CB7: LateIdCallSt
  loc_1049CC2: var_9C = CVar(CLng(3)) 'Long
  loc_1049CC7: var_D4 = &H226
  loc_1049CD3: LateIdCallSt
  loc_1049CDE: var_9C = CVar(CLng(4)) 'Long
  loc_1049CE9: var_D4 = CVar(CInt(7)) 'Integer
  loc_1049CF0: LateIdCallSt
  loc_1049CFB: var_9C = CVar(CLng(4)) 'Long
  loc_1049D00: var_D4 = &H44C
  loc_1049D0C: LateIdCallSt
  loc_1049D30: Set var_B0 = Me.Txt
  loc_1049D36: Call 0.Method_Proc_22_83_1049D700 (CInt(&H1C), var_108, CVar(CLng(4)), 0, var_B4, CVar(CLng(4)), 0)
  loc_1049D4E: var_128 = CVar(CStr(Trim(CVar(var_108)))) 'String
  loc_1049D55: LateIdCallSt
  loc_1049D6B: Set var_B4 = Nothing 
  loc_1049D6F: Exit Sub
End Sub

Public Sub Proc_22_84_10C0E14
  'Data Table: 547210
  Dim var_90 As String
  Dim unk_54724B As Connection15
  Dim var_A4 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_100 As String
  loc_10C0B3C: var_90 = "Select PlanMast.*,ROOMCAT.NAME AS ROOMCATNAME from PlanMast INNER JOIN ROOMCAT ON PLANMAST.ROOMCAT=ROOMCAT.CODE where Plan_Package='Plan' and (planmast.LOGSITE_CODE='" & MemVar_1F92078
  loc_10C0B4C: unk_54724B.Execute var_90 & "' or planmast.LOGSITE_CODE='HO') ORDER BY planmast.NAME", var_B4, -1
  loc_10C0B7B: If (var_B8.RecordCount > 0) Then
  loc_10C0B8C:   Me.FgridPlan.Visible = True
  loc_10C0B97: Else
  loc_10C0BA6:   Me.FgridPlan.Visible = False
  loc_10C0BAE: End If
  loc_10C0BB2: Set var_D0 = Me.FgridPlan
  loc_10C0BC1: var_D0.Cols = 6
  loc_10C0BC6: var_A4 = 0
  loc_10C0BCF: var_E0 = 0
  loc_10C0BD8: var_100 = "SNo"
  loc_10C0BE1: LateIdCallSt
  loc_10C0BE9: var_A4 = 0
  loc_10C0BF8: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C0BFF: LateIdCallSt
  loc_10C0C07: var_A4 = 0
  loc_10C0C10: var_E0 = 5
  loc_10C0C1C: LateIdCallSt
  loc_10C0C24: var_A4 = 0
  loc_10C0C2D: var_E0 = 1
  loc_10C0C36: var_100 = "Room Category"
  loc_10C0C3F: LateIdCallSt
  loc_10C0C47: var_A4 = 1
  loc_10C0C56: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C0C5D: LateIdCallSt
  loc_10C0C65: var_A4 = 1
  loc_10C0C6E: var_E0 = &H5DC
  loc_10C0C7A: LateIdCallSt
  loc_10C0C82: var_A4 = 0
  loc_10C0C8B: var_E0 = 2
  loc_10C0C94: var_100 = "Code"
  loc_10C0C9D: LateIdCallSt
  loc_10C0CA5: var_A4 = 2
  loc_10C0CB4: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C0CBB: LateIdCallSt
  loc_10C0CC3: var_A4 = 2
  loc_10C0CCC: var_E0 = 0
  loc_10C0CD8: LateIdCallSt
  loc_10C0CE0: var_A4 = 0
  loc_10C0CE9: var_E0 = 3
  loc_10C0CF2: var_100 = "PlanCode"
  loc_10C0CFB: LateIdCallSt
  loc_10C0D03: var_A4 = 3
  loc_10C0D12: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C0D19: LateIdCallSt
  loc_10C0D21: var_A4 = 3
  loc_10C0D2A: var_E0 = 0
  loc_10C0D36: LateIdCallSt
  loc_10C0D3E: var_A4 = 0
  loc_10C0D47: var_E0 = 4
  loc_10C0D50: var_100 = "Plan Name"
  loc_10C0D59: LateIdCallSt
  loc_10C0D61: var_A4 = 4
  loc_10C0D70: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C0D77: LateIdCallSt
  loc_10C0D7F: var_A4 = 4
  loc_10C0D88: var_E0 = &H5DC
  loc_10C0D94: LateIdCallSt
  loc_10C0D9C: var_A4 = 0
  loc_10C0DA5: var_E0 = 5
  loc_10C0DAE: var_100 = "Plan Amt"
  loc_10C0DB7: LateIdCallSt
  loc_10C0DBF: var_A4 = 5
  loc_10C0DCE: var_E0 = CVar(CInt(7)) 'Integer
  loc_10C0DD5: LateIdCallSt
  loc_10C0DDD: var_A4 = 5
  loc_10C0DE6: var_E0 = &H3B6
  loc_10C0DF2: LateIdCallSt
  loc_10C0E06: var_D0.FixedCols = 5
  loc_10C0E0D: Set var_D0 = Nothing 
  loc_10C0E11: Exit Sub
End Sub

Public Sub Proc_22_85_102FD00
  'Data Table: 547210
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_102FAB0: Set var_88 = Me.FGrid
  loc_102FABF: var_88.RowHeightMin = &HDC
  loc_102FAD0: var_88.Cols = 6
  loc_102FAD5: var_98 = 0
  loc_102FAE1: var_B8 = CVar(CLng(0)) 'Long
  loc_102FAE6: var_D8 = "S.No"
  loc_102FAEF: LateIdCallSt
  loc_102FAFA: var_98 = CVar(CLng(0)) 'Long
  loc_102FB05: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FB0C: LateIdCallSt
  loc_102FB17: var_98 = CVar(CLng(0)) 'Long
  loc_102FB1C: var_B8 = &H226
  loc_102FB28: LateIdCallSt
  loc_102FB30: var_98 = 0
  loc_102FB3C: var_B8 = CVar(CLng(5)) 'Long
  loc_102FB41: var_D8 = "Voucher No"
  loc_102FB4A: LateIdCallSt
  loc_102FB55: var_98 = CVar(CLng(5)) 'Long
  loc_102FB60: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FB67: LateIdCallSt
  loc_102FB72: var_98 = CVar(CLng(5)) 'Long
  loc_102FB77: var_B8 = 0
  loc_102FB83: LateIdCallSt
  loc_102FB8B: var_98 = 0
  loc_102FB97: var_B8 = CVar(CLng(1)) 'Long
  loc_102FB9C: var_D8 = "Ref. Date"
  loc_102FBA5: LateIdCallSt
  loc_102FBB0: var_98 = CVar(CLng(1)) 'Long
  loc_102FBBB: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FBC2: LateIdCallSt
  loc_102FBCD: var_98 = CVar(CLng(1)) 'Long
  loc_102FBD2: var_B8 = &H47E
  loc_102FBDE: LateIdCallSt
  loc_102FBE6: var_98 = 0
  loc_102FBF2: var_B8 = CVar(CLng(2)) 'Long
  loc_102FBF7: var_D8 = "Narration"
  loc_102FC00: LateIdCallSt
  loc_102FC0B: var_98 = CVar(CLng(2)) 'Long
  loc_102FC16: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FC1D: LateIdCallSt
  loc_102FC28: var_98 = CVar(CLng(2)) 'Long
  loc_102FC2D: var_B8 = &H7D0
  loc_102FC39: LateIdCallSt
  loc_102FC41: var_98 = 0
  loc_102FC4D: var_B8 = CVar(CLng(3)) 'Long
  loc_102FC52: var_D8 = "Amount"
  loc_102FC5B: LateIdCallSt
  loc_102FC66: var_98 = CVar(CLng(3)) 'Long
  loc_102FC71: var_B8 = CVar(CInt(7)) 'Integer
  loc_102FC78: LateIdCallSt
  loc_102FC83: var_98 = CVar(CLng(3)) 'Long
  loc_102FC88: var_B8 = &H4B0
  loc_102FC94: LateIdCallSt
  loc_102FC9C: var_98 = 0
  loc_102FCA8: var_B8 = CVar(CLng(4)) 'Long
  loc_102FCAD: var_D8 = "Cr/Dr"
  loc_102FCB6: LateIdCallSt
  loc_102FCC1: var_98 = CVar(CLng(4)) 'Long
  loc_102FCCC: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FCD3: LateIdCallSt
  loc_102FCDE: var_98 = CVar(CLng(4)) 'Long
  loc_102FCE3: var_B8 = &H258
  loc_102FCEF: LateIdCallSt
  loc_102FCF9: Set var_88 = Nothing 
  loc_102FCFD: Exit Sub
End Sub

Public Sub Proc_22_86_1129BEC
  'Data Table: 547210
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_104 As Double
  Dim var_128 As TextBox
  Dim var_130 As TextBox
  Dim var_12C As TextBox
  Dim arg_5B00 As Variant
  loc_112988B: var_90 = CDbl(0)
  loc_1129891: var_98 = CDbl(0)
  loc_1129897: var_A0 = CDbl(0)
  loc_11298BF: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_11298C9:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_11298D1:   var_E8 = CVar(CLng(4)) 'Long
  loc_11298FC:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_1129903:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_112990B:     var_E8 = CVar(CLng(3)) 'Long
  loc_1129937:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1129946:   Else
  loc_112994A:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129952:     var_E8 = CVar(CLng(4)) 'Long
  loc_112997D:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_1129984:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_112998C:       var_E8 = CVar(CLng(3)) 'Long
  loc_11299B8:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11299C4:     End If
  loc_11299C4:   End If
  loc_11299C7: Next var_B8 'Integer
  loc_11299E8: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_11299F8: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_1129A2C: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_1129A3B: Set var_A4 = Me.Txt
  loc_1129A41: Call 0.Method_Proc_22_86_1129BEC0 (CInt(&H1D), var_128, var_FC, 1)
  loc_1129A49: var_128.Text = 1
  loc_1129A68: If (var_A0 < CDbl(0)) Then
  loc_1129A78:   Me.LblOpBalType.Caption = "Cr"
  loc_1129A83: Else
  loc_1129A90:   Me.LblOpBalType.Caption = "Dr"
  loc_1129A98: End If
  loc_1129AA6: Set var_A4 = Me.Txt
  loc_1129AAC: Call 0.Method_Proc_22_86_1129BEC0 (CInt(&H1E), var_128, var_FC)
  loc_1129AB4: var_A0 = var_128.Tag
  loc_1129AE1: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_1129AFF: Set var_12C = Me.Txt
  loc_1129B05: Call 0.Method_Proc_22_86_1129BEC0 (CInt(&H1E), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_1129B0D: var_130.Text = 1
  loc_1129B3B: Set var_A4 = Me.Txt
  loc_1129B41: Call 0.Method_Proc_22_86_1129BEC0 (CInt(0), var_128, var_FC)
  loc_1129B49: var_104 = var_128.Text
  loc_1129B67: Me.txtCurrBal.Text = Proc_183_42_107D990(var_FC, 1)
  loc_1129B8A: Set var_A4 = Me.Txt
  loc_1129B90: Call 0.Method_Proc_22_86_1129BEC0 (CInt(&H1E), var_128)
  loc_1129BB8: If (CDbl((Val(var_128.Tag) + var_A0)) < CDbl(0)) Then
  loc_1129BC8:   Me.LblCurBalType.Caption = "Cr"
  loc_1129BD3: Else
  loc_1129BE0:   Me.LblCurBalType.Caption = "Dr"
  loc_1129BE8: End If
  loc_1129BE8: Exit Sub
  loc_1129BE9: arg_5B00 = CVar(1) 'Currency
End Sub

Public Sub Proc_22_87_10BCAE0(arg_C) '10BCAE0
  'Data Table: 547210
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_10BC85A: On Error Goto loc_10BCAB3
  loc_10BC860: var_90 = "F_AO"
  loc_10BC867: Set var_8C = New 
  loc_10BC872: Me.Recordset15.CursorLocation = 3
  loc_10BC87A: var_D0 = arg_C
  loc_10BC882: Proc_183_7_EB0C44(var_E0)
  loc_10BC8A5: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F92070
  loc_10BC8D6: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F92070 & "' AND VP.LOGSITE_CODE='"
  loc_10BC901: var_120 = CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BC909: var_8C.Open var_120, CVar(MemVar_1F921DC), 2
  loc_10BC946: If (var_8C.RecordCount > 0) Then
  loc_10BC978:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BC981:   global_64 = CLng(CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BC9BD:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BC9DA:   var_98 = Proc_183_15_EAC900(MemVar_1F92070, 2, MemVar_1F9206C, global_64)
  loc_10BC9E4:   var_D0 = var_90
  loc_10BC9F4:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BCA05:   var_120 = Space((5 - Len(var_90)))
  loc_10BCA0D:   var_150 = (CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BCA1E:   var_160 = Space((5 - Len(var_94)))
  loc_10BCA26:   var_170 = (var_150 + var_160)
  loc_10BCA30:   var_180 = (var_170 + CVar(var_94))
  loc_10BCA49:   var_190 = Space((8 - Len(CStr(global_64))))
  loc_10BCA51:   var_1A0 = (var_180 + var_190)
  loc_10BCA60:   var_1C0 = (var_1A0 + CVar(CStr(global_64)))
  loc_10BCA99:   var_88 = CStr(var_1C0)
  loc_10BCA9F: Else
  loc_10BCAA2:   var_88 = vbNullString
  loc_10BCAA5: End If
  loc_10BCAAA: Set var_8C = Nothing
  loc_10BCAAD: Proc_22_87_10BCAE0 = -1
  loc_10BCAB3: ' Referenced from: 10BC85A
  loc_10BCAB9: Call 0.Method_arg_50 (var_98)
  loc_10BCACE: Proc_183_57_104AA84(var_98, "VoucherNo")
  loc_10BCADA: Proc_22_87_10BCAE0 = var_D0
End Sub

Public Sub Proc_22_88_EDD598(arg_C) 'EDD598
  'Data Table: 547210
  Dim var_94 As TextBox
  loc_EDD4E1: If (CInt(arg_C) = 1) Then
  loc_EDD4EF:   For var_8A = CByte(6) To CByte(&H17): var_86 = var_8A 'Byte
  loc_EDD504:     Set var_90 = Me.Txt
  loc_EDD50A:     Call 0.Method_Proc_22_88_EDD5980 (CInt(var_86), var_94)
  loc_EDD512:     var_94.Enabled = True
  loc_EDD521:   Next var_8A 'Byte
  loc_EDD52A: Else
  loc_EDD535:   For var_98 = CByte(6) To CByte(&H17):   var_86 = var_98 'Byte
  loc_EDD54A:     Set var_90 = Me.Txt
  loc_EDD550:     Call 0.Method_Proc_22_88_EDD5980 (CInt(var_86), var_94)
  loc_EDD558:     var_94.Enabled = False
  loc_EDD574:     Set var_90 = Me.Txt
  loc_EDD57A:     Call 0.Method_Proc_22_88_EDD5980 (CInt(var_86), var_94)
  loc_EDD582:     var_94.Text = vbNullString
  loc_EDD591:   Next var_98 'Byte
  loc_EDD597: End If
  loc_EDD597: Exit Sub
End Sub

Public Sub Proc_22_89_114EE48(arg_C) '114EE48
  'Data Table: 547210
  Dim var_8C As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Long
  Dim var_D4 As Variant
  Dim var_124 As Variant
  Dim var_138 As TextBox
  Dim var_164 As Variant
  Dim var_8A As Integer
  Dim var_182 As Integer
  loc_114EABB: var_8C = arg_C
  loc_114EAC4: If (var_8C = 1) Then
  loc_114EAEA:   If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_114EAED:     var_B4 = 0
  loc_114EB42:     If (Ucase(Trim(CVar(CStr(Me.Fgrid1.TextMatrix))))) = "AMOUNT") Then
  loc_114EB51:       Set var_90 = Me.TxtGrid1
  loc_114EB57:       Call 0.Method_Proc_22_89_114EE480 (1, var_138, var_13C, CVar(CLng(4)))
  loc_114EB5F:       var_B4 = var_138.Text
  loc_114EB82:       var_D4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_114EB9A:       var_124 = CVar(CLng(Me.Fgrid1.Col)) 'Long
  loc_114EBC7:       var_164 = CVar(CStr(Format(CVar(Val(var_13C)), "0.00"))) 'String
  loc_114EBCF:       Set var_178 = Me.Fgrid1
  loc_114EBD5:       LateIdCallSt
  loc_114EBFF:     Else
  loc_114EC0B:       Set var_90 = Me.TxtGrid1
  loc_114EC11:       Call 0.Method_Proc_22_89_114EE480 (1, var_138, var_13C, var_178, var_164, 1)
  loc_114EC19:       1 = var_138.Text
  loc_114EC3C:       var_D4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_114EC54:       var_124 = CVar(CLng(Me.Fgrid1.Col)) 'Long
  loc_114EC81:       var_164 = CVar(CStr(Format(CVar(Val(var_13C)), "0.00"))) 'String
  loc_114EC89:       Set var_178 = Me.Fgrid1
  loc_114EC8F:       LateIdCallSt
  loc_114ECB6:     End If
  loc_114ECB6:   End If
  loc_114ECCE:   Set var_90 = Me.TxtGrid1
  loc_114ECD4:   Call 0.Method_Proc_22_89_114EE480 (1, var_138, 0, &HFF, &HFF, var_178, var_164)
  loc_114ECDC:   var_138.Visible = True
  loc_114ECEC:   Set var_90 = Me.Fgrid1
  loc_114ED00: Else
  loc_114ED06:   If (var_8C = 2) Then
  loc_114ED29:     var_8A = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_114ED35:     var_182 = var_8A
  loc_114ED3E:     If (var_182 = 0) Then
  loc_114ED4D:       Set var_90 = Me.TxtGrid1
  loc_114ED53:       Call 0.Method_Proc_22_89_114EE480 (2, var_138, var_13C, var_182, var_8A, Fgrid1.DispID_8001)
  loc_114ED5B:       1 = var_138.Text
  loc_114ED7E:       var_D4 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_114ED96:       var_124 = CVar(CLng(Me.FgridPlan.Col)) 'Long
  loc_114EDC3:       var_164 = CVar(CStr(Format(CVar(Val(var_13C)), "0.00"))) 'String
  loc_114EDCB:       Set var_178 = Me.FgridPlan
  loc_114EDD1:       LateIdCallSt
  loc_114EDF8:     End If
  loc_114EE10:     Set var_90 = Me.TxtGrid1
  loc_114EE16:     Call 0.Method_Proc_22_89_114EE480 (2, var_138, 0, &HFF, &HFF, var_178, var_164)
  loc_114EE1E:     var_138.Visible = True
  loc_114EE2E:     Set var_90 = Me.FgridPlan
  loc_114EE3F:   End If
  loc_114EE3F: End If
  loc_114EE3F: Proc_22_89_114EE48 = FgridPlan.DispID_8001
End Sub

Public Sub Proc_22_90_11CBB70
  'Data Table: 547210
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_124 As Variant
  loc_11CB733: var_A0 = CLng(Me.FGrid.Col)
  loc_11CB743: If (var_A0 = CLng(1)) Then
  loc_11CB74F:   Set var_8C = Me.TxtGrid
  loc_11CB755:   Call 0.Method_Proc_22_90_11CBB700 (0, var_A4)
  loc_11CB76D:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11CB79F:   Call 0.Method_arg_184 (var_A4, var_AC, CVar(CLng(Me.FGrid.Col)))
  loc_11CB7A7:   var_114 = CVar(var_AC) 'String
  loc_11CB7AF:   Set var_128 = Me.FGrid
  loc_11CB7B5:   LateIdCallSt
  loc_11CB7D6: Else
  loc_11CB7DD:   If Not (var_A0 = CLng(2)) Then
  loc_11CB7E7:     If (var_A0 = CLng(4)) Then
  loc_11CB7EA:     End If
  loc_11CB826:     Set var_8C = Me.TxtGrid
  loc_11CB82C:     Call 0.Method_Proc_22_90_11CBB700 (0, var_A4, var_AC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11CB834:     var_128 = var_A4.Text
  loc_11CB84A:     LateIdCallSt
  loc_11CB885:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11CB888:       Call Proc_22_86_1129BEC(Me.FGrid, CVar(var_AC), CVar(var_AC))
  loc_11CB8A6:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CB8AE:       var_F4 = CVar(CLng(4)) 'Long
  loc_11CB8C8:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11CB8E9:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CB936:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11CB94E:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11CB956:         Set var_A4 = Me.FGrid
  loc_11CB972:       End If
  loc_11CB972:     End If
  loc_11CB975:   Else
  loc_11CB97C:     If (var_A0 = CLng(3)) Then
  loc_11CB98B:       Set var_8C = Me.TxtGrid
  loc_11CB991:       Call 0.Method_Proc_22_90_11CBB700 (0, var_A4, var_AC, FGrid.DispID_10000, var_C4, var_124)
  loc_11CB999:       (var_AC <> vbNullString) = var_A4.Text
  loc_11CBA0F:       LateIdCallSt
  loc_11CBA36:       Call Proc_22_86_1129BEC(Me.FGrid, CVar(CStr(Format(CVar(Val(var_AC)), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11CBA54:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CBA5C:       var_F4 = CVar(CLng(4)) 'Long
  loc_11CBA76:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11CBA97:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CBAE4:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11CBAFC:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11CBB04:         Set var_A4 = Me.FGrid
  loc_11CBB20:       End If
  loc_11CBB20:     End If
  loc_11CBB20:   End If
  loc_11CBB20: End If
  loc_11CBB38: Set var_8C = Me.TxtGrid
  loc_11CBB3E: Call 0.Method_Proc_22_90_11CBB700 (0, var_A4, 0, &HFF, &HFF, FGrid.DispID_10000, var_C4)
  loc_11CBB46: var_A4.Visible = CVar(CLng(Me.FGrid.Col))
  loc_11CBB56: Set var_8C = Me.FGrid
  loc_11CBB67: Proc_22_90_11CBB70 = FGrid.DispID_8001
End Sub

Public Sub Proc_22_91_18269A4
  'Data Table: 547210
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim unk_54724B As Connection15
  Dim var_B4 As Recordset15
  Dim var_DC As Variant
  Dim var_144 As Variant
  Dim var_15C As Variant
  Dim var_14C As String
  Dim var_18C As Variant
  Dim var_1B0 As Variant
  Dim var_1FC As Label
  Dim var_148 As Variant
  Dim unk_547249 As Connection15
  Dim var_88 As Recordset15
  Dim var_200 As String
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_210 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_B0 As Recordset15
  Dim var_8C As Recordset15
  Dim var_22E As Integer
  Dim var_140 As Variant
  Dim var_1C4 As TextBox
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_240 As Variant
  Dim var_330 As Variant
  loc_18245E4: On Error Goto loc_182693F
  loc_182463D: unk_54724B.Execute CStr("Select U_Name,U_AE,U_EntDt From SubGroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_140, -1
  loc_1824648: Set var_B4 = var_144
  loc_182469C: var_144 = var_B4.Fields
  loc_1824705: var_1AC = IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_144.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_182474A: Me.LblUser.Caption = CStr(var_144 & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_1AC)))
  loc_18247C4: var_148 = var_B4.Fields.Item("U_AE")
  loc_18247DD: var_140 = "entdt : "
  loc_1824825: var_1AC = IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_148)) = "E"), "Last Update : ", var_140))
  loc_1824844: var_1C4 = var_B4.Fields.Item("U_EntDt")
  loc_182486A: Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E68A98(CVar(var_1C4))))
  loc_18248B9: If (Me.RecordCount > 0) Then
  loc_18248F8:   Set var_144 = Me.Txt
  loc_18248FE:   Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_148)
  loc_1824906:   var_148.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_1824929:   var_EC = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='"
  loc_182495B:   var_FC = var_EC & Me.Fields.Item("subcode").Value 
  loc_1824972:   unk_547249.Execute CStr(var_FC & "'"), var_140, -1
  loc_182497D:   Set var_88 = var_144
  loc_1824997:   Call Proc_22_97_10DC8C4(var_144)
  loc_182499C:   Call Proc_22_98_1012540()
  loc_18249B5:   If (var_88.RecordCount > 0) Then
  loc_18249F7:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_1824A00:       global_60 = "Y"
  loc_1824A07:     Else
  loc_1824A0D:       global_60 = "N"
  loc_1824A11:     End If
  loc_1824A2B:     var_CC = var_88.Fields.Item("Name")
  loc_1824A4A:     Set var_144 = Me.Txt
  loc_1824A50:     Call 0.Method_Proc_22_91_18269A40 (CInt(1), var_148)
  loc_1824A58:     var_148.Text = CStr(var_CC.Value)
  loc_1824A7C:     Set var_B8 = Me.Txt
  loc_1824A82:     Call 0.Method_Proc_22_91_18269A40 (CInt(1), var_CC)
  loc_1824A95:     global_80 = var_CC.Text
  loc_1824AD9:     Set var_144 = Me.Txt
  loc_1824ADF:     Call 0.Method_Proc_22_91_18269A40 (CInt(2), var_148)
  loc_1824AE7:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GroupName")))
  loc_1824B34:     Set var_144 = Me.Txt
  loc_1824B3A:     Call 0.Method_Proc_22_91_18269A40 (CInt(2), var_148)
  loc_1824B42:     var_148.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_1824B89:     global_84 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_1824BD0:     Set var_144 = Me.Txt
  loc_1824BD6:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H20), var_148)
  loc_1824BDE:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("WebPassword")))
  loc_1824C28:     Set var_144 = Me.Txt
  loc_1824C2E:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H21), var_148)
  loc_1824C36:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MapCode")))
  loc_1824C75:     var_120 = CStr(var_88.Fields.Item("Nature").Value)
  loc_1824C82:     Me.LblNature.Caption = var_120
  loc_1824C9C:     var_C8 = "GNature"
  loc_1824CB0:     var_CC = var_88.Fields.Item(var_C8)
  loc_1824CB8:     var_DC = var_CC.Value
  loc_1824CE4:     var_148 = var_88.Fields.Item("GNature")
  loc_1824D16:     If CBool((var_DC = "A") Or (var_148.Value = "L")) Then
  loc_1824D20:       global_100 = CByte(1)
  loc_1824D27:     Else
  loc_1824D2E:       global_100 = CByte(0)
  loc_1824D32:     End If
  loc_1824D49:     If (Me.RecordCount > 0) Then
  loc_1824D52:       Me.MoveFirst
  loc_1824D76:       Set var_B8 = Me.Txt
  loc_1824D7C:       Call 0.Method_Proc_22_91_18269A40 (CInt(2), var_CC, var_120, "Name ='", 0)
  loc_1824D84:       1 = var_CC.Text
  loc_1824D9D:       Me.Find var_C8 & var_120 & "'", global_100, global_100
  loc_1824DB2:     End If
  loc_1824DC0:     Set var_B8 = Me.Txt
  loc_1824DC6:     Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC)
  loc_1824DCE:     var_14C = var_CC.Text
  loc_1824DD9:     var_EC = 0
  loc_1824E14:     unk_547249.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_DC, -1
  loc_1824E1C:     var_144 = var_144.Fields
  loc_1824E24:     var_EC = var_148.Item(var_148)
  loc_1824E2C:     var_1B0 = var_1B0.Value
  loc_1824E35:     var_94 = CSng(var_FC)
  loc_1824E67:     Set var_B8 = Me.Txt
  loc_1824E6D:     Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC, var_14C)
  loc_1824E75:     var_94 = var_CC.Text
  loc_1824E80:     var_EC = 0
  loc_1824EBB:     unk_547249.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_DC, -1
  loc_1824EC3:     var_144 = var_144.Fields
  loc_1824ECB:     var_EC = var_148.Item(var_148)
  loc_1824ED3:     var_1B0 = var_1B0.Value
  loc_1824EDC:     var_9C = CSng(var_FC)
  loc_1824F1D:     var_DC = CVar(Abs((var_9C - var_94))) 'Double
  loc_1824F3B:     Set var_B8 = Me.Txt
  loc_1824F41:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H1D), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_1824F49:     var_CC.Text = 1
  loc_1824F66:     var_FC = vbNullString
  loc_1824F85:     var_11C = IIf((var_94 < var_9C), "Dr", var_FC)
  loc_1824FAE:     var_120 = CStr(IIf((var_94 > var_9C), "Cr", var_11C))
  loc_1824FBC:     Me.LblOpBalType.Caption = var_120
  loc_1824FE6:     Set var_B8 = Me.Txt
  loc_1824FEC:     Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC, var_120)
  loc_1824FF4:     var_9C = var_CC.Text
  loc_182500C:     Set var_144 = Me.txtCurrBal
  loc_1825012:     var_144.Text = Proc_183_42_107D990(var_120, var_FC)
  loc_182502F:     If (MemVar_1F92078 = "HO") Then
  loc_1825050:       Set var_B8 = Me.Txt
  loc_1825056:       Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC, var_120, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_182505E:       var_DC = var_CC.Text
  loc_1825067:       var_14C = -1 & var_120
  loc_1825077:       unk_547249.Execute var_14C & "'", var_144, var_FC
  loc_1825082:       Set var_8C = var_144
  loc_182509D:     Else
  loc_18250BB:       Set var_B8 = Me.Txt
  loc_18250C1:       Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC, var_120, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_18250C9:       var_DC = var_CC.Text
  loc_18250D2:       var_14C = -1 & var_120
  loc_18250F0:       unk_547249.Execute var_14C & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_144, 
  loc_18250FB:       Set var_8C = var_144
  loc_1825117:     End If
  loc_1825117:     Call Proc_22_84_10C0E14()
  loc_1825141:     For var_20C = 1 To CInt((CLng(Me.FgridPlan.Rows) - 1)): var_AA = var_20C 'Integer
  loc_1825155:       Set var_B8 = Me.Txt
  loc_182515B:       Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC)
  loc_182516C:       var_C8 = CVar(CLng(var_AA)) 'Long
  loc_1825171:       var_10C = 2
  loc_1825194:       var_15C = CVar(CLng(var_AA)) 'Long
  loc_1825199:       var_18C = 3
  loc_18251AC:       var_FC = Me.FgridPlan.TextMatrix)
  loc_18251DA:       var_200 = CStr(Me.FgridPlan.TextMatrix))
  loc_18251F0:       var_218 = "Select * from Comp_PlanDet where CompanyCode='" & var_CC.Text & "' and RoomCat='" & var_200 & "' and PlanCode='" & CStr(var_FC)
  loc_1825200:       unk_54724B.Execute var_218 & "'", var_11C, -1
  loc_182520B:       Set var_B0 = var_1B0
  loc_182524D:       If (var_B0.RecordCount > 0) Then
  loc_1825288:         Proc_6_39_E7C810(var_FC, CVar(var_B0.Fields.Item("PLANAmt")), 5, CVar(CLng(var_AA)), var_1B0, var_FC)
  loc_1825291:         var_11C = CVar(CStr(var_FC)) 'String
  loc_1825299:         Set var_144 = Me.FgridPlan
  loc_182529F:         LateIdCallSt
  loc_18252BA:       Else
  loc_18252BE:         var_C8 = CVar(CLng(var_AA)) 'Long
  loc_18252C3:         var_10C = 5
  loc_18252D0:         var_DC = CVar(CStr(0)) 'String
  loc_18252D8:         Set var_B8 = Me.FgridPlan
  loc_18252DE:         LateIdCallSt
  loc_18252EC:       End If
  loc_18252EF:     Next var_20C 'Integer
  loc_1825308:     If (var_8C.RecordCount > 0) Then
  loc_1825333:       var_22E = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_18253B1:       Set var_1B0 = Me.Txt
  loc_18253B7:       Call 0.Method_Proc_22_91_18269A40 (CInt(&H1E), var_1C4, CStr(Format(IIf(var_22E, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_18253BF:       var_1C4.Text = 1
  loc_1825428:       var_148 = var_8C.Fields.Item("CurrBal")
  loc_18254A2:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_148.Value < 0), "Cr", vbNullString)))
  loc_182556A:       global_96 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_182559F:       var_CC = var_8C.Fields.Item("CurrBal")
  loc_18255B6:       var_EC = CVar((var_94 - var_9C)) 'Double
  loc_18255BA:       var_FC = (var_CC.Value + 0)
  loc_18255CD:       Set var_144 = Me.Txt
  loc_18255D3:       Call 0.Method_Proc_22_91_18269A40 (CInt(&H1E), var_148, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_18255DB:       var_148.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_18255F8:     Else
  loc_182560A:       Set var_B8 = Me.Txt
  loc_1825610:       Call 0.Method_Proc_22_91_18269A40 (CInt(&H1E), var_CC, CStr(0))
  loc_1825618:       var_CC.Text = 1
  loc_1825634:       Me.LblCurBalType.Caption = vbNullString
  loc_182564B:       global_96 = "Cr"
  loc_1825661:       Set var_B8 = Me.Txt
  loc_1825667:       Call 0.Method_Proc_22_91_18269A40 (CInt(&H1E), var_CC, CStr(0))
  loc_182566F:       var_CC.Tag = CDbl(0)
  loc_182567E:     End If
  loc_18256B4:     Set var_144 = Me.Txt
  loc_18256BA:     Call 0.Method_Proc_22_91_18269A40 (CInt(3), var_148)
  loc_18256C2:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")))
  loc_182570C:     Set var_144 = Me.Txt
  loc_1825712:     Call 0.Method_Proc_22_91_18269A40 (CInt(4), var_148)
  loc_182571A:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPerson")))
  loc_1825764:     Set var_144 = Me.Txt
  loc_182576A:     Call 0.Method_Proc_22_91_18269A40 (CInt(5), var_148)
  loc_1825772:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_18257BC:     Set var_144 = Me.Txt
  loc_18257C2:     Call 0.Method_Proc_22_91_18269A40 (CInt(6), var_148)
  loc_18257CA:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_1825814:     Set var_144 = Me.Txt
  loc_182581A:     Call 0.Method_Proc_22_91_18269A40 (CInt(7), var_148)
  loc_1825822:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add3")))
  loc_182586C:     Set var_144 = Me.Txt
  loc_1825872:     Call 0.Method_Proc_22_91_18269A40 (CInt(8), var_148)
  loc_182587A:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_18258C4:     Set var_144 = Me.Txt
  loc_18258CA:     Call 0.Method_Proc_22_91_18269A40 (CInt(8), var_148)
  loc_18258D2:     var_148.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CITYCODE")))
  loc_182591C:     Set var_144 = Me.Txt
  loc_1825922:     Call 0.Method_Proc_22_91_18269A40 (CInt(9), var_148)
  loc_182592A:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin")))
  loc_1825974:     Set var_144 = Me.Txt
  loc_182597A:     Call 0.Method_Proc_22_91_18269A40 (CInt(&HA), var_148)
  loc_1825982:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Phone")))
  loc_18259CC:     Set var_144 = Me.Txt
  loc_18259D2:     Call 0.Method_Proc_22_91_18269A40 (CInt(&HB), var_148)
  loc_18259DA:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")))
  loc_1825A24:     Set var_144 = Me.Txt
  loc_1825A2A:     Call 0.Method_Proc_22_91_18269A40 (CInt(&HC), var_148)
  loc_1825A32:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Fax")))
  loc_1825A7C:     Set var_144 = Me.Txt
  loc_1825A82:     Call 0.Method_Proc_22_91_18269A40 (CInt(&HD), var_148)
  loc_1825A8A:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email")))
  loc_1825AD4:     Set var_144 = Me.Txt
  loc_1825ADA:     Call 0.Method_Proc_22_91_18269A40 (CInt(&HE), var_148)
  loc_1825AE2:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CstNo")))
  loc_1825B2C:     Set var_144 = Me.Txt
  loc_1825B32:     Call 0.Method_Proc_22_91_18269A40 (CInt(&HF), var_148)
  loc_1825B3A:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("LstNo")))
  loc_1825B84:     Set var_144 = Me.Txt
  loc_1825B8A:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H10), var_148)
  loc_1825B92:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PanNo")))
  loc_1825BDC:     Set var_144 = Me.Txt
  loc_1825BE2:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H22), var_148)
  loc_1825BEA:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GSTIN")))
  loc_1825C34:     Set var_144 = Me.Txt
  loc_1825C3A:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H23), var_148)
  loc_1825C42:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Legalname")))
  loc_1825C8C:     Set var_144 = Me.Txt
  loc_1825C92:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H24), var_148)
  loc_1825C9A:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TradeName")))
  loc_1825CE4:     Set var_144 = Me.Txt
  loc_1825CEA:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H11), var_148)
  loc_1825CF2:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark")))
  loc_1825D3C:     Set var_144 = Me.Txt
  loc_1825D42:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H14), var_148)
  loc_1825D4A:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyType")))
  loc_1825DCD:     Set var_144 = Me.Txt
  loc_1825DD3:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H13), var_148)
  loc_1825DDB:     var_148.Text = Proc_6_38_E68A98(IIf((var_88.Fields.Item("AllowCredit").Value = "Y"), "Yes", "No"))
  loc_1825E21:     Proc_6_39_E7C810((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("CreditDays")))
  loc_1825E58:     Set var_144 = Me.Txt
  loc_1825E5E:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H15), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0")))
  loc_1825E66:     var_148.Text = 1
  loc_1825EA8:     Proc_6_39_E7C810((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("Interest")))
  loc_1825EDF:     Set var_144 = Me.Txt
  loc_1825EE5:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H16), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00")), 1)
  loc_1825EED:     var_148.Text = 1
  loc_1825F2F:     Proc_6_39_E7C810((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("CreditLimit")))
  loc_1825F66:     Set var_144 = Me.Txt
  loc_1825F6C:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H17), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00")), 1)
  loc_1825F74:     var_148.Text = 1
  loc_1825FFF:     Set var_144 = Me.Txt
  loc_1826005:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H12), var_148)
  loc_182600D:     var_148.Text = Proc_6_38_E68A98(IIf((var_88.Fields.Item("BlackListed").Value = "Y"), "Yes", "No"), 1)
  loc_1826063:     Set var_144 = Me.Txt
  loc_1826069:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H1A), var_148)
  loc_1826071:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ReasonBlackList")))
  loc_18260BB:     Set var_144 = Me.Txt
  loc_18260C1:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H1B), var_148)
  loc_18260C9:     var_148.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("BlackListedBy")))
  loc_1826148:     Set var_144 = Me.Txt
  loc_182614E:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H1F), var_148)
  loc_1826156:     var_148.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 0), "No", "Yes"))
  loc_18261AC:     Set var_144 = Me.Txt
  loc_18261B2:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H1C), var_148)
  loc_18261BA:     var_148.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscountType")))
  loc_18261F4:     Proc_6_39_E7C810((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("Discount")))
  loc_182622B:     Set var_144 = Me.Txt
  loc_1826231:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H18), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00")))
  loc_1826239:     var_148.Text = 1
  loc_182626C:     var_CC = var_88.Fields.Item("Commission")
  loc_182627B:     Proc_6_39_E7C810((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_CC))
  loc_18262A3:     var_120 = CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00"))
  loc_18262B2:     Set var_144 = Me.Txt
  loc_18262B8:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H19), var_148, var_120, 1)
  loc_18262C0:     var_148.Text = 1
  loc_18262EF:     Me.Fgrid1.Rows = 2
  loc_18262F9:     var_AA = 1
  loc_182630A:     Set var_B8 = Me.Txt
  loc_1826310:     Call 0.Method_Proc_22_91_18269A40 (CInt(&H14), var_CC, var_120)
  loc_1826318:     var_AA = var_CC.Text
  loc_182632F:     If (var_120 = "Travel Agency") Then
  loc_182633D:       Set var_B8 = Me.Lbl
  loc_1826343:       Call 0.Method_Proc_22_91_18269A40 (&H1C, var_CC, &HFF)
  loc_182634B:       var_CC.Visible = True
  loc_1826364:       Set var_B8 = Me.Txt
  loc_182636A:       Call 0.Method_Proc_22_91_18269A40 (CInt(&H19), var_CC)
  loc_1826372:       var_CC.Visible = True
  loc_1826381:     Else
  loc_182638C:       Set var_B8 = Me.Lbl
  loc_1826392:       Call 0.Method_Proc_22_91_18269A40 (&H1C, var_CC)
  loc_182639A:       var_CC.Visible = False
  loc_18263B3:       Set var_B8 = Me.Txt
  loc_18263B9:       Call 0.Method_Proc_22_91_18269A40 (CInt(&H19), var_CC)
  loc_18263C1:       var_CC.Visible = False
  loc_18263CD:     End If
  loc_18263E0:     Me.FGrid.Rows = 1
  loc_18263F0:     If (MemVar_1F92078 = "HO") Then
  loc_1826407:       var_120 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_182640E:       var_14C = var_120 & "' and V_Type='"
  loc_182642D:       Set var_B8 = Me.Txt
  loc_1826433:       Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC, var_200, var_14C & "F_AO" & "' and SubCode='")
  loc_182643B:       var_DC = var_CC.Text
  loc_1826444:       var_210 = -1 & var_200
  loc_182644B:       var_214 = "Select * from Comp_PlanDet where CompanyCode='" & var_CC.Text & "' and RoomCat='" & var_200 & "' and PlanCode='" & "' Order by V_SNo"
  loc_1826454:       unk_547249.Execute var_214, var_144, var_22E
  loc_182645F:       Set var_88 = var_144
  loc_1826482:     Else
  loc_1826496:       var_120 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_18264AE:       Set var_B8 = Me.Txt
  loc_18264B4:       Call 0.Method_Proc_22_91_18269A40 (CInt(0), var_CC, var_14C, var_120 & "' and SubCode='")
  loc_18264BC:       var_DC = var_CC.Text
  loc_18264C5:       var_200 = -1 & var_14C
  loc_18264E3:       unk_547249.Execute var_200 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_144, 
  loc_18264EE:       Set var_88 = var_144
  loc_182650E:     End If
  loc_1826514:     var_208 = var_88.RecordCount
  loc_1826522:     If (var_208 > 0) Then
  loc_1826527:       var_AA = 1
  loc_1826555:       var_120 = CStr(var_88.Fields.Item("DocID").Value)
  loc_182655B:       global_76 = var_120
  loc_182659B:       global_64 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_18265AF:       global_68 = CByte(1)
  loc_18265B3:       ' Referenced from: 1826887
  loc_18265C2:       If Not(var_88.EOF) Then
  loc_1826601:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_1826607:           var_A0 = "Dr"
  loc_1826630:           Proc_183_3_E7D1C8((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtDr")), global_68)
  loc_1826639:           var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_1826649:         Else
  loc_1826685:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_182668B:             var_A0 = "Cr"
  loc_18266B4:             Proc_183_3_E7D1C8((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_18266BD:             var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_18266CA:           End If
  loc_18266CA:         End If
  loc_18266F1:         Proc_183_3_E7D1C8(var_270, var_A8, var_A8)
  loc_182671F:         var_140 = "dd/MMM/yyyy"
  loc_1826728:         var_11C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_182677A:         var_240 = CVar(var_AA) & Chr(9) & CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Narration")), 1 & Format(var_11C, var_140) & Chr(9), 1)) 
  loc_1826811:         Proc_183_3_E7D1C8(var_310, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_270, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_182681E:         var_330 = CVar(CStr(var_240 & Chr(9) & var_310)) 'String
  loc_1826826:         Set var_1FC = Me.FGrid
  loc_182687C:         var_AA = (var_AA + 1)
  loc_1826882:         var_88.MoveNext
  loc_1826887:         GoTo loc_18265B3
  loc_182688A:       End If
  loc_182689D:       Me.FGrid.FixedRows = 1
  loc_18268A8:     Else
  loc_18268AE:       global_76 = vbNullString
  loc_18268BA:       global_64 = 0
  loc_18268C4:       global_68 = CByte(0)
  loc_18268DD:       var_FC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_18268E5:       Set var_CC = Me.FGrid
  loc_1826914:       Me.FGrid.FixedRows = 1
  loc_182691C:     End If
  loc_182691C:     Call Proc_22_79_1421608(FGrid.DispID_10000, var_FC, global_68, global_64, var_AA)
  loc_1826926:     Set var_88 = Nothing
  loc_1826929:   End If
  loc_182692C: Else
  loc_182692C:   Call Proc_22_80_101447C(FGrid.DispID_10000, var_330)
  loc_1826931: End If
  loc_1826931: Call Proc_22_81_F6C2B0(global_64)
  loc_182693B: Set var_88 = Nothing
  loc_182693E: Exit Sub
  loc_182693F: ' Referenced from: 18245E4
  loc_1826947: Set var_B8 = Err()
  loc_182694D: Call 0.Method_arg_1C (var_208)
  loc_182695E: If (var_208 <> 0) Then
  loc_1826969:   Set var_B8 = Err()
  loc_182696F:   Call 0.Method_arg_2C (var_120)
  loc_1826990:   MsgBox(CVar(var_120), &H40, "Validation", var_11C, var_140)
  loc_18269A3: End If
  loc_18269A3: Exit Sub
End Sub

Public Sub Proc_22_92_15A4D0C(arg_C, arg_10, arg_14, arg_18, arg_1C) '15A4D0C
  'Data Table: 547210
  Dim var_98 As TextBox
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_547249 As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As Variant
  Dim var_4D4 As TextBox
  Dim var_9C As String
  Dim var_E8 As String
  Dim var_F4 As String
  Dim var_108 As TextBox
  Dim var_124 As String
  Dim var_11C As TextBox
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_150 As String
  Dim var_158 As TextBox
  Dim var_174 As String
  Dim var_16C As TextBox
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1C4 As String
  Dim var_1BC As TextBox
  Dim var_1D0 As TextBox
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_20C As TextBox
  Dim var_220 As TextBox
  Dim var_22C As String
  Dim var_2D4 As TextBox
  Dim var_338 As Variant
  Dim var_388 As Variant
  Dim var_3F0 As TextBox
  Dim var_434 As Variant
  Dim var_4AC As Variant
  Dim var_580 As Variant
  Dim var_5D8 As Variant
  Dim var_660 As Variant
  Dim var_670 As Variant
  Dim var_224 As String
  Dim var_5F8 As Variant
  loc_15A3D50: On Error Goto loc_15A4CE4
  loc_15A3D71: Set var_94 = Me.Txt
  loc_15A3D77: Call 0.Method_Proc_22_92_15A4D0C0 (CInt(2), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='")
  loc_15A3D7F: var_C4 = var_98.Tag
  loc_15A3D88: var_A0 = -1 & var_9C
  loc_15A3D98: unk_547249.Execute var_A0 & "'", var_C8, 
  loc_15A3DA3: Set var_88 = var_C8
  loc_15A3DCF: If (var_88.RecordCount > 0) Then
  loc_15A3DFA:   var_8C = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Nature")))
  loc_15A3E1A:   var_98 = var_88.Fields.Item("GroupNature")
  loc_15A3E2B:   var_90 = Proc_183_2_E5A304(CVar(var_98))
  loc_15A3E37: Else
  loc_15A3E3A:   var_8C = "Other"
  loc_15A3E40:   var_90 = vbNullString
  loc_15A3E43: End If
  loc_15A3E4B: If (arg_C = "Add") Then
  loc_15A3E5C:   Set var_4D0 = Me.Txt
  loc_15A3E62:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H1F), var_4D4)
  loc_15A3E7A:   Set var_62C = Me.Txt
  loc_15A3E80:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H13))
  loc_15A3E93:   var_A0 = "Insert Into " & arg_10 & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,Phone,Mobile,Fax,EMail,CSTNo,LSTNo,PIN,PANNo,GSTIN,LegalName,TradeName,Remark,U_Name,U_EntDt,U_AE,CompanyType,LOGSITE_CODE,DiscountType,ACTIVEYN,WebPassword,MapCode,AllowCredit) Values ('"
  loc_15A3EE4:   Set var_94 = Me.Txt
  loc_15A3EEA:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(2), var_98)
  loc_15A3EFB:   var_F4 = var_630 & Proc_183_20_FB3974(arg_18, var_A0 & MemVar_1F92070 & "','" & arg_14 & "','" & arg_18 & "','") & "','" & var_98.Tag
  loc_15A3F2F:   Set var_C8 = Me.Txt
  loc_15A3F35:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(3), var_108)
  loc_15A3F5E:   Set var_118 = Me.Txt
  loc_15A3F64:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(4), var_11C)
  loc_15A3F8D:   Set var_12C = Me.Txt
  loc_15A3F93:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(5), var_130)
  loc_15A3FBC:   Set var_140 = Me.Txt
  loc_15A3FC2:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(6), var_144)
  loc_15A3FD3:   var_150 = var_F4 & "','" & var_90 & "','" & var_8C & "','" & var_108.Text & "','" & var_11C.Text & "','" & var_130.Text & "','" & var_144.Text
  loc_15A3FEB:   Set var_154 = Me.Txt
  loc_15A3FF1:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(7), var_158)
  loc_15A401A:   Set var_168 = Me.Txt
  loc_15A4020:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(8), var_16C)
  loc_15A4049:   Set var_17C = Me.Txt
  loc_15A404F:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HA), var_180)
  loc_15A4078:   Set var_190 = Me.Txt
  loc_15A407E:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HB), var_194)
  loc_15A40A7:   Set var_1A4 = Me.Txt
  loc_15A40AD:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HC), var_1A8)
  loc_15A40C5:   var_1C4 = var_150 & "','" & var_158.Text & "','" & var_16C.Tag & "','" & var_180.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','"
  loc_15A40D6:   Set var_1B8 = Me.Txt
  loc_15A40DC:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HD), var_1BC)
  loc_15A4105:   Set var_1CC = Me.Txt
  loc_15A410B:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HE), var_1D0)
  loc_15A4134:   Set var_1E0 = Me.Txt
  loc_15A413A:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HF), var_1E4)
  loc_15A4163:   Set var_1F4 = Me.Txt
  loc_15A4169:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(9), var_1F8)
  loc_15A4192:   Set var_208 = Me.Txt
  loc_15A4198:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H10), var_20C)
  loc_15A41C1:   Set var_21C = Me.Txt
  loc_15A41C7:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H22), var_220)
  loc_15A41D8:   var_22C = var_1C4 & var_1BC.Text & "','" & var_1D0.Text & "','" & var_1E4.Text & "','" & var_1F8.Text & "','" & var_20C.Text & "','" & var_220.Text
  loc_15A41ED:   Set var_230 = Me.Txt
  loc_15A41F3:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H23), var_234)
  loc_15A4202:   Proc_6_17_EAA2B0(var_244, CVar(var_234))
  loc_15A4222:   Set var_278 = Me.Txt
  loc_15A4228:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H24), var_27C)
  loc_15A4237:   Proc_6_17_EAA2B0(var_29C, CVar(var_27C))
  loc_15A425A:   Set var_2D0 = Me.Txt
  loc_15A4260:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H11), var_2D4)
  loc_15A42A1:   Proc_183_7_EB0C44(var_378, Now)
  loc_15A42A9:   var_388 = CVar(var_22C & "',") & var_244 & "," & var_29C & ",'" & CVar(var_2D4.Text) & "','" & CVar(MemVar_1F920C8) & "'," & var_378 
  loc_15A42D7:   Set var_3EC = Me.Txt
  loc_15A42DD:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H14), var_3F0)
  loc_15A431B:   Set var_478 = Me.Txt
  loc_15A4321:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H1C), var_47C)
  loc_15A4335:   var_4AC = var_388 & ",'" & CVar(arg_1C) & "','" & CVar(var_3F0.Text) & "','" & CVar(MemVar_1F92078) & "','" & CVar(Proc_6_38_E68A98(CVar(var_47C))) 
  loc_15A437B:   Set var_56C = Me.Txt
  loc_15A4381:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H20), var_570)
  loc_15A43AD:   Set var_5C4 = Me.Txt
  loc_15A43B3:   Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H21), var_5C8)
  loc_15A43BB:   var_5D8 = CVar(var_5C8) 'Address
  loc_15A43CA:   Proc_6_17_EAA2B0(var_5F8, CVar(Proc_6_38_E68A98(var_5D8)))
  loc_15A43FE:   var_670 = var_4AC & "'," & IIf((var_4D4.Text = "No"), 0, 1) & ",'" & CVar(Proc_6_38_E68A98(CVar(var_570))) & "'," & var_5F8 & ",'" & CVar(Proc_6_38_E68A98(Left(CVar(var_630), 1))) 
  loc_15A4412:   global_160 = CStr(var_670 & "')")
  loc_15A455C: Else
  loc_15A4564:   If (arg_C = "Edit") Then
  loc_15A4575:     Set var_4D0 = Me.Txt
  loc_15A457B:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H1F), var_4D4)
  loc_15A4593:     Set var_62C = Me.Txt
  loc_15A4599:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H13))
  loc_15A45A5:     var_9C = "Update " & arg_10
  loc_15A45E1:     Set var_94 = Me.Txt
  loc_15A45E7:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(2), var_98)
  loc_15A45FF:     var_E8 = var_630 & Proc_183_20_FB3974(arg_18, var_9C & " Set Name='" & arg_18 & "',NameHelp='") & "',GroupCode='" & var_98.Tag & "',GroupNature='"
  loc_15A4632:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(3), var_108)
  loc_15A465B:     Set var_118 = Me.Txt
  loc_15A4661:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(4), var_11C)
  loc_15A468A:     Set var_12C = Me.Txt
  loc_15A4690:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(5), var_130)
  loc_15A46A1:     var_124 = var_E8 & var_90 & "',Nature='" & var_8C & "',ConPrefix='" & var_108.Text & "',ConPerson='" & var_11C.Text & "',Add1='" & var_130.Text
  loc_15A46B9:     Set var_140 = Me.Txt
  loc_15A46BF:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(6), var_144)
  loc_15A46E8:     Set var_154 = Me.Txt
  loc_15A46EE:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(7), var_158)
  loc_15A4717:     Set var_168 = Me.Txt
  loc_15A471D:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(8), var_16C)
  loc_15A4746:     Set var_17C = Me.Txt
  loc_15A474C:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HA), var_180)
  loc_15A475D:     var_174 = var_124 & "',Add2='" & var_144.Text & "',Add3='" & var_158.Text & "',CityCode='" & var_16C.Tag & "',Phone='" & var_180.Text
  loc_15A4775:     Set var_190 = Me.Txt
  loc_15A477B:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HB), var_194)
  loc_15A47A4:     Set var_1A4 = Me.Txt
  loc_15A47AA:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HC), var_1A8)
  loc_15A47D3:     Set var_1B8 = Me.Txt
  loc_15A47D9:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HD), var_1BC)
  loc_15A4802:     Set var_1CC = Me.Txt
  loc_15A4808:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HE), var_1D0)
  loc_15A4819:     var_1C4 = var_174 & "',Mobile='" & var_194.Text & "',Fax='" & var_1A8.Text & "',EMail='" & var_1BC.Text & "',CSTNo='" & var_1D0.Text
  loc_15A4831:     Set var_1E0 = Me.Txt
  loc_15A4837:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&HF), var_1E4)
  loc_15A4867:     Set var_1F4 = Me.Txt
  loc_15A486D:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(9), var_1F8)
  loc_15A489D:     Set var_208 = Me.Txt
  loc_15A48A3:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H10), var_20C)
  loc_15A48CC:     Set var_21C = Me.Txt
  loc_15A48D2:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H22), var_220)
  loc_15A48E3:     var_224 = var_1C4 & "',LSTNo='" & var_1E4.Text & "'," & "PIN='" & var_1F8.Text & "'," & "PANNo='" & var_20C.Text & "',GSTIN='" & var_220.Text
  loc_15A48F8:     Set var_230 = Me.Txt
  loc_15A48FE:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H23), var_234)
  loc_15A490D:     Proc_6_17_EAA2B0(var_244, CVar(var_234))
  loc_15A492D:     Set var_278 = Me.Txt
  loc_15A4933:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H24), var_27C)
  loc_15A4942:     Proc_6_17_EAA2B0(var_29C, CVar(var_27C))
  loc_15A4965:     Set var_2D0 = Me.Txt
  loc_15A496B:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H11), var_2D4)
  loc_15A4991:     var_338 = CVar(var_224 & "',LegalName=") & var_244 & ",TradeName=" & var_29C & ",Remark='" & CVar(var_2D4.Text) & "',U_Name='" & CVar(MemVar_1F920C8) 
  loc_15A49AC:     Proc_183_7_EB0C44(var_378, Now)
  loc_15A49E2:     Set var_3EC = Me.Txt
  loc_15A49E8:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H14), var_3F0)
  loc_15A4A04:     var_434 = var_338 & "',U_EntDt=" & var_378 & ",U_AE='" & CVar(arg_1C) & "',CompanyType='" & CVar(var_3F0.Text) & "',DiscountType='" 
  loc_15A4A13:     Set var_478 = Me.Txt
  loc_15A4A19:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H1C), var_47C)
  loc_15A4A73:     Set var_56C = Me.Txt
  loc_15A4A79:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H20), var_570)
  loc_15A4A8D:     var_580 = var_434 & CVar(Proc_6_38_E68A98(CVar(var_47C))) & "',ActiveYN=" & IIf((var_4D4.Text = "Yes"), 1, 0) & ",WebPassword='" & CVar(Proc_6_38_E68A98(CVar(var_570))) 
  loc_15A4AA5:     Set var_5C4 = Me.Txt
  loc_15A4AAB:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(&H21), var_5C8)
  loc_15A4AC2:     Proc_6_17_EAA2B0(var_5D8, CVar(Proc_6_38_E68A98(CVar(var_5C8))))
  loc_15A4AFF:     var_660 = var_580 & "',MapCode=" & var_5D8 & ",AllowCredit='" & CVar(Proc_6_38_E68A98(Left(CVar(var_630), 1))) & "' Where SUBCODE='" 
  loc_15A4B1D:     global_160 = CStr(var_660 & CVar(arg_14) & "'")
  loc_15A4C7E:     Set var_94 = Me.Txt
  loc_15A4C84:     Call 0.Method_Proc_22_92_15A4D0C0 (CInt(2), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_15A4C8C:     var_C4 = var_98.Tag
  loc_15A4C95:     var_A0 = -1 & var_9C
  loc_15A4CC1:     unk_547249.Execute var_9C & " Set Name='" & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_15A4CE3:   End If
  loc_15A4CE3: End If
  loc_15A4CE3: Exit Sub
  loc_15A4CE4: ' Referenced from: 15A3D50
  loc_15A4CEA: Call 0.Method_arg_50 (var_9C)
  loc_15A4CF2: var_A4 = "SubGroupUpdate"
  loc_15A4CFF: Proc_183_57_104AA84(var_9C)
  loc_15A4D0B: Exit Sub
End Sub

Public Sub Proc_22_93_15C4FC8
  'Data Table: 547210
  Dim var_D0 As String
  Dim var_F4 As Variant
  Dim unk_547249 As Connection15
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_B4 As Long
  Dim var_11C As Variant
  Dim var_E0 As Variant
  Dim var_12C As Variant
  Dim var_130 As Variant
  Dim var_98 As Integer
  Dim var_CC As Variant
  Dim var_148 As Variant
  Dim var_108 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_2E8 As Double
  Dim var_2F0 As Double
  Dim var_214 As Variant
  Dim var_15C As String
  Dim var_160 As String
  Dim var_21C As String
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_304 As Variant
  Dim var_2DC As Variant
  Dim var_324 As Variant
  Dim var_354 As Variant
  Dim var_3C4 As Variant
  Dim var_404 As Variant
  Dim var_B0 As Recordset15
  Dim var_45C As Double
  Dim var_210 As MSHFlexGrid
  Dim var_218 As String
  Dim var_3B4 As Variant
  Dim var_444 As Variant
  Dim var_564 As Variant
  Dim Me As Recordset15
  loc_15C3D98: On Error Goto loc_15C4F8C
  loc_15C3D9F: Set var_BC = Me.tOPCtrl1
  loc_15C3DA5: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_15C3DBE: If (CStr() = "Add") Then
  loc_15C3DC7:   var_F4 = 0
  loc_15C3DE6:   unk_547249.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_CC, -1
  loc_15C3DEE:   var_BC = var_BC.Fields
  loc_15C3DF6:   var_F4 = var_E4.Item(var_E4)
  loc_15C3DFE:   var_F8 = var_F8.Value
  loc_15C3E53:   var_12C = (1 + Format(CLng(var_108), "000000"))
  loc_15C3E57:   var_D0 = CStr(var_12C)
  loc_15C3E66:   Set var_BC = Me.Txt
  loc_15C3E6C:   Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4, var_D0, 1)
  loc_15C3E74:   var_E4.Text = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2))
  loc_15C3E9C:   Set var_BC = Me.Txt
  loc_15C3EA2:   Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4, var_D0)
  loc_15C3EAA:   var_B4 = var_E4.Text
  loc_15C3EBD:   Set var_F8 = Me.Txt
  loc_15C3EC3:   Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_130)
  loc_15C3ECB:   var_130.Tag = var_D0
  loc_15C3EE1: Else
  loc_15C3EEF:   Set var_BC = Me.Txt
  loc_15C3EF5:   Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4)
  loc_15C3F10:   Set var_F8 = Me.Txt
  loc_15C3F16:   Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_130)
  loc_15C3F1E:   var_130.Tag = var_E4.Text
  loc_15C3F31: End If
  loc_15C3F3A: unk_547249.BeginTrans var_134
  loc_15C3F41: var_98 = &HFF
  loc_15C3F69: For var_138 = 1 To CInt((CLng(Me.Fgrid1.Rows) - 1)): var_9E = var_138 'Integer
  loc_15C3F73:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C3F95:   var_D0 = CStr(Me.Fgrid1.TextMatrix))
  loc_15C3FA1:   Set var_E4 = Me.Fgrid1
  loc_15C3FC8:   If ((var_D0 <> vbNullString) And (CLng(var_E4.Rows) > 2)) Then
  loc_15C3FD9:     Set var_BC = Me.Txt
  loc_15C3FDF:     Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4, var_D0, CVar(CLng(0)))
  loc_15C3FE7:     var_E0 = var_E4.Text
  loc_15C3FF0:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C3FF8:     var_148 = CVar(CLng(2)) 'Long
  loc_15C4007:     var_CC = Me.Fgrid1.TextMatrix)
  loc_15C401F:     var_198 = CVar(CLng(3)) 'Long
  loc_15C4041:     var_2E8 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_15C4072:     var_2F0 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_15C4083:     Set var_210 = Me.Txt
  loc_15C4089:     Call 0.Method_Proc_22_93_15C4FC80 (CInt(&H1C), var_214, var_218, var_2F0, CVar(CLng(4)), CVar(CLng(var_9E)), var_2E8)
  loc_15C4091:     var_198 = var_214.Text
  loc_15C40A1:     Proc_6_7_F25D88(var_12C, MemVar_1F920EC, CVar(CLng(var_9E)), var_CC)
  loc_15C40C1:     var_160 = "INSERT INTO RoomDiscount (Code,RoomCat,Adult,Discount,DiscType,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0 & "','"
  loc_15C40F9:     var_21C = var_160 & CStr(var_CC) & "'," & CStr(var_2E8) & "," & CStr(var_2F0) & ",'"
  loc_15C4145:     unk_547249.Execute CStr(CVar(var_21C & var_218 & "','" & MemVar_1F92070 & "',") & var_12C & ",'A','" & CVar(MemVar_1F92078) & "')"), var_2DC, -1
  loc_15C419D:   End If
  loc_15C41A0: Next var_138 'Integer
  loc_15C41CA: For var_2F4 = 1 To CInt((CLng(Me.FgridPlan.Rows) - 1)): var_9E = var_2F4 'Integer
  loc_15C41D4:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C41D9:   var_148 = 2
  loc_15C41F7:   var_D0 = CStr(Me.FgridPlan.TextMatrix))
  loc_15C4208:   If (var_D0 <> vbNullString) Then
  loc_15C4219:     Set var_BC = Me.Txt
  loc_15C421F:     Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4, var_D0)
  loc_15C4227:     var_148 = var_E4.Text
  loc_15C4230:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C4235:     var_148 = 2
  loc_15C4262:     var_188 = CVar(CLng(var_9E)) 'Long
  loc_15C4267:     var_1A8 = 3
  loc_15C4274:     Set var_130 = Me.FgridPlan
  loc_15C427A:     var_278 = var_130.TextMatrix)
  loc_15C42A2:     var_304 = Me.FgridPlan.TextMatrix)
  loc_15C42B9:     Proc_6_7_F25D88(var_3B4, MemVar_1F920EC, var_304, 5, CVar(CLng(var_9E)), var_278)
  loc_15C42D2:     var_15C = "INSERT INTO Comp_PlanDet (CompanyCode,RoomCat,PLanCode,PlanAmt,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0
  loc_15C4307:     var_324 = CVar(var_15C & "','") & Trim(CVar(CStr(Me.FgridPlan.TextMatrix)))) & "','" & CVar(CStr(var_278)) & "'," & CVar(CStr(var_304)) 
  loc_15C4323:     var_354 = var_324 & ",'" & CVar(MemVar_1F92070) & "','" 
  loc_15C4350:     var_404 = var_354 & CVar(MemVar_1F920C8) & "'," & var_3B4 & ",'A','" & CVar(MemVar_1F92078) 
  loc_15C4367:     unk_547249.Execute CStr(var_404 & "')"), var_444, -1
  loc_15C43B7:   End If
  loc_15C43BA: Next var_2F4 'Integer
  loc_15C43E4: For var_448 = 1 To CInt((CLng(Me.FGridIncl.Rows) - 1)): var_9E = var_448 'Integer
  loc_15C43EE:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C43F6:   var_148 = CVar(CLng(2)) 'Long
  loc_15C4410:   var_D0 = CStr(Me.FGridIncl.TextMatrix))
  loc_15C442D:   Set var_E4 = Me.FGridIncl
  loc_15C445C:   If (CVar(CLng(1)) And (CStr(var_E4.TextMatrix)) = "�")) Then
  loc_15C446D:     Set var_BC = Me.Txt
  loc_15C4473:     Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4, var_D0, CVar(CLng(var_9E)))
  loc_15C447B:     (var_D0 <> vbNullString) = var_E4.Text
  loc_15C449B:     var_CC = Me.FGridIncl.TextMatrix)
  loc_15C44BC:     Proc_6_7_F25D88(var_304, MemVar_1F920EC, CVar(CLng(2)), CVar(CLng(var_9E)))
  loc_15C44DC:     var_12C = CVar("INSERT INTO Comp_Inclusive (CompanyCode,Inclusive,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0 & "','") 'String
  loc_15C44F5:     var_278 = var_12C & Trim(CVar(CStr(var_CC))) & "','" & CVar(MemVar_1F92070) 
  loc_15C4542:     unk_547249.Execute CStr(var_278 & "','" & CVar(MemVar_1F920C8) & "'," & var_304 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_354, -1
  loc_15C457E:   End If
  loc_15C4581: Next var_448 'Integer
  loc_15C4594: Set var_BC = Me.Txt
  loc_15C459A: Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4)
  loc_15C45B5: Set var_F8 = Me.Txt
  loc_15C45BB: Call 0.Method_Proc_22_93_15C4FC80 (CInt(1), var_130)
  loc_15C45E2: var_15C = "SubGroup"
  loc_15C45F1: Call Proc_22_92_15A4D0C("Add", var_15C, var_E4.Text, var_130.Text, "A")
  loc_15C4627: unk_547249.Execute global_160, var_CC, -1
  loc_15C4657: For var_44C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_44C 'Integer
  loc_15C4661:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C4669:   var_148 = CVar(CLng(3)) 'Long
  loc_15C4699:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_15C46A0:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C46A8:     var_148 = CVar(CLng(1)) 'Long
  loc_15C46C7:     var_178 = CVar(CLng(var_9E)) 'Long
  loc_15C46CF:     var_198 = CVar(CLng(1)) 'Long
  loc_15C46DE:     var_108 = Me.FGrid.TextMatrix)
  loc_15C46E9:     var_12C = CVar(CStr(var_108)) 'String
  loc_15C46F4:     var_11C = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_15C471C:     Call Proc_22_87_10BCAE0(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), Trim(CVar(CStr(Me.FGrid.TextMatrix)))), var_12C)))
  loc_15C4727:     global_76 = var_15C
  loc_15C476B:     If (Trim(global_76) = vbNullString) Then
  loc_15C4787:       MsgBox("Pl. Configur Numbring System ", 0, var_108, Trim(CVar(CStr("Pl. Configur Numbring System "))), var_12C)
  loc_15C4797:       GoTo loc_15C4F8C
  loc_15C479A:     End If
  loc_15C47B5:     var_CC = Me.FGrid.TextMatrix)
  loc_15C47C5:     var_178 = CVar(CLng(var_9E)) 'Long
  loc_15C47CD:     var_198 = CVar(CLng(1)) 'Long
  loc_15C47D6:     Set var_E4 = Me.FGrid
  loc_15C47F2:     var_11C = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_15C4809:     var_248 = IIf((CStr(var_CC) = vbNullString), Trim(CVar(CStr(var_CC))), CVar(CStr(var_E4.TextMatrix))))
  loc_15C4813:     var_258 = CDate(CDate(var_248))
  loc_15C481A:     Proc_183_7_EB0C44(var_278, var_258, var_198, var_178, var_CC, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_15C4833:     var_D0 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_15C483A:     var_15C = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_15C4841:     var_160 = var_15C & MemVar_1F92078
  loc_15C4873:     unk_547249.Execute CStr(CVar(var_160 & "' AND V_Type='" & "F_AO" & "' AND ") & var_278 & " BETWEEN DATE_FROM AND DATE_TO"), var_304, -1
  loc_15C48CF:     Set var_BC = Me.Txt
  loc_15C48D5:     Call 0.Method_Proc_22_93_15C4FC80 (CInt(2), var_E4, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_248, -1, var_F8)
  loc_15C490A:     unk_547249.Execute CStr(var_15C & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_198, var_178
  loc_15C4915:     Set var_B0 = var_E4.Tag
  loc_15C4945:     If (var_B0.RecordCount > 0) Then
  loc_15C494C:       var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C497F:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_15C4985:         var_A4 = "AmtCr"
  loc_15C4996:         Set var_BC = Me.Txt
  loc_15C499C:         Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4, var_160, CVar(CLng(4)))
  loc_15C49A4:         var_E0 = var_E4.Text
  loc_15C49AD:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C49B5:         var_148 = CVar(CLng(3)) 'Long
  loc_15C49D7:         var_45C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15C4A05:         var_188 = CVar(CLng(var_9E)) 'Long
  loc_15C4A1C:         var_108 = Me.FGrid.TextMatrix)
  loc_15C4A55:         Proc_183_0_1279094(MemVar_1F921DC, var_160, CDbl(0), var_45C, CStr(var_B0.Fields.Item("GroupCode").Value), CDate(CStr(var_108)), var_108, CVar(CLng(1)))
  loc_15C4A80:       Else
  loc_15C4A83:         var_A4 = "AmtDr"
  loc_15C4A94:         Set var_BC = Me.Txt
  loc_15C4A9A:         Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4, var_160, var_188, var_45C)
  loc_15C4AA2:         var_148 = var_E4.Text
  loc_15C4AAB:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C4AB3:         var_148 = CVar(CLng(3)) 'Long
  loc_15C4AD5:         var_45C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15C4AEA:         var_130 = var_B0.Fields
  loc_15C4B03:         var_188 = CVar(CLng(var_9E)) 'Long
  loc_15C4B1A:         var_108 = Me.FGrid.TextMatrix)
  loc_15C4B53:         Proc_183_0_1279094(MemVar_1F921DC, var_160, var_45C, CDbl(0), CStr(var_130.Item("GroupCode").Value), CDate(CStr(var_108)), var_108, CVar(CLng(1)))
  loc_15C4B7B:       End If
  loc_15C4B96:       var_CC = Me.FGrid.TextMatrix)
  loc_15C4BB7:       Set var_E4 = Me.FGrid
  loc_15C4BBD:       var_108 = var_E4.TextMatrix)
  loc_15C4BC8:       var_12C = CVar(CStr(var_108)) 'String
  loc_15C4BD3:       var_11C = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_15C4BF5:       Proc_183_7_EB0C44(var_258, IIf((CStr(var_CC) = vbNullString), var_130.Item("GroupCode").Value, var_12C), CVar(CLng(1)), CVar(CLng(var_9E)), var_CC, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_15C4C08:       Set var_F8 = Me.Txt
  loc_15C4C0E:       Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_130, var_21C, var_188, var_45C)
  loc_15C4C16:       var_148 = var_130.Text
  loc_15C4C49:       var_2E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15C4C67:       var_354 = Me.FGrid.TextMatrix)
  loc_15C4C7E:       Proc_183_7_EB0C44(var_404, MemVar_1F920EC, var_354, CVar(CLng(2)), CVar(CLng(var_9E)), var_2E8)
  loc_15C4C8E:       Proc_183_9_EAA760(var_4AC, var_AC, CVar(CLng(3)), CVar(CLng(var_9E)))
  loc_15C4CFC:       var_15C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_15C4D52:       var_278 = CVar(var_15C & global_76 & "'," & CStr(var_9E) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F92070 & "',") 'String
  loc_15C4DA6:       var_3C4 = var_278 & var_258 & ",'" & CVar(var_21C) & "'," & CVar(var_2E8) & ",'" & CVar(CStr(var_354)) & "','" & CVar(MemVar_1F920C8) 
  loc_15C4DE6:       var_564 = var_3C4 & "'," & var_404 & ",'A'," & var_4AC & ",'" & var_B0.Fields.Item("GroupCode").Value & "','" & var_B0.Fields.Item("GroupNature").Value 
  loc_15C4E10:       unk_547249.Execute CStr(var_564 & "','" & CVar(MemVar_1F92078) & "')"), var_5E4, -1
  loc_15C4EA1:     Else
  loc_15C4EAF:       var_E0 = "Group Not Defined"
  loc_15C4EBA:       MsgBox(var_E0, 0, var_108, var_130.Item("GroupCode").Value, var_12C)
  loc_15C4ECA:       GoTo loc_15C4F8C
  loc_15C4ECD:     End If
  loc_15C4ECD:   End If
  loc_15C4ED0: Next var_44C 'Integer
  loc_15C4EDB: unk_547249.CommitTrans
  loc_15C4EEB: Me.Requery -1
  loc_15C4EF2: var_98 = 0
  loc_15C4F03: Set var_BC = Me.Txt
  loc_15C4F09: Call 0.Method_Proc_22_93_15C4FC80 (CInt(0), var_E4)
  loc_15C4F35: Me.Requery -1
  loc_15C4F52: var_D0 = "SearchCode = '" & var_E4.Text
  loc_15C4F62: Me.Find var_D0 & "'", 0, 1
  loc_15C4F6E: Call TopCtrl1_UnknownEvent_A()
  loc_15C4F78: Set var_9C = Nothing
  loc_15C4F80: Set var_A8 = Nothing
  loc_15C4F88: Set var_B0 = Nothing
  loc_15C4F8B: Exit Sub
  loc_15C4F8C: ' Referenced from: 15C4ECA
  loc_15C4F8C: ' Referenced from: 15C4797
  loc_15C4F8C: ' Referenced from: 15C3D98
  loc_15C4F92: If (var_98 = &HFF) Then
  loc_15C4F9B:   unk_547249.RollbackTrans
  loc_15C4FA0: End If
  loc_15C4FA6: Call 0.Method_arg_50 (var_D0, var_E0)
  loc_15C4FBB: Proc_183_57_104AA84(var_D0, "UpdateDataBaseAdd")
  loc_15C4FC7: Exit Sub
End Sub

Public Sub Proc_22_94_16904FC
  'Data Table: 547210
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_547249 As Connection15
  Dim var_E8 As Variant
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_8A As Integer
  Dim var_BC As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_94 As Recordset15
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_160 As Variant
  Dim var_E4 As Variant
  Dim var_17C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_1D0 As String
  Dim var_1D4 As String
  Dim var_B0 As Recordset15
  Dim var_98 As Recordset15
  Dim var_218 As Variant
  Dim var_110 As Variant
  Dim var_298 As Variant
  Dim var_2C0 As Double
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_2CC As String
  Dim var_2A8 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_16C As Double
  Dim var_3B4 As Variant
  Dim var_1E0 As String
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_1F4 As String
  Dim var_2C8 As String
  Dim var_1CC As Variant
  Dim var_2B8 As Variant
  Dim var_3F4 As Variant
  Dim var_484 As Variant
  Dim var_544 As Variant
  Dim var_248 As Variant
  Dim var_184 As Double
  Dim var_2D0 As String
  Dim var_454 As Variant
  Dim Me As Recordset15
  loc_168ED90: On Error Goto loc_16904C0
  loc_168EDC0: Set var_B4 = Me.Txt
  loc_168EDC6: Call 0.Method_Proc_22_94_16904FC0 (CInt(2), var_B8, var_BC, "Select MainGrCode From AcGroup Where GroupCode='", var_E4, -1)
  loc_168EDCE: var_E8 = var_B8.Tag
  loc_168EDD7: var_C0 = var_EC & var_BC
  loc_168EDE7: unk_547249.Execute var_C0 & "'", 0, var_100
  loc_168EDF7:  = var_EC.Item()
  loc_168EDFF:  = var_100.Value
  loc_168EE08: var_A4 = CStr(var_E8.Fields)
  loc_168EE31: unk_547249.BeginTrans var_114
  loc_168EE67: Set var_B4 = Me.Txt
  loc_168EE6D: Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_C0, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_168EE75: var_E4 = var_B8.Text
  loc_168EE7E: var_118 = -1 & var_C0
  loc_168EE8E: unk_547249.Execute var_118 & "'", var_E8, &HFF
  loc_168EE99: Set var_94 = var_E8
  loc_168EEB5: ' Referenced from: 168EFEE
  loc_168EEC4: If Not(var_94.EOF) Then
  loc_168EEE1:   var_B8 = var_94.Fields.Item("subcode")
  loc_168EF00:   var_E8 = var_94.Fields
  loc_168EF08:   var_EC = var_E8.Item("AmtCr")
  loc_168EF37:   var_17C = var_94.Fields.Item("AmtDr").Value
  loc_168EF5E:   var_194 = var_94.Fields.Item("GroupCode").Value
  loc_168EF85:   var_1A4 = var_94.Fields.Item("V_DATE").Value
  loc_168EFB6:   Proc_183_0_1279094(MemVar_1F921DC, CStr(var_B8.Value), CSng(var_EC.Value))
  loc_168EFE9:   var_94.MoveNext
  loc_168EFEE:   GoTo loc_168EEB5
  loc_168EFF1: End If
  loc_168F00E: Set var_B4 = Me.Txt
  loc_168F014: Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, "Delete From RoomDiscount WHERE Code='", var_1CC, -1)
  loc_168F02B: var_17C = var_E8 & Trim(CVar(var_B8)) 
  loc_168F034: var_194 = var_17C & "' And LogSite_Code='" 
  loc_168F055: unk_547249.Execute CStr(var_194 & CVar(MemVar_1F92078) & "'"), CSng(var_17C), CStr(var_194)
  loc_168F092: Set var_B4 = Me.Txt
  loc_168F098: Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, "Delete From Comp_PlanDet WHERE CompanyCode='", var_1CC)
  loc_168F0AF: var_17C = -1 & Trim(CVar(var_B8)) 
  loc_168F0C2: var_1A4 = var_17C & "' And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_168F0D9: unk_547249.Execute CStr(var_1A4 & "'"), var_E8, CDate(var_1A4)
  loc_168F116: Set var_B4 = Me.Txt
  loc_168F11C: Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, "Delete From Comp_Inclusive WHERE CompanyCode='")
  loc_168F146: var_1A4 = var_1CC & Trim(CVar(var_B8)) & "' And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_168F15D: unk_547249.Execute CStr(var_1A4 & "'"), -1, var_E8
  loc_168F185: If (MemVar_1F92078 = "HO") Then
  loc_168F19C:   var_BC = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_168F1A3:   var_C0 = var_BC & "' and V_Type='"
  loc_168F1C2:   Set var_B4 = Me.Txt
  loc_168F1C8:   Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_118, var_C0 & "F_AO" & "' and SubCode='")
  loc_168F1D0:   var_E4 = var_B8.Text
  loc_168F1D9:   var_1D0 = -1 & var_118
  loc_168F1E9:   unk_547249.Execute var_1D0 & "' Order by V_SNo", var_E8, 
  loc_168F1F4:   Set var_B0 = var_E8
  loc_168F217: Else
  loc_168F22B:   var_BC = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_168F243:   Set var_B4 = Me.Txt
  loc_168F249:   Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_C0, var_BC & "' and SubCode='")
  loc_168F251:   var_E4 = var_B8.Text
  loc_168F25A:   var_118 = -1 & var_C0
  loc_168F278:   unk_547249.Execute var_118 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_E8, 
  loc_168F283:   Set var_B0 = var_E8
  loc_168F2A3:   ' Referenced from:   168F3A9
  loc_168F2A3: End If
  loc_168F2B2: If Not(var_B0.EOF) Then
  loc_168F2CF:   var_B8 = var_B0.Fields.Item("DocID")
  loc_168F2D7:   var_E4 = var_B8.Value
  loc_168F2E1:   var_1F4 = 0
  loc_168F2F4:   var_1EC = 0
  loc_168F2FF:   var_1E8 = 0
  loc_168F312:   var_1E0 = 0
  loc_168F31D:   var_1D4 = 0
  loc_168F330:   var_1D0 = 0
  loc_168F367:   var_C0 = "DocId"
  loc_168F379:   Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGER", var_C0, &HC8, CStr(var_E4), 0, 0, 0)
  loc_168F3A4:   var_B0.MoveNext
  loc_168F3A9:   GoTo loc_168F2A3
  loc_168F3AC: End If
  loc_168F3B1: Set var_B0 = Nothing
  loc_168F3CF: var_C4 = "Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '"
  loc_168F3E0: Set var_B4 = Me.Txt
  loc_168F3E6: Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_C0, var_C4, var_E4, -1, var_E8)
  loc_168F3EE: var_1D0 = var_B8.Text
  loc_168F3FE: var_11C = 0 & var_C0 & "'"
  loc_168F407: unk_547249.Execute var_11C, var_1D4, var_1E0
  loc_168F433: Set var_B4 = Me.Txt
  loc_168F439: Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_C4)
  loc_168F441: 0 = var_B8.Text
  loc_168F454: Set var_E8 = Me.Txt
  loc_168F45A: Call 0.Method_Proc_22_94_16904FC0 (CInt(1), var_EC, var_11C)
  loc_168F462: var_1E8 = var_EC.Text
  loc_168F481: var_C0 = "SubGroup"
  loc_168F490: Call Proc_22_92_15A4D0C("Edit", var_C0, var_C4, var_11C, "E")
  loc_168F4C6: unk_547249.Execute global_160, var_E4, -1
  loc_168F4F9: For var_1F8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1F8 'Byte
  loc_168F504:   var_D4 = CVar(CLng(var_8C)) 'Long
  loc_168F53C:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_168F54C:     var_D4 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='"
  loc_168F55C:     Set var_B4 = Me.Txt
  loc_168F562:     Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_D4, var_1A4, -1, var_E8)
  loc_168F590:     unk_547249.Execute CStr(CVar(CLng(3)) & Trim(CVar(var_B8)) & "'"), var_D4, CByte(1)
  loc_168F59B:     Set var_98 = var_E8
  loc_168F5C9:     If (var_98.RecordCount > 0) Then
  loc_168F5D1:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_168F5D9:       var_130 = CVar(CLng(1)) 'Long
  loc_168F5F9:       var_160 = CVar(CLng(var_8C)) 'Long
  loc_168F601:       var_218 = CVar(CLng(1)) 'Long
  loc_168F610:       var_110 = Me.FGrid.TextMatrix)
  loc_168F61B:       var_194 = CVar(CStr(var_110)) 'String
  loc_168F626:       var_17C = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_168F64E:       Call Proc_22_87_10BCAE0(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_194)))
  loc_168F659:       global_76 = var_C0
  loc_168F69D:       If (Trim(global_76) = vbNullString) Then
  loc_168F6B9:         MsgBox("Pl. Configur Numbring System ", 0, var_110, CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_194)
  loc_168F6CC:       Else
  loc_168F6E8:         var_E4 = Me.FGrid.TextMatrix)
  loc_168F70A:         Set var_B8 = Me.FGrid
  loc_168F726:         var_17C = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_168F747:         var_1BC = CDate(CDate(IIf((CStr(var_E4) = vbNullString), CVar(CLng(3)) & Trim(CVar(var_B8)), CVar(CStr(var_B8.TextMatrix))))))
  loc_168F74E:         Proc_183_7_EB0C44(var_1CC, var_1BC, CVar(CLng(1)), CVar(CLng(var_8C)), var_E4, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_168F767:         var_BC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_168F76E:         var_C0 = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_168F775:         var_C4 = var_C0 & MemVar_1F92078
  loc_168F7A7:         unk_547249.Execute CStr(CVar(var_C4 & "' AND V_Type='" & "F_AO" & "' AND ") & var_1CC & " BETWEEN DATE_FROM AND DATE_TO"), var_2B8, -1
  loc_168F81B:         If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_168F821:           var_A8 = "AmtCr"
  loc_168F832:           Set var_B4 = Me.Txt
  loc_168F838:           Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_C4, CVar(CLng(4)), CVar(CLng(var_8C)), var_E8, var_C0)
  loc_168F840:           var_218 = var_B8.Text
  loc_168F84A:           var_D4 = CVar(CLng(var_8C)) 'Long
  loc_168F852:           var_130 = CVar(CLng(3)) 'Long
  loc_168F874:           var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_168F8A3:           var_208 = CVar(CLng(var_8C)) 'Long
  loc_168F8BA:           var_110 = Me.FGrid.TextMatrix)
  loc_168F8F3:           Proc_183_0_1279094(MemVar_1F921DC, var_C4, CDbl(0), var_2C0, CStr(var_98.Fields.Item("GroupCode").Value), CDate(CStr(var_110)), var_110, CVar(CLng(1)))
  loc_168F91E:         Else
  loc_168F921:           var_A8 = "AmtDr"
  loc_168F932:           Set var_B4 = Me.Txt
  loc_168F938:           Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_C4, var_208, var_2C0, var_130)
  loc_168F940:           var_D4 = var_B8.Text
  loc_168F94A:           var_D4 = CVar(CLng(var_8C)) 'Long
  loc_168F952:           var_130 = CVar(CLng(3)) 'Long
  loc_168F974:           var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_168F989:           var_EC = var_98.Fields
  loc_168F9A3:           var_208 = CVar(CLng(var_8C)) 'Long
  loc_168F9BA:           var_110 = Me.FGrid.TextMatrix)
  loc_168F9F3:           Proc_183_0_1279094(MemVar_1F921DC, var_C4, var_2C0, CDbl(0), CStr(var_EC.Item("GroupCode").Value), CDate(CStr(var_110)), var_110, CVar(CLng(1)))
  loc_168FA1B:         End If
  loc_168FA37:         var_E4 = Me.FGrid.TextMatrix)
  loc_168FA5F:         var_110 = Me.FGrid.TextMatrix)
  loc_168FA6A:         var_194 = CVar(CStr(var_110)) 'String
  loc_168FA75:         var_17C = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_168FA7D:         var_2CC = CStr(var_E4)
  loc_168FA97:         Proc_183_7_EB0C44(var_1BC, IIf((var_2CC = vbNullString), var_EC.Item("GroupCode").Value, var_194), CVar(CLng(1)), CVar(CLng(var_8C)), var_E4, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_168FAAA:         Set var_E8 = Me.Txt
  loc_168FAB0:         Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_EC, var_2D0, var_208, var_2C0)
  loc_168FAB8:         var_130 = var_EC.Text
  loc_168FAC2:         var_2A8 = CVar(CLng(var_8C)) 'Long
  loc_168FACA:         var_300 = CVar(CLng(3)) 'Long
  loc_168FAEC:         var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_168FB0B:         var_3B4 = Me.FGrid.TextMatrix)
  loc_168FB22:         Proc_183_7_EB0C44(var_454, MemVar_1F920EC, var_3B4, CVar(CLng(2)), CVar(CLng(var_8C)), var_16C)
  loc_168FB39:         var_138 = var_98.Fields
  loc_168FB90:         var_C0 = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_168FBE0:         var_2C8 = var_C0 & global_76 & "'," & CStr(var_8C) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F92070
  loc_168FBFD:         var_298 = CVar(var_2D0) 'String
  loc_168FC31:         var_3F4 = CVar(var_2C8 & "',") & var_1BC & ",'" & var_298 & "'," & CVar(var_16C) & ",'" & CVar(CStr(var_3B4)) & "','" 
  loc_168FC54:         var_484 = var_3F4 & CVar(MemVar_1F920C8) & "'," & var_454 & ",'E','" 
  loc_168FC7E:         var_544 = var_484 & var_138.Item("GroupCode").Value & "','" & var_98.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) 
  loc_168FC95:         unk_547249.Execute CStr(var_544 & " ')"), var_588, -1
  loc_168FD20:       Else
  loc_168FD39:         MsgBox("Group Not Defined", 0, var_110, var_EC.Item("GroupCode").Value, var_194)
  loc_168FD4C:       Else
  loc_168FD4C:       End If
  loc_168FD4F:     Next var_1F8 'Byte
  loc_168FD7D:     For var_590 = CByte(1) To CByte((CLng(Me.Fgrid1.Rows) - 1)):     var_8C = var_590 'Byte
  loc_168FD88:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_168FD90:       var_130 = CVar(CLng(0)) 'Long
  loc_168FDAA:       var_BC = CStr(Me.Fgrid1.TextMatrix))
  loc_168FDB2:       var_248 = (var_BC <> vbNullString)
  loc_168FDCC:       Set var_B8 = Me.Fgrid1
  loc_168FDE3:       var_194 = Trim(CVar(CStr(var_B8.TextMatrix))))
  loc_168FE12:       If CBool(CVar(CLng(2)) And (var_194 <> vbNullString)) Then
  loc_168FE23:         Set var_B4 = Me.Txt
  loc_168FE29:         Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_BC, CVar(CLng(var_8C)))
  loc_168FE31:         var_248 = var_B8.Text
  loc_168FE3B:         var_D4 = CVar(CLng(var_8C)) 'Long
  loc_168FE43:         var_130 = CVar(CLng(2)) 'Long
  loc_168FE52:         var_E4 = Me.Fgrid1.TextMatrix)
  loc_168FE6B:         var_218 = CVar(CLng(3)) 'Long
  loc_168FE8D:         var_16C = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_168FEBF:         var_184 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_168FED0:         Set var_134 = Me.Txt
  loc_168FED6:         Call 0.Method_Proc_22_94_16904FC0 (CInt(&H1C), var_138, var_2CC, var_184, CVar(CLng(4)), CVar(CLng(var_8C)), var_16C)
  loc_168FEDE:         var_218 = var_138.Text
  loc_168FEEE:         Proc_6_7_F25D88(var_194, MemVar_1F920EC, CVar(CLng(var_8C)), var_E4)
  loc_168FF07:         var_C0 = "INSERT INTO RoomDiscount (Code,RoomCat,Adult,Discount,DiscType,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC
  loc_168FF62:         var_1A4 = CVar(var_C0 & "','" & CStr(var_E4) & "'," & CStr(var_16C) & "," & CStr(var_184) & ",'" & var_2CC & "','" & MemVar_1F92070 & "',") 'String
  loc_168FF92:         unk_547249.Execute CStr(var_1A4 & var_194 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_298, -1
  loc_168FFEA:       End If
  loc_168FFED:     Next var_590 'Byte
  loc_169001B:     For var_59C = CByte(1) To CByte((CLng(Me.FgridPlan.Rows) - 1)):     var_8C = var_59C 'Byte
  loc_1690026:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_169002B:       var_130 = 2
  loc_1690049:       var_BC = CStr(Me.FgridPlan.TextMatrix))
  loc_169005A:       If (var_BC <> vbNullString) Then
  loc_169006B:         Set var_B4 = Me.Txt
  loc_1690071:         Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_BC)
  loc_1690079:         var_130 = var_B8.Text
  loc_1690083:         var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690088:         var_130 = 2
  loc_16900B6:         var_208 = CVar(CLng(var_8C)) 'Long
  loc_16900BB:         var_228 = 3
  loc_16900CE:         var_1CC = Me.FgridPlan.TextMatrix)
  loc_16900F7:         var_2B8 = Me.FgridPlan.TextMatrix)
  loc_169010E:         Proc_6_7_F25D88(var_3F4, MemVar_1F920EC, var_2B8, 5, CVar(CLng(var_8C)), var_1CC)
  loc_1690127:         var_C0 = "INSERT INTO Comp_PlanDet (CompanyCode,RoomCat,PLanCode,PlanAmt,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC
  loc_169015C:         var_320 = CVar(var_C0 & "','") & Trim(CVar(CStr(Me.FgridPlan.TextMatrix)))) & "','" & CVar(CStr(var_1CC)) & "'," & CVar(CStr(var_2B8)) 
  loc_1690178:         var_3B4 = var_320 & ",'" & CVar(MemVar_1F92070) & "','" 
  loc_16901BC:         unk_547249.Execute CStr(var_3B4 & CVar(MemVar_1F920C8) & "'," & var_3F4 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_484, -1
  loc_169020C:       End If
  loc_169020F:     Next var_59C 'Byte
  loc_169023D:     For var_5A0 = CByte(1) To CByte((CLng(Me.FGridIncl.Rows) - 1)):     var_8C = var_5A0 'Byte
  loc_1690248:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690250:       var_130 = CVar(CLng(2)) 'Long
  loc_169026A:       var_BC = CStr(Me.FGridIncl.TextMatrix))
  loc_1690288:       Set var_B8 = Me.FGridIncl
  loc_16902B7:       If (CVar(CLng(1)) And (CStr(var_B8.TextMatrix)) = "�")) Then
  loc_16902C8:         Set var_B4 = Me.Txt
  loc_16902CE:         Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8, var_BC, CVar(CLng(var_8C)))
  loc_16902D6:         (var_BC <> vbNullString) = var_B8.Text
  loc_16902E0:         var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690318:         Proc_6_7_F25D88(var_2B8, MemVar_1F920EC, CVar(CLng(2)), var_D4)
  loc_1690338:         var_194 = CVar("INSERT INTO Comp_Inclusive (CompanyCode,Inclusive,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC & "','") 'String
  loc_169036D:         var_298 = var_194 & Trim(CVar(CStr(Me.FGridIncl.TextMatrix)))) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_169039E:         unk_547249.Execute CStr(var_298 & var_2B8 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_3B4, -1
  loc_16903DA:       End If
  loc_16903DD:     Next var_5A0 'Byte
  loc_16903E9:     unk_547249.CommitTrans
  loc_16903F9:     Me.Requery -1
  loc_1690400:     var_8A = 0
  loc_1690411:     Set var_B4 = Me.Txt
  loc_1690417:     Call 0.Method_Proc_22_94_16904FC0 (CInt(0), var_B8)
  loc_1690443:     Me.Requery -1
  loc_1690470:     Me.Find "SearchCode = '" & var_B8.Text & "'", 0, 1
  loc_1690491:     var_BC = "INI"
  loc_169049F:     Call Proc_22_78_F5E734(Proc_5_1_100CB50(var_BC, Me, global_108))
  loc_16904AA:     Call Proc_22_91_18269A4(var_D4)
  loc_16904B4:     Set var_88 = Nothing
  loc_16904BC:     Set var_98 = Nothing
  loc_16904BF:     Exit Sub
  loc_16904C0:   End If
  loc_16904C0: End If
  loc_16904C0: ' Referenced from: 168ED90
  loc_16904C6: If (var_8A = &HFF) Then
  loc_16904CF:   unk_547249.RollbackTrans
  loc_16904D4: End If
  loc_16904DA: Call 0.Method_arg_50 (var_BC)
  loc_16904EF: Proc_183_57_104AA84(var_BC, "UpdateDataBaseEdit")
  loc_16904FB: Exit Sub
End Sub

Public Sub Proc_22_95_1285EBC
  'Data Table: 547210
  Dim Me As Recordset15
  Dim unk_547249 As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_130 As String
  Dim var_BC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_190 As Variant
  loc_128592C: On Error Goto loc_1285E7E
  loc_128593A: If (global_60 = "Y") Then
  loc_128595E:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_128596E:   Exit Sub
  loc_128596F: End If
  loc_12859A6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_12859B2:   var_120 = Me.AbsolutePosition
  loc_12859BE:   var_94 = CVar(var_120) 'Variant
  loc_12859CB:   unk_547249.BeginTrans var_120
  loc_1285A01:   Set var_128 = Me.Txt
  loc_1285A07:   Call 0.Method_Proc_22_95_1285EBC0 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_1285A0F:   var_BC = var_12C.Text
  loc_1285A18:   var_138 = -1 & var_130
  loc_1285A28:   unk_547249.Execute var_138 & "'", var_140, &HFF
  loc_1285A33:   Set var_9C = var_140
  loc_1285A4F:   ' Referenced from: 1285B88
  loc_1285A5E:   If Not(var_9C.EOF) Then
  loc_1285A7B:     var_12C = var_9C.Fields.Item("subcode")
  loc_1285A83:     var_BC = var_12C.Value
  loc_1285A9A:     var_140 = var_9C.Fields
  loc_1285AD1:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_1285AF8:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_1285B1F:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_1285B50:     Proc_183_0_1279094(MemVar_1F921DC, CStr(var_BC), CSng(var_140.Item("AmtCr").Value))
  loc_1285B83:     var_9C.MoveNext
  loc_1285B88:     GoTo loc_1285A4F
  loc_1285B8B:   End If
  loc_1285B9F:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO"
  loc_1285BB7:   Set var_128 = Me.Txt
  loc_1285BBD:   Call 0.Method_Proc_22_95_1285EBC0 (CInt(0), var_12C, var_130, var_124 & "' and SubCode= '", var_BC)
  loc_1285BC5:   -1 = var_12C.Text
  loc_1285BDE:   unk_547249.Execute var_140 & var_130 & "'", CSng(var_FC), CStr(var_11C)
  loc_1285C1A:   Set var_128 = Me.Txt
  loc_1285C20:   Call 0.Method_Proc_22_95_1285EBC0 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='")
  loc_1285C28:   var_BC = var_12C.Text
  loc_1285C31:   var_130 = -1 & var_124
  loc_1285C41:   unk_547249.Execute var_130 & "'", var_140, CDate(var_190)
  loc_1285C78:   Set var_128 = Me.Txt
  loc_1285C7E:   Call 0.Method_Proc_22_95_1285EBC0 (CInt(0), var_12C, "Delete From RoomDiscount WHERE Code='")
  loc_1285CBF:   unk_547249.Execute CStr(var_1B8 & Trim(CVar(var_12C)) & "' and LogSite_Code='" & CVar(MemVar_1F92078) & "'"), -1, var_140
  loc_1285CFC:   Set var_128 = Me.Txt
  loc_1285D02:   Call 0.Method_Proc_22_95_1285EBC0 (CInt(0), var_12C, "Delete From Comp_PlanDet WHERE CompanyCode='")
  loc_1285D43:   unk_547249.Execute CStr(var_1B8 & Trim(CVar(var_12C)) & "' and LogSite_Code='" & CVar(MemVar_1F92078) & "'"), -1, var_140
  loc_1285D80:   Set var_128 = Me.Txt
  loc_1285D86:   Call 0.Method_Proc_22_95_1285EBC0 (CInt(0), var_12C, "Delete From Comp_Inclusive WHERE CompanyCode='")
  loc_1285DBD:   var_124 = CStr(var_1B8 & Trim(CVar(var_12C)) & "' and LogSite_Code='" & CVar(MemVar_1F92078) & "'")
  loc_1285DC7:   unk_547249.Execute var_124, -1, var_140
  loc_1285DED:   unk_547249.CommitTrans
  loc_1285DF4:   var_96 = 0
  loc_1285E02:   Me.Requery -1
  loc_1285E1E:   If (Me.RecordCount > 0) Then
  loc_1285E38:     If (Me.AbsolutePosition > 1) Then
  loc_1285E43:       var_BC = (var_94 - 1)
  loc_1285E4F:       Me.AbsolutePosition = CLng(CVar(var_12C))
  loc_1285E54:     End If
  loc_1285E54:   End If
  loc_1285E70:   Proc_5_0_110649C(&HFF, Me, global_108)
  loc_1285E78:   Call Proc_22_91_18269A4(0)
  loc_1285E7D: End If
  loc_1285E7D: Exit Sub
  loc_1285E7E: ' Referenced from: 128592C
  loc_1285E84: If (var_96 = &HFF) Then
  loc_1285E8D:   unk_547249.RollbackTrans
  loc_1285E92: End If
  loc_1285E98: Call 0.Method_arg_50 (var_124)
  loc_1285EAD: Proc_183_57_104AA84(var_124, "UpdateDataBaseDelete")
  loc_1285EB9: Exit Sub
End Sub

Public Sub Proc_22_96_E08300
  'Data Table: 547210
  loc_E082F0: Call Proc_22_81_F6C2B0()
  loc_E082F8: Call Me.SetFocus
  loc_E082FE: Exit Sub
End Sub

Public Sub Proc_22_97_10DC8C4
  'Data Table: 547210
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_8A As Integer
  Dim var_C4 As String
  Dim unk_54724B As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Long
  Dim var_AC As Variant
  Dim var_F4 As Long
  Dim var_118 As Variant
  loc_10DC5CF: Me.FgridPlan.Cols = 6
  loc_10DC5EA: Me.FgridPlan.Rows = 2
  loc_10DC5F6: Set var_B0 = Me.FgridPlan
  loc_10DC5FC: var_C0 = var_B0.Row
  loc_10DC606: var_8A = CInt(CLng(var_C0))
  loc_10DC623: var_C4 = "SELECT RoomCat.Code,RoomCat.Name as CatName,PlanMast.Code as PLanCode,PLanMast.Name as PlanName,PlanMast.Total as PlanAmt FROM Roomcat inner Join PLanMast on PLanMast.RoomCat=RoomCat.Code where (RoomCat.LOGSITE_CODE='" & MemVar_1F92078
  loc_10DC633: unk_54724B.Execute var_C4 & "' or RoomCat.LOGSITE_CODE='HO') order by RoomCat.Name", var_C0, -1
  loc_10DC63E: Set var_88 = var_B0
  loc_10DC662: If (var_88.RecordCount > 0) Then
  loc_10DC665:   ' Referenced from: 10DC89B
  loc_10DC674:   If Not(var_88.EOF) Then
  loc_10DC677:     var_9C = vbNullString
  loc_10DC681:     Set var_B0 = Me.FgridPlan
  loc_10DC696:     Set var_D4 = Me.FgridPlan
  loc_10DC69D:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_10DC6A2:     var_E4 = 0
  loc_10DC6B0:     var_C0 = CVar(CStr(var_8A)) 'String
  loc_10DC6B7:     LateIdCallSt
  loc_10DC6C6:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DC6CB:     var_F4 = 1
  loc_10DC6FF:     var_118 = CVar(CStr(var_88.Fields.Item("CatName").Value)) 'String
  loc_10DC706:     LateIdCallSt
  loc_10DC720:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DC725:     var_F4 = 2
  loc_10DC759:     var_118 = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_10DC760:     LateIdCallSt
  loc_10DC77A:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DC77F:     var_F4 = 4
  loc_10DC7B3:     var_118 = CVar(CStr(var_88.Fields.Item("PlanName").Value)) 'String
  loc_10DC7BA:     LateIdCallSt
  loc_10DC7D4:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DC7D9:     var_F4 = 3
  loc_10DC80D:     var_118 = CVar(CStr(var_88.Fields.Item("PlanCode").Value)) 'String
  loc_10DC814:     LateIdCallSt
  loc_10DC82E:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DC833:     var_F4 = 5
  loc_10DC867:     var_118 = CVar(CStr(var_88.Fields.Item("PLANAmt").Value)) 'String
  loc_10DC86E:     LateIdCallSt
  loc_10DC886:     Set var_D4 = Nothing 
  loc_10DC890:     var_8A = (var_8A + 1)
  loc_10DC896:     var_88.MoveNext
  loc_10DC89B:     GoTo loc_10DC665
  loc_10DC89E:   End If
  loc_10DC8B1:   Me.FgridPlan.FixedRows = 1
  loc_10DC8B9: End If
  loc_10DC8BE: Set var_88 = Nothing
  loc_10DC8C1: Exit Sub
End Sub

Public Sub Proc_22_98_1012540
  'Data Table: 547210
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As TextBox
  Dim var_140 As Integer
  Dim var_100 As String
  Dim unk_54724B As Connection15
  Dim var_12C As Recordset15
  Dim var_130 As Fields15
  Dim var_144 As Field20
  Dim var_118 As String
  loc_101237D: For var_A0 = 1 To CInt((CLng(Me.FGridIncl.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1012396:   Me.FGridIncl.Row = CVar(CLng(var_86))
  loc_10123B0:   Me.FGridIncl.Col = CVar(CLng(1))
  loc_10123C8:   Me.FGridIncl.CellFontName = "WINGDINGS"
  loc_10123E2:   Me.FGridIncl.CellFontSize = CVar(CDbl(&HE))
  loc_10123EE:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_10123F6:   var_D0 = CVar(CLng(2)) 'Long
  loc_1012405:   var_9C = Me.FGridIncl.TextMatrix)
  loc_101241F:   Set var_EC = Me.Txt
  loc_1012425:   Call 0.Method_Proc_22_98_10125400 (CInt(0), var_F0, var_F4, var_9C)
  loc_101242D:   var_D0 = var_F0.Text
  loc_1012438:   var_140 = 0
  loc_101246E:   var_100 = "SELECT Count(*) FROM Comp_Inclusive where Inclusive='" & CStr(var_9C) & "' And CompanyCode='" & var_F4 & "' And (LOGSITE_CODE='"
  loc_1012485:   unk_54724B.Execute var_100 & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_128, -1
  loc_101248D:   var_12C = var_12C.Fields
  loc_1012495:   var_140 = var_130.Item(var_130)
  loc_101249D:   var_144 = var_144.Value
  loc_10124D8:   If (var_154 > 0) Then
  loc_10124DF:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_10124E7:     var_D0 = CVar(CLng(1)) 'Long
  loc_10124EC:     var_118 = "�"
  loc_10124F6:     Set var_8C = Me.FGridIncl
  loc_10124FC:     LateIdCallSt
  loc_101250A:   Else
  loc_101250E:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1012516:     var_D0 = CVar(CLng(1)) 'Long
  loc_101251B:     var_118 = " "
  loc_1012525:     Set var_8C = Me.FGridIncl
  loc_101252B:     LateIdCallSt
  loc_1012536:   End If
  loc_1012539: Next var_A0 'Integer
  loc_101253E: Exit Sub
End Sub
