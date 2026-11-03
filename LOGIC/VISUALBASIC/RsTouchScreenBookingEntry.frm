VERSION 5.00
Begin VB.Form RsTouchScreenBookingEntry
  Caption = "Booking Entry"
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
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 8
    Left = 5505
    Top = 1815
    Width = 3750
    Height = 240
    Enabled = 0   'False
    TabIndex = 110
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
    Index = 7
    Left = 5505
    Top = 1560
    Width = 3750
    Height = 240
    Enabled = 0   'False
    TabIndex = 108
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
  Begin CommandButton CmdBookDetails
    Caption = "Fill Booking Details"
    Left = 9300
    Top = 1560
    Width = 2100
    Height = 510
    TabIndex = 107
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
  Begin TextBox Txt
    Index = 6
    Left = 5505
    Top = 1305
    Width = 1935
    Height = 240
    Enabled = 0   'False
    TabIndex = 81
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
  Begin Frame FrCustInfo
    BackColor = &H80000003&
    Left = 7560
    Top = 2100
    Width = 7230
    Height = 6330
    Visible = 0   'False
    TabIndex = 80
    BorderStyle = 0 'None
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      Left = 3390
      Top = 4380
      Width = 1935
      Height = 420
      TabIndex = 113
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
    Begin CommandButton CmdOk
      Caption = "OK"
      Left = 1365
      Top = 4380
      Width = 1935
      Height = 420
      TabIndex = 112
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
    Begin TextBox TxtAddr1
      Left = 105
      Top = 3345
      Width = 3210
      Height = 240
      TabIndex = 104
      BorderStyle = 0 'None
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
    Begin CommandButton CmdAdd1
      Caption = "Address1"
      Left = 3390
      Top = 3255
      Width = 1935
      Height = 420
      TabIndex = 103
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
    Begin CommandButton CmdAdd2
      Caption = "Address2"
      Left = 3390
      Top = 3780
      Width = 1935
      Height = 420
      TabIndex = 102
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
    Begin TextBox TxtAddr2
      Left = 105
      Top = 3870
      Width = 3210
      Height = 240
      TabIndex = 101
      BorderStyle = 0 'None
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
    Begin TextBox TxtPhone
      Left = 105
      Top = 2295
      Width = 3210
      Height = 240
      TabIndex = 98
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
    Begin CommandButton CmdPhone
      Caption = "Phone No."
      Left = 3390
      Top = 2205
      Width = 1935
      Height = 420
      TabIndex = 97
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
    Begin CommandButton CmdCustomer
      Caption = "Customer Name"
      Left = 3390
      Top = 2730
      Width = 1935
      Height = 420
      TabIndex = 96
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
    Begin TextBox TxtCustName
      Left = 105
      Top = 2820
      Width = 3210
      Height = 240
      TabIndex = 95
      BorderStyle = 0 'None
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
    Begin TextBox TxtDelDate
      Left = 105
      Top = 1245
      Width = 3210
      Height = 240
      TabIndex = 92
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
    Begin CommandButton CmdDelDate
      Caption = "Delivery Date"
      Left = 3390
      Top = 1155
      Width = 1935
      Height = 420
      TabIndex = 91
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
    Begin CommandButton CmdDelTime
      Caption = "Delivery Time"
      Left = 3390
      Top = 1680
      Width = 1935
      Height = 420
      TabIndex = 90
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
    Begin TextBox TxtDelTime
      Left = 105
      Top = 1770
      Width = 3210
      Height = 240
      TabIndex = 89
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
    Begin TextBox TxtBookDate
      Left = 105
      Top = 195
      Width = 3210
      Height = 240
      TabIndex = 86
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
    Begin CommandButton CmdBookDate
      Caption = "Booking Date"
      Left = 3390
      Top = 105
      Width = 1935
      Height = 420
      TabIndex = 85
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
    Begin CommandButton CmdBookTime
      Caption = "Booking Time"
      Left = 3390
      Top = 630
      Width = 1935
      Height = 420
      TabIndex = 84
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
    Begin TextBox TxtBookTime
      Left = 105
      Top = 720
      Width = 3210
      Height = 240
      TabIndex = 83
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
    Begin Line Line12
      BorderColor = &H404040&
      X1 = 0
      Y1 = 3735
      X2 = 5370
      Y2 = 3720
      BorderWidth = 2
    End
    Begin Line Line11
      BorderColor = &H404040&
      X1 = 0
      Y1 = 3195
      X2 = 5385
      Y2 = 3180
      BorderWidth = 2
    End
    Begin Line Line10
      BorderColor = &H404040&
      X1 = 0
      Y1 = 2685
      X2 = 5370
      Y2 = 2670
      BorderWidth = 2
    End
    Begin Line Line9
      BorderColor = &H404040&
      X1 = 0
      Y1 = 2160
      X2 = 5355
      Y2 = 2160
      BorderWidth = 2
    End
    Begin Line Line8
      BorderColor = &H404040&
      X1 = 0
      Y1 = 1620
      X2 = 5370
      Y2 = 1635
      BorderWidth = 2
    End
    Begin Line Line7
      BorderColor = &H404040&
      X1 = 0
      Y1 = 1110
      X2 = 5370
      Y2 = 1095
      BorderWidth = 2
    End
    Begin Label Label1
      Index = 13
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 3285
      Width = 3330
      Height = 360
      TabIndex = 106
      Alignment = 1 'Right Justify
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
    Begin Label Label1
      Index = 12
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 3810
      Width = 3330
      Height = 360
      TabIndex = 105
      Alignment = 1 'Right Justify
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
    Begin Label Label1
      Index = 11
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 2235
      Width = 3330
      Height = 360
      TabIndex = 100
      Alignment = 1 'Right Justify
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
    Begin Label Label1
      Index = 9
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 2760
      Width = 3330
      Height = 360
      TabIndex = 99
      Alignment = 1 'Right Justify
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
    Begin Label Label1
      Index = 8
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 1185
      Width = 3330
      Height = 360
      TabIndex = 94
      Alignment = 1 'Right Justify
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
    Begin Label Label1
      Index = 6
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 1710
      Width = 3330
      Height = 360
      TabIndex = 93
      Alignment = 1 'Right Justify
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
    Begin Label Label1
      Index = 5
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 135
      Width = 3330
      Height = 360
      TabIndex = 88
      Alignment = 1 'Right Justify
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
    Begin Label Label1
      Index = 3
      BackColor = &H40C0&
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 660
      Width = 3330
      Height = 360
      TabIndex = 87
      Alignment = 1 'Right Justify
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
    Begin Line Line6
      BorderColor = &H404040&
      X1 = 0
      Y1 = 585
      X2 = 5355
      Y2 = 570
      BorderWidth = 2
    End
    Begin Shape Shape3
      BorderColor = &H404040&
      Left = 15
      Top = 30
      Width = 5370
      Height = 4275
      BorderWidth = 2
      FillColor = &HC0E0FF&
      FillStyle = 0
    End
  End
  Begin TextBox Txt
    Index = 4
    Left = 270
    Top = 9285
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 78
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
  Begin TextBox TxtAdvAmt
    Left = 4095
    Top = 9045
    Width = 1650
    Height = 240
    TabIndex = 76
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
  Begin CommandButton CmdAdvance
    Caption = "Advance"
    Left = 5835
    Top = 8955
    Width = 1350
    Height = 420
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
  Begin TextBox TxtDed
    Left = 1350
    Top = 9030
    Width = 1440
    Height = 240
    Visible = 0   'False
    TabIndex = 74
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
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 2100
    Width = 7470
    Height = 5175
    TabIndex = 73
  End
  Begin TextBox TxtDiscAmt
    Left = 4755
    Top = 7470
    Width = 990
    Height = 240
    TabIndex = 72
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
  Begin TextBox TxtTaxAmt
    Left = 4755
    Top = 7995
    Width = 990
    Height = 240
    TabIndex = 70
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
  Begin TextBox TxtTotal
    Left = 405
    Top = 7470
    Width = 1455
    Height = 240
    TabIndex = 68
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
  Begin TextBox TxtRndOff
    Left = 405
    Top = 7995
    Width = 1455
    Height = 240
    TabIndex = 66
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
  Begin CommandButton CmdAddition
    Caption = "Addition"
    Left = 5835
    Top = 8430
    Width = 1350
    Height = 420
    TabIndex = 62
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
  Begin TextBox TxtAdd
    Left = 4095
    Top = 8520
    Width = 1650
    Height = 240
    TabIndex = 61
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
  Begin CommandButton Head
    Caption = "Exit"
    Index = 7
    Left = 7035
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 54
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":0
    DisabledPicture = "RsTouchScreenBookingEntry.frx":4E1
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Cancel"
    Index = 6
    Left = 6030
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 53
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":91E
    DisabledPicture = "RsTouchScreenBookingEntry.frx":E6C
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Save"
    Index = 5
    Left = 5025
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 52
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":12CB
    DisabledPicture = "RsTouchScreenBookingEntry.frx":1873
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Print"
    Index = 4
    Left = 4020
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 50
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":1D2B
    DisabledPicture = "RsTouchScreenBookingEntry.frx":2223
    MaskColor = &H40&
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Find"
    Index = 3
    Left = 3015
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 49
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":266C
    DisabledPicture = "RsTouchScreenBookingEntry.frx":2C90
    MaskColor = &H40&
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Delete"
    Index = 2
    Left = 2010
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 48
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":3132
    DisabledPicture = "RsTouchScreenBookingEntry.frx":35F0
    Style = 1
  End
  Begin CommandButton Head
    Caption = "Edit"
    Index = 1
    Left = 1005
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 47
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":3A1E
    DisabledPicture = "RsTouchScreenBookingEntry.frx":3E15
    Style = 1
  End
  Begin Frame FrameQty
    BackColor = &H80000003&
    ForeColor = &H8000000A&
    Left = 12135
    Top = 2115
    Width = 3255
    Height = 6180
    TabIndex = 17
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
      Caption = "OK"
      Index = 13
      Left = 2160
      Top = 5070
      Width = 1050
      Height = 1050
      TabIndex = 32
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
      Caption = "Exit"
      Index = 12
      Left = 1635
      Top = 870
      Width = 1575
      Height = 1050
      TabIndex = 31
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
      Index = 11
      Left = 60
      Top = 870
      Width = 1575
      Height = 1050
      TabIndex = 30
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
      Caption = "."
      Index = 10
      Left = 1110
      Top = 5070
      Width = 1050
      Height = 1050
      TabIndex = 29
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
      Caption = "9"
      Index = 9
      Left = 2160
      Top = 1920
      Width = 1050
      Height = 1050
      TabIndex = 28
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
      Left = 1110
      Top = 1920
      Width = 1050
      Height = 1050
      TabIndex = 27
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
      Left = 60
      Top = 1920
      Width = 1050
      Height = 1050
      TabIndex = 26
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
      Left = 2160
      Top = 2970
      Width = 1050
      Height = 1050
      TabIndex = 25
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
      Left = 1110
      Top = 2970
      Width = 1050
      Height = 1050
      TabIndex = 24
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
      Left = 60
      Top = 2970
      Width = 1050
      Height = 1050
      TabIndex = 23
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
      Left = 2160
      Top = 4020
      Width = 1050
      Height = 1050
      TabIndex = 22
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
      Caption = "2"
      Index = 2
      Left = 1110
      Top = 4020
      Width = 1050
      Height = 1050
      TabIndex = 21
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
      Left = 60
      Top = 435
      Width = 3135
      Height = 360
      TabIndex = 20
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdQty
      Caption = "1"
      Index = 1
      Left = 60
      Top = 4020
      Width = 1050
      Height = 1050
      TabIndex = 19
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
      Caption = "0"
      Index = 0
      Left = 60
      Top = 5070
      Width = 1050
      Height = 1050
      TabIndex = 18
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
    Begin Label LblVtype
      BackColor = &H80000003&
      ForeColor = &HFFFF&
      Left = 60
      Top = 45
      Width = 3135
      Height = 360
      TabIndex = 34
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblIndex
      Left = 825
      Top = 75
      Width = 1500
      Height = 300
      Visible = 0   'False
      TabIndex = 33
    End
  End
  Begin Frame FrameGrpItem
    BackColor = &H80000003&
    Left = 8700
    Top = 2100
    Width = 3885
    Height = 5175
    TabIndex = 41
    BorderStyle = 0 'None
    Begin SSPanel SSPMain
      Left = 75
      Top = 75
      Width = 1245
      Height = 1005
      TabIndex = 42
    End
    Begin SSPanel SSPGroup
      Index = 0
      Left = 75
      Top = 75
      Width = 1245
      Height = 1005
      Visible = 0   'False
      TabIndex = 43
    End
    Begin SSPanel SSPItem
      Index = 0
      Left = 75
      Top = 75
      Width = 1245
      Height = 1005
      Visible = 0   'False
      TabIndex = 44
    End
    Begin SSPanel SSPPrevious
      Left = 1320
      Top = 75
      Width = 1245
      Height = 1005
      TabIndex = 45
    End
    Begin SSPanel SSPNext
      Left = 2565
      Top = 75
      Width = 1245
      Height = 1005
      TabIndex = 46
    End
  End
  Begin Frame FrameFgrid
    Caption = "Frame1"
    BackColor = &H404040&
    Left = 7560
    Top = 2100
    Width = 1140
    Height = 6180
    TabIndex = 35
    BorderStyle = 0 'None
    Begin CommandButton CmFgrid
      Caption = "Remark"
      Index = 5
      Left = 75
      Top = 5115
      Width = 1000
      Height = 1000
      TabIndex = 79
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
    Begin CommandButton CmFgrid
      Caption = "Delete Item"
      Index = 4
      Left = 75
      Top = 4110
      Width = 1000
      Height = 1000
      TabIndex = 40
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
    Begin CommandButton CmFgrid
      Caption = "Change Rate"
      Index = 3
      Left = 75
      Top = 3105
      Width = 1000
      Height = 1000
      TabIndex = 39
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
    Begin CommandButton CmFgrid
      Caption = "Change Qty"
      Index = 2
      Left = 75
      Top = 2100
      Width = 1000
      Height = 1000
      TabIndex = 38
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
    Begin CommandButton CmFgrid
      Caption = "Down"
      Index = 1
      Left = 75
      Top = 1095
      Width = 1000
      Height = 1000
      TabIndex = 37
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenBookingEntry.frx":41E2
      DisabledPicture = "RsTouchScreenBookingEntry.frx":4671
      Style = 1
    End
    Begin CommandButton CmFgrid
      Caption = "Up"
      Index = 0
      Left = 75
      Top = 90
      Width = 1000
      Height = 1000
      TabIndex = 36
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchScreenBookingEntry.frx":4A7F
      DisabledPicture = "RsTouchScreenBookingEntry.frx":4F1C
      Style = 1
    End
  End
  Begin TextBox Txt
    Index = 1
    Left = 1485
    Top = 1305
    Width = 1575
    Height = 240
    Enabled = 0   'False
    TabIndex = 4
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
    Index = 2
    Left = 1485
    Top = 1560
    Width = 1575
    Height = 240
    Enabled = 0   'False
    TabIndex = 3
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
    Index = 0
    Left = 1485
    Top = 1050
    Width = 690
    Height = 240
    Enabled = 0   'False
    TabIndex = 2
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
    Index = 3
    Left = 1485
    Top = 1815
    Width = 3060
    Height = 240
    Enabled = 0   'False
    TabIndex = 1
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
    Index = 5
    Left = 270
    Top = 9555
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 0
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 2820
    Width = 4680
    Height = 375
    Visible = 0   'False
    TabIndex = 5
  End
  Begin MaskEdBox TxtMask
    Index = 1
    Left = 3930
    Top = 1560
    Width = 615
    Height = 240
    TabIndex = 6
  End
  Begin MaskEdBox TxtMask
    Index = 0
    Left = 3930
    Top = 1305
    Width = 615
    Height = 240
    TabIndex = 7
  End
  Begin CommandButton CmdTax
    Caption = "Tax"
    Left = 5835
    Top = 7905
    Width = 1350
    Height = 420
    TabIndex = 58
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
  Begin CommandButton CmdDiscount
    Caption = "Discount"
    Left = 5835
    Top = 7380
    Width = 1350
    Height = 420
    TabIndex = 57
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
  Begin TextBox TxtDiscPer
    Left = 4095
    Top = 7470
    Width = 480
    Height = 240
    TabIndex = 56
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
  Begin TextBox TxtTaxPer
    Left = 4095
    Top = 7995
    Width = 480
    Height = 240
    TabIndex = 55
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
  Begin TextBox TxtNetAmt
    Left = 405
    Top = 8520
    Width = 1455
    Height = 240
    TabIndex = 64
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
  Begin CommandButton Head
    Caption = "Add"
    Index = 0
    Left = 0
    Top = 0
    Width = 1000
    Height = 1000
    TabIndex = 51
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "RsTouchScreenBookingEntry.frx":5326
    DisabledPicture = "RsTouchScreenBookingEntry.frx":57E1
    Style = 1
  End
  Begin Label Label1
    Caption = "address2"
    Index = 17
    ForeColor = &H0&
    Left = 4635
    Top = 1815
    Width = 780
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
  Begin Label Label1
    Caption = "Address1"
    Index = 16
    ForeColor = &H0&
    Left = 4635
    Top = 1560
    Width = 795
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
  Begin Label Label1
    Caption = "Phone No"
    Index = 2
    ForeColor = &H0&
    Left = 4635
    Top = 1305
    Width = 810
    Height = 240
    TabIndex = 82
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
  Begin Line Line5
    BorderColor = &H404040&
    X1 = 3990
    Y1 = 8910
    X2 = 7245
    Y2 = 8910
    BorderWidth = 2
  End
  Begin Label Label1
    Index = 18
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 8985
    Width = 1770
    Height = 360
    TabIndex = 77
    Alignment = 1 'Right Justify
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
  Begin Label LblPer
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 4575
    Top = 8010
    Width = 195
    Height = 195
    TabIndex = 71
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
  Begin Label LblPer
    Caption = "%"
    Index = 0
    ForeColor = &H0&
    Left = 4575
    Top = 7485
    Width = 195
    Height = 195
    TabIndex = 9
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
  Begin Label Label1
    Caption = "             Total        "
    Index = 26
    BackColor = &H80FF&
    ForeColor = &HFFFFFF&
    Left = 315
    Top = 7410
    Width = 3030
    Height = 360
    TabIndex = 69
    Alignment = 1 'Right Justify
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
  Begin Label Label1
    Caption = "           Round Off    "
    Index = 25
    BackColor = &H80FF&
    ForeColor = &HFFFFFF&
    Left = 315
    Top = 7935
    Width = 3030
    Height = 360
    TabIndex = 67
    Alignment = 1 'Right Justify
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
  Begin Label Label1
    Index = 21
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 8460
    Width = 1770
    Height = 360
    TabIndex = 63
    Alignment = 1 'Right Justify
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
  Begin Label Label1
    Caption = "Delivery Date"
    Index = 10
    ForeColor = &H0&
    Left = 60
    Top = 1560
    Width = 1125
    Height = 240
    TabIndex = 16
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
  Begin Label Label1
    Caption = "Booking Date"
    Index = 7
    ForeColor = &H0&
    Left = 60
    Top = 1305
    Width = 1110
    Height = 240
    TabIndex = 15
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
  Begin Label Label1
    Caption = "Booking No."
    Index = 4
    ForeColor = &H0&
    Left = 60
    Top = 1050
    Width = 1005
    Height = 240
    TabIndex = 14
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
  Begin Label Label1
    Caption = "Time"
    Index = 14
    ForeColor = &H0&
    Left = 3420
    Top = 1560
    Width = 435
    Height = 240
    TabIndex = 13
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
  Begin Label Label1
    Caption = "Time "
    Index = 1
    ForeColor = &H0&
    Left = 3420
    Top = 1305
    Width = 495
    Height = 240
    TabIndex = 12
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
  Begin Label Label1
    Caption = "Customer Name"
    Index = 0
    ForeColor = &H0&
    Left = 60
    Top = 1800
    Width = 1380
    Height = 240
    TabIndex = 11
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
  Begin Label Label1
    Caption = "Deduction :"
    Index = 15
    ForeColor = &H0&
    Left = 315
    Top = 9000
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 10
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 11130
    Top = 255
    Width = 315
    Height = 270
    TabIndex = 8
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
  Begin Line Line2
    BorderColor = &H404040&
    X1 = 3975
    Y1 = 8385
    X2 = 7230
    Y2 = 8385
    BorderWidth = 2
  End
  Begin Line Line1
    BorderColor = &H404040&
    X1 = 3990
    Y1 = 7860
    X2 = 7230
    Y2 = 7845
    BorderWidth = 2
  End
  Begin Label Label1
    Index = 23
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 7410
    Width = 1770
    Height = 360
    TabIndex = 60
    Alignment = 1 'Right Justify
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
  Begin Label Label1
    Index = 22
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 4035
    Top = 7935
    Width = 1770
    Height = 360
    TabIndex = 59
    Alignment = 1 'Right Justify
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
  Begin Shape Shape1
    BorderColor = &H404040&
    Left = 3990
    Top = 7335
    Width = 3270
    Height = 2115
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
  Begin Line Line4
    BorderColor = &H404040&
    X1 = 270
    Y1 = 8385
    X2 = 3330
    Y2 = 8385
    BorderWidth = 2
  End
  Begin Line Line3
    BorderColor = &H404040&
    X1 = 285
    Y1 = 7860
    X2 = 3345
    Y2 = 7860
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "           Net Amount  "
    Index = 24
    BackColor = &H80FF&
    ForeColor = &HFFFFFF&
    Left = 315
    Top = 8460
    Width = 3030
    Height = 360
    TabIndex = 65
    Alignment = 1 'Right Justify
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
  Begin Shape Shape2
    BorderColor = &H404040&
    Left = 300
    Top = 7335
    Width = 3075
    Height = 1575
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
End

