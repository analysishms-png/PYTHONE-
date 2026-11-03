VERSION 5.00
Begin VB.Form rsTouchScreenAdvanceDepDialog
  Caption = "Settlement Entry"
  BackColor = &HD6D7C6&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 12105
  ClientHeight = 6765
  LockControls = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6270
    Width = 12105
    Height = 495
    Visible = 0   'False
    TabIndex = 95
  End
  Begin Frame FrCashCard
    BackColor = &H93B78C&
    Left = 60
    Top = 6960
    Width = 4965
    Height = 525
    Visible = 0   'False
    TabIndex = 89
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 33
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      Enabled = 0   'False
      TabIndex = 91
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 34
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 3810
      Height = 255
      Enabled = 0   'False
      TabIndex = 90
      BorderStyle = 0 'None
      MaxLength = 35
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 3
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 720
      Height = 240
      TabIndex = 93
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Holder"
      Index = 4
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 615
      Height = 240
      TabIndex = 92
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin CommandButton CmdClosezz
    Caption = "Exit"
    Left = 6900
    Top = -15
    Width = 1605
    Height = 675
    Visible = 0   'False
    TabIndex = 87
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin DataGrid DGMember
    Left = 9810
    Top = 8625
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
  Begin Frame FrCCDet
    BackColor = &H93B78C&
    Left = 4815
    Top = 7230
    Width = 4065
    Height = 525
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 3315
      Top = 270
      Width = 705
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 18
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 2415
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 19
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 630
      Width = 2910
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 20
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 1275
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Batch No."
      Index = 1
      ForeColor = &H0&
      Left = 2415
      Top = 285
      Width = 870
      Height = 240
      TabIndex = 58
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 720
      Height = 240
      TabIndex = 43
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &H0&
      Left = -15
      Top = 630
      Width = 615
      Height = 240
      TabIndex = 42
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 630
      Height = 240
      TabIndex = 41
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrameQty
    BackColor = &H80000003&
    ForeColor = &H8000000A&
    Left = 6915
    Top = 660
    Width = 4335
    Height = 6105
    TabIndex = 68
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton CmdQty
      Caption = "00"
      Index = 15
      Left = 1125
      Top = 4995
      Width = 1050
      Height = 1050
      TabIndex = 88
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
    Begin CommandButton CmdQty
      Caption = "Exit"
      Index = 12
      Left = 3225
      Top = 1845
      Width = 1050
      Height = 2100
      TabIndex = 86
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "OK"
      Index = 13
      Left = 3225
      Top = 3945
      Width = 1050
      Height = 2100
      TabIndex = 82
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "0"
      Index = 0
      Left = 75
      Top = 4995
      Width = 1050
      Height = 1050
      TabIndex = 81
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
    Begin CommandButton CmdQty
      Caption = "3"
      Index = 3
      Left = 2175
      Top = 3945
      Width = 1050
      Height = 1050
      TabIndex = 78
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
    Begin CommandButton CmdQty
      Caption = "4"
      Index = 4
      Left = 75
      Top = 2895
      Width = 1050
      Height = 1050
      TabIndex = 77
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
    Begin CommandButton CmdQty
      Caption = "5"
      Index = 5
      Left = 1125
      Top = 2895
      Width = 1050
      Height = 1050
      TabIndex = 76
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
    Begin CommandButton CmdQty
      Caption = "6"
      Index = 6
      Left = 2175
      Top = 2895
      Width = 1050
      Height = 1050
      TabIndex = 75
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
    Begin CommandButton CmdQty
      Caption = "7"
      Index = 7
      Left = 75
      Top = 1845
      Width = 1050
      Height = 1050
      TabIndex = 74
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
    Begin CommandButton CmdQty
      Caption = "8"
      Index = 8
      Left = 1125
      Top = 1845
      Width = 1050
      Height = 1050
      TabIndex = 73
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
    Begin CommandButton CmdQty
      Caption = "9"
      Index = 9
      Left = 2175
      Top = 1845
      Width = 1050
      Height = 1050
      TabIndex = 72
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
    Begin CommandButton CmdQty
      Caption = "."
      Index = 10
      Left = 2175
      Top = 4995
      Width = 1050
      Height = 1050
      TabIndex = 71
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
    Begin CommandButton CmdQty
      Caption = "Back"
      Index = 11
      Left = 2175
      Top = 795
      Width = 2100
      Height = 1050
      TabIndex = 70
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "Clear"
      Index = 14
      Left = 75
      Top = 795
      Width = 2100
      Height = 1050
      TabIndex = 69
      BeginProperty Font
        Name = "Tahoma"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdQty
      Caption = "2"
      Index = 2
      Left = 1125
      Top = 3945
      Width = 1050
      Height = 1050
      TabIndex = 79
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
    Begin CommandButton CmdQty
      Caption = "1"
      Index = 1
      Left = 75
      Top = 3945
      Width = 1050
      Height = 1050
      TabIndex = 80
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
    Begin TextBox TxtQty
      Left = 75
      Top = 375
      Width = 4170
      Height = 360
      TabIndex = 83
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 11
      Locked = -1  'True
      BeginProperty Font
        Name = "Times New Roman"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblIndex
      Left = 960
      Top = 30
      Width = 1500
      Height = 300
      Visible = 0   'False
      TabIndex = 85
    End
    Begin Label LblVtype
      BackColor = &H80000003&
      ForeColor = &HFFFF&
      Left = 75
      Top = 0
      Width = 4155
      Height = 360
      TabIndex = 84
      Alignment = 2 'Center
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
  End
  Begin Frame FrameAmtType
    BackColor = &HD6D7C6&
    Left = 6915
    Top = 645
    Width = 5205
    Height = 6105
    TabIndex = 62
    BorderStyle = 0 'None
    Begin SSPanel SSPMain
      Left = 60
      Top = 60
      Width = 1695
      Height = 850
      TabIndex = 67
    End
    Begin SSPanel SSPGroup
      Index = 0
      Left = 60
      Top = 60
      Width = 1695
      Height = 850
      Visible = 0   'False
      TabIndex = 63
    End
    Begin SSPanel SSPItem
      Index = 0
      Left = 60
      Top = 60
      Width = 1695
      Height = 850
      Visible = 0   'False
      TabIndex = 64
    End
    Begin SSPanel SSPPrevious
      Left = 1755
      Top = 60
      Width = 1695
      Height = 850
      TabIndex = 65
    End
    Begin SSPanel SSPNext
      Left = 3450
      Top = 60
      Width = 1695
      Height = 850
      TabIndex = 66
    End
  End
  Begin Frame FrMem
    BackColor = &H93B78C&
    Left = 4815
    Top = 8865
    Width = 4950
    Height = 255
    Visible = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 8
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
    Begin Label LblName
      Caption = "Member"
      Index = 28
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 750
      Height = 240
      TabIndex = 61
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrRem
    BackColor = &H93B78C&
    Left = 240
    Top = 2100
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 53
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 16
      BorderStyle = 0 'None
      MaxLength = 100
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
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 825
      Height = 240
      TabIndex = 54
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrChqDet
    BackColor = &H93B78C&
    Left = 4815
    Top = 8040
    Width = 2595
    Height = 525
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 1440
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &H0&
      Left = -15
      Top = 30
      Width = 1065
      Height = 240
      TabIndex = 52
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &H0&
      Left = -15
      Top = 285
      Width = 990
      Height = 240
      TabIndex = 51
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrSendRoom
    BackColor = &H93B78C&
    Left = 4815
    Top = 6960
    Width = 3150
    Height = 255
    Visible = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Room No.#"
      Index = 26
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 1020
      Height = 240
      TabIndex = 49
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrEmp
    BackColor = &H93B78C&
    Left = 4815
    Top = 7770
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 255
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 390
      Height = 240
      TabIndex = 47
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrComp
    BackColor = &H93B78C&
    Left = 4815
    Top = 8580
    Width = 4950
    Height = 255
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 7
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
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 870
      Height = 240
      TabIndex = 45
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin DataGrid DGCompany
    Left = 9810
    Top = 8265
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGTable
    Left = 9810
    Top = 7905
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGPayType
    Left = 9810
    Top = 7545
    Width = 4485
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGEmp
    Left = 9810
    Top = 7185
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin Frame FrRest
    BackColor = &H93B78C&
    Left = 0
    Top = 1140
    Width = 6885
    Height = 1905
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      Left = 3765
      Top = 690
      Width = 1395
      Height = 255
      Visible = 0   'False
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
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
      Index = 17
      BackColor = &HFFFFFF&
      Left = 1350
      Top = 690
      Width = 1440
      Height = 255
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
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
      Index = 16
      BackColor = &HFFFFFF&
      Left = 1350
      Top = 420
      Width = 3810
      Height = 255
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 20
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
      BackColor = &HFFFFFF&
      Left = 1350
      Top = 150
      Width = 3810
      Height = 255
      TabIndex = 2
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LTxt
      Index = 29
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1155
      Width = 1275
      Height = 255
      TabIndex = 57
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Payable Amt"
      Index = 0
      BackColor = &HC7EBEB&
      ForeColor = &H0&
      Left = 5415
      Top = 945
      Width = 1275
      Height = 225
      TabIndex = 56
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Balance"
      Index = 17
      BackColor = &HC7EBEB&
      ForeColor = &HFF&
      Left = 5415
      Top = 1395
      Width = 1275
      Height = 225
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Paid Amount"
      Index = 24
      BackColor = &HC7EBEB&
      ForeColor = &H808000&
      Left = 5415
      Top = 495
      Width = 1275
      Height = 225
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &H0&
      Left = 3135
      Top = 690
      Width = 300
      Height = 240
      Visible = 0   'False
      TabIndex = 29
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Shape Shape5
      BorderColor = &H400040&
      Left = 5280
      Top = 15
      Width = 1575
      Height = 1860
      BorderWidth = 2
      FillColor = &HC0FFC0&
    End
    Begin Shape Shape1
      Index = 1
      BackColor = &HE7F3FA&
      BorderColor = &H400040&
      Left = 75
      Top = 15
      Width = 5175
      Height = 1860
      BorderWidth = 2
      FillColor = &HE7F3FA&
    End
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &H0&
      Left = 240
      Top = 690
      Width = 675
      Height = 240
      TabIndex = 27
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &H0&
      Left = 240
      Top = 450
      Width = 750
      Height = 240
      TabIndex = 26
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &H0&
      Left = 240
      Top = 150
      Width = 480
      Height = 240
      TabIndex = 25
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Bill Amount"
      Index = 23
      BackColor = &HC7EBEB&
      ForeColor = &HC00000&
      Left = 5415
      Top = 45
      Width = 1275
      Height = 225
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LTxt
      Index = 27
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 705
      Width = 1275
      Height = 255
      TabIndex = 39
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LTxt
      Index = 28
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1605
      Width = 1275
      Height = 255
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
    Begin Label LTxt
      Index = 26
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 255
      Width = 1275
      Height = 255
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
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
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 900
    Top = 3600
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 5400
    Top = 780
    Width = 1155
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1545
    Top = 780
    Width = 855
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &H80000004&
    Left = 150
    Top = 7965
    Width = 2145
    Height = 255
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 3045
    Width = 6795
    Height = 3630
    TabIndex = 23
  End
  Begin MSFlexGrid FGPoint
    Left = 165
    Top = 6720
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 55
  End
  Begin DataGrid DGRoom
    Left = 9810
    Top = 6825
    Width = 2355
    Height = 2910
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
End
Begin BtnEnh CmdClose
  Left = 5160
  Top = 0
  Width = 1695
  Height = 690
  TabIndex = 94
End
Begin Label Label1
  Caption = "Press Ctrl+S to Save"
  ForeColor = &HD6D7C6&
  Left = 240
  Top = 75
  Width = 2970
  Height = 300
  TabIndex = 36
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &HFF&
  Left = 2475
  Top = 780
  Width = 675
  Height = 240
  TabIndex = 21
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
Begin Label Lbl
  Caption = "Date"
  Index = 37
  ForeColor = &H0&
  Left = 4830
  Top = 780
  Width = 435
  Height = 240
  TabIndex = 20
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Deposit No"
  Index = 36
  ForeColor = &H0&
  Left = 255
  Top = 780
  Width = 1020
  Height = 240
  TabIndex = 19
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Shape Shape4
  BorderColor = &H400040&
  Left = 75
  Top = 720
  Width = 6780
  Height = 405
  BorderWidth = 2
  FillColor = &HC0FFC0&
End
Begin Menu popup
  Visible = 0   'False
  Caption = ""
  Begin Menu Del
    Caption = "Delete"
  End
End
End

Attribute VB_Name = "rsTouchScreenAdvanceDepDialog"

Private global_184 As Double
Private global_104 As Long
Private global_108 As Long
Private global_100 As Long
Private global_172 As Integer

Public Sub CmdClose_UnknownEvent_9(Index As Integer) 'E1A020
  'Data Table: 565884
  loc_E1A015: Me.Global.Unload Me
  loc_E1A01D: Exit Sub
  loc_E1A01E: Set Index00 = 
End Sub

Private Sub Form_Load() '142847C
  'Data Table: 565884
  Dim var_94 As Long
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_C0 As String
  Dim var_D4 As String
  Dim unk_5658B1 As Connection15
  Dim var_BC As Variant
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_DC As Field20
  Dim var_F0 As String
  Dim var_90 As Recordset15
  Dim Me As Variant
  Dim var_FC As Long
  Dim var_100 As Long
  Dim var_104 As TextBox
  loc_14279D0: On Error Goto loc_1428435
  loc_14279D9: var_94 = global_108
  loc_14279E5: If Not (var_94 = 5) Then
  loc_14279F1:   If (var_94 = 6) Then
  loc_14279F4:   End If
  loc_1427A0C:   Proc_6_23_DFBA28(Me, 5000)
  loc_1427A14: End If
  loc_1427A1E: Set var_98 = Me.TopCtrl1
  loc_1427A24: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1427A32: Call 0.Method_arg_50 (var_C0, 6975)
  loc_1427A3A: var_D0 = CVar(var_C0) 'String
  loc_1427A48: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D0)
  loc_1427A64: global_116 = rsTouchScreenAdvanceDepDialog.AdvType
  loc_1427A8F: unk_5658B1.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_D0, -1
  loc_1427AB0: var_BC = 0
  loc_1427AE0: unk_5658B1.Execute "Select Max(ShortName) from depart where code='" & global_52 & "'", var_D0, -1
  loc_1427AE8: var_98 = var_98.Fields
  loc_1427AF0: var_BC = var_D8.Item(var_D8)
  loc_1427AF8: var_DC = var_DC.Value
  loc_1427B0B: global_212 = Proc_6_38_E68A98(var_EC, var_EC)
  loc_1427B37: var_98 = Me.TopCtrl1.Fields
  loc_1427B47: var_D0 = CVar(var_98.Item("CreditCardInfoMandatory")) 'Address
  loc_1427B61: If (Proc_6_38_E68A98(var_D0, var_98) = "Y") Then
  loc_1427B6A:   global_216 = "Y"
  loc_1427B6E: End If
  loc_1427B82: var_C0 = "SELECT DP.PayCode as code, RevMast.Name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F92078
  loc_1427BA3: unk_5658B1.Execute var_C0 & "') AND DP.restcode='" & global_52 & "' ORDER BY NAME ", var_D0, -1
  loc_1427BB4: Set global_60 = var_98
  loc_1427BDE: var_D0 = CVar(Me.RecordCount) 'Long
  loc_1427BE5: Proc_6_39_E7C810(var_EC, var_D0)
  loc_1427BF1: global_192 = CInt(var_EC)
  loc_1427C04: CVarUnk
  loc_1427C09: VerifyVarObj
  loc_1427C15: LateIdStAd
  loc_1427C47: unk_5658B1.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D0, -1
  loc_1427C76: CVarUnk
  loc_1427C7B: VerifyVarObj
  loc_1427C87: LateIdStAd
  loc_1427CA9: var_C0 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.DOCID as FolioNoDocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (RoomOcc.LOGSITE_CODE='" & MemVar_1F92078
  loc_1427CB0: var_D4 = "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or RoomOcc.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_1427CB9: unk_5658B1.Execute var_D4, var_D0, -1
  loc_1427CE8: CVarUnk
  loc_1427CED: VerifyVarObj
  loc_1427CF9: LateIdStAd
  loc_1427D22: var_D4 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_1427D2B: unk_5658B1.Execute var_D4, var_D0, -1
  loc_1427D5A: CVarUnk
  loc_1427D5F: VerifyVarObj
  loc_1427D6B: LateIdStAd
  loc_1427D94: var_D4 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Regular Member', 'Silver Card Member', 'Golden Card Member', 'Corporate Member') Order By Name"
  loc_1427D9D: unk_5658B1.Execute var_D4, var_D0, -1
  loc_1427DCC: CVarUnk
  loc_1427DD1: VerifyVarObj
  loc_1427DD7: Set var_98 = Me.DGMember
  loc_1427DDD: LateIdStAd
  loc_1427DF7: Call 0.Method_arg_38 (MemVar_1F923AC, var_98, Me.DGCompany, var_98, var_98, Me.DGRoom, var_98, var_98)
  loc_1427E08: Call 0.Method_arg_3C (MemVar_1F920EC, Me.DGEmp, var_98, var_98)
  loc_1427E19: Call 0.Method_arg_54 (MemVar_1F9206C, Me.DGPayType, var_98)
  loc_1427E2A: Call 0.Method_arg_1C (MemVar_1F92070, var_98)
  loc_1427E3B: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1427E4C: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1427E5D: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_1427E6E: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_1427E7F: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_1427E90: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1427EAA: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1427EB8: Set var_98 = MemVar_1F92044
  loc_1427EC7: Call 0.Method_Form_Load8 (var_98)
  loc_1427EDD: Me.DGMember.Clone
  loc_1427EF7: Call 0.Method_Form_LoadC (var_98, -1)
  loc_1427F11: Me.Recordset20.Clone
  loc_1427F1C: Set var_D8 = var_98
  loc_1427F2B: Call 0.Method_arg_50 (var_D8, -1, var_98)
  loc_1427F3D: var_FC = global_108
  loc_1427F49: If Not (var_FC = 5) Then
  loc_1427F55:   If (var_FC = 6) Then
  loc_1427F58:   End If
  loc_1427F73:   var_D4 = "SELECT Distinct Docid as SearchCode FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Vtype='"
  loc_1427F8D:   unk_5658B1.Execute var_D4 & global_116 & "'", var_D0, -1
  loc_1427F9E:   Set global_56 = var_98
  loc_1427FB7: End If
  loc_1427FC3: Set var_98 = Me
  loc_1427FDA: Call Proc_296_81_FC5CE4(Proc_5_1_100CB50("INI", var_98, global_56, var_98), var_FC)
  loc_1427FE5: Call Proc_296_84_120E6A4(var_98)
  loc_1427FEA: Call Proc_296_89_120581C(global_60)
  loc_1427FFB: If (global_104 = 2) Then
  loc_1427FFE:   Call Proc_296_85_1559104()
  loc_1428003: End If
  loc_142800F: If (global_104 = 1) Then
  loc_142801B:   Set var_98 = Me.TopCtrl1
  loc_1428021:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1428036:   Set var_98 = Me.Txt
  loc_142803C:   Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_1428044:   var_D8.Visible = False
  loc_1428050:   Call TopCtrl1_UnknownEvent_A()
  loc_142806C:   If (Me.RecordCount > 0) Then
  loc_1428075:     Me.MoveFirst
  loc_14280A2:     Me.Find "SearchCode='" & global_120 & "'", 0, 1
  loc_14280C2:     If (Me.EOF = 0) Then
  loc_14280C5:       var_AC = "Edit"
  loc_14280CF:       Set var_98 = Me.TopCtrl1
  loc_14280D5:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_14280DD:       Call Proc_296_85_1559104(var_AC)
  loc_14280E8:       Call Proc_296_91_1316E88(global_160)
  loc_14280ED:     End If
  loc_14280ED:   End If
  loc_14280FE:   Set var_98 = Me.Txt
  loc_1428104:   Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_142810C:   var_D8.Text = global_120
  loc_142814C:   Set var_98 = Me.Txt
  loc_1428152:   Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_142815A:   var_D8.Text = CStr(Val(CStr(Right(global_120, 8))))
  loc_1428170:   var_D0 = 5
  loc_142819E:   Me.LblVPrefix.Caption = CStr(Mid(global_120, 9, var_D0))
  loc_14281B6:   var_100 = global_108
  loc_14281C2:   If Not (var_100 = 5) Then
  loc_14281CE:     If (var_100 = 6) Then
  loc_14281D1:     End If
  loc_14281E8:     Call 0.Method_Form_Load0 (CInt(&H10), var_D8)
  loc_14281F0:     var_D8.Tag = global_128
  loc_1428208:     If (global_108 = 6) Then
  loc_1428230:       var_F0 = "Select Name from RoomMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND code='" & global_128
  loc_1428240:       unk_5658B1.Execute var_F0 & "' and Type='HL' and RoomCat='HALL'", var_D0, -1
  loc_142824B:       Set var_8C = Me.Txt
  loc_1428271:       var_98 = Me.Recordset15.Fields
  loc_1428279:       var_D8 = var_98.Item("Name")
  loc_1428298:       Set var_DC = Me.Txt
  loc_142829E:       Call 0.Method_Form_Load0 (CInt(&H10), var_104)
  loc_14282A6:       var_104.Text = Proc_6_38_E68A98(CVar(var_D8), var_98)
  loc_14282BD:     Else
  loc_14282CE:       Set var_98 = Me.Txt
  loc_14282D4:       Call 0.Method_Form_Load0 (CInt(&H10), var_D8)
  loc_14282DC:       var_D8.Text = global_128
  loc_14282E8:     End If
  loc_1428322:     Set var_98 = Me.LTxt
  loc_1428328:     Call 0.Method_Form_Load0 (CInt(&H1A), var_D8, CStr(Format(global_132, "0.00")))
  loc_1428330:     var_D8.Caption = 1
  loc_1428346:   End If
  loc_1428346: End If
  loc_1428346: Call Proc_296_95_10A8E10(1)
  loc_1428351: global_176 = vbNullString
  loc_1428359: Set var_98 = Me.TopCtrl1
  loc_142835F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_100)
  loc_1428367: var_C0 = CStr()
  loc_142838D: If ((var_C0 = "Add") And (PSettlementMode = "Auto")) Then
  loc_1428390:   Call Proc_296_80_12CADA4()
  loc_1428398: Else
  loc_1428398:   var_AC = False
  loc_14283A7:   Me.SSPNext.Enabled = var_AC
  loc_14283BE:   Me.SSPPrevious.Enabled = False
  loc_14283D2:   Me.FrameQty.Visible = False
  loc_14283DA: End If
  loc_14283EE: Set var_D8 = Me.SSPItem
  loc_1428411: Call Proc_296_101_122BE4C(Me.SSPGroup, CInt(3), global_60)
  loc_1428429: Set var_8C = Nothing
  loc_1428431: Set var_90 = Nothing
  loc_1428434: Exit Sub
  loc_1428435: ' Referenced from: 14279D0
  loc_142843D: Set var_98 = Err()
  loc_1428443: Call 0.Method_arg_2C (var_C0, CInt(6))
  loc_1428464: MsgBox(CVar(var_C0), &H40, "Information", var_114, var_134)
  loc_1428477: Exit Sub
  loc_1428478: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6BB38
  'Data Table: 565884
  loc_E6BAE7: Set global_68 = Nothing
  loc_E6BAF9: Set global_56 = Nothing
  loc_E6BB0B: Set global_60 = Nothing
  loc_E6BB1D: Set global_64 = Nothing
  loc_E6BB2F: Set global_80 = Nothing
  loc_E6BB36: Exit Sub
End Sub

