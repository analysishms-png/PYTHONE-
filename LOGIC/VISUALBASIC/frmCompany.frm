VERSION 5.00
Begin VB.Form frmCompany
  Caption = "User Information"
  BackColor = &HCEE0C2&
  ForeColor = &HC00000&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawWidth = 2
  FillColor = &HC00000&
  Picture = "frmCompany.frx":0
  BorderStyle = 1 'Fixed Single
  Icon = "frmCompany.frx":D9BA
  LinkTopic = "Form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = -270
  ClientTop = -1320
  ClientWidth = 15510
  ClientHeight = 8715
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisButton = -1  'True
  WhatsThisHelp = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin BtnEnh ChkKeyboard
    Left = 10455
    Top = 3945
    Width = 4845
    Height = 420
    TabIndex = 21
  End
  Begin Frame Frame1
    BackColor = &H80000004&
    Left = 6870
    Top = 6570
    Width = 8370
    Height = 1980
    TabIndex = 63
    BorderStyle = 0 'None
    Begin BtnEnh BtnEnh1
      Index = 44
      Left = 4410
      Top = 1485
      Width = 1185
      Height = 495
      TabIndex = 64
    End
    Begin BtnEnh BtnEnh1
      Index = 0
      Left = 0
      Top = 15
      Width = 555
      Height = 495
      TabIndex = 65
    End
    Begin BtnEnh BtnEnh1
      Index = 1
      Left = 555
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 66
    End
    Begin BtnEnh BtnEnh1
      Index = 2
      Left = 1110
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 67
    End
    Begin BtnEnh BtnEnh1
      Index = 3
      Left = 1665
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 68
    End
    Begin BtnEnh BtnEnh1
      Index = 4
      Left = 2220
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 69
    End
    Begin BtnEnh BtnEnh1
      Index = 5
      Left = 2775
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 70
    End
    Begin BtnEnh BtnEnh1
      Index = 6
      Left = 3330
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 71
    End
    Begin BtnEnh BtnEnh1
      Index = 7
      Left = 3885
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 72
    End
    Begin BtnEnh BtnEnh1
      Index = 8
      Left = 4440
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 73
    End
    Begin BtnEnh BtnEnh1
      Index = 9
      Left = 4995
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 74
    End
    Begin BtnEnh BtnEnh1
      Index = 10
      Left = 5550
      Top = 0
      Width = 1155
      Height = 495
      TabIndex = 75
    End
    Begin BtnEnh BtnEnh1
      Index = 14
      Left = 0
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 76
    End
    Begin BtnEnh BtnEnh1
      Index = 15
      Left = 555
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 77
    End
    Begin BtnEnh BtnEnh1
      Index = 16
      Left = 1110
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 78
    End
    Begin BtnEnh BtnEnh1
      Index = 17
      Left = 1665
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 79
    End
    Begin BtnEnh BtnEnh1
      Index = 18
      Left = 2220
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 80
    End
    Begin BtnEnh BtnEnh1
      Index = 19
      Left = 2775
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 81
    End
    Begin BtnEnh BtnEnh1
      Index = 20
      Left = 3330
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 82
    End
    Begin BtnEnh BtnEnh1
      Index = 21
      Left = 3885
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 83
    End
    Begin BtnEnh BtnEnh1
      Index = 22
      Left = 4440
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 84
    End
    Begin BtnEnh BtnEnh1
      Index = 23
      Left = 4995
      Top = 495
      Width = 855
      Height = 495
      TabIndex = 85
    End
    Begin BtnEnh BtnEnh1
      Index = 24
      Left = 5850
      Top = 495
      Width = 855
      Height = 495
      TabIndex = 86
    End
    Begin BtnEnh BtnEnh1
      Index = 49
      Left = 7815
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 87
    End
    Begin BtnEnh BtnEnh1
      Index = 48
      Left = 7260
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 88
    End
    Begin BtnEnh BtnEnh1
      Index = 47
      Left = 6705
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 89
    End
    Begin BtnEnh BtnEnh1
      Index = 38
      Left = 6705
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 90
    End
    Begin BtnEnh BtnEnh1
      Index = 39
      Left = 7260
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 91
    End
    Begin BtnEnh BtnEnh1
      Index = 40
      Left = 7815
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 92
    End
    Begin BtnEnh BtnEnh1
      Index = 25
      Left = 6705
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 93
    End
    Begin BtnEnh BtnEnh1
      Index = 26
      Left = 7260
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 94
    End
    Begin BtnEnh BtnEnh1
      Index = 27
      Left = 7815
      Top = 495
      Width = 555
      Height = 495
      TabIndex = 95
    End
    Begin BtnEnh BtnEnh1
      Index = 11
      Left = 6705
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 96
    End
    Begin BtnEnh BtnEnh1
      Index = 12
      Left = 7260
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 97
    End
    Begin BtnEnh BtnEnh1
      Index = 13
      Left = 7815
      Top = 0
      Width = 555
      Height = 495
      TabIndex = 98
    End
    Begin BtnEnh BtnEnh1
      Index = 28
      Left = 0
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 99
    End
    Begin BtnEnh BtnEnh1
      Index = 29
      Left = 555
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 100
    End
    Begin BtnEnh BtnEnh1
      Index = 30
      Left = 1110
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 101
    End
    Begin BtnEnh BtnEnh1
      Index = 31
      Left = 1665
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 102
    End
    Begin BtnEnh BtnEnh1
      Index = 32
      Left = 2220
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 103
    End
    Begin BtnEnh BtnEnh1
      Index = 33
      Left = 2775
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 104
    End
    Begin BtnEnh BtnEnh1
      Index = 34
      Left = 3330
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 105
    End
    Begin BtnEnh BtnEnh1
      Index = 35
      Left = 3885
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 106
    End
    Begin BtnEnh BtnEnh1
      Index = 36
      Left = 4440
      Top = 990
      Width = 555
      Height = 495
      TabIndex = 107
    End
    Begin BtnEnh BtnEnh1
      Index = 41
      Left = 0
      Top = 1485
      Width = 1365
      Height = 495
      TabIndex = 108
    End
    Begin BtnEnh BtnEnh1
      Index = 45
      Left = 5595
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 109
    End
    Begin BtnEnh BtnEnh1
      Index = 46
      Left = 6150
      Top = 1485
      Width = 555
      Height = 495
      TabIndex = 110
    End
    Begin BtnEnh BtnEnh1
      Index = 42
      Left = 1350
      Top = 1485
      Width = 1350
      Height = 495
      TabIndex = 111
    End
    Begin BtnEnh BtnEnh1
      Index = 43
      Left = 2685
      Top = 1485
      Width = 1725
      Height = 495
      TabIndex = 112
    End
    Begin BtnEnh BtnEnh1
      Index = 37
      Left = 4995
      Top = 990
      Width = 1710
      Height = 495
      TabIndex = 113
    End
  End
  Begin BtnEnh btnapplyNew
    Left = 11055
    Top = 2475
    Width = 1905
    Height = 645
    TabIndex = 4
  End
  Begin DataGrid DBGrid1
    Left = 8445
    Top = 15
    Width = 6780
    Height = 900
    TabIndex = 0
  End
  Begin Frame CompInfo
    Caption = "Company Information"
    BackColor = &HFFC0FF&
    ForeColor = &HC000&
    Left = -75
    Top = 45
    Width = 6615
    Height = 4470
    TabIndex = 1
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox txt
      Index = 23
      Left = 4905
      Top = 3675
      Width = 480
      Height = 300
      TabIndex = 44
      BorderStyle = 0 'None
      MaxLength = 2
    End
    Begin TextBox txt
      Index = 22
      Left = 1665
      Top = 4005
      Width = 1695
      Height = 300
      TabIndex = 46
      BorderStyle = 0 'None
      MaxLength = 25
    End
    Begin TextBox txt
      Index = 21
      Left = 1665
      Top = 3690
      Width = 1695
      Height = 300
      TabIndex = 36
      BorderStyle = 0 'None
      MaxLength = 25
    End
    Begin TextBox txt
      Index = 11
      Left = 4905
      Top = 2370
      Width = 1605
      Height = 300
      TabIndex = 38
      BorderStyle = 0 'None
      MaxLength = 30
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1665
      Top = 390
      Width = 375
      Height = 300
      TabIndex = 25
      BorderStyle = 0 'None
      MaxLength = 2
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1665
      Top = 720
      Width = 4845
      Height = 300
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 40
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 12
      Left = 1665
      Top = 2700
      Width = 2370
      Height = 300
      TabIndex = 33
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 16
      Left = 1665
      Top = 3030
      Width = 1695
      Height = 300
      TabIndex = 34
      BorderStyle = 0 'None
      MaxLength = 9
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 10
      Left = 1665
      Top = 2370
      Width = 1845
      Height = 300
      TabIndex = 32
      BorderStyle = 0 'None
      MaxLength = 30
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 8
      Left = 1665
      Top = 2040
      Width = 1845
      Height = 300
      TabIndex = 31
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 7
      Left = 1665
      Top = 1710
      Width = 4845
      Height = 300
      TabIndex = 30
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 6
      Left = 1665
      Top = 1380
      Width = 4845
      Height = 300
      TabIndex = 29
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 5
      Left = 1665
      Top = 1050
      Width = 1845
      Height = 300
      TabIndex = 28
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 18
      Left = 1665
      Top = 3360
      Width = 1695
      Height = 300
      TabIndex = 35
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 19
      Left = 4905
      Top = 3360
      Width = 1605
      Height = 300
      TabIndex = 42
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 13
      Left = 4905
      Top = 2700
      Width = 1605
      Height = 300
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 9
      Left = 4905
      Top = 2040
      Width = 1605
      Height = 300
      TabIndex = 37
      BorderStyle = 0 'None
      MaxLength = 6
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 17
      Left = 4905
      Top = 3030
      Width = 1605
      Height = 315
      TabIndex = 40
      BorderStyle = 0 'None
      MaxLength = 9
      Appearance = 0 'Flat
    End
    Begin Label Label20
      Caption = "Site Name"
      ForeColor = &H80&
      Left = 600
      Top = 4050
      Width = 870
      Height = 225
      TabIndex = 60
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
    End
    Begin Label Label2
      Caption = "Short Name"
      ForeColor = &H80&
      Left = 480
      Top = 1110
      Width = 1005
      Height = 225
      TabIndex = 59
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
    End
    Begin Label Label11
      Caption = "Address"
      ForeColor = &H80&
      Left = 795
      Top = 1440
      Width = 720
      Height = 225
      TabIndex = 58
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
    End
    Begin Label Label10
      Caption = "LST No."
      ForeColor = &H80&
      Left = 765
      Top = 2760
      Width = 645
      Height = 225
      TabIndex = 57
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
    End
    Begin Label Label9
      Caption = "Date"
      ForeColor = &H80&
      Left = 4365
      Top = 2760
      Width = 390
      Height = 225
      TabIndex = 56
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
    End
    Begin Label Label5
      Caption = "Phone"
      ForeColor = &H80&
      Left = 930
      Top = 2430
      Width = 540
      Height = 225
      TabIndex = 55
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
    End
    Begin Label Label4
      Caption = "Current Year"
      ForeColor = &H80&
      Left = 405
      Top = 3090
      Width = 1080
      Height = 225
      TabIndex = 54
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
    End
    Begin Label Label3
      Caption = "Previous Year"
      Index = 0
      ForeColor = &H80&
      Left = 3585
      Top = 3090
      Width = 1185
      Height = 225
      TabIndex = 53
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
    End
    Begin Label Label1
      Caption = "Company Name"
      ForeColor = &H80&
      Left = 165
      Top = 780
      Width = 1335
      Height = 225
      TabIndex = 52
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
    End
    Begin Label Label12
      Caption = "City"
      ForeColor = &H80&
      Left = 1155
      Top = 2100
      Width = 315
      Height = 225
      TabIndex = 51
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
    End
    Begin Label Label13
      Caption = "Pin"
      ForeColor = &H80&
      Left = 4500
      Top = 2100
      Width = 270
      Height = 225
      TabIndex = 50
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
    End
    Begin Label Label15
      Caption = "Year Start Date"
      ForeColor = &H80&
      Left = 195
      Top = 3420
      Width = 1290
      Height = 225
      TabIndex = 49
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
    End
    Begin Label Label16
      Caption = "Year End Date"
      ForeColor = &H80&
      Left = 3525
      Top = 3420
      Width = 1185
      Height = 225
      TabIndex = 48
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
    End
    Begin Label Label18
      Caption = "Company Code"
      ForeColor = &H80&
      Left = 210
      Top = 450
      Width = 1275
      Height = 225
      TabIndex = 47
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
    End
    Begin Label Label19
      Caption = "Fax"
      ForeColor = &H80&
      Left = 4470
      Top = 2430
      Width = 300
      Height = 225
      TabIndex = 45
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
    End
    Begin Label Label17
      Caption = "Key Number"
      ForeColor = &H80&
      Left = 450
      Top = 3750
      Width = 1035
      Height = 225
      TabIndex = 43
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
    End
    Begin Label Label21
      Caption = "Site Code"
      ForeColor = &H80&
      Left = 3945
      Top = 3735
      Width = 810
      Height = 225
      TabIndex = 41
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
    End
  End
  Begin TextBox txt
    Index = 2
    ForeColor = &H800000&
    Left = 16305
    Top = 7095
    Width = 1830
    Height = 270
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox txt
    Index = 0
    ForeColor = &HC00000&
    Left = 12105
    Top = 930
    Width = 2820
    Height = 270
    TabIndex = 2
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 1
    ForeColor = &HC00000&
    Left = 12105
    Top = 1215
    Width = 2820
    Height = 270
    TabIndex = 3
    BorderStyle = 0 'None
    PasswordChar = "*"
    MaxLength = 8
  End
  Begin CommandButton btnapply
    Caption = "&Accept"
    BackColor = &HC0FFFF&
    Left = 16155
    Top = 5910
    Width = 2025
    Height = 585
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "Arial Black"
      Size = 9.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Accept User"
    Style = 1
  End
  Begin CommandButton btnexit
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 16080
    Top = 6525
    Width = 2055
    Height = 585
    Visible = 0   'False
    TabIndex = 20
    Cancel = -1  'True
    BeginProperty Font
      Name = "Arial Black"
      Size = 9.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmCompany.frx":DDFC
    ToolTipText = "Exit"
    MaskColor = &HBFACF2&
    Style = 1
  End
  Begin CommandButton btnStruUpd
    Caption = "St&ructure Update"
    BackColor = &HC0FFFF&
    Left = 16215
    Top = 5325
    Width = 1815
    Height = 585
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Accept User"
    Style = 1
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 15450
    Top = 285
    Width = 2385
    Height = 1830
    Visible = 0   'False
    TabIndex = 16
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
      Left = 0
      Top = -255
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin Frame Panelgrid
    BackColor = &HC0FFFF&
    ForeColor = &H800000&
    Left = 17190
    Top = 8115
    Width = 945
    Height = 585
    Visible = 0   'False
    TabIndex = 13
    BeginProperty Font
      Name = "Times New Roman"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 15
    Left = 14580
    Top = 7635
    Width = 1605
    Height = 300
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin TextBox txt
    Index = 14
    Left = 13920
    Top = 8010
    Width = 2370
    Height = 300
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox txt
    Index = 20
    Left = 13920
    Top = 8340
    Width = 2370
    Height = 300
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin BtnEnh btnexitNew
    Left = 12960
    Top = 2475
    Width = 1905
    Height = 645
    TabIndex = 5
  End
  Begin BtnEnh btnStruUpdNew
    Left = 12000
    Top = 3105
    Width = 1890
    Height = 780
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox TxtKeyBoard
    Left = 9210
    Top = 7635
    Width = 3720
    Height = 615
    Visible = 0   'False
    TabIndex = 114
    MultiLine = -1  'True
    ScrollBars = 2
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label24
    Caption = "A"
    ForeColor = &HC00000&
    Left = 120
    Top = 7830
    Width = 1005
    Height = 795
    TabIndex = 62
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 36
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label23
    Caption = "nalysis Software Solutions"
    ForeColor = &HC00000&
    Left = 585
    Top = 8010
    Width = 5745
    Height = 570
    TabIndex = 61
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 26.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label14
    Caption = "Today's Date"
    ForeColor = &H800000&
    Left = 14700
    Top = 7125
    Width = 1380
    Height = 270
    Visible = 0   'False
    TabIndex = 26
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
  Begin Label Label
    Caption = "Password"
    Index = 1
    ForeColor = &H800000&
    Left = 10530
    Top = 1260
    Width = 1035
    Height = 270
    TabIndex = 24
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
  Begin Label Label
    Caption = "User Name"
    Index = 0
    ForeColor = &H800000&
    Left = 10530
    Top = 960
    Width = 1170
    Height = 270
    TabIndex = 23
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
  Begin Shape Shape2
    BorderColor = &HC000&
    Left = 16425
    Top = 7920
    Width = 675
    Height = 810
    Visible = 0   'False
    BorderWidth = 15
    FillColor = &HC0FFC0&
  End
  Begin Label Label22
    Caption = "For more information about Company, Press Right Mouse Button"
    ForeColor = &HFF&
    Left = 10680
    Top = 2235
    Width = 4515
    Height = 195
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Shape Shape1
    BorderColor = &H800000&
    Left = 17055
    Top = 7440
    Width = 1005
    Height = 630
    Visible = 0   'False
    BorderStyle = 0 'Transparent
    FillColor = &HC0FFC0&
    FillStyle = 0
  End
  Begin Label Label8
    Caption = "FGL No."
    Index = 1
    ForeColor = &H80&
    Left = 13020
    Top = 8400
    Width = 720
    Height = 195
    Visible = 0   'False
    TabIndex = 15
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
  End
  Begin Label Label6
    Caption = "Company Information"
    BackColor = &HC0E0FF&
    ForeColor = &H40&
    Left = 3480
    Top = 8370
    Width = 9555
    Height = 420
    Visible = 0   'False
    TabIndex = 14
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label7
    Caption = "Date"
    ForeColor = &H80&
    Left = 14040
    Top = 7710
    Width = 420
    Height = 195
    Visible = 0   'False
    TabIndex = 12
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
  End
  Begin Label Label8
    Caption = "CST No."
    Index = 0
    ForeColor = &H80&
    Left = 13005
    Top = 8070
    Width = 735
    Height = 195
    Visible = 0   'False
    TabIndex = 11
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
  End
  Begin Menu POPUP
    Visible = 0   'False
    Caption = ""
    Begin Menu add
      Caption = "&Add"
    End
    Begin Menu edit
      Caption = "&Edit"
    End
    Begin Menu del
      Caption = "&Delete"
    End
    Begin Menu DASH1
      Caption = "-"
    End
    Begin Menu MNUSAVE
      Caption = "&Save"
    End
    Begin Menu MNUCANCEL
      Caption = "&Cancel"
    End
    Begin Menu exit
      Caption = "E&xit"
    End
  End
End

Attribute VB_Name = "frmCompany"

Private global_112 As Integer
Private global_106 As Byte
Private global_52 As Byte

Private Sub ListView_UnknownEvent_13 'E1AC98
  'Data Table: 568130
  loc_E1AC8C: Me.FrmList.Visible = False
  loc_E1AC94: Exit Sub
End Sub

Private Sub Exit_Click() 'DFE72C
  'Data Table: 568130
  loc_DFE724: Call btnexitNew_UnknownEvent_9()
  loc_DFE729: Exit Sub
End Sub

Private Sub edit_Click() 'DFE6F4
  'Data Table: 568130
  loc_DFE6EC: Call Proc_4_30_138F0E0()
  loc_DFE6F1: Exit Sub
End Sub

Private Sub Del_Click() 'DFE64C
  'Data Table: 568130
  loc_DFE644: Call Proc_4_31_1002D40()
  loc_DFE649: Exit Sub
End Sub

Private Sub MNUSAVE_Click() 'DFE8EC
  'Data Table: 568130
  loc_DFE8E4: Call Proc_4_32_15BDA78()
  loc_DFE8E9: Exit Sub
End Sub

Private Sub MNUCANCEL_Click() 'DFE844
  'Data Table: 568130
  loc_DFE83C: Call Proc_4_34_EADC20()
  loc_DFE841: Exit Sub
End Sub

Private Sub Panelgrid_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E5FE34
  'Data Table: 568130
  loc_E5FE0F: If ((Button = 2) And (CBool(Me.DBGrid1.Visible) = &HFF)) Then
  loc_E5FE2A:   Call 0.Method_arg_2BC (Me.POPUP, var_A8, var_B8)
  loc_E5FE32: End If
  loc_E5FE32: Exit Sub
End Sub

