VERSION 5.00
Begin VB.Form PrEmployee
  Caption = "Employee Master"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "PrEmployee.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
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
  Begin TextBox Text1
    Index = 51
    ForeColor = &HFF0000&
    Left = 1680
    Top = 6720
    Width = 3540
    Height = 285
    TabIndex = 20
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
  Begin TextBox Text1
    Index = 50
    ForeColor = &HFF0000&
    Left = 1680
    Top = 6405
    Width = 3540
    Height = 285
    TabIndex = 19
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
  Begin DataGrid DGDepartment
    Left = 11940
    Top = 5925
    Width = 4185
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 128
  End
  Begin TextBox Text1
    Index = 49
    ForeColor = &HFF0000&
    Left = 1680
    Top = 1995
    Width = 3540
    Height = 285
    TabIndex = 3
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
  Begin CommandButton CmdImgDelete
    Caption = "Delete"
    Left = 11595
    Top = 6660
    Width = 765
    Height = 255
    Visible = 0   'False
    TabIndex = 126
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame Frame_DETAIL
    Caption = "Salary Details"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 5475
    Top = 1365
    Width = 9570
    Height = 3465
    TabIndex = 90
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Text1
      Index = 45
      ForeColor = &HFF0000&
      Left = 6000
      Top = 2355
      Width = 990
      Height = 285
      TabIndex = 45
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
    Begin TextBox Text1
      Index = 44
      ForeColor = &HFF0000&
      Left = 3750
      Top = 2040
      Width = 990
      Height = 285
      TabIndex = 37
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
    Begin TextBox Text1
      Index = 35
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2985
      Width = 990
      Height = 285
      TabIndex = 31
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
    Begin TextBox Text1
      Index = 33
      Left = 10440
      Top = 1035
      Width = 990
      Height = 270
      Visible = 0   'False
      TabIndex = 92
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin TextBox Text1
      Index = 32
      Left = 10440
      Top = 1320
      Width = 990
      Height = 270
      Visible = 0   'False
      TabIndex = 91
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin TextBox Text1
      Index = 31
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2670
      Width = 990
      Height = 285
      TabIndex = 30
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
    Begin TextBox Text1
      Index = 7
      ForeColor = &HFF0000&
      Left = 6000
      Top = 2040
      Width = 990
      Height = 285
      TabIndex = 44
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
    Begin TextBox Text1
      Index = 8
      ForeColor = &HFF0000&
      Left = 6000
      Top = 1725
      Width = 990
      Height = 285
      TabIndex = 43
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
    Begin TextBox Text1
      Index = 9
      ForeColor = &HFF0000&
      Left = 1320
      Top = 465
      Width = 990
      Height = 285
      TabIndex = 23
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
    Begin TextBox Text1
      Index = 10
      ForeColor = &HFF0000&
      Left = 1320
      Top = 780
      Width = 990
      Height = 285
      TabIndex = 24
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
    Begin TextBox Text1
      Index = 11
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1095
      Width = 990
      Height = 285
      TabIndex = 25
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
    Begin TextBox Text1
      Index = 12
      ForeColor = &HFF0000&
      Left = 3750
      Top = 1725
      Width = 990
      Height = 285
      TabIndex = 36
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
    Begin TextBox Text1
      Index = 13
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1725
      Width = 990
      Height = 285
      TabIndex = 27
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
    Begin TextBox Text1
      Index = 14
      ForeColor = &HFF0000&
      Left = 3750
      Top = 1410
      Width = 990
      Height = 285
      TabIndex = 35
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
    Begin TextBox Text1
      Index = 15
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1410
      Width = 990
      Height = 285
      TabIndex = 26
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
    Begin TextBox Text1
      Index = 16
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2355
      Width = 990
      Height = 285
      TabIndex = 29
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
    Begin TextBox Text1
      Index = 17
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2040
      Width = 990
      Height = 285
      TabIndex = 28
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
    Begin TextBox Text1
      Index = 20
      ForeColor = &HFF0000&
      Left = 3750
      Top = 465
      Width = 990
      Height = 285
      TabIndex = 32
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
    Begin TextBox Text1
      Index = 21
      ForeColor = &HFF0000&
      Left = 3750
      Top = 780
      Width = 990
      Height = 285
      TabIndex = 33
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
    Begin TextBox Text1
      Index = 22
      ForeColor = &HFF0000&
      Left = 3750
      Top = 1095
      Width = 990
      Height = 285
      TabIndex = 34
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
    Begin TextBox Text1
      Index = 23
      Left = 8190
      Top = 780
      Width = 990
      Height = 270
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin TextBox Text1
      Index = 24
      ForeColor = &HFF0000&
      Left = 8190
      Top = 465
      Width = 990
      Height = 285
      TabIndex = 46
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
    Begin TextBox Text1
      Index = 25
      ForeColor = &HFF0000&
      Left = 8190
      Top = 1080
      Width = 990
      Height = 285
      TabIndex = 48
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
    End
    Begin TextBox Text1
      Index = 26
      ForeColor = &HFF0000&
      Left = 8190
      Top = 1395
      Width = 990
      Height = 285
      TabIndex = 49
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
    End
    Begin TextBox Text1
      Index = 27
      ForeColor = &HFF0000&
      Left = 8190
      Top = 1710
      Width = 990
      Height = 285
      TabIndex = 50
      BorderStyle = 0 'None
      MaxLength = 10
      Locked = -1  'True
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
      Index = 28
      ForeColor = &HFF0000&
      Left = 8190
      Top = 2025
      Width = 990
      Height = 285
      TabIndex = 51
      BorderStyle = 0 'None
      MaxLength = 10
      Locked = -1  'True
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
      Index = 18
      ForeColor = &HFF0000&
      Left = 6000
      Top = 1410
      Width = 990
      Height = 285
      TabIndex = 42
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
    Begin TextBox Text1
      Index = 19
      ForeColor = &HFF0000&
      Left = 6000
      Top = 1095
      Width = 990
      Height = 285
      TabIndex = 41
      BorderStyle = 0 'None
      MaxLength = 6
      Locked = -1  'True
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
      Caption = "P.F.(Y/N)"
      BackColor = &HC0C0C0&
      ForeColor = &HC00000&
      Left = 5055
      Top = 465
      Width = 1140
      Height = 240
      TabIndex = 39
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
    Begin TextBox Text1
      Index = 46
      ForeColor = &HFF0000&
      Left = 3750
      Top = 2355
      Width = 990
      Height = 285
      TabIndex = 38
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
    Begin CheckBox Check2
      Caption = "ESI (Y/N)"
      BackColor = &HC0C0C0&
      ForeColor = &HC00000&
      Left = 5055
      Top = 780
      Width = 1140
      Height = 240
      TabIndex = 40
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
    Begin Label Label1
      Caption = "OT Rate"
      Index = 47
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 5205
      Top = 2355
      Width = 765
      Height = 240
      TabIndex = 123
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Incr Month"
      Index = 45
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 285
      Top = 3000
      Width = 1005
      Height = 240
      TabIndex = 122
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Oth.Dedut."
      Index = 20
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2715
      Top = 1440
      Width = 1005
      Height = 240
      TabIndex = 121
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Conveyance"
      Index = 21
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 120
      Top = 1455
      Width = 1170
      Height = 240
      TabIndex = 120
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "VL Leave"
      Index = 43
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 9555
      Top = 1380
      Width = 825
      Height = 195
      Visible = 0   'False
      TabIndex = 119
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
    Begin Label Label1
      Caption = "DL Leave"
      Index = 42
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 9540
      Top = 1095
      Width = 840
      Height = 195
      Visible = 0   'False
      TabIndex = 118
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
    Begin Label Label1
      Caption = "Off day Allow"
      Index = 41
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2430
      Top = 2085
      Width = 1275
      Height = 240
      TabIndex = 117
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Increment"
      Index = 38
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 330
      Top = 2700
      Width = 960
      Height = 240
      TabIndex = 116
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Op.P.F.Bal."
      Index = 40
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 4890
      Top = 1095
      Width = 1080
      Height = 240
      TabIndex = 115
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Curr.P.F.Bal."
      Index = 39
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 4755
      Top = 1410
      Width = 1215
      Height = 240
      TabIndex = 114
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Curr.CL"
      Index = 34
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7410
      Top = 2040
      Width = 720
      Height = 240
      TabIndex = 113
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Curr.EL"
      Index = 33
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7425
      Top = 1725
      Width = 705
      Height = 240
      TabIndex = 112
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Op.CL"
      Index = 32
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7545
      Top = 1410
      Width = 585
      Height = 240
      TabIndex = 111
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Op.EL"
      Index = 31
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7560
      Top = 1095
      Width = 570
      Height = 240
      TabIndex = 110
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Tot.El.Allow."
      Index = 30
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 6930
      Top = 465
      Width = 1200
      Height = 240
      TabIndex = 109
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Tot.Cl.Allow."
      Index = 29
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 6915
      Top = 780
      Width = 1215
      Height = 240
      TabIndex = 108
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "OP Advance"
      Index = 28
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2550
      Top = 1110
      Width = 1170
      Height = 240
      TabIndex = 107
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Op Loan Inst"
      Index = 27
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2520
      Top = 825
      Width = 1200
      Height = 240
      TabIndex = 106
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Op.Loan"
      Index = 26
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2910
      Top = 510
      Width = 810
      Height = 240
      TabIndex = 105
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "L.T.A."
      Index = 23
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 735
      Top = 2085
      Width = 555
      Height = 240
      TabIndex = 104
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Medical"
      Index = 22
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 540
      Top = 2400
      Width = 750
      Height = 240
      TabIndex = 103
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Oth.Allow."
      Index = 19
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 300
      Top = 1800
      Width = 990
      Height = 240
      TabIndex = 102
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "TDS Amt"
      Index = 18
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2880
      Top = 1770
      Width = 825
      Height = 240
      TabIndex = 101
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "H.R.A."
      Index = 17
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 705
      Top = 1140
      Width = 585
      Height = 240
      TabIndex = 100
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "D.A."
      Index = 16
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 900
      Top = 825
      Width = 390
      Height = 240
      TabIndex = 99
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Basic"
      Index = 15
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 780
      Top = 510
      Width = 510
      Height = 240
      TabIndex = 98
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "P.F.Code"
      Index = 14
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 5100
      Top = 1725
      Width = 870
      Height = 240
      TabIndex = 97
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "ESI Code"
      Index = 13
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 5100
      Top = 2040
      Width = 870
      Height = 240
      TabIndex = 96
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
    Begin Line Line2
      Index = 0
      X1 = 435
      Y1 = 390
      X2 = 4890
      Y2 = 390
    End
    Begin Label Label1
      Caption = "Earnings"
      Index = 36
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 1350
      Top = 120
      Width = 945
      Height = 270
      TabIndex = 95
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Deductions"
      Index = 37
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 3495
      Top = 135
      Width = 1215
      Height = 270
      TabIndex = 94
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Off Day"
      Index = 46
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2985
      Top = 2400
      Width = 690
      Height = 240
      TabIndex = 93
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
      Appearance = 0 'Flat
    End
  End
  Begin DataGrid DBGrid1
    Left = 5370
    Top = 1230
    Width = 10425
    Height = 4530
    Visible = 0   'False
    TabIndex = 52
  End
  Begin DataGrid DGAcName
    Left = 14745
    Top = 6555
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 70
  End
  Begin DataGrid DGLoan
    Left = 15300
    Top = 5610
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 74
  End
  Begin Frame FrmList
    Left = 16740
    Top = 2910
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 75
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 105
      Top = 75
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 76
    End
  End
  Begin DataGrid DGCategory
    Left = 14910
    Top = 4740
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 72
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10680
    Height = 450
    TabIndex = 86
  End
  Begin TextBox Text1
    Index = 48
    ForeColor = &HFF0000&
    Left = 3870
    Top = 7035
    Width = 495
    Height = 285
    TabIndex = 22
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
  Begin Frame Frame1
    Caption = "Remove Detail Of Employee:"
    Left = 405
    Top = 7875
    Width = 2955
    Height = 1185
    Visible = 0   'False
    TabIndex = 82
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdRemoveEmpDetail
      Caption = "Remove"
      Left = 435
      Top = 420
      Width = 2130
      Height = 525
      TabIndex = 83
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
  End
  Begin PictureBox Picture5
    Picture = "PrEmployee.frx":1082
    Left = 19905
    Top = 1920
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 81
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture4
    Picture = "PrEmployee.frx":13D0
    Left = 19905
    Top = 1605
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 80
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "PrEmployee.frx":171E
    Left = 19905
    Top = 1305
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 79
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "PrEmployee.frx":1A6C
    Left = 19905
    Top = 1020
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 78
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSFlexGrid FGPoint
    Left = 18720
    Top = 2895
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 77
  End
  Begin DataGrid DGDesignation
    Left = 15300
    Top = 3840
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 69
  End
  Begin TextBox Text1
    Index = 47
    ForeColor = &HFF0000&
    Left = 1680
    Top = 5145
    Width = 3540
    Height = 285
    TabIndex = 14
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
    Index = 43
    ForeColor = &HFF0000&
    Left = 1680
    Top = 3570
    Width = 3540
    Height = 285
    TabIndex = 8
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
    Index = 42
    ForeColor = &HFF0000&
    Left = 3975
    Top = 5460
    Width = 1245
    Height = 285
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
  End
  Begin TextBox Text1
    Index = 41
    ForeColor = &HFF0000&
    Left = 1680
    Top = 5460
    Width = 1275
    Height = 285
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
  End
  Begin TextBox Text1
    Index = 40
    ForeColor = &HFF0000&
    Left = 3960
    Top = 4515
    Width = 1260
    Height = 285
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
  End
  Begin TextBox Text1
    Index = 39
    ForeColor = &HFF0000&
    Left = 1680
    Top = 7035
    Width = 1365
    Height = 285
    TabIndex = 21
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
  End
  Begin TextBox Text1
    Index = 38
    ForeColor = &HFF0000&
    Left = 1680
    Top = 4830
    Width = 3540
    Height = 285
    TabIndex = 13
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
    Index = 37
    ForeColor = &HFF0000&
    Left = 1680
    Top = 2310
    Width = 3540
    Height = 285
    TabIndex = 4
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
    Index = 36
    ForeColor = &HFF0000&
    Left = 1680
    Top = 4515
    Width = 1275
    Height = 285
    TabIndex = 11
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
  End
  Begin TextBox Text1
    Index = 34
    ForeColor = &HFF0000&
    Left = 1680
    Top = 5775
    Width = 3540
    Height = 285
    TabIndex = 17
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
  Begin TextBox Text1
    Index = 30
    ForeColor = &HFF0000&
    Left = 1680
    Top = 3255
    Width = 3540
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
  Begin TextBox Text1
    Index = 29
    ForeColor = &HFF0000&
    Left = 1680
    Top = 6090
    Width = 3540
    Height = 285
    TabIndex = 18
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
  Begin TextBox Text1
    Index = 5
    ForeColor = &HFF0000&
    Left = 1680
    Top = 4200
    Width = 3540
    Height = 285
    TabIndex = 10
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
  Begin TextBox Text1
    Index = 6
    ForeColor = &HFF0000&
    Left = 1680
    Top = 3885
    Width = 3540
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
  Begin TextBox Text1
    Index = 1
    ForeColor = &HFF0000&
    Left = 1680
    Top = 1365
    Width = 3540
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
  Begin TextBox Text1
    Index = 0
    Left = 525
    Top = 735
    Width = 1005
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox Text1
    Index = 2
    ForeColor = &HFF0000&
    Left = 1680
    Top = 1680
    Width = 3540
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
  Begin TextBox Text1
    Index = 3
    ForeColor = &HFF0000&
    Left = 1680
    Top = 2625
    Width = 3540
    Height = 285
    TabIndex = 5
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
  Begin TextBox Text1
    Index = 4
    ForeColor = &HFF0000&
    Left = 1680
    Top = 2940
    Width = 3540
    Height = 285
    TabIndex = 6
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
  Begin CommonDialog CDlg
  End
  Begin Label Label1
    Caption = "Id Proof No."
    Index = 53
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 6765
    Width = 1125
    Height = 240
    TabIndex = 130
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
    Caption = "Id Proof"
    Index = 52
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 6450
    Width = 750
    Height = 240
    TabIndex = 129
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
    Caption = "Department"
    Index = 51
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 1995
    Width = 1110
    Height = 240
    TabIndex = 127
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
  Begin Image EmployeeImage
    Left = 5865
    Top = 5880
    Width = 1860
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Employee"
  End
  Begin Image IdProofImage
    Left = 7740
    Top = 5880
    Width = 3450
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Id Proof"
  End
  Begin Label LblEmpImg
    Caption = "Employee Image"
    ForeColor = &HFF0000&
    Left = 6090
    Top = 7770
    Width = 1425
    Height = 240
    TabIndex = 125
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblEmpIdProofImg
    Caption = "Id Proof Image"
    ForeColor = &HFF0000&
    Left = 8880
    Top = 7770
    Width = 1275
    Height = 240
    TabIndex = 124
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5670
    Top = 8520
    Width = 2790
    Height = 285
    TabIndex = 88
    Alignment = 2 'Center
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
    Left = 3615
    Top = 8550
    Width = 2880
    Height = 255
    TabIndex = 87
    Alignment = 2 'Center
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
    Caption = "(Y)es/(N)o"
    Index = 50
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 4395
    Top = 7080
    Width = 825
    Height = 225
    TabIndex = 85
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  End
  Begin Label Label1
    Caption = "Active"
    Index = 49
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 3210
    Top = 7080
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Loan A/C Name"
    Index = 48
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 5160
    Width = 1485
    Height = 285
    TabIndex = 73
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
    Caption = "Category"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 3570
    Width = 855
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Bank A/C No."
    Index = 44
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 5820
    Width = 1245
    Height = 240
    TabIndex = 68
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
    Caption = "Mobile No."
    Index = 25
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 3270
    Width = 1020
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "PAN No."
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 6135
    Width = 780
    Height = 240
    TabIndex = 66
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Resign.Dt"
    Index = 24
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 3000
    Top = 5475
    Width = 900
    Height = 240
    TabIndex = 65
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Designation"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 2325
    Width = 1125
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Marital Status"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 7080
    Width = 1305
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Spouse Name"
    Index = 10
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 4200
    Width = 1320
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Qualification"
    Index = 11
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 3885
    Width = 1215
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Joining Date"
    Index = 12
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 5490
    Width = 1200
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Salary A/C Name"
    Index = 35
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 4815
    Width = 1620
    Height = 285
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Code"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 60
    Top = 795
    Width = 450
    Height = 195
    Visible = 0   'False
    TabIndex = 58
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Employee Name"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 1380
    Width = 1560
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Sex"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 4485
    Width = 375
    Height = 255
    TabIndex = 56
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
    Caption = "Father's Name"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 1695
    Width = 1365
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Address"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 2670
    Width = 750
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Birth Dt."
    Index = 7
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 3045
    Top = 4515
    Width = 765
    Height = 240
    TabIndex = 53
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "PrEmployee"

Private global_78 As Integer
Private global_112 As Recordset15
Private global_80 As Double
Private global_88 As Double
Private global_52 As Variant

Private Sub CmdImgDelete_Click() 'EFDE54
  'Data Table: 521E38
  Dim var_88 As CommandButton
  Dim var_98 As Variant
  Dim var_DC As CommandButton
  Dim var_E4 As CommandButton
  Dim var_A8 As String
  loc_EFDD8A: Set var_88 = Me.CmdImgDelete
  loc_EFDD90: var_88.Visible = False
  loc_EFDDB6: Me.Global.LoadPicture var_98, var_A8, var_B8, var_C8, var_D8
  loc_EFDDCA: Set var_DC = Me.CmdImgDelete
  loc_EFDDD0: var_E0 = var_DC.Tag
  loc_EFDDE2: Call 0.Method_arg_218 (var_E4, CVar(var_E0))
  loc_EFDDF4: ).Picture = CVar(var_88)
  loc_EFDE15: Set var_88 = vbNullString(var_E0)
  loc_EFDE1B: var_88 = ).CommandButton.Tag
  loc_EFDE2D: Call 0.Method_arg_218 (var_DC)
  loc_EFDE3F: ).Tag = CVar(var_E0)
  loc_EFDE51: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F89A9C
  'Data Table: 521E38
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F89958: On Error Goto loc_F89A36
  loc_F8995F: Set var_A4 = Me.ListView
  loc_F899A9: Set var_BC = Me.Text1
  loc_F899AF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F899B7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F899E3: Me.FrmList.Visible = False
  loc_F899FD: var_A0 = CStr(Me.ListView.Tag)
  loc_F89A05: var_C8 = Val(var_A0)
  loc_F89A13: Set var_9C = Me.Text1
  loc_F89A19: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F89A21: var_A4.SetFocus
  loc_F89A35: Exit Sub
  loc_F89A36: ' Referenced from: F89958
  loc_F89A3E: Set var_88 = Err()
  loc_F89A44: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F89A55: If (var_CC <> 0) Then
  loc_F89A60:   Set var_88 = Err()
  loc_F89A66:   Call 0.Method_arg_2C (var_A0)
  loc_F89A87:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F89A9A: End If
  loc_F89A9A: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'EAFCE4
  'Data Table: 521E38
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  loc_EAFC67: If (Me.Check1.Value = 0) Then
  loc_EAFC77:   Set var_88 = Me.Text1
  loc_EAFC7D:   Call 0.Method_Check1_Validate0 (CInt(&H13), var_90)
  loc_EAFC85:   var_90.Locked = False
  loc_EAFC9F:   Set var_88 = Me.Text1
  loc_EAFCA5:   Call 0.Method_Check1_Validate0 (CInt(&H13), var_90)
  loc_EAFCAD:   var_90.Text = " "
  loc_EAFCBC: Else
  loc_EAFCC9:   Set var_88 = Me.Text1
  loc_EAFCCF:   Call 0.Method_Check1_Validate0 (CInt(&H13), var_90)
  loc_EAFCD7:   var_90.Locked = False
  loc_EAFCE3: End If
  loc_EAFCE3: Exit Sub
End Sub

Private Sub IdProofImage_DblClick() '105DDB4
  'Data Table: 521E38
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105DB6C: On Error Goto loc_105DD55
  loc_105DB73: Set var_88 = Me.TopCtrl1
  loc_105DB79: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105DB8D: Set var_A0 = Me.TopCtrl1
  loc_105DB93: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105DBB9: If ( And (CStr() <> "Edit")) Then
  loc_105DBBC:   Exit Sub
  loc_105DBBD: End If
  loc_105DBCD: Me.CDlg.Filter = "*.*"
  loc_105DBE5: Me.CDlg.Action = 1
  loc_105DBF7: Me.CDlg.FileName = 
  loc_105DBFF: var_9C = CStr()
  loc_105DC0C: Me.IdProofImage.Tag = var_9C
  loc_105DC28: Me.CDlg.FileName = 
  loc_105DC30: var_B0 = CVar(CStr()) 'String
  loc_105DC36: var_E4 = Trim(var_B0)
  loc_105DC3F: Set var_A0 = Me.CDlg
  loc_105DC45: var_A0.FileName = 
  loc_105DC63: var_F4 = Right(var_E4, 3)
  loc_105DC9E: var_D4 = "AVI"
  loc_105DCCC: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105DCDD:   var_C4 = "Invalid Format"
  loc_105DCE8:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105DCFB: Else
  loc_105DD12:   Set var_88 = Me.CDlg
  loc_105DD18:   var_88.FileName = var_C4
  loc_105DD20:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105DD2A:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105DD3F:   Me.IdProofImage.Picture = var_A0
  loc_105DD54: End If
  loc_105DD54: Exit Sub
  loc_105DD55: ' Referenced from: 105DB6C
  loc_105DD5D: Set var_88 = Err()
  loc_105DD63: Call 0.Method_arg_1C (var_1B0)
  loc_105DD74: If (var_1B0 <> 0) Then
  loc_105DD8D:   Set var_88 = Err()
  loc_105DD93:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105DD9E:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105DDB1: End If
  loc_105DDB1: Exit Sub
End Sub