Private Sub Form_Activate() 'F2BFA4
  'Data Table: 565884
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Frame
  loc_F2BEB3: If (OpenMode = 1) Then
  loc_F2BEB9:   var_88 = OpenType
  loc_F2BEC1:   var_90 = var_88
  loc_F2BECD:   If Not (var_90 = 5) Then
  loc_F2BED9:     If (var_90 = 6) Then
  loc_F2BEDC:     End If
  loc_F2BEEA:     Set var_94 = Me.Txt
  loc_F2BEF0:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98, var_88)
  loc_F2BEF8:     var_90 = var_98.Left
  loc_F2BF09:     Set var_BC = Me.DGPayType
  loc_F2BF0F:     var_BC.Left = CVar(var_88)
  loc_F2BF2B:     Set var_98 = Me.Txt
  loc_F2BF31:     Call 0.Method_Form_Activate0 (CInt(&HF), var_BC)
  loc_F2BF4C:     Set var_C4 = Me.Txt
  loc_F2BF52:     Call 0.Method_Form_Activate0 (CInt(&HF), var_C8)
  loc_F2BF80:     var_A8 = CVar((((Me.FrRest.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_F2BF8F:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_F2BFA3:   End If
  loc_F2BFA3: End If
  loc_F2BFA3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F04688
  'Data Table: 565884
  Dim var_B4 As DataGrid
  loc_F045CC: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F04600:   Set var_B4 = Me.DGEmp
  loc_F04625:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_F04635:     Me.var_B4.Unload Me
  loc_F0463D:     Exit Sub
  loc_F0463E:   End If
  loc_F0463E: End If
  loc_F0465C: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_104 = 1)) Then
  loc_F0465F:   Call Proc_296_92_15341E4()
  loc_F04664:   Call TopCtrl1_UnknownEvent_16()
  loc_F04669:   Exit Sub
  loc_F0466A: End If
  loc_F0467E: Proc_6_88_FE81B4(Me, KeyCode)
  loc_F04686: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0A1D8
  'Data Table: 565884
  loc_E0A1C4: Call Proc_296_99_142F40C()
  loc_E0A1CF: Call Proc_296_91_1316E88(global_160)
  loc_E0A1D4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FDE7EC
  'Data Table: 565884
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FDE620: Set var_88 = Me.TopCtrl1
  loc_FDE626: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FDE63F: If (CStr() = "Browse") Then
  loc_FDE642:   Exit Sub
  loc_FDE643: End If
  loc_FDE660: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDE663:   Exit Sub
  loc_FDE664: End If
  loc_FDE675: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FDE697:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDE6D1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FDE6F3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDE709:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDE712:         Set var_110 = Me.FGrid
  loc_FDE72D:       Else
  loc_FDE740:         Me.FGrid.Rows = 1
  loc_FDE764:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_FDE76C:         Set var_110 = Me.FGrid
  loc_FDE799:         Me.FGrid.FixedRows = 1
  loc_FDE7A1:       End If
  loc_FDE7A1:     End If
  loc_FDE7A4:   Else
  loc_FDE7C5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FDE7D5:   End If
  loc_FDE7D9:   Set var_88 = Me.FGrid
  loc_FDE7EA: End If
  loc_FDE7EA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E3F364
  'Data Table: 565884
  loc_E3F33A: If (KeyCode = 2) Then
  loc_E3F355:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3F35D:   Call FGrid_UnknownEvent_9()
  loc_E3F362: End If
  loc_E3F362: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F43704
  'Data Table: 565884
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F435FB: Me.DGRoom.Visible = False
  loc_F4361A: If (Me.RecordCount > 0) Then
  loc_F43659:   Set var_B4 = Me.Txt
  loc_F4365F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F43667:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4369A:   var_B0 = Me.Fields.Item("Code")
  loc_F436B9:   Set var_B4 = Me.Txt
  loc_F436BF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F436C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F436DD: End If
  loc_F436E8: Set var_A8 = Me.Txt
  loc_F436EE: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E))
  loc_F436F6: var_B0.SetFocus
  loc_F43702: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA7D68
  'Data Table: 565884
  Dim var_A8 As Variant
  loc_EA7CE8: Set var_88 = Me.DGRoom
  loc_EA7D12: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7D1A: Set var_BC = Me.DGRoom
  loc_EA7D56: Proc_6_138_106D6F8(Me.DGRoom, global_72, CInt(&H1E), Me.FGPoint)
  loc_EA7D64: Exit Sub
End Sub

Private Sub SSPMain_UnknownEvent_9 'F06D48
  'Data Table: 565884
  Dim Me As Recordset15
  Dim var_9C As Boolean
  Dim var_8C As SSPanel
  Dim var_88 As SSPanel
  loc_F06C6E: Me.MoveFirst
  loc_F06C81: Set var_88 = Me.SSPGroup
  loc_F06C87: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F06C8F: var_8C.Visible = False
  loc_F06CA9: Set var_88 = Me.SSPItem
  loc_F06CAF: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F06CB7: var_8C.Visible = False
  loc_F06CC3: var_9C = False
  loc_F06CD2: Me.SSPNext.Enabled = var_9C
  loc_F06CE9: Me.SSPPrevious.Enabled = False
  loc_F06D05: Set var_8C = Me.SSPItem
  loc_F06D28: Call Proc_296_101_122BE4C(Me.SSPGroup, CInt(3), global_60)
  loc_F06D41: global_176 = vbNullString
  loc_F06D45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F5CDCC
  'Data Table: 565884
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F5CCA8: On Error Goto loc_F5CDC4
  loc_F5CCCE: Call Proc_296_81_FC5CE4(Proc_5_1_100CB50("ADD", Me))
  loc_F5CCD9: Call Proc_296_83_1011C00(global_56)
  loc_F5CD06: var_88 = CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_F5CD15: Set var_8C = Me.Txt
  loc_F5CD1B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F5CD23: var_D4.Text = 1
  loc_F5CD3F: var_D8 = global_108
  loc_F5CD4B: If Not (var_D8 = 5) Then
  loc_F5CD57:   If (var_D8 = 6) Then
  loc_F5CD5A:   End If
  loc_F5CD67:   Set var_8C = Me.Txt
  loc_F5CD6D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HF), var_D4, &HFF)
  loc_F5CD75:   var_D4.Enabled = var_D8
  loc_F5CD8D:   If (global_104 = 2) Then
  loc_F5CD96:     Call Proc_296_88_115B0C0(MemVar_1F92044, var_88)
  loc_F5CDA9:     Set var_8C = Me.Txt
  loc_F5CDAF:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F5CDB7:     var_D4.SetFocus
  loc_F5CDC3:   End If
  loc_F5CDC3: End If
  loc_F5CDC3: Exit Sub
  loc_F5CDC4: ' Referenced from: F5CCA8
  loc_F5CDC4: Proc_6_60_E62BC4(1)
  loc_F5CDC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBECAC
  'Data Table: 565884
  loc_EBEC14: On Error Goto loc_EBECA4
  loc_EBEC4E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBEC5D:   Set var_110 = Me
  loc_EBEC74:   Call Proc_296_81_FC5CE4(Proc_5_1_100CB50("INI", var_110))
  loc_EBEC7F:   Call Proc_296_86_F968E0(global_56)
  loc_EBEC84:   Call Proc_296_85_1559104()
  loc_EBEC8C: Else
  loc_EBEC92:   Call 0.Method_arg_1E8 (var_110)
  loc_EBEC9A:   Call var_110.SetFocus
  loc_EBECA3: End If
  loc_EBECA3: Exit Sub
  loc_EBECA4: ' Referenced from: EBEC14
  loc_EBECA4: Proc_6_60_E62BC4()
  loc_EBECA9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FDD2A8
  'Data Table: 565884
  Dim unk_5658B1 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_FDD0DC: On Error Goto loc_FDD257
  loc_FDD0ED: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_FDD0F0:   Exit Sub
  loc_FDD0F1: End If
  loc_FDD128: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_FDD134:   unk_5658B1.BeginTrans var_118
  loc_FDD14A:   var_94 = Me.Bookmark 'Variant
  loc_FDD196:   var_F4 = "Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_FDD19A:   var_124 = CStr(var_F4)
  loc_FDD1A4:   unk_5658B1.Execute var_124, var_114, -1
  loc_FDD1C6:   unk_5658B1.CommitTrans
  loc_FDD1D6:   Me.Requery -1
  loc_FDD1F6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FDD203:     Me.Bookmark = var_94
  loc_FDD20B:   Else
  loc_FDD21F:     If (Me.EOF = 0) Then
  loc_FDD228:       Me.MoveLast
  loc_FDD22D:     End If
  loc_FDD22D:   End If
  loc_FDD22D:   Call Proc_296_85_1559104(var_128)
  loc_FDD24E:   Proc_5_0_110649C(&HFF, Me)
  loc_FDD256: End If
  loc_FDD256: Exit Sub
  loc_FDD257: ' Referenced from: FDD0DC
  loc_FDD25D: unk_5658B1.RollbackTrans
  loc_FDD26A: Set var_11C = Err()
  loc_FDD270: Call 0.Method_arg_2C (var_124, global_56)
  loc_FDD291: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_FDD2A4: Exit Sub
  loc_FDD2A5: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E65508
  'Data Table: 565884
  loc_E654BC: On Error Goto loc_E65500
  loc_E654CD: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_E654D0:   Exit Sub
  loc_E654D1: End If
  loc_E654F4: Call Proc_296_81_FC5CE4(Proc_5_1_100CB50("EDIT", Me))
  loc_E654FF: Exit Sub
  loc_E65500: ' Referenced from: E654BC
  loc_E65500: Proc_6_60_E62BC4(global_56)
  loc_E65505: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A104
  'Data Table: 565884
  loc_E1A0F9: Me.Global.Unload Me
  loc_E1A101: Exit Sub
  loc_E1A102: Set KeyCode00 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'DFC728
  'Data Table: 565884
  loc_DFC724: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3B058
  'Data Table: 565884
  loc_E3B048: Proc_5_0_110649C(&HFF, Me)
  loc_E3B050: Call Proc_296_85_1559104(global_56)
  loc_E3B055: Exit Sub
  loc_E3B056: Set KeyCode78 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36198
  'Data Table: 565884
  loc_E36188: Proc_5_0_110649C(&HFF, Me)
  loc_E36190: Call Proc_296_85_1559104(global_56)
  loc_E36195: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B118
  'Data Table: 565884
  loc_E3B108: Proc_5_0_110649C(&HFF, Me)
  loc_E3B110: Call Proc_296_85_1559104(global_56)
  loc_E3B115: Exit Sub
  loc_E3B116: Set KeyCode78 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B0B8
  'Data Table: 565884
  Dim KeyCodeFF As Integer
  loc_E3B0A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B0B0: Call Proc_296_85_1559104(global_56)
  loc_E3B0B5: Exit Sub
  loc_E3B0B6: KeyCodeFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFC074
  'Data Table: 565884
  loc_DFC070: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E82BC4
  'Data Table: 565884
  Dim Me As Recordset15
  loc_E82B5B: Me.Requery -1
  loc_E82B6B: Me.Requery -1
  loc_E82B7B: Me.Requery -1
  loc_E82B8B: Me.Requery -1
  loc_E82B9B: Me.Requery -1
  loc_E82BAB: Me.Requery -1
  loc_E82BBB: Me.Requery -1
  loc_E82BC0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '179CB80
  'Data Table: 565884
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_128 As String
  Dim var_15C As Long
  Dim var_160 As Variant
  Dim var_168 As Variant
  Dim var_174 As Double
  Dim var_AA As Variant
  Dim unk_5658B1 As Connection15
  Dim var_16C As String
  Dim var_184 As String
  Dim var_AE As Variant
  Dim var_18C As Long
  Dim var_98 As Variant
  Dim var_138 As Variant
  Dim var_19C As Variant
  Dim var_148 As Variant
  Dim var_110 As String
  Dim var_158 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_298 As Variant
  Dim var_2BC As Variant
  Dim var_30C As Variant
  Dim var_32C As Long
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As MSHFlexGrid
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3F0 As Variant
  Dim var_354 As String
  Dim var_410 As Variant
  Dim var_4C0 As Variant
  Dim var_4E0 As Variant
  Dim var_504 As Variant
  Dim var_588 As MSHFlexGrid
  Dim var_598 As Variant
  Dim var_5E0 As Variant
  Dim var_654 As Long
  Dim var_67C As String
  Dim var_E18 As Double
  Dim var_714 As String
  Dim var_E20 As Double
  Dim var_7FC As TextBox
  Dim var_848 As TextBox
  Dim var_E28 As Double
  Dim var_8E0 As Variant
  Dim var_974 As Variant
  Dim var_A08 As Variant
  Dim var_A9C As Variant
  Dim var_B50 As Variant
  Dim var_1F8 As String
  Dim var_204 As String
  Dim var_20C As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_220 As String
  Dim var_238 As Variant
  Dim var_288 As Variant
  Dim var_2CC As Variant
  Dim var_2FC As Variant
  Dim var_480 As Variant
  Dim var_490 As Variant
  Dim var_5B8 As Variant
  Dim var_604 As Variant
  Dim var_6BC As Variant
  Dim var_774 As Variant
  Dim var_7B4 As Variant
  Dim var_7D4 As Variant
  Dim var_900 As Variant
  Dim var_ACC As Variant
  Dim var_CE4 As Variant
  Dim var_D0 As Recordset15
  Dim var_1F0 As String
  Dim var_31C As Variant
  Dim var_33C As Long
  Dim var_5DC As Variant
  Dim var_210 As String
  Dim var_440 As Variant
  Dim var_ABC As Variant
  Dim var_C8 As Double
  Dim var_E50 As Double
  Dim var_228 As TextBox
  Dim var_E58 As Double
  Dim var_E60 As Double
  Dim Me As Recordset15
  loc_179AE9C: var_E0 = 1
  loc_179AEA5: var_100 = 1
  loc_179AEC3: var_128 = CStr(Me.FGrid.TextMatrix))
  loc_179AED4: If (var_128 = vbNullString) Then
  loc_179AEE2:   var_138 = "Save Data"
  loc_179AEF8:   MsgBox("Please Fill Payment Details Before Saving..", &H40, var_138, var_148, var_158)
  loc_179AF08:   Exit Sub
  loc_179AF09: End If
  loc_179AF0F: var_15C = global_108
  loc_179AF1B: If Not (var_15C = 5) Then
  loc_179AF27:   If (var_15C = 6) Then
  loc_179AF2A:   End If
  loc_179AF38:   Set var_114 = Me.LTxt
  loc_179AF3E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_160, var_128)
  loc_179AF46:   var_15C = var_160.Caption
  loc_179AF62:   If (CDbl(Val(var_128)) <> CDbl(0)) Then
  loc_179AF73:     Set var_164 = Me.LTxt
  loc_179AF79:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_168, var_16C)
  loc_179AF81:     var_100 = var_168.Caption
  loc_179AF8E:     var_174 = Val(var_16C)
  loc_179AF9F:     Set var_114 = Me.LTxt
  loc_179AFA5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_160, var_128)
  loc_179AFD2:     If (CDbl(Val(var_128)) <> CDbl(var_160.Caption)) Then
  loc_179AFF4:       MsgBox(CVar("Bill Amount and Received Amount Not Matched" & vbCrLf & "Entry could not be Saved?"), 0, var_138, var_148, var_158)
  loc_179B007:       Exit Sub
  loc_179B008:     End If
  loc_179B008:   End If
  loc_179B008: End If
  loc_179B02D: For var_178 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_178 'Integer
  loc_179B037:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B03C:   var_100 = 2
  loc_179B06B:   If (CStr(Me.FGrid.TextMatrix)) = "Cash Card") Then
  loc_179B070:     var_AA = &HFF
  loc_179B073:   End If
  loc_179B076: Next var_178 'Integer
  loc_179B07E: Call Proc_296_96_10108E8(var_17A)
  loc_179B089: If (var_17A = 0) Then
  loc_179B08C:   Exit Sub
  loc_179B08D: End If
  loc_179B091: Set var_114 = Me.TopCtrl1
  loc_179B097: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179B0B7: If ((CStr() = "Add") And (var_AA = &HFF)) Then
  loc_179B0BD:   Call Proc_296_98_F68310(var_17A)
  loc_179B0C8:   If (var_17A = 0) Then
  loc_179B0CB:     Exit Sub
  loc_179B0CC:   End If
  loc_179B0CC: End If
  loc_179B0D0: Set var_114 = Me.TopCtrl1
  loc_179B0D6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179B0EF: If (CStr() = "Add") Then
  loc_179B0F8:   global_180 = MemVar_1F920C8
  loc_179B101:   var_128 = Proc_6_14_EF349C()
  loc_179B109:   global_184 = CDate(var_128)
  loc_179B10F: End If
  loc_179B113: var_86 = CByte(0) 'Byte
  loc_179B120: unk_5658B1.BeginTrans var_180
  loc_179B129: var_86 = CByte(1) 'Byte
  loc_179B14B: Set var_114 = Me.Txt
  loc_179B151: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Delete From PayCharge Where Docid='")
  loc_179B159: var_124 = var_160.Text
  loc_179B162: var_16C = -1 & var_128
  loc_179B172: unk_5658B1.Execute var_16C & "'", var_164, global_184
  loc_179B1B1: For var_188 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_188 'Integer
  loc_179B1BB:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B1C0:   var_100 = 2
  loc_179B1CD:   Set var_114 = Me.FGrid
  loc_179B1D3:   var_124 = var_114.TextMatrix)
  loc_179B1EF:   If (CStr(var_124) <> vbNullString) Then
  loc_179B1F8:     var_AE = (var_AE + 1)
  loc_179B201:     var_18C = global_108
  loc_179B20D:     If Not (var_18C = 5) Then
  loc_179B219:       If (var_18C = 6) Then
  loc_179B21C:       End If
  loc_179B243:       unk_5658B1.Execute "Select Name,ShortName from depart where code='" & global_52 & "'", var_124, -1
  loc_179B24E:       Set var_98 = var_114
  loc_179B272:       If (var_98.RecordCount > 0) Then
  loc_179B279:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B27E:         var_100 = 2
  loc_179B29C:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_179B2AD:         If (var_128 <> "Room") Then
  loc_179B2B4:           var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B2BC:           var_100 = CVar(CLng(&HE)) 'Long
  loc_179B2F8:           If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_179B2FF:             var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179B307:             var_100 = CVar(CLng(&HE)) 'Long
  loc_179B330:             var_94 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_179B342:           Else
  loc_179B34D:             var_E0 = "ShortName"
  loc_179B371:             var_138 = ("(" + var_98.Fields.Item(var_E0).Value)
  loc_179B375:             var_100 = ") "
  loc_179B37A:             var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + var_100)
  loc_179B37E:             var_110 = "BILL NO.- "
  loc_179B383:             var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_179B395:             Set var_164 = Me.Txt
  loc_179B39B:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_100, var_E0, var_100)
  loc_179B3A3:             var_E0 = var_168.Text
  loc_179B3AE:             var_1BC = (var_100 + CVar(var_128))
  loc_179B3B7:             var_1CC = (var_1BC + " ")
  loc_179B3C0:             var_1EC = (var_1CC + vbNullString)
  loc_179B3C5:             var_94 = CStr(var_1EC)
  loc_179B3E6:           End If
  loc_179B3E9:         Else
  loc_179B3F4:           var_E0 = "ShortName"
  loc_179B408:           var_160 = var_98.Fields.Item(var_E0)
  loc_179B418:           var_138 = ("(" + var_160.Value)
  loc_179B421:           var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + ") ")
  loc_179B425:           var_110 = "BILL NO.- "
  loc_179B42A:           var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_179B43C:           Set var_164 = Me.Txt
  loc_179B442:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_E0)
  loc_179B44A:           var_114 = var_168.Text
  loc_179B455:           var_1BC = (var_18C + CVar(var_128))
  loc_179B45E:           var_1CC = (var_1BC + " ")
  loc_179B467:           var_1EC = (var_1CC + vbNullString)
  loc_179B46C:           var_94 = CStr(var_1EC)
  loc_179B48D:         End If
  loc_179B48D:       End If
  loc_179B492:       Set var_98 = Nothing
  loc_179B49A:       Set var_9C = Nothing
  loc_179B4AB:       Set var_114 = Me.Txt
  loc_179B4B1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F0)
  loc_179B4B9:       var_AE = var_160.Text
  loc_179B4CC:       Set var_164 = Me.Txt
  loc_179B4D2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_179B4FA:       Set var_224 = Me.Txt
  loc_179B500:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228)
  loc_179B50F:       Proc_6_7_F25D88(var_1CC, CVar(var_228))
  loc_179B540:       var_19C = CVar(CLng(var_AC)) 'Long
  loc_179B548:       var_298 = CVar(CLng(&H10)) 'Long
  loc_179B567:       var_30C = CVar(CLng(var_AC)) 'Long
  loc_179B56C:       var_32C = 1
  loc_179B58F:       var_368 = CVar(CLng(var_AC)) 'Long
  loc_179B594:       var_388 = &H14
  loc_179B5B7:       var_3BC = CVar(CLng(var_AC)) 'Long
  loc_179B5BC:       var_3DC = &H18
  loc_179B5FE:       var_440 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_179B607:       var_4C0 = CVar(CLng(var_AC)) 'Long
  loc_179B60C:       var_4E0 = 1
  loc_179B61F:       var_504 = Me.FGrid.TextMatrix)
  loc_179B647:       var_598 = Me.FGrid.TextMatrix)
  loc_179B661:       Set var_5DC = Me.LTxt
  loc_179B667:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_5E0, var_5E4, var_598, 2, CVar(CLng(var_AC)), var_504)
  loc_179B66F:       var_4E0 = var_5E0.Caption
  loc_179B67C:       var_174 = Val(var_5E4)
  loc_179B688:       var_654 = 8
  loc_179B6AE:       var_E18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_179B6E0:       var_E20 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_179B6F1:       Set var_7F8 = Me.Txt
  loc_179B6F7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_7FC, var_800, var_E20, &H11, CVar(CLng(var_AC)), var_E18)
  loc_179B6FF:       var_654 = var_7FC.Text
  loc_179B712:       Set var_844 = Me.Txt
  loc_179B718:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_848, var_84C, CVar(CLng(var_AC)), var_174)
  loc_179B720:       var_4C0 = var_848.Tag
  loc_179B72D:       var_E28 = Val(var_84C)
  loc_179B74B:       var_8E0 = Me.FGrid.TextMatrix)
  loc_179B772:       var_974 = Me.FGrid.TextMatrix)
  loc_179B799:       var_A08 = Me.FGrid.TextMatrix)
  loc_179B7C0:       var_A9C = Me.FGrid.TextMatrix)
  loc_179B7D1:       Proc_6_7_F25D88(var_ABC, CVar(CStr(var_A9C)), CVar(CLng(&HD)), CVar(CLng(var_AC)), var_A08, CVar(CLng(&HC)), CVar(CLng(var_AC)), var_974)
  loc_179B7FC:       var_B50 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_179B802:       Proc_6_7_F25D88(var_B60, var_B50, CVar(CLng(&HB)), CVar(CLng(var_AC)), CVar(CLng(&HA)), CVar(CLng(var_AC)))
  loc_179B815:       Proc_6_7_F25D88(var_BF0, Date, var_8E0, CVar(CLng(9)))
  loc_179B847:       Proc_6_39_E7C810(var_CD4, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AC)))
  loc_179B85A:       Proc_6_17_EAA2B0(var_D64, global_180, CVar(CLng(var_AC)))
  loc_179B86D:       Proc_6_8_EB0DE4(var_DB4, global_184, var_E28)
  loc_179B886:       var_128 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_179B894:       var_184 = var_128 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,batchno,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_179B8E2:       var_220 = var_184 & "'" & var_1F0 & "'," & CStr(var_AE) & ",'" & global_116 & "','" & var_168.Text & "','" & MemVar_1F92070
  loc_179B8EF:       var_158 = CVar(var_220 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_179B8F3:       var_E0 = "',"
  loc_179B92F:       var_2FC = var_158 & var_E0 & var_1CC & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_179B985:       var_604 = var_2FC & var_440 & "','" & CVar(var_94) & "','" & CVar(CStr(var_504)) & "','" & CVar(CStr(var_598)) & "'," & CVar(var_174) 
  loc_179B9E2:       var_7D4 = var_604 & "," & CVar(var_E18) & "," & CVar(var_E20) & ",'" & CVar(global_152) & "'," & "'" & CVar(global_156) 
  loc_179BA1D:       var_900 = var_7D4 & "','" & CVar(var_800) & "'," & CVar(var_E28) & ",'" & CVar(CStr(var_8E0)) 
  loc_179BA55:       var_ACC = var_900 & "','" & CVar(CStr(var_974)) & "','" & CVar(CStr(var_A08)) & "'," & var_ABC 
  loc_179BAAE:       var_CE4 = var_ACC & "," & var_B60 & ",'" & CVar(MemVar_1F920C8) & "'," & var_BF0 & ",'A','" & CVar(global_52) & "'," & var_CD4 
  loc_179BAF8:       unk_5658B1.Execute CStr(var_CE4 & ",'" & CVar(MemVar_1F92078) & "'," & var_D64 & "," & var_DB4 & ")"), var_E08, -1
  loc_179BC36:       var_AE = (var_AE + 1)
  loc_179BC3D:       var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179BC42:       var_100 = 2
  loc_179BC4F:       Set var_114 = Me.FGrid
  loc_179BC55:       var_124 = var_114.TextMatrix)
  loc_179BC71:       If (CStr(var_124) = "Room") Then
  loc_179BC9F:         unk_5658B1.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_124, -1
  loc_179BCAA:         Set var_98 = var_114
  loc_179BCD0:         If (var_98.RecordCount > 0) Then
  loc_179BCFF:           var_160 = var_98.Fields.Item("TaxStru")
  loc_179BD0F:           var_138 = "Select * from taxstru where Code='" & var_160.Value 
  loc_179BD18:           var_148 = var_138 & "' Order by Sno" 
  loc_179BD26:           unk_5658B1.Execute CStr(var_148), var_158, -1
  loc_179BD31:           Set var_A0 = var_164
  loc_179BD4E:         Else
  loc_179BD67:           MsgBox("System Defined Revenue is not defined", 0, var_138, var_148, var_158)
  loc_179BD7D:           unk_5658B1.RollbackTrans
  loc_179BD82:           Exit Sub
  loc_179BD83:         End If
  loc_179BD87:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179BD8C:         var_100 = &H16
  loc_179BDCA:         var_184 = "Select Docid,GuestProf,Company from GuestFolio where Docid='" & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_179BDD3:         unk_5658B1.Execute var_184, var_138, -1
  loc_179BDDE:         Set var_D0 = var_160
  loc_179BE0C:         If (var_D0.RecordCount > 0) Then
  loc_179BE3A:           var_CC = CStr(var_D0.Fields.Item("GuestProf").Value)
  loc_179BE4A:           var_E0 = "Company"
  loc_179BE5E:           var_160 = var_D0.Fields.Item(var_E0)
  loc_179BE80:           If (Proc_6_38_E68A98(CVar(var_160), var_160, CVar(var_160), var_100, var_E0, var_164) <> vbNullString) Then
  loc_179BEA2:             var_114 = var_D0.Fields
  loc_179BEAA:             var_160 = var_114.Item("Company")
  loc_179BEBB:             var_128 = Proc_6_38_E68A98(CVar(var_160), "Update Sale1 Set Party='", var_138, -1, var_224, var_114)
  loc_179BEC6:             var_1F0 = var_100 & Proc_6_38_E68A98(CVar(var_160), var_160, CVar(var_160), var_100, "Company", var_164) & "' Where Docid='"
  loc_179BED7:             Set var_164 = Me.Txt
  loc_179BEDD:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_168, var_184, var_1F0)
  loc_179BEFE:             unk_5658B1.Execute var_AE & var_184 & "'", var_E0C, var_3DC
  loc_179BF24:           End If
  loc_179BF24:         End If
  loc_179BF32:         Set var_114 = Me.Txt
  loc_179BF38:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160)
  loc_179BF53:         Set var_164 = Me.Txt
  loc_179BF59:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_179BF61:         var_204 = var_168.Text
  loc_179BF81:         Set var_224 = Me.Txt
  loc_179BF87:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_179BF96:         Proc_6_7_F25D88(var_1CC, CVar(var_228))
  loc_179BFB2:         var_258 = "HH:mm"
  loc_179BFEE:         var_31C = CVar(CLng(var_AC)) 'Long
  loc_179BFF3:         var_33C = 2
  loc_179C016:         var_388 = CVar(CLng(var_AC)) 'Long
  loc_179C01B:         var_3BC = 8
  loc_179C028:         Set var_3F0 = Me.FGrid
  loc_179C048:         var_410 = CVar(CLng(var_AC)) 'Long
  loc_179C04D:         var_480 = &H12
  loc_179C060:         var_504 = Me.FGrid.TextMatrix)
  loc_179C0A1:         var_5B8 = Me.FGrid.TextMatrix)
  loc_179C0E8:         var_6BC = Me.FGrid.TextMatrix)
  loc_179C129:         var_7B4 = Me.FGrid.TextMatrix)
  loc_179C155:         var_E18 = Val(CStr(Right(CVar(CStr(var_7B4)), 8)))
  loc_179C166:         Proc_6_7_F25D88(var_900, Date, var_E18, var_7B4, &H16, CVar(CLng(var_AC)), var_6BC, &H12)
  loc_179C1A0:         Proc_6_17_EAA2B0(var_A9C, global_180, CVar(CLng(var_AC)), var_5B8, &H12)
  loc_179C1B3:         Proc_6_8_EB0DE4(var_ACC, global_184, CVar(CLng(var_AC)), var_504)
  loc_179C1CC:         var_16C = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_179C1E6:         var_1F8 = var_16C & var_160.Text & "'," & CStr(var_AE)
  loc_179C220:         var_158 = CVar(var_1F8 & ",'" & global_116 & "'," & var_204 & ",'" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_179C272:         var_2FC = var_158 & "'," & var_1CC & ",'" & CVar(Format$(Time, var_258)) & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" 
  loc_179C2A1:         var_490 = var_2FC & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(var_3F0.TextMatrix)))) 
  loc_179C2D1:         var_774 = var_490 & ",'" & Mid(CVar(CStr(var_504)), 3, 5) & "','" & LTrim(Left(CVar(CStr(var_5B8)), 2)) & "','" & Mid(CVar(CStr(var_6BC)), 8, 5) 
  loc_179C323:         var_974 = var_774 & "'," & CVar(var_E18) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F920C8) & "'," & var_900 & ",'A','" 
  loc_179C363:         var_AAC = var_974 & CVar(global_52) & "','" & var_D0.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F92078) & "'," & var_A9C 
  loc_179C38A:         unk_5658B1.Execute CStr(var_AAC & "," & var_ACC & ")"), var_B50, -1
  loc_179C472:         var_AE = (var_AE + 1)
  loc_179C479:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179C47E:         var_100 = &H12
  loc_179C4BA:         var_B8 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 8, 5))
  loc_179C4CF:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179C4D4:         var_100 = &H12
  loc_179C516:         var_BC = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_179C52B:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179C530:         var_100 = &H16
  loc_179C587:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179C58C:         var_100 = &H12
  loc_179C5C8:         var_B4 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_179C5DD:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_179C5E2:         var_100 = 8
  loc_179C600:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_179C608:         var_174 = Val(var_128)
  loc_179C612:         var_C8 = (var_C8 + var_174)
  loc_179C62C:         Set var_114 = Me.Txt
  loc_179C632:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F8, var_C8, var_174, var_100, var_E0)
  loc_179C63A:         var_124 = var_160.Text
  loc_179C64D:         Set var_164 = Me.Txt
  loc_179C653:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_100, var_E0)
  loc_179C65B:         var_124 = var_168.Text
  loc_179C668:         var_E50 = Val(var_128)
  loc_179C676:         var_138 = Trim(CVar(Me.LblVPrefix))
  loc_179C689:         Set var_224 = Me.Txt
  loc_179C68F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228, var_204, var_E50)
  loc_179C697:         var_100 = var_228.Text
  loc_179C69F:         var_148 = Time
  loc_179C6AE:         var_E0 = "HH:mm"
  loc_179C6B3:         var_158 = var_E0
  loc_179C6C7:         var_1BC = Trim(CVar(Format$(var_148, var_158)))
  loc_179C6EE:         var_2BC = var_98.Fields.Item("Code").Value
  loc_179C701:         Set var_39C = Me.LTxt
  loc_179C707:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_3F0, var_16C, 1)
  loc_179C70F:         1 = var_3F0.Caption
  loc_179C71C:         var_E58 = Val(var_16C)
  loc_179C723:         var_100 = CVar(CLng(var_AC)) 'Long
  loc_179C728:         var_19C = 8
  loc_179C74E:         var_E60 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_179C75F:         var_1EC = Date
  loc_179C767:         var_238 = Date
  loc_179C76F:         var_248 = Now
  loc_179C778:         Set var_588 = Me.TopCtrl1
  loc_179C77E:         Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_179C7B0:         var_288 = IIf((CStr(var_258) = "Add"), "A", "E")
  loc_179C7D7:         var_2CC = var_D0.Fields.Item("DocID").Value
  loc_179C7E1:         var_84C = 0
  loc_179C7EC:         var_800 = 0
  loc_179C7FF:         var_714 = 0
  loc_179C80A:         var_67C = 0
  loc_179C847:         var_354 = vbNullString
  loc_179C850:         var_220 = vbNullString
  loc_179C859:         var_21C = vbNullString
  loc_179C887:         var_218 = "Room"
  loc_179C89B:         var_210 = vbNullString
  loc_179C8A4:         var_20C = vbNullString
  loc_179C8E8:         Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_1F8, var_AE, global_116, CLng(var_E50), MemVar_1F92070, CStr(var_138), CDate(var_204))
  loc_179C960:       End If
  loc_179C960:     End If
  loc_179C960:   End If
  loc_179C963: Next var_188 'Integer
  loc_179C96D: Set var_98 = Nothing
  loc_179C975: Set var_9C = Nothing
  loc_179C97D: Set var_A0 = Nothing
  loc_179C985: Set var_A4 = Nothing
  loc_179C98D: Set var_D0 = Nothing
  loc_179C9A1: If (OpenMode = 1) Then
  loc_179C9A8:   Set var_114 = Me.TopCtrl1
  loc_179C9AE:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179C9B6:   var_128 = CStr()
  loc_179C9CE:   If ((var_128 = "Add") And (var_AA = &HFF)) Then
  loc_179C9D4:     Call Proc_296_97_125B968(var_17A)
  loc_179C9DF:     If (var_17A = &HFF) Then
  loc_179C9E8:       unk_5658B1.CommitTrans
  loc_179C9F1:       var_86 = CByte(0) 'Byte
  loc_179CA02:       Me.Global.Unload Me
  loc_179CA0A:       Exit Sub
  loc_179CA0E:     Else
  loc_179CA11:     Else
  loc_179CA11:     End If
  loc_179CA11:   End If
  loc_179CA17:   unk_5658B1.CommitTrans
  loc_179CA20:   var_86 = CByte(0) 'Byte
  loc_179CA35:   If (OpenMode = 1) Then
  loc_179CA45:     Me.Global.Unload Me
  loc_179CA4D:     Exit Sub
  loc_179CA4E:   End If
  loc_179CA59:   Me.Requery -1
  loc_179CA69:   Me.Requery -1
  loc_179CA8D:   Set var_114 = Me.Txt
  loc_179CA93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "SearchCode='")
  loc_179CA9B:   0 = var_160.Text
  loc_179CAB4:   Me.Find 1 & var_128 & "'", var_E0, 
  loc_179CACD:   Set var_114 = Me.TopCtrl1
  loc_179CAD3:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_179CAEC:   If (CStr() = "Add") Then
  loc_179CAEF:     Call TopCtrl1_UnknownEvent_A()
  loc_179CAF4:     Exit Sub
  loc_179CAF5:   End If
  loc_179CB0A:   var_128 = "INI"
  loc_179CB18:   Call Proc_296_81_FC5CE4(Proc_5_1_100CB50(var_128, Me))
  loc_179CB23:   Call Proc_296_86_F968E0(global_56)
  loc_179CB28:   Call Proc_296_85_1559104()
  loc_179CB2D:   Exit Sub
  loc_179CB2E: End If
  loc_179CB37: If (CInt(var_86) = 1) Then
  loc_179CB40:   unk_5658B1.RollbackTrans
  loc_179CB45: End If
  loc_179CB4D: Set var_114 = Err()
  loc_179CB53: Call 0.Method_arg_2C (var_128)
  loc_179CB6C: MsgBox(CVar(var_128), &H10, var_138, var_148, var_158)
  loc_179CB7F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED3A88
  'Data Table: 565884
  loc_ED39EC: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED39EF:   Call DGTable_UnknownEvent_9()
  loc_ED39F4: End If
  loc_ED3A10: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED3A13:   Call DGEmp_UnknownEvent_9()
  loc_ED3A18: End If
  loc_ED3A34: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED3A37:   Call DGPayType_UnknownEvent_9()
  loc_ED3A3C: End If
  loc_ED3A58: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED3A5B:   Call DGRoom_UnknownEvent_9()
  loc_ED3A60: End If
  loc_ED3A7C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED3A7F:   Call DGCompany_UnknownEvent_9()
  loc_ED3A84: End If
  loc_ED3A84: Exit Sub
  loc_ED3A85: CExtInstUnk