Private Sub Form_Load() '1486A2C
  'Data Table: 568130
  Dim var_94 As Variant
  Dim var_F0 As TextBox
  Dim var_E8 As Long
  Dim MemVar_1F92024 As String
  Dim var_A8 As Variant
  Dim var_11C As String
  Dim var_DA As String
  Dim var_120 As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_124 As String
  Dim MemVar_1F9B698 As Global
  Dim MemVar_1F92170 As String
  Dim MemVar_1F92098 As String
  Dim MemVar_1F920B4 As String
  Dim MemVar_1F921D4 As String
  Dim MemVar_1F923B4 As String
  Dim var_108 As Variant
  Dim MemVar_1F9209C As Variant
  Dim MemVar_1F92010 As String
  Dim MemVar_1F92070 As String
  Dim MemVar_1F92174 As String
  Dim MemVar_1F92194 As String
  Dim MemVar_1F92214 As String
  Dim MemVar_1F9222C As String
  Dim MemVar_1F920D8 As String
  Dim MemVar_1F920D4 As String
  Dim MemVar_1F921D8 As String
  Dim unk_568157 As Connection15
  Dim var_128 As String
  Dim unk_5681F2 As Connection15
  Dim unk_5681F6 As Recordset15
  Dim var_EC As Recordset15
  Dim MemVar_1F9220C As String
  loc_1485DFC: On Error Goto loc_14869DE
  loc_1485E08: Set var_A8 = Me.btnStruUpdNew
  loc_1485E0E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1485E1B: global_112 = &HFF
  loc_1485E31: Set var_A8 = Me.txt
  loc_1485E37: Call 0.Method_Form_Load0 (CInt(global_106), var_F0)
  loc_1485E51: Me.TxtKeyBoard.MaxLength = var_F0.MaxLength
  loc_1485E64: var_E8 = &H20
  loc_1485E81: MemVar_1F92024 = CStr(String(var_E8, "X"))
  loc_1485E95: var_11C = MemVar_1F92024
  loc_1485E99: GetComputerName(var_11C, var_E8)
  loc_1485EC1: MemVar_1F92024 = CStr(Left(MemVar_1F92024, var_E8))
  loc_1485ED0: Call 0.Method_Me4 (CDbl(15600), MemVar_1F92024, StrConv(MemVar_1F92024, vbUnicode), var_11C)
  loc_1485EDD: Call 0.Method_MeC (CDbl(9200), MemVar_1F92024)
  loc_1485EEA: Call 0.Method_arg_74 (CDbl(500), var_E8)
  loc_1485EF6: Call 0.Method_arg_7C (CDbl(&H64))
  loc_1485F0A: Me.DBGrid1.Visible = False
  loc_1485F1E: Me.Label22.Visible = False
  loc_1485F32: Me.CompInfo.Visible = False
  loc_1485F54: Set var_A8 = Me.txt
  loc_1485F5A: Call 0.Method_Form_Load0 (CInt(2), var_F0)
  loc_1485F62: var_F0.Text = CStr(Date)
  loc_1485F88: var_DA = CStr(Space(&HF))
  loc_1485FBB: RegOpenKeyEx(-2147483647, "Control Panel\International", 0, 2, var_E4)
  loc_1485FEA: var_11C = "sShortDate"
  loc_1485FF1: RegQueryValueEx(var_E4, var_11C, 0, 2, var_DA, Len(var_DA), Len(var_DA))
  loc_1486035: var_DA = var_11C
  loc_1486049: If CBool(Left(var_128, &HB) <> "dd/MMM/yyyy") Then
  loc_1486081:   var_138 = (Len(Trim("dd/MMM/yyyy")) + 1)
  loc_14860B1:   var_DA = var_11C
  loc_14860BA:   var_124 = CStr(Trim(var_11C))
  loc_14860C1:   var_128 = var_124
  loc_14860DC:   RegSetValueEx(var_E4, "sShortDate", 0, 1, var_128, CLng(var_138), CLng(var_138))
  loc_1486113:   var_138 = Format("01/Jan/99", "Short Date")
  loc_1486135:   var_158 = "01/01/99"
  loc_1486160:   If CBool(1 <> CDate(CDate(Format(var_158, "dd/MMM/yyyy")))) Then
  loc_1486169:     Call 0.Method_arg_50 (var_11C, 1, var_138, 1, 1)
  loc_1486177:     var_118 = CVar(var_11C) 'String
  loc_148618A:     MsgBox("Some Setting are Changed, Please ShutDown Your Computer For Better Result", &H40, var_118, var_138, var_158)
  loc_148619A:   End If
  loc_148619A: End If
  loc_148619F: RegCloseKey(-2147483647)
  loc_14861A8: RegCloseKey(var_E4)
  loc_14861B6: MemVar_1F92090 = "Hindi"
  loc_14861BD: MemVar_1F92094 = "Hitarth Hin Jalak"
  loc_14861C4: MemVar_1F923AC = "A"
  loc_14861CB: MemVar_1F9206C = "D"
  loc_14861D2: MemVar_1F92070 = "HO"
  loc_14861D9: MemVar_1F92078 = vbNullString
  loc_14861E0: MemVar_1F923D4 = vbNullString
  loc_14861E7: MemVar_1F923D0 = "('SS')"
  loc_14861FA: var_A8 = Me.Global.App
  loc_1486217: Call 0.Method_Form_Load4 (App.Path & "\Analysis.ini", var_1AA, 0, StrConv(var_128, vbUnicode))
  loc_148622C: If (var_1AA = 0) Then
  loc_1486248:   MsgBox("S/W ini File Missing.Contact to Software windor", &H10, var_118, var_138, var_158)
  loc_1486258:   End
  loc_148625A: End If
  loc_1486275: var_A8 = MemVar_1F9B698.App
  loc_148627D: var_11C = App.Path
  loc_1486292: Call 0.Method_arg_7C (var_11C & "\Analysis.ini", 1, 0, 0)
  loc_148629D: Set var_B0 = var_F0
  loc_14862B4: Call 0.Method_arg_24 (var_1AA, var_F0, var_124)
  loc_14862BD: If Not(var_1AA) Then
  loc_14862C6:   Call 0.Method_arg_30 (var_11C, var_DA)
  loc_14862CE:   MemVar_1F92170 = var_11C
  loc_14862D2: End If
  loc_14862D8: Call 0.Method_arg_24 (var_1AA, MemVar_1F92170)
  loc_14862E1: If Not(var_1AA) Then
  loc_14862EC:   Call 0.Method_Form_Load4 (2)
  loc_14862F7:   Call 0.Method_arg_30 (var_11C)
  loc_14862FF:   MemVar_1F92098 = var_11C
  loc_1486303: End If
  loc_1486309: Call 0.Method_arg_24 (var_1AA, MemVar_1F92098)
  loc_1486312: If Not(var_1AA) Then
  loc_148631D:   Call 0.Method_Form_Load4 (2)
  loc_1486328:   Call 0.Method_arg_30 (var_11C)
  loc_1486330:   MemVar_1F920B4 = var_11C
  loc_1486334: End If
  loc_148633A: Call 0.Method_arg_24 (var_1AA, MemVar_1F920B4)
  loc_1486343: If Not(var_1AA) Then
  loc_148634E:   Call 0.Method_Form_Load4 (2)
  loc_1486359:   Call 0.Method_arg_30 (var_11C)
  loc_1486361:   MemVar_1F921D4 = var_11C
  loc_1486365: End If
  loc_148636B: Call 0.Method_arg_24 (var_1AA, MemVar_1F921D4)
  loc_1486374: If Not(var_1AA) Then
  loc_148637F:   Call 0.Method_Form_Load4 (2)
  loc_148638A:   Call 0.Method_arg_30 (var_11C)
  loc_1486392:   MemVar_1F923B4 = var_11C
  loc_1486399: Else
  loc_148639C:   MemVar_1F923B4 = "PRN"
  loc_14863A0: End If
  loc_14863A6: Call 0.Method_arg_24 (var_1AA, MemVar_1F923B4)
  loc_14863AF: If Not(var_1AA) Then
  loc_14863BA:   Call 0.Method_Form_Load4 (2)
  loc_14863C5:   Call 0.Method_arg_30 (var_11C)
  loc_14863D0:   MemVar_1F9209C = CVar(var_11C)
  loc_14863D7: Else
  loc_14863D7:   var_94 = "C:\DATABKUP"
  loc_14863DC:   ImpAdStVarCopy
  loc_14863E0: End If
  loc_14863E6: Call 0.Method_arg_24 (var_1AA, var_94)
  loc_14863EF: If Not(var_1AA) Then
  loc_14863FA:   Call 0.Method_Form_Load4 (2, MemVar_1F9209C)
  loc_1486405:   Call 0.Method_arg_30 (var_11C)
  loc_148640D:   MemVar_1F92010 = var_11C
  loc_1486411: End If
  loc_1486417: Call 0.Method_arg_24 (var_1AA, MemVar_1F92010)
  loc_1486420: If Not(var_1AA) Then
  loc_148642B:   Call 0.Method_Form_Load4 (2)
  loc_1486436:   Call 0.Method_arg_30 (var_11C)
  loc_148643E:   MemVar_1F92070 = var_11C
  loc_1486442: End If
  loc_1486448: Call 0.Method_arg_24 (var_1AA, MemVar_1F92070)
  loc_1486451: If Not(var_1AA) Then
  loc_148645C:   Call 0.Method_Form_Load4 (2)
  loc_1486467:   Call 0.Method_arg_30 (var_11C)
  loc_148646F:   MemVar_1F92174 = var_11C
  loc_1486473: End If
  loc_1486479: Call 0.Method_arg_24 (var_1AA, MemVar_1F92174)
  loc_1486482: If Not(var_1AA) Then
  loc_148648D:   Call 0.Method_Form_Load4 (2)
  loc_1486498:   Call 0.Method_arg_30 (var_11C)
  loc_14864A0:   MemVar_1F92194 = var_11C
  loc_14864A4: End If
  loc_14864AA: Call 0.Method_arg_24 (var_1AA, MemVar_1F92194)
  loc_14864B3: If Not(var_1AA) Then
  loc_14864BE:   Call 0.Method_Form_Load4 (3)
  loc_14864C9:   Call 0.Method_arg_30 (var_11C)
  loc_14864E0:   MemVar_1F92214 = CStr(Ucase(CVar(var_11C)))
  loc_14864EB: End If
  loc_14864F1: Call 0.Method_arg_24 (var_1AA, MemVar_1F92214)
  loc_14864FA: If Not(var_1AA) Then
  loc_1486505:   Call 0.Method_Form_Load4 (3)
  loc_1486510:   Call 0.Method_arg_30 (var_11C)
  loc_148651E:   var_118 = Ucase(CVar(var_11C))
  loc_1486527:   MemVar_1F9222C = CStr(var_118)
  loc_1486532: End If
  loc_1486535: MemVar_1F923AC = "S"
  loc_148653C: MemVar_1F923B0 = MemVar_1F920B4
  loc_1486543: MemVar_1F923B8 = "N"
  loc_148654A: MemVar_1F92210 = "No"
  loc_1486551: MemVar_1F920AC = MemVar_1F921D4
  loc_1486558: MemVar_1F92084 = MemVar_1F921D4
  loc_1486563: MemVar_1F921D4 = MemVar_1F921D4 & "\Temp.mdb"
  loc_1486578: var_A8 = Me.Global.App
  loc_14865A9: If (Dir(CVar(App.Path & "\sysdm.ocx"), 0) <> vbNullString) Then
  loc_14865B8:   var_A8 = Me.Global.App
  loc_14865C0:   var_11C = App.Path
  loc_14865D3:   Open var_11C & "\sysdm.ocx" For Input As 1 Len = &HFF
  loc_14865EB:   If (EOF(1) = 0) Then
  loc_14865F3:     LineInput 1, MemVar_1F920D8
  loc_14865F5:   End If
  loc_14865FF:   If (EOF(1) = 0) Then
  loc_1486607:     LineInput 1, MemVar_1F920D4
  loc_1486609:   End If
  loc_148660B:   Close 1
  loc_1486615:   If (MemVar_1F920D8 <> vbNullString) Then
  loc_148661E:     Call Proc_4_28_EE6FCC(MemVar_1F920D8, var_11C, MemVar_1F921D4)
  loc_1486626:     MemVar_1F920D8 = var_11C
  loc_148662A:   End If
  loc_1486632:   If (MemVar_1F920D4 <> vbNullString) Then
  loc_148663B:     Call Proc_4_28_EE6FCC(MemVar_1F920D4, var_11C, MemVar_1F920D8)
  loc_1486643:     MemVar_1F920D4 = var_11C
  loc_1486647:   End If
  loc_148664A: Else
  loc_148664A:   Call Proc_4_26_EB5260(MemVar_1F920D4, MemVar_1F9222C)
  loc_148664F:   Call Proc_4_25_EBCDA4(global_112)
  loc_1486654: End If
  loc_1486682: var_124 = Replace(MemVar_1F921D4, ":", vbNullString, 1, -1, 0)
  loc_1486686: MemVar_1F921D8 = "\\" & MemVar_1F92024 & "\" & var_124
  loc_148669E: If (MemVar_1F9209C = vbNullString) Then
  loc_14866BE:   var_A8 = Me.Global.App
  loc_14866D6:   var_108 = CVar("Please fill BackUp path in " & App.Path & "\Analysis.ini") 'String
  loc_14866D9:   MsgBox(var_108, 0, var_118, var_138, var_158)
  loc_14866F3:   End
  loc_14866F5: End If
  loc_1486705: Call 0.Method_Form_Load8 (CStr(MemVar_1F9209C), var_1AA)
  loc_1486713: If (var_1AA = 0) Then
  loc_1486726:   Call 0.Method_arg_74 (CStr(MemVar_1F9209C), var_A8)
  loc_1486731: End If
  loc_1486735: MemVar_1F92044 = New 
  loc_1486744: unk_568157.IsolationLevel = &H10
  loc_1486754: unk_568157.CursorLocation = 3
  loc_1486764: unk_568157.CommandTimeout = 0
  loc_1486771: If (MemVar_1F920E0 = "Yes") Then
  loc_148679B:   var_128 = "Provider=SQLNCLI.1;Password=" & MemVar_1F920D4 & ";Persist Security Info=True;User ID=" & MemVar_1F920D8 & ";Initial Catalog="
  loc_14867C0:   unk_568157.Open var_128 & MemVar_1F92010 & ";Data Source=" & MemVar_1F92098 & vbNullString, vbNullString, vbNullString, -1
  loc_14867DB: Else
  loc_14867F4:   var_120 = "Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F920D8 & ";Initial Catalog="
  loc_1486820:   unk_568157.Open var_120 & MemVar_1F92010 & ";Data Source=" & MemVar_1F92098 & ";pwd=" & MemVar_1F920D4, vbNullString, vbNullString, -1
  loc_1486836: End If
  loc_1486836: Call ChkKeyboard_UnknownEvent_9()
  loc_148683F: MemVar_1F92054 = New 
  loc_148684E: Me.Connection15.IsolationLevel = &H10
  loc_148685E: unk_5681F2.CursorLocation = 3
  loc_148686E: unk_5681F2.CommandTimeout = 0
  loc_1486885: var_11C = "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F921D4
  loc_148688E: unk_5681F2.Open var_11C, vbNullString, vbNullString, -1
  loc_14868AC: unk_568157.Execute "select * from usermast order by user_name", var_108, -1
  loc_14868B7: MemVar_1F92058 = var_A8
  loc_14868D8: If (unk_5681F6.RecordCount <= 0) Then
  loc_14868F1:   unk_568157.Execute "insert into usermast(USER_NAME,PASSWD,LABEL,ShortName) values('SA','\','1','SA')", var_108, -1
  loc_1486912:   unk_568157.Execute "select * from usermast order by user_name", var_108, -1
  loc_148691D:   MemVar_1F92058 = var_A8
  loc_1486927: End If
  loc_148693D: unk_5681F2.Execute "Select * from Enviro", var_108, -1
  loc_1486948: Set var_EC = var_A8
  loc_1486965: If (var_EC.RecordCount > 0) Then
  loc_1486977:   var_A8 = var_EC.Fields
  loc_1486990:   MemVar_1F9220C = Proc_6_38_E68A98(CVar(var_A8.Item("TouchScreen")), var_A8, var_A8)
  loc_148699A: End If
  loc_148699F: Set var_AC = Nothing
  loc_14869BE: Set var_A8 = Me
  loc_14869C4: Proc_6_103_F58070(var_A8, CStr(-2147483643), CStr(&HC00000), MemVar_1F9220C)
  loc_14869D8: Call Proc_4_38_1078E2C(0, var_A8)
  loc_14869DD: Exit Sub
  loc_14869DE: ' Referenced from: 1485DFC
  loc_14869EC: Call 0.Method_arg_2C (var_11C, Err())
  loc_14869F7: Call 0.Method_arg_50 (var_120)
  loc_1486A13: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_138, var_158)
  loc_1486A26: End
  loc_1486A28: Exit Sub
End Sub

Private Sub Form_Resize() 'E203E4
  'Data Table: 568130
  loc_E203C8: Call 0.Method_arg_100 (var_88)
  loc_E203DA: Me.Panelgrid.Width = var_88
  loc_E203E2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E51908
  'Data Table: 568130
  loc_E518DB: Set global_60 = Nothing
  loc_E518ED: Set global_88 = Nothing
  loc_E518F9: MemVar_1F92204 = Nothing
  loc_E51902: MemVar_1F92208 = Nothing
  loc_E51906: Exit Sub
End Sub

Private Sub Form_Activate() 'E4204C
  'Data Table: 568130
  Dim var_8C As TextBox
  loc_E4202E: Set var_88 = Me.txt
  loc_E42034: Call 0.Method_Form_Activate0 (CInt(0), var_8C)
  loc_E4203C: var_8C.Text = MemVar_1F920C8
  loc_E42048: Exit Sub
  loc_E42049: () = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F6B0D4
  'Data Table: 568130
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim KeyCode As Integer
  loc_F6AFAD: If ((CLng(KeyCode) = &H4C) And (Shift = 4)) Then
  loc_F6AFB0:   Call btnapplyNew_UnknownEvent_9()
  loc_F6AFB8: Else
  loc_F6AFC9:   If ((CLng(KeyCode) = &H55) And (Shift = 4)) Then
  loc_F6AFCC:     Call btnexitNew_UnknownEvent_9()
  loc_F6AFD4:   Else
  loc_F6AFE5:     If ((CLng(KeyCode) = &H44) And (Shift = 4)) Then
  loc_F6AFE8:       Call btnStruUpdNew_UnknownEvent_9()
  loc_F6AFED:     End If
  loc_F6AFED:   End If
  loc_F6AFED: End If
  loc_F6AFF0: var_86 = KeyCode
  loc_F6AFFD: If Not (var_86 = CInt(&HD)) Then
  loc_F6B00A:   If Not (var_86 = CInt(&H28)) Then
  loc_F6B017:     If (var_86 = CInt(&H26)) Then
  loc_F6B01A:     End If
  loc_F6B01A:   End If
  loc_F6B020:   Call 0.Method_arg_1E8 (var_8C)
  loc_F6B02F:   If TypeOf var_8C Is arg_F Then
  loc_F6B038:     Call 0.Method_arg_1E8 (var_8C)
  loc_F6B053:     Call Txt_Validate(CInt(var_8C.index))
  loc_F6B05E:   End If
  loc_F6B07B:   If (Proc_6_106_10BB81C(Me, KeyCode, Shift) = &HFF) Then
  loc_F6B08A:     If (CInt(global_52) <> 0) Then
  loc_F6B0A8:       var_9C = "Save Record ?"
  loc_F6B0C4:       If (MsgBox(var_9C, 4, "Save Data", var_F0, var_110) = 6) Then
  loc_F6B0C7:         Call Proc_4_32_15BDA78(0, var_9C)
  loc_F6B0CC:       End If
  loc_F6B0CC:     End If
  loc_F6B0CC:   End If
  loc_F6B0CE:   KeyCode = 0
  loc_F6B0D1: End If
  loc_F6B0D1: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1AFE0
  'Data Table: 568130
  Dim KeyAscii As Integer
  loc_E1AFD4: If (KeyAscii = CInt(&HD)) Then
  loc_E1AFD9:   KeyAscii = 0
  loc_E1AFDC: End If
  loc_E1AFDC: Exit Sub
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'DFCA34
  'Data Table: 568130
  loc_DFCA30: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F5ECD8
  'Data Table: 568130
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_90 As TextBox
  loc_F5EBBA: Set var_88 = Me.txt
  loc_F5EBC0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F5EBCE: Proc_6_74_E226B0(var_8C)
  loc_F5EBE9: Set var_88 = Me.txt
  loc_F5EBEF: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_F5EBF7: var_8C.SelStart = 0
  loc_F5EC10: Set var_88 = Me.txt
  loc_F5EC16: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_F5EC31: Set var_90 = Me.txt
  loc_F5EC37: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_F5EC3F: var_98.SelLength = Len(var_8C.Text)
  loc_F5EC5A: global_106 = CByte(Index)
  loc_F5EC6B: Set var_88 = Me.txt
  loc_F5EC71: Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_9C)
  loc_F5EC79: global_106 = var_8C.MaxLength
  loc_F5EC8B: Me.TxtKeyBoard.MaxLength = var_9C
  loc_F5ECA6: Set var_88 = Me.txt
  loc_F5ECAC: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_F5ECC6: Me.TxtKeyBoard.Text = var_8C.Text
  loc_F5ECD7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48FF4
  'Data Table: 568130
  loc_E48FD2: Set var_88 = Me.txt
  loc_E48FD8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48FE6: Proc_6_73_E22704(var_8C)
  loc_E48FF2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FF1C74
  'Data Table: 568130
  Dim var_86 As Integer
  Dim var_9C As TextBox
  Dim arg_27FF As Integer
  loc_FF1A8B: var_86 = Cancel
  loc_FF1A96: If (var_86 = CInt(&H13)) Then
  loc_FF1AA4:   Set var_8C = Me.txt
  loc_FF1AAA:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_90)
  loc_FF1ACB:   Set var_98 = Me.txt
  loc_FF1AD1:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_9C)
  loc_FF1AD9:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_FF1AEF: Else
  loc_FF1AF7:   If (var_86 = CInt(&H12)) Then
  loc_FF1B05:     Set var_8C = Me.txt
  loc_FF1B0B:     Call 0.Method_Txt_Validate0 (CInt(&H12), var_90)
  loc_FF1B2C:     Set var_98 = Me.txt
  loc_FF1B32:     Call 0.Method_Txt_Validate0 (CInt(&H12), var_9C)
  loc_FF1B3A:     var_9C.Text = Proc_6_33_1512840(var_90)
  loc_FF1B50:   Else
  loc_FF1B58:     If (var_86 = CInt(2)) Then
  loc_FF1B66:       Set var_8C = Me.txt
  loc_FF1B6C:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_FF1B8D:       Set var_98 = Me.txt
  loc_FF1B93:       Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_FF1B9B:       var_9C.Text = Proc_6_33_1512840(var_90)
  loc_FF1BB1:     Else
  loc_FF1BB9:       If (var_86 = CInt(&HD)) Then
  loc_FF1BC7:         Set var_8C = Me.txt
  loc_FF1BCD:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_FF1BEE:         Set var_98 = Me.txt
  loc_FF1BF4:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_9C)
  loc_FF1BFC:         var_9C.Text = Proc_6_33_1512840(var_90)
  loc_FF1C12:       Else
  loc_FF1C1A:         If (var_86 = CInt(&HF)) Then
  loc_FF1C28:           Set var_8C = Me.txt
  loc_FF1C2E:           Call 0.Method_Txt_Validate0 (CInt(&HF), var_90)
  loc_FF1C4F:           Set var_98 = Me.txt
  loc_FF1C55:           Call 0.Method_Txt_Validate0 (CInt(&HF), var_9C)
  loc_FF1C5D:           var_9C.Text = Proc_6_33_1512840(var_90)
  loc_FF1C70:         End If
  loc_FF1C70:       End If
  loc_FF1C70:     End If
  loc_FF1C70:   End If
  loc_FF1C70: End If
  loc_FF1C70: Exit Sub
  loc_FF1C71: arg_27FF = var_86
End Sub

Private Sub btnexitNew_UnknownEvent_9 'DFCC08
  'Data Table: 568130
  loc_DFCC04: End
  loc_DFCC06: Exit Sub
End Sub