Attribute VB_Name = "RsTouchScreenBookingEntry"

Private global_136 As Long
Private global_124 As Long

Private Sub CmdDiscount_Click() 'F2CE24
  'Data Table: 57AAC8
  loc_F2CD19: Me.LblIndex.Caption = vbNullString
  loc_F2CD2E: Me.LblIndex.Tag = vbNullString
  loc_F2CD43: Me.LblVtype.Caption = "Discount"
  loc_F2CD58: Me.LblVtype.Tag = vbNullString
  loc_F2CD6D: Me.TxtQty.Text = vbNullString
  loc_F2CD82: Me.TxtQty.Tag = vbNullString
  loc_F2CDA9: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2CDD4: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2CDEC: Me.FrameQty.Visible = True
  loc_F2CE04: Me.FrameQty.ZOrder 0
  loc_F2CE18: Me.FrameGrpItem.Enabled = False
  loc_F2CE20: Exit Sub
End Sub

Private Sub CmdTax_Click() 'F2DF34
  'Data Table: 57AAC8
  loc_F2DE29: Me.LblIndex.Caption = vbNullString
  loc_F2DE3E: Me.LblIndex.Tag = vbNullString
  loc_F2DE53: Me.LblVtype.Caption = "Tax"
  loc_F2DE68: Me.LblVtype.Tag = vbNullString
  loc_F2DE7D: Me.TxtQty.Text = vbNullString
  loc_F2DE92: Me.TxtQty.Tag = vbNullString
  loc_F2DEB9: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2DEE4: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2DEFC: Me.FrameQty.Visible = True
  loc_F2DF14: Me.FrameQty.ZOrder 0
  loc_F2DF28: Me.FrameGrpItem.Enabled = False
  loc_F2DF30: Exit Sub
  loc_F2DF31: DOC
End Sub

Private Sub cmdCancel_Click() 'E1B9F4
  'Data Table: 57AAC8
  loc_E1B9E8: Me.FrCustInfo.Visible = False
  loc_E1B9F0: Exit Sub
End Sub

Private Sub CmdAdvance_Click() 'F2C794
  'Data Table: 57AAC8
  loc_F2C689: Me.LblIndex.Caption = vbNullString
  loc_F2C69E: Me.LblIndex.Tag = vbNullString
  loc_F2C6B3: Me.LblVtype.Caption = "Advance"
  loc_F2C6C8: Me.LblVtype.Tag = vbNullString
  loc_F2C6DD: Me.TxtQty.Text = vbNullString
  loc_F2C6F2: Me.TxtQty.Tag = vbNullString
  loc_F2C719: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2C744: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2C75C: Me.FrameQty.Visible = True
  loc_F2C774: Me.FrameQty.ZOrder 0
  loc_F2C788: Me.FrameGrpItem.Enabled = False
  loc_F2C790: Exit Sub
End Sub

Private Sub CmdBookDetails_Click() '11A4808
  'Data Table: 57AAC8
  Dim var_88 As Frame
  Dim var_90 As Variant
  loc_11A43F7: If (Me.FrCustInfo.Visible = &HFF) Then
  loc_11A43FA:   Exit Sub
  loc_11A43FB: End If
  loc_11A4409: Set var_88 = Me.Txt
  loc_11A440F: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A4429: Me.TxtBookDate.Text = var_90.Text
  loc_11A4445: Set var_88 = Me.TxtMask
  loc_11A444B: Call 0.Method_CmdBookDetails_Click0 (CInt(0))
  loc_11A4468: Me.TxtBookTime.Text = CStr(var_90.defaultText)
  loc_11A448A: Set var_88 = Me.Txt
  loc_11A4490: Call 0.Method_CmdBookDetails_Click0 (CInt(2), var_90)
  loc_11A44AA: Me.TxtDelDate.Text = var_90.Text
  loc_11A44C6: Set var_88 = Me.TxtMask
  loc_11A44CC: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A44E9: Me.TxtDelTime.Text = CStr(var_90.defaultText)
  loc_11A450B: Set var_88 = Me.Txt
  loc_11A4511: Call 0.Method_CmdBookDetails_Click0 (CInt(3), var_90)
  loc_11A452B: Me.TxtCustName.Text = var_90.Text
  loc_11A454A: Set var_88 = Me.Txt
  loc_11A4550: Call 0.Method_CmdBookDetails_Click0 (CInt(6), var_90)
  loc_11A456A: Me.TxtPhone.Text = var_90.Text
  loc_11A4589: Set var_88 = Me.Txt
  loc_11A458F: Call 0.Method_CmdBookDetails_Click0 (CInt(7), var_90)
  loc_11A45A9: Me.TxtAddr1.Text = var_90.Text
  loc_11A45C8: Set var_88 = Me.Txt
  loc_11A45CE: Call 0.Method_CmdBookDetails_Click0 (CInt(8), var_90)
  loc_11A45E8: Me.TxtAddr2.Text = var_90.Text
  loc_11A4607: Set var_88 = Me.Txt
  loc_11A460D: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A4627: Me.TxtBookDate.MaxLength = var_90.MaxLength
  loc_11A4640: Set var_88 = Me.TxtMask
  loc_11A4646: Call 0.Method_CmdBookDetails_Click0 (CInt(0), var_90)
  loc_11A4661: Me.TxtBookTime.MaxLength = CLng(CInt(var_90.MaxLength))
  loc_11A4680: Set var_88 = Me.Txt
  loc_11A4686: Call 0.Method_CmdBookDetails_Click0 (CInt(2), var_90)
  loc_11A46A0: Me.TxtDelDate.MaxLength = var_90.MaxLength
  loc_11A46B9: Set var_88 = Me.TxtMask
  loc_11A46BF: Call 0.Method_CmdBookDetails_Click0 (CInt(1), var_90)
  loc_11A46DA: Me.TxtDelTime.MaxLength = CLng(CInt(var_90.MaxLength))
  loc_11A46F9: Set var_88 = Me.Txt
  loc_11A46FF: Call 0.Method_CmdBookDetails_Click0 (CInt(3), var_90)
  loc_11A4719: Me.TxtCustName.MaxLength = var_90.MaxLength
  loc_11A4735: Set var_88 = Me.Txt
  loc_11A473B: Call 0.Method_CmdBookDetails_Click0 (CInt(6), var_90)
  loc_11A4755: Me.TxtPhone.MaxLength = var_90.MaxLength
  loc_11A4771: Set var_88 = Me.Txt
  loc_11A4777: Call 0.Method_CmdBookDetails_Click0 (CInt(7), var_90)
  loc_11A4791: Me.TxtAddr1.MaxLength = var_90.MaxLength
  loc_11A47AD: Set var_88 = Me.Txt
  loc_11A47B3: Call 0.Method_CmdBookDetails_Click0 (CInt(8), var_90)
  loc_11A47CD: Me.TxtAddr2.MaxLength = var_90.MaxLength
  loc_11A47EB: Me.FrCustInfo.ZOrder 0
  loc_11A47FF: Me.FrCustInfo.Visible = True
  loc_11A4807: Exit Sub
End Sub

Private Sub CmdAddition_Click() 'F2C4F4
  'Data Table: 57AAC8
  loc_F2C3E9: Me.LblIndex.Caption = vbNullString
  loc_F2C3FE: Me.LblIndex.Tag = vbNullString
  loc_F2C413: Me.LblVtype.Caption = "Addition"
  loc_F2C428: Me.LblVtype.Tag = vbNullString
  loc_F2C43D: Me.TxtQty.Text = vbNullString
  loc_F2C452: Me.TxtQty.Tag = vbNullString
  loc_F2C479: Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_F2C4A4: Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_F2C4BC: Me.FrameQty.Visible = True
  loc_F2C4D4: Me.FrameQty.ZOrder 0
  loc_F2C4E8: Me.FrameGrpItem.Enabled = False
  loc_F2C4F0: Exit Sub
End Sub

Private Sub Head_Click(Index As Integer) 'EAD6A8
  'Data Table: 57AAC8
  Dim var_86 As Integer
  loc_EAD60F: var_86 = Index
  loc_EAD61A: If (var_86 = CInt(0)) Then
  loc_EAD61D:   Call TopCtrl1_UnknownEvent_11()
  loc_EAD625: Else
  loc_EAD62D:   If (var_86 = CInt(1)) Then
  loc_EAD630:     Call TopCtrl1_UnknownEvent_12()
  loc_EAD638:   Else
  loc_EAD640:     If (var_86 = CInt(2)) Then
  loc_EAD643:       Call TopCtrl1_UnknownEvent_13()
  loc_EAD64B:     Else
  loc_EAD653:       If (var_86 = CInt(3)) Then
  loc_EAD656:         Call TopCtrl1_UnknownEvent_1B()
  loc_EAD65E:       Else
  loc_EAD666:         If (var_86 = CInt(4)) Then
  loc_EAD669:           Call TopCtrl1_UnknownEvent_1C()
  loc_EAD671:         Else
  loc_EAD679:           If (var_86 = CInt(5)) Then
  loc_EAD67C:             Call TopCtrl1_UnknownEvent_19()
  loc_EAD684:           Else
  loc_EAD68C:             If (var_86 = CInt(6)) Then
  loc_EAD68F:               Call TopCtrl1_UnknownEvent_1A()
  loc_EAD697:             Else
  loc_EAD69F:               If (var_86 = CInt(7)) Then
  loc_EAD6A2:                 Call TopCtrl1_UnknownEvent_14()
  loc_EAD6A7:               End If
  loc_EAD6A7:             End If
  loc_EAD6A7:           End If
  loc_EAD6A7:         End If
  loc_EAD6A7:       End If
  loc_EAD6A7:     End If
  loc_EAD6A7:   End If
  loc_EAD6A7: End If
  loc_EAD6A7: Exit Sub
End Sub

Private Sub CmFgrid_Click(Index As Integer) '135AFB0
  'Data Table: 57AAC8
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_C6 As Integer
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_104 As MSHFlexGrid
  Dim var_124 As Variant
  loc_135A79E: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_135A7C6: var_B0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_135A7D5: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_135A7F1: Me.LblIndex.Caption = vbNullString
  loc_135A806: Me.LblIndex.Tag = vbNullString
  loc_135A81B: Me.LblVtype.Caption = vbNullString
  loc_135A830: Me.LblVtype.Tag = vbNullString
  loc_135A845: Me.TxtQty.Text = vbNullString
  loc_135A85A: Me.TxtQty.Tag = vbNullString
  loc_135A865: var_C6 = Index
  loc_135A870: If (var_C6 = CInt(0)) Then
  loc_135A892:   If (CLng(Me.FGrid.Row) > 1) Then
  loc_135A8AE:     var_B0 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_135A8BD:     Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_135A8E5:     var_B0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_135A8F4:     Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_135A925:     Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_135A934:   End If
  loc_135A937: Else
  loc_135A93F:   If (var_C6 = CInt(1)) Then
  loc_135A97D:     If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_135A999:       var_B0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_135A9A8:       Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_135A9D0:       var_B0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_135A9DF:       Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_135AA10:       Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_135AA1F:     End If
  loc_135AA22:   Else
  loc_135AA2A:     If (var_C6 = CInt(2)) Then
  loc_135AA40:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135AA48:       var_E8 = CVar(CLng(1)) 'Long
  loc_135AA7B:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135AA7E:         Exit Sub
  loc_135AA7F:       End If
  loc_135AA92:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135AA9A:       var_E8 = CVar(CLng(0)) 'Long
  loc_135AACD:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135AADC:         Me.FrameQty.Visible = False
  loc_135AAE4:         Exit Sub
  loc_135AAE5:       End If
  loc_135AB04:       Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_135AB2F:       Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_135AB47:       Me.FrameQty.Visible = True
  loc_135AB5F:       Me.FrameQty.ZOrder 0
  loc_135AB74:       Me.TxtQty.Text = vbNullString
  loc_135AB8D:       Me.TxtQty.Tag = CStr(2)
  loc_135ABA5:       Me.LblVtype.Caption = "Qty"
  loc_135ABB9:       Me.FrameGrpItem.Enabled = False
  loc_135ABC4:     Else
  loc_135ABCC:       If (var_C6 = CInt(3)) Then
  loc_135ABE2:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135ABEA:         var_E8 = CVar(CLng(1)) 'Long
  loc_135AC1D:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135AC20:           Exit Sub
  loc_135AC21:         End If
  loc_135AC34:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135AC3C:         var_E8 = CVar(CLng(0)) 'Long
  loc_135AC6F:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135AC7E:           Me.FrameQty.Visible = False
  loc_135AC86:           Exit Sub
  loc_135AC87:         End If
  loc_135ACA6:         Me.FrameQty.Left = Me.FrameFgrid.Left
  loc_135ACD1:         Me.FrameQty.Top = Me.FrameFgrid.Top
  loc_135ACE9:         Me.FrameQty.Visible = True
  loc_135AD01:         Me.FrameQty.ZOrder 0
  loc_135AD16:         Me.TxtQty.Text = vbNullString
  loc_135AD2F:         Me.TxtQty.Tag = CStr(3)
  loc_135AD47:         Me.LblVtype.Caption = "Rate"
  loc_135AD5B:         Me.FrameGrpItem.Enabled = False
  loc_135AD66:       Else
  loc_135AD6E:         If (var_C6 = CInt(4)) Then
  loc_135AD75:           Set var_104 = Me.FGrid
  loc_135AD84:           var_B0 = CVar(CLng(var_104.Row)) 'Long
  loc_135AD8C:           var_E8 = CVar(CLng(0)) 'Long
  loc_135AD9F:           var_FC = CStr(var_104.TextMatrix))
  loc_135ADB3:           var_124 = CVar(CLng(var_104.Row)) 'Long
  loc_135ADE9:           If (CVar(CLng(1)) And (CStr(var_104.TextMatrix)) <> vbNullString)) Then
  loc_135ADF8:             var_B0 = CVar(CLng(var_104.RowSel)) 'Long
  loc_135AE35:             For var_16C = CInt(CLng(var_104.RowSel)) To CInt((CLng(var_104.Rows) - 1)):         var_8A = var_16C 'Integer
  loc_135AE3F:               var_B0 = CVar(CLng(var_8A)) 'Long
  loc_135AE47:               var_E8 = CVar(CLng(0)) 'Long
  loc_135AE51:               var_A0 = CVar(CStr(var_8A)) 'String
  loc_135AE58:               LateIdCallSt
  loc_135AE66:             Next var_16C 'Integer
  loc_135AE6B:           End If
  loc_135AE6D:           Set var_104 = Nothing 
  loc_135AE74:           Call Proc_257_70_F824C4(var_A0)
  loc_135AE7F:         Else
  loc_135AE87:           If (var_C6 = CInt(5)) Then
  loc_135AE9D:             var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135AEA5:             var_E8 = CVar(CLng(1)) 'Long
  loc_135AED8:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_135AEDB:               Exit Sub
  loc_135AEDC:             End If
  loc_135AEE6:             Set var_88 = New RsTouchScreenKeyBoard
  loc_135AEEF:             var_B0 = CVar(Me) 'Address
  loc_135AEF7:             var_88.ParentForm = var_B0
  loc_135AEFF:             Set var_90 = var_B0(var_E8)
  loc_135AF0E:             var_B0 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_135AF16:             var_E8 = CVar(CLng(4)) 'Long
  loc_135AF37:             var_88.TxtKeyBoard = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_135AF5B:             var_88.Show 1, var_C0
  loc_135AF73:             var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135AF7B:             var_E8 = CVar(CLng(4)) 'Long
  loc_135AF8B:             var_D8 = CVar(TxtKeyBoard) 'String
  loc_135AF93:             Set var_C4 = Me.FGrid
  loc_135AF99:             LateIdCallSt
  loc_135AFAF:           End If
  loc_135AFAF:         End If
  loc_135AFAF:       End If
  loc_135AFAF:     End If
  loc_135AFAF:   End If
  loc_135AFAF: End If
  loc_135AFAF: Exit Sub
End Sub

Private Sub Form_Load() '120AE48
  'Data Table: 57AAC8
  Dim var_8C As Variant
  Dim var_9C As String
  Dim var_A0 As String
  Dim unk_57AACD As Connection15
  Dim Me As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Integer
  Dim var_C4 As Variant
  Dim var_E0 As Variant
  Dim var_90 As String
  Dim var_FC As String
  loc_120A9A2: global_128 = "ORDER"
  loc_120A9B2: Me.TxtNetAmt.Locked = True
  loc_120A9C6: Me.TxtTaxAmt.Locked = True
  loc_120A9D4: Set var_8C = Me.TxtDiscAmt
  loc_120A9DA: var_8C.Locked = True
  loc_120AA13: var_A0 = "Select Name,Code from ItemGrp Where RestCode='" & pRestCode & "' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_120AA1C: unk_57AACD.Execute var_A0, var_C0, -1
  loc_120AA72: var_9C = "Select I.Code,I.Name as Name,I.ItemGroup From ItemMast I where Restcode='" & pRestCode & "' And (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_120AA79: var_A0 = var_9C & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999   Order by Name"
  loc_120AA82: unk_57AACD.Execute var_A0, var_C0, -1
  loc_120AA93: Set global_80 = var_8C
  loc_120AAB7: var_C8 = Me.RecordCount
  loc_120AABF: var_C0 = CVar(var_C8) 'Long
  loc_120AAC6: Proc_6_39_E7C810(var_D8, var_C0)
  loc_120AAF0: Set var_C4 = Me.SSPItem
  loc_120AB13: Call Proc_257_58_122C3B0(Me.SSPGroup, CInt(4), Me.SSPGroup, CInt(5), var_C4)
  loc_120AB36: var_F4 = 0
  loc_120AB6B: unk_57AACD.Execute "Select Name From Depart Where Code ='" & pRestCode & "'", var_C0, -1
  loc_120AB73: var_8C = var_8C.Fields
  loc_120AB7B: var_F4 = var_C4.Item(var_C4)
  loc_120AB83: var_E0 = var_E0.Value
  loc_120AB99: Me.LblRest.Caption = CStr(var_D8)
  loc_120ABC7: Me.FrameQty.Visible = False
  loc_120ABD8: Set var_8C = Me.SSPGroup
  loc_120ABDE: Call 0.Method_Form_Load0 (0, var_C4, var_D8, CInt(var_C0))
  loc_120ABE6: var_C0 = var_C4.Width
  loc_120AC08: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_C0)) + CDbl(150))
  loc_120AC22: Set var_8C = Me.SSPGroup
  loc_120AC28: Call 0.Method_Form_Load0 (0, var_C4, var_C0, var_C0)
  loc_120AC30: var_C0 = var_C4.Height
  loc_120AC57: Me.FrameGrpItem.Height = ((CDbl((CInt(5) + 1)) * CDbl(var_C0)) + CDbl(150))
  loc_120AC6E: Call 0.Method_arg_60 (var_C8, var_C0, CInt(var_D8))
  loc_120AC7A: Set var_8C = Me.FrameGrpItem
  loc_120AC80: var_8C.BackColor = var_C8
  loc_120AC8E: Call 0.Method_arg_60 (var_C8, var_8C)
  loc_120ACA0: Me.FrCustInfo.BackColor = var_C8
  loc_120ACAE: var_F4 = 0
  loc_120ACE3: unk_57AACD.Execute "Select KOtYn from depart where Code='" & pRestCode & "'", var_C0, -1
  loc_120ACEB: var_8C = var_8C.Fields
  loc_120ACF3: var_F4 = var_C4.Item(var_C4)
  loc_120ACFB: var_E0 = var_E0.Value
  loc_120AD0E: global_88 = Proc_6_38_E68A98(var_D8, var_D8)
  loc_120AD49: Me.Recordset15.CursorLocation = 3
  loc_120AD74: var_90 = "Select P.Docid as SearchCode,P.DocID,P.Site_Code,P.LogSite_Code From PackingOrder P Inner Join Voucher_Type V On (P.VType= V.V_Type And P.LogSite_Code=V.LogSite_Code) Where v.Site_Code='" & MemVar_1F92070
  loc_120AD97: var_FC = var_90 & "' and V.LogSite_Code='" & MemVar_1F92078 & "' and V.Ncat= 'ORDER' And P.Site_Code='" & MemVar_1F92070 & "' and P.RestCode='"
  loc_120ADAF: Me.Open CVar(var_FC & pRestCode & "' Order by Docid "), CVar(MemVar_1F92044), 3
  loc_120ADED: Call Proc_257_66_EF1934(Proc_5_1_100CB50("INI", Me, New), 1)
  loc_120ADF8: Call Proc_257_57_1287DBC(-1)
  loc_120AE0D: Set var_8C = Me
  loc_120AE13: Proc_6_23_DFBA28(var_8C, 0)
  loc_120AE24: Call 0.Method_arg_160 (var_8C, 0)
  loc_120AE32: Call 0.Method_arg_164 (var_8C)
  loc_120AE3A: Call Proc_257_64_1202FBC(var_8C)
  loc_120AE3F: Call Proc_257_68_15889C4()
  loc_120AE44: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2488C
  'Data Table: 57AAC8
  Dim arg_5003 As Integer
  loc_E24871: If (global_108 = &HFF) Then
  loc_E24881:   Me.Global.Unload Me
  loc_E24889: End If
  loc_E24889: Exit Sub
  loc_E2488A: arg_5003 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3D0F8
  'Data Table: 57AAC8
  loc_E3D0CC: On Error Goto loc_E3D0F0
  loc_E3D0E7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3D0EF: Exit Sub
  loc_E3D0F0: ' Referenced from: E3D0CC
  loc_E3D0F0: Proc_6_60_E62BC4(Shift)
  loc_E3D0F5: Exit Sub