End Sub

Private Sub DGEmp_UnknownEvent_9 'F368C4
  'Data Table: 565884
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F367BB: Me.DGEmp.Visible = False
  loc_F367DA: If (Me.RecordCount > 0) Then
  loc_F36819:   Set var_B4 = Me.Txt
  loc_F3681F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F36827:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3685A:   var_B0 = Me.Fields.Item("Code")
  loc_F36879:   Set var_B4 = Me.Txt
  loc_F3687F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F36887:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3689D: End If
  loc_F368A8: Set var_A8 = Me.Txt
  loc_F368AE: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F368B6: var_B0.SetFocus
  loc_F368C2: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA7994
  'Data Table: 565884
  Dim var_A8 As Variant
  loc_EA7914: Set var_88 = Me.DGEmp
  loc_EA793E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7946: Set var_BC = Me.DGEmp
  loc_EA7982: Proc_6_138_106D6F8(Me.DGEmp, global_64, CInt(&H18), Me.FGPoint)
  loc_EA7990: Exit Sub
End Sub

Private Sub Del_Click() 'F94034
  'Data Table: 565884
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F93EEF: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F93F29:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F93F4B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F93F61:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F93F6A:       Set var_10C = Me.FGrid
  loc_F93F85:     Else
  loc_F93F98:       Me.FGrid.Rows = 1
  loc_F93FBC:       var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_F93FC4:       Set var_10C = Me.FGrid
  loc_F93FF1:       Me.FGrid.FixedRows = 1
  loc_F93FF9:     End If
  loc_F93FF9:   End If
  loc_F93FFC: Else
  loc_F94017:   var_98 = "No Entries To Delete"
  loc_F9401D:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F9402D: End If
  loc_F9402D: Call Proc_296_95_10A8E10(FGrid.DispID_10000, var_98)
  loc_F94032: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F46464
  'Data Table: 565884
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4635B: Me.DGCompany.Visible = False
  loc_F4637A: If (Me.RecordCount > 0) Then
  loc_F463B9:   Set var_B4 = Me.Txt
  loc_F463BF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F463C7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F463FA:   var_B0 = Me.Fields.Item("Code")
  loc_F46419:   Set var_B4 = Me.Txt
  loc_F4641F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F46427:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4643D: End If
  loc_F46448: Set var_A8 = Me.Txt
  loc_F4644E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F))
  loc_F46456: var_B0.SetFocus
  loc_F46462: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA8078
  'Data Table: 565884
  Dim var_A8 As Variant
  loc_EA7FF8: Set var_88 = Me.DGCompany
  loc_EA8022: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA802A: Set var_BC = Me.DGCompany
  loc_EA8066: Proc_6_138_106D6F8(Me.DGCompany, global_76, CInt(&H1F), Me.FGPoint)
  loc_EA8074: Exit Sub
End Sub

Public Sub SSPGroup_UnknownEvent_9(Index As Integer) '1076E50
  'Data Table: 565884
  Dim var_8C As Variant
  Dim var_A4 As TextBox
  Dim var_104 As Double
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_88 As Variant
  loc_1076BCC: Call Proc_296_94_10C1158()
  loc_1076BDB: Set var_88 = Me.SSPGroup
  loc_1076BE1: Call 0.Method_SSPGroup_UnknownEvent_90 (Index)
  loc_1076BE9: var_8C.Caption
  loc_1076BFF: Set var_A0 = Me.Txt
  loc_1076C05: Call 0.Method_SSPGroup_UnknownEvent_90 (CInt(&HF), var_A4)
  loc_1076C0D: var_A4.Text = CStr(var_8C)
  loc_1076C2D: Set var_88 = Me.SSPGroup
  loc_1076C33: Call 0.Method_SSPGroup_UnknownEvent_90 (Index)
  loc_1076C51: Set var_A0 = Me.Txt
  loc_1076C57: Call 0.Method_SSPGroup_UnknownEvent_90 (CInt(&HF), var_A4)
  loc_1076C5F: var_A4.Tag = CStr(var_8C.Tag)
  loc_1076C83: Proc_6_40_EA50F0(CVar(PBillAmt))
  loc_1076C88: var_104 = var_8C
  loc_1076CC1: Set var_88 = Me.Txt
  loc_1076CC7: Call 0.Method_SSPGroup_UnknownEvent_90 (CInt(&H11), var_8C, CStr(Format(CVar(var_104), "0.00")))
  loc_1076CCF: var_8C.Text = 1
  loc_1076CEF: Me.MoveFirst
  loc_1076D0F: Set var_88 = Me.SSPGroup
  loc_1076D15: Call 0.Method_SSPGroup_UnknownEvent_90 (Index, var_8C, "code='", 0)
  loc_1076D39: Me.Find 1 & CStr(var_8C.Tag) & "'", var_B8, 1
  loc_1076D82: global_160 = Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")))
  loc_1076D9B: Me.FrEmp.Visible = False
  loc_1076DAF: Me.FrChqDet.Visible = False
  loc_1076DC3: Me.FrCCDet.Visible = False
  loc_1076DD7: Me.FrCashCard.Visible = False
  loc_1076DF6: If ((global_160 = "Member") Or (global_160 = "Cash Card")) Then
  loc_1076DFF:   PCardType = global_160
  loc_1076E04:   Call Proc_296_80_12CADA4(var_104)
  loc_1076E0C: Else
  loc_1076E3B:   Call Proc_296_91_1316E88(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType"))))
  loc_1076E49:   Call Proc_296_104_105B9F0()
  loc_1076E4E: End If
  loc_1076E4E: Exit Sub
End Sub

Public Sub SSPItem_UnknownEvent_9(Index As Integer) '119BB58
  'Data Table: 565884
  Dim var_90 As Variant
  Dim var_A8 As TextBox
  loc_119B756: var_88 = global_176
  loc_119B761: If (var_88 = "Staff") Then
  loc_119B76E:   Set var_8C = Me.SSPItem
  loc_119B774:   Call 0.Method_SSPItem_UnknownEvent_90 (Index)
  loc_119B77C:   var_90.Caption
  loc_119B792:   Set var_A4 = Me.Txt
  loc_119B798:   Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H18), var_A8)
  loc_119B7A0:   var_A8.Text = CStr(var_90)
  loc_119B7C0:   Set var_8C = Me.SSPItem
  loc_119B7C6:   Call 0.Method_SSPItem_UnknownEvent_90 (Index)
  loc_119B7E4:   Set var_A4 = Me.Txt
  loc_119B7EA:   Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H18), var_A8)
  loc_119B7F2:   var_A8.Tag = CStr(var_90.Tag)
  loc_119B813:   Set var_8C = Me.Txt
  loc_119B819:   Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119B842:   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_119B853:     Set var_8C = Me.Txt
  loc_119B859:     Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119B861:     var_90.Text = "AGAINST V.NO "
  loc_119B86D:   End If
  loc_119B870: Else
  loc_119B878:   If (var_88 = "Room") Then
  loc_119B885:     Set var_8C = Me.SSPItem
  loc_119B88B:     Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_90)
  loc_119B893:     var_90.Caption
  loc_119B8A9:     Set var_A4 = Me.Txt
  loc_119B8AF:     Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1E), var_A8)
  loc_119B8B7:     var_A8.Text = CStr(var_90)
  loc_119B8D7:     Set var_8C = Me.SSPItem
  loc_119B8DD:     Call 0.Method_SSPItem_UnknownEvent_90 (Index)
  loc_119B8FB:     Set var_A4 = Me.Txt
  loc_119B901:     Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1E), var_A8)
  loc_119B909:     var_A8.Tag = CStr(var_90.Tag)
  loc_119B922:   Else
  loc_119B92A:     If (var_88 = "Company") Then
  loc_119B937:       Set var_8C = Me.SSPItem
  loc_119B93D:       Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_90)
  loc_119B945:       var_90.Caption
  loc_119B95B:       Set var_A4 = Me.Txt
  loc_119B961:       Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1F), var_A8)
  loc_119B969:       var_A8.Text = CStr(var_90)
  loc_119B989:       Set var_8C = Me.SSPItem
  loc_119B98F:       Call 0.Method_SSPItem_UnknownEvent_90 (Index)
  loc_119B9AD:       Set var_A4 = Me.Txt
  loc_119B9B3:       Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H1F), var_A8)
  loc_119B9BB:       var_A8.Tag = CStr(var_90.Tag)
  loc_119B9DC:       Set var_8C = Me.Txt
  loc_119B9E2:       Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119BA0B:       If (Trim(CVar(var_90)) = vbNullString) Then
  loc_119BA1C:         Set var_8C = Me.Txt
  loc_119BA22:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119BA2A:         var_90.Text = "AGAINST V.NO "
  loc_119BA36:       End If
  loc_119BA39:     Else
  loc_119BA41:       If (var_88 = "Member") Then
  loc_119BA4E:         Set var_8C = Me.SSPItem
  loc_119BA54:         Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_90)
  loc_119BA5C:         var_90.Caption
  loc_119BA72:         Set var_A4 = Me.Txt
  loc_119BA78:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H20), var_A8)
  loc_119BA80:         var_A8.Text = CStr(var_90)
  loc_119BAA0:         Set var_8C = Me.SSPItem
  loc_119BAA6:         Call 0.Method_SSPItem_UnknownEvent_90 (Index)
  loc_119BAC4:         Set var_A4 = Me.Txt
  loc_119BACA:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H20), var_A8)
  loc_119BAD2:         var_A8.Tag = CStr(var_90.Tag)
  loc_119BAF3:         Set var_8C = Me.Txt
  loc_119BAF9:         Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119BB22:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_119BB33:           Set var_8C = Me.Txt
  loc_119BB39:           Call 0.Method_SSPItem_UnknownEvent_90 (CInt(&H17), var_90)
  loc_119BB41:           var_90.Text = "AGAINST V.NO "
  loc_119BB4D:         End If
  loc_119BB4D:       End If
  loc_119BB4D:     End If
  loc_119BB4D:   End If
  loc_119BB4D: End If
  loc_119BB4D: Call SSPMain_UnknownEvent_9()
  loc_119BB52: Call Proc_296_92_15341E4(var_90)
  loc_119BB57: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F6CB8C
  'Data Table: 565884
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F6CA63: Me.DGPayType.Visible = False
  loc_F6CA71: var_AC = global_108
  loc_F6CA7D: If Not (var_AC = 5) Then
  loc_F6CA89:   If (var_AC = 6) Then
  loc_F6CA8C:   End If
  loc_F6CAA3:   If (Me.RecordCount > 0) Then
  loc_F6CAE2:     Set var_B8 = Me.Txt
  loc_F6CAE8:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6CAF0:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F6CB23:     var_B4 = Me.Fields.Item("Code")
  loc_F6CB42:     Set var_B8 = Me.Txt
  loc_F6CB48:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6CB50:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6CB66:   End If
  loc_F6CB71:   Set var_A8 = Me.Txt
  loc_F6CB77:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_B4)
  loc_F6CB7F:   var_B4.SetFocus
  loc_F6CB8B: End If
  loc_F6CB8B: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA7A58
  'Data Table: 565884
  Dim var_A8 As Variant
  loc_EA79D8: Set var_88 = Me.DGPayType
  loc_EA7A02: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7A0A: Set var_BC = Me.DGPayType
  loc_EA7A46: Proc_6_138_106D6F8(Me.DGPayType, global_60, CInt(&HF), Me.FGPoint)
  loc_EA7A54: Exit Sub
End Sub