Private Sub btnapplyNew_UnknownEvent_9 '195B2A0
  'Data Table: 568130
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_E8 As Variant
  Dim unk_568157 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_C8 As String
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim MemVar_1F920C8 As String
  Dim MemVar_1F920EC As Double
  Dim MemVar_1F920B8 As Integer
  Dim var_144 As String
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_184 As String
  Dim var_13C As String
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim MemVar_1F92040 As Integer
  Dim MemVar_1F92030(CLng(var_8E)) As Connection15
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim MemVar_1F92078 As String
  Dim MemVar_1F923D0 As String
  Dim MemVar_1F92108 As String
  Dim MemVar_1F9210C As String
  Dim unk_568281 As Connection15
  Dim unk_568282 As Connection15
  Dim unk_56828D As Recordset15
  Dim MemVar_1F921D0 As String
  Dim MemVar_1F92020 As String
  Dim var_206 As Integer
  Dim MemVar_1F9213C As String
  Dim var_252 As Integer
  Dim var_250 As Variant
  Dim MemVar_1F92140 As String
  Dim MemVar_1F92144 As String
  Dim var_204 As Variant
  Dim var_240 As Variant
  Dim MemVar_1F92150 As String
  Dim MemVar_1F92158 As String
  Dim MemVar_1F92160 As String
  Dim MemVar_1F92168 As String
  Dim MemVar_1F9217C As String
  Dim MemVar_1F92184 As String
  Dim MemVar_1F9218C As String
  Dim MemVar_1F920F4 As Double
  Dim MemVar_1F9212C As String
  Dim MemVar_1F920FC As Double
  Dim var_258 As Recordset15
  Dim MemVar_1F921B0 As String
  Dim MemVar_1F921B4 As String
  Dim var_9C As Recordset15
  Dim MemVar_1F92218 As String
  Dim var_A4 As Recordset15
  Dim var_A0 As Recordset15
  loc_19585B8: Me.FrmList.Visible = False
  loc_19585C0: On Error Goto loc_195B256
  loc_19585CD: var_BC = Me.DBGrid1.Visible
  loc_19585DF: If (CBool(var_BC) = 0) Then
  loc_19585ED:   Set var_88 = Me.txt
  loc_19585F3:   Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0))
  loc_195861C:   If (Proc_6_27_EA565C(var_C0, "User Name") = 0) Then
  loc_195861F:     Exit Sub
  loc_1958620:   End If
  loc_1958626:   var_E8 = 0
  loc_1958645:   unk_568157.Execute "select COUNT(*) from userMast", var_BC, -1
  loc_195864D:   var_88 = var_88.Fields
  loc_1958655:   var_E8 = var_C0.Item(var_C0)
  loc_195865D:   var_C4 = var_C4.Value
  loc_195867D:   If (var_F8 <= 0) Then
  loc_1958696:     unk_568157.Execute "insert into userMAST (USER_NAME,PASSWD,LABEL) values('SA','\','1')", var_BC, -1
  loc_19586B7:     unk_568157.Execute "insert into user1(USER_NAME,FORM_CODE,PARAM_STR) select 'SA',code,'AEDP' from module", var_BC, -1
  loc_19586C2:   End If
  loc_19586DF:   Set var_88 = Me.txt
  loc_19586E5:   Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0, "SELECT * FROM USERMAST WHERE USER_NAME=", var_128, -1)
  loc_19586F4:   Proc_6_17_EAA2B0(var_F8, CVar(var_C0), var_C4, var_88)
  loc_19586FC:   var_118 = var_88 & var_F8 
  loc_1958700:   var_C8 = CStr(var_118)
  loc_195870A:   unk_568157.Execute var_C8, var_F8, var_C0
  loc_1958741:   If (var_C4.RecordCount <= 0) Then
  loc_1958765:     MsgBox("     Invalid User     ", &H20, "Login", var_118, var_128)
  loc_1958783:     Set var_88 = Me.txt
  loc_1958789:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0)
  loc_1958791:     var_C0.Text = vbNullString
  loc_19587A8:     Set var_88 = Me.txt
  loc_19587AE:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0))
  loc_19587B6:     var_C0.SetFocus
  loc_19587C7:     Set var_8C = Nothing
  loc_19587CA:     Exit Sub
  loc_19587CB:   End If
  loc_19587D6:   Set var_88 = Me.txt
  loc_19587DC:   Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(1), var_C0)
  loc_1958818:   var_118 = var_8C.Fields.Item("PASSWD").Value
  loc_1958825:   Call Proc_4_28_EE6FCC(CStr(var_118), var_144)
  loc_195882D:   var_128 = CVar(var_144) 'String
  loc_1958856:   If (Ucase(CVar(var_C0)) = Ucase(var_128)) Then
  loc_1958873:     var_C0 = var_8C.Fields.Item("ActiveYN")
  loc_1958895:     If (var_C0.Value = "N") Then
  loc_19588A3:       var_F8 = "Login"
  loc_19588B9:       MsgBox("This User Is Not Currently Active", &H10, var_F8, var_118, var_128)
  loc_19588D7:       Set var_88 = Me.txt
  loc_19588DD:       Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0)
  loc_19588E5:       var_C0.Text = vbNullString
  loc_19588FC:       Set var_88 = Me.txt
  loc_1958902:       Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(0), var_C0)
  loc_195890A:       var_C0.SetFocus
  loc_195891B:       Set var_8C = Nothing
  loc_195891E:       Exit Sub
  loc_195891F:     End If
  loc_1958939:     var_C0 = var_8C.Fields.Item("USER_NAME")
  loc_195894A:     MemVar_1F920C8 = CStr(var_C0.Value)
  loc_1958966:     Set var_88 = Me.txt
  loc_195896C:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(2), var_C0, var_C8)
  loc_1958974:     MemVar_1F920C8 = var_C0.Text
  loc_195897E:     MemVar_1F920EC = CDate(var_C8)
  loc_19589B6:     MemVar_1F920B8 = CInt(var_8C.Fields.Item("Label").Value)
  loc_19589DD:     var_C0 = var_8C.Fields.Item("ShortName")
  loc_19589E5:     var_BC = var_C0.Value
  loc_1958A02:     var_E8 = 0
  loc_1958A2F:     unk_568157.Execute "Select isnull(AllowDtChng,'') from UserMast where User_Name='" & MemVar_1F920C8 & "'", var_BC, -1
  loc_1958A37:     var_88 = var_88.Fields
  loc_1958A3F:     var_E8 = var_C0.Item(var_C0)
  loc_1958A47:     var_C4 = var_C4.Value
  loc_1958A88:     Proc_6_17_EAA2B0(var_BC, MemVar_1F920C8, "SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo WHERE User1.User_Name=", var_118, -1, var_88)
  loc_1958A90:     var_F8 = CStr(var_F8) & var_BC 
  loc_1958A9E:     unk_568157.Execute CStr(var_F8), var_F8, CStr(var_BC)
  loc_1958AA9:     MemVar_1F92068 = var_88
  loc_1958ACA:     Me.DBGrid1.Visible = True
  loc_1958ADE:     Me.Frame1.Visible = False
  loc_1958AEF:     Set var_88 = Me.ChkKeyboard
  loc_1958AF5:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010007(False)
  loc_1958B10:     Me.DBGrid1.Left = CVar(CDbl(8475))
  loc_1958B2B:     Me.DBGrid1.Top = CVar(CDbl(930))
  loc_1958B3D:     Set var_88 = Me.DBGrid1
  loc_1958B5A:     Me.Label22.Visible = True
  loc_1958B68:     Call 0.Method_arg_54 ("Company Details", DBGrid1.DispID_18001, 0)
  loc_1958B7A:     Me.btnapply.Caption = "&Select"
  loc_1958B89:     Set var_88 = Me.btnapply
  loc_1958B8F:     var_88.ToolTipText = "Select Company"
  loc_1958BA1:     Set global_60 = New 
  loc_1958BB3:     Me.Recordset15.CursorType = 3
  loc_1958BC3:     Me.LockType = 3
  loc_1958BD3:     var_BC = Ucase(MemVar_1F920C8)
  loc_1958BDB:     var_108 = MemVar_1F920C8
  loc_1958BE3:     Proc_6_17_EAA2B0(var_118, var_108, MemVar_1F920B8)
  loc_1958BFB:     var_128 = "where comp_code in (select Distinct compcode from MenuHelp where username=" & var_118 
  loc_1958C50:     unk_568157.Execute CStr("Select * from company " & IIf((var_BC <> "SA"), var_128 & ")", vbNullString) & " order by STart_dt Desc"), var_204, -1
  loc_1958C8F:     CVarUnk
  loc_1958C94:     VerifyVarObj
  loc_1958C9A:     Set var_88 = Me.DBGrid1
  loc_1958CA0:     LateIdStAd
  loc_1958CC5:     If (Me.RecordCount > 0) Then
  loc_1958CE6:       Proc_6_7_F25D88(var_BC, MemVar_1F920EC, "End_dt>", 0, 1, var_108)
  loc_1958CF2:       var_C8 = CStr(var_88 & var_BC)
  loc_1958CFC:       Me.Find var_C8, var_88, var_88
  loc_1958D0B:     End If
  loc_1958D22:     If (Me.RecordCount <= 0) Then
  loc_1958D2B:       If (MemVar_1F920B8 = 1) Then
  loc_1958D2E:         Call add_Click()
  loc_1958D36:       Else
  loc_1958D3C:         Call 0.Method_arg_50 (var_C8, MemVar_1F920EC)
  loc_1958D5D:         MsgBox("* No Company Available,Contact to Your Supervisor *", &H40, CVar(var_C8), var_118, var_128)
  loc_1958D6D:         End
  loc_1958D6F:       End If
  loc_1958D7B:       Me.btnapply.Enabled = False
  loc_1958D86:     Else
  loc_1958D8B:       Call Proc_4_27_E99730(&HFF)
  loc_1958DA2:       MemVar_1F92040 = CInt(Me.RecordCount)
  loc_1958DAB:       Me.MoveFirst
  loc_1958DBC:       ReDim MemVar_1F92030(1 To CLng(MemVar_1F92040))
  loc_1958DD2:       ReDim MemVar_1F92034(1 To CLng(MemVar_1F92040))
  loc_1958DE8:       ReDim MemVar_1F92038(1 To CLng(MemVar_1F92040))
  loc_1958DFE:       ReDim MemVar_1F9203C(1 To CLng(MemVar_1F92040))
  loc_1958E0C:       var_8E = CByte(0) 'Byte
  loc_1958E10:       ' Referenced from:   19590B7
  loc_1958E22:       If Not(Me.EOF) Then
  loc_1958E30:         var_8E = CByte((CInt(var_8E) + 1)) 'Byte
  loc_1958E43:         MemVar_1F92030(CLng(var_8E)) = New 
  loc_1958E59:         Me.Connection15.CursorLocation = 3
  loc_1958E6F:         MemVar_1F92030(CLng(var_8E)).IsolationLevel = &H10
  loc_1958E85:         MemVar_1F92030(CLng(var_8E)).CommandTimeout = 0
  loc_1958E92:         If (MemVar_1F920E0 = "Yes") Then
  loc_1958EE6:           var_F8 = CVar("Provider=SQLNCLI.1;Password=" & MemVar_1F920D4 & ";Persist Security Info=True;User ID=" & MemVar_1F920D8 & ";Initial Catalog=") 'String
  loc_1958F1C:           MemVar_1F92030(CLng(var_8E)).Open CStr(var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F92098) & vbNullString), vbNullString, vbNullString, -1
  loc_1958F45:         Else
  loc_1958F8E:           var_118 = CVar("Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F920D8 & ";Initial Catalog=") & Me.Fields.Item("CentralData_Path").Value 
  loc_1958F97:           var_128 = var_118 & ";Data Source=" 
  loc_1958FC8:           MemVar_1F92030(CLng(var_8E)).Open CStr(var_128 & CVar(MemVar_1F92098) & ";pwd=" & CVar(MemVar_1F920D4)), vbNullString, vbNullString, -1
  loc_1958FEC:         End If
  loc_1959022:         MemVar_1F92034(CLng(var_8E)) = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comp_Code")), MemVar_1F92040)
  loc_1959062:         MemVar_1F92038(CLng(var_8E)) = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comp_Name")))
  loc_1959086:         var_C0 = Me.Fields.Item("SName")
  loc_19590A2:         MemVar_1F9203C(CLng(var_8E)) = Proc_6_38_E68A98(CVar(var_C0))
  loc_19590B2:         Me.MoveNext
  loc_19590B7:         GoTo loc_1958E10
  loc_19590BA:       End If
  loc_19590C0:       Me.MoveFirst
  loc_19590C5:     End If
  loc_19590CB:     If (MemVar_1F920B8 = 1) Then
  loc_19590D6:       Set var_88 = Me.btnStruUpdNew
  loc_19590DC:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_19590E4:     End If
  loc_19590E7:   Else
  loc_1959108:     MsgBox("     Invalid Password     ", &H20, "Login", var_118, var_128)
  loc_1959123:     Set var_88 = Me.txt
  loc_1959129:     Call 0.Method_btnapplyNew_UnknownEvent_90 (CInt(1), var_C0)
  loc_1959131:     var_C0.SetFocus
  loc_1959145:     var_C8 = "{Home}+{End}"
  loc_195914B:     Proc_303_0_FB9B68(Proc_6_38_E68A98(CVar(var_C0)), 0)
  loc_1959153:   End If
  loc_1959156: Else
  loc_195916D:   If (Me.RecordCount <= 0) Then
  loc_1959170:     Exit Sub
  loc_1959171:   End If
  loc_195919C:   MemVar_1F92078 = Proc_6_38_E68A98(CVar(Me.Fields.Item("SiteCode")))
  loc_1959206:   MemVar_1F923D0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("SiteCodeDisplay")), Proc_6_38_E68A98(CVar(Me.Fields.Item("SiteName")), MemVar_1F92078))
  loc_195924A:   MemVar_1F92108 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CentralData_Path")), MemVar_1F923D0))))
  loc_1959261:   MemVar_1F9210C = MemVar_1F92084 & "\FADATA.mdb"
  loc_1959269:   MemVar_1F92044 = New 
  loc_1959278:   Me.Connection15.CursorLocation = 3
  loc_1959288:   unk_568157.IsolationLevel = &H10
  loc_1959298:   unk_568157.CommandTimeout = 0
  loc_19592A5:   If (MemVar_1F920E0 = "Yes") Then
  loc_19592CF:     var_F8 = CVar("Provider=SQLNCLI.1;Password=" & MemVar_1F920D4 & ";Persist Security Info=True;User ID=" & MemVar_1F920D8 & ";Initial Catalog=") 'String
  loc_1959329:     unk_568157.Open CStr(var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F92098) & vbNullString), vbNullString, vbNullString, -1
  loc_1959352:   Else
  loc_195936B:     var_F8 = CVar("Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F920D8 & ";Initial Catalog=") 'String
  loc_19593C1:     var_194 = var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F92098) & ";pwd=" & CVar(MemVar_1F920D4) 
  loc_19593CF:     unk_568157.Open CStr(var_194), vbNullString, vbNullString, -1
  loc_19593F3:   End If
  loc_19593F7:   MemVar_1F921DC = New 
  loc_1959406:   Me.Connection15.CursorLocation = 3
  loc_1959416:   unk_568281.IsolationLevel = &H10
  loc_1959426:   unk_568281.CommandTimeout = 0
  loc_1959433:   If (MemVar_1F920E0 = "Yes") Then
  loc_195945D:     var_F8 = CVar("Provider=SQLNCLI.1;Password=" & MemVar_1F920D4 & ";Persist Security Info=True;User ID=" & MemVar_1F920D8 & ";Initial Catalog=") 'String
  loc_19594B7:     unk_568281.Open CStr(var_F8 & Me.Fields.Item("CentralData_Path").Value & ";Data Source=" & CVar(MemVar_1F92098) & vbNullString), vbNullString, vbNullString, -1
  loc_19594E0:   Else
  loc_1959529:     var_118 = CVar("Provider=SQLOLEDB.1;Persist Security Info=False;User ID=" & MemVar_1F920D8 & ";Initial Catalog=") & Me.Fields.Item("CentralData_Path").Value 
  loc_1959532:     var_128 = var_118 & ";Data Source=" 
  loc_195955D:     unk_568281.Open CStr(var_128 & CVar(MemVar_1F92098) & ";pwd=" & CVar(MemVar_1F920D4)), vbNullString, vbNullString, -1
  loc_1959581:   End If
  loc_1959585:   MemVar_1F92050 = New 
  loc_1959594:   Me.Connection15.IsolationLevel = &H10
  loc_19595A4:   unk_568282.CursorLocation = 3
  loc_19595B4:   unk_568282.CommandTimeout = 0
  loc_19595D5:   var_C8 = "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F920AC & "\DMEPABX.mdb"
  loc_19595DE:   unk_568282.Open var_C8, vbNullString, vbNullString, -1
  loc_19595E9:   MemVar_1F921A4 = vbNullString
  loc_19595F0:   MemVar_1F921B8 = vbNullString
  loc_19595F7:   MemVar_1F921A8 = vbNullString
  loc_19595FE:   MemVar_1F921BC = vbNullString
  loc_1959605:   MemVar_1F921C0 = vbNullString
  loc_195960C:   MemVar_1F921AC = vbNullString
  loc_1959613:   MemVar_1F921C4 = vbNullString
  loc_195961A:   MemVar_1F921CC = vbNullString
  loc_1959621:   MemVar_1F921CC = vbNullString
  loc_195967B:   unk_568157.Execute CStr("select * from company where comp_code='" & Me.Fields.Item("Comp_Code").Value & "'"), var_128, -1
  loc_1959686:   MemVar_1F923BC = var_C4
  loc_19596CC:   MemVar_1F921D0 = Proc_6_38_E68A98(CVar(unk_56828D.Fields.Item("ActiveEpabx")), var_C4, MemVar_1F9210C)
  loc_1959779:   MemVar_1F92020 = Proc_6_38_E68A98(CVar(Me.Fields.Item("HeadOffice")), CStr(Me.Fields.Item("SName").Value), CStr(Me.Fields.Item("Comp_Name").Value))
  loc_195996A:   MemVar_1F9213C = CStr(Trim(IIf(IsNull(CVar(Me.Fields.Item("Address2"))), vbNullString, CVar(Me.Fields.Item("Address2")))))
  loc_195999A:   var_13C = " - "
  loc_19599CF:   var_194 = (CVar(MemVar_1F9213C) + IIf((Trim(MemVar_1F9213C) = vbNullString), vbNullString, vbNullString))
  loc_1959A12:   var_206 = IsNull(CVar(Me.Fields.Item("City")))
  loc_1959A40:   var_252 = IsNull(CVar(Me.Fields.Item("Pin")))
  loc_1959A97:   var_164 = (CVar(CStr(vbNullString & CVar(MemVar_1F92098) & ";pwd=" & CVar(MemVar_1F920D4))) + Trim(IIf(var_206, vbNullString, CVar(Me.Fields.Item("City")))))
  loc_1959A9B:   var_184 = "-"
  loc_1959AA0:   var_194 = (IIf((Trim(CStr(vbNullString & CVar(MemVar_1F92098) & ";pwd=" & CVar(MemVar_1F920D4))) = vbNullString), vbNullString, vbNullString) + vbNullString)
  loc_1959AF2:   var_250 = (IIf(var_206, vbNullString, CVar(Me.Fields.Item("City"))) & CVar(MemVar_1F92098) & ";pwd=" & CVar(MemVar_1F920D4) + Trim(IIf(var_252, vbNullString, CVar(Me.Fields.Item("Pin")))))
  loc_1959B52:   MemVar_1F92140 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")), CStr(var_250), var_252, var_206, CStr(var_250), CStr(var_250), var_206)
  loc_1959B87:   MemVar_1F92144 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Fax")), MemVar_1F92140, CStr(Trim(IIf(IsNull(CVar(Me.Fields.Item("Address2"))), vbNullString, CVar(Me.Fields.Item("Address2"))))), var_206)
  loc_1959BBC:   var_118 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("LstDate")), MemVar_1F92144, CStr(Trim(IIf(IsNull(CVar(Me.Fields.Item("Address1"))), vbNullString, CVar(Me.Fields.Item("Address1"))))))) 'String
  loc_1959C52:   var_1E4 = IIf((Trim(var_118) <> vbNullString), CVar(" Dt." & Proc_6_38_E68A98(CVar(Me.Fields.Item("LstDate")), var_206)), vbNullString)
  loc_1959C5A:   var_240 = (CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("LstNo")), CStr(Me.Fields.Item("Comp_Code").Value))) + var_1E4)
  loc_1959C9E:   var_C4 = Me.Fields
  loc_1959CB7:   var_118 = CVar(Proc_6_38_E68A98(CVar(var_C4.Item("CstDate")), CStr(Trim(IIf(var_252, vbNullString, CVar(Me.Fields.Item("Pin"))))))) 'String
  loc_1959D23:   var_1C4 = vbNullString
  loc_1959D55:   var_240 = (CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CstNo")))) + IIf((Trim(var_118) <> vbNullString), CVar(" Dt." & Proc_6_38_E68A98(CVar(Me.Fields.Item("CstDate")))), var_1C4))
  loc_1959DB2:   MemVar_1F92150 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TINNo")), CStr(Trim(IIf(var_252, vbNullString, CVar(Me.Fields.Item("Pin"))))))
  loc_1959E1C:   MemVar_1F92158 = Proc_6_38_E68A98(CVar(Me.Fields.Item("StateCode")), Proc_6_38_E68A98(CVar(Me.Fields.Item("GSTIN")), MemVar_1F92150))
  loc_1959E86:   MemVar_1F92160 = Proc_6_38_E68A98(CVar(Me.Fields.Item("PanNo")), Proc_6_38_E68A98(CVar(Me.Fields.Item("State")), MemVar_1F92158))
  loc_1959EF0:   var_C8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("CYear")), Proc_6_38_E68A98(CVar(Me.Fields.Item("DivisionCode")), MemVar_1F92160))
  loc_1959F06:   var_128 = Mid(CVar(var_C8), 3, 5)
  loc_1959F0F:   MemVar_1F92168 = CStr(var_128)
  loc_1959F41:   var_C0 = Me.Fields.Item("CentralData_Path")
  loc_1959F69:   Set var_88 = Me.txt
  loc_1959F6F:   Call 0.Method_btnapplyNew_UnknownEvent_90 (2, var_C0, CStr(var_C0.Value))
  loc_1959F9D:   MemVar_1F920EC = CDate(Format(CVar(var_C0), "dd/mmm/yyyy"))
  loc_195A048:   MemVar_1F9217C = Proc_6_38_E68A98(CVar(Me.Fields.Item("Mobile")), Proc_6_38_E68A98(CVar(Me.Fields.Item("Pin")), CStr(Me.Fields.Item("CYear").Value), MemVar_1F920EC, 1), 1)
  loc_195A0B2:   MemVar_1F92184 = Proc_6_38_E68A98(CVar(Me.Fields.Item("City")), Proc_6_38_E68A98(CVar(Me.Fields.Item("Email")), MemVar_1F9217C))
  loc_195A11C:   MemVar_1F9218C = Proc_6_38_E68A98(CVar(Me.Fields.Item("TradeName")), Proc_6_38_E68A98(CVar(Me.Fields.Item("Legalname")), MemVar_1F92184))
  loc_195A136:   If (Proc_6_101_DFED4C(MemVar_1F920EC, MemVar_1F9218C) = &HFF) Then
  loc_195A139:     End
  loc_195A13B:   End If
  loc_195A183:   MemVar_1F920F4 = CDate(Format(CVar(Me.Fields.Item("Start_Dt")), "dd/MMM/yyyy"))
  loc_195A1D9:   MemVar_1F9212C = CStr(Format(CVar(Me.Fields.Item("Start_Dt")), "yyyy"))
  loc_195A1FB:   var_88 = Me.Fields
  loc_195A217:   var_F8 = "dd/MMM/yyyy"
  loc_195A227:   var_118 = Format(CVar(var_88.Item("End_Dt")), var_F8)
  loc_195A231:   MemVar_1F920FC = CDate(var_118)
  loc_195A247:   If (MemVar_1F920FC < MemVar_1F920EC) Then
  loc_195A24D:     MemVar_1F920EC = MemVar_1F920FC
  loc_195A250:   End If
  loc_195A258:   If (MemVar_1F920C8 = "SA") Then
  loc_195A25B:     Proc_156_4_EC6E4C(MemVar_1F920EC, MemVar_1F920FC, 1, 1, MemVar_1F9212C, 1)
  loc_195A260:   End If
  loc_195A27B:   If ((MemVar_1F92070 <> MemVar_1F92078) And Not(((MemVar_1F92070 = "HO") Or (MemVar_1F92078 = "HO")))) Then
  loc_195A291:     var_BC = "SiteCode Mismatched."
  loc_195A297:     MsgBox(var_BC, &H10, var_F8, var_118, var_128)
  loc_195A2A7:     End
  loc_195A2A9:   End If
  loc_195A2CD:   unk_568157.Execute "select backcolor from usermast where (user_name='" & MemVar_1F920C8 & "')", var_BC, -1
  loc_195A2D8:   Set var_258 = var_88
  loc_195A312:   var_E8 = 0
  loc_195A324:   If (var_258.Fields.Item("BackColor").Value = var_E8) Then
  loc_195A32E:     MemVar_1F921B0 = CStr(&HFAC7CB)
  loc_195A339:     MemVar_1F921B4 = CStr(&HFAC7CB)
  loc_195A340:   Else
  loc_195A36B:     MemVar_1F921B0 = CStr(var_258.Fields.Item("BackColor").Value)
  loc_195A37F:     var_D8 = "BackColor"
  loc_195A3A4:     MemVar_1F921B4 = CStr(var_258.Fields.Item(var_D8).Value)
  loc_195A3B2:   End If
  loc_195A3C9:   MemVar_1F921E0 = CreateObject("CrystalRuntime.Application", 0)
  loc_195A3D6:   var_88 = MemVar_1F926C8
  loc_195A3E0:   Me.Global.Unload var_88
  loc_195A3F6:   Call 0.Method_arg_2B0 (var_D8, var_E8, MemVar_1F921B4, MemVar_1F921B0, MemVar_1F921B4, MemVar_1F921B0, var_88)
  loc_195A408:   var_F8 = 2
  loc_195A416:   Set var_88 = MemVar_1F92244.sbar
  loc_195A41C:   var_BC = MDIForm1.sbar.Panels
  loc_195A42D:   var_F8 = var_BC.ControlDefault
  loc_195A435:   var_C4.Text = var_C4
  loc_195A46A:   Proc_6_17_EAA2B0(var_BC, MemVar_1F92078, "Select * from enviro WHERE LogSITE_CODE=", var_118, -1, var_88, "Property Site :   " & MemVar_1F92174)
  loc_195A472:   var_F8 = 1 & var_BC 
  loc_195A480:   unk_568157.Execute CStr(var_F8), MemVar_1F920F4, 1
  loc_195A48B:   Set var_9C = var_88
  loc_195A4A3:   var_12C = var_9C.RecordCount
  loc_195A4B1:   If (var_12C > 0) Then
  loc_195A4E2:     If IsNull(CVar(var_9C.Fields.Item("Ncur"))) Then
  loc_195A4E5:       GoTo loc_195A531
  loc_195A4E8:     End If
  loc_195A528:     If (MemVar_1F920FC < CDate(var_9C.Fields.Item("Ncur").Value)) Then
  loc_195A52E:       MemVar_1F920EC = MemVar_1F920FC
  loc_195A531:       ' Referenced from:   195A4E5
  loc_195A531:     End If
  loc_195A548:     var_C0 = var_9C.Fields.Item("Bill_Footer")
  loc_195A559:     MemVar_1F92218 = Proc_6_38_E68A98(CVar(var_C0), MemVar_1F920EC, MemVar_1F920EC)
  loc_195A566:   Else
  loc_195A569:     var_BC = Now
  loc_195A573:     MemVar_1F920EC = CDate(var_BC)
  loc_195A57D:   End If
  loc_195A583:   var_E8 = 0
  loc_195A5A2:   unk_568157.Execute "select Count(*) from information_schema.columns where table_name = 'MemEnviro' And column_name='CardExpDate'", var_BC, -1
  loc_195A5AA:   var_88 = var_88.Fields
  loc_195A5B2:   var_E8 = var_C0.Item(var_C0)
  loc_195A5BA:   var_C4 = var_C4.Value
  loc_195A5DA:   If (var_F8 = 0) Then
  loc_195A5DD:     On Error Goto loc_195A738
  loc_195A5E4:     var_AA = CByte(0) 'Byte
  loc_195A5F1:     unk_568157.BeginTrans var_12C
  loc_195A60C:     unk_568157.Execute "Alter Table MemEnviro Add CardExpDate DateTime", var_BC, -1
  loc_195A62B:     var_C8 = "If Not exists (select * from MemEnviro) Insert Into MemEnviro(Interface,LogSite_Code,Site_Code) Values ('SmartCard_ACR','" & MemVar_1F92078
  loc_195A649:     unk_568157.Execute var_C8 & "','" & MemVar_1F92070 & "')", var_BC, -1
  loc_195A675:     unk_568157.Execute "Update MemEnviro Set CardExpDate=(Select Max(kdate) From FaEnviro)", var_BC, -1
  loc_195A696:     unk_568157.Execute "Alter Table FaEnviro Drop CONSTRAINT [DF_FaEnviro_KDate]", var_BC, -1
  loc_195A6B7:     unk_568157.Execute "Alter Table FaEnviro Drop Column kdate", var_BC, -1
  loc_195A6D8:     unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Company' And column_name='Comp_Id') Alter table Company Add Comp_Id varchar(10)", var_BC, -1
  loc_195A6F9:     unk_568157.Execute "Update Company Set Comp_Id=(Select Left(IsNull(Max(SerialKeyNo),''),10) From Company)", var_BC, -1
  loc_195A71A:     unk_568157.Execute "Update Company Set SerialKeyNo=''", var_BC, -1
  loc_195A72B:     unk_568157.CommitTrans
  loc_195A734:     var_AA = CByte(1) 'Byte
  loc_195A738:     ' Referenced from:   195A5DD
  loc_195A741:     If (CInt(var_AA) = 0) Then
  loc_195A74A:       unk_568157.RollbackTrans
  loc_195A74F:     End If
  loc_195A74F:   End If
  loc_195A765:   unk_568157.Execute "Select * from Company", var_BC, -1
  loc_195A770:   Set var_A4 = var_88
  loc_195A788:   var_88 = var_A4.Fields
  loc_195A7A1:   var_F8 = CVar(Proc_6_38_E68A98(CVar(var_88.Item("Comp_Name")), var_88, var_88, var_88, var_88, var_88, var_88)) 'String
  loc_195A7CB:   var_128 = CVar(var_A4.Fields.Item("City")) 'Address
  loc_195A81A:   var_194 = (Trim(var_F8) + Trim(CVar(Proc_6_38_E68A98(var_128, var_88, var_88, var_88))))
  loc_195A823:   Call Proc_4_33_11166C0(CStr((Trim(Trim(var_F8)) <> vbNullString)), Proc_6_38_E68A98(CVar(var_A4.Fields.Item("SerialKeyNo")), var_F8), var_1C4)
  loc_195A85E:   var_88 = var_A4.Fields
  loc_195A873:   var_BC = CVar(var_88.Item("Comp_Name")) 'Address
  loc_195A885:   var_118 = Ucase(Left(var_BC, &H1E))
  loc_195A8A1:   If CBool(var_118 <> "ANALYSIS DEMONSTRATION PACKAGE") Then
  loc_195A8BA:     unk_568157.Execute "select * from MemEnviro", var_BC, -1
  loc_195A8C5:     Set var_A0 = var_88
  loc_195A8FF:     var_F8 = (var_A0.Fields.Item("CardExpDate").Value - CDate(MemVar_1F920EC))
  loc_195A904:     var_A8 = CStr(Left(var_A0.Fields.Item("CardExpDate").Value, &H1E))
  loc_195A93F:     If IsNull(CVar(var_A0.Fields.Item("CardExpDate"))) Then
  loc_195A95B:       MsgBox("You are New User, Please Create License", &H40, Left("You are New User, Please Create License", &H1E), var_118, var_128)
  loc_195A96B:       End
  loc_195A970:     Else
  loc_195A97F:       var_88 = var_A4.Fields
  loc_195A9AB:       If (Len(Proc_6_38_E68A98(CVar(var_88.Item("Comp_Id")), var_88)) < 4) Then
  loc_195A9CD:         MsgBox(CVar("InComplete License Information." & vbCrLf & "Contact :     Your S/w Vendor"), &H40, Left(CVar("InComplete License Information." & vbCrLf & "Contact :     Your S/w Vendor"), &H1E), var_118, var_128)
  loc_195A9E0:         End
  loc_195A9E2:       End If
  loc_195A9EB:       If (CDbl(var_A8) <= CDbl(&H1E)) Then
  loc_195AA18:         var_BC = CVar("Your License Will be Expried with in " & var_A8 & " Days" & vbCrLf & "Please Contact :     Your S/w Vendor") 'String
  loc_195AA1B:         MsgBox(var_BC, &H40, Left(var_BC, &H1E), var_118, var_128)
  loc_195AA34:       End If
  loc_195AA4E:       var_C0 = var_A0.Fields.Item("CardExpDate")
  loc_195AA56:       var_F8 = var_C0.Value
  loc_195AA9C:       If (var_F8 < var_9C.Fields.Item("Ncur").Value) Then
  loc_195AABB:         var_BC = CVar("License Have been Expired" & vbCrLf & "Contact :     Your S/w Vendor") 'String
  loc_195AABE:         MsgBox(var_BC, &H40, var_F8, var_118, var_128)
  loc_195AAD1:         End
  loc_195AAD3:       End If
  loc_195AAD3:     End If
  loc_195AAD3:   End If
  loc_195AAD9:   var_E8 = 0
  loc_195AAF8:   unk_568157.Execute "Select Count(*) from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceEnviro]') and OBJECTPROPERTY(id, N'IsTable') = 1", var_BC, -1
  loc_195AB00:   var_88 = var_88.Fields
  loc_195AB08:   var_E8 = var_C0.Item(var_C0)
  loc_195AB10:   var_C4 = var_C4.Value
  loc_195AB30:   If (var_F8 = 1) Then
  loc_195AB39:     var_E8 = 0
  loc_195AB58:     unk_568157.Execute "select sum([rows]) from sys.partitions where object_id=object_id('eInvoiceEnviro') and index_id in (0,1)", var_BC, -1
  loc_195AB60:     var_88 = var_88.Fields
  loc_195AB68:     var_E8 = var_C0.Item(var_C0)
  loc_195AB70:     var_C4 = var_C4.Value
  loc_195AB90:     If (var_F8 > 0) Then
  loc_195AB99:       var_E8 = 0
  loc_195ABB8:       unk_568157.Execute "Select IsNull(ASPId,'') from eInvoiceEnviro", var_BC, -1
  loc_195ABC0:       var_88 = var_88.Fields
  loc_195ABC8:       var_E8 = var_C0.Item(var_C0)
  loc_195ABD0:       var_C4 = var_C4.Value
  loc_195ABF0:       If CBool(var_F8 <> vbNullString) Then
  loc_195ABF6:         MemVar_1F92190 = "Yes"
  loc_195ABFA:       End If
  loc_195ABFA:     End If
  loc_195ABFA:   End If
  loc_195ABFA:   Call Proc_4_36_1390C5C(var_F8, var_F8, var_F8)
  loc_195AC15:   unk_568157.Execute "Update PlanMast SET RoomTaxStru=RevMast.TaxStru FROM PlanMast LEFT JOIN RoomCat ON RoomCat.Code = PlanMast.RoomCat LEFT JOIN RevMast ON RevMast.Code = RoomCat.RevCode WHERE IsNull(Planmast.RoomTaxStru,'')=''", var_BC, -1
  loc_195AC36:   unk_568157.Execute "UPDATE RoomOcc SET RoomTaxStru=Q.TaxStru FROM RoomOcc INNER JOIN (SELECT DocId+CAST(SNo AS VARCHAR) DocIdS,RoomOcc.RoomRate,RevMast.TaxStru FROM RoomOcc Inner Join RoomCat On RoomCat.Code=RoomOcc.RoomCat Inner Join Revmast On RoomCat.Revcode=Revmast.Code WHERE IsNull(RoomOcc.RoomTaxStru,'')='') Q ON DocId+CAST(SNo AS VARCHAR)=Q.DocIdS", var_BC, -1
  loc_195AC57:   unk_568157.Execute "UPDATE GrpBookingDetails SET RoomTaxStru=Q.TaxStru FROM GrpBookingDetails INNER JOIN (SELECT BookingDocId+CAST(SNo AS VARCHAR) DocIdS,RevMast.TaxStru FROM GrpBookingDetails Inner Join RoomCat On RoomCat.Code=GrpBookingDetails.RoomCat Inner Join Revmast On RoomCat.Revcode=Revmast.Code WHERE IsNull(GrpBookingDetails.RoomTaxStru,'')='') Q ON BookingDocId+CAST(SNo AS VARCHAR)=Q.DocIdS", var_BC, -1
  loc_195AC78:   unk_568157.Execute "Delete From GuestFolioProfDetail Where Docid=''", var_BC, -1
  loc_195AC99:   unk_568157.Execute "Update ItemMast Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_195ACBA:   unk_568157.Execute "Update ItemRate Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_195ACDB:   unk_568157.Execute "Update Stock Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_195ACFC:   unk_568157.Execute "Update StockLog Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_195AD1D:   unk_568157.Execute "Update SplitStock Set MRP=IsNull(MRP,0) Where MRP Is Null", var_BC, -1
  loc_195AD3E:   unk_568157.Execute "Update RevMast Set Active=IsNull(Active,'') Where Active Is Null", var_BC, -1
  loc_195AD5F:   unk_568157.Execute "Update RevMast Set TaxInc=IsNull(TaxInc,'No') Where TaxInc Is Null", var_BC, -1
  loc_195AD80:   unk_568157.Execute "Update Sale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_195ADA1:   unk_568157.Execute "Update Sale1Log Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_195ADC2:   unk_568157.Execute "Update SplitSale1 Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_195ADE3:   unk_568157.Execute "Update Paycharge Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_195AE04:   unk_568157.Execute "Update PaychargeLog Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt Where IsNull(AU_Name,'')=''", var_BC, -1
  loc_195AE25:   unk_568157.Execute "Update GuestReward Set Total=Q.Total,DiscAmt=Q.DiscAmt,RestCode=Q.RestCode,SchemeCode='',SaleUpTo=0,RPointOnAmt=0,RewardValue=0,RedeemValue=0 From (Select S1.Total,S1.DiscAmt,S1.RestCode,G.DocId From GuestReward G Inner Join Sale1 S1 On G.DocId=S1.DocId)Q  Where GuestReward.DocId=Q.DocId And IsNull(GuestReward.RestCode,'')=''", var_BC, -1
  loc_195AE46:   unk_568157.Execute "Update SmartCardRegistration Set RewardBal=IsNull(RewardBal,0),RewardSale=IsNull(RewardSale,0),RewardPoint=IsNull(RewardPoint,0),RedeemPoint=IsNull(RedeemPoint,0) Where RedeemPoint Is Null", var_BC, -1
  loc_195AE65:   var_C8 = "Update Depart Set KOTAtNightAudit=(Select IsNull(Max(KOTAtNightAudit),'') From Enviro Where LogSite_Code='" & MemVar_1F92078
  loc_195AE75:   unk_568157.Execute var_C8 & "') Where IsNull(KOTAtNightAudit,'')='' And OutletYN='Y'", var_BC, -1
  loc_195AE9D:   unk_568157.Execute "Update GuestProf Set FOM=1 Where Code In (Select GuestProf From Booking) And FOM Is Null", var_BC, -1
  loc_195AEBE:   unk_568157.Execute "Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolio) And FOM Is Null", var_BC, -1
  loc_195AEDF:   unk_568157.Execute "Update GuestProf Set FOM=1 Where Code In (Select GuestProf From GuestFolioProfDetail) And FOM Is Null", var_BC, -1
  loc_195AF00:   unk_568157.Execute "Update GuestProf Set POS=1 Where Code In (Select CustCode From GuestReward) And POS Is Null", var_BC, -1
  loc_195AF21:   unk_568157.Execute "Update GuestProf Set FOM=ISNULL(FOM,0)", var_BC, -1
  loc_195AF42:   unk_568157.Execute "Update GuestProf Set POS=ISNULL(POS,0)", var_BC, -1
  loc_195AF63:   unk_568157.Execute "Update MarketSeg Set Active=ISNULL(Active,'')", var_BC, -1
  loc_195AF84:   unk_568157.Execute "Update BussSource Set Active=ISNULL(Active,'')", var_BC, -1
  loc_195AFA5:   unk_568157.Execute "Update RoomDiscount Set Adult=ISNULL(Adult,1)", var_BC, -1
  loc_195AFC6:   unk_568157.Execute "Update Item Set CommodityCode=ItemMast.CommodityCode From Item,ItemMast Where Item.Code=ItemMast.Code And Item.CommodityCode IS Null", var_BC, -1
  loc_195AFE5:   var_C8 = "Update Depart Set CoverMandatory=(Select IsNull(Max(CoversMandatory),'') From Enviro Where LogSite_Code='" & MemVar_1F92078
  loc_195AFF5:   unk_568157.Execute var_C8 & "') Where CoverMandatory Is Null", var_BC, -1
  loc_195B01B:   var_C8 = "Update Depart Set MobileNoMandatory=(Select IsNull(Max(MobileNoMandatory),'') From Enviro Where LogSite_Code='" & MemVar_1F92078
  loc_195B022:   var_144 = var_C8 & "') Where MobileNoMandatory Is Null"
  loc_195B02B:   unk_568157.Execute var_144, var_BC, -1
  loc_195B053:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'Purch1' And column_name='PartyBillNo' And data_type='varchar' And character_maximum_length<25) Alter table Purch1 alter column PartyBillNo varchar(25)", var_BC, -1
  loc_195B074:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'GIN' And column_name='MemInvNo' And data_type='varchar' And character_maximum_length<25) Alter table GIN alter column MemInvNo varchar(25)", var_BC, -1
  loc_195B095:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'ItemCatMast' And column_name='CatType' And data_type='varchar' And character_maximum_length<15) Alter table ItemCatMast alter column CatType varchar(15)", var_BC, -1
  loc_195B0B6:   unk_568157.Execute "Update ItemRate Set Party=ISNULL(Party,'')", var_BC, -1
  loc_195B0D7:   unk_568157.Execute "Update SunTranFacility set Vtype='FACL' Where Vtype='8'", var_BC, -1
  loc_195B0F8:   unk_568157.Execute "Update FacilityBill1 Set FacilityBill1.LocationCode=Q.LocationCode From (Select FacilityBill.DocId,FacilityBill.LocationCode From FacilityBill)Q  Where DocId1=Q.Docid And IsNull(FacilityBill1.LocationCode,'')=''", var_BC, -1
  loc_195B119:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'DBSendSMS' And column_name='TxtMsg' And data_type='varchar' And character_maximum_length<500) Alter table DBSendSMS alter column TxtMsg varchar(500)", var_BC, -1
  loc_195B13A:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'GuestFolio' And column_name='Remarks' And data_type='varchar' And character_maximum_length<100) Alter table GuestFolio alter column Remarks varchar(100)", var_BC, -1
  loc_195B15B:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'GuestFolio' And column_name='Remark' And data_type='varchar' And character_maximum_length<100) Alter table GuestFolio alter column Remark varchar(100)", var_BC, -1
  loc_195B17C:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'GuestProf' And column_name='Comments1' And data_type='varchar' And character_maximum_length<100) Alter table GuestProf alter column Comments1 varchar(100)", var_BC, -1
  loc_195B19D:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'GuestProf' And column_name='Comments2' And data_type='varchar' And character_maximum_length<100) Alter table GuestProf alter column Comments2 varchar(100)", var_BC, -1
  loc_195B1BE:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'GuestProf' And column_name='Comments3' And data_type='varchar' And character_maximum_length<100) Alter table GuestProf alter column Comments3 varchar(100)", var_BC, -1
  loc_195B1DF:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'Sale1' And column_name='Remark' And data_type='varchar' And character_maximum_length<255) Alter table Sale1 alter column Remark varchar(255)", var_BC, -1
  loc_195B200:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'Sale1Log' And column_name='Remark' And data_type='varchar' And character_maximum_length<255) Alter table Sale1Log alter column Remark varchar(255)", var_BC, -1
  loc_195B221:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'SplitSale1' And column_name='Remark' And data_type='varchar' And character_maximum_length<255) Alter table SplitSale1 alter column Remark varchar(255)", var_BC, -1
  loc_195B242:   unk_568157.Execute "If exists (select * from information_schema.columns where table_name = 'GuestReward' And column_name='DepartName' And data_type='varchar' And character_maximum_length<35) Alter table GuestReward alter column DepartName varchar(35)", var_BC, -1
  loc_195B24D: End If
  loc_195B252: Set var_8C = Nothing
  loc_195B255: Exit Sub
  loc_195B256: ' Referenced from: 19585C0
  loc_195B25E: Set var_88 = Err()
  loc_195B264: Call 0.Method_arg_2C (var_C8, var_88, var_88, var_88, var_88, var_88, var_88)
  loc_195B26F: Call 0.Method_arg_50 (var_144, var_88, var_88, var_88)
  loc_195B28B: MsgBox(CVar(var_C8), &H40, CVar(var_144), var_118, var_128)
  loc_195B29E: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 '14A2180
  'Data Table: 568130
  Dim var_8C As TextBox
  Dim var_BC As TextBox
  Dim var_90 As TextBox
  Dim var_B4 As Variant
  Dim var_108 As Variant
  loc_14A14D2: Set var_8C = Me.BtnEnh1
  loc_14A14D8: Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A14E0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A14FD: If (CStr() = "Finish") Then
  loc_14A1500:   GoTo loc_14A209A
  loc_14A1503: End If
  loc_14A150D: Set var_8C = Me.BtnEnh1
  loc_14A1513: Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A151B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1538: If (CStr() = "Enter") Then
  loc_14A1547:   If (CInt(global_106) = 2) Then
  loc_14A158A:     Set var_90 = Me.txt
  loc_14A1590:     Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A1598:     var_BC.Text = Proc_6_34_14ECF20(CStr(Trim(CVar(Me.TxtKeyBoard.Text))))
  loc_14A15B7:   Else
  loc_14A15EE:     Set var_90 = Me.txt
  loc_14A15F4:     Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A15FC:     var_BC.Text = CStr(Trim(CVar(Me.TxtKeyBoard.Text)))
  loc_14A1614:   End If
  loc_14A1625:   global_106 = CByte((CInt(global_106) + 1))
  loc_14A1635:   If (CInt(global_106) = 3) Then
  loc_14A163F:     global_106 = CByte(0)
  loc_14A1643:   End If
  loc_14A1656:   Set var_8C = Me.txt
  loc_14A165C:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90, var_C4)
  loc_14A1664:   global_106 = var_90.MaxLength
  loc_14A1676:   Me.TxtKeyBoard.MaxLength = var_C4
  loc_14A1697:   Set var_8C = Me.txt
  loc_14A169D:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90)
  loc_14A16B1:   Set var_BC = Me.TxtKeyBoard
  loc_14A16B7:   var_BC.Text = var_90.Text
  loc_14A16E8:   Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14A171C:   Set var_90 = Me.txt
  loc_14A1722:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A172A:   var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14A173B: Else
  loc_14A1745:   Set var_8C = Me.BtnEnh1
  loc_14A174B:   Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel, var_90)
  loc_14A1753:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(global_106)
  loc_14A1770:   If (CStr() = "Cancel") Then
  loc_14A1773:     GoTo loc_14A209A
  loc_14A1776:   End If
  loc_14A1780:   Set var_8C = Me.BtnEnh1
  loc_14A1786:   Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A178E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A17AB:   If (CStr() = "Clear") Then
  loc_14A17BB:     Me.TxtKeyBoard.Text = vbNullString
  loc_14A17C6:   Else
  loc_14A17D0:     Set var_8C = Me.BtnEnh1
  loc_14A17D6:     Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A17DE:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A17FB:     If (CStr() = "Back") Then
  loc_14A181C:       If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14A183E:         Set var_90 = Me.TxtKeyBoard
  loc_14A1844:         var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14A185F:         Me.TxtKeyBoard.SelLength = 1
  loc_14A1874:         Me.TxtKeyBoard.SelText = vbNullString
  loc_14A187C:       End If
  loc_14A187F:     Else
  loc_14A1889:       Set var_8C = Me.BtnEnh1
  loc_14A188F:       Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1897:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A18B4:       If (CStr() = "Delete") Then
  loc_14A18D3:         Set var_90 = Me.TxtKeyBoard
  loc_14A18ED:         If (Me.TxtKeyBoard.SelStart < Len(var_90.Text)) Then
  loc_14A18FF:           Me.TxtKeyBoard.SelLength = 1
  loc_14A1914:           Me.TxtKeyBoard.SelText = vbNullString
  loc_14A191C:         End If
  loc_14A191F:       Else
  loc_14A1929:         Set var_8C = Me.BtnEnh1
  loc_14A192F:         Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1937:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1954:         If (CStr() = "Caps Lock") Then
  loc_14A1961:           global_112 = Not(global_112)
  loc_14A196D:           If (global_112 = &HFF) Then
  loc_14A197C:             Set var_8C = Me.BtnEnh1
  loc_14A1982:             Call 0.Method_BtnEnh1_UnknownEvent_9C (var_C6, var_86)
  loc_14A1990:             For var_CA = global_112 To (var_C6 - 1):         0 = var_CA 'Integer
  loc_14A19A0:               Set var_8C = Me.BtnEnh1
  loc_14A19A6:               Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86, var_90)
  loc_14A19AE:               Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(global_112)
  loc_14A19CD:               If (Len(CStr()) = 1) Then
  loc_14A19DA:                 Set var_8C = Me.BtnEnh1
  loc_14A19E0:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86)
  loc_14A19E8:                 Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1A09:                 Set var_BC = Me.BtnEnh1
  loc_14A1A0F:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86, var_E0)
  loc_14A1A17:                 Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Ucase(CVar(CStr())))
  loc_14A1A30:               End If
  loc_14A1A33:             Next var_CA 'Integer
  loc_14A1A3B:           Else
  loc_14A1A47:             Set var_8C = Me.BtnEnh1
  loc_14A1A4D:             Call 0.Method_BtnEnh1_UnknownEvent_9C (var_C6, var_86)
  loc_14A1A5B:             For var_F4 =  To (var_C6 - 1):           0 = var_F4 'Integer
  loc_14A1A6B:               Set var_8C = Me.BtnEnh1
  loc_14A1A71:               Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86)
  loc_14A1A79:               Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1A98:               If (Len(CStr()) = 1) Then
  loc_14A1AA5:                 Set var_8C = Me.BtnEnh1
  loc_14A1AAB:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86)
  loc_14A1AB3:                 Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1AD4:                 Set var_BC = Me.BtnEnh1
  loc_14A1ADA:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (var_86, var_E0)
  loc_14A1AE2:                 Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(LCase(CVar(CStr())))
  loc_14A1AFB:               End If
  loc_14A1AFE:             Next var_F4 'Integer
  loc_14A1B03:           End If
  loc_14A1B06:         Else
  loc_14A1B10:           Set var_8C = Me.BtnEnh1
  loc_14A1B16:           Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1B1E:           Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1B3B:           If (CStr() = "Home") Then
  loc_14A1B4D:             Me.TxtKeyBoard.SelStart = 0
  loc_14A1B58:           Else
  loc_14A1B62:             Set var_8C = Me.BtnEnh1
  loc_14A1B68:             Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1B70:             Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1B8D:             If (CStr() = "Space Bar") Then
  loc_14A1C05:               Set var_90 = Me.TxtKeyBoard
  loc_14A1C2A:               var_B4 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14A1C41:               var_DC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14A1C88:               var_B4 = (CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))) + Space(1))
  loc_14A1C93:               global_116 = CStr(CVar(Me.TxtKeyBoard.SelStart))
  loc_14A1CBB:               Me.TxtKeyBoard.Text = global_116 & CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14A1CD7:               Me.TxtKeyBoard.SelStart = Len(global_116)
  loc_14A1CE2:             Else
  loc_14A1CEC:               Set var_8C = Me.BtnEnh1
  loc_14A1CF2:               Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1CFA:               Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1D17:               If (CStr() = "End") Then
  loc_14A1D34:                 Set var_90 = Me.TxtKeyBoard
  loc_14A1D3A:                 var_90.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14A1D4C:               Else
  loc_14A1D56:                 Set var_8C = Me.BtnEnh1
  loc_14A1D5C:                 Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1D64:                 Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1D81:                 If (CStr() = "<") Then
  loc_14A1DA2:                   If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14A1DC4:                     Set var_90 = Me.TxtKeyBoard
  loc_14A1DCA:                     var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14A1DD6:                   End If
  loc_14A1DD9:                 Else
  loc_14A1DE3:                   Set var_8C = Me.BtnEnh1
  loc_14A1DE9:                   Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1DF1:                   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1E0E:                   If (CStr() = ">") Then
  loc_14A1E47:                     If (Me.TxtKeyBoard.SelStart < Len(Me.TxtKeyBoard.Text)) Then
  loc_14A1E69:                       Set var_90 = Me.TxtKeyBoard
  loc_14A1E6F:                       var_90.SelStart = (Me.TxtKeyBoard.SelStart + 1)
  loc_14A1E7B:                     End If
  loc_14A1E7E:                   Else
  loc_14A1E88:                     Set var_8C = Me.BtnEnh1
  loc_14A1E8E:                     Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel)
  loc_14A1E96:                     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_14A1EB5:                     If (Len(CStr()) = 1) Then
  loc_14A1F2D:                       Set var_90 = Me.TxtKeyBoard
  loc_14A1F52:                       var_B4 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14A1F69:                       var_DC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14A1F78:                       global_120 = CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14A1FA0:                       If (global_112 = &HFF) Then
  loc_14A1FB6:                         Set var_8C = Me.BtnEnh1
  loc_14A1FBC:                         Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel, var_90)
  loc_14A1FC4:                         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))))
  loc_14A1FDA:                         var_108 = ( + Ucase(CVar(CStr())))
  loc_14A1FE5:                         global_116 = CStr(var_108)
  loc_14A2001:                       Else
  loc_14A2014:                         Set var_8C = Me.BtnEnh1
  loc_14A201A:                         Call 0.Method_BtnEnh1_UnknownEvent_90 (Cancel, var_90)
  loc_14A2022:                         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(global_116))
  loc_14A2038:                         var_108 = ( + LCase(CVar(CStr())))
  loc_14A2043:                         global_116 = CStr(var_108)
  loc_14A205C:                       End If
  loc_14A2076:                       Me.TxtKeyBoard.Text = global_116 & global_120
  loc_14A2092:                       Me.TxtKeyBoard.SelStart = Len(global_116)
  loc_14A209A:                     End If
  loc_14A209A:                   End If
  loc_14A209A:                 End If
  loc_14A209A:               End If
  loc_14A209A:             End If
  loc_14A209A:           End If
  loc_14A209A:         End If
  loc_14A209A:       End If
  loc_14A209A:     End If
  loc_14A209A:     ' Referenced from:   14A1773
  loc_14A209A:   End If
  loc_14A209A:   ' Referenced from: 14A1500
  loc_14A209A: End If
  loc_14A20A1: Set var_BC = Me.TxtKeyBoard
  loc_14A20BF: Set var_8C = Me.txt
  loc_14A20C5: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90)
  loc_14A20CD: var_90.Text = var_BC.Text
  loc_14A2103: Set var_90 = Me.txt
  loc_14A2109: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_BC)
  loc_14A2111: var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14A2132: Set var_8C = Me.txt
  loc_14A2138: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106), var_90)
  loc_14A2152: If (var_90.Visible = &HFF) Then
  loc_14A2165:   Set var_8C = Me.txt
  loc_14A216B:   Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(global_106))
  loc_14A2173:   var_90.SetFocus
  loc_14A217F: End If
  loc_14A217F: Exit Sub