End Sub

Private Sub CmdBookDate_Click() 'F0921C
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F0914C: Set global_152 = New RsTouchScreenKeyBoard
  loc_F09165: Me.ParentForm = CVar(Me)
  loc_F09175: Me.InputType = "Date"
  loc_F09196: Set var_88 = (var_C0)
  loc_F0919C:  = Me.TextBox.MaxLength
  loc_F091AF: var_BC = CVar(())
  loc_F091B4: var_BC.MaxLength = CVar(var_C0)
  loc_F091D1: var_BC.Show 1, var_AC
  loc_F091F7: Me.TxtBookDate.Text = Proc_6_34_14ECF20(TxtKeyBoard)
  loc_F09211: Set global_152 = Nothing
  loc_F09218: Exit Sub
End Sub

Private Sub CmdBookTime_Click() 'F298AC
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F297BC: Set global_152 = New RsTouchScreenKeyBoard
  loc_F297D5: Me.ParentForm = CVar(Me)
  loc_F297E5: Me.InputType = "Time"
  loc_F29806: Set var_88 = (var_C0)
  loc_F2980C:  = Me.TextBox.MaxLength
  loc_F2981F: var_BC = CVar(())
  loc_F29824: var_BC.MaxLength = CVar(var_C0)
  loc_F29841: var_BC.Show 1, var_AC
  loc_F29882: Me.TxtBookTime.Text = CStr(Format(CVar(TxtKeyBoard), "hh:mm"))
  loc_F298A1: Set global_152 = Nothing
  loc_F298A8: Exit Sub
End Sub

Private Sub CmdDelDate_Click() 'F088DC
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F0880C: Set global_152 = New RsTouchScreenKeyBoard
  loc_F08825: Me.ParentForm = CVar(Me)
  loc_F08835: Me.InputType = "Date"
  loc_F08856: Set var_88 = (var_C0)
  loc_F0885C:  = Me.TextBox.MaxLength
  loc_F0886F: var_BC = CVar(())
  loc_F08874: var_BC.MaxLength = CVar(var_C0)
  loc_F08891: var_BC.Show 1, var_AC
  loc_F088B7: Me.TxtDelDate.Text = Proc_6_34_14ECF20(TxtKeyBoard)
  loc_F088D1: Set global_152 = Nothing
  loc_F088D8: Exit Sub
End Sub

Private Sub CmdDelTime_Click() 'F2A30C
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_F2A21C: Set global_152 = New RsTouchScreenKeyBoard
  loc_F2A235: Me.ParentForm = CVar(Me)
  loc_F2A245: Me.InputType = "Time"
  loc_F2A266: Set var_88 = (var_C0)
  loc_F2A26C:  = Me.TextBox.MaxLength
  loc_F2A27F: var_BC = CVar(())
  loc_F2A284: var_BC.MaxLength = CVar(var_C0)
  loc_F2A2A1: var_BC.Show 1, var_AC
  loc_F2A2E2: Me.TxtDelTime.Text = CStr(Format(CVar(TxtKeyBoard), "hh:mm"))
  loc_F2A301: Set global_152 = Nothing
  loc_F2A308: Exit Sub
End Sub

Private Sub CmdPhone_Click() '10520F0
  'Data Table: 57AAC8
  Dim var_C0 As Variant
  Dim var_8C As Variant
  Dim unk_57AACD As Connection15
  Dim var_88 As Recordset15
  loc_1051E9C: Set global_152 = New RsTouchScreenKeyBoard
  loc_1051EB5: Me.ParentForm = CVar(Me)
  loc_1051EC5: Me.InputType = "Numeric"
  loc_1051EE6: Set var_8C = (var_C4)
  loc_1051EEC:  = Me.TextBox.MaxLength
  loc_1051EFF: var_C0 = CVar(())
  loc_1051F04: var_C0.MaxLength = CVar(var_C4)
  loc_1051F21: var_C0.Show 1, var_B0
  loc_1051F3B: Me.TxtPhone.Text = TxtKeyBoard
  loc_1051F7C: unk_57AACD.Execute "Select CustName,Addr1,Addr2 from PackingOrder Where PhoneNo='" & Me.TxtPhone.Text & "'", var_C0, -1
  loc_1051F87: Set var_88 = var_90
  loc_1051FB1: If (var_88.RecordCount > 0) Then
  loc_1051FB7:   var_88.MoveLast
  loc_1051FF1:   Me.TxtCustName.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CustName")))
  loc_1052038:   Me.TxtAddr1.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Addr1")))
  loc_105207F:   Me.TxtAddr2.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Addr2")))
  loc_1052094: Else
  loc_10520A1:   Me.TxtCustName.Text = vbNullString
  loc_10520B6:   Me.TxtAddr1.Text = vbNullString
  loc_10520CB:   Me.TxtAddr2.Text = vbNullString
  loc_10520D3: End If
  loc_10520D8: Set var_88 = Nothing
  loc_10520E6: Set global_152 = Nothing
  loc_10520ED: Exit Sub
End Sub

Public Sub SSPGroup_UnknownEvent_9(Index As Integer) 'F57690
  'Data Table: 57AAC8
  Dim Me As Variant
  Dim var_9C As SSPanel
  Dim var_C4 As Variant
  loc_F57587: Me.Filter = 0
  loc_F57592: Me.MoveFirst
  loc_F575A4: Set var_98 = Me.SSPGroup
  loc_F575AA: Call 0.Method_SSPGroup_UnknownEvent_90 (Index, var_9C)
  loc_F575C5: var_C4 = CVar("ItemGroup='" & CStr(var_9C.Tag) & "'") 'String
  loc_F575CF: Me.Filter = var_C4
  loc_F57601: Proc_6_39_E7C810(var_C4)
  loc_F5760D: global_68 = CInt(var_C4)
  loc_F5762E: If (Me.RecordCount > 0) Then
  loc_F57637:   global_72 = "Item"
  loc_F5764F:   Set var_9C = Me.SSPGroup
  loc_F57672:   Call Proc_257_58_122C3B0(Me.SSPItem, CInt(4), global_80, CInt(5))
  loc_F5767E:   global_76 = CInt(CVar(Me.RecordCount))
  loc_F5768F: End If
  loc_F5768F: Exit Sub
End Sub

Public Sub SSPItem_UnknownEvent_9(Index As Integer) '1256EF0
  'Data Table: 57AAC8
  Dim var_94 As String
  Dim var_9C As String
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim unk_57AACD As Connection15
  Dim var_F0 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_A4 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_184 As TextBox
  Dim var_150 As Variant
  Dim var_19C As Variant
  Dim var_180 As Variant
  Dim var_1FC As Variant
  Dim var_98 As String
  loc_12569DC: var_94 = "Select I.Code,I.Name as Name,I.Unit,I.SaleRate as Rate,I.ConvRatio,I.DispCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_12569E3: var_9C = var_94 & "' or I.LOGSITE_CODE='HO') and (I.TYPE='Raw Material' OR I.TYPE='Store Item' OR I.TYPE='Finish' OR I.DirectSale='Y' OR I.Type='Consumables')  and I.Restcode='"
  loc_12569E9: var_98 = pRestCode
  loc_1256A06: Set var_A4 = Me.SSPItem
  loc_1256A0C: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_A8, var_9C & var_98 & "' And I.Code='")
  loc_1256A30: unk_57AACD.Execute var_E8 & CStr(var_A8.Tag) & "' And I.DispCode <>9999 Order by I.Name ", -1, var_EC
  loc_1256A3B: Set var_8C = var_EC
  loc_1256A65: Set var_F0 = Me.FGrid
  loc_1256A7A: var_D8 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1256A82: var_110 = CVar(CLng(0)) 'Long
  loc_1256A9B: var_130 = CVar(CStr((CLng(var_F0.Rows) - 1))) 'String
  loc_1256AA2: LateIdCallSt
  loc_1256AC5: var_100 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1256ACD: var_120 = CVar(CLng(1)) 'Long
  loc_1256AFD: var_130 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_1256B04: LateIdCallSt
  loc_1256B2E: var_100 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1256B36: var_120 = CVar(CLng(2)) 'Long
  loc_1256B66: var_130 = CVar(CStr(var_8C.Fields.Item("DispCode").Value)) 'String
  loc_1256B6D: LateIdCallSt
  loc_1256B97: var_100 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1256B9F: var_120 = CVar(CLng(3)) 'Long
  loc_1256BCF: var_130 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1256BD6: LateIdCallSt
  loc_1256C00: var_D8 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1256C08: var_110 = CVar(CLng(4)) 'Long
  loc_1256C0D: var_140 = vbNullString
  loc_1256C16: LateIdCallSt
  loc_1256C33: var_110 = CVar((CLng(var_F0.Rows) - 1)) 'Long
  loc_1256C3B: var_140 = CVar(CLng(5)) 'Long
  loc_1256C73: LateIdCallSt
  loc_1256CAA: var_B8 = var_8C.Fields.Item("Code").Value
  loc_1256CBD: Set var_EC = Me.Txt
  loc_1256CC3: Call 0.Method_SSPItem_UnknownEvent_90 (CInt(1), var_184, var_98, var_F0, CVar(CStr(Format("1", "0.000"))), 1, 1)
  loc_1256CCB: var_140 = var_184.Text
  loc_1256CE2: Call Proc_257_56_F072E8(CStr(var_B8), var_98, var_18C, var_110, var_F0)
  loc_1256CF9: var_120 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1256D01: var_150 = CVar(CLng(6)) 'Long
  loc_1256D1E: var_E8 = CVar(var_18C) 'Double
  loc_1256D25: var_160 = Format(var_E8, "0.00")
  loc_1256D2E: var_19C = CVar(CStr(var_160)) 'String
  loc_1256D35: LateIdCallSt
  loc_1256D70: var_D8 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1256D78: var_110 = CVar(CLng(6)) 'Long
  loc_1256D9E: var_140 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1256DA6: var_180 = CVar(CLng(5)) 'Long
  loc_1256DCC: var_1FC = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1256E18: LateIdCallSt
  loc_1256E3F: Call Proc_257_70_F824C4(var_B8, var_F0, CVar(CStr(Format(CVar((CDbl(CStr(var_E8)) * CDbl(CStr(var_160)))), "0.00"))), 1, 1, CVar(CLng(7)), var_1FC, Txt.DispID_41)
  loc_1256E59: var_D8 = CVar((CLng(Txt.DispID_4) + 1)) 'Long
  loc_1256E6B: Set var_F0 = Nothing 
  loc_1256E74: Set var_8C = Nothing
  loc_1256E7C: Set var_90 = Nothing
  loc_1256E98: var_D8 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_1256EA7: Me.FGrid.Row = "Code"
  loc_1256ECF: var_D8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_1256EDE: Me.FGrid.ColSel = "Code"
  loc_1256EED: Exit Sub
End Sub