Private Sub CmdQty_Click(Index As Integer) '1233030
  'Data Table: 565884
  Dim var_88 As Integer
  Dim var_8C As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim var_120 As String
  Dim var_90 As String
  loc_1232B27: var_88 = Index
  loc_1232B30: If Not (var_88 = 0) Then
  loc_1232B39:   If Not (var_88 = 1) Then
  loc_1232B42:     If Not (var_88 = 2) Then
  loc_1232B4B:       If Not (var_88 = 3) Then
  loc_1232B54:         If Not (var_88 = 4) Then
  loc_1232B5D:           If Not (var_88 = 5) Then
  loc_1232B66:             If Not (var_88 = 6) Then
  loc_1232B6F:               If Not (var_88 = 7) Then
  loc_1232B78:                 If Not (var_88 = 8) Then
  loc_1232B81:                   If Not (var_88 = 9) Then
  loc_1232B8A:                     If Not (var_88 = &HA) Then
  loc_1232B93:                       If (var_88 = &HF) Then
  loc_1232B96:                       End If
  loc_1232B96:                     End If
  loc_1232B96:                   End If
  loc_1232B96:                 End If
  loc_1232B96:               End If
  loc_1232B96:             End If
  loc_1232B96:           End If
  loc_1232B96:         End If
  loc_1232B96:       End If
  loc_1232B96:     End If
  loc_1232B96:   End If
  loc_1232BA3:   var_90 = Me.LblVtype.Caption
  loc_1232BAB:   var_94 = var_90
  loc_1232BB9:   If Not (var_94 = "Amount") Then
  loc_1232BC4:     If (var_94 = "Tip") Then
  loc_1232BC7:     End If
  loc_1232BEB:     If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1232BF2:       Set var_118 = Me.TxtQty
  loc_1232C2D:       var_114 = (Len(Left(CVar(var_118), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 2)
  loc_1232C3D:       Me.TxtQty.MaxLength = CLng(var_114)
  loc_1232C5C:       If (Index <> &HA) Then
  loc_1232C6C:         var_120 = Me.TxtQty.Text
  loc_1232C81:         Set var_8C = Me.CmdQty
  loc_1232C87:         Call 0.Method_CmdQty_Click0 (Index, var_118, var_90)
  loc_1232C8F:         var_120 = var_118.Caption
  loc_1232CA5:         Me.TxtQty.Text = var_88 & var_90
  loc_1232CBE:       End If
  loc_1232CC1:     Else
  loc_1232CE3:       Set var_8C = Me.CmdQty
  loc_1232CE9:       Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_1232D07:       Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1232D20:     End If
  loc_1232D23:   Else
  loc_1232D2B:     If Not (var_94 = "Expiry Date") Then
  loc_1232D36:       If (var_94 = "Cheque Date") Then
  loc_1232D39:       End If
  loc_1232D59:       var_D4 = (InStr(1, CVar(Me.TxtQty), ".", 0) + 1)
  loc_1232D84:       If CBool(InStr(CLng(CVar(var_118)), CVar(Me.TxtQty), ".", 0)) Then
  loc_1232D96:         Me.TxtQty.MaxLength = &HA
  loc_1232DA4:         If (Index <> &HA) Then
  loc_1232DC9:           Set var_8C = Me.CmdQty
  loc_1232DCF:           Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_1232DED:           Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1232E06:         End If
  loc_1232E09:       Else
  loc_1232E2B:         Set var_8C = Me.CmdQty
  loc_1232E31:         Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_1232E4F:         Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1232E68:       End If
  loc_1232E6B:     Else
  loc_1232E73:       If Not (var_94 = "Credit Card No") Then
  loc_1232E7E:         If Not (var_94 = "Batch No") Then
  loc_1232E89:           If Not (var_94 = "Cheque No") Then
  loc_1232E94:             If (var_94 = "Narration") Then
  loc_1232E97:             End If
  loc_1232E97:           End If
  loc_1232E97:         End If
  loc_1232EA6:         Me.TxtQty.MaxLength = &H10
  loc_1232EB4:         If (Index <> &HA) Then
  loc_1232ED9:           Set var_8C = Me.CmdQty
  loc_1232EDF:           Call 0.Method_CmdQty_Click0 (Index, var_118)
  loc_1232EFD:           Me.TxtQty.Text = Me.TxtQty.Text & var_118.Caption
  loc_1232F16:         End If
  loc_1232F16:       End If
  loc_1232F16:     End If
  loc_1232F16:   End If
  loc_1232F19: Else
  loc_1232F21:   If (var_88 = CInt(&HB)) Then
  loc_1232F44:     If (Me.TxtQty.Text <> vbNullString) Then
  loc_1232F74:       var_C4 = Left(CVar(Me.TxtQty), (Len(Me.TxtQty.Text) - 1))
  loc_1232F8A:       Me.TxtQty.Text = CStr(InStr(1, CVar(Me.TxtQty), ".", 0))
  loc_1232FA6:     End If
  loc_1232FA9:   Else
  loc_1232FB1:     If (var_88 = CInt(&HE)) Then
  loc_1232FC1:       Me.TxtQty.Text = vbNullString
  loc_1232FCC:     Else
  loc_1232FD4:       If (var_88 = CInt(&HD)) Then
  loc_1232FD7:         Call Proc_296_78_11665A8()
  loc_1232FDF:       Else
  loc_1232FE7:         If (var_88 = CInt(&HC)) Then
  loc_1232FFB:           Me.LblIndex.Caption = CStr(0)
  loc_1233012:           Me.FrameQty.Visible = False
  loc_1233026:           Me.FrameAmtType.Visible = True
  loc_123302E:         End If
  loc_123302E:       End If
  loc_123302E:     End If
  loc_123302E:   End If
  loc_123302E: End If
  loc_123302E: Exit Sub
End Sub

Private Sub SSPPrevious_UnknownEvent_9 'FD320C
  'Data Table: 565884
  loc_FD3042: var_88 = global_176
  loc_FD304D: If (var_88 = "Staff") Then
  loc_FD3056:   global_176 = "Staff"
  loc_FD305E:   Set var_90 = Me.SSPItem
  loc_FD307E:   Call Proc_296_102_F12F70(global_64, global_194, CInt(3))
  loc_FD30A6:   Call Proc_296_103_EB1C9C(global_64, Me.SSPNext, Me.SSPPrevious)
  loc_FD30B7: Else
  loc_FD30BF:   If (var_88 = "Company") Then
  loc_FD30C8:     global_176 = "Company"
  loc_FD30D0:     Set var_90 = Me.SSPItem
  loc_FD30F0:     Call Proc_296_102_F12F70(global_76, global_194, CInt(3), CInt(6))
  loc_FD3118:     Call Proc_296_103_EB1C9C(global_76, Me.SSPNext, Me.SSPPrevious)
  loc_FD3129:   Else
  loc_FD3131:     If (var_88 = "Member") Then
  loc_FD313A:       global_176 = "Member"
  loc_FD3142:       Set var_90 = Me.SSPItem
  loc_FD3162:       Call Proc_296_102_F12F70(global_80, global_194, CInt(3), CInt(6))
  loc_FD318A:       Call Proc_296_103_EB1C9C(global_80, Me.SSPNext, Me.SSPPrevious, Me.SSPNext)
  loc_FD319B:     Else
  loc_FD31A3:       If (var_88 = "Room") Then
  loc_FD31AC:         global_176 = "Room"
  loc_FD31B4:         Set var_90 = Me.SSPItem
  loc_FD31D4:         Call Proc_296_102_F12F70(global_72, global_194, CInt(3), CInt(6))
  loc_FD31FC:         Call Proc_296_103_EB1C9C(global_72, Me.SSPNext, Me.SSPPrevious, Me.SSPNext)
  loc_FD320A:       End If
  loc_FD320A:     End If
  loc_FD320A:   End If
  loc_FD320A: End If
  loc_FD320A: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F456A4
  'Data Table: 565884
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4559B: Me.DGMember.Visible = False
  loc_F455BA: If (Me.RecordCount > 0) Then
  loc_F455F9:   Set var_B4 = Me.Txt
  loc_F455FF:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F45607:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4563A:   var_B0 = Me.Fields.Item("Code")
  loc_F45659:   Set var_B4 = Me.Txt
  loc_F4565F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F45667:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4567D: End If
  loc_F45688: Set var_A8 = Me.Txt
  loc_F4568E: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20))
  loc_F45696: var_B0.SetFocus
  loc_F456A2: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'EA7684
  'Data Table: 565884
  Dim var_A8 As Variant
  loc_EA7604: Set var_88 = Me.DGMember
  loc_EA762E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7636: Set var_BC = Me.DGMember
  loc_EA7672: Proc_6_138_106D6F8(Me.DGMember, global_80, CInt(&H20), Me.FGPoint)
  loc_EA7680: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 '10B1A90
  'Data Table: 565884
  Dim Me As Recordset15
  loc_10B17BA: var_88 = global_176
  loc_10B17C5: If (var_88 = "Staff") Then
  loc_10B17CE:   global_176 = "Staff"
  loc_10B17E9:   If (Me.AbsolutePosition > 0) Then
  loc_10B17F2:     Me.MoveNext
  loc_10B180B:     Set var_98 = Me.SSPItem
  loc_10B182E:     Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_64)
  loc_10B1841:   End If
  loc_10B1861:   Call Proc_296_103_EB1C9C(global_64, Me.SSPNext, Me.SSPPrevious)
  loc_10B1872: Else
  loc_10B187A:   If (var_88 = "Company") Then
  loc_10B1883:     global_176 = "Company"
  loc_10B189E:     If (Me.AbsolutePosition > 0) Then
  loc_10B18A7:       Me.MoveNext
  loc_10B18E3:       Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_76, CInt(6), Me.SSPItem)
  loc_10B18F6:     End If
  loc_10B1916:     Call Proc_296_103_EB1C9C(global_76, Me.SSPNext, Me.SSPPrevious, var_A8)
  loc_10B1927:   Else
  loc_10B192F:     If (var_88 = "Member") Then
  loc_10B1938:       global_176 = "Member"
  loc_10B1953:       If (Me.AbsolutePosition > 0) Then
  loc_10B195C:         Me.MoveNext
  loc_10B1998:         Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_80, CInt(6), Me.SSPItem)
  loc_10B19AB:       End If
  loc_10B19CB:       Call Proc_296_103_EB1C9C(global_80, Me.SSPNext, Me.SSPPrevious, var_A8)
  loc_10B19DC:     Else
  loc_10B19E4:       If (var_88 = "Room") Then
  loc_10B19ED:         global_176 = "Room"
  loc_10B1A08:         If (Me.AbsolutePosition > 0) Then
  loc_10B1A11:           Me.MoveNext
  loc_10B1A4D:           Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_72, CInt(6), Me.SSPItem)
  loc_10B1A80:           Call Proc_296_103_EB1C9C(global_72, Me.SSPNext, Me.SSPPrevious, var_A8)
  loc_10B1A8E:         End If
  loc_10B1A8E:       End If
  loc_10B1A8E:     End If
  loc_10B1A8E:   End If
  loc_10B1A8E: End If
  loc_10B1A8E: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5BB80
  'Data Table: 565884
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5BA60: On Error Goto loc_F5BB7A
  loc_F5BA72: Me.DGTable.Visible = False
  loc_F5BA91: If (Me.RecordCount > 0) Then
  loc_F5BAD0:   Set var_B4 = Me.Txt
  loc_F5BAD6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5BADE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5BB11:   var_B0 = Me.Fields.Item("Code")
  loc_F5BB30:   Set var_B4 = Me.Txt
  loc_F5BB36:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5BB3E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5BB54: End If
  loc_F5BB5F: Set var_A8 = Me.Txt
  loc_F5BB65: Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10))
  loc_F5BB6D: var_B0.SetFocus
  loc_F5BB79: Exit Sub
  loc_F5BB7A: ' Referenced from: F5BA60
  loc_F5BB7A: Proc_6_60_E62BC4(var_B0)
  loc_F5BB7F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA6FA0
  'Data Table: 565884
  Dim var_A8 As Variant
  loc_EA6F20: Set var_88 = Me.DGTable
  loc_EA6F4A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6F52: Set var_BC = Me.DGTable
  loc_EA6F8E: Proc_6_138_106D6F8(Me.DGTable, global_68, CInt(&H10), Me.FGPoint)
  loc_EA6F9C: Exit Sub
End Sub

Public Function global_52Get() '567878
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '567887
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EBEBC4
  'Data Table: 565884
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBEB3A: On Error Goto loc_EBEB7F
  loc_EBEB43: Me.MoveFirst
  loc_EBEB5D: var_8C = "Searchcode='" & MyValue
  loc_EBEB6D: Me.Find var_8C & "'", 0, 1
  loc_EBEB79: Call Proc_296_85_1559104(var_A0)
  loc_EBEB7E: Exit Sub
  loc_EBEB7F: ' Referenced from: EBEB3A
  loc_EBEB87: Set var_A4 = Err()
  loc_EBEB8D: Call 0.Method_arg_2C (var_8C)
  loc_EBEBAE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBEBC1: Exit Sub
  loc_EBEBC2: Exit Sub
End Sub

Public Sub Amount(MyValue) 'EE8008
  'Data Table: 565884
  Dim var_90 As Variant
  Dim var_9C As Double
  loc_EE7F57: var_88 = MyValue
  loc_EE7F5A: On Error Goto loc_EE8001
  loc_EE7F6B: Set var_8C = Me.LTxt
  loc_EE7F71: Call 0.Method_Amount0 (CInt(&H1C), var_90)
  loc_EE7F86: var_9C = Val(var_90.Caption)
  loc_EE7FAB: If ((CDbl(Val(var_88)) > CDbl(var_9C)) And (global_172 = 0)) Then
  loc_EE7FC7:   MsgBox("Amount You have entered is greater than Actual amount", &H40, var_DC, var_FC, var_11C)
  loc_EE7FD7:   Exit Sub
  loc_EE7FD8: End If
  loc_EE7FE6: Set var_8C = Me.Txt
  loc_EE7FEC: Call 0.Method_Amount0 (CInt(&H11), var_90)
  loc_EE7FF4: var_90.Text = var_88
  loc_EE8000: Exit Sub
  loc_EE8001: ' Referenced from: EE7F5A
  loc_EE8001: Proc_6_60_E62BC4(var_9C)
  loc_EE8006: Exit Sub
End Sub

Public Sub TIP(MyValue) 'E585D4
  'Data Table: 565884
  Dim var_90 As TextBox
  loc_E585A2: On Error Goto loc_E585CE
  loc_E585B3: Set var_8C = Me.Txt
  loc_E585B9: Call 0.Method_TIP0 (CInt(&H19), var_90)
  loc_E585C1: var_90.Text = MyValue
  loc_E585CD: Exit Sub
  loc_E585CE: ' Referenced from: E585A2
  loc_E585CE: Proc_6_60_E62BC4()
  loc_E585D3: Exit Sub
End Sub

Public Sub CCNo(MyValue) 'E571E4
  'Data Table: 565884
  Dim var_90 As TextBox
  loc_E571B2: On Error Goto loc_E571DE
  loc_E571C3: Set var_8C = Me.Txt
  loc_E571C9: Call 0.Method_CCNo0 (CInt(&H12), var_90)
  loc_E571D1: var_90.Text = MyValue
  loc_E571DD: Exit Sub
  loc_E571DE: ' Referenced from: E571B2
  loc_E571DE: Proc_6_60_E62BC4()
  loc_E571E3: Exit Sub
End Sub

Public Sub ExpDt(MyValue) 'E58818
  'Data Table: 565884
  Dim var_90 As TextBox
  loc_E587E6: On Error Goto loc_E58812
  loc_E587F7: Set var_8C = Me.Txt
  loc_E587FD: Call 0.Method_ExpDt0 (CInt(&H14), var_90)
  loc_E58805: var_90.Text = MyValue
  loc_E58811: Exit Sub
  loc_E58812: ' Referenced from: E587E6
  loc_E58812: Proc_6_60_E62BC4()
  loc_E58817: Exit Sub
End Sub

Public Sub BatchNo(MyValue) 'E57754
  'Data Table: 565884
  Dim var_90 As TextBox
  loc_E57722: On Error Goto loc_E5774E
  loc_E57733: Set var_8C = Me.Txt
  loc_E57739: Call 0.Method_BatchNo0 (CInt(3), var_90)
  loc_E57741: var_90.Text = MyValue
  loc_E5774D: Exit Sub
  loc_E5774E: ' Referenced from: E57722
  loc_E5774E: Proc_6_60_E62BC4()
  loc_E57753: Exit Sub
End Sub

Public Sub ChequeNo(MyValue) 'E57B68
  'Data Table: 565884
  Dim var_90 As TextBox
  loc_E57B36: On Error Goto loc_E57B62
  loc_E57B47: Set var_8C = Me.Txt
  loc_E57B4D: Call 0.Method_ChequeNo0 (CInt(&H15), var_90)
  loc_E57B55: var_90.Text = MyValue
  loc_E57B61: Exit Sub
  loc_E57B62: ' Referenced from: E57B36
  loc_E57B62: Proc_6_60_E62BC4()
  loc_E57B67: Exit Sub
End Sub

Public Sub ChequeDt(MyValue) 'E58648
  'Data Table: 565884
  Dim var_90 As TextBox
  loc_E58616: On Error Goto loc_E58642
  loc_E58627: Set var_8C = Me.Txt
  loc_E5862D: Call 0.Method_ChequeDt0 (CInt(&H16), var_90)
  loc_E58635: var_90.Text = MyValue
  loc_E58641: Exit Sub
  loc_E58642: ' Referenced from: E58616
  loc_E58642: Proc_6_60_E62BC4()
  loc_E58647: Exit Sub
End Sub

Public Sub Narration(MyValue) 'E58478
  'Data Table: 565884
  Dim var_90 As TextBox
  loc_E58446: On Error Goto loc_E58472
  loc_E58457: Set var_8C = Me.Txt
  loc_E5845D: Call 0.Method_Narration0 (CInt(&H17), var_90)
  loc_E58465: var_90.Text = MyValue
  loc_E58471: Exit Sub
  loc_E58472: ' Referenced from: E58446
  loc_E58472: Proc_6_60_E62BC4()
  loc_E58477: Exit Sub
End Sub

Public Property Get OpenMode() 'E03BC0
  'Data Table: 565884
  loc_E03BB9: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E01A18
  'Data Table: 565884
  loc_E01A12: global_104 = vNewValue
  loc_E01A15: Exit Sub
End Sub

Public Property Get OpenType() 'E03FC0
  'Data Table: 565884
  loc_E03FB9: OpenType = global_108
End Sub

Public Property Let OpenType(vNewValue) 'E01964
  'Data Table: 565884
  loc_E0195E: global_108 = vNewValue
  loc_E01961: Exit Sub
End Sub

Public Property Get AdvType() 'E11E24
  'Data Table: 565884
  loc_E11E18: var_88 = global_116
  loc_E11E1B: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E11D94
  'Data Table: 565884
  loc_E11D8C: global_116 = vNewValue
  loc_E11D90: Exit Sub
End Sub

Public Property Get IdNo() 'E11B9C
  'Data Table: 565884
  loc_E11B90: var_88 = global_112
  loc_E11B93: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E11B0C
  'Data Table: 565884
  loc_E11B04: global_112 = vNewValue
  loc_E11B08: Exit Sub
End Sub

Public Property Get PersonCode() 'E11AC4
  'Data Table: 565884
  loc_E11AB8: var_88 = global_124
  loc_E11ABB: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E119A4
  'Data Table: 565884
  loc_E1199C: global_124 = vNewValue
  loc_E119A0: Exit Sub
End Sub

Public Property Get pDocId(arg_C) 'E1168C
  'Data Table: 565884
  loc_E11680: var_88 = global_120
  loc_E11683: pDocId = 
  loc_E1168A: arg_C08 = ( Or )
End Sub

Public Property Let pDocId(vNewValue) 'E1156C
  'Data Table: 565884
  loc_E11564: global_120 = vNewValue
  loc_E11568: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E11524
  'Data Table: 565884
  loc_E11518: var_88 = global_128
  loc_E1151B: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E11374
  'Data Table: 565884
  loc_E1136C: global_128 = vNewValue
  loc_E11370: Exit Sub
End Sub

Public Property Get PRoomCat() 'E1132C
  'Data Table: 565884
  loc_E11320: var_88 = global_164
  loc_E11323: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E112E4
  'Data Table: 565884
  loc_E112DC: global_164 = vNewValue
  loc_E112E0: Exit Sub
End Sub

Public Property Get PRoomtype() 'E14974
  'Data Table: 565884
  loc_E14968: var_88 = global_168
  loc_E1496B: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E110A4
  'Data Table: 565884
  loc_E1109C: global_168 = vNewValue
  loc_E110A0: Exit Sub
  loc_E110A2: vNewValue08 = ( Or )
End Sub

Public Property Get PBillAmt() 'E10FCC
  'Data Table: 565884
  loc_E10FC2: var_88 = CStr(global_132)
  loc_E10FC5: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E10F84
  'Data Table: 565884
  loc_E10F81: Exit Sub
  loc_E10F82: vNewValue08 = CDbl(vNewValue)
End Sub

Public Property Get PSettlementMode(arg_C) 'E10EF4
  'Data Table: 565884
  loc_E10EE8: var_88 = global_140
  loc_E10EEB: PSettlementMode = 
  loc_E10EF1: Exit Sub
  loc_E10EF2: arg_C08 = 
End Sub

Public Property Let PSettlementMode(vNewValue) 'E10DD4
  'Data Table: 565884
  Dim vNewValue64 As String
  loc_E10DCC: global_140 = vNewValue
  loc_E10DD0: Exit Sub
  loc_E10DD2: vNewValue64 = CStr()
End Sub

Public Property Get PCardType(arg_C) 'E10D8C
  'Data Table: 565884
  loc_E10D80: var_88 = global_144
  loc_E10D83: PCardType = 
  loc_E10D89: Exit Sub
  loc_E10D8A: arg_C08 = 
End Sub

Public Property Let PCardType(vNewValue) 'E10CB4
  'Data Table: 565884
  loc_E10CAC: global_144 = vNewValue
  loc_E10CB0: Exit Sub
End Sub

Public Property Get PCardCode() 'E10B94
  'Data Table: 565884
  loc_E10B88: var_88 = global_148
  loc_E10B8B: PCardCode = 
End Sub

Public Property Let PCardCode(vNewValue) 'E10B04
  'Data Table: 565884
  Dim vNewValue64 As String
  loc_E10AFC: global_148 = vNewValue
  loc_E10B00: Exit Sub
  loc_E10B02: vNewValue64 = CStr()
End Sub

Public Sub Proc_296_78_11665A8
  'Data Table: 565884
  Dim var_D4 As String
  loc_1166205: var_90 = Me.LblVtype.Caption
  loc_1166213: If (var_90 = "Amount") Then
  loc_1166236:   If (Me.TxtQty.Text = vbNullString) Then
  loc_1166239:     Exit Sub
  loc_116623A:   End If
  loc_116626C:   Call Amount(CStr(Format(CVar(Me.TxtQty), "0.00")))
  loc_116628D:   Me.TxtQty.Text = vbNullString
  loc_1166298: Else
  loc_11662A0:   If (var_90 = "Tip") Then
  loc_11662D5:     Call TIP(CStr(Format(CVar(Me.TxtQty), "0.00")))
  loc_11662F6:     Me.TxtQty.Text = vbNullString
  loc_1166301:   Else
  loc_1166309:     If (var_90 = "Credit Card No") Then
  loc_116632C:       If (Me.TxtQty.Text = vbNullString) Then
  loc_116632F:         Exit Sub
  loc_1166330:       End If
  loc_1166345:       Call CCNo(Me.TxtQty.Text)
  loc_116635D:       Me.TxtQty.Text = vbNullString
  loc_1166368:     Else
  loc_1166370:       If (var_90 = "Expiry Date") Then
  loc_1166393:         If (Me.TxtQty.Text = vbNullString) Then
  loc_1166396:           Exit Sub
  loc_1166397:         End If
  loc_11663A9:         Call ExpDt(Proc_6_33_1512840(Me.TxtQty, 1, 1))
  loc_11663C1:         Me.TxtQty.Text = vbNullString
  loc_11663CC:       Else
  loc_11663D4:         If (var_90 = "Batch No") Then
  loc_11663F7:           If (Me.TxtQty.Text = vbNullString) Then
  loc_11663FA:             Exit Sub
  loc_11663FB:           End If
  loc_1166410:           Call BatchNo(Me.TxtQty.Text)
  loc_1166428:           Me.TxtQty.Text = vbNullString
  loc_1166433:         Else
  loc_116643B:           If (var_90 = "Cheque Date") Then
  loc_116645E:             If (Me.TxtQty.Text = vbNullString) Then
  loc_1166461:               Exit Sub
  loc_1166462:             End If
  loc_1166474:             Call ChequeDt(Proc_6_33_1512840(Me.TxtQty, 1))
  loc_116648C:             Me.TxtQty.Text = vbNullString
  loc_1166497:           Else
  loc_116649F:             If (var_90 = "Cheque No") Then
  loc_11664C2:               If (Me.TxtQty.Text = vbNullString) Then
  loc_11664C5:                 Exit Sub
  loc_11664C6:               End If
  loc_11664DB:               Call ChequeNo(Me.TxtQty.Text)
  loc_11664F3:               Me.TxtQty.Text = vbNullString
  loc_11664FE:             Else
  loc_1166506:               If (var_90 = "Narration") Then
  loc_1166529:                 If (Me.TxtQty.Text = vbNullString) Then
  loc_116652C:                   Exit Sub
  loc_116652D:                 End If
  loc_1166542:                 Call Narration(Me.TxtQty.Text)
  loc_116655A:                 Me.TxtQty.Text = vbNullString
  loc_1166562:               End If
  loc_1166562:             End If
  loc_1166562:           End If
  loc_1166562:         End If
  loc_1166562:       End If
  loc_1166562:     End If
  loc_1166562:   End If
  loc_1166562: End If
  loc_1166582: var_D4 = CStr((Val(Me.LblIndex.Caption) + CDbl(1)))
  loc_116658F: Me.LblIndex.Caption = var_D4
  loc_11665A2: Call Proc_296_105_FA54E0(1)
  loc_11665A7: Exit Sub