End Sub

Private Sub add_Click() 'DFE4C4
  'Data Table: 568130
  loc_DFE4BC: Call Proc_4_29_11B35C4()
  loc_DFE4C1: Exit Sub
End Sub

Private Sub btnStruUpdNew_UnknownEvent_9 '12742C4
  'Data Table: 568130
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim unk_568157 As Connection15
  Dim var_F0 As String
  Dim var_F4 As String
  Dim var_F8 As String
  Dim var_FC As String
  Dim var_100 As String
  Dim var_104 As String
  Dim var_108 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_120 As String
  Dim var_124 As String
  Dim var_128 As String
  loc_1273D61: Set var_A8 = Me.btnStruUpdNew
  loc_1273D67: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_1273D82: Call 0.Method_arg_9C (-1)
  loc_1273D8A: Set var_B0 = New 
  loc_1273D93: Call 0.Method_arg_BC (0)
  loc_1273D9D: Call 0.Method_arg_E8 (0)
  loc_1273DA5: var_C0 = CVar(MemVar_1F920D4) 'String
  loc_1273DBA: Call 0.Method_arg_100 (CVar(MemVar_1F92098), CVar(MemVar_1F920D8))
  loc_1273DC1: Set var_B0 = Nothing 
  loc_1273DCD: For var_C4 = 1 To MemVar_1F92040: var_AA = var_C4 'Integer
  loc_1273DD9:   var_94 = CVar((var_AA - 1)) 'Integer
  loc_1273DE1:   Set var_A8 = Me.DBGrid1
  loc_1273DEF:   var_94 = 6
  loc_1273DF9:   Set var_A8 = Me.DBGrid1
  loc_1273E18:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF2C
  loc_1273E2D:   Call 0.Method_arg_34 (var_D8, CVar(CStr(var_94)), var_EC, DBGrid1.DispID_A, var_94)
  loc_1273E35:   Call 0.Method_arg_30 (DBGrid1.DispID_1B, var_94)
  loc_1273E3D:   MemVar_1F92204 = var_EC
  loc_1273E65:   unk_568157.Execute "if exists (SELECT * FROM sys.key_constraints WHERE type = 'PK' AND OBJECT_NAME(parent_object_id) = N'RoomDiscount' And name='PK_RoomDiscount') ALTER TABLE RoomDiscount DROP CONSTRAINT PK_RoomDiscount", var_D4, -1
  loc_1273E70:   Proc_96_94_1F2C2C8(Me.DBGrid1, 1)
  loc_1273E89:   var_F0 = "if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RoomOccDet]') and OBJECTPROPERTY(id, N'IsView') = 1) " & " drop view [dbo].[RoomOccDet]"
  loc_1273E92:   unk_568157.Execute var_F0, var_D4, -1
  loc_1273EB4:   var_F0 = "CREATE VIEW dbo.RoomOccDet AS SELECT  RO.DocId, RO.SNo, RO.FolioNo, RO.Vtype, RO.Site_Code, RO.Vprefix, RO.GuestProf, RO.RoomCat, RO.RoomType, RO.RoomNo, RO.RateCode, RO.RoomRate, " & "RO.ChkInDate, RO.ChkInTime, RO.Adult, RO.Children, RO.DepDate, RO.DepTime, RO.ChkOutDate, RO.ChkOutTime, RO.Type, RO.U_Name, RO.U_EntDt, RO.U_AE, "
  loc_1273EBB:   var_F4 = var_F0 & "RO.UserchkoutDate, RO.ChkoutUser, RO.NewRoomNo, RO.Reason, RO.PlanCode, RO.PlanAmt, RO.IncInRate, RO.LogSite_Code, RO.PlanDisc, RO.PlanDiscAmt, "
  loc_1273EC2:   var_F8 = var_F4 & "RO.PlanDiscAppon, RO.RRTaxInc, RO.RRServiceChrg, RO.ChngDate, RO.ExtraBed, RO.RoomTarrif, RO.RoomTaxStru, RO1.ChkInDT, RO1.ChkInTm, RO1.ChkOutDT, RO1.ChkOutTm, GF.RODisc AS RoomDisc, "
  loc_1273ED0:   var_100 = var_F8 & "GF.GuestProf AS GuestProfile, GF.MFolioNo, GF.MFolioNoDocid " & "FROM (SELECT dbo.RoomOcc.DocId, dbo.RoomOcc.SNo, dbo.RoomOcc.FolioNo, dbo.RoomOcc.Vtype, dbo.RoomOcc.Site_Code, dbo.RoomOcc.Vprefix, "
  loc_1273ED7:   var_104 = var_100 & "dbo.RoomOcc.GuestProf, dbo.RoomOcc.RoomCat, dbo.RoomOcc.RoomType, dbo.RoomOcc.RoomNo, dbo.RoomOcc.RateCode, dbo.RoomOcc.RoomRate, "
  loc_1273EDE:   var_108 = var_104 & "dbo.RoomOcc.ChkInDate, dbo.RoomOcc.ChkInTime, dbo.RoomOcc.Adult, dbo.RoomOcc.Children, dbo.RoomOcc.DepDate, dbo.RoomOcc.DepTime, "
  loc_1273EE5:   var_10C = var_108 & "dbo.RoomOcc.ChkOutDate, dbo.RoomOcc.ChkOutTime, dbo.RoomOcc.Type, dbo.RoomOcc.U_Name, dbo.RoomOcc.U_EntDt, dbo.RoomOcc.U_AE, "
  loc_1273EEC:   var_110 = var_10C & "dbo.RoomOcc.UserchkoutDate, dbo.RoomOcc.ChkoutUser, dbo.RoomOcc.NewRoomNo, dbo.RoomOcc.Reason, dbo.RoomOcc.PlanCode, "
  loc_1273EF3:   var_114 = var_110 & "dbo.RoomOcc.PlanAmt, dbo.RoomOcc.IncInRate, dbo.RoomOcc.LogSite_Code, dbo.RoomOcc.PlanDisc, dbo.RoomOcc.PlanDiscAmt, "
  loc_1273EFA:   var_118 = var_114 & "dbo.RoomOcc.PlanDiscAppon , dbo.RoomOcc.RRTaxInc, dbo.RoomOcc.RRServiceChrg, dbo.RoomOcc.ChngDate, dbo.RoomOcc.ExtraBed, dbo.RoomOcc.RoomTarrif, dbo.RoomOcc.RoomTaxStru "
  loc_1273F01:   var_11C = var_118 & "FROM dbo.RoomOcc INNER JOIN (SELECT     MAX(SNo) AS SNo, MAX(DocId) AS Docid FROM dbo.RoomOcc AS RoomOcc_5 GROUP BY DocId, ChngDate) AS R1 ON dbo.RoomOcc.DocId = R1.Docid AND dbo.RoomOcc.SNo = R1.SNo) AS RO INNER JOIN "
  loc_1273F08:   var_120 = var_11C & "(SELECT RoomOcc_4.DocId AS TDocId, R3.ChkInDate AS ChkInDT, RoomOcc_4.ChkInTime AS ChkInTm, R3.ChkOutDate AS ChkOutDT, R3.ChkOutTime AS ChkOutTm FROM dbo.RoomOcc AS RoomOcc_4 INNER JOIN (SELECT     MAX(R1.DocId2) AS DocId3, MIN(RoomOcc_3.ChkInDate) AS ChkInDate, MAX(R1.ChkOutDate) AS ChkOutDate, MAX(R1.ChkOutTime) "
  loc_1273F0F:   var_124 = var_120 & "AS ChkOutTime FROM dbo.RoomOcc AS RoomOcc_3 INNER JOIN (SELECT RoomOcc_2.ChkOutDate, RoomOcc_2.ChkOutTime, RoomOcc_2.DocId AS DocId2 FROM dbo.RoomOcc AS RoomOcc_2 INNER JOIN (SELECT     MAX(DocId) AS DocId1, MAX(SNo) AS Sno1 FROM dbo.RoomOcc AS RoomOcc_1 GROUP BY DocId) AS R ON RoomOcc_2.DocId = R.DocId1 AND RoomOcc_2.SNo = R.Sno1) AS R1 ON "
  loc_1273F16:   var_128 = var_124 & "RoomOcc_3.DocID = r1.DocId2 GROUP BY RoomOcc_3.DocId) AS R3 ON RoomOcc_4.DocId = R3.DocId3 WHERE (RoomOcc_4.SNo = 1)) AS RO1 ON RO.DocId = RO1.TDocId INNER JOIN dbo.GuestFolio AS GF ON GF.DocId = RO.DocId"
  loc_1273F1F:   unk_568157.Execute var_128, var_D4, -1
  loc_1273F5F:   var_F0 = "if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SunTransaction]') and OBJECTPROPERTY(id, N'IsView') = 1) " & " drop view [dbo].[SunTransaction]"
  loc_1273F68:   unk_568157.Execute var_F0, var_D4, -1
  loc_1273F8A:   var_F0 = "CREATE VIEW [SunTransaction] AS SELECT SUM(SunTran.Amount) + SUM(SunTranH.Amount) AS Amt,MAX(SunTranH.SValue) SValue,MAX(SunTranH.DispName) DispName,SunTranH.DocId,SunTranH.Sno,SunTranH.Vtype,SunTranH.VNo, " & "SunTranH.Vdate,SunTranH.PartyCode,SunTranH.SunCode,SunTranH.ROff,SunTran.RestCode,SunTran.SunAppDate,SunTran.RevCode FROM SunTran INNER JOIN SunTranH ON SunTran.Sno = SunTranH.Sno AND SunTran.DocId = SunTranH.DocId "
  loc_1273F91:   var_F4 = var_F0 & "GROUP BY SunTranH.DocId,SunTranH.Sno,SunTranH.Vtype,SunTranH.VNo,SunTranH.Vdate,SunTranH.PartyCode,SunTranH.SunCode,SunTranH.ROff,SunTran.RestCode,SunTran.SunAppDate,SunTran.RevCode"
  loc_1273F9A:   unk_568157.Execute var_F4, var_D4, -1
  loc_1273FC0:   var_F0 = "if Not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceBill1]') and OBJECTPROPERTY(id, N'IsTable') = 1) " & "CREATE TABLE [dbo].[eInvoiceBill1]([UserGSTIN] [varchar](15) NOT NULL,[DocId] [varchar](21) NOT NULL,[TranDtls_TaxSch] [varchar](5) NULL,[TranDtls_SupTyp] [varchar](5) NULL,[TranDtls_RegRev] [varchar](2) NULL,[TranDtls_EcmGstin] [varchar](15) NULL,[TranDtls_IgstOnIntra] [varchar](2) NULL,[DocDtls_Typ] [varchar](11) NOT NULL,[DocDtls_No] [varchar](16) NOT NULL,[DocDtls_Dt] [smalldatetime] NULL,"
  loc_1273FC7:   var_F4 = var_F0 & "[SellerDtls_Gstin] [varchar](15) NULL,[SellerDtls_LglNm] [varchar](100) NULL,[SellerDtls_TrdNm] [varchar](100) NULL,[SellerDtls_Addr1] [varchar](100) NULL,[SellerDtls_Addr2] [varchar](100) NULL,[SellerDtls_Loc] [varchar](100) NULL,[SellerDtls_Pin] [varchar](6) NULL,[SellerDtls_Stcd] [varchar](2) NULL,[SellerDtls_Ph] [varchar](12) NULL,[SellerDtls_Em] [varchar](100) NULL,"
  loc_1273FCE:   var_F8 = var_F4 & "[BuyerDtls_Gstin] [varchar](15) NULL,[BuyerDtls_LglNm] [varchar](100) NULL,[BuyerDtls_TrdNm] [varchar](100) NULL,[BuyerDtls_Pos] [varchar](2) NULL,[BuyerDtls_Addr1] [varchar](100) NULL,[BuyerDtls_Addr2] [varchar](100) NULL,[BuyerDtls_Loc] [varchar](100) NULL,[BuyerDtls_Pin] [varchar](6) NULL,[BuyerDtls_Stcd] [varchar](2) NULL,[BuyerDtls_Ph] [varchar](12) NULL,[BuyerDtls_Em] [varchar](100) NULL,"
  loc_1273FD5:   var_FC = var_F8 & "[DispDtls_Nm] [varchar](60) NULL,[DispDtls_Addr1] [varchar](100) NULL,[DispDtls_Addr2] [varchar](100) NULL,[DispDtls_Loc] [varchar](100) NULL,[DispDtls_Pin] [varchar](6) NULL,[DispDtls_Stcd] [varchar](2) NULL,[ShipDtls_Gstin] [varchar](15) NULL,[ShipDtls_LglNm] [varchar](100) NULL,[ShipDtls_TrdNm] [varchar](100) NULL,[ShipDtls_Addr1] [varchar](100) NULL,[ShipDtls_Addr2] [varchar](100) NULL,"
  loc_1273FDC:   var_100 = var_FC & "[ShipDtls_Loc] [varchar](100) NULL,[ShipDtls_Pin] [varchar](6) NULL,[ShipDtls_Stcd] [varchar](2) NULL,[ShipDtls_Ph] [varchar](10) NULL,[ShipDtls_Em] [varchar](100) NULL,[ValDtls_AssVal] [float] NULL,[ValDtls_Cgstval] [float] NULL,[ValDtls_Sgstval] [float] NULL,[ValDtls_Igstval] [float] NULL,[ValDtls_Cesval] [float] NULL,[ValDtls_StCesVal] [float] NULL,[ValDtls_Discount] [float] NULL,"
  loc_1273FE3:   var_104 = var_100 & "[ValDtls_OthChrg] [float] NULL,[ValDtls_RndOffAmt] [float] NULL,[ValDtls_TotInvVal] [float] NULL,[ValDtls_TotInvValFc] [float] NULL,[PayDtls_Nm] [varchar](100) NULL,[PayDtls_AccDet] [varchar](18) NULL,[PayDtls_Mode] [varchar](18) NULL,[PayDtls_Fininsbr] [varchar](11) NULL,[PayDtls_PayTerm] [varchar](100) NULL,[PayDtls_PayInstr] [varchar](100) NULL,[PayDtls_CrTrn] [varchar](100) NULL,"
  loc_1273FEA:   var_108 = var_104 & "[PayDtls_DirDr] [varchar](100) NULL,[PayDtls_CrDay] [int] NULL,[PayDtls_PaidAmt] [float] NULL,[PayDtls_Paymtdue] [float] NULL,[RefDtls_InvRm] [varchar](100) NULL,[RefDtls_DocPerdDtls_InvStDt] [smalldatetime] NULL,[RefDtls_DocPerdDtls_InvEndDt] [smalldatetime] NULL,[RefDtls_PrecDocDtls_InvNo] [varchar](20) NULL,[RefDtls_PrecDocDtls_InvDt] [smalldatetime] NULL,[RefDtls_PrecDocDtls_OthRefNo] [varchar](20) NULL,"
  loc_1273FF1:   var_10C = var_108 & "[RefDtls_ContrDtls_RecAdvRefr] [varchar](20) NULL,[RefDtls_ContrDtls_RecAdvDt] [smalldatetime] NULL,[RefDtls_ContrDtls_TendRefr] [varchar](20) NULL,[RefDtls_ContrDtls_Contrrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Extrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Projrefr] [varchar](20) NULL,[RefDtls_ContrDtls_Porefr] [varchar](20) NULL,[RefDtls_ContrDtls_PoRefDt] [smalldatetime] NULL,"
  loc_1273FF8:   var_110 = var_10C & "[AddlDocDtls_Url] [varchar](100) NULL,[AddlDocDtls_Docs] [varchar](20) NULL,[AddlDocDtls_Info] [varchar](20) NULL,[ExpDtls_ShipBNo] [varchar](20) NULL,[ExpDtls_ShipBDt] [smalldatetime] NULL,[ExpDtls_Port] [varchar](10) NULL,[ExpDtls_RefClm] [varchar](1) NULL,[ExpDtls_ForCur] [varchar](16) NULL,[ExpDtls_CntCode] [varchar](2) NULL,[ExpDtls_InvForCur] [float] NULL,[EwbDtls_TransId] [varchar](15) NULL,"
  loc_1273FFF:   var_114 = var_110 & "[EwbDtls_TransName] [varchar](100) NULL,[EwbDtls_Distance] [int] NULL,[EwbDtls_TransDocNo] [varchar](15) NULL,[EwbDtls_TransDocDt] [smalldatetime] NULL,[EwbDtls_VehNo] [varchar](20) NULL,[EwbDtls_VehType] [varchar](1) NULL,[EwbDtls_TransMode] [varchar](1) NULL,[JsonResponse] [varchar](max) NULL,[AckNo] [varchar](15) NULL,[AckDt] [smalldatetime] NULL,[IRN] [varchar](64) NULL,[SignedInvoice] [varchar](max) NULL,"
  loc_1274006:   var_118 = var_114 & "[SignedQRCode] [varchar](max) NULL,[QrCodeImage] [varchar](max) NULL,[Status] [varchar](5) NULL,[EwayBillNo] [varchar](15) NULL,[EwayBillDate] [smalldatetime] NULL,[EwayBillvalidUpto] [smalldatetime] NULL,[Remarks] [varchar](max) NULL,[InvCancel_IRN] [varchar](64) NULL,[Inv_CancelDate] [smalldatetime] NULL,[supplyType] [varchar](3) NULL,[subSupplyType] [float] NULL,[Eway_DocType] [varchar](3) NULL,"
  loc_127400D:   var_11C = var_118 & "[Eway_CancelDate] [smalldatetime] NULL,[WthPay] [varchar](1) NULL,[Mainhsncode] [varchar](8) NULL,[OrgInvNo] [varchar](16) NULL,CONSTRAINT [PK_eInvoiceBill1] PRIMARY KEY CLUSTERED ([DocId] ASC,[DocDtls_No] ASC,[DocDtls_Typ] ASC)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]"
  loc_1274016:   unk_568157.Execute var_11C, var_D4, -1
  loc_1274050:   var_F0 = "if Not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[eInvoiceBill2]') and OBJECTPROPERTY(id, N'IsTable') = 1) " & "CREATE TABLE [dbo].[eInvoiceBill2]([DocId] [varchar](21) NOT NULL,[SlNo] [varchar](6) NOT NULL,[PrdDesc] [varchar](100) NULL,[IsServc] [varchar](1) NULL,[HsnCd] [varchar](8) NULL,[Barcde] [varchar](30) NULL,[Qty] [float] NULL,[FreeQty] [float] NULL,"
  loc_1274057:   var_F4 = var_F0 & "[Unit] [varchar](6) NULL,[UnitPrice] [float] NULL,[TotAmt] [float] NULL,[Discount] [float] NULL,[PreTaxVal] [float] NULL,[AssAmt] [float] NULL,[GstRt] [float] NULL,[IgstAmt] [float] NULL,[CgstAmt] [float] NULL,[SgstAmt] [float] NULL,"
  loc_127405E:   var_F8 = var_F4 & "[CesRt] [float] NULL,[CesAmt] [float] NULL,[CesNonAdvlAmt] [float] NULL,[StateCesRt] [float] NULL,[StateCesAmt] [float] NULL,[StateCesNonAdvlAmt] [float] NULL,[OthChrg] [float] NULL,[TotItemVal] [float] NULL,[OrdLineRef] [varchar](100) NULL,"
  loc_1274065:   var_FC = var_F8 & "[OrgCntry] [varchar](2) NULL,[PrdSlNo] [varchar](20) NULL,[BchDtls_Nm] [varchar](20) NULL,[BchDtls_ExpDt] [smalldatetime] NULL,[BchDtls_WrDt] [smalldatetime] NULL,[AttribDtls_NM] [varchar](100) NULL,[AttribDtls_Val] [varchar](100) NULL,"
  loc_127406C:   var_100 = var_FC & "[ItemNo] [float] NULL,[PrdNm] [varchar](100) NULL,[IgstRt] [float] NULL,[CgstRt] [float] NULL,[SgstRt] [float] NULL,[cessrate] [float] NULL,CONSTRAINT [PK_eInvoiceBill2] PRIMARY KEY CLUSTERED ([DocId] ASC,[SlNo] ASC)"
  loc_1274073:   var_104 = var_100 & "WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]) ON [PRIMARY]"
  loc_127407C:   unk_568157.Execute var_104, var_D4, -1
  loc_12740AC:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Ledger' And column_name='SeqNo') Alter Table Ledger Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_12740CD:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'LedgerM' And column_name='SeqNo') Alter Table LedgerM Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_12740EE:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'LedgerMerge' And column_name='SeqNo') Alter Table LedgerMerge Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_127410F:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'LedgerMMerge' And column_name='SeqNo') Alter Table LedgerMMerge Add SeqNo Smallint default ((0)) With Values", var_D4, -1
  loc_1274130:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackRow') Alter Table Enviro Add DisplayRackRow Smallint default ((0)) With Values", var_D4, -1
  loc_1274151:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackCol') Alter Table Enviro Add DisplayRackCol Smallint default ((0)) With Values", var_D4, -1
  loc_1274172:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='DisplayRackFontSize') Alter Table Enviro Add DisplayRackFontSize Smallint default ((0)) With Values", var_D4, -1
  loc_1274193:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Depart' And column_name='EditRemarkYN') Alter Table Depart Add EditRemarkYN Varchar(3) default '' With Values", var_D4, -1
  loc_12741B4:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Sale1' And column_name='EditRemark') Alter Table Sale1 Add EditRemark Varchar(75) default '' With Values", var_D4, -1
  loc_12741D5:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'SplitSale1' And column_name='EditRemark') Alter Table SplitSale1 Add EditRemark Varchar(75) default '' With Values", var_D4, -1
  loc_12741F6:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Sale1Log' And column_name='EditRemark') Alter Table Sale1Log Add EditRemark Varchar(75) default '' With Values", var_D4, -1
  loc_1274217:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'FacilityBill1' And column_name='LocationCode') Alter Table FacilityBill1 Add LocationCode Varchar(6) default '' With Values", var_D4, -1
  loc_1274238:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'FacilityBill2' And column_name='SNo') Alter Table FacilityBill2 Add SNo Smallint default ((1)) With Values", var_D4, -1
  loc_1274259:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Enviro' And column_name='PrintSeperateItemInPOSBill') Alter Table Enviro Add PrintSeperateItemInPOSBill Varchar(3) default 'No' With Values", var_D4, -1
  loc_127427A:   unk_568157.Execute "If Not exists (select * from information_schema.columns where table_name = 'Voucher_Type' And column_name='Alias') Alter Table Voucher_Type Add Alias Varchar(6) default '' With Values", var_D4, -1
  loc_1274288: Next var_C4 'Integer
  loc_12742AE: MsgBox("All Company database updated", 0, "Database Update", var_138, var_158)
  loc_12742BE: End
  loc_12742C0: End
  loc_12742C2: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_18 'DFE5A4
  'Data Table: 568130
  loc_DFE59C: Call btnapplyNew_UnknownEvent_9()
  loc_DFE5A1: Exit Sub
