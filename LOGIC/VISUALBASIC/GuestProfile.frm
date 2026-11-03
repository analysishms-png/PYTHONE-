VERSION 5.00
Begin VB.Form GuestProfile
  Caption = "Guest Profile"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12195
  ClientHeight = 9435
  LockControls = -1  'True
  Begin CommandButton btnWebProfile
    Caption = "Web Profile"
    BackColor = &HFF8080&
    Left = 11625
    Top = 60
    Width = 1440
    Height = 375
    TabIndex = 205
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    WhatsThisHelpID = 1
    MaskColor = &HFF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin CommandButton CmdDummyGuestProf
    Caption = "Dummy Guest Profile"
    BackColor = &HFF&
    Left = 13080
    Top = 60
    Width = 2145
    Height = 375
    TabIndex = 196
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &HFF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin CommandButton btnAddGuestProf
    Caption = "Add Guest Profile"
    BackColor = &HC0FFC0&
    Left = 9480
    Top = 60
    Width = 2145
    Height = 375
    TabIndex = 190
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    WhatsThisHelpID = 1
    MaskColor = &HFF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12195
    Height = 450
    TabIndex = 202
  End
  Begin CommandButton Command1
    Caption = "Update"
    Left = 13785
    Top = 1740
    Width = 735
    Height = 855
    Visible = 0   'False
    TabIndex = 192
  End
  Begin Frame FrameFor
    Caption = "Frame1"
    BackColor = &HC0FFC0&
    Left = 9645
    Top = 6270
    Width = 11505
    Height = 7260
    Visible = 0   'False
    TabIndex = 93
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 72
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 1335
      Width = 1305
      Height = 255
      TabIndex = 183
      BorderStyle = 0 'None
      MaxLength = 11
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
    Begin CommandButton Cmd
      Caption = "Ca&ncel"
      Index = 8
      Left = 6870
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 76
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
    Begin CommandButton Cmd
      Caption = "&Edit"
      Index = 7
      Left = 2550
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 73
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
    Begin CommandButton Cmd
      Caption = "&Add"
      Index = 6
      Left = 1110
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 72
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
    Begin CommandButton Cmd
      Caption = "Print Form C"
      Index = 5
      Left = 9750
      Top = 6525
      Width = 1425
      Height = 375
      Visible = 0   'False
      TabIndex = 78
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
    Begin CommandButton Cmd
      Caption = "&Close"
      Index = 4
      Left = 8310
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 77
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
    Begin CommandButton Cmd
      Caption = "&Delete"
      Index = 2
      Left = 3990
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 74
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
    Begin CommandButton Cmd
      Caption = "Con&firm"
      Index = 3
      Left = 5430
      Top = 6525
      Width = 1425
      Height = 375
      TabIndex = 75
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
    Begin CommandButton Cmd
      Caption = "<"
      Index = 0
      Left = 1365
      Top = 885
      Width = 300
      Height = 360
      TabIndex = 182
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton Cmd
      Caption = ">"
      Index = 1
      Left = 1665
      Top = 885
      Width = 300
      Height = 360
      TabIndex = 181
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 71
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 930
      Width = 360
      Height = 270
      Enabled = 0   'False
      Text = "1"
      TabIndex = 180
      BorderStyle = 0 'None
      Alignment = 2 'Center
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
      Index = 9
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 5640
      Width = 2505
      Height = 270
      TabIndex = 71
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
      Index = 14
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 5640
      Width = 2970
      Height = 585
      TabIndex = 63
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 100
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
      Index = 15
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 5370
      Width = 1605
      Height = 255
      TabIndex = 70
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
    Begin TextBox Txt
      Index = 64
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4560
      Width = 1605
      Height = 255
      TabIndex = 59
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 44
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 5100
      Width = 2265
      Height = 255
      TabIndex = 61
      BorderStyle = 0 'None
      MaxLength = 10
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
      Index = 45
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 5370
      Width = 2265
      Height = 255
      TabIndex = 62
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
    Begin TextBox Txt
      Index = 46
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4830
      Width = 1020
      Height = 255
      TabIndex = 60
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
      Index = 47
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4020
      Width = 2265
      Height = 255
      TabIndex = 57
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 48
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 4290
      Width = 2265
      Height = 255
      TabIndex = 58
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
      Index = 49
      BackColor = &HFFFFFF&
      Left = 3480
      Top = 3750
      Width = 2265
      Height = 255
      TabIndex = 56
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
    Begin TextBox Txt
      Index = 50
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4830
      Width = 1605
      Height = 255
      TabIndex = 68
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 51
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4290
      Width = 1605
      Height = 255
      TabIndex = 66
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 52
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 5100
      Width = 1605
      Height = 255
      TabIndex = 69
      BorderStyle = 0 'None
      MaxLength = 10
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
      Index = 53
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4020
      Width = 2475
      Height = 255
      TabIndex = 65
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
    Begin TextBox Txt
      Index = 54
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 4560
      Width = 2475
      Height = 255
      TabIndex = 67
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
      Index = 55
      BackColor = &HFFFFFF&
      Left = 8040
      Top = 3750
      Width = 1605
      Height = 255
      TabIndex = 64
      BorderStyle = 0 'None
      MaxLength = 10
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
      Index = 56
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 2685
      Width = 2520
      Height = 255
      TabIndex = 54
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
      Index = 57
      BackColor = &HFFFFFF&
      Left = 4410
      Top = 2955
      Width = 4245
      Height = 255
      TabIndex = 55
      BorderStyle = 0 'None
      MaxLength = 40
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
      Index = 58
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 2145
      Width = 2520
      Height = 255
      TabIndex = 51
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
      Left = 5250
      Top = 2685
      Width = 1305
      Height = 255
      TabIndex = 53
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 43
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 1875
      Width = 2520
      Height = 255
      TabIndex = 50
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
      Index = 42
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 2415
      Width = 2520
      Height = 255
      TabIndex = 52
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
      Index = 41
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 2685
      Width = 1650
      Height = 255
      TabIndex = 48
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
    Begin TextBox Txt
      Index = 40
      BackColor = &HFFFFFF&
      Left = 7995
      Top = 1605
      Width = 2520
      Height = 255
      TabIndex = 49
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
      Index = 39
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 1875
      Width = 3735
      Height = 255
      TabIndex = 45
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
      Index = 38
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 2145
      Width = 3735
      Height = 255
      TabIndex = 46
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
      Index = 37
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 2415
      Width = 3225
      Height = 255
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 30
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
      Index = 36
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 1605
      Width = 3735
      Height = 255
      TabIndex = 44
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
    Begin MSHFlexGrid FGrid
      Left = 435
      Top = 7095
      Width = 10155
      Height = 1275
      Visible = 0   'False
      TabIndex = 179
    End
    Begin Label LabelPass
      Caption = "Passport / Visa Details"
      Left = 4125
      Top = 345
      Width = 4065
      Height = 465
      TabIndex = 185
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Serial No."
      Index = 37
      ForeColor = &H0&
      Left = 435
      Top = 1350
      Width = 840
      Height = 240
      TabIndex = 184
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
      Caption = "Issuing Authority"
      Index = 25
      ForeColor = &H0&
      Left = 6555
      Top = 5640
      Width = 1425
      Height = 240
      TabIndex = 148
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
      Caption = "Extension"
      Index = 24
      ForeColor = &H0&
      Left = 435
      Top = 5715
      Width = 810
      Height = 240
      TabIndex = 147
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
      Caption = "Work Permit No."
      Index = 23
      ForeColor = &H0&
      Left = 6555
      Top = 5370
      Width = 1410
      Height = 240
      TabIndex = 146
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
      Caption = "Expiry Date"
      Index = 20
      ForeColor = &H0&
      Left = 435
      Top = 4530
      Width = 960
      Height = 240
      TabIndex = 145
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
      Caption = "Mode of travel to be used"
      Index = 68
      ForeColor = &H0&
      Left = 435
      Top = 5370
      Width = 2190
      Height = 240
      TabIndex = 118
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
      Caption = "Issue Place"
      Index = 67
      ForeColor = &H0&
      Left = 435
      Top = 4290
      Width = 960
      Height = 240
      TabIndex = 117
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
      Caption = "Expiry Date"
      Index = 66
      ForeColor = &H0&
      Left = 6555
      Top = 4830
      Width = 960
      Height = 240
      TabIndex = 116
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
      Caption = "Issue Date"
      Index = 65
      ForeColor = &H0&
      Left = 6555
      Top = 4290
      Width = 900
      Height = 240
      TabIndex = 115
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
      Caption = "Duration of visa"
      Index = 64
      ForeColor = &H0&
      Left = 6555
      Top = 5100
      Width = 1335
      Height = 240
      TabIndex = 114
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
      Caption = "Visa No."
      Index = 63
      ForeColor = &H0&
      Left = 6555
      Top = 4020
      Width = 705
      Height = 240
      TabIndex = 113
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
      Caption = "Issue Place"
      Index = 62
      ForeColor = &H0&
      Left = 6555
      Top = 4560
      Width = 960
      Height = 240
      TabIndex = 112
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
      Caption = "Proposed duration of stay in India"
      Index = 61
      ForeColor = &H0&
      Left = 435
      Top = 5100
      Width = 2880
      Height = 240
      TabIndex = 111
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
      Caption = "Visa Type"
      Index = 60
      ForeColor = &H0&
      Left = 6555
      Top = 3750
      Width = 840
      Height = 240
      TabIndex = 110
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
      Caption = "Issue Date"
      Index = 59
      ForeColor = &H0&
      Left = 435
      Top = 4020
      Width = 900
      Height = 240
      TabIndex = 109
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
      Caption = "Age"
      Index = 58
      ForeColor = &H0&
      Left = 435
      Top = 4830
      Width = 330
      Height = 240
      TabIndex = 108
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
      Caption = "Passport No."
      Index = 57
      ForeColor = &H0&
      Left = 435
      Top = 3750
      Width = 1080
      Height = 240
      TabIndex = 107
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
      Caption = "Visa Details"
      Index = 56
      ForeColor = &H0&
      Left = 6555
      Top = 3435
      Width = 1125
      Height = 240
      TabIndex = 106
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Passport Details"
      Index = 55
      ForeColor = &H0&
      Left = 435
      Top = 3435
      Width = 1590
      Height = 240
      TabIndex = 105
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Line Line1
      BorderColor = &H0&
      X1 = 390
      Y1 = 3330
      X2 = 10740
      Y2 = 3330
      BorderWidth = 2
    End
    Begin Label Lbl
      Caption = "Arr.From"
      Index = 54
      ForeColor = &H0&
      Left = 7035
      Top = 2685
      Width = 780
      Height = 240
      TabIndex = 104
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
      Caption = "Address in India (Other than Tourist)"
      Index = 53
      ForeColor = &H0&
      Left = 1035
      Top = 2955
      Width = 3165
      Height = 240
      TabIndex = 103
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
      Caption = "Mode of Travel"
      Index = 52
      ForeColor = &H0&
      Left = 6570
      Top = 2145
      Width = 1290
      Height = 240
      TabIndex = 102
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
      Caption = "Date of Arrv.India"
      Index = 30
      ForeColor = &H0&
      Left = 3675
      Top = 2685
      Width = 1515
      Height = 240
      TabIndex = 101
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
      Caption = "Destination"
      Index = 35
      ForeColor = &H0&
      Left = 6570
      Top = 1875
      Width = 945
      Height = 240
      TabIndex = 100
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
      Caption = "Purpose of Visit"
      Index = 34
      ForeColor = &H0&
      Left = 6570
      Top = 2415
      Width = 1335
      Height = 240
      TabIndex = 99
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
      Caption = "Occupation"
      Index = 33
      ForeColor = &H0&
      Left = 435
      Top = 2685
      Width = 945
      Height = 240
      TabIndex = 98
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
      Caption = "ArrivingFrom"
      Index = 32
      ForeColor = &H0&
      Left = 6570
      Top = 1605
      Width = 1110
      Height = 240
      TabIndex = 97
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
      Caption = "Address"
      Index = 31
      ForeColor = &H0&
      Left = 435
      Top = 1875
      Width = 690
      Height = 240
      TabIndex = 96
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
      Caption = "Nationality"
      Index = 29
      ForeColor = &H0&
      Left = 435
      Top = 2415
      Width = 885
      Height = 240
      TabIndex = 95
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
      Caption = "Name"
      Index = 27
      ForeColor = &H0&
      Left = 435
      Top = 1620
      Width = 495
      Height = 240
      TabIndex = 94
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
  End
  Begin Frame FrmFind
    Caption = "Frame1"
    Left = 1590
    Top = 8100
    Width = 11610
    Height = 2145
    Visible = 0   'False
    TabIndex = 149
    BorderStyle = 0 'None
    Begin CommandButton cmdClose
      Caption = "&Close"
      Left = 6465
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 150
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
    Begin CommandButton cmdFind
      Caption = "&Find"
      Left = 5385
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 163
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H8000000F&
    End
    Begin DataCombo TXT_GNAME
      Left = 2790
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 157
    End
    Begin DataCombo TXT_CITY
      Left = 7275
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 158
    End
    Begin DataCombo TXT_STATE
      Left = 2790
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 159
    End
    Begin DataCombo TXT_COUNTRY
      Left = 2790
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 160
    End
    Begin DataCombo TXT_TYPE
      Left = 7275
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 162
    End
    Begin DataCombo TXT_NATION
      Left = 7275
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 161
    End
    Begin DataCombo TXT_FOLIONO
      Left = 2790
      Top = 90
      Width = 2985
      Height = 315
      TabIndex = 194
    End
    Begin Label Lbl
      Caption = "Folio No."
      Index = 40
      ForeColor = &H0&
      Left = 1875
      Top = 135
      Width = 750
      Height = 240
      TabIndex = 195
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
      Caption = "Name"
      Index = 81
      ForeColor = &H0&
      Left = 1875
      Top = 450
      Width = 495
      Height = 240
      TabIndex = 156
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
      Caption = "Nationality"
      Index = 80
      ForeColor = &H0&
      Left = 5955
      Top = 795
      Width = 885
      Height = 240
      TabIndex = 155
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
      Caption = "City"
      Index = 79
      ForeColor = &H0&
      Left = 5955
      Top = 495
      Width = 315
      Height = 240
      TabIndex = 154
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
      Caption = "Country"
      Index = 78
      ForeColor = &H0&
      Left = 1875
      Top = 1110
      Width = 660
      Height = 240
      TabIndex = 153
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
      Caption = "State"
      Index = 77
      ForeColor = &H0&
      Left = 1875
      Top = 780
      Width = 450
      Height = 240
      TabIndex = 152
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
      Caption = "Country Type"
      Index = 75
      ForeColor = &H0&
      Left = 5955
      Top = 1125
      Width = 1140
      Height = 240
      TabIndex = 151
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
  End
  Begin Frame FrmList1
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 16230
    Top = 2145
    Width = 1800
    Height = 2595
    Visible = 0   'False
    TabIndex = 177
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView1
      Left = 30
      Top = 30
      Width = 1725
      Height = 2520
      TabIndex = 178
    End
  End
  Begin TextBox Txt
    Index = 70
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 495
    Width = 840
    Height = 285
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 69
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 5220
    Width = 3315
    Height = 285
    TabIndex = 21
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
  Begin TextBox Txt
    Index = 68
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4230
    Top = 4905
    Width = 600
    Height = 285
    TabIndex = 193
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
  Begin DataGrid DGGuestStatus
    Left = 6510
    Top = 7455
    Width = 4980
    Height = 2280
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 165
  End
  Begin DataGrid DGCity
    Left = 6570
    Top = 6810
    Width = 4980
    Height = 3135
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 169
  End
  Begin Frame FrmList
    Left = 13830
    Top = 3705
    Width = 2340
    Height = 1995
    Visible = 0   'False
    TabIndex = 166
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = -30
      Top = -15
      Width = 2325
      Height = 1965
      TabStop = 0   'False
      TabIndex = 167
    End
  End
  Begin DataGrid DGState
    Left = 6510
    Top = 6390
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 124
  End
  Begin DataGrid DGNationality
    Left = 7020
    Top = 7290
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 123
  End
  Begin DataGrid DGZipCode
    Left = 7080
    Top = 6270
    Width = 3615
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 164
  End
  Begin SSTab SSTab1
    Left = 6255
    Top = 2760
    Width = 5475
    Height = 2880
    TabIndex = 126
    Begin TextBox Txt
      Index = 8
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 345
      Width = 5130
      Height = 2490
      TabIndex = 201
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
      Left = -74910
      Top = 1920
      Width = 5145
      Height = 285
      TabIndex = 32
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
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 2235
      Width = 5145
      Height = 285
      TabIndex = 33
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
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 2550
      Width = 5145
      Height = 285
      Enabled = 0   'False
      TabIndex = 34
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
    Begin TextBox Txt
      Index = 26
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 975
      Width = 5145
      Height = 285
      TabIndex = 29
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
    Begin TextBox Txt
      Index = 27
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 660
      Width = 5145
      Height = 285
      TabIndex = 28
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
    Begin TextBox Txt
      Index = 29
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 345
      Width = 5145
      Height = 285
      TabIndex = 27
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
    Begin TextBox Txt
      Index = 63
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 1290
      Width = 5145
      Height = 285
      TabIndex = 30
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
    Begin TextBox Txt
      Index = 62
      BackColor = &HFFFFFF&
      Left = -74910
      Top = 1605
      Width = 5145
      Height = 285
      TabIndex = 31
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
    Begin TextBox Txt
      Index = 61
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1920
      Width = 5145
      Height = 285
      TabIndex = 41
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
    Begin TextBox Txt
      Index = 60
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 2235
      Width = 5145
      Height = 285
      TabIndex = 42
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
    Begin TextBox Txt
      Index = 59
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 2550
      Width = 5145
      Height = 285
      TabIndex = 43
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
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1605
      Width = 5145
      Height = 285
      TabIndex = 40
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
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1290
      Width = 5145
      Height = 285
      TabIndex = 39
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
    Begin TextBox Txt
      Index = 33
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 975
      Width = 5145
      Height = 285
      TabIndex = 38
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
    Begin TextBox Txt
      Index = 34
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 660
      Width = 5145
      Height = 285
      TabIndex = 37
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
    Begin TextBox Txt
      Index = 35
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 345
      Width = 5145
      Height = 285
      TabIndex = 36
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
    Begin Label LblT1Field2
      ForeColor = &H0&
      Left = 105
      Top = 945
      Width = 45
      Height = 240
      TabIndex = 142
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
    Begin Label LblT2Field7
      ForeColor = &H0&
      Left = -74895
      Top = 2310
      Width = 45
      Height = 240
      TabIndex = 141
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
    Begin Label LblT2Field6
      ForeColor = &H0&
      Left = -74895
      Top = 2040
      Width = 45
      Height = 240
      TabIndex = 140
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
    Begin Label LblT2Field8
      ForeColor = &H0&
      Left = -74895
      Top = 2580
      Width = 45
      Height = 240
      TabIndex = 139
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
    Begin Label LblT2Field4
      ForeColor = &H0&
      Left = -74895
      Top = 1485
      Width = 45
      Height = 240
      TabIndex = 138
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
    Begin Label LblT2Field1
      ForeColor = &H0&
      Left = -74895
      Top = 675
      Width = 45
      Height = 240
      TabIndex = 137
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
    Begin Label LblT2Field2
      ForeColor = &H0&
      Left = -74895
      Top = 945
      Width = 45
      Height = 240
      TabIndex = 136
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
    Begin Label LblT2Field3
      ForeColor = &H0&
      Left = -74895
      Top = 1215
      Width = 45
      Height = 240
      TabIndex = 135
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
    Begin Label LblT2Field5
      ForeColor = &H0&
      Left = -74895
      Top = 1770
      Width = 45
      Height = 240
      TabIndex = 134
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
    Begin Label LblT1Field7
      ForeColor = &H0&
      Left = 105
      Top = 2310
      Width = 45
      Height = 240
      TabIndex = 133
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
    Begin Label LblT1Field6
      ForeColor = &H0&
      Left = 105
      Top = 2040
      Width = 45
      Height = 240
      TabIndex = 132
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
    Begin Label LblT1Field8
      ForeColor = &H0&
      Left = 105
      Top = 2580
      Width = 45
      Height = 240
      TabIndex = 131
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
    Begin Label LblT1Field4
      ForeColor = &H0&
      Left = 105
      Top = 1485
      Width = 45
      Height = 240
      TabIndex = 130
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
    Begin Label LblT1Field1
      ForeColor = &H0&
      Left = 105
      Top = 675
      Width = 45
      Height = 240
      TabIndex = 129
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
    Begin Label LblT1Field3
      ForeColor = &H0&
      Left = 105
      Top = 1215
      Width = 45
      Height = 240
      TabIndex = 128
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
    Begin Label LblT1Field5
      ForeColor = &H0&
      Left = 105
      Top = 1770
      Width = 45
      Height = 240
      TabIndex = 127
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
  Begin DataGrid DGCountry
    Left = 6885
    Top = 6315
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 125
  End
  Begin CommandButton BtnVisa
    BackColor = &HFFC0C0&
    Left = 4875
    Top = 2715
    Width = 1305
    Height = 765
    TabIndex = 122
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "GuestProfile.frx":0
    Style = 1
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 6165
    Width = 4665
    Height = 285
    TabIndex = 24
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
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 6480
    Width = 4665
    Height = 285
    TabIndex = 25
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 1515
    Top = 6795
    Width = 4665
    Height = 285
    Enabled = 0   'False
    TabIndex = 26
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
    Index = 30
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 12795
    Top = 5925
    Width = 4305
    Height = 255
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 3015
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 24
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
    Left = 1515
    Top = 4905
    Width = 1125
    Height = 285
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3810
    Top = 4590
    Width = 1020
    Height = 285
    TabIndex = 19
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 4590
    Width = 1125
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 3960
    Width = 2235
    Height = 285
    TabIndex = 14
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 3645
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 2700
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 24
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
    Left = 1515
    Top = 3330
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4860
    Top = 2385
    Width = 1320
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 7
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
    BackColor = &HFFFFFF&
    Left = 4875
    Top = 1755
    Width = 1305
    Height = 285
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 2385
    Width = 3315
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 2070
    Width = 3315
    Height = 285
    TabIndex = 7
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 1755
    Width = 3315
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 1440
    Width = 4665
    Height = 285
    TabIndex = 4
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 1125
    Width = 4665
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2385
    Top = 495
    Width = 3795
    Height = 285
    TabIndex = 1
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
    Index = 65
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3825
    Top = 4275
    Width = 1005
    Height = 285
    TabIndex = 17
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
  Begin TextBox Txt
    Index = 66
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 4275
    Width = 1125
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 9
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
  Begin MSFlexGrid FGPoint
    Left = 6750
    Top = 6315
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 168
  End
  Begin TextBox Txt
    Index = 73
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4215
    Top = 3960
    Width = 615
    Height = 285
    TabIndex = 15
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
  Begin CommonDialog CDlg
  End
  Begin TextBox Txt
    Index = 74
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 5535
    Width = 3315
    Height = 285
    TabIndex = 22
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
  Begin MSHFlexGrid FGrid2
    Left = 900
    Top = 7380
    Width = 11490
    Height = 1995
    TabIndex = 188
  End
  Begin TextBox Txt
    Index = 75
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 810
    Width = 4665
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
    Index = 76
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1515
    Top = 5850
    Width = 3315
    Height = 285
    TabIndex = 23
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
    Index = 67
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7080
    Top = 5685
    Width = 4305
    Height = 285
    TabIndex = 172
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
  Begin CommandButton CmdRef
    Caption = "..."
    Left = 1170
    Top = 1770
    Width = 330
    Height = 285
    TabIndex = 199
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "To Print Settlement Details"
  End
  Begin Image GuestSign
    Left = 11595
    Top = 450
    Width = 3450
    Height = 1140
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest Sign"
  End
  Begin Label Lbl
    Caption = "Guest Signature"
    Index = 44
    ForeColor = &H0&
    Left = 12675
    Top = 1305
    Width = 1365
    Height = 240
    TabIndex = 206
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 11670
    Top = 2055
    Width = 2970
    Height = 285
    TabIndex = 204
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
    Left = 11685
    Top = 1845
    Width = 2700
    Height = 255
    TabIndex = 203
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
  Begin Image IdProofImage
    Left = 8130
    Top = 450
    Width = 3450
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Id Proof"
  End
  Begin Label Lbl
    Caption = "Father's Name"
    Index = 41
    ForeColor = &HC00000&
    Left = 105
    Top = 765
    Width = 1365
    Height = 240
    TabIndex = 197
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
  Begin Label lblGuestGolioDocid
    Caption = "Label1"
    Left = 13335
    Top = 3120
    Width = 375
    Height = 1455
    Visible = 0   'False
    TabIndex = 191
  End
  Begin Label lblmProf
    Left = 13335
    Top = 1800
    Width = 375
    Height = 1095
    Visible = 0   'False
    TabIndex = 189
  End
  Begin Label Lbl
    Caption = "Id Proof"
    Index = 39
    ForeColor = &HC00000&
    Left = 105
    Top = 5535
    Width = 750
    Height = 240
    TabIndex = 187
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
  Begin Image GuestImage
    Left = 6255
    Top = 450
    Width = 1860
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest"
  End
  Begin Label Lbl
    Caption = "Age"
    Index = 38
    ForeColor = &HC00000&
    Left = 3825
    Top = 3960
    Width = 375
    Height = 240
    TabIndex = 186
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
    Caption = "Diplomat Id No"
    Index = 28
    ForeColor = &HC00000&
    Left = 105
    Top = 5220
    Width = 1410
    Height = 240
    TabIndex = 176
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
    Caption = "Diplomat"
    Index = 26
    ForeColor = &HC00000&
    Left = 3315
    Top = 4905
    Width = 855
    Height = 240
    TabIndex = 175
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
    Caption = "(Y/N)"
    Index = 17
    ForeColor = &H0&
    Left = 14625
    Top = 2775
    Width = 450
    Height = 240
    Visible = 0   'False
    TabIndex = 174
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
    Caption = "PAN No"
    Index = 16
    ForeColor = &HC00000&
    Left = 6255
    Top = 5715
    Width = 720
    Height = 240
    TabIndex = 173
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
    Caption = "(M/F/O)"
    Index = 15
    ForeColor = &HC00000&
    Left = 4845
    Top = 4290
    Width = 675
    Height = 240
    TabIndex = 171
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
    Caption = "(M/U)"
    Index = 4
    ForeColor = &HC00000&
    Left = 2625
    Top = 4290
    Width = 480
    Height = 240
    TabIndex = 170
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
    Caption = "Marital Status"
    Index = 19
    ForeColor = &HC00000&
    Left = 105
    Top = 4290
    Width = 1305
    Height = 240
    TabIndex = 144
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
    Caption = "Gender"
    Index = 18
    ForeColor = &HC00000&
    Left = 3120
    Top = 4290
    Width = 705
    Height = 240
    TabIndex = 143
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
    Caption = "Comments"
    Index = 21
    ForeColor = &HC00000&
    Left = 105
    Top = 6165
    Width = 1005
    Height = 240
    TabIndex = 121
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
    Caption = "Contact Info."
    Index = 36
    ForeColor = &HC00000&
    Left = 13500
    Top = 5685
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 120
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Lbl
    Caption = "Name"
    Index = 22
    ForeColor = &HC00000&
    Left = 11910
    Top = 5925
    Width = 480
    Height = 225
    Visible = 0   'False
    TabIndex = 119
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Id Proof Image"
    Index = 3
    ForeColor = &H0&
    Left = 9240
    Top = 2445
    Width = 1275
    Height = 240
    TabIndex = 92
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
    Caption = "Guest Status"
    Index = 2
    ForeColor = &HC00000&
    Left = 105
    Top = 4905
    Width = 1185
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
  Begin Label Lbl
    Caption = "Anniversary"
    Index = 1
    ForeColor = &HC00000&
    Left = 2670
    Top = 4575
    Width = 1125
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
  Begin Label Lbl
    Caption = "Birth Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 105
    Top = 4605
    Width = 945
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
  Begin Label Lbl
    Caption = "Nationality"
    Index = 14
    ForeColor = &HC00000&
    Left = 105
    Top = 3975
    Width = 1020
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
  Begin Label Lbl
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 105
    Top = 3660
    Width = 585
    Height = 240
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
  Begin Label Lbl
    Caption = "Mobile"
    Index = 8
    ForeColor = &HC00000&
    Left = 105
    Top = 2730
    Width = 645
    Height = 240
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
    Caption = "Fax"
    Index = 9
    ForeColor = &HC00000&
    Left = 120
    Top = 3030
    Width = 360
    Height = 240
    TabIndex = 85
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
    Left = 105
    Top = 3345
    Width = 1140
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
    Caption = "Country/Type"
    Index = 13
    ForeColor = &HC00000&
    Left = 90
    Top = 2385
    Width = 1260
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
  Begin Label Lbl
    Caption = "State"
    Index = 12
    ForeColor = &HC00000&
    Left = 90
    Top = 2070
    Width = 495
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
  Begin Label Lbl
    Caption = "City/Zip"
    Index = 11
    ForeColor = &HC00000&
    Left = 105
    Top = 1740
    Width = 705
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
  Begin Label Lbl
    Caption = "Address"
    Index = 6
    ForeColor = &HC00000&
    Left = 105
    Top = 1110
    Width = 750
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
  Begin Label Lbl
    Caption = "Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 105
    Top = 480
    Width = 555
    Height = 240
    TabIndex = 79
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
    Caption = "Id Proof No"
    Index = 42
    ForeColor = &HC00000&
    Left = 105
    Top = 5850
    Width = 1065
    Height = 240
    TabIndex = 198
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
    Caption = "Guest Image"
    Index = 43
    ForeColor = &H0&
    Left = 6645
    Top = 2445
    Width = 1080
    Height = 240
    TabIndex = 200
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
  Begin Menu Rmv
    Visible = 0   'False
    Caption = "Rmv"
    Begin Menu Remove
      Index = 0
      Caption = "Remove"
    End
  End
End

Attribute VB_Name = "GuestProfile"

Private MasterFormExit As Integer
Private global_180 As Integer
Private global_68 As Integer

Private Sub DGCity_UnknownEvent_9 'F3AC24
  'Data Table: 5A2370
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3AB1B: Me.DGCity.Visible = False
  loc_F3AB3A: If (Me.RecordCount > 0) Then
  loc_F3AB79:   Set var_B4 = Me.Txt
  loc_F3AB7F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3AB87:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3ABBA:   var_B0 = Me.Fields.Item("Name")
  loc_F3ABD9:   Set var_B4 = Me.Txt
  loc_F3ABDF:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3ABE7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3ABFD: End If
  loc_F3AC08: Set var_A8 = Me.Txt
  loc_F3AC0E: Call 0.Method_DGCity_UnknownEvent_90 (CInt(6))
  loc_F3AC16: var_B0.SetFocus
  loc_F3AC22: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E7347C
  'Data Table: 5A2370
  loc_E7343A: Proc_6_153_E91194(Me.DGCity, arg_14)
  loc_E73451: Set var_8C = Me.FGPoint
  loc_E7346D: Proc_6_138_106D6F8(Me.DGCity, global_92, CInt(6))
  loc_E7347B: Exit Sub
End Sub

Public Sub TXT_GNAME_UnknownEvent_B(Index As Integer) 'E55974
  'Data Table: 5A2370
  loc_E5593E: If (CLng(Index) = &H2E) Then
  loc_E55951:   Me.TXT_GNAME.defText = vbNullString
  loc_E55969:   Me.TXT_GNAME.BoundText = vbNullString
  loc_E55971: End If
  loc_E55971: Exit Sub
End Sub

Private Sub CmdFind_Click() '11AFF64
  'Data Table: 5A2370
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_90 As String
  Dim var_104 As String
  Dim MemVar_1F920E4 As String
  Dim unk_5A23A3 As Connection15
  Dim var_8C As Recordset15
  Dim var_120 As String
  loc_11AFB4C: On Error Goto loc_11AFF5C
  loc_11AFB62: If (GuestCode <> vbNullString) Then
  loc_11AFB6C:   var_C0 = CVar(var_88 & " And GUESTPROF.Code='") 'String
  loc_11AFB88:   var_D0 = var_C0 & Trim(CVar(GuestCode)) 
  loc_11AFB96:   var_88 = CStr(var_D0 & "'")
  loc_11AFBA9: Else
  loc_11AFBCC:   If (CStr(Me.TXT_FOLIONO.BoundText) <> vbNullString) Then
  loc_11AFBF6:     var_104 = var_88 & " And (GUESTPROF.Code='" & CStr(Me.TXT_FOLIONO.BoundText) & "' Or GUESTPROF.Code In (Select GuestProf From GuestFolioProfDetail Where mProf='"
  loc_11AFC16:     var_88 = var_104 & CStr(Me.TXT_FOLIONO.BoundText) & "'))"
  loc_11AFC36:   End If
  loc_11AFC36: End If
  loc_11AFC59: If (CStr(Me.TXT_GNAME.BoundText) <> vbNullString) Then
  loc_11AFC83:   var_88 = var_88 & " And GUESTPROF.Name='" & CStr(Me.TXT_GNAME.Text) & "'"
  loc_11AFC95: End If
  loc_11AFCB8: If (CStr(Me.TXT_STATE.BoundText) <> vbNullString) Then
  loc_11AFCE2:   var_88 = var_88 & " And GUESTPROF.StateName='" & CStr(Me.TXT_STATE.Text) & "'"
  loc_11AFCF4: End If
  loc_11AFD17: If (CStr(Me.TXT_CITY.BoundText) <> vbNullString) Then
  loc_11AFD41:   var_88 = var_88 & " And GUESTPROF.CityName='" & CStr(Me.TXT_CITY.Text) & "'"
  loc_11AFD53: End If
  loc_11AFD76: If (CStr(Me.TXT_COUNTRY.BoundText) <> vbNullString) Then
  loc_11AFDA0:   var_88 = var_88 & " And GUESTPROF.CountryName='" & CStr(Me.TXT_COUNTRY.Text) & "'"
  loc_11AFDB2: End If
  loc_11AFDD5: If (CStr(Me.TXT_NATION.BoundText) <> vbNullString) Then
  loc_11AFDFF:   var_88 = var_88 & " And GUESTPROF.Nationality='" & CStr(Me.TXT_NATION.Text) & "'"
  loc_11AFE11: End If
  loc_11AFE34: If (CStr(Me.TXT_TYPE.BoundText) <> vbNullString) Then
  loc_11AFE45:   Set var_F4 = Me.TXT_TYPE
  loc_11AFE4B:   var_A0 = var_F4.Text
  loc_11AFE5E:   var_88 = var_88 & " And GUESTPROF.Type='" & CStr(var_A0) & "'"
  loc_11AFE70: End If
  loc_11AFE77: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where (GuestProf.LOGSITE_CODE='" & MemVar_1F92078
  loc_11AFE8C: MemVar_1F920E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " Order by GuestProf.Name"
  loc_11AFEAF: unk_5A23A3.Execute MemVar_1F920E4, var_A0, -1
  loc_11AFED7: If (var_F4.RecordCount <= 0) Then
  loc_11AFEE0:   var_120 = "Information"
  loc_11AFEFB:   MsgBox("No Records To Search.", &H40, var_120, var_C0, var_D0)
  loc_11AFF0B:   Exit Sub
  loc_11AFF0C: End If
  loc_11AFF12: Set var_F4 = Me.FrmFind
  loc_11AFF18: var_F4.Visible = False
  loc_11AFF26: MemVar_1F92120 = Me
  loc_11AFF33: Proc_6_126_F1BCC0("3200,2500,2500,2400", var_F4)
  loc_11AFF4E: Call 0.Method_arg_2B0 (1, var_120)
  loc_11AFF58: Set var_8C = Nothing
  loc_11AFF5B: Exit Sub
  loc_11AFF5C: ' Referenced from: 11AFB4C
  loc_11AFF5C: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_11AFF61: Exit Sub
End Sub

Public Sub TXT_COUNTRY_UnknownEvent_B(Index As Integer) 'E56AAC
  'Data Table: 5A2370
  loc_E56A76: If (CLng(Index) = &H2E) Then
  loc_E56A89:   Me.TXT_COUNTRY.defText = vbNullString
  loc_E56AA1:   Me.TXT_COUNTRY.BoundText = vbNullString
  loc_E56AA9: End If
  loc_E56AA9: Exit Sub
End Sub

Public Sub TXT_FOLIONO_UnknownEvent_B(Index As Integer) 'E56A38
  'Data Table: 5A2370
  loc_E56A02: If (CLng(Index) = &H2E) Then
  loc_E56A15:   Me.TXT_FOLIONO.defText = vbNullString
  loc_E56A2D:   Me.TXT_FOLIONO.BoundText = vbNullString
  loc_E56A35: End If
  loc_E56A35: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF76EC
  'Data Table: 5A2370
  loc_EF762C: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EF762F:   Call DGCity_UnknownEvent_9()
  loc_EF7634: End If
  loc_EF7650: If (CBool(Me.DGCountry.Visible) = &HFF) Then
  loc_EF7653:   Call DGCountry_UnknownEvent_9()
  loc_EF7658: End If
  loc_EF7674: If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_EF7677:   Call DGNationality_UnknownEvent_9()
  loc_EF767C: End If
  loc_EF7698: If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_EF769B:   Call DGGuestStatus_UnknownEvent_9()
  loc_EF76A0: End If
  loc_EF76BC: If (CBool(Me.DGState.Visible) = &HFF) Then
  loc_EF76BF:   Call DGState_UnknownEvent_9()
  loc_EF76C4: End If
  loc_EF76E0: If (CBool(Me.DGZipCode.Visible) = &HFF) Then
  loc_EF76E3:   Call DGZipCode_UnknownEvent_9()
  loc_EF76E8: End If
  loc_EF76E8: Exit Sub
End Sub

Private Sub DGCountry_UnknownEvent_9 'F38184
  'Data Table: 5A2370
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3807B: Me.DGCountry.Visible = False
  loc_F3809A: If (Me.RecordCount > 0) Then
  loc_F380D9:   Set var_B4 = Me.Txt
  loc_F380DF:   Call 0.Method_DGCountry_UnknownEvent_90 (CInt(&H13), var_B8)
  loc_F380E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3811A:   var_B0 = Me.Fields.Item("Name")
  loc_F38139:   Set var_B4 = Me.Txt
  loc_F3813F:   Call 0.Method_DGCountry_UnknownEvent_90 (CInt(&H13), var_B8)
  loc_F38147:   var_B8.Text = CStr(var_B0.Value)
  loc_F3815D: End If
  loc_F38168: Set var_A8 = Me.Txt
  loc_F3816E: Call 0.Method_DGCountry_UnknownEvent_90 (CInt(&H13))
  loc_F38176: var_B0.SetFocus
  loc_F38182: Exit Sub
End Sub

Private Sub DGCountry_UnknownEvent_1F 'E73DBC
  'Data Table: 5A2370
  loc_E73D7A: Proc_6_153_E91194(Me.DGCountry, arg_14)
  loc_E73D91: Set var_8C = Me.FGPoint
  loc_E73DAD: Proc_6_138_106D6F8(Me.DGCountry, global_96, CInt(&H13))
  loc_E73DBB: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 'FF9B90
  'Data Table: 5A2370
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_104 As MSHFlexGrid
  loc_FF999C: On Error Goto loc_FF9B87
  loc_FF99BE: If (CLng(Me.FGrid2.Col) = 0) Then
  loc_FF99E6:   For var_A0 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A0 'Integer
  loc_FF9A0A:     If (CLng(var_86) = CLng(Me.FGrid2.Row)) Then
  loc_FF9A20:       Me.FGrid2.Col = 0
  loc_FF9A38:       Me.FGrid2.CellFontName = "WINGDINGS"
  loc_FF9A52:       Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_FF9A6D:       var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_FF9A75:       var_D0 = CVar(CLng(0)) 'Long
  loc_FF9A7A:       var_F0 = "ü"
  loc_FF9A84:       Set var_104 = Me.FGrid2
  loc_FF9A8A:       LateIdCallSt
  loc_FF9AAF:       var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_FF9AB7:       var_D0 = CVar(CLng(5)) 'Long
  loc_FF9ADE:       Me.lblmProf.Caption = CStr(Me.FGrid2.TextMatrix))
  loc_FF9AF9:     Else
  loc_FF9AFD:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_FF9B05:       var_D0 = CVar(CLng(0)) 'Long
  loc_FF9B0A:       var_F0 = vbNullString
  loc_FF9B14:       Set var_8C = Me.FGrid2
  loc_FF9B1A:       LateIdCallSt
  loc_FF9B25:     End If
  loc_FF9B28:   Next var_A0 'Integer
  loc_FF9B2D: End If
  loc_FF9B40: var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_FF9B6E: Call Proc_24_88_EB7D1C(Proc_6_38_E68A98(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5))))
  loc_FF9B86: Exit Sub
  loc_FF9B87: ' Referenced from: FF999C
  loc_FF9B87: Proc_6_60_E62BC4(var_B0)
  loc_FF9B8C: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_A(Index As Integer) '1003FAC
  'Data Table: 5A2370
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_104 As MSHFlexGrid
  loc_1003DAC: On Error Goto loc_1003FA4
  loc_1003DCE: If (CLng(Me.FGrid2.Col) = 0) Then
  loc_1003DDB:   If (CLng(Index) = &H20) Then
  loc_1003E03:     For var_A0 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1003E27:       If (CLng(var_86) = CLng(Me.FGrid2.Row)) Then
  loc_1003E3D:         Me.FGrid2.Col = 0
  loc_1003E55:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_1003E6F:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_1003E8A:         var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1003E92:         var_D0 = CVar(CLng(0)) 'Long
  loc_1003E97:         var_F0 = "ü"
  loc_1003EA1:         Set var_104 = Me.FGrid2
  loc_1003EA7:         LateIdCallSt
  loc_1003ECC:         var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1003ED4:         var_D0 = CVar(CLng(5)) 'Long
  loc_1003EFB:         Me.lblmProf.Caption = CStr(Me.FGrid2.TextMatrix))
  loc_1003F16:       Else
  loc_1003F1A:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_1003F22:         var_D0 = CVar(CLng(0)) 'Long
  loc_1003F27:         var_F0 = vbNullString
  loc_1003F31:         Set var_8C = Me.FGrid2
  loc_1003F37:         LateIdCallSt
  loc_1003F42:       End If
  loc_1003F45:     Next var_A0 'Integer
  loc_1003F4A:   End If
  loc_1003F4A: End If
  loc_1003F5D: var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1003F8B: Call Proc_24_88_EB7D1C(Proc_6_38_E68A98(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5))))
  loc_1003FA3: Exit Sub
  loc_1003FA4: ' Referenced from: 1003DAC
  loc_1003FA4: Proc_6_60_E62BC4(var_B0)
  loc_1003FA9: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_E(Index As Integer) 'E2CA78
  'Data Table: 5A2370
  loc_E2CA52: If (Index = 2) Then
  loc_E2CA6D:   Call 0.Method_arg_2BC (Me.Rmv, var_98, var_A8)
  loc_E2CA75: End If
  loc_E2CA75: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_13 'E82EE0
  'Data Table: 5A2370
  Dim var_A8 As Variant
  loc_E82E97: var_A8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_E82EC5: Call Proc_24_88_EB7D1C(Proc_6_38_E68A98(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5))))
  loc_E82EDD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15212D0
  'Data Table: 5A2370
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_90 As Variant
  Dim var_88 As Variant
  loc_1520376: Set var_88 = Me.Txt
  loc_152037C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_152038A: Proc_6_74_E226B0(var_8C)
  loc_1520396: Call Proc_24_91_FDA04C(var_8C)
  loc_152039E: var_92 = Index
  loc_15203A9: If Not (var_92 = CInt(4)) Then
  loc_15203B4:   If (var_92 = CInt(5)) Then
  loc_15203B7:   End If
  loc_15203C6:   Set var_88 = Me.Txt
  loc_15203CC:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15203D4:   var_8C.SelStart = 0
  loc_15203ED:   Set var_88 = Me.Txt
  loc_15203F3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15203FB:   var_98 = var_8C.Text
  loc_152040E:   Set var_90 = Me.Txt
  loc_1520414:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_152041C:   var_9C.SelLength = Len(var_98)
  loc_152042F: End If
  loc_1520432: var_9E = Index
  loc_152043D: If (var_9E = CInt(6)) Then
  loc_1520457:   If (Me.RecordCount > 0) Then
  loc_1520465:     Set var_8C = Me.FGPoint
  loc_152047D:     Proc_6_137_1193554(Me.DGCity, global_92, Index)
  loc_152048B:   End If
  loc_15204D9:   Set var_88 = Me.Txt
  loc_15204DF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15204E7:   var_8C = var_8C.Text
  loc_15204FF:   If (var_9E Or (var_98 = vbNullString)) Then
  loc_1520502:     Exit Sub
  loc_1520503:   End If
  loc_1520510:   Set var_88 = Me.Txt
  loc_1520516:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_152051E:   var_98 = var_8C.Text
  loc_1520530:   var_B8 = "Name"
  loc_152056B:   If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1520574:     Me.MoveFirst
  loc_1520597:     Set var_88 = Me.Txt
  loc_152059D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15205A5:     0 = var_8C.Text
  loc_15205BE:     Me.Find 1 & var_98 & "'", var_B8, var_92
  loc_15205D3:   End If
  loc_15205D6: Else
  loc_15205DE:   If (var_9E = CInt(&H12)) Then
  loc_15205F8:     If (Me.RecordCount > 0) Then
  loc_1520606:       Set var_8C = Me.FGPoint
  loc_152061E:       Proc_6_137_1193554(Me.DGState, global_100)
  loc_152062C:     End If
  loc_152067A:     Set var_88 = Me.Txt
  loc_1520680:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1520688:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15206A0:     If (Index Or (var_98 = vbNullString)) Then
  loc_15206A3:       Exit Sub
  loc_15206A4:     End If
  loc_15206B1:     Set var_88 = Me.Txt
  loc_15206B7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15206BF:     var_98 = var_8C.Text
  loc_15206D1:     var_B8 = "Name"
  loc_152070C:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1520715:       Me.MoveFirst
  loc_1520738:       Set var_88 = Me.Txt
  loc_152073E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1520746:       0 = var_8C.Text
  loc_152075F:       Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1520774:     End If
  loc_1520777:   Else
  loc_152077F:     If (var_9E = CInt(&H13)) Then
  loc_1520799:       If (Me.RecordCount > 0) Then
  loc_15207A7:         Set var_8C = Me.FGPoint
  loc_15207BF:         Proc_6_137_1193554(Me.DGCountry, global_96)
  loc_15207CD:       End If
  loc_152081B:       Set var_88 = Me.Txt
  loc_1520821:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1520829:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1520841:       If (Index Or (var_98 = vbNullString)) Then
  loc_1520844:         Exit Sub
  loc_1520845:       End If
  loc_1520852:       Set var_88 = Me.Txt
  loc_1520858:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520860:       var_98 = var_8C.Text
  loc_1520872:       var_B8 = "Name"
  loc_15208AD:       If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_15208B6:         Me.MoveFirst
  loc_15208D9:         Set var_88 = Me.Txt
  loc_15208DF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15208E7:         0 = var_8C.Text
  loc_1520900:         Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1520915:       End If
  loc_1520918:     Else
  loc_1520920:       If (var_9E = CInt(&H14)) Then
  loc_152093A:         If (Me.RecordCount > 0) Then
  loc_1520948:           Set var_8C = Me.FGPoint
  loc_1520960:           Proc_6_137_1193554(Me.DGZipCode, global_112)
  loc_152096E:         End If
  loc_15209BC:         Set var_88 = Me.Txt
  loc_15209C2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_15209CA:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15209E2:         If (Index Or (var_98 = vbNullString)) Then
  loc_15209E5:           Exit Sub
  loc_15209E6:         End If
  loc_15209F3:         Set var_88 = Me.Txt
  loc_15209F9:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520A01:         var_98 = var_8C.Text
  loc_1520A13:         var_B8 = "Name"
  loc_1520A2A:         var_9C = Me.Fields.Item(var_B8)
  loc_1520A4E:         If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_1520A57:           Me.MoveFirst
  loc_1520A7A:           Set var_88 = Me.Txt
  loc_1520A80:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1520A88:           0 = var_8C.Text
  loc_1520AA1:           Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1520AB6:         End If
  loc_1520AB9:       Else
  loc_1520AC1:         If (var_9E = CInt(&HB)) Then
  loc_1520AD1:           Set var_88 = Me.Txt
  loc_1520AD7:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520ADF:           var_98 = var_8C.Text
  loc_1520AF2:           Set var_90 = Me.Txt
  loc_1520AF8:           Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1520B00:           var_9C.SelStart = Len(var_98)
  loc_1520B16:         Else
  loc_1520B1E:           If (var_9E = CInt(7)) Then
  loc_1520B38:             If (Me.RecordCount > 0) Then
  loc_1520B46:               Set var_8C = Me.FGPoint
  loc_1520B5E:               Proc_6_137_1193554(Me.DGGuestStatus, global_104)
  loc_1520B6C:             End If
  loc_1520BBA:             Set var_88 = Me.Txt
  loc_1520BC0:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1520BC8:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1520BE0:             If (Index Or (var_98 = vbNullString)) Then
  loc_1520BE3:               Exit Sub
  loc_1520BE4:             End If
  loc_1520BF1:             Set var_88 = Me.Txt
  loc_1520BF7:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520BFF:             var_98 = var_8C.Text
  loc_1520C11:             var_B8 = "Name"
  loc_1520C4C:             If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1520C55:               Me.MoveFirst
  loc_1520C78:               Set var_88 = Me.Txt
  loc_1520C7E:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1520C86:               0 = var_8C.Text
  loc_1520C9F:               Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1520CB4:             End If
  loc_1520CB7:           Else
  loc_1520CBF:             If Not (var_9E = CInt(&H11)) Then
  loc_1520CCA:               If (var_9E = CInt(&H25)) Then
  loc_1520CCD:               End If
  loc_1520CE4:               If (Me.RecordCount > 0) Then
  loc_1520CF2:                 Set var_8C = Me.FGPoint
  loc_1520D0A:                 Proc_6_137_1193554(Me.DGNationality, global_108)
  loc_1520D18:               End If
  loc_1520D66:               Set var_88 = Me.Txt
  loc_1520D6C:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1520D74:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1520D8C:               If (Index Or (var_98 = vbNullString)) Then
  loc_1520D8F:                 Exit Sub
  loc_1520D90:               End If
  loc_1520D9D:               Set var_88 = Me.Txt
  loc_1520DA3:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520DAB:               var_98 = var_8C.Text
  loc_1520DBD:               var_B8 = "Name"
  loc_1520DD4:               var_9C = Me.Fields.Item(var_B8)
  loc_1520DF8:               If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_1520E01:                 Me.MoveFirst
  loc_1520E24:                 Set var_88 = Me.Txt
  loc_1520E2A:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1520E32:                 0 = var_8C.Text
  loc_1520E4B:                 Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1520E60:               End If
  loc_1520E73:               Me.DGNationality.Tag = CVar(CStr(Index))
  loc_1520E8B:               Set var_88 = Me.Txt
  loc_1520E91:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520EB0:               Me.DGNationality.Left = CVar(var_8C.Left)
  loc_1520ECB:               Set var_90 = Me.Txt
  loc_1520ED1:               Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1520EEB:               Set var_88 = Me.Txt
  loc_1520EF1:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520F09:               var_B8 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_1520F18:               Me.DGNationality.Top = CVar(var_8C.Left)
  loc_1520F2D:             Else
  loc_1520F35:               If (var_9E = CInt(3)) Then
  loc_1520F45:                 ReDim var_10C(0 To 1)
  loc_1520F5C:                 var_10C(0) = "India"
  loc_1520F6B:                 var_10C(1) = "Foreign"
  loc_1520F82:                 global_120 = Array(var_10C)
  loc_1520F9C:                 Me.ListView.Tag = CVar(CStr(Index))
  loc_1520FAB:                 Set var_9C = Me.ListView
  loc_1520FC6:                 Set var_8C = Me.Txt
  loc_1520FE0:                 Set global_136 = Proc_6_66_EFF8FC(var_9C, var_8C, Index)
  loc_1520FFE:                 Set var_88 = Me.Txt
  loc_1521004:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_152100C:                 global_120 = var_8C.Text
  loc_152101E:                 Set var_90 = Me.Txt
  loc_1521024:                 Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_152102C:                 var_9C.Tag = 2
  loc_1521042:               Else
  loc_152104A:                 If (var_9E = CInt(&H4A)) Then
  loc_152105A:                   ReDim var_10C(0 To 7)
  loc_1521071:                   var_10C(0) = "COMPANY ID"
  loc_1521080:                   var_10C(1) = "DRIVING LICENCE"
  loc_152108F:                   var_10C(2) = "GREEN CARD"
  loc_152109E:                   var_10C(3) = "PAN CARD"
  loc_15210AD:                   var_10C(4) = "PASSPORT"
  loc_15210BC:                   var_10C(5) = "UIDAI/AADHAR CARD"
  loc_15210CB:                   var_10C(6) = "VOTER ID"
  loc_15210DA:                   var_10C(7) = "NA"
  loc_15210F1:                   global_120 = Array(var_10C)
  loc_152110B:                   Me.ListView.Tag = CVar(CStr(Index))
  loc_152111A:                   Set var_9C = Me.ListView
  loc_1521135:                   Set var_8C = Me.Txt
  loc_152114F:                   Set global_136 = Proc_6_66_EFF8FC(var_9C, var_8C, Index, global_120)
  loc_152116D:                   Set var_88 = Me.Txt
  loc_1521173:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_152117B:                   8 = var_8C.Text
  loc_152118D:                   Set var_90 = Me.Txt
  loc_1521193:                   Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_152119B:                   var_9C.Tag = global_120
  loc_15211B1:                 Else
  loc_15211B9:                   If (var_9E = CInt(&H46)) Then
  loc_15211C9:                     ReDim var_10C(0 To 9)
  loc_15211E0:                     var_10C(0) = "Mr."
  loc_15211EF:                     var_10C(1) = "Mrs."
  loc_15211FE:                     var_10C(2) = "Miss"
  loc_152120D:                     var_10C(3) = "Mr.& Mrs."
  loc_152121C:                     var_10C(4) = "MS."
  loc_152122B:                     var_10C(5) = "M/S"
  loc_152123A:                     var_10C(6) = "Dr."
  loc_1521249:                     var_10C(7) = "Prof."
  loc_1521258:                     var_10C(8) = "Capt."
  loc_1521267:                     var_10C(9) = "Brigadier"
  loc_15212BE:                     Set global_136 = Proc_183_37_EFE3E8(Me.ListView1, Me.Txt, Index, Array(var_10C))
  loc_15212CF:                   End If
  loc_15212CF:                 End If
  loc_15212CF:               End If
  loc_15212CF:             End If
  loc_15212CF:           End If
  loc_15212CF:         End If
  loc_15212CF:       End If
  loc_15212CF:     End If
  loc_15212CF:   End If
  loc_15212CF: End If
  loc_15212CF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1396870
  'Data Table: 5A2370
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_8C As ListView
  Dim var_9C As DataGrid
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_A8 As DataGrid
  Dim var_B0 As DataGrid
  loc_1395FBE: If (CLng(Shift) = &H1B) Then
  loc_1395FC1:   Call Proc_24_91_FDA04C()
  loc_1395FC6:   Exit Sub
  loc_1395FC7: End If
  loc_1395FCA: var_88 = KeyCode
  loc_1395FD5: If (var_88 = CInt(6)) Then
  loc_1395FF5:   Set var_9C = Me.FGPoint
  loc_1396027:   Proc_6_79_11ACE04(Me.DGCity, Me.Txt, CInt(6), global_92, Shift)
  loc_139603E: Else
  loc_1396046:   If (var_88 = CInt(&H13)) Then
  loc_1396066:     Set var_9C = Me.FGPoint
  loc_1396098:     Proc_6_79_11ACE04(Me.DGCountry, Me.Txt, CInt(&H13), global_96, Shift, &HFF, 1)
  loc_13960AF:   Else
  loc_13960B7:     If (var_88 = CInt(&H12)) Then
  loc_1396109:       Proc_6_79_11ACE04(Me.DGState, Me.Txt, CInt(&H12), global_100, Shift, &HFF, 1, Me.FGPoint)
  loc_1396120:     Else
  loc_1396128:       If (var_88 = CInt(7)) Then
  loc_1396185:         Proc_6_69_134A198(Me.DGGuestStatus, Me.Txt, CInt(7), global_104, Shift, 0, 1, Nothing)
  loc_13961F4:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_139621A:           Proc_6_138_106D6F8(Me.DGGuestStatus, global_104, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1396228:         End If
  loc_139622B:       Else
  loc_1396233:         If Not (var_88 = CInt(&H11)) Then
  loc_139623E:           If (var_88 = CInt(&H25)) Then
  loc_1396241:           End If
  loc_139624C:           Set var_AC = Me.Txt
  loc_139625E:           Set var_A4 = Me.FGPoint
  loc_1396297:           Proc_6_69_134A198(Me.DGNationality, var_AC, KeyCode, global_108, Shift, 0, 1, Nothing)
  loc_13962B6:           var_B4 = Me.RecordCount
  loc_1396306:           If ((var_B4 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_139630D:             Set var_9C = Me.DGNationality
  loc_1396314:             Set var_90 = Me.FGPoint
  loc_139632C:             Proc_6_138_106D6F8(var_9C, global_108, KeyCode, var_90, var_A4, 0)
  loc_139633A:           End If
  loc_139633D:         Else
  loc_1396345:           If (var_88 = CInt(3)) Then
  loc_139636A:             Set var_8C = Me.Txt
  loc_1396370:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, 0, var_9C)
  loc_1396378:             0 = var_90.Left
  loc_139638A:             Set var_9C = Me.Txt
  loc_1396390:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_1396398:             &HFF = var_A4.Top
  loc_13963AA:             Set var_A8 = Me.Txt
  loc_13963B0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_13963B8:             1 = var_AC.Height
  loc_13963CA:             Set var_B0 = Me.Txt
  loc_13963D0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13963D8:             var_C4 = var_C0.Width
  loc_1396420:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1396447:           Else
  loc_139644F:             If (var_88 = CInt(&H4A)) Then
  loc_1396474:               Set var_8C = Me.Txt
  loc_139647A:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_1396482:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_1396494:               Set var_9C = Me.Txt
  loc_139649A:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_13964A2:               CInt(var_C4) = var_A4.Top
  loc_13964B4:               Set var_A8 = Me.Txt
  loc_13964BA:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_13964C2:               520 = var_AC.Height
  loc_13964D4:               Set var_B0 = Me.Txt
  loc_13964DA:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13964E2:               var_C4 = var_C0.Width
  loc_139652A:               Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1396551:             Else
  loc_1396559:               If (var_88 = CInt(&H14)) Then
  loc_1396560:                 Set var_A4 = Me.DGZipCode
  loc_139656E:                 Set var_AC = Me.FGPoint
  loc_1396579:                 Set var_9C = var_AC
  loc_1396598:                 Set var_90 = Me.Txt
  loc_13965A7:                 Proc_6_79_11ACE04(var_A4, var_90, KeyCode, global_112, Shift, &HFF, 1)
  loc_13965BE:               Else
  loc_13965C6:                 If (var_88 = CInt(&H46)) Then
  loc_13965EB:                   Set var_8C = Me.Txt
  loc_13965F1:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_9C, 0)
  loc_13965F9:                   CInt(var_B4) = var_90.Left
  loc_139660B:                   Set var_9C = Me.Txt
  loc_1396611:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8, CInt((var_B8 + var_BC)))
  loc_1396619:                   CInt(var_C4) = var_A4.Top
  loc_139662B:                   Set var_A8 = Me.Txt
  loc_1396631:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_1396639:                   2080 = var_AC.Height
  loc_139664B:                   Set var_B0 = Me.Txt
  loc_1396651:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1396659:                   var_C4 = var_C0.Width
  loc_13966A1:                   Proc_6_65_119423C(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_13966C5:                 End If
  loc_13966C5:               End If
  loc_13966C5:             End If
  loc_13966C5:           End If
  loc_13966C5:         End If
  loc_13966C5:       End If
  loc_13966C5:     End If
  loc_13966C5:   End If
  loc_13966C5: End If
  loc_13966FC: var_10C = Me.DGCity.Visible
  loc_1396713: var_11C = Me.DGGuestStatus.Visible
  loc_13967A2: If ((((((((CBool(Me.ListView.Visible) = 0) And (CBool(Me.ListView1.Visible) = 0)) And (CBool(var_10C) = 0)) And (CBool(var_11C) = 0)) And (CBool(Me.DGNationality.Visible) = 0)) And (CBool(Me.DGCountry.Visible) = 0)) And (CBool(Me.DGState.Visible) = 0)) And (CBool(Me.DGZipCode.Visible) = 0)) Then
  loc_13967C3:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_13967CC:     Call Txt_Validate(KeyCode)
  loc_13967D7:     If (var_86 = &HFF) Then
  loc_13967DA:       Exit Sub
  loc_13967DB:     End If
  loc_1396812:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_11C) = 6) Then
  loc_1396815:       Call TopCtrl1_UnknownEvent_16()
  loc_139681A:     End If
  loc_139681A:     Exit Sub
  loc_139681B:   End If
  loc_1396830:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1396839:     Proc_6_75_E527CC(Shift, arg_14, var_86, CInt(var_B4))
  loc_139683E:   End If
  loc_1396846:   If (KeyCode = CInt(6)) Then
  loc_1396851:     Call Txt_Validate(KeyCode)
  loc_1396856:   End If
  loc_1396860:   If (CLng(Shift) = &H26) Then
  loc_1396869:     Proc_6_76_E52838(Shift, arg_14, 0, CInt((var_B8 + var_BC)))
  loc_139686E:   End If
  loc_139686E: End If
  loc_139686E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1258BD4
  'Data Table: 5A2370
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_125866A: Proc_6_133_E7EF78(var_94)
  loc_1258673: arg_10 = CInt(var_94)
  loc_125867C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_1258684: var_96 = KeyAscii
  loc_125868F: If Not (var_96 = CInt(&H2E)) Then
  loc_125869A:   If (var_96 = CInt(&H49)) Then
  loc_125869D:   End If
  loc_12586A7:   Set var_9C = Me.Txt
  loc_12586AD:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_12586C8:   Proc_6_42_129A86C(var_A0, arg_10, 3)
  loc_12586D7: Else
  loc_12586DF:   If (var_96 = CInt(7)) Then
  loc_12586FE:     If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_125872B:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_104, arg_10, "Name")
  loc_125875D:       Proc_6_138_106D6F8(Me.DGGuestStatus, global_104, KeyAscii, Me.FGPoint)
  loc_125876B:     End If
  loc_125876E:   Else
  loc_1258776:     If Not (var_96 = CInt(&H11)) Then
  loc_1258781:       If (var_96 = CInt(&H25)) Then
  loc_1258784:       End If
  loc_12587A0:       If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_12587CD:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_108, arg_10, "Name")
  loc_12587E7:         Set var_A0 = Me.FGPoint
  loc_12587FF:         Proc_6_138_106D6F8(Me.DGNationality, global_108, KeyAscii, var_A0, 0)
  loc_125880D:       End If
  loc_1258810:     Else
  loc_1258818:       If (var_96 = CInt(&HB)) Then
  loc_125883C:         Set var_9C = Me.Txt
  loc_1258842:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_B0, (((arg_10 >= &H30) And (arg_10 <= &H39)) Or (arg_10 = 8)))
  loc_125884A:         0 = var_A0.SelStart
  loc_1258868:         If Not((0 Or ((var_B0 = 0) And (arg_10 = &H2B)))) Then
  loc_125886D:           arg_10 = 0
  loc_1258870:         End If
  loc_1258873:       Else
  loc_125887B:         If (var_96 = CInt(&H42)) Then
  loc_12588A7:           If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_12588B7:             Set var_9C = Me.Txt
  loc_12588BD:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Married")
  loc_12588C5:             var_A0.Text = arg_10
  loc_12588D4:           Else
  loc_12588FD:             If (Ucase(Chr(CLng(arg_10))) = "U") Then
  loc_125890D:               Set var_9C = Me.Txt
  loc_1258913:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "UnMarried")
  loc_125891B:               var_A0.Text = var_96
  loc_1258927:             End If
  loc_1258927:           End If
  loc_1258929:           arg_10 = 0
  loc_125892F:         Else
  loc_1258937:           If (var_96 = CInt(&H41)) Then
  loc_1258963:             If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_1258973:               Set var_9C = Me.Txt
  loc_1258979:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Male")
  loc_1258981:               var_A0.Text = arg_10
  loc_1258990:             Else
  loc_12589B9:               If (Ucase(Chr(CLng(arg_10))) = "F") Then
  loc_12589C9:                 Set var_9C = Me.Txt
  loc_12589CF:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_12589D7:                 var_A0.Text = "Female"
  loc_12589E6:               Else
  loc_1258A0F:                 If (Ucase(Chr(CLng(arg_10))) = "O") Then
  loc_1258A1F:                   Set var_9C = Me.Txt
  loc_1258A25:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1258A2D:                   var_A0.Text = "Other"
  loc_1258A39:                 End If
  loc_1258A39:               End If
  loc_1258A39:             End If
  loc_1258A3B:             arg_10 = 0
  loc_1258A41:           Else
  loc_1258A49:             If (var_96 = CInt(&H44)) Then
  loc_1258A75:               If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1258A85:                 Set var_9C = Me.Txt
  loc_1258A8B:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_1258A93:                 var_A0.Text = arg_10
  loc_1258AAD:                 Set var_9C = Me.Txt
  loc_1258AB3:                 Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_1258ACD:                 If (var_A0.Enabled = 0) Then
  loc_1258ADD:                   Set var_9C = Me.Txt
  loc_1258AE3:                   Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_1258AEB:                   var_A0.Enabled = True
  loc_1258AF7:                 End If
  loc_1258AFA:               Else
  loc_1258B23:                 If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1258B33:                   Set var_9C = Me.Txt
  loc_1258B39:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1258B41:                   var_A0.Text = "No"
  loc_1258B5B:                   Set var_9C = Me.Txt
  loc_1258B61:                   Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_1258B7B:                   If (var_A0.Enabled = &HFF) Then
  loc_1258B8B:                     Set var_9C = Me.Txt
  loc_1258B91:                     Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_1258B99:                     var_A0.Enabled = False
  loc_1258BA5:                   End If
  loc_1258BB3:                   Set var_9C = Me.Txt
  loc_1258BB9:                   Call 0.Method_Txt_KeyPress0 (CInt(&H45), var_A0)
  loc_1258BC1:                   var_A0.Text = vbNullString
  loc_1258BCD:                 End If
  loc_1258BCD:               End If
  loc_1258BCF:               arg_10 = 0
  loc_1258BD2:             End If
  loc_1258BD2:           End If
  loc_1258BD2:         End If
  loc_1258BD2:       End If
  loc_1258BD2:     End If
  loc_1258BD2:   End If
  loc_1258BD2: End If
  loc_1258BD2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1212430
  'Data Table: 5A2370
  Dim var_86 As Integer
  loc_1211F57: var_86 = KeyCode
  loc_1211F62: If (var_86 = CInt(6)) Then
  loc_1211F81:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_1211F95:     var_A8 = "Name"
  loc_1211FBD:     Proc_6_68_129FB34(Me.DGCity, Me.Txt, CInt(6), global_92)
  loc_1211FF3:     Proc_6_138_106D6F8(Me.DGCity, global_92, KeyCode, Me.FGPoint)
  loc_1212001:   End If
  loc_1212004: Else
  loc_121200C:   If (var_86 = CInt(&H12)) Then
  loc_121202B:     If (CBool(Me.DGState.Visible) = &HFF) Then
  loc_121203F:       var_A8 = "Name"
  loc_1212067:       Proc_6_68_129FB34(Me.DGState, Me.Txt, CInt(&H12), global_100, Shift)
  loc_121209D:       Proc_6_138_106D6F8(Me.DGState, global_100, KeyCode, Me.FGPoint)
  loc_12120AB:     End If
  loc_12120AE:   Else
  loc_12120B6:     If (var_86 = CInt(&H13)) Then
  loc_12120D5:       If (CBool(Me.DGCountry.Visible) = &HFF) Then
  loc_1212111:         Proc_6_68_129FB34(Me.DGCountry, Me.Txt, CInt(&H13), global_96, Shift)
  loc_1212147:         Proc_6_138_106D6F8(Me.DGCountry, global_96, KeyCode, Me.FGPoint, "Name")
  loc_1212155:       End If
  loc_1212158:     Else
  loc_1212160:       If (var_86 = CInt(7)) Then
  loc_121217F:         If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_1212193:           var_A8 = "Name"
  loc_12121BB:           Proc_6_68_129FB34(Me.DGGuestStatus, Me.Txt, CInt(7), global_104, Shift)
  loc_12121CE:         End If
  loc_12121D1:       Else
  loc_12121D9:         If Not (var_86 = CInt(&H11)) Then
  loc_12121E4:           If (var_86 = CInt(&H25)) Then
  loc_12121E7:           End If
  loc_1212203:           If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_121223B:             Proc_6_68_129FB34(Me.DGNationality, Me.Txt, KeyCode, global_108, Shift, "Name")
  loc_121224E:           End If
  loc_1212251:         Else
  loc_1212259:           If (var_86 = CInt(3)) Then
  loc_1212277:             If (Me.FrmList.Visible = &HFF) Then
  loc_12122A6:               Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_136)
  loc_12122B6:             End If
  loc_12122B9:           Else
  loc_12122C1:             If (var_86 = CInt(&H4A)) Then
  loc_12122DF:               If (Me.FrmList.Visible = &HFF) Then
  loc_121230E:                 Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_136)
  loc_121231E:               End If
  loc_1212321:             Else
  loc_1212329:               If (var_86 = CInt(&H46)) Then
  loc_1212347:                 If (Me.FrmList1.Visible = &HFF) Then
  loc_1212376:                   Proc_6_64_F28E58(Me.ListView1, Me.Txt, KeyCode, Shift, global_156)
  loc_1212386:                 End If
  loc_1212389:               Else
  loc_1212391:                 If (var_86 = CInt(&H14)) Then
  loc_12123B0:                   If (CBool(Me.DGZipCode.Visible) = &HFF) Then
  loc_12123C4:                     var_A8 = "Name"
  loc_12123E8:                     Proc_6_68_129FB34(Me.DGZipCode, Me.Txt, KeyCode, global_112, Shift, var_A8)
  loc_121241E:                     Proc_6_138_106D6F8(Me.DGZipCode, global_112, KeyCode, Me.FGPoint, var_A8)
  loc_121242C:                   End If
  loc_121242C:                 End If
  loc_121242C:               End If
  loc_121242C:             End If
  loc_121242C:           End If
  loc_121242C:         End If
  loc_121242C:       End If
  loc_121242C:     End If
  loc_121242C:   End If
  loc_121242C: End If
  loc_121242C: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46C34
  'Data Table: 5A2370
  loc_E46C12: Set var_88 = Me.Txt
  loc_E46C18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46C26: Proc_6_73_E22704(var_8C)
  loc_E46C32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '19BC494
  'Data Table: 5A2370
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_EC As Variant
  Dim Me As Recordset15
  Dim var_108 As String
  Dim var_10C As String
  Dim var_DC As String
  Dim var_130 As Variant
  Dim var_94 As Variant
  Dim var_140 As Variant
  Dim var_B8 As Variant
  Dim var_150 As Variant
  Dim unk_5A23A3 As Connection15
  Dim var_88 As Recordset15
  Dim var_164 As Variant
  Dim var_100 As Variant
  Dim arg_10 As Integer
  Dim var_168 As Variant
  Dim var_184 As TextBox
  Dim var_120 As Variant
  Dim var_1C0 As Double
  Dim var_8E As Integer
  loc_19B945F: var_90 = Cancel
  loc_19B946A: If (var_90 = CInt(0)) Then
  loc_19B946D:   var_A8 = 1
  loc_19B9479:   var_C8 = CVar(CLng(1)) 'Long
  loc_19B948C:   Set var_94 = Me.Txt
  loc_19B9492:   Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_DC)
  loc_19B949A:   var_C8 = var_98.Text
  loc_19B94A2:   var_EC = CVar(var_DC) 'String
  loc_19B94AA:   Set var_100 = Me.FGrid
  loc_19B94B0:   LateIdCallSt
  loc_19B94C7: Else
  loc_19B94CF:   If (var_90 = CInt(1)) Then
  loc_19B94F1:     Set var_94 = Me.Txt
  loc_19B94F7:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_DC, CVar(CLng(2)), 1)
  loc_19B94FF:     var_100 = var_98.Text
  loc_19B9507:     var_EC = CVar(var_DC) 'String
  loc_19B950F:     Set var_100 = Me.FGrid
  loc_19B9515:     LateIdCallSt
  loc_19B952C:   Else
  loc_19B9534:     If (var_90 = CInt(2)) Then
  loc_19B9537:       var_A8 = 1
  loc_19B9556:       Set var_94 = Me.Txt
  loc_19B955C:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_DC, CVar(CLng(3)), var_A8)
  loc_19B9564:       var_100 = var_98.Text
  loc_19B956C:       var_EC = CVar(var_DC) 'String
  loc_19B9574:       Set var_100 = Me.FGrid
  loc_19B957A:       LateIdCallSt
  loc_19B9591:     Else
  loc_19B9599:       If (var_90 = CInt(6)) Then
  loc_19B95A9:         Set var_94 = Me.Txt
  loc_19B95AF:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, var_100, var_EC)
  loc_19B95CE:         If (var_DC = vbNullString) Then
  loc_19B95DF:           Set var_94 = Me.Txt
  loc_19B95E5:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98, vbNullString)
  loc_19B95ED:           var_98.Text = var_98.Text
  loc_19B9607:           Set var_94 = Me.Txt
  loc_19B960D:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, vbNullString)
  loc_19B9615:           var_98.Text = var_A8
  loc_19B962F:           Set var_94 = Me.Txt
  loc_19B9635:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B963D:           var_98.Text = vbNullString
  loc_19B9657:           Set var_94 = Me.Txt
  loc_19B965D:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9665:           var_98.Text = vbNullString
  loc_19B967E:           Set var_94 = Me.Txt
  loc_19B9684:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B968C:           var_98.Tag = vbNullString
  loc_19B9698:           Exit Sub
  loc_19B9699:         End If
  loc_19B96B0:         If (Me.RecordCount <= 0) Then
  loc_19B96B3:           GoTo loc_19B9C2E
  loc_19B96B6:         End If
  loc_19B96BC:         Me.MoveFirst
  loc_19B96DF:         Set var_94 = Me.Txt
  loc_19B96E5:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19B96ED:         0 = var_98.Text
  loc_19B9706:         Me.Find 1 & var_DC & "*'", var_A8, var_90
  loc_19B9732:         If (Me.AbsolutePosition > 0) Then
  loc_19B9783:           Set var_94 = Me.Txt
  loc_19B9789:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19B97A9:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19B97AC:             Exit Sub
  loc_19B97AD:           End If
  loc_19B97C1:           var_DC = "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (City.LOGSITE_CODE='" & MemVar_1F92078
  loc_19B97F4:           var_120 = Ucase(CVar(Me.Fields.Item("Code")))
  loc_19B9813:           unk_5A23A3.Execute CStr(CVar(var_DC & "' or City.LOGSITE_CODE='HO') and UPPER(CITYCODE)='") & var_120 & "'"), var_160, -1
  loc_19B981E:           Set var_88 = var_100
  loc_19B9852:           If (var_88.RecordCount > 0) Then
  loc_19B9890:             Set var_100 = Me.Txt
  loc_19B9896:             Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B989E:             var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19B98EF:             Set var_100 = Me.Txt
  loc_19B98F5:             Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19B98FD:             var_164.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_19B9949:             Set var_100 = Me.Txt
  loc_19B994F:             Call 0.Method_Txt_Validate0 (CInt(6), var_164)
  loc_19B9957:             var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_19B99A1:             Set var_100 = Me.Txt
  loc_19B99A7:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_164)
  loc_19B99AF:             var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Zipcode")))
  loc_19B99F9:             Set var_100 = Me.Txt
  loc_19B99FF:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_164)
  loc_19B9A07:             var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")))
  loc_19B9A51:             Set var_100 = Me.Txt
  loc_19B9A57:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_164)
  loc_19B9A5F:             var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CountryName")))
  loc_19B9A8A:             var_98 = var_88.Fields.Item("CountryType")
  loc_19B9A92:             var_EC = CVar(var_98) 'Address
  loc_19B9AA9:             Set var_100 = Me.Txt
  loc_19B9AAF:             Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19B9AB7:             var_164.Text = Proc_6_38_E68A98(var_EC)
  loc_19B9AD9:             Set var_94 = Me.Txt
  loc_19B9ADF:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B9AF9:             If (var_98.Enabled = &HFF) Then
  loc_19B9B09:               Set var_94 = Me.Txt
  loc_19B9B0F:               Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B9B17:               var_98.Enabled = False
  loc_19B9B23:             End If
  loc_19B9B31:             Set var_94 = Me.Txt
  loc_19B9B37:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B9B51:             If (var_98.Enabled = &HFF) Then
  loc_19B9B61:               Set var_94 = Me.Txt
  loc_19B9B67:               Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B9B6F:               var_98.Enabled = False
  loc_19B9B7B:             End If
  loc_19B9B89:             Set var_94 = Me.Txt
  loc_19B9B8F:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B9BA9:             If (var_98.Enabled = &HFF) Then
  loc_19B9BB9:               Set var_94 = Me.Txt
  loc_19B9BBF:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B9BC7:               var_98.Enabled = False
  loc_19B9BD3:             End If
  loc_19B9BE1:             Set var_94 = Me.Txt
  loc_19B9BE7:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9C01:             If (var_98.Enabled = &HFF) Then
  loc_19B9C11:               Set var_94 = Me.Txt
  loc_19B9C17:               Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9C1F:               var_98.Enabled = False
  loc_19B9C2B:             End If
  loc_19B9C2B:             GoTo loc_19B9F24
  loc_19B9C2E:             ' Referenced from:       19B96B3
  loc_19B9C2E:           End If
  loc_19B9C32:           Set var_94 = Me.TopCtrl1
  loc_19B9C38:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_100)
  loc_19B9C51:           If (CStr() = "Add") Then
  loc_19B9C5A:             var_B8 = 0
  loc_19B9C79:             unk_5A23A3.Execute "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,3) AS INT)),1)+1 AS MyCode From City", var_EC, -1
  loc_19B9C81:             var_94 = var_94.Fields
  loc_19B9C89:             var_B8 = var_98.Item(var_98)
  loc_19B9C91:             var_100 = var_100.Value
  loc_19B9CBA:             var_130 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_19B9CE5:             var_140 = (1 + Format(CStr(var_120), "000"))
  loc_19B9CEA:             var_8C = CStr(CVar(CStr() & "' or City.LOGSITE_CODE='HO') and UPPER(CITYCODE)='") & Format(CStr(var_120), "000"))
  loc_19B9CF8:           End If
  loc_19B9D06:           Set var_94 = Me.Txt
  loc_19B9D0C:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98, vbNullString)
  loc_19B9D14:           var_98.Text = 1
  loc_19B9D2E:           Set var_94 = Me.Txt
  loc_19B9D34:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, vbNullString)
  loc_19B9D3C:           var_98.Text = var_130
  loc_19B9D56:           Set var_94 = Me.Txt
  loc_19B9D5C:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B9D64:           var_98.Text = vbNullString
  loc_19B9D7E:           Set var_94 = Me.Txt
  loc_19B9D84:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9D8C:           var_98.Text = vbNullString
  loc_19B9DA6:           Set var_94 = Me.Txt
  loc_19B9DAC:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B9DC6:           If (var_98.Enabled = 0) Then
  loc_19B9DD6:             Set var_94 = Me.Txt
  loc_19B9DDC:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19B9DE4:             var_98.Enabled = True
  loc_19B9DF0:           End If
  loc_19B9DFE:           Set var_94 = Me.Txt
  loc_19B9E04:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B9E1E:           If (var_98.Enabled = 0) Then
  loc_19B9E2E:             Set var_94 = Me.Txt
  loc_19B9E34:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19B9E3C:             var_98.Enabled = True
  loc_19B9E48:           End If
  loc_19B9E56:           Set var_94 = Me.Txt
  loc_19B9E5C:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B9E76:           If (var_98.Enabled = 0) Then
  loc_19B9E86:             Set var_94 = Me.Txt
  loc_19B9E8C:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19B9E94:             var_98.Enabled = True
  loc_19B9EA0:           End If
  loc_19B9EAE:           Set var_94 = Me.Txt
  loc_19B9EB4:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9ECE:           If (var_98.Enabled = 0) Then
  loc_19B9EDE:             Set var_94 = Me.Txt
  loc_19B9EE4:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9EEC:             var_98.Enabled = True
  loc_19B9EFA:             arg_10 = &HFF
  loc_19B9EFD:           End If
  loc_19B9F0A:           Set var_94 = Me.Txt
  loc_19B9F10:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_8C)
  loc_19B9F18:           var_98.Tag = arg_10
  loc_19B9F24:           ' Referenced from:       19B9C2B
  loc_19B9F30:           Me.BtnVisa.Enabled = False
  loc_19B9F43:           Set var_94 = Me.Txt
  loc_19B9F49:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19B9F51:           var_EC = CVar(var_98) 'Address
  loc_19B9F58:           var_120 = Trim(var_EC)
  loc_19B9F72:           If (var_120 = "Foreign") Then
  loc_19B9F81:             Me.BtnVisa.Enabled = True
  loc_19B9F89:           End If
  loc_19B9F8C:         Else
  loc_19B9F90:           Set var_94 = Me.TopCtrl1
  loc_19B9F96:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_120)
  loc_19B9FAF:           If (CStr() = "Add") Then
  loc_19B9FB8:             var_B8 = 0
  loc_19B9FD7:             unk_5A23A3.Execute "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,3) AS INT)),1)+1 AS MyCode From City", var_EC, -1
  loc_19B9FDF:             var_94 = var_94.Fields
  loc_19B9FE7:             var_B8 = var_98.Item(var_98)
  loc_19B9FEF:             var_100 = var_100.Value
  loc_19BA018:             var_130 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_19BA033:             var_A8 = CStr(var_120)
  loc_19BA03B:             var_120 = Format(var_A8, "000")
  loc_19BA043:             var_140 = (1 + var_120)
  loc_19BA048:             var_8C = CStr(CVar(CStr() & "' or City.LOGSITE_CODE='HO') and UPPER(CITYCODE)='") & var_120)
  loc_19BA056:           End If
  loc_19BA064:           Set var_94 = Me.Txt
  loc_19BA06A:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98, vbNullString)
  loc_19BA072:           var_98.Text = 1
  loc_19BA08C:           Set var_94 = Me.Txt
  loc_19BA092:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, vbNullString)
  loc_19BA09A:           var_98.Text = var_130
  loc_19BA0B4:           Set var_94 = Me.Txt
  loc_19BA0BA:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19BA0C2:           var_98.Text = vbNullString
  loc_19BA0DC:           Set var_94 = Me.Txt
  loc_19BA0E2:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19BA0EA:           var_98.Text = vbNullString
  loc_19BA104:           Set var_94 = Me.Txt
  loc_19BA10A:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19BA124:           If (var_98.Enabled = 0) Then
  loc_19BA134:             Set var_94 = Me.Txt
  loc_19BA13A:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19BA142:             var_98.Enabled = True
  loc_19BA14E:           End If
  loc_19BA15C:           Set var_94 = Me.Txt
  loc_19BA162:           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19BA17C:           If (var_98.Enabled = 0) Then
  loc_19BA18C:             Set var_94 = Me.Txt
  loc_19BA192:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19BA19A:             var_98.Enabled = True
  loc_19BA1A6:           End If
  loc_19BA1B4:           Set var_94 = Me.Txt
  loc_19BA1BA:           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19BA1D4:           If (var_98.Enabled = 0) Then
  loc_19BA1E4:             Set var_94 = Me.Txt
  loc_19BA1EA:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19BA1F2:             var_98.Enabled = True
  loc_19BA1FE:           End If
  loc_19BA20C:           Set var_94 = Me.Txt
  loc_19BA212:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19BA22C:           If (var_98.Enabled = 0) Then
  loc_19BA23C:             Set var_94 = Me.Txt
  loc_19BA242:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19BA24A:             var_98.Enabled = True
  loc_19BA258:             arg_10 = &HFF
  loc_19BA25B:           End If
  loc_19BA268:           Set var_94 = Me.Txt
  loc_19BA26E:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_8C)
  loc_19BA276:           var_98.Tag = arg_10
  loc_19BA282:         End If
  loc_19BA285:       Else
  loc_19BA28D:         If (var_90 = CInt(&H12)) Then
  loc_19BA29D:           Set var_94 = Me.Txt
  loc_19BA2A3:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA2AB:           var_DC = var_98.Text
  loc_19BA2C2:           If (var_DC = vbNullString) Then
  loc_19BA2C5:             Exit Sub
  loc_19BA2C6:           End If
  loc_19BA2D3:           Set var_94 = Me.Txt
  loc_19BA2D9:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA2E1:           var_98.Tag = vbNullString
  loc_19BA304:           If (Me.RecordCount <= 0) Then
  loc_19BA307:             GoTo loc_19BA61A
  loc_19BA30A:           End If
  loc_19BA310:           Me.MoveFirst
  loc_19BA333:           Set var_94 = Me.Txt
  loc_19BA339:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19BA341:           0 = var_98.Text
  loc_19BA35A:           Me.Find 1 & var_DC & "*'", var_A8, var_120
  loc_19BA386:           If (Me.AbsolutePosition > 0) Then
  loc_19BA3D7:             Set var_94 = Me.Txt
  loc_19BA3DD:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BA3FD:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19BA400:               Exit Sub
  loc_19BA401:             End If
  loc_19BA415:             var_DC = "SELECT COUNTRY.CODE AS CountryCode,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM State LEFT JOIN Country ON STATE.Country=Country.Code WHERE (State.LOGSITE_CODE='" & MemVar_1F92078
  loc_19BA459:             var_150 = CVar(var_DC & "' or State.LOGSITE_CODE='HO') and UPPER(STATE.CODE)='") & Ucase(CVar(Me.Fields.Item("Code"))) & "'" 
  loc_19BA467:             unk_5A23A3.Execute CStr(var_150), var_160, -1
  loc_19BA472:             Set var_88 = var_100
  loc_19BA4A6:             If (var_88.RecordCount > 0) Then
  loc_19BA4E4:               Set var_100 = Me.Txt
  loc_19BA4EA:               Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BA4F2:               var_164.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_19BA543:               Set var_100 = Me.Txt
  loc_19BA549:               Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BA551:               var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19BA59D:               Set var_100 = Me.Txt
  loc_19BA5A3:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_164)
  loc_19BA5AB:               var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CountryName")))
  loc_19BA5D6:               var_98 = var_88.Fields.Item("CountryType")
  loc_19BA5F5:               Set var_100 = Me.Txt
  loc_19BA5FB:               Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19BA603:               var_164.Text = Proc_6_38_E68A98(CVar(var_98))
  loc_19BA617:               GoTo loc_19BA830
  loc_19BA61A:               ' Referenced from:         19BA307
  loc_19BA61A:             End If
  loc_19BA620:             global_64 = vbNullString
  loc_19BA650:             Set var_94 = Me.Txt
  loc_19BA656:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, "sELECT COUNT(*) FROM STATE WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19BA65E:             var_EC = CVar(var_98) 'Address
  loc_19BA665:             var_120 = Ucase(var_EC)
  loc_19BA684:             unk_5A23A3.Execute CStr(var_164 & var_120 & "'"), 0, var_168
  loc_19BA694:              = var_164.Item(var_100)
  loc_19BA69C:              = var_168.Value
  loc_19BA6C9:             If (var_100.Fields = 0) Then
  loc_19BA6D0:               Set var_94 = Me.TopCtrl1
  loc_19BA6D6:               Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_19BA6EF:               If (CStr() = "Add") Then
  loc_19BA6F8:                 var_B8 = 0
  loc_19BA717:                 unk_5A23A3.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From State", var_EC, -1
  loc_19BA71F:                 var_94 = var_94.Fields
  loc_19BA727:                 var_B8 = var_98.Item(var_98)
  loc_19BA72F:                 var_100 = var_100.Value
  loc_19BA765:                 var_EC = Left(MemVar_1F92070, 1)
  loc_19BA798:                 var_140 = (1 + Format(CStr("000"), "000"))
  loc_19BA7A3:                 global_64 = CStr(var_164 & "000" & "'")
  loc_19BA7B5:               End If
  loc_19BA7B5:             End If
  loc_19BA7C3:             Set var_94 = Me.Txt
  loc_19BA7C9:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, vbNullString)
  loc_19BA7D1:             var_98.Text = 1
  loc_19BA7EB:             Set var_94 = Me.Txt
  loc_19BA7F1:             Call 0.Method_Txt_Validate0 (CInt(3), var_98, vbNullString)
  loc_19BA7F9:             var_98.Text = var_EC
  loc_19BA816:             Set var_94 = Me.Txt
  loc_19BA81C:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19BA824:             var_98.Tag = global_64
  loc_19BA830:             ' Referenced from:         19BA617
  loc_19BA833:           Else
  loc_19BA839:             global_64 = vbNullString
  loc_19BA869:             Set var_94 = Me.Txt
  loc_19BA86F:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98, "sELECT COUNT(*) FROM STATE WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19BA877:             var_EC = CVar(var_98) 'Address
  loc_19BA87E:             var_120 = Ucase(var_EC)
  loc_19BA89D:             unk_5A23A3.Execute CStr(var_164 & var_120 & "'"), 0, var_168
  loc_19BA8AD:              = var_164.Item(var_120)
  loc_19BA8B5:              = var_168.Value
  loc_19BA8E2:             If (var_100.Fields = 0) Then
  loc_19BA8E9:               Set var_94 = Me.TopCtrl1
  loc_19BA8EF:               Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_19BA908:               If (CStr() = "Add") Then
  loc_19BA911:                 var_B8 = 0
  loc_19BA930:                 unk_5A23A3.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From State", var_EC, -1
  loc_19BA938:                 var_94 = var_94.Fields
  loc_19BA940:                 var_B8 = var_98.Item(var_98)
  loc_19BA948:                 var_100 = var_100.Value
  loc_19BA976:                 var_A8 = MemVar_1F92070
  loc_19BA97E:                 var_EC = Left(var_A8, 1)
  loc_19BA995:                 var_120 = "000"
  loc_19BA9B1:                 var_140 = (1 + Format(CStr(var_120), var_120))
  loc_19BA9BC:                 global_64 = CStr(var_164 & var_120 & "'")
  loc_19BA9CE:               End If
  loc_19BA9CE:             End If
  loc_19BA9DC:             Set var_94 = Me.Txt
  loc_19BA9E2:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, vbNullString)
  loc_19BA9EA:             var_98.Text = 1
  loc_19BAA04:             Set var_94 = Me.Txt
  loc_19BAA0A:             Call 0.Method_Txt_Validate0 (CInt(3), var_98, vbNullString)
  loc_19BAA12:             var_98.Text = var_EC
  loc_19BAA2F:             Set var_94 = Me.Txt
  loc_19BAA35:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19BAA3D:             var_98.Tag = global_64
  loc_19BAA49:           End If
  loc_19BAA4C:         Else
  loc_19BAA54:           If (var_90 = CInt(&H13)) Then
  loc_19BAA64:             Set var_94 = Me.Txt
  loc_19BAA6A:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BAA72:             var_DC = var_98.Text
  loc_19BAA89:             If (var_DC = vbNullString) Then
  loc_19BAA8C:               Exit Sub
  loc_19BAA8D:             End If
  loc_19BAA9A:             Set var_94 = Me.Txt
  loc_19BAAA0:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BAAA8:             var_98.Tag = vbNullString
  loc_19BAACB:             If (Me.RecordCount > 0) Then
  loc_19BAAD4:               Me.MoveFirst
  loc_19BAADC:             Else
  loc_19BAADF:             Else
  loc_19BAAFD:               Set var_94 = Me.Txt
  loc_19BAB03:               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19BAB0B:               0 = var_98.Text
  loc_19BAB1B:               var_10C = 1 & var_DC & "*'"
  loc_19BAB24:               Me.Find var_10C, var_A8, var_120
  loc_19BAB50:               If (Me.AbsolutePosition > 0) Then
  loc_19BABA1:                 Set var_94 = Me.Txt
  loc_19BABA7:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BABC7:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19BABCA:                   Exit Sub
  loc_19BABCB:                 End If
  loc_19BAC0E:                 var_130 = "SELECT Country.Name AS CountryName,Country.Type as CountryType FROM Country WHERE Upper(CODE)='" & Ucase(CVar(Me.Fields.Item("Code"))) 
  loc_19BAC25:                 unk_5A23A3.Execute CStr(var_130 & "'"), var_150, -1
  loc_19BAC30:                 Set var_88 = var_100
  loc_19BAC5E:                 If (var_88.RecordCount > 0) Then
  loc_19BAC9C:                   Set var_100 = Me.Txt
  loc_19BACA2:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BACAA:                   var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19BACFB:                   Set var_100 = Me.Txt
  loc_19BAD01:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BAD09:                   var_164.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_19BAD36:                   var_98 = var_88.Fields.Item("CountryType")
  loc_19BAD55:                   Set var_100 = Me.Txt
  loc_19BAD5B:                   Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19BAD63:                   var_164.Text = Proc_6_38_E68A98(CVar(var_98))
  loc_19BAD7A:                 Else
  loc_19BAD80:                   global_64 = vbNullString
  loc_19BADB0:                   Set var_94 = Me.Txt
  loc_19BADB6:                   Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, "SELECT COUNT(*) FROM COUNTRY WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19BADBE:                   var_EC = CVar(var_98) 'Address
  loc_19BADC5:                   var_120 = Ucase(var_EC)
  loc_19BADE4:                   unk_5A23A3.Execute CStr(var_164 & var_120 & "'"), 0, var_168
  loc_19BADF4:                    = var_164.Item(var_100)
  loc_19BADFC:                    = var_168.Value
  loc_19BAE29:                   If (var_100.Fields = 0) Then
  loc_19BAE30:                     Set var_94 = Me.TopCtrl1
  loc_19BAE36:                     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_19BAE4F:                     If (CStr() = "Add") Then
  loc_19BAE58:                       var_B8 = 0
  loc_19BAE77:                       unk_5A23A3.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Country", var_EC, -1
  loc_19BAE7F:                       var_94 = var_94.Fields
  loc_19BAE87:                       var_B8 = var_98.Item(var_98)
  loc_19BAE8F:                       var_100 = var_100.Value
  loc_19BAEC5:                       var_EC = Left(MemVar_1F92070, 1)
  loc_19BAEF8:                       var_140 = (1 + Format(CStr("000"), "000"))
  loc_19BAF03:                       global_64 = CStr(var_164 & "000" & "'")
  loc_19BAF15:                     End If
  loc_19BAF15:                   End If
  loc_19BAF26:                   Set var_94 = Me.Txt
  loc_19BAF2C:                   Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, global_64)
  loc_19BAF34:                   var_98.Tag = 1
  loc_19BAF40:                 End If
  loc_19BAF43:               Else
  loc_19BAF43:               End If
  loc_19BAF49:               global_64 = vbNullString
  loc_19BAF79:               Set var_94 = Me.Txt
  loc_19BAF7F:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, "SELECT COUNT(*) FROM COUNTRY WHERE UPPER(NAME)='", var_150, -1, var_100)
  loc_19BAF87:               var_EC = CVar(var_98) 'Address
  loc_19BAFAD:               unk_5A23A3.Execute CStr(var_164 & Ucase(var_EC) & "'"), 0, var_168
  loc_19BAFC5:                = var_168.Value
  loc_19BAFF2:               If (var_100.Fields = 0) Then
  loc_19BAFF9:                 Set var_94 = Me.TopCtrl1
  loc_19BAFFF:                 Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_19BB018:                 If (CStr() = "Add") Then
  loc_19BB021:                   var_B8 = 0
  loc_19BB040:                   unk_5A23A3.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Country", var_EC, -1
  loc_19BB048:                   var_94 = var_94.Fields
  loc_19BB050:                   var_B8 = var_98.Item(var_98)
  loc_19BB058:                   var_100 = var_100.Value
  loc_19BB08E:                   var_EC = Left(MemVar_1F92070, 1)
  loc_19BB0B9:                   var_130 = Format(CStr(var_164.Item(var_EC)), "000")
  loc_19BB0C1:                   var_140 = (1 + var_130)
  loc_19BB0C6:                   var_DC = CStr(var_164 & Ucase(var_EC) & "'")
  loc_19BB0CC:                   global_64 = var_DC
  loc_19BB0DE:                 End If
  loc_19BB0DE:               End If
  loc_19BB0EF:               Set var_94 = Me.Txt
  loc_19BB0F5:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_98, global_64)
  loc_19BB0FD:               var_98.Tag = 1
  loc_19BB109:             End If
  loc_19BB10C:           Else
  loc_19BB114:             If (var_90 = CInt(&HB)) Then
  loc_19BB124:               Set var_94 = Me.Txt
  loc_19BB12A:               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BB132:               var_EC = var_98.Text
  loc_19BB14B:               If (Len(var_DC) <> 0) Then
  loc_19BB158:                 Set var_94 = Me.Txt
  loc_19BB15E:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB16D:                 Set var_168 = Me.Txt
  loc_19BB173:                 Call 0.Method_Txt_Validate0 (Cancel, var_17C)
  loc_19BB187:                 var_120 = Left(CVar(var_98), 1)
  loc_19BB18F:                 var_A8 = "+"
  loc_19BB1A6:                 Set var_100 = Me.Txt
  loc_19BB1AC:                 Call 0.Method_Txt_Validate0 (Cancel, var_164, var_DC)
  loc_19BB1B4:                 (var_120 = MemVar_1F92070) = var_164.Text
  loc_19BB1D1:                 var_140 = var_120 And (Len(CStr(Val(var_DC))) >= &HC)
  loc_19BB1DD:                 var_150 = CVar(var_17C) 'Address
  loc_19BB1EC:                 var_C8 = "+"
  loc_19BB203:                 Set var_180 = Me.Txt
  loc_19BB209:                 Call 0.Method_Txt_Validate0 (Cancel, var_184, var_10C)
  loc_19BB211:                 (Left(var_150, 1) <> "000") = var_184.Text
  loc_19BB265:                 If CBool(Not  Or var_140 And (Len(CStr(Val(var_10C))) >= &HA)) Then
  loc_19BB281:                   MsgBox("Invalid Mobile No.!", &H10, var_120, var_130, var_140)
  loc_19BB293:                   arg_10 = &HFF
  loc_19BB296:                 End If
  loc_19BB296:               End If
  loc_19BB299:             Else
  loc_19BB2A1:               If (var_90 = CInt(7)) Then
  loc_19BB2F2:                 Set var_94 = Me.Txt
  loc_19BB2F8:                 Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BB300:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_19BB318:                 If (arg_10 Or (var_DC = vbNullString)) Then
  loc_19BB31B:                   Exit Sub
  loc_19BB31C:                 End If
  loc_19BB357:                 Set var_100 = Me.Txt
  loc_19BB35D:                 Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BB365:                 var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19BB398:                 var_98 = Me.Fields.Item("Code")
  loc_19BB3B6:                 Set var_100 = Me.Txt
  loc_19BB3BC:                 Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BB3C4:                 var_164.Tag = CStr(var_98.Value)
  loc_19BB3DD:               Else
  loc_19BB3E5:                 If (var_90 = CInt(&H11)) Then
  loc_19BB436:                   Set var_94 = Me.Txt
  loc_19BB43C:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB45C:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19BB461:                     arg_10 = &HFF
  loc_19BB464:                     Exit Sub
  loc_19BB465:                   End If
  loc_19BB4A0:                   Set var_100 = Me.Txt
  loc_19BB4A6:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BB4AE:                   var_164.Text = CStr(Me.Fields.Item("Name").Value)
  loc_19BB4E1:                   var_98 = Me.Fields.Item("Code")
  loc_19BB4F2:                   var_DC = CStr(var_98.Value)
  loc_19BB4FF:                   Set var_100 = Me.Txt
  loc_19BB505:                   Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BB50D:                   var_164.Tag = var_DC
  loc_19BB523:                   var_A8 = 1
  loc_19BB52F:                   var_C8 = CVar(CLng(4)) 'Long
  loc_19BB541:                   Set var_94 = Me.Txt
  loc_19BB547:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BB54F:                   var_C8 = var_98.Text
  loc_19BB557:                   var_EC = CVar(var_DC) 'String
  loc_19BB55F:                   Set var_100 = Me.FGrid
  loc_19BB565:                   LateIdCallSt
  loc_19BB597:                   Set var_94 = Me.Txt
  loc_19BB59D:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, CVar(CLng(&H1D)), 1)
  loc_19BB5A5:                   var_100 = var_98.Tag
  loc_19BB5AD:                   var_EC = CVar(var_DC) 'String
  loc_19BB5B5:                   Set var_100 = Me.FGrid
  loc_19BB5BB:                   LateIdCallSt
  loc_19BB5D2:                 Else
  loc_19BB5DA:                   If (var_90 = CInt(&H25)) Then
  loc_19BB62B:                     Set var_94 = Me.Txt
  loc_19BB631:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_100)
  loc_19BB651:                     If (var_98.Text Or (var_DC = vbNullString)) Then
  loc_19BB654:                       Exit Sub
  loc_19BB655:                     End If
  loc_19BB65B:                     var_A8 = "Name"
  loc_19BB690:                     Set var_100 = Me.Txt
  loc_19BB696:                     Call 0.Method_Txt_Validate0 (Cancel, var_164, CStr(Me.Fields.Item(var_A8).Value))
  loc_19BB69E:                     var_164.Text = var_A8
  loc_19BB6BA:                     var_A8 = "Code"
  loc_19BB6D1:                     var_98 = Me.Fields.Item(var_A8)
  loc_19BB6EF:                     Set var_100 = Me.Txt
  loc_19BB6F5:                     Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BB6FD:                     var_164.Tag = CStr(var_98.Value)
  loc_19BB716:                   Else
  loc_19BB71E:                     If (var_90 = CInt(&H14)) Then
  loc_19BB72E:                       Set var_94 = Me.Txt
  loc_19BB734:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB73C:                       var_DC = var_98.Text
  loc_19BB753:                       If (var_DC = vbNullString) Then
  loc_19BB756:                         Exit Sub
  loc_19BB757:                       End If
  loc_19BB764:                       Set var_94 = Me.Txt
  loc_19BB76A:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB772:                       var_98.Tag = vbNullString
  loc_19BB795:                       If (Me.RecordCount <= 0) Then
  loc_19BB798:                         Exit Sub
  loc_19BB799:                       End If
  loc_19BB79F:                       Me.MoveFirst
  loc_19BB7C2:                       Set var_94 = Me.Txt
  loc_19BB7C8:                       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC, "Name like '")
  loc_19BB7D0:                       0 = var_98.Text
  loc_19BB7E9:                       Me.Find 1 & var_DC & "*'", var_A8, arg_10
  loc_19BB815:                       If (Me.AbsolutePosition > 0) Then
  loc_19BB866:                         Set var_94 = Me.Txt
  loc_19BB86C:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BB88C:                         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_19BB88F:                           Exit Sub
  loc_19BB890:                         End If
  loc_19BB8A4:                         var_DC = "SELECT City.CityName,CITY.ZIPCODE,City.CityCode,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (City.LOGSITE_CODE='" & MemVar_1F92078
  loc_19BB8E4:                         var_140 = CVar(var_DC & "' or City.LOGSITE_CODE='HO') and ZIPCODE='") & Me.Fields.Item("Code").Value & "'" 
  loc_19BB8F2:                         unk_5A23A3.Execute CStr(var_140), var_150, -1
  loc_19BB8FD:                         Set var_88 = var_100
  loc_19BB931:                         If (var_88.RecordCount > 0) Then
  loc_19BB96D:                           Set var_100 = Me.Txt
  loc_19BB973:                           Call 0.Method_Txt_Validate0 (CInt(6), var_164)
  loc_19BB97B:                           var_164.Text = CStr(var_88.Fields.Item("CityName").Value)
  loc_19BB9CA:                           Set var_100 = Me.Txt
  loc_19BB9D0:                           Call 0.Method_Txt_Validate0 (CInt(6), var_164)
  loc_19BB9D8:                           var_164.Tag = CStr(var_88.Fields.Item("CITYCODE").Value)
  loc_19BBA24:                           Set var_100 = Me.Txt
  loc_19BBA2A:                           Call 0.Method_Txt_Validate0 (CInt(&H14), var_164)
  loc_19BBA32:                           var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Zipcode")))
  loc_19BBA7C:                           Set var_100 = Me.Txt
  loc_19BBA82:                           Call 0.Method_Txt_Validate0 (CInt(&H12), var_164)
  loc_19BBA8A:                           var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")))
  loc_19BBAD4:                           Set var_100 = Me.Txt
  loc_19BBADA:                           Call 0.Method_Txt_Validate0 (CInt(&H13), var_164)
  loc_19BBAE2:                           var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CountryName")))
  loc_19BBB0D:                           var_98 = var_88.Fields.Item("CountryType")
  loc_19BBB2C:                           Set var_100 = Me.Txt
  loc_19BBB32:                           Call 0.Method_Txt_Validate0 (CInt(3), var_164)
  loc_19BBB3A:                           var_164.Text = Proc_6_38_E68A98(CVar(var_98))
  loc_19BBB51:                         Else
  loc_19BBB5F:                           Set var_94 = Me.Txt
  loc_19BBB65:                           Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_19BBB6D:                           var_98.Text = vbNullString
  loc_19BBB87:                           Set var_94 = Me.Txt
  loc_19BBB8D:                           Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_19BBB95:                           var_98.Tag = vbNullString
  loc_19BBBAF:                           Set var_94 = Me.Txt
  loc_19BBBB5:                           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_19BBBBD:                           var_98.Text = vbNullString
  loc_19BBBD7:                           Set var_94 = Me.Txt
  loc_19BBBDD:                           Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_19BBBE5:                           var_98.Text = vbNullString
  loc_19BBBFF:                           Set var_94 = Me.Txt
  loc_19BBC05:                           Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_19BBC0D:                           var_98.Text = vbNullString
  loc_19BBC27:                           Set var_94 = Me.Txt
  loc_19BBC2D:                           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_19BBC35:                           var_98.Text = vbNullString
  loc_19BBC41:                         End If
  loc_19BBC41:                       End If
  loc_19BBC44:                     Else
  loc_19BBC4C:                       If Not (var_90 = CInt(&H2E)) Then
  loc_19BBC57:                         If (var_90 = CInt(&H49)) Then
  loc_19BBC5A:                         End If
  loc_19BBC64:                         Set var_94 = Me.Txt
  loc_19BBC6A:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BBC76:                         Proc_6_40_EA50F0(CVar(var_98))
  loc_19BBC8A:                         Set var_100 = Me.Txt
  loc_19BBC90:                         Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BBC98:                         var_164.Text = CStr(var_100)
  loc_19BBCB9:                         Set var_94 = Me.Txt
  loc_19BBCBF:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BBCDF:                         If (CDbl(var_98.Text) > CDbl(&H78)) Then
  loc_19BBCF3:                           Set var_94 = Me.Txt
  loc_19BBCF9:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BBD01:                           var_98.Text = CStr(0)
  loc_19BBD12:                           arg_10 = &HFF
  loc_19BBD15:                           Exit Sub
  loc_19BBD16:                         End If
  loc_19BBD23:                         Set var_94 = Me.Txt
  loc_19BBD29:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BBD3E:                         var_1C0 = Val(var_98.Text)
  loc_19BBD50:                         var_120 = "0"
  loc_19BBD60:                         var_130 = Format(CVar(var_1C0), var_120)
  loc_19BBD68:                         var_108 = CStr(var_130)
  loc_19BBD76:                         Set var_100 = Me.Txt
  loc_19BBD7C:                         Call 0.Method_Txt_Validate0 (Cancel, var_164, var_108, 1)
  loc_19BBD84:                         var_164.Text = 1
  loc_19BBDA7:                       Else
  loc_19BBDAF:                         If Not (var_90 = CInt(&H17)) Then
  loc_19BBDBA:                           If Not (var_90 = CInt(&H2F)) Then
  loc_19BBDC5:                             If Not (var_90 = CInt(&H32)) Then
  loc_19BBDD0:                               If Not (var_90 = CInt(&H33)) Then
  loc_19BBDDB:                                 If (var_90 = CInt(&H40)) Then
  loc_19BBDDE:                                 End If
  loc_19BBDDE:                               End If
  loc_19BBDDE:                             End If
  loc_19BBDDE:                           End If
  loc_19BBDE8:                           Set var_94 = Me.Txt
  loc_19BBDEE:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BBE0E:                           Set var_164 = Me.Txt
  loc_19BBE14:                           Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_19BBE1C:                           var_168.Text = Proc_6_33_1512840(var_98, var_1C0)
  loc_19BBE32:                         Else
  loc_19BBE3A:                           If Not (var_90 = CInt(4)) Then
  loc_19BBE45:                             If (var_90 = CInt(5)) Then
  loc_19BBE48:                             End If
  loc_19BBE52:                             Set var_94 = Me.Txt
  loc_19BBE58:                             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BBE78:                             Set var_164 = Me.Txt
  loc_19BBE7E:                             Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_19BBE86:                             var_168.Text = Proc_6_33_1512840(var_98)
  loc_19BBEA7:                             Set var_94 = Me.Txt
  loc_19BBEAD:                             Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BBED0:                             Set var_100 = Me.Txt
  loc_19BBED6:                             Call 0.Method_Txt_Validate0 (CInt(5), var_164, var_108)
  loc_19BBEDE:                             (var_98.Text <> vbNullString) = var_164.Text
  loc_19BBEFE:                             If (arg_10 And (var_108 <> vbNullString)) Then
  loc_19BBF0F:                               Set var_100 = Me.Txt
  loc_19BBF15:                               Call 0.Method_Txt_Validate0 (CInt(5), var_164)
  loc_19BBF30:                               Set var_94 = Me.Txt
  loc_19BBF36:                               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BBF60:                               If (CDate(var_98.Text) > CDate(var_164.Text)) Then
  loc_19BBF7C:                                 MsgBox("Birth Date Should be Less Than Anniversary Date", 0, var_120, var_130, var_140)
  loc_19BBF8E:                                 arg_10 = &HFF
  loc_19BBF91:                                 Exit Sub
  loc_19BBF92:                               End If
  loc_19BBFA8:                               Set var_94 = Me.Txt
  loc_19BBFAE:                               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BBFB6:                               var_DC = var_98.Text
  loc_19BBFD7:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BBFF3:                                 MsgBox("Invalid Birth Date ", 0, var_120, var_130, var_140)
  loc_19BC005:                                 arg_10 = &HFF
  loc_19BC008:                                 Exit Sub
  loc_19BC009:                               End If
  loc_19BC01F:                               Set var_94 = Me.Txt
  loc_19BC025:                               Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_DC)
  loc_19BC02D:                               arg_10 = var_98.Text
  loc_19BC04E:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BC06A:                                 MsgBox("Invalid Anniversary Date", 0, var_120, var_130, var_140)
  loc_19BC07C:                                 arg_10 = &HFF
  loc_19BC07F:                                 Exit Sub
  loc_19BC080:                               End If
  loc_19BC080:                             End If
  loc_19BC08E:                             Set var_94 = Me.Txt
  loc_19BC094:                             Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_DC)
  loc_19BC09C:                             arg_10 = var_98.Text
  loc_19BC0B3:                             If (var_DC <> vbNullString) Then
  loc_19BC0CC:                               Set var_94 = Me.Txt
  loc_19BC0D2:                               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_19BC0DA:                               var_DC = var_98.Text
  loc_19BC0FB:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BC117:                                 MsgBox("Invalid Birth Date ", 0, var_120, var_130, var_140)
  loc_19BC129:                                 arg_10 = &HFF
  loc_19BC12C:                                 Exit Sub
  loc_19BC12D:                               End If
  loc_19BC12D:                             End If
  loc_19BC13B:                             Set var_94 = Me.Txt
  loc_19BC141:                             Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_DC)
  loc_19BC149:                             arg_10 = var_98.Text
  loc_19BC160:                             If (var_DC <> vbNullString) Then
  loc_19BC179:                               Set var_94 = Me.Txt
  loc_19BC17F:                               Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_19BC187:                               var_DC = var_98.Text
  loc_19BC1A8:                               If (CDate(var_DC) > CDate(Now)) Then
  loc_19BC1C4:                                 MsgBox("Invalid Anniversary Date", 0, var_120, var_130, var_140)
  loc_19BC1D6:                                 arg_10 = &HFF
  loc_19BC1D9:                                 Exit Sub
  loc_19BC1DA:                               End If
  loc_19BC1DA:                             End If
  loc_19BC1DD:                           Else
  loc_19BC1E5:                             If (var_90 = CInt(3)) Then
  loc_19BC1F5:                               Set var_94 = Me.Txt
  loc_19BC1FB:                               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_19BC203:                               arg_10 = var_98.Text
  loc_19BC21A:                               If (var_DC <> vbNullString) Then
  loc_19BC235:                                 Set var_98 = Me.ListView.SelectedItem
  loc_19BC24D:                                 Set var_100 = Me.Txt
  loc_19BC253:                                 Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_19BC25B:                                 var_164.Text = var_98.Text
  loc_19BC271:                               End If
  loc_19BC27E:                               Set var_94 = Me.Txt
  loc_19BC284:                               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BC2A3:                               If (var_98.Text = "Foreign") Then
  loc_19BC2B2:                                 Me.BtnVisa.Enabled = True
  loc_19BC2BD:                               Else
  loc_19BC2C9:                                 Me.BtnVisa.Enabled = False
  loc_19BC2D1:                               End If
  loc_19BC2D4:                             Else
  loc_19BC2DC:                               If (var_90 = CInt(&HD)) Then
  loc_19BC2EC:                                 Set var_94 = Me.Txt
  loc_19BC2F2:                                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BC311:                                 If (var_98.Text <> vbNullString) Then
  loc_19BC321:                                   Set var_94 = Me.Txt
  loc_19BC327:                                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BC346:                                   If (var_98.Text <> "NA") Then
  loc_19BC358:                                     Set var_94 = Me.Txt
  loc_19BC35E:                                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_19BC379:                                     var_8E = CInt(InStr(1, CVar(var_98), "@", 0))
  loc_19BC38C:                                     If (var_8E <> 0) Then
  loc_19BC3A0:                                       Set var_94 = Me.Txt
  loc_19BC3A6:                                       Call 0.Method_Txt_Validate0 (Cancel, var_98, CLng((var_8E + 1)))
  loc_19BC3BC:                                       var_120 = InStr(var_8E, CVar(var_98), "@", 0)
  loc_19BC3D2:                                       If CBool(var_120 <> 0) Then
  loc_19BC3E3:                                         var_A8 = "Enter Valid E-Mail Id."
  loc_19BC3EE:                                         MsgBox("@", &H40, var_120, var_130, var_140)
  loc_19BC400:                                         arg_10 = &HFF
  loc_19BC403:                                         Exit Sub
  loc_19BC404:                                       End If
  loc_19BC407:                                     Else
  loc_19BC415:                                       var_A8 = "Enter Valid E-Mail Id."
  loc_19BC420:                                       MsgBox("@", &H40, var_120, var_130, var_140)
  loc_19BC432:                                       arg_10 = &HFF
  loc_19BC435:                                       Exit Sub
  loc_19BC436:                                     End If
  loc_19BC440:                                     Set var_94 = Me.Txt
  loc_19BC446:                                     Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_19BC46B:                                     Set var_100 = Me.Txt
  loc_19BC471:                                     Call 0.Method_Txt_Validate0 (Cancel, var_164, CStr(LCase(CVar(var_98))))
  loc_19BC479:                                     var_164.Text = arg_10
  loc_19BC491:                                   End If
  loc_19BC491:                                 End If
  loc_19BC491:                               End If
  loc_19BC491:                             End If
  loc_19BC491:                           End If
  loc_19BC491:                         End If
  loc_19BC491:                       End If
  loc_19BC491:                     End If
  loc_19BC491:                   End If
  loc_19BC491:                 End If
  loc_19BC491:               End If
  loc_19BC491:             End If
  loc_19BC491:           End If
  loc_19BC491:         End If
  loc_19BC491:       End If
  loc_19BC491:     End If
  loc_19BC491:   End If
  loc_19BC491: End If
  loc_19BC491: Exit Sub
End Sub

Private Sub DGGuestStatus_UnknownEvent_9 'F38F44
  'Data Table: 5A2370
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38E3B: Me.DGGuestStatus.Visible = False
  loc_F38E5A: If (Me.RecordCount > 0) Then
  loc_F38E99:   Set var_B4 = Me.Txt
  loc_F38E9F:   Call 0.Method_DGGuestStatus_UnknownEvent_90 (CInt(7), var_B8)
  loc_F38EA7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F38EDA:   var_B0 = Me.Fields.Item("Name")
  loc_F38EF9:   Set var_B4 = Me.Txt
  loc_F38EFF:   Call 0.Method_DGGuestStatus_UnknownEvent_90 (CInt(7), var_B8)
  loc_F38F07:   var_B8.Text = CStr(var_B0.Value)
  loc_F38F1D: End If
  loc_F38F28: Set var_A8 = Me.Txt
  loc_F38F2E: Call 0.Method_DGGuestStatus_UnknownEvent_90 (CInt(7))
  loc_F38F36: var_B0.SetFocus
  loc_F38F42: Exit Sub
End Sub

Private Sub DGGuestStatus_UnknownEvent_1F 'E741C8
  'Data Table: 5A2370
  loc_E74186: Proc_6_153_E91194(Me.DGGuestStatus, arg_14)
  loc_E7419D: Set var_8C = Me.FGPoint
  loc_E741B9: Proc_6_138_106D6F8(Me.DGGuestStatus, global_104, CInt(7))
  loc_E741C7: Exit Sub
End Sub

Private Sub DGNationality_UnknownEvent_9 'FB17B0
  'Data Table: 5A2370
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FB1633: Me.DGNationality.Visible = False
  loc_FB1652: If (Me.RecordCount > 0) Then
  loc_FB16AE:   Set var_CC = Me.Txt
  loc_FB16B4:   Call 0.Method_DGNationality_UnknownEvent_90 (CInt(Val(CStr(Me.DGNationality.Tag))), var_D0)
  loc_FB16BC:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FB16E0:   Set var_B4 = Me.DGNationality
  loc_FB16F6:   var_EC = Val(CStr(var_B4.Tag))
  loc_FB1735:   Set var_CC = Me.Txt
  loc_FB173B:   Call 0.Method_DGNationality_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_FB1743:   var_D0.Text = var_EC
  loc_FB1763: End If
  loc_FB1767: Set var_A8 = Me.DGNationality
  loc_FB176D: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF3C
  loc_FB177D: var_EC = Val(CStr(var_EC))
  loc_FB178B: Set var_B0 = Me.Txt
  loc_FB1791: Call 0.Method_DGNationality_UnknownEvent_90 (CInt(var_EC), var_B4)
  loc_FB1799: var_B4.SetFocus
  loc_FB17AD: Exit Sub
  loc_FB17AE: var_EC() = 
End Sub

Private Sub DGNationality_UnknownEvent_1F 'E74CC4
  'Data Table: 5A2370
  loc_E74C82: Proc_6_153_E91194(Me.DGNationality, arg_14)
  loc_E74C99: Set var_8C = Me.FGPoint
  loc_E74CB5: Proc_6_138_106D6F8(Me.DGNationality, global_108, CInt(&H11))
  loc_E74CC3: Exit Sub
End Sub

Private Sub DGState_UnknownEvent_9 'F39624
  'Data Table: 5A2370
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3951B: Me.DGState.Visible = False
  loc_F3953A: If (Me.RecordCount > 0) Then
  loc_F39579:   Set var_B4 = Me.Txt
  loc_F3957F:   Call 0.Method_DGState_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F39587:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F395BA:   var_B0 = Me.Fields.Item("Name")
  loc_F395D9:   Set var_B4 = Me.Txt
  loc_F395DF:   Call 0.Method_DGState_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F395E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F395FD: End If
  loc_F39608: Set var_A8 = Me.Txt
  loc_F3960E: Call 0.Method_DGState_UnknownEvent_90 (CInt(&H12))
  loc_F39616: var_B0.SetFocus
  loc_F39622: Exit Sub
End Sub

Private Sub DGState_UnknownEvent_1F 'E75448
  'Data Table: 5A2370
  loc_E75406: Proc_6_153_E91194(Me.DGState, arg_14)
  loc_E7541D: Set var_8C = Me.FGPoint
  loc_E75439: Proc_6_138_106D6F8(Me.DGState, global_100, CInt(&H12))
  loc_E75447: Exit Sub
End Sub

Private Sub Command1_Click() '10F86E0
  'Data Table: 5A2370
  Dim var_8C As Recordset15
  Dim var_D8 As Variant
  Dim var_1E0 As Variant
  Dim var_248 As Variant
  Dim var_350 As Variant
  Dim unk_5A23A3 As Connection15
  loc_10F8454: Set var_8C = New 
  loc_10F8477: Me.Recordset15.Open "Select docid, guestprof from guestfolio where docid not in (select docid from GuestFolioProfDetail)", CVar(MemVar_1F92044), 3
  loc_10F847C: ' Referenced from: 10F86D9
  loc_10F848B: If Not(var_8C.EOF) Then
  loc_10F84CA:   var_D8 = "Insert Into GuestFolioProfDetail (Docid,GuestProf,mProf,U_AE,U_EntDt,U_Name,Site_Code,LogSite_Code) values ('" & var_8C.Fields.Item("DocID").Value 
  loc_10F856F:   var_1E0 = var_D8 & "','" & var_8C.Fields.Item("GuestProf").Value & "','" & var_8C.Fields.Item("GuestProf").Value & "','" & var_8C.Fields.Item("U_AE").Value 
  loc_10F85A2:   Proc_6_7_F25D88(var_238, CVar(var_8C.Fields.Item("U_EntDt")), var_1E0 & "',", var_394)
  loc_10F85AA:   var_248 = -1 & var_238 
  loc_10F864F:   var_350 = var_248 & ",'" & var_8C.Fields.Item("U_Name").Value & "','" & var_8C.Fields.Item("Site_Code").Value & "','" & var_8C.Fields.Item("LogSite_Code").Value 
  loc_10F8666:   unk_5A23A3.Execute CStr(var_350 & "')"), var_398, 3
  loc_10F8671:   Set var_88 = var_398
  loc_10F86D4:   var_8C.MoveNext
  loc_10F86D9:   GoTo loc_10F847C
  loc_10F86DC: End If
  loc_10F86DC: Exit Sub
End Sub

Private Sub DGZipCode_UnknownEvent_9 'EE46BC
  'Data Table: 5A2370
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE4613: Me.DGZipCode.Visible = False
  loc_EE4632: If (Me.RecordCount > 0) Then
  loc_EE4652:   var_B0 = Me.Fields.Item("Name")
  loc_EE4671:   Set var_B4 = Me.Txt
  loc_EE4677:   Call 0.Method_DGZipCode_UnknownEvent_90 (CInt(&H14), var_B8)
  loc_EE467F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE4695: End If
  loc_EE46A0: Set var_A8 = Me.Txt
  loc_EE46A6: Call 0.Method_DGZipCode_UnknownEvent_90 (CInt(&H14))
  loc_EE46AE: var_B0.SetFocus
  loc_EE46BA: Exit Sub
  loc_EE46BB: var_B0 = 
End Sub

Private Sub DGZipCode_UnknownEvent_1F 'E7650C
  'Data Table: 5A2370
  loc_E764CA: Proc_6_153_E91194(Me.DGZipCode, arg_14)
  loc_E764E1: Set var_8C = Me.FGPoint
  loc_E764FD: Proc_6_138_106D6F8(Me.DGZipCode, global_112, CInt(&H14))
  loc_E7650B: Exit Sub
End Sub

Public Sub TXT_CITY_UnknownEvent_B(Index As Integer) 'E55FCC
  'Data Table: 5A2370
  loc_E55F96: If (CLng(Index) = &H2E) Then
  loc_E55FA9:   Me.TXT_CITY.defText = vbNullString
  loc_E55FC1:   Me.TXT_CITY.BoundText = vbNullString
  loc_E55FC9: End If
  loc_E55FC9: Exit Sub
End Sub

Public Sub TXT_STATE_UnknownEvent_B(Index As Integer) 'E55D88
  'Data Table: 5A2370
  loc_E55D52: If (CLng(Index) = &H2E) Then
  loc_E55D65:   Me.TXT_STATE.defText = vbNullString
  loc_E55D7D:   Me.TXT_STATE.BoundText = vbNullString
  loc_E55D85: End If
  loc_E55D85: Exit Sub
  loc_E55D86: Set var_800 = 
End Sub

Public Sub TXT_NATION_UnknownEvent_B(Index As Integer) 'E55A5C
  'Data Table: 5A2370
  loc_E55A26: If (CLng(Index) = &H2E) Then
  loc_E55A39:   Me.TXT_NATION.defText = vbNullString
  loc_E55A51:   Me.TXT_NATION.BoundText = vbNullString
  loc_E55A59: End If
  loc_E55A59: Exit Sub
End Sub

Public Sub TXT_TYPE_UnknownEvent_B(Index As Integer) 'E5619C
  'Data Table: 5A2370
  loc_E56166: If (CLng(Index) = &H2E) Then
  loc_E56179:   Me.TXT_TYPE.defText = vbNullString
  loc_E56191:   Me.TXT_TYPE.BoundText = vbNullString
  loc_E56199: End If
  loc_E56199: Exit Sub
  loc_E5619A: Set var_800 = 
End Sub

Private Sub CmdClose_Click() 'E15044
  'Data Table: 5A2370
  loc_E15038: Me.FrmFind.Visible = False
  loc_E15040: Exit Sub
End Sub

Private Sub Form_Load() '171B408
  'Data Table: 5A2370
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_B0 As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim unk_5A23A3 As Connection15
  Dim var_90 As Recordset15
  Dim var_DC As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  Dim var_110 As Variant
  Dim var_124 As String
  Dim var_88 As Recordset15
  Dim var_100 As Variant
  loc_1719804: On Error Goto loc_171B401
  loc_171980E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1719826: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_171983D: Me.LblUser.Left = CDbl(13500)
  loc_1719854: Me.LblUser.Top = CDbl(7800)
  loc_171986B: Me.LblLDt.Top = CDbl(8160)
  loc_1719882: Me.LblLDt.Left = CDbl(13500)
  loc_1719892: Call 0.Method_arg_7C (CDbl(1450))
  loc_171989F: Call 0.Method_arg_74 (CDbl(1625))
  loc_17198AC: Call 0.Method_MeC (CDbl(9200))
  loc_17198B9: Call 0.Method_Me4 (CDbl(17000))
  loc_17198D4: Set var_B4 = Me.Txt
  loc_17198DA: Call 0.Method_Form_Load0 (CInt(6), var_B8)
  loc_17198F9: Me.DGCity.Left = CVar(var_B8.Left)
  loc_1719915: Set var_C0 = Me.Txt
  loc_171991B: Call 0.Method_Form_Load0 (CInt(6), var_C4)
  loc_1719936: Set var_B4 = Me.Txt
  loc_171993C: Call 0.Method_Form_Load0 (CInt(6), var_B8)
  loc_1719954: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_1719963: Me.DGCity.Top = CVar(var_B8.Left)
  loc_1719983: Set var_B4 = Me.Txt
  loc_1719989: Call 0.Method_Form_Load0 (CInt(&H12), var_B8)
  loc_17199A8: Me.DGState.Left = CVar(var_B8.Left)
  loc_17199C4: Set var_C0 = Me.Txt
  loc_17199CA: Call 0.Method_Form_Load0 (CInt(&H12), var_C4)
  loc_17199E5: Set var_B4 = Me.Txt
  loc_17199EB: Call 0.Method_Form_Load0 (CInt(&H12), var_B8)
  loc_1719A03: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_1719A12: Me.DGState.Top = CVar(var_B8.Left)
  loc_1719A32: Set var_B4 = Me.Txt
  loc_1719A38: Call 0.Method_Form_Load0 (CInt(&H13), var_B8)
  loc_1719A57: Me.DGCountry.Left = CVar(var_B8.Left)
  loc_1719A73: Set var_C0 = Me.Txt
  loc_1719A79: Call 0.Method_Form_Load0 (CInt(&H13), var_C4)
  loc_1719A94: Set var_B4 = Me.Txt
  loc_1719A9A: Call 0.Method_Form_Load0 (CInt(&H13), var_B8)
  loc_1719AB2: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_1719AC1: Me.DGCountry.Top = CVar(var_B8.Left)
  loc_1719AE1: Set var_B4 = Me.Txt
  loc_1719AE7: Call 0.Method_Form_Load0 (CInt(&H11), var_B8)
  loc_1719B06: Me.DGNationality.Left = CVar(var_B8.Left)
  loc_1719B22: Set var_C0 = Me.Txt
  loc_1719B28: Call 0.Method_Form_Load0 (CInt(&H11), var_C4)
  loc_1719B30: var_C8 = var_C4.Height
  loc_1719B43: Set var_B4 = Me.Txt
  loc_1719B49: Call 0.Method_Form_Load0 (CInt(&H11), var_B8)
  loc_1719B61: var_A0 = CVar(((var_B8.Top + var_C8) + CDbl(&H1E))) 'Single
  loc_1719B70: Me.DGNationality.Top = CVar(var_B8.Left)
  loc_1719B9F: Proc_6_17_EAA2B0(var_DC, MemVar_1F92078, "Select SMSPhoneNoPrefix from SMSEnviro WHERE logSITE_CODE=", var_110)
  loc_1719BA7: var_EC = -1 & var_DC 
  loc_1719BB5: unk_5A23A3.Execute CStr(var_EC), var_B4, 0
  loc_1719BC0: Set var_90 = var_B4
  loc_1719BE6: If (var_90.RecordCount > 0) Then
  loc_1719BF8:   var_B4 = var_90.Fields
  loc_1719C08:   var_DC = CVar(var_B4.Item("SmsPhoneNoPrefix")) 'Address
  loc_1719C17:   global_84 = Proc_6_38_E68A98(var_DC)
  loc_1719C24: End If
  loc_1719C41: Proc_6_17_EAA2B0(var_DC, MemVar_1F92078, "Select * from enviro WHERE logSITE_CODE=")
  loc_1719C57: unk_5A23A3.Execute CStr(var_110 & var_DC), -1, var_B4
  loc_1719C62: Set var_8C = var_B4
  loc_1719C7A: var_BC = var_8C.RecordCount
  loc_1719C88: If (var_BC > 0) Then
  loc_1719CA2:   var_B8 = var_8C.Fields.Item("GRCMandatory")
  loc_1719CB9:   global_80 = Proc_6_38_E68A98(CVar(var_B8))
  loc_1719CC6: End If
  loc_1719CD0: Set global_92 = New 
  loc_1719CE2: Me.CursorLocation = 3
  loc_1719D0C: var_DC = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by CITYName") 'String
  loc_1719D16: Me.Open var_DC, CVar(MemVar_1F92044), 2
  loc_1719D2A: CVarUnk
  loc_1719D2F: VerifyVarObj
  loc_1719D35: Set var_B4 = Me.DGCity
  loc_1719D3B: LateIdStAd
  loc_1719D53: Set global_96 = New 
  loc_1719D65: Me.DGCity.CursorLocation = 3
  loc_1719D8F: var_DC = CVar("Select Code,Name From COUNTRY where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1719D99: Me.Open var_DC, CVar(MemVar_1F92044), 2
  loc_1719DAD: CVarUnk
  loc_1719DB2: VerifyVarObj
  loc_1719DB8: Set var_B4 = Me.DGCountry
  loc_1719DBE: LateIdStAd
  loc_1719DE8: Me.DGCountry.CursorLocation = 3
  loc_1719E1C: Me.Open CVar("Select Code,Name From STATE Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F92044), 2
  loc_1719E30: CVarUnk
  loc_1719E35: VerifyVarObj
  loc_1719E3B: Set var_B4 = Me.DGState
  loc_1719E41: LateIdStAd
  loc_1719E6B: Me.DGState.CursorLocation = 3
  loc_1719E8E: var_F0 = "Select convert(varchar(25),ZipCode) As Code,convert(varchar(25),ZipCode) As Name From City Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1719E9F: Me.Open CVar(var_F0 & "' or LOGSITE_CODE='HO') and ZipCode is not null and zipcode<>'' Order by ZipCode"), CVar(MemVar_1F92044), 2
  loc_1719EB3: CVarUnk
  loc_1719EB8: VerifyVarObj
  loc_1719EC4: LateIdStAd
  loc_1719EE0: Set var_C0 = Me.Txt
  loc_1719EE6: Call 0.Method_Form_Load0 (CInt(&H14), var_C4, var_C8, Me.DGZipCode, New, 3, -1)
  loc_1719EEE: var_B4 = var_C4.Height
  loc_1719F01: Set var_B4 = Me.Txt
  loc_1719F07: Call 0.Method_Form_Load0 (CInt(&H14), var_B8, var_BC, New, 3)
  loc_1719F0F: -1 = var_B8.Top
  loc_1719F1F: var_A0 = CVar(((var_BC + var_C8) + CDbl(&H1E))) 'Single
  loc_1719F2E: Me.DGZipCode.Top = CVar(MemVar_1F92044)
  loc_1719F4E: Set var_B4 = Me.Txt
  loc_1719F54: Call 0.Method_Form_Load0 (CInt(&H14), var_B8, var_BC)
  loc_1719F5C: var_B4 = var_B8.Left
  loc_1719F73: Me.DGZipCode.Left = CVar(var_BC)
  loc_1719F8F: Set var_B4 = Me.Txt
  loc_1719F95: Call 0.Method_Form_Load0 (CInt(7), var_B8, var_BC)
  loc_1719F9D: global_96 = var_B8.Left
  loc_1719FB4: Me.DGGuestStatus.Left = CVar(var_BC)
  loc_1719FD0: Set var_C0 = Me.Txt
  loc_1719FD6: Call 0.Method_Form_Load0 (CInt(7), var_C4)
  loc_1719FF1: Set var_B4 = Me.Txt
  loc_1719FF7: Call 0.Method_Form_Load0 (CInt(7), var_B8)
  loc_171A00F: var_A0 = CVar(((var_B8.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_171A018: Set var_CC = Me.DGGuestStatus
  loc_171A01E: var_CC.Top = CVar(var_B8.Top)
  loc_171A04C: Me.var_CC.CursorLocation = 3
  loc_171A076: var_DC = CVar("Select Code ,Name From GuestStat Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_171A080: Me.Open var_DC, CVar(MemVar_1F92044), 2
  loc_171A094: CVarUnk
  loc_171A099: VerifyVarObj
  loc_171A09F: Set var_B4 = Me.DGGuestStatus
  loc_171A0A5: LateIdStAd
  loc_171A0CF: Me.DGGuestStatus.CursorLocation = 3
  loc_171A0F9: var_DC = CVar("Select Code,Name From Country Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_171A117: CVarUnk
  loc_171A11C: VerifyVarObj
  loc_171A128: LateIdStAd
  loc_171A141: Proc_6_7_F25D88(var_DC, MemVar_1F920F4, Me.DGNationality, New, 3, -1)
  loc_171A176: var_EC = CVar("SELECT GUESTPROF As CODE,FOLIONO As NAME FROM GuestFolio where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate>=") 'String
  loc_171A18E: Proc_6_92_EF7064(CStr(var_EC & var_DC & " ORDER BY NAME"), Me.TXT_FOLIONO, "NAME", "CODE", Me.TXT_FOLIONO)
  loc_171A1E4: Proc_6_92_EF7064("SELECT CODE,NAME FROM GuestProf where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_GNAME, "NAME", "CODE")
  loc_171A22F: Proc_6_92_EF7064("SELECT CODE,NAME FROM STATE where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_STATE, "NAME", "CODE")
  loc_171A27A: Proc_6_92_EF7064("SELECT CITYCODE,CITYNAME FROM CITY WHere (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY CITYNAME", Me.TXT_CITY, "CITYNAME", "CITYCODE")
  loc_171A2C5: Proc_6_92_EF7064("SELECT CODE,NAME FROM COUNTRY Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_NATION, "NAME", "CODE")
  loc_171A310: Proc_6_92_EF7064("SELECT CODE,NAME FROM COUNTRY Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", Me.TXT_COUNTRY, "NAME", "CODE")
  loc_171A35B: Proc_6_92_EF7064("SELECT DISTINCT TYPE AS CODE,TYPE AS NAME FROM COUNTRY where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY TYPE", Me.TXT_TYPE, "NAME", "CODE")
  loc_171A37C: Set global_88 = New 
  loc_171A38E: Me.TXT_TYPE.CursorLocation = 3
  loc_171A3A5: var_A0 = CVar(MemVar_1F92044) 'Address
  loc_171A3B1: var_F0 = "SELECT GF.CODE AS SearchCode,GF.Name As GuestName,GF.Add1 As GuestAdd1,GF.Add2 As GuestAdd2,GF.*,NA.Name As Nationality,GS.NAME AS GuestStatus,GPF.Name As GuestForName,GPF.Add1 As GuestForAdd1,NAF.Name As ForNationality,GPF.Add2 As GuestForAdd2,GPF.*,GF.Site_Code as Site_Code,gf.LogSite_Code as LogSite_Code FROM ((((GuestProf GF Left Join Country NA ON GF.Nationality=NA.CODE) Left Join GuestStat GS ON GF.GuestStatus=GS.Code) Left Join GuestProfFor GPF ON GF.CODE=GPF.CODE) Left Join Country NAF ON GPF.Nationality=NAF.CODE) Where (GF.LOGSITE_CODE='" & MemVar_1F92078
  loc_171A3C2: r_DC, CVar(MemVar_1F92044), 2 CVar(var_F0 & "' or GF.LOGSITE_CODE='HO') ORDER BY GF.NAME"), var_A0, 2
  loc_171A3CD: Call Proc_24_93_15EF494(3, -1, New)
  loc_171A3D2: Call Proc_24_81_13456CC(3, -1)
  loc_171A3D7: Call Proc_24_82_104A2D8(3)
  loc_171A3E8: If (global_164 = 1) Then
  loc_171A40E:   Call Proc_24_89_1020630(Proc_5_1_100CB50("INI", Me))
  loc_171A425:   Me.btnAddGuestProf.Visible = True
  loc_171A439:   Me.CmdDummyGuestProf.Visible = False
  loc_171A454:   If (GuestCode <> vbNullString) Then
  loc_171A484:     Me.Find "SearchCode='" & GuestCode & "'", 0, 1
  loc_171A492:     Call MoveRec()
  loc_171A497:     Call TopCtrl1_UnknownEvent_D()
  loc_171A49F:   Else
  loc_171A49F:     Call TopCtrl1_UnknownEvent_A()
  loc_171A4A4:   End If
  loc_171A4A7: Else
  loc_171A4A7:   Call MoveRec()
  loc_171A4AC:   Call Proc_24_91_FDA04C(var_A0)
  loc_171A4D4:   Call Proc_24_89_1020630(Proc_5_1_100CB50("INI", Me), global_88)
  loc_171A4EB:   Me.btnAddGuestProf.Visible = False
  loc_171A4FF:   Me.CmdDummyGuestProf.Visible = True
  loc_171A507: End If
  loc_171A51A: If (OpenType = "ChangeGuestProfile") Then
  loc_171A521:   Set var_88 = New 
  loc_171A54A:   var_124 = "Select GPdt.GuestProf, GPDt.mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from GuestFolioProfDetail GPDt Left Join Guestprof GP On GPDt.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where GPDt.Docid='" & GuestFolio
  loc_171A558:   Me.Recordset15.Open CVar(var_124 & "' Order By GP.Name"), CVar(MemVar_1F92044), 0
  loc_171A57B:   If (var_88.RecordCount > 0) Then
  loc_171A57E:     ' Referenced from: 171AA09
  loc_171A58D:     If Not(var_88.EOF) Then
  loc_171A5A9:       If CBool(var_88.Bookmark <> 1) Then
  loc_171A5AC:         var_A0 = vbNullString
  loc_171A5B6:         Set var_B4 = Me.FGrid2
  loc_171A5C7:       End If
  loc_171A5CA:       var_A0 = "GuestProf"
  loc_171A61A:       var_124 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("mProf")), Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A0)), FGrid2.DispID_10000, var_A0), 1)
  loc_171A634:       If (-1 = var_124) Then
  loc_171A64A:         Me.FGrid2.Col = 0
  loc_171A671:         Me.FGrid2.Row = CVar(CLng(var_88.Bookmark))
  loc_171A68C:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_171A6A6:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_171A6C7:         var_A0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171A6CF:         var_100 = CVar(CLng(0)) 'Long
  loc_171A6DE:         Set var_B8 = Me.FGrid2
  loc_171A6E4:         LateIdCallSt
  loc_171A70D:         var_B8 = var_88.Fields.Item("GuestProf")
  loc_171A72B:         Me.lblmProf.Caption = Proc_6_38_E68A98(CVar(var_B8), var_B8, "ü")
  loc_171A73D:       End If
  loc_171A756:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171A78B:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), "mProf")) 'String
  loc_171A799:       LateIdCallSt
  loc_171A7CC:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171A801:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")), CVar(CLng(2)), "mProf", Me.FGrid2)) 'String
  loc_171A80F:       LateIdCallSt
  loc_171A842:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171A877:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")), CVar(CLng(3)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171A885:       LateIdCallSt
  loc_171A8B8:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171A8ED:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(4)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171A8FB:       LateIdCallSt
  loc_171A92E:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171A963:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuestProf")), CVar(CLng(5)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171A971:       LateIdCallSt
  loc_171A9A4:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171A9D9:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("mProf")), CVar(CLng(6)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171A9E1:       Set var_C4 = Me.FGrid2
  loc_171A9E7:       LateIdCallSt
  loc_171AA04:       var_88.MoveNext
  loc_171AA09:       GoTo loc_171A57E
  loc_171AA0C:     End If
  loc_171AA0F:   Else
  loc_171AA23:     If (var_88.State = 1) Then
  loc_171AA29:       var_88.Close
  loc_171AA2E:     End If
  loc_171AA54:     var_124 = "Select GPdt.GuestProf, GPdt.GuestProf mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from GuestFolio GPDt Left Join Guestprof GP On GPDt.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where GPDt.Docid='" & GuestFolio
  loc_171AA62:     var_88.Open CVar(var_124 & "' Order By GP.Name"), CVar(MemVar_1F92044), 0
  loc_171AA71:     ' Referenced from:   171AEFC
  loc_171AA80:     If Not(var_88.EOF) Then
  loc_171AA9C:       If CBool(var_88.Bookmark <> 1) Then
  loc_171AA9F:         var_A0 = vbNullString
  loc_171AAA9:         Set var_B4 = Me.FGrid2
  loc_171AABA:       End If
  loc_171AABD:       var_A0 = "GuestProf"
  loc_171AAE2:       var_F0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A0)), FGrid2.DispID_10000, var_A0, 1, -1, var_C4)
  loc_171AB27:       If (var_100 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("mProf")), GuestFolio, var_110, var_110)) Then
  loc_171AB3D:         Me.FGrid2.Col = 0
  loc_171AB64:         Me.FGrid2.Row = CVar(CLng(var_88.Bookmark))
  loc_171AB7F:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_171AB99:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_171ABBA:         var_A0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171ABD1:         Set var_B8 = Me.FGrid2
  loc_171ABD7:         LateIdCallSt
  loc_171AC00:         var_B8 = var_88.Fields.Item("GuestProf")
  loc_171AC1E:         Me.lblmProf.Caption = Proc_6_38_E68A98(CVar(var_B8), var_B8, "ü", CVar(CLng(0)))
  loc_171AC30:       End If
  loc_171AC49:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171AC7E:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), "mProf")) 'String
  loc_171AC8C:       LateIdCallSt
  loc_171ACBF:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171ACF4:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")), CVar(CLng(2)), "mProf", Me.FGrid2)) 'String
  loc_171AD02:       LateIdCallSt
  loc_171AD35:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171AD6A:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")), CVar(CLng(3)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171AD78:       LateIdCallSt
  loc_171ADAB:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171ADE0:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(4)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171ADEE:       LateIdCallSt
  loc_171AE21:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171AE56:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuestProf")), CVar(CLng(5)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171AE64:       LateIdCallSt
  loc_171AE97:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171AECC:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("mProf")), CVar(CLng(6)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171AED4:       Set var_C4 = Me.FGrid2
  loc_171AEDA:       LateIdCallSt
  loc_171AEF7:       var_88.MoveNext
  loc_171AEFC:       GoTo loc_171AA71
  loc_171AEFF:     End If
  loc_171AEFF:   End If
  loc_171AF02: Else
  loc_171AF15:   If (OpenType = "Reservation") Then
  loc_171AF1C:     Set var_88 = New 
  loc_171AF45:     var_124 = "Select B.GuestProf, B.GuestProf mProf, GP.Name, GP.Add1, GP.Add2, Nat.Name as Nationality from Booking B Left Join Guestprof GP On B.GuestProf=GP.Code Left Join Country Nat On GP.Nationality=Nat.Code where B.GuestProf='" & GuestCode
  loc_171AF53:     Me.Recordset15.Open CVar(var_124 & "' Order By GP.Name"), CVar(MemVar_1F92044), 0
  loc_171AF62:     ' Referenced from:   171B3ED
  loc_171AF71:     If Not(var_88.EOF) Then
  loc_171AF8D:       If CBool(var_88.Bookmark <> 1) Then
  loc_171AF90:         var_A0 = vbNullString
  loc_171AF9A:         Set var_B4 = Me.FGrid2
  loc_171AFAB:       End If
  loc_171AFAE:       var_A0 = "GuestProf"
  loc_171AFD3:       var_F0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A0)), FGrid2.DispID_10000, var_A0, 1, -1, var_C4)
  loc_171B018:       If (var_A0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("mProf")), GuestCode, var_110, var_110)) Then
  loc_171B02E:         Me.FGrid2.Col = 0
  loc_171B055:         Me.FGrid2.Row = CVar(CLng(var_88.Bookmark))
  loc_171B070:         Me.FGrid2.CellFontName = "WINGDINGS"
  loc_171B08A:         Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_171B0AB:         var_A0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B0C2:         Set var_B8 = Me.FGrid2
  loc_171B0C8:         LateIdCallSt
  loc_171B0F1:         var_B8 = var_88.Fields.Item("GuestProf")
  loc_171B10F:         Me.lblmProf.Caption = Proc_6_38_E68A98(CVar(var_B8), var_B8, "ü", CVar(CLng(0)))
  loc_171B121:       End If
  loc_171B13A:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B16F:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), "mProf")) 'String
  loc_171B17D:       LateIdCallSt
  loc_171B1B0:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B1E5:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")), CVar(CLng(2)), "mProf", Me.FGrid2)) 'String
  loc_171B1F3:       LateIdCallSt
  loc_171B226:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B25B:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")), CVar(CLng(3)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B269:       LateIdCallSt
  loc_171B29C:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B2D1:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(4)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B2DF:       LateIdCallSt
  loc_171B312:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B347:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuestProf")), CVar(CLng(5)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B355:       LateIdCallSt
  loc_171B388:       var_B0 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_171B3BD:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("mProf")), CVar(CLng(6)), "mProf", Me.FGrid2, var_110)) 'String
  loc_171B3C5:       Set var_C4 = Me.FGrid2
  loc_171B3CB:       LateIdCallSt
  loc_171B3E8:       var_88.MoveNext
  loc_171B3ED:       GoTo loc_171AF62
  loc_171B3F0:     End If
  loc_171B3F0:   End If
  loc_171B3F0: End If
  loc_171B3F5: Set var_8C = Nothing
  loc_171B3FD: Set var_88 = Nothing
  loc_171B400: Exit Sub
  loc_171B401: ' Referenced from: 1719804
  loc_171B401: Proc_6_60_E62BC4(var_C4, var_110, var_110)
  loc_171B406: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) '1489004
  'Data Table: 5A2370
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_A4 As Variant
  Dim var_EC As String
  Dim Cancel As Integer
  Dim var_124 As Variant
  Dim unk_5A23A3 As Connection15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_128 As Field20
  Dim var_C4 As Variant
  Dim var_F0 As String
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_1DC As Variant
  Dim var_1E4 As String
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_148 As Variant
  Dim var_F8 As Recordset15
  Dim var_28C As String
  Dim var_2A8 As String
  loc_148845D: var_E4 = (global_164 = 1) And (Trim(CVar(Me.lblmProf)) = vbNullString)
  loc_148846C: If CBool(var_E4) Then
  loc_1488475:   Call 0.Method_arg_50 (var_F0)
  loc_14884C0:   If (MsgBox(CVar("None Of Profile Selected." & vbCrLf & vbCrLf & "Do U want Proceed..."), &H114, CVar(var_F0), var_C4, var_E4) = 7) Then
  loc_14884C5:     Cancel = &HFF
  loc_14884C8:     Exit Sub
  loc_14884C9:   End If
  loc_14884C9: End If
  loc_14884C9: On Error Goto loc_1489002
  loc_14884D7: Set global_92 = Nothing
  loc_14884E9: Set global_104 = Nothing
  loc_14884FB: Set global_112 = Nothing
  loc_148850D: Set global_108 = Nothing
  loc_148851F: Set global_88 = Nothing
  loc_148852B: MasterFormExit = 0
  loc_1488550: If (Trim(CVar(Me.lblmProf)) = vbNullString) Then
  loc_1488553:   Exit Sub
  loc_1488554: End If
  loc_1488580: var_A4 = Trim(CVar(Me.lblmProf))
  loc_148858B: Proc_6_17_EAA2B0(var_C4, var_A4, "Select Count(*) From GuestProf Where Code=", var_110, -1, var_100)
  loc_1488593: var_E4 = var_114 & var_C4 
  loc_14885A1: unk_5A23A3.Execute CStr(var_E4), 0, var_128
  loc_14885A9: var_138 = var_100.Fields
  loc_14885B1: Cancel = var_114.Item(MasterFormExit)
  loc_14885B9:  = var_128.Value
  loc_14885C4: Proc_6_39_E7C810(var_148)
  loc_14885F1: If (var_148 > 0) Then
  loc_1488600:   If (global_164 = 1) Then
  loc_148862B:     If ((OpenType = "ChangeGuestProfile") Or (OpenType = "InsertGuestProfile")) Then
  loc_148865A:       var_94 = CVar(GuestFolio) 'String
  loc_1488660:       Proc_6_17_EAA2B0(var_A4, var_94, "Select Count(*) From GuestFolio Where DocId=", var_E4, -1, var_100)
  loc_1488676:       unk_5A23A3.Execute CStr(var_114 & var_A4), 0, var_128
  loc_148867E:       var_110 = var_100.Fields
  loc_1488686:        = var_114.Item(var_138)
  loc_148868E:        = var_128.Value
  loc_1488699:       Proc_6_39_E7C810(var_138)
  loc_14886C4:       If (var_138 > 0) Then
  loc_14886F3:         unk_5A23A3.Execute "Delete From GuestFolioProfDetail where Docid='" & GuestFolio & "'", var_94, -1
  loc_148872C:         For var_16C = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_FA = var_16C 'Integer
  loc_1488736:           var_B4 = CVar(CLng(var_FA)) 'Long
  loc_148873E:           var_124 = CVar(CLng(1)) 'Long
  loc_148875E:           var_C4 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_14887CA:           If CBool(CVar(CLng(5)) And (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString)) Then
  loc_14887FB:             var_1EC = Proc_6_38_E68A98(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_FA)), CVar(CLng(var_FA)), (var_C4 <> vbNullString))
  loc_1488835:             var_1E4 = "Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And GuestProf='" & var_1EC & "' And mProf='" & Me.lblmProf.Caption
  loc_1488845:             unk_5A23A3.Execute var_1E4 & "'", var_C4, -1
  loc_1488879:             var_B4 = CVar(CLng(var_FA)) 'Long
  loc_148888A:             Set var_100 = Me.FGrid2
  loc_148889B:             var_A4 = CVar(CStr(var_100.TextMatrix))) 'String
  loc_14888C6:             Proc_6_7_F25D88(var_E4, Date, var_B4)
  loc_14888DF:             var_EC = "Insert Into GuestFolioProfDetail (Docid, GuestProf, mProf, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) Values ('" & GuestFolio
  loc_14888FE:             var_1F0 = var_EC & "','" & Proc_6_38_E68A98(var_A4, CVar(CLng(5)), var_B4, var_128, CVar(CLng(5))) & "','" & Me.lblmProf.Caption
  loc_1488914:             var_148 = CVar(var_1F0 & "','A',") & var_E4 & ",'" 
  loc_148895B:             unk_5A23A3.Execute CStr(var_148 & CVar(MemVar_1F920C8) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_264, -1
  loc_148899F:           End If
  loc_14889A2:         Next var_16C 'Integer
  loc_14889C4:         Proc_6_17_EAA2B0(var_A4, CVar(Me.lblmProf), "Select * from GuestProf Where Code=")
  loc_14889DA:         unk_5A23A3.Execute CStr(var_E4 & var_A4), -1, var_100
  loc_14889E5:         Set var_F8 = var_100
  loc_1488A0D:         If (var_F8.RecordCount > 0) Then
  loc_1488A4F:           var_114 = var_F8.Fields
  loc_1488A57:           var_128 = var_114.Item("Name")
  loc_1488A6C:           var_1E4 = -1 & Proc_6_38_E68A98(CVar(var_128), "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "',Name='", var_264)
  loc_1488A73:           var_1E8 = "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "','" & Proc_6_38_E68A98(var_A4, CVar(CLng(5)), "Name", var_128, CVar(CLng(5))) & "',city='"
  loc_1488A95:           var_A4 = CVar(var_F8.Fields.Item("City")) 'Address
  loc_1488ADF:           var_28C = var_2B4 & Proc_6_38_E68A98(var_A4, var_1E8) & "',Add1='" & Proc_6_38_E68A98(CVar(var_F8.Fields.Item("Add1"))) & "',add2='"
  loc_1488B44:           var_2A8 = var_28C & Proc_6_38_E68A98(CVar(var_F8.Fields.Item("Add2"))) & "',Nationality='" & Proc_6_38_E68A98(CVar(var_F8.Fields.Item("Nationality")))
  loc_1488B59:           Proc_6_7_F25D88(var_148)
  loc_1488B61:           var_1DC = CVar(Proc_6_15_EF2C1C(CVar(var_2A8 & "',U_EntDt="))) & var_148 
  loc_1488B93:           unk_5A23A3.Execute CStr(var_1DC & ",U_AE='E' where Docid='" & CVar(GuestFolio) & "'"), , 
  loc_1488C24:           var_94 = CVar(Proc_6_15_EF2C1C(CVar("Update RoomOcc  Set GuestProf='" & Me.lblmProf.Caption & "',U_EntDt="), var_1DC)) 'String
  loc_1488C2A:           Proc_6_7_F25D88(var_A4, var_94)
  loc_1488C32:           var_E4 = -1 & var_A4 
  loc_1488C64:           unk_5A23A3.Execute CStr(CVar(var_F8.Fields.Item("Add2")) & ",U_AE='E' where Docid='" & CVar(GuestFolio) & "'"), var_114, 
  loc_1488CDA:           unk_5A23A3.Execute "Update PayCharge  Set GuestProf='" & Me.lblmProf.Caption & "' where FolioNoDocid='" & GuestFolio & "'", var_94, -1
  loc_1488CF8:         End If
  loc_1488CF8:       End If
  loc_1488CFD:       Set var_F8 = Nothing
  loc_1488D03:     Else
  loc_1488D16:       If (OpenType = "WalkInEntry") Then
  loc_1488D3E:         For var_2B8 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)):   var_FA = var_2B8 'Integer
  loc_1488D48:           var_B4 = CVar(CLng(var_FA)) 'Long
  loc_1488D50:           var_124 = CVar(CLng(1)) 'Long
  loc_1488D70:           var_C4 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_1488DDC:           If CBool(CVar(CLng(5)) And (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString)) Then
  loc_1488E0D:             var_1EC = Proc_6_38_E68A98(CVar(CStr(Me.FGrid2.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_FA)), CVar(CLng(var_FA)), (var_C4 <> vbNullString))
  loc_1488E47:             var_1E4 = "Delete From GuestFolioProfDetail Where IsNull(Docid,'')='' And GuestProf='" & var_1EC & "' And mProf='" & Me.lblmProf.Caption
  loc_1488E57:             unk_5A23A3.Execute var_1E4 & "'", var_C4, -1
  loc_1488E93:             var_124 = CVar(CLng(5)) 'Long
  loc_1488ED8:             Proc_6_7_F25D88(CVar(var_F8.Fields.Item("Add2")), Date, var_124)
  loc_1488EF1:             var_EC = "Insert Into GuestFolioProfDetail (Docid, GuestProf, mProf, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) Values ('" & GuestFolio
  loc_1488F09:             var_1EC = var_EC & "','" & Proc_6_38_E68A98(CVar(CStr(Me.FGrid2.TextMatrix))), var_124, CVar(CLng(var_FA)), var_128) & "','"
  loc_1488F39:             var_1DC = CVar(var_1EC & Me.lblmProf.Caption & "','A',") & CVar(var_F8.Fields.Item("Add2")) & ",'" & CVar(MemVar_1F920C8) & "','" 
  loc_1488F6D:             unk_5A23A3.Execute CStr(var_1DC & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_264, -1
  loc_1488FB1:           End If
  loc_1488FB4:         Next var_2B8 'Integer
  loc_1488FBD:         var_94 = CVar(Me.lblmProf) 'Address
  loc_1488FC8:         Call unk_5A2454.SEARCHBACKPARENT
  loc_1488FD4:       Else
  loc_1488FE7:         If (OpenType = "Reservation") Then
  loc_1488FEE:           var_94 = CVar(Me.lblmProf) 'Address
  loc_1488FF9:           Call unk_5A2454.SEARCHBACKPARENT
  loc_1489002:         End If
  loc_1489002:       End If
  loc_1489002:       ' Referenced from: 14884C9
  loc_1489002:     End If
  loc_1489002:   End If
  loc_1489002: End If
  loc_1489002: Exit Sub
End Sub

Private Sub Form_Activate() 'EFFA1C
  'Data Table: 5A2370
  Dim var_A4 As TextBox
  loc_EFF940: On Error Goto loc_EFFA15
  loc_EFF958: Set var_8C = Me.TopCtrl1
  loc_EFF95E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005((OpenMode = 1))
  loc_EFF978: If ( And (CStr() <> "Browse")) Then
  loc_EFF97F:   Set var_8C = Me.TopCtrl1
  loc_EFF985:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EFF99E:   If (CStr() = "Add") Then
  loc_EFF9AC:     Set var_8C = Me.Txt
  loc_EFF9B2:     Call 0.Method_Form_Activate0 (CInt(&H46))
  loc_EFF9BA:     var_A4.SetFocus
  loc_EFF9C9:   Else
  loc_EFF9D4:     Set var_8C = Me.Txt
  loc_EFF9DA:     Call 0.Method_Form_Activate0 (CInt(0), var_A4)
  loc_EFF9E2:     var_A4.SetFocus
  loc_EFF9EE:   End If
  loc_EFF9F2:   Set var_8C = Me.TopCtrl1
  loc_EFF9F8:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030000(var_A4)
  loc_EFFA0D:   If (CLng(CInt()) = &H2D) Then
  loc_EFFA10:     Call TopCtrl1_UnknownEvent_15()
  loc_EFFA15:     ' Referenced from: EFF940
  loc_EFFA15:   End If
  loc_EFFA15: End If
  loc_EFFA15: Proc_6_60_E62BC4()
  loc_EFFA1A: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26514
  'Data Table: 5A2370
  loc_E264F9: If (MasterFormExit = &HFF) Then
  loc_E26509:   Me.Global.Unload Me
  loc_E26511: End If
  loc_E26511: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A524
  'Data Table: 5A2370
  loc_E2A4FC: On Error Goto loc_E2A51C
  loc_E2A513: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A51B: Exit Sub
  loc_E2A51C: ' Referenced from: E2A4FC
  loc_E2A51C: Proc_6_60_E62BC4(Shift)
  loc_E2A521: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5AECC
  'Data Table: 5A2370
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5ADEE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5ADF5:   Set var_A8 = Me.ListView
  loc_F5AE3F:   Set var_C0 = Me.Txt
  loc_F5AE45:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5AE4D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5AE6D: End If
  loc_F5AE79: Me.FrmList.Visible = False
  loc_F5AEA9: Set var_9C = Me.Txt
  loc_F5AEAF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5AEB7: var_A8.SetFocus
  loc_F5AECB: Exit Sub
End Sub

Private Sub IdProofImage_DblClick() '105D82C
  'Data Table: 5A2370
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105D5E4: On Error Goto loc_105D7CD
  loc_105D5EB: Set var_88 = Me.TopCtrl1
  loc_105D5F1: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105D605: Set var_A0 = Me.TopCtrl1
  loc_105D60B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105D631: If ( And (CStr() <> "Edit")) Then
  loc_105D634:   Exit Sub
  loc_105D635: End If
  loc_105D645: Me.CDlg.Filter = "*.*"
  loc_105D65D: Me.CDlg.Action = 1
  loc_105D66F: Me.CDlg.FileName = 
  loc_105D677: var_9C = CStr()
  loc_105D684: Me.IdProofImage.Tag = var_9C
  loc_105D6A0: Me.CDlg.FileName = 
  loc_105D6A8: var_B0 = CVar(CStr()) 'String
  loc_105D6AE: var_E4 = Trim(var_B0)
  loc_105D6B7: Set var_A0 = Me.CDlg
  loc_105D6BD: var_A0.FileName = 
  loc_105D6DB: var_F4 = Right(var_E4, 3)
  loc_105D716: var_D4 = "AVI"
  loc_105D744: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105D755:   var_C4 = "Invalid Format"
  loc_105D760:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105D773: Else
  loc_105D78A:   Set var_88 = Me.CDlg
  loc_105D790:   var_88.FileName = var_C4
  loc_105D798:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105D7A2:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105D7B7:   Me.IdProofImage.Picture = var_A0
  loc_105D7CC: End If
  loc_105D7CC: Exit Sub
  loc_105D7CD: ' Referenced from: 105D5E4
  loc_105D7D5: Set var_88 = Err()
  loc_105D7DB: Call 0.Method_arg_1C (var_1B0)
  loc_105D7EC: If (var_1B0 <> 0) Then
  loc_105D805:   Set var_88 = Err()
  loc_105D80B:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105D816:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105D829: End If
  loc_105D829: Exit Sub
End Sub

Private Sub GuestSign_Click() '105CA58
  'Data Table: 5A2370
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105C810: On Error Goto loc_105C9F9
  loc_105C817: Set var_88 = Me.TopCtrl1
  loc_105C81D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105C831: Set var_A0 = Me.TopCtrl1
  loc_105C837: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105C85D: If ( And (CStr() <> "Edit")) Then
  loc_105C860:   Exit Sub
  loc_105C861: End If
  loc_105C871: Me.CDlg.Filter = "*.*"
  loc_105C889: Me.CDlg.Action = 1
  loc_105C89B: Me.CDlg.FileName = 
  loc_105C8A3: var_9C = CStr()
  loc_105C8B0: Me.GuestSign.Tag = var_9C
  loc_105C8CC: Me.CDlg.FileName = 
  loc_105C8D4: var_B0 = CVar(CStr()) 'String
  loc_105C8DA: var_E4 = Trim(var_B0)
  loc_105C8E3: Set var_A0 = Me.CDlg
  loc_105C8E9: var_A0.FileName = 
  loc_105C907: var_F4 = Right(var_E4, 3)
  loc_105C942: var_D4 = "AVI"
  loc_105C970: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105C981:   var_C4 = "Invalid Format"
  loc_105C98C:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105C99F: Else
  loc_105C9B6:   Set var_88 = Me.CDlg
  loc_105C9BC:   var_88.FileName = var_C4
  loc_105C9C4:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105C9CE:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105C9E3:   Me.GuestSign.Picture = var_A0
  loc_105C9F8: End If
  loc_105C9F8: Exit Sub
  loc_105C9F9: ' Referenced from: 105C810
  loc_105CA01: Set var_88 = Err()
  loc_105CA07: Call 0.Method_arg_1C (var_1B0)
  loc_105CA18: If (var_1B0 <> 0) Then
  loc_105CA31:   Set var_88 = Err()
  loc_105CA37:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105CA42:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105CA55: End If
  loc_105CA55: Exit Sub
End Sub

Private Sub BtnVisa_Click() '12F6950
  'Data Table: 5A2370
  Dim var_88 As Variant
  Dim var_8C As Variant
  loc_12F6253: Set var_88 = Me.Txt
  loc_12F6259: Call 0.Method_BtnVisa_Click0 (CInt(&H11))
  loc_12F6282: If (Proc_6_27_EA565C(var_8C, "Nationality") = 0) Then
  loc_12F628C:   Call Txt_GotFocus(CInt(&H11))
  loc_12F6291:   Exit Sub
  loc_12F6292: End If
  loc_12F62A0: Me.FrameFor.Top = CDbl(0)
  loc_12F62B6: Me.FrameFor.Left = CDbl(0)
  loc_12F62C4: Call 0.Method_Me0 (var_9C)
  loc_12F62D6: Me.FrameFor.Width = var_9C
  loc_12F62E4: Call 0.Method_Me8 (var_9C)
  loc_12F62F6: Me.FrameFor.Height = var_9C
  loc_12F630C: Me.LabelPass.Left = CDbl(0)
  loc_12F631A: Call 0.Method_Me0 (var_9C)
  loc_12F632C: Me.LabelPass.Width = var_9C
  loc_12F6340: Me.FrameFor.Visible = True
  loc_12F634B: Call Proc_24_79_E404F4(var_96)
  loc_12F6363: Set var_88 = Me.Txt
  loc_12F6369: Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F6371: var_8C.Text = CStr(var_96)
  loc_12F6380: Call Proc_24_80_F9C5B4(var_8C)
  loc_12F6389: Set var_88 = Me.TopCtrl1
  loc_12F638F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12F63A8: If (CStr() <> "Browse") Then
  loc_12F63AE:   Call Proc_24_79_E404F4(var_96)
  loc_12F63B9:   If (var_96 = 1) Then
  loc_12F63C2:     global_72 = "Add"
  loc_12F63D4:     Set var_88 = Me.Txt
  loc_12F63DA:     Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F63F3:     Call Proc_24_78_13A8230(CInt(Val(var_8C.Text)))
  loc_12F6407:     Call Proc_24_77_11BBF40(&HFF)
  loc_12F6419:     Set var_88 = Me.Txt
  loc_12F641F:     Call 0.Method_BtnVisa_Click0 (CInt(&H24), var_8C)
  loc_12F6427:     var_8C.Enabled = False
  loc_12F6440:     Set var_88 = Me.Txt
  loc_12F6446:     Call 0.Method_BtnVisa_Click0 (CInt(&H27), var_8C)
  loc_12F644E:     var_8C.Enabled = False
  loc_12F6467:     Set var_88 = Me.Txt
  loc_12F646D:     Call 0.Method_BtnVisa_Click0 (CInt(&H26), var_8C)
  loc_12F6475:     var_8C.Enabled = False
  loc_12F648E:     Set var_88 = Me.Txt
  loc_12F6494:     Call 0.Method_BtnVisa_Click0 (CInt(&H25), var_8C)
  loc_12F649C:     var_8C.Enabled = False
  loc_12F64B5:     Set var_88 = Me.Cmd
  loc_12F64BB:     Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F64C3:     var_8C.Enabled = False
  loc_12F64DC:     Set var_88 = Me.Cmd
  loc_12F64E2:     Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F64EA:     var_8C.Enabled = False
  loc_12F6503:     Set var_88 = Me.Cmd
  loc_12F6509:     Call 0.Method_BtnVisa_Click0 (CInt(7), var_8C)
  loc_12F6511:     var_8C.Enabled = False
  loc_12F652A:     Set var_88 = Me.Cmd
  loc_12F6530:     Call 0.Method_BtnVisa_Click0 (CInt(3), var_8C)
  loc_12F6538:     var_8C.Enabled = True
  loc_12F6551:     Set var_88 = Me.Cmd
  loc_12F6557:     Call 0.Method_BtnVisa_Click0 (CInt(8), var_8C)
  loc_12F655F:     var_8C.Enabled = False
  loc_12F6578:     Set var_88 = Me.Cmd
  loc_12F657E:     Call 0.Method_BtnVisa_Click0 (CInt(4), var_8C)
  loc_12F6586:     var_8C.Enabled = True
  loc_12F659F:     Set var_88 = Me.Cmd
  loc_12F65A5:     Call 0.Method_BtnVisa_Click0 (CInt(5), var_8C)
  loc_12F65AD:     var_8C.Enabled = False
  loc_12F65C4:     Set var_88 = Me.Txt
  loc_12F65CA:     Call 0.Method_BtnVisa_Click0 (CInt(&H29))
  loc_12F65D2:     var_8C.SetFocus
  loc_12F65E1:   Else
  loc_12F65E7:     global_72 = "Browse"
  loc_12F65F9:     Set var_88 = Me.Txt
  loc_12F65FF:     Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F6618:     Call Proc_24_78_13A8230(CInt(Val(var_8C.Text)))
  loc_12F662C:     Call Proc_24_77_11BBF40(0)
  loc_12F663E:     Set var_88 = Me.Cmd
  loc_12F6644:     Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F664C:     var_8C.Enabled = True
  loc_12F6665:     Set var_88 = Me.Cmd
  loc_12F666B:     Call 0.Method_BtnVisa_Click0 (CInt(7), var_8C)
  loc_12F6673:     var_8C.Enabled = True
  loc_12F668C:     Set var_88 = Me.Cmd
  loc_12F6692:     Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F669A:     var_8C.Enabled = True
  loc_12F66B3:     Set var_88 = Me.Cmd
  loc_12F66B9:     Call 0.Method_BtnVisa_Click0 (CInt(3), var_8C)
  loc_12F66C1:     var_8C.Enabled = False
  loc_12F66DA:     Set var_88 = Me.Cmd
  loc_12F66E0:     Call 0.Method_BtnVisa_Click0 (CInt(8), var_8C)
  loc_12F66E8:     var_8C.Enabled = False
  loc_12F6701:     Set var_88 = Me.Cmd
  loc_12F6707:     Call 0.Method_BtnVisa_Click0 (CInt(4), var_8C)
  loc_12F670F:     var_8C.Enabled = True
  loc_12F6728:     Set var_88 = Me.Cmd
  loc_12F672E:     Call 0.Method_BtnVisa_Click0 (CInt(5), var_8C)
  loc_12F6736:     var_8C.Enabled = False
  loc_12F6742:   End If
  loc_12F6746:   Set var_88 = Me.TopCtrl1
  loc_12F674C:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8C)
  loc_12F6765:   If (CStr() = "Edit") Then
  loc_12F6775:     Set var_88 = Me.Cmd
  loc_12F677B:     Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F6783:     var_8C.Enabled = False
  loc_12F679C:     Set var_88 = Me.Cmd
  loc_12F67A2:     Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F67AA:     var_8C.Enabled = False
  loc_12F67B9:   Else
  loc_12F67BF:     Call Proc_24_85_1016D1C(MemVar_1F92044)
  loc_12F67D7:     Set var_88 = Me.Txt
  loc_12F67DD:     Call 0.Method_BtnVisa_Click0 (CInt(&H48), var_8C)
  loc_12F67E5:     var_8C.Text = CStr(var_9C)
  loc_12F67F4:   End If
  loc_12F67F7: Else
  loc_12F67FD:   global_72 = "Browse"
  loc_12F680F:   Set var_88 = Me.Txt
  loc_12F6815:   Call 0.Method_BtnVisa_Click0 (CInt(&H47), var_8C)
  loc_12F682E:   Call Proc_24_78_13A8230(CInt(Val(var_8C.Text)))
  loc_12F684A:   Set var_88 = Me.Cmd
  loc_12F6850:   Call 0.Method_BtnVisa_Click0 (CInt(6), var_8C)
  loc_12F6858:   var_8C.Enabled = False
  loc_12F6871:   Set var_88 = Me.Cmd
  loc_12F6877:   Call 0.Method_BtnVisa_Click0 (CInt(7), var_8C)
  loc_12F687F:   var_8C.Enabled = False
  loc_12F6898:   Set var_88 = Me.Cmd
  loc_12F689E:   Call 0.Method_BtnVisa_Click0 (CInt(2), var_8C)
  loc_12F68A6:   var_8C.Enabled = False
  loc_12F68BF:   Set var_88 = Me.Cmd
  loc_12F68C5:   Call 0.Method_BtnVisa_Click0 (CInt(3), var_8C)
  loc_12F68CD:   var_8C.Enabled = False
  loc_12F68E6:   Set var_88 = Me.Cmd
  loc_12F68EC:   Call 0.Method_BtnVisa_Click0 (CInt(8), var_8C)
  loc_12F68F4:   var_8C.Enabled = False
  loc_12F690D:   Set var_88 = Me.Cmd
  loc_12F6913:   Call 0.Method_BtnVisa_Click0 (CInt(4), var_8C)
  loc_12F691B:   var_8C.Enabled = True
  loc_12F6934:   Set var_88 = Me.Cmd
  loc_12F693A:   Call 0.Method_BtnVisa_Click0 (CInt(5), var_8C)
  loc_12F6942:   var_8C.Enabled = False
  loc_12F694E: End If
  loc_12F694E: Exit Sub
End Sub

Private Sub btnAddGuestProf_Click() '136280C
  'Data Table: 5A2370
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_E8 As Variant
  Dim var_F0 As String
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_104 As Variant
  loc_1361FC0: On Error Goto loc_13627AF
  loc_1361FE8: For var_A4 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A4 'Integer
  loc_1361FFA:   var_D4 = CVar(CLng(5)) 'Long
  loc_1362025:   Set var_E8 = Me.Txt
  loc_136202B:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_EC, var_F0, CStr(Me.FGrid2.TextMatrix)))
  loc_1362033:   var_D4 = var_EC.Tag
  loc_1362050:   If (CVar(CLng(var_86)) = var_F0) Then
  loc_1362061:     Set var_90 = Me.Txt
  loc_1362067:     Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8)
  loc_136209B:     var_8C = CStr(MsgBox(CVar(var_E8.Text & " Is Already Added In This Profile"), &H40, "Info", var_114, var_124))
  loc_13620B3:     Exit Sub
  loc_13620B4:   End If
  loc_13620B7: Next var_A4 'Integer
  loc_13620BC: var_B4 = 1
  loc_13620C8: var_D4 = CVar(CLng(1)) 'Long
  loc_13620E2: var_F0 = CStr(Me.FGrid2.TextMatrix))
  loc_13620F3: If (var_F0 <> vbNullString) Then
  loc_13620F6:   var_B4 = vbNullString
  loc_1362100:   Set var_90 = Me.FGrid2
  loc_136212A:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1362132:   var_D4 = CVar(CLng(0)) 'Long
  loc_1362141:   Set var_E8 = Me.FGrid2
  loc_1362147:   LateIdCallSt
  loc_1362172:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_136218A:   Set var_90 = Me.Txt
  loc_1362190:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, CVar(CLng(1)), var_B4, var_E8, vbNullString)
  loc_13621B6:   LateIdCallSt
  loc_13621EB:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1362203:   Set var_90 = Me.Txt
  loc_1362209:   Call 0.Method_btnAddGuestProf_Click0 (CInt(1), var_E8, CVar(CLng(2)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_136222F:   LateIdCallSt
  loc_1362264:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_136227C:   Set var_90 = Me.Txt
  loc_1362282:   Call 0.Method_btnAddGuestProf_Click0 (CInt(2), var_E8, CVar(CLng(3)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_13622A8:   LateIdCallSt
  loc_13622DD:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13622F5:   Set var_90 = Me.Txt
  loc_13622FB:   Call 0.Method_btnAddGuestProf_Click0 (CInt(&H11), var_E8, CVar(CLng(4)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_1362321:   LateIdCallSt
  loc_1362356:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1362371:   Set var_90 = Me.Txt
  loc_1362377:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, CVar(CLng(5)), var_B4, Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_136237F:   var_D4 = var_E8.Tag
  loc_1362387:   var_104 = CVar(var_F0) 'String
  loc_136238F:   Set var_148 = Me.FGrid2
  loc_1362395:   LateIdCallSt
  loc_13623C8:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13623D0:   var_D4 = CVar(CLng(6)) 'Long
  loc_13623E2:   var_F0 = Me.lblmProf.Caption
  loc_13623EA:   var_104 = CVar(var_F0) 'String
  loc_13623F2:   Set var_EC = Me.FGrid2
  loc_13623F8:   LateIdCallSt
  loc_1362413: Else
  loc_1362426:   Me.FGrid2.Col = 0
  loc_136243E:   Me.FGrid2.CellFontName = "WINGDINGS"
  loc_1362458:   Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_1362479:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1362481:   var_D4 = CVar(CLng(0)) 'Long
  loc_1362490:   Set var_E8 = Me.FGrid2
  loc_1362496:   LateIdCallSt
  loc_13624C1:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13624D9:   Set var_90 = Me.Txt
  loc_13624DF:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, CVar(CLng(1)), CVar(CDbl(&HE)), var_E8, "ü", CVar(CLng(1)))
  loc_1362505:   LateIdCallSt
  loc_136253A:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1362552:   Set var_90 = Me.Txt
  loc_1362558:   Call 0.Method_btnAddGuestProf_Click0 (CInt(1), var_E8, CVar(CLng(2)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))), CVar(CDbl(&HE)))
  loc_136257E:   LateIdCallSt
  loc_13625B3:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13625CB:   Set var_90 = Me.Txt
  loc_13625D1:   Call 0.Method_btnAddGuestProf_Click0 (CInt(2), var_E8, CVar(CLng(3)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_13625F7:   LateIdCallSt
  loc_136261D:   var_114 = Me.FGrid2.Rows
  loc_136262C:   var_B4 = CVar((CLng(var_114) - 1)) 'Long
  loc_1362644:   Set var_90 = Me.Txt
  loc_136264A:   Call 0.Method_btnAddGuestProf_Click0 (CInt(&H11), var_E8, CVar(CLng(4)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_E8)))))
  loc_1362662:   var_124 = CVar(CStr(Trim(CVar(var_E8)))) 'String
  loc_1362670:   LateIdCallSt
  loc_13626A5:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_13626C0:   Set var_90 = Me.Txt
  loc_13626C6:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, CVar(CLng(5)), CVar(CDbl(&HE)), Me.FGrid2, var_124)
  loc_13626CE:   var_EC = var_E8.Tag
  loc_13626D6:   var_104 = CVar(var_F0) 'String
  loc_13626E4:   LateIdCallSt
  loc_1362717:   var_B4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_136271F:   var_D4 = CVar(CLng(6)) 'Long
  loc_1362732:   Set var_90 = Me.Txt
  loc_1362738:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, var_D4, CVar(CDbl(&HE)), Me.FGrid2)
  loc_1362740:   var_104 = var_E8.Tag
  loc_1362750:   Set var_148 = Me.FGrid2
  loc_1362756:   LateIdCallSt
  loc_136277E:   Set var_90 = Me.Txt
  loc_1362784:   Call 0.Method_btnAddGuestProf_Click0 (CInt(0), var_E8, var_F0, var_148, CVar(var_F0))
  loc_136278C:   var_104 = var_E8.Tag
  loc_136279E:   Me.lblmProf.Caption = var_F0
  loc_13627AF: End If
  loc_13627AF: ' Referenced from: 1361FC0
  loc_13627B7: Set var_90 = Err()
  loc_13627BD: Call 0.Method_arg_1C (var_14C, var_D4, CVar(CDbl(&HE)))
  loc_13627CE: If (var_14C <> 0) Then
  loc_13627E7:   Set var_90 = Err()
  loc_13627ED:   Call 0.Method_arg_2C (var_F0, 0, var_104, var_114)
  loc_13627F8:   MsgBox(CVar(var_F0), var_124, var_148, var_104, )
  loc_136280B: End If
  loc_136280B: Exit Sub
End Sub

Private Sub btnWebProfile_Click() 'F31708
  'Data Table: 5A2370
  Dim var_90 As String
  Dim MemVar_1F920E4 As String
  Dim unk_5A23A3 As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  Dim var_BC As Frame
  loc_F31608: On Error Goto loc_F31701
  loc_F3161C: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F92078
  loc_F31631: MemVar_1F920E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " And GUESTPROF.WebYN='Y'" & " Order by GuestProf.Name"
  loc_F31654: unk_5A23A3.Execute MemVar_1F920E4, var_B8, -1
  loc_F3167C: If (var_BC.RecordCount <= 0) Then
  loc_F31685:   var_D0 = "Information"
  loc_F316A0:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_F316B0:   Exit Sub
  loc_F316B1: End If
  loc_F316B7: Set var_BC = Me.FrmFind
  loc_F316BD: var_BC.Visible = False
  loc_F316CB: MemVar_1F92120 = Me
  loc_F316D8: Proc_6_126_F1BCC0("3200,2500,2500,2400", var_BC)
  loc_F316F3: Call 0.Method_arg_2B0 (1, var_D0)
  loc_F316FD: Set var_8C = Nothing
  loc_F31700: Exit Sub
  loc_F31701: ' Referenced from: F31608
  loc_F31701: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F31706: Exit Sub
End Sub

Private Sub CmdDummyGuestProf_Click() 'F3A534
  'Data Table: 5A2370
  Dim var_90 As String
  Dim MemVar_1F920E4 As String
  Dim unk_5A23A3 As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  loc_F3A42C: On Error Goto loc_F3A52E
  loc_F3A442: If (GuestCode <> vbNullString) Then
  loc_F3A445:   GoTo loc_F3A525
  loc_F3A448: End If
  loc_F3A44F: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F92078
  loc_F3A464: MemVar_1F920E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " Order by GuestProf.Name"
  loc_F3A487: unk_5A23A3.Execute MemVar_1F920E4, var_B8, -1
  loc_F3A4AF: If (var_BC.RecordCount <= 0) Then
  loc_F3A4B8:   var_D0 = "Information"
  loc_F3A4D3:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_F3A4E3:   Exit Sub
  loc_F3A4E4: End If
  loc_F3A4EA: MemVar_1F92120 = Me
  loc_F3A4F7: Proc_6_126_F1BCC0("3200,2500,2500,2400", var_BC)
  loc_F3A508: Call 0.Method_arg_54 ("Dummy Guest Profile")
  loc_F3A520: Call 0.Method_arg_2B0 (1, var_D0)
  loc_F3A525: ' Referenced from: F3A445
  loc_F3A52A: Set var_8C = Nothing
  loc_F3A52D: Exit Sub
  loc_F3A52E: ' Referenced from: F3A42C
  loc_F3A52E: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F3A533: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1045DD0
  'Data Table: 5A2370
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  Dim var_100 As TextBox
  loc_1045B70: On Error Goto loc_1045DC7
  loc_1045B81: Me.FGrid2.Visible = True
  loc_1045BC4: If (((OpenType = "ChangeGuestProfile") Or (OpenType = "InsertGuestProfile")) Or (OpenType = "WalkInEntry")) Then
  loc_1045BC7:   GoTo loc_1045D25
  loc_1045BCA: End If
  loc_1045BD3: If (global_180 = 0) Then
  loc_1045BE9:   Me.FGrid2.Rows = 2
  loc_1045BF1:   var_94 = 1
  loc_1045BFD:   var_C4 = CVar(CLng(0)) 'Long
  loc_1045C02:   var_E4 = vbNullString
  loc_1045C0C:   Set var_A8 = Me.FGrid2
  loc_1045C12:   LateIdCallSt
  loc_1045C1D:   var_94 = 1
  loc_1045C29:   var_C4 = CVar(CLng(1)) 'Long
  loc_1045C2E:   var_E4 = vbNullString
  loc_1045C38:   Set var_A8 = Me.FGrid2
  loc_1045C3E:   LateIdCallSt
  loc_1045C49:   var_94 = 1
  loc_1045C55:   var_C4 = CVar(CLng(2)) 'Long
  loc_1045C5A:   var_E4 = vbNullString
  loc_1045C64:   Set var_A8 = Me.FGrid2
  loc_1045C6A:   LateIdCallSt
  loc_1045C75:   var_94 = 1
  loc_1045C81:   var_C4 = CVar(CLng(3)) 'Long
  loc_1045C86:   var_E4 = vbNullString
  loc_1045C90:   Set var_A8 = Me.FGrid2
  loc_1045C96:   LateIdCallSt
  loc_1045CA1:   var_94 = 1
  loc_1045CAD:   var_C4 = CVar(CLng(4)) 'Long
  loc_1045CB2:   var_E4 = vbNullString
  loc_1045CBC:   Set var_A8 = Me.FGrid2
  loc_1045CC2:   LateIdCallSt
  loc_1045CCD:   var_94 = 1
  loc_1045CD9:   var_C4 = CVar(CLng(5)) 'Long
  loc_1045CDE:   var_E4 = vbNullString
  loc_1045CE8:   Set var_A8 = Me.FGrid2
  loc_1045CEE:   LateIdCallSt
  loc_1045CF9:   var_94 = 1
  loc_1045D05:   var_C4 = CVar(CLng(6)) 'Long
  loc_1045D0A:   var_E4 = vbNullString
  loc_1045D14:   Set var_A8 = Me.FGrid2
  loc_1045D1A:   LateIdCallSt
  loc_1045D25:   ' Referenced from: 1045BC7
  loc_1045D25: End If
  loc_1045D48: Call Proc_24_89_1020630(Proc_5_1_100CB50("ADD", Me, global_88, Me, var_E4, var_C4, var_94, Me), var_E4, var_C4, var_94, Me)
  loc_1045D53: Call Proc_24_90_FF13B0(var_E4, var_C4)
  loc_1045D58: Call Proc_24_81_13456CC(var_94)
  loc_1045D83: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H46), var_100, var_F6)
  loc_1045D8B: Not((OpenMode = 1)) = var_100.Enabled
  loc_1045D9E: If (Me.Txt And (var_F6 = &HFF)) Then
  loc_1045DAC:   Set var_A8 = Me.Txt
  loc_1045DB2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H46))
  loc_1045DBA:   var_100.SetFocus
  loc_1045DC6: End If
  loc_1045DC6: Exit Sub
  loc_1045DC7: ' Referenced from: 1045B70
  loc_1045DC7: Proc_6_60_E62BC4(var_100)
  loc_1045DCC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAE74C
  'Data Table: 5A2370
  loc_EAE6C8: On Error Goto loc_EAE746
  loc_EAE6CB: Call Proc_24_91_FDA04C()
  loc_EAE707: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EAE72D:   Call Proc_24_89_1020630(Proc_5_1_100CB50("INI", Me))
  loc_EAE738:   Call MoveRec()
  loc_EAE73D: End If
  loc_EAE742: global_180 = 0
  loc_EAE745: Exit Sub
  loc_EAE746: ' Referenced from: EAE6C8
  loc_EAE746: Proc_6_60_E62BC4(global_180)
  loc_EAE74B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1332070
  'Data Table: 5A2370
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_96 As Integer
  Dim unk_5A23A3 As Connection15
  Dim var_F8 As Variant
  Dim var_124 As String
  loc_13318E4: On Error Goto loc_1332017
  loc_13318F5: If (Proc_183_56_FE8818(global_88) = &HFF) Then
  loc_13318F8:   Exit Sub
  loc_13318F9: End If
  loc_1331930: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1331965:   var_134 = "Reservation"
  loc_13319AD:   If (Proc_6_108_1010FEC(MemVar_1F92044, "Booking", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_13319B0:     Exit Sub
  loc_13319B1:   End If
  loc_13319E3:   var_134 = "Guest Folio"
  loc_1331A2B:   If (Proc_6_108_1010FEC(MemVar_1F92044, "GuestFolio", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_1331A2E:     Exit Sub
  loc_1331A2F:   End If
  loc_1331AA9:   If (Proc_6_108_1010FEC(MemVar_1F92044, "GuestFolioProfDetail", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value), 0, "Guest Folio") = 0) Then
  loc_1331AAC:     Exit Sub
  loc_1331AAD:   End If
  loc_1331B27:   If (Proc_6_108_1010FEC(MemVar_1F92044, "PayCharge", "GuestProf", CStr(Me.Fields.Item("SearchCode").Value), 0, "Pay Charge", 0) = 0) Then
  loc_1331B2A:     Exit Sub
  loc_1331B2B:   End If
  loc_1331B2D:   var_96 = 0
  loc_1331B39:   unk_5A23A3.BeginTrans var_130
  loc_1331B40:   var_96 = &HFF
  loc_1331B54:   var_94 = Me.Bookmark 'Variant
  loc_1331BAE:   unk_5A23A3.Execute CStr("Delete From GUESTPROF    Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_1331BF9:   var_168 = 0
  loc_1331C0C:   var_160 = 0
  loc_1331C17:   var_15C = 0
  loc_1331C2A:   var_154 = 0
  loc_1331C35:   var_150 = 0
  loc_1331C48:   var_148 = 0
  loc_1331C91:   Proc_154_5_10E33A4(MemVar_1F92044, "GroupPROF", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1331D0F:   unk_5A23A3.Execute CStr("Delete From GuestProfFor Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_1331D5A:   var_168 = 0
  loc_1331D6D:   var_160 = 0
  loc_1331D78:   var_15C = 0
  loc_1331D8B:   var_154 = 0
  loc_1331D96:   var_150 = 0
  loc_1331DA9:   var_148 = 0
  loc_1331DF2:   Proc_154_5_10E33A4(MemVar_1F92044, "GuestProfFor", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1331E62:   var_F8 = "Delete From GuestProfVeh Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1331E70:   unk_5A23A3.Execute CStr(var_F8), var_118, -1
  loc_1331EBB:   var_168 = 0
  loc_1331ECE:   var_160 = 0
  loc_1331ED9:   var_15C = 0
  loc_1331EEC:   var_154 = 0
  loc_1331EF7:   var_150 = 0
  loc_1331F0A:   var_148 = 0
  loc_1331F4A:   var_124 = "GuestProfVeh"
  loc_1331F53:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1331F81:   unk_5A23A3.CommitTrans
  loc_1331F88:   var_96 = 0
  loc_1331F96:   Me.Requery -1
  loc_1331FB6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1331FC3:     Me.Bookmark = var_94
  loc_1331FCB:   Else
  loc_1331FDF:     If (Me.EOF = 0) Then
  loc_1331FE8:       Me.MoveLast
  loc_1331FED:     End If
  loc_1331FED:   End If
  loc_1331FED:   Call MoveRec()
  loc_133200E:   Proc_5_0_110649C(&HFF, Me, global_88, 0, var_96, var_148, 0)
  loc_1332016: End If
  loc_1332016: Exit Sub
  loc_1332017: ' Referenced from: 13318E4
  loc_133201D: If (var_96 = &HFF) Then
  loc_1332026:   unk_5A23A3.RollbackTrans
  loc_133202B: End If
  loc_1332033: Set var_11C = Err()
  loc_1332039: Call 0.Method_arg_2C (var_124, var_150, var_154, 0)
  loc_133205A: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F8, var_118)
  loc_133206D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FD25A0
  'Data Table: 5A2370
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As CommandButton
  loc_FD23DC: On Error Goto loc_FD255D
  loc_FD23ED: If (Proc_183_55_FE7900(global_88) = &HFF) Then
  loc_FD23F0:   Exit Sub
  loc_FD23F1: End If
  loc_FD2408: If (Me.RecordCount > 0) Then
  loc_FD242E:   Call Proc_24_89_1020630(Proc_5_1_100CB50("EDIT", Me))
  loc_FD2447:   Set var_90 = Me.Txt
  loc_FD244D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FD2455:   var_8C = var_98.Text
  loc_FD2460:   global_116 = var_8C
  loc_FD248E:   Set var_90 = Me.Txt
  loc_FD2494:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98, var_92)
  loc_FD249C:   Not((OpenMode = 1)) = var_98.Enabled
  loc_FD24AF:   If (global_88 And (var_92 = &HFF)) Then
  loc_FD24BD:     Set var_90 = Me.Txt
  loc_FD24C3:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0))
  loc_FD24CB:     var_98.SetFocus
  loc_FD24D7:   End If
  loc_FD24E2:   Set var_90 = Me.Txt
  loc_FD24E8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_FD2511:   If (Trim(CVar(var_98)) = "Foreign") Then
  loc_FD2520:     Me.BtnVisa.Enabled = True
  loc_FD2528:   End If
  loc_FD252B: Else
  loc_FD254C:   MsgBox("No Record To Edit.", &H40, "Information", var_D8, var_118)
  loc_FD255C: End If
  loc_FD255C: Exit Sub
  loc_FD255D: ' Referenced from: FD23DC
  loc_FD2565: Set var_90 = Err()
  loc_FD256B: Call 0.Method_arg_2C (var_8C)
  loc_FD258C: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_D8, var_118)
  loc_FD259F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15090
  'Data Table: 5A2370
  loc_E15085: Me.Global.Unload Me
  loc_E1508D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF4168
  'Data Table: 5A2370
  Dim Me As Recordset15
  Dim var_10C As Frame
  loc_EF40A0: On Error Goto loc_EF4160
  loc_EF40BA: If (Me.RecordCount <= 0) Then
  loc_EF40DE:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_EF40EE:   Exit Sub
  loc_EF40EF: End If
  loc_EF40F3: Set var_10C = Me.TopCtrl1
  loc_EF40F9: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EF4111: Me.FrmFind.Top = (CDbl() + CDbl(&HA))
  loc_EF412E: Me.FrmFind.Left = CDbl(0)
  loc_EF4142: Me.FrmFind.Visible = True
  loc_EF414E: Set var_10C = Me.TXT_FOLIONO
  loc_EF415F: Exit Sub
  loc_EF4160: ' Referenced from: EF40A0
  loc_EF4160: Proc_6_60_E62BC4(TXT_FOLIONO.DispID_8001)
  loc_EF4165: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2B578
  'Data Table: 5A2370
  loc_E2B568: Proc_5_0_110649C(&HFF, Me)
  loc_E2B570: Call MoveRec()
  loc_E2B575: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2B518
  'Data Table: 5A2370
  loc_E2B508: Proc_5_0_110649C(&HFF, Me)
  loc_E2B510: Call MoveRec()
  loc_E2B515: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C118
  'Data Table: 5A2370
  loc_E2C108: Proc_5_0_110649C(&HFF, Me)
  loc_E2C110: Call MoveRec()
  loc_E2C115: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2BFF8
  'Data Table: 5A2370
  loc_E2BFE8: Proc_5_0_110649C(&HFF, Me)
  loc_E2BFF0: Call MoveRec()
  loc_E2BFF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1073D9C
  'Data Table: 5A2370
  Dim unk_5A23A3 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1073B1C: On Error Goto loc_1073D53
  loc_1073B35: unk_5A23A3.Execute "SELECT G.Name, G.Add1 AS Address1, G.Add2 AS Address2, G.CityName + '  ' +G.ZipCode AS City, G.CountryName AS Country, G.PhoneNo AS PhoneNo, G.MobileNo AS MobileNo, G.Gender AS Gender, G.MaritalStatus AS MaritalStatus, G.PanNo AS PanNo, G.GuestStatus AS Status From GuestProf G order by G.Name", var_BC, -1
  loc_1073B40: Set var_88 = var_C0
  loc_1073B4F: var_C4 = var_88.RecordCount
  loc_1073B5D: If (var_C4 = 0) Then
  loc_1073B79:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1073B89:   Exit Sub
  loc_1073B8A: End If
  loc_1073B99: var_12C = MemVar_1F920B4 & "\GuestProfile.ttx"
  loc_1073BA0: Set var_C0 = var_88 
  loc_1073BAC: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1073BB6: Set var_88 = var_C0
  loc_1073BBC: var_AC = CVar(var_12E) 'Integer
  loc_1073BBF: var_98 = var_AC 'Variant
  loc_1073BDB: var_128 = MemVar_1F920B4 & "\GuestProfile.RPT"
  loc_1073BE4: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1073BEF: MemVar_1F921E4 = var_C0
  loc_1073C0A: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1073C12: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1073C1E: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1073C37:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1073C3F:   Call 0.Method_arg_20 (var_138)
  loc_1073C47:   Call 0.Method_arg_30 (var_128)
  loc_1073C8D:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1073CA3:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1073CAB:     Call 0.Method_arg_20 (var_138)
  loc_1073CB3:     Call 0.Method_arg_38 ("'Guest Profile'")
  loc_1073CBF:   End If
  loc_1073CC2: Next var_132 'Integer
  loc_1073CE0: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1073CE8: Call 0.Method_arg_2C (var_D4)
  loc_1073CF6: Call 0.Method_arg_150 (var_F4)
  loc_1073D01: Call 0.Method_arg_50 (var_128)
  loc_1073D0B: Set var_138 = Nothing
  loc_1073D25: Set var_C0 = MemVar_1F921E4 
  loc_1073D31: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_1073D3C: MemVar_1F921E4 = var_C0
  loc_1073D4F: Set var_88 = Nothing
  loc_1073D52: Exit Sub
  loc_1073D53: ' Referenced from: 1073B1C
  loc_1073D5B: Set var_C0 = Err()
  loc_1073D61: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1073D6C: Call 0.Method_arg_50 (var_12C)
  loc_1073D88: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1073D9B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'EE7B10
  'Data Table: 5A2370
  Dim Me As Recordset15
  loc_EE7A4B: Me.Requery -1
  loc_EE7A5B: Me.Requery -1
  loc_EE7A6B: Me.Requery -1
  loc_EE7A7B: Me.Requery -1
  loc_EE7A8B: Me.Requery -1
  loc_EE7A9B: Me.Requery -1
  loc_EE7AAA: Proc_6_93_EAC124(Me.TXT_COUNTRY)
  loc_EE7ABC: Proc_6_93_EAC124(Me.TXT_FOLIONO)
  loc_EE7ACE: Proc_6_93_EAC124(Me.TXT_GNAME)
  loc_EE7AE0: Proc_6_93_EAC124(Me.TXT_STATE)
  loc_EE7AF2: Proc_6_93_EAC124(Me.TXT_TYPE)
  loc_EE7B04: Proc_6_93_EAC124(Me.TXT_CITY)
  loc_EE7B0C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C39700
  'Data Table: 5A2370
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_F8 As Variant
  Dim unk_5A23A3 As Connection15
  Dim var_A4 As Variant
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_108 As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_13C As String
  Dim var_15C As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_190 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_14C As Variant
  Dim Me As Variant
  Dim var_1A0 As Variant
  Dim var_19C As Variant
  Dim var_1B8 As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_2D8 As Variant
  Dim var_2E0 As Variant
  Dim var_2EC As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_2D0 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  Dim var_AE As Variant
  Dim var_B0 As Variant
  Dim var_B2 As Variant
  Dim var_330 As Variant
  Dim var_3EC As Variant
  Dim var_434 As Variant
  Dim var_46C As Variant
  Dim var_47C As Variant
  Dim var_4B4 As Variant
  Dim var_1528 As Double
  Dim var_4EC As Variant
  Dim var_534 As Variant
  Dim var_57C As Variant
  Dim var_58C As Variant
  Dim var_5E4 As Variant
  Dim var_63C As Variant
  Dim var_694 As Variant
  Dim var_6EC As Variant
  Dim var_744 As Variant
  Dim var_79C As Variant
  Dim var_7F4 As Variant
  Dim var_84C As Variant
  Dim var_8A4 As Variant
  Dim var_8FC As Variant
  Dim var_954 As Variant
  Dim var_9AC As Variant
  Dim var_A04 As Variant
  Dim var_A5C As Variant
  Dim var_AB4 As Variant
  Dim var_B64 As Variant
  Dim var_BBC As Variant
  Dim var_C14 As Variant
  Dim var_C6C As Variant
  Dim var_CC4 As Variant
  Dim var_D0C As TextBox
  Dim var_D54 As TextBox
  Dim var_D9C As TextBox
  Dim var_DF4 As Variant
  Dim var_EA4 As Variant
  Dim var_1154 As Variant
  Dim var_14A8 As Variant
  Dim var_320 As Variant
  Dim var_3C8 As Variant
  Dim var_49C As Variant
  Dim var_51C As Variant
  Dim var_554 As Variant
  Dim var_5AC As Variant
  Dim var_5CC As Variant
  Dim var_70C As Variant
  Dim var_784 As Variant
  Dim var_834 As Variant
  Dim var_8C4 As Variant
  Dim var_974 As Variant
  Dim var_9EC As Variant
  Dim var_AD4 As Variant
  Dim var_BA4 As Variant
  Dim var_C54 As Variant
  Dim var_CE4 As Variant
  Dim var_D2C As Variant
  Dim var_D74 As Variant
  Dim var_DAC As Variant
  Dim var_DBC As Variant
  Dim var_E34 As Variant
  Dim var_E8C As Variant
  Dim var_EE4 As Variant
  Dim var_FB4 As Variant
  Dim var_FEC As Variant
  Dim var_111C As Variant
  Dim var_1174 As Variant
  Dim var_11D4 As Variant
  Dim var_126C As Variant
  Dim var_1304 As Variant
  Dim var_13A0 As Variant
  Dim var_1430 As Variant
  Dim var_14D8 As Variant
  Dim var_1494 As Label
  Dim var_151C As Variant
  Dim var_1014 As TextBox
  Dim var_3B4 As Variant
  Dim var_3FC As Variant
  Dim var_444 As Variant
  Dim var_48C As Variant
  Dim var_4FC As Variant
  Dim var_544 As Variant
  Dim var_59C As Variant
  Dim var_5F4 As Variant
  Dim var_64C As Variant
  Dim var_6A4 As Variant
  Dim var_6FC As Variant
  Dim var_754 As Variant
  Dim var_7AC As Variant
  Dim var_804 As Variant
  Dim var_85C As Variant
  Dim var_8B4 As Variant
  Dim var_90C As Variant
  Dim var_964 As Variant
  Dim var_9BC As Variant
  Dim var_A14 As Variant
  Dim var_A6C As Variant
  Dim var_AC4 As Variant
  Dim var_B1C As Variant
  Dim var_B74 As Variant
  Dim var_BCC As Variant
  Dim var_C24 As Variant
  Dim var_C7C As Variant
  Dim var_CD4 As Variant
  Dim var_E04 As Variant
  Dim var_E5C As Variant
  Dim var_EB4 As Variant
  Dim var_10A4 As Variant
  Dim var_1B0 As Variant
  Dim var_1AF4 As Double
  Dim var_1B4 As MSHFlexGrid
  Dim var_2D4 As MSHFlexGrid
  Dim var_2DC As Variant
  Dim var_2E8 As MSHFlexGrid
  Dim var_3B8 As MSHFlexGrid
  Dim var_3DC As MSHFlexGrid
  Dim var_420 As MSHFlexGrid
  Dim var_424 As MSHFlexGrid
  Dim var_1AFC As Double
  Dim var_468 As MSHFlexGrid
  Dim var_4B0 As MSHFlexGrid
  Dim var_4D8 As MSHFlexGrid
  Dim var_4DC As MSHFlexGrid
  Dim var_520 As MSHFlexGrid
  Dim var_524 As MSHFlexGrid
  Dim var_578 As MSHFlexGrid
  Dim var_5D0 As MSHFlexGrid
  Dim var_5D4 As MSHFlexGrid
  Dim var_1BC As String
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1548 As String
  loc_1C33D40: On Error Goto loc_1C396AD
  loc_1C33D60: Proc_6_17_EAA2B0(var_D4, MemVar_1F92078, "Select * from enviro WHERE logSITE_CODE=")
  loc_1C33D76: unk_5A23A3.Execute CStr(var_118 & var_D4), -1, var_11C
  loc_1C33D81: Set var_A4 = var_11C
  loc_1C33D97: var_86 = CByte(0) 'Byte
  loc_1C33DA6: Set var_11C = Me.Txt
  loc_1C33DAC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1C33DD5: If (Proc_6_27_EA565C(var_120, "Name") = 0) Then
  loc_1C33DDF:   Call Txt_GotFocus(CInt(0))
  loc_1C33DE4:   Exit Sub
  loc_1C33DE5: End If
  loc_1C33DF0: If (global_80 = "Y") Then
  loc_1C33DFE:   Set var_11C = Me.Txt
  loc_1C33E04:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_1C33E2D:   If (Proc_6_27_EA565C(var_120, "Address") = 0) Then
  loc_1C33E37:     Call Txt_GotFocus(CInt(1))
  loc_1C33E3C:     Exit Sub
  loc_1C33E3D:   End If
  loc_1C33E3D: End If
  loc_1C33E50: If (OpenType <> "Reservation") Then
  loc_1C33E5E:   Set var_11C = Me.Txt
  loc_1C33E64:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120)
  loc_1C33E8D:   If (Proc_6_27_EA565C(var_120, "City") = 0) Then
  loc_1C33E97:     Call Txt_GotFocus(CInt(6))
  loc_1C33E9C:     Exit Sub
  loc_1C33E9D:   End If
  loc_1C33EA8:   Set var_11C = Me.Txt
  loc_1C33EAE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120)
  loc_1C33ED7:   If (Proc_6_27_EA565C(var_120, "State") = 0) Then
  loc_1C33EE1:     Call Txt_GotFocus(CInt(&H12))
  loc_1C33EE6:     Exit Sub
  loc_1C33EE7:   End If
  loc_1C33EF2:   Set var_11C = Me.Txt
  loc_1C33EF8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C33F21:   If (Proc_6_27_EA565C(var_120, "Country") = 0) Then
  loc_1C33F2B:     Call Txt_GotFocus(CInt(&H13))
  loc_1C33F30:     Exit Sub
  loc_1C33F31:   End If
  loc_1C33F3C:   Set var_11C = Me.Txt
  loc_1C33F42:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_1C33F6B:   If (Proc_6_27_EA565C(var_120, "Country Type") = 0) Then
  loc_1C33F75:     Call Txt_GotFocus(CInt(3))
  loc_1C33F7A:     Exit Sub
  loc_1C33F7B:   End If
  loc_1C33F7B: End If
  loc_1C33F86: If (global_80 = "Y") Then
  loc_1C33F94:   Set var_11C = Me.Txt
  loc_1C33F9A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_120)
  loc_1C33FC3:   If (Proc_6_27_EA565C(var_120, "Phone No.") = 0) Then
  loc_1C33FCD:     Call Txt_GotFocus(CInt(&HA))
  loc_1C33FD2:     Exit Sub
  loc_1C33FD3:   End If
  loc_1C33FDE:   Set var_11C = Me.Txt
  loc_1C33FE4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_120)
  loc_1C3400D:   If (Proc_6_27_EA565C(var_120, "Fax No.") = 0) Then
  loc_1C34017:     Call Txt_GotFocus(CInt(&HC))
  loc_1C3401C:     Exit Sub
  loc_1C3401D:   End If
  loc_1C34028:   Set var_11C = Me.Txt
  loc_1C3402E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_120)
  loc_1C34057:   If (Proc_6_27_EA565C(var_120, "Mobile No.") = 0) Then
  loc_1C34061:     Call Txt_GotFocus(CInt(&HB))
  loc_1C34066:     Exit Sub
  loc_1C34067:   End If
  loc_1C34072:   Set var_11C = Me.Txt
  loc_1C34078:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_120)
  loc_1C340A1:   If (Proc_6_27_EA565C(var_120, "Email Id.") = 0) Then
  loc_1C340AB:     Call Txt_GotFocus(CInt(&HD))
  loc_1C340B0:     Exit Sub
  loc_1C340B1:   End If
  loc_1C340B1: End If
  loc_1C340C4: If (OpenType <> "Reservation") Then
  loc_1C340D2:   Set var_11C = Me.Txt
  loc_1C340D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120)
  loc_1C34101:   If (Proc_6_27_EA565C(var_120, "Nationality") = 0) Then
  loc_1C3410B:     Call Txt_GotFocus(CInt(&H11))
  loc_1C34110:     Exit Sub
  loc_1C34111:   End If
  loc_1C34111: End If
  loc_1C3412B: var_120 = var_A4.Fields.Item("MobileInfoMandatory")
  loc_1C3415F: var_12C = var_A4.Fields.Item("MobileInfoMandatory")
  loc_1C34191: If CBool((var_120.Value = "Y") Or (var_12C.Value = vbNullString)) Then
  loc_1C3419F:   Set var_11C = Me.Txt
  loc_1C341A5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_120)
  loc_1C341CE:   If (Proc_6_27_EA565C(var_120, "Mobile No.") = 0) Then
  loc_1C341D8:     Call Txt_GotFocus(CInt(&HB))
  loc_1C341DD:     Exit Sub
  loc_1C341DE:   End If
  loc_1C341DE: End If
  loc_1C341E9: If (global_80 = "Y") Then
  loc_1C341F7:   Set var_11C = Me.Txt
  loc_1C341FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_120)
  loc_1C34226:   If (Proc_6_27_EA565C(var_120, "Marital Status") = 0) Then
  loc_1C34230:     Call Txt_GotFocus(CInt(&H42))
  loc_1C34235:     Exit Sub
  loc_1C34236:   End If
  loc_1C34241:   Set var_11C = Me.Txt
  loc_1C34247:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_120)
  loc_1C34270:   If (Proc_6_27_EA565C(var_120, "Gender") = 0) Then
  loc_1C3427A:     Call Txt_GotFocus(CInt(&H41))
  loc_1C3427F:     Exit Sub
  loc_1C34280:   End If
  loc_1C3428E:   Set var_11C = Me.Txt
  loc_1C34294:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_120)
  loc_1C342B3:   If (var_120.Text = "Yes") Then
  loc_1C342C1:     Set var_11C = Me.Txt
  loc_1C342C7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_120)
  loc_1C342F0:     If (Proc_6_27_EA565C(var_120, "Diplomat Id. No.") = 0) Then
  loc_1C342FA:       Call Txt_GotFocus(CInt(&H45))
  loc_1C342FF:       Exit Sub
  loc_1C34300:     End If
  loc_1C34300:   End If
  loc_1C3430B:   Set var_11C = Me.Txt
  loc_1C34311:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_120)
  loc_1C3433A:   If (Proc_6_27_EA565C(var_120, "Id. Proof") = 0) Then
  loc_1C34344:     Call Txt_GotFocus(CInt(&H4A))
  loc_1C34349:     Exit Sub
  loc_1C3434A:   End If
  loc_1C3434A: End If
  loc_1C34356: Call Txt_Validate(CInt(&HD))
  loc_1C34366: Set var_11C = Me.Txt
  loc_1C3436C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_120)
  loc_1C3437B: var_F4 = Trim(CVar(var_120))
  loc_1C34383: var_118 = Len(var_F4)
  loc_1C3439C: Set var_124 = Me.Txt
  loc_1C343A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_12C, (var_118 <> 0))
  loc_1C343DB: If CBool(0 And (Trim(CVar(var_12C)) <> "NA")) Then
  loc_1C343E9:   Set var_11C = Me.Txt
  loc_1C343EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_120)
  loc_1C343F7:   var_F8 = "Id. Proof No."
  loc_1C34418:   If (Proc_6_27_EA565C(var_120, var_F8) = 0) Then
  loc_1C34422:     Call Txt_GotFocus(CInt(&H4C))
  loc_1C34427:     Exit Sub
  loc_1C34428:   End If
  loc_1C34428: End If
  loc_1C34437: Call 0.Method_arg_38 (MemVar_1F92214, var_F8)
  loc_1C34445: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_F8, var_126)
  loc_1C34451: If Not(var_126) Then
  loc_1C34467:   var_D4 = "InValid Picture Path in Analysis.ini"
  loc_1C3446D:   MsgBox(var_D4, &H40, var_F4, var_118, var_14C)
  loc_1C3447D:   Exit Sub
  loc_1C3447E: End If
  loc_1C34494: Call 0.Method_arg_38 (MemVar_1F92214 & "\IdProof", var_194)
  loc_1C344A2: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_194, var_126)
  loc_1C344B2: If Not(var_126) Then
  loc_1C344C8:   Call 0.Method_arg_74 (MemVar_1F92214 & "\IdProof", var_11C)
  loc_1C344D3: End If
  loc_1C344D7: Set var_11C = Me.TopCtrl1
  loc_1C344DD: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_120)
  loc_1C344F6: If (CStr() = "Add") Then
  loc_1C344FF:   var_E4 = 0
  loc_1C3451C:   var_F8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF WHERE SITE_CODE='" & MemVar_1F92070
  loc_1C3452C:   unk_5A23A3.Execute CStr() & "'", var_D4, -1
  loc_1C34534:   var_11C = var_11C.Fields
  loc_1C3453C:   var_E4 = var_120.Item(var_120)
  loc_1C34544:   var_124 = var_124.Value
  loc_1C3457D:   var_118 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1C345A3:   var_F4 = Format(CStr(var_F4), "000000")
  loc_1C345AB:   var_14C = (1 + var_F4)
  loc_1C345B6:   global_60 = CStr(var_14C)
  loc_1C345CB: Else
  loc_1C345E8:   var_120 = Me.Fields.Item("SearchCode")
  loc_1C345F0:   var_D4 = var_120.Value
  loc_1C345F9:   var_F8 = CStr(var_D4)
  loc_1C345FF:   global_60 = var_F8
  loc_1C34610: End If
  loc_1C3461E: Set var_11C = Me.Txt
  loc_1C34624: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120, var_F8)
  loc_1C3462C: 1 = var_120.Text
  loc_1C34647: Set var_124 = Me.Txt
  loc_1C3464D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_12C, var_126)
  loc_1C34655: (var_F8 <> vbNullString) = var_12C.Enabled
  loc_1C3466F: Set var_19C = Me.Txt
  loc_1C34675: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_1A0, var_15E)
  loc_1C3467D: (var_118 And (var_126 = &HFF)) = var_1A0.Enabled
  loc_1C3469B: If (var_F4 And (var_15E = &HFF)) Then
  loc_1C346A9:   Set var_11C = Me.Txt
  loc_1C346AF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12))
  loc_1C346D8:   If (Proc_6_27_EA565C(var_120, "State") = 0) Then
  loc_1C346E2:     Call Txt_GotFocus(CInt(&H12))
  loc_1C346E7:     Exit Sub
  loc_1C346E8:   End If
  loc_1C346F3:   Set var_11C = Me.Txt
  loc_1C346F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C34722:   If (Proc_6_27_EA565C(var_120, "Country") = 0) Then
  loc_1C3472C:     Call Txt_GotFocus(CInt(&H13))
  loc_1C34731:     Exit Sub
  loc_1C34732:   End If
  loc_1C3473B:   unk_5A23A3.BeginTrans var_1A4
  loc_1C34744:   var_86 = CByte(1) 'Byte
  loc_1C34756:   Set var_11C = Me.Txt
  loc_1C3475C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C34764:   var_F8 = var_120.Tag
  loc_1C3477B:   If (var_F8 <> vbNullString) Then
  loc_1C347AB:     Set var_11C = Me.Txt
  loc_1C347B1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120, var_F8, "SELECT COUNT(*) FROM COUNTRY WHERE CODE='", var_D4, -1)
  loc_1C347D2:     unk_5A23A3.Execute var_12C & var_F8 & "'", 0, var_19C
  loc_1C347E2:      = var_12C.Item(var_120)
  loc_1C347EA:      = var_19C.Value
  loc_1C34817:     If (var_120.Tag.Fields <= 0) Then
  loc_1C34828:       Set var_11C = Me.Txt
  loc_1C3482E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_120)
  loc_1C34836:       var_F8 = var_120.Tag
  loc_1C34849:       Set var_124 = Me.Txt
  loc_1C3484F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_12C)
  loc_1C3486A:       Set var_19C = Me.Txt
  loc_1C34870:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_1A0)
  loc_1C34885:       var_D4 = CVar(var_1A0.Text) 'String
  loc_1C3489E:       Set var_1B4 = Me.Txt
  loc_1C348A4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_1C348B4:       var_22C = Date
  loc_1C348BF:       Proc_6_7_F25D88(var_23C)
  loc_1C348E6:       var_1AC = "Insert Into Country(Code,Name,ShortName,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_F8 & "','" & var_12C.Text
  loc_1C3492C:       var_1FC = CVar(var_1AC & "','") & Left(var_D4, 6) & "','" & CVar(var_1B8.Text) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_1C34966:       unk_5A23A3.Execute CStr(var_1FC & "'," & var_23C & ",'A','" & CVar(MemVar_1F92078) & "')"), var_2D0, -1
  loc_1C349B8:     End If
  loc_1C349B8:   End If
  loc_1C349C6:   Set var_11C = Me.Txt
  loc_1C349CC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120, var_F8)
  loc_1C349D4:   var_2D4 = var_120.Tag
  loc_1C349EB:   If (var_F8 <> vbNullString) Then
  loc_1C34A1B:     Set var_11C = Me.Txt
  loc_1C34A21:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120, var_F8, "SELECT COUNT(*) FROM STATE WHERE CODE='", var_D4, -1)
  loc_1C34A42:     unk_5A23A3.Execute var_12C & var_F8 & "'", 0, var_19C
  loc_1C34A52:      = var_12C.Item(var_22C)
  loc_1C34A5A:      = var_19C.Value
  loc_1C34A87:     If (var_120.Tag.Fields <= 0) Then
  loc_1C34A98:       Set var_11C = Me.Txt
  loc_1C34A9E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_120)
  loc_1C34AA6:       var_F8 = var_120.Tag
  loc_1C34AB9:       Set var_124 = Me.Txt
  loc_1C34ABF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_12C)
  loc_1C34ADA:       Set var_19C = Me.Txt
  loc_1C34AE0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_1A0)
  loc_1C34AF5:       var_D4 = CVar(var_1A0.Text) 'String
  loc_1C34B0E:       Set var_1B4 = Me.Txt
  loc_1C34B14:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_1B8)
  loc_1C34B24:       var_22C = Date
  loc_1C34B2F:       Proc_6_7_F25D88(var_23C)
  loc_1C34B56:       var_1AC = "Insert Into State(Code,Name,ShortName,Country,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_F8 & "','" & var_12C.Text
  loc_1C34B9C:       var_1FC = CVar(var_1AC & "','") & Left(var_D4, 6) & "','" & CVar(var_1B8.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_1C34BD6:       unk_5A23A3.Execute CStr(var_1FC & "'," & var_23C & ",'A','" & CVar(MemVar_1F92078) & "')"), var_2D0, -1
  loc_1C34C28:     End If
  loc_1C34C28:   End If
  loc_1C34C36:   Set var_11C = Me.Txt
  loc_1C34C3C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120, var_F8)
  loc_1C34C44:   var_2D4 = var_120.Tag
  loc_1C34C5B:   If (var_F8 <> vbNullString) Then
  loc_1C34C8B:     Set var_11C = Me.Txt
  loc_1C34C91:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120, var_F8, "SELECT COUNT(*) FROM CITY WHERE CITYCODE='", var_D4, -1)
  loc_1C34CB2:     unk_5A23A3.Execute var_12C & var_F8 & "'", 0, var_19C
  loc_1C34CC2:      = var_12C.Item(var_22C)
  loc_1C34CCA:      = var_19C.Value
  loc_1C34CF7:     If (var_120.Tag.Fields <= 0) Then
  loc_1C34D08:       Set var_11C = Me.Txt
  loc_1C34D0E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_120)
  loc_1C34D29:       Set var_124 = Me.Txt
  loc_1C34D2F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_12C)
  loc_1C34D4A:       Set var_19C = Me.Txt
  loc_1C34D50:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1A0)
  loc_1C34D65:       var_D4 = CVar(var_1A0.Text) 'String
  loc_1C34D7E:       Set var_1B4 = Me.Txt
  loc_1C34D84:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_1B8)
  loc_1C34D9F:       Set var_2D4 = Me.Txt
  loc_1C34DA5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_2D8)
  loc_1C34DC0:       Set var_2DC = Me.Txt
  loc_1C34DC6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_2E0)
  loc_1C34DE1:       Set var_2E8 = Me.Txt
  loc_1C34DE7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2EC)
  loc_1C34DF7:       var_320 = Date
  loc_1C34E02:       Proc_6_7_F25D88(var_330)
  loc_1C34E1B:       var_194 = "Insert Into City(CityCode,CityName,ShortName,STDCode,ZipCode,State,Country,CityHelp,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_120.Tag
  loc_1C34E29:       var_1AC = var_194 & "','" & var_12C.Text
  loc_1C34E30:       var_118 = CVar(var_1AC & "','") 'String
  loc_1C34E36:       var_14C = var_118 & Left(var_D4, 6) 
  loc_1C34E4D:       var_E4 = "','"
  loc_1C34E52:       var_190 = var_14C & "','','" & CVar(var_1B8.Text) & var_E4 
  loc_1C34E60:       var_108 = "','"
  loc_1C34E6C:       var_21C = CVar(var_2E0.Tag) 'String
  loc_1C34E73:       var_13C = "','"
  loc_1C34E82:       var_26C = var_190 & CVar(var_2D8.Tag) & var_108 & var_21C & var_13C & CVar(var_2EC.Text) 
  loc_1C34EA8:       var_300 = var_26C & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) 
  loc_1C34EB8:       var_340 = var_300 & "'," & var_330 
  loc_1C34EE2:       unk_5A23A3.Execute CStr(var_340 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_3B4, -1
  loc_1C34F52:     End If
  loc_1C34F52:   End If
  loc_1C34F58:   unk_5A23A3.CommitTrans
  loc_1C34F61:   var_86 = CByte(0) 'Byte
  loc_1C34F65: End If
  loc_1C34F6E: unk_5A23A3.BeginTrans var_1A4
  loc_1C34F77: var_86 = CByte(1) 'Byte
  loc_1C34FA2: unk_5A23A3.Execute "Delete From GuestProfFor Where Code='" & global_60 & "'", var_D4, -1
  loc_1C34FCB: var_F8 = "Delete From GuestProfVeh Where Code='" & global_60
  loc_1C34FDB: unk_5A23A3.Execute var_F8 & "'", var_D4, -1
  loc_1C34FF9: Call 0.Method_arg_38 (MemVar_1F92214, var_F8, var_11C)
  loc_1C35016: var_98 = var_F8 & "\GT" & global_60 & ".jpg"
  loc_1C3502E: Call 0.Method_arg_38 (MemVar_1F92214, var_F8, var_11C)
  loc_1C3504B: var_9C = var_F8 & "\IdProof\ID" & global_60 & ".jpg"
  loc_1C35063: Call 0.Method_arg_38 (MemVar_1F92214, var_F8)
  loc_1C35080: var_A0 = var_F8 & "\IdProof\SIGN" & global_60 & ".jpg"
  loc_1C350A4: var_AE = Proc_142_3_E97580(Me.GuestImage, var_98)
  loc_1C350C6: var_B0 = Proc_142_3_E97580(Me.IdProofImage, var_9C, var_AE)
  loc_1C350D4: Set var_120 = Me.GuestSign
  loc_1C350E8: var_B2 = Proc_142_3_E97580(var_120, var_A0, var_B0)
  loc_1C350F8: If (var_AE = &HFF) Then
  loc_1C35102:   Set var_11C = Me.GuestImage
  loc_1C35108:   Me.GuestImage.Tag = var_98
  loc_1C35110: End If
  loc_1C35116: If (var_B0 = &HFF) Then
  loc_1C35126:   Me.IdProofImage.Tag = var_9C
  loc_1C3512E: End If
  loc_1C35134: If (var_B2 = &HFF) Then
  loc_1C35144:   Me.GuestSign.Tag = var_A0
  loc_1C3514C: End If
  loc_1C35150: Set var_11C = Me.TopCtrl1
  loc_1C35156: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B2)
  loc_1C3515E: var_F8 = CStr(var_3B8)
  loc_1C3516F: If (var_F8 = "Add") Then
  loc_1C3517B:   If (global_180 = 0) Then
  loc_1C35189:     Set var_11C = Me.Txt
  loc_1C3518F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1C35197:     var_D4 = CVar(var_120) 'Address
  loc_1C3519E:     var_F4 = Trim(var_D4)
  loc_1C351A9:     Proc_6_17_EAA2B0(var_118, var_F4)
  loc_1C351B9:     Set var_124 = Me.Txt
  loc_1C351BF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_1C351CE:     Proc_6_17_EAA2B0(var_190, CVar(var_12C))
  loc_1C351DE:     Set var_19C = Me.Txt
  loc_1C351E4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A0)
  loc_1C351F3:     Proc_6_17_EAA2B0(var_21C, CVar(var_1A0))
  loc_1C35206:     Set var_1B4 = Me.Txt
  loc_1C3520C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8)
  loc_1C35214:     var_194 = var_1B8.Tag
  loc_1C35222:     Proc_6_17_EAA2B0(var_26C, CVar(var_194))
  loc_1C35232:     Set var_2D4 = Me.Txt
  loc_1C35238:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2D8)
  loc_1C35247:     Proc_6_17_EAA2B0(var_300, CVar(var_2D8))
  loc_1C35257:     Set var_2DC = Me.Txt
  loc_1C3525D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2E0)
  loc_1C3526C:     Proc_6_17_EAA2B0(var_340, CVar(var_2E0))
  loc_1C3527C:     Set var_2E8 = Me.Txt
  loc_1C35282:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2EC)
  loc_1C35291:     Proc_6_17_EAA2B0(var_3B4, CVar(var_2EC))
  loc_1C352A1:     Set var_3B8 = Me.Txt
  loc_1C352A7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3DC)
  loc_1C352B6:     Proc_6_17_EAA2B0(var_3FC, CVar(var_3DC))
  loc_1C352C6:     Set var_420 = Me.Txt
  loc_1C352CC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_424)
  loc_1C352DB:     Proc_6_17_EAA2B0(var_444, CVar(var_424))
  loc_1C352EE:     Set var_468 = Me.Txt
  loc_1C352F4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_46C)
  loc_1C3530A:     Proc_6_17_EAA2B0(var_48C, CVar(var_46C.Tag))
  loc_1C3531D:     Set var_4B0 = Me.Txt
  loc_1C35323:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H49), var_4B4)
  loc_1C35338:     var_1528 = Val(var_4B4.Text)
  loc_1C35346:     Set var_4D8 = Me.Txt
  loc_1C3534C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4DC)
  loc_1C3535B:     Proc_6_7_F25D88(var_4FC, CVar(var_4DC))
  loc_1C3536B:     Set var_520 = Me.Txt
  loc_1C35371:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_524)
  loc_1C35380:     Proc_6_7_F25D88(var_544, CVar(var_524))
  loc_1C35393:     Set var_578 = Me.Txt
  loc_1C35399:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_57C, var_1AC)
  loc_1C353AF:     Proc_6_17_EAA2B0(var_59C, CVar(var_1AC))
  loc_1C353BF:     Set var_5D0 = Me.Txt
  loc_1C353C5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_5D4)
  loc_1C353D4:     Proc_6_17_EAA2B0(var_5F4, CVar(var_5D4))
  loc_1C353E4:     Set var_628 = Me.Txt
  loc_1C353EA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_62C)
  loc_1C353F9:     Proc_6_17_EAA2B0(var_64C, CVar(var_62C))
  loc_1C35409:     Set var_680 = Me.Txt
  loc_1C3540F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_684)
  loc_1C3541E:     Proc_6_17_EAA2B0(var_6A4, CVar(var_684))
  loc_1C3542E:     Set var_6D8 = Me.Txt
  loc_1C35434:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_6DC)
  loc_1C35443:     Proc_6_17_EAA2B0(var_6FC, CVar(var_6DC))
  loc_1C35453:     Set var_730 = Me.Txt
  loc_1C35459:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_734)
  loc_1C35468:     Proc_6_17_EAA2B0(var_754, CVar(var_734))
  loc_1C35478:     Set var_788 = Me.Txt
  loc_1C3547E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_78C)
  loc_1C3548D:     Proc_6_17_EAA2B0(var_7AC, CVar(var_78C))
  loc_1C3549D:     Set var_7E0 = Me.Txt
  loc_1C354A3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_7E4)
  loc_1C354B2:     Proc_6_17_EAA2B0(var_804, CVar(var_7E4))
  loc_1C354C2:     Set var_838 = Me.Txt
  loc_1C354C8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_83C)
  loc_1C354D7:     Proc_6_17_EAA2B0(var_85C, CVar(var_83C))
  loc_1C354E7:     Set var_890 = Me.Txt
  loc_1C354ED:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_894)
  loc_1C354FC:     Proc_6_17_EAA2B0(var_8B4, CVar(var_894))
  loc_1C3550C:     Set var_8E8 = Me.Txt
  loc_1C35512:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_8EC)
  loc_1C35521:     Proc_6_17_EAA2B0(var_90C, CVar(var_8EC))
  loc_1C35531:     Set var_940 = Me.Txt
  loc_1C35537:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3D), var_944)
  loc_1C35546:     Proc_6_17_EAA2B0(var_964, CVar(var_944))
  loc_1C35556:     Set var_998 = Me.Txt
  loc_1C3555C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3C), var_99C)
  loc_1C3556B:     Proc_6_17_EAA2B0(var_9BC, CVar(var_99C))
  loc_1C3557B:     Set var_9F0 = Me.Txt
  loc_1C35581:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3B), var_9F4)
  loc_1C35590:     Proc_6_17_EAA2B0(var_A14, CVar(var_9F4))
  loc_1C355A0:     Set var_A48 = Me.Txt
  loc_1C355A6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A4C)
  loc_1C355B5:     Proc_6_17_EAA2B0(var_A6C, CVar(var_A4C))
  loc_1C355C5:     Set var_AA0 = Me.Txt
  loc_1C355CB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_AA4)
  loc_1C355DA:     Proc_6_17_EAA2B0(var_AC4, CVar(var_AA4))
  loc_1C355EA:     Set var_AF8 = Me.Txt
  loc_1C355F0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_AFC)
  loc_1C355FF:     Proc_6_17_EAA2B0(var_B1C, CVar(var_AFC))
  loc_1C3560F:     Set var_B50 = Me.Txt
  loc_1C35615:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3F), var_B54)
  loc_1C35624:     Proc_6_17_EAA2B0(var_B74, CVar(var_B54))
  loc_1C35634:     Set var_BA8 = Me.Txt
  loc_1C3563A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3E), var_BAC)
  loc_1C35649:     Proc_6_17_EAA2B0(var_BCC, CVar(var_BAC))
  loc_1C35659:     Set var_C00 = Me.Txt
  loc_1C3565F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_C04)
  loc_1C3566E:     Proc_6_17_EAA2B0(var_C24, CVar(var_C04))
  loc_1C3567E:     Set var_C58 = Me.Txt
  loc_1C35684:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C5C)
  loc_1C35693:     Proc_6_17_EAA2B0(var_C7C, CVar(var_C5C))
  loc_1C356A3:     Set var_CB0 = Me.Txt
  loc_1C356A9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CB4)
  loc_1C356B8:     Proc_6_17_EAA2B0(var_CD4, CVar(var_CB4))
  loc_1C356CB:     Set var_D08 = Me.Txt
  loc_1C356D1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_D0C)
  loc_1C356EC:     Set var_D50 = Me.Txt
  loc_1C356F2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_D54)
  loc_1C3570D:     Set var_D98 = Me.Txt
  loc_1C35713:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_D9C)
  loc_1C3572B:     Set var_DE0 = Me.Txt
  loc_1C35731:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_DE4)
  loc_1C35740:     Proc_6_17_EAA2B0(var_E04, CVar(var_DE4))
  loc_1C35750:     Set var_E38 = Me.Txt
  loc_1C35756:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_E3C)
  loc_1C35765:     Proc_6_17_EAA2B0(var_E5C, CVar(var_E3C))
  loc_1C35775:     Set var_E90 = Me.Txt
  loc_1C3577B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_E94)
  loc_1C3578A:     Proc_6_17_EAA2B0(var_EB4, CVar(var_E94))
  loc_1C3579D:     Proc_6_7_F25D88(var_F84, Date)
  loc_1C357AD:     Set var_FB8 = Me.Txt
  loc_1C357B3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H43), var_FBC)
  loc_1C357D2:     Set var_1010 = Me.Txt
  loc_1C357D8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_1014)
  loc_1C35829:     Set var_10E8 = Me.Txt
  loc_1C3582F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_10EC)
  loc_1C3584E:     Set var_1140 = Me.Txt
  loc_1C35854:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H46), var_1144)
  loc_1C35875:     var_126 = Me.GuestImage.Visible
  loc_1C358B5:     Proc_6_17_EAA2B0(var_123C, IIf((var_126 = &HFF), CVar(Me.GuestImage.Tag), vbNullString))
  loc_1C35907:     Proc_6_17_EAA2B0(var_12D4, IIf((Me.IdProofImage.Visible = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_1C35959:     Proc_6_17_EAA2B0(var_1370, IIf((Me.GuestSign.Visible = &HFF), CVar(Me.GuestSign.Tag), vbNullString))
  loc_1C35969:     Set var_13A4 = Me.Txt
  loc_1C3596F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_13A8)
  loc_1C3597E:     Proc_6_17_EAA2B0(var_13C8, CVar(var_13A8))
  loc_1C3598E:     Set var_13FC = Me.Txt
  loc_1C35994:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_1400)
  loc_1C359A3:     Proc_6_17_EAA2B0(var_1420, CVar(var_1400))
  loc_1C359B3:     Set var_1494 = Me.Txt
  loc_1C359B9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4B), var_1498)
  loc_1C359D3:     Proc_6_17_EAA2B0(var_14C8, Trim(CVar(var_1498)))
  loc_1C359EF:     var_F8 = "Insert Into GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,FOM,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN,IdNo,ConPrefix,LogSite_Code,PicPath,IdPicPath,SignPicPath,IdProof,IdProofNo,mProf,FatherName) Values ('" & global_60
  loc_1C359F6:     var_14C = CVar(var_F8 & "',") 'String
  loc_1C35A00:     var_C4 = ","
  loc_1C35A10:     var_E4 = ","
  loc_1C35A20:     var_108 = ","
  loc_1C35A30:     var_13C = ","
  loc_1C35A5C:     var_3C8 = var_14C & var_118 & var_C4 & var_190 & var_E4 & var_21C & var_108 & var_26C & var_13C & var_300 & "," & var_340 & "," & var_3B4 
  loc_1C35AD0:     var_5AC = var_3C8 & "," & var_3FC & "," & var_444 & "," & var_48C & "," & CVar(var_57C.Tag) & "," & var_4FC & "," & var_544 & "," & var_59C 
  loc_1C35B49:     var_834 = var_5AC & "," & var_5F4 & "," & var_64C & "," & var_6A4 & "," & var_6FC & "," & var_754 & "," & var_7AC & "," & var_804 & "," 
  loc_1C35BC0:     var_AD4 = var_834 & var_85C & "," & var_8B4 & "," & var_90C & "," & var_964 & "," & var_9BC & "," & var_A14 & "," & var_A6C & "," & var_AC4 
  loc_1C35C33:     var_D2C = var_AD4 & "," & var_B1C & "," & var_B74 & "," & var_BCC & "," & var_C24 & "," & var_C7C & "," & var_CD4 & ",'" & CVar(var_D0C.Text) 
  loc_1C35C92:     var_EE4 = var_D2C & "','" & CVar(var_D54.Text) & "','" & CVar(var_D9C.Text) & "'," & var_E04 & "," & var_E5C & "," & var_EB4 & ",1,'" 
  loc_1C35CD2:     var_FEC = var_EE4 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_F84 & ",'A','" & CVar(Proc_6_38_E68A98(CVar(var_FBC))) 
  loc_1C35D05:     var_1174 = var_FEC & "','" & IIf((Trim(CVar(var_1014)) = "Yes"), "Yes", "No") & "','" & Trim(CVar(var_10EC)) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1144))) 
  loc_1C35D68:     var_1430 = var_1174 & "','" & CVar(MemVar_1F92078) & "'," & var_123C & "," & var_12D4 & "," & var_1370 & "," & var_13C8 & "," & var_1420 
  loc_1C35D8E:     var_14D8 = var_1430 & ",'" & CVar(global_60) & "'," & var_14C8 
  loc_1C35DA5:     unk_5A23A3.Execute CStr(var_14D8 & ")"), var_151C, -1
  loc_1C36004:   Else
  loc_1C3600D:     If (global_180 = &HFF) Then
  loc_1C3601B:       Set var_11C = Me.Txt
  loc_1C36021:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1C36029:       var_D4 = CVar(var_120) 'Address
  loc_1C36030:       var_F4 = Trim(var_D4)
  loc_1C3603B:       Proc_6_17_EAA2B0(var_118, var_F4)
  loc_1C3604B:       Set var_124 = Me.Txt
  loc_1C36051:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_1C36059:       var_180 = CVar(var_12C) 'Address
  loc_1C36060:       Proc_6_17_EAA2B0(var_190, var_180)
  loc_1C36070:       Set var_19C = Me.Txt
  loc_1C36076:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A0)
  loc_1C3607E:       var_1FC = CVar(var_1A0) 'Address
  loc_1C36085:       Proc_6_17_EAA2B0(var_21C, var_1FC)
  loc_1C36098:       Set var_1B4 = Me.Txt
  loc_1C3609E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8, var_194)
  loc_1C360A6:       var_1520 = var_1B8.Tag
  loc_1C360AE:       var_24C = CVar(var_194) 'String
  loc_1C360B4:       Proc_6_17_EAA2B0(var_26C, var_24C)
  loc_1C360C4:       Set var_2D4 = Me.Txt
  loc_1C360CA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2D8)
  loc_1C360D2:       var_2D0 = CVar(var_2D8) 'Address
  loc_1C360D9:       Proc_6_17_EAA2B0(var_300, var_2D0)
  loc_1C360E9:       Set var_2DC = Me.Txt
  loc_1C360EF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2E0)
  loc_1C360F7:       var_330 = CVar(var_2E0) 'Address
  loc_1C360FE:       Proc_6_17_EAA2B0(var_340, var_330)
  loc_1C3610E:       Set var_2E8 = Me.Txt
  loc_1C36114:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2EC)
  loc_1C3611C:       var_390 = CVar(var_2EC) 'Address
  loc_1C36123:       Proc_6_17_EAA2B0(var_3B4, var_390)
  loc_1C36133:       Set var_3B8 = Me.Txt
  loc_1C36139:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3DC)
  loc_1C36141:       var_3EC = CVar(var_3DC) 'Address
  loc_1C36148:       Proc_6_17_EAA2B0(var_3FC, var_3EC)
  loc_1C36158:       Set var_420 = Me.Txt
  loc_1C3615E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_424)
  loc_1C36166:       var_434 = CVar(var_424) 'Address
  loc_1C3616D:       Proc_6_17_EAA2B0(var_444, var_434)
  loc_1C36180:       Set var_468 = Me.Txt
  loc_1C36186:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_46C)
  loc_1C36196:       var_47C = CVar(var_46C.Tag) 'String
  loc_1C3619C:       Proc_6_17_EAA2B0(var_48C, var_47C)
  loc_1C361AF:       Set var_4B0 = Me.Txt
  loc_1C361B5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H49), var_4B4)
  loc_1C361BD:       var_1A8 = var_4B4.Text
  loc_1C361CA:       var_1528 = Val(var_1A8)
  loc_1C361D8:       Set var_4D8 = Me.Txt
  loc_1C361DE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4DC)
  loc_1C361E6:       var_4EC = CVar(var_4DC) 'Address
  loc_1C361ED:       Proc_6_7_F25D88(var_4FC, var_4EC)
  loc_1C361FD:       Set var_520 = Me.Txt
  loc_1C36203:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_524)
  loc_1C3620B:       var_534 = CVar(var_524) 'Address
  loc_1C36212:       Proc_6_7_F25D88(var_544, var_534)
  loc_1C36225:       Set var_578 = Me.Txt
  loc_1C3622B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_57C, var_1AC)
  loc_1C3623B:       var_58C = CVar(var_1AC) 'String
  loc_1C36241:       Proc_6_17_EAA2B0(var_59C, var_58C)
  loc_1C36251:       Set var_5D0 = Me.Txt
  loc_1C36257:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_5D4)
  loc_1C3625F:       var_5E4 = CVar(var_5D4) 'Address
  loc_1C36266:       Proc_6_17_EAA2B0(var_5F4, var_5E4)
  loc_1C36276:       Set var_628 = Me.Txt
  loc_1C3627C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_62C)
  loc_1C36284:       var_63C = CVar(var_62C) 'Address
  loc_1C3628B:       Proc_6_17_EAA2B0(var_64C, var_63C)
  loc_1C3629B:       Set var_680 = Me.Txt
  loc_1C362A1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_684)
  loc_1C362A9:       var_694 = CVar(var_684) 'Address
  loc_1C362B0:       Proc_6_17_EAA2B0(var_6A4, var_694)
  loc_1C362C0:       Set var_6D8 = Me.Txt
  loc_1C362C6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_6DC)
  loc_1C362CE:       var_6EC = CVar(var_6DC) 'Address
  loc_1C362D5:       Proc_6_17_EAA2B0(var_6FC, var_6EC)
  loc_1C362E5:       Set var_730 = Me.Txt
  loc_1C362EB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_734)
  loc_1C362F3:       var_744 = CVar(var_734) 'Address
  loc_1C362FA:       Proc_6_17_EAA2B0(var_754, var_744)
  loc_1C3630A:       Set var_788 = Me.Txt
  loc_1C36310:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_78C)
  loc_1C36318:       var_79C = CVar(var_78C) 'Address
  loc_1C3631F:       Proc_6_17_EAA2B0(var_7AC, var_79C)
  loc_1C3632F:       Set var_7E0 = Me.Txt
  loc_1C36335:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_7E4)
  loc_1C3633D:       var_7F4 = CVar(var_7E4) 'Address
  loc_1C36344:       Proc_6_17_EAA2B0(var_804, var_7F4)
  loc_1C36354:       Set var_838 = Me.Txt
  loc_1C3635A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_83C)
  loc_1C36362:       var_84C = CVar(var_83C) 'Address
  loc_1C36369:       Proc_6_17_EAA2B0(var_85C, var_84C)
  loc_1C36379:       Set var_890 = Me.Txt
  loc_1C3637F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_894)
  loc_1C36387:       var_8A4 = CVar(var_894) 'Address
  loc_1C3638E:       Proc_6_17_EAA2B0(var_8B4, var_8A4)
  loc_1C3639E:       Set var_8E8 = Me.Txt
  loc_1C363A4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_8EC)
  loc_1C363AC:       var_8FC = CVar(var_8EC) 'Address
  loc_1C363B3:       Proc_6_17_EAA2B0(var_90C, var_8FC)
  loc_1C363C3:       Set var_940 = Me.Txt
  loc_1C363C9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3D), var_944)
  loc_1C363D1:       var_954 = CVar(var_944) 'Address
  loc_1C363D8:       Proc_6_17_EAA2B0(var_964, var_954)
  loc_1C363E8:       Set var_998 = Me.Txt
  loc_1C363EE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3C), var_99C)
  loc_1C363F6:       var_9AC = CVar(var_99C) 'Address
  loc_1C363FD:       Proc_6_17_EAA2B0(var_9BC, var_9AC)
  loc_1C3640D:       Set var_9F0 = Me.Txt
  loc_1C36413:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3B), var_9F4)
  loc_1C3641B:       var_A04 = CVar(var_9F4) 'Address
  loc_1C36422:       Proc_6_17_EAA2B0(var_A14, var_A04)
  loc_1C36432:       Set var_A48 = Me.Txt
  loc_1C36438:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A4C)
  loc_1C36440:       var_A5C = CVar(var_A4C) 'Address
  loc_1C36447:       Proc_6_17_EAA2B0(var_A6C, var_A5C)
  loc_1C36457:       Set var_AA0 = Me.Txt
  loc_1C3645D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_AA4)
  loc_1C36465:       var_AB4 = CVar(var_AA4) 'Address
  loc_1C3646C:       Proc_6_17_EAA2B0(var_AC4, var_AB4)
  loc_1C3647C:       Set var_AF8 = Me.Txt
  loc_1C36482:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_AFC)
  loc_1C3648A:       var_B0C = CVar(var_AFC) 'Address
  loc_1C36491:       Proc_6_17_EAA2B0(var_B1C, var_B0C)
  loc_1C364A1:       Set var_B50 = Me.Txt
  loc_1C364A7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3F), var_B54)
  loc_1C364AF:       var_B64 = CVar(var_B54) 'Address
  loc_1C364B6:       Proc_6_17_EAA2B0(var_B74, var_B64)
  loc_1C364C6:       Set var_BA8 = Me.Txt
  loc_1C364CC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3E), var_BAC)
  loc_1C364D4:       var_BBC = CVar(var_BAC) 'Address
  loc_1C364DB:       Proc_6_17_EAA2B0(var_BCC, var_BBC)
  loc_1C364EB:       Set var_C00 = Me.Txt
  loc_1C364F1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_C04)
  loc_1C364F9:       var_C14 = CVar(var_C04) 'Address
  loc_1C36500:       Proc_6_17_EAA2B0(var_C24, var_C14)
  loc_1C36510:       Set var_C58 = Me.Txt
  loc_1C36516:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C5C)
  loc_1C3651E:       var_C6C = CVar(var_C5C) 'Address
  loc_1C36525:       Proc_6_17_EAA2B0(var_C7C, var_C6C)
  loc_1C36535:       Set var_CB0 = Me.Txt
  loc_1C3653B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CB4)
  loc_1C36543:       var_CC4 = CVar(var_CB4) 'Address
  loc_1C3654A:       Proc_6_17_EAA2B0(var_CD4, var_CC4)
  loc_1C3655D:       Set var_D08 = Me.Txt
  loc_1C36563:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_D0C)
  loc_1C3657E:       Set var_D50 = Me.Txt
  loc_1C36584:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_D54)
  loc_1C3659F:       Set var_D98 = Me.Txt
  loc_1C365A5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_D9C)
  loc_1C365BD:       Set var_DE0 = Me.Txt
  loc_1C365C3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_DE4)
  loc_1C365D2:       Proc_6_17_EAA2B0(var_E04, CVar(var_DE4))
  loc_1C365E2:       Set var_E38 = Me.Txt
  loc_1C365E8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_E3C)
  loc_1C365F7:       Proc_6_17_EAA2B0(var_E5C, CVar(var_E3C))
  loc_1C36607:       Set var_E90 = Me.Txt
  loc_1C3660D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_E94)
  loc_1C3661C:       Proc_6_17_EAA2B0(var_EB4, CVar(var_E94))
  loc_1C3662F:       Proc_6_7_F25D88(var_F84, Date)
  loc_1C3663F:       Set var_FB8 = Me.Txt
  loc_1C36645:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H43), var_FBC)
  loc_1C36664:       Set var_1010 = Me.Txt
  loc_1C3666A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_1014)
  loc_1C366BB:       Set var_10E8 = Me.Txt
  loc_1C366C1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_10EC)
  loc_1C366E0:       Set var_1140 = Me.Txt
  loc_1C366E6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H46), var_1144)
  loc_1C36707:       var_126 = Me.GuestImage.Visible
  loc_1C36747:       Proc_6_17_EAA2B0(var_123C, IIf((var_126 = &HFF), CVar(Me.GuestImage.Tag), vbNullString))
  loc_1C36799:       Proc_6_17_EAA2B0(var_12D4, IIf((Me.IdProofImage.Visible = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_1C367EB:       Proc_6_17_EAA2B0(var_1370, IIf((Me.GuestSign.Visible = &HFF), CVar(Me.GuestSign.Tag), vbNullString))
  loc_1C367FB:       Set var_13A4 = Me.Txt
  loc_1C36801:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_13A8)
  loc_1C36810:       Proc_6_17_EAA2B0(var_13C8, CVar(var_13A8))
  loc_1C36820:       Set var_13FC = Me.Txt
  loc_1C36826:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_1400)
  loc_1C36835:       Proc_6_17_EAA2B0(var_1420, CVar(var_1400))
  loc_1C36857:       Set var_1498 = Me.Txt
  loc_1C3685D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4B), var_1520)
  loc_1C36877:       Proc_6_17_EAA2B0(var_14D8, Trim(CVar(var_1520)))
  loc_1C36893:       var_F8 = "Insert Into GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,FOM,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN,IdNo,ConPrefix,LogSite_Code,PicPath,IdPicPath,SignPicPath,IdProof,IdProofNo,mProf,FatherName) Values ('" & global_60
  loc_1C368A4:       var_C4 = ","
  loc_1C368C4:       var_108 = ","
  loc_1C368D4:       var_13C = ","
  loc_1C368F0:       var_350 = CVar(var_F8 & "',") & var_118 & var_C4 & var_190 & "," & var_21C & var_108 & var_26C & var_13C & var_300 & "," & var_340 
  loc_1C3695D:       var_51C = var_350 & "," & var_3B4 & "," & var_3FC & "," & var_444 & "," & var_48C & "," & CVar(var_57C.Tag) & "," & var_4FC & "," 
  loc_1C369CD:       var_784 = var_51C & var_544 & "," & var_59C & "," & var_5F4 & "," & var_64C & "," & var_6A4 & "," & var_6FC & "," & var_754 & "," 
  loc_1C36A3D:       var_9EC = var_784 & var_7AC & "," & var_804 & "," & var_85C & "," & var_8B4 & "," & var_90C & "," & var_964 & "," & var_9BC & "," 
  loc_1C36AAD:       var_C54 = var_9EC & var_A14 & "," & var_A6C & "," & var_AC4 & "," & var_B1C & "," & var_B74 & "," & var_BCC & "," & var_C24 & "," 
  loc_1C36AFD:       var_DBC = var_C54 & var_C7C & "," & var_CD4 & ",'" & CVar(var_D0C.Text) & "','" & CVar(var_D54.Text) & "','" & CVar(var_D9C.Text) 
  loc_1C36B16:       var_E34 = var_DBC & "'," & var_E04 & "," 
  loc_1C36B26:       var_E8C = var_E34 & var_E5C & "," 
  loc_1C36B36:       var_EE4 = var_E8C & var_EB4 & ",1,'" 
  loc_1C36B6C:       var_FB4 = var_EE4 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_F84 & ",'A','" 
  loc_1C36B96:       var_111C = var_FB4 & CVar(Proc_6_38_E68A98(CVar(var_FBC))) & "','" & IIf((Trim(CVar(var_1014)) = "Yes"), "Yes", "No") & "','" & Trim(CVar(var_10EC)) 
  loc_1C36BC5:       var_11D4 = var_111C & "','" & CVar(Proc_6_38_E68A98(CVar(var_1144))) & "','" & CVar(MemVar_1F92078) & "'," 
  loc_1C36BD5:       var_126C = var_11D4 & var_123C & "," 
  loc_1C36BE5:       var_1304 = var_126C & var_12D4 & "," 
  loc_1C36C28:       var_14A8 = var_1304 & var_1370 & "," & var_13C8 & "," & var_1420 & ",'" & CVar(Me.lblmProf.Caption) & "'," 
  loc_1C36C46:       unk_5A23A3.Execute CStr(var_14A8 & var_14D8 & ")"), var_1540, -1
  loc_1C36EA6:     End If
  loc_1C36EA6:   End If
  loc_1C36EA9: Else
  loc_1C36EB4:   Set var_11C = Me.Txt
  loc_1C36EBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1C36EC2:   var_D4 = CVar(var_120) 'Address
  loc_1C36EC9:   var_F4 = Trim(var_D4)
  loc_1C36ED4:   Proc_6_17_EAA2B0(var_118, var_F4)
  loc_1C36EE4:   Set var_124 = Me.Txt
  loc_1C36EEA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_1C36EF9:   Proc_6_17_EAA2B0(var_180, CVar(var_12C))
  loc_1C36F09:   Set var_19C = Me.Txt
  loc_1C36F0F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A0)
  loc_1C36F1E:   Proc_6_17_EAA2B0(var_1FC, CVar(var_1A0))
  loc_1C36F31:   Set var_1B4 = Me.Txt
  loc_1C36F37:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8, var_F8)
  loc_1C36F3F:   var_1544 = var_1B8.Tag
  loc_1C36F4D:   Proc_6_17_EAA2B0(var_24C, CVar(var_F8))
  loc_1C36F5D:   Set var_2D4 = Me.Txt
  loc_1C36F63:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2D8)
  loc_1C36F72:   Proc_6_17_EAA2B0(var_2D0, CVar(var_2D8))
  loc_1C36F82:   Set var_2DC = Me.Txt
  loc_1C36F88:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2E0)
  loc_1C36F97:   Proc_6_17_EAA2B0(var_330, CVar(var_2E0))
  loc_1C36FA7:   Set var_2E8 = Me.Txt
  loc_1C36FAD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2EC)
  loc_1C36FB5:   var_370 = CVar(var_2EC) 'Address
  loc_1C36FBC:   Proc_6_17_EAA2B0(var_390, var_370)
  loc_1C36FCC:   Set var_3B8 = Me.Txt
  loc_1C36FD2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3DC)
  loc_1C36FE1:   Proc_6_17_EAA2B0(var_3EC, CVar(var_3DC))
  loc_1C36FF1:   Set var_420 = Me.Txt
  loc_1C36FF7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_424)
  loc_1C37006:   Proc_6_17_EAA2B0(var_434, CVar(var_424))
  loc_1C37019:   Set var_468 = Me.Txt
  loc_1C3701F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_46C)
  loc_1C37035:   Proc_6_17_EAA2B0(var_47C, CVar(var_46C.Tag))
  loc_1C37048:   Set var_4B0 = Me.Txt
  loc_1C3704E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H49), var_4B4)
  loc_1C37063:   var_1528 = Val(var_4B4.Text)
  loc_1C37071:   Set var_4D8 = Me.Txt
  loc_1C37077:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4DC)
  loc_1C37086:   Proc_6_7_F25D88(var_4EC, CVar(var_4DC))
  loc_1C37096:   Set var_520 = Me.Txt
  loc_1C3709C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_524)
  loc_1C370AB:   Proc_6_7_F25D88(var_534, CVar(var_524))
  loc_1C370BE:   Set var_578 = Me.Txt
  loc_1C370C4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_57C, var_1A8)
  loc_1C370DA:   Proc_6_17_EAA2B0(var_58C, CVar(var_1A8))
  loc_1C370EA:   Set var_5D0 = Me.Txt
  loc_1C370F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_5D4)
  loc_1C370F8:   var_5CC = CVar(var_5D4) 'Address
  loc_1C370FF:   Proc_6_17_EAA2B0(var_5E4, var_5CC)
  loc_1C3710F:   Set var_628 = Me.Txt
  loc_1C37115:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_62C)
  loc_1C37124:   Proc_6_17_EAA2B0(var_63C, CVar(var_62C))
  loc_1C37134:   Set var_680 = Me.Txt
  loc_1C3713A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_684)
  loc_1C37149:   Proc_6_17_EAA2B0(var_694, CVar(var_684))
  loc_1C37159:   Set var_6D8 = Me.Txt
  loc_1C3715F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_6DC)
  loc_1C3716E:   Proc_6_17_EAA2B0(var_6EC, CVar(var_6DC))
  loc_1C3717E:   Set var_730 = Me.Txt
  loc_1C37184:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_734)
  loc_1C37193:   Proc_6_17_EAA2B0(var_744, CVar(var_734))
  loc_1C371A3:   Set var_788 = Me.Txt
  loc_1C371A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_78C)
  loc_1C371B1:   var_784 = CVar(var_78C) 'Address
  loc_1C371B8:   Proc_6_17_EAA2B0(var_79C, var_784)
  loc_1C371C8:   Set var_7E0 = Me.Txt
  loc_1C371CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3C), var_7E4)
  loc_1C371DD:   Proc_6_17_EAA2B0(var_7F4, CVar(var_7E4))
  loc_1C371ED:   Set var_838 = Me.Txt
  loc_1C371F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_83C)
  loc_1C371FB:   var_834 = CVar(var_83C) 'Address
  loc_1C37202:   Proc_6_17_EAA2B0(var_84C, var_834)
  loc_1C37212:   Set var_890 = Me.Txt
  loc_1C37218:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_894)
  loc_1C37227:   Proc_6_17_EAA2B0(var_8A4, CVar(var_894))
  loc_1C37237:   Set var_8E8 = Me.Txt
  loc_1C3723D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_8EC)
  loc_1C3724C:   Proc_6_17_EAA2B0(var_8FC, CVar(var_8EC))
  loc_1C3725C:   Set var_940 = Me.Txt
  loc_1C37262:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_944)
  loc_1C37271:   Proc_6_17_EAA2B0(var_954, CVar(var_944))
  loc_1C37281:   Set var_998 = Me.Txt
  loc_1C37287:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3D), var_99C)
  loc_1C37296:   Proc_6_17_EAA2B0(var_9AC, CVar(var_99C))
  loc_1C372A6:   Set var_9F0 = Me.Txt
  loc_1C372AC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3B), var_9F4)
  loc_1C372B4:   var_9EC = CVar(var_9F4) 'Address
  loc_1C372BB:   Proc_6_17_EAA2B0(var_A04, var_9EC)
  loc_1C372CB:   Set var_A48 = Me.Txt
  loc_1C372D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A4C)
  loc_1C372E0:   Proc_6_17_EAA2B0(var_A5C, CVar(var_A4C))
  loc_1C372F0:   Set var_AA0 = Me.Txt
  loc_1C372F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_AA4)
  loc_1C37305:   Proc_6_17_EAA2B0(var_AB4, CVar(var_AA4))
  loc_1C37315:   Set var_AF8 = Me.Txt
  loc_1C3731B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_AFC)
  loc_1C3732A:   Proc_6_17_EAA2B0(var_B0C, CVar(var_AFC))
  loc_1C3733A:   Set var_B50 = Me.Txt
  loc_1C37340:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3F), var_B54)
  loc_1C3734F:   Proc_6_17_EAA2B0(var_B64, CVar(var_B54))
  loc_1C3735F:   Set var_BA8 = Me.Txt
  loc_1C37365:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3E), var_BAC)
  loc_1C3736D:   var_BA4 = CVar(var_BAC) 'Address
  loc_1C37374:   Proc_6_17_EAA2B0(var_BBC, var_BA4)
  loc_1C37384:   Set var_C00 = Me.Txt
  loc_1C3738A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_C04)
  loc_1C37399:   Proc_6_17_EAA2B0(var_C14, CVar(var_C04))
  loc_1C373A9:   Set var_C58 = Me.Txt
  loc_1C373AF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C5C)
  loc_1C373BE:   Proc_6_17_EAA2B0(var_C6C, CVar(var_C5C))
  loc_1C373CE:   Set var_CB0 = Me.Txt
  loc_1C373D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CB4)
  loc_1C373E3:   Proc_6_17_EAA2B0(var_CC4, CVar(var_CB4))
  loc_1C373F3:   Set var_D08 = Me.Txt
  loc_1C373F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_D0C)
  loc_1C37418:   Set var_D50 = Me.Txt
  loc_1C3741E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_D54)
  loc_1C3743D:   Set var_D98 = Me.Txt
  loc_1C37443:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_D9C)
  loc_1C37462:   Set var_DE0 = Me.Txt
  loc_1C37468:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H42), var_DE4)
  loc_1C37477:   Proc_6_17_EAA2B0(var_E34, CVar(var_DE4))
  loc_1C37487:   Set var_E38 = Me.Txt
  loc_1C3748D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H41), var_E3C)
  loc_1C3749C:   Proc_6_17_EAA2B0(var_E8C, CVar(var_E3C))
  loc_1C374AC:   Set var_E90 = Me.Txt
  loc_1C374B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_E94)
  loc_1C374C1:   Proc_6_17_EAA2B0(var_EE4, CVar(var_E94))
  loc_1C374D4:   Proc_6_7_F25D88(var_FB4, Date)
  loc_1C374E4:   Set var_FB8 = Me.Txt
  loc_1C374EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H43), var_FBC)
  loc_1C3750C:   Set var_1010 = Me.Txt
  loc_1C37512:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H44), var_1014)
  loc_1C37554:   Set var_10E8 = Me.Txt
  loc_1C3755A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H45), var_10EC)
  loc_1C37579:   Set var_1140 = Me.Txt
  loc_1C3757F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H46), var_1144)
  loc_1C375A0:   var_126 = Me.GuestImage.Visible
  loc_1C375E0:   Proc_6_17_EAA2B0(var_11D4, IIf((var_126 = &HFF), CVar(Me.GuestImage.Tag), vbNullString))
  loc_1C375F2:   var_15E = Me.IdProofImage.Visible
  loc_1C37632:   Proc_6_17_EAA2B0(var_126C, IIf((var_15E = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_1C37684:   Proc_6_17_EAA2B0(var_1304, IIf((Me.GuestSign.Visible = &HFF), CVar(Me.GuestSign.Tag), vbNullString))
  loc_1C37694:   Set var_13A4 = Me.Txt
  loc_1C3769A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4A), var_13A8)
  loc_1C376A9:   Proc_6_17_EAA2B0(var_1370, CVar(var_13A8))
  loc_1C376B9:   Set var_13FC = Me.Txt
  loc_1C376BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4C), var_1400)
  loc_1C376CE:   Proc_6_17_EAA2B0(var_13C8, CVar(var_1400))
  loc_1C376DE:   Set var_1494 = Me.Txt
  loc_1C376E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H4B), var_1498)
  loc_1C376F3:   Proc_6_17_EAA2B0(var_1420, CVar(var_1498))
  loc_1C37705:   var_C4 = "Update GuestProf Set Name="
  loc_1C37711:   var_E4 = ",Add1="
  loc_1C37716:   var_15C = var_C4 & var_118 & var_E4 
  loc_1C37721:   var_108 = ",Add2="
  loc_1C37731:   var_13C = ",City="
  loc_1C3773D:   var_26C = var_15C & var_180 & var_108 & var_1FC & var_13C & var_24C 
  loc_1C37756:   var_310 = var_26C & ",Type=" & var_2D0 & ",PhoneNo=" 
  loc_1C3778D:   var_444 = var_310 & var_330 & ",FaxNo=" & var_390 & ",MobileNo=" & var_3EC & ",EmailId=" & var_434 
  loc_1C377A6:   var_49C = var_444 & ",Nationality=" & var_47C & ",Age=" 
  loc_1C377C1:   var_4FC = var_49C & CVar(var_57C.Tag) & ",BirthDate=" & var_4EC 
  loc_1C377DA:   var_554 = var_4FC & ",Anniversary=" & var_534 & ",GuestStatus=" 
  loc_1C37811:   var_6A4 = var_554 & var_58C & ",SplInstr=" & var_5E4 & ",Comments1=" & var_63C & ",Comments2=" & var_694 
  loc_1C3782A:   var_70C = var_6A4 & ",Comments3=" & var_6EC & ",ConName=" 
  loc_1C3787A:   var_8C4 = var_70C & var_744 & ",T1Field1=" & var_79C & ",T1Field7=" & var_7F4 & ",T1Field2=" & var_84C & ",T1Field3=" & var_8A4 & ",T1Field4=" 
  loc_1C37881:   var_90C = var_8C4 & var_8FC 
  loc_1C3789A:   var_974 = var_90C & ",T1Field5=" & var_954 & ",T1Field6=" 
  loc_1C378D1:   var_AC4 = var_974 & var_9AC & ",T1Field8=" & var_A04 & ",T2Field1=" & var_A5C & ",T2Field2=" & var_AB4 
  loc_1C378EA:   var_B2C = var_AC4 & ",T2Field3=" & var_B0C & ",T2Field4=" 
  loc_1C37921:   var_C7C = var_B2C & var_B64 & ",T2Field5=" & var_BBC & ",T2Field6=" & var_C14 & ",T2Field7=" & var_C6C 
  loc_1C3793A:   var_CE4 = var_C7C & ",T2Field8=" & var_CC4 & ",CityName='" 
  loc_1C3795A:   var_DAC = var_CE4 & Trim(CVar(var_D0C)) & "',StateName='" & Trim(CVar(var_D54)) & "',CountryName='" 
  loc_1C37961:   var_DF4 = var_DAC & Trim(CVar(var_D9C)) 
  loc_1C37981:   var_EA4 = var_DF4 & "',MaritalStatus=" & var_E34 & ",Gender=" & var_E8C 
  loc_1C379C0:   var_F84 = var_EA4 & ",ZipCode=" & var_EE4 & ",Site_Code='" & CVar(MemVar_1F92070) & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" 
  loc_1C379EA:   var_10A4 = var_F84 & var_FB4 & ",U_AE='E',PanNo='" & CVar(Proc_6_38_E68A98(CVar(var_FBC))) & "',DiplomatYN='" & IIf((var_1014.Text = "Yes"), "Yes", "No") 
  loc_1C37A10:   var_1154 = var_10A4 & "',IdNo='" & CVar(Proc_6_38_E68A98(CVar(var_10EC))) & "',ConPrefix='" & CVar(Proc_6_38_E68A98(CVar(var_1144))) 
  loc_1C37A59:   var_13A0 = var_1154 & "',PicPath=" & var_11D4 & ",IdPicPath=" & var_126C & ",SignPicPath=" & var_1304 & ",IdProof=" & var_1370 & ",IdProofNo=" 
  loc_1C37A9D:   unk_5A23A3.Execute CStr(var_13A0 & var_13C8 & ",FatherName=" & var_1420 & " Where Code='" & CVar(global_60) & "'"), var_14A8, -1
  loc_1C37CF1: End If
  loc_1C37CFC: Set var_11C = Me.Txt
  loc_1C37D02: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_1C37D2B: If (Trim(CVar(var_120)) = "Foreign") Then
  loc_1C37D53:   For var_154C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_154C 'Integer
  loc_1C37D95:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1C37D9C:       Set var_11C = Me.TopCtrl1
  loc_1C37DA2:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(0)))
  loc_1C37DBB:       If (CStr(CVar(CLng(var_8E))) = "Add") Then
  loc_1C37DD5:         Call Proc_24_85_1016D1C(MemVar_1F92044, var_1A4, CVar(CLng(&H1E)), CVar(CLng(var_8E)))
  loc_1C37DDF:         var_D4 = CVar(CStr(var_1A4)) 'String
  loc_1C37DE7:         Set var_11C = Me.FGrid
  loc_1C37DED:         LateIdCallSt
  loc_1C37DFB:       End If
  loc_1C37DFF:       var_C4 = CVar(CLng(var_8E)) 'Long
  loc_1C37E10:       Set var_11C = Me.FGrid
  loc_1C37E16:       var_D4 = var_11C.TextMatrix)
  loc_1C37E21:       var_194 = CStr(var_D4)
  loc_1C37E29:       var_1528 = Val(var_194)
  loc_1C37E41:       Set var_120 = Me.FGrid
  loc_1C37E5A:       var_1AF4 = Val(CStr(var_120.TextMatrix)))
  loc_1C37E78:       var_118 = Me.FGrid.TextMatrix)
  loc_1C37E89:       Proc_6_17_EAA2B0(var_15C, CVar(CStr(var_118)), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_1AF4, CVar(CLng(&H1E)), CVar(CLng(var_8E)), var_1528)
  loc_1C37EA9:       var_1CC = Me.FGrid.TextMatrix)
  loc_1C37EBA:       Proc_6_17_EAA2B0(var_1FC, CVar(CStr(var_1CC)), CVar(CLng(1)), CVar(CLng(var_8E)), CVar(CLng(0)), var_C4)
  loc_1C37ED4:       Set var_19C = Me.FGrid
  loc_1C37EEB:       Proc_6_17_EAA2B0(var_26C, CVar(CStr(var_19C.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_8E)), var_11C)
  loc_1C37F05:       Set var_1A0 = Me.FGrid
  loc_1C37F1C:       Proc_6_17_EAA2B0(var_310, CVar(CStr(var_1A0.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_8E)))
  loc_1C37F36:       Set var_1B4 = Me.FGrid
  loc_1C37F4D:       Proc_6_17_EAA2B0(var_370, CVar(CStr(var_1B4.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)))
  loc_1C37F7E:       Proc_6_17_EAA2B0(var_3EC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_8E)))
  loc_1C37F98:       Set var_2D4 = Me.FGrid
  loc_1C37FAF:       Proc_6_17_EAA2B0(var_444, CVar(CStr(var_2D4.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_8E)))
  loc_1C37FE0:       Proc_6_17_EAA2B0(var_49C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(9)), CVar(CLng(var_8E)))
  loc_1C37FFA:       Set var_2DC = Me.FGrid
  loc_1C38011:       Proc_6_17_EAA2B0(var_4FC, CVar(CStr(var_2DC.TextMatrix))), CVar(CLng(&H13)), CVar(CLng(var_8E)))
  loc_1C3802B:       Set var_2E0 = Me.FGrid
  loc_1C38042:       Proc_6_7_F25D88(var_554, CVar(CStr(var_2E0.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8E)))
  loc_1C38073:       Proc_6_17_EAA2B0(var_5CC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_8E)))
  loc_1C380A4:       Proc_6_17_EAA2B0(var_63C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8E)))
  loc_1C380D5:       Proc_6_17_EAA2B0(var_6A4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_8E)))
  loc_1C38106:       Proc_6_7_F25D88(var_70C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_8E)))
  loc_1C38137:       Proc_6_17_EAA2B0(var_784, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(var_8E)))
  loc_1C3816A:       var_1AFC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C38199:       Proc_6_17_EAA2B0(var_834, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H12)), CVar(CLng(var_8E)), var_1AFC, CVar(CLng(&H11)))
  loc_1C381CA:       Proc_6_17_EAA2B0(var_8A4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_8E)), CVar(CLng(var_8E)))
  loc_1C381FB:       Proc_6_17_EAA2B0(var_90C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H15)), CVar(CLng(var_8E)))
  loc_1C3822C:       Proc_6_17_EAA2B0(var_974, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(var_8E)))
  loc_1C3825D:       Proc_6_7_F25D88(var_9EC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H17)), CVar(CLng(var_8E)))
  loc_1C3828E:       Proc_6_17_EAA2B0(var_A5C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_8E)))
  loc_1C382BF:       Proc_6_7_F25D88(var_AC4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H19)), CVar(CLng(var_8E)))
  loc_1C382F0:       Proc_6_17_EAA2B0(var_B2C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_8E)))
  loc_1C38321:       Proc_6_7_F25D88(var_BA4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_1C38352:       Proc_6_17_EAA2B0(var_C14, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_8E)))
  loc_1C38383:       Proc_6_17_EAA2B0(var_C7C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H14)), CVar(CLng(var_8E)))
  loc_1C383B4:       Proc_6_17_EAA2B0(var_CE4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_8E)))
  loc_1C383C7:       Proc_6_7_F25D88(var_DAC, Date, var_D4)
  loc_1C383D0:       Set var_628 = Me.TopCtrl1
  loc_1C383D6:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1C38424:       var_F8 = "Insert Into GuestProfFor (Code,Sno,SerialNo,Nationality,Name,Add1,Add2,Occu,ArrFrom,Dest,PurVisit,ModeTravel,DateArr,ArrPlace,AddIndia,PassNo,IssDate,IssPlace,Age,PropStay,ModeTravelUsed,VisaType,VisaNo,VisaIssDate,VisaIssPlace,ExpDate,WorkPermit,PassExpDate,VisaIssAuth,Extension,VisaDuration,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_60
  loc_1C3842B:       var_198 = var_F8 & "',"
  loc_1C38437:       var_1AC = var_198 & CStr(var_1528)
  loc_1C38451:       var_170 = CVar(var_1AC & "," & CStr(var_1AF4) & ",") 'String
  loc_1C38487:       var_320 = var_170 & var_15C & "," & var_1FC & "," & var_26C & "," & var_310 
  loc_1C384F7:       var_5E4 = var_320 & "," & var_370 & "," & var_3EC & "," & var_444 & "," & var_49C & "," & var_4FC & "," & var_554 & "," & var_5CC 
  loc_1C3856B:       var_8B4 = var_5E4 & "," & var_63C & "," & var_6A4 & "," & var_70C & "," & var_784 & "," & CVar(var_1AFC) & "," & var_834 & "," & var_8A4 
  loc_1C385DB:       var_BBC = var_8B4 & "," & var_90C & "," & var_974 & "," & var_9EC & "," & var_A5C & "," & var_AC4 & "," & var_B2C & "," & var_BA4 
  loc_1C3863A:       var_D74 = var_BBC & "," & var_C14 & "," & var_C7C & "," & var_CE4 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_1C3867B:       unk_5A23A3.Execute CStr(var_D74 & var_DAC & ",'" & IIf((CStr(var_DF4) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_EA4, -1
  loc_1C3881F:     End If
  loc_1C38823:     Set var_11C = Me.TopCtrl1
  loc_1C38829:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_62C)
  loc_1C38842:     If (CStr(var_1520) = "Add") Then
  loc_1C38859:       var_F8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1C3887C:       Proc_6_7_F25D88(var_D4, MemVar_1F920EC, CVar(var_F8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='CFORM' And VP.Date_From<="), var_15C)
  loc_1C38884:       var_118 = -1 & var_D4 
  loc_1C3889B:       unk_5A23A3.Execute CStr(var_118 & " Order By VP.Date_From DESC"), var_11C, var_320
  loc_1C388A6:       Set var_94 = var_11C
  loc_1C388D8:       If (var_94.RecordCount > 0) Then
  loc_1C388DF:         var_C4 = CVar(CLng(var_8E)) 'Long
  loc_1C388E7:         var_108 = CVar(CLng(&H1E)) 'Long
  loc_1C38909:         var_1528 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C3891B:         var_120 = var_94.Fields
  loc_1C38932:         Proc_6_7_F25D88(var_118, CVar(var_120.Item("Date_From")), var_1528)
  loc_1C38965:         var_1B0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_1528) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1C38987:         unk_5A23A3.Execute CStr(CVar(var_1B0 & MemVar_1F92078 & "') and V_Type='CFORM' and Date_From=") & var_118), var_170, -1
  loc_1C389B7:       End If
  loc_1C389B7:     End If
  loc_1C389BA:   Next var_154C 'Integer
  loc_1C389BF: End If
  loc_1C389C5: unk_5A23A3.CommitTrans
  loc_1C389CE: var_86 = CByte(0) 'Byte
  loc_1C389E3: If (OpenMode = 1) Then
  loc_1C38A0B:   For var_1B00 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_8E = var_1B00 'Integer
  loc_1C38A15:     var_C4 = CVar(CLng(var_8E)) 'Long
  loc_1C38A1D:     var_108 = CVar(CLng(5)) 'Long
  loc_1C38A5D:     If (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) = CVar(global_60)) Then
  loc_1C38A7C:       Set var_11C = Me.Txt
  loc_1C38A82:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, CVar(CLng(1)), CVar(CLng(var_8E)))
  loc_1C38A9A:       var_118 = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C38AA8:       LateIdCallSt
  loc_1C38ADC:       Set var_11C = Me.Txt
  loc_1C38AE2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, CVar(CLng(2)), CVar(CLng(var_8E)), Me.FGrid2)
  loc_1C38AFA:       var_118 = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C38B08:       LateIdCallSt
  loc_1C38B3C:       Set var_11C = Me.Txt
  loc_1C38B42:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, CVar(CLng(3)), CVar(CLng(var_8E)), Me.FGrid2)
  loc_1C38B68:       LateIdCallSt
  loc_1C38B9C:       Set var_11C = Me.Txt
  loc_1C38BA2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120, CVar(CLng(4)), CVar(CLng(var_8E)), Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C38BBA:       var_118 = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C38BC2:       Set var_124 = Me.FGrid2
  loc_1C38BC8:       LateIdCallSt
  loc_1C38BE0:       Exit For
  loc_1C38BE3:     End If
  loc_1C38BE6:   Next var_1B00 'Integer
  loc_1C38BEB:   ' Referenced from: 1C38BE0
  loc_1C38C09:   If (CLng(var_8E) = CLng(Me.FGrid2.Rows)) Then
  loc_1C38C4A:     var_180 = (Trim(CVar(Me.lblmProf)) = vbNullString) Or (Trim(CVar(Me.lblmProf)) = CVar(global_60))
  loc_1C38C5B:     If CBool(var_180) Then
  loc_1C38C71:       Me.FGrid2.Col = 0
  loc_1C38C8C:       Me.FGrid2.Row = 1
  loc_1C38CA4:       Me.FGrid2.CellFontName = "WINGDINGS"
  loc_1C38CBE:       Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_1C38CDF:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38CE7:       var_108 = CVar(CLng(0)) 'Long
  loc_1C38CEC:       var_1EC = "ü"
  loc_1C38CF6:       Set var_120 = Me.FGrid2
  loc_1C38CFC:       LateIdCallSt
  loc_1C38D27:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38D3F:       Set var_11C = Me.Txt
  loc_1C38D45:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, CVar(CLng(1)), CVar(CDbl(&HE)))
  loc_1C38D5D:       var_14C = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C38D6B:       LateIdCallSt
  loc_1C38DA0:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38DB8:       Set var_11C = Me.Txt
  loc_1C38DBE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, CVar(CLng(2)), CVar(CDbl(&HE)), Me.FGrid2)
  loc_1C38DE4:       LateIdCallSt
  loc_1C38E19:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38E31:       Set var_11C = Me.Txt
  loc_1C38E37:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, CVar(CLng(3)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C38E5D:       LateIdCallSt
  loc_1C38E92:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38EAA:       Set var_11C = Me.Txt
  loc_1C38EB0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120, CVar(CLng(4)), CVar(CDbl(&HE)), Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C38EC8:       var_14C = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C38ED0:       Set var_12C = Me.FGrid2
  loc_1C38ED6:       LateIdCallSt
  loc_1C38F0B:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38F13:       var_108 = CVar(CLng(5)) 'Long
  loc_1C38F26:       Set var_120 = Me.FGrid2
  loc_1C38F2C:       LateIdCallSt
  loc_1C38F57:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38F5F:       var_108 = CVar(CLng(6)) 'Long
  loc_1C38F72:       Set var_120 = Me.FGrid2
  loc_1C38F78:       LateIdCallSt
  loc_1C38F9A:       Me.lblmProf.Caption = global_60
  loc_1C38FA5:     Else
  loc_1C38FA5:       var_C4 = vbNullString
  loc_1C38FAF:       Set var_11C = Me.FGrid2
  loc_1C38FD9:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C38FE1:       var_108 = CVar(CLng(0)) 'Long
  loc_1C38FF0:       Set var_120 = Me.FGrid2
  loc_1C38FF6:       LateIdCallSt
  loc_1C39021:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C39039:       Set var_11C = Me.Txt
  loc_1C3903F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, CVar(CLng(1)), var_C4, var_120, vbNullString, CVar(CLng(1)))
  loc_1C39065:       LateIdCallSt
  loc_1C3909A:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C390B2:       Set var_11C = Me.Txt
  loc_1C390B8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, CVar(CLng(2)), var_C4, Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))), var_C4)
  loc_1C390DE:       LateIdCallSt
  loc_1C39113:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3912B:       Set var_11C = Me.Txt
  loc_1C39131:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, CVar(CLng(3)), var_C4, Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C39157:       LateIdCallSt
  loc_1C3918C:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C391A4:       Set var_11C = Me.Txt
  loc_1C391AA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120, CVar(CLng(4)), var_C4, Me.FGrid2, CVar(CStr(Trim(CVar(var_120)))))
  loc_1C391C2:       var_14C = CVar(CStr(Trim(CVar(var_120)))) 'String
  loc_1C391CA:       Set var_12C = Me.FGrid2
  loc_1C391D0:       LateIdCallSt
  loc_1C39205:       var_C4 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_1C3920D:       var_108 = CVar(CLng(5)) 'Long
  loc_1C39220:       Set var_120 = Me.FGrid2
  loc_1C39226:       LateIdCallSt
  loc_1C3923C:       Set var_11C = Me.FGrid2
  loc_1C39251:       var_C4 = CVar((CLng(var_11C.Rows) - 1)) 'Long
  loc_1C39259:       var_108 = CVar(CLng(6)) 'Long
  loc_1C39273:       var_F4 = CVar(Me.lblmProf.Caption) 'String
  loc_1C3927B:       Set var_124 = Me.FGrid2
  loc_1C39281:       LateIdCallSt
  loc_1C39299:     End If
  loc_1C39299:   End If
  loc_1C3929E:   global_180 = &HFF
  loc_1C392A1: End If
  loc_1C392AD: If (global_164 = 1) Then
  loc_1C392B0: End If
  loc_1C392BB: Me.Requery -1
  loc_1C392E8: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_1C39307: If (GuestFolio <> vbNullString) Then
  loc_1C39317:   var_C4 = "Select * from GuestFolio Where Docid="
  loc_1C3932D:   Proc_6_17_EAA2B0(var_F4, CVar(GuestFolio), var_C4, var_14C, -1, var_11C, var_C4, global_180)
  loc_1C39343:   unk_5A23A3.Execute CStr(var_124 & var_F4), var_F4, var_108
  loc_1C39376:   If (var_11C.RecordCount > 0) Then
  loc_1C393B4:     Set var_120 = Me.Txt
  loc_1C393BA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_124, "Update GuestFolio Set GuestProf='" & Me.lblmProf.Caption & "',Name='", var_180, -1, var_2E0)
  loc_1C393C9:     var_F4 = Trim(CVar(var_124))
  loc_1C393E1:     var_1BC = global_60 & Proc_6_38_E68A98(var_F4, var_C4, var_120) & "',city='"
  loc_1C393F2:     Set var_12C = Me.Txt
  loc_1C393F8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_19C, var_1B0)
  loc_1C39400:     var_1BC = var_19C.Tag
  loc_1C39429:     Set var_1A0 = Me.Txt
  loc_1C3942F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_1C39459:     Set var_1B8 = Me.Txt
  loc_1C3945F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2D4)
  loc_1C39474:     var_1548 = var_C4 & Proc_6_38_E68A98(CVar(var_1B0), var_108) & "',Add1='" & Proc_6_38_E68A98(CVar(var_1B4)) & "',add2='" & Proc_6_38_E68A98(CVar(var_2D4))
  loc_1C3948C:     Set var_2D8 = Me.Txt
  loc_1C39492:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_2DC)
  loc_1C394D4:     unk_5A23A3.Execute var_1548 & "',Nationality='" & Proc_6_38_E68A98(CVar(var_2DC.Tag)) & "' where Docid='" & GuestFolio & "'", , 
  loc_1C39559:     var_118 = CVar("Update RoomOcc  Set GuestProf='" & Me.lblmProf.Caption & "',U_EntDt=") 'String
  loc_1C39561:     var_D4 = CVar(Proc_6_15_EF2C1C(var_118, var_1CC)) 'String
  loc_1C39567:     Proc_6_7_F25D88(var_F4, var_D4)
  loc_1C3956F:     var_14C = -1 & var_F4 
  loc_1C395A1:     unk_5A23A3.Execute CStr(CVar(var_1B4) & ",U_AE='E' where Docid='" & CVar(GuestFolio) & "'"), var_120, 
  loc_1C39617:     unk_5A23A3.Execute "Update PayCharge  Set GuestProf='" & Me.lblmProf.Caption & "' where FolioNoDocid='" & GuestFolio & "'", var_D4, -1
  loc_1C39635:   End If
  loc_1C39635: End If
  loc_1C3963A: Set var_8C = Nothing
  loc_1C39642: Set var_94 = Nothing
  loc_1C39649: Set var_11C = Me.TopCtrl1
  loc_1C3964F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_120)
  loc_1C39668: If (CStr() = "Add") Then
  loc_1C3966B:   Call TopCtrl1_UnknownEvent_A()
  loc_1C39670:   Exit Sub
  loc_1C39671: End If
  loc_1C39686: var_F8 = "INI"
  loc_1C39694: Call Proc_24_89_1020630(Proc_5_1_100CB50(var_F8, Me))
  loc_1C3969F: Call MoveRec()
  loc_1C396A9: Set var_AC = Nothing
  loc_1C396AC: Exit Sub
  loc_1C396AD: ' Referenced from: 1C33D40
  loc_1C396B6: If (CInt(var_86) = 1) Then
  loc_1C396BF:   unk_5A23A3.RollbackTrans
  loc_1C396C4: End If
  loc_1C396CC: Set var_11C = Err()
  loc_1C396D2: Call 0.Method_arg_2C (var_F8)
  loc_1C396EB: MsgBox(CVar(var_F8), &H10, var_F4, var_118, CVar(var_1B4))
  loc_1C396FE: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) '14DE8F8
  'Data Table: 5A2370
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As Double
  Dim var_A8 As String
  Dim var_A4 As TextBox
  Dim var_94 As String
  Dim var_8C As Frame
  loc_14DDB1B: var_86 = Index
  loc_14DDB26: If (var_86 = CInt(1)) Then
  loc_14DDB2C:   Call Proc_24_79_E404F4(var_88)
  loc_14DDB37:   global_68 = var_88
  loc_14DDB48:   Set var_8C = Me.Txt
  loc_14DDB4E:   Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, var_94)
  loc_14DDB56:   global_68 = var_90.Text
  loc_14DDB7C:   If (CDbl(global_68) > CDbl(Val(var_94))) Then
  loc_14DDB8D:     Set var_8C = Me.Txt
  loc_14DDB93:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, var_94)
  loc_14DDB9B:     var_9C = var_90.Text
  loc_14DDBAE:     var_A8 = CStr((Val(var_94) + CDbl(1)))
  loc_14DDBBC:     Set var_A0 = Me.Txt
  loc_14DDBC2:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_A4)
  loc_14DDBCA:     var_A4.Text = var_A8
  loc_14DDBEF:     Set var_8C = Me.Txt
  loc_14DDBF5:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DDC0A:     var_9C = Val(var_90.Text)
  loc_14DDC23:     If (CDbl(global_68) = CDbl(var_9C)) Then
  loc_14DDC33:       Set var_8C = Me.Cmd
  loc_14DDC39:       Call 0.Method_Cmd_Click0 (CInt(1), var_90, 0)
  loc_14DDC41:       var_90.Enabled = var_9C
  loc_14DDC4D:     End If
  loc_14DDC5A:     Set var_8C = Me.Cmd
  loc_14DDC60:     Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DDC68:     var_90.Enabled = True
  loc_14DDC74:   End If
  loc_14DDC82:   Set var_8C = Me.Txt
  loc_14DDC88:   Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DDC90:   var_94 = var_90.Text
  loc_14DDCA1:   Call Proc_24_78_13A8230(CInt(Val(var_94)))
  loc_14DDCB3: Else
  loc_14DDCBB:   If (var_86 = CInt(0)) Then
  loc_14DDCC1:     Call Proc_24_79_E404F4(var_88)
  loc_14DDCCC:     global_68 = var_88
  loc_14DDCDD:     Set var_8C = Me.Txt
  loc_14DDCE3:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, var_94)
  loc_14DDCEB:     global_68 = var_90.Text
  loc_14DDCFE:     var_A8 = CStr((Val(var_94) - CDbl(1)))
  loc_14DDD0C:     Set var_A0 = Me.Txt
  loc_14DDD12:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_A4)
  loc_14DDD1A:     var_A4.Text = var_A8
  loc_14DDD3F:     Set var_8C = Me.Txt
  loc_14DDD45:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DDD69:     If (CDbl(Val(var_90.Text)) = CDbl(1)) Then
  loc_14DDD79:       Set var_8C = Me.Cmd
  loc_14DDD7F:       Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DDD87:       var_90.Enabled = False
  loc_14DDD93:     End If
  loc_14DDDA1:     Set var_8C = Me.Txt
  loc_14DDDA7:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DDDC0:     Call Proc_24_78_13A8230(CInt(Val(var_90.Text)))
  loc_14DDDDD:     Set var_8C = Me.Txt
  loc_14DDDE3:     Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DDE0B:     If (CDbl(Val(var_90.Text)) <= CDbl(global_68)) Then
  loc_14DDE1B:       Set var_8C = Me.Cmd
  loc_14DDE21:       Call 0.Method_Cmd_Click0 (CInt(1), var_90)
  loc_14DDE29:       var_90.Enabled = True
  loc_14DDE35:     End If
  loc_14DDE38:   Else
  loc_14DDE40:     If (var_86 = CInt(6)) Then
  loc_14DDE49:       global_72 = "Add"
  loc_14DDE50:       Call Proc_24_79_E404F4(var_88)
  loc_14DDE5D:       var_94 = CStr((var_88 + 1))
  loc_14DDE6B:       Set var_8C = Me.Txt
  loc_14DDE71:       Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DDE79:       var_90.Text = var_90.Text
  loc_14DDE8D:       Call Proc_24_77_11BBF40(&HFF)
  loc_14DDE92:       Call Proc_24_76_11D7E40(var_86)
  loc_14DDEA4:       Set var_8C = Me.Cmd
  loc_14DDEAA:       Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DDEB2:       var_90.Enabled = False
  loc_14DDECB:       Set var_8C = Me.Cmd
  loc_14DDED1:       Call 0.Method_Cmd_Click0 (CInt(1), var_90)
  loc_14DDED9:       var_90.Enabled = False
  loc_14DDEF2:       Set var_8C = Me.Cmd
  loc_14DDEF8:       Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DDF00:       var_90.Enabled = False
  loc_14DDF19:       Set var_8C = Me.Cmd
  loc_14DDF1F:       Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14DDF27:       var_90.Enabled = False
  loc_14DDF40:       Set var_8C = Me.Cmd
  loc_14DDF46:       Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DDF4E:       var_90.Enabled = False
  loc_14DDF67:       Set var_8C = Me.Cmd
  loc_14DDF6D:       Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14DDF75:       var_90.Enabled = True
  loc_14DDF8E:       Set var_8C = Me.Cmd
  loc_14DDF94:       Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14DDF9C:       var_90.Enabled = True
  loc_14DDFB5:       Set var_8C = Me.Cmd
  loc_14DDFBB:       Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14DDFC3:       var_90.Enabled = False
  loc_14DDFDC:       Set var_8C = Me.Cmd
  loc_14DDFE2:       Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14DDFEA:       var_90.Enabled = False
  loc_14DE001:       Set var_8C = Me.Txt
  loc_14DE007:       Call 0.Method_Cmd_Click0 (CInt(&H24))
  loc_14DE00F:       var_90.SetFocus
  loc_14DE01E:     Else
  loc_14DE026:       If (var_86 = CInt(7)) Then
  loc_14DE02F:         global_72 = "Edit"
  loc_14DE038:         Call Proc_24_77_11BBF40(&HFF)
  loc_14DE04B:         Set var_8C = Me.Txt
  loc_14DE051:         Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DE075:         If (CDbl(Val(var_90.Text)) = CDbl(1)) Then
  loc_14DE085:           Set var_8C = Me.Txt
  loc_14DE08B:           Call 0.Method_Cmd_Click0 (CInt(&H24), var_90)
  loc_14DE093:           var_90.Enabled = False
  loc_14DE0AC:           Set var_8C = Me.Txt
  loc_14DE0B2:           Call 0.Method_Cmd_Click0 (CInt(&H27), var_90)
  loc_14DE0BA:           var_90.Enabled = False
  loc_14DE0D3:           Set var_8C = Me.Txt
  loc_14DE0D9:           Call 0.Method_Cmd_Click0 (CInt(&H26), var_90)
  loc_14DE0E1:           var_90.Enabled = False
  loc_14DE0FA:           Set var_8C = Me.Txt
  loc_14DE100:           Call 0.Method_Cmd_Click0 (CInt(&H25), var_90)
  loc_14DE108:           var_90.Enabled = False
  loc_14DE11F:           Set var_8C = Me.Txt
  loc_14DE125:           Call 0.Method_Cmd_Click0 (CInt(&H29), var_90)
  loc_14DE12D:           var_90.SetFocus
  loc_14DE13C:         Else
  loc_14DE147:           Set var_8C = Me.Txt
  loc_14DE14D:           Call 0.Method_Cmd_Click0 (CInt(&H24), var_90)
  loc_14DE155:           var_90.SetFocus
  loc_14DE161:         End If
  loc_14DE16E:         Set var_8C = Me.Cmd
  loc_14DE174:         Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_14DE17C:         var_90.Enabled = False
  loc_14DE195:         Set var_8C = Me.Cmd
  loc_14DE19B:         Call 0.Method_Cmd_Click0 (CInt(1), var_90)
  loc_14DE1A3:         var_90.Enabled = False
  loc_14DE1BC:         Set var_8C = Me.Cmd
  loc_14DE1C2:         Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DE1CA:         var_90.Enabled = False
  loc_14DE1E3:         Set var_8C = Me.Cmd
  loc_14DE1E9:         Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14DE1F1:         var_90.Enabled = False
  loc_14DE20A:         Set var_8C = Me.Cmd
  loc_14DE210:         Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DE218:         var_90.Enabled = False
  loc_14DE231:         Set var_8C = Me.Cmd
  loc_14DE237:         Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14DE23F:         var_90.Enabled = True
  loc_14DE258:         Set var_8C = Me.Cmd
  loc_14DE25E:         Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14DE266:         var_90.Enabled = True
  loc_14DE27F:         Set var_8C = Me.Cmd
  loc_14DE285:         Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14DE28D:         var_90.Enabled = False
  loc_14DE2A6:         Set var_8C = Me.Cmd
  loc_14DE2AC:         Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14DE2B4:         var_90.Enabled = False
  loc_14DE2C3:       Else
  loc_14DE2CB:         If (var_86 = CInt(2)) Then
  loc_14DE2D2:           Set var_8C = Me.TopCtrl1
  loc_14DE2D8:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_90)
  loc_14DE2E0:           var_94 = CStr()
  loc_14DE2F1:           If (var_94 = "Add") Then
  loc_14DE2F4:             Call Proc_24_87_FBED68()
  loc_14DE2F9:           End If
  loc_14DE2FC:         Else
  loc_14DE304:           If (var_86 = CInt(3)) Then
  loc_14DE312:             Set var_8C = Me.Txt
  loc_14DE318:             Call 0.Method_Cmd_Click0 (CInt(&H25))
  loc_14DE341:             If (Trim(CVar(var_90)) = vbNullString) Then
  loc_14DE34A:               Call 0.Method_arg_50 (var_94)
  loc_14DE36B:               MsgBox("Nationality Not Defined!", 0, CVar(var_94), var_E8, var_118)
  loc_14DE37B:               Exit Sub
  loc_14DE37C:             End If
  loc_14DE38A:             Set var_8C = Me.Txt
  loc_14DE390:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DE3B5:             Set var_A0 = Me.Txt
  loc_14DE3BB:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_A4)
  loc_14DE3C3:             var_A4.Text = CStr(Val(var_90.Text))
  loc_14DE3DD:             Call Proc_24_79_E404F4(var_88)
  loc_14DE3F0:             Set var_8C = Me.Txt
  loc_14DE3F6:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DE41B:             If (CDbl(Val(var_90.Text)) > CDbl(var_88)) Then
  loc_14DE421:               Call Proc_24_79_E404F4(var_88)
  loc_14DE42E:               var_94 = CStr((var_88 + 1))
  loc_14DE43C:               Set var_8C = Me.Txt
  loc_14DE442:               Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DE44A:               var_90.Text = var_90.Text
  loc_14DE45C:               Call Proc_24_79_E404F4(var_88)
  loc_14DE46E:               Set var_8C = Me.FGrid
  loc_14DE485:               Call Proc_24_79_E404F4(var_88, FGrid.DispID_10000)
  loc_14DE49D:               Set var_8C = Me.Txt
  loc_14DE4A3:               Call 0.Method_Cmd_Click0 (CInt(&H47), var_90, CStr(var_88))
  loc_14DE4AB:               var_90.Text = CVar(CStr(var_88))
  loc_14DE4BA:             End If
  loc_14DE4C8:             Set var_8C = Me.Txt
  loc_14DE4CE:             Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DE4E7:             Call Proc_24_83_13DD250(CInt(Val(var_90.Text)))
  loc_14DE4F6:             Call Proc_24_80_F9C5B4(var_90)
  loc_14DE500:             Call Proc_24_77_11BBF40(0)
  loc_14DE512:             Set var_8C = Me.Cmd
  loc_14DE518:             Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DE520:             var_90.Enabled = True
  loc_14DE539:             Set var_8C = Me.Cmd
  loc_14DE53F:             Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14DE547:             var_90.Enabled = True
  loc_14DE560:             Set var_8C = Me.Cmd
  loc_14DE566:             Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DE56E:             var_90.Enabled = True
  loc_14DE587:             Set var_8C = Me.Cmd
  loc_14DE58D:             Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14DE595:             var_90.Enabled = False
  loc_14DE5AE:             Set var_8C = Me.Cmd
  loc_14DE5B4:             Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14DE5BC:             var_90.Enabled = False
  loc_14DE5D5:             Set var_8C = Me.Cmd
  loc_14DE5DB:             Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14DE5E3:             var_90.Enabled = True
  loc_14DE5FC:             Set var_8C = Me.Cmd
  loc_14DE602:             Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14DE60A:             var_90.Enabled = False
  loc_14DE61A:             Set var_8C = Me.TopCtrl1
  loc_14DE620:             Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14DE639:             If (CStr() = "Edit") Then
  loc_14DE649:               Set var_8C = Me.Cmd
  loc_14DE64F:               Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DE657:               var_90.Enabled = False
  loc_14DE670:               Set var_8C = Me.Cmd
  loc_14DE676:               Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DE67E:               var_90.Enabled = False
  loc_14DE68A:             End If
  loc_14DE690:             global_72 = "Browse"
  loc_14DE697:           Else
  loc_14DE69F:             If (var_86 = CInt(8)) Then
  loc_14DE6AD:               If (global_72 = "Add") Then
  loc_14DE6B3:                 Call Proc_24_79_E404F4(var_88)
  loc_14DE6CB:                 Set var_8C = Me.Txt
  loc_14DE6D1:                 Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DE6D9:                 var_90.Text = CStr(var_88)
  loc_14DE6E8:               End If
  loc_14DE6F6:               Set var_8C = Me.Txt
  loc_14DE6FC:               Call 0.Method_Cmd_Click0 (CInt(&H47), var_90)
  loc_14DE715:               Call Proc_24_78_13A8230(CInt(Val(var_90.Text)))
  loc_14DE724:               Call Proc_24_80_F9C5B4()
  loc_14DE72E:               Call Proc_24_77_11BBF40(0)
  loc_14DE740:               Set var_8C = Me.Cmd
  loc_14DE746:               Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DE74E:               var_90.Enabled = True
  loc_14DE767:               Set var_8C = Me.Cmd
  loc_14DE76D:               Call 0.Method_Cmd_Click0 (CInt(7), var_90)
  loc_14DE775:               var_90.Enabled = True
  loc_14DE78E:               Set var_8C = Me.Cmd
  loc_14DE794:               Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DE79C:               var_90.Enabled = True
  loc_14DE7B5:               Set var_8C = Me.Cmd
  loc_14DE7BB:               Call 0.Method_Cmd_Click0 (CInt(3), var_90)
  loc_14DE7C3:               var_90.Enabled = False
  loc_14DE7DC:               Set var_8C = Me.Cmd
  loc_14DE7E2:               Call 0.Method_Cmd_Click0 (CInt(8), var_90)
  loc_14DE7EA:               var_90.Enabled = False
  loc_14DE803:               Set var_8C = Me.Cmd
  loc_14DE809:               Call 0.Method_Cmd_Click0 (CInt(4), var_90)
  loc_14DE811:               var_90.Enabled = True
  loc_14DE82A:               Set var_8C = Me.Cmd
  loc_14DE830:               Call 0.Method_Cmd_Click0 (CInt(5), var_90)
  loc_14DE838:               var_90.Enabled = False
  loc_14DE848:               Set var_8C = Me.TopCtrl1
  loc_14DE84E:               Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14DE867:               If (CStr() = "Edit") Then
  loc_14DE877:                 Set var_8C = Me.Cmd
  loc_14DE87D:                 Call 0.Method_Cmd_Click0 (CInt(6), var_90)
  loc_14DE885:                 var_90.Enabled = False
  loc_14DE89E:                 Set var_8C = Me.Cmd
  loc_14DE8A4:                 Call 0.Method_Cmd_Click0 (CInt(2), var_90)
  loc_14DE8AC:                 var_90.Enabled = False
  loc_14DE8B8:               End If
  loc_14DE8BE:               global_72 = "Browse"
  loc_14DE8C5:             Else
  loc_14DE8CD:               If (var_86 = CInt(4)) Then
  loc_14DE8DC:                 Me.FrameFor.Visible = False
  loc_14DE8E7:               Else
  loc_14DE8EF:                 If (var_86 = CInt(5)) Then
  loc_14DE8F2:                   Call Proc_24_92_16CC000()
  loc_14DE8F7:                 End If
  loc_14DE8F7:               End If
  loc_14DE8F7:             End If
  loc_14DE8F7:           End If
  loc_14DE8F7:         End If
  loc_14DE8F7:       End If
  loc_14DE8F7:     End If
  loc_14DE8F7:   End If
  loc_14DE8F7: End If
  loc_14DE8F7: Exit Sub
End Sub

Private Sub Remove_Click() '11052E0
  'Data Table: 5A2370
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_1104FA8: On Error Goto loc_1105280
  loc_1104FAF: Set var_8C = Me.TopCtrl1
  loc_1104FB5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1104FCE: If (CStr() = "Browse") Then
  loc_1104FE4:   var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1104FEC:   var_D0 = CVar(CLng(0)) 'Long
  loc_1105006:   var_A0 = CStr(Me.FGrid2.TextMatrix))
  loc_110501F:   If (var_A0 = "ü") Then
  loc_110502D:     var_F4 = "Info"
  loc_110504A:     var_88 = CStr(MsgBox("Can't Remove Leader", &H40, var_F4, var_104, var_114))
  loc_1105058:     Exit Sub
  loc_1105059:   End If
  loc_1105078:   If (CLng(Me.FGrid2.Rows) <> 2) Then
  loc_110508E:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1105097:     Set var_E4 = Me.FGrid2
  loc_11050B2:   Else
  loc_11050C5:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_11050CD:     var_D0 = CVar(CLng(0)) 'Long
  loc_11050D2:     var_124 = vbNullString
  loc_11050DC:     Set var_E4 = Me.FGrid2
  loc_11050E2:     LateIdCallSt
  loc_1105107:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_110510F:     var_D0 = CVar(CLng(1)) 'Long
  loc_1105114:     var_124 = vbNullString
  loc_110511E:     Set var_E4 = Me.FGrid2
  loc_1105124:     LateIdCallSt
  loc_1105149:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1105151:     var_D0 = CVar(CLng(2)) 'Long
  loc_1105156:     var_124 = vbNullString
  loc_1105160:     Set var_E4 = Me.FGrid2
  loc_1105166:     LateIdCallSt
  loc_110518B:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1105193:     var_D0 = CVar(CLng(3)) 'Long
  loc_1105198:     var_124 = vbNullString
  loc_11051A2:     Set var_E4 = Me.FGrid2
  loc_11051A8:     LateIdCallSt
  loc_11051CD:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_11051D5:     var_D0 = CVar(CLng(4)) 'Long
  loc_11051DA:     var_124 = vbNullString
  loc_11051E4:     Set var_E4 = Me.FGrid2
  loc_11051EA:     LateIdCallSt
  loc_110520F:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1105217:     var_D0 = CVar(CLng(5)) 'Long
  loc_110521C:     var_124 = vbNullString
  loc_1105226:     Set var_E4 = Me.FGrid2
  loc_110522C:     LateIdCallSt
  loc_1105251:     var_B0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1105259:     var_D0 = CVar(CLng(6)) 'Long
  loc_110525E:     var_124 = vbNullString
  loc_1105268:     Set var_E4 = Me.FGrid2
  loc_110526E:     LateIdCallSt
  loc_1105280:   End If
  loc_1105280:   ' Referenced from: 1104FA8
  loc_1105280: End If
  loc_1105288: Set var_8C = Err()
  loc_110528E: Call 0.Method_arg_1C (var_138, var_E4, var_124, var_D0, var_B0, var_E4, var_124, var_D0)
  loc_110529F: If (var_138 <> 0) Then
  loc_11052B8:   Set var_8C = Err()
  loc_11052BE:   Call 0.Method_arg_2C (var_A0, 0, var_F4, var_104, var_114, var_B0)
  loc_11052C9:   MsgBox(CVar(var_A0), var_E4, var_124, var_D0, var_B0)
  loc_11052DC: End If
  loc_11052DC: Exit Sub
End Sub

Private Sub GuestImage_DblClick() '105E33C
  'Data Table: 5A2370
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105E0F4: On Error Goto loc_105E2DD
  loc_105E0FB: Set var_88 = Me.TopCtrl1
  loc_105E101: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105E115: Set var_A0 = Me.TopCtrl1
  loc_105E11B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105E141: If ( And (CStr() <> "Edit")) Then
  loc_105E144:   Exit Sub
  loc_105E145: End If
  loc_105E155: Me.CDlg.Filter = "*.*"
  loc_105E16D: Me.CDlg.Action = 1
  loc_105E17F: Me.CDlg.FileName = 
  loc_105E187: var_9C = CStr()
  loc_105E194: Me.GuestImage.Tag = var_9C
  loc_105E1B0: Me.CDlg.FileName = 
  loc_105E1B8: var_B0 = CVar(CStr()) 'String
  loc_105E1BE: var_E4 = Trim(var_B0)
  loc_105E1C7: Set var_A0 = Me.CDlg
  loc_105E1CD: var_A0.FileName = 
  loc_105E1EB: var_F4 = Right(var_E4, 3)
  loc_105E226: var_D4 = "AVI"
  loc_105E254: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105E265:   var_C4 = "Invalid Format"
  loc_105E270:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105E283: Else
  loc_105E29A:   Set var_88 = Me.CDlg
  loc_105E2A0:   var_88.FileName = var_C4
  loc_105E2A8:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105E2B2:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105E2C7:   Me.GuestImage.Picture = var_A0
  loc_105E2DC: End If
  loc_105E2DC: Exit Sub
  loc_105E2DD: ' Referenced from: 105E0F4
  loc_105E2E5: Set var_88 = Err()
  loc_105E2EB: Call 0.Method_arg_1C (var_1B0)
  loc_105E2FC: If (var_1B0 <> 0) Then
  loc_105E315:   Set var_88 = Err()
  loc_105E31B:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105E326:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105E339: End If
  loc_105E339: Exit Sub
End Sub

Private Sub CmdRef_Click() 'EC7010
  'Data Table: 5A2370
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  loc_EC6F74: Set var_88 = Me.TopCtrl1
  loc_EC6F7A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EC6F93: If (CStr() = "Browse") Then
  loc_EC6F96:   Exit Sub
  loc_EC6F97: End If
  loc_EC6FA1: Set var_A0 = New FaCityMast
  loc_EC6FB3: var_A0.OpenMode = 1
  loc_EC6FBD: var_A0.Caption = "City Master"
  loc_EC6FD2: Form.Show 1, var_C0
  loc_EC6FE2: Me.Requery -1
  loc_EC6FF2: Set var_88 = Me.Txt
  loc_EC6FF8: Call 0.Method_CmdRef_Click0 (CInt(6))
  loc_EC7000: var_C4.SetFocus
  loc_EC700C: Exit Sub
End Sub

Public Function MasterFormExitGet() '5A5354
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5A5363
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E934D0
  'Data Table: 5A2370
  Dim Me As Recordset15
  loc_E9345E: On Error Goto loc_E934C7
  loc_E93467: Me.MoveFirst
  loc_E93491: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E934B9: Proc_5_0_110649C(&HFF, Me, global_88)
  loc_E934C1: Call MoveRec()
  loc_E934C6: Exit Sub
  loc_E934C7: ' Referenced from: E9345E
  loc_E934C7: Proc_6_60_E62BC4(0)
  loc_E934CC: Exit Sub
End Sub

Public Sub MoveRec() '17F57B0
  'Data Table: 5A2370
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_5A23A3 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_13C As String
  Dim var_110 As Variant
  Dim var_12C As String
  Dim var_128 As Variant
  Dim var_1F8 As Variant
  loc_17F35E8: On Error Goto loc_17F57A8
  loc_17F3602: If (Me.RecordCount > 0) Then
  loc_17F3605:   Call Proc_24_90_FF13B0()
  loc_17F3617:   var_CC = "SELECT GuestProf.*,Country.Name As NationalName FROM GuestProf Left Join Country On GuestProf.Nationality=Country.Code WHERE GuestProf.Code='"
  loc_17F3660:   unk_5A23A3.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_17F366B:   Set var_88 = var_124
  loc_17F36BF:   var_124 = var_88.Fields
  loc_17F3728:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17F376D:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_17F37E7:   var_128 = var_88.Fields.Item("U_AE")
  loc_17F37EF:   var_DC = CVar(var_128) 'Address
  loc_17F37FB:   var_13C = "entdt : "
  loc_17F3848:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_DC) = "E"), "Last Update : ", var_13C))
  loc_17F388D:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_17F38D9:   If (var_88.RecordCount > 0) Then
  loc_17F3915:     Set var_124 = Me.Txt
  loc_17F391B:     Call 0.Method_MoveRec0 (CInt(0), var_128)
  loc_17F3923:     var_128.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_17F396A:     global_60 = CStr(var_88.Fields.Item("Code").Value)
  loc_17F39B1:     Set var_124 = Me.Txt
  loc_17F39B7:     Call 0.Method_MoveRec0 (CInt(&H46), var_128)
  loc_17F39BF:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")))
  loc_17F3A0C:     Set var_124 = Me.Txt
  loc_17F3A12:     Call 0.Method_MoveRec0 (CInt(0), var_128)
  loc_17F3A1A:     var_128.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_17F3A66:     Set var_124 = Me.Txt
  loc_17F3A6C:     Call 0.Method_MoveRec0 (CInt(&H4B), var_128)
  loc_17F3A74:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FatherName")))
  loc_17F3ABE:     Set var_124 = Me.Txt
  loc_17F3AC4:     Call 0.Method_MoveRec0 (CInt(1), var_128)
  loc_17F3ACC:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_17F3B16:     Set var_124 = Me.Txt
  loc_17F3B1C:     Call 0.Method_MoveRec0 (CInt(2), var_128)
  loc_17F3B24:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_17F3B6E:     Set var_124 = Me.Txt
  loc_17F3B74:     Call 0.Method_MoveRec0 (CInt(3), var_128)
  loc_17F3B7C:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")))
  loc_17F3BC6:     Set var_124 = Me.Txt
  loc_17F3BCC:     Call 0.Method_MoveRec0 (CInt(&HA), var_128)
  loc_17F3BD4:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PhoneNo")))
  loc_17F3C1E:     Set var_124 = Me.Txt
  loc_17F3C24:     Call 0.Method_MoveRec0 (CInt(&H43), var_128)
  loc_17F3C2C:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PanNo")))
  loc_17F3C76:     Set var_124 = Me.Txt
  loc_17F3C7C:     Call 0.Method_MoveRec0 (CInt(&HC), var_128)
  loc_17F3C84:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FaxNo")))
  loc_17F3CCE:     Set var_124 = Me.Txt
  loc_17F3CD4:     Call 0.Method_MoveRec0 (CInt(&HB), var_128)
  loc_17F3CDC:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")))
  loc_17F3D26:     Set var_124 = Me.Txt
  loc_17F3D2C:     Call 0.Method_MoveRec0 (CInt(&HD), var_128)
  loc_17F3D34:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("EmailId")))
  loc_17F3D7E:     Set var_124 = Me.Txt
  loc_17F3D84:     Call 0.Method_MoveRec0 (CInt(&H11), var_128)
  loc_17F3D8C:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("NationalName")))
  loc_17F3DD6:     Set var_124 = Me.Txt
  loc_17F3DDC:     Call 0.Method_MoveRec0 (CInt(&H11), var_128)
  loc_17F3DE4:     var_128.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality")))
  loc_17F3E17:     var_BC = CVar(var_88.Fields.Item("Age")) 'Address
  loc_17F3E1E:     Proc_6_39_E7C810(var_DC)
  loc_17F3E35:     Set var_124 = Me.Txt
  loc_17F3E3B:     Call 0.Method_MoveRec0 (CInt(&H49), var_128)
  loc_17F3E43:     var_128.Text = CStr(var_DC)
  loc_17F3E91:     Set var_124 = Me.Txt
  loc_17F3E97:     Call 0.Method_MoveRec0 (CInt(&H42), var_128)
  loc_17F3E9F:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MaritalStatus")))
  loc_17F3EE9:     Set var_124 = Me.Txt
  loc_17F3EEF:     Call 0.Method_MoveRec0 (CInt(&H41), var_128)
  loc_17F3EF7:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Gender")))
  loc_17F3F5D:     Set var_124 = Me.Txt
  loc_17F3F63:     Call 0.Method_MoveRec0 (CInt(4), var_128, CStr(Format(CVar(var_88.Fields.Item("BirthDate")), "dd/MMM/yyyy")))
  loc_17F3F6B:     var_128.Text = 1
  loc_17F3FBB:     Set var_124 = Me.Txt
  loc_17F3FC1:     Call 0.Method_MoveRec0 (CInt(5), var_128)
  loc_17F3FC9:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Anniversary")), 1)
  loc_17F4013:     Set var_124 = Me.Txt
  loc_17F4019:     Call 0.Method_MoveRec0 (CInt(8), var_128)
  loc_17F4021:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("SplInstr")))
  loc_17F406B:     Set var_124 = Me.Txt
  loc_17F4071:     Call 0.Method_MoveRec0 (CInt(&H16), var_128)
  loc_17F4079:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments1")))
  loc_17F40C3:     Set var_124 = Me.Txt
  loc_17F40C9:     Call 0.Method_MoveRec0 (CInt(&H15), var_128)
  loc_17F40D1:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments2")))
  loc_17F411B:     Set var_124 = Me.Txt
  loc_17F4121:     Call 0.Method_MoveRec0 (CInt(&H10), var_128)
  loc_17F4129:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments3")))
  loc_17F4173:     Set var_124 = Me.Txt
  loc_17F4179:     Call 0.Method_MoveRec0 (CInt(&H1E), var_128)
  loc_17F4181:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConName")))
  loc_17F41CB:     Set var_124 = Me.Txt
  loc_17F41D1:     Call 0.Method_MoveRec0 (CInt(&H1D), var_128)
  loc_17F41D9:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field1")))
  loc_17F4223:     Set var_124 = Me.Txt
  loc_17F4229:     Call 0.Method_MoveRec0 (CInt(&H1B), var_128)
  loc_17F4231:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field2")))
  loc_17F427B:     Set var_124 = Me.Txt
  loc_17F4281:     Call 0.Method_MoveRec0 (CInt(&H1A), var_128)
  loc_17F4289:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field3")))
  loc_17F42D3:     Set var_124 = Me.Txt
  loc_17F42D9:     Call 0.Method_MoveRec0 (CInt(&H3F), var_128)
  loc_17F42E1:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field4")))
  loc_17F432B:     Set var_124 = Me.Txt
  loc_17F4331:     Call 0.Method_MoveRec0 (CInt(&H3E), var_128)
  loc_17F4339:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field5")))
  loc_17F4383:     Set var_124 = Me.Txt
  loc_17F4389:     Call 0.Method_MoveRec0 (CInt(&H1C), var_128)
  loc_17F4391:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field6")))
  loc_17F43DB:     Set var_124 = Me.Txt
  loc_17F43E1:     Call 0.Method_MoveRec0 (CInt(&H18), var_128)
  loc_17F43E9:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field7")))
  loc_17F4433:     Set var_124 = Me.Txt
  loc_17F4439:     Call 0.Method_MoveRec0 (CInt(&H19), var_128)
  loc_17F4441:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T2Field8")))
  loc_17F448B:     Set var_124 = Me.Txt
  loc_17F4491:     Call 0.Method_MoveRec0 (CInt(&H23), var_128)
  loc_17F4499:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field1")))
  loc_17F44E3:     Set var_124 = Me.Txt
  loc_17F44E9:     Call 0.Method_MoveRec0 (CInt(&H22), var_128)
  loc_17F44F1:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field2")))
  loc_17F453B:     Set var_124 = Me.Txt
  loc_17F4541:     Call 0.Method_MoveRec0 (CInt(&H21), var_128)
  loc_17F4549:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field3")))
  loc_17F4593:     Set var_124 = Me.Txt
  loc_17F4599:     Call 0.Method_MoveRec0 (CInt(&H20), var_128)
  loc_17F45A1:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field4")))
  loc_17F45EB:     Set var_124 = Me.Txt
  loc_17F45F1:     Call 0.Method_MoveRec0 (CInt(&H1F), var_128)
  loc_17F45F9:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field5")))
  loc_17F4643:     Set var_124 = Me.Txt
  loc_17F4649:     Call 0.Method_MoveRec0 (CInt(&H3D), var_128)
  loc_17F4651:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field6")))
  loc_17F469B:     Set var_124 = Me.Txt
  loc_17F46A1:     Call 0.Method_MoveRec0 (CInt(&H3C), var_128)
  loc_17F46A9:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field7")))
  loc_17F46F3:     Set var_124 = Me.Txt
  loc_17F46F9:     Call 0.Method_MoveRec0 (CInt(&H3B), var_128)
  loc_17F4701:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("T1Field8")))
  loc_17F474B:     Set var_124 = Me.Txt
  loc_17F4751:     Call 0.Method_MoveRec0 (CInt(6), var_128)
  loc_17F4759:     var_128.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("City")))
  loc_17F47A3:     Set var_124 = Me.Txt
  loc_17F47A9:     Call 0.Method_MoveRec0 (CInt(7), var_128)
  loc_17F47B1:     var_128.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuestStatus")))
  loc_17F47FB:     Set var_124 = Me.Txt
  loc_17F4801:     Call 0.Method_MoveRec0 (CInt(&H14), var_128)
  loc_17F4809:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Zipcode")))
  loc_17F4853:     Set var_124 = Me.Txt
  loc_17F4859:     Call 0.Method_MoveRec0 (CInt(&H44), var_128)
  loc_17F4861:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiplomatYN")))
  loc_17F48AB:     Set var_124 = Me.Txt
  loc_17F48B1:     Call 0.Method_MoveRec0 (CInt(&H45), var_128)
  loc_17F48B9:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdNo")))
  loc_17F4903:     Set var_124 = Me.Txt
  loc_17F4909:     Call 0.Method_MoveRec0 (CInt(&H4A), var_128)
  loc_17F4911:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProof")))
  loc_17F495B:     Set var_124 = Me.Txt
  loc_17F4961:     Call 0.Method_MoveRec0 (CInt(&H4C), var_128)
  loc_17F4969:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProofNo")))
  loc_17F49CF:     var_FC = "SELECT GuestImage,IdImage,SignImage FROM ProfileImages WHERE ProfileCode='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_17F49DA:     Me.Recordset15.Open var_FC, CVar(MemVar_1F92044), 2
  loc_17F4A3B:     If ((Me.Recordset15.RecordCount > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("GuestImage"))) = 0)) Then
  loc_17F4A54:       Set var_AC = var_1E8 
  loc_17F4A64:       Proc_142_1_F33768(Me.GuestImage, var_AC, "GuestImage")
  loc_17F4A6F:       Set var_1E8 = var_AC
  loc_17F4A81:     Else
  loc_17F4A90:       var_98 = var_88.Fields
  loc_17F4AA9:       var_110 = IsNull(CVar(var_98.Item("PicPath")))
  loc_17F4AB0:       var_CC = "PicPath"
  loc_17F4ADB:       var_EC = vbNullString
  loc_17F4AFD:       If CBool(var_110 Or (Trim(CVar(var_88.Fields.Item(var_CC))) = var_EC)) Then
  loc_17F4B1E:         Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F4B33:         Me.GuestImage.Picture = var_98
  loc_17F4B4C:         Me.GuestImage.Tag = vbNullString
  loc_17F4B57:       Else
  loc_17F4B85:         var_EC = "PicPath"
  loc_17F4BCB:         var_CC = "DAT"
  loc_17F4BF3:         var_110 = "AVI"
  loc_17F4BFD:         var_1F8 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_EC))), 3)) = var_110)
  loc_17F4C1D:         If CBool(var_1F8) Then
  loc_17F4C2C:           Me.GuestImage.Visible = False
  loc_17F4C37:         Else
  loc_17F4C6F:           Me.GuestImage.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_17F4C8C:           var_A8 = "PicPath"
  loc_17F4C98:           var_98 = var_88.Fields
  loc_17F4CA0:           var_AC = var_98.Item(var_A8)
  loc_17F4CBA:           Call 0.Method_MoveRec4 (CStr(var_AC.Value), var_1FA, var_98)
  loc_17F4CCF:           If var_1FA Then
  loc_17F4CEC:             Set var_98 = Me.GuestImage
  loc_17F4D04:             Me.Global.LoadPicture CVar(Me.GuestImage.Tag), var_A8, var_CC, var_EC, var_110
  loc_17F4D19:             Me.GuestImage.Picture = var_AC
  loc_17F4D2E:             Set var_98 = Me.GuestImage
  loc_17F4D34:             var_98.Refresh
  loc_17F4D3F:           Else
  loc_17F4D5D:             Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F4D72:             Me.GuestImage.Picture = var_98
  loc_17F4D7E:           End If
  loc_17F4D7E:         End If
  loc_17F4D7E:       End If
  loc_17F4D7E:     End If
  loc_17F4DCA:     If ((Me.Recordset15.RecordCount > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("IdImage"))) = 0)) Then
  loc_17F4DE3:       Set var_AC = var_1E8 
  loc_17F4DF3:       Proc_142_1_F33768(Me.IdProofImage, var_AC, "IdImage", Me.IdProofImage)
  loc_17F4DFE:       Set var_1E8 = var_AC
  loc_17F4E10:     Else
  loc_17F4E1F:       var_98 = var_88.Fields
  loc_17F4E38:       var_110 = IsNull(CVar(var_98.Item("IdPicPath")))
  loc_17F4E3F:       var_CC = "IdPicPath"
  loc_17F4E6A:       var_EC = vbNullString
  loc_17F4E8C:       If CBool(var_110 Or (Trim(CVar(var_88.Fields.Item(var_CC))) = var_EC)) Then
  loc_17F4EAD:         Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F4EC2:         Me.IdProofImage.Picture = var_98
  loc_17F4EDB:         Me.IdProofImage.Tag = vbNullString
  loc_17F4EE6:       Else
  loc_17F4F14:         var_EC = "IdPicPath"
  loc_17F4F5A:         var_CC = "DAT"
  loc_17F4F82:         var_110 = "AVI"
  loc_17F4F8C:         var_1F8 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("IdPicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_EC))), 3)) = var_110)
  loc_17F4FAC:         If CBool(var_1F8) Then
  loc_17F4FBB:           Me.IdProofImage.Visible = False
  loc_17F4FC6:         Else
  loc_17F4FFE:           Me.IdProofImage.Tag = CStr(var_88.Fields.Item("IdPicPath").Value)
  loc_17F501B:           var_A8 = "IdPicPath"
  loc_17F5027:           var_98 = var_88.Fields
  loc_17F502F:           var_AC = var_98.Item(var_A8)
  loc_17F5049:           Call 0.Method_MoveRec4 (CStr(var_AC.Value), var_1FA, var_98, var_AC)
  loc_17F505E:           If var_1FA Then
  loc_17F507B:             Set var_98 = Me.IdProofImage
  loc_17F5093:             Me.Global.LoadPicture CVar(Me.IdProofImage.Tag), var_A8, var_CC, var_EC, var_110
  loc_17F50A8:             Me.IdProofImage.Picture = var_AC
  loc_17F50BD:             Set var_98 = Me.IdProofImage
  loc_17F50C3:             var_98.Refresh
  loc_17F50CE:           Else
  loc_17F50EC:             Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F5101:             Me.IdProofImage.Picture = var_98
  loc_17F510D:           End If
  loc_17F510D:         End If
  loc_17F510D:       End If
  loc_17F510D:     End If
  loc_17F5159:     If ((Me.Recordset15.RecordCount > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("SignImage"))) = 0)) Then
  loc_17F5172:       Set var_AC = var_1E8 
  loc_17F5182:       Proc_142_1_F33768(Me.GuestSign, var_AC, "SignImage", Me.GuestSign)
  loc_17F518D:       Set var_1E8 = var_AC
  loc_17F519F:     Else
  loc_17F51AE:       var_98 = var_88.Fields
  loc_17F51C7:       var_110 = IsNull(CVar(var_98.Item("SignPicPath")))
  loc_17F51CE:       var_CC = "SignPicPath"
  loc_17F51F9:       var_EC = vbNullString
  loc_17F521B:       If CBool(var_110 Or (Trim(CVar(var_88.Fields.Item(var_CC))) = var_EC)) Then
  loc_17F523C:         Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F5251:         Me.GuestSign.Picture = var_98
  loc_17F526A:         Me.GuestSign.Tag = vbNullString
  loc_17F5275:       Else
  loc_17F52A3:         var_EC = "SignPicPath"
  loc_17F52E1:         var_120 = Ucase(Right(Trim(CVar(var_88.Fields.Item("SignPicPath"))), 3))
  loc_17F52E9:         var_CC = "DAT"
  loc_17F5311:         var_110 = "AVI"
  loc_17F533B:         If CBool((var_120 = var_CC) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_EC))), 3)) = var_110)) Then
  loc_17F534A:           Me.GuestSign.Visible = False
  loc_17F5355:         Else
  loc_17F538D:           Me.GuestSign.Tag = CStr(var_88.Fields.Item("SignPicPath").Value)
  loc_17F53AA:           var_A8 = "SignPicPath"
  loc_17F53B6:           var_98 = var_88.Fields
  loc_17F53BE:           var_AC = var_98.Item(var_A8)
  loc_17F53D8:           Call 0.Method_MoveRec4 (CStr(var_AC.Value), var_1FA, var_98, var_AC)
  loc_17F53ED:           If var_1FA Then
  loc_17F540A:             Set var_98 = Me.GuestSign
  loc_17F5422:             Me.Global.LoadPicture CVar(Me.GuestSign.Tag), var_A8, var_CC, var_EC, var_110
  loc_17F5431:             Set var_128 = Me.GuestSign
  loc_17F5437:             var_128.Picture = var_AC
  loc_17F544C:             Set var_98 = Me.GuestSign
  loc_17F5452:             var_98.Refresh
  loc_17F545D:           Else
  loc_17F547B:             Me.Global.LoadPicture var_A8, var_CC, var_EC, var_110, var_13C
  loc_17F548A:             Set var_124 = Me.GuestSign
  loc_17F5490:             var_124.Picture = var_98
  loc_17F549C:           End If
  loc_17F549C:         End If
  loc_17F549C:       End If
  loc_17F549C:     End If
  loc_17F54A2:     Me.Recordset15.Close
  loc_17F54AC:     Set var_1E8 = Nothing
  loc_17F54AF:   End If
  loc_17F54BC:   var_CC = "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='"
  loc_17F5505:   unk_5A23A3.Execute CStr(var_CC & Me.Fields.Item("City").Value & "'"), var_120, -1
  loc_17F5510:   Set var_88 = var_124
  loc_17F553E:   If (var_88.RecordCount > 0) Then
  loc_17F5550:     var_98 = var_88.Fields
  loc_17F5558:     var_AC = var_98.Item("CityName")
  loc_17F5577:     Set var_124 = Me.Txt
  loc_17F557D:     Call 0.Method_MoveRec0 (CInt(6), var_128, Proc_6_38_E68A98(CVar(var_AC), var_124, var_98, var_AC))
  loc_17F5585:     var_128.Text = 3
  loc_17F55C1:     var_100 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")), -1)
  loc_17F55CF:     Set var_124 = Me.Txt
  loc_17F55D5:     Call 0.Method_MoveRec0 (CInt(&H12), var_128)
  loc_17F55DD:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")), var_124, var_88.Fields, var_88.Fields.Item("StateName"))
  loc_17F5608:     var_AC = var_88.Fields.Item("CountryName")
  loc_17F5619:     var_100 = Proc_6_38_E68A98(CVar(var_AC))
  loc_17F5627:     Set var_124 = Me.Txt
  loc_17F562D:     Call 0.Method_MoveRec0 (CInt(&H13), var_128)
  loc_17F5635:     var_128.Text = var_100
  loc_17F5649:   End If
  loc_17F5667:   Set var_98 = Me.Txt
  loc_17F566D:   Call 0.Method_MoveRec0 (CInt(7), var_AC, var_100, "SELECT GuestStat.Name AS GuestStatusName FROM GuestStat WHERE Code='")
  loc_17F567E:   var_12C = -1 & var_100
  loc_17F568E:   unk_5A23A3.Execute Proc_6_38_E68A98(var_CC & Me.Fields.Item("City").Value) & "'", var_124, var_AC.Tag
  loc_17F5699:   Set var_88 = var_124
  loc_17F56C5:   If (var_88.RecordCount > 0) Then
  loc_17F56DF:     var_AC = var_88.Fields.Item("GuestStatusName")
  loc_17F56FE:     Set var_124 = Me.Txt
  loc_17F5704:     Call 0.Method_MoveRec0 (CInt(7), var_128)
  loc_17F570C:     var_128.Text = Proc_6_38_E68A98(CVar(var_AC))
  loc_17F5720:   End If
  loc_17F5720:   Call Proc_24_81_13456CC()
  loc_17F5725:   Call Proc_24_84_149E01C()
  loc_17F5735:   Set var_98 = Me.Txt
  loc_17F573B:   Call 0.Method_MoveRec0 (CInt(3))
  loc_17F5764:   If (Trim(CVar(var_AC)) = "Foreign") Then
  loc_17F5773:     Me.BtnVisa.Enabled = True
  loc_17F577E:   Else
  loc_17F578A:     Me.BtnVisa.Enabled = False
  loc_17F5792:   End If
  loc_17F5795: Else
  loc_17F5795:   Call Proc_24_90_FF13B0(var_AC)
  loc_17F579A: End If
  loc_17F579A: Call Proc_24_91_FDA04C()
  loc_17F57A4: Set var_88 = Nothing
  loc_17F57A7: Exit Sub
  loc_17F57A8: ' Referenced from: 17F35E8
  loc_17F57A8: Proc_6_60_E62BC4()
  loc_17F57AD: Exit Sub
End Sub

Public Property Get Guest() 'E11EFC
  'Data Table: 5A2370
  loc_E11EF0: var_88 = global_160
  loc_E11EF3: Guest = 
End Sub

Public Property Let Guest(vNewValue) 'E11F44
  'Data Table: 5A2370
  loc_E11F3C: global_160 = vNewValue
  loc_E11F40: Exit Sub
End Sub

Public Property Get OpenMode() 'E079C0
  'Data Table: 5A2370
  loc_E079B9: OpenMode = global_164
End Sub

Public Property Let OpenMode(vNewValue) 'E01F7C
  'Data Table: 5A2370
  loc_E01F79: Exit Sub
  loc_E01F7A: Loop Until vNewValue 'do at: E017AD
End Sub

Public Property Get GuestCode() 'E1201C
  'Data Table: 5A2370
  loc_E12010: var_88 = global_172
  loc_E12013: GuestCode = 
End Sub

Public Property Let GuestCode(vNewValue) 'E12064
  'Data Table: 5A2370
  loc_E1205C: global_172 = vNewValue
  loc_E12060: Exit Sub
End Sub

Public Property Get OpenType() 'E120AC
  'Data Table: 5A2370
  loc_E120A0: var_88 = global_168
  loc_E120A3: OpenType = 
End Sub

Public Property Let OpenType(vNewValue) 'E120F4
  'Data Table: 5A2370
  loc_E120EC: global_168 = vNewValue
  loc_E120F0: Exit Sub
End Sub

Public Property Get GuestFolio() 'E1213C
  'Data Table: 5A2370
  loc_E12130: var_88 = global_176
  loc_E12133: GuestFolio = 
End Sub

Public Property Let GuestFolio(vNewValue) 'E12184
  'Data Table: 5A2370
  loc_E1217C: global_176 = vNewValue
  loc_E12180: Exit Sub
End Sub

Public Sub Proc_24_76_11D7E40
  'Data Table: 5A2370
  Dim var_8C As TextBox
  loc_11D79C2: Set var_88 = Me.Txt
  loc_11D79C8: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H24), var_8C)
  loc_11D79D0: var_8C.Text = vbNullString
  loc_11D79EA: Set var_88 = Me.Txt
  loc_11D79F0: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H27), var_8C)
  loc_11D79F8: var_8C.Text = vbNullString
  loc_11D7A12: Set var_88 = Me.Txt
  loc_11D7A18: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H26), var_8C)
  loc_11D7A20: var_8C.Text = vbNullString
  loc_11D7A3A: Set var_88 = Me.Txt
  loc_11D7A40: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H25), var_8C)
  loc_11D7A48: var_8C.Text = vbNullString
  loc_11D7A62: Set var_88 = Me.Txt
  loc_11D7A68: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H25), var_8C)
  loc_11D7A70: var_8C.Tag = vbNullString
  loc_11D7A8A: Set var_88 = Me.Txt
  loc_11D7A90: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H29), var_8C)
  loc_11D7A98: var_8C.Text = vbNullString
  loc_11D7AB2: Set var_88 = Me.Txt
  loc_11D7AB8: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H28), var_8C)
  loc_11D7AC0: var_8C.Text = vbNullString
  loc_11D7ADA: Set var_88 = Me.Txt
  loc_11D7AE0: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H2B), var_8C)
  loc_11D7AE8: var_8C.Text = vbNullString
  loc_11D7B02: Set var_88 = Me.Txt
  loc_11D7B08: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H2D), var_8C)
  loc_11D7B10: var_8C.Text = vbNullString
  loc_11D7B2A: Set var_88 = Me.Txt
  loc_11D7B30: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H2A), var_8C)
  loc_11D7B38: var_8C.Text = vbNullString
  loc_11D7B52: Set var_88 = Me.Txt
  loc_11D7B58: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H17), var_8C)
  loc_11D7B60: var_8C.Text = vbNullString
  loc_11D7B7A: Set var_88 = Me.Txt
  loc_11D7B80: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H38), var_8C)
  loc_11D7B88: var_8C.Text = vbNullString
  loc_11D7BA2: Set var_88 = Me.Txt
  loc_11D7BA8: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H39), var_8C)
  loc_11D7BB0: var_8C.Text = vbNullString
  loc_11D7BCA: Set var_88 = Me.Txt
  loc_11D7BD0: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H31), var_8C)
  loc_11D7BD8: var_8C.Text = vbNullString
  loc_11D7BF2: Set var_88 = Me.Txt
  loc_11D7BF8: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H2F), var_8C)
  loc_11D7C00: var_8C.Text = vbNullString
  loc_11D7C1A: Set var_88 = Me.Txt
  loc_11D7C20: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H30), var_8C)
  loc_11D7C28: var_8C.Text = vbNullString
  loc_11D7C42: Set var_88 = Me.Txt
  loc_11D7C48: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H40), var_8C)
  loc_11D7C50: var_8C.Text = vbNullString
  loc_11D7C6A: Set var_88 = Me.Txt
  loc_11D7C70: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H2E), var_8C)
  loc_11D7C78: var_8C.Text = vbNullString
  loc_11D7C92: Set var_88 = Me.Txt
  loc_11D7C98: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H2C), var_8C)
  loc_11D7CA0: var_8C.Text = vbNullString
  loc_11D7CBA: Set var_88 = Me.Txt
  loc_11D7CC0: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H3A), var_8C)
  loc_11D7CC8: var_8C.Text = vbNullString
  loc_11D7CE2: Set var_88 = Me.Txt
  loc_11D7CE8: Call 0.Method_Proc_24_76_11D7E400 (CInt(&HE), var_8C)
  loc_11D7CF0: var_8C.Text = vbNullString
  loc_11D7D0A: Set var_88 = Me.Txt
  loc_11D7D10: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H37), var_8C)
  loc_11D7D18: var_8C.Text = vbNullString
  loc_11D7D32: Set var_88 = Me.Txt
  loc_11D7D38: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H35), var_8C)
  loc_11D7D40: var_8C.Text = vbNullString
  loc_11D7D5A: Set var_88 = Me.Txt
  loc_11D7D60: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H33), var_8C)
  loc_11D7D68: var_8C.Text = vbNullString
  loc_11D7D82: Set var_88 = Me.Txt
  loc_11D7D88: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H36), var_8C)
  loc_11D7D90: var_8C.Text = vbNullString
  loc_11D7DAA: Set var_88 = Me.Txt
  loc_11D7DB0: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H32), var_8C)
  loc_11D7DB8: var_8C.Text = vbNullString
  loc_11D7DD2: Set var_88 = Me.Txt
  loc_11D7DD8: Call 0.Method_Proc_24_76_11D7E400 (CInt(&H34), var_8C)
  loc_11D7DE0: var_8C.Text = vbNullString
  loc_11D7DFA: Set var_88 = Me.Txt
  loc_11D7E00: Call 0.Method_Proc_24_76_11D7E400 (CInt(&HF), var_8C)
  loc_11D7E08: var_8C.Text = vbNullString
  loc_11D7E22: Set var_88 = Me.Txt
  loc_11D7E28: Call 0.Method_Proc_24_76_11D7E400 (CInt(9), var_8C)
  loc_11D7E30: var_8C.Text = vbNullString
  loc_11D7E3C: Exit Sub
  loc_11D7E3D: If  Then Exit Sub
  loc_11D7E3D: End If
End Sub

Public Sub Proc_24_77_11BBF40(arg_C) '11BBF40
  'Data Table: 5A2370
  Dim var_8C As TextBox
  loc_11BBAEA: Set var_88 = Me.Txt
  loc_11BBAF0: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H24), var_8C)
  loc_11BBAF8: var_8C.Enabled = arg_C
  loc_11BBB12: Set var_88 = Me.Txt
  loc_11BBB18: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H27), var_8C)
  loc_11BBB20: var_8C.Enabled = arg_C
  loc_11BBB3A: Set var_88 = Me.Txt
  loc_11BBB40: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H26), var_8C)
  loc_11BBB48: var_8C.Enabled = arg_C
  loc_11BBB62: Set var_88 = Me.Txt
  loc_11BBB68: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H25), var_8C)
  loc_11BBB70: var_8C.Enabled = arg_C
  loc_11BBB8A: Set var_88 = Me.Txt
  loc_11BBB90: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H29), var_8C)
  loc_11BBB98: var_8C.Enabled = arg_C
  loc_11BBBB2: Set var_88 = Me.Txt
  loc_11BBBB8: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H28), var_8C)
  loc_11BBBC0: var_8C.Enabled = arg_C
  loc_11BBBDA: Set var_88 = Me.Txt
  loc_11BBBE0: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H2B), var_8C)
  loc_11BBBE8: var_8C.Enabled = arg_C
  loc_11BBC02: Set var_88 = Me.Txt
  loc_11BBC08: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H2D), var_8C)
  loc_11BBC10: var_8C.Enabled = arg_C
  loc_11BBC2A: Set var_88 = Me.Txt
  loc_11BBC30: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H2A), var_8C)
  loc_11BBC38: var_8C.Enabled = arg_C
  loc_11BBC52: Set var_88 = Me.Txt
  loc_11BBC58: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H17), var_8C)
  loc_11BBC60: var_8C.Enabled = arg_C
  loc_11BBC7A: Set var_88 = Me.Txt
  loc_11BBC80: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H38), var_8C)
  loc_11BBC88: var_8C.Enabled = arg_C
  loc_11BBCA2: Set var_88 = Me.Txt
  loc_11BBCA8: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H39), var_8C)
  loc_11BBCB0: var_8C.Enabled = arg_C
  loc_11BBCCA: Set var_88 = Me.Txt
  loc_11BBCD0: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H31), var_8C)
  loc_11BBCD8: var_8C.Enabled = arg_C
  loc_11BBCF2: Set var_88 = Me.Txt
  loc_11BBCF8: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H2F), var_8C)
  loc_11BBD00: var_8C.Enabled = arg_C
  loc_11BBD1A: Set var_88 = Me.Txt
  loc_11BBD20: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H30), var_8C)
  loc_11BBD28: var_8C.Enabled = arg_C
  loc_11BBD42: Set var_88 = Me.Txt
  loc_11BBD48: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H40), var_8C)
  loc_11BBD50: var_8C.Enabled = arg_C
  loc_11BBD6A: Set var_88 = Me.Txt
  loc_11BBD70: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H2E), var_8C)
  loc_11BBD78: var_8C.Enabled = arg_C
  loc_11BBD92: Set var_88 = Me.Txt
  loc_11BBD98: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H2C), var_8C)
  loc_11BBDA0: var_8C.Enabled = arg_C
  loc_11BBDBA: Set var_88 = Me.Txt
  loc_11BBDC0: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H3A), var_8C)
  loc_11BBDC8: var_8C.Enabled = arg_C
  loc_11BBDE2: Set var_88 = Me.Txt
  loc_11BBDE8: Call 0.Method_Proc_24_77_11BBF400 (CInt(&HE), var_8C)
  loc_11BBDF0: var_8C.Enabled = arg_C
  loc_11BBE0A: Set var_88 = Me.Txt
  loc_11BBE10: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H37), var_8C)
  loc_11BBE18: var_8C.Enabled = arg_C
  loc_11BBE32: Set var_88 = Me.Txt
  loc_11BBE38: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H35), var_8C)
  loc_11BBE40: var_8C.Enabled = arg_C
  loc_11BBE5A: Set var_88 = Me.Txt
  loc_11BBE60: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H33), var_8C)
  loc_11BBE68: var_8C.Enabled = arg_C
  loc_11BBE82: Set var_88 = Me.Txt
  loc_11BBE88: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H36), var_8C)
  loc_11BBE90: var_8C.Enabled = arg_C
  loc_11BBEAA: Set var_88 = Me.Txt
  loc_11BBEB0: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H32), var_8C)
  loc_11BBEB8: var_8C.Enabled = arg_C
  loc_11BBED2: Set var_88 = Me.Txt
  loc_11BBED8: Call 0.Method_Proc_24_77_11BBF400 (CInt(&H34), var_8C)
  loc_11BBEE0: var_8C.Enabled = arg_C
  loc_11BBEFA: Set var_88 = Me.Txt
  loc_11BBF00: Call 0.Method_Proc_24_77_11BBF400 (CInt(&HF), var_8C)
  loc_11BBF08: var_8C.Enabled = arg_C
  loc_11BBF22: Set var_88 = Me.Txt
  loc_11BBF28: Call 0.Method_Proc_24_77_11BBF400 (CInt(9), var_8C)
  loc_11BBF30: var_8C.Enabled = arg_C
  loc_11BBF3C: Exit Sub
End Sub

Public Sub Proc_24_78_13A8230(arg_C) '13A8230
  'Data Table: 5A2370
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E0 As TextBox
  loc_13A78FF: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13A7928: Set var_DC = Me.Txt
  loc_13A792E: Call 0.Method_Proc_24_78_13A82300 (CInt(&H24), var_E0, CStr(Me.FGrid.TextMatrix)))
  loc_13A7936: var_E0.Text = CVar(CLng(1))
  loc_13A794C: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13A7975: Set var_DC = Me.Txt
  loc_13A797B: Call 0.Method_Proc_24_78_13A82300 (CInt(&H27), var_E0, CStr(Txt.DispID_41))
  loc_13A7983: var_E0.Text = CVar(CLng(2))
  loc_13A79C2: Set var_DC = Me.Txt
  loc_13A79C8: Call 0.Method_Proc_24_78_13A82300 (CInt(&H26), var_E0, CStr(Txt.DispID_41), CVar(CLng(3)))
  loc_13A79D0: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7A0F: Set var_DC = Me.Txt
  loc_13A7A15: Call 0.Method_Proc_24_78_13A82300 (CInt(&H25), var_E0, CStr(Txt.DispID_41), CVar(CLng(4)))
  loc_13A7A1D: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7A5C: Set var_DC = Me.Txt
  loc_13A7A62: Call 0.Method_Proc_24_78_13A82300 (CInt(&H25), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1D)))
  loc_13A7A6A: var_E0.Tag = CVar(CLng(arg_C))
  loc_13A7AA9: Set var_DC = Me.Txt
  loc_13A7AAF: Call 0.Method_Proc_24_78_13A82300 (CInt(&H29), var_E0, CStr(Txt.DispID_41), CVar(CLng(5)))
  loc_13A7AB7: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7AF6: Set var_DC = Me.Txt
  loc_13A7AFC: Call 0.Method_Proc_24_78_13A82300 (CInt(&H28), var_E0, CStr(Txt.DispID_41), CVar(CLng(6)))
  loc_13A7B04: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7B43: Set var_DC = Me.Txt
  loc_13A7B49: Call 0.Method_Proc_24_78_13A82300 (CInt(&H2B), var_E0, CStr(Txt.DispID_41), CVar(CLng(7)))
  loc_13A7B51: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7B90: Set var_DC = Me.Txt
  loc_13A7B96: Call 0.Method_Proc_24_78_13A82300 (CInt(&H2D), var_E0, CStr(Txt.DispID_41), CVar(CLng(8)))
  loc_13A7B9E: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7BDD: Set var_DC = Me.Txt
  loc_13A7BE3: Call 0.Method_Proc_24_78_13A82300 (CInt(&H2A), var_E0, CStr(Txt.DispID_41), CVar(CLng(9)))
  loc_13A7BEB: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7C2A: Set var_DC = Me.Txt
  loc_13A7C30: Call 0.Method_Proc_24_78_13A82300 (CInt(&H17), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HA)))
  loc_13A7C38: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7C77: Set var_DC = Me.Txt
  loc_13A7C7D: Call 0.Method_Proc_24_78_13A82300 (CInt(&H38), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HB)))
  loc_13A7C85: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7CC4: Set var_DC = Me.Txt
  loc_13A7CCA: Call 0.Method_Proc_24_78_13A82300 (CInt(&H39), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HC)))
  loc_13A7CD2: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7D11: Set var_DC = Me.Txt
  loc_13A7D17: Call 0.Method_Proc_24_78_13A82300 (CInt(&H31), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HD)))
  loc_13A7D1F: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7D5E: Set var_DC = Me.Txt
  loc_13A7D64: Call 0.Method_Proc_24_78_13A82300 (CInt(&H2F), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HE)))
  loc_13A7D6C: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7DAB: Set var_DC = Me.Txt
  loc_13A7DB1: Call 0.Method_Proc_24_78_13A82300 (CInt(&H30), var_E0, CStr(Txt.DispID_41), CVar(CLng(&HF)))
  loc_13A7DB9: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7DF8: Set var_DC = Me.Txt
  loc_13A7DFE: Call 0.Method_Proc_24_78_13A82300 (CInt(&H40), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H10)))
  loc_13A7E06: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7E45: Set var_DC = Me.Txt
  loc_13A7E4B: Call 0.Method_Proc_24_78_13A82300 (CInt(&H2E), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H11)))
  loc_13A7E53: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7E92: Set var_DC = Me.Txt
  loc_13A7E98: Call 0.Method_Proc_24_78_13A82300 (CInt(&H2C), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H12)))
  loc_13A7EA0: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7EDF: Set var_DC = Me.Txt
  loc_13A7EE5: Call 0.Method_Proc_24_78_13A82300 (CInt(&H3A), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H13)))
  loc_13A7EED: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7F2C: Set var_DC = Me.Txt
  loc_13A7F32: Call 0.Method_Proc_24_78_13A82300 (CInt(&HE), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H14)))
  loc_13A7F3A: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7F79: Set var_DC = Me.Txt
  loc_13A7F7F: Call 0.Method_Proc_24_78_13A82300 (CInt(&H37), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H15)))
  loc_13A7F87: var_E0.Text = CVar(CLng(arg_C))
  loc_13A7FC6: Set var_DC = Me.Txt
  loc_13A7FCC: Call 0.Method_Proc_24_78_13A82300 (CInt(&H35), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H16)))
  loc_13A7FD4: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8013: Set var_DC = Me.Txt
  loc_13A8019: Call 0.Method_Proc_24_78_13A82300 (CInt(&H33), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H17)))
  loc_13A8021: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8060: Set var_DC = Me.Txt
  loc_13A8066: Call 0.Method_Proc_24_78_13A82300 (CInt(&H36), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H18)))
  loc_13A806E: var_E0.Text = CVar(CLng(arg_C))
  loc_13A80AD: Set var_DC = Me.Txt
  loc_13A80B3: Call 0.Method_Proc_24_78_13A82300 (CInt(&H32), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H19)))
  loc_13A80BB: var_E0.Text = CVar(CLng(arg_C))
  loc_13A80FA: Set var_DC = Me.Txt
  loc_13A8100: Call 0.Method_Proc_24_78_13A82300 (CInt(&H34), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1A)))
  loc_13A8108: var_E0.Text = CVar(CLng(arg_C))
  loc_13A8147: Set var_DC = Me.Txt
  loc_13A814D: Call 0.Method_Proc_24_78_13A82300 (CInt(&HF), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1B)))
  loc_13A8155: var_E0.Text = CVar(CLng(arg_C))
  loc_13A816B: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13A8194: Set var_DC = Me.Txt
  loc_13A819A: Call 0.Method_Proc_24_78_13A82300 (CInt(9), var_E0, CStr(Txt.DispID_41), CVar(CLng(&H1C)))
  loc_13A81A2: var_E0.Text = var_98
  loc_13A81B8: Set var_DC = Me.TopCtrl1
  loc_13A81BE: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_13A81D7: If (CStr(var_98) <> "Add") Then
  loc_13A81EE:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41(CVar(CLng(&H1E)))
  loc_13A8207:   Set var_DC = Me.Txt
  loc_13A820D:   Call 0.Method_Proc_24_78_13A82300 (CInt(&H48), var_E0)
  loc_13A8215:   var_E0.Text = CStr(CVar(CLng(arg_C)))
  loc_13A8227: End If
  loc_13A8229: Set var_88 = Nothing 
  loc_13A822D: Exit Sub
End Sub

Public Sub Proc_24_79_E404F4
  'Data Table: 5A2370
  Dim var_86 As Integer
  loc_E404E2: var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_E404EB: Proc_24_79_E404F4 = var_86
End Sub

Public Sub Proc_24_80_F9C5B4
  'Data Table: 5A2370
  Dim var_90 As Variant
  loc_F9C437: Call Proc_24_79_E404F4(var_86)
  loc_F9C442: If (var_86 > 1) Then
  loc_F9C452:   Set var_8C = Me.Cmd
  loc_F9C458:   Call 0.Method_Proc_24_80_F9C5B40 (CInt(1), var_90)
  loc_F9C460:   var_90.Enabled = True
  loc_F9C479:   Set var_8C = Me.Cmd
  loc_F9C47F:   Call 0.Method_Proc_24_80_F9C5B40 (CInt(0), var_90)
  loc_F9C487:   var_90.Enabled = True
  loc_F9C496: Else
  loc_F9C4A3:   Set var_8C = Me.Cmd
  loc_F9C4A9:   Call 0.Method_Proc_24_80_F9C5B40 (CInt(1), var_90)
  loc_F9C4B1:   var_90.Enabled = False
  loc_F9C4CA:   Set var_8C = Me.Cmd
  loc_F9C4D0:   Call 0.Method_Proc_24_80_F9C5B40 (CInt(0), var_90)
  loc_F9C4D8:   var_90.Enabled = False
  loc_F9C4E4: End If
  loc_F9C4F2: Set var_8C = Me.Txt
  loc_F9C4F8: Call 0.Method_Proc_24_80_F9C5B40 (CInt(&H47), var_90)
  loc_F9C51C: If (CDbl(Val(var_90.Text)) = CDbl(1)) Then
  loc_F9C52C:   Set var_8C = Me.Cmd
  loc_F9C532:   Call 0.Method_Proc_24_80_F9C5B40 (CInt(0), var_90)
  loc_F9C53A:   var_90.Enabled = False
  loc_F9C546: End If
  loc_F9C549: Call Proc_24_79_E404F4(var_86)
  loc_F9C55C: Set var_8C = Me.Txt
  loc_F9C562: Call 0.Method_Proc_24_80_F9C5B40 (CInt(&H47), var_90)
  loc_F9C587: If (CDbl(Val(var_90.Text)) = CDbl(var_86)) Then
  loc_F9C597:   Set var_8C = Me.Cmd
  loc_F9C59D:   Call 0.Method_Proc_24_80_F9C5B40 (CInt(1), var_90)
  loc_F9C5A5:   var_90.Enabled = False
  loc_F9C5B1: End If
  loc_F9C5B1: Exit Sub
End Sub

Public Sub Proc_24_81_13456CC
  'Data Table: 5A2370
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_1344EC0: On Error Goto loc_13456C6
  loc_1344EC7: Set var_88 = Me.FGrid
  loc_1344ED6: var_88.Cols = &H1F
  loc_1344EE7: var_88.Rows = 1
  loc_1344EEC: var_98 = "1"
  loc_1344F09: var_88.FixedCols = 1
  loc_1344F1A: var_88.FixedRows = 1
  loc_1344F33: global_56 = CStr(CLng(var_88.BackColor))
  loc_1344F40: var_98 = CVar(CLng(0)) 'Long
  loc_1344F45: var_CC = &H1F4
  loc_1344F51: LateIdCallSt
  loc_1344F59: var_98 = 0
  loc_1344F65: var_CC = CVar(CLng(0)) 'Long
  loc_1344F6A: var_EC = "SNo"
  loc_1344F73: LateIdCallSt
  loc_1344F7E: var_98 = CVar(CLng(1)) 'Long
  loc_1344F83: var_CC = &H3E8
  loc_1344F8F: LateIdCallSt
  loc_1344F97: var_98 = 0
  loc_1344FA3: var_CC = CVar(CLng(1)) 'Long
  loc_1344FA8: var_EC = "Name"
  loc_1344FB1: LateIdCallSt
  loc_1344FBC: var_98 = CVar(CLng(2)) 'Long
  loc_1344FC1: var_CC = &H3E8
  loc_1344FCD: LateIdCallSt
  loc_1344FD5: var_98 = 0
  loc_1344FE1: var_CC = CVar(CLng(2)) 'Long
  loc_1344FE6: var_EC = "Add1"
  loc_1344FEF: LateIdCallSt
  loc_1344FFA: var_98 = CVar(CLng(3)) 'Long
  loc_1344FFF: var_CC = &H3E8
  loc_134500B: LateIdCallSt
  loc_1345013: var_98 = 0
  loc_134501F: var_CC = CVar(CLng(3)) 'Long
  loc_1345024: var_EC = "Add2"
  loc_134502D: LateIdCallSt
  loc_1345038: var_98 = CVar(CLng(4)) 'Long
  loc_134503D: var_CC = &H3E8
  loc_1345049: LateIdCallSt
  loc_1345051: var_98 = 0
  loc_134505D: var_CC = CVar(CLng(4)) 'Long
  loc_1345062: var_EC = "Nationality"
  loc_134506B: LateIdCallSt
  loc_1345076: var_98 = CVar(CLng(5)) 'Long
  loc_134507B: var_CC = &H3E8
  loc_1345087: LateIdCallSt
  loc_134508F: var_98 = 0
  loc_134509B: var_CC = CVar(CLng(5)) 'Long
  loc_13450A0: var_EC = "Occu"
  loc_13450A9: LateIdCallSt
  loc_13450B1: var_98 = 0
  loc_13450BD: var_CC = CVar(CLng(6)) 'Long
  loc_13450C2: var_EC = "ArrFrom"
  loc_13450CB: LateIdCallSt
  loc_13450D6: var_98 = CVar(CLng(6)) 'Long
  loc_13450DB: var_CC = &H3E8
  loc_13450E7: LateIdCallSt
  loc_13450EF: var_98 = 0
  loc_13450FB: var_CC = CVar(CLng(7)) 'Long
  loc_1345100: var_EC = "Dest"
  loc_1345109: LateIdCallSt
  loc_1345114: var_98 = CVar(CLng(7)) 'Long
  loc_1345119: var_CC = &H3E8
  loc_1345125: LateIdCallSt
  loc_134512D: var_98 = 0
  loc_1345139: var_CC = CVar(CLng(8)) 'Long
  loc_134513E: var_EC = "ModeTravelUsed"
  loc_1345147: LateIdCallSt
  loc_1345152: var_98 = CVar(CLng(8)) 'Long
  loc_1345157: var_CC = &H3E8
  loc_1345163: LateIdCallSt
  loc_134516B: var_98 = 0
  loc_1345177: var_CC = CVar(CLng(9)) 'Long
  loc_134517C: var_EC = "PurVisit"
  loc_1345185: LateIdCallSt
  loc_1345190: var_98 = CVar(CLng(9)) 'Long
  loc_1345195: var_CC = &H3E8
  loc_13451A1: LateIdCallSt
  loc_13451A9: var_98 = 0
  loc_13451B5: var_CC = CVar(CLng(&HA)) 'Long
  loc_13451BA: var_EC = "DateArr"
  loc_13451C3: LateIdCallSt
  loc_13451CE: var_98 = CVar(CLng(&HA)) 'Long
  loc_13451D3: var_CC = &H3E8
  loc_13451DF: LateIdCallSt
  loc_13451E7: var_98 = 0
  loc_13451F3: var_CC = CVar(CLng(&HB)) 'Long
  loc_13451F8: var_EC = "ArrPlace"
  loc_1345201: LateIdCallSt
  loc_134520C: var_98 = CVar(CLng(&HB)) 'Long
  loc_1345211: var_CC = &H3E8
  loc_134521D: LateIdCallSt
  loc_1345225: var_98 = 0
  loc_1345231: var_CC = CVar(CLng(&HC)) 'Long
  loc_1345236: var_EC = "AddIndia"
  loc_134523F: LateIdCallSt
  loc_134524A: var_98 = CVar(CLng(&HC)) 'Long
  loc_134524F: var_CC = &H3E8
  loc_134525B: LateIdCallSt
  loc_1345263: var_98 = 0
  loc_134526F: var_CC = CVar(CLng(&HD)) 'Long
  loc_1345274: var_EC = "PassNo"
  loc_134527D: LateIdCallSt
  loc_1345288: var_98 = CVar(CLng(&HD)) 'Long
  loc_134528D: var_CC = &H3E8
  loc_1345299: LateIdCallSt
  loc_13452A1: var_98 = 0
  loc_13452AD: var_CC = CVar(CLng(&HE)) 'Long
  loc_13452B2: var_EC = "IssDate"
  loc_13452BB: LateIdCallSt
  loc_13452C6: var_98 = CVar(CLng(&HE)) 'Long
  loc_13452CB: var_CC = &H3E8
  loc_13452D7: LateIdCallSt
  loc_13452DF: var_98 = 0
  loc_13452EB: var_CC = CVar(CLng(&HF)) 'Long
  loc_13452F0: var_EC = "IssPlace"
  loc_13452F9: LateIdCallSt
  loc_1345304: var_98 = CVar(CLng(&HF)) 'Long
  loc_1345309: var_CC = &H3E8
  loc_1345315: LateIdCallSt
  loc_134531D: var_98 = 0
  loc_1345329: var_CC = CVar(CLng(&H10)) 'Long
  loc_134532E: var_EC = "PassExpDate"
  loc_1345337: LateIdCallSt
  loc_1345342: var_98 = CVar(CLng(&H10)) 'Long
  loc_1345347: var_CC = &H3E8
  loc_1345353: LateIdCallSt
  loc_134535B: var_98 = 0
  loc_1345367: var_CC = CVar(CLng(&H11)) 'Long
  loc_134536C: var_EC = "Age"
  loc_1345375: LateIdCallSt
  loc_1345380: var_98 = CVar(CLng(&H11)) 'Long
  loc_1345385: var_CC = &H3E8
  loc_1345391: LateIdCallSt
  loc_1345399: var_98 = 0
  loc_13453A5: var_CC = CVar(CLng(&H12)) 'Long
  loc_13453AA: var_EC = "PropStay"
  loc_13453B3: LateIdCallSt
  loc_13453BE: var_98 = CVar(CLng(&H12)) 'Long
  loc_13453C3: var_CC = &H3E8
  loc_13453CF: LateIdCallSt
  loc_13453D7: var_98 = 0
  loc_13453E3: var_CC = CVar(CLng(&H13)) 'Long
  loc_13453E8: var_EC = "ModeTravel"
  loc_13453F1: LateIdCallSt
  loc_13453FC: var_98 = CVar(CLng(&H13)) 'Long
  loc_1345401: var_CC = &H3E8
  loc_134540D: LateIdCallSt
  loc_1345415: var_98 = 0
  loc_1345421: var_CC = CVar(CLng(&H14)) 'Long
  loc_1345426: var_EC = "Extension"
  loc_134542F: LateIdCallSt
  loc_134543A: var_98 = CVar(CLng(&H14)) 'Long
  loc_134543F: var_CC = &H3E8
  loc_134544B: LateIdCallSt
  loc_1345453: var_98 = 0
  loc_134545F: var_CC = CVar(CLng(&H15)) 'Long
  loc_1345464: var_EC = "VisaType"
  loc_134546D: LateIdCallSt
  loc_1345478: var_98 = CVar(CLng(&H15)) 'Long
  loc_134547D: var_CC = &H3E8
  loc_1345489: LateIdCallSt
  loc_1345491: var_98 = 0
  loc_134549D: var_CC = CVar(CLng(&H16)) 'Long
  loc_13454A2: var_EC = "VisaNo"
  loc_13454AB: LateIdCallSt
  loc_13454B6: var_98 = CVar(CLng(&H16)) 'Long
  loc_13454BB: var_CC = &H3E8
  loc_13454C7: LateIdCallSt
  loc_13454CF: var_98 = 0
  loc_13454DB: var_CC = CVar(CLng(&H17)) 'Long
  loc_13454E0: var_EC = "VisaIssDate"
  loc_13454E9: LateIdCallSt
  loc_13454F4: var_98 = CVar(CLng(&H17)) 'Long
  loc_13454F9: var_CC = &H3E8
  loc_1345505: LateIdCallSt
  loc_134550D: var_98 = 0
  loc_1345519: var_CC = CVar(CLng(&H18)) 'Long
  loc_134551E: var_EC = "VisaIssPlace"
  loc_1345527: LateIdCallSt
  loc_1345532: var_98 = CVar(CLng(&H18)) 'Long
  loc_1345537: var_CC = &H3E8
  loc_1345543: LateIdCallSt
  loc_134554B: var_98 = 0
  loc_1345557: var_CC = CVar(CLng(&H19)) 'Long
  loc_134555C: var_EC = "ExpDate"
  loc_1345565: LateIdCallSt
  loc_1345570: var_98 = CVar(CLng(&H19)) 'Long
  loc_1345575: var_CC = &H3E8
  loc_1345581: LateIdCallSt
  loc_1345589: var_98 = 0
  loc_1345595: var_CC = CVar(CLng(&H1A)) 'Long
  loc_134559A: var_EC = "VisaDuration"
  loc_13455A3: LateIdCallSt
  loc_13455AE: var_98 = CVar(CLng(&H1A)) 'Long
  loc_13455B3: var_CC = &H3E8
  loc_13455BF: LateIdCallSt
  loc_13455C7: var_98 = 0
  loc_13455D3: var_CC = CVar(CLng(&H1B)) 'Long
  loc_13455D8: var_EC = "WorkPermit"
  loc_13455E1: LateIdCallSt
  loc_13455EC: var_98 = CVar(CLng(&H1B)) 'Long
  loc_13455F1: var_CC = &H3E8
  loc_13455FD: LateIdCallSt
  loc_1345605: var_98 = 0
  loc_1345611: var_CC = CVar(CLng(&H1C)) 'Long
  loc_1345616: var_EC = "VisaAuth"
  loc_134561F: LateIdCallSt
  loc_134562A: var_98 = CVar(CLng(&H1C)) 'Long
  loc_134562F: var_CC = &H3E8
  loc_134563B: LateIdCallSt
  loc_1345643: var_98 = 0
  loc_134564F: var_CC = CVar(CLng(&H1D)) 'Long
  loc_1345654: var_EC = "NationCode"
  loc_134565D: LateIdCallSt
  loc_1345668: var_98 = CVar(CLng(&H1C)) 'Long
  loc_134566D: var_CC = &H3E8
  loc_1345679: LateIdCallSt
  loc_1345681: var_98 = 0
  loc_134568D: var_CC = CVar(CLng(&H1E)) 'Long
  loc_1345692: var_EC = "SerialNo"
  loc_134569B: LateIdCallSt
  loc_13456A6: var_98 = CVar(CLng(&H1E)) 'Long
  loc_13456AB: var_CC = &H3E8
  loc_13456B7: LateIdCallSt
  loc_13456C1: Set var_88 = Nothing 
  loc_13456C5: Exit Sub
  loc_13456C6: ' Referenced from: 1344EC0
  loc_13456C6: Proc_6_60_E62BC4(var_88, var_CC, var_98, var_88, var_EC, var_CC, var_98, var_88)
  loc_13456CB: Exit Sub
End Sub

Public Sub Proc_24_82_104A2D8
  'Data Table: 5A2370
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_104A068: On Error Goto loc_104A2D2
  loc_104A06F: Set var_88 = Me.FGrid2
  loc_104A07E: var_88.Cols = 7
  loc_104A08F: var_88.Rows = 1
  loc_104A0A0: var_88.Width = CVar(CDbl(11490))
  loc_104A0B1: var_88.Height = CVar(CDbl(2000))
  loc_104A0B6: var_98 = vbNullString
  loc_104A0D3: var_88.FixedCols = 0
  loc_104A0E4: var_88.FixedRows = 1
  loc_104A0FD: global_56 = CStr(CLng(var_88.BackColor))
  loc_104A10A: var_98 = CVar(CLng(0)) 'Long
  loc_104A10F: var_CC = &H294
  loc_104A11B: LateIdCallSt
  loc_104A123: var_98 = 0
  loc_104A12F: var_CC = CVar(CLng(0)) 'Long
  loc_104A134: var_EC = "Leader"
  loc_104A13D: LateIdCallSt
  loc_104A148: var_98 = CVar(CLng(1)) 'Long
  loc_104A14D: var_CC = &HBB8
  loc_104A159: LateIdCallSt
  loc_104A161: var_98 = 0
  loc_104A16D: var_CC = CVar(CLng(1)) 'Long
  loc_104A172: var_EC = "Name"
  loc_104A17B: LateIdCallSt
  loc_104A190: var_88.ColAlignment = CVar(CInt(1))
  loc_104A198: var_98 = CVar(CLng(2)) 'Long
  loc_104A19D: var_CC = &HBB8
  loc_104A1A9: LateIdCallSt
  loc_104A1B1: var_98 = 0
  loc_104A1BD: var_CC = CVar(CLng(2)) 'Long
  loc_104A1C2: var_EC = "Add1"
  loc_104A1CB: LateIdCallSt
  loc_104A1D6: var_98 = CVar(CLng(3)) 'Long
  loc_104A1DB: var_CC = &HBB8
  loc_104A1E7: LateIdCallSt
  loc_104A1EF: var_98 = 0
  loc_104A1FB: var_CC = CVar(CLng(3)) 'Long
  loc_104A200: var_EC = "Add2"
  loc_104A209: LateIdCallSt
  loc_104A214: var_98 = CVar(CLng(4)) 'Long
  loc_104A219: var_CC = &H5DC
  loc_104A225: LateIdCallSt
  loc_104A22D: var_98 = 0
  loc_104A239: var_CC = CVar(CLng(4)) 'Long
  loc_104A23E: var_EC = "Nationality"
  loc_104A247: LateIdCallSt
  loc_104A252: var_98 = CVar(CLng(5)) 'Long
  loc_104A257: var_CC = 0
  loc_104A263: LateIdCallSt
  loc_104A26B: var_98 = 0
  loc_104A277: var_CC = CVar(CLng(5)) 'Long
  loc_104A27C: var_EC = "Prof"
  loc_104A285: LateIdCallSt
  loc_104A290: var_98 = CVar(CLng(6)) 'Long
  loc_104A295: var_CC = 0
  loc_104A2A1: LateIdCallSt
  loc_104A2A9: var_98 = 0
  loc_104A2B5: var_CC = CVar(CLng(6)) 'Long
  loc_104A2BA: var_EC = "mProf"
  loc_104A2C3: LateIdCallSt
  loc_104A2CD: Set var_88 = Nothing 
  loc_104A2D1: Exit Sub
  loc_104A2D2: ' Referenced from: 104A068
  loc_104A2D2: Proc_6_60_E62BC4(var_88, var_EC, var_CC, var_98, var_88, var_CC, var_98, var_88)
  loc_104A2D7: Exit Sub
End Sub

Public Sub Proc_24_83_13DD250(arg_C) '13DD250
  'Data Table: 5A2370
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_F0 As TextBox
  loc_13DC86C: Set var_88 = Me.FGrid
  loc_13DC873: var_98 = CVar(CLng(arg_C)) 'Long
  loc_13DC87B: var_B8 = CVar(CLng(0)) 'Long
  loc_13DC885: var_D8 = CVar(CStr(arg_C)) 'String
  loc_13DC88C: LateIdCallSt
  loc_13DC8B3: Set var_EC = Me.Txt
  loc_13DC8B9: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H24), var_F0, CVar(CLng(1)), CVar(CLng(arg_C)))
  loc_13DC8D1: var_110 = CVar(CStr(Trim(CVar(var_F0)))) 'String
  loc_13DC8D8: LateIdCallSt
  loc_13DC908: Set var_EC = Me.Txt
  loc_13DC90E: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H27), var_F0, CVar(CLng(2)), CVar(CLng(arg_C)), var_88)
  loc_13DC92D: LateIdCallSt
  loc_13DC95D: Set var_EC = Me.Txt
  loc_13DC963: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H26), var_F0, CVar(CLng(3)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DC982: LateIdCallSt
  loc_13DC9B2: Set var_EC = Me.Txt
  loc_13DC9B8: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H25), var_F0, CVar(CLng(4)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DC9D0: var_110 = CVar(CStr(Trim(CVar(var_F0)))) 'String
  loc_13DC9D7: LateIdCallSt
  loc_13DCA0A: Set var_EC = Me.Txt
  loc_13DCA10: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H25), var_F0, var_114, CVar(CLng(&H1D)), CVar(CLng(arg_C)), var_88)
  loc_13DCA18: var_110 = var_F0.Tag
  loc_13DCA36: LateIdCallSt
  loc_13DCA6A: Set var_EC = Me.Txt
  loc_13DCA70: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H29), var_F0, CVar(CLng(5)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_114)))))
  loc_13DCA8F: LateIdCallSt
  loc_13DCABF: Set var_EC = Me.Txt
  loc_13DCAC5: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H28), var_F0, CVar(CLng(6)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCAE4: LateIdCallSt
  loc_13DCB14: Set var_EC = Me.Txt
  loc_13DCB1A: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H2B), var_F0, CVar(CLng(7)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCB39: LateIdCallSt
  loc_13DCB69: Set var_EC = Me.Txt
  loc_13DCB6F: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H2D), var_F0, CVar(CLng(8)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCB8E: LateIdCallSt
  loc_13DCBBE: Set var_EC = Me.Txt
  loc_13DCBC4: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H2A), var_F0, CVar(CLng(9)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCBE3: LateIdCallSt
  loc_13DCC13: Set var_EC = Me.Txt
  loc_13DCC19: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H17), var_F0, CVar(CLng(&HA)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCC38: LateIdCallSt
  loc_13DCC68: Set var_EC = Me.Txt
  loc_13DCC6E: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H38), var_F0, CVar(CLng(&HB)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCC8D: LateIdCallSt
  loc_13DCCBD: Set var_EC = Me.Txt
  loc_13DCCC3: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H39), var_F0, CVar(CLng(&HC)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCCE2: LateIdCallSt
  loc_13DCD12: Set var_EC = Me.Txt
  loc_13DCD18: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H31), var_F0, CVar(CLng(&HD)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCD37: LateIdCallSt
  loc_13DCD67: Set var_EC = Me.Txt
  loc_13DCD6D: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H2F), var_F0, CVar(CLng(&HE)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCD8C: LateIdCallSt
  loc_13DCDBC: Set var_EC = Me.Txt
  loc_13DCDC2: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H30), var_F0, CVar(CLng(&HF)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCDE1: LateIdCallSt
  loc_13DCE11: Set var_EC = Me.Txt
  loc_13DCE17: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H40), var_F0, CVar(CLng(&H10)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCE36: LateIdCallSt
  loc_13DCE66: Set var_EC = Me.Txt
  loc_13DCE6C: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H2E), var_F0, CVar(CLng(&H11)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCE8B: LateIdCallSt
  loc_13DCEBB: Set var_EC = Me.Txt
  loc_13DCEC1: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H2C), var_F0, CVar(CLng(&H12)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCEE0: LateIdCallSt
  loc_13DCF10: Set var_EC = Me.Txt
  loc_13DCF16: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H3A), var_F0, CVar(CLng(&H13)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCF35: LateIdCallSt
  loc_13DCF65: Set var_EC = Me.Txt
  loc_13DCF6B: Call 0.Method_Proc_24_83_13DD2500 (CInt(&HE), var_F0, CVar(CLng(&H14)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCF8A: LateIdCallSt
  loc_13DCFBA: Set var_EC = Me.Txt
  loc_13DCFC0: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H37), var_F0, CVar(CLng(&H15)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DCFDF: LateIdCallSt
  loc_13DD00F: Set var_EC = Me.Txt
  loc_13DD015: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H35), var_F0, CVar(CLng(&H16)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DD034: LateIdCallSt
  loc_13DD064: Set var_EC = Me.Txt
  loc_13DD06A: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H33), var_F0, CVar(CLng(&H17)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DD089: LateIdCallSt
  loc_13DD0B9: Set var_EC = Me.Txt
  loc_13DD0BF: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H36), var_F0, CVar(CLng(&H18)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DD0DE: LateIdCallSt
  loc_13DD10E: Set var_EC = Me.Txt
  loc_13DD114: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H32), var_F0, CVar(CLng(&H19)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DD133: LateIdCallSt
  loc_13DD163: Set var_EC = Me.Txt
  loc_13DD169: Call 0.Method_Proc_24_83_13DD2500 (CInt(&H34), var_F0, CVar(CLng(&H1A)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DD188: LateIdCallSt
  loc_13DD1B8: Set var_EC = Me.Txt
  loc_13DD1BE: Call 0.Method_Proc_24_83_13DD2500 (CInt(&HF), var_F0, CVar(CLng(&H1B)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DD1DD: LateIdCallSt
  loc_13DD20D: Set var_EC = Me.Txt
  loc_13DD213: Call 0.Method_Proc_24_83_13DD2500 (CInt(9), var_F0, CVar(CLng(&H1C)), CVar(CLng(arg_C)), var_88, CVar(CStr(Trim(CVar(var_F0)))))
  loc_13DD22B: var_110 = CVar(CStr(Trim(CVar(var_F0)))) 'String
  loc_13DD232: LateIdCallSt
  loc_13DD248: Set var_88 = Nothing 
  loc_13DD24C: Exit Sub
End Sub

Public Sub Proc_24_84_149E01C
  'Data Table: 5A2370
  Dim var_8E As Integer
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim unk_5A23A3 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_8C As Recordset15
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_11C As Variant
  loc_149D36A: var_8E = 1
  loc_149D3C3: unk_5A23A3.Execute CStr("SELECT * FROM GUESTPROFFOR WHERE CODE='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_149D3CE: Set var_88 = var_120
  loc_149D3FC: If (var_88.RecordCount > 0) Then
  loc_149D3FF:   ' Referenced from: 149DFDA
  loc_149D40E:   If Not(var_88.EOF) Then
  loc_149D415:     Set var_12C = Me.FGrid
  loc_149D41C:     var_A4 = CVar(CLng(var_8E)) 'Long
  loc_149D424:     var_E8 = CVar(CLng(0)) 'Long
  loc_149D42E:     var_B8 = CVar(CStr(var_8E)) 'String
  loc_149D435:     LateIdCallSt
  loc_149D493:     unk_5A23A3.Execute CStr("SELECT Code,Name FROM Country WHERE CODE='" & var_88.Fields.Item("Nationality").Value & "'"), var_11C, -1
  loc_149D49E:     Set var_8C = var_120
  loc_149D4CC:     If (var_8C.RecordCount > 0) Then
  loc_149D4D3:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D4DB:       var_10C = CVar(CLng(&H1D)) 'Long
  loc_149D50B:       var_D8 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_149D512:       LateIdCallSt
  loc_149D52C:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D534:       var_10C = CVar(CLng(4)) 'Long
  loc_149D564:       var_D8 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_149D56B:       LateIdCallSt
  loc_149D581:     End If
  loc_149D585:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D58D:     var_10C = CVar(CLng(1)) 'Long
  loc_149D5BD:     var_D8 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_149D5C4:     LateIdCallSt
  loc_149D5DE:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D5E6:     var_10C = CVar(CLng(2)) 'Long
  loc_149D616:     var_D8 = CVar(CStr(var_88.Fields.Item("Add1").Value)) 'String
  loc_149D61D:     LateIdCallSt
  loc_149D637:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D63F:     var_10C = CVar(CLng(3)) 'Long
  loc_149D66F:     var_D8 = CVar(CStr(var_88.Fields.Item("Add2").Value)) 'String
  loc_149D676:     LateIdCallSt
  loc_149D690:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D698:     var_10C = CVar(CLng(5)) 'Long
  loc_149D6C8:     var_D8 = CVar(CStr(var_88.Fields.Item("Occu").Value)) 'String
  loc_149D6CF:     LateIdCallSt
  loc_149D6E9:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D6F1:     var_10C = CVar(CLng(6)) 'Long
  loc_149D721:     var_D8 = CVar(CStr(var_88.Fields.Item("ArrFrom").Value)) 'String
  loc_149D728:     LateIdCallSt
  loc_149D742:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D74A:     var_10C = CVar(CLng(7)) 'Long
  loc_149D77A:     var_D8 = CVar(CStr(var_88.Fields.Item("dest").Value)) 'String
  loc_149D781:     LateIdCallSt
  loc_149D79B:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D7A3:     var_10C = CVar(CLng(9)) 'Long
  loc_149D7D3:     var_D8 = CVar(CStr(var_88.Fields.Item("PurVisit").Value)) 'String
  loc_149D7DA:     LateIdCallSt
  loc_149D7F4:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D7FC:     var_10C = CVar(CLng(&H13)) 'Long
  loc_149D82C:     var_D8 = CVar(CStr(var_88.Fields.Item("ModeTravel").Value)) 'String
  loc_149D833:     LateIdCallSt
  loc_149D869:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149D871:     var_13C = CVar(CLng(&HA)) 'Long
  loc_149D89E:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("DateArr")), "dd/MMM/yyyy"))) 'String
  loc_149D8A5:     LateIdCallSt
  loc_149D8BF:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D8C7:     var_10C = CVar(CLng(&HB)) 'Long
  loc_149D8F7:     var_D8 = CVar(CStr(var_88.Fields.Item("ArrPlace").Value)) 'String
  loc_149D8FE:     LateIdCallSt
  loc_149D918:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D920:     var_10C = CVar(CLng(&HC)) 'Long
  loc_149D950:     var_D8 = CVar(CStr(var_88.Fields.Item("AddIndia").Value)) 'String
  loc_149D957:     LateIdCallSt
  loc_149D971:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149D979:     var_10C = CVar(CLng(&HD)) 'Long
  loc_149D9A9:     var_D8 = CVar(CStr(var_88.Fields.Item("PassNo").Value)) 'String
  loc_149D9B0:     LateIdCallSt
  loc_149D9E6:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149D9EE:     var_13C = CVar(CLng(&HE)) 'Long
  loc_149DA1B:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("IssDate")), "dd/MMM/yyyy"))) 'String
  loc_149DA22:     LateIdCallSt
  loc_149DA3C:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DA44:     var_10C = CVar(CLng(&HF)) 'Long
  loc_149DA74:     var_D8 = CVar(CStr(var_88.Fields.Item("IssPlace").Value)) 'String
  loc_149DA7B:     LateIdCallSt
  loc_149DA95:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DA9D:     var_10C = CVar(CLng(&H11)) 'Long
  loc_149DACD:     var_D8 = CVar(CStr(var_88.Fields.Item("Age").Value)) 'String
  loc_149DAD4:     LateIdCallSt
  loc_149DAEE:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DAF6:     var_10C = CVar(CLng(&H12)) 'Long
  loc_149DB26:     var_D8 = CVar(CStr(var_88.Fields.Item("PropStay").Value)) 'String
  loc_149DB2D:     LateIdCallSt
  loc_149DB47:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DB4F:     var_10C = CVar(CLng(8)) 'Long
  loc_149DB7F:     var_D8 = CVar(CStr(var_88.Fields.Item("ModeTravelUsed").Value)) 'String
  loc_149DB86:     LateIdCallSt
  loc_149DBA0:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DBA8:     var_10C = CVar(CLng(&H15)) 'Long
  loc_149DBD8:     var_D8 = CVar(CStr(var_88.Fields.Item("VisaType").Value)) 'String
  loc_149DBDF:     LateIdCallSt
  loc_149DBF9:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DC01:     var_10C = CVar(CLng(&H16)) 'Long
  loc_149DC31:     var_D8 = CVar(CStr(var_88.Fields.Item("VisaNo").Value)) 'String
  loc_149DC38:     LateIdCallSt
  loc_149DC6E:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149DC76:     var_13C = CVar(CLng(&H17)) 'Long
  loc_149DCA3:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("VisaIssDate")), "dd/MMM/yyyy"))) 'String
  loc_149DCAA:     LateIdCallSt
  loc_149DCC4:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DCCC:     var_10C = CVar(CLng(&H18)) 'Long
  loc_149DCFC:     var_D8 = CVar(CStr(var_88.Fields.Item("VisaIssPlace").Value)) 'String
  loc_149DD03:     LateIdCallSt
  loc_149DD39:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149DD41:     var_13C = CVar(CLng(&H19)) 'Long
  loc_149DD6E:     var_11C = CVar(CStr(Format(CVar(var_88.Fields.Item("ExpDate")), "dd/MMM/yyyy"))) 'String
  loc_149DD75:     LateIdCallSt
  loc_149DD8F:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_149DD97:     var_10C = CVar(CLng(&H1B)) 'Long
  loc_149DDC7:     var_D8 = CVar(CStr(var_88.Fields.Item("WorkPermit").Value)) 'String
  loc_149DDCE:     LateIdCallSt
  loc_149DE04:     var_E8 = CVar(CLng(var_8E)) 'Long
  loc_149DE40:     LateIdCallSt
  loc_149DE8F:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VisaIssAuth")), CVar(CLng(&H1C)), CVar(CLng(var_8E)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("PassExpDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_149DE96:     LateIdCallSt
  loc_149DEE1:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VisaDuration")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_12C, var_D8, CVar(CLng(&H10)))) 'String
  loc_149DEE8:     LateIdCallSt
  loc_149DF33:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Extension")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_12C, var_D8)) 'String
  loc_149DF3A:     LateIdCallSt
  loc_149DF58:     var_10C = CVar(CLng(&H1E)) 'Long
  loc_149DF74:     var_A8 = var_88.Fields.Item("SerialNo")
  loc_149DF85:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_A8), var_10C, CVar(CLng(var_8E)), var_12C, var_D8)) 'String
  loc_149DF8C:     LateIdCallSt
  loc_149DFA4:     var_8E = (var_8E + 1)
  loc_149DFAA:     var_88.MoveNext
  loc_149DFB5:     var_126 = var_88.EOF
  loc_149DFC0:     If (var_126 = 0) Then
  loc_149DFC3:       var_A4 = vbNullString
  loc_149DFD4:     End If
  loc_149DFD6:     Set var_12C = Nothing 
  loc_149DFDA:     GoTo loc_149D3FF
  loc_149DFDD:   End If
  loc_149DFDD: End If
  loc_149DFE0: Call Proc_24_79_E404F4(var_126, FGrid.DispID_10000, var_A4, var_8E, var_12C, var_D8)
  loc_149DFF8: Set var_94 = Me.Txt
  loc_149DFFE: Call 0.Method_Proc_24_84_149E01C0 (CInt(&H47), var_A8, CStr(var_126), var_E8)
  loc_149E006: var_A8.Text = var_12C
  loc_149E015: Call Proc_24_80_F9C5B4(var_D8, var_10C)
  loc_149E01A: Exit Sub
End Sub

Public Sub Proc_24_85_1016D1C
  'Data Table: 5A2370
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  Dim var_148 As Variant
  Dim var_94 As Long
  loc_1016B3A: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1016B5D: var_D8 = CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & "CFORM" & "' And VP.Date_From<=") 'String
  loc_1016B6B: Proc_6_7_F25D88(var_C8, MemVar_1F920EC, var_D8)
  loc_1016B73: var_E8 = var_12C & var_C8 
  loc_1016B7C: var_108 = var_E8 & " Order By VP.Date_From DESC" 
  loc_1016B87: Me.Connection15.Execute CStr(var_108), -1, var_130
  loc_1016B92: Set var_8C = var_130
  loc_1016BC8: If (var_8C.RecordCount <= 0) Then
  loc_1016BE4:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_108)
  loc_1016BFC:   Proc_24_85_1016D1C = 0
  loc_1016C02: End If
  loc_1016C16: If (var_8C.RecordCount > 0) Then
  loc_1016C33:   var_148 = var_8C.Fields.Item("Number_Method")
  loc_1016C55:   If (var_148.Value = "Manual") Then
  loc_1016C66:     Set var_130 = Me.Txt
  loc_1016C6C:     Call 0.Method_Proc_24_85_1016D1C0 (CInt(&H48), var_148)
  loc_1016C82:     var_94 = CLng(Val(var_148.Text))
  loc_1016C92:   Else
  loc_1016CAC:     var_148 = var_8C.Fields.Item("start_srl_no")
  loc_1016CC1:     var_D8 = (var_148.Value + 1)
  loc_1016CC7:     var_94 = CLng(var_D8)
  loc_1016CD8:   End If
  loc_1016CD8: End If
  loc_1016CEB: Set var_130 = Me.Txt
  loc_1016CF1: Call 0.Method_Proc_24_85_1016D1C0 (CInt(&H48), var_148, CStr(var_94))
  loc_1016CF9: var_148.Text = var_94
  loc_1016D13: Set var_8C = Nothing
  loc_1016D16: Proc_24_85_1016D1C = var_94
End Sub

Public Sub Proc_24_86_E7E760
  'Data Table: 5A2370
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_E7E71D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7E727:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7E72F:   var_D0 = CVar(CLng(0)) 'Long
  loc_E7E739:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7E741:   Set var_8C = Me.FGrid
  loc_E7E747:   LateIdCallSt
  loc_E7E758: Next var_A0 'Integer
  loc_E7E75D: Exit Sub
End Sub

Public Sub Proc_24_87_FBED68
  'Data Table: 5A2370
  Dim var_90 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_94 As String
  loc_FBEBCE: Set var_8C = Me.Txt
  loc_FBEBD4: Call 0.Method_Proc_24_87_FBED680 (CInt(&H47), var_90)
  loc_FBEBF8: If (CDbl(Val(var_90.Text)) <> CDbl(1)) Then
  loc_FBEC32:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FBEC54:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FBEC65:       Set var_8C = Me.Txt
  loc_FBEC6B:       Call 0.Method_Proc_24_87_FBED680 (CInt(&H47), var_90)
  loc_FBEC81:       var_86 = CInt(Val(var_90.Text))
  loc_FBEC9B:       Set var_8C = Me.FGrid
  loc_FBECAC:       Call Proc_24_86_E7E760(FGrid.DispID_10000, CVar(CLng(var_86)))
  loc_FBECB4:       Call Proc_24_79_E404F4(var_116)
  loc_FBECCC:       Set var_8C = Me.Txt
  loc_FBECD2:       Call 0.Method_Proc_24_87_FBED680 (CInt(&H47), var_90)
  loc_FBECF7:       Set var_8C = Me.Txt
  loc_FBECFD:       Call 0.Method_Proc_24_87_FBED680 (CInt(&H47), var_90)
  loc_FBED05:       var_94 = CStr(var_116)
  loc_FBED16:       Call Proc_24_78_13A8230(CInt(Val(var_94)))
  loc_FBED25:       Call Proc_24_80_F9C5B4(var_86)
  loc_FBED2A:     End If
  loc_FBED2A:   End If
  loc_FBED2D: Else
  loc_FBED33:   Call 0.Method_arg_50 (var_94)
  loc_FBED54:   MsgBox("Primery Guest Information Can't be deleted!", &H10, CVar(var_94), var_F4, var_114)
  loc_FBED64: End If
  loc_FBED64: Exit Sub
End Sub

Public Sub Proc_24_88_EB7D1C(arg_C) 'EB7D1C
  'Data Table: 5A2370
  Dim Me As Recordset15
  loc_EB7C84: On Error Goto loc_EB7D15
  loc_EB7C8B: Set var_88 = Me.TopCtrl1
  loc_EB7C91: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EB7CAA: If (CStr() = "Add") Then
  loc_EB7CAD:   Exit Sub
  loc_EB7CAE: End If
  loc_EB7CC5: If (Me.RecordCount > 0) Then
  loc_EB7CCE:   Me.MoveFirst
  loc_EB7CDB:   If (arg_C <> vbNullString) Then
  loc_EB7D03:     Me.Find "SearchCode='" & arg_C & "'", 0, 1
  loc_EB7D0F:     Call MoveRec()
  loc_EB7D14:   End If
  loc_EB7D14: End If
  loc_EB7D14: Exit Sub
  loc_EB7D15: ' Referenced from: EB7C84
  loc_EB7D15: Proc_6_60_E62BC4(var_B4)
  loc_EB7D1A: Exit Sub
  loc_EB7D1B: Exit Sub
End Sub

Public Sub Proc_24_89_1020630(arg_C) '1020630
  'Data Table: 5A2370
  Dim var_98 As Variant
  Dim var_8C As Variant
  loc_102040A: Set var_8C = Me.Txt
  loc_1020410: Call 0.Method_Proc_24_89_1020630C (var_8E, var_86)
  loc_1020420: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1020436:   Set var_8C = Me.Txt
  loc_102043C:   Call 0.Method_Proc_24_89_10206300 (CInt(var_86), var_98)
  loc_1020444:   var_98.Enabled = arg_C
  loc_1020453: Next var_92 'Byte
  loc_1020465: Me.BtnVisa.Enabled = False
  loc_1020479: Me.FrameFor.Visible = False
  loc_102048D: Me.FrmFind.Visible = False
  loc_10204A2: Set var_8C = Me.Txt
  loc_10204A8: Call 0.Method_Proc_24_89_10206300 (CInt(&H48), var_98)
  loc_10204B0: var_98.Enabled = False
  loc_10204C9: Set var_8C = Me.Txt
  loc_10204CF: Call 0.Method_Proc_24_89_10206300 (CInt(&H47), var_98)
  loc_10204D7: var_98.Enabled = False
  loc_10204F0: Set var_8C = Me.Txt
  loc_10204F6: Call 0.Method_Proc_24_89_10206300 (CInt(&H12), var_98)
  loc_10204FE: var_98.Enabled = False
  loc_1020517: Set var_8C = Me.Txt
  loc_102051D: Call 0.Method_Proc_24_89_10206300 (CInt(&H45), var_98)
  loc_1020525: var_98.Enabled = False
  loc_102053E: Set var_8C = Me.Txt
  loc_1020544: Call 0.Method_Proc_24_89_10206300 (CInt(&H14), var_98)
  loc_102054C: var_98.Enabled = False
  loc_1020565: Set var_8C = Me.Txt
  loc_102056B: Call 0.Method_Proc_24_89_10206300 (CInt(&H13), var_98)
  loc_1020573: var_98.Enabled = False
  loc_102058C: Set var_8C = Me.Txt
  loc_1020592: Call 0.Method_Proc_24_89_10206300 (CInt(3), var_98)
  loc_102059A: var_98.Enabled = False
  loc_10205AA: Set var_8C = Me.TopCtrl1
  loc_10205B0: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000D()
  loc_10205C4: Me.btnAddGuestProf.Enabled = Not(CBool())
  loc_10205D7: Set var_8C = Me.TopCtrl1
  loc_10205DD: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000D()
  loc_10205F1: Me.btnWebProfile.Enabled = Not(CBool())
  loc_1020604: Set var_8C = Me.TopCtrl1
  loc_102060A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000D()
  loc_102061E: Me.CmdDummyGuestProf.Enabled = Not(CBool())
  loc_102062D: Exit Sub
End Sub

Public Sub Proc_24_90_FF13B0
  'Data Table: 5A2370
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_FF11BE: global_116 = vbNullString
  loc_FF11D0: Set var_8C = Me.Txt
  loc_FF11D6: Call 0.Method_Proc_24_90_FF13B0C (var_8E, var_86)
  loc_FF11E6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FF11FC:   Set var_8C = Me.Txt
  loc_FF1202:   Call 0.Method_Proc_24_90_FF13B00 (CInt(var_86), var_98)
  loc_FF120A:   var_98.Text = vbNullString
  loc_FF1226:   Set var_8C = Me.Txt
  loc_FF122C:   Call 0.Method_Proc_24_90_FF13B00 (CInt(var_86), var_98)
  loc_FF1234:   var_98.Tag = vbNullString
  loc_FF1243: Next var_92 'Byte
  loc_FF1260: Call 0.Method_Proc_24_90_FF13B00 (CInt(&HB), var_98)
  loc_FF1268: var_98.Text = global_84
  loc_FF1292: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_FF12A7: Me.GuestImage.Picture = Me.Txt
  loc_FF12C0: Me.GuestImage.Tag = vbNullString
  loc_FF12CE: Set var_8C = Me.GuestImage
  loc_FF12D4: var_8C.Visible = True
  loc_FF12FA: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_FF130F: Me.IdProofImage.Picture = var_8C
  loc_FF1328: Me.IdProofImage.Tag = vbNullString
  loc_FF1336: Set var_8C = Me.IdProofImage
  loc_FF133C: var_8C.Visible = True
  loc_FF1362: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_FF1377: Me.GuestSign.Picture = var_8C
  loc_FF1390: Me.GuestSign.Tag = vbNullString
  loc_FF13A4: Me.GuestSign.Visible = True
  loc_FF13AC: Exit Sub
End Sub

Public Sub Proc_24_91_FDA04C
  'Data Table: 5A2370
  loc_FD9E88: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_FD9E9A:   Me.DGCity.Visible = False
  loc_FD9EA2: End If
  loc_FD9EBE: If (CBool(Me.DGCountry.Visible) = &HFF) Then
  loc_FD9ED0:   Me.DGCountry.Visible = False
  loc_FD9ED8: End If
  loc_FD9EF4: If (CBool(Me.DGState.Visible) = &HFF) Then
  loc_FD9F06:   Me.DGState.Visible = False
  loc_FD9F0E: End If
  loc_FD9F2A: If (CBool(Me.DGGuestStatus.Visible) = &HFF) Then
  loc_FD9F3C:   Me.DGGuestStatus.Visible = False
  loc_FD9F44: End If
  loc_FD9F60: If (CBool(Me.DGNationality.Visible) = &HFF) Then
  loc_FD9F72:   Me.DGNationality.Visible = False
  loc_FD9F7A: End If
  loc_FD9F95: If (Me.FrmList.Visible = &HFF) Then
  loc_FD9FA4:   Me.FrmList.Visible = False
  loc_FD9FAC: End If
  loc_FD9FC7: If (Me.FrmList1.Visible = &HFF) Then
  loc_FD9FD6:   Me.FrmList1.Visible = False
  loc_FD9FDE: End If
  loc_FD9FFA: If (CBool(Me.DGZipCode.Visible) = &HFF) Then
  loc_FDA00C:   Me.DGZipCode.Visible = False
  loc_FDA014: End If
  loc_FDA030: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FDA042:   Me.FGPoint.Visible = False
  loc_FDA04A: End If
  loc_FDA04A: Exit Sub
End Sub

Public Sub Proc_24_92_16CC000
  'Data Table: 5A2370
  Dim var_D8 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_5A23A3 As Connection15
  Dim var_9C As Recordset15
  Dim var_88 As Integer
  Dim var_140 As String
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_12C As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_130 As Fields15
  Dim var_1F4 As Variant
  Dim var_25C As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_204 As Variant
  Dim var_86 As Integer
  loc_16CA670: On Error Goto loc_16CBFF8
  loc_16CA675: Close 1
  loc_16CA67E: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16CA68F: var_D8 = "Select GF.Name As GuestName,GF.Add1,GF.Add2,GF.Nationality,GF.MaritalStatus,GFor.Age,City.CityName AS CityName,GF.ZipCode AS Zip,State.Name AS StateName,GF.Gender,GFor.AddIndia,GFor.PurVisit,GFor.DateArr,GFor.ArrPlace,GFor.ArrFrom,GFor.PropStay,GFor.VisaIssAuth,GFor.Extension,Country.Name As CountryName,GFor.PassNo,GFor.IssDate,GFor.IssPlace,GFor.PassExpDate,GFor.VisaNo,GFor.VisaIssDate,GFor.VisaIssPlace,GFor.ExpDate AS VisaExpDate,GFor.VisaDuration,RO.ChkInDate,RO.DepDate From (((((RoomOcc RO Left Join GuestProf GF ON RO.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN Country ON City.Country = Country.Code) Where GF.Type='Foreign' And RO.FolioNo IN (Select FolioNo From GuestFolio Where GuestProf='"
  loc_16CA6CA: var_108 = var_D8 & Me.Fields.Item("SearchCode").Value & "')" 
  loc_16CA6CE: var_10C = CStr(var_108)
  loc_16CA6D8: unk_5A23A3.Execute var_10C, var_12C, -1
  loc_16CA6E3: Set var_9C = var_130
  loc_16CA711: If (var_9C.RecordCount <= 0) Then
  loc_16CA71A:   Call 0.Method_arg_50 (var_10C)
  loc_16CA73B:   MsgBox("** Guest is not Check in Hotel **", &H40, CVar(var_10C), var_108, var_12C)
  loc_16CA74B:   Exit Sub
  loc_16CA74C: End If
  loc_16CA74E: var_88 = 1
  loc_16CA765: If (var_9C.RecordCount > 0) Then
  loc_16CA768:   ' Referenced from: 16CBF76
  loc_16CA777:   If Not(var_9C.EOF) Then
  loc_16CA780:     If (var_86 = 0) Then
  loc_16CA7AA:       Print 1, Proc_6_128_10272A8("The Foreigner's Registration Rules, 1939 ", "B", &H50)
  loc_16CA7C0:       Print 1, vbNullString
  loc_16CA7D7:       var_10C = "Form - C"
  loc_16CA7ED:       Print 1, Proc_6_128_10272A8("The Foreigner's Registration Rules, 1939 ", "B", &H50)
  loc_16CA803:       Print 1, vbNullString
  loc_16CA830:       Print 1, Proc_6_128_10272A8("Foreigner's Arrival Report", "B", &H50)
  loc_16CA89E:       var_108 = (Space(&H19) + Chr(&H1B))
  loc_16CA8A5:       var_154 = (var_108 + Chr(&H45))
  loc_16CA8AF:       var_174 = (var_154 + CVar(Proc_6_45_EAD428("(Rule 10 & 14) ", &HF)))
  loc_16CA8B6:       var_194 = (var_174 + Chr(&H1B))
  loc_16CA8BD:       var_1B4 = (var_194 + Chr(&H46))
  loc_16CA8C3:       Print 1, var_1B4
  loc_16CA915:       var_108 = (Space(&H14) + CVar(Proc_6_45_EAD428("(To be Completed in duplicate) ", &H1F)))
  loc_16CA91B:       Print 1, var_108
  loc_16CA936:       Print 1, vbNullString
  loc_16CA941:       Print 1, vbNullString
  loc_16CA969:       var_E8 = (Space(2) + "No. ")
  loc_16CA970:       var_12C = (CVar(Proc_6_45_EAD428("(To be Completed in duplicate) ", &H1F)) + Space(4))
  loc_16CA97C:       var_164 = (Chr(&H45) + CVar(CStr(var_88)))
  loc_16CA982:       Print 1, CVar(Proc_6_45_EAD428("(Rule 10 & 14) ", &HF))
  loc_16CA99C:       Print 1, vbNullString
  loc_16CA9DE:       var_108 = (Space(6) + CVar(Proc_6_45_EAD428("Name of the Hotel : ", &H14)))
  loc_16CA9E8:       var_154 = (Space(4) + CVar(Proc_6_45_EAD428(MemVar_1F92130, &H32)))
  loc_16CA9EE:       Print 1, CVar(CStr(var_88))
  loc_16CAA0F:       Print 1, vbNullString
  loc_16CAA1A:       Print 1, vbNullString
  loc_16CAA67:       var_108 = (Space(&H14) + Chr(&H1B))
  loc_16CAA6E:       var_154 = (Space(4) + Chr(&H45))
  loc_16CAA72:       var_B0 = "PART - A (Foreigner's Personal Particulars)"
  loc_16CAA77:       var_164 = (CVar(CStr(var_88)) + "No. ")
  loc_16CAA7E:       var_184 = (CVar(Proc_6_45_EAD428("(Rule 10 & 14) ", &HF)) + Chr(&H1B))
  loc_16CAA85:       var_1A4 = (Chr(&H1B) + Chr(&H46))
  loc_16CAA8B:       Print 1, Chr(&H46)
  loc_16CAAAD:       Print 1, vbNullString
  loc_16CAB1B:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("1.  Name (full name in Capital letters Surname first)  ", &H37)))
  loc_16CAB25:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("GuestName").Value), &H18)))
  loc_16CAB2B:       Print 1, CVar(Proc_6_45_EAD428("(Rule 10 & 14) ", &HF))
  loc_16CAC59:       var_174 = (Trim(CVar(var_9C.Fields.Item("Add1"))) + ",")
  loc_16CAC60:       var_1A4 = (Chr(&H1B) + Trim(CVar(var_9C.Fields.Item("Add2"))))
  loc_16CAC69:       var_1B4 = (Chr(&H46) + ",")
  loc_16CAC70:       var_214 = (var_1B4 + Trim(CVar(var_9C.Fields.Item("CityName"))))
  loc_16CAC79:       var_234 = (var_214 + ",")
  loc_16CAC80:       var_27C = (var_234 + Trim(CVar(var_9C.Fields.Item("StateName"))))
  loc_16CAC89:       var_29C = (var_27C + ",")
  loc_16CAC90:       var_2E4 = (var_29C + Trim(CVar(var_9C.Fields.Item("CountryName"))))
  loc_16CACAA:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("2.  Permanent Address  ", &H17)))
  loc_16CACB3:       var_12C = (Space(4) + vbNullString)
  loc_16CACBD:       var_304 = (var_9C.Fields.Item("GuestName").Value + CVar(Proc_6_45_EAD428(CStr(var_2E4), &H37)))
  loc_16CACC3:       Print 1, var_304
  loc_16CAD7C:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("3.  Nationality  ", &H11)))
  loc_16CAD86:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("Nationality").Value), &HF)))
  loc_16CAD8C:       Print 1, Trim(CVar(var_9C.Fields.Item("Add1")))
  loc_16CAE8A:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("4.  Sex  Male / Female  ", &H1E)))
  loc_16CAE94:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Gender")), var_88), 6)))
  loc_16CAE9B:       var_184 = (Trim(CVar(var_9C.Fields.Item("Add1"))) + Space(&HA))
  loc_16CAEA5:       var_1A4 = (CVar(var_9C.Fields.Item("Add2")) + CVar(Proc_6_45_EAD428("5. Age", 6)))
  loc_16CAEAC:       var_1F4 = (Chr(&H46) + Space(6))
  loc_16CAEB6:       var_234 = (CVar(var_9C.Fields.Item("CityName")) + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("Age").Value), &HF)))
  loc_16CAEBF:       var_25C = (var_234 + " Years")
  loc_16CAEC5:       Print 1, CVar(var_9C.Fields.Item("StateName"))
  loc_16CAF83:       var_140 = "Married / Un-married "
  loc_16CAF9A:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("6.  Marital Status  ", &H19)))
  loc_16CAFA4:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("MaritalStatus"))), 9)))
  loc_16CAFAB:       var_184 = (Trim(CVar(var_9C.Fields.Item("Add1"))) + Space(5))
  loc_16CAFB5:       var_1A4 = (CVar(var_9C.Fields.Item("Add2")) + CVar(Proc_6_45_EAD428("5. Age", &H15)))
  loc_16CAFBB:       Print 1, Chr(&H46)
  loc_16CB054:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("7.  Address in India, If any  ", &H1E)))
  loc_16CB05E:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("AddIndia").Value), &H28)))
  loc_16CB064:       Print 1, Trim(CVar(var_9C.Fields.Item("Add1")))
  loc_16CB0F3:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("8.  Purpose of visit  ", &H16)))
  loc_16CB0FD:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("PurVisit").Value), &H19)))
  loc_16CB103:       Print 1, Trim(CVar(var_9C.Fields.Item("Add1")))
  loc_16CB1DF:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("9.  Date & Place of arrival in India  ", &H2D)))
  loc_16CB1E6:       var_174 = (Space(4) + Format(CVar(var_9C.Fields.Item("DateArr")), "DD/MM/YYYY"))
  loc_16CB1ED:       var_194 = (Space(5) + Space(4))
  loc_16CB1F7:       var_1F4 = (CVar(Proc_6_45_EAD428("5. Age", &H15)) + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("ArrPlace").Value), &H14, 1)))
  loc_16CB1FD:       Print 1, CVar(var_9C.Fields.Item("CityName"))
  loc_16CB2A7:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("10. Arrival from (Name of last destination)", &H2B)))
  loc_16CB2AE:       var_154 = (Space(4) + Space(5))
  loc_16CB2B8:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("ArrFrom").Value), &H14)))
  loc_16CB2BE:       Print 1, Space(4)
  loc_16CB35E:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("11. Proposed duration of stay in India", &H26)))
  loc_16CB365:       var_154 = (Space(4) + Space(5))
  loc_16CB36F:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("PropStay").Value), &HA)))
  loc_16CB375:       Print 1, Space(4)
  loc_16CB419:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("12. Arrival date in the Hotel  ", &H20)))
  loc_16CB420:       var_154 = (Space(4) + Space(5))
  loc_16CB427:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("ChkInDate")), "DD/MM/YYYY"))
  loc_16CB42D:       Print 1, CVar(Proc_6_45_EAD428("5. Age", &H15))
  loc_16CB4CB:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("13. Proposed Departure date from the Hotel", &H2A, 1)))
  loc_16CB4D2:       var_154 = (Space(4) + Space(5))
  loc_16CB4D9:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("DepDate")), "DD/MM/YYYY"))
  loc_16CB4DF:       Print 1, CVar(Proc_6_45_EAD428("5. Age", &H15))
  loc_16CB509:       Print 1, vbNullString
  loc_16CB556:       var_108 = (Space(&HF) + Chr(&H1B))
  loc_16CB55D:       var_154 = (Space(4) + Chr(&H45))
  loc_16CB561:       var_B0 = "PART - B (Particulars of P.P. & Visa) "
  loc_16CB566:       var_164 = ("DD/MM/YYYY" + "DepDate")
  loc_16CB56D:       var_184 = (CVar(var_9C.Fields.Item("DepDate")) + Chr(&H1B))
  loc_16CB574:       var_1A4 = (Format(CVar(var_9C.Fields.Item("DepDate")), "DD/MM/YYYY") + Chr(&H46))
  loc_16CB57A:       Print 1, var_9C.Fields.Item("ArrPlace").Value
  loc_16CB59C:       Print 1, vbNullString
  loc_16CB617:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("1.  Number of Passport  ", &H18, 1, 1)))
  loc_16CB61E:       var_154 = (Space(4) + Space(5))
  loc_16CB628:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("PassNo").Value), &HF, 1)))
  loc_16CB62E:       Print 1, Format(CVar(var_9C.Fields.Item("DepDate")), "DD/MM/YYYY")
  loc_16CB6D2:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("2.  Date of issue of Passport  ", &H1F)))
  loc_16CB6D9:       var_154 = (Space(4) + Space(5))
  loc_16CB6E0:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("IssDate")), "DD/MM/YYYY"))
  loc_16CB6E6:       Print 1, Chr(&H46)
  loc_16CB780:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("3.  Place of issue of Passport  ", &H20, 1)))
  loc_16CB787:       var_154 = (Space(4) + Space(5))
  loc_16CB791:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("IssPlace").Value), &H14, 1)))
  loc_16CB797:       Print 1, Format(CVar(var_9C.Fields.Item("IssDate")), "DD/MM/YYYY")
  loc_16CB83B:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("4.  Date of expiry of Passport  ", &H20)))
  loc_16CB842:       var_154 = (Space(4) + Space(5))
  loc_16CB849:       var_194 = ("DD/MM/YYYY" + Format(CVar(var_9C.Fields.Item("PassExpDate")), "DD/MM/YYYY"))
  loc_16CB84F:       Print 1, Chr(&H46)
  loc_16CB925:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("5.  Number of visa with Date  ", &H1E, 1)))
  loc_16CB92C:       var_154 = (Space(4) + Space(5))
  loc_16CB936:       var_184 = ("DD/MM/YYYY" + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("VisaNo").Value), &HF, 1)))
  loc_16CB93F:       var_194 = (Format(CVar(var_9C.Fields.Item("PassExpDate")), "DD/MM/YYYY") + "  ")
  loc_16CB949:       var_1F4 = (Chr(&H46) + CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("VisaIssDate").Value), &HC)))
  loc_16CB94F:       Print 1, CVar(var_9C.Fields.Item("CityName"))
  loc_16CB9B6:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("6.  Place of issue of visa and the  ", &H24)))
  loc_16CB9BC:       Print 1, Space(4)
  loc_16CBA89:       var_108 = (Space(6) + CVar(Proc_6_45_EAD428("name of issuing authority  ", &H23)))
  loc_16CBA93:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("VisaIssPlace")), 1), &HC)))
  loc_16CBA9A:       var_184 = (var_9C.Fields.Item("VisaNo").Value + Space(5))
  loc_16CBAA4:       var_1B4 = (Format(CVar(var_9C.Fields.Item("PassExpDate")), "DD/MM/YYYY") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("VisaIssAuth"))), &H19)))
  loc_16CBAAA:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("VisaIssDate").Value), &HC))
  loc_16CBB4E:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("7.  Duration of visa  ", &H16)))
  loc_16CBB58:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("VisaDuration"))), &HA)))
  loc_16CBB5E:       Print 1, var_9C.Fields.Item("VisaNo").Value
  loc_16CBBEF:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("8.  Date of expiry of visa  ", &H1C)))
  loc_16CBBF6:       var_174 = (Space(4) + Format(CVar(var_9C.Fields.Item("VisaExpDate")), "DD/MM/YYYY"))
  loc_16CBBFC:       Print 1, Space(5)
  loc_16CBC49:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("9.  Number,Place & Date of issue of  ", &H25, 1)))
  loc_16CBC4F:       Print 1, Space(4)
  loc_16CBCD0:       var_108 = (Space(6) + CVar(Proc_6_45_EAD428("extension with detail  ", &H1B)))
  loc_16CBCDA:       var_164 = (Space(4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Extension")), 1), &H32)))
  loc_16CBCE0:       Print 1, Format(CVar(var_9C.Fields.Item("VisaExpDate")), "DD/MM/YYYY")
  loc_16CBD0A:       Print 1, vbNullString
  loc_16CBD15:       Print 1, vbNullString
  loc_16CBD20:       Print 1, vbNullString
  loc_16CBD2B:       Print 1, vbNullString
  loc_16CBD36:       Print 1, vbNullString
  loc_16CBDD6:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("Date ", 5)))
  loc_16CBDDD:       var_174 = (Space(4) + Format(Date, "DD/MM/YYYY"))
  loc_16CBDE4:       var_194 = (Space(5) + Space(&HC))
  loc_16CBDEE:       var_1B4 = (CVar(var_9C.Fields.Item("VisaIssAuth")) + CVar(Proc_6_45_EAD428("Manager's Signature ", &H14, 1)))
  loc_16CBDF5:       var_204 = (CVar(Proc_6_45_EAD428(CStr(var_9C.Fields.Item("VisaIssDate").Value), &HC)) + Space(&HC))
  loc_16CBDFF:       var_234 = (var_9C.Fields.Item("Age").Value + CVar(Proc_6_45_EAD428("Visitor's Signature ", &H14)))
  loc_16CBE05:       Print 1, var_234
  loc_16CBE40:       Print 1, vbNullString
  loc_16CBE4B:       Print 1, vbNullString
  loc_16CBE56:       Print 1, vbNullString
  loc_16CBE89:       var_13C = Proc_6_45_EAD428("This copy should be sent to the Ministry of Home Affairs (Central Foreigners Bureau) New Delhi, as", &H62)
  loc_16CBE92:       var_108 = (Chr(&HF) + Space(7))
  loc_16CBE9C:       var_154 = (Space(4) + CVar(var_13C))
  loc_16CBEA2:       Print 1, "DD/MM/YYYY"
  loc_16CBEF5:       var_108 = (Space(2) + CVar(Proc_6_45_EAD428("prescribed under Section 3(a) of the Registration of Foreigners Act. 1939.", &H4A)))
  loc_16CBEFC:       var_154 = (Space(4) + Chr(&H12))
  loc_16CBF02:       Print 1, "DD/MM/YYYY"
  loc_16CBF1C:     End If
  loc_16CBF22:     var_86 = (var_86 + &H35)
  loc_16CBF25:     ' Referenced from: 16CBF42
  loc_16CBF2B:     If (var_86 <= &H45) Then
  loc_16CBF33:       Print 1, vbNullString
  loc_16CBF3F:       var_86 = (var_86 + 1)
  loc_16CBF42:       GoTo loc_16CBF25
  loc_16CBF45:     End If
  loc_16CBF47:     var_86 = 0
  loc_16CBF50:     var_88 = (var_88 + 1)
  loc_16CBF65:     Print 1, Chr(&HC)
  loc_16CBF71:     var_9C.MoveNext
  loc_16CBF76:     GoTo loc_16CA768
  loc_16CBF79:   End If
  loc_16CBF79: End If
  loc_16CBF7B: Close 1
  loc_16CBF84: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16CBF94: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_16CBF9F: Close 1
  loc_16CBFA9: If (MemVar_1F923B8 = "Y") Then
  loc_16CBFC5:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16CBFCF: Else
  loc_16CBFE8:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16CBFEF: End If
  loc_16CBFF4: Set var_9C = Nothing
  loc_16CBFF7: Exit Sub
  loc_16CBFF8: ' Referenced from: 16CA670
  loc_16CBFF8: Proc_6_60_E62BC4(var_88, var_86, var_86)
  loc_16CBFFD: Exit Sub
End Sub

Public Sub Proc_24_93_15EF494
  'Data Table: 5A2370
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_15EE0A0: Set var_A4 = Me.Txt
  loc_15EE0A6: Call 0.Method_Proc_24_93_15EF4940 (CInt(0), var_A8)
  loc_15EE0AE: var_A8.MaxLength = Me.Fields.Item("GuestName").DefinedSize
  loc_15EE0F6: Set var_A4 = Me.Txt
  loc_15EE0FC: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H4B), var_A8)
  loc_15EE104: var_A8.MaxLength = Me.Fields.Item("FatherName").DefinedSize
  loc_15EE14C: Set var_A4 = Me.Txt
  loc_15EE152: Call 0.Method_Proc_24_93_15EF4940 (CInt(1), var_A8)
  loc_15EE15A: var_A8.MaxLength = Me.Fields.Item("GuestAdd1").DefinedSize
  loc_15EE1A2: Set var_A4 = Me.Txt
  loc_15EE1A8: Call 0.Method_Proc_24_93_15EF4940 (CInt(2), var_A8)
  loc_15EE1B0: var_A8.MaxLength = Me.Fields.Item("GuestAdd2").DefinedSize
  loc_15EE1F8: Set var_A4 = Me.Txt
  loc_15EE1FE: Call 0.Method_Proc_24_93_15EF4940 (CInt(3), var_A8)
  loc_15EE206: var_A8.MaxLength = Me.Fields.Item("Type").DefinedSize
  loc_15EE24E: Set var_A4 = Me.Txt
  loc_15EE254: Call 0.Method_Proc_24_93_15EF4940 (CInt(6), var_A8)
  loc_15EE25C: var_A8.MaxLength = Me.Fields.Item("CityName").DefinedSize
  loc_15EE2A4: Set var_A4 = Me.Txt
  loc_15EE2AA: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H12), var_A8)
  loc_15EE2B2: var_A8.MaxLength = Me.Fields.Item("StateName").DefinedSize
  loc_15EE2FA: Set var_A4 = Me.Txt
  loc_15EE300: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H14), var_A8)
  loc_15EE308: var_A8.MaxLength = Me.Fields.Item("ZipCode").DefinedSize
  loc_15EE350: Set var_A4 = Me.Txt
  loc_15EE356: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H13), var_A8)
  loc_15EE35E: var_A8.MaxLength = Me.Fields.Item("CountryName").DefinedSize
  loc_15EE3A6: Set var_A4 = Me.Txt
  loc_15EE3AC: Call 0.Method_Proc_24_93_15EF4940 (CInt(8), var_A8)
  loc_15EE3B4: var_A8.MaxLength = Me.Fields.Item("SplInstr").DefinedSize
  loc_15EE3FC: Set var_A4 = Me.Txt
  loc_15EE402: Call 0.Method_Proc_24_93_15EF4940 (CInt(&HA), var_A8)
  loc_15EE40A: var_A8.MaxLength = Me.Fields.Item("PhoneNo").DefinedSize
  loc_15EE452: Set var_A4 = Me.Txt
  loc_15EE458: Call 0.Method_Proc_24_93_15EF4940 (CInt(&HC), var_A8)
  loc_15EE460: var_A8.MaxLength = Me.Fields.Item("FaxNo").DefinedSize
  loc_15EE4A8: Set var_A4 = Me.Txt
  loc_15EE4AE: Call 0.Method_Proc_24_93_15EF4940 (CInt(&HB), var_A8)
  loc_15EE4B6: var_A8.MaxLength = Me.Fields.Item("MobileNo").DefinedSize
  loc_15EE4FE: Set var_A4 = Me.Txt
  loc_15EE504: Call 0.Method_Proc_24_93_15EF4940 (CInt(&HD), var_A8)
  loc_15EE50C: var_A8.MaxLength = Me.Fields.Item("EmailId").DefinedSize
  loc_15EE554: Set var_A4 = Me.Txt
  loc_15EE55A: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H16), var_A8)
  loc_15EE562: var_A8.MaxLength = Me.Fields.Item("Comments1").DefinedSize
  loc_15EE5AA: Set var_A4 = Me.Txt
  loc_15EE5B0: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H15), var_A8)
  loc_15EE5B8: var_A8.MaxLength = Me.Fields.Item("Comments2").DefinedSize
  loc_15EE600: Set var_A4 = Me.Txt
  loc_15EE606: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H10), var_A8)
  loc_15EE60E: var_A8.MaxLength = Me.Fields.Item("Comments3").DefinedSize
  loc_15EE656: Set var_A4 = Me.Txt
  loc_15EE65C: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H1E), var_A8)
  loc_15EE664: var_A8.MaxLength = Me.Fields.Item("ConName").DefinedSize
  loc_15EE6AC: Set var_A4 = Me.Txt
  loc_15EE6B2: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H23), var_A8)
  loc_15EE6BA: var_A8.MaxLength = Me.Fields.Item("T1Field1").DefinedSize
  loc_15EE702: Set var_A4 = Me.Txt
  loc_15EE708: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H22), var_A8)
  loc_15EE710: var_A8.MaxLength = Me.Fields.Item("T1Field2").DefinedSize
  loc_15EE758: Set var_A4 = Me.Txt
  loc_15EE75E: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H21), var_A8)
  loc_15EE766: var_A8.MaxLength = Me.Fields.Item("T1Field3").DefinedSize
  loc_15EE7AE: Set var_A4 = Me.Txt
  loc_15EE7B4: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H20), var_A8)
  loc_15EE7BC: var_A8.MaxLength = Me.Fields.Item("T1Field4").DefinedSize
  loc_15EE804: Set var_A4 = Me.Txt
  loc_15EE80A: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H1F), var_A8)
  loc_15EE812: var_A8.MaxLength = Me.Fields.Item("T1Field5").DefinedSize
  loc_15EE85A: Set var_A4 = Me.Txt
  loc_15EE860: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H3D), var_A8)
  loc_15EE868: var_A8.MaxLength = Me.Fields.Item("T1Field6").DefinedSize
  loc_15EE8B0: Set var_A4 = Me.Txt
  loc_15EE8B6: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H3C), var_A8)
  loc_15EE8BE: var_A8.MaxLength = Me.Fields.Item("T1Field7").DefinedSize
  loc_15EE906: Set var_A4 = Me.Txt
  loc_15EE90C: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H3B), var_A8)
  loc_15EE914: var_A8.MaxLength = Me.Fields.Item("T1Field8").DefinedSize
  loc_15EE95C: Set var_A4 = Me.Txt
  loc_15EE962: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H1D), var_A8)
  loc_15EE96A: var_A8.MaxLength = Me.Fields.Item("T2Field1").DefinedSize
  loc_15EE9B2: Set var_A4 = Me.Txt
  loc_15EE9B8: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H1B), var_A8)
  loc_15EE9C0: var_A8.MaxLength = Me.Fields.Item("T2Field2").DefinedSize
  loc_15EEA08: Set var_A4 = Me.Txt
  loc_15EEA0E: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H1A), var_A8)
  loc_15EEA16: var_A8.MaxLength = Me.Fields.Item("T2Field3").DefinedSize
  loc_15EEA5E: Set var_A4 = Me.Txt
  loc_15EEA64: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H3F), var_A8)
  loc_15EEA6C: var_A8.MaxLength = Me.Fields.Item("T2Field4").DefinedSize
  loc_15EEAB4: Set var_A4 = Me.Txt
  loc_15EEABA: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H3E), var_A8)
  loc_15EEAC2: var_A8.MaxLength = Me.Fields.Item("T2Field5").DefinedSize
  loc_15EEB0A: Set var_A4 = Me.Txt
  loc_15EEB10: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H1C), var_A8)
  loc_15EEB18: var_A8.MaxLength = Me.Fields.Item("T2Field6").DefinedSize
  loc_15EEB60: Set var_A4 = Me.Txt
  loc_15EEB66: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H18), var_A8)
  loc_15EEB6E: var_A8.MaxLength = Me.Fields.Item("T2Field7").DefinedSize
  loc_15EEBB6: Set var_A4 = Me.Txt
  loc_15EEBBC: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H19), var_A8)
  loc_15EEBC4: var_A8.MaxLength = Me.Fields.Item("T2Field8").DefinedSize
  loc_15EEC0C: Set var_A4 = Me.Txt
  loc_15EEC12: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H41), var_A8)
  loc_15EEC1A: var_A8.MaxLength = Me.Fields.Item("Gender").DefinedSize
  loc_15EEC62: Set var_A4 = Me.Txt
  loc_15EEC68: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H42), var_A8)
  loc_15EEC70: var_A8.MaxLength = Me.Fields.Item("MaritalStatus").DefinedSize
  loc_15EECB8: Set var_A4 = Me.Txt
  loc_15EECBE: Call 0.Method_Proc_24_93_15EF4940 (CInt(7), var_A8)
  loc_15EECC6: var_A8.MaxLength = Me.Fields.Item("GuestStatus").DefinedSize
  loc_15EED0E: Set var_A4 = Me.Txt
  loc_15EED14: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H24), var_A8)
  loc_15EED1C: var_A8.MaxLength = Me.Fields.Item("GuestForName").DefinedSize
  loc_15EED64: Set var_A4 = Me.Txt
  loc_15EED6A: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H26), var_A8)
  loc_15EED72: var_A8.MaxLength = Me.Fields.Item("GuestForAdd2").DefinedSize
  loc_15EEDBA: Set var_A4 = Me.Txt
  loc_15EEDC0: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H27), var_A8)
  loc_15EEDC8: var_A8.MaxLength = Me.Fields.Item("GuestForAdd1").DefinedSize
  loc_15EEE10: Set var_A4 = Me.Txt
  loc_15EEE16: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H25), var_A8)
  loc_15EEE1E: var_A8.MaxLength = Me.Fields.Item("ForNationality").DefinedSize
  loc_15EEE66: Set var_A4 = Me.Txt
  loc_15EEE6C: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H28), var_A8)
  loc_15EEE74: var_A8.MaxLength = Me.Fields.Item("ArrFrom").DefinedSize
  loc_15EEEBC: Set var_A4 = Me.Txt
  loc_15EEEC2: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H29), var_A8)
  loc_15EEECA: var_A8.MaxLength = Me.Fields.Item("Occu").DefinedSize
  loc_15EEF12: Set var_A4 = Me.Txt
  loc_15EEF18: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H2A), var_A8)
  loc_15EEF20: var_A8.MaxLength = Me.Fields.Item("PurVisit").DefinedSize
  loc_15EEF68: Set var_A4 = Me.Txt
  loc_15EEF6E: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H2B), var_A8)
  loc_15EEF76: var_A8.MaxLength = Me.Fields.Item("Dest").DefinedSize
  loc_15EEFBE: Set var_A4 = Me.Txt
  loc_15EEFC4: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H2C), var_A8)
  loc_15EEFCC: var_A8.MaxLength = Me.Fields.Item("PropStay").DefinedSize
  loc_15EF014: Set var_A4 = Me.Txt
  loc_15EF01A: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H2D), var_A8)
  loc_15EF022: var_A8.MaxLength = Me.Fields.Item("ModeTravelUsed").DefinedSize
  loc_15EF06A: Set var_A4 = Me.Txt
  loc_15EF070: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H30), var_A8)
  loc_15EF078: var_A8.MaxLength = Me.Fields.Item("IssPlace").DefinedSize
  loc_15EF0C0: Set var_A4 = Me.Txt
  loc_15EF0C6: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H31), var_A8)
  loc_15EF0CE: var_A8.MaxLength = Me.Fields.Item("PassNo").DefinedSize
  loc_15EF116: Set var_A4 = Me.Txt
  loc_15EF11C: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H34), var_A8)
  loc_15EF124: var_A8.MaxLength = Me.Fields.Item("VisaDuration").DefinedSize
  loc_15EF16C: Set var_A4 = Me.Txt
  loc_15EF172: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H35), var_A8)
  loc_15EF17A: var_A8.MaxLength = Me.Fields.Item("VisaNo").DefinedSize
  loc_15EF1C2: Set var_A4 = Me.Txt
  loc_15EF1C8: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H36), var_A8)
  loc_15EF1D0: var_A8.MaxLength = Me.Fields.Item("VisaIssPlace").DefinedSize
  loc_15EF218: Set var_A4 = Me.Txt
  loc_15EF21E: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H37), var_A8)
  loc_15EF226: var_A8.MaxLength = Me.Fields.Item("VisaType").DefinedSize
  loc_15EF26E: Set var_A4 = Me.Txt
  loc_15EF274: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H38), var_A8)
  loc_15EF27C: var_A8.MaxLength = Me.Fields.Item("ArrPlace").DefinedSize
  loc_15EF2C4: Set var_A4 = Me.Txt
  loc_15EF2CA: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H37), var_A8)
  loc_15EF2D2: var_A8.MaxLength = Me.Fields.Item("VisaType").DefinedSize
  loc_15EF31A: Set var_A4 = Me.Txt
  loc_15EF320: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H39), var_A8)
  loc_15EF328: var_A8.MaxLength = Me.Fields.Item("AddIndia").DefinedSize
  loc_15EF370: Set var_A4 = Me.Txt
  loc_15EF376: Call 0.Method_Proc_24_93_15EF4940 (CInt(&H3A), var_A8)
  loc_15EF37E: var_A8.MaxLength = Me.Fields.Item("ModeTravelUsed").DefinedSize
  loc_15EF3C6: Set var_A4 = Me.Txt
  loc_15EF3CC: Call 0.Method_Proc_24_93_15EF4940 (CInt(&HF), var_A8)
  loc_15EF3D4: var_A8.MaxLength = Me.Fields.Item("WorkPermit").DefinedSize
  loc_15EF41C: Set var_A4 = Me.Txt
  loc_15EF422: Call 0.Method_Proc_24_93_15EF4940 (CInt(&HE), var_A8)
  loc_15EF42A: var_A8.MaxLength = Me.Fields.Item("Extension").DefinedSize
  loc_15EF472: Set var_A4 = Me.Txt
  loc_15EF478: Call 0.Method_Proc_24_93_15EF4940 (CInt(9), var_A8)
  loc_15EF480: var_A8.MaxLength = Me.Fields.Item("VisaIssAuth").DefinedSize
  loc_15EF490: Exit Sub
End Sub