Private Sub CmdQty_Click(Index As Integer) '1394394
  'Data Table: 57AAC8
  Dim var_88 As Integer
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim var_BC As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_13C As Variant
  Dim var_C4 As String
  Dim var_184 As Double
  Dim var_15C As Variant
  Dim var_CC As String
  loc_1393AC3: var_88 = Index
  loc_1393ACC: If Not (var_88 = 0) Then
  loc_1393AD5:   If Not (var_88 = 1) Then
  loc_1393ADE:     If Not (var_88 = 2) Then
  loc_1393AE7:       If Not (var_88 = 3) Then
  loc_1393AF0:         If Not (var_88 = 4) Then
  loc_1393AF9:           If Not (var_88 = 5) Then
  loc_1393B02:             If Not (var_88 = 6) Then
  loc_1393B0B:               If Not (var_88 = 7) Then
  loc_1393B14:                 If Not (var_88 = 8) Then
  loc_1393B1D:                   If (var_88 = 9) Then
  loc_1393B20:                   End If
  loc_1393B20:                 End If
  loc_1393B20:               End If
  loc_1393B20:             End If
  loc_1393B20:           End If
  loc_1393B20:         End If
  loc_1393B20:       End If
  loc_1393B20:     End If
  loc_1393B20:   End If
  loc_1393B44:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1393B54:     var_CC = Me.TxtQty.Text
  loc_1393B69:     Set var_BC = Me.CmdQty
  loc_1393B6F:     Call 0.Method_CmdQty_Click0 (Index, var_C0, var_C4)
  loc_1393B77:     var_CC = var_C0.Caption
  loc_1393B8D:     Me.TxtQty.Text = var_88 & var_C4
  loc_1393BA9:   Else
  loc_1393BB8:     Me.TxtQty.MaxLength = 5
  loc_1393BE2:     Set var_BC = Me.CmdQty
  loc_1393BE8:     Call 0.Method_CmdQty_Click0 (Index, var_C0)
  loc_1393C06:     Me.TxtQty.Text = Me.TxtQty.Text & var_C0.Caption
  loc_1393C1F:   End If
  loc_1393C22: Else
  loc_1393C28:   If (var_88 = &HA) Then
  loc_1393C55:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_1393C77:       Set var_C0 = Me.TxtQty
  loc_1393C7D:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_1393CAB:       Set var_BC = Me.CmdQty
  loc_1393CB1:       Call 0.Method_CmdQty_Click0 (Index, var_C0)
  loc_1393CCF:       Me.TxtQty.Text = Me.TxtQty.Text & var_C0.Caption
  loc_1393D27:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_1393D37:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_1393D50:     End If
  loc_1393D53:   Else
  loc_1393D5B:     If (var_88 = CInt(&HB)) Then
  loc_1393D6B:       Me.TxtQty.Text = vbNullString
  loc_1393D76:     Else
  loc_1393D7E:       If (var_88 = CInt(&HD)) Then
  loc_1393DE8:         If (((Me.LblVtype.Caption = "Qty") Or (Me.LblVtype.Caption = "Rate")) And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1393DEF:           Set var_12C = Me.FGrid
  loc_1393DFE:           var_98 = CVar(CLng(var_12C.RowSel)) 'Long
  loc_1393E06:           var_13C = CVar(CLng(0)) 'Long
  loc_1393E2B:           If (CStr(var_12C.TextMatrix)) = vbNullString) Then
  loc_1393E3A:             Me.FrameQty.Visible = False
  loc_1393E42:             Exit Sub
  loc_1393E43:           End If
  loc_1393E68:           If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_1393E8B:             If (Me.TxtQty.Text = vbNullString) Then
  loc_1393E9B:               Me.TxtQty.Text = "1"
  loc_1393EA3:             End If
  loc_1393ECC:             var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1393ED4:             var_15C = CVar(CLng(5)) 'Long
  loc_1393F01:             var_118 = CVar(CStr(Format(CVar(Val(Me.TxtQty.Text)), "0.000"))) 'String
  loc_1393F08:             LateIdCallSt
  loc_1393F23:           End If
  loc_1393F48:           If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(3)) Then
  loc_1393F65:             var_184 = Val(Me.TxtQty.Text)
  loc_1393F74:             var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1393F7C:             var_15C = CVar(CLng(6)) 'Long
  loc_1393F99:             var_A8 = CVar(var_184) 'Double
  loc_1393FA9:             var_118 = CVar(CStr(Format(var_A8, "0.00"))) 'String
  loc_1393FB0:             LateIdCallSt
  loc_1393FCB:           End If
  loc_1393FCE:           Call Proc_257_70_F824C4(var_A8, var_12C, var_118, 1, 1, var_15C, var_13C, var_184)
  loc_1393FD8:           Set var_12C = Nothing 
  loc_1393FE8:           Me.FrameQty.Visible = False
  loc_1393FFC:           Me.FrameGrpItem.Enabled = True
  loc_1394007:         Else
  loc_139404F:           If ((Me.LblVtype.Caption = "Discount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_139407B:             Me.TxtDiscPer.Text = CStr(Val(Me.TxtQty.Text))
  loc_1394091:             Call Proc_257_70_F824C4(var_A8, var_12C, var_118, 1, 1)
  loc_13940A5:             Me.FrameQty.Visible = False
  loc_13940B9:             Me.FrameGrpItem.Enabled = True
  loc_13940C4:           Else
  loc_139410C:             If ((Me.LblVtype.Caption = "Tax") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1394138:               Me.TxtTaxPer.Text = CStr(Val(Me.TxtQty.Text))
  loc_139414E:               Call Proc_257_70_F824C4(var_A8, var_15C, var_13C)
  loc_1394162:               Me.FrameQty.Visible = False
  loc_1394176:               Me.FrameGrpItem.Enabled = True
  loc_1394181:             Else
  loc_13941C9:               If ((Me.LblVtype.Caption = "Addition") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1394201:                 var_A8 = CVar(Val(Me.TxtQty.Text)) 'Double
  loc_139421E:                 Me.TxtAdd.Text = CStr(Format(var_A8, "0.00"))
  loc_139423D:                 Call Proc_257_70_F824C4(var_A8, 1, 1)
  loc_1394251:                 Me.FrameQty.Visible = False
  loc_1394265:                 Me.FrameGrpItem.Enabled = True
  loc_1394270:               Else
  loc_13942B8:                 If ((Me.LblVtype.Caption = "Advance") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_13942D5:                   var_184 = Val(Me.TxtQty.Text)
  loc_13942F0:                   var_A8 = CVar(var_184) 'Double
  loc_139430D:                   Me.TxtAdvAmt.Text = CStr(Format(var_A8, "0.00"))
  loc_139432C:                   Call Proc_257_70_F824C4(var_A8, 1, 1, var_184)
  loc_1394340:                   Me.FrameQty.Visible = False
  loc_1394354:                   Me.FrameGrpItem.Enabled = True
  loc_139435C:                 End If
  loc_139435C:               End If
  loc_139435C:             End If
  loc_139435C:           End If
  loc_139435C:         End If
  loc_139435F:       Else
  loc_1394367:         If (var_88 = CInt(&HC)) Then
  loc_1394376:           Me.FrameQty.Visible = False
  loc_139438A:           Me.FrameGrpItem.Enabled = True
  loc_1394392:         End If
  loc_1394392:       End If
  loc_1394392:     End If
  loc_1394392:   End If
  loc_1394392: End If
  loc_1394392: Exit Sub
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10EE8B8
  'Data Table: 57AAC8
  Dim Me As Variant
  loc_10EE59B: If (global_72 = "Item") Then
  loc_10EE5A4:   global_72 = "Item"
  loc_10EE5BF:   If (Me.AbsolutePosition = -3) Then
  loc_10EE5CD:     If (global_68 > CInt(&H14)) Then
  loc_10EE5F1:       Me.AbsolutePosition = CLng((((global_68 - (global_68 Mod CInt(&H14))) - CInt(&H14)) + 1))
  loc_10EE60A:       Set var_94 = Me.SSPItem
  loc_10EE62D:       Call Proc_257_58_122C3B0(Me.SSPItem, CInt(4), global_80)
  loc_10EE639:       global_76 = CInt(var_A4)
  loc_10EE64A:     End If
  loc_10EE64D:   Else
  loc_10EE67C:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EE694:       If (Me.AbsolutePosition = CLng(&H14)) Then
  loc_10EE6A2:         Me.AbsolutePosition = 1
  loc_10EE6AA:       Else
  loc_10EE6D0:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H14)))) + 1)
  loc_10EE6D5:       End If
  loc_10EE70C:       Call Proc_257_58_122C3B0(Me.SSPItem, CInt(4), global_80, CInt(5), Me.SSPItem)
  loc_10EE718:       global_76 = CInt(var_A4)
  loc_10EE729:     End If
  loc_10EE729:   End If
  loc_10EE72C: Else
  loc_10EE732:   global_72 = "Group"
  loc_10EE74D:   If (Me.AbsolutePosition = -3) Then
  loc_10EE75B:     If (global_78 > CInt(&H14)) Then
  loc_10EE77F:       Me.AbsolutePosition = CLng((((global_78 - (global_78 Mod CInt(&H14))) - CInt(&H14)) + 1))
  loc_10EE7BB:       Call Proc_257_58_122C3B0(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPGroup, var_A4)
  loc_10EE7C7:       global_76 = CInt(var_A4)
  loc_10EE7D8:     End If
  loc_10EE7DB:   Else
  loc_10EE80A:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EE822:       If (Me.AbsolutePosition = CLng(&H14)) Then
  loc_10EE830:         Me.AbsolutePosition = 1
  loc_10EE838:       Else
  loc_10EE85E:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H14)))) + 1)
  loc_10EE863:       End If
  loc_10EE89A:       Call Proc_257_58_122C3B0(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPGroup, var_A4, global_76)
  loc_10EE8A6:       global_76 = CInt(var_A4)
  loc_10EE8B7:     End If
  loc_10EE8B7:   End If
  loc_10EE8B7: End If
  loc_10EE8B7: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F33628
  'Data Table: 57AAC8
  Dim Me As Variant
  loc_F3351B: If (global_72 = "Item") Then
  loc_F33524:   global_72 = "Item"
  loc_F3353F:   If (Me.AbsolutePosition > 0) Then
  loc_F33548:     Me.MoveNext
  loc_F33561:     Set var_94 = Me.SSPItem
  loc_F33584:     Call Proc_257_58_122C3B0(Me.SSPItem, CInt(4), global_80)
  loc_F33590:     global_76 = CInt(var_A4)
  loc_F335A1:   End If
  loc_F335A4: Else
  loc_F335AA:   global_72 = "Group"
  loc_F335C5:   If (Me.AbsolutePosition > 0) Then
  loc_F335CE:     Me.MoveNext
  loc_F3360A:     Call Proc_257_58_122C3B0(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPGroup)
  loc_F33616:     global_76 = CInt(var_A4)
  loc_F33627:   End If
  loc_F33627: End If
  loc_F33627: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_0(Index As Integer) 'E47EE4
  'Data Table: 57AAC8
  loc_E47EC2: Set var_88 = Me.TxtMask
  loc_E47EC8: Call 0.Method_TxtMask_UnknownEvent_00 (Index)
  loc_E47ED6: Proc_6_74_E226B0(var_8C)
  loc_E47EE2: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_1(Index As Integer) 'E47E14
  'Data Table: 57AAC8
  loc_E47DF2: Set var_88 = Me.TxtMask
  loc_E47DF8: Call 0.Method_TxtMask_UnknownEvent_10 (Index)
  loc_E47E06: Proc_6_73_E22704(var_8C)
  loc_E47E12: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_8(arg_C, arg_10) 'EDD1A4
  'Data Table: 57AAC8
  Dim var_86 As Integer
  Dim var_90 As MaskEdBox
  Dim arg_10 As Integer
  loc_EDD0FB: var_86 = arg_C
  loc_EDD106: If Not (var_86 = CInt(0)) Then
  loc_EDD111:   If (var_86 = CInt(1)) Then
  loc_EDD114:   End If
  loc_EDD11E:   Set var_8C = Me.TxtMask
  loc_EDD124:   Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDD149:   If (CStr(var_90.defaultText) > "24:00") Then
  loc_EDD165:     MsgBox("Invalid Time", 0, var_D4, var_F4, var_114)
  loc_EDD177:     arg_10 = &HFF
  loc_EDD184:     Set var_8C = Me.TxtMask
  loc_EDD18A:     Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDD1A1:     Exit Sub
  loc_EDD1A2:   End If
  loc_EDD1A2: End If
  loc_EDD1A2: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_B 'F50ADC
  'Data Table: 57AAC8
  Dim var_86 As Integer
  loc_F509B7: var_86 = arg_10
  loc_F509C4: If (CLng(arg_10) = &H1B) Then
  loc_F509C7:   Exit Sub
  loc_F509C8: End If
  loc_F509DD: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F509E6:   Proc_6_75_E527CC(arg_10, arg_14)
  loc_F509EB: End If
  loc_F509EF: Set var_8C = Me.TopCtrl1
  loc_F509F5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_86)
  loc_F50A0A: If ( = "Add") Then
  loc_F50A22:   If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F50A2B:     Proc_6_76_E52838(arg_10)
  loc_F50A30:   End If
  loc_F50A33: Else
  loc_F50A48:   If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F50A51:     Proc_6_75_E527CC(arg_10, arg_14)
  loc_F50A56:   End If
  loc_F50A56: End If
  loc_F50A5A: Set var_8C = Me.TopCtrl1
  loc_F50A60: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_14)
  loc_F50A75: If ( = "Edit") Then
  loc_F50A8D:   If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F50A96:     Proc_6_76_E52838(arg_10)
  loc_F50A9B:   End If
  loc_F50A9E: Else
  loc_F50AB3:   If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F50ABC:     Proc_6_75_E527CC(arg_10, arg_14)
  loc_F50AC1:   End If
  loc_F50AC1: End If
  loc_F50AD6: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F50AD9: End If
  loc_F50AD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 '11497E4
  'Data Table: 57AAC8
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_A8 As String
  Dim unk_57AACD As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_DC As TextBox
  Dim var_D8 As TextBox
  Dim var_D0 As Variant
  Dim var_EC As Variant
  loc_114946C: On Error Goto loc_11497DE
  loc_1149492: Call Proc_257_66_EF1934(Proc_5_1_100CB50("ADD", Me))
  loc_114949D: Call Proc_257_57_1287DBC(global_56)
  loc_11494A2: Call Proc_257_65_FF4B14()
  loc_11494BA: Set var_90 = Me.Txt
  loc_11494C0: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_98)
  loc_11494C8: var_98.Text = CStr(MemVar_1F920EC)
  loc_11494EA: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98)
  loc_11494F2: var_98.Enabled = False
  loc_114952F: var_A8 = "Select Description,V_Type From Voucher_Type Where RestCode='" & pRestCode & "' and logSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_1149546: unk_57AACD.Execute var_A8 & MemVar_1F92070 & "' and NCat='ORDER'", var_D0, -1
  loc_1149551: Set var_88 = Me.Txt
  loc_114957F: If (var_88.RecordCount > 0) Then
  loc_11495BB:   Set var_D8 = Me.Txt
  loc_11495C1:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_DC)
  loc_11495C9:   var_DC.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_11495F9:   var_98 = var_88.Fields.Item("V_Type")
  loc_1149618:   Set var_D8 = Me.Txt
  loc_114961E:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_DC)
  loc_1149626:   var_DC.Tag = CStr(var_98.Value)
  loc_114963C: End If
  loc_114964F: Set var_90 = Me.Txt
  loc_1149655: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_98)
  loc_114965D: var_98.Text = CStr(MemVar_1F920EC)
  loc_1149676: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(Me.TopCtrl1)
  loc_1149695: Set var_98 = Me.Txt
  loc_114969B: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_D8)
  loc_11496A3: var_8C = var_D8.Text
  loc_11496CD: If CBool(( = "Add") And (var_8C = vbNullString)) Then
  loc_11496D6:   Call Proc_257_67_10E6DA8(MemVar_1F92044)
  loc_11496E9:   Set var_90 = Me.Txt
  loc_11496EF:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(4), var_98)
  loc_11496F7:   var_98.Text = var_8C
  loc_1149706: End If
  loc_1149741: Set var_90 = Me.TxtMask
  loc_1149747: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98, CVar(CStr(Format(Time, "hh:mm"))))
  loc_114974F: var_98.defaultText = 1
  loc_1149779: Me.FGrid.Rows = 1
  loc_1149796: var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_114979E: Set var_98 = Me.FGrid
  loc_11497CD: Me.FGrid.FixedRows = 1
  loc_11497DA: Set var_88 = Nothing
  loc_11497DD: Exit Sub
  loc_11497DE: ' Referenced from: 114946C
  loc_11497DE: Proc_6_60_E62BC4(FGrid.DispID_10000, var_EC)
  loc_11497E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 '1008E80
  'Data Table: 57AAC8
  Dim var_8C As Variant
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_1008C78: On Error Goto loc_1008E79
  loc_1008C89: Set var_88 = Me.Txt
  loc_1008C8F: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(4), var_8C)
  loc_1008CA2: var_98 = "Edit"
  loc_1008CB5: Call Proc_257_61_F10B30(global_128, var_8C.Text)
  loc_1008CCE: If (var_9A = 0) Then
  loc_1008CD1:   Exit Sub
  loc_1008CD2: End If
  loc_1008CF5: Call Proc_257_66_EF1934(Proc_5_1_100CB50("EDIT", Me, global_56), var_98)
  loc_1008D00: Call Proc_257_57_1287DBC(var_9A)
  loc_1008D1E: var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1008D26: var_DC = CVar(CLng(1)) 'Long
  loc_1008D2F: Set var_8C = Me.FGrid
  loc_1008D59: If (CStr(var_8C.TextMatrix)) <> vbNullString) Then
  loc_1008D5C:   var_BC = vbNullString
  loc_1008D66:   Set var_88 = Me.FGrid
  loc_1008D77: End If
  loc_1008D84: Set var_88 = Me.Txt
  loc_1008D8A: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_8C, 0, FGrid.DispID_10000)
  loc_1008D92: var_8C.Enabled = var_BC
  loc_1008DAB: Set var_88 = Me.Txt
  loc_1008DB1: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_8C, 0)
  loc_1008DB9: var_8C.Enabled = var_DC
  loc_1008DC5: var_BC = False
  loc_1008DD5: Set var_88 = Me.TxtMask
  loc_1008DDB: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_8C)
  loc_1008DE3: var_8C.Enabled = var_BC
  loc_1008DFC: Set var_88 = Me.Txt
  loc_1008E02: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_8C)
  loc_1008E0A: var_8C.Enabled = True
  loc_1008E23: Set var_88 = Me.Txt
  loc_1008E29: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_8C)
  loc_1008E31: var_8C.Enabled = True
  loc_1008E4A: Set var_88 = Me.Txt
  loc_1008E50: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(3), var_8C)
  loc_1008E58: var_8C.Enabled = False
  loc_1008E70: Me.CmdAdvance.Enabled = True
  loc_1008E78: Exit Sub
  loc_1008E79: ' Referenced from: 1008C78
  loc_1008E79: Proc_6_60_E62BC4(var_BC)
  loc_1008E7E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1219A94
  'Data Table: 57AAC8
  Dim var_A8 As Variant
  Dim unk_57AACD As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_120 As Variant
  Dim var_AC As String
  Dim var_D4 As Variant
  loc_12195F4: On Error Goto loc_1219A43
  loc_1219605: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_1219608:   Exit Sub
  loc_1219609: End If
  loc_1219636: Set var_A4 = Me.Txt
  loc_121963C: Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(4), var_A8, var_AC, "select count(*) from PackingOrderDetail where ContradOCID='", var_D4, -1)
  loc_121965D: unk_57AACD.Execute var_DC & var_AC & "'", 0, var_F0
  loc_121966D:  = var_DC.Item()
  loc_1219675:  = var_F0.Value
  loc_12196A2: If (var_A8.Text.Fields > 0) Then
  loc_12196C6:   MsgBox("You Can't Delete it.", &H10, "Delete Validation", var_120, var_140)
  loc_12196DA:   Set var_A4 = Me.FGrid
  loc_12196EB:   Exit Sub
  loc_12196EC: End If
  loc_1219723: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_120, var_140) = 6) Then
  loc_121972F:   unk_57AACD.BeginTrans var_144
  loc_121978A:   unk_57AACD.Execute CStr("Delete From PackingOrderDetail Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_12197D5:   var_174 = 0
  loc_12197E8:   var_16C = 0
  loc_12197F3:   var_168 = 0
  loc_1219806:   var_160 = 0
  loc_1219811:   var_15C = 0
  loc_1219824:   var_154 = 0
  loc_121986D:   Proc_154_5_10E33A4(MemVar_1F92044, "PackingOrderDetail", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12198DD:   var_120 = "Delete From PackingOrder Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12198EB:   unk_57AACD.Execute CStr(var_120), var_140, -1
  loc_1219936:   var_174 = 0
  loc_1219949:   var_16C = 0
  loc_1219954:   var_168 = 0
  loc_12199C5:   var_AC = "PackingOrder"
  loc_12199CE:   Proc_154_5_10E33A4(MemVar_1F92044, var_AC, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12199FC:   unk_57AACD.CommitTrans
  loc_1219A0C:   Me.Requery -1
  loc_1219A11:   Call Proc_257_68_15889C4(0, 0, 0, 0)
  loc_1219A32:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_1219A3A: End If
  loc_1219A3F: Set var_98 = Nothing
  loc_1219A42: Exit Sub
  loc_1219A43: ' Referenced from: 12195F4
  loc_1219A49: unk_57AACD.RollbackTrans
  loc_1219A56: Set var_A4 = Err()
  loc_1219A5C: Call 0.Method_arg_2C (var_AC, 0, var_168)
  loc_1219A7D: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_120, var_140)
  loc_1219A90: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1BDD0
  'Data Table: 57AAC8
  loc_E1BDC5: Me.Global.Unload Me
  loc_E1BDCD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3AFF8
  'Data Table: 57AAC8
  loc_E3AFE8: Proc_5_0_110649C(&HFF, Me)
  loc_E3AFF0: Call Proc_257_68_15889C4(global_56)
  loc_E3AFF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3CD38
  'Data Table: 57AAC8
  loc_E3CD28: Proc_5_0_110649C(&HFF, Me)
  loc_E3CD30: Call Proc_257_68_15889C4(global_56)
  loc_E3CD35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3A758
  'Data Table: 57AAC8
  loc_E3A748: Proc_5_0_110649C(&HFF, Me)
  loc_E3A750: Call Proc_257_68_15889C4(global_56)
  loc_E3A755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3AF98
  'Data Table: 57AAC8
  loc_E3AF88: Proc_5_0_110649C(&HFF, Me)
  loc_E3AF90: Call Proc_257_68_15889C4(global_56)
  loc_E3AF95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1606740
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_9C As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_12C As String
  Dim var_150 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_1B0 As Variant
  Dim var_CC As Variant
  Dim var_1B4 As String
  Dim unk_57AACD As Connection15
  Dim var_A4 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_1E0 As TextBox
  Dim var_204 As Variant
  Dim var_284 As MaskEdBox
  Dim var_294 As Variant
  Dim var_2CC As TextBox
  Dim var_8B0 As Double
  Dim var_8B8 As Double
  Dim var_8C0 As Double
  Dim var_8C8 As Double
  Dim var_8D0 As Double
  Dim var_8D8 As Double
  Dim var_1D0 As String
  Dim var_1D8 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_2A4 As Variant
  Dim var_EC As Variant
  Dim var_2F0 As Variant
  Dim var_160 As Variant
  Dim var_368 As Variant
  Dim var_488 As Variant
  Dim var_4C8 As Variant
  Dim var_4E8 As Variant
  Dim var_6B0 As Variant
  Dim var_1C8 As String
  Dim var_1F8 As MSHFlexGrid
  Dim var_1FC As MSHFlexGrid
  Dim var_200 As MSHFlexGrid
  Dim var_238 As MSHFlexGrid
  Dim var_2D0 As String
  Dim var_330 As String
  Dim var_25C As Variant
  Dim var_508 As Variant
  Dim var_88 As Recordset15
  loc_16054A3: Set var_9C = Me.Txt
  loc_16054A9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_16054D2: If (Proc_6_27_EA565C(var_A0, "Booking Date") = 0) Then
  loc_16054D5:   Exit Sub
  loc_16054D6: End If
  loc_16054E1: Set var_9C = Me.TxtMask
  loc_16054E7: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_1605510: If (Proc_6_27_EA565C(var_A0, "Booking Time") = 0) Then
  loc_1605513:   Exit Sub
  loc_1605514: End If
  loc_160551F: Set var_9C = Me.Txt
  loc_1605525: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A0)
  loc_160554E: If (Proc_6_27_EA565C(var_A0, "Delivery Date") = 0) Then
  loc_1605551:   Exit Sub
  loc_1605552: End If
  loc_160555D: Set var_9C = Me.TxtMask
  loc_1605563: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_160558C: If (Proc_6_27_EA565C(var_A0, "Delivery Time") = 0) Then
  loc_160558F:   Exit Sub
  loc_1605590: End If
  loc_160559B: Set var_9C = Me.Txt
  loc_16055A1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_A0)
  loc_16055CA: If (Proc_6_27_EA565C(var_A0, "Customer Name") = 0) Then
  loc_16055CD:   Exit Sub
  loc_16055CE: End If
  loc_16055D1: Call Proc_257_69_109A254(var_AA)
  loc_16055DC: If (var_AA = 0) Then
  loc_16055DF:   Exit Sub
  loc_16055E0: End If
  loc_16055E0: var_BC = 1
  loc_16055E9: var_DC = 1
  loc_1605607: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_160560D: var_11C = Trim(var_10C)
  loc_1605629: If (var_11C = vbNullString) Then
  loc_1605645:   MsgBox("Item Detail Required ", 0, var_10C, var_11C, var_13C)
  loc_1605668:   Me.FGrid.Row = 1
  loc_1605674:   Set var_9C = Me.FGrid
  loc_1605698:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16056A0:   Exit Sub
  loc_16056A1: End If
  loc_16056C6: For var_140 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_140 'Integer
  loc_16056D0:   var_BC = CVar(CLng(var_92)) 'Long
  loc_16056D8:   var_DC = CVar(CLng(3)) 'Long
  loc_16056F2:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1605700:   var_12C = vbNullString
  loc_160570E:   var_150 = CVar(CLng(var_92)) 'Long
  loc_160571F:   Set var_A0 = Me.FGrid
  loc_1605730:   var_A8 = CStr(var_A0.TextMatrix))
  loc_160575E:   If CBool(CVar(CLng(5)) And (CDbl(Val(var_A8)) <> CDbl(0))) Then
  loc_1605774:     var_FC = "Item Name Required "
  loc_160577A:     MsgBox(var_FC, 0, var_10C, Trim(var_10C), var_13C)
  loc_160579D:     Me.FGrid.Row = 1
  loc_16057A9:     Set var_9C = Me.FGrid
  loc_16057CD:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16057D5:     Exit Sub
  loc_16057D6:   End If
  loc_16057D9: Next var_140 'Integer
  loc_16057E2: Set var_9C = Me.TopCtrl1
  loc_16057E8: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_16057FD: If ( = "Add") Then
  loc_160582D:   Set var_9C = Me.Txt
  loc_1605833:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, "Select Count(*) From PackingOrder Where DocID='", var_FC, -1)
  loc_160583B:   var_A4 = var_A0.Text
  loc_1605854:   unk_57AACD.Execute var_1BC & var_A8 & "'", 0, var_1C0
  loc_160585C:   var_10C = var_A4.Fields
  loc_1605864:    = var_1BC.Item()
  loc_160586C:    = var_1C0.Value
  loc_1605899:   If (var_10C > 0) Then
  loc_16058A2:     Call Proc_257_67_10E6DA8(MemVar_1F92044)
  loc_16058B5:     Set var_9C = Me.Txt
  loc_16058BB:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0)
  loc_16058C3:     var_A0.Text = var_A8
  loc_16058D2:     Exit Sub
  loc_16058D3:   End If
  loc_16058D6: Else
  loc_16058F3:   var_A0 = Me.Fields.Item("DocID")
  loc_16058FB:   var_FC = var_A0.Value
  loc_1605904:   var_A8 = CStr(var_FC)
  loc_160590A:   global_112 = var_A8
  loc_160591B: End If
  loc_160591D: var_8A = &HFF
  loc_1605929: unk_57AACD.BeginTrans var_1C4
  loc_160594C: Set var_9C = Me.Txt
  loc_1605952: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, "Delete From PackingOrderDetail Where DocID='", var_FC)
  loc_160595A: -1 = var_A0.Text
  loc_1605973: unk_57AACD.Execute var_A4 & var_A8 & "'", var_8A, var_A8
  loc_16059AB: Set var_9C = Me.Txt
  loc_16059B1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, "Delete From PackingOrder Where DocID='")
  loc_16059B9: var_FC = var_A0.Text
  loc_16059C2: var_1B4 = -1 & var_A8
  loc_16059D2: unk_57AACD.Execute var_A4 & var_A8 & "'", var_A4, 
  loc_16059FA: Set var_9C = Me.Txt
  loc_1605A00: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0)
  loc_1605A08: var_A8 = var_A0.Text
  loc_1605A1B: Set var_A4 = Me.Txt
  loc_1605A21: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1BC)
  loc_1605A3C: Set var_1C0 = Me.Txt
  loc_1605A42: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_1E0)
  loc_1605A4A: var_1E4 = var_1E0.Tag
  loc_1605A5A: Set var_1F8 = Me.Txt
  loc_1605A60: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_1605A6F: Proc_6_7_F25D88(var_10C, CVar(var_1FC))
  loc_1605A7F: Set var_200 = Me.TxtMask
  loc_1605A85: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_204)
  loc_1605AA1: Set var_238 = Me.Txt
  loc_1605AA7: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_23C)
  loc_1605AB6: Proc_6_7_F25D88(var_25C, CVar(var_23C))
  loc_1605AC6: Set var_280 = Me.TxtMask
  loc_1605ACC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_284)
  loc_1605AD4: var_294 = var_284.defaultText
  loc_1605AEB: Set var_2C8 = Me.Txt
  loc_1605AF1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_2CC, var_2D0)
  loc_1605B18: var_8A8 = Val(Me.TxtTotal.Text)
  loc_1605B35: var_8B0 = Val(Me.TxtDiscAmt.Text)
  loc_1605B52: var_8B8 = Val(Me.TxtTaxAmt.Text)
  loc_1605B6F: var_8C0 = Val(Me.TxtAdd.Text)
  loc_1605B8C: var_8C8 = Val(Me.TxtDed.Text)
  loc_1605BA9: var_8D0 = Val(Me.TxtRndOff.Text)
  loc_1605BC6: var_8D8 = Val(Me.TxtNetAmt.Text)
  loc_1605BD7: Proc_6_7_F25D88(var_508, Date, var_8D8, var_8D0, var_8C8, var_8C0)
  loc_1605BE0: Set var_53C = Me.TopCtrl1
  loc_1605BE6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_8B8)
  loc_1605C34: Proc_6_39_E7C810(var_6A0, CVar(Me.TxtDiscPer), var_8B0)
  loc_1605C44: Proc_6_39_E7C810(var_6F0, CVar(Me.TxtTaxPer), var_8A8)
  loc_1605C54: Proc_6_39_E7C810(var_740, CVar(Me.TxtAdvAmt))
  loc_1605C64: Set var_774 = Me.Txt
  loc_1605C6A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_778)
  loc_1605C79: Proc_6_17_EAA2B0(var_798, CVar(var_778))
  loc_1605C89: Set var_7CC = Me.Txt
  loc_1605C8F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_7D0)
  loc_1605C9E: Proc_6_17_EAA2B0(var_7F0, CVar(var_7D0))
  loc_1605CAE: Set var_824 = Me.Txt
  loc_1605CB4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_828)
  loc_1605CC3: Proc_6_17_EAA2B0(var_848, CVar(var_828))
  loc_1605CDC: var_1B4 = "Insert into PackingOrder (DocID,BNo,VPrefix,VType,Site_Code,BDate,BTime,DDate,DTime,CustName,Total,Discount,Tax,Addition,Deduction,RoundOff,NetAmt " & " ,U_Name,U_EntDt,U_AE,LogSite_Code,RestCode,DiscPer,TaxPer,AdvAmt,PhoneNo,Addr1,Addr2)values ('"
  loc_1605D2C: var_11C = CVar(var_1B4 & var_A8 & "','" & var_1BC.Text & "', " & "'" & global_120 & "','" & var_1E4 & "','" & MemVar_1F92070 & "',") 'String
  loc_1605D7D: var_2F0 = var_11C & var_10C & ",'" & CVar(CStr(var_204.defaultText)) & "'," & var_25C & ",'" & CVar(CStr(var_2CC.Text)) & "','" & CVar(var_2D0) 
  loc_1605DB9: var_368 = var_2F0 & "'," & CVar(var_8A8) & "," & CVar(var_8B0) & "," & CVar(var_8B8) 
  loc_1605E1C: var_4C8 = var_368 & "," & CVar(var_8C0) & "," & CVar(var_8C8) & "," & CVar(var_8D0) & "," & CVar(var_8D8) & ",'" & CVar(MemVar_1F920C8) 
  loc_1605E25: var_4E8 = var_4C8 & "'," 
  loc_1605E72: var_6B0 = var_4E8 & var_508 & ",'" & IIf((var_55C = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "','" & CVar(pRestCode) & "'," & var_6A0 
  loc_1605ED9: unk_57AACD.Execute CStr(var_6B0 & "," & var_6F0 & "," & var_740 & "," & var_798 & "," & var_7F0 & "," & var_848 & ")"), var_89C, -1
  loc_1606006: For var_8DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_8DC 'Integer
  loc_1606032:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1606054:   If CBool(Trim(var_10C) <> vbNullString) Then
  loc_1606065:     Set var_9C = Me.Txt
  loc_160606B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8, CVar(CLng(3)), CVar(CLng(var_92)))
  loc_1606073:     1 = var_A0.Text
  loc_160607D:     var_1C8 = CStr(var_92)
  loc_1606085:     var_8A8 = Val(var_1C8)
  loc_1606096:     Set var_A4 = Me.Txt
  loc_160609C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1BC, var_1E4, var_8A8)
  loc_16060A4:     var_8A0 = var_1BC.Text
  loc_16060B1:     var_8B0 = Val(var_1E4)
  loc_16060BF:     Set var_1C0 = Me.Txt
  loc_16060C5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_1E0, var_8B0)
  loc_16060D4:     Proc_6_7_F25D88(var_10C, CVar(var_1E0))
  loc_16060DD:     var_CC = CVar(CLng(var_92)) 'Long
  loc_16060E5:     var_EC = CVar(CLng(1)) 'Long
  loc_16060EE:     Set var_1F8 = Me.FGrid
  loc_16060F4:     var_1B0 = var_1F8.TextMatrix)
  loc_1606104:     var_160 = CVar(CLng(var_92)) 'Long
  loc_160612E:     var_8B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_160615F:     var_8C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1606190:     var_8C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16061C1:     var_640 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_8C8, CVar(CLng(7)), CVar(CLng(var_92)), var_8C0, CVar(CLng(6)))
  loc_16061C8:     Set var_23C = Me.TopCtrl1
  loc_16061CE:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CVar(CLng(var_92)))
  loc_1606217:     Proc_6_7_F25D88(var_4E8, Date, var_8B8, CVar(CLng(5)))
  loc_1606230:     var_1B4 = "insert into packingorderdetail (Docid,SNo,Vtype,BNo,Site_Code,VPrefix,vdate,ItemCode, Qty,Rate,Amount,Remark, " & " U_AE,U_Name,U_EntDt,Logsite_Code) values ('"
  loc_160628A:     var_330 = var_1B4 & var_A8 & "'," & CStr(var_8A8) & ",'" & global_132 & "'," & CStr(var_8B0) & ",'" & MemVar_1F92070 & "', " & "'"
  loc_16062E6:     var_2A4 = CVar(var_330 & global_120 & "',") & var_10C & ", '" & CVar(CStr(var_1B0)) & "'," & CVar(var_8B8) & " ," & " " & CVar(var_8C0) 
  loc_1606330:     var_488 = var_2A4 & "," & CVar(var_8C8) & ",'" & CVar(var_640) & "','" & IIf((var_368 = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) 
  loc_160636A:     unk_57AACD.Execute CStr(var_488 & "'," & var_4E8 & ",'" & CVar(MemVar_1F92078) & "')"), var_55C, -1
  loc_160640E:   End If
  loc_1606411: Next var_8DC 'Integer
  loc_160641A: Set var_9C = Me.TopCtrl1
  loc_1606420: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1606435: If ( = "Add") Then
  loc_160644C:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1606483:   var_13C = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='") & Trim(global_132) & "' And VP.Date_From<=" 
  loc_1606495:   Set var_9C = Me.Txt
  loc_160649B:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0, var_1C8, var_13C)
  loc_16064A3:   var_234 = var_A0.Text
  loc_16064B1:   Proc_6_7_F25D88(var_1B0, CVar(var_1C8))
  loc_16064B9:   var_214 = -1 & var_1B0 
  loc_16064C2:   var_224 = CVar(CStr(var_1B0)) & " Order By VP.Date_From DESC" 
  loc_16064D0:   unk_57AACD.Execute CStr(var_224), var_A4, 
  loc_16064DB:   Set var_88 = var_A4
  loc_160651B:   If (var_88.RecordCount > 0) Then
  loc_160652C:     Set var_9C = Me.Txt
  loc_1606532:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_160653A:     var_A8 = var_A0.Text
  loc_1606547:     var_8A8 = Val(var_A8)
  loc_1606550:     var_BC = "V_Type"
  loc_1606597:     Proc_6_7_F25D88(var_1B0, CVar(var_88.Fields.Item("Date_From")))
  loc_16065CA:     var_1D0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_8A8) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_16065F2:     var_1D8 = CStr(CVar(var_1D0 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_BC).Value & "' and Date_From=" & var_1B0)
  loc_16065FC:     unk_57AACD.Execute var_1D8, var_224, -1
  loc_1606636:   End If
  loc_1606636: End If
  loc_160663C: unk_57AACD.CommitTrans
  loc_1606643: var_8A = 0
  loc_1606654: Set var_9C = Me.Txt
  loc_160665A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A0, var_A8)
  loc_1606662: var_8A = var_A0.Text
  loc_1606676: var_8A = 0
  loc_1606684: Me.Requery -1
  loc_16066AE: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_16066BE: Set var_9C = Me.TopCtrl1
  loc_16066C4: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_BC)
  loc_16066D9: If (var_8A = "Add") Then
  loc_16066DC:   Call TopCtrl1_UnknownEvent_11()
  loc_16066E1:   Exit Sub
  loc_16066E2: End If
  loc_1606705: Call Proc_257_66_EF1934(Proc_5_1_100CB50("INI", Me, global_56), var_1F8)
  loc_1606710: Call Proc_257_57_1287DBC(var_8A8)
  loc_1606715: Call Proc_257_68_15889C4()
  loc_160671F: Set var_88 = Nothing
  loc_1606722: Exit Sub
  loc_1606729: If (var_8A = &HFF) Then
  loc_1606732:   unk_57AACD.RollbackTrans
  loc_1606737: End If
  loc_1606737: Proc_6_60_E62BC4()
  loc_160673C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA3878
  'Data Table: 57AAC8
  loc_EA37FC: On Error Goto loc_EA3872
  loc_EA3836: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA385C:   Call Proc_257_66_EF1934(Proc_5_1_100CB50("INI", Me))
  loc_EA3867:   Call Proc_257_57_1287DBC(global_56)
  loc_EA386C:   Call Proc_257_68_15889C4()
  loc_EA3871: End If
  loc_EA3871: Exit Sub
  loc_EA3872: ' Referenced from: EA37FC
  loc_EA3872: Proc_6_60_E62BC4()
  loc_EA3877: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F14154
  'Data Table: 57AAC8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_120 As String
  Dim MemVar_1F920E4 As String
  loc_F1407C: On Error Goto loc_F1414C
  loc_F14096: If (Me.RecordCount <= 0) Then
  loc_F1409F:   var_B8 = "Information"
  loc_F140BA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F140CA:   Exit Sub
  loc_F140CB: End If
  loc_F140D2: var_10C = "SELECT  Distinct P.Docid AS SearchCode, V.Description AS BookingType, P.BNo AS BookingNo, CAST(P.BDate AS VarChar(11)) AS BookingDate, " & "P.CustName AS CustomerName, PD.ContraDocID FROM  PackingOrder P INNER JOIN Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code AND V.Site_Code = '"
  loc_F140F5: var_120 = var_10C & MemVar_1F92070 & "' AND V.LogSite_Code = '" & MemVar_1F92078 & "' AND " & "V.Category IN ('ORDER') AND P.LogSite_Code = '"
  loc_F14103: MemVar_1F920E4 = var_120 & MemVar_1F92078 & "' INNER JOIN PackingOrderDetail PD ON P.Docid = PD.DocID WHERE  (PD.ContraDocID IS NOT NULL) OR (PD.ContraDocID = '') ORDER BY P.Docid, P.BNo"
  loc_F1411E: MemVar_1F92120 = Me
  loc_F1412B: Proc_6_126_F1BCC0("1500,1200,1400,2500,1400")
  loc_F14146: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F1414B: Exit Sub
  loc_F1414C: ' Referenced from: F1407C
  loc_F1414C: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F14151: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'E5E02C
  'Data Table: 57AAC8
  loc_E5E01B: If (MsgBox("Do you want window printing!", &H144, var_C4, var_E4, var_104) = 6) Then
  loc_E5E01E:   Call Proc_257_59_10C1DE0()
  loc_E5E026: Else
  loc_E5E026:   Call Proc_257_62_1568E28()
  loc_E5E02B: End If
  loc_E5E02B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0A87C
  'Data Table: 57AAC8
  Dim Me As Recordset15
  loc_E0A873: Me.Requery -1
  loc_E0A878: Exit Sub