Private Sub IdProofImage_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F19A40
  'Data Table: 521E38
  Dim var_88 As Variant
  loc_F1994C: Set var_88 = Me.TopCtrl1
  loc_F19952: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F1996B: If (CStr() = "Browse") Then
  loc_F1996E:   Exit Sub
  loc_F1996F: End If
  loc_F1998F: If (Me.IdProofImage.Tag = vbNullString) Then
  loc_F19992:   Exit Sub
  loc_F19993: End If
  loc_F19999: If (Button = 2) Then
  loc_F199BB:   Me.CmdImgDelete.Tag = Me.IdProofImage.Name
  loc_F199EE:   Me.CmdImgDelete.Left = (Me.IdProofImage.Left + X)
  loc_F19A1E:   Me.CmdImgDelete.Top = (Me.IdProofImage.Top + Y)
  loc_F19A36:   Me.CmdImgDelete.Visible = True
  loc_F19A3E: End If
  loc_F19A3E: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_18 'DFE48C
  'Data Table: 521E38
  loc_DFE484: Call TopCtrl1_UnknownEvent_D()
  loc_DFE489: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1A 'F75504
  'Data Table: 521E38
  Dim var_BC As String
  Dim unk_521E4C As Connection15
  loc_F753D8: On Error Goto loc_F754BE
  loc_F753F5: If (Me.Recordset15.RecordCount > 0) Then
  loc_F75419:   Set var_8C = Me.DBGrid1
  loc_F75438:   var_B8 = DBGrid1.DispID_69.Item(CVar(Button)).DataField
  loc_F75441:   var_BC = "SELECT Employee.code as searchcode,employee.*,EC.Name as CatName,Desig.Name as DesigName,SG.Name as AcName,EC.Code as CatCode,Desig.Code as DesigCode,SG.SubCode as AcCode FROM (((Employee Left Join EmpCategory EC on EC.Code=Employee.Category) Left Join Desig on Desig.Code=Employee.Designation) Left Join SubGroup SG on SG.SubCode=Employee.AC_Code) ORDER BY Employee." & var_B8
  loc_F7544A:   unk_521E4C.Execute var_BC, var_DC, -1
  loc_F75488:   Me.Recordset15.Requery -1
  loc_F75499:   CVarUnk
  loc_F7549E:   VerifyVarObj
  loc_F754AA:   LateIdStAd
  loc_F754B8:   Call Proc_315_50_17C921C(Me.DBGrid1, var_E0)
  loc_F754BD: End If
  loc_F754BD: Exit Sub
  loc_F754BE: ' Referenced from: F753D8
  loc_F754C6: Set var_8C = Err()
  loc_F754CC: Call 0.Method_arg_2C (var_B8)
  loc_F754ED: MsgBox(CVar(var_B8), &H10, "Information", var_F4, var_114)
  loc_F75500: Exit Sub
  loc_F75501: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1D 'E0CBC0
  'Data Table: 521E38
  Dim var_3F01 As Double
  loc_E0CBB5: If ((Button = &H26) Or (Button = &H28)) Then
  loc_E0CBB8:   Call Proc_315_50_17C921C()
  loc_E0CBBD: End If
  loc_E0CBBD: Exit Sub
  loc_E0CBBE: var_3F01 = 
End Sub

Private Sub DBGrid1_UnknownEvent_22 'E91EE0
  'Data Table: 521E38
  loc_E91E74: On Error Goto loc_E91E9A
  loc_E91E91: If (Me.Recordset15.RecordCount > 0) Then
  loc_E91E94:   Call Proc_315_50_17C921C()
  loc_E91E99: End If
  loc_E91E99: Exit Sub
  loc_E91E9A: ' Referenced from: E91E74
  loc_E91EA2: Set var_8C = Err()
  loc_E91EA8: Call 0.Method_arg_2C (var_90)
  loc_E91EC9: MsgBox(CVar(var_90), &H10, "Information", var_E0, var_100)
  loc_E91EDC: Exit Sub
  loc_E91EDD: Exit Sub
End Sub

Private Sub Form_Load() '113CF10
  'Data Table: 521E38
  Dim var_8C As Variant
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim var_B4 As String
  Dim unk_521E4C As Connection15
  loc_113CB80: On Error Goto loc_113CF07
  loc_113CB92: Me.LblUser.Left = CDbl(13500)
  loc_113CBA9: Me.LblUser.Top = CDbl(7800)
  loc_113CBC0: Me.LblLDt.Top = CDbl(8160)
  loc_113CBD7: Me.LblLDt.Left = CDbl(13500)
  loc_113CBE6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_113CBF9: Me.Frame_DETAIL.BackColor = CLng(MemVar_1F921B0)
  loc_113CC20: Me.Recordset15.CursorLocation = 3
  loc_113CC43: var_90 = "SELECT Employee.code as searchcode,employee.*,EC.Name as CatName,Desig.Name as DesigName,SG.Name as AcName,EC.Code as CatCode,Desig.Code as DesigCode,SG.SubCode as AcCode,SG1.SubCode as LoanCode,SG1.Name as LoanName,D.Code As DepartCode,D.Name As DepartName FROM ((((Employee Left Join EmpCategory EC on EC.Code=Employee.Category) Left Join Desig on Desig.Code=Employee.Designation) Left Join SubGroup SG on SG.SubCode=Employee.AC_Code) left join Subgroup SG1 on SG1.Subcode=Employee.loanAc) Left Join Depart D On D.Code=Employee.Department where (Employee.LOGSITE_CODE='" & MemVar_1F92078
  loc_113CC4A: var_A0 = CVar(var_90 & "' or Employee.LOGSITE_CODE='HO') ORDER BY Employee.NAME") 'String
  loc_113CC57: Me.Recordset15.Open var_A0, CVar(MemVar_1F92044), 2
  loc_113CC6E: CVarUnk
  loc_113CC73: VerifyVarObj
  loc_113CC7F: LateIdStAd
  loc_113CCA8: var_B4 = "Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078 & "')  Order by G.Name"
  loc_113CCB1: unk_521E4C.Execute var_B4, var_A0, -1
  loc_113CCC2: Set global_120 = Me.DBGrid1
  loc_113CCE0: CVarUnk
  loc_113CCE5: VerifyVarObj
  loc_113CCF1: LateIdStAd
  loc_113CD23: unk_521E4C.Execute "SELECT Code, Name FROM Desig where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1
  loc_113CD52: CVarUnk
  loc_113CD57: VerifyVarObj
  loc_113CD63: LateIdStAd
  loc_113CD8C: var_B4 = "SELECT SubCode as Code, Name FROM SubGroup where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Nature='Employee' ORDER BY Name"
  loc_113CD95: unk_521E4C.Execute var_B4, var_A0, -1
  loc_113CDC4: CVarUnk
  loc_113CDC9: VerifyVarObj
  loc_113CDD5: LateIdStAd
  loc_113CE07: unk_521E4C.Execute "SELECT SubCode as Code, Name FROM SubGroup where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1
  loc_113CE39: CVarUnk
  loc_113CE3E: VerifyVarObj
  loc_113CE4A: LateIdStAd
  loc_113CE7C: unk_521E4C.Execute "SELECT Code, Name FROM EmpCategory where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1
  loc_113CEAB: CVarUnk
  loc_113CEB0: VerifyVarObj
  loc_113CEB6: Set var_8C = Me.DGCategory
  loc_113CEBC: LateIdStAd
  loc_113CEDA: Set var_8C = Me
  loc_113CEF1: Call Proc_315_51_EAEF54(Proc_5_1_100CB50("INI", var_8C, New, var_8C, Me.DGLoan, var_8C, var_8C, Me.DGAcName), var_8C, var_8C, Me.DGDesignation, var_8C)
  loc_113CEFC: Call Proc_315_54_1123014(var_8C, Me.DGDepartment)
  loc_113CF01: Call Proc_315_50_17C921C(var_8C)
  loc_113CF06: Exit Sub
  loc_113CF07: ' Referenced from: 113CB80
  loc_113CF07: Proc_6_60_E62BC4(var_8C)
  loc_113CF0C: Exit Sub
End Sub

Private Sub Form_Resize() 'EDCAE0
  'Data Table: 521E38
  Dim var_8C As Label
  loc_EDCA36: Call 0.Method_arg_50 (var_88)
  loc_EDCA48: Me.LblFormCaption.Caption = var_88
  loc_EDCA61: Me.LblFormCaption.Left = CDbl(0)
  loc_EDCA6D: Set var_A0 = Me.TopCtrl1
  loc_EDCA73: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EDCA80: Set var_8C = Me.TopCtrl1
  loc_EDCA86: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EDCAA0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_EDCABB: Call 0.Method_arg_100 (var_B8)
  loc_EDCACD: Me.LblFormCaption.Width = var_B8
  loc_EDCADA: Call 0.Method_arg_114 (1)
  loc_EDCADF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C168
  'Data Table: 521E38
  loc_E6C117: Set global_112 = Nothing
  loc_E6C129: Set global_128 = Nothing
  loc_E6C13B: Set global_124 = Nothing
  loc_E6C14D: Set global_120 = Nothing
  loc_E6C15F: Set global_132 = Nothing
  loc_E6C166: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E008C0
  'Data Table: 521E38
  loc_E008B9: global_78 = &HFF
  loc_E008BC: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F2938C
  'Data Table: 521E38
  Dim var_88 As Frame
  loc_F2927C: On Error Goto loc_F29386
  loc_F29293: Proc_6_88_FE81B4(Me, KeyCode)
  loc_F292A9: Set var_88 = Me.TopCtrl1
  loc_F292AF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C((CLng(KeyCode) = &H77))
  loc_F292C9: If (0 And (CStr(Shift) = "Browse")) Then
  loc_F292E7:   If (Me.Frame_DETAIL.Visible = 0) Then
  loc_F292EF:     Call Proc_315_55_E496E4(&HFF)
  loc_F292F7:   Else
  loc_F292FC:     Call Proc_315_55_E496E4(0)
  loc_F29301:   End If
  loc_F29304: Else
  loc_F29319:   Set var_88 = Me.TopCtrl1
  loc_F2931F:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(((CLng(KeyCode) = &H7A) And (Shift = 3)))
  loc_F29339:   If ( And (CStr() = "Browse")) Then
  loc_F29357:     If (Me.Frame1.Visible = 0) Then
  loc_F29366:       Me.Frame1.Visible = True
  loc_F29371:     Else
  loc_F2937D:       Me.Frame1.Visible = False
  loc_F29385:     End If
  loc_F29385:   End If
  loc_F29385: End If
  loc_F29385: Exit Sub
  loc_F29386: ' Referenced from: F2927C
  loc_F29386: Proc_6_60_E62BC4()
  loc_F2938B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED15F8
  'Data Table: 521E38
  loc_ED155C: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_ED155F:   Call DGCategory_UnknownEvent_9()
  loc_ED1564: End If
  loc_ED1580: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_ED1583:   Call DGAcName_UnknownEvent_9()
  loc_ED1588: End If
  loc_ED15A4: If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_ED15A7:   Call DGDesignation_UnknownEvent_9()
  loc_ED15AC: End If
  loc_ED15C8: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_ED15CB:   Call DGDepartment_UnknownEvent_9()
  loc_ED15D0: End If
  loc_ED15EC: If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_ED15EF:   Call DGLoan_UnknownEvent_9()
  loc_ED15F4: End If
  loc_ED15F4: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F50284
  'Data Table: 521E38
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5017B: Me.DGCategory.Visible = False
  loc_F5019A: If (Me.RecordCount > 0) Then
  loc_F501D9:   Set var_B4 = Me.Text1
  loc_F501DF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(&H2B), var_B8)
  loc_F501E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5021A:   var_B0 = Me.Fields.Item("Name")
  loc_F50239:   Set var_B4 = Me.Text1
  loc_F5023F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(&H2B), var_B8)
  loc_F50247:   var_B8.Text = CStr(var_B0.Value)
  loc_F5025D: End If
  loc_F50268: Set var_A8 = Me.Text1
  loc_F5026E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(&H2B))
  loc_F50276: var_B0.SetFocus
  loc_F50282: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'E6E8C0
  'Data Table: 521E38
  loc_E6E87E: Proc_6_153_E91194(Me.DGCategory, arg_14)
  loc_E6E895: Set var_8C = Me.FGPoint
  loc_E6E8B1: Proc_6_138_106D6F8(Me.DGCategory, global_132, CInt(&H2B))
  loc_E6E8BF: Exit Sub
End Sub

Private Sub DGDesignation_UnknownEvent_9 'F4CA24
  'Data Table: 521E38
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C91B: Me.DGDesignation.Visible = False
  loc_F4C93A: If (Me.RecordCount > 0) Then
  loc_F4C979:   Set var_B4 = Me.Text1
  loc_F4C97F:   Call 0.Method_DGDesignation_UnknownEvent_90 (CInt(&H25), var_B8)
  loc_F4C987:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4C9BA:   var_B0 = Me.Fields.Item("Name")
  loc_F4C9D9:   Set var_B4 = Me.Text1
  loc_F4C9DF:   Call 0.Method_DGDesignation_UnknownEvent_90 (CInt(&H25), var_B8)
  loc_F4C9E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4C9FD: End If
  loc_F4CA08: Set var_A8 = Me.Text1
  loc_F4CA0E: Call 0.Method_DGDesignation_UnknownEvent_90 (CInt(&H25))
  loc_F4CA16: var_B0.SetFocus
  loc_F4CA22: Exit Sub
End Sub

Private Sub DGDesignation_UnknownEvent_1F 'E6E704
  'Data Table: 521E38
  loc_E6E6C2: Proc_6_153_E91194(Me.DGDesignation, arg_14)
  loc_E6E6D9: Set var_8C = Me.FGPoint
  loc_E6E6F5: Proc_6_138_106D6F8(Me.DGDesignation, global_124, CInt(&H25))
  loc_E6E703: Exit Sub
End Sub

Private Sub CmdRemoveEmpDetail_Click() '1251980
  'Data Table: 521E38
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_110 As CommandButton
  Dim var_CC As Variant
  Dim unk_521E4C As Connection15
  Dim var_EC As Variant
  Dim var_98 As Variant
  Dim var_10C As Variant
  loc_1251440: Set var_88 = Me.TopCtrl1
  loc_1251446: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_125145F: If (CStr() <> "Browse") Then
  loc_1251483:   MsgBox("Only In Browse Mode!", &H40, " Remove Employee Detail", var_EC, var_10C)
  loc_1251493:   Exit Sub
  loc_1251494: End If
  loc_12514A0: Me.CmdRemoveEmpDetail.Enabled = False
  loc_12514B5: var_9C = Me.Frame1.Tag
  loc_12514C1: Set var_110 = Me.CmdRemoveEmpDetail
  loc_12514C7: var_110.Tag = var_9C
  loc_12514D6: On Error Goto loc_1251926
  loc_12514EB: If (Proc_183_56_FE8818(global_112) = &HFF) Then
  loc_12514EE:   Exit Sub
  loc_12514EF: End If
  loc_12514FB: var_134 = global_112.RecordCount
  loc_1251509: If (var_134 <= 0) Then
  loc_1251512:   Call 0.Method_arg_50 (var_9C)
  loc_1251533:   MsgBox("Nothing to Remove", &H10, CVar(var_9C), var_EC, var_10C)
  loc_1251546: Else
  loc_1251551:   var_CC = "Remove Detail Not Recovered !"
  loc_125157D:   If (MsgBox("Are You Sure To Remove All Detail Of This Employee ? ", &H114, var_CC, var_EC, var_10C) = 6) Then
  loc_1251589:     unk_521E4C.BeginTrans var_134
  loc_1251592:     var_12E = CByte(1) 'Byte
  loc_12515A2:     var_98 = Me.Recordset15.Bookmark
  loc_12515AA:     var_120 = var_98 'Variant
  loc_12515F2:     unk_521E4C.Execute "Delete From Salary Where Site_code='" & MemVar_1F92070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251652:     unk_521E4C.Execute "Delete From Attend Where Site_code='" & MemVar_1F92070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_12516B2:     unk_521E4C.Execute "Delete From Attendence Where Site_code='" & MemVar_1F92070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251712:     unk_521E4C.Execute "Delete From Loan Where Site_code='" & MemVar_1F92070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251772:     unk_521E4C.Execute "Delete From Leave_Ench Where Site_code='" & MemVar_1F92070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_12517D2:     unk_521E4C.Execute "Delete From OverTime Where Site_code='" & MemVar_1F92070 & "' And EmpCode='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251802:     var_9C = "DELETE FROM EMPLOYEE WHERE SITE_CODE='" & MemVar_1F92070
  loc_1251809:     var_EC = CVar(var_9C & "' AND CODE=") 'String
  loc_1251827:     Proc_6_17_EAA2B0(var_CC, CVar(Me.CmdRemoveEmpDetail.Tag), var_EC, var_154, -1, var_110)
  loc_125182F:     var_10C = var_110 & var_CC 
  loc_125183D:     unk_521E4C.Execute CStr(var_10C), var_110, var_110
  loc_1251863:     unk_521E4C.CommitTrans
  loc_125186C:     var_12E = CByte(0) 'Byte
  loc_125187E:     Me.Recordset15.Requery -1
  loc_12518A1:     If (CVar(Me.Recordset15.RecordCount) >= var_120) Then
  loc_12518B1:       Me.Recordset15.Bookmark = var_120
  loc_12518B9:     Else
  loc_12518D0:       If (global_112.EOF = 0) Then
  loc_12518DC:         Me.Recordset15.MoveLast
  loc_12518E1:       End If
  loc_12518E1:     End If
  loc_12518E1:     Call Proc_315_50_17C921C(var_110, var_110)
  loc_1251906:     Proc_5_0_110649C(&HFF, Me, global_112)
  loc_1251911:   Else
  loc_125191D:     Me.CmdRemoveEmpDetail.Enabled = True
  loc_1251925:   End If
  loc_1251925: End If
  loc_1251925: Exit Sub
  loc_1251926: ' Referenced from: 12514D6
  loc_125192F: If (CInt(var_12E) = 1) Then
  loc_1251938:   unk_521E4C.RollbackTrans
  loc_125193D: End If
  loc_1251945: Set var_88 = Err()
  loc_125194B: Call 0.Method_arg_2C (var_9C, 0)
  loc_125196C: MsgBox(CVar(var_9C), &H10, " Remove Employee Detail", var_EC, var_10C)
  loc_125197F: Exit Sub
End Sub

Private Sub DGLoan_UnknownEvent_9 'F56888
  'Data Table: 521E38
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56771: Set var_A8 = Me.DGLoan
  loc_F56777: var_A8.Visible = False
  loc_F56799: If (Me.var_A8.RecordCount > 0) Then
  loc_F567DB:   Set var_B4 = Me.Text1
  loc_F567E1:   Call 0.Method_DGLoan_UnknownEvent_90 (CInt(&H2F), var_B8)
  loc_F567E9:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F5681F:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F5683E:   Set var_B4 = Me.Text1
  loc_F56844:   Call 0.Method_DGLoan_UnknownEvent_90 (CInt(&H2F), var_B8)
  loc_F5684C:   var_B8.Text = CStr(var_B0.Value)
  loc_F56862: End If
  loc_F5686D: Set var_A8 = Me.Text1
  loc_F56873: Call 0.Method_DGLoan_UnknownEvent_90 (CInt(&H2F))
  loc_F5687B: var_B0.SetFocus
  loc_F56887: Exit Sub
End Sub

Private Sub DGLoan_UnknownEvent_1F 'E79760
  'Data Table: 521E38
  loc_E7971A: Proc_6_153_E91194(Me.DGLoan, arg_14)
  loc_E79731: Set var_8C = Me.FGPoint
  loc_E79751: Proc_6_138_106D6F8(Me.DGLoan, global_116, CInt(&H2F))
  loc_E7975F: Exit Sub
End Sub

Private Sub EmployeeImage_DblClick() '105D568
  'Data Table: 521E38
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105D320: On Error Goto loc_105D509
  loc_105D327: Set var_88 = Me.TopCtrl1
  loc_105D32D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105D341: Set var_A0 = Me.TopCtrl1
  loc_105D347: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105D36D: If ( And (CStr() <> "Edit")) Then
  loc_105D370:   Exit Sub
  loc_105D371: End If
  loc_105D381: Me.CDlg.Filter = "*.*"
  loc_105D399: Me.CDlg.Action = 1
  loc_105D3AB: Me.CDlg.FileName = 
  loc_105D3B3: var_9C = CStr()
  loc_105D3C0: Me.EmployeeImage.Tag = var_9C
  loc_105D3DC: Me.CDlg.FileName = 
  loc_105D3E4: var_B0 = CVar(CStr()) 'String
  loc_105D3EA: var_E4 = Trim(var_B0)
  loc_105D3F3: Set var_A0 = Me.CDlg
  loc_105D3F9: var_A0.FileName = 
  loc_105D417: var_F4 = Right(var_E4, 3)
  loc_105D452: var_D4 = "AVI"
  loc_105D480: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105D491:   var_C4 = "Invalid Format"
  loc_105D49C:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105D4AF: Else
  loc_105D4C6:   Set var_88 = Me.CDlg
  loc_105D4CC:   var_88.FileName = var_C4
  loc_105D4D4:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105D4DE:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105D4F3:   Me.EmployeeImage.Picture = var_A0
  loc_105D508: End If
  loc_105D508: Exit Sub
  loc_105D509: ' Referenced from: 105D320
  loc_105D511: Set var_88 = Err()
  loc_105D517: Call 0.Method_arg_1C (var_1B0)
  loc_105D528: If (var_1B0 <> 0) Then
  loc_105D541:   Set var_88 = Err()
  loc_105D547:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105D552:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105D565: End If
  loc_105D565: Exit Sub
End Sub