End Sub

Public Sub DBGrid1_UnknownEvent_1F(Index As Integer) 'E4870C
  'Data Table: 568130
  Dim arg_1CFF As Variant
  loc_E486E5: If ((Index = 2) And (MemVar_1F920B8 = 1)) Then
  loc_E48700:   Call 0.Method_arg_2BC (Me.POPUP, var_98, var_A8)
  loc_E48708: End If
  loc_E48708: Exit Sub
  loc_E48709: arg_1CFF = CVar(var_B8) 'Integer
End Sub

Private Sub ChkKeyboard_UnknownEvent_9 'F12BCC
  'Data Table: 568130
  Dim var_86 As Integer
  loc_F12AD6: var_86 = 0
  loc_F12AE5: Set var_8C = Me.BtnEnh1
  loc_F12AEB: Call 0.Method_ChkKeyboard_UnknownEvent_9C (var_8E, var_86)
  loc_F12AF9: For var_92 = var_86 To (var_8E - 1): 0 = var_92 'Integer
  loc_F12B03:   Set var_8C = Me.ChkKeyboard
  loc_F12B09:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_69(var_86)
  loc_F12B1A:   If (CInt() = 0) Then
  loc_F12B2C:     Set var_8C = Me.BtnEnh1
  loc_F12B32:     Call 0.Method_ChkKeyboard_UnknownEvent_90 (var_86, var_A8)
  loc_F12B3A:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_F12B49:   Else
  loc_F12B57:     Set var_8C = Me.BtnEnh1
  loc_F12B5D:     Call 0.Method_ChkKeyboard_UnknownEvent_90 (var_86, var_A8)
  loc_F12B65:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F12B71:   End If
  loc_F12B74: Next var_92 'Integer
  loc_F12B7D: Set var_8C = Me.ChkKeyboard
  loc_F12B83: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_69()
  loc_F12B94: If (CInt() = 0) Then
  loc_F12BA1:   Set var_8C = Me.ChkKeyboard
  loc_F12BA7:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_FFFFFDFA("Enable Virtual Keyboard")
  loc_F12BB2: Else
  loc_F12BBC:   Set var_8C = Me.ChkKeyboard
  loc_F12BC2:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_FFFFFDFA("Disable Virtual Keyboard")
  loc_F12BCA: End If
  loc_F12BCA: Exit Sub