End Sub

Private Sub CmdAdd2_Click() 'EE54C4
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_EE5414: Set global_152 = New RsTouchScreenKeyBoard
  loc_EE542D: Me.ParentForm = CVar(Me)
  loc_EE544E: Set var_88 = (var_C0)
  loc_EE5454:  = Me.TextBox.MaxLength
  loc_EE5467: var_BC = CVar(())
  loc_EE546C: var_BC.MaxLength = CVar(var_C0)
  loc_EE5489: var_BC.Show 1, var_AC
  loc_EE54A3: Me.TxtAddr2.Text = TxtKeyBoard
  loc_EE54B9: Set global_152 = Nothing
  loc_EE54C0: Exit Sub
End Sub

Private Sub CmdAdd1_Click() 'EE2CC4
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_EE2C14: Set global_152 = New RsTouchScreenKeyBoard
  loc_EE2C2D: Me.ParentForm = CVar(Me)
  loc_EE2C4E: Set var_88 = (var_C0)
  loc_EE2C54:  = Me.TextBox.MaxLength
  loc_EE2C67: var_BC = CVar(())
  loc_EE2C6C: var_BC.MaxLength = CVar(var_C0)
  loc_EE2C89: var_BC.Show 1, var_AC
  loc_EE2CA3: Me.TxtAddr1.Text = TxtKeyBoard
  loc_EE2CB9: Set global_152 = Nothing
  loc_EE2CC0: Exit Sub
End Sub

Private Sub CmdCustomer_Click() 'EE55C4
  'Data Table: 57AAC8
  Dim var_BC As Variant
  Dim var_88 As TextBox
  loc_EE5514: Set global_152 = New RsTouchScreenKeyBoard
  loc_EE552D: Me.ParentForm = CVar(Me)
  loc_EE554E: Set var_88 = (var_C0)
  loc_EE5554:  = Me.TextBox.MaxLength
  loc_EE5567: var_BC = CVar(())
  loc_EE556C: var_BC.MaxLength = CVar(var_C0)
  loc_EE5589: var_BC.Show 1, var_AC
  loc_EE55A3: Me.TxtCustName.Text = TxtKeyBoard
  loc_EE55B9: Set global_152 = Nothing
  loc_EE55C0: Exit Sub
End Sub

Private Sub SSPMain_UnknownEvent_9 'F62344
  'Data Table: 57AAC8
  Dim Me As Variant
  Dim var_8C As SSPanel
  loc_F6221E: Me.MoveFirst
  loc_F62231: Set var_88 = Me.SSPGroup
  loc_F62237: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F6223F: var_8C.Visible = False
  loc_F62259: Set var_88 = Me.SSPItem
  loc_F6225F: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_8C)
  loc_F62267: var_8C.Visible = False
  loc_F6227E: If (global_72 = "Group") Then
  loc_F62287:   global_72 = "Group"
  loc_F6229F:   Set var_8C = Me.SSPGroup
  loc_F622C2:   Call Proc_257_58_122C3B0(Me.SSPGroup, CInt(4), global_84)
  loc_F622CE:   global_76 = CInt(var_C0)
  loc_F622E2: Else
  loc_F622E8:   global_72 = "Group"
  loc_F62323:   Call Proc_257_58_122C3B0(Me.SSPGroup, CInt(4), global_84, CInt(5), Me.SSPItem)
  loc_F6232F:   global_76 = CInt(var_C0)
  loc_F62340: End If
  loc_F62340: Exit Sub
End Sub