Private Sub EmployeeImage_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F19428
  'Data Table: 521E38
  Dim var_88 As Variant
  loc_F19334: Set var_88 = Me.TopCtrl1
  loc_F1933A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F19353: If (CStr() = "Browse") Then
  loc_F19356:   Exit Sub
  loc_F19357: End If
  loc_F19377: If (Me.EmployeeImage.Tag = vbNullString) Then
  loc_F1937A:   Exit Sub
  loc_F1937B: End If
  loc_F19381: If (Button = 2) Then
  loc_F193A3:   Me.CmdImgDelete.Tag = Me.EmployeeImage.Name
  loc_F193D6:   Me.CmdImgDelete.Left = (Me.EmployeeImage.Left + X)
  loc_F19406:   Me.CmdImgDelete.Top = (Me.EmployeeImage.Top + Y)
  loc_F1941E:   Me.CmdImgDelete.Visible = True
  loc_F19426: End If
  loc_F19426: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_9 'F4EDE4
  'Data Table: 521E38
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4ECDB: Me.DGDepartment.Visible = False
  loc_F4ECFA: If (Me.RecordCount > 0) Then
  loc_F4ED39:   Set var_B4 = Me.Text1
  loc_F4ED3F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(&H31), var_B8)
  loc_F4ED47:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4ED7A:   var_B0 = Me.Fields.Item("Name")
  loc_F4ED99:   Set var_B4 = Me.Text1
  loc_F4ED9F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(&H31), var_B8)
  loc_F4EDA7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4EDBD: End If
  loc_F4EDC8: Set var_A8 = Me.Text1
  loc_F4EDCE: Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(&H31))
  loc_F4EDD6: var_B0.SetFocus
  loc_F4EDE2: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_1F 'E6E670
  'Data Table: 521E38
  loc_E6E62E: Proc_6_153_E91194(Me.DGDepartment, X)
  loc_E6E645: Set var_8C = Me.FGPoint
  loc_E6E661: Proc_6_138_106D6F8(Me.DGDepartment, global_120, CInt(&H31))
  loc_E6E66F: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'F4DC04
  'Data Table: 521E38
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DAFB: Me.DGAcName.Visible = False
  loc_F4DB1A: If (Me.RecordCount > 0) Then
  loc_F4DB59:   Set var_B4 = Me.Text1
  loc_F4DB5F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(&H26), var_B8)
  loc_F4DB67:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4DB9A:   var_B0 = Me.Fields.Item("Name")
  loc_F4DBB9:   Set var_B4 = Me.Text1
  loc_F4DBBF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(&H26), var_B8)
  loc_F4DBC7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4DBDD: End If
  loc_F4DBE8: Set var_A8 = Me.Text1
  loc_F4DBEE: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(&H26))
  loc_F4DBF6: var_B0.SetFocus
  loc_F4DC02: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E71828
  'Data Table: 521E38
  loc_E717E6: Proc_6_153_E91194(Me.DGAcName, X)
  loc_E717FD: Set var_8C = Me.FGPoint
  loc_E71819: Proc_6_138_106D6F8(Me.DGAcName, global_128, CInt(&H26))
  loc_E71827: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F0EA10
  'Data Table: 521E38
  Dim var_90 As Label
  Dim var_94 As TextBox
  loc_F0E91C: On Error Goto loc_F0EA07
  loc_F0E924: Call Proc_315_55_E496E4(&HFF)
  loc_F0E950: Call Proc_315_51_EAEF54(Proc_5_1_100CB50("ADD", Me))
  loc_F0E968: Me.LblUser.Caption = vbNullString
  loc_F0E97D: Me.LblLDt.Caption = vbNullString
  loc_F0E985: Call Proc_315_49_F779F4(global_112)
  loc_F0E998: Set var_90 = Me.Text1
  loc_F0E99E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H30), var_94)
  loc_F0E9A6: var_94.Text = "Yes"
  loc_F0E9B8: global_80 = CDbl(0)
  loc_F0E9C1: global_88 = CDbl(0)
  loc_F0E9D3: global_104 = vbNullString
  loc_F0E9DD: global_108 = vbNullString
  loc_F0E9EC: Set var_90 = Me.Text1
  loc_F0E9F2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94, CDbl(0))
  loc_F0E9FA: var_94.SetFocus
  loc_F0EA06: Exit Sub
  loc_F0EA07: ' Referenced from: F0E91C
  loc_F0EA07: Proc_6_60_E62BC4(global_88)
  loc_F0EA0C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAC448
  'Data Table: 521E38
  loc_EAC3C8: On Error Goto loc_EAC442
  loc_EAC402: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EAC405:   Call Proc_315_53_F948B8()
  loc_EAC431:   Call Proc_315_51_EAEF54(Proc_5_1_100CB50("INI", Me))
  loc_EAC43C:   Call Proc_315_50_17C921C(global_112)
  loc_EAC441: End If
  loc_EAC441: Exit Sub
  loc_EAC442: ' Referenced from: EAC3C8
  loc_EAC442: Proc_6_60_E62BC4()
  loc_EAC447: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13102C4
  'Data Table: 521E38
  Dim var_DC As Variant
  Dim var_AC As String
  Dim var_124 As TextBox
  Dim var_130 As String
  Dim unk_521E4C As Connection15
  Dim var_CC As Variant
  Dim var_FC As Variant
  loc_130FB90: On Error Goto loc_1310268
  loc_130FBA5: If (Proc_183_56_FE8818(global_112) = &HFF) Then
  loc_130FBA8:   Exit Sub
  loc_130FBA9: End If
  loc_130FBC3: If (global_112.RecordCount <= 0) Then
  loc_130FBCC:   Call 0.Method_arg_50 (var_AC)
  loc_130FBED:   MsgBox("Nothing to Delete", &H10, CVar(var_AC), var_FC, var_11C)
  loc_130FC00: Else
  loc_130FC2C:   Set var_120 = Me.Text1
  loc_130FC32:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Salary Where site_code='" & MemVar_1F92070 & "' and Emp_Code='")
  loc_130FC3A:   var_CC = var_124.Text
  loc_130FC43:   var_130 = -1 & var_128
  loc_130FC53:   unk_521E4C.Execute var_130 & "'", var_138, 
  loc_130FC8E:   If (var_138.RecordCount > 0) Then
  loc_130FC97:     Call 0.Method_arg_50 (var_128)
  loc_130FCBE:     MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_130FCD1:     Exit Sub
  loc_130FCD2:   End If
  loc_130FCFE:   Set var_120 = Me.Text1
  loc_130FD04:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Attend Where site_code='" & MemVar_1F92070 & "' and Emp_Code='")
  loc_130FD0C:   var_CC = var_124.Text
  loc_130FD15:   var_130 = -1 & var_128
  loc_130FD25:   unk_521E4C.Execute var_130 & "'", var_138, 
  loc_130FD60:   If (var_138.RecordCount > 0) Then
  loc_130FD69:     Call 0.Method_arg_50 (var_128)
  loc_130FD90:     MsgBox(CVar("Leave Filled,  " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_130FDA3:     Exit Sub
  loc_130FDA4:   End If
  loc_130FDD0:   Set var_120 = Me.Text1
  loc_130FDD6:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Attendence Where site_code='" & MemVar_1F92070 & "' and Emp_Code='")
  loc_130FDDE:   var_CC = var_124.Text
  loc_130FDE7:   var_130 = -1 & var_128
  loc_130FDF7:   unk_521E4C.Execute var_130 & "'", var_138, 
  loc_130FE32:   If (var_138.RecordCount > 0) Then
  loc_130FE3B:     Call 0.Method_arg_50 (var_128)
  loc_130FE62:     MsgBox(CVar("Attendence Filled, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_130FE75:     Exit Sub
  loc_130FE76:   End If
  loc_130FEA2:   Set var_120 = Me.Text1
  loc_130FEA8:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Loan Where site_code='" & MemVar_1F92070 & "' and Emp_Code='")
  loc_130FEB0:   var_CC = var_124.Text
  loc_130FEB9:   var_130 = -1 & var_128
  loc_130FEC9:   unk_521E4C.Execute var_130 & "'", var_138, 
  loc_130FF04:   If (var_138.RecordCount > 0) Then
  loc_130FF0D:     Call 0.Method_arg_50 (var_128)
  loc_130FF34:     MsgBox(CVar("Loan Entry Exist, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_130FF47:     Exit Sub
  loc_130FF48:   End If
  loc_130FF74:   Set var_120 = Me.Text1
  loc_130FF7A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Leave_Ench Where site_code='" & MemVar_1F92070 & "' and Emp_Code='")
  loc_130FF82:   var_CC = var_124.Text
  loc_130FF8B:   var_130 = -1 & var_128
  loc_130FF9B:   unk_521E4C.Execute var_130 & "'", var_138, 
  loc_130FFD6:   If (var_138.RecordCount > 0) Then
  loc_130FFDF:     Call 0.Method_arg_50 (var_128)
  loc_1310006:     MsgBox(CVar("Leave Encashment Entry Exist, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_1310019:     Exit Sub
  loc_131001A:   End If
  loc_1310046:   Set var_120 = Me.Text1
  loc_131004C:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From OverTime Where site_code='" & MemVar_1F92070 & "' and EmpCode='")
  loc_1310054:   var_CC = var_124.Text
  loc_131005D:   var_130 = -1 & var_128
  loc_131006D:   unk_521E4C.Execute var_130 & "'", var_138, 
  loc_131009A:   var_A8 = var_138.RecordCount
  loc_13100A8:   If (var_A8 > 0) Then
  loc_13100B1:     Call 0.Method_arg_50 (var_128)
  loc_13100D8:     MsgBox(CVar("Over Time Entry Exist, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_13100EB:     Exit Sub
  loc_13100EC:   End If
  loc_13100F7:   var_DC = "Delete Entry !"
  loc_1310123:   If (MsgBox("Are You Sure To Delete This ? ", &H114, var_DC, var_FC, var_11C) = 6) Then
  loc_131012F:     unk_521E4C.BeginTrans var_A8
  loc_1310138:     var_A2 = CByte(1) 'Byte
  loc_1310150:     var_94 = Me.Recordset15.Bookmark 'Variant
  loc_1310171:     Set var_120 = Me.Text1
  loc_1310177:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, "DELETE FROM EMPLOYEE WHERE CODE=")
  loc_1310186:     Proc_6_17_EAA2B0(var_DC, CVar(var_124), var_11C)
  loc_131018E:     var_FC = -1 & var_DC 
  loc_1310192:     var_AC = CStr(var_FC)
  loc_131019C:     unk_521E4C.Execute var_AC, var_138, 
  loc_13101BC:     unk_521E4C.CommitTrans
  loc_13101C5:     var_A2 = CByte(0) 'Byte
  loc_13101D7:     Me.Recordset15.Requery -1
  loc_13101FA:     If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_131020A:       Me.Recordset15.Bookmark = var_94
  loc_1310212:     Else
  loc_1310229:       If (global_112.EOF = 0) Then
  loc_1310235:         Me.Recordset15.MoveLast
  loc_131023A:       End If
  loc_131023A:     End If
  loc_131023A:     Call Proc_315_50_17C921C()
  loc_131025F:     Proc_5_0_110649C(&HFF, Me)
  loc_1310267:   End If
  loc_1310267: End If
  loc_1310267: Exit Sub
  loc_1310268: ' Referenced from: 130FB90
  loc_1310271: If (CInt(var_A2) = 1) Then
  loc_131027A:   unk_521E4C.RollbackTrans
  loc_131027F: End If
  loc_1310287: Set var_120 = Err()
  loc_131028D: Call 0.Method_arg_2C (var_AC, global_112)
  loc_13102AE: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_FC, var_11C)
  loc_13102C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FFE1B0
  'Data Table: 521E38
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  loc_FFDFAC: On Error Goto loc_FFE1A9
  loc_FFDFC1: If (Proc_183_55_FE7900(global_112) = &HFF) Then
  loc_FFDFC4:   Exit Sub
  loc_FFDFC5: End If
  loc_FFDFCA: Call Proc_315_55_E496E4(&HFF)
  loc_FFDFE8: var_8C = "EDIT"
  loc_FFDFF6: Call Proc_315_51_EAEF54(Proc_5_1_100CB50(var_8C, Me))
  loc_FFE02D: Proc_6_39_E7C810(var_C4, CVar(Me.Recordset15.Fields.Item("OP_Earned")))
  loc_FFE039: global_80 = CSng(var_C4)
  loc_FFE072: Proc_6_39_E7C810(var_C4, CVar(Me.Recordset15.Fields.Item("OP_Casual")))
  loc_FFE0A8: var_A4 = Me.Recordset15.Fields.Item("Curr_PF_Balance")
  loc_FFE0B7: Proc_6_39_E7C810(var_C4, CVar(var_A4), CSng(var_C4))
  loc_FFE0DB: Set var_90 = Me.Text1
  loc_FFE0E1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_A4, 0)
  loc_FFE0E9: var_A4.Enabled = CSng(var_C4)
  loc_FFE0FE: Set var_90 = Me.Text1
  loc_FFE104: Call 0.Method_TopCtrl1_UnknownEvent_D0 (1, var_A4)
  loc_FFE10C: var_A4.SetFocus
  loc_FFE124: Set var_90 = Me.Text1
  loc_FFE12A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_A4, var_8C)
  loc_FFE132: global_80 = var_A4.Text
  loc_FFE13D: global_104 = var_8C
  loc_FFE157: Set var_90 = Me.Text1
  loc_FFE15D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (8, var_A4)
  loc_FFE170: global_108 = var_A4.Text
  loc_FFE18B: Me.LblUser.Caption = vbNullString
  loc_FFE1A0: Me.LblLDt.Caption = vbNullString
  loc_FFE1A8: Exit Sub
  loc_FFE1A9: ' Referenced from: FFDFAC
  loc_FFE1A9: Proc_6_60_E62BC4(global_112)
  loc_FFE1AE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C07C
  'Data Table: 521E38
  loc_E1C071: Me.Global.Unload Me
  loc_E1C079: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB5D14
  'Data Table: 521E38
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EB5C84: On Error Goto loc_EB5D0E
  loc_EB5CA1: If (Me.Recordset15.RecordCount <= 0) Then
  loc_EB5CAA:   var_B8 = "Information"
  loc_EB5CC5:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB5CD5:   Exit Sub
  loc_EB5CD6: End If
  loc_EB5CDD: var_10C = "SELECT Employee.Code as SearchCode, Employee.Name, Employee.Sex, Employee.F_Name, cast(Employee.Birth_Date as varchar(11)) as BirthDate, Employee.Add1, Employee.Add2, Employee.Marital, cast(Employee.Joining_Date as varchar(11)) as JoiningDate, cast(Employee.Resign_Date as varchar(11)) as ResignDate,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active FROM Employee where (LOGSITE_CODE='" & MemVar_1F92078
  loc_EB5CE4: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') ORDER BY NAME"
  loc_EB5CF1: MemVar_1F92120 = Me
  loc_EB5D08: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB5D0D: Exit Sub
  loc_EB5D0E: ' Referenced from: EB5C84
  loc_EB5D0E: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EB5D13: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E42CD0
  'Data Table: 521E38
  loc_E42CC0: Proc_5_0_110649C(&HFF, Me)
  loc_E42CC8: Call Proc_315_50_17C921C(global_112)
  loc_E42CCD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E42C08
  'Data Table: 521E38
  loc_E42BF8: Proc_5_0_110649C(&HFF, Me)
  loc_E42C00: Call Proc_315_50_17C921C(global_112)
  loc_E42C05: Exit Sub
  loc_E42C06: var_3FF8 = Mid$(4, , )
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E429B0
  'Data Table: 521E38
  loc_E429A0: Proc_5_0_110649C(&HFF, Me)
  loc_E429A8: Call Proc_315_50_17C921C(global_112)
  loc_E429AD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E42758
  'Data Table: 521E38
  loc_E42748: Proc_5_0_110649C(&HFF, Me)
  loc_E42750: Call Proc_315_50_17C921C(global_112)
  loc_E42755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F957D0
  'Data Table: 521E38
  Dim unk_521E4C As Connection15
  Dim var_CC As String
  Dim var_D2 As Integer
  Dim var_B4 As Variant
  loc_F95670: On Error Goto loc_F957C8
  loc_F9568D: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F95690:   Exit Sub
  loc_F95691: End If
  loc_F95694: var_88 = "SELECT EMPCATEGORY.Name as Cat_Desc,DESIG.Name as Desg_Desc, Employee.Code, Employee.Name, Employee.Sex, Employee.F_Name, Employee.Birth_Date, Employee.Add1, Employee.Add2, Employee.Marital, Employee.Spouse, Employee.Qualification, Employee.Joining_Date, Employee.ESI_Code, Employee.PF_Code, Employee.Basic, Employee.DA, Employee.HRA ,Employee.Income_Tax, Employee.Other_Allow, Employee.Other_Deduc, Employee.Medical, Employee.Conveyance, Employee.LTA, Employee.PF, Employee.ESI, Employee.IdProof, Employee.IdProofNo FROM (Employee LEFT JOIN Desig ON Employee.Designation = Desig.Code) LEFT JOIN EmpCategory ON Employee.Category = EmpCategory.Code"
  loc_F9569F: If (var_88 = vbNullString) Then
  loc_F956A2:   Exit Sub
  loc_F956A3: End If
  loc_F956B9: unk_521E4C.Execute var_88, var_C4, -1
  loc_F956E3: Set var_C8 = var_C8 
  loc_F956EF: var_D2 = CreateFieldDefFile(var_C8, MemVar_1F920B4 & "\Empl_Detl.ttx")
  loc_F956FF: var_B4 = CVar(var_D2) 'Integer
  loc_F95702: var_98 = var_B4 'Variant
  loc_F9571E: var_CC = MemVar_1F920B4 & "\Empl_Detl.RPT"
  loc_F95727: Call 0.Method_arg_1C (var_CC, var_B4, var_C8)
  loc_F95755: Call 0.Method_arg_64 (var_C8, CVar(var_C8), var_E4, var_F4)
  loc_F9575D: Call 0.Method_arg_2C (var_D2, &HFF)
  loc_F9576B: Call 0.Method_arg_150 (var_C8)
  loc_F95776: Call 0.Method_arg_50 (var_CC)
  loc_F95780: Set var_FC = Nothing
  loc_F9579A: Set var_C8 = var_C8 
  loc_F957A6: Proc_6_99_1483714(var_C8, 0, var_CC)
  loc_F957B1: MemVar_1F921E4 = var_C8
  loc_F957C4: Set var_9C = Nothing
  loc_F957C7: Exit Sub
  loc_F957C8: ' Referenced from: F95670
  loc_F957C8: Proc_6_60_E62BC4(&HFF)
  loc_F957CD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'EC1DBC
  'Data Table: 521E38
  Dim Me As Recordset15
  loc_EC1D1F: Me.Requery -1
  loc_EC1D2F: Me.Requery -1
  loc_EC1D3F: Me.Requery -1
  loc_EC1D52: Me.Recordset15.Requery -1
  loc_EC1D63: CVarUnk
  loc_EC1D68: VerifyVarObj
  loc_EC1D6E: Set var_A8 = Me.DGLoan
  loc_EC1D74: LateIdStAd
  loc_EC1D8B: CVarUnk
  loc_EC1D90: VerifyVarObj
  loc_EC1D96: Set var_A8 = Me.DGAcName
  loc_EC1D9C: LateIdStAd
  loc_EC1DB5: Me.Requery -1
  loc_EC1DBA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19FAF2C
  'Data Table: 521E38
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_B0 As Variant
  Dim var_10C As Variant
  Dim var_B8 As Variant
  Dim var_164 As String
  Dim unk_521E4C As Connection15
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_168 As String
  Dim var_110 As Variant
  Dim var_17C As Field20
  Dim var_DC As Variant
  Dim var_8A As Variant
  Dim var_130 As Variant
  Dim var_1B4 As Variant
  Dim var_1FC As Variant
  Dim var_244 As Variant
  Dim var_29C As Variant
  Dim var_2F4 As Variant
  Dim var_34C As Variant
  Dim var_394 As TextBox
  Dim var_1500 As Double
  Dim var_3DC As TextBox
  Dim var_1508 As Double
  Dim var_424 As TextBox
  Dim var_1510 As Double
  Dim var_470 As TextBox
  Dim var_1518 As Double
  Dim var_4BC As TextBox
  Dim var_1520 As Double
  Dim var_508 As TextBox
  Dim var_1528 As Double
  Dim var_554 As TextBox
  Dim var_1530 As Double
  Dim var_5A0 As TextBox
  Dim var_1538 As Double
  Dim var_5EC As TextBox
  Dim var_1540 As Double
  Dim var_638 As TextBox
  Dim var_1548 As Double
  Dim var_684 As TextBox
  Dim var_1550 As Double
  Dim var_6D0 As TextBox
  Dim var_1558 As Double
  Dim var_71C As TextBox
  Dim var_1560 As Double
  Dim var_768 As TextBox
  Dim var_1568 As Double
  Dim var_7B4 As TextBox
  Dim var_1570 As Double
  Dim var_800 As TextBox
  Dim var_1578 As Double
  Dim var_84C As TextBox
  Dim var_1580 As Double
  Dim var_898 As TextBox
  Dim var_1588 As Double
  Dim var_8E4 As TextBox
  Dim var_1590 As Double
  Dim var_930 As TextBox
  Dim var_1598 As Double
  Dim var_97C As TextBox
  Dim var_9C8 As TextBox
  Dim var_A14 As TextBox
  Dim var_A60 As TextBox
  Dim var_C60 As CheckBox
  Dim var_CF4 As CheckBox
  Dim var_EA8 As Variant
  Dim var_EF0 As Variant
  Dim var_F88 As TextBox
  Dim var_15A0 As Double
  Dim var_FD4 As TextBox
  Dim var_15A8 As Double
  Dim var_1078 As TextBox
  Dim var_15B0 As Double
  Dim var_122C As Variant
  Dim var_1364 As Image
  Dim var_136C As Image
  Dim var_1110 As TextBox
  Dim var_1124 As Variant
  Dim var_1138 As String
  Dim var_1130 As TextBox
  Dim var_1174 As Variant
  Dim var_12A0 As Variant
  Dim var_36C As Variant
  Dim var_41C As Variant
  Dim var_4E0 As Variant
  Dim var_500 As Variant
  Dim var_610 As Variant
  Dim var_64C As Variant
  Dim var_65C As Variant
  Dim var_66C As Variant
  Dim var_714 As Variant
  Dim var_7D8 As Variant
  Dim var_7F8 As Variant
  Dim var_8F8 As Variant
  Dim var_908 As Variant
  Dim var_918 As Variant
  Dim var_954 As Variant
  Dim var_A28 As Variant
  Dim var_A74 As Variant
  Dim var_AFC As Variant
  Dim var_BAC As Variant
  Dim var_D68 As Variant
  Dim var_D88 As Variant
  Dim var_DE0 As Variant
  Dim var_E90 As Variant
  Dim var_1018 As Variant
  Dim var_10BC As Variant
  Dim var_14D0 As Variant
  Dim var_E98 As TextBox
  Dim var_EE0 As TextBox
  Dim var_101C As CheckBox
  Dim var_1020 As CheckBox
  Dim var_1164 As Variant
  Dim var_1228 As Image
  Dim var_150 As Variant
  Dim var_1C4 As Variant
  Dim var_20C As Variant
  Dim var_254 As Variant
  Dim var_2AC As Variant
  Dim var_304 As Variant
  Dim var_35C As Variant
  Dim var_DB0 As Variant
  Dim var_E08 As Variant
  Dim var_E60 As Variant
  Dim var_1040 As Variant
  Dim var_14F4 As Variant
  Dim var_1134 As String
  loc_19F8134: On Error Goto loc_19FAF0F
  loc_19F8142: Set var_AC = Me.Text1
  loc_19F8148: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_19F8171: If (Proc_6_27_EA565C(var_B0, "Name") = 0) Then
  loc_19F8174:   Exit Sub
  loc_19F8175: End If
  loc_19F8180: Set var_AC = Me.Text1
  loc_19F8186: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B0)
  loc_19F81AF: If (Proc_6_27_EA565C(var_B0, "Address") = 0) Then
  loc_19F81B2:   Exit Sub
  loc_19F81B3: End If
  loc_19F81BE: Set var_AC = Me.Text1
  loc_19F81C4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_B0)
  loc_19F81ED: If (Proc_6_27_EA565C(var_B0, "Sex") = 0) Then
  loc_19F81F0:   Exit Sub
  loc_19F81F1: End If
  loc_19F81FC: Set var_AC = Me.Text1
  loc_19F8202: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_B0)
  loc_19F822B: If (Proc_6_27_EA565C(var_B0, "Department") = 0) Then
  loc_19F822E:   Exit Sub
  loc_19F822F: End If
  loc_19F823A: Set var_AC = Me.Text1
  loc_19F8240: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_B0)
  loc_19F8269: If (Proc_6_27_EA565C(var_B0, "Designation") = 0) Then
  loc_19F826C:   Exit Sub
  loc_19F826D: End If
  loc_19F8278: Set var_AC = Me.Text1
  loc_19F827E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_B0)
  loc_19F82A7: If (Proc_6_27_EA565C(var_B0, "Category") = 0) Then
  loc_19F82AA:   Exit Sub
  loc_19F82AB: End If
  loc_19F82B6: Set var_AC = Me.Text1
  loc_19F82BC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_B0)
  loc_19F82E5: If (Proc_6_27_EA565C(var_B0, "A/C Name") = 0) Then
  loc_19F82E8:   Exit Sub
  loc_19F82E9: End If
  loc_19F82F4: Set var_AC = Me.Text1
  loc_19F82FA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_B0)
  loc_19F8323: If (Proc_6_27_EA565C(var_B0, "Joining Date") = 0) Then
  loc_19F8326:   Exit Sub
  loc_19F8327: End If
  loc_19F8332: Set var_AC = Me.Text1
  loc_19F8338: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_B0)
  loc_19F8361: If (Proc_6_27_EA565C(var_B0, "Id. Proof") = 0) Then
  loc_19F836B:   Call Text1_GotFocus()
  loc_19F8370:   Exit Sub
  loc_19F8371: End If
  loc_19F837C: Set var_AC = Me.Text1
  loc_19F8382: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_B0)
  loc_19F83B2: Set var_B4 = Me.Text1
  loc_19F83B8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_110, (Len(Trim(CVar(var_B0))) <> 0))
  loc_19F83C0: var_120 = CVar(var_110) 'Address
  loc_19F83F1: If CBool(CInt(&H32) And (Trim(var_120) <> "NA")) Then
  loc_19F83FF:   Set var_AC = Me.Text1
  loc_19F8405:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_B0)
  loc_19F842E:   If (Proc_6_27_EA565C(var_B0, "Id. Proof No.") = 0) Then
  loc_19F8438:     Call Text1_GotFocus()
  loc_19F843D:     Exit Sub
  loc_19F843E:   End If
  loc_19F843E: End If
  loc_19F8449: Set var_AC = Me.Text1
  loc_19F844F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_B0)
  loc_19F8457: var_B8 = "Basic"
  loc_19F8478: If (Proc_6_27_EA565C(var_B0, var_B8) = 0) Then
  loc_19F847B:   Exit Sub
  loc_19F847C: End If
  loc_19F848A: Set var_AC = Me.Text1
  loc_19F8490: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_B0, var_B8)
  loc_19F8498: CInt(&H33) = var_B0.Text
  loc_19F84B4: Set var_B4 = Me.Text1
  loc_19F84BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_110)
  loc_19F84C2: var_CC = CVar(var_110) 'Address
  loc_19F84C9: var_DC = Trim(var_CC)
  loc_19F84F6: If CBool((var_B8 = "Yes") And (var_DC = vbNullString)) Then
  loc_19F8507:   Set var_AC = Me.Text1
  loc_19F850D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_B0)
  loc_19F8515:   var_B0.Text = "Sunday"
  loc_19F8521: End If
  loc_19F852C: Set var_AC = Me.Text1
  loc_19F8532: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_B0)
  loc_19F855B: If (Proc_6_27_EA565C(var_B0, "Active") = 0) Then
  loc_19F855E:   Exit Sub
  loc_19F855F: End If
  loc_19F8563: Set var_AC = Me.TopCtrl1
  loc_19F8569: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_B0)
  loc_19F8582: If (CStr() = "Add") Then
  loc_19F858B:   var_140 = 0
  loc_19F85A8:   var_B8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From Employee where Site_Code='" & MemVar_1F92070
  loc_19F85B8:   unk_521E4C.Execute CStr() & "'", var_CC, -1
  loc_19F85C0:   var_AC = var_AC.Fields
  loc_19F85C8:   var_140 = var_B0.Item(var_B0)
  loc_19F85D0:   var_B4 = var_B4.Value
  loc_19F8609:   var_EC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_19F8616:   var_140 = "000000"
  loc_19F862F:   var_DC = Format(CStr(var_DC), var_140)
  loc_19F8637:   var_10C = (1 + var_DC)
  loc_19F8642:   global_72 = CStr((var_B8 = "Yes") And (var_DC = vbNullString))
  loc_19F8657: Else
  loc_19F8688:   var_B8 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_19F868E:   global_72 = var_B8
  loc_19F869F: End If
  loc_19F86AB: Call 0.Method_arg_38 (MemVar_1F92214, var_B8, 1)
  loc_19F86C8: var_A0 = var_B8 & "\EMP" & global_72 & ".jpg"
  loc_19F86E0: Call 0.Method_arg_38 (MemVar_1F92214, var_B8)
  loc_19F86F6: var_168 = var_B8 & "\IdProof\EMPID" & global_72
  loc_19F86FD: var_A4 = var_168 & ".jpg"
  loc_19F872B: If (Proc_142_3_E97580(Me.EmployeeImage, var_A0) = &HFF) Then
  loc_19F8735:   Set var_AC = Me.EmployeeImage
  loc_19F873B:   Me.EmployeeImage.Tag = var_A0
  loc_19F8743: End If
  loc_19F8747: Set var_B0 = Me.IdProofImage
  loc_19F8765: If (Proc_142_3_E97580(var_B0, var_A4) = &HFF) Then
  loc_19F8775:   Me.IdProofImage.Tag = var_A4
  loc_19F877D: End If
  loc_19F8791: Set var_AC = Me.Text1
  loc_19F8797: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, var_B8)
  loc_19F879F: global_104 = var_B0.Text
  loc_19F87B3: If (var_EC <> var_B8) Then
  loc_19F87E2:   Set var_AC = Me.Text1
  loc_19F87E8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE ESI_Code=", (var_B8 = "Yes") And (var_DC = vbNullString), -1, var_B4)
  loc_19F87F7:   Proc_6_17_EAA2B0(var_DC, CVar(var_B0), var_110, 0)
  loc_19F87FF:   var_EC = var_17C & var_DC 
  loc_19F8803:   var_B8 = CStr(var_EC)
  loc_19F880D:   unk_521E4C.Execute var_B8, var_120, var_DC
  loc_19F8815:    = var_B4.Fields
  loc_19F881D:    = var_110.Item()
  loc_19F8825:    = var_17C.Value
  loc_19F8850:   If (var_120 > 0) Then
  loc_19F8859:     Call 0.Method_arg_50 (var_B8)
  loc_19F8867:     var_DC = CVar(var_B8) 'String
  loc_19F887A:     MsgBox("* Duplicate E.S.I.Code *", &H10, var_DC, var_EC, (var_B8 = "Yes") And (var_DC = vbNullString))
  loc_19F8895:     Set var_AC = Me.Text1
  loc_19F889B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7))
  loc_19F88A3:     var_B0.SetFocus
  loc_19F88AF:     Exit Sub
  loc_19F88B0:   End If
  loc_19F88B0: End If
  loc_19F88C4: Set var_AC = Me.Text1
  loc_19F88CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, var_B8)
  loc_19F88D2: global_108 = var_B0.Text
  loc_19F88E6: If (var_B0 <> var_B8) Then
  loc_19F8915:   Set var_AC = Me.Text1
  loc_19F891B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE PF_Code=", (var_B8 = "Yes") And (var_DC = vbNullString), -1)
  loc_19F892A:   Proc_6_17_EAA2B0(var_DC, CVar(var_B0), var_B4, var_110)
  loc_19F8932:   var_EC = 0 & var_DC 
  loc_19F8936:   var_B8 = CStr(var_EC)
  loc_19F8940:   unk_521E4C.Execute var_B8, var_17C, var_120
  loc_19F8948:    = var_B4.Fields
  loc_19F8950:    = var_110.Item()
  loc_19F8958:    = var_17C.Value
  loc_19F8983:   If (var_120 > 0) Then
  loc_19F898C:     Call 0.Method_arg_50 (var_B8)
  loc_19F899A:     var_DC = CVar(var_B8) 'String
  loc_19F89AD:     MsgBox("* Duplicate P.F.Code *", &H10, var_DC, var_EC, (var_B8 = "Yes") And (var_DC = vbNullString))
  loc_19F89C8:     Set var_AC = Me.Text1
  loc_19F89CE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8))
  loc_19F89D6:     var_B0.SetFocus
  loc_19F89E2:     Exit Sub
  loc_19F89E3:   End If
  loc_19F89E3: End If
  loc_19F89E5: var_8A = &HFF
  loc_19F89F1: unk_521E4C.BeginTrans var_190
  loc_19F8A0A: Set var_AC = Me.Text1
  loc_19F8A10: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, var_B8)
  loc_19F8A18: global_104 = var_B0.Text
  loc_19F8A2C: If (var_8A <> var_B8) Then
  loc_19F8A5B:   Set var_AC = Me.Text1
  loc_19F8A61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE ESI_Code=", (var_B8 = "Yes") And (var_DC = vbNullString), -1, var_B4)
  loc_19F8A70:   Proc_6_17_EAA2B0(var_DC, CVar(var_B0), var_110, 0)
  loc_19F8A78:   var_EC = var_17C & var_DC 
  loc_19F8A7C:   var_B8 = CStr(var_EC)
  loc_19F8A86:   unk_521E4C.Execute var_B8, var_120, var_B0
  loc_19F8A8E:    = var_B4.Fields
  loc_19F8A96:    = var_110.Item()
  loc_19F8A9E:    = var_17C.Value
  loc_19F8AC9:   If (var_120 > 0) Then
  loc_19F8AD2:     Call 0.Method_arg_50 (var_B8)
  loc_19F8AE0:     var_DC = CVar(var_B8) 'String
  loc_19F8AF3:     MsgBox("* Duplicate E.S.I.Code *", &H10, var_DC, var_EC, (var_B8 = "Yes") And (var_DC = vbNullString))
  loc_19F8B0E:     Set var_AC = Me.Text1
  loc_19F8B14:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7))
  loc_19F8B1C:     var_B0.SetFocus
  loc_19F8B28:     Exit Sub
  loc_19F8B29:   End If
  loc_19F8B29: End If
  loc_19F8B3D: Set var_AC = Me.Text1
  loc_19F8B43: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, var_B8)
  loc_19F8B4B: global_108 = var_B0.Text
  loc_19F8B5F: If (var_B0 <> var_B8) Then
  loc_19F8B8E:   Set var_AC = Me.Text1
  loc_19F8B94:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE PF_Code=", (var_B8 = "Yes") And (var_DC = vbNullString), -1)
  loc_19F8BA3:   Proc_6_17_EAA2B0(var_DC, CVar(var_B0), var_B4, var_110)
  loc_19F8BAB:   var_EC = 0 & var_DC 
  loc_19F8BAF:   var_B8 = CStr(var_EC)
  loc_19F8BB9:   unk_521E4C.Execute var_B8, var_17C, var_120
  loc_19F8BC1:    = var_B4.Fields
  loc_19F8BC9:    = var_110.Item()
  loc_19F8BD1:    = var_17C.Value
  loc_19F8BFC:   If (var_120 > 0) Then
  loc_19F8C05:     Call 0.Method_arg_50 (var_B8)
  loc_19F8C13:     var_DC = CVar(var_B8) 'String
  loc_19F8C26:     MsgBox("* Duplicate P.F.Code *", &H10, var_DC, var_EC, (var_B8 = "Yes") And (var_DC = vbNullString))
  loc_19F8C41:     Set var_AC = Me.Text1
  loc_19F8C47:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8))
  loc_19F8C4F:     var_B0.SetFocus
  loc_19F8C5B:     Exit Sub
  loc_19F8C5C:   End If
  loc_19F8C5C: End If
  loc_19F8C60: Set var_AC = Me.TopCtrl1
  loc_19F8C66: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_B0)
  loc_19F8C7F: If (CStr() = "Add") Then
  loc_19F8CAE:   Set var_AC = Me.Text1
  loc_19F8CB4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, "SELECT COUNT(*) FROM Employee WHERE code = ", (CStr() = "Yes") And (var_DC = vbNullString), -1)
  loc_19F8CC3:   Proc_6_17_EAA2B0(var_DC, CVar(var_B0), var_B4, var_110)
  loc_19F8CCB:   var_EC = 0 & var_DC 
  loc_19F8CCF:   var_B8 = CStr(var_EC)
  loc_19F8CD9:   unk_521E4C.Execute var_B8, var_17C, var_120
  loc_19F8CE1:    = var_B4.Fields
  loc_19F8CE9:    = var_110.Item()
  loc_19F8CF1:    = var_17C.Value
  loc_19F8D1C:   If (var_120 > 0) Then
  loc_19F8D25:     Call 0.Method_arg_50 (var_B8)
  loc_19F8D33:     var_DC = CVar(var_B8) 'String
  loc_19F8D46:     MsgBox("* Duplicate Code *", &H10, var_DC, var_EC, (var_B8 = "Yes") And (var_DC = vbNullString))
  loc_19F8D5C:     unk_521E4C.RollbackTrans
  loc_19F8D6C:     Set var_AC = Me.Text1
  loc_19F8D72:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_19F8D7A:     var_B0.SetFocus
  loc_19F8D86:     Exit Sub
  loc_19F8D87:   End If
  loc_19F8D92:   Set var_AC = Me.Text1
  loc_19F8D98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_19F8DA0:   var_CC = CVar(var_B0) 'Address
  loc_19F8DA7:   Proc_6_17_EAA2B0(var_DC, var_CC)
  loc_19F8DB7:   Set var_B4 = Me.Text1
  loc_19F8DBD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_110)
  loc_19F8DC5:   var_130 = CVar(var_110) 'Address
  loc_19F8DCC:   Proc_6_17_EAA2B0(var_150, var_130)
  loc_19F8DDC:   Set var_17C = Me.Text1
  loc_19F8DE2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_19F8DEA:   var_1B4 = CVar(var_1A4) 'Address
  loc_19F8DF1:   Proc_6_17_EAA2B0(var_1C4, var_1B4)
  loc_19F8E01:   Set var_1E8 = Me.Text1
  loc_19F8E07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1EC)
  loc_19F8E0F:   var_1FC = CVar(var_1EC) 'Address
  loc_19F8E16:   Proc_6_17_EAA2B0(var_20C, var_1FC)
  loc_19F8E26:   Set var_230 = Me.Text1
  loc_19F8E2C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_234)
  loc_19F8E34:   var_244 = CVar(var_234) 'Address
  loc_19F8E3B:   Proc_6_17_EAA2B0(var_254, var_244)
  loc_19F8E4B:   Set var_288 = Me.Text1
  loc_19F8E51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_28C)
  loc_19F8E59:   var_29C = CVar(var_28C) 'Address
  loc_19F8E60:   Proc_6_17_EAA2B0(var_2AC, var_29C)
  loc_19F8E70:   Set var_2E0 = Me.Text1
  loc_19F8E76:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E4)
  loc_19F8E7E:   var_2F4 = CVar(var_2E4) 'Address
  loc_19F8E85:   Proc_6_17_EAA2B0(var_304, var_2F4)
  loc_19F8E95:   Set var_338 = Me.Text1
  loc_19F8E9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_33C)
  loc_19F8EA3:   var_34C = CVar(var_33C) 'Address
  loc_19F8EAA:   Proc_6_17_EAA2B0(var_35C, var_34C)
  loc_19F8EBD:   Set var_390 = Me.Text1
  loc_19F8EC3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_394)
  loc_19F8ECB:   var_164 = var_394.Text
  loc_19F8ED8:   var_1500 = Val(var_164)
  loc_19F8EE9:   Set var_3D8 = Me.Text1
  loc_19F8EEF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3DC, var_168)
  loc_19F8F04:   var_1508 = Val(var_168)
  loc_19F8F15:   Set var_420 = Me.Text1
  loc_19F8F1B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_424, var_428)
  loc_19F8F30:   var_1510 = Val(var_428)
  loc_19F8F41:   Set var_46C = Me.Text1
  loc_19F8F47:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_470, var_474)
  loc_19F8F5C:   var_1518 = Val(var_474)
  loc_19F8F6D:   Set var_4B8 = Me.Text1
  loc_19F8F73:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4BC, var_4C0)
  loc_19F8F88:   var_1520 = Val(var_4C0)
  loc_19F8F99:   Set var_504 = Me.Text1
  loc_19F8F9F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_508, var_50C)
  loc_19F8FB4:   var_1528 = Val(var_50C)
  loc_19F8FC5:   Set var_550 = Me.Text1
  loc_19F8FCB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_554, var_558)
  loc_19F8FE0:   var_1530 = Val(var_558)
  loc_19F8FF1:   Set var_59C = Me.Text1
  loc_19F8FF7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_5A0, var_5A4)
  loc_19F900C:   var_1538 = Val(var_5A4)
  loc_19F901D:   Set var_5E8 = Me.Text1
  loc_19F9023:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_5EC, var_5F0)
  loc_19F9038:   var_1540 = Val(var_5F0)
  loc_19F9049:   Set var_634 = Me.Text1
  loc_19F904F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_638, var_63C)
  loc_19F9064:   var_1548 = Val(var_63C)
  loc_19F9075:   Set var_680 = Me.Text1
  loc_19F907B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_684, var_688)
  loc_19F9090:   var_1550 = Val(var_688)
  loc_19F90A1:   Set var_6CC = Me.Text1
  loc_19F90A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_6D0, var_6D4)
  loc_19F90BC:   var_1558 = Val(var_6D4)
  loc_19F90CD:   Set var_718 = Me.Text1
  loc_19F90D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_71C, var_720)
  loc_19F90E8:   var_1560 = Val(var_720)
  loc_19F90F9:   Set var_764 = Me.Text1
  loc_19F90FF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_768, var_76C)
  loc_19F9114:   var_1568 = Val(var_76C)
  loc_19F9125:   Set var_7B0 = Me.Text1
  loc_19F912B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_7B4, var_7B8)
  loc_19F9140:   var_1570 = Val(var_7B8)
  loc_19F9151:   Set var_7FC = Me.Text1
  loc_19F9157:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_800, var_804)
  loc_19F916C:   var_1578 = Val(var_804)
  loc_19F917D:   Set var_848 = Me.Text1
  loc_19F9183:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_84C, var_850)
  loc_19F9198:   var_1580 = Val(var_850)
  loc_19F91A9:   Set var_894 = Me.Text1
  loc_19F91AF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_898, var_89C)
  loc_19F91C4:   var_1588 = Val(var_89C)
  loc_19F91D5:   Set var_8E0 = Me.Text1
  loc_19F91DB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_8E4, var_8E8)
  loc_19F91F0:   var_1590 = Val(var_8E8)
  loc_19F9201:   Set var_92C = Me.Text1
  loc_19F9207:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_930, var_934)
  loc_19F921C:   var_1598 = Val(var_934)
  loc_19F922D:   Set var_978 = Me.Text1
  loc_19F9233:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_97C, var_980)
  loc_19F924E:   Set var_9C4 = Me.Text1
  loc_19F9254:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_9C8)
  loc_19F926F:   Set var_A10 = Me.Text1
  loc_19F9275:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_A14)
  loc_19F9290:   Set var_A5C = Me.Text1
  loc_19F9296:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_A60)
  loc_19F92AE:   Set var_AA8 = Me.Text1
  loc_19F92B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_AAC)
  loc_19F92C3:   Proc_6_7_F25D88(var_ACC, CVar(var_AAC))
  loc_19F92D3:   Set var_B00 = Me.Text1
  loc_19F92D9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_B04)
  loc_19F92E8:   Proc_6_7_F25D88(var_B24, CVar(var_B04))
  loc_19F92F8:   Set var_B58 = Me.Text1
  loc_19F92FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_B5C)
  loc_19F930D:   Proc_6_7_F25D88(var_B7C, CVar(var_B5C))
  loc_19F931D:   Set var_BB0 = Me.Text1
  loc_19F9323:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_BB4)
  loc_19F9332:   Proc_6_17_EAA2B0(var_BD4, CVar(var_BB4))
  loc_19F9342:   Set var_C08 = Me.Text1
  loc_19F9348:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_C0C)
  loc_19F9357:   Proc_6_17_EAA2B0(var_C2C, CVar(var_C0C))
  loc_19F9369:   var_BA = Me.Check1.Value
  loc_19F9373:   var_CB0 = "'N'"
  loc_19F939D:   Set var_CF4 = Me.Check2
  loc_19F93B8:   var_D28 = "'Y'"
  loc_19F93DB:   Set var_D8C = Me.Text1
  loc_19F93E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_D90)
  loc_19F93F0:   Proc_6_17_EAA2B0(var_DB0, CVar(var_D90))
  loc_19F9400:   Set var_DE4 = Me.Text1
  loc_19F9406:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_DE8)
  loc_19F9415:   Proc_6_17_EAA2B0(var_E08, CVar(var_DE8))
  loc_19F9425:   Set var_E3C = Me.Text1
  loc_19F942B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_E40)
  loc_19F943A:   Proc_6_39_E7C810(var_E60, CVar(var_E40))
  loc_19F944A:   Set var_E94 = Me.Text1
  loc_19F9450:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_E98)
  loc_19F946F:   Set var_EDC = Me.Text1
  loc_19F9475:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_EE0)
  loc_19F947D:   var_EF0 = CVar(var_EE0) 'Address
  loc_19F94B9:   Proc_6_17_EAA2B0(var_F50, IIf((Trim(CVar(var_E98)) = vbNullString), "No", Trim(var_EF0)))
  loc_19F94CC:   Set var_F84 = Me.Text1
  loc_19F94D2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_F88)
  loc_19F94DA:   var_F8C = var_F88.Text
  loc_19F94E7:   var_15A0 = Val(var_F8C)
  loc_19F94F8:   Set var_FD0 = Me.Text1
  loc_19F94FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_FD4, var_FD8)
  loc_19F9513:   var_15A8 = Val(var_FD8)
  loc_19F9521:   Set var_101C = Me.Text1
  loc_19F9527:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_1020)
  loc_19F9536:   Proc_6_17_EAA2B0(var_1040, CVar(var_1020))
  loc_19F9549:   Set var_1074 = Me.Text1
  loc_19F954F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_1078, var_107C)
  loc_19F956A:   Set var_10C0 = Me.Text1
  loc_19F9570:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_10C4)
  loc_19F9585:   var_15B0 = Val(var_10C4.Text)
  loc_19F9596:   Set var_1228 = Me.Text1
  loc_19F959C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_122C, var_1230)
  loc_19F95E6:   Set var_136C = Me.IdProofImage
  loc_19F95FF:   Set var_110C = Me.Text1
  loc_19F9605:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_1110)
  loc_19F9624:   var_1138 = Proc_6_38_E68A98(CVar(var_1110.Text)) & "','"
  loc_19F9635:   Set var_112C = Me.Text1
  loc_19F963B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_1130, var_1134)
  loc_19F9643:   var_1138 = var_1130.Tag
  loc_19F9661:   var_1174 = CVar(var_B0 & var_1134 & "','" & MemVar_1F92070 & "',") 'String
  loc_19F966F:   Proc_6_8_EB0DE4(var_1164)
  loc_19F96CB:   var_12A0 = CVar(Proc_6_14_EF349C(var_1174)) & var_1164 & ",'A','" & CVar(MemVar_1F920C8) & "','" & CVar(MemVar_1F92078) & "'," & IIf((var_1230 = "No"), 0, 1) 
  loc_19F9701:   Proc_6_17_EAA2B0(var_1330, IIf((Me.EmployeeImage.Visible = &HFF), CVar(Me.EmployeeImage.Tag), vbNullString))
  loc_19F973F:   Proc_6_17_EAA2B0(var_13D0, IIf((Me.IdProofImage.Visible = &HFF), CVar(var_136C.Tag), vbNullString))
  loc_19F975F:   Set var_1404 = Me.Text1
  loc_19F9765:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_1408)
  loc_19F9774:   Proc_6_17_EAA2B0(var_1428, CVar(var_1408))
  loc_19F9794:   Set var_145C = Me.Text1
  loc_19F979A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_1460)
  loc_19F97A9:   Proc_6_17_EAA2B0(var_1480, CVar(var_1460))
  loc_19F97DD:   var_B8 = "INSERT INTO EMPLOYEE (Code,Name,F_Name,Add1,Add2,Spouse,Qualification,ESI_Code, PF_Code,Basic,DA,HRA,Income_Tax,Other_Allow,Other_Deduc,Conveyance,Medical,LTA,Curr_PF_Balance, OP_PF_Balance,OP_Loan,OP_Inst,OP_Advance,Tot_CL_Allow,Tot_EL_Allow,OP_Earned,OP_Casual, Curr_Earned,Curr_Casual,Department,Designation,Category,AC_CODE,Birth_Date,Joining_Date,Resign_Date,Sex,Marital, PF_YN, ESI_YN,Phone,PAN,increment,sunday,TOT_DL_ALLOW,TOT_VL_ALLOW,CURR_VL,CURR_DL,BankAcNo,IncrMth,OTRate,Offday,LOanAc,Site_Code,U_EntDt,U_AE,U_Name,LOGSITE_CODE,ActiveYN,PicPath,IdPicPath,IdProof,IdProofNo) VALUES ('" & global_72
  loc_19F97E4:   var_EC = CVar(var_B8 & "',") 'String
  loc_19F97EA:   var_10C = var_EC & var_DC 
  loc_19F97EE:   var_FC = ","
  loc_19F97FE:   var_140 = ","
  loc_19F985A:   var_36C = var_10C & var_FC & var_150 & var_140 & var_1C4 & "," & var_20C & "," & var_254 & "," & var_2AC & "," & var_304 & "," & var_35C 
  loc_19F98BE:   var_4E0 = var_36C & "," & CVar(var_3DC.Text) & "," & CVar(var_424.Text) & "," & CVar(var_470.Text) & "," & CVar(var_4BC.Text) & "," & CVar(var_508.Text) 
  loc_19F9922:   var_65C = var_4E0 & "," & CVar(var_554.Text) & "," & CVar(var_5A0.Text) & "," & CVar(var_5EC.Text) & "," & CVar(var_638.Text) & "," & CVar(var_684.Text) 
  loc_19F9986:   var_7D8 = var_65C & "," & CVar(var_6D0.Text) & "," & CVar(var_71C.Text) & "," & CVar(var_768.Text) & "," & CVar(var_7B4.Text) & "," & CVar(var_800.Text) 
  loc_19F99EA:   var_954 = var_7D8 & "," & CVar(var_84C.Text) & "," & CVar(var_898.Text) & "," & CVar(var_8E4.Text) & "," & CVar(var_930.Text) & "," & CVar(var_97C.Tag) 
  loc_19F9A33:   var_A74 = CVar(var_A60.Tag) 'String
  loc_19F9A4F:   var_AFC = var_954 & ",'" & CVar(var_980) & "','" & CVar(var_9C8.Tag) & "','" & CVar(var_A14.Tag) & "','" & var_A74 & "'," & var_ACC & "," 
  loc_19F9AA6:   var_D68 = var_AFC & var_B24 & "," & var_B7C & "," & var_BD4 & "," & var_C2C & "," & IIf((var_BA = 1), "'Y'", var_CB0) & "," & IIf((var_CF4.Value = 1), var_D28, "'N'") 
  loc_19F9AAF:   var_D88 = var_D68 & "," 
  loc_19F9ABF:   var_DE0 = var_D88 & var_DB0 & "," 
  loc_19F9ADF:   var_E90 = var_DE0 & var_E08 & "," & var_E60 & "," 
  loc_19F9B3A:   var_10BC = var_E90 & var_F50 & "," & CVar(var_FD4.Text) & "," & CVar(var_1078.Text) & ",0,0," & var_1040 & ",'" & CVar(var_107C) & "','" 
  loc_19F9B55:   var_14D0 = var_10BC & CVar(var_122C.Text) & "','" & Trim(var_12A0 & "," & var_1330 & "," & var_13D0 & "," & var_1428 & "," & var_1480 & ")") 
  loc_19F9B63:   unk_521E4C.Execute CStr(var_14D0), var_14F4, -1
  loc_19F9DEA: Else
  loc_19F9E05:   If (Me.Check1.Value = 1) Then
  loc_19F9E0E:     var_9A = "Y"
  loc_19F9E14:   Else
  loc_19F9E1A:     var_9A = "N"
  loc_19F9E1D:   End If
  loc_19F9E28:   Set var_AC = Me.Text1
  loc_19F9E2E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_19F9E36:   var_CC = CVar(var_B0) 'Address
  loc_19F9E3D:   Proc_6_17_EAA2B0(var_DC, var_CC)
  loc_19F9E4D:   Set var_B4 = Me.Text1
  loc_19F9E53:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_110)
  loc_19F9E5B:   var_120 = CVar(var_110) 'Address
  loc_19F9E62:   Proc_6_17_EAA2B0(var_130, var_120)
  loc_19F9E72:   Set var_17C = Me.Text1
  loc_19F9E78:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_19F9E87:   Proc_6_17_EAA2B0(var_1B4, CVar(var_1A4))
  loc_19F9E97:   Set var_1E8 = Me.Text1
  loc_19F9E9D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1EC)
  loc_19F9EAC:   Proc_6_17_EAA2B0(var_1FC, CVar(var_1EC))
  loc_19F9EBC:   Set var_230 = Me.Text1
  loc_19F9EC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_234)
  loc_19F9ED1:   Proc_6_17_EAA2B0(var_244, CVar(var_234))
  loc_19F9EE1:   Set var_288 = Me.Text1
  loc_19F9EE7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_28C)
  loc_19F9EF6:   Proc_6_17_EAA2B0(var_29C, CVar(var_28C))
  loc_19F9F06:   Set var_2E0 = Me.Text1
  loc_19F9F0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E4)
  loc_19F9F1B:   Proc_6_17_EAA2B0(var_2F4, CVar(var_2E4))
  loc_19F9F2B:   Set var_338 = Me.Text1
  loc_19F9F31:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_33C)
  loc_19F9F40:   Proc_6_17_EAA2B0(var_34C, CVar(var_33C))
  loc_19F9F53:   Set var_390 = Me.Text1
  loc_19F9F59:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_394)
  loc_19F9F61:   var_B8 = var_394.Text
  loc_19F9F6E:   var_1500 = Val(var_B8)
  loc_19F9F7F:   Set var_3D8 = Me.Text1
  loc_19F9F85:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3DC, var_164)
  loc_19F9F9A:   var_1508 = Val(var_164)
  loc_19F9FAB:   Set var_420 = Me.Text1
  loc_19F9FB1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_424, var_168)
  loc_19F9FC6:   var_1510 = Val(var_168)
  loc_19F9FD7:   Set var_46C = Me.Text1
  loc_19F9FDD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_470, var_428)
  loc_19F9FF2:   var_1518 = Val(var_428)
  loc_19FA003:   Set var_4B8 = Me.Text1
  loc_19FA009:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4BC, var_474)
  loc_19FA01E:   var_1520 = Val(var_474)
  loc_19FA02F:   Set var_504 = Me.Text1
  loc_19FA035:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_508, var_4C0)
  loc_19FA04A:   var_1528 = Val(var_4C0)
  loc_19FA05B:   Set var_550 = Me.Text1
  loc_19FA061:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_554, var_50C)
  loc_19FA076:   var_1530 = Val(var_50C)
  loc_19FA087:   Set var_59C = Me.Text1
  loc_19FA08D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_5A0, var_558)
  loc_19FA0A2:   var_1538 = Val(var_558)
  loc_19FA0B3:   Set var_5E8 = Me.Text1
  loc_19FA0B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_5EC, var_5A4)
  loc_19FA0CE:   var_1540 = Val(var_5A4)
  loc_19FA0DF:   Set var_634 = Me.Text1
  loc_19FA0E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_638, var_5F0)
  loc_19FA0FA:   var_1548 = Val(var_5F0)
  loc_19FA10B:   Set var_680 = Me.Text1
  loc_19FA111:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_684, var_63C)
  loc_19FA126:   var_1550 = Val(var_63C)
  loc_19FA137:   Set var_6CC = Me.Text1
  loc_19FA13D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_6D0, var_688)
  loc_19FA152:   var_1558 = Val(var_688)
  loc_19FA163:   Set var_718 = Me.Text1
  loc_19FA169:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_71C, var_6D4)
  loc_19FA17E:   var_1560 = Val(var_6D4)
  loc_19FA18F:   Set var_764 = Me.Text1
  loc_19FA195:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_768, var_720)
  loc_19FA1AA:   var_1568 = Val(var_720)
  loc_19FA1BB:   Set var_7B0 = Me.Text1
  loc_19FA1C1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_7B4, var_76C)
  loc_19FA1D6:   var_1570 = Val(var_76C)
  loc_19FA1E7:   Set var_7FC = Me.Text1
  loc_19FA1ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_800, var_7B8)
  loc_19FA202:   var_1578 = Val(var_7B8)
  loc_19FA213:   Set var_848 = Me.Text1
  loc_19FA219:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_84C, var_804)
  loc_19FA22E:   var_1580 = Val(var_804)
  loc_19FA23F:   Set var_894 = Me.Text1
  loc_19FA245:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_898, var_850)
  loc_19FA25A:   var_1588 = Val(var_850)
  loc_19FA26B:   Set var_8E0 = Me.Text1
  loc_19FA271:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_8E4, var_89C)
  loc_19FA286:   var_1590 = Val(var_89C)
  loc_19FA297:   Set var_92C = Me.Text1
  loc_19FA29D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_930, var_8E8)
  loc_19FA2B2:   var_1598 = Val(var_8E8)
  loc_19FA2C3:   Set var_978 = Me.Text1
  loc_19FA2C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_97C, var_934)
  loc_19FA2E4:   Set var_9C4 = Me.Text1
  loc_19FA2EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_9C8)
  loc_19FA305:   Set var_A10 = Me.Text1
  loc_19FA30B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_A14)
  loc_19FA326:   Set var_A5C = Me.Text1
  loc_19FA32C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_A60)
  loc_19FA342:   Proc_6_17_EAA2B0(var_A74, CVar(var_A60.Tag))
  loc_19FA352:   Set var_AA8 = Me.Text1
  loc_19FA358:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_AAC)
  loc_19FA367:   Proc_6_7_F25D88(var_ACC, CVar(var_AAC))
  loc_19FA377:   Set var_B00 = Me.Text1
  loc_19FA37D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_B04)
  loc_19FA38C:   Proc_6_7_F25D88(var_B24, CVar(var_B04))
  loc_19FA39C:   Set var_B58 = Me.Text1
  loc_19FA3A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_B5C)
  loc_19FA3B1:   Proc_6_7_F25D88(var_B7C, CVar(var_B5C))
  loc_19FA3C1:   Set var_BB0 = Me.Text1
  loc_19FA3C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_BB4)
  loc_19FA3D6:   Proc_6_17_EAA2B0(var_BD4, CVar(var_BB4))
  loc_19FA3E6:   Set var_C08 = Me.Text1
  loc_19FA3EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_C0C)
  loc_19FA3FB:   Proc_6_17_EAA2B0(var_C2C, CVar(var_C0C))
  loc_19FA40B:   Set var_C60 = Me.Text1
  loc_19FA411:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_CF4)
  loc_19FA420:   Proc_6_17_EAA2B0(var_CB0, CVar(var_CF4))
  loc_19FA430:   Set var_D8C = Me.Text1
  loc_19FA436:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_D90)
  loc_19FA445:   Proc_6_17_EAA2B0(var_D28, CVar(var_D90))
  loc_19FA455:   Set var_DE4 = Me.Text1
  loc_19FA45B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_DE8)
  loc_19FA46A:   Proc_6_39_E7C810(var_D88, CVar(var_DE8))
  loc_19FA47A:   Set var_E3C = Me.Text1
  loc_19FA480:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_E40)
  loc_19FA48F:   Proc_6_17_EAA2B0(var_DE0, CVar(var_E40))
  loc_19FA4A2:   Set var_E94 = Me.Text1
  loc_19FA4A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_E98)
  loc_19FA4BD:   var_15A0 = Val(var_E98.Text)
  loc_19FA4CE:   Set var_EDC = Me.Text1
  loc_19FA4D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_EE0, var_F8C)
  loc_19FA4E9:   var_15A8 = Val(var_F8C)
  loc_19FA4F7:   Set var_F84 = Me.Text1
  loc_19FA4FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_F88)
  loc_19FA50C:   Proc_6_17_EAA2B0(var_E90, CVar(var_F88))
  loc_19FA51C:   Set var_FD0 = Me.Text1
  loc_19FA522:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_FD4)
  loc_19FA531:   Proc_6_17_EAA2B0(var_EF0, CVar(var_FD4))
  loc_19FA543:   var_BA = Me.Check1.Value
  loc_19FA5B8:   Set var_1074 = Me.Text1
  loc_19FA5BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_1078, var_FD8)
  loc_19FA5D3:   var_15B0 = Val(var_FD8)
  loc_19FA5E4:   Set var_10C0 = Me.Text1
  loc_19FA5EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_10C4, var_107C)
  loc_19FA602:   Set var_110C = Me.Text1
  loc_19FA608:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_1110)
  loc_19FA629:   var_1164 = CVar(Proc_6_14_EF349C(var_14F8)) 'String
  loc_19FA62F:   Proc_6_8_EB0DE4(var_1174)
  loc_19FA642:   Set var_112C = Me.Text1
  loc_19FA648:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_1130)
  loc_19FA6C0:   Proc_6_17_EAA2B0(var_1330, IIf((Me.EmployeeImage.Visible = &HFF), CVar(Me.EmployeeImage.Tag), vbNullString))
  loc_19FA712:   Proc_6_17_EAA2B0(var_13D0, IIf((Me.IdProofImage.Visible = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_19FA722:   Set var_1364 = Me.Text1
  loc_19FA728:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_136C)
  loc_19FA737:   Proc_6_17_EAA2B0(var_1428, CVar(var_136C))
  loc_19FA747:   Set var_1404 = Me.Text1
  loc_19FA74D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_1408)
  loc_19FA75C:   Proc_6_17_EAA2B0(var_1480, CVar(var_1408))
  loc_19FA76C:   Set var_145C = Me.Text1
  loc_19FA772:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1460)
  loc_19FA781:   Proc_6_17_EAA2B0(var_14D0, CVar(var_1460))
  loc_19FA793:   var_FC = "UPDATE EMPLOYEE SET Name="
  loc_19FA79F:   var_140 = ",F_Name="
  loc_19FA7AB:   var_150 = var_FC & var_DC & var_140 & var_130 
  loc_19FA7FB:   var_304 = var_150 & ",Add1=" & var_1B4 & ",Add2=" & var_1FC & ",Spouse=" & var_244 & ",Qualification=" & var_29C & ",ESI_Code=" & var_2F4 
  loc_19FA847:   var_41C = var_304 & ",PF_Code=" & var_34C & ",Basic=" & CVar(var_3DC.Text) & ",DA=" & CVar(var_424.Text) & ",HRA=" & CVar(var_470.Text) 
  loc_19FA883:   var_500 = var_41C & ",Income_Tax=" & CVar(var_4BC.Text) & ",Other_Allow=" & CVar(var_508.Text) & ",Other_Deduc=" & CVar(var_554.Text) 
  loc_19FA8C3:   var_64C = ",Curr_PF_Balance=Curr_PF_Balance+"
  loc_19FA8C8:   var_610 = var_500 & ",Conveyance=" & CVar(var_5A0.Text) & ",Medical=" & CVar(var_5EC.Text) & ",LTA=" & CVar(var_638.Text) & CVar(var_684.Text) 
  loc_19FA8D6:   var_66C = CVar((var_684.Text - global_96)) 'Double
  loc_19FA916:   var_714 = var_610 & "," & ",OP_PF_Balance=" & CVar(var_6D0.Text) & ",OP_Loan=" & CVar(var_71C.Text) & ",OP_Inst=" & CVar(var_768.Text) 
  loc_19FA952:   var_7F8 = var_714 & ",OP_Advance=" & CVar(var_7B4.Text) & ",Tot_CL_Allow=" & CVar(var_800.Text) & ",Tot_EL_Allow=" & CVar(var_84C.Text) 
  loc_19FA97E:   var_8F8 = ",Curr_Earned=Curr_Earned+"
  loc_19FA991:   var_918 = CVar((var_930.Text - global_80)) 'Double
  loc_19FA99E:   var_908 = var_7F8 & ",OP_Earned=" & CVar(var_898.Text) & ",OP_Casual=" & CVar(var_8E4.Text) & CVar(var_930.Text) & "," & ",Curr_Casual=" 
  loc_19FA9E2:   var_A28 = var_908 & CVar(var_97C.Tag) & ",Department='" & CVar(var_934) & "',Designation='" & CVar(var_9C8.Tag) & "',Category='" & CVar(var_A14.Tag) 
  loc_19FAA2B:   var_BAC = var_A28 & "',AC_CODE=" & var_A74 & ",Birth_Date=" & var_ACC & ",Joining_Date=" & var_B24 & ",Resign_Date=" & var_B7C & ",Sex=" 
  loc_19FAA7B:   var_DB0 = var_BAC & var_BD4 & ",Marital=" & var_C2C & ",Phone= " & var_CB0 & ",PAN=" & var_D28 & ",INCREMENT=" & var_D88 & ",sunday=" 
  loc_19FAABA:   var_EA8 = var_DB0 & var_DE0 & ",TOT_DL_ALLOW=" & CVar(var_EE0.Text) & ",TOT_VL_ALLOW=" & CVar(var_1078.Text) & ",BankAcNo=" & var_E90 
  loc_19FAAEA:   var_1018 = var_EA8 & ",IncrMth=" & var_EF0 & ",PF_YN=" & IIf((var_BA = 1), "'Y'", "'N'") & ",ESI_YN=" & IIf((Me.Check2.Value = 1), "'Y'", "'N'") 
  loc_19FAB21:   var_1124 = var_1018 & ", OTRate='" & CVar(var_10C4.Tag) & "',LoanAc='" & CVar(var_107C) & "',offday='" & Trim(CVar(Proc_6_38_E68A98(CVar(var_1110)))) 
  loc_19FAB57:   var_1204 = var_1124 & "',U_EntDt=" & var_1174 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_Name='" & CVar(MemVar_1F920C8) 
  loc_19FAB90:   var_1400 = var_1204 & "',ActiveYN=" & IIf((var_1130.Text = "No"), 0, 1) & ",PicPath=" & var_1330 & ",IdPicPath=" & var_13D0 & ",IdProof=" 
  loc_19FABC5:   unk_521E4C.Execute CStr(var_1400 & var_1428 & ",IdProofNo=" & var_1480 & " WHERE CODE=" & var_14D0), var_15D0, -1
  loc_19FAE3B: End If
  loc_19FAE41: unk_521E4C.CommitTrans
  loc_19FAE51: var_8A = 0
  loc_19FAE62: Me.Recordset15.Requery -1
  loc_19FAE8F: Me.Recordset15.Find "SearchCode ='" & global_72 & "'", 0, 1
  loc_19FAE9F: Set var_AC = Me.TopCtrl1
  loc_19FAEA5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_FC)
  loc_19FAEBE: If (CStr(var_8A) = "Add") Then
  loc_19FAEC1:   Call TopCtrl1_UnknownEvent_A()
  loc_19FAEC6:   Exit Sub
  loc_19FAEC7: End If
  loc_19FAEEE: Call Proc_315_51_EAEF54(Proc_5_1_100CB50("INI", Me, global_112), var_14F8)
  loc_19FAEF9: Call Proc_315_50_17C921C(var_1164)
  loc_19FAF03: Set var_88 = Nothing
  loc_19FAF0B: Set var_94 = Nothing
  loc_19FAF0E: Exit Sub
  loc_19FAF0F: ' Referenced from: 19F8134
  loc_19FAF15: If (var_8A = &HFF) Then
  loc_19FAF1E:   unk_521E4C.RollbackTrans
  loc_19FAF23: End If
  loc_19FAF23: Proc_6_60_E62BC4()
  loc_19FAF28: Exit Sub