End Sub

Public Sub Proc_4_25_EBCDA4
  'Data Table: 568130
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim MemVar_1F920D4 As String
  Dim var_BC As Variant
  Dim MemVar_1F92098 As String
  loc_EBCD13: var_86 = CInt(InStr(1, MemVar_1F92098, "[", 0))
  loc_EBCD29: var_88 = CInt(InStr(1, MemVar_1F92098, "]", 0))
  loc_EBCD36: var_8A = ((var_88 - var_86) - 1)
  loc_EBCD46: If ((var_86 <> 0) And (var_88 <> 0)) Then
  loc_EBCD63:   var_BC = Mid(MemVar_1F92098, CLng((var_86 + 1)), var_8A)
  loc_EBCD6C:   MemVar_1F920D4 = CStr(var_BC)
  loc_EBCD79:   var_BC = CVar((var_86 - 1)) 'Integer
  loc_EBCD95:   MemVar_1F92098 = CStr(Mid(MemVar_1F92098, 1, var_BC))
  loc_EBCDA0: End If
  loc_EBCDA0: Exit Sub
End Sub

Public Sub Proc_4_26_EB5260
  'Data Table: 568130
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim MemVar_1F920D8 As String
  loc_EB51D3: var_86 = CInt(InStr(1, MemVar_1F92098, "{", 0))
  loc_EB51E9: var_88 = CInt(InStr(1, MemVar_1F92098, "}", 0))
  loc_EB51F6: var_8A = ((var_88 - var_86) - 1)
  loc_EB5206: If ((var_86 <> 0) And (var_88 <> 0)) Then
  loc_EB5223:   var_BC = Mid(MemVar_1F92098, CLng((var_86 + 1)), var_8A)
  loc_EB522C:   MemVar_1F920D8 = CStr(var_BC)
  loc_EB5236:   MemVar_1F920E0 = "Yes"
  loc_EB523D: Else
  loc_EB5240:   MemVar_1F920D8 = "sa"
  loc_EB5247:   MemVar_1F920E0 = vbNullString
  loc_EB524B: End If
  loc_EB5253: If (MemVar_1F920D8 = vbNullString) Then
  loc_EB5259:   MemVar_1F920D8 = "sa"
  loc_EB525D: End If
  loc_EB525D: Exit Sub
End Sub

Public Sub Proc_4_27_E99730(arg_C) 'E99730
  'Data Table: 568130
  loc_E996B4: Set var_88 = MemVar_1F926C8.add
  loc_E996BA: frmCompany.add.Enabled = arg_C
  loc_E996CE: Set var_88 = MemVar_1F926C8.edit
  loc_E996D4: frmCompany.edit.Enabled = arg_C
  loc_E996E8: Set var_88 = MemVar_1F926C8.del
  loc_E996EE: frmCompany.del.Enabled = arg_C
  loc_E99703: Set var_88 = MemVar_1F926C8.MNUSAVE
  loc_E99709: frmCompany.MNUSAVE.Enabled = Not(arg_C)
  loc_E9971E: Set var_88 = MemVar_1F926C8.MNUCANCEL
  loc_E99724: frmCompany.MNUCANCEL.Enabled = Not(arg_C)
  loc_E9972C: Exit Sub
End Sub

Public Sub Proc_4_28_EE6FCC(arg_C) 'EE6FCC
  'Data Table: 568130
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE6F3A: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE6F59: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE6F7C:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE6F98:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE6FA0:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE6FA5:   var_8C = CStr(var_108)
  loc_EE6FB9: Next var_B8 'Integer
  loc_EE6FC1: var_88 = var_8C
  loc_EE6FC4: Proc_4_28_EE6FCC = 
End Sub

Public Sub Proc_4_29_11B35C4
  'Data Table: 568130
  Dim var_88 As Frame
  Dim var_90 As TextBox
  Dim var_A4 As String
  Dim arg_DFF As Double
  loc_11B318C: On Error Goto loc_11B3578
  loc_11B3196: global_52 = CByte(1)
  loc_11B31A6: Me.CompInfo.Visible = True
  loc_11B31B3: Call Proc_4_27_E99730(0)
  loc_11B31BD: Call Proc_4_38_1078E2C(&HFF)
  loc_11B31D0: Set var_88 = Me.txt
  loc_11B31D6: Call 0.Method_Proc_4_29_11B35C40 (CInt(3), var_90)
  loc_11B31DE: var_90.Text = vbNullString
  loc_11B31F8: Set var_88 = Me.txt
  loc_11B31FE: Call 0.Method_Proc_4_29_11B35C40 (CInt(5), var_90)
  loc_11B3206: var_90.Text = vbNullString
  loc_11B3220: Set var_88 = Me.txt
  loc_11B3226: Call 0.Method_Proc_4_29_11B35C40 (CInt(4), var_90)
  loc_11B322E: var_90.Text = vbNullString
  loc_11B3248: Set var_88 = Me.txt
  loc_11B324E: Call 0.Method_Proc_4_29_11B35C40 (CInt(6), var_90)
  loc_11B3256: var_90.Text = vbNullString
  loc_11B3270: Set var_88 = Me.txt
  loc_11B3276: Call 0.Method_Proc_4_29_11B35C40 (CInt(7), var_90)
  loc_11B327E: var_90.Text = vbNullString
  loc_11B3298: Set var_88 = Me.txt
  loc_11B329E: Call 0.Method_Proc_4_29_11B35C40 (CInt(8), var_90)
  loc_11B32A6: var_90.Text = vbNullString
  loc_11B32C0: Set var_88 = Me.txt
  loc_11B32C6: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H17), var_90)
  loc_11B32CE: var_90.Text = vbNullString
  loc_11B32E8: Set var_88 = Me.txt
  loc_11B32EE: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H16), var_90)
  loc_11B32F6: var_90.Text = vbNullString
  loc_11B3310: Set var_88 = Me.txt
  loc_11B3316: Call 0.Method_Proc_4_29_11B35C40 (CInt(9), var_90)
  loc_11B331E: var_90.Text = vbNullString
  loc_11B3338: Set var_88 = Me.txt
  loc_11B333E: Call 0.Method_Proc_4_29_11B35C40 (CInt(&HA), var_90)
  loc_11B3346: var_90.Text = vbNullString
  loc_11B3360: Set var_88 = Me.txt
  loc_11B3366: Call 0.Method_Proc_4_29_11B35C40 (CInt(&HB), var_90)
  loc_11B336E: var_90.Text = vbNullString
  loc_11B3388: Set var_88 = Me.txt
  loc_11B338E: Call 0.Method_Proc_4_29_11B35C40 (CInt(&HE), var_90)
  loc_11B3396: var_90.Text = vbNullString
  loc_11B33B0: Set var_88 = Me.txt
  loc_11B33B6: Call 0.Method_Proc_4_29_11B35C40 (CInt(&HC), var_90)
  loc_11B33BE: var_90.Text = vbNullString
  loc_11B33D8: Set var_88 = Me.txt
  loc_11B33DE: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H10), var_90)
  loc_11B33E6: var_90.Text = vbNullString
  loc_11B3400: Set var_88 = Me.txt
  loc_11B3406: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H14), var_90)
  loc_11B340E: var_90.Text = vbNullString
  loc_11B3428: Set var_88 = Me.txt
  loc_11B342E: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H11), var_90)
  loc_11B3436: var_90.Text = vbNullString
  loc_11B3450: Set var_88 = Me.txt
  loc_11B3456: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H15), var_90)
  loc_11B345E: var_90.Text = vbNullString
  loc_11B3484: Set var_88 = Me.txt
  loc_11B348A: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H12), var_90)
  loc_11B3492: var_90.Text = CStr(Date)
  loc_11B34BE: Set var_88 = Me.txt
  loc_11B34C4: Call 0.Method_Proc_4_29_11B35C40 (CInt(&H13), var_90)
  loc_11B34CC: var_90.Text = CStr(Date)
  loc_11B34F8: Set var_88 = Me.txt
  loc_11B34FE: Call 0.Method_Proc_4_29_11B35C40 (CInt(&HF), var_90)
  loc_11B3506: var_90.Text = CStr(Date)
  loc_11B3523: var_A4 = CStr(Date)
  loc_11B3532: Set var_88 = Me.txt
  loc_11B3538: Call 0.Method_Proc_4_29_11B35C40 (CInt(&HD), var_90)
  loc_11B3540: var_90.Text = var_A4
  loc_11B355D: Set var_88 = Me.txt
  loc_11B3563: Call 0.Method_Proc_4_29_11B35C40 (CInt(3), var_90)
  loc_11B356B: var_90.SetFocus
  loc_11B3577: Exit Sub
  loc_11B3578: ' Referenced from: 11B318C
  loc_11B3580: Set var_88 = Err()
  loc_11B3586: Call 0.Method_arg_2C (var_A4)
  loc_11B3591: Call 0.Method_arg_50 (var_A8)
  loc_11B35AD: MsgBox(CVar(var_A4), &H10, CVar(var_A8), var_D8, var_F8)
  loc_11B35C0: Exit Sub
  loc_11B35C1: arg_DFF = global_52
End Sub

Public Sub Proc_4_30_138F0E0
  'Data Table: 568130
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_138E80C: On Error Goto loc_138F094
  loc_138E816: global_52 = CByte(2)
  loc_138E826: Me.CompInfo.Visible = True
  loc_138E833: Call Proc_4_27_E99730(0)
  loc_138E83D: Call Proc_4_38_1078E2C(&HFF)
  loc_138E873: global_56 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comp_Code")))
  loc_138E8B9: Set var_B8 = Me.txt
  loc_138E8BF: Call 0.Method_Proc_4_30_138F0E00 (CInt(3), var_BC)
  loc_138E8C7: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comp_Code")))
  loc_138E914: Set var_B8 = Me.txt
  loc_138E91A: Call 0.Method_Proc_4_30_138F0E00 (CInt(5), var_BC)
  loc_138E922: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SName")))
  loc_138E96F: Set var_B8 = Me.txt
  loc_138E975: Call 0.Method_Proc_4_30_138F0E00 (CInt(4), var_BC)
  loc_138E97D: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comp_Name")))
  loc_138E9CA: Set var_B8 = Me.txt
  loc_138E9D0: Call 0.Method_Proc_4_30_138F0E00 (CInt(6), var_BC)
  loc_138E9D8: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Address1")))
  loc_138EA25: Set var_B8 = Me.txt
  loc_138EA2B: Call 0.Method_Proc_4_30_138F0E00 (CInt(7), var_BC)
  loc_138EA33: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Address2")))
  loc_138EA80: Set var_B8 = Me.txt
  loc_138EA86: Call 0.Method_Proc_4_30_138F0E00 (CInt(8), var_BC)
  loc_138EA8E: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("City")))
  loc_138EADB: Set var_B8 = Me.txt
  loc_138EAE1: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H16), var_BC)
  loc_138EAE9: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SiteName")))
  loc_138EB36: Set var_B8 = Me.txt
  loc_138EB3C: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H17), var_BC)
  loc_138EB44: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SiteCode")))
  loc_138EB91: Set var_B8 = Me.txt
  loc_138EB97: Call 0.Method_Proc_4_30_138F0E00 (CInt(9), var_BC)
  loc_138EB9F: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Pin")))
  loc_138EBEC: Set var_B8 = Me.txt
  loc_138EBF2: Call 0.Method_Proc_4_30_138F0E00 (CInt(&HA), var_BC)
  loc_138EBFA: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")))
  loc_138EC47: Set var_B8 = Me.txt
  loc_138EC4D: Call 0.Method_Proc_4_30_138F0E00 (CInt(&HB), var_BC)
  loc_138EC55: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Fax")))
  loc_138ECA2: Set var_B8 = Me.txt
  loc_138ECA8: Call 0.Method_Proc_4_30_138F0E00 (CInt(&HE), var_BC)
  loc_138ECB0: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CstNo")))
  loc_138ECFD: Set var_B8 = Me.txt
  loc_138ED03: Call 0.Method_Proc_4_30_138F0E00 (CInt(&HC), var_BC)
  loc_138ED0B: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LstNo")))
  loc_138ED58: Set var_B8 = Me.txt
  loc_138ED5E: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H14), var_BC)
  loc_138ED66: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FGLNo")))
  loc_138EDB3: Set var_B8 = Me.txt
  loc_138EDB9: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H10), var_BC)
  loc_138EDC1: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CYear")))
  loc_138EE0E: Set var_B8 = Me.txt
  loc_138EE14: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H11), var_BC)
  loc_138EE1C: var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PYear")))
  loc_138EE85: Set var_B8 = Me.txt
  loc_138EE8B: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H12), var_BC, CStr(Format(CVar(Me.Fields.Item("Start_Dt")), "Short Date")))
  loc_138EE93: var_BC.Text = 1
  loc_138EF02: Set var_B8 = Me.txt
  loc_138EF08: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H13), var_BC, CStr(Format(CVar(Me.Fields.Item("End_Dt")), "Short Date")), 1)
  loc_138EF10: var_BC.Text = 1
  loc_138EF7F: Set var_B8 = Me.txt
  loc_138EF85: Call 0.Method_Proc_4_30_138F0E00 (CInt(&HF), var_BC, CStr(Format(CVar(Me.Fields.Item("CstDate")), "Short Date")), 1)
  loc_138EF8D: var_BC.Text = 1
  loc_138EFE5: var_EC = Format(CVar(Me.Fields.Item("LstDate")), "Short Date")
  loc_138EFFC: Set var_B8 = Me.txt
  loc_138F002: Call 0.Method_Proc_4_30_138F0E00 (CInt(&HD), var_BC, CStr(var_EC), 1)
  loc_138F00A: var_BC.Text = 1
  loc_138F04F: var_B4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("SerialKeyNo")), 1)
  loc_138F05D: Set var_B8 = Me.txt
  loc_138F063: Call 0.Method_Proc_4_30_138F0E00 (CInt(&H15), var_BC)
  loc_138F06B: var_BC.Text = var_B4
  loc_138F08B: Me.Panelgrid.Visible = False
  loc_138F093: Exit Sub
  loc_138F094: ' Referenced from: 138E80C
  loc_138F09C: Set var_88 = Err()
  loc_138F0A2: Call 0.Method_arg_2C (var_B4)
  loc_138F0AD: Call 0.Method_arg_50 (var_F0)
  loc_138F0C9: MsgBox(CVar(var_B4), &H10, CVar(var_F0), var_EC, var_100)
  loc_138F0DC: Exit Sub
End Sub

Public Sub Proc_4_31_1002D40
  'Data Table: 568130
  Dim Me As Recordset15
  Dim var_110 As Fields15
  Dim var_EC As Variant
  Dim var_118 As String
  Dim unk_568157 As Connection15
  Dim MemVar_1F92030(CLng(var_8A)) As Connection15
  Dim arg_DFF As Double
  loc_1002B4C: On Error Goto loc_1002CF4
  loc_1002B86: If (MsgBox("Do You Want to Delete It ", &H124, "Delete Confirmation", var_EC, var_10C) = 6) Then
  loc_1002BDF:   unk_568157.Execute CStr("DELETE FROM COMPANY WHERE COMP_CODE='" & Me.Fields.Item("Comp_Code").Value & "'"), var_10C, -1
  loc_1002C43:   var_EC = "DELETE FROM user2 WHERE COMP_CODE='" & Me.Fields.Item("Comp_Code").Value & "'" 
  loc_1002C47:   var_118 = CStr(var_EC)
  loc_1002C51:   unk_568157.Execute var_118, var_10C, -1
  loc_1002C75:   For var_120 = 1 To MemVar_1F92040: var_8A = var_120 'Integer
  loc_1002CC0:     If (CVar(MemVar_1F92034(CLng(var_8A))) = Me.Fields.Item("Comp_Code").Value) Then
  loc_1002CCE:       MemVar_1F92030(CLng(var_8A)).Close
  loc_1002CD3:     End If
  loc_1002CD6:   Next var_120 'Integer
  loc_1002CE6:   Me.Requery -1
  loc_1002CEB: End If
  loc_1002CF0: Set var_88 = Nothing
  loc_1002CF3: Exit Sub
  loc_1002CF4: ' Referenced from: 1002B4C
  loc_1002CFC: Set var_110 = Err()
  loc_1002D02: Call 0.Method_arg_2C (var_118)
  loc_1002D0D: Call 0.Method_arg_50 (var_124)
  loc_1002D29: MsgBox(CVar(var_118), &H10, CVar(var_124), var_EC, var_10C)
  loc_1002D3C: Exit Sub
  loc_1002D3D: arg_DFF = 
End Sub