Private Sub CmdOK_Click() '12DBBD0
  'Data Table: 57AAC8
  Dim var_C8 As Variant
  Dim var_C4 As Variant
  Dim var_1E0 As Variant
  Dim var_1F4 As Variant
  loc_12DB553: var_A4 = Trim(CVar(Me.TxtBookDate))
  loc_12DB56A: If (var_A4 = vbNullString) Then
  loc_12DB597:   MsgBox(CVar(Me.CmdBookDate.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DB5AD:   Exit Sub
  loc_12DB5AE: End If
  loc_12DB5B9: var_A4 = Trim(CVar(Me.TxtBookTime))
  loc_12DB5D0: If (var_A4 = vbNullString) Then
  loc_12DB5FD:   MsgBox(CVar(Me.CmdBookTime.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DB613:   Exit Sub
  loc_12DB614: End If
  loc_12DB61F: var_A4 = Trim(CVar(Me.TxtBookTime))
  loc_12DB644: var_C4 = 2
  loc_12DB654: var_FC = Mid(var_A4, 1, var_C4)
  loc_12DB6BE: var_1E0 = (CDbl(Val(CStr(var_FC))) < CDbl(&H18)) And (Mid(Trim(CVar(Me.TxtBookTime)), 3, 1) = ":") And (CDbl(Val(CStr(Mid(Trim(CVar(Me.TxtBookTime)), 4, 2)))) < CDbl(&H3C))
  loc_12DB6EE: If CBool(Not var_1E0) Then
  loc_12DB70A:   MsgBox("Invalid Booking Time", &H40, var_A4, var_C4, var_FC)
  loc_12DB71A:   Exit Sub
  loc_12DB71B: End If
  loc_12DB726: var_A4 = Trim(CVar(Me.TxtDelDate))
  loc_12DB73D: If (var_A4 = vbNullString) Then
  loc_12DB76A:   MsgBox(CVar(Me.CmdDelDate.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DB780:   Exit Sub
  loc_12DB781: End If
  loc_12DB78C: var_A4 = Trim(CVar(Me.TxtDelTime))
  loc_12DB7A3: If (var_A4 = vbNullString) Then
  loc_12DB7D0:   MsgBox(CVar(Me.CmdDelTime.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DB7E6:   Exit Sub
  loc_12DB7E7: End If
  loc_12DB7F2: var_A4 = Trim(CVar(Me.TxtDelTime))
  loc_12DB817: var_C4 = 2
  loc_12DB827: var_FC = Mid(var_A4, 1, var_C4)
  loc_12DB891: var_1E0 = (CDbl(Val(CStr(var_FC))) < CDbl(&H18)) And (Mid(Trim(CVar(Me.TxtDelTime)), 3, 1) = ":") And (CDbl(Val(CStr(Mid(Trim(CVar(Me.TxtDelTime)), 4, 2)))) < CDbl(&H3C))
  loc_12DB8C1: If CBool(Not var_1E0) Then
  loc_12DB8DD:   MsgBox("Invalid Booking Time", &H40, var_A4, var_C4, var_FC)
  loc_12DB8ED:   Exit Sub
  loc_12DB8EE: End If
  loc_12DB8F9: var_A4 = Trim(CVar(Me.TxtPhone))
  loc_12DB910: If (var_A4 = vbNullString) Then
  loc_12DB93D:   MsgBox(CVar(Me.CmdPhone.Caption & " is required Entry."), &H40, var_A4, var_C4, var_FC)
  loc_12DB953:   Exit Sub
  loc_12DB954: End If
  loc_12DB958: var_C4 = CVar(Me.TxtDelDate) 'Address
  loc_12DB95F: var_FC = Trim(var_C4)
  loc_12DB96F: var_A4 = Trim(CVar(Me.TxtBookDate))
  loc_12DB98E: If (CDate(var_A4) > CDate(var_FC)) Then
  loc_12DB9AA:   MsgBox("Invalid Delivery Date", &H40, var_A4, var_C4, var_FC)
  loc_12DB9BA:   Exit Sub
  loc_12DB9BB: End If
  loc_12DB9DB: Set var_C8 = Me.Txt
  loc_12DB9E1: Call 0.Method_CmdOK_Click0 (CInt(1), var_1F4)
  loc_12DB9E9: var_1F4.Text = Me.TxtBookDate.Text
  loc_12DBA1E: Set var_C8 = Me.TxtMask
  loc_12DBA24: Call 0.Method_CmdOK_Click0 (CInt(0), var_1F4)
  loc_12DBA2C: var_1F4.defaultText = CVar(Me.TxtBookTime.Text)
  loc_12DBA5D: Set var_C8 = Me.Txt
  loc_12DBA63: Call 0.Method_CmdOK_Click0 (CInt(2), var_1F4)
  loc_12DBA6B: var_1F4.Text = Me.TxtDelDate.Text
  loc_12DBAA0: Set var_C8 = Me.TxtMask
  loc_12DBAA6: Call 0.Method_CmdOK_Click0 (CInt(1), var_1F4)
  loc_12DBAAE: var_1F4.defaultText = CVar(Me.TxtDelTime.Text)
  loc_12DBADF: Set var_C8 = Me.Txt
  loc_12DBAE5: Call 0.Method_CmdOK_Click0 (CInt(3), var_1F4)
  loc_12DBAED: var_1F4.Text = Me.TxtCustName.Text
  loc_12DBB1E: Set var_C8 = Me.Txt
  loc_12DBB24: Call 0.Method_CmdOK_Click0 (CInt(6), var_1F4)
  loc_12DBB2C: var_1F4.Text = Me.TxtPhone.Text
  loc_12DBB5D: Set var_C8 = Me.Txt
  loc_12DBB63: Call 0.Method_CmdOK_Click0 (CInt(7), var_1F4)
  loc_12DBB6B: var_1F4.Text = Me.TxtAddr1.Text
  loc_12DBB9C: Set var_C8 = Me.Txt
  loc_12DBBA2: Call 0.Method_CmdOK_Click0 (CInt(8), var_1F4)
  loc_12DBBAA: var_1F4.Text = Me.TxtAddr2.Text
  loc_12DBBC7: Me.FrCustInfo.Visible = False
  loc_12DBBCF: Exit Sub
End Sub

Public Function global_52Get() '57D180
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '57D18F
  global_52 = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E0C85C
  'Data Table: 57AAC8
  loc_E0C854: global_140 = vNewValue
  loc_E0C858: Exit Sub
End Sub

Public Property Get PTableNo() 'E0BF5C
  'Data Table: 57AAC8
  loc_E0BF50: var_88 = global_140
  loc_E0BF53: PTableNo = 
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E0BE3C
  'Data Table: 57AAC8
  loc_E0BE34: global_148 = vNewValue
  loc_E0BE38: Exit Sub
End Sub

Public Property Get TxtKeyBoard() 'E0BDF4
  'Data Table: 57AAC8
  loc_E0BDE8: var_88 = global_148
  loc_E0BDEB: TxtKeyBoard = 
End Sub

Public Property Let pRestCode(vNewValue) 'E0BDAC
  'Data Table: 57AAC8
  loc_E0BDA4: global_144 = vNewValue
  loc_E0BDA8: Exit Sub
End Sub

Public Property Get pRestCode() 'E0C3DC
  'Data Table: 57AAC8
  loc_E0C3D0: var_88 = global_144
  loc_E0C3D3: pRestCode = 
End Sub

Public Property Get OpenMode() 'E05C40
  'Data Table: 57AAC8
  loc_E05C39: OpenMode = global_136
End Sub

Public Property Let OpenMode(vNewValue) 'E01874
  'Data Table: 57AAC8
  loc_E0186E: global_136 = vNewValue
  loc_E01871: Exit Sub
End Sub

Public Property Get oVType() 'E0BBB4
  'Data Table: 57AAC8
  loc_E0BBA8: var_88 = global_132
  loc_E0BBAB: oVType = 
End Sub

Public Property Let oVType(vNewValue) 'E0BADC
  'Data Table: 57AAC8
  loc_E0BAD4: global_132 = vNewValue
  loc_E0BAD8: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97A88
  'Data Table: 57AAC8
  Dim Me As Recordset15
  loc_E97A16: On Error Goto loc_E97A7F
  loc_E97A1F: Me.MoveFirst
  loc_E97A49: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97A71: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E97A79: Call Proc_257_68_15889C4(0)
  loc_E97A7E: Exit Sub
  loc_E97A7F: ' Referenced from: E97A16
  loc_E97A7F: Proc_6_60_E62BC4(var_A0)
  loc_E97A84: Exit Sub
  loc_E97A85: var_B6 = 
End Sub

Public Sub Proc_257_56_F072E8(arg_C, arg_10) 'F072E8
  'Data Table: 57AAC8
  Dim unk_57AACD As Connection15
  Dim var_90 As Recordset15
  Dim var_11C As Fields15
  Dim var_8C As Double
  loc_F07245: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F07264: unk_57AACD.Execute CStr(var_118 & var_B4 & " Order by Appdate Desc"), -1, var_11C
  loc_F0726F: Set var_90 = var_11C
  loc_F0729D: If (var_90.RecordCount > 0) Then
  loc_F072CB:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F072DB: Else
  loc_F072DE:   var_8C = CDbl(0)
  loc_F072E1: End If
  loc_F072E1: Proc_257_56_F072E8 = var_8C
End Sub

Public Sub Proc_257_57_1287DBC
  'Data Table: 57AAC8
  Dim var_A0 As CommandButton
  Dim var_88 As Variant
  Dim var_9C As CommandButton
  loc_12877E0: Set var_88 = Me.TopCtrl1
  loc_12877E6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_12877FA: Set var_9C = Me.Head
  loc_1287800: Call 0.Method_Proc_257_57_1287DBC0 (CInt(0), var_A0)
  loc_1287808: var_A0.Enabled = CBool()
  loc_128781D: Set var_88 = Me.TopCtrl1
  loc_1287823: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000B()
  loc_1287837: Set var_9C = Me.Head
  loc_128783D: Call 0.Method_Proc_257_57_1287DBC0 (CInt(1), var_A0)
  loc_1287845: var_A0.Enabled = CBool()
  loc_128785A: Set var_88 = Me.TopCtrl1
  loc_1287860: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000A()
  loc_1287874: Set var_9C = Me.Head
  loc_128787A: Call 0.Method_Proc_257_57_1287DBC0 (CInt(2), var_A0)
  loc_1287882: var_A0.Enabled = CBool()
  loc_1287897: Set var_88 = Me.TopCtrl1
  loc_128789D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12878B1: Set var_9C = Me.Head
  loc_12878B7: Call 0.Method_Proc_257_57_1287DBC0 (CInt(3), var_A0)
  loc_12878BF: var_A0.Enabled = CBool()
  loc_12878D4: Set var_88 = Me.TopCtrl1
  loc_12878DA: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030004()
  loc_12878EE: Set var_9C = Me.Head
  loc_12878F4: Call 0.Method_Proc_257_57_1287DBC0 (CInt(4), var_A0)
  loc_12878FC: var_A0.Enabled = CBool()
  loc_1287911: Set var_88 = Me.TopCtrl1
  loc_1287917: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030003()
  loc_128792B: Set var_9C = Me.Head
  loc_1287931: Call 0.Method_Proc_257_57_1287DBC0 (CInt(5), var_A0)
  loc_1287939: var_A0.Enabled = CBool()
  loc_128794E: Set var_88 = Me.TopCtrl1
  loc_1287954: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030002()
  loc_1287968: Set var_9C = Me.Head
  loc_128796E: Call 0.Method_Proc_257_57_1287DBC0 (CInt(6), var_A0)
  loc_1287976: var_A0.Enabled = CBool()
  loc_1287993: Me.FrameGrpItem.Enabled = True
  loc_128799F: Set var_88 = Me.TopCtrl1
  loc_12879A5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_12879BA: If ( = "Add") Then
  loc_12879CA:   Set var_88 = Me.CmFgrid
  loc_12879D0:   Call 0.Method_Proc_257_57_1287DBC0 (CInt(2), var_9C)
  loc_12879D8:   var_9C.Enabled = True
  loc_12879F1:   Set var_88 = Me.CmFgrid
  loc_12879F7:   Call 0.Method_Proc_257_57_1287DBC0 (CInt(4), var_9C)
  loc_12879FF:   var_9C.Enabled = True
  loc_1287A18:   Set var_88 = Me.CmFgrid
  loc_1287A1E:   Call 0.Method_Proc_257_57_1287DBC0 (CInt(3), var_9C)
  loc_1287A26:   var_9C.Enabled = True
  loc_1287A3F:   Set var_88 = Me.CmFgrid
  loc_1287A45:   Call 0.Method_Proc_257_57_1287DBC0 (CInt(5), var_9C)
  loc_1287A4D:   var_9C.Enabled = True
  loc_1287A65:   Me.CmdDiscount.Enabled = True
  loc_1287A79:   Me.CmdTax.Enabled = True
  loc_1287A8D:   Me.CmdAddition.Enabled = True
  loc_1287AA1:   Me.CmdAdvance.Enabled = True
  loc_1287AB5:   Me.FrameGrpItem.Enabled = True
  loc_1287AC9:   Me.CmdBookDetails.Enabled = True
  loc_1287AD4: Else
  loc_1287AD8:   Set var_88 = Me.TopCtrl1
  loc_1287ADE:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1287AF3:   If ( = "Edit") Then
  loc_1287B03:     Set var_88 = Me.CmFgrid
  loc_1287B09:     Call 0.Method_Proc_257_57_1287DBC0 (CInt(2), var_9C)
  loc_1287B11:     var_9C.Enabled = True
  loc_1287B2A:     Set var_88 = Me.CmFgrid
  loc_1287B30:     Call 0.Method_Proc_257_57_1287DBC0 (CInt(4), var_9C)
  loc_1287B38:     var_9C.Enabled = True
  loc_1287B51:     Set var_88 = Me.CmFgrid
  loc_1287B57:     Call 0.Method_Proc_257_57_1287DBC0 (CInt(3), var_9C)
  loc_1287B5F:     var_9C.Enabled = True
  loc_1287B78:     Set var_88 = Me.CmFgrid
  loc_1287B7E:     Call 0.Method_Proc_257_57_1287DBC0 (CInt(5), var_9C)
  loc_1287B86:     var_9C.Enabled = True
  loc_1287B9E:     Me.CmdDiscount.Enabled = True
  loc_1287BB2:     Me.CmdTax.Enabled = True
  loc_1287BC6:     Me.CmdAddition.Enabled = True
  loc_1287BDA:     Me.CmdAdvance.Enabled = True
  loc_1287BEE:     Me.CmdBookDetails.Enabled = True
  loc_1287BF9:   Else
  loc_1287BFD:     Set var_88 = Me.TopCtrl1
  loc_1287C03:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1287C18:     If ( = "Browse") Then
  loc_1287C26:       If (global_88 <> "Y") Then
  loc_1287C36:         Set var_88 = Me.Head
  loc_1287C3C:         Call 0.Method_Proc_257_57_1287DBC0 (CInt(0), var_9C)
  loc_1287C44:         var_9C.Enabled = True
  loc_1287C53:       Else
  loc_1287C60:         Set var_88 = Me.Head
  loc_1287C66:         Call 0.Method_Proc_257_57_1287DBC0 (CInt(0), var_9C)
  loc_1287C6E:         var_9C.Enabled = False
  loc_1287C7A:       End If
  loc_1287C87:       Set var_88 = Me.CmFgrid
  loc_1287C8D:       Call 0.Method_Proc_257_57_1287DBC0 (CInt(2), var_9C)
  loc_1287C95:       var_9C.Enabled = False
  loc_1287CAE:       Set var_88 = Me.CmFgrid
  loc_1287CB4:       Call 0.Method_Proc_257_57_1287DBC0 (CInt(4), var_9C)
  loc_1287CBC:       var_9C.Enabled = False
  loc_1287CD5:       Set var_88 = Me.CmFgrid
  loc_1287CDB:       Call 0.Method_Proc_257_57_1287DBC0 (CInt(3), var_9C)
  loc_1287CE3:       var_9C.Enabled = False
  loc_1287CFC:       Set var_88 = Me.CmFgrid
  loc_1287D02:       Call 0.Method_Proc_257_57_1287DBC0 (CInt(5), var_9C)
  loc_1287D0A:       var_9C.Enabled = False
  loc_1287D22:       Me.CmdDiscount.Enabled = False
  loc_1287D36:       Me.CmdTax.Enabled = False
  loc_1287D4A:       Me.CmdAddition.Enabled = False
  loc_1287D5E:       Me.CmdAdvance.Enabled = False
  loc_1287D72:       Me.FrameGrpItem.Enabled = False
  loc_1287D86:       Me.CmdBookDetails.Enabled = False
  loc_1287D9A:       Me.FrameQty.Visible = False
  loc_1287DAE:       Me.FrCustInfo.Visible = False
  loc_1287DB6:       Call SSPMain_UnknownEvent_9()
  loc_1287DBB:     End If
  loc_1287DBB:   End If
  loc_1287DBB: End If
  loc_1287DBB: Exit Sub
End Sub

Public Sub Proc_257_58_122C3B0
  'Data Table: 57AAC8
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_144 As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  loc_122BEA2: var_D0 = False
  loc_122BEBA: ).Visible = 0
  loc_122BEC1: var_D0 = False
  loc_122BED9: ).Visible = 0
  loc_122BEF1: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_122BEF7:   var_C0 = False
  loc_122BF10:   ).Visible = var_9E
  loc_122BF37:   Me..FrCustInfo.Unload )
  loc_122BF45: Next var_F4 'Integer
  loc_122BF5B: For var_FC = 1 To CInt(R.UBound): var_9E = var_FC 'Integer
  loc_122BF61:   var_C0 = False
  loc_122BF7A:   ).Visible = var_9E
  loc_122BFA1:   Me..FrCustInfo.Unload )
  loc_122BFAF: Next var_FC 'Integer
  loc_122BFC2: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_122BFC9: Proc_6_39_E7C810(var_110)
  loc_122BFE0: If (var_110 > 0) Then
  loc_122BFE9:   var_96 = (arg_18 + 1)
  loc_122BFEE:   var_98 = 0
  loc_122BFF3:   var_9A = 0
  loc_122C010:   Proc_6_39_E7C810(var_110, CVar(Me.Recordset15.RecordCount), var_9C, 1)
  loc_122C020:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_122C046:     Me..FrCustInfo.Load )
  loc_122C065:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_122C06E:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122C08B:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_122C0A2:       var_144 = (var_D0 + ).height)
  loc_122C0BB:       ).top = var_9C
  loc_122C0D4:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_122C0E5:       var_110 = ).left
  loc_122C100:       ).left = var_9C
  loc_122C125:       ).Visible = var_9C
  loc_122C12F:       var_B0 = "Name"
  loc_122C154:       var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).top)) 'String
  loc_122C16C:       ).CAPTION = var_9C
  loc_122C17F:       var_B0 = "Code"
  loc_122C1A4:       var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_9C)) 'String
  loc_122C1BC:       ).Tag = var_9C
  loc_122C1D7:       If (var_9C = (arg_18 * arg_10)) Then
  loc_122C1EC:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_122C1F0:         Exit For
  loc_122C1F3:       End If
  loc_122C1F6:     Else
  loc_122C201:       If ((var_9C Mod var_96) = var_98) Then
  loc_122C20B:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C229:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C240:         var_144 = (var_D0 + ).width)
  loc_122C259:         ).left = var_9C
  loc_122C273:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_122C284:         var_110 = ).top
  loc_122C29F:         ).top = var_9C
  loc_122C2C4:         ).Visible = var_9C
  loc_122C2CE:         var_B0 = "Name"
  loc_122C2F3:         var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), True, var_110, var_B0, var_144, ).left)) 'String
  loc_122C30B:         ).CAPTION = var_9C
  loc_122C31E:         var_B0 = "Code"
  loc_122C343:         var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B0)), var_110, var_B0, var_110)) 'String
  loc_122C35B:         ).Tag = var_9C
  loc_122C371:         var_9A = (var_9A + 1)
  loc_122C37B:         var_98 = (var_96 - var_9A)
  loc_122C37E:       End If
  loc_122C37E:     End If
  loc_122C381:     Me.MoveNext
  loc_122C39A:     If (Me.AbsolutePosition = -3) Then
  loc_122C39D:       GoTo loc_122C3A8
  loc_122C3A0:     End If
  loc_122C3A3:   Next var_124 'Integer
  loc_122C3A8:   ' Referenced from: 122C39D
  loc_122C3A8:   ' Referenced from: 122C1F0
  loc_122C3A8: End If
  loc_122C3A8: Proc_257_58_122C3B0 = 
End Sub

Public Sub Proc_257_59_10C1DE0
  'Data Table: 57AAC8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_C0 As String
  Dim var_D0 As String
  Dim var_C8 As TextBox
  Dim unk_57AACD As Connection15
  Dim var_A0 As Recordset15
  Dim var_E4 As Variant
  Dim var_146 As Integer
  loc_10C1B2C: On Error Goto loc_10C1DD8
  loc_10C1B46: If (Me.RecordCount <= 0) Then
  loc_10C1B49:   Exit Sub
  loc_10C1B4A: End If
  loc_10C1B51: var_B8 = "SELECT     P.BNo as BookingNo,PD.SNo,P.CustName as CustomerName, I.Name as ItemName, P.BDate as BookingDate, " & "P.BTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_10C1B5F: var_C0 = var_B8 & "PD.Rate, PD.Amount, P.Total ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount, " & "PD.Remark, P.Site_Code FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN "
  loc_10C1B66: var_D0 = var_C0 & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code where P.DocId='"
  loc_10C1B77: Set var_C4 = Me.Txt
  loc_10C1B7D: Call 0.Method_Proc_257_59_10C1DE00 (CInt(4), var_C8)
  loc_10C1B95: var_88 = var_D0 & var_C8.Text & "'"
  loc_10C1BB6: If (var_88 = vbNullString) Then
  loc_10C1BB9:   Exit Sub
  loc_10C1BBA: End If
  loc_10C1BD0: unk_57AACD.Execute var_88, var_F4, -1
  loc_10C1BDB: Set var_A0 = var_C4
  loc_10C1BEA: var_B4 = var_A0.RecordCount
  loc_10C1BF8: If (var_B4 <= 0) Then
  loc_10C1C01:   Call 0.Method_arg_50 (var_B8)
  loc_10C1C22:   MsgBox("** No Records Found to Print **", &H40, CVar(var_B8), var_124, var_144)
  loc_10C1C32:   Exit Sub
  loc_10C1C33: End If
  loc_10C1C49: Set var_C4 = var_A0 
  loc_10C1C55: var_146 = CreateFieldDefFile(var_C4, MemVar_1F920B4 & "\OrderBooking.ttx")
  loc_10C1C5F: Set var_A0 = var_C4
  loc_10C1C65: var_E4 = CVar(var_146) 'Integer
  loc_10C1C68: var_9C = var_E4 'Variant
  loc_10C1C84: var_B8 = MemVar_1F920B4 & "\OrderBooking.RPT"
  loc_10C1C8D: Call 0.Method_arg_1C (var_B8, var_E4, var_C4)
  loc_10C1C98: MemVar_1F921E4 = var_C4
  loc_10C1CB3: Call 0.Method_arg_90 (var_C4, var_B4, var_AA, 1)
  loc_10C1CBB: Call 0.Method_arg_24 (var_146, &HFF)
  loc_10C1CC7: For var_14A =  To CInt(var_B4): var_C4 = var_14A 'Integer
  loc_10C1CE0:   Call 0.Method_arg_90 (var_C4, CLng(var_AA))
  loc_10C1CE8:   Call 0.Method_arg_20 (var_C8)
  loc_10C1CF0:   Call 0.Method_arg_30 (var_B8)
  loc_10C1D0A:   If (var_B8 = "Title") Then
  loc_10C1D20:     Call 0.Method_arg_90 (var_C4, CLng(var_AA))
  loc_10C1D28:     Call 0.Method_arg_20 (var_C8)
  loc_10C1D30:     Call 0.Method_arg_38 ("'Order Booking'")
  loc_10C1D3C:   End If
  loc_10C1D3F: Next var_14A 'Integer
  loc_10C1D5D: Call 0.Method_arg_64 (var_C4, CVar(var_A0))
  loc_10C1D65: Call 0.Method_arg_2C (var_114)
  loc_10C1D73: Call 0.Method_arg_150 (var_134)
  loc_10C1D7E: Call 0.Method_arg_50 (var_B8)
  loc_10C1D88: Set var_C8 = Nothing
  loc_10C1DA2: Set var_C4 = MemVar_1F921E4 
  loc_10C1DAE: Proc_6_99_1483714(var_C4, 0, var_B8)
  loc_10C1DB9: MemVar_1F921E4 = var_C4
  loc_10C1DCC: Set var_A0 = Nothing
  loc_10C1DD4: Set var_B0 = Nothing
  loc_10C1DD7: Exit Sub
  loc_10C1DD8: ' Referenced from: 10C1B2C
  loc_10C1DD8: Proc_6_60_E62BC4(&HFF)
  loc_10C1DDD: Exit Sub
End Sub

Public Sub Proc_257_60_DFC178
  'Data Table: 57AAC8
  loc_DFC174: Exit Sub
End Sub

Public Sub Proc_257_61_F10B30(arg_C, arg_10, arg_14) 'F10B30
  'Data Table: 57AAC8
  Dim var_A0 As String
  Dim unk_57AACD As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_F10A6A: If (arg_C = "ORDER") Then
  loc_F10A88:   var_A0 = "Select Distinct DocId,VType,BNo From PackingOrderDetail Where ContraDocId='" & arg_10 & "'"
  loc_F10A91:   unk_57AACD.Execute var_A0, var_C0, -1
  loc_F10AC0:   If (var_C4.RecordCount > 0) Then
  loc_F10AC9:     Call 0.Method_arg_50 (var_A0)
  loc_F10AF0:     MsgBox(CVar("Can Not " & arg_14 & " The Record"), &H30, CVar(var_A0), var_E8, var_108)
  loc_F10B0D:     Set var_8C = Nothing
  loc_F10B10:     Proc_257_61_F10B30 = 0
  loc_F10B16:   End If
  loc_F10B19: Else
  loc_F10B1E:   Proc_257_61_F10B30 = &HFF
  loc_F10B24: End If
  loc_F10B29: Proc_257_61_F10B30 = &HFF
End Sub