End Sub

Public Sub Proc_296_79_DFC8C8
  'Data Table: 565884
  loc_DFC8C4: Exit Sub
End Sub

Public Sub Proc_296_80_12CADA4
  'Data Table: 565884
  Dim var_A8 As String
  Dim unk_5658B1 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As String
  Dim var_D0 As Fields15
  Dim var_CC As Variant
  Dim var_9C As Recordset15
  Dim var_D8 As TextBox
  Dim Me As Recordset15
  loc_12CA748: On Error Goto loc_12CAD9B
  loc_12CA76F: unk_5658B1.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_CC, -1
  loc_12CA77A: Set var_88 = var_D0
  loc_12CA79E: If (var_88.RecordCount > 0) Then
  loc_12CA7B0:   var_D0 = var_88.Fields
  loc_12CA7C0:   var_CC = CVar(var_D0.Item("Interface")) 'Address
  loc_12CA7C9:   var_DC = Proc_6_38_E68A98(var_CC)
  loc_12CA7DA:   If (var_DC = "SmartCard_ACR") Then
  loc_12CA835:     If (Proc_275_12_130A7A4(2, 0, var_8C, var_94, var_90, 0) = 0) Then
  loc_12CA838:       Exit Sub
  loc_12CA839:     End If
  loc_12CA841:     If (var_94 = "Member") Then
  loc_12CA858:       var_A8 = "Select S.Name From SmartCardRegistration SCR Inner Join SubGroup S On SCR.MemberCode=S.SubCode Where SCR.Code='" & var_8C
  loc_12CA868:       unk_5658B1.Execute var_A8 & "'", var_CC, -1
  loc_12CA873:       Set var_9C = var_D0
  loc_12CA897:       If (var_9C.RecordCount > 0) Then
  loc_12CA89D:         var_BC = "Name"
  loc_12CA8A9:         var_D0 = var_9C.Fields
  loc_12CA8B1:         var_D8 = var_D0.Item(var_BC)
  loc_12CA8C2:         var_A4 = Proc_6_38_E68A98(CVar(var_D8), var_D0, 0, var_A0)
  loc_12CA8CB:       End If
  loc_12CA8CB:     End If
  loc_12CA8CE:     var_A8 = PCardType
  loc_12CA905:     If (((var_A8 = "Cash Card") And (var_94 = "Member")) Or ((PSettlementMode = "Semi") And (var_94 = "Member"))) Then
  loc_12CA916:       Set var_D0 = Me.Txt
  loc_12CA91C:       Call 0.Method_Proc_296_80_12CADA40 (CInt(&HF), var_D8, "CASH CARD")
  loc_12CA924:       var_D8.Text = 0
  loc_12CA971:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12CA974:         Exit Sub
  loc_12CA975:       End If
  loc_12CA97B:       Me.MoveFirst
  loc_12CA9A5:       Call 0.Method_Proc_296_80_12CADA40 (CInt(&HF), var_D8, var_A8, "Name ='", 0)
  loc_12CA9AD:       1 = var_D8.Text
  loc_12CA9C6:       Me.Find var_BC & var_A8 & "'", 0, Me.Txt
  loc_12CA9E9:       Set var_D0 = Me.Txt
  loc_12CA9EF:       Call 0.Method_Proc_296_80_12CADA40 (CInt(&H21), var_D8)
  loc_12CA9F7:       var_D8.Text = var_8C
  loc_12CAA11:       Set var_D0 = Me.Txt
  loc_12CAA17:       Call 0.Method_Proc_296_80_12CADA40 (CInt(&H22), var_D8)
  loc_12CAA1F:       var_D8.Text = var_90
  loc_12CAA31:       Call Proc_296_91_1316E88(global_160)
  loc_12CAA36:       Call Proc_296_104_105B9F0()
  loc_12CAA3E:     Else
  loc_12CAA41:       var_A8 = PCardType
  loc_12CAA5A:       If ((var_A8 = "Member") And (var_94 = "Member")) Then
  loc_12CAA6B:         Set var_D0 = Me.Txt
  loc_12CAA71:         Call 0.Method_Proc_296_80_12CADA40 (CInt(&HF), var_D8)
  loc_12CAA79:         var_D8.Text = "BILL TO MEMBER"
  loc_12CAAC6:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12CAAC9:           Exit Sub
  loc_12CAACA:         End If
  loc_12CAAD0:         Me.MoveFirst
  loc_12CAAF4:         Set var_D0 = Me.Txt
  loc_12CAAFA:         Call 0.Method_Proc_296_80_12CADA40 (CInt(&HF), var_D8, var_A8, "Name ='")
  loc_12CAB02:         0 = var_D8.Text
  loc_12CAB1B:         Me.Find 1 & var_A8 & "'", var_BC, 
  loc_12CAB3E:         Set var_D0 = Me.Txt
  loc_12CAB44:         Call 0.Method_Proc_296_80_12CADA40 (CInt(&H20), var_D8)
  loc_12CAB4C:         var_D8.Text = var_A4
  loc_12CAB66:         Set var_D0 = Me.Txt
  loc_12CAB6C:         Call 0.Method_Proc_296_80_12CADA40 (CInt(&H20), var_D8)
  loc_12CAB74:         var_D8.Tag = var_A0
  loc_12CAB86:         Call Proc_296_91_1316E88(global_160)
  loc_12CAB8B:         Call Proc_296_104_105B9F0()
  loc_12CAB93:       Else
  loc_12CAB96:         var_A8 = PCardType
  loc_12CABCD:         If (((var_A8 = "Cash Card") And (var_94 = "Cash Card")) Or ((PSettlementMode = "Semi") And (var_94 = "Cash Card"))) Then
  loc_12CABDE:           Set var_D0 = Me.Txt
  loc_12CABE4:           Call 0.Method_Proc_296_80_12CADA40 (CInt(&HF), var_D8)
  loc_12CABEC:           var_D8.Text = "CASH CARD"
  loc_12CAC39:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12CAC3C:             Exit Sub
  loc_12CAC3D:           End If
  loc_12CAC43:           Me.MoveFirst
  loc_12CAC67:           Set var_D0 = Me.Txt
  loc_12CAC6D:           Call 0.Method_Proc_296_80_12CADA40 (CInt(&HF), var_D8, var_A8, "Name ='")
  loc_12CAC75:           0 = var_D8.Text
  loc_12CAC8E:           Me.Find 1 & var_A8 & "'", var_BC, 
  loc_12CACB1:           Set var_D0 = Me.Txt
  loc_12CACB7:           Call 0.Method_Proc_296_80_12CADA40 (CInt(&H21), var_D8)
  loc_12CACBF:           var_D8.Text = var_8C
  loc_12CACD9:           Set var_D0 = Me.Txt
  loc_12CACDF:           Call 0.Method_Proc_296_80_12CADA40 (CInt(&H22), var_D8)
  loc_12CACE7:           var_D8.Text = var_90
  loc_12CACF9:           Call Proc_296_91_1316E88(global_160)
  loc_12CACFE:           Call Proc_296_104_105B9F0()
  loc_12CAD03:         End If
  loc_12CAD03:       End If
  loc_12CAD03:     End If
  loc_12CAD06:   Else
  loc_12CAD0E:     If (var_DC = "NBSD_Mifare") Then
  loc_12CAD2A:       MsgBox("Procedure Not Defined!", &H40, var_124, var_144, var_164)
  loc_12CAD3D:     Else
  loc_12CAD56:       MsgBox("Smart Card Interface Not Defined!", &H40, var_124, var_144, var_164)
  loc_12CAD66:     End If
  loc_12CAD66:   End If
  loc_12CAD69: Else
  loc_12CAD82:   MsgBox("Member Environment Settings NOT SET!", 0, var_124, var_144, var_164)
  loc_12CAD92: End If
  loc_12CAD97: Set var_88 = Nothing
  loc_12CAD9A: Exit Sub
  loc_12CAD9B: ' Referenced from: 12CA748
  loc_12CAD9B: Proc_6_60_E62BC4()
  loc_12CADA0: Exit Sub
End Sub

Public Sub Proc_296_81_FC5CE4(arg_C) 'FC5CE4
  'Data Table: 565884
  Dim var_98 As TextBox
  loc_FC5B32: Set var_8C = Me.Txt
  loc_FC5B38: Call 0.Method_Proc_296_81_FC5CE48 (var_8E, var_86)
  loc_FC5B48: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FC5BE3:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FC5BF6:     Set var_8C = Me.Txt
  loc_FC5BFC:     Call 0.Method_Proc_296_81_FC5CE40 (CInt(var_86), var_98)
  loc_FC5C04:     var_98.Enabled = arg_C
  loc_FC5C10:   End If
  loc_FC5C13: Next var_92 'Byte
  loc_FC5C25: If (global_104 = 1) Then
  loc_FC5C35:   Set var_8C = Me.Txt
  loc_FC5C3B:   Call 0.Method_Proc_296_81_FC5CE40 (CInt(1), var_98)
  loc_FC5C43:   var_98.Enabled = False
  loc_FC5C4F: End If
  loc_FC5C5C: Set var_8C = Me.Txt
  loc_FC5C62: Call 0.Method_Proc_296_81_FC5CE40 (CInt(2), var_98)
  loc_FC5C6A: var_98.Enabled = False
  loc_FC5C83: Set var_8C = Me.Txt
  loc_FC5C89: Call 0.Method_Proc_296_81_FC5CE40 (CInt(0), var_98)
  loc_FC5C91: var_98.Enabled = False
  loc_FC5CB4: If (OpenMode = 1) Then
  loc_FC5CC4:   Set var_8C = Me.Txt
  loc_FC5CCA:   Call 0.Method_Proc_296_81_FC5CE40 (CInt(&H10), var_98)
  loc_FC5CD2:   var_98.Enabled = False
  loc_FC5CDE:   GoTo loc_FC5CE1
  loc_FC5CE1:   ' Referenced from: FC5CDE
  loc_FC5CE1: End If
  loc_FC5CE1: Exit Sub
End Sub

Public Sub Proc_296_82_F0E8E4(arg_C) 'F0E8E4
  'Data Table: 565884
  Dim var_98 As TextBox
  loc_F0E7FA: Set var_8C = Me.Txt
  loc_F0E800: Call 0.Method_Proc_296_82_F0E8E48 (var_8E, var_86)
  loc_F0E810: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F0E8AB:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_F0E8BE:     Set var_8C = Me.Txt
  loc_F0E8C4:     Call 0.Method_Proc_296_82_F0E8E40 (CInt(var_86), var_98)
  loc_F0E8CC:     var_98.Enabled = arg_C
  loc_F0E8D8:   End If
  loc_F0E8DB: Next var_92 'Byte
  loc_F0E8E1: Exit Sub
End Sub

Public Sub Proc_296_83_1011C00
  'Data Table: 565884
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_10119E6: Set var_8C = Me.Txt
  loc_10119EC: Call 0.Method_Proc_296_83_1011C00C (var_8E, var_86)
  loc_10119FC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1011A97:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_1011AAA:     Set var_8C = Me.Txt
  loc_1011AB0:     Call 0.Method_Proc_296_83_1011C000 (CInt(var_86), var_98)
  loc_1011AB8:     var_98.Text = vbNullString
  loc_1011AD4:     Set var_8C = Me.Txt
  loc_1011ADA:     Call 0.Method_Proc_296_83_1011C000 (CInt(var_86), var_98)
  loc_1011AE2:     var_98.Tag = vbNullString
  loc_1011AFD:     Set var_8C = Me.Txt
  loc_1011B03:     Call 0.Method_Proc_296_83_1011C000 (CInt(var_86), var_98)
  loc_1011B0B:     var_98.Locked = True
  loc_1011B17:   End If
  loc_1011B1A: Next var_92 'Byte
  loc_1011B33: Me.FGrid.Rows = 1
  loc_1011B3B: var_A8 = "1"
  loc_1011B45: Set var_8C = Me.FGrid
  loc_1011B69: Me.FGrid.FixedRows = 1
  loc_1011B7F: Set var_8C = Me.LTxt
  loc_1011B85: Call 0.Method_Proc_296_83_1011C000 (CInt(&H1A), var_98, vbNullString)
  loc_1011B8D: var_98.Caption = FGrid.DispID_10000
  loc_1011BA7: Set var_8C = Me.LTxt
  loc_1011BAD: Call 0.Method_Proc_296_83_1011C000 (CInt(&H1B), var_98)
  loc_1011BB5: var_98.Caption = vbNullString
  loc_1011BCF: Set var_8C = Me.LTxt
  loc_1011BD5: Call 0.Method_Proc_296_83_1011C000 (CInt(&H1C), var_98)
  loc_1011BDD: var_98.Caption = vbNullString
  loc_1011BEF: global_180 = vbNullString
  loc_1011BFC: global_184 = CDate(var_A8)
  loc_1011BFF: Exit Sub
End Sub

Public Sub Proc_296_84_120E6A4
  'Data Table: 565884
  Dim var_90 As Long
  Dim var_A0 As Variant
  loc_120E1CE: Call 0.Method_arg_54 ("Settlement Entry")
  loc_120E1E2: Me.FrRest.Top = CDbl(1140)
  loc_120E1F8: Me.FrRest.Left = CDbl(0)
  loc_120E20B: var_90 = OpenType
  loc_120E217: If Not (var_90 = 1) Then
  loc_120E223:   If (var_90 = 7) Then
  loc_120E226:   End If
  loc_120E239:   Me.FGrid.Top = CVar(CDbl(3705))
  loc_120E244: Else
  loc_120E24D:   If Not (var_90 = 5) Then
  loc_120E259:     If (var_90 = 6) Then
  loc_120E25C:     End If
  loc_120E26F:     Me.FGrid.Top = CVar(CDbl(3045))
  loc_120E277:   End If
  loc_120E277: End If
  loc_120E289: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_120E2B6: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E2D1: Me.FrChqDet.Left = CDbl(240)
  loc_120E2FE: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E319: Me.FrCCDet.Left = CDbl(240)
  loc_120E343: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_120E374: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_120E3B1: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_120E3C0: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_120E3F3: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_120E427: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E442: Me.FrSendRoom.Left = CDbl(240)
  loc_120E46F: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E48A: Me.FrEmp.Left = CDbl(240)
  loc_120E4B7: Me.FrComp.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E4D2: Me.FrComp.Left = CDbl(240)
  loc_120E4FF: Me.FrMem.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E51A: Me.FrMem.Left = CDbl(240)
  loc_120E547: Me.FrCashCard.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E562: Me.FrCashCard.Left = CDbl(240)
  loc_120E57D: Me.DGRoom.Top = CVar(CDbl(405))
  loc_120E598: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_120E5B3: Me.DGEmp.Top = CVar(CDbl(405))
  loc_120E5CE: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_120E5E9: Me.DGCompany.Top = CVar(CDbl(405))
  loc_120E604: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_120E618: If (global_108 = 5) Then
  loc_120E62A:   Me.FrRem.Width = CDbl(4925)
  loc_120E632: End If
  loc_120E63E: If (global_108 = 6) Then
  loc_120E650:   Me.FrRem.Width = CDbl(4925)
  loc_120E658: End If
  loc_120E67D: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_120E698: Me.FrRem.Left = CDbl(240)
  loc_120E6A0: Exit Sub
End Sub

Public Sub Proc_296_85_1559104
  'Data Table: 565884
  Dim Me As Variant
  Dim var_9C As Long
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_B4 As String
  Dim var_BC As String
  Dim var_F8 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim unk_5658B1 As Connection15
  Dim var_154 As Variant
  Dim var_150 As Variant
  Dim var_E8 As Variant
  Dim var_92 As Integer
  Dim var_16C As Variant
  Dim var_8A As Integer
  Dim var_13C As Variant
  Dim var_17C As Long
  Dim var_1AC As Variant
  Dim var_90 As Recordset15
  loc_15580F0: On Error Goto loc_15590BE
  loc_15580F9: Proc_183_45_E5C118(global_56)
  loc_1558115: If (Me.RecordCount <= 0) Then
  loc_1558118:   Call Proc_296_83_1011C00()
  loc_1558120: Else
  loc_1558126:   var_9C = global_108
  loc_1558132:   If Not (var_9C = 5) Then
  loc_155813E:     If (var_9C = 6) Then
  loc_1558141:     End If
  loc_1558155:     var_A0 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_1558163:     var_A8 = var_A0 & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt, ST.CardHolder, ST.ChqNo, "
  loc_155816A:     var_AC = var_A8 & "ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode As MemCode FROM ((((PayCharge AS ST LEFT JOIN "
  loc_1558178:     var_B4 = var_AC & "GuestProf AS GP ON (ST.GuestProf = GP.Code AND ST.LOGSITE_CODE=GP.LOGSITE_CODE)) LEFT JOIN Employee AS E " & "ON (ST.EmpCode = E.Code AND ST.LOGSITE_CODE=E.LOGSITE_CODE)) LEFT JOIN RevMast AS P ON (ST.PayCode = P.Code AND ST.LOGSITE_CODE=P.LOGSITE_CODE)) "
  loc_1558186:     var_BC = var_B4 & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where (ST.LOGSITE_CODE='"
  loc_15581CD:     var_128 = CVar(var_BC & MemVar_1F92078 & "' or ST.LOGSITE_CODE='HO') AND ST.Docid='") & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0" 
  loc_15581DB:     unk_5658B1.Execute CStr(var_128), var_14C, -1
  loc_15581E6:     Set var_88 = var_150
  loc_1558216:   End If
  loc_155824A:   global_88 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_1558272:   If (Me.Recordset15.RecordCount > 0) Then
  loc_15582A9:     global_180 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_1558335:     Set var_150 = Me.Txt
  loc_155833B:     Call 0.Method_Proc_296_85_15591040 (CInt(0), var_154, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_1558343:     var_154.Text = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_155839B:     Call 0.Method_Proc_296_85_15591040 (CInt(1), var_154, CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_15583A3:     var_154.Text = Me.Txt
  loc_15583F5:     Set var_150 = Me.Txt
  loc_15583FB:     Call 0.Method_Proc_296_85_15591040 (CInt(2), var_154)
  loc_1558403:     var_154.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_1558454:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_15584A1:     Set var_150 = Me.Txt
  loc_15584A7:     Call 0.Method_Proc_296_85_15591040 (CInt(&H12), var_154)
  loc_15584AF:     var_154.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_15584C3:   End If
  loc_15584D2:   Me.FGrid.Redraw = False
  loc_15584E7:   Set var_C4 = Me.FGrid
  loc_15584ED:   var_C4.Rows = 1
  loc_15584F7:   var_92 = 1
  loc_1558511:   If (Me.var_C4.RecordCount > 0) Then
  loc_1558514:     ' Referenced from:   1558FE7
  loc_1558526:     If Not(Me.Recordset15.EOF) Then
  loc_1558529:       var_D4 = vbNullString
  loc_1558533:       Set var_C4 = Me.FGrid
  loc_1558548:       Set var_15C = Me.FGrid
  loc_155854F:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558554:       var_16C = 0
  loc_155858B:       var_F8 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_1558592:       LateIdCallSt
  loc_15585E5:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_92)), var_15C, var_F8, 2)) 'String
  loc_15585EC:       LateIdCallSt
  loc_1558645:       LateIdCallSt
  loc_1558686:       var_A0 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayCode")), var_15C, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_92)), var_15C)
  loc_15586A2:       If (var_A0 = MemVar_1F92070 & "CCAD") Then
  loc_15586A7:         var_8A = &HFF
  loc_15586AA:       End If
  loc_15586E7:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_92)), var_8A, var_F8)) 'String
  loc_15586EE:       LateIdCallSt
  loc_1558704:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558709:       var_16C = 4
  loc_1558740:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_1558747:       LateIdCallSt
  loc_1558761:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558766:       var_16C = 5
  loc_155879D:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_15587A4:       LateIdCallSt
  loc_15587BE:       var_118 = CVar(CLng(var_92)) 'Long
  loc_15587C6:       var_16C = CVar(CLng(6)) 'Long
  loc_15587F9:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_1558800:       LateIdCallSt
  loc_1558852:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(7)), CVar(CLng(var_92)))) 'String
  loc_1558859:       LateIdCallSt
  loc_155888E:       var_13C = CVar(CLng(var_92)) 'Long
  loc_1558893:       var_17C = 8
  loc_15588C4:       var_128 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_15588CB:       LateIdCallSt
  loc_15588E5:       var_118 = CVar(CLng(var_92)) 'Long
  loc_15588ED:       var_16C = CVar(CLng(9)) 'Long
  loc_1558920:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_1558927:       LateIdCallSt
  loc_1558941:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558949:       var_16C = CVar(CLng(&HA)) 'Long
  loc_155897C:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_1558983:       LateIdCallSt
  loc_15589D5:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(&HB)), CVar(CLng(var_92)))) 'String
  loc_15589DC:       LateIdCallSt
  loc_1558A2B:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_92)), var_15C, var_F8, var_15C)) 'String
  loc_1558A32:       LateIdCallSt
  loc_1558A48:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558A50:       var_16C = CVar(CLng(&HC)) 'Long
  loc_1558A83:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_1558A8A:       LateIdCallSt
  loc_1558ADC:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(&HD)), CVar(CLng(var_92)))) 'String
  loc_1558AE3:       LateIdCallSt
  loc_1558AF9:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558B01:       var_16C = CVar(CLng(&HE)) 'Long
  loc_1558B34:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_1558B3B:       LateIdCallSt
  loc_1558B8D:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_92)), var_15C, var_F8, CVar(CLng(&HF)), CVar(CLng(var_92)))) 'String
  loc_1558B94:       LateIdCallSt
  loc_1558BAA:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558BB2:       var_16C = CVar(CLng(&H10)) 'Long
  loc_1558BE5:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_1558BEC:       LateIdCallSt
  loc_1558C3F:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_92)), var_15C, var_F8, &H14, CVar(CLng(var_92)))) 'String
  loc_1558C46:       LateIdCallSt
  loc_1558C95:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_92)), var_15C, var_F8, var_15C)) 'String
  loc_1558C9C:       LateIdCallSt
  loc_1558CEB:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_92)), var_15C, var_F8)) 'String
  loc_1558CF2:       LateIdCallSt
  loc_1558D41:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_92)), var_15C, var_F8)) 'String
  loc_1558D48:       LateIdCallSt
  loc_1558D5E:       var_118 = CVar(CLng(var_92)) 'Long
  loc_1558D9A:       var_F8 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_1558DA1:       LateIdCallSt
  loc_1558DE5:       var_F8 = "0.00"
  loc_1558E0C:       Set var_150 = Me.LTxt
  loc_1558E12:       Call 0.Method_Proc_296_85_15591040 (CInt(&H1A), var_154, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_F8)), 1, 1, var_15C, var_F8)
  loc_1558E1A:       var_154.Caption = &H11
  loc_1558E48:       var_F8 = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PayCharge AS P INNER JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_1558E78:       var_108 = var_F8 & Me.Recordset15.Fields.Item("DocID").Value 
  loc_1558E81:       var_128 = var_108 & "' And SNo=" 
  loc_1558EB7:       var_1AC = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_1558EBF:       var_A0 = CStr(var_128 & var_1AC)
  loc_1558EC9:       unk_5658B1.Execute var_A0, var_1CC, -1
  loc_1558ED4:       Set var_90 = var_1D0
  loc_1558F0E:       If (var_90.RecordCount > 0) Then
  loc_1558F52:         var_F8 = CVar(Proc_6_38_E68A98(var_90.Fields.Item(0).Value, &H12, CVar(CLng(var_92)), var_1D0, CVar(CLng(var_92)))) 'String
  loc_1558F59:         LateIdCallSt
  loc_1558FB0:         var_F8 = CVar(Proc_6_38_E68A98(var_90.Fields.Item(1).Value, &H13, CVar(CLng(var_92)), var_15C, var_F8)) 'String
  loc_1558FB7:         LateIdCallSt
  loc_1558FCD:       End If
  loc_1558FCF:       Set var_15C = Nothing 
  loc_1558FD9:       var_92 = (var_92 + 1)
  loc_1558FE2:       Me.Recordset15.MoveNext
  loc_1558FE7:       GoTo loc_1558514
  loc_1558FEA:     End If
  loc_1558FFD:     Me.FGrid.FixedRows = 1
  loc_1559005:   End If
  loc_1559013:   Me.FGrid.Redraw = True
  loc_1559021:   If (var_92 = 1) Then
  loc_1559037:     Me.FGrid.Rows = 1
  loc_155905B:     var_E8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_92, var_15C, var_F8))) 'String
  loc_1559063:     Set var_D8 = Me.FGrid
  loc_1559090:     Me.FGrid.FixedRows = 1
  loc_1559098:   End If
  loc_1559098:   Call Proc_296_95_10A8E10(FGrid.DispID_10000, var_E8, var_15C, var_F8)
  loc_155909D:   Call Proc_296_99_142F40C(var_F8, var_15C)
  loc_15590A8:   If (var_8A = &HFF) Then
  loc_15590B0:     Call Proc_296_82_F0E8E4(0)
  loc_15590B5:   End If
  loc_15590B5: End If
  loc_15590BA: Set var_88 = Nothing
  loc_15590BD: Exit Sub
  loc_15590BE: ' Referenced from: 15580F0
  loc_15590C6: Set var_C4 = Err()
  loc_15590CC: Call 0.Method_arg_2C (var_A0)
  loc_15590ED: MsgBox(CVar(var_A0), &H40, "Information", var_108, var_128)
  loc_1559100: Exit Sub