Public Sub Proc_4_32_15BDA78
  'Data Table: 568130
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_98 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim unk_568157 As Connection15
  Dim var_128 As String
  Dim var_100 As String
  Dim var_F0 As Variant
  Dim var_A0 As String
  Dim var_9C As Recordset15
  Dim var_140 As Field20
  Dim var_178 As String
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1BC As TextBox
  Dim var_1C8 As String
  Dim var_1D0 As TextBox
  Dim var_1DC As String
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_20C As Variant
  Dim var_214 As TextBox
  Dim var_250 As TextBox
  Dim var_28C As TextBox
  Dim var_2B0 As Variant
  Dim var_2F8 As Variant
  Dim var_378 As TextBox
  Dim var_3C4 As TextBox
  Dim var_450 As Variant
  Dim var_480 As Variant
  Dim var_498 As Variant
  Dim var_4E0 As TextBox
  Dim var_4F4 As Variant
  Dim var_53C As Variant
  Dim var_55C As Variant
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_1EC As TextBox
  Dim var_320 As TextBox
  Dim var_4A8 As Variant
  Dim var_54C As Variant
  Dim var_170 As Variant
  loc_15BC96C: On Error Goto loc_15BDA15
  loc_15BC973: var_8A = CByte(0) 'Byte
  loc_15BC982: Set var_94 = Me.txt
  loc_15BC988: Call 0.Method_Proc_4_32_15BDA780 (CInt(3))
  loc_15BC9B1: If (Proc_6_27_EA565C(var_98, "Company Code") = 0) Then
  loc_15BC9B4:   Exit Sub
  loc_15BC9B5: End If
  loc_15BC9C0: Set var_94 = Me.txt
  loc_15BC9C6: Call 0.Method_Proc_4_32_15BDA780 (CInt(4), var_98)
  loc_15BC9EF: If (Proc_6_27_EA565C(var_98, "Company Name") = 0) Then
  loc_15BC9F2:   Exit Sub
  loc_15BC9F3: End If
  loc_15BC9FE: Set var_94 = Me.txt
  loc_15BCA04: Call 0.Method_Proc_4_32_15BDA780 (CInt(5), var_98)
  loc_15BCA2D: If (Proc_6_27_EA565C(var_98, "Short Name") = 0) Then
  loc_15BCA30:   Exit Sub
  loc_15BCA31: End If
  loc_15BCA3C: Set var_94 = Me.txt
  loc_15BCA42: Call 0.Method_Proc_4_32_15BDA780 (CInt(6), var_98)
  loc_15BCA6B: If (Proc_6_27_EA565C(var_98, "Address") = 0) Then
  loc_15BCA6E:   Exit Sub
  loc_15BCA6F: End If
  loc_15BCA7A: Set var_94 = Me.txt
  loc_15BCA80: Call 0.Method_Proc_4_32_15BDA780 (CInt(8), var_98)
  loc_15BCAA9: If (Proc_6_27_EA565C(var_98, "City") = 0) Then
  loc_15BCAAC:   Exit Sub
  loc_15BCAAD: End If
  loc_15BCAB8: Set var_94 = Me.txt
  loc_15BCABE: Call 0.Method_Proc_4_32_15BDA780 (CInt(&H16), var_98)
  loc_15BCAE7: If (Proc_6_27_EA565C(var_98, "Site Name") = 0) Then
  loc_15BCAEA:   Exit Sub
  loc_15BCAEB: End If
  loc_15BCAF6: Set var_94 = Me.txt
  loc_15BCAFC: Call 0.Method_Proc_4_32_15BDA780 (CInt(&H15), var_98)
  loc_15BCB25: If (Proc_6_27_EA565C(var_98, "Key No") = 0) Then
  loc_15BCB28:   Exit Sub
  loc_15BCB29: End If
  loc_15BCB34: Set var_94 = Me.txt
  loc_15BCB3A: Call 0.Method_Proc_4_32_15BDA780 (CInt(9), var_98)
  loc_15BCB63: If (Proc_6_27_EA565C(var_98, "PIN") = 0) Then
  loc_15BCB66:   Exit Sub
  loc_15BCB67: End If
  loc_15BCB72: Set var_94 = Me.txt
  loc_15BCB78: Call 0.Method_Proc_4_32_15BDA780 (CInt(&H17), var_98)
  loc_15BCB87: var_C0 = Trim(CVar(var_98))
  loc_15BCB8F: var_D0 = Len(var_C0)
  loc_15BCBA5: If (var_D0 < 2) Then
  loc_15BCBC1:   MsgBox("Site Code Must be of 2 Characters", 0, var_C0, var_D0, var_F0)
  loc_15BCBD1:   Exit Sub
  loc_15BCBD2: End If
  loc_15BCBDD: Set var_94 = Me.txt
  loc_15BCBE3: Call 0.Method_Proc_4_32_15BDA780 (CInt(&H10), var_98)
  loc_15BCBEB: var_A0 = "Current Year"
  loc_15BCC0C: If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_15BCC0F:   Exit Sub
  loc_15BCC10: End If
  loc_15BCC1E: Set var_94 = Me.txt
  loc_15BCC24: Call 0.Method_Proc_4_32_15BDA780 (CInt(&H12), var_98)
  loc_15BCC2C: var_128 = var_98.Text
  loc_15BCC42: Set var_9C = Me.txt
  loc_15BCC48: Call 0.Method_Proc_4_32_15BDA780 (CInt(&H13), var_124, var_A0)
  loc_15BCC50: var_128 = var_124.Text
  loc_15BCC6C: If (var_98 > var_A0) Then
  loc_15BCC75:   Call 0.Method_arg_50 (var_A0)
  loc_15BCC96:   MsgBox("End Date Should be More Than Start Date", &H10, CVar(var_A0), var_D0, var_F0)
  loc_15BCCA6:   Exit Sub
  loc_15BCCA7: End If
  loc_15BCCB0: unk_568157.BeginTrans var_12C
  loc_15BCCB9: var_8A = CByte(1) 'Byte
  loc_15BCCCE: Set var_94 = Me.txt
  loc_15BCCD4: Call 0.Method_Proc_4_32_15BDA780 (CInt(&H17), var_98)
  loc_15BCCEC: var_90 = "('" & var_98.Text & "')"
  loc_15BCD09: If (CInt(global_52) = 1) Then
  loc_15BCD38:   Set var_94 = Me.txt
  loc_15BCD3E:   Call 0.Method_Proc_4_32_15BDA780 (CInt(3), var_98, "select count(*) from company where comp_code='", var_13C, -1)
  loc_15BCD55:   var_D0 = var_9C & Trim(CVar(var_98)) 
  loc_15BCD5E:   var_F0 = var_D0 & "'" 
  loc_15BCD62:   var_A0 = CStr(var_F0)
  loc_15BCD6C:   unk_568157.Execute var_A0, var_124, 0
  loc_15BCD7C:    = var_124.Item(var_150)
  loc_15BCD84:    = var_9C.Fields.Value
  loc_15BCDB1:   If (var_150 > 0) Then
  loc_15BCDBF:     var_C0 = "Input Error"
  loc_15BCDD5:     MsgBox("Duplicate Company Code", &H30, var_C0, var_D0, var_F0)
  loc_15BCDE5:     Exit Sub
  loc_15BCDE6:   End If
  loc_15BCE04:   Set var_94 = Me.txt
  loc_15BCE0A:   Call 0.Method_Proc_4_32_15BDA780 (CInt(5), var_98, var_A0, "INSERT INTO COMPANY (SName,Comp_Code,Comp_Name,Address1,Address2,City,Pin,LstDate,CstDate,Phone,CYear,PYear,Start_Dt,End_Dt,LstNo,CstNo,CentralData_Path,FAX,FGLNo,SerialKeyNo,SiteCode,SiteName,SiteCodeDisplay) VALUES ('")
  loc_15BCE12:   var_6A0 = var_98.Text
  loc_15BCE1B:   var_128 = -1 & var_A0
  loc_15BCE22:   var_178 = "('" & var_98.Text & "','"
  loc_15BCE33:   Set var_9C = Me.txt
  loc_15BCE39:   Call 0.Method_Proc_4_32_15BDA780 (CInt(3), var_124, var_174)
  loc_15BCE41:   var_178 = var_124.Text
  loc_15BCE62:   Set var_140 = Me.txt
  loc_15BCE68:   Call 0.Method_Proc_4_32_15BDA780 (CInt(4), var_180)
  loc_15BCE91:   Set var_190 = Me.txt
  loc_15BCE97:   Call 0.Method_Proc_4_32_15BDA780 (CInt(6), var_194)
  loc_15BCEC0:   Set var_1A4 = Me.txt
  loc_15BCEC6:   Call 0.Method_Proc_4_32_15BDA780 (CInt(7), var_1A8)
  loc_15BCEEF:   Set var_1B8 = Me.txt
  loc_15BCEF5:   Call 0.Method_Proc_4_32_15BDA780 (CInt(8), var_1BC)
  loc_15BCF1E:   Set var_1CC = Me.txt
  loc_15BCF24:   Call 0.Method_Proc_4_32_15BDA780 (CInt(9), var_1D0)
  loc_15BCF35:   var_1DC = var_6A4 & var_174 & "','" & var_180.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','" & var_1BC.Text & "','" & var_1D0.Text
  loc_15BCF4A:   Set var_1E0 = Me.txt
  loc_15BCF50:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HD), var_1E4)
  loc_15BCF5F:   Proc_6_17_EAA2B0(var_C0, CVar(var_1E4))
  loc_15BCF7F:   Set var_1E8 = Me.txt
  loc_15BCF85:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HF), var_1EC)
  loc_15BCF94:   Proc_6_17_EAA2B0(var_170, CVar(var_1EC))
  loc_15BCFB7:   Set var_210 = Me.txt
  loc_15BCFBD:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HA), var_214)
  loc_15BCFEB:   Set var_24C = Me.txt
  loc_15BCFF1:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H10), var_250)
  loc_15BD01F:   Set var_288 = Me.txt
  loc_15BD025:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H11), var_28C)
  loc_15BD038:   var_2B0 = CVar(var_1DC & "',") & var_C0 & "," & var_170 & ",'" & CVar(var_214.Text) & "','" & CVar(var_250.Text) & "','" & CVar(var_28C.Text) 
  loc_15BD050:   Set var_2C4 = Me.txt
  loc_15BD056:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H12), var_2C8)
  loc_15BD065:   Proc_6_7_F25D88(var_2E8, CVar(var_2C8))
  loc_15BD085:   Set var_31C = Me.txt
  loc_15BD08B:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H13), var_320)
  loc_15BD09A:   Proc_6_7_F25D88(var_340, CVar(var_320))
  loc_15BD0BD:   Set var_374 = Me.txt
  loc_15BD0C3:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HC), var_378)
  loc_15BD0F1:   Set var_3C0 = Me.txt
  loc_15BD0F7:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HE), var_3C4)
  loc_15BD127:   Set var_40C = Me.txt
  loc_15BD12D:   Call 0.Method_Proc_4_32_15BDA780 (CInt(3), var_410)
  loc_15BD13C:   var_430 = Trim(CVar(var_410))
  loc_15BD144:   var_450 = ("Analysis_" + var_430)
  loc_15BD151:   var_480 = var_2B0 & "'," & var_2E8 & "," & var_340 & ",'" & CVar(var_378.Text) & "','" & CVar(var_3C4.Text) & "','" & var_450 & "'," 
  loc_15BD160:   Set var_484 = Me.txt
  loc_15BD166:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HB), var_488)
  loc_15BD16E:   var_498 = CVar(var_488) 'Address
  loc_15BD175:   Proc_6_17_EAA2B0(var_4A8, var_498)
  loc_15BD198:   Set var_4DC = Me.txt
  loc_15BD19E:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H14), var_4E0)
  loc_15BD1AE:   var_4F4 = CVar(var_4E0.Text) 'String
  loc_15BD1C9:   Set var_528 = Me.txt
  loc_15BD1CF:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H15), var_52C)
  loc_15BD1D7:   var_53C = CVar(var_52C) 'Address
  loc_15BD1DE:   Proc_6_17_EAA2B0(var_54C, var_53C)
  loc_15BD1FE:   Set var_580 = Me.txt
  loc_15BD204:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H17), var_584)
  loc_15BD213:   Proc_6_17_EAA2B0(var_5A4, CVar(var_584))
  loc_15BD233:   Set var_5D8 = Me.txt
  loc_15BD239:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H16), var_5DC)
  loc_15BD248:   Proc_6_17_EAA2B0(var_5FC, CVar(var_5DC))
  loc_15BD268:   Proc_6_17_EAA2B0(var_64C, var_90)
  loc_15BD287:   unk_568157.Execute CStr(var_480 & var_4A8 & ",'" & var_4F4 & "'," & var_54C & "," & var_5A4 & "," & var_5FC & "," & var_64C & ")"), , 
  loc_15BD382: Else
  loc_15BD39F:   var_98 = Me.Fields.Item("Comp_Code")
  loc_15BD3B0:   var_A0 = CStr(var_98.Value)
  loc_15BD3E5:   Set var_94 = Me.txt
  loc_15BD3EB:   Call 0.Method_Proc_4_32_15BDA780 (CInt(5), var_98, var_A0, "UPDATE COMPANY SET SName='")
  loc_15BD3F3:   var_55C = var_98.Text
  loc_15BD3FC:   var_128 = -1 & var_A0
  loc_15BD403:   var_178 = "('" & var_98.Text & "',Comp_Name='"
  loc_15BD414:   Set var_9C = Me.txt
  loc_15BD41A:   Call 0.Method_Proc_4_32_15BDA780 (CInt(4), var_124, var_174)
  loc_15BD422:   var_178 = var_124.Text
  loc_15BD443:   Set var_140 = Me.txt
  loc_15BD449:   Call 0.Method_Proc_4_32_15BDA780 (CInt(6), var_180)
  loc_15BD472:   Set var_190 = Me.txt
  loc_15BD478:   Call 0.Method_Proc_4_32_15BDA780 (CInt(7), var_194)
  loc_15BD4A1:   Set var_1A4 = Me.txt
  loc_15BD4A7:   Call 0.Method_Proc_4_32_15BDA780 (CInt(8), var_1A8)
  loc_15BD4D0:   Set var_1B8 = Me.txt
  loc_15BD4D6:   Call 0.Method_Proc_4_32_15BDA780 (CInt(9), var_1BC)
  loc_15BD4E7:   var_1C8 = var_4DC & var_174 & "',Address1='" & var_180.Text & "',Address2='" & var_194.Text & "',City='" & var_1A8.Text & "',Pin='" & var_1BC.Text
  loc_15BD4FC:   Set var_1CC = Me.txt
  loc_15BD502:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HD), var_1D0)
  loc_15BD50A:   var_B0 = CVar(var_1D0) 'Address
  loc_15BD511:   Proc_6_17_EAA2B0(var_C0, var_B0)
  loc_15BD531:   Set var_1E0 = Me.txt
  loc_15BD537:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HF), var_1E4)
  loc_15BD53F:   var_150 = CVar(var_1E4) 'Address
  loc_15BD546:   Proc_6_17_EAA2B0(var_170, var_150)
  loc_15BD557:   var_20C = CVar(var_1C8 & "',LstDate=") & var_C0 & ",CstDate=" & var_170 & ",Phone='" 
  loc_15BD569:   Set var_1E8 = Me.txt
  loc_15BD56F:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HA), var_1EC)
  loc_15BD59D:   Set var_210 = Me.txt
  loc_15BD5A3:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H10), var_214)
  loc_15BD5D1:   Set var_24C = Me.txt
  loc_15BD5D7:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H11), var_250)
  loc_15BD602:   Set var_288 = Me.txt
  loc_15BD608:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H12), var_28C)
  loc_15BD617:   Proc_6_7_F25D88(var_2E8, CVar(var_28C))
  loc_15BD61F:   var_2F8 = var_20C & CVar(var_1EC.Text) & "',CYear='" & CVar(var_214.Text) & "',PYear='" & CVar(var_250.Text) & "',Start_Dt=" & var_2E8 
  loc_15BD637:   Set var_2C4 = Me.txt
  loc_15BD63D:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H13), var_2C8)
  loc_15BD64C:   Proc_6_7_F25D88(var_340, CVar(var_2C8))
  loc_15BD66F:   Set var_31C = Me.txt
  loc_15BD675:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HC), var_320)
  loc_15BD6A3:   Set var_374 = Me.txt
  loc_15BD6A9:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HE), var_378)
  loc_15BD6D4:   Set var_3C0 = Me.txt
  loc_15BD6DA:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H14), var_3C4)
  loc_15BD6E9:   Proc_6_17_EAA2B0(var_430, CVar(var_3C4))
  loc_15BD6F1:   var_450 = var_2F8 & ",End_Dt=" & var_340 & ",LstNo='" & CVar(var_320.Text) & "',CstNo='" & CVar(var_378.Text) & "',FGLNo=" & var_430 
  loc_15BD709:   Set var_40C = Me.txt
  loc_15BD70F:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&HB), var_410)
  loc_15BD71E:   Proc_6_17_EAA2B0(var_498, CVar(var_410))
  loc_15BD73E:   Set var_484 = Me.txt
  loc_15BD744:   Call 0.Method_Proc_4_32_15BDA780 (CInt(&H15), var_488)
  loc_15BD753:   Proc_6_17_EAA2B0(var_4F4, CVar(var_488))
  loc_15BD776:   Proc_6_17_EAA2B0(var_53C, var_A0)
  loc_15BD78C:   unk_568157.Execute CStr(var_450 & ",FAX=" & var_498 & ",SerialKeyNo=" & var_4F4 & "  Where COMP_CODE = " & var_53C), , 
  loc_15BD858: End If
  loc_15BD864: Me.Panelgrid.Visible = True
  loc_15BD878: If (CInt(global_52) = 1) Then
  loc_15BD888:   var_100 = "insert into user2(user_name,comp_code,param_str) values("
  loc_15BD898:   Proc_6_17_EAA2B0(var_B0, MemVar_1F920C8, var_100)
  loc_15BD8A9:   var_D0 = var_20C & var_B0 & "," 
  loc_15BD8B8:   Set var_94 = Me.txt
  loc_15BD8BE:   Call 0.Method_Proc_4_32_15BDA780 (CInt(3), var_98, var_D0)
  loc_15BD8D8:   Proc_6_17_EAA2B0(var_150, Trim(CVar(var_98)))
  loc_15BD8E0:   var_170 = -1 & var_150 
  loc_15BD8F7:   unk_568157.Execute CStr(var_170 & ",'*')"), var_9C, 
  loc_15BD920:   global_104 = &HFF
  loc_15BD923: End If
  loc_15BD929: unk_568157.CommitTrans
  loc_15BD932: var_8A = CByte(0) 'Byte
  loc_15BD946: Call Proc_4_27_E99730(&HFF)
  loc_15BD950: Call Proc_4_38_1078E2C(0, CByte(0))
  loc_15BD960: Me.Requery -1
  loc_15BD983: Set var_94 = Me.txt
  loc_15BD989: Call 0.Method_Proc_4_32_15BDA780 (CInt(3), var_98, "COMP_CODE=", 0)
  loc_15BD9A3: Proc_6_17_EAA2B0(var_D0, Trim(CVar(var_98)), 1)
  loc_15BD9AB: var_F0 = var_100 & var_D0 
  loc_15BD9AF: var_A0 = CStr(var_F0)
  loc_15BD9B9: Me.Find var_A0, global_104, 
  loc_15BD9E6: If (Me.RecordCount <= 0) Then
  loc_15BD9F5:   Me.btnapply.Enabled = False
  loc_15BDA00: Else
  loc_15BDA0C:   Me.btnapply.Enabled = True
  loc_15BDA14: End If
  loc_15BDA14: Exit Sub
  loc_15BDA15: ' Referenced from: 15BC96C
  loc_15BDA1E: If (CInt(var_8A) = 1) Then
  loc_15BDA27:   unk_568157.RollbackTrans
  loc_15BDA2C: End If
  loc_15BDA34: Set var_94 = Err()
  loc_15BDA3A: Call 0.Method_arg_2C (var_A0)
  loc_15BDA45: Call 0.Method_arg_50 ("('" & var_98.Text)
  loc_15BDA61: MsgBox(CVar(var_A0), &H10, CVar("('" & var_98.Text), var_D0, var_F0)
  loc_15BDA74: Exit Sub
End Sub

Public Sub Proc_4_33_11166C0(arg_C, arg_10) '11166C0
  'Data Table: 568130
  Dim var_F4 As Double
  Dim var_E0 As String
  Dim var_E8 As Long
  Dim var_CC As Integer
  Dim var_DC As Variant
  Dim var_118 As Variant
  loc_111637E: On Error Goto loc_11165EB
  loc_11163D5: If ((MemVar_1F920EC >= CDate("15/Jan/2024")) And (CDate(Format(CVar(Proc_6_15_EF2C1C()), "dd/MMM/yyyy")) >= CDate("15/Jan/2024"))) Then
  loc_11163DD:   var_F4 = CDate("15/Jan/2024")
  loc_111640A:   var_E8 = CLng((Asc(CStr(Mid(arg_C, 1, 1))) * &HA))
  loc_1116417:   ' Referenced from: 1116435
  loc_1116426:   If ((var_E8 * &HA) < &H270F) Then
  loc_1116432:     var_E8 = (var_E8 * &HA)
  loc_1116435:     GoTo loc_1116417
  loc_1116438:   End If
  loc_1116442:   For var_108 = 1 To CInt(Len(arg_C)): var_E2 = var_108 'Integer
  loc_1116467:     var_E0 = CStr(Mid(arg_C, CLng(var_E2), 1))
  loc_1116472:     var_E8 = (var_E8 + CLng(Asc(var_E0)))
  loc_1116482:   Next var_108 'Integer
  loc_1116495:   Call Proc_4_28_EE6FCC(arg_10)
  loc_11164AD:   var_DC = Mid(CVar(var_E0), 7, 10)
  loc_11164C7:   If CBool(var_DC <> CVar(CStr(var_E8))) Then
  loc_11164CA:     GoTo loc_11165EB
  loc_11164CD:   End If
  loc_11164D3:   Call Proc_4_28_EE6FCC(arg_10)
  loc_11164E6:   var_CC = Left(CVar(var_E0), 6)
  loc_11164EE:   var_128 = var_CC 'Variant
  loc_1116500:   If (var_128 = "Hudhud") Then
  loc_1116508:     var_F4 = CDate("15/Jan/2025")
  loc_111650E:   Else
  loc_1116519:     If (var_128 = "Pirecy") Then
  loc_1116521:       var_F4 = CDate("15/Jan/2026")
  loc_1116527:     Else
  loc_1116532:       If (var_128 = "Pinaca") Then
  loc_111653A:         var_F4 = CDate("15/Jan/2027")
  loc_1116540:       Else
  loc_111654B:         If (var_128 = "Platoo") Then
  loc_1116553:           var_F4 = CDate("15/Jan/2028")
  loc_1116559:         Else
  loc_1116564:           If (var_128 = "Zombia") Then
  loc_111656C:             var_F4 = CDate("15/Jan/2029")
  loc_1116572:           Else
  loc_111657D:             If (var_128 = "Albert") Then
  loc_1116585:               var_F4 = CDate("15/Jan/2030")
  loc_111658B:             Else
  loc_1116596:               If (var_128 = "Ostric") Then
  loc_111659E:                 var_F4 = CDate("15/Jan/2031")
  loc_11165A4:               Else
  loc_11165AF:                 If (var_128 = "Legran") Then
  loc_11165B7:                   var_F4 = CDate("15/Jan/2032")
  loc_11165BD:                 Else
  loc_11165C8:                   If (var_128 = "Malmal") Then
  loc_11165D0:                     var_F4 = CDate("15/Jan/2033")
  loc_11165D6:                   Else
  loc_11165D6:                     End
  loc_11165D8:                   End If
  loc_11165D8:                 End If
  loc_11165D8:               End If
  loc_11165D8:             End If
  loc_11165D8:           End If
  loc_11165D8:         End If
  loc_11165D8:       End If
  loc_11165D8:     End If
  loc_11165D8:   End If
  loc_11165DF:   If (MemVar_1F920EC > var_F4) Then
  loc_11165E2:     GoTo loc_11165EB
  loc_11165E5:   End If
  loc_11165E5:   Proc_4_33_11166C0 = var_F4
  loc_11165EB:   ' Referenced from: 11165E2
  loc_11165EB:   ' Referenced from: 11164CA
  loc_11165EB:   ' Referenced from: 111637E
  loc_1116612:   If (CDate(MemVar_1F920EC) > DateAdd("d", CDbl(&H2D), var_F4)) Then
  loc_1116634:     MsgBox(CVar(" Software expired !" & vbCrLf & "Update Serial Key. Contact to Software Vender."), &H10, var_CC, var_DC, var_118)
  loc_1116647:     End
  loc_1116649:   End If
  loc_1116696:   var_DC = "Update Serial Key. Contact to Software Vender. Software will expire in " & DateDiff("d", MemVar_1F920EC, DateAdd("d", CDbl(&H2D), var_F4), 1, 1) 
  loc_11166A3:   MsgBox(var_DC & " Days.", &H10, var_168, var_188, var_1A8)
  loc_11166B9: End If
  loc_11166B9: Proc_4_33_11166C0 = var_F4
End Sub