Public Sub Proc_257_62_1568E28
  'Data Table: 57AAC8
  Dim Me As Recordset15
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_F4 As String
  Dim var_EC As Variant
  Dim unk_57AACD As Connection15
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim var_D0 As Integer
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_17C As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_E8 As Fields15
  Dim var_23C As Variant
  Dim var_18C As Variant
  Dim var_25C As Variant
  Dim var_1DC As Variant
  Dim var_118 As Variant
  Dim var_94 As Double
  Dim var_A4 As Double
  Dim var_9C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_350 As Variant
  Dim var_CC As Long
  loc_1567DEC: On Error Goto loc_1568E20
  loc_1567E06: If (Me.RecordCount <= 0) Then
  loc_1567E09:   Exit Sub
  loc_1567E0A: End If
  loc_1567E11: var_DC = "SELECT     P.BNo as BookingNo,PD.SNo,P.CustName as CustomerName, I.Name as ItemName, P.BDate as BookingDate, " & "P.BTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_1567E18: var_E0 = var_DC & "PD.Rate, PD.Amount, P.Total,P.AdvAmt as Advance ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount, "
  loc_1567E26: var_F4 = var_E0 & "PD.Remark, P.Site_Code FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN " & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code where P.DocId='"
  loc_1567E37: Set var_E8 = Me.Txt
  loc_1567E3D: Call 0.Method_Proc_257_62_1568E280 (CInt(4), var_EC)
  loc_1567E55: var_88 = var_F4 & var_EC.Text & "' Order by PD.Sno"
  loc_1567E76: If (var_88 = vbNullString) Then
  loc_1567E79:   Exit Sub
  loc_1567E7A: End If
  loc_1567E90: unk_57AACD.Execute var_88, var_118, -1
  loc_1567E9B: Set var_8C = var_E8
  loc_1567EB8: If (var_8C.RecordCount <= 0) Then
  loc_1567EC1:   Call 0.Method_arg_50 (var_DC)
  loc_1567EE2:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_148, var_168)
  loc_1567EF2:   Exit Sub
  loc_1567EF3: End If
  loc_1567F00: MemVar_1F923C8 = "K"
  loc_1567F06: Close 1
  loc_1567F0F: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1567F21: Call Proc_257_72_129375C(1, 1, &H26, var_16C)
  loc_1567F68: var_D4 = Proc_6_45_EAD428("PHONE NO." & Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_16C, var_16C), &H28), &H28)
  loc_1567FA1: var_168 = (38 - Len(Trim(var_D4)))
  loc_1567FD4: var_20C = (38 - Len(Trim(var_D4)))
  loc_1567FFE: var_19C = (Chr(&HF) + Space(CLng((var_168 / 2))))
  loc_1568008: var_1BC = (var_19C + CVar(var_D4))
  loc_156800F: var_24C = (var_1BC + Space(CLng((var_20C / 2))))
  loc_1568016: var_26C = (var_24C + Chr(&H12))
  loc_156801C: Print 1, var_26C
  loc_156803F: var_D0 = (var_D0 + 1)
  loc_1568069: Print 1, Proc_6_98_11AC4E4("Booking Slip", "D", &H32)
  loc_156807D: var_8C.MoveFirst
  loc_15680B0: var_C8 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_15680BE: Print 1, vbNullString
  loc_15680F7: Proc_6_39_E7C810(var_168, CVar(var_8C.Fields.Item("bookingno")), var_16C)
  loc_1568189: var_1EC = ("Date : " + Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy"))
  loc_1568192: var_20C = (Len(Trim(var_D4)) + " ")
  loc_156819C: var_24C = (var_20C + CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)))
  loc_15681B5: var_128 = (Chr(&HF) + "Order No. : ")
  loc_15681BF: var_18C = (Trim(var_D4) + CVar(Proc_6_45_EAD428(CStr(var_168), 5)))
  loc_15681C9: var_26C = (Space(CLng((var_168 / 2))) + CVar(Proc_6_52_EAD4F4(CStr(var_24C), &H17)))
  loc_15681CF: Print 1, var_26C
  loc_156825F: var_128 = (Chr(&HF) + "Cust. Name: ")
  loc_1568269: var_17C = (Trim(var_D4) + CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C)))
  loc_156826F: Print 1, CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C))), 5))
  loc_1568315: var_18C = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + " ")
  loc_156831F: var_1DC = (Space(CLng(("dd/mm/yy" / 2))) + CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DeliveryTime")), 1, 1)))
  loc_1568338: var_128 = (Chr(&HF) + "Del. Date : ")
  loc_1568342: var_20C = (Trim(var_D4) + CVar(Proc_6_45_EAD428(CStr(Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy")), &H14)))
  loc_1568348: Print 1, var_20C
  loc_156838D: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_1568393: Print 1, Trim(var_D4)
  loc_15683EE: var_1BC = Space(1)
  loc_1568435: var_148 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_156843C: var_17C = (CVar(var_8C.Fields.Item("DeliveryDate")) + Space(1))
  loc_1568446: var_19C = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + CVar(Proc_6_52_EAD4F4("Qty", 5)))
  loc_156844D: var_1DC = (CVar(var_8C.Fields.Item("DeliveryTime")) + var_1BC)
  loc_1568457: var_20C = (Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy") + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_156845E: var_23C = (var_20C + Space(1))
  loc_1568468: var_25C = (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)) + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_156846E: Print 1, CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_52_EAD4F4("Amount", 7))), &H17))
  loc_15684BE: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_15684C4: Print 1, CVar(Proc_6_45_EAD428("Item Name", &H13))
  loc_15684F7: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Total")))
  loc_1568500: var_94 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1568533: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Tax")), var_94)
  loc_156853C: var_A4 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_156856F: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Discount")), var_A4)
  loc_1568578: var_9C = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_15685AB: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("NetAmount")), var_9C)
  loc_15685B4: var_AC = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_15685E7: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Advance")), var_AC)
  loc_15685F0: var_B4 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1568623: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Addition")), var_B4)
  loc_156862C: var_BC = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_156865F: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("RoundOff")), var_BC)
  loc_1568668: var_C4 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1568675: ' Referenced from: 15688C2
  loc_1568684: If Not(var_8C.EOF) Then
  loc_1568703:   Proc_6_39_E7C810(var_1BC, CVar(var_8C.Fields.Item("Quantity")))
  loc_1568770:   Proc_6_39_E7C810(var_26C, CVar(var_8C.Fields.Item("Rate")), 1)
  loc_15687DD:   Proc_6_39_E7C810(var_310, CVar(var_8C.Fields.Item("Amount")), 1)
  loc_1568820:   var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)))
  loc_1568827:   var_18C = (Space(1) + Space(1))
  loc_1568831:   var_22C = (CVar(Proc_6_52_EAD4F4("Qty", 5)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1BC, "0.00")), 5, 1)))
  loc_1568838:   var_24C = (Space(1) + Space(1))
  loc_1568842:   var_2C8 = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_26C, "0.00")), 6, 1)))
  loc_1568849:   var_2E8 = (var_2C8 + Space(1))
  loc_1568853:   var_350 = (var_2E8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_310, "0.00")), 7, 1)))
  loc_1568859:   Print 1, var_350
  loc_15688BD:   var_8C.MoveNext
  loc_15688C2:   GoTo loc_1568675
  loc_15688C5: End If
  loc_15688DB: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_15688E1: Print 1, var_8C.Fields.Item("ItemName").Value
  loc_1568948: var_148 = (Chr(&HF) + Space(&H11))
  loc_1568951: var_168 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Total      : ")
  loc_156895B: var_1BC = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_94, "0.00")), &HA, 1, 1)))
  loc_1568961: Print 1, var_1BC
  loc_1568988: If (var_9C > CDbl(0)) Then
  loc_15689E5:   var_148 = (Chr(&HF) + Space(&H11))
  loc_15689EE:   var_168 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Discount   : ")
  loc_15689F8:   var_1BC = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_9C, "0.00")), &HA, 1, 1)))
  loc_15689FE:   Print 1, var_1BC
  loc_1568A1E: End If
  loc_1568A25: If (var_A4 > CDbl(0)) Then
  loc_1568A82:   var_148 = (Chr(&HF) + Space(&H11))
  loc_1568A8B:   var_168 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Tax        : ")
  loc_1568A95:   var_1BC = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_A4, "0.00")), &HA, 1, 1)))
  loc_1568A9B:   Print 1, var_1BC
  loc_1568ABB: End If
  loc_1568AC2: If (var_BC > CDbl(0)) Then
  loc_1568B1F:   var_148 = (Chr(&HF) + Space(&H11))
  loc_1568B28:   var_168 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Addition   : ")
  loc_1568B32:   var_1BC = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1568B38:   Print 1, var_1BC
  loc_1568B58: End If
  loc_1568B5F: If (var_C4 > CDbl(0)) Then
  loc_1568BBC:   var_148 = (Chr(&HF) + Space(&H11))
  loc_1568BC5:   var_168 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Round off  : ")
  loc_1568BCF:   var_1BC = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1, 1)))
  loc_1568BD5:   Print 1, var_1BC
  loc_1568BF5: End If
  loc_1568BFC: If (var_AC > CDbl(0)) Then
  loc_1568C59:   var_148 = (Chr(&HF) + Space(&H11))
  loc_1568C62:   var_168 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Net Amount : ")
  loc_1568C6C:   var_1BC = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_AC, "0.00")), &HA, 1, 1)))
  loc_1568C72:   Print 1, var_1BC
  loc_1568C92: End If
  loc_1568CA8: var_128 = (Chr(&HF) + CVar(var_C8))
  loc_1568CAE: Print 1, Space(&H11)
  loc_1568CC2: If (var_B4 > CDbl(0)) Then
  loc_1568D14:   var_128 = (Chr(&HF) + "Advance Taken: ")
  loc_1568D1E:   var_18C = (Space(&H11) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_B4, "0.00")), &HA, 1, 1)))
  loc_1568D24:   Print 1, Format(var_AC, "0.00")
  loc_1568D40: End If
  loc_1568D45: Print 1, vbNullString
  loc_1568D6E: var_128 = (Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1568D75: var_168 = (Space(&H11) + Chr(&H12))
  loc_1568D7B: Print 1, Format(var_B4, "0.00")
  loc_1568D92: var_D0 = (var_D0 + 1)
  loc_1568D9A: Print 1, vbNullString
  loc_1568DA6: var_D0 = (var_D0 + 1)
  loc_1568DAB: Close 1
  loc_1568DB4: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1568DC4: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_1568DCF: Close 1
  loc_1568DD9: If (MemVar_1F923B8 = "Y") Then
  loc_1568DF2:   var_CC = CLng(Shell("C:\reptmp\SBILL.PIF", 0))
  loc_1568DFB: Else
  loc_1568E11:   var_CC = CLng(Shell("C:\reptmp\SBILL.BAT", 0))
  loc_1568E17: End If
  loc_1568E1C: Set var_8C = Nothing
  loc_1568E1F: Exit Sub
  loc_1568E20: ' Referenced from: 1567DEC
  loc_1568E20: Proc_6_60_E62BC4(var_CC, var_CC, var_16C, var_16C)
  loc_1568E25: Exit Sub
End Sub

Public Sub Proc_257_63_E395B0
  'Data Table: 57AAC8
  loc_E39590: Set var_88 = Me.TopCtrl1
  loc_E39596: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E395AB: If ( = "Browse") Then
  loc_E395AE:   Exit Sub
  loc_E395AF: End If
  loc_E395AF: Exit Sub
End Sub

Public Sub Proc_257_64_1202FBC
  'Data Table: 57AAC8
  Dim var_94 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_1202B0A: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_1202B25: Me.FGrid.Top = CVar(CDbl(2130))
  loc_1202B4B: Me.FrameFgrid.Top = CDbl(Me.FGrid.Top)
  loc_1202B78: Me.FrameGrpItem.Top = CDbl(Me.FGrid.Top)
  loc_1202B8B: Set var_C0 = Me.FGrid
  loc_1202BA2: global_92 = CStr(CLng(var_C0.BackColor))
  loc_1202BB8: var_C0.Cols = 8
  loc_1202BBD: var_94 = 0
  loc_1202BC9: var_D4 = CVar(CLng(0)) 'Long
  loc_1202BCE: var_F4 = "SNo"
  loc_1202BD7: LateIdCallSt
  loc_1202BE2: var_94 = CVar(CLng(0)) 'Long
  loc_1202BED: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202BF4: LateIdCallSt
  loc_1202BFF: var_94 = CVar(CLng(0)) 'Long
  loc_1202C04: var_D4 = &H15E
  loc_1202C10: LateIdCallSt
  loc_1202C18: var_94 = 0
  loc_1202C24: var_D4 = CVar(CLng(1)) 'Long
  loc_1202C29: var_F4 = "Item Code"
  loc_1202C32: LateIdCallSt
  loc_1202C3D: var_94 = CVar(CLng(1)) 'Long
  loc_1202C48: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202C4F: LateIdCallSt
  loc_1202C5A: var_94 = CVar(CLng(1)) 'Long
  loc_1202C5F: var_D4 = 0
  loc_1202C6B: LateIdCallSt
  loc_1202C73: var_94 = 0
  loc_1202C7F: var_D4 = CVar(CLng(2)) 'Long
  loc_1202C84: var_F4 = "Item Code"
  loc_1202C8D: LateIdCallSt
  loc_1202C98: var_94 = CVar(CLng(2)) 'Long
  loc_1202CA3: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202CAA: LateIdCallSt
  loc_1202CB5: var_94 = CVar(CLng(2)) 'Long
  loc_1202CBA: var_D4 = &H3E8
  loc_1202CC6: LateIdCallSt
  loc_1202CCE: var_94 = 0
  loc_1202CDA: var_D4 = CVar(CLng(3)) 'Long
  loc_1202CDF: var_F4 = "Item Name"
  loc_1202CE8: LateIdCallSt
  loc_1202CF3: var_94 = CVar(CLng(3)) 'Long
  loc_1202CFE: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202D05: LateIdCallSt
  loc_1202D10: var_94 = CVar(CLng(3)) 'Long
  loc_1202D15: var_D4 = &H7D0
  loc_1202D21: LateIdCallSt
  loc_1202D29: var_94 = 0
  loc_1202D35: var_D4 = CVar(CLng(4)) 'Long
  loc_1202D3A: var_F4 = "Remark"
  loc_1202D43: LateIdCallSt
  loc_1202D4E: var_94 = CVar(CLng(4)) 'Long
  loc_1202D59: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202D60: LateIdCallSt
  loc_1202D6B: var_94 = CVar(CLng(4)) 'Long
  loc_1202D76: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202D7D: LateIdCallSt
  loc_1202D88: var_94 = CVar(CLng(4)) 'Long
  loc_1202D8D: var_D4 = &H5DC
  loc_1202D99: LateIdCallSt
  loc_1202DA1: var_94 = 0
  loc_1202DAD: var_D4 = CVar(CLng(5)) 'Long
  loc_1202DB2: var_F4 = "Quantity"
  loc_1202DBB: LateIdCallSt
  loc_1202DC6: var_94 = CVar(CLng(5)) 'Long
  loc_1202DD1: var_D4 = CVar(CInt(7)) 'Integer
  loc_1202DD8: LateIdCallSt
  loc_1202DE3: var_94 = CVar(CLng(5)) 'Long
  loc_1202DE8: var_D4 = &H320
  loc_1202DF4: LateIdCallSt
  loc_1202DFC: var_94 = 0
  loc_1202E08: var_D4 = CVar(CLng(6)) 'Long
  loc_1202E0D: var_F4 = "Rate"
  loc_1202E16: LateIdCallSt
  loc_1202E21: var_94 = CVar(CLng(6)) 'Long
  loc_1202E2C: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202E33: LateIdCallSt
  loc_1202E3E: var_94 = CVar(CLng(6)) 'Long
  loc_1202E49: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202E50: LateIdCallSt
  loc_1202E5B: var_94 = CVar(CLng(6)) 'Long
  loc_1202E60: var_D4 = &H320
  loc_1202E6C: LateIdCallSt
  loc_1202E74: var_94 = 0
  loc_1202E80: var_D4 = CVar(CLng(7)) 'Long
  loc_1202E85: var_F4 = "Amount"
  loc_1202E8E: LateIdCallSt
  loc_1202E99: var_94 = CVar(CLng(7)) 'Long
  loc_1202EA4: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202EAB: LateIdCallSt
  loc_1202EB6: var_94 = CVar(CLng(7)) 'Long
  loc_1202EC1: var_D4 = CVar(CInt(1)) 'Integer
  loc_1202EC8: LateIdCallSt
  loc_1202ED3: var_94 = CVar(CLng(7)) 'Long
  loc_1202ED8: var_D4 = &H320
  loc_1202EE4: LateIdCallSt
  loc_1202EEE: Set var_C0 = Nothing 
  loc_1202EFE: Me.TxtTotal.Enabled = False
  loc_1202F12: Me.TxtRndOff.Enabled = False
  loc_1202F26: Me.TxtNetAmt.Enabled = False
  loc_1202F3A: Me.TxtDiscPer.Enabled = False
  loc_1202F4E: Me.TxtDiscAmt.Enabled = False
  loc_1202F62: Me.TxtTaxPer.Enabled = False
  loc_1202F76: Me.TxtTaxAmt.Enabled = False
  loc_1202F8A: Me.TxtAdd.Enabled = False
  loc_1202F9E: Me.TxtDed.Enabled = False
  loc_1202FB2: Me.TxtAdvAmt.Enabled = False
  loc_1202FBA: Exit Sub
End Sub

Public Sub Proc_257_65_FF4B14
  'Data Table: 57AAC8
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_FF4923: Set var_8C = Me.TxtMask
  loc_FF4929: Call 0.Method_Proc_257_65_FF4B140 (0, var_90)
  loc_FF4931: var_90.Text = "__:__"
  loc_FF494C: Set var_8C = Me.TxtMask
  loc_FF4952: Call 0.Method_Proc_257_65_FF4B140 (1, var_90)
  loc_FF495A: var_90.Text = "__:__"
  loc_FF4974: Set var_8C = Me.Txt
  loc_FF497A: Call 0.Method_Proc_257_65_FF4B14C (var_B2, var_86)
  loc_FF498A: For var_B6 =  To CByte((var_B2 - 1)): CByte(0) = var_B6 'Byte
  loc_FF49A0:   Set var_8C = Me.Txt
  loc_FF49A6:   Call 0.Method_Proc_257_65_FF4B140 (CInt(var_86), var_90)
  loc_FF49AE:   var_90.Text = vbNullString
  loc_FF49CA:   Set var_8C = Me.Txt
  loc_FF49D0:   Call 0.Method_Proc_257_65_FF4B140 (CInt(var_86), var_90)
  loc_FF49D8:   var_90.Tag = vbNullString
  loc_FF49E7: Next var_B6 'Byte
  loc_FF49FA: Me.TxtTotal.Text = vbNullString
  loc_FF4A0F: Me.TxtRndOff.Text = vbNullString
  loc_FF4A24: Me.TxtNetAmt.Text = vbNullString
  loc_FF4A39: Me.TxtDiscPer.Text = vbNullString
  loc_FF4A4E: Me.TxtDiscAmt.Text = vbNullString
  loc_FF4A63: Me.TxtTaxPer.Text = vbNullString
  loc_FF4A78: Me.TxtTaxAmt.Text = vbNullString
  loc_FF4A8D: Me.TxtAdd.Text = vbNullString
  loc_FF4AA2: Me.TxtDed.Text = vbNullString
  loc_FF4AB7: Me.TxtAdvAmt.Text = vbNullString
  loc_FF4AD2: Me.FGrid.Rows = 1
  loc_FF4ADA: var_A0 = vbNullString
  loc_FF4AE4: Set var_8C = Me.FGrid
  loc_FF4B08: Me.FGrid.FixedRows = 1
  loc_FF4B10: Exit Sub
End Sub

Public Sub Proc_257_66_EF1934
  'Data Table: 57AAC8
  Dim var_90 As Variant
  loc_EF186E: Set var_8C = Me.TxtMask
  loc_EF1874: Call 0.Method_Proc_257_66_EF19340 (0, var_90)
  loc_EF187C: var_90.Enabled = False
  loc_EF1896: Set var_8C = Me.TxtMask
  loc_EF189C: Call 0.Method_Proc_257_66_EF19340 (1, var_90)
  loc_EF18A4: var_90.Enabled = False
  loc_EF18BE: Set var_8C = Me.Txt
  loc_EF18C4: Call 0.Method_Proc_257_66_EF1934C (var_B2, var_86)
  loc_EF18D4: For var_B6 =  To CByte((var_B2 - 1)): CByte(0) = var_B6 'Byte
  loc_EF18E9:   Set var_8C = Me.Txt
  loc_EF18EF:   Call 0.Method_Proc_257_66_EF19340 (CInt(var_86), var_90)
  loc_EF18F7:   var_90.Enabled = False
  loc_EF1906: Next var_B6 'Byte
  loc_EF1919: Set var_8C = Me.Txt
  loc_EF191F: Call 0.Method_Proc_257_66_EF19340 (CInt(4), var_90)
  loc_EF1927: var_90.Enabled = False
  loc_EF1933: Exit Sub
End Sub

Public Sub Proc_257_67_10E6DA8
  'Data Table: 57AAC8
  Dim var_B4 As String
  Dim var_EC As Variant
  Dim var_B0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_C8 As Fields15
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10E6AE5: var_90 = CStr(Trim(global_132))
  loc_10E6AFF: var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E6B30: Set var_C8 = Me.Txt
  loc_10E6B36: Call 0.Method_Proc_257_67_10E6DA80 (CInt(1), var_CC, CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E6B45: Proc_6_7_F25D88(var_DC, CVar(var_CC), var_130)
  loc_10E6B4D: var_FC = -1 & var_DC 
  loc_10E6B61: Me.Txt.Execute CStr(var_FC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E6B6C: Set var_8C = var_134
  loc_10E6BA8: If (var_8C.RecordCount > 0) Then
  loc_10E6BE7:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E6C1B:     global_120 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E6C46:     var_CC = var_8C.Fields.Item("start_srl_no")
  loc_10E6C5B:     var_DC = (var_CC.Value + 1)
  loc_10E6C64:     global_124 = CLng(var_DC)
  loc_10E6C75:   End If
  loc_10E6C75: End If
  loc_10E6CA0: var_B0 = Space((5 - Len(var_90)))
  loc_10E6CA8: var_EC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_CC.Value)
  loc_10E6CBC: var_FC = Space((5 - Len(global_120)))
  loc_10E6CC4: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_FC)
  loc_10E6CD1: var_130 = (var_FC & " Order By VP.Date_From DESC" + CVar(global_120))
  loc_10E6CEA: var_14C = Space((8 - Len(CStr(global_124))))
  loc_10E6CF2: var_15C = (var_130 + var_14C)
  loc_10E6D01: var_17C = (var_15C + CVar(CStr(global_124)))
  loc_10E6D0C: global_112 = CStr(var_17C)
  loc_10E6D43: Set var_C8 = Me.Txt
  loc_10E6D49: Call 0.Method_Proc_257_67_10E6DA80 (CInt(4), var_CC)
  loc_10E6D51: var_CC.Text = global_112
  loc_10E6D73: Set var_C8 = Me.Txt
  loc_10E6D79: Call 0.Method_Proc_257_67_10E6DA80 (CInt(0), var_CC)
  loc_10E6D81: var_CC.Text = CStr(global_124)
  loc_10E6D96: var_88 = global_112
  loc_10E6D9E: Set var_8C = Nothing
  loc_10E6DA1: Proc_257_67_10E6DA8 = global_124
End Sub

Public Sub Proc_257_68_15889C4
  'Data Table: 57AAC8
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_57AACD As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As TextBox
  Dim var_BC As Variant
  Dim var_166 As Integer
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_14C As Variant
  Dim var_88 As Recordset15
  Dim var_1B0 As Variant
  loc_1587874: On Error Goto loc_15889BD
  loc_158788E: If (Me.RecordCount > 0) Then
  loc_15878E7:   unk_57AACD.Execute CStr("Select P.* From PackingOrder P Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_158790F:   Set var_128 = var_124 
  loc_158794C:   Set var_124 = Me.Txt
  loc_1587952:   Call 0.Method_Proc_257_68_15889C40 (CInt(4), var_12C)
  loc_158795A:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_15879A9:   Set var_124 = Me.Txt
  loc_15879AF:   Call 0.Method_Proc_257_68_15889C40 (CInt(0), var_12C)
  loc_15879B7:   var_12C.Text = CStr(var_128.Fields.Item("BNo").Value)
  loc_1587A58:   var_100 = CStr(IIf(IsNull(CVar(var_128.Fields.Item("BDate"))), vbNullString, Format(CVar(var_128.Fields.Item("BDate")), "DD/MMM/YYYY")))
  loc_1587A67:   Set var_160 = Me.Txt
  loc_1587A6D:   Call 0.Method_Proc_257_68_15889C40 (CInt(1), var_164, var_100, 1)
  loc_1587A75:   var_164.Text = 1
  loc_1587B25:   var_178 = CVar(CStr(IIf(IsNull(CVar(var_128.Fields.Item("BTime"))), vbNullString, Format(CVar(var_128.Fields.Item("BTime")), "hh:mm")))) 'String
  loc_1587B34:   Set var_160 = Me.TxtMask
  loc_1587B3A:   Call 0.Method_Proc_257_68_15889C40 (CInt(0), var_164, var_178, 1)
  loc_1587B42:   var_164.defaultText = 1
  loc_1587B8D:   var_166 = IsNull(CVar(var_128.Fields.Item("DDate")))
  loc_1587BFF:   Set var_160 = Me.Txt
  loc_1587C05:   Call 0.Method_Proc_257_68_15889C40 (CInt(2), var_164, CStr(IIf(var_166, vbNullString, Format(CVar(var_128.Fields.Item("DDate")), "DD/MMM/YYYY"))), 1, 1)
  loc_1587C0D:   var_164.Text = var_166
  loc_1587C59:   var_166 = IsNull(CVar(var_128.Fields.Item("DTime")))
  loc_1587C73:   var_12C = var_128.Fields.Item("DTime")
  loc_1587CA4:   var_14C = vbNullString
  loc_1587CCC:   Set var_160 = Me.TxtMask
  loc_1587CD2:   Call 0.Method_Proc_257_68_15889C40 (CInt(1), var_164, CVar(CStr(IIf(var_166, var_14C, Format(CVar(var_12C), "hh:mm")))), 1, 1)
  loc_1587CDA:   var_164.defaultText = var_166
  loc_1587D36:   Set var_124 = Me.Txt
  loc_1587D3C:   Call 0.Method_Proc_257_68_15889C40 (CInt(3), var_12C, CStr(var_128.Fields.Item("CustName").Value))
  loc_1587D44:   var_12C.Text = var_166
  loc_1587D90:   Set var_124 = Me.Txt
  loc_1587D96:   Call 0.Method_Proc_257_68_15889C40 (CInt(6), var_12C)
  loc_1587D9E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("PhoneNo")), var_166)
  loc_1587DE8:   Set var_124 = Me.Txt
  loc_1587DEE:   Call 0.Method_Proc_257_68_15889C40 (CInt(7), var_12C)
  loc_1587DF6:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("Addr1")))
  loc_1587E40:   Set var_124 = Me.Txt
  loc_1587E46:   Call 0.Method_Proc_257_68_15889C40 (CInt(8), var_12C)
  loc_1587E4E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("Addr2")))
  loc_1587EB3:   Me.TxtTotal.Text = CStr(Format(CVar(var_128.Fields.Item("Total")), "0.00"))
  loc_1587F1C:   Me.TxtDiscAmt.Text = CStr(Format(CVar(var_128.Fields.Item("Discount")), "0.00"))
  loc_1587F85:   Me.TxtDiscPer.Text = CStr(Format(CVar(var_128.Fields.Item("DiscPer")), "0.00"))
  loc_1587FEE:   Me.TxtTaxAmt.Text = CStr(Format(CVar(var_128.Fields.Item("Tax")), "0.00"))
  loc_1588057:   Me.TxtTaxPer.Text = CStr(Format(CVar(var_128.Fields.Item("TaxPer")), "0.00"))
  loc_15880C0:   Me.TxtAdd.Text = CStr(Format(CVar(var_128.Fields.Item("Addition")), "0.00"))
  loc_1588129:   Me.TxtDed.Text = CStr(Format(CVar(var_128.Fields.Item("Deduction")), "0.00"))
  loc_1588192:   Me.TxtRndOff.Text = CStr(Format(CVar(var_128.Fields.Item("RoundOff")), "0.00"))
  loc_15881FB:   Me.TxtNetAmt.Text = CStr(Format(CVar(var_128.Fields.Item("NetAmt")), "0.00"))
  loc_1588264:   Me.TxtAdvAmt.Text = CStr(Format(CVar(var_128.Fields.Item("AdvAmt")), "0.00"))
  loc_1588296:   var_AC = var_128.Fields.Item("vType")
  loc_15882A7:   var_100 = CStr(var_AC.Value)
  loc_15882B5:   Set var_124 = Me.Txt
  loc_15882BB:   Call 0.Method_Proc_257_68_15889C40 (CInt(5), var_12C, var_100, 1, 1, 1, 1)
  loc_15882C3:   var_12C.Tag = 1
  loc_15882F9:   Set var_98 = Me.Txt
  loc_15882FF:   Call 0.Method_Proc_257_68_15889C40 (CInt(5), var_AC, var_100, "Select Description,NCat From Voucher_type Where V_Type='", var_14C, -1, var_124)
  loc_1588307:   1 = var_AC.Tag
  loc_1588334:   unk_57AACD.Execute CStr(1 & Trim(CVar(var_100)) & "'"), 1, 1
  loc_158833F:   Set var_8C = var_124
  loc_158836F:   If (var_8C.RecordCount > 0) Then
  loc_15883AB:     Set var_124 = Me.Txt
  loc_15883B1:     Call 0.Method_Proc_257_68_15889C40 (CInt(5), var_12C, CStr(var_8C.Fields.Item("Description").Value))
  loc_15883B9:     var_12C.Text = 1
  loc_15883E9:     var_AC = var_8C.Fields.Item("NCat")
  loc_1588400:     global_128 = CStr(var_AC.Value)
  loc_1588414:   Else
  loc_1588422:     Set var_98 = Me.Txt
  loc_1588428:     Call 0.Method_Proc_257_68_15889C40 (CInt(5), var_AC)
  loc_1588430:     var_AC.Text = vbNullString
  loc_1588442:     global_128 = vbNullString
  loc_1588446:   End If
  loc_1588477:   global_120 = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_158848A:   Set var_128 = Nothing 
  loc_158849D:   Me.FGrid.Redraw = False
  loc_15884B8:   Me.FGrid.Rows = 1
  loc_15884C2:   var_8E = 1
  loc_15884D9:   var_DC = CVar("SELECT     PD.*,I.Code as Code, I.name  as  Name,I.DispCode as DispCode FROM         PackingOrderDetail PD  LEFT OUTER JOIN " & "ItemMast I ON PD.ItemCode = I.Code Where PD.Docid='") 'String
  loc_158853B:   unk_57AACD.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' and RestCode='" & CVar(pRestCode) & "'"), var_19C, -1
  loc_1588546:   Set var_88 = var_124
  loc_158857C:   If (var_88.RecordCount > 0) Then
  loc_158857F:     ' Referenced from: 15888F8
  loc_158858E:     If Not(var_88.EOF) Then
  loc_1588591:       var_A8 = vbNullString
  loc_158859B:       Set var_98 = Me.FGrid
  loc_15885B0:       Set var_1A0 = Me.FGrid
  loc_15885B7:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_15885BF:       var_EC = CVar(CLng(0)) 'Long
  loc_15885C9:       var_BC = CVar(CStr(var_8E)) 'String
  loc_15885D0:       LateIdCallSt
  loc_15885DF:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_15885E7:       var_110 = CVar(CLng(1)) 'Long
  loc_1588617:       var_DC = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_158861E:       LateIdCallSt
  loc_1588638:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1588640:       var_110 = CVar(CLng(2)) 'Long
  loc_1588670:       var_DC = CVar(CStr(var_88.Fields.Item("DispCode").Value)) 'String
  loc_1588677:       LateIdCallSt
  loc_1588691:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1588699:       var_110 = CVar(CLng(3)) 'Long
  loc_15886C9:       var_DC = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_15886D0:       LateIdCallSt
  loc_1588715:       var_13C = CVar(CLng(var_8E)) 'Long
  loc_158871D:       var_1B0 = CVar(CLng(4)) 'Long
  loc_1588766:       var_14C = CVar(CStr(IIf((IsNull(CVar(var_88.Fields.Item("Remark"))) = &HFF), vbNullString, CVar(var_88.Fields.Item("Remark"))))) 'String
  loc_158876D:       LateIdCallSt
  loc_15887AB:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_15887B3:       var_13C = CVar(CLng(5)) 'Long
  loc_15887E0:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_15887E7:       LateIdCallSt
  loc_158881D:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1588825:       var_13C = CVar(CLng(6)) 'Long
  loc_1588852:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1588859:       LateIdCallSt
  loc_158888F:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1588897:       var_13C = CVar(CLng(7)) 'Long
  loc_15888C4:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_15888CB:       LateIdCallSt
  loc_15888E3:       Set var_1A0 = Nothing 
  loc_15888ED:       var_8E = (var_8E + 1)
  loc_15888F3:       var_88.MoveNext
  loc_15888F8:       GoTo loc_158857F
  loc_15888FB:     End If
  loc_158890E:     Me.FGrid.FixedRows = 1
  loc_1588916:   End If
  loc_1588924:   Me.FGrid.Redraw = True
  loc_1588932:   If (var_8E = 1) Then
  loc_1588948:     Me.FGrid.Rows = 1
  loc_1588965:     var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_158896D:     Set var_AC = Me.FGrid
  loc_158899C:     Me.FGrid.FixedRows = 1
  loc_15889A4:   End If
  loc_15889A7: Else
  loc_15889A7:   Call Proc_257_65_FF4B14(FGrid.DispID_10000, var_DC, var_8E, var_1A0, var_120, 1, 1)
  loc_15889AC: End If
  loc_15889B1: Set var_88 = Nothing
  loc_15889B9: Set var_8C = Nothing
  loc_15889BC: Exit Sub
  loc_15889BD: ' Referenced from: 1587874
  loc_15889BD: Proc_6_60_E62BC4(var_13C, var_EC, var_1A0)
  loc_15889C2: Exit Sub