End Sub

Private Sub Text1_GotFocus(Index As Integer) '14EA3A8
  'Data Table: 521E38
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim var_B4 As String
  Dim Me As Variant
  Dim var_90 As Fields15
  loc_14E95A2: Set var_88 = Me.Text1
  loc_14E95A8: Call 0.Method_Text1_GotFocus0 (Index)
  loc_14E95B6: Proc_6_74_E226B0(var_8C)
  loc_14E95C2: Call Proc_315_53_F948B8(var_8C)
  loc_14E95CA: var_92 = Index
  loc_14E95D5: If Not (var_92 = CInt(&H1A)) Then
  loc_14E95E0:   If Not (var_92 = CInt(9)) Then
  loc_14E95EB:     If Not (var_92 = CInt(&HA)) Then
  loc_14E95F6:       If Not (var_92 = CInt(&HB)) Then
  loc_14E9601:         If Not (var_92 = CInt(&HF)) Then
  loc_14E960C:           If Not (var_92 = CInt(&HD)) Then
  loc_14E9617:             If Not (var_92 = CInt(&H11)) Then
  loc_14E9622:               If Not (var_92 = CInt(&H10)) Then
  loc_14E962D:                 If Not (var_92 = CInt(&H1F)) Then
  loc_14E9638:                   If Not (var_92 = CInt(&H23)) Then
  loc_14E9643:                     If Not (var_92 = CInt(&H14)) Then
  loc_14E964E:                       If Not (var_92 = CInt(&H15)) Then
  loc_14E9659:                         If Not (var_92 = CInt(&H16)) Then
  loc_14E9664:                           If Not (var_92 = CInt(&HC)) Then
  loc_14E966F:                             If Not (var_92 = CInt(&HE)) Then
  loc_14E967A:                               If Not (var_92 = CInt(&H2C)) Then
  loc_14E9685:                                 If Not (var_92 = CInt(&H2E)) Then
  loc_14E9690:                                   If Not (var_92 = CInt(&H13)) Then
  loc_14E969B:                                     If Not (var_92 = CInt(&H12)) Then
  loc_14E96A6:                                       If Not (var_92 = CInt(8)) Then
  loc_14E96B1:                                         If Not (var_92 = CInt(7)) Then
  loc_14E96BC:                                           If Not (var_92 = CInt(&H2D)) Then
  loc_14E96C7:                                             If Not (var_92 = CInt(&H18)) Then
  loc_14E96D2:                                               If Not (var_92 = CInt(&H17)) Then
  loc_14E96DD:                                                 If Not (var_92 = CInt(&H21)) Then
  loc_14E96E8:                                                   If Not (var_92 = CInt(&H20)) Then
  loc_14E96F3:                                                     If Not (var_92 = CInt(&H19)) Then
  loc_14E96FE:                                                       If Not (var_92 = CInt(&H1A)) Then
  loc_14E9709:                                                         If Not (var_92 = CInt(&H1B)) Then
  loc_14E9714:                                                           If (var_92 = CInt(&H1C)) Then
  loc_14E9717:                                                           End If
  loc_14E9717:                                                         End If
  loc_14E9717:                                                       End If
  loc_14E9717:                                                     End If
  loc_14E9717:                                                   End If
  loc_14E9717:                                                 End If
  loc_14E9717:                                               End If
  loc_14E9717:                                             End If
  loc_14E9717:                                           End If
  loc_14E9717:                                         End If
  loc_14E9717:                                       End If
  loc_14E9717:                                     End If
  loc_14E9717:                                   End If
  loc_14E9717:                                 End If
  loc_14E9717:                               End If
  loc_14E9717:                             End If
  loc_14E9717:                           End If
  loc_14E9717:                         End If
  loc_14E9717:                       End If
  loc_14E9717:                     End If
  loc_14E9717:                   End If
  loc_14E9717:                 End If
  loc_14E9717:               End If
  loc_14E9717:             End If
  loc_14E9717:           End If
  loc_14E9717:         End If
  loc_14E9717:       End If
  loc_14E9717:     End If
  loc_14E9717:   End If
  loc_14E9726:   Set var_88 = Me.Text1
  loc_14E972C:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14E9734:   var_8C.SelStart = 0
  loc_14E974D:   Set var_88 = Me.Text1
  loc_14E9753:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14E975B:   var_98 = var_8C.Text
  loc_14E976E:   Set var_90 = Me.Text1
  loc_14E9774:   Call 0.Method_Text1_GotFocus0 (Index, var_9C)
  loc_14E977C:   var_9C.SelLength = Len(var_98)
  loc_14E978F: End If
  loc_14E9792: var_9E = Index
  loc_14E979D: If (var_9E = CInt(&H24)) Then
  loc_14E97AD:   ReDim var_A4(0 To 1)
  loc_14E97C4:   var_A4(0) = "Male"
  loc_14E97D3:   var_A4(1) = "Female"
  loc_14E982A:   Set global_68 = Proc_6_66_EFF8FC(Me.ListView, Me.Text1, Index, Array(var_A4))
  loc_14E983E: Else
  loc_14E9846:   If (var_9E = CInt(&H27)) Then
  loc_14E9856:     ReDim var_A4(0 To 1)
  loc_14E986D:     var_A4(0) = "Married"
  loc_14E987C:     var_A4(1) = "Single"
  loc_14E98D3:     Set global_68 = Proc_6_66_EFF8FC(Me.ListView, Me.Text1, Index, Array(var_A4), 2)
  loc_14E98E7:   Else
  loc_14E98EF:     If (var_9E = CInt(&H2C)) Then
  loc_14E98FF:       ReDim var_A4(0 To 1)
  loc_14E9916:       var_A4(0) = "Yes"
  loc_14E9925:       var_A4(1) = "No"
  loc_14E997C:       Set global_68 = Proc_6_66_EFF8FC(Me.ListView, Me.Text1, Index, Array(var_A4), 2, Array(var_A4))
  loc_14E9990:     Else
  loc_14E9998:       If (var_9E = CInt(&H2E)) Then
  loc_14E99A8:         ReDim var_A4(0 To 6)
  loc_14E99BF:         var_A4(0) = "Sunday"
  loc_14E99CE:         var_A4(1) = "Monday"
  loc_14E99DD:         var_A4(2) = "Tuesday"
  loc_14E99EC:         var_A4(3) = "Wednesday"
  loc_14E99FB:         var_A4(4) = "Thursday"
  loc_14E9A0A:         var_A4(5) = "Friday"
  loc_14E9A19:         var_A4(6) = "Saturday"
  loc_14E9A70:         Set global_68 = Proc_6_66_EFF8FC(Me.ListView, Me.Text1, Index, Array(var_A4), 7, Array(var_A4))
  loc_14E9A84:       Else
  loc_14E9A8C:         If (var_9E = CInt(&H32)) Then
  loc_14E9A9C:           ReDim var_A4(0 To 5)
  loc_14E9AB3:           var_A4(0) = "DRIVING LICENCE"
  loc_14E9AC2:           var_A4(1) = "GREEN CARD"
  loc_14E9AD1:           var_A4(2) = "PASSPORT"
  loc_14E9AE0:           var_A4(3) = "UIDAI/AADHAR CARD"
  loc_14E9AEF:           var_A4(4) = "VOTER ID"
  loc_14E9AFE:           var_A4(5) = "NA"
  loc_14E9B15:           global_52 = Array(var_A4)
  loc_14E9B55:           Set global_68 = Proc_6_66_EFF8FC(Me.ListView, Me.Text1, Index, global_52, 6, global_52)
  loc_14E9B69:         Else
  loc_14E9B71:           If (var_9E = CInt(&H31)) Then
  loc_14E9B8B:             If (Me.RecordCount > 0) Then
  loc_14E9B99:               Set var_8C = Me.FGPoint
  loc_14E9BB1:               Proc_6_137_1193554(Me.DGDepartment, global_120, Index, var_8C, global_52)
  loc_14E9BBF:             End If
  loc_14E9C0D:             Set var_88 = Me.Text1
  loc_14E9C13:             Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14E9C1B:             2 = var_8C.Text
  loc_14E9C33:             If (global_52 Or (var_98 = vbNullString)) Then
  loc_14E9C36:               Exit Sub
  loc_14E9C37:             End If
  loc_14E9C44:             Set var_88 = Me.Text1
  loc_14E9C4A:             Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14E9C52:             var_9E = var_8C.Text
  loc_14E9C64:             var_B4 = "Name"
  loc_14E9C9F:             If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14E9CA8:               Me.MoveFirst
  loc_14E9CCB:               Set var_88 = Me.Text1
  loc_14E9CD1:               Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14E9CD9:               0 = var_8C.Text
  loc_14E9CF2:               Me.Find 1 & var_98 & "'", var_B4, var_92
  loc_14E9D07:             End If
  loc_14E9D0A:           Else
  loc_14E9D12:             If (var_9E = CInt(&H25)) Then
  loc_14E9D2C:               If (Me.RecordCount > 0) Then
  loc_14E9D3A:                 Set var_8C = Me.FGPoint
  loc_14E9D52:                 Proc_6_137_1193554(Me.DGDesignation, global_124)
  loc_14E9D60:               End If
  loc_14E9DAE:               Set var_88 = Me.Text1
  loc_14E9DB4:               Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14E9DBC:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14E9DD4:               If (Index Or (var_98 = vbNullString)) Then
  loc_14E9DD7:                 Exit Sub
  loc_14E9DD8:               End If
  loc_14E9DE5:               Set var_88 = Me.Text1
  loc_14E9DEB:               Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14E9DF3:               var_98 = var_8C.Text
  loc_14E9E05:               var_B4 = "Name"
  loc_14E9E40:               If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14E9E49:                 Me.MoveFirst
  loc_14E9E6C:                 Set var_88 = Me.Text1
  loc_14E9E72:                 Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14E9E7A:                 0 = var_8C.Text
  loc_14E9E93:                 Me.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14E9EA8:               End If
  loc_14E9EAB:             Else
  loc_14E9EB3:               If (var_9E = CInt(&H26)) Then
  loc_14E9ECD:                 If (Me.RecordCount > 0) Then
  loc_14E9EDB:                   Set var_8C = Me.FGPoint
  loc_14E9EF3:                   Proc_6_137_1193554(Me.DGAcName, global_128)
  loc_14E9F01:                 End If
  loc_14E9F4F:                 Set var_88 = Me.Text1
  loc_14E9F55:                 Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14E9F5D:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14E9F75:                 If (Index Or (var_98 = vbNullString)) Then
  loc_14E9F78:                   Exit Sub
  loc_14E9F79:                 End If
  loc_14E9F86:                 Set var_88 = Me.Text1
  loc_14E9F8C:                 Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14E9F94:                 var_98 = var_8C.Text
  loc_14E9FA6:                 var_B4 = "Name"
  loc_14E9FE1:                 If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14E9FEA:                   Me.MoveFirst
  loc_14EA00D:                   Set var_88 = Me.Text1
  loc_14EA013:                   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EA01B:                   0 = var_8C.Text
  loc_14EA034:                   Me.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14EA049:                 End If
  loc_14EA04C:               Else
  loc_14EA054:                 If (var_9E = CInt(&H2F)) Then
  loc_14EA071:                   If (Me.Recordset15.RecordCount > 0) Then
  loc_14EA07F:                     Set var_8C = Me.FGPoint
  loc_14EA09B:                     Proc_6_137_1193554(Me.DGLoan, global_116)
  loc_14EA0A9:                   End If
  loc_14EA100:                   Set var_88 = Me.Text1
  loc_14EA106:                   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14EA10E:                   ((global_116.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_14EA126:                   If (Index Or (var_98 = vbNullString)) Then
  loc_14EA129:                     Exit Sub
  loc_14EA12A:                   End If
  loc_14EA137:                   Set var_88 = Me.Text1
  loc_14EA13D:                   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EA145:                   var_98 = var_8C.Text
  loc_14EA157:                   var_B4 = "Name"
  loc_14EA195:                   If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_14EA1A1:                     Me.Recordset15.MoveFirst
  loc_14EA1C4:                     Set var_88 = Me.Text1
  loc_14EA1CA:                     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EA1D2:                     0 = var_8C.Text
  loc_14EA1EE:                     Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14EA203:                   End If
  loc_14EA206:                 Else
  loc_14EA20E:                   If (var_9E = CInt(&H2B)) Then
  loc_14EA228:                     If (Me.RecordCount > 0) Then
  loc_14EA236:                       Set var_8C = Me.FGPoint
  loc_14EA24E:                       Proc_6_137_1193554(Me.DGCategory, global_132)
  loc_14EA25C:                     End If
  loc_14EA2AA:                     Set var_88 = Me.Text1
  loc_14EA2B0:                     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14EA2B8:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14EA2D0:                     If (Index Or (var_98 = vbNullString)) Then
  loc_14EA2D3:                       Exit Sub
  loc_14EA2D4:                     End If
  loc_14EA2E1:                     Set var_88 = Me.Text1
  loc_14EA2E7:                     Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EA2EF:                     var_98 = var_8C.Text
  loc_14EA301:                     var_B4 = "Name"
  loc_14EA33C:                     If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14EA345:                       Me.MoveFirst
  loc_14EA368:                       Set var_88 = Me.Text1
  loc_14EA36E:                       Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EA376:                       0 = var_8C.Text
  loc_14EA38F:                       Me.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14EA3A4:                     End If
  loc_14EA3A4:                   End If
  loc_14EA3A4:                 End If
  loc_14EA3A4:               End If
  loc_14EA3A4:             End If
  loc_14EA3A4:           End If
  loc_14EA3A4:         End If
  loc_14EA3A4:       End If
  loc_14EA3A4:     End If
  loc_14EA3A4:   End If
  loc_14EA3A4: End If
  loc_14EA3A4: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) '14D4D18
  'Data Table: 521E38
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_AC As Variant
  Dim var_B8 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_C4 As TextBox
  Dim var_A8 As DataGrid
  loc_14D3F9A: If (CLng(Shift) = &H1B) Then
  loc_14D3F9D:   Call Proc_315_53_F948B8()
  loc_14D3FA2:   Exit Sub
  loc_14D3FA3: End If
  loc_14D3FA6: var_88 = KeyCode
  loc_14D3FB1: If Not (var_88 = CInt(9)) Then
  loc_14D3FBC:   If Not (var_88 = CInt(&HA)) Then
  loc_14D3FC7:     If Not (var_88 = CInt(&HB)) Then
  loc_14D3FD2:       If Not (var_88 = CInt(&HF)) Then
  loc_14D3FDD:         If Not (var_88 = CInt(&HD)) Then
  loc_14D3FE8:           If Not (var_88 = CInt(&H11)) Then
  loc_14D3FF3:             If Not (var_88 = CInt(&H10)) Then
  loc_14D3FFE:               If Not (var_88 = CInt(&H14)) Then
  loc_14D4009:                 If Not (var_88 = CInt(&H15)) Then
  loc_14D4014:                   If Not (var_88 = CInt(&H16)) Then
  loc_14D401F:                     If Not (var_88 = CInt(&HE)) Then
  loc_14D402A:                       If Not (var_88 = CInt(&HC)) Then
  loc_14D4035:                         If Not (var_88 = CInt(&H12)) Then
  loc_14D4040:                           If (var_88 = CInt(&H13)) Then
  loc_14D4043:                           End If
  loc_14D4043:                         End If
  loc_14D4043:                       End If
  loc_14D4043:                     End If
  loc_14D4043:                   End If
  loc_14D4043:                 End If
  loc_14D4043:               End If
  loc_14D4043:             End If
  loc_14D4043:           End If
  loc_14D4043:         End If
  loc_14D4043:       End If
  loc_14D4043:     End If
  loc_14D4043:   End If
  loc_14D404D:   Set var_8C = Me.Text1
  loc_14D4053:   Call 0.Method_Text1_KeyDown0 (KeyCode, var_90)
  loc_14D406E:   Proc_6_41_FA0BA4(var_90, Shift, 7)
  loc_14D407D: Else
  loc_14D4085:   If Not (var_88 = CInt(&H19)) Then
  loc_14D4090:     If Not (var_88 = CInt(&H1A)) Then
  loc_14D409B:       If Not (var_88 = CInt(&H1C)) Then
  loc_14D40A6:         If Not (var_88 = CInt(&H1B)) Then
  loc_14D40B1:           If Not (var_88 = CInt(&H17)) Then
  loc_14D40BC:             If (var_88 = CInt(&H18)) Then
  loc_14D40BF:             End If
  loc_14D40BF:           End If
  loc_14D40BF:         End If
  loc_14D40BF:       End If
  loc_14D40BF:     End If
  loc_14D40C9:     Set var_8C = Me.Text1
  loc_14D40CF:     Call 0.Method_Text1_KeyDown0 (KeyCode, var_90)
  loc_14D40EA:     Proc_6_41_FA0BA4(var_90, Shift, 3)
  loc_14D40F9:   Else
  loc_14D4101:     If (var_88 = CInt(&H24)) Then
  loc_14D4126:       Set var_8C = Me.Text1
  loc_14D412C:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_90, var_9C)
  loc_14D4134:       2 = var_90.Left
  loc_14D4146:       Set var_94 = Me.Text1
  loc_14D414C:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_A0, var_A4)
  loc_14D4154:       2 = var_A0.Top
  loc_14D4166:       Set var_A8 = Me.Text1
  loc_14D416C:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_AC)
  loc_14D4174:       var_B0 = var_AC.Height
  loc_14D4186:       Set var_B4 = Me.Text1
  loc_14D418C:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_B8)
  loc_14D4194:       var_BC = var_B8.Width
  loc_14D41E0:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D4207:     Else
  loc_14D420F:       If (var_88 = CInt(&H32)) Then
  loc_14D4234:         Set var_8C = Me.Text1
  loc_14D423A:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_90, var_9C, CInt(var_9C))
  loc_14D4242:         CInt(((var_A4 + var_B0) + CDbl(&H19))) = var_90.Left
  loc_14D4254:         Set var_94 = Me.Text1
  loc_14D425A:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_A0, var_A4)
  loc_14D4262:         CInt(var_BC) = var_A0.Top
  loc_14D4274:         Set var_A8 = Me.Text1
  loc_14D427A:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_14D4282:         1200 = var_AC.Height
  loc_14D4294:         Set var_B4 = Me.Text1
  loc_14D429A:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_B8)
  loc_14D42A2:         var_BC = var_B8.Width
  loc_14D42EA:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D4311:       Else
  loc_14D4319:         If (var_88 = CInt(&H31)) Then
  loc_14D4376:           Proc_6_69_134A198(Me.DGDepartment, Me.Text1, CInt(&H31), global_120, Shift, 0, 1, Nothing)
  loc_14D43E5:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D440B:             Proc_6_138_106D6F8(Me.DGDepartment, global_120, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D4419:           End If
  loc_14D441C:         Else
  loc_14D4424:           If (var_88 = CInt(&H25)) Then
  loc_14D4481:             Proc_6_69_134A198(Me.DGDesignation, Me.Text1, CInt(&H25), global_124, Shift, 0, 1, Nothing)
  loc_14D44F0:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D4516:               Proc_6_138_106D6F8(Me.DGDesignation, global_124, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D4524:             End If
  loc_14D4527:           Else
  loc_14D452F:             If (var_88 = CInt(&H26)) Then
  loc_14D458C:               Proc_6_69_134A198(Me.DGAcName, Me.Text1, CInt(&H26), global_128, Shift, 0, 1, Nothing)
  loc_14D45FB:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D4621:                 Proc_6_138_106D6F8(Me.DGAcName, global_128, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D462F:               End If
  loc_14D4632:             Else
  loc_14D463A:               If (var_88 = CInt(&H2F)) Then
  loc_14D4648:                 Set var_AC = Me.Text1
  loc_14D465A:                 Set var_A0 = Me.FGPoint
  loc_14D469B:                 Proc_6_69_134A198(Me.DGLoan, var_AC, CInt(&H2F), global_116, Shift, 0, 1, Nothing)
  loc_14D46BD:                 var_9C = Me.FGPoint.RecordCount
  loc_14D470D:                 If ((var_9C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D471B:                   Set var_90 = Me.FGPoint
  loc_14D4737:                   Proc_6_138_106D6F8(Me.DGLoan, global_116, KeyCode, var_90, var_A0, 0)
  loc_14D4745:                 End If
  loc_14D4748:               Else
  loc_14D4750:                 If (var_88 = CInt(&H27)) Then
  loc_14D4775:                   Set var_8C = Me.Text1
  loc_14D477B:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_90, var_9C, CInt(var_9C))
  loc_14D4783:                   CInt((var_A4 + var_B0)) = var_90.Left
  loc_14D4795:                   Set var_94 = Me.Text1
  loc_14D479B:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_A0, var_A4)
  loc_14D47A3:                   CInt(var_BC) = var_A0.Top
  loc_14D47B5:                   Set var_A8 = Me.Text1
  loc_14D47BB:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_14D47C3:                   1560 = var_AC.Height
  loc_14D47D5:                   Set var_B4 = Me.Text1
  loc_14D47DB:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_B8)
  loc_14D47E3:                   var_BC = var_B8.Width
  loc_14D4820:                   Set var_C4 = Me.ListView
  loc_14D482F:                   Proc_6_65_119423C(Me.FrmList, var_C4, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D4856:                 Else
  loc_14D485E:                   If (var_88 = CInt(&H2B)) Then
  loc_14D486C:                     Set var_AC = Me.Text1
  loc_14D48BB:                     Proc_6_69_134A198(Me.DGCategory, var_AC, CInt(&H2B), global_132, Shift, 0, 1, Nothing)
  loc_14D492A:                     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D4931:                       Set var_94 = Me.DGCategory
  loc_14D4950:                       Proc_6_138_106D6F8(var_94, global_132, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D495E:                     End If
  loc_14D4961:                   Else
  loc_14D4969:                     If (var_88 = CInt(&H2C)) Then
  loc_14D49A1:                       Set var_90 = Me.Text1
  loc_14D49A7:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_94, var_A4, CInt(Me.Frame_DETAIL.Left))
  loc_14D49AF:                       CInt(((var_A4 + var_B0) + CDbl(&H19))) = var_94.Left
  loc_14D49C1:                       var_B0 = Me.Frame_DETAIL.Top
  loc_14D49D4:                       Set var_A8 = Me.Text1
  loc_14D49DA:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_AC, var_BC)
  loc_14D49E2:                       CInt(var_BC) = var_AC.Top
  loc_14D49F5:                       Set var_B4 = Me.Text1
  loc_14D49FB:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_B8, var_DC)
  loc_14D4A03:                       600 = var_B8.Height
  loc_14D4A16:                       Set var_C0 = Me.Text1
  loc_14D4A1C:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_C4)
  loc_14D4A24:                       var_E0 = var_C4.Width
  loc_14D4A7C:                       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Text1, CInt(&H2C), Shift, arg_14)
  loc_14D4AA7:                     Else
  loc_14D4AAF:                       If (var_88 = CInt(&H2E)) Then
  loc_14D4AD4:                         var_9C = Me.Frame_DETAIL.Left
  loc_14D4AE7:                         Set var_90 = Me.Text1
  loc_14D4AED:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2E), var_94, var_A4, CInt((var_9C + var_A4)))
  loc_14D4AF5:                         CInt((((var_B0 + var_BC) + var_DC) + CDbl(&H19))) = var_94.Left
  loc_14D4B07:                         var_B0 = Me.Frame_DETAIL.Top
  loc_14D4B1A:                         Set var_A8 = Me.Text1
  loc_14D4B20:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2E), var_AC, var_BC)
  loc_14D4B28:                         CInt(var_E0) = var_AC.Top
  loc_14D4B3B:                         Set var_B4 = Me.Text1
  loc_14D4B41:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2E), var_B8, var_DC)
  loc_14D4B49:                         1200 = var_B8.Height
  loc_14D4B5C:                         Set var_C0 = Me.Text1
  loc_14D4B62:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_C4)
  loc_14D4B6A:                         var_E0 = var_C4.Width
  loc_14D4BBE:                         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D4BE6:                       End If
  loc_14D4BE6:                     End If
  loc_14D4BE6:                   End If
  loc_14D4BE6:                 End If
  loc_14D4BE6:               End If
  loc_14D4BE6:             End If
  loc_14D4BE6:           End If
  loc_14D4BE6:         End If
  loc_14D4BE6:       End If
  loc_14D4BE6:     End If
  loc_14D4BE6:   End If
  loc_14D4BE6: End If
  loc_14D4C8D: If ((((((CBool(Me.DGDepartment.Visible) = 0) And (CBool(Me.DGDesignation.Visible) = 0)) And (CBool(Me.DGLoan.Visible) = 0)) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(Me.DGCategory.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_14D4CAE:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1C))) Then
  loc_14D4CB7:     Call Text1_Validate(KeyCode)
  loc_14D4CC2:     If (var_86 = &HFF) Then
  loc_14D4CC5:       Exit Sub
  loc_14D4CC6:     End If
  loc_14D4CC9:     Call Proc_315_52_E7F014(KeyCode, var_86, CInt((var_9C + var_A4)), CInt((((var_B0 + var_BC) + var_DC) + CDbl(&H4B))))
  loc_14D4CCE:     Exit Sub
  loc_14D4CCF:   End If
  loc_14D4CE4:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14D4CED:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_E0))
  loc_14D4CF2:   End If
  loc_14D4CFA:   If (KeyCode <> CInt(1)) Then
  loc_14D4D07:     If (CLng(Shift) = &H26) Then
  loc_14D4D10:       Proc_6_76_E52838(Shift, arg_14)
  loc_14D4D15:     End If
  loc_14D4D15:   End If
  loc_14D4D15: End If
  loc_14D4D15: Exit Sub
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '122FF54
  'Data Table: 521E38
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_122FA2E: Proc_6_133_E7EF78(var_94)
  loc_122FA43: If (CInt(var_94) = &HD) Then
  loc_122FA48:   arg_10 = 0
  loc_122FA4B: End If
  loc_122FA4E: Proc_6_58_E054C0(arg_10, arg_10)
  loc_122FA56: var_96 = KeyAscii
  loc_122FA61: If Not (var_96 = CInt(9)) Then
  loc_122FA6C:   If Not (var_96 = CInt(&HA)) Then
  loc_122FA77:     If Not (var_96 = CInt(&HB)) Then
  loc_122FA82:       If Not (var_96 = CInt(&HF)) Then
  loc_122FA8D:         If Not (var_96 = CInt(&HD)) Then
  loc_122FA98:           If Not (var_96 = CInt(&H11)) Then
  loc_122FAA3:             If Not (var_96 = CInt(&H10)) Then
  loc_122FAAE:               If Not (var_96 = CInt(&H14)) Then
  loc_122FAB9:                 If Not (var_96 = CInt(&H15)) Then
  loc_122FAC4:                   If Not (var_96 = CInt(&H16)) Then
  loc_122FACF:                     If Not (var_96 = CInt(&HE)) Then
  loc_122FADA:                       If Not (var_96 = CInt(&HC)) Then
  loc_122FAE5:                         If Not (var_96 = CInt(&H12)) Then
  loc_122FAF0:                           If (var_96 = CInt(&H13)) Then
  loc_122FAF3:                           End If
  loc_122FAF3:                         End If
  loc_122FAF3:                       End If
  loc_122FAF3:                     End If
  loc_122FAF3:                   End If
  loc_122FAF3:                 End If
  loc_122FAF3:               End If
  loc_122FAF3:             End If
  loc_122FAF3:           End If
  loc_122FAF3:         End If
  loc_122FAF3:       End If
  loc_122FAF3:     End If
  loc_122FAF3:   End If
  loc_122FAFD:   Set var_9C = Me.Text1
  loc_122FB03:   Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_122FB1E:   Proc_6_42_129A86C(var_A0, arg_10, 7)
  loc_122FB2D: Else
  loc_122FB35:   If Not (var_96 = CInt(&H19)) Then
  loc_122FB40:     If Not (var_96 = CInt(&H1A)) Then
  loc_122FB4B:       If Not (var_96 = CInt(&H1C)) Then
  loc_122FB56:         If Not (var_96 = CInt(&H1B)) Then
  loc_122FB61:           If Not (var_96 = CInt(&H17)) Then
  loc_122FB6C:             If (var_96 = CInt(&H18)) Then
  loc_122FB6F:             End If
  loc_122FB6F:           End If
  loc_122FB6F:         End If
  loc_122FB6F:       End If
  loc_122FB6F:     End If
  loc_122FB79:     Set var_9C = Me.Text1
  loc_122FB7F:     Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, 2)
  loc_122FB9A:     Proc_6_42_129A86C(var_A0, arg_10, 3)
  loc_122FBA9:   Else
  loc_122FBB1:     If (var_96 = CInt(&H31)) Then
  loc_122FBD0:       If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_122FBFD:         Proc_6_89_146F1AC(Me.Text1, KeyAscii, global_120, arg_10, "Name")
  loc_122FC2F:         Proc_6_138_106D6F8(Me.DGDepartment, global_120, KeyAscii, Me.FGPoint)
  loc_122FC3D:       End If
  loc_122FC40:     Else
  loc_122FC48:       If (var_96 = CInt(&H25)) Then
  loc_122FC67:         If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_122FC94:           Proc_6_89_146F1AC(Me.Text1, KeyAscii, global_124, arg_10, "Name")
  loc_122FCC6:           Proc_6_138_106D6F8(Me.DGDesignation, global_124, KeyAscii, Me.FGPoint, 0)
  loc_122FCD4:         End If
  loc_122FCD7:       Else
  loc_122FCDF:         If (var_96 = CInt(&H26)) Then
  loc_122FCFE:           If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_122FD2B:             Proc_6_89_146F1AC(Me.Text1, KeyAscii, global_128, arg_10, "Name")
  loc_122FD5D:             Proc_6_138_106D6F8(Me.DGAcName, global_128, KeyAscii, Me.FGPoint, 0)
  loc_122FD6B:           End If
  loc_122FD6E:         Else
  loc_122FD76:           If (var_96 = CInt(&H2F)) Then
  loc_122FD95:             If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_122FDC6:               Proc_6_89_146F1AC(Me.Text1, KeyAscii, global_116, arg_10, "Name")
  loc_122FDFC:               Proc_6_138_106D6F8(Me.DGLoan, global_116, KeyAscii, Me.FGPoint, 0)
  loc_122FE0A:             End If
  loc_122FE0D:           Else
  loc_122FE15:             If (var_96 = CInt(&H2B)) Then
  loc_122FE34:               If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_122FE61:                 Proc_6_89_146F1AC(Me.Text1, KeyAscii, global_132, arg_10, "Name")
  loc_122FE7B:                 Set var_A0 = Me.FGPoint
  loc_122FE93:                 Proc_6_138_106D6F8(Me.DGCategory, global_132, KeyAscii, var_A0, 0)
  loc_122FEA1:               End If
  loc_122FEA4:             Else
  loc_122FEAC:               If (var_96 = CInt(&H30)) Then
  loc_122FECA:                 If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_122FEDA:                   If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_122FEEA:                     Set var_9C = Me.Text1
  loc_122FEF0:                     Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, "Yes", 0)
  loc_122FEF8:                     var_A0.Text = 2
  loc_122FF06:                     arg_10 = 0
  loc_122FF0C:                   Else
  loc_122FF19:                     If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_122FF29:                       Set var_9C = Me.Text1
  loc_122FF2F:                       Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, "No")
  loc_122FF37:                       var_A0.Text = arg_10
  loc_122FF45:                       arg_10 = 0
  loc_122FF48:                     End If
  loc_122FF48:                   End If
  loc_122FF4B:                 Else
  loc_122FF4D:                   arg_10 = 0
  loc_122FF50:                 End If
  loc_122FF50:               End If
  loc_122FF50:             End If
  loc_122FF50:           End If
  loc_122FF50:         End If
  loc_122FF50:       End If
  loc_122FF50:     End If
  loc_122FF50:   End If
  loc_122FF50: End If
  loc_122FF50: Exit Sub
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) '114903C
  'Data Table: 521E38
  Dim var_86 As Integer
  loc_1148C9F: var_86 = KeyCode
  loc_1148CAA: If (var_86 = CInt(&H24)) Then
  loc_1148CC8:   If (Me.FrmList.Visible = &HFF) Then
  loc_1148CF7:     Proc_6_64_F28E58(Me.ListView, Me.Text1, KeyCode)
  loc_1148D07:   End If
  loc_1148D0A: Else
  loc_1148D12:   If Not (var_86 = CInt(&H27)) Then
  loc_1148D1D:     If (var_86 = CInt(&H32)) Then
  loc_1148D20:     End If
  loc_1148D3B:     If (Me.FrmList.Visible = &HFF) Then
  loc_1148D6A:       Proc_6_64_F28E58(Me.ListView, Me.Text1, KeyCode, Shift)
  loc_1148D7A:     End If
  loc_1148D7D:   Else
  loc_1148D85:     If (var_86 = CInt(&H31)) Then
  loc_1148DA4:       If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_1148DB8:         var_B0 = "Name"
  loc_1148DDC:         Proc_6_68_129FB34(Me.DGDepartment, Me.Text1, KeyCode, global_120, Shift)
  loc_1148DEF:       End If
  loc_1148DF2:     Else
  loc_1148DFA:       If (var_86 = CInt(&H25)) Then
  loc_1148E19:         If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_1148E51:           Proc_6_68_129FB34(Me.DGDesignation, Me.Text1, KeyCode, global_124, Shift, "Name")
  loc_1148E64:         End If
  loc_1148E67:       Else
  loc_1148E6F:         If (var_86 = CInt(&H26)) Then
  loc_1148E8E:           If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_1148EC6:             Proc_6_68_129FB34(Me.DGAcName, Me.Text1, KeyCode, global_128, Shift, "Name")
  loc_1148ED9:           End If
  loc_1148EDC:         Else
  loc_1148EE4:           If (var_86 = CInt(&H2F)) Then
  loc_1148F03:             If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_1148F3F:               Proc_6_68_129FB34(Me.DGAcName, Me.Text1, KeyCode, global_116, Shift, "Name")
  loc_1148F52:             End If
  loc_1148F55:           Else
  loc_1148F5D:             If (var_86 = CInt(&H2B)) Then
  loc_1148F7C:               If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_1148FB4:                 Proc_6_68_129FB34(Me.DGCategory, Me.Text1, KeyCode, global_132, Shift, "Name")
  loc_1148FC7:               End If
  loc_1148FCA:             Else
  loc_1148FD2:               If Not (var_86 = CInt(&H2C)) Then
  loc_1148FDD:                 If (var_86 = CInt(&H2E)) Then
  loc_1148FE0:                 End If
  loc_1148FFB:                 If (Me.FrmList.Visible = &HFF) Then
  loc_114902A:                   Proc_6_64_F28E58(Me.ListView, Me.Text1, KeyCode, Shift, global_68)
  loc_114903A:                 End If
  loc_114903A:               End If
  loc_114903A:             End If
  loc_114903A:           End If
  loc_114903A:         End If
  loc_114903A:       End If
  loc_114903A:     End If
  loc_114903A:   End If
  loc_114903A: End If
  loc_114903A: Exit Sub