End Sub

Public Sub Proc_296_86_F968E0
  'Data Table: 565884
  loc_F96780: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F96792:   Me.DGPayType.Visible = False
  loc_F9679A: End If
  loc_F967B6: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F967C8:   Me.DGPayType.Visible = False
  loc_F967D0: End If
  loc_F967EC: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F967FE:   Me.DGEmp.Visible = False
  loc_F96806: End If
  loc_F96822: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F96834:   Me.DGTable.Visible = False
  loc_F9683C: End If
  loc_F96858: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F9686A:   Me.DGRoom.Visible = False
  loc_F96872: End If
  loc_F9688E: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F968A0:   Me.DGCompany.Visible = False
  loc_F968A8: End If
  loc_F968C4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F968D6:   Me.FGPoint.Visible = False
  loc_F968DE: End If
  loc_F968DE: Exit Sub
End Sub

Public Sub Proc_296_87_E92E58(arg_C) 'E92E58
  'Data Table: 565884
  Dim var_10C As TextBox
  loc_E92DEC: Call Proc_296_86_F968E0()
  loc_E92E28: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92E2B:   Call TopCtrl1_UnknownEvent_16()
  loc_E92E33: Else
  loc_E92E3D:   Set var_108 = Me.Txt
  loc_E92E43:   Call 0.Method_Proc_296_87_E92E580 (arg_C)
  loc_E92E4B:   var_10C.SetFocus
  loc_E92E57: End If
  loc_E92E57: Exit Sub
End Sub

Public Sub Proc_296_88_115B0C0
  'Data Table: 565884
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
  loc_115AD50: var_90 = global_116
  loc_115AD67: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115AD98: Set var_A8 = Me.Txt
  loc_115AD9E: Call 0.Method_Proc_296_88_115B0C00 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_115ADAD: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_115ADB5: var_EC = -1 & var_CC 
  loc_115ADC9: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_115ADD4: Set var_8C = var_134
  loc_115AE10: If (var_8C.RecordCount > 0) Then
  loc_115AE4F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115AE52:     GoTo loc_115AEE0
  loc_115AE55:   End If
  loc_115AE86:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115AEB1:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_115AEC6:   var_CC = (var_AC.Value + 1)
  loc_115AECF:   global_100 = CLng(var_CC)
  loc_115AEE0:   ' Referenced from: 115AE52
  loc_115AF0B:   var_BC = Space((5 - Len(var_90)))
  loc_115AF13:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_115AF27:   var_EC = Space((5 - Len(global_96)))
  loc_115AF2F:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_115AF3C:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_96))
  loc_115AF55:   var_14C = Space((8 - Len(CStr(global_100))))
  loc_115AF5D:   var_15C = (var_130 + var_14C)
  loc_115AF6C:   var_17C = (var_15C + CVar(CStr(global_100)))
  loc_115AF77:   global_92 = CStr(var_17C)
  loc_115AFAD:   Me.LblVPrefix.Caption = global_96
  loc_115AFC6:   Set var_A8 = Me.Txt
  loc_115AFCC:   Call 0.Method_Proc_296_88_115B0C00 (CInt(0), var_AC)
  loc_115AFD4:   var_AC.Text = global_92
  loc_115AFF6:   Set var_A8 = Me.Txt
  loc_115AFFC:   Call 0.Method_Proc_296_88_115B0C00 (CInt(1), var_AC)
  loc_115B004:   var_AC.Text = CStr(global_100)
  loc_115B019:   var_88 = global_92
  loc_115B01F: Else
  loc_115B025:   global_92 = vbNullString
  loc_115B03B:   global_100 = 0
  loc_115B04E:   Me.LblVPrefix.Caption = vbNullString
  loc_115B067:   Set var_A8 = Me.Txt
  loc_115B06D:   Call 0.Method_Proc_296_88_115B0C00 (CInt(0), var_AC, global_92)
  loc_115B075:   var_AC.Text = global_100
  loc_115B08F:   Set var_A8 = Me.Txt
  loc_115B095:   Call 0.Method_Proc_296_88_115B0C00 (CInt(1), var_AC)
  loc_115B09D:   var_AC.Text = vbNullString
  loc_115B0AF:   var_88 = global_92
  loc_115B0B2: End If
  loc_115B0B7: Set var_8C = Nothing
  loc_115B0BA: Proc_296_88_115B0C0 = global_100
End Sub

Public Sub Proc_296_89_120581C
  'Data Table: 565884
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1205352: var_88 = global_108
  loc_120535E: If Not (var_88 = 5) Then
  loc_120536A:   If (var_88 = 6) Then
  loc_120536D:   End If
  loc_1205379:   Me.FrRest.Visible = True
  loc_1205381: End If
  loc_1205394: Me.FGrid.Cols = &H18
  loc_120539C: var_A0 = CVar(CLng(9)) 'Long
  loc_12053A1: var_C0 = 0
  loc_12053AD: LateIdCallSt
  loc_12053B8: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12053BD: var_C0 = 0
  loc_12053C9: LateIdCallSt
  loc_12053D4: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12053D9: var_C0 = 0
  loc_12053E5: LateIdCallSt
  loc_12053F0: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12053F5: var_C0 = 0
  loc_1205401: LateIdCallSt
  loc_120540C: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1205411: var_C0 = 0
  loc_120541D: LateIdCallSt
  loc_1205428: var_A0 = CVar(CLng(&HE)) 'Long
  loc_120542D: var_C0 = 0
  loc_1205439: LateIdCallSt
  loc_1205444: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1205449: var_C0 = 0
  loc_1205455: LateIdCallSt
  loc_1205460: var_A0 = CVar(CLng(&H10)) 'Long
  loc_1205465: var_C0 = 0
  loc_1205471: LateIdCallSt
  loc_1205479: var_A0 = &H11
  loc_1205482: var_C0 = 0
  loc_120548E: LateIdCallSt
  loc_1205496: var_A0 = 1
  loc_120549F: var_C0 = 0
  loc_12054AB: LateIdCallSt
  loc_12054B3: var_A0 = 4
  loc_12054BC: var_C0 = 0
  loc_12054C8: LateIdCallSt
  loc_12054D0: var_A0 = 5
  loc_12054D9: var_C0 = 0
  loc_12054E5: LateIdCallSt
  loc_12054F0: var_A0 = CVar(CLng(6)) 'Long
  loc_12054F5: var_C0 = 0
  loc_1205501: LateIdCallSt
  loc_120550C: var_A0 = CVar(CLng(7)) 'Long
  loc_1205511: var_C0 = 0
  loc_120551D: LateIdCallSt
  loc_1205525: var_A0 = 2
  loc_120552E: var_C0 = 0
  loc_120553A: LateIdCallSt
  loc_1205542: var_A0 = 0
  loc_120554B: var_C0 = &HFA
  loc_1205557: LateIdCallSt
  loc_120555F: var_A0 = 0
  loc_1205568: var_C0 = 0
  loc_1205571: var_E0 = "SNo"
  loc_120557A: LateIdCallSt
  loc_1205582: var_A0 = 0
  loc_120558B: var_C0 = &H1C2
  loc_1205597: LateIdCallSt
  loc_120559F: var_A0 = 0
  loc_12055A8: var_C0 = 3
  loc_12055B1: var_E0 = "Payment Type"
  loc_12055BA: LateIdCallSt
  loc_12055C2: var_A0 = 3
  loc_12055D1: var_C0 = CVar(CInt(1)) 'Integer
  loc_12055D8: LateIdCallSt
  loc_12055E0: var_A0 = 3
  loc_12055E9: var_C0 = &HDAC
  loc_12055F5: LateIdCallSt
  loc_12055FD: var_A0 = 0
  loc_1205606: var_C0 = 8
  loc_120560F: var_E0 = "Amount"
  loc_1205618: LateIdCallSt
  loc_1205620: var_A0 = 8
  loc_120562F: var_C0 = CVar(CInt(7)) 'Integer
  loc_1205636: LateIdCallSt
  loc_120563E: var_A0 = 8
  loc_120564D: var_C0 = CVar(CInt(7)) 'Integer
  loc_1205654: LateIdCallSt
  loc_120565C: var_A0 = 8
  loc_1205665: var_C0 = &H4EC
  loc_1205671: LateIdCallSt
  loc_1205679: var_A0 = 0
  loc_1205682: var_C0 = &H11
  loc_120568B: var_E0 = "Tip"
  loc_1205694: LateIdCallSt
  loc_120569C: var_A0 = &H11
  loc_12056AB: var_C0 = CVar(CInt(7)) 'Integer
  loc_12056B2: LateIdCallSt
  loc_12056BA: var_A0 = &H11
  loc_12056C9: var_C0 = CVar(CInt(7)) 'Integer
  loc_12056D0: LateIdCallSt
  loc_12056D8: var_A0 = &H11
  loc_12056E1: var_C0 = &H4EC
  loc_12056ED: LateIdCallSt
  loc_12056F5: var_A0 = &H12
  loc_12056FE: var_C0 = 0
  loc_120570A: LateIdCallSt
  loc_1205712: var_A0 = &H13
  loc_120571B: var_C0 = 0
  loc_1205727: LateIdCallSt
  loc_120572F: var_A0 = &H14
  loc_1205738: var_C0 = 0
  loc_1205744: LateIdCallSt
  loc_120574C: var_A0 = &H15
  loc_1205755: var_C0 = 0
  loc_1205761: LateIdCallSt
  loc_1205769: var_A0 = &H18
  loc_1205772: var_C0 = 0
  loc_120577E: LateIdCallSt
  loc_1205786: var_A0 = &H19
  loc_120578F: var_C0 = 0
  loc_120579B: LateIdCallSt
  loc_12057A3: var_A0 = &H16
  loc_12057AC: var_C0 = 0
  loc_12057B8: LateIdCallSt
  loc_12057C0: var_A0 = &H17
  loc_12057C9: var_C0 = 0
  loc_12057D5: LateIdCallSt
  loc_1205807: LateIdCallSt
  loc_1205815: Call Proc_296_90_117DB9C(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_120581A: Exit Sub
End Sub

Public Sub Proc_296_90_117DB9C
  'Data Table: 565884
  Dim var_94 As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  loc_117D7C2: Set global_68 = New 
  loc_117D7D4: Me.Recordset15.CursorLocation = 3
  loc_117D7E4: var_94 = OpenType
  loc_117D7F0: If (var_94 = 6) Then
  loc_117D816:   Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_117D827:   Set var_8C = Me.LblName
  loc_117D82D:   Call 0.Method_Proc_296_90_117DB9C0 (&HC, var_B8, "Hall")
  loc_117D835:   var_B8.Caption = 1
  loc_117D851:   Set var_8C = Me.DGTable
  loc_117D862:   Set var_B8 = DGTable.DispID_69
  loc_117D870:   var_B8.Item(1).Caption = "Hall"
  loc_117D887:   global_152 = "HALL"
  loc_117D891:   global_156 = "HS"
  loc_117D898: Else
  loc_117D8A1:   If (var_94 = 5) Then
  loc_117D8AC:     If (MemVar_1F921A8 = "Hall") Then
  loc_117D8BB:       Set var_8C = Me.LblName
  loc_117D8C1:       Call 0.Method_Proc_296_90_117DB9C0 (&HC, var_B8, "Hall #")
  loc_117D8C9:       var_B8.Caption = -1
  loc_117D8E5:       Set var_8C = Me.DGTable
  loc_117D8F6:       Set var_B8 = DGTable.DispID_69
  loc_117D904:       var_B8.Item(1).Caption = "Hall #"
  loc_117D938:       Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F92044), 3
  loc_117D943:       global_152 = "HALL"
  loc_117D94D:       global_156 = "HL"
  loc_117D954:     Else
  loc_117D95C:       If (MemVar_1F921A8 = "Fast Food") Then
  loc_117D96A:         Set var_8C = Me.LblName
  loc_117D970:         Call 0.Method_Proc_296_90_117DB9C0 (&HC, var_B8, 0)
  loc_117D978:         var_B8.Visible = True
  loc_117D991:         Set var_8C = Me.Txt
  loc_117D997:         Call 0.Method_Proc_296_90_117DB9C0 (CInt(&H10), var_B8, 0)
  loc_117D99F:         var_B8.Visible = True
  loc_117D9BB:         Set var_8C = Me.DGTable
  loc_117D9CC:         Set var_B8 = DGTable.DispID_69
  loc_117D9DA:         var_B8.Item(1).Caption = "Hall #"
  loc_117DA0E:         Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F92044), 3
  loc_117DA19:         global_152 = "HALL"
  loc_117DA23:         global_156 = "HL"
  loc_117DA2A:       Else
  loc_117DA32:         If (MemVar_1F921A8 = "Room Service") Then
  loc_117DA41:           Set var_8C = Me.LblName
  loc_117DA47:           Call 0.Method_Proc_296_90_117DB9C0 (&HC, var_B8, "Room #")
  loc_117DA4F:           var_B8.Caption = 1
  loc_117DA6B:           Set var_8C = Me.DGTable
  loc_117DA7C:           Set var_B8 = DGTable.DispID_69
  loc_117DA8A:           var_B8.Item(1).Caption = "Room #"
  loc_117DABE:           Me.Open "Select T.Code,T.Code As Name,RoomCat From RoomMast T where T.Type in('RO') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_117DAC9:           global_156 = "RO"
  loc_117DAD0:         Else
  loc_117DADC:           Set var_8C = Me.LblName
  loc_117DAE2:           Call 0.Method_Proc_296_90_117DB9C0 (&HC, var_B8, "Table #", 1)
  loc_117DAEA:           var_B8.Caption = -1
  loc_117DB06:           Set var_8C = Me.DGTable
  loc_117DB25:           DGTable.DispID_69.Item(1).Caption = "Table #"
  loc_117DB59:           Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('TB') Order By T.Code", CVar(MemVar_1F92044), 3
  loc_117DB64:           global_152 = "REST"
  loc_117DB6E:           global_156 = "TB"
  loc_117DB72:         End If
  loc_117DB72:       End If
  loc_117DB72:     End If
  loc_117DB72:   End If
  loc_117DB72: End If
  loc_117DB7B: CVarUnk
  loc_117DB80: VerifyVarObj
  loc_117DB86: Set var_8C = Me.DGTable
  loc_117DB8C: LateIdStAd
  loc_117DB9A: Exit Sub
End Sub

Public Sub Proc_296_91_1316E88(arg_C) '1316E88
  'Data Table: 565884
  Dim var_98 As Boolean
  Dim var_AC As Long
  Dim var_B8 As Frame
  Dim var_C0 As Variant
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_EC As TextBox
  loc_1316728: Me.FrChqDet.Visible = False
  loc_131673C: Me.FrRem.Visible = False
  loc_1316750: Me.FrCCDet.Visible = False
  loc_1316764: Me.FrEmp.Visible = False
  loc_1316778: Me.FrComp.Visible = False
  loc_131678C: Me.FrMem.Visible = False
  loc_13167A0: Me.FrSendRoom.Visible = False
  loc_13167A8: var_98 = False
  loc_13167B7: Me.SSPNext.Enabled = var_98
  loc_13167CE: Me.SSPPrevious.Enabled = False
  loc_13167DC: global_176 = vbNullString
  loc_13167E6: var_AC = global_108
  loc_13167F2: If Not (var_AC = 5) Then
  loc_13167FE:   If (var_AC = 6) Then
  loc_1316801:   End If
  loc_1316804:   var_B0 = arg_C
  loc_131680F:   If (var_B0 = "Cheque") Then
  loc_131681E:     Me.FrChqDet.Visible = True
  loc_1316832:     Me.FrRem.Visible = False
  loc_1316874:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_1316885:   Else
  loc_131688D:     If (var_B0 = "Credit Card") Then
  loc_131689B:       If (global_216 = "Y") Then
  loc_13168AA:         Me.FrCCDet.Visible = True
  loc_13168BE:         Me.FrRem.Visible = False
  loc_13168C9:       Else
  loc_13168D5:         Me.FrCCDet.Visible = False
  loc_13168E9:         Me.FrRem.Visible = True
  loc_13168F1:       End If
  loc_13168F4:     Else
  loc_13168FC:       If (var_B0 = "Staff") Then
  loc_131690B:         Me.FrEmp.Visible = True
  loc_131694D:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_1316961:         global_176 = "Staff"
  loc_131697C:         If (Me.RecordCount > 0) Then
  loc_1316985:           Me.MoveFirst
  loc_13169A2:           Proc_6_39_E7C810(var_E0, CVar(Me.RecordCount))
  loc_13169AE:           global_194 = CInt(var_E0)
  loc_13169B8:           var_98 = True
  loc_13169C6:           Me.SSPNext.Enabled = var_98
  loc_13169E2:           Set var_B8 = Me.SSPGroup
  loc_1316A05:           Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_64, CInt(6))
  loc_1316A18:         End If
  loc_1316A1B:       Else
  loc_1316A23:         If (var_B0 = "Company") Then
  loc_1316A32:           Me.FrComp.Visible = True
  loc_1316A41:           Set var_B8 = Me.FrComp
  loc_1316A74:           Me.FrRem.Top = ((Me.FrComp.Top + var_B8.Height) + CDbl(&HF))
  loc_1316A88:           global_176 = "Company"
  loc_1316AA3:           If (Me.RecordCount > 0) Then
  loc_1316AAC:             Me.MoveFirst
  loc_1316AC9:             Proc_6_39_E7C810(var_E0, CVar(Me.RecordCount), var_B8)
  loc_1316AD5:             global_194 = CInt(var_E0)
  loc_1316ADF:             var_98 = True
  loc_1316AED:             Me.SSPNext.Enabled = var_98
  loc_1316B2C:             Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_76, CInt(6), Me.SSPGroup)
  loc_1316B3F:           End If
  loc_1316B42:         Else
  loc_1316B4A:           If (var_B0 = "Member") Then
  loc_1316B59:             Me.FrMem.Visible = True
  loc_1316B9B:             Me.FrRem.Top = ((Me.FrMem.Top + Me.FrMem.Height) + CDbl(&HF))
  loc_1316BAF:             global_176 = "Member"
  loc_1316BCA:             If (Me.RecordCount > 0) Then
  loc_1316BD3:               Me.MoveFirst
  loc_1316BF0:               Proc_6_39_E7C810(var_E0, CVar(Me.RecordCount), CVar(Me.RecordCount), global_194)
  loc_1316BFC:               global_194 = CInt(var_E0)
  loc_1316C06:               var_98 = True
  loc_1316C14:               Me.SSPNext.Enabled = var_98
  loc_1316C53:               Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_80, CInt(6), Me.SSPGroup)
  loc_1316C66:             End If
  loc_1316C69:           Else
  loc_1316C71:             If (var_B0 = "Room") Then
  loc_1316C80:               Me.FrSendRoom.Visible = True
  loc_1316C94:               Me.FrRem.Visible = False
  loc_1316CA2:               global_176 = "Room"
  loc_1316CBD:               If (Me.RecordCount > 0) Then
  loc_1316CC6:                 Me.MoveFirst
  loc_1316CDC:                 var_D0 = CVar(Me.RecordCount) 'Long
  loc_1316CE3:                 Proc_6_39_E7C810(var_E0, var_D0, var_D0, global_194)
  loc_1316CEF:                 global_194 = CInt(var_E0)
  loc_1316CF9:                 var_98 = True
  loc_1316D07:                 Me.SSPNext.Enabled = var_98
  loc_1316D46:                 Call Proc_296_101_122BE4C(Me.SSPItem, CInt(3), global_72, CInt(6), Me.SSPGroup)
  loc_1316D59:               End If
  loc_1316D5C:             Else
  loc_1316D64:               If (var_B0 = "Cash Card") Then
  loc_1316D73:                 Me.FrCashCard.Visible = True
  loc_1316D87:                 Me.FrRem.Visible = True
  loc_1316D9C:                 var_BC = Me.FrCashCard.Height
  loc_1316DC3:                 Set var_C0 = Me.FrRem
  loc_1316DC9:                 var_C0.Top = ((Me.FrCashCard.Top + var_BC) + CDbl(&HF))
  loc_1316DDA:               Else
  loc_1316DDA:                 var_98 = False
  loc_1316DE9:                 Me.SSPNext.Enabled = var_98
  loc_1316DFF:                 Set var_B8 = Me.Txt
  loc_1316E05:                 Call 0.Method_Proc_296_91_1316E880 (CInt(&H11), var_C0, var_BC, var_D0)
  loc_1316E0D:                 global_194 = var_C0.Top
  loc_1316E20:                 Set var_E8 = Me.Txt
  loc_1316E26:                 Call 0.Method_Proc_296_91_1316E880 (CInt(&H11), var_EC, var_F0)
  loc_1316E2E:                 var_D0 = var_EC.Height
  loc_1316E5F:                 Me.FrRem.Top = (((Me.FrRest.Top + var_BC) + var_F0) + CDbl(&HF))
  loc_1316E7F:                 Me.FrRem.Visible = True
  loc_1316E87:               End If
  loc_1316E87:             End If
  loc_1316E87:           End If
  loc_1316E87:         End If
  loc_1316E87:       End If
  loc_1316E87:     End If
  loc_1316E87:   End If
  loc_1316E87: End If
  loc_1316E87: Exit Sub
End Sub