End Sub

Public Sub Proc_257_69_109A254
  'Data Table: 57AAC8
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_57AACD As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_1099FC5: Set var_9C = Me.TopCtrl1
  loc_1099FCB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_1099FE0: If ( = "Add") Then
  loc_109A010:   Set var_9C = Me.Txt
  loc_109A016:   Call 0.Method_Proc_257_69_109A2540 (CInt(4), var_D0, var_D4, "Select Count(*) From PackingOrder Where DocID='", var_BC, -1)
  loc_109A037:   unk_57AACD.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_109A047:    = var_E4.Item()
  loc_109A04F:    = var_F8.Value
  loc_109A07C:   If (var_D0.Text.Fields > 0) Then
  loc_109A085:     Call 0.Method_arg_50 (var_D4)
  loc_109A0A6:     MsgBox("Duplicate booking No.", &H40, CVar(var_D4), var_118, var_128)
  loc_109A0BC:     Call Proc_257_67_10E6DA8(MemVar_1F92044)
  loc_109A0CF:     Set var_9C = Me.Txt
  loc_109A0D5:     Call 0.Method_Proc_257_69_109A2540 (CInt(4), var_D0)
  loc_109A0DD:     var_D0.Text = var_D4
  loc_109A0F1:     Proc_257_69_109A254 = 0
  loc_109A0F7:   End If
  loc_109A0F7: End If
  loc_109A11C: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_109A126:   var_AC = CVar(CLng(var_88)) 'Long
  loc_109A12E:   var_108 = CVar(CLng(3)) 'Long
  loc_109A14E:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_109A16A:   If CBool(var_118 <> vbNullString) Then
  loc_109A173:     var_150 = global_128
  loc_109A17A:     var_AC = CVar(CLng(var_88)) 'Long
  loc_109A182:     var_108 = CVar(CLng(5)) 'Long
  loc_109A1B2:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_109A1DA:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_109A200:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_109A20C:       Set var_9C = Me.FGrid
  loc_109A230:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_109A23D:       Proc_257_69_109A254 = 0
  loc_109A243:     End If
  loc_109A243:   End If
  loc_109A246: Next var_12C 'Integer
  loc_109A24B: Proc_257_69_109A254 = 
End Sub

Public Sub Proc_257_70_F824C4
  'Data Table: 57AAC8
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_244 As Double
  loc_F823B0: var_A8 = Me.FGrid.Row
  loc_F823B9: var_B8 = CVar(CLng(var_A8)) 'Long
  loc_F823C1: var_D8 = CVar(CLng(6)) 'Long
  loc_F823F9: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F82401: var_144 = CVar(CLng(5)) 'Long
  loc_F82423: var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_F82480: LateIdCallSt
  loc_F824B6: Call Proc_257_71_12AA898(var_A8, Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_244)), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)))
  loc_F824BE: Proc_257_70_F824C4 = var_244
End Sub

Public Sub Proc_257_71_12AA898
  'Data Table: 57AAC8
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_168 As Double
  Dim var_120 As Variant
  Dim unk_57AACD As Connection15
  Dim var_9C As Recordset15
  loc_12AA2B3: Me.TxtTotal.Text = "0.00"
  loc_12AA2E0: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B4 'Integer
  loc_12AA307:   var_C8 = CVar(CLng(var_96)) 'Long
  loc_12AA30F:   var_E8 = CVar(CLng(7)) 'Long
  loc_12AA350:   var_120 = CVar((Val(Me.TxtTotal.Text) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_12AA36D:   Me.TxtTotal.Text = CStr(Format(var_120, "0.00"))
  loc_12AA392: Next var_B4 'Integer
  loc_12AA40E: Me.TxtDiscAmt.Text = CStr(Format(CVar(((Val(Me.TxtTotal.Text) * Val(Me.TxtDiscPer.Text)) / CDbl(&H64))), "0.00"))
  loc_12AA435: Set var_A0 = Me.TxtTotal
  loc_12AA4A9: var_B0 = CVar((((Val(var_A0.Text) - Val(Me.TxtDiscAmt.Text)) * Val(Me.TxtTaxPer.Text)) / CDbl(&H64))) 'Double
  loc_12AA4C6: Me.TxtTaxAmt.Text = CStr(Format(CVar(((Val(Me.TxtTotal.Text) * Val(Me.TxtDiscPer.Text)) / CDbl(&H64))), "0.00"))
  loc_12AA50E: unk_57AACD.Execute "Select  RoundOfftype from RoundOffSetting where logsite_code='" & MemVar_1F92078 & "'", CVar(((Val(Me.TxtTotal.Text) * Val(Me.TxtDiscPer.Text)) / CDbl(&H64))), -1
  loc_12AA519: Set var_9C = var_A0
  loc_12AA53D: If (var_9C.RecordCount > 0) Then
  loc_12AA55A:   var_168 = Val(Me.TxtTotal.Text)
  loc_12AA62E:   Proc_6_142_14A55B0(((((var_168 - Val(Me.TxtDiscAmt.Text)) - Val(Me.TxtDed.Text)) + Val(Me.TxtAdd.Text)) + Val(Me.TxtTaxAmt.Text)), CByte(0), CStr(Left(CVar(var_9C.Fields.Item("RoundOffType")), 1)), 2, Val(Me.TxtTaxAmt.Text), Val(Me.TxtAdd.Text), Val(Me.TxtDed.Text), Val(Me.TxtDiscAmt.Text))
  loc_12AA642:   Me.TxtRndOff.Text = CStr(var_168)
  loc_12AA673: Else
  loc_12AA68D:   var_168 = Val(Me.TxtTotal.Text)
  loc_12AA732:   Proc_6_142_14A55B0(((((var_168 - Val(Me.TxtDiscAmt.Text)) - Val(Me.TxtDed.Text)) + Val(Me.TxtAdd.Text)) + Val(Me.TxtTaxAmt.Text)), CByte(0), "S", 2, Val(Me.TxtTaxAmt.Text), Val(Me.TxtAdd.Text), Val(Me.TxtDed.Text), Val(Me.TxtDiscAmt.Text))
  loc_12AA746:   Me.TxtRndOff.Text = CStr(var_168)
  loc_12AA76B: End If
  loc_12AA845: var_B0 = CVar((((((Val(Me.TxtTotal.Text) - Val(Me.TxtDiscAmt.Text)) - Val(Me.TxtDed.Text)) + Val(Me.TxtAdd.Text)) + Val(Me.TxtTaxAmt.Text)) + Val(Me.TxtRndOff.Text))) 'Double
  loc_12AA862: Me.TxtNetAmt.Text = CStr(Format(CVar(var_9C.Fields.Item("RoundOffType")), "0.00"))
  loc_12AA892: Proc_257_71_12AA898 = 1
End Sub

Public Sub Proc_257_72_129375C(arg_C, arg_10, arg_14) '129375C
  'Data Table: 57AAC8
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_57AACD As Connection15
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_D4 As Variant
  Dim arg_10 As Integer
  loc_12931D1: var_90 = vbNullString
  loc_12931D7: var_94 = vbNullString
  loc_12931DD: var_98 = vbNullString
  loc_12931E3: var_9C = vbNullString
  loc_12931EE: If (MemVar_1F923C0 = "Y") Then
  loc_12931F8:   var_E8 = vbNullString & "DATE "
  loc_1293229:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_129323C: End If
  loc_1293244: If (MemVar_1F923C4 = "Y") Then
  loc_1293256:   var_D4 = "dd/MM/yy"
  loc_12932A8:   var_16C = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_D4)))), 0))
  loc_12932CF:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12932D7:   var_1DC = (var_16C - Len(var_1BC))
  loc_12932E8:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_12932F1:   var_22C = (var_20C + " PAGE NO ")
  loc_1293313:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_1293318:   var_8C = CStr(var_26C)
  loc_1293345: End If
  loc_129337B: unk_57AACD.Execute "Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R  Where R.CODE='" & pRestCode & "'", var_D4, -1
  loc_1293386: Set var_A0 = var_270
  loc_129339D: If (MemVar_1F923C8 = "K") Then
  loc_12933DC:   If (var_A0.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_12933E9:     If (Len(MemVar_1F92130) <= &H28) Then
  loc_1293402:       var_E4 = (CVar(var_90) + Chr(&HF))
  loc_1293416:       var_13C = (Format(MemVar_1F920EC, Chr(&HF)) + Chr(&HE))
  loc_129342A:       var_16C = (0 + Chr(&H1B))
  loc_129343E:       var_19C = (var_16C + Chr(&H45))
  loc_1293448:       var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_129345C:       var_1DC = (var_1BC + Chr(&H1B))
  loc_1293470:       var_20C = (var_1DC + Chr(&H46))
  loc_1293484:       var_24C = (var_20C + Chr(&HE))
  loc_1293498:       var_26C = (Str(arg_C) + Chr(&H12))
  loc_129349D:       var_90 = CStr(var_26C)
  loc_12934C8:     Else
  loc_12934DE:       var_E4 = (CVar(var_90) + Chr(&H12))
  loc_12934F2:       var_13C = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_1293506:       var_16C = (0 + Chr(&HF))
  loc_1293510:       var_18C = (var_16C + CVar(MemVar_1F92130))
  loc_1293524:       var_1BC = (Chr(&H45) + Chr(&H12))
  loc_1293529:       var_90 = CStr(var_1BC)
  loc_1293541:     End If
  loc_1293541:   End If
  loc_1293555:   If (var_A0.RecordCount > 0) Then
  loc_1293567:     var_270 = var_A0.Fields
  loc_1293591:     If (Proc_6_38_E68A98(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_12935E9:       var_94 = 1 & Proc_6_98_11AC4E4(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(Val(CStr(arg_14))), var_94)
  loc_1293601:     End If
  loc_129363A:     If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Header2")), 1) <> vbNullString) Then
  loc_1293692:       var_98 = var_98 & Proc_6_98_11AC4E4(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_12936AA:     End If
  loc_12936AA:   End If
  loc_12936AA: End If
  loc_12936B4: If (Len(var_8C) > 0) Then
  loc_12936BC:   Print 1, var_8C
  loc_12936C8:   arg_10 = (arg_10 + 1)
  loc_12936CB: End If
  loc_12936D5: If (Len(var_90) > 0) Then
  loc_12936DD:   Print 1, var_90
  loc_12936E9:   arg_10 = (arg_10 + 1)
  loc_12936EC: End If
  loc_12936F6: If (Len(var_94) > 0) Then
  loc_12936FE:   Print 1, var_94
  loc_129370A:   arg_10 = (arg_10 + 1)
  loc_129370D: End If
  loc_1293717: If (Len(var_98) > 0) Then
  loc_129371F:   Print 1, var_98
  loc_129372B:   arg_10 = (arg_10 + 1)
  loc_129372E: End If
  loc_1293738: If (Len(var_9C) > 0) Then
  loc_1293740:   Print 1, var_9C
  loc_129374C:   arg_10 = (arg_10 + 1)
  loc_129374F: End If
  loc_1293755: Proc_257_72_129375C = arg_10
End Sub