End Sub

Private Sub Text1_LostFocus(Index As Integer) 'E47FB4
  'Data Table: 521E38
  loc_E47F92: Set var_88 = Me.Text1
  loc_E47F98: Call 0.Method_Text1_LostFocus0 (Index)
  loc_E47FA6: Proc_6_73_E22704(var_8C)
  loc_E47FB2: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) '157EA58
  'Data Table: 521E38
  Dim var_86 As Integer
  Dim var_AC As String
  Dim var_A8 As Variant
  Dim var_C0 As TextBox
  Dim var_90 As Variant
  Dim var_A4 As ListView
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_110 As Variant
  Dim arg_10 As Integer
  loc_157D91F: var_86 = Cancel
  loc_157D92A: If Not (var_86 = CInt(9)) Then
  loc_157D935:   If Not (var_86 = CInt(&HA)) Then
  loc_157D940:     If Not (var_86 = CInt(&HB)) Then
  loc_157D94B:       If Not (var_86 = CInt(&HF)) Then
  loc_157D956:         If Not (var_86 = CInt(&HD)) Then
  loc_157D961:           If Not (var_86 = CInt(&H11)) Then
  loc_157D96C:             If Not (var_86 = CInt(&H10)) Then
  loc_157D977:               If Not (var_86 = CInt(&H14)) Then
  loc_157D982:                 If Not (var_86 = CInt(&H15)) Then
  loc_157D98D:                   If Not (var_86 = CInt(&H16)) Then
  loc_157D998:                     If Not (var_86 = CInt(&HE)) Then
  loc_157D9A3:                       If Not (var_86 = CInt(&HC)) Then
  loc_157D9AE:                         If Not (var_86 = CInt(&H12)) Then
  loc_157D9B9:                           If Not (var_86 = CInt(&H13)) Then
  loc_157D9C4:                             If Not (var_86 = CInt(&H19)) Then
  loc_157D9CF:                               If Not (var_86 = CInt(&H1A)) Then
  loc_157D9DA:                                 If Not (var_86 = CInt(&H1C)) Then
  loc_157D9E5:                                   If Not (var_86 = CInt(&H1B)) Then
  loc_157D9F0:                                     If Not (var_86 = CInt(&H17)) Then
  loc_157D9FB:                                       If (var_86 = CInt(&H18)) Then
  loc_157D9FE:                                       End If
  loc_157D9FE:                                     End If
  loc_157D9FE:                                   End If
  loc_157D9FE:                                 End If
  loc_157D9FE:                               End If
  loc_157D9FE:                             End If
  loc_157D9FE:                           End If
  loc_157D9FE:                         End If
  loc_157D9FE:                       End If
  loc_157D9FE:                     End If
  loc_157D9FE:                   End If
  loc_157D9FE:                 End If
  loc_157D9FE:               End If
  loc_157D9FE:             End If
  loc_157D9FE:           End If
  loc_157D9FE:         End If
  loc_157D9FE:       End If
  loc_157D9FE:     End If
  loc_157D9FE:   End If
  loc_157DA08:   Set var_8C = Me.Text1
  loc_157DA0E:   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157DA1A:   Proc_6_40_EA50F0(CVar(var_90))
  loc_157DA2E:   Set var_A4 = Me.Text1
  loc_157DA34:   Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DA3C:   var_A8.Text = CStr(var_86)
  loc_157DA53: Else
  loc_157DA5B:   If (var_86 = CInt(&H23)) Then
  loc_157DA68:     Set var_8C = Me.Text1
  loc_157DA6E:     Call 0.Method_Text1_Validate0 (Cancel)
  loc_157DAA9:     Set var_A8 = Me.Text1
  loc_157DAAF:     Call 0.Method_Text1_Validate0 (CInt(&H23), var_C0)
  loc_157DAB7:     var_C0.Text = CStr(Left(CVar(Proc_6_120_133A1D8(var_90)), 3))
  loc_157DAD8:   Else
  loc_157DAE0:     If (var_86 = CInt(&H24)) Then
  loc_157DAE6:       Call Text1_GotFocus(Cancel)
  loc_157DAF8:       Set var_8C = Me.Text1
  loc_157DAFE:       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157DB23:       Set var_A8 = Me.ListView.SelectedItem
  loc_157DB29:       var_A8.Text = var_90.Text
  loc_157DB4C:       Set var_8C = Me.Text1
  loc_157DB52:       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157DB71:       If (var_90.Text <> vbNullString) Then
  loc_157DB8C:         Set var_90 = Me.ListView.SelectedItem
  loc_157DB92:         var_AC = var_90.Text
  loc_157DBA4:         Set var_A4 = Me.Text1
  loc_157DBAA:         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DBB2:         var_A8.Text = var_AC
  loc_157DBC8:       End If
  loc_157DBCB:     Else
  loc_157DBD3:       If (var_86 = CInt(&H31)) Then
  loc_157DC24:         Set var_8C = Me.Text1
  loc_157DC2A:         Call 0.Method_Text1_Validate0 (Cancel, var_90, var_AC)
  loc_157DC32:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_157DC4A:         If (var_90 Or (var_AC = vbNullString)) Then
  loc_157DC4D:           Exit Sub
  loc_157DC4E:         End If
  loc_157DC89:         Set var_A4 = Me.Text1
  loc_157DC8F:         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DC97:         var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157DCCA:         var_90 = Me.Fields.Item("Code")
  loc_157DCE8:         Set var_A4 = Me.Text1
  loc_157DCEE:         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DCF6:         var_A8.Tag = CStr(var_90.Value)
  loc_157DD0F:       Else
  loc_157DD17:         If (var_86 = CInt(&H25)) Then
  loc_157DD68:           Set var_8C = Me.Text1
  loc_157DD6E:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157DD8E:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157DD91:             Exit Sub
  loc_157DD92:           End If
  loc_157DDCD:           Set var_A4 = Me.Text1
  loc_157DDD3:           Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DDDB:           var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157DE0E:           var_90 = Me.Fields.Item("Code")
  loc_157DE2C:           Set var_A4 = Me.Text1
  loc_157DE32:           Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DE3A:           var_A8.Tag = CStr(var_90.Value)
  loc_157DE53:         Else
  loc_157DE5B:           If (var_86 = CInt(&H26)) Then
  loc_157DEAC:             Set var_8C = Me.Text1
  loc_157DEB2:             Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157DED2:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157DED5:               Exit Sub
  loc_157DED6:             End If
  loc_157DF11:             Set var_A4 = Me.Text1
  loc_157DF17:             Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DF1F:             var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157DF52:             var_90 = Me.Fields.Item("Code")
  loc_157DF70:             Set var_A4 = Me.Text1
  loc_157DF76:             Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157DF7E:             var_A8.Tag = CStr(var_90.Value)
  loc_157DF97:           Else
  loc_157DF9F:             If (var_86 = CInt(&H2F)) Then
  loc_157DFF9:               Set var_8C = Me.Text1
  loc_157DFFF:               Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E01F:               If (((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157E022:                 Exit Sub
  loc_157E023:               End If
  loc_157E061:               Set var_A4 = Me.Text1
  loc_157E067:               Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E06F:               var_A8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_157E0A5:               var_90 = Me.Recordset15.Fields.Item("Code")
  loc_157E0C3:               Set var_A4 = Me.Text1
  loc_157E0C9:               Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E0D1:               var_A8.Tag = CStr(var_90.Value)
  loc_157E0EA:             Else
  loc_157E0F2:               If (var_86 = CInt(&H2B)) Then
  loc_157E143:                 Set var_8C = Me.Text1
  loc_157E149:                 Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E169:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157E16C:                   Exit Sub
  loc_157E16D:                 End If
  loc_157E1A8:                 Set var_A4 = Me.Text1
  loc_157E1AE:                 Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E1B6:                 var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157E1E9:                 var_90 = Me.Fields.Item("Code")
  loc_157E207:                 Set var_A4 = Me.Text1
  loc_157E20D:                 Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E215:                 var_A8.Tag = CStr(var_90.Value)
  loc_157E22E:               Else
  loc_157E236:                 If (var_86 = CInt(&H27)) Then
  loc_157E23C:                   Call Text1_GotFocus(Cancel)
  loc_157E24E:                   Set var_8C = Me.Text1
  loc_157E254:                   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E279:                   Set var_A8 = Me.ListView.SelectedItem
  loc_157E27F:                   var_A8.Text = var_90.Text
  loc_157E2A2:                   Set var_8C = Me.Text1
  loc_157E2A8:                   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E2C7:                   If (var_90.Text <> vbNullString) Then
  loc_157E2E2:                     Set var_90 = Me.ListView.SelectedItem
  loc_157E2FA:                     Set var_A4 = Me.Text1
  loc_157E300:                     Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E308:                     var_A8.Text = var_90.Text
  loc_157E31E:                   End If
  loc_157E321:                 Else
  loc_157E329:                   If (var_86 = CInt(&H2C)) Then
  loc_157E32F:                     Call Text1_GotFocus(Cancel)
  loc_157E341:                     Set var_8C = Me.Text1
  loc_157E347:                     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E36C:                     Set var_A8 = Me.ListView.SelectedItem
  loc_157E372:                     var_A8.Text = var_90.Text
  loc_157E395:                     Set var_8C = Me.Text1
  loc_157E39B:                     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E3BA:                     If (var_90.Text <> vbNullString) Then
  loc_157E3D5:                       Set var_90 = Me.ListView.SelectedItem
  loc_157E3ED:                       Set var_A4 = Me.Text1
  loc_157E3F3:                       Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E3FB:                       var_A8.Text = var_90.Text
  loc_157E411:                     End If
  loc_157E41E:                     Set var_8C = Me.Text1
  loc_157E424:                     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E443:                     If (var_90.Text = vbNullString) Then
  loc_157E453:                       Set var_8C = Me.Text1
  loc_157E459:                       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E461:                       var_90.Text = "No"
  loc_157E46D:                     End If
  loc_157E470:                   Else
  loc_157E478:                     If (var_86 = CInt(&H2E)) Then
  loc_157E47E:                       Call Text1_GotFocus(Cancel)
  loc_157E490:                       Set var_8C = Me.Text1
  loc_157E496:                       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E4BB:                       Set var_A8 = Me.ListView.SelectedItem
  loc_157E4C1:                       var_A8.Text = var_90.Text
  loc_157E4E4:                       Set var_8C = Me.Text1
  loc_157E4EA:                       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E509:                       If (var_90.Text <> vbNullString) Then
  loc_157E524:                         Set var_90 = Me.ListView.SelectedItem
  loc_157E53C:                         Set var_A4 = Me.Text1
  loc_157E542:                         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E54A:                         var_A8.Text = var_90.Text
  loc_157E560:                       End If
  loc_157E56E:                       Set var_8C = Me.Text1
  loc_157E574:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_90)
  loc_157E597:                       Set var_A4 = Me.Text1
  loc_157E59D:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_A8)
  loc_157E5A5:                       var_C4 = var_A8.Text
  loc_157E5C1:                       Set var_C0 = Me.Text1
  loc_157E5C7:                       Call 0.Method_Text1_Validate0 (Cancel, var_E0)
  loc_157E5D6:                       var_BC = Trim(CVar(var_E0))
  loc_157E5E8:                       var_110 = ((var_90.Text <> vbNullString) And (var_C4 <> "No")) And (var_BC = vbNullString)
  loc_157E60B:                       If CBool(var_110) Then
  loc_157E610:                         arg_10 = &HFF
  loc_157E613:                       End If
  loc_157E621:                       Set var_8C = Me.Text1
  loc_157E627:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_90)
  loc_157E64A:                       Set var_A4 = Me.Text1
  loc_157E650:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_A8, var_C4)
  loc_157E658:                       (var_90.Text = vbNullString) = var_A8.Text
  loc_157E678:                       If (arg_10 Or (var_C4 = "No")) Then
  loc_157E689:                         Set var_8C = Me.Text1
  loc_157E68F:                         Call 0.Method_Text1_Validate0 (CInt(&H2E), var_90)
  loc_157E697:                         var_90.Text = vbNullString
  loc_157E6A3:                       End If
  loc_157E6A6:                     Else
  loc_157E6AE:                       If (var_86 = CInt(&H29)) Then
  loc_157E6BE:                         Set var_8C = Me.Text1
  loc_157E6C4:                         Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E6E3:                         If (var_90.Text <> vbNullString) Then
  loc_157E6F1:                           Set var_8C = Me.Text1
  loc_157E6F7:                           Call 0.Method_Text1_Validate0 (CInt(&H29))
  loc_157E718:                           Set var_A8 = Me.Text1
  loc_157E71E:                           Call 0.Method_Text1_Validate0 (CInt(&H29), var_C0)
  loc_157E726:                           var_C0.Text = Proc_6_33_1512840(var_90)
  loc_157E739:                         End If
  loc_157E747:                         Set var_8C = Me.Text1
  loc_157E74D:                         Call 0.Method_Text1_Validate0 (CInt(&H28), var_90)
  loc_157E770:                         Set var_A4 = Me.Text1
  loc_157E776:                         Call 0.Method_Text1_Validate0 (CInt(&H29), var_A8, var_C4)
  loc_157E77E:                         (var_90.Text <> vbNullString) = var_A8.Text
  loc_157E79E:                         If (var_90 And (var_C4 <> vbNullString)) Then
  loc_157E7AF:                           Set var_A4 = Me.Text1
  loc_157E7B5:                           Call 0.Method_Text1_Validate0 (CInt(&H28), var_A8)
  loc_157E7BD:                           var_C4 = var_A8.Text
  loc_157E7D0:                           Set var_8C = Me.Text1
  loc_157E7D6:                           Call 0.Method_Text1_Validate0 (CInt(&H29), var_90)
  loc_157E800:                           If (CDate(var_90.Text) <= CDate(var_C4)) Then
  loc_157E81C:                             MsgBox("Joining date should be greater than Birth Date", &H40, var_BC, var_F0, var_110)
  loc_157E82E:                             arg_10 = &HFF
  loc_157E831:                             Exit Sub
  loc_157E832:                           End If
  loc_157E832:                         End If
  loc_157E835:                       Else
  loc_157E83D:                         If (var_86 = CInt(&H2A)) Then
  loc_157E84D:                           Set var_8C = Me.Text1
  loc_157E853:                           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E872:                           If (var_90.Text <> vbNullString) Then
  loc_157E880:                             Set var_8C = Me.Text1
  loc_157E886:                             Call 0.Method_Text1_Validate0 (CInt(&H2A), var_90)
  loc_157E8A7:                             Set var_A8 = Me.Text1
  loc_157E8AD:                             Call 0.Method_Text1_Validate0 (CInt(&H2A), var_C0)
  loc_157E8B5:                             var_C0.Text = Proc_6_33_1512840(var_90)
  loc_157E8C8:                           End If
  loc_157E8D6:                           Set var_8C = Me.Text1
  loc_157E8DC:                           Call 0.Method_Text1_Validate0 (CInt(&H29), var_90)
  loc_157E8FF:                           Set var_A4 = Me.Text1
  loc_157E905:                           Call 0.Method_Text1_Validate0 (CInt(&H2A), var_A8, var_C4)
  loc_157E90D:                           (var_90.Text <> vbNullString) = var_A8.Text
  loc_157E92D:                           If (arg_10 And (var_C4 <> vbNullString)) Then
  loc_157E93E:                             Set var_A4 = Me.Text1
  loc_157E944:                             Call 0.Method_Text1_Validate0 (CInt(&H2A), var_A8)
  loc_157E95F:                             Set var_8C = Me.Text1
  loc_157E965:                             Call 0.Method_Text1_Validate0 (CInt(&H29), var_90)
  loc_157E98F:                             If (CDate(var_90.Text) >= CDate(var_A8.Text)) Then
  loc_157E9AB:                               MsgBox("Resign date should be greater than Joining Date", &H40, var_BC, var_F0, var_110)
  loc_157E9BD:                               arg_10 = &HFF
  loc_157E9C0:                               Exit Sub
  loc_157E9C1:                             End If
  loc_157E9C1:                           End If
  loc_157E9C4:                         Else
  loc_157E9CC:                           If (var_86 = CInt(&H28)) Then
  loc_157E9DC:                             Set var_8C = Me.Text1
  loc_157E9E2:                             Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157EA01:                             If (var_90.Text <> vbNullString) Then
  loc_157EA0F:                               Set var_8C = Me.Text1
  loc_157EA15:                               Call 0.Method_Text1_Validate0 (CInt(&H28), var_90)
  loc_157EA36:                               Set var_A8 = Me.Text1
  loc_157EA3C:                               Call 0.Method_Text1_Validate0 (CInt(&H28), var_C0)
  loc_157EA44:                               var_C0.Text = Proc_6_33_1512840(var_90)
  loc_157EA57:                             End If
  loc_157EA57:                           End If
  loc_157EA57:                         End If
  loc_157EA57:                       End If
  loc_157EA57:                     End If
  loc_157EA57:                   End If
  loc_157EA57:                 End If
  loc_157EA57:               End If
  loc_157EA57:             End If
  loc_157EA57:           End If
  loc_157EA57:         End If
  loc_157EA57:       End If
  loc_157EA57:     End If
  loc_157EA57:   End If
  loc_157EA57: End If
  loc_157EA57: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EA09D0
  'Data Table: 521E38
  loc_EA0956: On Error Goto loc_EA09C9
  loc_EA0962: Me.Recordset15.MoveFirst
  loc_EA098F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EA09BB: Proc_5_0_110649C(&HFF, Me, global_112)
  loc_EA09C3: Call Proc_315_50_17C921C(0)
  loc_EA09C8: Exit Sub
  loc_EA09C9: ' Referenced from: EA0956
  loc_EA09C9: Proc_6_60_E62BC4(var_A0)
  loc_EA09CE: Exit Sub