Public Sub Proc_296_92_15341E4
  'Data Table: 565884
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim Me As Variant
  Dim var_11C As Long
  loc_1533236: Set var_8C = Me.LTxt
  loc_153323C: Call 0.Method_Proc_296_92_15341E40 (CInt(&H1C), var_90)
  loc_153326C: If ((CDbl(Val(var_90.Caption)) <= CDbl(0)) And (global_160 = "Cash Card")) Then
  loc_153326F:   Exit Sub
  loc_1533270: End If
  loc_153327E: Set var_8C = Me.Txt
  loc_1533284: Call 0.Method_Proc_296_92_15341E40 (CInt(&H11), var_90)
  loc_15332A8: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_15332B9:   Set var_8C = Me.Txt
  loc_15332BF:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H11), var_90)
  loc_15332C7:   var_90.Text = vbNullString
  loc_15332D3: End If
  loc_15332E1: Set var_8C = Me.Txt
  loc_15332E7: Call 0.Method_Proc_296_92_15341E40 (CInt(&HF), var_90)
  loc_1533301: If (var_90.Visible = &HFF) Then
  loc_153330F:   Set var_8C = Me.Txt
  loc_1533315:   Call 0.Method_Proc_296_92_15341E40 (CInt(&HF))
  loc_153333E:   If (Proc_6_27_EA565C(var_90, "Payment Type") = 0) Then
  loc_1533341:     Exit Sub
  loc_1533342:   End If
  loc_1533342: End If
  loc_1533350: Set var_8C = Me.Txt
  loc_1533356: Call 0.Method_Proc_296_92_15341E40 (CInt(&H11), var_90)
  loc_1533370: If (var_90.Visible = &HFF) Then
  loc_153337E:   Set var_8C = Me.Txt
  loc_1533384:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H11), var_90)
  loc_153338C:   var_94 = "Amount"
  loc_15333AD:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15333B0:     Exit Sub
  loc_15333B1:   End If
  loc_15333B1: End If
  loc_15333CA: Set var_8C = Me.Txt
  loc_15333D0: Call 0.Method_Proc_296_92_15341E40 (CInt(&H18), var_90, var_94)
  loc_15333D8: (global_160 = "Staff") = var_90.Text
  loc_15333F0: If (var_90 And (var_94 = vbNullString)) Then
  loc_15333FE:   Set var_8C = Me.Txt
  loc_1533404:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H18))
  loc_153340C:   var_94 = "Staff Name"
  loc_153342D:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1533430:     Exit Sub
  loc_1533431:   End If
  loc_1533431: End If
  loc_153344A: Set var_8C = Me.Txt
  loc_1533450: Call 0.Method_Proc_296_92_15341E40 (CInt(&H1E), var_90, var_94)
  loc_1533458: (global_160 = "Room") = var_90.Text
  loc_1533470: If (var_90 And (var_94 = vbNullString)) Then
  loc_153347E:   Set var_8C = Me.Txt
  loc_1533484:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H1E))
  loc_153348C:   var_94 = "Room Name"
  loc_15334AD:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15334B0:     Exit Sub
  loc_15334B1:   End If
  loc_15334B1: End If
  loc_15334CA: Set var_8C = Me.Txt
  loc_15334D0: Call 0.Method_Proc_296_92_15341E40 (CInt(&H1F), var_90, var_94)
  loc_15334D8: (global_160 = "Company") = var_90.Text
  loc_15334F0: If (var_90 And (var_94 = vbNullString)) Then
  loc_15334FE:   Set var_8C = Me.Txt
  loc_1533504:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H1F))
  loc_153350C:   var_94 = "Company Name"
  loc_153352D:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1533530:     Exit Sub
  loc_1533531:   End If
  loc_1533531: End If
  loc_153354A: Set var_8C = Me.Txt
  loc_1533550: Call 0.Method_Proc_296_92_15341E40 (CInt(&H20), var_90, var_94)
  loc_1533558: (global_160 = "Member") = var_90.Text
  loc_1533570: If (var_90 And (var_94 = vbNullString)) Then
  loc_153357E:   Set var_8C = Me.Txt
  loc_1533584:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H20))
  loc_153358C:   var_94 = "Member Name"
  loc_15335AD:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15335B0:     Exit Sub
  loc_15335B1:   End If
  loc_15335B1: End If
  loc_15335BC: If (global_216 = "Y") Then
  loc_15335D8:   Set var_8C = Me.Txt
  loc_15335DE:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H12), var_90, var_94)
  loc_15335E6:   (global_160 = "Credit Card") = var_90.Text
  loc_15335FE:   If (var_90 And (var_94 = vbNullString)) Then
  loc_153360C:     Set var_8C = Me.Txt
  loc_1533612:     Call 0.Method_Proc_296_92_15341E40 (CInt(&H12))
  loc_153363B:     If (Proc_6_27_EA565C(var_90, "Credit Card No.") = 0) Then
  loc_153363E:       Exit Sub
  loc_153363F:     End If
  loc_153363F:   End If
  loc_1533659:   Set var_8C = Me.Txt
  loc_153365F:   Call 0.Method_Proc_296_92_15341E40 (CInt(3), var_90)
  loc_1533692:   If CBool((global_160 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_15336A0:     Set var_8C = Me.Txt
  loc_15336A6:     Call 0.Method_Proc_296_92_15341E40 (CInt(3), var_90)
  loc_15336AE:     var_94 = "Batch No"
  loc_15336CF:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15336D2:       Exit Sub
  loc_15336D3:     End If
  loc_15336D3:   End If
  loc_15336D3: End If
  loc_15336EC: Set var_8C = Me.Txt
  loc_15336F2: Call 0.Method_Proc_296_92_15341E40 (CInt(&H15), var_90, var_94)
  loc_15336FA: (global_160 = "Cheque") = var_90.Text
  loc_1533712: If (var_90 And (var_94 = vbNullString)) Then
  loc_1533720:   Set var_8C = Me.Txt
  loc_1533726:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H15))
  loc_153372E:   var_94 = "Cheque No."
  loc_153374F:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1533752:     Exit Sub
  loc_1533753:   End If
  loc_1533753: End If
  loc_153376C: Set var_8C = Me.Txt
  loc_1533772: Call 0.Method_Proc_296_92_15341E40 (CInt(&H16), var_90, var_94)
  loc_153377A: (global_160 = "Cheque") = var_90.Text
  loc_1533792: If (var_90 And (var_94 = vbNullString)) Then
  loc_15337A0:   Set var_8C = Me.Txt
  loc_15337A6:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H16))
  loc_15337CF:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_15337D2:     Exit Sub
  loc_15337D3:   End If
  loc_15337D3: End If
  loc_15337DC: If (global_172 = 0) Then
  loc_15337F8:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_153381B:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1533834:   If (var_94 <> vbNullString) Then
  loc_1533853:     var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 3))) 'String
  loc_153385B:     Set var_90 = Me.FGrid
  loc_1533875:   End If
  loc_153388F:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_153389B: Else
  loc_15338AF:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15338B8: End If
  loc_15338C3: var_124 = OpenType
  loc_15338CF: If Not (var_124 = 5) Then
  loc_15338DB:   If (var_124 = 6) Then
  loc_15338DE:   End If
  loc_15338E2:   Set var_128 = Me.FGrid
  loc_1533905:   Set var_8C = Me.Txt
  loc_153390B:   Call 0.Method_Proc_296_92_15341E40 (CInt(&HF), var_90, var_94, 1, CVar(CLng(var_86)), var_124)
  loc_1533913:   var_86 = var_90.Tag
  loc_153391B:   var_AC = CVar(var_94) 'String
  loc_1533922:   LateIdCallSt
  loc_1533938:   var_CC = CVar(CLng(var_86)) 'Long
  loc_153393D:   var_10C = 2
  loc_1533953:   LateIdCallSt
  loc_153397B:   Set var_8C = Me.Txt
  loc_1533981:   Call 0.Method_Proc_296_92_15341E40 (CInt(&HF), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_160)
  loc_1533989:   var_10C = var_90.Text
  loc_1533991:   var_AC = CVar(var_94) 'String
  loc_1533998:   LateIdCallSt
  loc_15339AE:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15339B3:   var_10C = 4
  loc_15339C9:   LateIdCallSt
  loc_15339D5:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15339DA:   var_10C = 5
  loc_15339F0:   LateIdCallSt
  loc_1533A17:   Set var_8C = Me.Txt
  loc_1533A1D:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H10), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_156)
  loc_1533A25:   var_10C = var_90.Tag
  loc_1533A34:   LateIdCallSt
  loc_1533A65:   Set var_8C = Me.Txt
  loc_1533A6B:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H10), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_1533A73:   var_CC = var_90.Text
  loc_1533A7B:   var_AC = CVar(var_94) 'String
  loc_1533A82:   LateIdCallSt
  loc_1533AB4:   Set var_8C = Me.Txt
  loc_1533ABA:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H11), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_1533AC2:   var_AC = var_90.Text
  loc_1533ACA:   var_AC = CVar(var_94) 'String
  loc_1533AD1:   LateIdCallSt
  loc_1533AEE:   If (global_160 = "Cash Card") Then
  loc_1533B10:     Set var_8C = Me.Txt
  loc_1533B16:     Call 0.Method_Proc_296_92_15341E40 (CInt(&H21), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_1533B1E:     var_AC = var_90.Text
  loc_1533B26:     var_AC = CVar(var_94) 'String
  loc_1533B2D:     LateIdCallSt
  loc_1533B5E:     Set var_8C = Me.Txt
  loc_1533B64:     Call 0.Method_Proc_296_92_15341E40 (CInt(&H22), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_1533B6C:     var_AC = var_90.Text
  loc_1533B74:     var_AC = CVar(var_94) 'String
  loc_1533B7B:     LateIdCallSt
  loc_1533B90:   Else
  loc_1533BAF:     Set var_8C = Me.Txt
  loc_1533BB5:     Call 0.Method_Proc_296_92_15341E40 (CInt(&H12), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_1533BBD:     var_AC = var_90.Text
  loc_1533BC5:     var_AC = CVar(var_94) 'String
  loc_1533BCC:     LateIdCallSt
  loc_1533BFD:     Set var_8C = Me.Txt
  loc_1533C03:     Call 0.Method_Proc_296_92_15341E40 (CInt(&H13), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_1533C0B:     var_AC = var_90.Text
  loc_1533C13:     var_AC = CVar(var_94) 'String
  loc_1533C1A:     LateIdCallSt
  loc_1533C2C:   End If
  loc_1533C4B:   Set var_8C = Me.Txt
  loc_1533C51:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H14), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_1533C59:   var_AC = var_90.Text
  loc_1533C61:   var_AC = CVar(var_94) 'String
  loc_1533C68:   LateIdCallSt
  loc_1533C9A:   Set var_8C = Me.Txt
  loc_1533CA0:   Call 0.Method_Proc_296_92_15341E40 (CInt(3), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_1533CA8:   var_AC = var_90.Text
  loc_1533CB0:   var_AC = CVar(var_94) 'String
  loc_1533CB7:   LateIdCallSt
  loc_1533CE8:   Set var_8C = Me.Txt
  loc_1533CEE:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H15), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_1533CF6:   var_AC = var_90.Text
  loc_1533CFE:   var_AC = CVar(var_94) 'String
  loc_1533D05:   LateIdCallSt
  loc_1533D36:   Set var_8C = Me.Txt
  loc_1533D3C:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H16), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_1533D44:   var_AC = var_90.Text
  loc_1533D4C:   var_AC = CVar(var_94) 'String
  loc_1533D53:   LateIdCallSt
  loc_1533D84:   Set var_8C = Me.Txt
  loc_1533D8A:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H17), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_1533D92:   var_AC = var_90.Text
  loc_1533D9A:   var_AC = CVar(var_94) 'String
  loc_1533DA1:   LateIdCallSt
  loc_1533DD2:   Set var_8C = Me.Txt
  loc_1533DD8:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H18), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_1533DE0:   var_AC = var_90.Text
  loc_1533DE8:   var_AC = CVar(var_94) 'String
  loc_1533DEF:   LateIdCallSt
  loc_1533E20:   Set var_8C = Me.Txt
  loc_1533E26:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H18), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_1533E2E:   var_AC = var_90.Tag
  loc_1533E36:   var_AC = CVar(var_94) 'String
  loc_1533E3D:   LateIdCallSt
  loc_1533E6F:   Set var_8C = Me.Txt
  loc_1533E75:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H19), var_90, var_94, &H11, CVar(CLng(var_86)), var_128)
  loc_1533E7D:   var_AC = var_90.Text
  loc_1533E85:   var_AC = CVar(var_94) 'String
  loc_1533E8C:   LateIdCallSt
  loc_1533EBE:   Set var_8C = Me.Txt
  loc_1533EC4:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H1E), var_90, var_94, &H12, CVar(CLng(var_86)), var_128)
  loc_1533ECC:   var_AC = var_90.Tag
  loc_1533ED4:   var_AC = CVar(var_94) 'String
  loc_1533EDB:   LateIdCallSt
  loc_1533F0D:   Set var_8C = Me.Txt
  loc_1533F13:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H1E), var_90, var_94, &H13, CVar(CLng(var_86)), var_128)
  loc_1533F1B:   var_AC = var_90.Text
  loc_1533F23:   var_AC = CVar(var_94) 'String
  loc_1533F2A:   LateIdCallSt
  loc_1533F5C:   Set var_8C = Me.Txt
  loc_1533F62:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H1F), var_90, var_94, &H14, CVar(CLng(var_86)), var_128)
  loc_1533F6A:   var_AC = var_90.Tag
  loc_1533F72:   var_AC = CVar(var_94) 'String
  loc_1533F79:   LateIdCallSt
  loc_1533FAB:   Set var_8C = Me.Txt
  loc_1533FB1:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H1F), var_90, var_94, &H15, CVar(CLng(var_86)), var_128)
  loc_1533FB9:   var_AC = var_90.Text
  loc_1533FC1:   var_AC = CVar(var_94) 'String
  loc_1533FC8:   LateIdCallSt
  loc_1533FFA:   Set var_8C = Me.Txt
  loc_1534000:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H20), var_90, var_94, &H18, CVar(CLng(var_86)), var_128)
  loc_1534008:   var_AC = var_90.Tag
  loc_1534010:   var_AC = CVar(var_94) 'String
  loc_1534017:   LateIdCallSt
  loc_153402D:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1534049:   Set var_8C = Me.Txt
  loc_153404F:   Call 0.Method_Proc_296_92_15341E40 (CInt(&H20), var_90, var_94, &H19, var_CC, var_128)
  loc_1534057:   var_AC = var_90.Text
  loc_1534066:   LateIdCallSt
  loc_1534083:   If (global_160 = "Room") Then
  loc_153408C:     Me.MoveFirst
  loc_15340B0:     Set var_8C = Me.Txt
  loc_15340B6:     Call 0.Method_Proc_296_92_15341E40 (CInt(&H1E), var_90, var_94, "Code='", 0, 1, var_CC)
  loc_15340D7:     Me.Find CVar(var_94) & var_94 & "'", var_90.Tag, global_152
  loc_15340F0:     var_EC = CVar(CLng(var_86)) 'Long
  loc_15340F5:     var_11C = &H16
  loc_1534104:     var_CC = "FolioNoDocid"
  loc_153411B:     var_90 = Me.Fields.Item(var_CC)
  loc_153412C:     var_BC = CVar(CStr(var_90.Value)) 'String
  loc_1534133:     LateIdCallSt
  loc_1534149:   End If
  loc_153414B:   Set var_128 = Nothing 
  loc_153414F: End If
  loc_153414F: Call Proc_296_95_10A8E10(var_128, var_BC, var_11C, var_EC)
  loc_1534162: Set var_8C = Me.LTxt
  loc_1534168: Call 0.Method_Proc_296_92_15341E40 (CInt(&H1C), var_90, var_94)
  loc_1534170: var_10C = var_90.Caption
  loc_15341A6: If (((CDbl(Val(var_94)) = CDbl(0)) And (global_108 = 5)) Or (global_108 = 6)) Then
  loc_15341A9:   Call TopCtrl1_UnknownEvent_16()
  loc_15341AE:   Exit Sub
  loc_15341AF: End If
  loc_15341AF: Call Proc_296_93_10FF740(var_CC)
  loc_15341BF: Set var_8C = Me.Txt
  loc_15341C5: Call 0.Method_Proc_296_92_15341E40 (CInt(&HF), var_90)
  loc_15341CD: var_90.SetFocus
  loc_15341DE: global_172 = 0
  loc_15341E1: Exit Sub
End Sub

Public Sub Proc_296_93_10FF740
  'Data Table: 565884
  Dim var_8C As TextBox
  loc_10FF402: Set var_88 = Me.Txt
  loc_10FF408: Call 0.Method_Proc_296_93_10FF7400 (CInt(&HF), var_8C)
  loc_10FF410: var_8C.Text = vbNullString
  loc_10FF42A: Set var_88 = Me.Txt
  loc_10FF430: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H11), var_8C)
  loc_10FF438: var_8C.Text = vbNullString
  loc_10FF452: Set var_88 = Me.Txt
  loc_10FF458: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H19), var_8C)
  loc_10FF460: var_8C.Text = vbNullString
  loc_10FF47A: Set var_88 = Me.Txt
  loc_10FF480: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H18), var_8C)
  loc_10FF488: var_8C.Text = vbNullString
  loc_10FF4A2: Set var_88 = Me.Txt
  loc_10FF4A8: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H17), var_8C)
  loc_10FF4B0: var_8C.Text = vbNullString
  loc_10FF4CA: Set var_88 = Me.Txt
  loc_10FF4D0: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H12), var_8C)
  loc_10FF4D8: var_8C.Text = vbNullString
  loc_10FF4F2: Set var_88 = Me.Txt
  loc_10FF4F8: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H13), var_8C)
  loc_10FF500: var_8C.Text = vbNullString
  loc_10FF51A: Set var_88 = Me.Txt
  loc_10FF520: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H21), var_8C)
  loc_10FF528: var_8C.Text = vbNullString
  loc_10FF542: Set var_88 = Me.Txt
  loc_10FF548: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H22), var_8C)
  loc_10FF550: var_8C.Text = vbNullString
  loc_10FF56A: Set var_88 = Me.Txt
  loc_10FF570: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H14), var_8C)
  loc_10FF578: var_8C.Text = vbNullString
  loc_10FF592: Set var_88 = Me.Txt
  loc_10FF598: Call 0.Method_Proc_296_93_10FF7400 (CInt(3), var_8C)
  loc_10FF5A0: var_8C.Text = vbNullString
  loc_10FF5BA: Set var_88 = Me.Txt
  loc_10FF5C0: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H15), var_8C)
  loc_10FF5C8: var_8C.Text = vbNullString
  loc_10FF5E2: Set var_88 = Me.Txt
  loc_10FF5E8: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H16), var_8C)
  loc_10FF5F0: var_8C.Text = vbNullString
  loc_10FF60A: Set var_88 = Me.Txt
  loc_10FF610: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H1F), var_8C)
  loc_10FF618: var_8C.Text = vbNullString
  loc_10FF632: Set var_88 = Me.Txt
  loc_10FF638: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H1F), var_8C)
  loc_10FF640: var_8C.Tag = vbNullString
  loc_10FF65A: Set var_88 = Me.Txt
  loc_10FF660: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H20), var_8C)
  loc_10FF668: var_8C.Text = vbNullString
  loc_10FF682: Set var_88 = Me.Txt
  loc_10FF688: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H20), var_8C)
  loc_10FF690: var_8C.Tag = vbNullString
  loc_10FF6AA: Set var_88 = Me.Txt
  loc_10FF6B0: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H1E), var_8C)
  loc_10FF6B8: var_8C.Tag = vbNullString
  loc_10FF6D2: Set var_88 = Me.Txt
  loc_10FF6D8: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H1E), var_8C)
  loc_10FF6E0: var_8C.Text = vbNullString
  loc_10FF6FA: Set var_88 = Me.Txt
  loc_10FF700: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H12), var_8C)
  loc_10FF708: var_8C.Text = vbNullString
  loc_10FF722: Set var_88 = Me.Txt
  loc_10FF728: Call 0.Method_Proc_296_93_10FF7400 (CInt(&H14), var_8C)
  loc_10FF730: var_8C.Text = vbNullString
  loc_10FF73C: Exit Sub
End Sub

Public Sub Proc_296_94_10C1158
  'Data Table: 565884
  Dim var_8C As TextBox
  loc_10C0E6A: Set var_88 = Me.Txt
  loc_10C0E70: Call 0.Method_Proc_296_94_10C11580 (CInt(&HF), var_8C)
  loc_10C0E78: var_8C.Text = vbNullString
  loc_10C0E92: Set var_88 = Me.Txt
  loc_10C0E98: Call 0.Method_Proc_296_94_10C11580 (CInt(&H11), var_8C)
  loc_10C0EA0: var_8C.Text = vbNullString
  loc_10C0EBA: Set var_88 = Me.Txt
  loc_10C0EC0: Call 0.Method_Proc_296_94_10C11580 (CInt(&H19), var_8C)
  loc_10C0EC8: var_8C.Text = vbNullString
  loc_10C0EE2: Set var_88 = Me.Txt
  loc_10C0EE8: Call 0.Method_Proc_296_94_10C11580 (CInt(&H18), var_8C)
  loc_10C0EF0: var_8C.Text = vbNullString
  loc_10C0F0A: Set var_88 = Me.Txt
  loc_10C0F10: Call 0.Method_Proc_296_94_10C11580 (CInt(&H17), var_8C)
  loc_10C0F18: var_8C.Text = vbNullString
  loc_10C0F32: Set var_88 = Me.Txt
  loc_10C0F38: Call 0.Method_Proc_296_94_10C11580 (CInt(&H12), var_8C)
  loc_10C0F40: var_8C.Text = vbNullString
  loc_10C0F5A: Set var_88 = Me.Txt
  loc_10C0F60: Call 0.Method_Proc_296_94_10C11580 (CInt(&H13), var_8C)
  loc_10C0F68: var_8C.Text = vbNullString
  loc_10C0F82: Set var_88 = Me.Txt
  loc_10C0F88: Call 0.Method_Proc_296_94_10C11580 (CInt(&H21), var_8C)
  loc_10C0F90: var_8C.Text = vbNullString
  loc_10C0FAA: Set var_88 = Me.Txt
  loc_10C0FB0: Call 0.Method_Proc_296_94_10C11580 (CInt(&H22), var_8C)
  loc_10C0FB8: var_8C.Text = vbNullString
  loc_10C0FD2: Set var_88 = Me.Txt
  loc_10C0FD8: Call 0.Method_Proc_296_94_10C11580 (CInt(&H14), var_8C)
  loc_10C0FE0: var_8C.Text = vbNullString
  loc_10C0FFA: Set var_88 = Me.Txt
  loc_10C1000: Call 0.Method_Proc_296_94_10C11580 (CInt(3), var_8C)
  loc_10C1008: var_8C.Text = vbNullString
  loc_10C1022: Set var_88 = Me.Txt
  loc_10C1028: Call 0.Method_Proc_296_94_10C11580 (CInt(&H15), var_8C)
  loc_10C1030: var_8C.Text = vbNullString
  loc_10C104A: Set var_88 = Me.Txt
  loc_10C1050: Call 0.Method_Proc_296_94_10C11580 (CInt(&H16), var_8C)
  loc_10C1058: var_8C.Text = vbNullString
  loc_10C1072: Set var_88 = Me.Txt
  loc_10C1078: Call 0.Method_Proc_296_94_10C11580 (CInt(&H1F), var_8C)
  loc_10C1080: var_8C.Text = vbNullString
  loc_10C109A: Set var_88 = Me.Txt
  loc_10C10A0: Call 0.Method_Proc_296_94_10C11580 (CInt(&H1F), var_8C)
  loc_10C10A8: var_8C.Tag = vbNullString
  loc_10C10C2: Set var_88 = Me.Txt
  loc_10C10C8: Call 0.Method_Proc_296_94_10C11580 (CInt(&H20), var_8C)
  loc_10C10D0: var_8C.Text = vbNullString
  loc_10C10EA: Set var_88 = Me.Txt
  loc_10C10F0: Call 0.Method_Proc_296_94_10C11580 (CInt(&H20), var_8C)
  loc_10C10F8: var_8C.Tag = vbNullString
  loc_10C1112: Set var_88 = Me.Txt
  loc_10C1118: Call 0.Method_Proc_296_94_10C11580 (CInt(&H12), var_8C)
  loc_10C1120: var_8C.Text = vbNullString
  loc_10C113A: Set var_88 = Me.Txt
  loc_10C1140: Call 0.Method_Proc_296_94_10C11580 (CInt(&H14), var_8C)
  loc_10C1148: var_8C.Text = vbNullString
  loc_10C1154: Exit Sub
End Sub