Public Sub Proc_4_34_EADC20
  'Data Table: 568130
  Dim var_88 As Frame
  loc_EADBA0: On Error Goto loc_EADBD7
  loc_EADBAF: Me.Panelgrid.Visible = True
  loc_EADBBE: global_52 = CByte(0)
  loc_EADBC7: Call Proc_4_27_E99730(&HFF)
  loc_EADBD1: Call Proc_4_38_1078E2C(0)
  loc_EADBD6: Exit Sub
  loc_EADBD7: ' Referenced from: EADBA0
  loc_EADBDF: Set var_88 = Err()
  loc_EADBE5: Call 0.Method_arg_2C (var_90)
  loc_EADBF0: Call 0.Method_arg_50 (var_94)
  loc_EADC0C: MsgBox(CVar(var_90), &H10, CVar(var_94), var_D4, var_F4)
  loc_EADC1F: Exit Sub
End Sub

Public Sub Proc_4_35_E61F34(arg_C) 'E61F34
  'Data Table: 568130
  loc_E61F0F: If ((arg_C = 2) And (CBool(Me.DBGrid1.Visible) = &HFF)) Then
  loc_E61F2A:   Call 0.Method_arg_2BC (Me.POPUP, var_A8, var_B8)
  loc_E61F32: End If
  loc_E61F32: Exit Sub
End Sub

Public Sub Proc_4_36_1390C5C
  'Data Table: 568130
  Dim unk_568157 As Connection15
  Dim var_D0 As Fields15
  loc_1390395: var_AC = 0
  loc_13903A6: var_A4 = "NightAuditGST"
  loc_13903DC: Proc_165_0_14CCEC0("GST Reports", &H13, 3, vbNullString, vbNullString)
  loc_13903F3: var_AC = 0
  loc_1390434: var_8C = "GSTR-1"
  loc_139043A: Proc_165_0_14CCEC0("GST Reports", &H13, 1, "GST Reports", vbNullString, 1, "NightAuditGSTR")
  loc_1390451: var_AC = 0
  loc_1390492: var_8C = "GSTR-2(3)"
  loc_1390498: Proc_165_0_14CCEC0("GST Reports", &H13, 1, "GST Reports", vbNullString, 2, "NightAuditGSTR", 1)
  loc_13904AF: var_AC = 0
  loc_13904F0: var_8C = "GSTR-2(4A)"
  loc_13904F6: Proc_165_0_14CCEC0("GST Reports", &H13, 1, "GST Reports", vbNullString, 3, "NightAuditGSTR", 1)
  loc_139050D: var_AC = 0
  loc_139054E: var_8C = "GSTR-2(4B)"
  loc_1390554: Proc_165_0_14CCEC0("GST Reports", &H13, 1, "GST Reports", vbNullString, 4, "NightAuditGSTR", 1)
  loc_139056B: var_AC = 0
  loc_13905B2: Proc_165_0_14CCEC0("Expense Voucher", &HB, 0, "Transaction", vbNullString, 6, "fate", 1)
  loc_13905C9: var_AC = 0
  loc_1390610: Proc_165_0_14CCEC0("Store Issue Report", &H10, 1, "Reports", vbNullString, &H12, "MatRep", 1)
  loc_1390627: var_AC = 0
  loc_139066E: Proc_165_0_14CCEC0("Room Type Occupancy Analysis", &HE, 1, "M.I.S.", vbNullString, &HA, "FDORep", 1)
  loc_1390685: var_AC = 0
  loc_13906CC: Proc_165_0_14CCEC0("Credit Report", &H13, 1, "Reports", vbNullString, &H10, "NightAuditMenu", 1)
  loc_13906E3: var_AC = 0
  loc_139072A: Proc_165_0_14CCEC0("Liquor Sale Report", &H10, 1, "Reports", vbNullString, &H13, "MatRep", 1)
  loc_1390741: var_AC = 0
  loc_1390788: Proc_165_0_14CCEC0("Payment Receive Entry (POS)", &H11, 0, "POS Reports", vbNullString, &H2A, "POSRep", 1)
  loc_139079F: var_AC = 0
  loc_13907E0: var_8C = "Reconciliation (GSTR-2A)"
  loc_13907E6: Proc_165_0_14CCEC0("Payment Receive Entry (POS)", &H13, 1, "GST Reports", vbNullString, 5, "NightAuditGSTR", 1)
  loc_13907FD: var_AC = 0
  loc_1390844: Proc_165_0_14CCEC0("Upload Process", &H13, 0, "GST Reports", vbNullString, &HB, "NightAuditGSTR", 1)
  loc_139086C: unk_568157.Execute "select code,Name,KOTYN from depart where outletYN='Y'", var_CC, -1
  loc_1390877: Set var_88 = var_D0
  loc_1390880: ' Referenced from: 1390960
  loc_1390892: If Not(Me.Recordset15.EOF) Then
  loc_13908E4:   var_FC = Me.Recordset15.Fields.Item("Code").Value
  loc_1390931:   Proc_165_0_14CCEC0("Payment Receive", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HD, "POSEnt", 0)
  loc_139095B:   Me.Recordset15.MoveNext
  loc_1390960:   GoTo loc_1390880
  loc_1390963: End If
  loc_1390968: var_AC = 0
  loc_13909AF: Proc_165_0_14CCEC0("Bill Wise Adjustment Report", &H11, 1, "POS Reports", vbNullString, &H2B, "POSRep", 1)
  loc_13909C6: var_AC = 0
  loc_1390A0D: Proc_165_0_14CCEC0("Plan Report", &HE, 1, "M.I.S.", vbNullString, &HB, "FDORep", 1)
  loc_1390A24: var_AC = 0
  loc_1390A6B: Proc_165_0_14CCEC0("Business Source Occupancy Report", &HE, 1, "M.I.S.", vbNullString, &HC, "FDORep", 1)
  loc_1390A82: var_AC = 0
  loc_1390AC9: Proc_165_0_14CCEC0("Member Select Category", &HC, 0, "Members Mgmt", vbNullString, &HA, "MemMas", 1)
  loc_1390AE0: var_AC = 0
  loc_1390B27: Proc_165_0_14CCEC0("Auto Settle Card Balance", &H17, 0, "Operations", vbNullString, &HC, "MemOpr", 1)
  loc_1390B3E: var_AC = 0
  loc_1390B85: Proc_165_0_14CCEC0("Journal Books Log", &HB, 1, "Reports", vbNullString, &H24, "FAREPORT", 1)
  loc_1390B9C: var_AC = 0
  loc_1390BE3: Proc_165_0_14CCEC0("EInvoice Report", &H13, 1, "Reports", vbNullString, &H11, "NightAuditMenu", 1)
  loc_1390BFA: var_AC = 0
  loc_1390C41: Proc_165_0_14CCEC0("TDS Report", &HB, 1, "Reports", vbNullString, &H25, "FAREPORT", 1)
  loc_1390C58: Set var_88 = Nothing
  loc_1390C5B: Exit Sub
End Sub

Public Sub Proc_4_37_1794F90
  'Data Table: 568130
  Dim MemVar_1F9B938 As DBEngine
  Dim var_D0 As String
  Dim var_B8 As String
  loc_179307C: On Error Resume Next
  loc_1793081: On Error Goto loc_1794F50
  loc_1793089: var_90 = MemVar_1F921D4
  loc_17930A6: MemVar_1F9B938.OpenDatabase MemVar_1F921D4, var_A8, var_B8, var_C8
  loc_17930AE: Set var_94 = var_CC
  loc_17930E2: Proc_6_97_FD2174(var_94, "PrinterSetup", "Site_Code", &HA, 1)
  loc_1793126: Proc_6_97_FD2174(var_94, "PrinterSetup", "U_EntDt", 8, 0, 0)
  loc_179316A: Proc_6_97_FD2174(var_94, "PrinterSetup", "U_AE", &HA, 1, 0, &HFF)
  loc_17931AE: Proc_6_97_FD2174(var_94, "PrintFormats", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17931F2: Proc_6_97_FD2174(var_94, "PrintFormats", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793236: Proc_6_97_FD2174(var_94, "PrintFormats", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_179327A: Proc_6_97_FD2174(var_94, "PrintMast", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17932BE: Proc_6_97_FD2174(var_94, "PrintMast", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1793302: Proc_6_97_FD2174(var_94, "PrintMast", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1793377: Proc_6_97_FD2174(var_CC, "Company", "HeadOffice", &HA, 1, 0, &HFF, var_FC)
  loc_17933C5: mVar_1F92080 & "\Company.mdb", var_A8, var_B8, var_C8 MemVar_1F92080 & "\" & MemVar_1F9207C & "\Fadata.Mdb", var_A8, var_B8, var_C8
  loc_17933CD: Set var_94 = var_CC
  loc_1793401: Proc_6_97_FD2174(var_94, "GodownMast", "DepartCode", &HA, 5, 0, &HFF, var_FC)
  loc_1793445: Proc_6_97_FD2174(var_94, "SundryType", "PostYN", &HA, 5, 0, &HFF, var_FC)
  loc_1793489: Proc_6_97_FD2174(var_94, "Purch1", "DelFlag", &HA, 1, 0, &HFF, var_FC)
  loc_17934CD: Proc_6_97_FD2174(var_94, "Enviro", "CashPurchAc", &HA, 8, 0, &HFF, var_FC)
  loc_1793511: Proc_6_97_FD2174(var_94, "Stock", "LandVal", 7, 0, 0, &HFF, var_FC)
  loc_1793555: Proc_6_97_FD2174(var_94, "GodownMast", "SysYN", &HA, 1, 0, &HFF, var_FC)
  loc_1793599: Proc_6_97_FD2174(var_94, "Stock", "ConvRatio", 7, 0, 0, &HFF, var_FC)
  loc_17935DD: Proc_6_97_FD2174(var_94, "GuestProf", "PanNo", &HA, &HF, 0, &HFF, var_FC)
  loc_1793621: Proc_6_97_FD2174(var_94, "PayCharge", "Split", &HA, 2, 0, &HFF, var_FC)
  loc_1793665: Proc_6_97_FD2174(var_94, "PayCharge", "ModeSet", &HA, 1, 0, &HFF, var_FC)
  loc_17936A9: Proc_6_97_FD2174(var_94, "PayCharge", "Bill_No", &HA, 8, 0, &HFF, var_FC)
  loc_17936ED: Proc_6_97_FD2174(var_94, "PayCharge", "SettleDate", 8, 0, 0, &HFF, var_FC)
  loc_1793731: Proc_6_97_FD2174(var_94, "TelCallType", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1793775: Proc_6_97_FD2174(var_94, "GuestFolio", "MFolioNo", 4, 0, 0, &HFF, var_FC)
  loc_17937C1: Proc_6_97_FD2174(var_94, "GuestFolio", "Comp", &HA, 1, 0, &HFF, """""")
  loc_17937DB: var_FC = """"""
  loc_179380D: Proc_6_97_FD2174(var_94, "GuestFolio", "MFolioNoDocid", &HA, &H15, 0, &HFF, var_FC)
  loc_1793852: Proc_6_97_FD2174(var_94, "Enviro", "Bill_Footer", &HA, 250, 0, &HFF, var_FC)
  loc_1793897: Proc_6_97_FD2174(var_94, "Enviro", "Bill_Header", &HA, 250, 0, &HFF, var_FC)
  loc_17938DB: Proc_6_97_FD2174(var_94, "Enviro", "CancellationAC", &HA, 8, 0, &HFF, var_FC)
  loc_179391F: Proc_6_97_FD2174(var_94, "Enviro", "HallRoundOff", &HA, 8, 0, &HFF, var_FC)
  loc_1793963: Proc_6_97_FD2174(var_94, "Enviro", "HallDiscAC", &HA, 8, 0, &HFF, var_FC)
  loc_17939A7: Proc_6_97_FD2174(var_94, "Enviro", "Postingtype", &HA, &H32, 0, &HFF, var_FC)
  loc_17939EB: Proc_6_97_FD2174(var_94, "Enviro", "OutDoorCatering", &HA, 3, 0, &HFF, var_FC)
  loc_1793A37: Proc_6_97_FD2174(var_94, "Enviro", "SundryPassword", &HA, &HA, 0, &HFF, """""")
  loc_1793A83: Proc_6_97_FD2174(var_94, "Enviro", "CatalogLimit", &HA, 3, 0, &HFF, """""")
  loc_1793ACF: Proc_6_97_FD2174(var_94, "Enviro", "OutdoorSaleAC", &HA, 8, 0, &HFF, """""")
  loc_1793B1B: Proc_6_97_FD2174(var_94, "Enviro", "IndoorSaleAC", &HA, 8, 0, &HFF, """""")
  loc_1793B67: Proc_6_97_FD2174(var_94, "Enviro", "OutdoorPartyAC", &HA, 8, 0, &HFF, """""")
  loc_1793B81: var_FC = """"""
  loc_1793BB3: Proc_6_97_FD2174(var_94, "Enviro", "IndoorPartyAC", &HA, 8, 0, &HFF, var_FC)
  loc_1793BF7: Proc_6_97_FD2174(var_94, "PayCharge", "BatchNo", 3, 0, 0, &HFF, var_FC)
  loc_1793C3B: Proc_6_97_FD2174(var_94, "SubGroup", "TINNo", &HA, &H19, 0, &HFF, var_FC)
  loc_1793C7F: Proc_6_97_FD2174(var_94, "SubGroupALIAS", "TINNo", &HA, &H19, 0, &HFF, var_FC)
  loc_1793CC3: Proc_6_97_FD2174(var_94, "RevMast", "Sundry", &HA, 5, 0, &HFF, var_FC)
  loc_1793D0F: Proc_6_97_FD2174(var_94, "BookingInquiry", "Capacity", &HA, &H14, 0, &HFF, """""")
  loc_1793D29: var_FC = """"""
  loc_1793D5B: Proc_6_97_FD2174(var_94, "BookingInquiry", "CapacityType", &HA, 1, 0, &HFF, var_FC)
  loc_1793D9F: Proc_6_97_FD2174(var_94, "CatalogMast", "Category", &HA, 1, 0, &HFF, var_FC)
  loc_1793DE4: Proc_6_97_FD2174(var_94, "ItemMast", "Specification", &HA, 255, 0, &HFF, var_FC)
  loc_1793E28: Proc_6_97_FD2174(var_94, "ComplaintDetail", "UName2", &HA, &HF, 0, &HFF, var_FC)
  loc_1793E6C: Proc_6_97_FD2174(var_94, "PayChargeH", "PostDocId", &HA, &H15, 0, &HFF, var_FC)
  loc_1793EB0: Proc_6_97_FD2174(var_94, "Depart", "Printer", &HA, &H32, 0, &HFF, var_FC)
  loc_1793EF4: Proc_6_97_FD2174(var_94, "Enviro", "KOTPrinting", &HA, &H19, 0, &HFF, var_FC)
  loc_1793F38: Proc_6_97_FD2174(var_94, "Enviro", "TaxSummary", &HA, 3, 0, &HFF, var_FC)
  loc_1793F7C: Proc_6_97_FD2174(var_94, "ComplaintDetail", "Category", &HA, 5, 0, &HFF, var_FC)
  loc_1793FC0: Proc_6_97_FD2174(var_94, "PlanMast", "Plan_Package", &HA, 7, 0, &HFF, var_FC)
  loc_1794004: Proc_6_97_FD2174(var_94, "PlanMast", "PercentApp", &HA, 3, 0, &HFF, var_FC)
  loc_1794048: Proc_6_97_FD2174(var_94, "PlanMast", "ActiveYN", &HA, 1, 0, &HFF, var_FC)
  loc_179408C: Proc_6_97_FD2174(var_94, "PlanMast", "App_date", 8, 0, 0, &HFF, var_FC)
  loc_17940D0: Proc_6_97_FD2174(var_94, "RoomOCC", "PlanCode", &HA, 5, 0, &HFF, var_FC)
  loc_1794114: Proc_6_97_FD2174(var_94, "RoomOCC", "PlanAmt", 7, 0, 0, &HFF, var_FC)
  loc_1794158: Proc_6_97_FD2174(var_94, "RoomOCC", "IncInRate", &HA, 3, 0, &HFF, var_FC)
  loc_179419C: Proc_6_97_FD2174(var_94, "ComplaintCategory", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17941E0: Proc_6_97_FD2174(var_94, "ComplaintCategory", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794224: Proc_6_97_FD2174(var_94, "ComplaintCategory", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794268: Proc_6_97_FD2174(var_94, "ComplaintDetail", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17942AC: Proc_6_97_FD2174(var_94, "ComplaintDetail", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17942F0: Proc_6_97_FD2174(var_94, "ComplaintDetail", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794334: Proc_6_97_FD2174(var_94, "LostFoundDetail", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794378: Proc_6_97_FD2174(var_94, "LostFoundDetail", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17943BC: Proc_6_97_FD2174(var_94, "LostFoundDetail", "U_AE", &HA, 3, 0, &HFF, var_FC)
  loc_17943D6: var_FC = """"""
  loc_1794408: Proc_6_97_FD2174(var_94, "Enviro", "TOKENPrint", &HA, 3, 0, &HFF, var_FC)
  loc_179444C: Proc_6_97_FD2174(var_94, "BookingDetail", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794490: Proc_6_97_FD2174(var_94, "BookingDetail", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17944D4: Proc_6_97_FD2174(var_94, "BookingDetail", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794518: Proc_6_97_FD2174(var_94, "Cat", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_179455C: Proc_6_97_FD2174(var_94, "Cat", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17945A0: Proc_6_97_FD2174(var_94, "Cat", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17945E4: Proc_6_97_FD2174(var_94, "Employee", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794628: Proc_6_97_FD2174(var_94, "Employee", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_179466C: Proc_6_97_FD2174(var_94, "FOMBillDetails", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17946B0: Proc_6_97_FD2174(var_94, "FOMBillDetails", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17946F4: Proc_6_97_FD2174(var_94, "GroupCatalog", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794738: Proc_6_97_FD2174(var_94, "GroupCatalog", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_179477C: Proc_6_97_FD2174(var_94, "GroupCatalog", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_17947C0: Proc_6_97_FD2174(var_94, "GuestComments", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794804: Proc_6_97_FD2174(var_94, "GuestComments", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794848: Proc_6_97_FD2174(var_94, "GuestComments", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_179488C: Proc_6_97_FD2174(var_94, "GuestParam", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_17948D0: Proc_6_97_FD2174(var_94, "GuestParam", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794914: Proc_6_97_FD2174(var_94, "GuestParam", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794958: Proc_6_97_FD2174(var_94, "VenueCapacity", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_179499C: Proc_6_97_FD2174(var_94, "VenueCapacity", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_17949E0: Proc_6_97_FD2174(var_94, "VenueCapacity", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794A24: Proc_6_97_FD2174(var_94, "Voucher_Exclude", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794A68: Proc_6_97_FD2174(var_94, "Voucher_Exclude", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794AAC: Proc_6_97_FD2174(var_94, "Voucher_Exclude", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794AF0: Proc_6_97_FD2174(var_94, "Voucher_Include", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794B34: Proc_6_97_FD2174(var_94, "Voucher_Include", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794B78: Proc_6_97_FD2174(var_94, "Voucher_Include", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794BBC: Proc_6_97_FD2174(var_94, "LastVou", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794C00: Proc_6_97_FD2174(var_94, "LastVou", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794C44: Proc_6_97_FD2174(var_94, "LastVou", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794C88: Proc_6_97_FD2174(var_94, "Leave_Ench", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794CCC: Proc_6_97_FD2174(var_94, "Leave_Ench", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794D10: Proc_6_97_FD2174(var_94, "RoomDiscount", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794D54: Proc_6_97_FD2174(var_94, "RoomDiscount", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794D98: Proc_6_97_FD2174(var_94, "RoomDiscount", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794DDC: Proc_6_97_FD2174(var_94, "SaleMIS", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794E20: Proc_6_97_FD2174(var_94, "SaleMIS", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794E64: Proc_6_97_FD2174(var_94, "SundryTypeFix", "Site_Code", &HA, 1, 0, &HFF, var_FC)
  loc_1794EA8: Proc_6_97_FD2174(var_94, "SundryTypeFix", "U_EntDt", 8, 0, 0, &HFF, var_FC)
  loc_1794EEC: Proc_6_97_FD2174(var_94, "SundryTypeFix", "U_AE", &HA, 1, 0, &HFF, var_FC)
  loc_1794F27: var_D0 = "Enviro"
  loc_1794F30: Proc_6_97_FD2174(var_94, var_D0, "DummyTravelAc", &HA, 8, 0, &HFF, var_FC)
  loc_1794F4A: Set var_94 = Nothing
  loc_1794F4F: Exit Sub
  loc_1794F50: ' Referenced from: 1793081
  loc_1794F60: Call 0.Method_arg_2C (var_D0, Err(), Err(), var_FC, &HFF)
  loc_1794F79: MsgBox(CVar(var_D0), &H40, var_FC, var_10C, var_11C)
  loc_1794F8E: Exit Sub
End Sub

Public Sub Proc_4_38_1078E2C(arg_C) '1078E2C
  'Data Table: 568130
  Dim var_8C As TextBox
  loc_1078B8E: Set var_88 = Me.txt
  loc_1078B94: Call 0.Method_Proc_4_38_1078E2C0 (CInt(3), var_8C)
  loc_1078B9C: var_8C.Enabled = arg_C
  loc_1078BB6: Set var_88 = Me.txt
  loc_1078BBC: Call 0.Method_Proc_4_38_1078E2C0 (CInt(4), var_8C)
  loc_1078BC4: var_8C.Enabled = arg_C
  loc_1078BDE: Set var_88 = Me.txt
  loc_1078BE4: Call 0.Method_Proc_4_38_1078E2C0 (CInt(6), var_8C)
  loc_1078BEC: var_8C.Enabled = arg_C
  loc_1078C06: Set var_88 = Me.txt
  loc_1078C0C: Call 0.Method_Proc_4_38_1078E2C0 (CInt(7), var_8C)
  loc_1078C14: var_8C.Enabled = arg_C
  loc_1078C2E: Set var_88 = Me.txt
  loc_1078C34: Call 0.Method_Proc_4_38_1078E2C0 (CInt(8), var_8C)
  loc_1078C3C: var_8C.Enabled = arg_C
  loc_1078C56: Set var_88 = Me.txt
  loc_1078C5C: Call 0.Method_Proc_4_38_1078E2C0 (CInt(9), var_8C)
  loc_1078C64: var_8C.Enabled = arg_C
  loc_1078C7E: Set var_88 = Me.txt
  loc_1078C84: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&HA), var_8C)
  loc_1078C8C: var_8C.Enabled = arg_C
  loc_1078CA6: Set var_88 = Me.txt
  loc_1078CAC: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&HB), var_8C)
  loc_1078CB4: var_8C.Enabled = arg_C
  loc_1078CCE: Set var_88 = Me.txt
  loc_1078CD4: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&HE), var_8C)
  loc_1078CDC: var_8C.Enabled = arg_C
  loc_1078CF6: Set var_88 = Me.txt
  loc_1078CFC: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&HC), var_8C)
  loc_1078D04: var_8C.Enabled = arg_C
  loc_1078D1E: Set var_88 = Me.txt
  loc_1078D24: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&H14), var_8C)
  loc_1078D2C: var_8C.Enabled = arg_C
  loc_1078D46: Set var_88 = Me.txt
  loc_1078D4C: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&H10), var_8C)
  loc_1078D54: var_8C.Enabled = arg_C
  loc_1078D6E: Set var_88 = Me.txt
  loc_1078D74: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&H11), var_8C)
  loc_1078D7C: var_8C.Enabled = arg_C
  loc_1078D96: Set var_88 = Me.txt
  loc_1078D9C: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&H12), var_8C)
  loc_1078DA4: var_8C.Enabled = arg_C
  loc_1078DBE: Set var_88 = Me.txt
  loc_1078DC4: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&H13), var_8C)
  loc_1078DCC: var_8C.Enabled = arg_C
  loc_1078DE6: Set var_88 = Me.txt
  loc_1078DEC: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&HF), var_8C)
  loc_1078DF4: var_8C.Enabled = arg_C
  loc_1078E0E: Set var_88 = Me.txt
  loc_1078E14: Call 0.Method_Proc_4_38_1078E2C0 (CInt(&HD), var_8C)
  loc_1078E1C: var_8C.Enabled = arg_C
  loc_1078E28: Exit Sub
End Sub