End Sub

Public Sub Proc_315_48_EA2498
  'Data Table: 521E38
  Dim var_B8 As String
  loc_EA2414: On Error Goto loc_EA2490
  loc_EA2431: If (Me.Recordset15.RecordCount <= 0) Then
  loc_EA243A:   var_B8 = "Information"
  loc_EA2455:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EA2465:   Exit Sub
  loc_EA2466: End If
  loc_EA2469: MemVar_1F920E4 = "SELECT  code as searchcode, code as Emp_Code, Name As Emp_Name, Sex, Basic, Add1 As Address , Phone AS Phone_No, PAN As PAN_No , str(Joining_Date) as JoiningDate, str(Resign_Date) as ResignDate, cat_desc as Category,desg_desc as Designation FROM  ( Employee  left join category_emp ON EMPLOYEE.CATEGORY=CATEGORY_EMP.CAT_CODE) LEFT JOIN DESIG ON EMPLOYEE.DESIGNATION=DESIG.DESG_CODE ORDER BY  Code, Name"
  loc_EA2473: MemVar_1F92120 = Me
  loc_EA248A: Call 0.Method_arg_2B0 (1)
  loc_EA248F: Exit Sub
  loc_EA2490: ' Referenced from: EA2414
  loc_EA2490: Proc_6_60_E62BC4(var_B8)
  loc_EA2495: Exit Sub