Public Sub Proc_296_95_10A8E10
  'Data Table: 565884
  Dim var_90 As Label
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_154 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Long
  Dim var_EC As MSHFlexGrid
  Dim var_F0 As String
  Dim var_15C As Double
  Dim var_110 As Variant
  Dim var_148 As Label
  Dim var_144 As Variant
  Dim var_160 As Label
  loc_10A8B6A: Set var_8C = Me.LTxt
  loc_10A8B70: Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1B), var_90)
  loc_10A8B78: var_90.Caption = vbNullString
  loc_10A8BA9: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A8BBD:   Set var_8C = Me.LTxt
  loc_10A8BC3:   Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1B), var_90)
  loc_10A8BDF:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A8BE4:   var_D8 = 8
  loc_10A8C0A:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A8C29:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A8C47:   Set var_144 = Me.LTxt
  loc_10A8C4D:   Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1B), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A8C55:   var_148.Caption = var_15C
  loc_10A8C7E: Next var_A4 'Integer
  loc_10A8C91: Set var_8C = Me.LTxt
  loc_10A8C97: Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1A), var_90)
  loc_10A8C9F: var_A8 = var_90.Caption
  loc_10A8CBD: Set var_EC = Me.LTxt
  loc_10A8CC3: Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1B), var_144)
  loc_10A8CCB: var_F0 = var_144.Caption
  loc_10A8CF7: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A8D15: Set var_148 = Me.LTxt
  loc_10A8D1B: Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1C), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A8D23: var_160.Caption = 1
  loc_10A8D57: Set var_8C = Me.LTxt
  loc_10A8D5D: Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1B), var_90, var_A8)
  loc_10A8D65: var_15C = var_90.Caption
  loc_10A8D72: var_154 = Val(var_A8)
  loc_10A8D83: Set var_EC = Me.Txt
  loc_10A8D89: Call 0.Method_Proc_296_95_10A8E100 (CInt(&H19), var_144, var_F0)
  loc_10A8DBD: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A8DDB: Set var_148 = Me.LTxt
  loc_10A8DE1: Call 0.Method_Proc_296_95_10A8E100 (CInt(&H1D), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A8DE9: var_160.Caption = 1
  loc_10A8E0F: Exit Sub
End Sub

Public Sub Proc_296_96_10108E8
  'Data Table: 565884
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_10106FD: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1010707:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_101070C:   var_E4 = 1
  loc_1010746:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "MEM") Then
  loc_101074D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010752:     var_E4 = &H18
  loc_1010770:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_101077D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1010782:     var_E4 = 8
  loc_10107B2:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_10107BE:   End If
  loc_10107C1: Next var_B4 'Integer
  loc_10107CE: If (var_94 <> vbNullString) Then
  loc_10107E9:   If (Proc_96_1_F8C534(var_94) = 0) Then
  loc_10107EF:     Proc_96_2_100DE2C(var_94)
  loc_10107F9:     If (CDbl(0) < var_90) Then
  loc_101081D:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_101083A:       Me.Global.Unload Me
  loc_1010844:       var_86 = 0
  loc_101084A:     Else
  loc_101084C:       var_86 = &HFF
  loc_101084F:     End If
  loc_1010852:   Else
  loc_1010860:     If (Proc_96_1_F8C534(var_94, var_9C) = &HFF) Then
  loc_1010866:       Proc_96_2_100DE2C(var_94, var_86)
  loc_101087C:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_10108A0:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_10108BD:         Me.Global.Unload Me
  loc_10108C7:         var_86 = 0
  loc_10108CD:       Else
  loc_10108CF:         var_86 = &HFF
  loc_10108D2:       End If
  loc_10108D5:     Else
  loc_10108D7:       var_86 = &HFF
  loc_10108DA:     End If
  loc_10108DA:   End If
  loc_10108DD: Else
  loc_10108DF:   var_86 = &HFF
  loc_10108E2: End If
  loc_10108E2: Proc_296_96_10108E8 = var_86
End Sub

Public Sub Proc_296_97_125B968
  'Data Table: 565884
  Dim var_B8 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As String
  Dim var_1B8 As Boolean
  Dim var_124 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_90 As Double
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_1DC As String
  Dim var_188 As Variant
  Dim var_22C As Variant
  Dim unk_5658B1 As Connection15
  Dim var_254 As TextBox
  Dim var_25C As TextBox
  Dim var_278 As String
  loc_125B485: For var_CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_CC 'Integer
  loc_125B48F:   var_DC = CVar(CLng(var_88)) 'Long
  loc_125B494:   var_FC = 1
  loc_125B4C1:   var_1B8 = (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "CCAD")
  loc_125B4C9:   var_124 = CVar(CLng(var_88)) 'Long
  loc_125B4DA:   Set var_158 = Me.FGrid
  loc_125B4EB:   var_178 = CVar(CStr(var_158.TextMatrix))) 'String
  loc_125B4F1:   var_188 = Trim(var_178)
  loc_125B524:   If CBool(CVar(CLng(9)) And (var_188 <> vbNullString)) Then
  loc_125B52B:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125B533:     var_FC = CVar(CLng(9)) 'Long
  loc_125B54D:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_125B55A:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125B562:     var_FC = CVar(CLng(&HA)) 'Long
  loc_125B57C:     var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_125B589:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125B58E:     var_FC = 8
  loc_125B5BE:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_125B5CA:   End If
  loc_125B5CD: Next var_CC 'Integer
  loc_125B5DD: var_1DC = 0
  loc_125B60D: var_110 = 0
  loc_125B62C: If (Proc_275_12_130A7A4(2, var_A8, var_94, var_110, 0) = &HFF) Then
  loc_125B637:   If (var_94 <> var_B0) Then
  loc_125B63C:     var_86 = 0
  loc_125B64A:     var_168 = "Smart Card Verification"
  loc_125B660:     MsgBox("Smart Card is changed.", &H10, var_168, var_178, var_188)
  loc_125B670:   End If
  loc_125B677:   If (var_9C >= var_90) Then
  loc_125B698:     Set var_B8 = Me.Txt
  loc_125B69E:     Call 0.Method_Proc_296_97_125B9680 (CInt(1), var_158, var_110, ") BILL NO.- ", "Agnst. (" & global_212, var_86)
  loc_125B6A6:     0 = var_158.Text
  loc_125B6B3:     var_AC = 0 & var_110 & 0 & var_110
  loc_125B6D1:     Proc_6_17_EAA2B0(var_168, CVar(Proc_6_14_EF349C(var_9C)))
  loc_125B6E1:     Proc_6_17_EAA2B0(var_1FC, var_94)
  loc_125B6FB:     var_110 = CStr(var_90)
  loc_125B706:     var_178 = CVar("Update SmartCardRegistration Set LastTransAmt=" & var_110 & ",LastTransDate=") 'String
  loc_125B70C:     var_188 = var_178 & var_168 
  loc_125B720:     var_EC = CVar((var_9C - var_90)) 'Double
  loc_125B747:     var_22C = var_188 & ",CurrBal=" & "Smart Card Verification" & " Where Code=" & var_1FC & " And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_125B75E:     unk_5658B1.Execute CStr(var_22C & "'"), var_24C, -1
  loc_125B79A:     Set var_B8 = Me.Txt
  loc_125B7A0:     Call 0.Method_Proc_296_97_125B9680 (CInt(0), var_158, var_110)
  loc_125B7A8:     var_B8 = var_158.Text
  loc_125B7BB:     Set var_250 = Me.Txt
  loc_125B7C1:     Call 0.Method_Proc_296_97_125B9680 (CInt(1), var_254)
  loc_125B7EE:     Set var_258 = Me.Txt
  loc_125B7F4:     Call 0.Method_Proc_296_97_125B9680 (CInt(2), var_25C)
  loc_125B80F:     var_288 = "CARDEXP"
  loc_125B818:     var_284 = "A"
  loc_125B821:     var_278 = Proc_6_14_EF349C(var_A4)
  loc_125B86F:     Proc_275_16_10AF42C(MemVar_1F92044, var_110, 1, global_116, CLng(var_254.Text), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_25C.Text))
  loc_125B8AE:     If (Proc_275_7_10CC664((var_9C - var_90), var_A4, var_A8, var_94, var_A8, CDbl(0)) = &HFF) Then
  loc_125B8B3:       var_86 = &HFF
  loc_125B8B9:     Else
  loc_125B8BB:       var_86 = 0
  loc_125B8DF:       MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125B8EF:     End If
  loc_125B8F2:   Else
  loc_125B8F4:     var_86 = 0
  loc_125B918:     MsgBox("Insufficient Smart Card Balance.", &H10, "Smart Card Verification", var_178, var_188)
  loc_125B928:   End If
  loc_125B92B: Else
  loc_125B92D:   var_86 = 0
  loc_125B951:   MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125B961: End If
  loc_125B961: Proc_296_97_125B968 = var_86
End Sub

Public Sub Proc_296_98_F68310
  'Data Table: 565884
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_F6820D: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_BC 'Integer
  loc_F68217:   var_CC = CVar(CLng(var_88)) 'Long
  loc_F6821C:   var_EC = 1
  loc_F68256:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "CCAD") Then
  loc_F6825D:     var_CC = CVar(CLng(var_88)) 'Long
  loc_F68262:     var_EC = 8
  loc_F68292:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F6829E:   End If
  loc_F682A1: Next var_BC 'Integer
  loc_F682B7: If (Proc_275_8_10BE7C4(var_98, var_A0) = &HFF) Then
  loc_F682C1:   If (var_98 < var_90) Then
  loc_F682E5:     MsgBox("Insufficient Cash Card Balance.", &H40, "Cash Card Detail", var_12C, var_13C)
  loc_F682F7:     var_86 = 0
  loc_F682FD:   Else
  loc_F682FF:     var_86 = &HFF
  loc_F68302:   End If
  loc_F68305: Else
  loc_F68307:   var_86 = 0
  loc_F6830A: End If
  loc_F6830A: Proc_296_98_F68310 = var_86
End Sub

Public Sub Proc_296_99_142F40C
  'Data Table: 565884
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_142E95F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E964: var_C8 = 1
  loc_142E99B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_142E9A2:   Set var_F4 = Me.FGrid
  loc_142E9E2:   Set var_DC = Me.Txt
  loc_142E9E8:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_142E9F0:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142EA1B:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EA20:   var_C8 = 2
  loc_142EA66:   var_C8 = 3
  loc_142EA8B:   Set var_DC = Me.Txt
  loc_142EA91:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_142EA99:   var_F8.Text = var_C8
  loc_142EAC4:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EAC9:   var_C8 = 4
  loc_142EAE6:   global_152 = CStr(var_F4.TextMatrix))
  loc_142EB0A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EB0F:   var_C8 = 5
  loc_142EB2C:   global_156 = CStr(var_F4.TextMatrix))
  loc_142EB50:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EB79:   Set var_DC = Me.Txt
  loc_142EB7F:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_142EB87:   var_F8.Tag = var_A8
  loc_142EBB2:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142EBBA:   var_C8 = CVar(CLng(7)) 'Long
  loc_142EBF1:   var_158 = var_F4.TextMatrix)
  loc_142EC01:   Set var_F8 = Me.FGrid
  loc_142EC5F:   Set var_1FC = Me.Txt
  loc_142EC65:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H10), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_142EC6D:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_142ECB5:   var_C8 = 8
  loc_142ECC1:   var_EC = var_F4.TextMatrix)
  loc_142ECDA:   Set var_DC = Me.Txt
  loc_142ECE0:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H11), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_142ECE8:   var_F8.Text = var_C8
  loc_142ED0B:   If (CStr(var_F4.TextMatrix)) = "Cash Card") Then
  loc_142ED21:     var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142ED4A:     Set var_DC = Me.Txt
  loc_142ED50:     Call 0.Method_Proc_296_99_142F40C0 (CInt(&H21), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_142ED58:     var_F8.Text = var_A8
  loc_142EDAC:     Set var_DC = Me.Txt
  loc_142EDB2:     Call 0.Method_Proc_296_99_142F40C0 (CInt(&H22), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_142EDBA:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EDD5:   Else
  loc_142EE11:     Set var_DC = Me.Txt
  loc_142EE17:     Call 0.Method_Proc_296_99_142F40C0 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_142EE1F:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EE73:     Set var_DC = Me.Txt
  loc_142EE79:     Call 0.Method_Proc_296_99_142F40C0 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_142EE81:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EE99:   End If
  loc_142EED5:   Set var_DC = Me.Txt
  loc_142EEDB:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_142EEE3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EF38:   Set var_DC = Me.Txt
  loc_142EF3E:   Call 0.Method_Proc_296_99_142F40C0 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_142EF46:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EF9A:   Set var_DC = Me.Txt
  loc_142EFA0:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_142EFA8:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142EFFC:   Set var_DC = Me.Txt
  loc_142F002:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_142F00A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F05E:   Set var_DC = Me.Txt
  loc_142F064:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_142F06C:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F0C0:   Set var_DC = Me.Txt
  loc_142F0C6:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_142F0CE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F122:   Set var_DC = Me.Txt
  loc_142F128:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_142F130:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F185:   Set var_DC = Me.Txt
  loc_142F18B:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_142F193:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F1E8:   Set var_DC = Me.Txt
  loc_142F1EE:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_142F1F6:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F24B:   Set var_DC = Me.Txt
  loc_142F251:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_142F259:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F2AE:   Set var_DC = Me.Txt
  loc_142F2B4:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_142F2BC:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F311:   Set var_DC = Me.Txt
  loc_142F317:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_142F31F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F374:   Set var_DC = Me.Txt
  loc_142F37A:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_142F382:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_142F3D7:   Set var_DC = Me.Txt
  loc_142F3DD:   Call 0.Method_Proc_296_99_142F40C0 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_142F3E5:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_142F402:   global_172 = &HFF
  loc_142F407:   Set var_F4 = Nothing 
  loc_142F40B: End If
  loc_142F40B: Exit Sub
End Sub

Public Sub Proc_296_100_EE69B8
  'Data Table: 565884
  loc_EE6906: On Error Goto loc_EE694C
  loc_EE691E: Call 0.Method_arg_18C (var_8C)
  loc_EE6926: Call var_8C.Show
  loc_EE693B: Call 0.Method_arg_188 (var_B0)
  loc_EE6943: var_88 = var_B0
  loc_EE6946: Proc_296_100_EE69B8 = 1
  loc_EE694C: ' Referenced from: EE6906
  loc_EE6954: Set var_8C = Err()
  loc_EE695A: Call 0.Method_arg_1C (var_B4)
  loc_EE696B: If (var_B4 <> 0) Then
  loc_EE6976:   Set var_8C = Err()
  loc_EE697C:   Call 0.Method_arg_2C (var_B0)
  loc_EE699D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE69B0: End If
  loc_EE69B0: Proc_296_100_EE69B8 = 
End Sub

Public Sub Proc_296_101_122BE4C
  'Data Table: 565884
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim Me As Variant
  Dim var_144 As Variant
  Dim var_110 As Variant
  loc_122B93E: var_D0 = False
  loc_122B956: ).Visible = 0
  loc_122B95D: var_D0 = False
  loc_122B975: ).Visible = 0
  loc_122B98D: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_122B993:   var_C0 = False
  loc_122B9AC:   ).Visible = var_9E
  loc_122B9D3:   Me..Txt.Unload )
  loc_122B9E1: Next var_F4 'Integer
  loc_122B9F7: For var_FC = 1 To CInt(Me.UBound): var_9E = var_FC 'Integer
  loc_122B9FD:   var_C0 = False
  loc_122BA16:   ).Visible = var_9E
  loc_122BA3D:   Me..Txt.Unload )
  loc_122BA4B: Next var_FC 'Integer
  loc_122BA5E: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_122BA65: Proc_6_39_E7C810(var_110)
  loc_122BA7C: If (var_110 > 0) Then
  loc_122BA85:   var_96 = (arg_18 + 1)
  loc_122BA8A:   var_98 = 0
  loc_122BA8F:   var_9A = 0
  loc_122BAAC:   Proc_6_39_E7C810(var_110, CVar(Me.Recordset15.RecordCount), var_9C, 1)
  loc_122BABC:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_122BAD6:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_122BAD9:       GoTo loc_122BE44
  loc_122BADC:     End If
  loc_122BAFC:     Me.Global.Load )
  loc_122BB1B:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_122BB24:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122BB41:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_122BB58:       var_144 = (var_D0 + ).height)
  loc_122BB71:       ).top = var_9C
  loc_122BB8A:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122BB9B:       var_110 = ).left
  loc_122BBB6:       ).left = var_9C
  loc_122BBDB:       ).Visible = var_9C
  loc_122BBE5:       var_B0 = "Name"
  loc_122BC0A:       var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).top)) 'String
  loc_122BC22:       ).CAPTION = var_9C
  loc_122BC35:       var_B0 = "Code"
  loc_122BC5A:       var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_9C)) 'String
  loc_122BC72:       ).Tag = var_9C
  loc_122BC8D:       If (var_9C = (arg_18 * arg_10)) Then
  loc_122BCA2:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_122BCA6:         Exit For
  loc_122BCA9:       End If
  loc_122BCAC:     Else
  loc_122BCB7:       If ((var_9C Mod var_96) = var_98) Then
  loc_122BCC1:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122BCDF:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_122BCF6:         var_144 = (var_D0 + ).width)
  loc_122BD0F:         ).left = var_9C
  loc_122BD29:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122BD3A:         var_110 = ).top
  loc_122BD55:         ).top = var_9C
  loc_122BD7A:         ).Visible = var_9C
  loc_122BD84:         var_B0 = "Name"
  loc_122BDA9:         var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).left)) 'String
  loc_122BDC1:         ).CAPTION = var_9C
  loc_122BDD4:         var_B0 = "Code"
  loc_122BDF9:         var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_110)) 'String
  loc_122BE11:         ).Tag = var_9C
  loc_122BE27:         var_9A = (var_9A + 1)
  loc_122BE31:         var_98 = (var_96 - var_9A)
  loc_122BE34:       End If
  loc_122BE34:     End If
  loc_122BE37:     Me.MoveNext
  loc_122BE3F:   Next var_124 'Integer
  loc_122BE44:   ' Referenced from: 122BCA6
  loc_122BE44:   ' Referenced from: 122BAD9
  loc_122BE44: End If
  loc_122BE44: Proc_296_101_122BE4C = 
End Sub

Public Sub Proc_296_102_F12F70(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F12F70
  'Data Table: 565884
  Dim Me As Recordset15
  loc_F12E84: If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_F12E92:   If (arg_10 > (arg_14 * arg_18)) Then
  loc_F12EB3:     Me.Recordset15.AbsolutePosition = CLng((((arg_10 - (arg_10 Mod (arg_14 * arg_18))) - (arg_14 * arg_18)) + 1))
  loc_F12ECA:     Call Proc_296_101_122BE4C(arg_1C, arg_14, arg_C)
  loc_F12ED2:   End If
  loc_F12ED5: Else
  loc_F12EFE:   If ((Me.AbsolutePosition <> -2) And (Me.Recordset15.AbsolutePosition <> -3)) Then
  loc_F12F18:     If (Me.Recordset15.AbsolutePosition = CLng((arg_14 * arg_18))) Then
  loc_F12F23:       Me.Recordset15.AbsolutePosition = 1
  loc_F12F2B:     Else
  loc_F12F4E:       Me.Recordset15.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * (arg_14 * arg_18)))) + 1)
  loc_F12F53:     End If
  loc_F12F65:     Call Proc_296_101_122BE4C(arg_1C, arg_14, arg_C, arg_18, arg_1C)
  loc_F12F6D:   End If
  loc_F12F6D: End If
  loc_F12F6D: Exit Sub
End Sub

Public Sub Proc_296_103_EB1C9C
  'Data Table: 565884
  Dim Me As Recordset15
  loc_EB1C25: If ((Me.Recordset15.AbsolutePosition <> -2) And (Me.Recordset15.AbsolutePosition <> -3)) Then
  loc_EB1C2F:   Me.Enabled = True
  loc_EB1C3A:   Me.Enabled = True
  loc_EB1C3E: End If
  loc_EB1C50: If (Me.AbsolutePosition = CLng(&H12)) Then
  loc_EB1C5A:   Me.Enabled = True
  loc_EB1C66:   Me.Enabled = False
  loc_EB1C6A: End If
  loc_EB1C7E: If (Me.AbsolutePosition = -3) Then
  loc_EB1C89:   Me.Enabled = False
  loc_EB1C94:   Me.Enabled = True
  loc_EB1C98: End If
  loc_EB1C98: Exit Sub
End Sub

Public Sub Proc_296_104_105B9F0
  'Data Table: 565884
  Dim var_88 As Variant
  loc_105B788: ReDim Preserve global_196(0 To 1)
  loc_105B7A2: ReDim Preserve global_200(0 To 1)
  loc_105B7BA: global_196(1) = "Amount"
  loc_105B7C6: Set var_88 = Me.LTxt
  loc_105B7CC: Call 0.Method_Proc_296_104_105B9F00 (CInt(&H1C))
  loc_105B807: global_200(1) = CStr(Format(CVar(var_8C), "0.00"))
  loc_105B81D: var_D4 = global_160
  loc_105B828: If (var_D4 = "Credit Card") Then
  loc_105B836:   If (global_216 = "Y") Then
  loc_105B849:     ReDim Preserve global_196(0 To 4)
  loc_105B863:     ReDim Preserve global_200(0 To 4)
  loc_105B87B:     global_196(2) = "Credit Card No"
  loc_105B88A:     global_196(3) = "Expiry Date"
  loc_105B899:     global_196(4) = "Batch No"
  loc_105B89A:   End If
  loc_105B89D: Else
  loc_105B8A5:   If Not (var_D4 = "Cash") Then
  loc_105B8B0:     If Not (var_D4 = "Hold") Then
  loc_105B8BB:       If (var_D4 = "Complementary") Then
  loc_105B8BE:       End If
  loc_105B8BE:     End If
  loc_105B8C1:   Else
  loc_105B8C9:     If (var_D4 = "Cash Card") Then
  loc_105B8CC:       GoTo loc_105B9A7
  loc_105B8CF:     End If
  loc_105B8D7:     If (var_D4 = "Staff") Then
  loc_105B8DA:       GoTo loc_105B9A7
  loc_105B8DD:     End If
  loc_105B8E5:     If Not (var_D4 = "Company") Then
  loc_105B8F0:       If (var_D4 = "Member") Then
  loc_105B8F3:       End If
  loc_105B8F6:     Else
  loc_105B8FE:       If (var_D4 = "Cheque") Then
  loc_105B911:         ReDim Preserve global_196(0 To 3)
  loc_105B92B:         ReDim Preserve global_200(0 To 3)
  loc_105B943:         global_196(2) = "Cheque Date"
  loc_105B952:         global_196(3) = "Cheque No"
  loc_105B956:       Else
  loc_105B95E:         If (var_D4 = "Room") Then
  loc_105B961:           GoTo loc_105B9A7
  loc_105B964:         End If
  loc_105B974:         ReDim Preserve global_196(0 To 2)
  loc_105B98E:         ReDim Preserve global_200(0 To 2)
  loc_105B9A6:         global_196(2) = "Narration"
  loc_105B9A7:         ' Referenced from:         105B961
  loc_105B9A7:       End If
  loc_105B9A7:     End If
  loc_105B9A7:     ' Referenced from:     105B8DA
  loc_105B9A7:     ' Referenced from:     105B8CC
  loc_105B9A7:   End If
  loc_105B9A7: End If
  loc_105B9B2: If (global_160 = vbNullString) Then
  loc_105B9C1:   Me.FrameQty.Visible = False
  loc_105B9CC: Else
  loc_105B9DD:   Me.LblIndex.Caption = CStr(1)
  loc_105B9E8:   Call Proc_296_105_FA54E0(1, 1)
  loc_105B9ED: End If
  loc_105B9ED: Exit Sub
End Sub

Public Sub Proc_296_105_FA54E0
  'Data Table: 565884
  Dim var_90 As Variant
  loc_FA53A9: If ((CDbl(Val(Me.LblIndex.Caption)) > CDbl(0)) And (CDbl(Val(Me.LblIndex.Caption)) <= CDbl(UBound(global_196, 1)))) Then
  loc_FA53B8:   Me.FrameAmtType.Visible = False
  loc_FA53CC:   Me.FrameQty.Visible = True
  loc_FA53FB:   Me.LblVtype.Caption = global_196(CLng(Me.LblIndex.Caption))
  loc_FA5431:   Me.TxtQty.Text = global_200(CLng(Me.LblIndex.Caption))
  loc_FA5443: Else
  loc_FA5477:   Set var_90 = Me.SSPItem
  loc_FA547D:   Call 0.Method_Proc_296_105_FA54E0C (var_96)
  loc_FA5493:   If ((CDbl(Val(Me.LblIndex.Caption)) = CDbl((UBound(global_196, 1) + 1))) And (var_96 <= 1)) Then
  loc_FA5496:     Call Proc_296_92_15341E4()
  loc_FA549B:   End If
  loc_FA54A7:   Me.FrameQty.Visible = False
  loc_FA54BB:   Me.FrameAmtType.Visible = True
  loc_FA54D4:   Me.LblIndex.Caption = CStr(0)
  loc_FA54DF: End If
  loc_FA54DF: Exit Sub
End Sub