End Sub

Public Sub Proc_315_49_F779F4
  'Data Table: 521E38
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F778B0: Set var_8C = Me.Text1
  loc_F778B6: Call 0.Method_Proc_315_49_F779F4C (var_8E, var_86)
  loc_F778C4: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F778D7:   Set var_8C = Me.Text1
  loc_F778DD:   Call 0.Method_Proc_315_49_F779F40 (var_86, var_98)
  loc_F778E5:   var_98.Text = vbNullString
  loc_F778FE:   Set var_8C = Me.Text1
  loc_F77904:   Call 0.Method_Proc_315_49_F779F40 (var_86, var_98)
  loc_F7790C:   var_98.Tag = vbNullString
  loc_F7791B: Next var_92 'Integer
  loc_F7793E: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F77953: Me.EmployeeImage.Picture = var_8C
  loc_F7796C: Me.EmployeeImage.Tag = vbNullString
  loc_F7797A: Set var_8C = Me.EmployeeImage
  loc_F77980: var_8C.Visible = True
  loc_F779A6: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F779BB: Me.IdProofImage.Picture = var_8C
  loc_F779D4: Me.IdProofImage.Tag = vbNullString
  loc_F779E8: Me.IdProofImage.Visible = True
  loc_F779F0: Exit Sub
End Sub

Public Sub Proc_315_50_17C921C
  'Data Table: 521E38
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_E0 As Variant
  Dim var_124 As String
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_1EC As Variant
  loc_17C71E0: On Error Goto loc_17C9214
  loc_17C71EF: Me.Frame1.Enabled = False
  loc_17C7203: Me.CmdRemoveEmpDetail.Enabled = True
  loc_17C7225: If (Me.Recordset15.RecordCount > 0) Then
  loc_17C72D7:   var_184 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17C7322:   Me.LblUser.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_Name")))))
  loc_17C73A8:   var_D0 = Me.Recordset15.Fields.Item("U_AE")
  loc_17C73B0:   var_E0 = CVar(var_D0) 'Address
  loc_17C73BC:   var_124 = "entdt : "
  loc_17C7409:   var_184 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_E0) = "E"), "Last Update : ", var_124))
  loc_17C7454:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_EntDt")))))
  loc_17C74CB:   Set var_BC = Me.Text1
  loc_17C74D1:   Call 0.Method_Proc_315_50_17C921C0 (CInt(0), var_D0)
  loc_17C74D9:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_17C752B:   Set var_BC = Me.Text1
  loc_17C7531:   Call 0.Method_Proc_315_50_17C921C0 (CInt(1), var_D0)
  loc_17C7539:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")))
  loc_17C7589:   Set var_BC = Me.Text1
  loc_17C758F:   Call 0.Method_Proc_315_50_17C921C0 (CInt(2), var_D0)
  loc_17C7597:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("F_Name")))
  loc_17C75E7:   Set var_BC = Me.Text1
  loc_17C75ED:   Call 0.Method_Proc_315_50_17C921C0 (CInt(3), var_D0)
  loc_17C75F5:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Add1")))
  loc_17C7645:   Set var_BC = Me.Text1
  loc_17C764B:   Call 0.Method_Proc_315_50_17C921C0 (CInt(4), var_D0)
  loc_17C7653:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Add2")))
  loc_17C76A3:   Set var_BC = Me.Text1
  loc_17C76A9:   Call 0.Method_Proc_315_50_17C921C0 (CInt(5), var_D0)
  loc_17C76B1:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Spouse")))
  loc_17C7701:   Set var_BC = Me.Text1
  loc_17C7707:   Call 0.Method_Proc_315_50_17C921C0 (CInt(6), var_D0)
  loc_17C770F:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Qualification")))
  loc_17C775F:   Set var_BC = Me.Text1
  loc_17C7765:   Call 0.Method_Proc_315_50_17C921C0 (CInt(7), var_D0)
  loc_17C776D:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ESI_Code")))
  loc_17C77BD:   Set var_BC = Me.Text1
  loc_17C77C3:   Call 0.Method_Proc_315_50_17C921C0 (CInt(8), var_D0)
  loc_17C77CB:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PF_Code")))
  loc_17C7804:   var_B4 = CVar(Me.Recordset15.Fields.Item("Basic")) 'Address
  loc_17C780B:   Proc_6_39_E7C810(var_E0)
  loc_17C7822:   Set var_BC = Me.Text1
  loc_17C7828:   Call 0.Method_Proc_315_50_17C921C0 (CInt(9), var_D0)
  loc_17C7830:   var_D0.Text = CStr(var_E0)
  loc_17C7874:   Proc_6_39_E7C810(var_E0, CVar(Me.Recordset15.Fields.Item("DA")))
  loc_17C788B:   Set var_BC = Me.Text1
  loc_17C7891:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&HA), var_D0)
  loc_17C7899:   var_D0.Text = CStr(var_E0)
  loc_17C78F0:   Set var_BC = Me.Text1
  loc_17C78F6:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&HB), var_D0)
  loc_17C78FE:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("HRA").Value)
  loc_17C7953:   Set var_BC = Me.Text1
  loc_17C7959:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&HC), var_D0)
  loc_17C7961:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Income_Tax").Value)
  loc_17C79B6:   Set var_BC = Me.Text1
  loc_17C79BC:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&HD), var_D0)
  loc_17C79C4:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Other_Allow").Value)
  loc_17C7A19:   Set var_BC = Me.Text1
  loc_17C7A1F:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&HE), var_D0)
  loc_17C7A27:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Other_Deduc").Value)
  loc_17C7A7C:   Set var_BC = Me.Text1
  loc_17C7A82:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&HF), var_D0)
  loc_17C7A8A:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Conveyance").Value)
  loc_17C7ADF:   Set var_BC = Me.Text1
  loc_17C7AE5:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H10), var_D0)
  loc_17C7AED:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Medical").Value)
  loc_17C7B42:   Set var_BC = Me.Text1
  loc_17C7B48:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H11), var_D0)
  loc_17C7B50:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("LTA").Value)
  loc_17C7BA5:   Set var_BC = Me.Text1
  loc_17C7BAB:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H12), var_D0)
  loc_17C7BB3:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Curr_PF_Balance").Value)
  loc_17C7C08:   Set var_BC = Me.Text1
  loc_17C7C0E:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H13), var_D0)
  loc_17C7C16:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_PF_Balance").Value)
  loc_17C7C6B:   Set var_BC = Me.Text1
  loc_17C7C71:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H14), var_D0)
  loc_17C7C79:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Loan").Value)
  loc_17C7CCE:   Set var_BC = Me.Text1
  loc_17C7CD4:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H15), var_D0)
  loc_17C7CDC:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Inst").Value)
  loc_17C7D31:   Set var_BC = Me.Text1
  loc_17C7D37:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H16), var_D0)
  loc_17C7D3F:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Advance").Value)
  loc_17C7D94:   Set var_BC = Me.Text1
  loc_17C7D9A:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H17), var_D0)
  loc_17C7DA2:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Tot_CL_Allow").Value)
  loc_17C7DF7:   Set var_BC = Me.Text1
  loc_17C7DFD:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H18), var_D0)
  loc_17C7E05:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Tot_EL_Allow").Value)
  loc_17C7E5A:   Set var_BC = Me.Text1
  loc_17C7E60:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H19), var_D0)
  loc_17C7E68:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Earned").Value)
  loc_17C7EBD:   Set var_BC = Me.Text1
  loc_17C7EC3:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H1A), var_D0)
  loc_17C7ECB:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Casual").Value)
  loc_17C7F20:   Set var_BC = Me.Text1
  loc_17C7F26:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H1B), var_D0)
  loc_17C7F2E:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Curr_Earned").Value)
  loc_17C7F83:   Set var_BC = Me.Text1
  loc_17C7F89:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H1C), var_D0)
  loc_17C7F91:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Curr_Casual").Value)
  loc_17C7FE3:   Set var_BC = Me.Text1
  loc_17C7FE9:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H1D), var_D0)
  loc_17C7FF1:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PAN")))
  loc_17C8041:   Set var_BC = Me.Text1
  loc_17C8047:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H32), var_D0)
  loc_17C804F:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("IdProof")))
  loc_17C809F:   Set var_BC = Me.Text1
  loc_17C80A5:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H33), var_D0)
  loc_17C80AD:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("IdProofNo")))
  loc_17C80FD:   Set var_BC = Me.Text1
  loc_17C8103:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H1E), var_D0)
  loc_17C810B:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Phone")))
  loc_17C814B:   Proc_6_39_E7C810(var_E0, CVar(Me.Recordset15.Fields.Item("Increment")))
  loc_17C8162:   Set var_BC = Me.Text1
  loc_17C8168:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H1F), var_D0)
  loc_17C8170:   var_D0.Text = CStr(var_E0)
  loc_17C81B4:   Proc_6_39_E7C810(var_E0, CVar(Me.Recordset15.Fields.Item("Tot_DL_Allow")))
  loc_17C81C9:   Set var_BC = Me.Text1
  loc_17C81CF:   Call 0.Method_Proc_315_50_17C921C0 (&H21, var_D0)
  loc_17C81D7:   var_D0.Text = CStr(var_E0)
  loc_17C821B:   Proc_6_39_E7C810(var_E0, CVar(Me.Recordset15.Fields.Item("Tot_VL_Allow")))
  loc_17C8230:   Set var_BC = Me.Text1
  loc_17C8236:   Call 0.Method_Proc_315_50_17C921C0 (&H20, var_D0)
  loc_17C823E:   var_D0.Text = CStr(var_E0)
  loc_17C8292:   Set var_BC = Me.Text1
  loc_17C8298:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H22), var_D0)
  loc_17C82A0:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BankAcNo")))
  loc_17C82F0:   Set var_BC = Me.Text1
  loc_17C82F6:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H23), var_D0)
  loc_17C82FE:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("IncrMth")))
  loc_17C834E:   Set var_BC = Me.Text1
  loc_17C8354:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2C), var_D0)
  loc_17C835C:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("sunday")))
  loc_17C83AC:   Set var_BC = Me.Text1
  loc_17C83B2:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H24), var_D0)
  loc_17C83BA:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Sex")))
  loc_17C840A:   Set var_BC = Me.Text1
  loc_17C8410:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H31), var_D0)
  loc_17C8418:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("DEPARTNAME")))
  loc_17C8468:   Set var_BC = Me.Text1
  loc_17C846E:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H31), var_D0)
  loc_17C8476:   var_D0.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("DepartCode")))
  loc_17C84C6:   Set var_BC = Me.Text1
  loc_17C84CC:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H25), var_D0)
  loc_17C84D4:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("DesigName")))
  loc_17C8524:   Set var_BC = Me.Text1
  loc_17C852A:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2B), var_D0)
  loc_17C8532:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CatName")))
  loc_17C8582:   Set var_BC = Me.Text1
  loc_17C8588:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H26), var_D0)
  loc_17C8590:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AcName")))
  loc_17C85E0:   Set var_BC = Me.Text1
  loc_17C85E6:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2F), var_D0)
  loc_17C85EE:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("LoanName")))
  loc_17C863E:   Set var_BC = Me.Text1
  loc_17C8644:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H25), var_D0)
  loc_17C864C:   var_D0.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("DesigCode")))
  loc_17C869C:   Set var_BC = Me.Text1
  loc_17C86A2:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2B), var_D0)
  loc_17C86AA:   var_D0.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CatCode")))
  loc_17C86FA:   Set var_BC = Me.Text1
  loc_17C8700:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H26), var_D0)
  loc_17C8708:   var_D0.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AcCode")))
  loc_17C8758:   Set var_BC = Me.Text1
  loc_17C875E:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2F), var_D0)
  loc_17C8766:   var_D0.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("LoanCode")))
  loc_17C87B6:   Set var_BC = Me.Text1
  loc_17C87BC:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H27), var_D0)
  loc_17C87C4:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Marital")))
  loc_17C8814:   Set var_BC = Me.Text1
  loc_17C881A:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H28), var_D0)
  loc_17C8822:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Birth_Date")))
  loc_17C8872:   Set var_BC = Me.Text1
  loc_17C8878:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H29), var_D0)
  loc_17C8880:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Joining_Date")))
  loc_17C88D0:   Set var_BC = Me.Text1
  loc_17C88D6:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2A), var_D0)
  loc_17C88DE:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Resign_Date")))
  loc_17C892E:   Set var_BC = Me.Text1
  loc_17C8934:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2D), var_D0)
  loc_17C893C:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OTRate")))
  loc_17C898C:   Set var_BC = Me.Text1
  loc_17C8992:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H2E), var_D0)
  loc_17C899A:   var_D0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OffDay")))
  loc_17C89F0:   If (Me.Recordset15.Fields.Item("PF_YN").Value = "Y") Then
  loc_17C89FF:     Me.Check1.Value = 1
  loc_17C8A0A:   Else
  loc_17C8A16:     Me.Check1.Value = 0
  loc_17C8A1E:   End If
  loc_17C8A60:   If (Me.Recordset15.Fields.Item("ESI_YN").Value = "Y") Then
  loc_17C8A6F:     Me.Check2.Value = 1
  loc_17C8A7A:   Else
  loc_17C8A86:     Me.Check2.Value = 0
  loc_17C8A8E:   End If
  loc_17C8AAE:   var_A4 = Me.Recordset15.Fields.Item("ActiveYN")
  loc_17C8AFF:   Set var_BC = Me.Text1
  loc_17C8B05:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H30), var_D0)
  loc_17C8B0D:   var_D0.Text = CStr(IIf((var_A4.Value = 0), "No", "Yes"))
  loc_17C8B3B:   Set var_8C = Me.Text1
  loc_17C8B41:   Call 0.Method_Proc_315_50_17C921C0 (CInt(&H30), var_A4)
  loc_17C8B60:   If (var_A4.Text = "No") Then
  loc_17C8B6F:     Me.Frame1.Enabled = True
  loc_17C8BB5:     Me.Frame1.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_17C8BC9:   End If
  loc_17C8BDE:   var_8C = Me.Recordset15.Fields
  loc_17C8BF7:   var_104 = IsNull(CVar(var_8C.Item("PicPath")))
  loc_17C8BFE:   var_CC = "PicPath"
  loc_17C8C2F:   var_F4 = vbNullString
  loc_17C8C51:   If CBool(var_104 Or (Trim(CVar(Me.Recordset15.Fields.Item(var_CC))) = var_F4)) Then
  loc_17C8C72:     Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C8C87:     Me.EmployeeImage.Picture = var_8C
  loc_17C8CA0:     Me.EmployeeImage.Tag = vbNullString
  loc_17C8CAB:   Else
  loc_17C8CDF:     var_F4 = "PicPath"
  loc_17C8D2B:     var_CC = "DAT"
  loc_17C8D53:     var_104 = "AVI"
  loc_17C8D5D:     var_1EC = (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item("PicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item(var_F4))), 3)) = var_104)
  loc_17C8D7D:     If CBool(var_1EC) Then
  loc_17C8D8C:       Me.EmployeeImage.Visible = False
  loc_17C8D97:     Else
  loc_17C8DD5:       Me.EmployeeImage.Tag = CStr(Me.Recordset15.Fields.Item("PicPath").Value)
  loc_17C8DF2:       var_A0 = "PicPath"
  loc_17C8E0C:       var_A4 = Me.Recordset15.Fields.Item(var_A0)
  loc_17C8E26:       Call 0.Method_Proc_315_50_17C921C4 (CStr(var_A4.Value), var_1EE)
  loc_17C8E3B:       If var_1EE Then
  loc_17C8E58:         Set var_8C = Me.EmployeeImage
  loc_17C8E70:         Me.Global.LoadPicture CVar(Me.EmployeeImage.Tag), var_A0, var_CC, var_F4, var_104
  loc_17C8E85:         Me.EmployeeImage.Picture = var_A4
  loc_17C8E9A:         Set var_8C = Me.EmployeeImage
  loc_17C8EA0:         var_8C.Refresh
  loc_17C8EAB:       Else
  loc_17C8EC9:         Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C8EDE:         Me.EmployeeImage.Picture = var_8C
  loc_17C8EEA:       End If
  loc_17C8EEA:     End If
  loc_17C8EEA:   End If
  loc_17C8EFF:   var_8C = Me.Recordset15.Fields
  loc_17C8F18:   var_104 = IsNull(CVar(var_8C.Item("IdPicPath")))
  loc_17C8F1F:   var_CC = "IdPicPath"
  loc_17C8F50:   var_F4 = vbNullString
  loc_17C8F72:   If CBool(var_104 Or (Trim(CVar(Me.Recordset15.Fields.Item(var_CC))) = var_F4)) Then
  loc_17C8F93:     Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C8FA8:     Me.IdProofImage.Picture = var_8C
  loc_17C8FC1:     Me.IdProofImage.Tag = vbNullString
  loc_17C8FCC:   Else
  loc_17C9000:     var_F4 = "IdPicPath"
  loc_17C904C:     var_CC = "DAT"
  loc_17C9074:     var_104 = "AVI"
  loc_17C907E:     var_1EC = (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item("IdPicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item(var_F4))), 3)) = var_104)
  loc_17C909E:     If CBool(var_1EC) Then
  loc_17C90AD:       Me.IdProofImage.Visible = False
  loc_17C90B8:     Else
  loc_17C90F6:       Me.IdProofImage.Tag = CStr(Me.Recordset15.Fields.Item("IdPicPath").Value)
  loc_17C9113:       var_A0 = "IdPicPath"
  loc_17C9125:       var_8C = Me.Recordset15.Fields
  loc_17C912D:       var_A4 = var_8C.Item(var_A0)
  loc_17C9147:       Call 0.Method_Proc_315_50_17C921C4 (CStr(var_A4.Value), var_1EE, var_8C, var_8C)
  loc_17C915C:       If var_1EE Then
  loc_17C9179:         Set var_8C = Me.IdProofImage
  loc_17C9191:         Me.Global.LoadPicture CVar(Me.IdProofImage.Tag), var_A0, var_CC, var_F4, var_104
  loc_17C91A6:         Me.IdProofImage.Picture = var_A4
  loc_17C91BB:         Set var_8C = Me.IdProofImage
  loc_17C91C1:         var_8C.Refresh
  loc_17C91CC:       Else
  loc_17C91EA:         Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C91FF:         Me.IdProofImage.Picture = var_8C
  loc_17C920B:       End If
  loc_17C920B:     End If
  loc_17C920B:   End If
  loc_17C920E: Else
  loc_17C920E:   Call Proc_315_49_F779F4(var_8C, var_A4, var_A4)
  loc_17C9213: End If
  loc_17C9213: Exit Sub
  loc_17C9214: ' Referenced from: 17C71E0
  loc_17C9214: Proc_6_60_E62BC4(var_8C)
  loc_17C9219: Exit Sub
End Sub

Public Sub Proc_315_51_EAEF54(arg_C) 'EAEF54
  'Data Table: 521E38
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_EAEECC: Set var_8C = Me.Text1
  loc_EAEED2: Call 0.Method_Proc_315_51_EAEF54C (var_8E, var_86)
  loc_EAEEE0: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_EAEEF3:   Set var_8C = Me.Text1
  loc_EAEEF9:   Call 0.Method_Proc_315_51_EAEF540 (var_86, var_98)
  loc_EAEF01:   var_98.Enabled = arg_C
  loc_EAEF10: Next var_92 'Integer
  loc_EAEF22: Me.Check1.Enabled = arg_C
  loc_EAEF37: Me.Check2.Enabled = arg_C
  loc_EAEF4B: Me.Frame1.Visible = False
  loc_EAEF53: Exit Sub
End Sub

Public Sub Proc_315_52_E7F014
  'Data Table: 521E38
  loc_E7EFEF: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E7EFF2:   Call TopCtrl1_UnknownEvent_16()
  loc_E7EFFA: Else
  loc_E7F000:   Call 0.Method_arg_1E8 (var_108)
  loc_E7F008:   Call var_108.SetFocus
  loc_E7F011: End If
  loc_E7F011: Exit Sub
End Sub

Public Sub Proc_315_53_F948B8
  'Data Table: 521E38
  loc_F9475C: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F9476E:   Me.DGDepartment.Visible = False
  loc_F94776: End If
  loc_F94792: If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_F947A4:   Me.DGDesignation.Visible = False
  loc_F947AC: End If
  loc_F947C8: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F947DA:   Me.DGAcName.Visible = False
  loc_F947E2: End If
  loc_F947FE: If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_F94810:   Me.DGLoan.Visible = False
  loc_F94818: End If
  loc_F94834: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F94846:   Me.DGCategory.Visible = False
  loc_F9484E: End If
  loc_F94869: If (Me.FrmList.Visible = &HFF) Then
  loc_F94878:   Me.FrmList.Visible = False
  loc_F94880: End If
  loc_F9489C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F948AE:   Me.FGPoint.Visible = False
  loc_F948B6: End If
  loc_F948B6: Exit Sub
  loc_F948B7: Result  End Sub 'Currency
End Sub

Public Sub Proc_315_54_1123014
  'Data Table: 521E38
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1122CB6: Set var_88 = Me.Text1
  loc_1122CBC: Call 0.Method_Proc_315_54_11230140 (CInt(&H31), var_8C)
  loc_1122CDB: Me.DGDepartment.Left = CVar(var_8C.Left)
  loc_1122CF7: Set var_B4 = Me.Text1
  loc_1122CFD: Call 0.Method_Proc_315_54_11230140 (CInt(&H31), var_B8)
  loc_1122D18: Set var_88 = Me.Text1
  loc_1122D1E: Call 0.Method_Proc_315_54_11230140 (CInt(&H31), var_8C)
  loc_1122D36: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1122D45: Me.DGDepartment.Top = CVar(var_8C.Left)
  loc_1122D65: Set var_88 = Me.Text1
  loc_1122D6B: Call 0.Method_Proc_315_54_11230140 (CInt(&H25), var_8C)
  loc_1122D8A: Me.DGDesignation.Left = CVar(var_8C.Left)
  loc_1122DA6: Set var_B4 = Me.Text1
  loc_1122DAC: Call 0.Method_Proc_315_54_11230140 (CInt(&H25), var_B8)
  loc_1122DC7: Set var_88 = Me.Text1
  loc_1122DCD: Call 0.Method_Proc_315_54_11230140 (CInt(&H25), var_8C)
  loc_1122DE5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1122DF4: Me.DGDesignation.Top = CVar(var_8C.Left)
  loc_1122E14: Set var_88 = Me.Text1
  loc_1122E1A: Call 0.Method_Proc_315_54_11230140 (CInt(&H26), var_8C)
  loc_1122E39: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_1122E55: Set var_B4 = Me.Text1
  loc_1122E5B: Call 0.Method_Proc_315_54_11230140 (CInt(&H26), var_B8)
  loc_1122E76: Set var_88 = Me.Text1
  loc_1122E7C: Call 0.Method_Proc_315_54_11230140 (CInt(&H26), var_8C)
  loc_1122E94: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1122EA3: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_1122EC3: Set var_88 = Me.Text1
  loc_1122EC9: Call 0.Method_Proc_315_54_11230140 (CInt(&H2B), var_8C)
  loc_1122EE8: Me.DGCategory.Left = CVar(var_8C.Left)
  loc_1122F04: Set var_B4 = Me.Text1
  loc_1122F0A: Call 0.Method_Proc_315_54_11230140 (CInt(&H2B), var_B8)
  loc_1122F25: Set var_88 = Me.Text1
  loc_1122F2B: Call 0.Method_Proc_315_54_11230140 (CInt(&H2B), var_8C)
  loc_1122F43: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1122F52: Me.DGCategory.Top = CVar(var_8C.Left)
  loc_1122F72: Set var_88 = Me.Text1
  loc_1122F78: Call 0.Method_Proc_315_54_11230140 (CInt(&H2F), var_8C)
  loc_1122F97: Me.DGLoan.Left = CVar(var_8C.Left)
  loc_1122FB3: Set var_B4 = Me.Text1
  loc_1122FB9: Call 0.Method_Proc_315_54_11230140 (CInt(&H2F), var_B8)
  loc_1122FD4: Set var_88 = Me.Text1
  loc_1122FDA: Call 0.Method_Proc_315_54_11230140 (CInt(&H2F), var_8C)
  loc_1122FF2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1123001: Me.DGLoan.Top = CVar(var_8C.Left)
  loc_1123013: Exit Sub
End Sub

Public Sub Proc_315_55_E496E4(arg_C) 'E496E4
  'Data Table: 521E38
  loc_E496BD: Me.Frame_DETAIL.Visible = arg_C
  loc_E496D8: Me.DBGrid1.Visible = Not(arg_C)
  loc_E496E3: Exit Sub
End Sub
