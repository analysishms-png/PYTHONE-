VERSION 5.00
Begin VB.Form FdRevCheckOut
  Caption = "Check Out Cancel"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 150
  ClientTop = 765
  ClientWidth = 12510
  ClientHeight = 8865
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8415
    Width = 12510
    Height = 450
    Visible = 0   'False
    TabIndex = 55
  End
  Begin CommandButton Command2
    Caption = "Bill Settle"
    BackColor = &HFFC0C0&
    Left = 2475
    Top = 7905
    Width = 1320
    Height = 795
    Visible = 0   'False
    TabIndex = 51
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdExit
    Caption = "&Exit"
    BackColor = &HFFC0C0&
    Left = 465
    Top = 7335
    Width = 1320
    Height = 795
    Visible = 0   'False
    TabIndex = 50
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 14790
    Top = 6705
    Width = 345
    Height = 240
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 1935
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 5
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2655
    Top = 1305
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1305
    Width = 450
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 5625
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4365
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 3105
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 1305
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 11
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3360
    Top = 600
    Width = 690
    Height = 285
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3720
    Top = 2250
    Width = 1230
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 14685
    Top = 6120
    Width = 990
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 1
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
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 2250
    Width = 630
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 2
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1995
    Top = 2250
    Width = 630
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 2
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 990
    Width = 2265
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 3420
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 3735
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4050
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4680
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4995
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 5310
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 1620
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 11
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1620
    Width = 450
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2655
    Top = 1620
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin PictureBox Picture2
    Left = 3630
    Top = 990
    Width = 300
    Height = 285
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
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
  Begin CommandButton Command3
    Caption = "Bill No manage"
    Left = 30
    Top = 6630
    Width = 1050
    Height = 495
    Visible = 0   'False
    TabIndex = 3
  End
  Begin CommandButton Command1
    Caption = "Command1"
    Left = 270
    Top = 495
    Width = 1050
    Height = 195
    Visible = 0   'False
    TabIndex = 1
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFFC0C0&
    Left = 19635
    Top = 3420
    Width = 660
    Height = 810
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
  End
  Begin MSFlexGrid FGPoint
    Left = 14280
    Top = 60
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 42
  End
  Begin MSHFlexGrid FGrid
    Left = 5280
    Top = 1140
    Width = 9990
    Height = 6090
    TabIndex = 44
  End
  Begin DataGrid DGRoomNo
    Left = 14460
    Top = 2370
    Width = 3795
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin DataGrid DGRoomType
    Left = 13545
    Top = 1740
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5265
    Top = 7260
    Width = 9510
    Height = 270
    TabIndex = 48
  End
  Begin BtnEnh BtnExit
    Left = 3750
    Top = 6360
    Width = 1335
    Height = 1125
    TabIndex = 53
  End
  Begin BtnEnh BtnCommand2
    Left = 2340
    Top = 6360
    Width = 1380
    Height = 1140
    TabIndex = 54
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 52
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
    Caption = "Guest Charge Details"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5250
    Top = 585
    Width = 9510
    Height = 345
    TabIndex = 49
    Alignment = 2 'Center
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
    Caption = "Folio Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 120
    Top = 2685
    Width = 5100
    Height = 345
    TabIndex = 43
    Alignment = 2 'Center
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 150
    Top = 1965
    Width = 660
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
  Begin Label Lbl
    Caption = "Status"
    Index = 1
    ForeColor = &HC00000&
    Left = 105
    Top = 5640
    Width = 555
    Height = 225
    TabIndex = 40
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
  Begin Label Lbl
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 105
    Top = 4380
    Width = 795
    Height = 225
    TabIndex = 39
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
  Begin Label Lbl
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 105
    Top = 3120
    Width = 1035
    Height = 225
    TabIndex = 38
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
  Begin Label LblCheckInDay
    Caption = "."
    ForeColor = &H4080&
    Left = 3630
    Top = 1320
    Width = 780
    Height = 240
    TabIndex = 37
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
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 105
    Top = 1320
    Width = 1170
    Height = 225
    TabIndex = 36
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
  Begin Label Lbl
    Caption = "Room Type"
    Index = 34
    ForeColor = &HC00000&
    Left = 90
    Top = 1005
    Width = 945
    Height = 225
    TabIndex = 35
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
  Begin Label Lbl
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 2640
    Top = 2250
    Width = 1050
    Height = 240
    TabIndex = 34
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
    Caption = "Rate Code"
    Index = 10
    ForeColor = &HC00000&
    Left = 13500
    Top = 6135
    Width = 870
    Height = 225
    Visible = 0   'False
    TabIndex = 33
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
  Begin Label Lbl
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &HC00000&
    Left = 135
    Top = 2265
    Width = 900
    Height = 225
    TabIndex = 32
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
  Begin Label Lbl
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 105
    Top = 3435
    Width = 720
    Height = 225
    TabIndex = 31
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
  Begin Label Lbl
    Caption = "Comment3"
    Index = 13
    ForeColor = &HC00000&
    Left = 105
    Top = 5325
    Width = 930
    Height = 225
    TabIndex = 30
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
  Begin Label Lbl
    Caption = "Comment2"
    Index = 8
    ForeColor = &HC00000&
    Left = 105
    Top = 5010
    Width = 930
    Height = 225
    TabIndex = 29
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
  Begin Label Lbl
    Caption = "Comment1"
    Index = 7
    ForeColor = &HC00000&
    Left = 105
    Top = 4695
    Width = 930
    Height = 225
    TabIndex = 28
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
  Begin Label Lbl
    Caption = "Depature date"
    Index = 4
    ForeColor = &HC00000&
    Left = 120
    Top = 1635
    Width = 1200
    Height = 225
    TabIndex = 27
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
    Caption = "Room Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 120
    Top = 570
    Width = 5100
    Height = 350
    TabIndex = 2
    Alignment = 2 'Center
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

Attribute VB_Name = "FdRevCheckOut"

Private global_124 As Integer
Private MasterFormExit As Integer
Private global_72 As Integer
Private global_68 As Long

Private Sub Form_Load() '1098D38
  'Data Table: 4E5AD0
  Dim var_A0 As Variant
  Dim var_8C As Variant
  Dim var_B4 As String
  Dim unk_4E5B35 As Connection15
  Dim unk_4E5AD5 As Connection15
  Dim var_C8 As Variant
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim Me As Recordset15
  Dim var_CC As TextBox
  Dim var_164 As DataGrid
  Dim var_168 As TextBox
  loc_1098AA0: On Error Goto loc_1098D31
  loc_1098AB9: Proc_6_23_DFBA28(Me, 0)
  loc_1098AC8: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1098ADA: Set var_8C = Me.FGrid
  loc_1098AE0: var_8C.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1098B0C: unk_4E5B35.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92078 & "FOM'", var_C8, -1
  loc_1098B1D: Set global_120 = var_8C
  loc_1098B3C: Set global_92 = New 
  loc_1098B4E: Me.Recordset15.CursorLocation = 3
  loc_1098B77: unk_4E5AD5.Execute "Select nCUR from enviro where LOGsite_code='" & MemVar_1F92078 & "'", var_C8, -1
  loc_1098BA1: var_8C = var_8C.Fields
  loc_1098BA9: var_CC = var_8C.Item("Ncur")
  loc_1098BB8: Proc_6_7_F25D88(var_DC, CVar(var_CC), var_8C)
  loc_1098BDB: var_B4 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid " & "FROM (((((RoomMast LEFT JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS where (RoomMast.LOGSITE_CODE='"
  loc_1098BE9: var_EC = CVar(var_B4 & MemVar_1F92078 & "' or RoomMast.LOGSITE_CODE='HO') and RoomMast.type='RO' and ROOMOCC.TYPE NOT IN ('C') and ChkOutDate=") 'String
  loc_1098C02: var_12C = var_EC & var_DC & " and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOcc where (LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1098C16: Me.Open var_12C & "' or LOGSITE_CODE='HO') and isnull(type,'')='O') Order by RoomMast.Code", CVar(MemVar_1F92044), 2
  loc_1098C3C: Call 0.Method_arg_54 ("Reverse Check Out Entry", 3, -1)
  loc_1098C4B: Set var_8C = Me.BtnCommand2
  loc_1098C51: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Reverse Check Out")
  loc_1098C67: Set var_8C = Me.Txt
  loc_1098C6D: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_160)
  loc_1098C75: var_8C = var_CC.Left
  loc_1098C8C: Me.DGRoomNo.Left = CVar(var_160)
  loc_1098CA8: Set var_164 = Me.Txt
  loc_1098CAE: Call 0.Method_Form_Load0 (CInt(0), var_168)
  loc_1098CC9: Set var_8C = Me.Txt
  loc_1098CCF: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_1098CE7: var_A0 = CVar(((var_CC.Top + var_168.Height) + CDbl(&H1E))) 'Single
  loc_1098CF6: Me.DGRoomNo.Top = CVar(var_CC.Top)
  loc_1098D11: CVarUnk
  loc_1098D16: VerifyVarObj
  loc_1098D1C: Set var_8C = Me.DGRoomNo
  loc_1098D22: LateIdStAd
  loc_1098D30: Exit Sub
  loc_1098D31: ' Referenced from: 1098AA0
  loc_1098D31: Proc_6_60_E62BC4(var_8C, global_92)
  loc_1098D36: Exit Sub
End Sub

Private Sub Form_Resize() 'E740A4
  'Data Table: 4E5AD0
  loc_E7404E: Call 0.Method_arg_50 (var_88)
  loc_E74060: Me.LblFormCaption.Caption = var_88
  loc_E74079: Me.LblFormCaption.Left = CDbl(0)
  loc_E74087: Call 0.Method_arg_100 (var_90)
  loc_E74099: Me.LblFormCaption.Width = var_90
  loc_E740A1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) '1141044
  'Data Table: 4E5AD0
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_C4 As Variant
  Dim var_160 As TextBox
  Dim unk_4E5AD5 As Connection15
  loc_1140CDA: Set var_8C = Me.Txt
  loc_1140CE0: Call 0.Method_Form_Unload0 (CInt(&HA), var_90)
  loc_1140D09: If ((var_90.Text <> vbNullString) And (global_124 = &HFF)) Then
  loc_1140D44:   If (MsgBox(CVar("Room Charges are Posted," & vbCrLf & "Do you want to delete Charges?"), &H24, var_C4, var_E4, var_104) = 6) Then
  loc_1140D6C:     For var_108 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Integer
  loc_1140D76:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1140D7E:       var_F4 = CVar(CLng(7)) 'Long
  loc_1140D98:       var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1140DA4:       var_128 = CVar(CLng(var_86)) 'Long
  loc_1140DBB:       var_C4 = Me.FGrid.TextMatrix)
  loc_1140DE4:       If (CVar(CLng(0)) And (CStr(var_C4) = "*")) Then
  loc_1140E02:         var_A4 = Me.FGrid.TextMatrix)
  loc_1140E1C:         Set var_90 = Me.Txt
  loc_1140E22:         Call 0.Method_Form_Unload0 (CInt(&HA), var_160, var_164, var_A4, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_1140E2A:         var_128 = var_160.Text
  loc_1140E5E:         unk_4E5AD5.Execute "Delete from Paycharge where Docid='" & CStr(var_A4) & "' and MarkEntry='*' and FolioNo=" & var_164, var_C4, -1
  loc_1140E82:       End If
  loc_1140E85:     Next var_108 'Integer
  loc_1140E8F:     global_124 = 0
  loc_1140E95:   Else
  loc_1140EBA:     For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_174 'Integer
  loc_1140EC4:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1140ECC:       var_F4 = CVar(CLng(7)) 'Long
  loc_1140EE6:       var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1140EF2:       var_128 = CVar(CLng(var_86)) 'Long
  loc_1140F09:       var_C4 = Me.FGrid.TextMatrix)
  loc_1140F32:       If (CVar(CLng(0)) And (CStr(var_C4) = "*")) Then
  loc_1140F50:         var_A4 = Me.FGrid.TextMatrix)
  loc_1140F6A:         Set var_90 = Me.Txt
  loc_1140F70:         Call 0.Method_Form_Unload0 (CInt(&HA), var_160, var_164, var_A4, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_1140F78:         var_128 = var_160.Text
  loc_1140FAC:         unk_4E5AD5.Execute "Update Paycharge set MarkEntry='' where markEntry='*' and  Docid='" & CStr(var_A4) & "' and FolioNo=" & var_164, var_C4, -1
  loc_1140FD0:       End If
  loc_1140FD3:     Next var_174 'Integer
  loc_1140FDD:     global_124 = 0
  loc_1140FE0:   End If
  loc_1140FE0: End If
  loc_1140FEB: Set global_92 = Nothing
  loc_1140FFD: Set global_88 = Nothing
  loc_114100F: Set global_100 = Nothing
  loc_1141021: Set global_96 = Nothing
  loc_1141033: Set global_120 = Nothing
  loc_114103F: MasterFormExit = 0
  loc_1141042: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E59D64
  'Data Table: 4E5AD0
  loc_E59D2C: Set var_88 = Me.TopCtrl1
  loc_E59D32: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E59D55: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E59D5D:   Call Form_Unload(&HFF)
  loc_E59D62: End If
  loc_E59D62: Exit Sub
End Sub

Private Sub Form_Activate() 'EFC864
  'Data Table: 4E5AD0
  Dim unk_4E5B35 As Connection15
  Dim var_B8 As TextBox
  loc_EFC7A0: On Error Goto loc_EFC832
  loc_EFC7C7: unk_4E5B35.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92078 & "FOM'", var_B0, -1
  loc_EFC7D8: Set global_120 = var_B4
  loc_EFC801: If (FdRevCheckOut.OpenMode = 1) Then
  loc_EFC804:   Call Proc_101_44_141BE84(var_B4)
  loc_EFC80C: Else
  loc_EFC817:   Set var_B4 = Me.Txt
  loc_EFC81D:   Call 0.Method_Form_Activate0 (CInt(0))
  loc_EFC825:   var_B8.SetFocus
  loc_EFC831: End If
  loc_EFC831: Exit Sub
  loc_EFC832: ' Referenced from: EFC7A0
  loc_EFC84B: MsgBox("FORM ACTIVATE", 0, var_DC, var_FC, var_11C)
  loc_EFC85B: Proc_6_60_E62BC4(var_B8)
  loc_EFC860: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E251D4
  'Data Table: 4E5AD0
  loc_E251B9: If (MasterFormExit = &HFF) Then
  loc_E251C9:   Me.Global.Unload Me
  loc_E251D1: End If
  loc_E251D1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E61FB8
  'Data Table: 4E5AD0
  loc_E61F6C: On Error Goto loc_E61FAF
  loc_E61F79: If (CLng(KeyCode) = &H79) Then
  loc_E61F89:   Me.Global.Unload Me
  loc_E61F91:   Exit Sub
  loc_E61F92: End If
  loc_E61FA6: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E61FAE: Exit Sub
  loc_E61FAF: ' Referenced from: E61F6C
  loc_E61FAF: Proc_6_60_E62BC4(Shift)
  loc_E61FB4: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F377E4
  'Data Table: 4E5AD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F376DB: Me.DGRoomType.Visible = False
  loc_F376FA: If (Me.RecordCount > 0) Then
  loc_F37739:   Set var_B4 = Me.Txt
  loc_F3773F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F37747:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3777A:   var_B0 = Me.Fields.Item("Name")
  loc_F37799:   Set var_B4 = Me.Txt
  loc_F3779F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F377A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F377BD: End If
  loc_F377C8: Set var_A8 = Me.Txt
  loc_F377CE: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4))
  loc_F377D6: var_B0.SetFocus
  loc_F377E2: Exit Sub
End Sub

Private Sub BtnCommand2_UnknownEvent_9 '14CEA84
  'Data Table: 4E5AD0
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim unk_4E5AD5 As Connection15
  Dim var_9C As Recordset15
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_B8 As String
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_DC As Variant
  Dim var_148 As Variant
  Dim var_150 As TextBox
  Dim var_154 As String
  Dim var_160 As String
  Dim var_164 As String
  Dim var_158 As String
  Dim var_E0 As Variant
  Dim MemVar_1F920EC As Double
  Dim var_144 As Variant
  Dim var_1A8 As Variant
  Dim var_228 As Variant
  Dim var_308 As Variant
  Dim var_3C8 As Variant
  Dim unk_4E5B0E As Connection15
  Dim var_A8 As Long
  Dim var_3F4 As String
  Dim var_14C As Field20
  Dim var_124 As Variant
  Dim var_1F8 As Variant
  loc_14CDDB2: Set var_B0 = Me.Txt
  loc_14CDDB8: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4)
  loc_14CDDC0: var_B8 = var_B4.Text
  loc_14CDDD7: If (var_B8 = vbNullString) Then
  loc_14CDDDA:   Exit Sub
  loc_14CDDDB: End If
  loc_14CDDF9: Set var_B0 = Me.Txt
  loc_14CDDFF: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Select  bill_no,AmtDr from paycharge where (ContraDocId is NULL or contradocid='') and foliono=")
  loc_14CDE07: var_DC = var_B4.Text
  loc_14CDE10: var_BC = -1 & var_B8
  loc_14CDE19: unk_4E5AD5.Execute var_BC, var_E0, 
  loc_14CDE24: Set var_9C = var_E0
  loc_14CDE4E: If (var_9C.RecordCount > 0) Then
  loc_14CDE5A:   var_9C.Filter = "Bill_No=NULL and AmtDr<>0"
  loc_14CDE5F: End If
  loc_14CDE65: var_E4 = var_9C.RecordCount
  loc_14CDE73: If (var_E4 > 0) Then
  loc_14CDE89:   var_DC = "First Print Bill "
  loc_14CDE8F:   MsgBox(var_DC, &H40, var_104, var_124, var_144)
  loc_14CDE9F:   Exit Sub
  loc_14CDEA0: End If
  loc_14CDEBD: Proc_6_17_EAA2B0(var_DC, MemVar_1F92078, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_14CDEC5: var_104 = var_124 & var_DC 
  loc_14CDEC9: var_B8 = CStr(var_104)
  loc_14CDED3: unk_4E5AD5.Execute var_B8, -1, var_B0
  loc_14CDEDE: Set var_9C = var_B0
  loc_14CDF0E: Set var_B0 = Me.Txt
  loc_14CDF14: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Select distinct Bill_No from Paycharge where FolioNo=")
  loc_14CDF1C: var_DC = var_B4.Text
  loc_14CDF25: var_BC = -1 & var_B8
  loc_14CDF2E: unk_4E5AD5.Execute var_BC, var_E0, 
  loc_14CDF39: Set var_AC = var_E0
  loc_14CDF69: var_B4 = Me.Fields.Item("ChkOutDate")
  loc_14CDF88: Set var_E0 = Me.Txt
  loc_14CDF8E: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CDFB2: Set var_14C = Me.Txt
  loc_14CDFB8: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_150)
  loc_14CDFE5: If ((IsNull(CVar(var_B4)) And (var_148.Text <> vbNullString)) And (var_150.Text <> vbNullString)) Then
  loc_14CDFF6:   Set var_B0 = Me.Txt
  loc_14CDFFC:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(9), var_B4)
  loc_14CE017:   Set var_E0 = Me.Txt
  loc_14CE01D:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CE03F:   var_BC = "Checking Out Person :" & var_B4.Text
  loc_14CE054:   var_160 = var_BC & vbCrLf & "RoomNo :" & var_148.Text
  loc_14CE097:   If (MsgBox(CVar(var_160 & vbCrLf & "Are you Sure ?"), &H21, var_104, var_124, var_144) = 1) Then
  loc_14CE0A8:     Set var_B0 = Me.Txt
  loc_14CE0AE:     Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(1), var_B4)
  loc_14CE0CE:     If (CDate(var_B4.Text) <= MemVar_1F920EC) Then
  loc_14CE0D1:       ' Referenced from: 14CE27B
  loc_14CE0E5:       var_B8 = "Select val(Sum(AmtDr))-val(Sum(AmtCr)) as Bal from PayCharge where Site_Code='" & MemVar_1F92070
  loc_14CE0FD:       Set var_B0 = Me.Txt
  loc_14CE103:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_BC, var_B4.Text & "' and VType Not In ('ARRES','ADRES') and Foliono=")
  loc_14CE10B:       var_DC = var_B4.Text
  loc_14CE114:       var_158 = -1 & var_BC
  loc_14CE11D:       unk_4E5AD5.Execute var_148.Text, var_E0, 
  loc_14CE159:       var_B4 = var_E0.Fields.Item("Bal")
  loc_14CE161:       var_DC = CVar(var_B4) 'Address
  loc_14CE168:       Proc_6_39_E7C810(var_104)
  loc_14CE170:       var_F4 = 0
  loc_14CE182:       If CBool(var_104 <> var_F4) Then
  loc_14CE198:         var_DC = "Guest Balance is Not Zero"
  loc_14CE1B4:         If (MsgBox(var_DC, &H41, var_104, var_124, var_144) = 1) Then
  loc_14CE1C9:           fdPaymentCharge.OpenMode = 1
  loc_14CE1D7:           fdPaymentCharge.ParentForm = "Check Out"
  loc_14CE1EA:           Set var_B0 = Me.FrReference
  loc_14CE1F0:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4)
  loc_14CE210:           Set var_E0 = New fdPaymentCharge.Txt
  loc_14CE216:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CE21E:           fdPaymentCharge.Txt.Text = fdPaymentCharge.FrReference.Text
  loc_14CE243:           Call fdPaymentCharge.Txt_Validate(CInt(0))
  loc_14CE251:           Call 0.Method_arg_54 ("Bill Settlement", 0)
  loc_14CE269:           Call 0.Method_arg_2B0 (1, var_F4)
  loc_14CE273:           Set var_8C = Nothing
  loc_14CE276:           Call Proc_101_44_141BE84(var_DC)
  loc_14CE27B:           GoTo loc_14CE0D1
  loc_14CE281:         Else
  loc_14CE294:           var_DC = "Guest Not Checked Out"
  loc_14CE29A:           MsgBox(var_DC, &H40, var_104, var_124, var_144)
  loc_14CE2AA:           Exit Sub
  loc_14CE2AB:         End If
  loc_14CE2AE:       Else
  loc_14CE2B4:         var_F4 = 0
  loc_14CE2E1:         unk_4E5AD5.Execute "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078 & "'", var_DC, -1
  loc_14CE2E9:         var_B0 = var_B0.Fields
  loc_14CE2F1:         var_F4 = var_B4.Item(var_B4)
  loc_14CE2F9:         var_E0 = var_E0.Value
  loc_14CE303:         MemVar_1F920EC = CDate(var_104)
  loc_14CE326:         unk_4E5AD5.BeginTrans var_E4
  loc_14CE32E:         var_DC = Time
  loc_14CE342:         var_104 = "hh"
  loc_14CE34E:         var_124 = Format(var_DC, var_104)
  loc_14CE386:         Proc_6_7_F25D88(var_1F8, MemVar_1F920EC, 1, 1)
  loc_14CE396:         Proc_6_7_F25D88(var_248, MemVar_1F920EC, 1)
  loc_14CE3A6:         Proc_6_7_F25D88(var_2D8, CVar(Proc_6_15_EF2C1C(1, MemVar_1F920EC)))
  loc_14CE3B9:         Set var_B0 = Me.Txt
  loc_14CE3BF:         Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4)
  loc_14CE3C7:         var_B8 = var_B4.Tag
  loc_14CE3E0:         Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CE407:         var_144 = (var_124 + ":")
  loc_14CE40E:         var_1A8 = (var_144 + Format(Time, "nn"))
  loc_14CE42B:         var_228 = "Update RoomOcc set chkouttime='" & var_1A8 & "',ChkOutDate=" & var_1F8 & ",UserchkoutDate=" 
  loc_14CE45E:         var_308 = var_228 & var_248 & ",ChkOutUser='" & CVar(MemVar_1F920C8) & "',Type='O',U_EntDt=" & var_2D8 & ",U_AE='E' where DocId='" 
  loc_14CE497:         var_3C8 = var_308 & CVar(var_B8) & "' and Site_Code='" & CVar(MemVar_1F92070) & "' and RoomNO='" & CVar(var_148.Text) & "' and (Type='' or Type is NULL)" 
  loc_14CE4A5:         unk_4E5AD5.Execute CStr(var_3C8), var_3E8, -1
  loc_14CE519:         Set var_B0 = Me.Txt
  loc_14CE51F:         Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4, var_B8, "Update RoomMast set ROOMSTAT='D' WHERE CODE='", var_DC)
  loc_14CE527:         -1 = var_B4.Text
  loc_14CE537:         var_154 = Me.Txt & var_B8 & "' AND TYPE='RO'"
  loc_14CE540:         unk_4E5AD5.Execute var_154, var_14C, var_104
  loc_14CE562:         If (MemVar_1F921D0 = "Y") Then
  loc_14CE56B:           var_F4 = 0
  loc_14CE58A:           unk_4E5B0E.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_DC, -1
  loc_14CE592:           var_B0 = var_B0.Fields
  loc_14CE59A:           var_F4 = var_B4.Item(var_B4)
  loc_14CE5A2:           var_E0 = var_E0.Value
  loc_14CE5AC:           var_A8 = CLng(var_104)
  loc_14CE5D8:           var_BC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_A8)
  loc_14CE5F0:           Set var_B0 = Me.Txt
  loc_14CE5F6:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4, var_154, var_BC & ",'CHKOT','", var_DC)
  loc_14CE5FE:           -1 = var_B4.Text
  loc_14CE60E:           var_164 = var_400 & var_154 & "','"
  loc_14CE61F:           Set var_E0 = Me.Txt
  loc_14CE625:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148, var_160)
  loc_14CE62D:           var_164 = var_148.Text
  loc_14CE63D:           var_3F4 = var_A8 & var_160 & "','"
  loc_14CE64E:           Set var_14C = Me.Txt
  loc_14CE654:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(9), var_150, var_3F0)
  loc_14CE65C:           var_3F4 = var_150.Text
  loc_14CE675:           unk_4E5B0E.Execute var_104 & var_3F0 & "',0)", , 
  loc_14CE6A9:         End If
  loc_14CE6AF:         unk_4E5AD5.CommitTrans
  loc_14CE6B4:         Call Proc_101_42_EAC520()
  loc_14CE6B9:       End If
  loc_14CE6BC:     Else
  loc_14CE6D5:       MsgBox("InValid Check Out Date", 0, var_104, var_124, var_144)
  loc_14CE6E5:       Exit Sub
  loc_14CE6E6:     End If
  loc_14CE6E9:   Else
  loc_14CE6F0:     Call Txt_GotFocus()
  loc_14CE6F5:   End If
  loc_14CE6F8: Else
  loc_14CE706:   Set var_B0 = Me.Txt
  loc_14CE70C:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4)
  loc_14CE714:   var_B8 = var_B4.Text
  loc_14CE72F:   Set var_E0 = Me.Txt
  loc_14CE735:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_148, var_BC)
  loc_14CE73D:   (var_B8 <> vbNullString) = var_148.Tag
  loc_14CE75D:   If (CInt(0) And (var_BC <> vbNullString)) Then
  loc_14CE773:     var_DC = "Want to Cancel Check Out ?"
  loc_14CE78F:     If (MsgBox(var_DC, &H24, var_104, var_124, var_144) = 6) Then
  loc_14CE7BF:       Set var_B0 = Me.Txt
  loc_14CE7C5:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4, var_B8, "Select Count(*) from RoomOcc where RoomNO='", var_DC, -1)
  loc_14CE7E6:       unk_4E5AD5.Execute var_148 & var_B8 & "' and CHkoutDate is NULL", 0, var_14C
  loc_14CE7EE:       var_104 = var_B4.Text.Fields
  loc_14CE7F6:        = var_148.Item()
  loc_14CE7FE:        = var_14C.Value
  loc_14CE82B:       If (var_104 > 0) Then
  loc_14CE847:         MsgBox("Sorry! Room Already Occupied", &H40, var_104, var_124, var_144)
  loc_14CE857:         Exit Sub
  loc_14CE858:       End If
  loc_14CE861:       unk_4E5AD5.BeginTrans var_E4
  loc_14CE883:       Proc_6_7_F25D88(var_104, CVar(Proc_6_15_EF2C1C("Update RoomOcc set chkouttime='',ChkOutDate=NULL,Type='',U_EntDt=", var_228)))
  loc_14CE88B:       var_124 = -1 & var_104 
  loc_14CE88F:       var_F4 = ",U_AE='E',UserChkOutDate=NULL,ChkOutUser='' where Type='O' AND (Docid In (Select DocId From GuestFolio where MFolioNoDocid='"
  loc_14CE894:       var_144 = var_124 & var_F4 
  loc_14CE8A6:       Set var_B0 = Me.Txt
  loc_14CE8AC:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8)
  loc_14CE8B4:       var_144 = var_B4.Tag
  loc_14CE8E0:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_148)
  loc_14CE91D:       unk_4E5AD5.Execute CStr(var_14C & CVar(var_B8) & "') Or DocId='" & CVar(var_148.Tag) & "') and Site_Code='" & CVar(MemVar_1F92070) & "'"), , 
  loc_14CE96D:       Set var_B0 = Me.Txt
  loc_14CE973:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Update PayCharge Set SettleDate=Null where folionoDocId='")
  loc_14CE97B:       var_DC = var_B4.Tag
  loc_14CE984:       var_BC = -1 & var_B8
  loc_14CE98B:       var_154 = var_148.Tag & "'"
  loc_14CE994:       unk_4E5AD5.Execute var_154, Me.Txt, 
  loc_14CE9CC:       Set var_B0 = Me.Txt
  loc_14CE9D2:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Update PayCharge Set ModeSet='',Bill_No=(Select IsNull(Max(Bill_No),'') From PayCharge where folionoDocId='")
  loc_14CE9DA:       var_DC = var_B4.Tag
  loc_14CE9E3:       var_BC = -1 & var_B8
  loc_14CE9EA:       var_158 = var_148.Tag & "') where folionoDocId='"
  loc_14CE9FB:       Set var_E0 = Me.Txt
  loc_14CEA01:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_148, var_154)
  loc_14CEA09:       var_158 = var_148.Tag
  loc_14CEA30:       unk_4E5AD5.Execute var_14C & var_154 & "' And ModeSet='S' And PayCode Not In ('" & MemVar_1F92078 & "ROFF')", , 
  loc_14CEA5E:       unk_4E5AD5.CommitTrans
  loc_14CEA63:     End If
  loc_14CEA63:     GoTo loc_14CEA66
  loc_14CEA66:     ' Referenced from:   14CEA63
  loc_14CEA66:   End If
  loc_14CEA66: End If
  loc_14CEA71: Me.Requery -1
  loc_14CEA7D: Call Txt_GotFocus()
  loc_14CEA82: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F37264
  'Data Table: 4E5AD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3715B: Me.DGRoomNo.Visible = False
  loc_F3717A: If (Me.RecordCount > 0) Then
  loc_F371B9:   Set var_B4 = Me.Txt
  loc_F371BF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F371C7:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F371FA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F37219:   Set var_B4 = Me.Txt
  loc_F3721F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37227:   var_B8.Text = CStr(var_B0.Value)
  loc_F3723D: End If
  loc_F37248: Set var_A8 = Me.Txt
  loc_F3724E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F37256: var_B0.SetFocus
  loc_F37262: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9AD90
  'Data Table: 4E5AD0
  Dim var_A8 As Variant
  loc_E9AD14: Set var_88 = Me.DGRoomNo
  loc_E9AD3E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9AD46: Set var_BC = Me.DGRoomNo
  loc_E9AD80: Proc_6_138_106D6F8(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E9AD8E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E607B4
  'Data Table: 4E5AD0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6077F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60792: Set var_A8 = Me.TxtGrid
  loc_E60798: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E607A0: var_AC.Visible = False
  loc_E607AC: Call Proc_101_43_EBDDF8()
  loc_E607B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66240
  'Data Table: 4E5AD0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E661FC: Set var_88 = Me.TxtGrid
  loc_E66202: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6621C: If (var_8C.Visible = 0) Then
  loc_E66235:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E6623D: End If
  loc_E6623D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E0F0
  'Data Table: 4E5AD0
  loc_E1E0E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E0EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1005918
  'Data Table: 4E5AD0
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1005788: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100579E:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10057AE:   var_9C = "+{Tab}"
  loc_10057B4:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10057BE:   KeyCode = 0
  loc_10057C4: Else
  loc_100581B:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1005831:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1005839:   End If
  loc_1005839: End If
  loc_100585C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1005880: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10058A6:   If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_10058BC:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10058D4:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10058D9:     var_11C = vbNullString
  loc_10058E3:     Set var_B4 = Me.FGrid
  loc_10058E9:     LateIdCallSt
  loc_1005901:   End If
  loc_1005901: End If
  loc_1005907: If (KeyCode = &HD) Then
  loc_100590F:   global_72 = 0
  loc_1005912: End If
  loc_1005914: KeyCode = 0
  loc_1005917: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FB1F34
  'Data Table: 4E5AD0
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FB1DC7: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_FB1DCE:   Set var_C4 = Me.FGrid
  loc_FB1DF2:   var_B0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FB1E1F:   Set var_B4 = var_C4
  loc_FB1E31:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_FB1E59:   Set var_88 = Me.TxtGrid
  loc_FB1E5F:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0, Asc(var_B0))
  loc_FB1E67:   0 = var_B4.Text
  loc_FB1E80:   If (Len(var_B0) <= 1) Then
  loc_FB1E8F:     Set var_88 = Me.TxtGrid
  loc_FB1E95:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0)
  loc_FB1E9D:     var_CA = var_B4.Text
  loc_FB1EAE:     Set var_B8 = Me.TxtGrid
  loc_FB1EB4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1EBC:     var_C4.Text = var_B0
  loc_FB1ECF:   End If
  loc_FB1EDB:   Set var_88 = Me.TxtGrid
  loc_FB1EE1:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FB1EFB:   Set var_B8 = Me.TxtGrid
  loc_FB1F01:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1F09:   var_C4.SelStart = Len(var_B4.Text)
  loc_FB1F1C: End If
  loc_FB1F26: If (CLng(KeyCode) <> &HD) Then
  loc_FB1F2E:   global_72 = &HFF
  loc_FB1F31: End If
  loc_FB1F31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E0A0
  'Data Table: 4E5AD0
  loc_E1E097: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E09F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F6E4
  'Data Table: 4E5AD0
  Dim var_8C As TextBox
  loc_E3F6B8: Call Proc_101_43_EBDDF8()
  loc_E3F6C8: Set var_88 = Me.TxtGrid
  loc_E3F6CE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F6D6: var_8C.Visible = False
  loc_E3F6E2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F11144
  'Data Table: 4E5AD0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F1105C: On Error Goto loc_F11101
  loc_F11076: If (Me.RecordCount > 0) Then
  loc_F1108E:   var_8C = "EDIT"
  loc_F1109C:   Call Proc_101_41_E78DE4(Proc_5_1_100CB50(var_8C, Me))
  loc_F110B2:   Set var_90 = Me.Txt
  loc_F110B8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F110C0:   var_98.SetFocus
  loc_F110CF: Else
  loc_F110F0:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F11100: End If
  loc_F11100: Exit Sub
  loc_F11101: ' Referenced from: F1105C
  loc_F11109: Set var_90 = Err()
  loc_F1110F: Call 0.Method_arg_2C (var_8C)
  loc_F11130: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F11143: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECA404
  'Data Table: 4E5AD0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_ECA360: On Error Goto loc_ECA3FB
  loc_ECA37A: If (Me.RecordCount <= 0) Then
  loc_ECA383:   var_B8 = "Information"
  loc_ECA39E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECA3AE:   Exit Sub
  loc_ECA3AF: End If
  loc_ECA3C0: MemVar_1F920E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & mVType & "' ORDER BY VDate"
  loc_ECA3CD: MemVar_1F92120 = Me
  loc_ECA3DA: Proc_6_126_F1BCC0("2000,2000,2000,2000")
  loc_ECA3F5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECA3FA: Exit Sub
  loc_ECA3FB: ' Referenced from: ECA360
  loc_ECA3FB: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_ECA400: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'F051DC
  'Data Table: 4E5AD0
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F05108: On Error Goto loc_F051A1
  loc_F05116: Set var_88 = Me.Txt
  loc_F0511C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F05124: var_94 = "Room No"
  loc_F05145: If (Proc_6_27_EA565C(var_8C, var_94) = 0) Then
  loc_F0514F:   Call Txt_GotFocus()
  loc_F05154:   Exit Sub
  loc_F05155: End If
  loc_F05161: Call Txt_Validate(CInt(0))
  loc_F05166: Call Proc_101_42_EAC520(0, CInt(0))
  loc_F05176: Me.Requery -1
  loc_F05186: Set var_88 = Me.Txt
  loc_F0518C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_8C)
  loc_F05194: var_8C.SetFocus
  loc_F051A0: Exit Sub
  loc_F051A1: ' Referenced from: F05108
  loc_F051A9: Set var_88 = Err()
  loc_F051AF: Call 0.Method_arg_2C (var_94)
  loc_F051C8: MsgBox(CVar(var_94), &H10, var_C8, var_E8, var_108)
  loc_F051DB: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E17A20
  'Data Table: 4E5AD0
  loc_E17A15: Me.Global.Unload Me
  loc_E17A1D: Exit Sub
  loc_E17A1E:  = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C174C
  'Data Table: 4E5AD0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_11C1306: Set var_88 = Me.Txt
  loc_11C130C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C131A: Proc_6_74_E226B0(var_8C)
  loc_11C1329: var_92 = Index
  loc_11C1334: If (var_92 = CInt(0)) Then
  loc_11C134E:   If (Me.RecordCount > 0) Then
  loc_11C135C:     Set var_8C = Me.FGPoint
  loc_11C1374:     Proc_6_137_1193554(Me.DGRoomNo, global_92, Index)
  loc_11C1382:   End If
  loc_11C13D0:   Set var_88 = Me.Txt
  loc_11C13D6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11C13DE:   var_8C = var_8C.Text
  loc_11C1404:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), var_92) = vbNullString)) Then
  loc_11C1407:     Exit Sub
  loc_11C1408:   End If
  loc_11C1415:   Set var_88 = Me.Txt
  loc_11C141B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1423:   var_A0 = var_8C.Text
  loc_11C1435:   var_C4 = "RoomNo"
  loc_11C1470:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_11C1479:     Me.MoveFirst
  loc_11C149C:     Set var_88 = Me.Txt
  loc_11C14A2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_11C14AA:     0 = var_8C.Text
  loc_11C14C3:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C14D8:   End If
  loc_11C14DB: Else
  loc_11C14E3:   If (var_92 = CInt(4)) Then
  loc_11C14FD:     If (Me.RecordCount > 0) Then
  loc_11C150B:       Set var_8C = Me.FGPoint
  loc_11C1523:       Proc_6_137_1193554(Me.DGRoomType, global_96)
  loc_11C1531:     End If
  loc_11C157F:     Set var_88 = Me.Txt
  loc_11C1585:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C158D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C15B3:     If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C15B6:       Exit Sub
  loc_11C15B7:     End If
  loc_11C15C4:     Set var_88 = Me.Txt
  loc_11C15CA:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C15D2:     var_A0 = var_8C.Text
  loc_11C15E4:     var_C4 = "Name"
  loc_11C15FB:     var_C8 = Me.Fields.Item(var_C4)
  loc_11C161F:     If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_11C1628:       Me.MoveFirst
  loc_11C164B:       Set var_88 = Me.Txt
  loc_11C1651:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C1659:       0 = var_8C.Text
  loc_11C1672:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C1687:     End If
  loc_11C168A:   Else
  loc_11C1692:     If (var_92 = CInt(8)) Then
  loc_11C16A3:       Set var_88 = Me.Txt
  loc_11C16A9:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_11C16C1:       global_76 = Val(var_8C.Text)
  loc_11C16CE:     End If
  loc_11C16CE:   End If
  loc_11C16CE: End If
  loc_11C16DD: Set var_88 = Me.Txt
  loc_11C16E3: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C16EB: var_8C.SelStart = 0
  loc_11C1704: Set var_88 = Me.Txt
  loc_11C170A: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1725: Set var_90 = Me.Txt
  loc_11C172B: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_11C1733: var_C8.SelLength = Len(var_8C.Text)
  loc_11C1746: Call Proc_101_43_EBDDF8(global_76)
  loc_11C174B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FCD14
  'Data Table: 4E5AD0
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  loc_10FC9F3: var_88 = Shift
  loc_10FCA00: If (CLng(Shift) = &H1B) Then
  loc_10FCA03:   Call Proc_101_43_EBDDF8(var_88)
  loc_10FCA08:   Exit Sub
  loc_10FCA09: End If
  loc_10FCA0C: var_8A = KeyCode
  loc_10FCA17: If (var_8A = CInt(0)) Then
  loc_10FCA37:   Set var_A4 = Me.FGPoint
  loc_10FCA42:   Set var_A0 = Nothing
  loc_10FCA74:   Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_10FCAE3:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FCB09:     Proc_6_138_106D6F8(Me.DGRoomNo, global_92, KeyCode, Me.FGPoint, 1)
  loc_10FCB17:   End If
  loc_10FCB1A: Else
  loc_10FCB22:   If (var_8A = CInt(4)) Then
  loc_10FCB4D:     Set var_A0 = Nothing
  loc_10FCB7F:     Proc_6_69_134A198(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift, 0, 1)
  loc_10FCBEE:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FCBF5:       Set var_A0 = Me.DGRoomType
  loc_10FCC14:       Proc_6_138_106D6F8(var_A0, global_96, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_10FCC22:     End If
  loc_10FCC22:   End If
  loc_10FCC22: End If
  loc_10FCC5D: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGRoomType.Visible) = 0)) Then
  loc_10FCC7E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_10FCC87:     Call Txt_Validate(KeyCode)
  loc_10FCC92:     If (var_86 = &HFF) Then
  loc_10FCC95:       Exit Sub
  loc_10FCC96:     End If
  loc_10FCCCD:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_10FCCD0:       Call TopCtrl1_UnknownEvent_16()
  loc_10FCCD5:     End If
  loc_10FCCD5:     Exit Sub
  loc_10FCCD6:   End If
  loc_10FCCEB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FCCF4:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_10FCCF9:   End If
  loc_10FCD03:   If (CLng(Shift) = &H26) Then
  loc_10FCD0C:     Proc_6_76_E52838(Shift, arg_14, var_A0)
  loc_10FCD11:   End If
  loc_10FCD11: End If
  loc_10FCD11: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6DA90
  'Data Table: 4E5AD0
  Dim var_86 As Integer
  loc_F6D957: Proc_6_58_E054C0(arg_10)
  loc_F6D95F: var_86 = KeyAscii
  loc_F6D96A: If (var_86 = CInt(0)) Then
  loc_F6D989:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6D99B:     var_A0 = "RoomNo"
  loc_F6D9B6:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, arg_10)
  loc_F6D9E8:     Proc_6_138_106D6F8(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_F6D9F6:   End If
  loc_F6D9F9: Else
  loc_F6DA01:   If (var_86 = CInt(4)) Then
  loc_F6DA20:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F6DA4D:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F6DA7F:       Proc_6_138_106D6F8(Me.DGRoomType, global_96, KeyAscii, Me.FGPoint)
  loc_F6DA8D:     End If
  loc_F6DA8D:   End If
  loc_F6DA8D: End If
  loc_F6DA8D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1E374
  'Data Table: 4E5AD0
  Dim var_86 As Integer
  loc_F1E27F: var_86 = KeyCode
  loc_F1E28A: If (var_86 = CInt(0)) Then
  loc_F1E2A9:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F1E2BD:     var_A8 = "RoomNO"
  loc_F1E2E5:     Proc_6_68_129FB34(Me.DGRoomNo, Me.Txt, CInt(0), global_92)
  loc_F1E2F8:   End If
  loc_F1E2FB: Else
  loc_F1E303:   If (var_86 = CInt(4)) Then
  loc_F1E322:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F1E336:       var_A8 = "Name"
  loc_F1E35E:       Proc_6_68_129FB34(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift)
  loc_F1E371:     End If
  loc_F1E371:   End If
  loc_F1E371: End If
  loc_F1E371: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EFD4
  'Data Table: 4E5AD0
  loc_E4EFB2: Set var_88 = Me.Txt
  loc_E4EFB8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EFC6: Proc_6_73_E22704(var_8C)
  loc_E4EFD2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '17A2C1C
  'Data Table: 4E5AD0
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_4E5AD5 As Connection15
  Dim var_D0 As Variant
  Dim var_A4 As Double
  Dim var_106 As Integer
  Dim var_10C As Variant
  Dim Me As Variant
  Dim var_E4 As Fields15
  Dim var_120 As TextBox
  Dim var_E0 As Variant
  Dim var_11C As Variant
  Dim var_F4 As Variant
  Dim var_130 As Variant
  Dim var_104 As Variant
  Dim var_144 As String
  Dim var_190 As String
  Dim var_18C As TextBox
  Dim var_140 As Variant
  Dim var_1B0 As Variant
  Dim var_A8 As Recordset15
  Dim var_17C As Variant
  Dim var_1D0 As Variant
  Dim var_230 As Variant
  Dim var_2A0 As Variant
  Dim var_360 As Variant
  Dim var_3C0 As Variant
  Dim var_460 As Variant
  Dim var_4F0 As Variant
  Dim var_550 As Variant
  Dim var_AC As Recordset15
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_9C As Double
  Dim var_188 As Fields15
  Dim var_220 As Variant
  Dim var_270 As Variant
  loc_17A0DB0: var_BC = "Select * from Enviro where LogSite_Code='" & MemVar_1F92078
  loc_17A0DC0: unk_4E5AD5.Execute var_BC & "'", var_E0, -1
  loc_17A0DCB: Set var_B0 = var_E4
  loc_17A0DDB: On Error Goto loc_17A2BF2
  loc_17A0DF0: var_D0 = "hh:nn"
  loc_17A0E0B: var_A4 = CDate(Format(Now, var_D0))
  loc_17A0E1C: var_106 = Cancel
  loc_17A0E27: If (var_106 = CInt(0)) Then
  loc_17A0E2A:   Call Proc_101_45_137B3A8(var_106, var_A4, 1)
  loc_17A0E3B:   If (global_68 = 1) Then
  loc_17A0E62:     Call 0.Method_Txt_Validate0 (Cancel, var_10C, var_BC, "roomno='", 0)
  loc_17A0E6A:     1 = var_10C.Text
  loc_17A0E83:     Me.Find var_D0 & var_BC & "'", 1, Me.Txt
  loc_17A0E98:   End If
  loc_17A0EE6:   Set var_E4 = Me.Txt
  loc_17A0EEC:   Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_17A0F0C:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_10C.Text = vbNullString)) Then
  loc_17A0F1C:     Set var_E4 = Me.Txt
  loc_17A0F22:     Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_17A0F2A:     var_10C.Tag = vbNullString
  loc_17A0F36:     Exit Sub
  loc_17A0F37:   End If
  loc_17A0F72:   Set var_11C = Me.Txt
  loc_17A0F78:   Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_17A0F80:   var_120.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_17A0FD1:   Set var_11C = Me.Txt
  loc_17A0FD7:   Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_17A0FDF:   var_120.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_17A102E:   Set var_11C = Me.Txt
  loc_17A1034:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_17A103C:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_17A1089:   Set var_11C = Me.Txt
  loc_17A108F:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_17A1097:   var_120.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")))
  loc_17A10C5:   var_10C = Me.Fields.Item("ChkInDate")
  loc_17A10E4:   Set var_11C = Me.Txt
  loc_17A10EA:   Call 0.Method_Txt_Validate0 (CInt(1), var_120)
  loc_17A10F2:   var_120.Text = Proc_6_38_E68A98(CVar(var_10C))
  loc_17A1111:   Set var_E4 = Me.Txt
  loc_17A1117:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_17A1151:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_10C), "DDDD"))
  loc_17A11BC:   Set var_11C = Me.Txt
  loc_17A11C2:   Call 0.Method_Txt_Validate0 (CInt(2), var_120, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_17A11CA:   var_120.Text = 1
  loc_17A121E:   var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_17A123B:   Set var_11C = Me.Txt
  loc_17A1241:   Call 0.Method_Txt_Validate0 (CInt(3), var_120)
  loc_17A1249:   var_120.Text = CStr(Right(var_F4, 2))
  loc_17A12A3:   Set var_11C = Me.Txt
  loc_17A12A9:   Call 0.Method_Txt_Validate0 (CInt(9), var_120)
  loc_17A12B1:   var_120.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_17A1303:   Set var_11C = Me.Txt
  loc_17A1309:   Call 0.Method_Txt_Validate0 (CInt(9), var_120)
  loc_17A1311:   var_120.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_17A1360:   Set var_11C = Me.Txt
  loc_17A1366:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_17A136E:   var_120.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_17A13BB:   Set var_11C = Me.Txt
  loc_17A13C1:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_17A13C9:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_17A1416:   Set var_11C = Me.Txt
  loc_17A141C:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_120)
  loc_17A1424:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestStatus")))
  loc_17A1461:   Proc_6_39_E7C810(var_F4, CVar(Me.Fields.Item("OldAdult")))
  loc_17A1478:   Set var_11C = Me.Txt
  loc_17A147E:   Call 0.Method_Txt_Validate0 (CInt(5), var_120)
  loc_17A1486:   var_120.Text = CStr(var_F4)
  loc_17A14C7:   Proc_6_39_E7C810(var_F4, CVar(Me.Fields.Item("OldChild")))
  loc_17A14DE:   Set var_11C = Me.Txt
  loc_17A14E4:   Call 0.Method_Txt_Validate0 (CInt(6), var_120)
  loc_17A14EC:   var_120.Text = CStr(var_F4)
  loc_17A153D:   Set var_11C = Me.Txt
  loc_17A1543:   Call 0.Method_Txt_Validate0 (CInt(7), var_120)
  loc_17A154B:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_17A1588:   Proc_6_39_E7C810(var_F4, CVar(Me.Fields.Item("RoomRate")))
  loc_17A159F:   Set var_11C = Me.Txt
  loc_17A15A5:   Call 0.Method_Txt_Validate0 (CInt(8), var_120)
  loc_17A15AD:   var_120.Text = CStr(var_F4)
  loc_17A15FE:   Set var_11C = Me.Txt
  loc_17A1604:   Call 0.Method_Txt_Validate0 (CInt(4), var_120)
  loc_17A160C:   var_120.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_17A1659:   Set var_11C = Me.Txt
  loc_17A165F:   Call 0.Method_Txt_Validate0 (CInt(4), var_120)
  loc_17A1667:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_17A16B4:   Set var_11C = Me.Txt
  loc_17A16BA:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_120)
  loc_17A16C2:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_17A170F:   Set var_11C = Me.Txt
  loc_17A1715:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_120)
  loc_17A171D:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_17A176A:   Set var_11C = Me.Txt
  loc_17A1770:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_120)
  loc_17A1778:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_17A17C5:   Set var_11C = Me.Txt
  loc_17A17CB:   Call 0.Method_Txt_Validate0 (CInt(&H10), var_120)
  loc_17A17D3:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments3")))
  loc_17A182B:   Set var_11C = Me.Txt
  loc_17A1831:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_120)
  loc_17A1839:   var_120.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_17A1895:   Set var_11C = Me.Txt
  loc_17A189B:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_120)
  loc_17A18A3:   var_120.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_17A18D5:   var_10C = Me.Fields.Item("CityName")
  loc_17A1915:   var_120 = Me.Fields.Item("StateName")
  loc_17A1968:   var_17C = Trim(CVar(Me.Fields.Item("CountryName")))
  loc_17A1979:   var_190 = var_10C & Proc_6_38_E68A98(Trim(CVar(var_120)), Proc_6_38_E68A98(Trim(CVar(var_10C))) & ",") & "," & Proc_6_38_E68A98(var_17C)
  loc_17A1987:   Set var_188 = Me.Txt
  loc_17A198D:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_18C)
  loc_17A1995:   var_18C.Text = var_190
  loc_17A1A00:   Set var_11C = Me.Txt
  loc_17A1A06:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_120)
  loc_17A1A0E:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_17A1A75:   Set var_11C = Me.Txt
  loc_17A1A7B:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_120)
  loc_17A1A83:   var_120.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_17A1ABB:   var_10C = Me.Fields.Item("DepTime")
  loc_17A1AF4:   Set var_11C = Me.Txt
  loc_17A1AFA:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_120)
  loc_17A1B02:   var_120.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_10C))), 2))
  loc_17A1B2E:   Set var_E4 = Me.Txt
  loc_17A1B34:   Call 0.Method_Txt_Validate0 (CInt(1), var_10C)
  loc_17A1B3C:   var_BC = var_10C.Text
  loc_17A1B5C:   var_11C = Me.Fields
  loc_17A1B85:   If ((CDate(var_BC) <= MemVar_1F920EC) And IsNull(CVar(var_11C.Item("ChkOutDate")))) Then
  loc_17A1B8E:     Call 0.Method_arg_50 (var_BC)
  loc_17A1B9E:     If (var_BC <> "Reverse Check Out Entry") Then
  loc_17A1BC6:       var_E0 = Me.Fields.Item("ChkInDate").Value
  loc_17A1BE0:       For var_1A0 = CDate(var_E0) To MemVar_1F920EC: var_94 = var_1A0 'Double
  loc_17A1C01:         var_C0 = "select Count(*) from Paycharge where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Vtype in ('RC') and Site_Code='"
  loc_17A1C1D:         Proc_6_7_F25D88(var_E0, var_94, CVar(var_C0 & MemVar_1F92070 & "' and Vdate="), var_1D0)
  loc_17A1C25:         var_104 = -1 & var_E0 
  loc_17A1C5B:         Proc_6_17_EAA2B0(var_17C, CVar(Me.Fields.Item("DocID")), Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInDate")))), 2) & " and FOLIONODOCID=")
  loc_17A1C71:         unk_4E5AD5.Execute CStr(var_11C & var_17C), CDate(var_E0), 
  loc_17A1CC6:         var_E0 = var_11C.Fields.Item(0).Value
  loc_17A1CE0:         If (var_E0 <= 0) Then
  loc_17A1CF0:           var_130 = "select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) Inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_17A1D00:           Proc_6_7_F25D88(var_E0, var_94, var_130)
  loc_17A1D1B:           var_140 = var_5B0 & var_E0 & ">=chkindate and (RoomOcc.LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_17A1D37:           var_1B0 = var_140 & "' or RoomOcc.LOGSITE_CODE='HO') And Roomocc.Site_Code='" & CVar(MemVar_1F92070) & "' And RoomOcc.Docid=" 
  loc_17A1D64:           Proc_6_17_EAA2B0(var_220, CVar(Me.Fields.Item("DocID")), var_1B0)
  loc_17A1D6C:           var_230 = -1 & var_220 
  loc_17A1D84:           Proc_6_7_F25D88(var_270, var_94)
  loc_17A1D95:           var_2A0 = var_230 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_270 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_17A1DA4:           Proc_6_7_F25D88(var_2C0, var_94)
  loc_17A1DC4:           Proc_6_7_F25D88(var_310, var_94)
  loc_17A1DDF:           var_360 = var_2A0 & var_2C0 & ">=chkindate and ChngDate<=" & var_310 & " And (RoomOcc.LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_17A1DFB:           var_3C0 = var_360 & "' or RoomOcc.LOGSITE_CODE='HO') And Roomocc.Site_Code='" & CVar(MemVar_1F92070) & "' and RoomOcc.Docid=" 
  loc_17A1E11:           var_11C = Me.Fields
  loc_17A1E28:           Proc_6_17_EAA2B0(var_3F0, CVar(var_11C.Item("DocID")))
  loc_17A1E4C:           var_460 = var_3C0 & var_3F0 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" 
  loc_17A1E79:           Proc_6_17_EAA2B0(var_490, CVar(Me.Fields.Item("DocID")))
  loc_17A1E99:           Proc_6_7_F25D88(var_4E0, var_94)
  loc_17A1EA1:           var_4F0 = var_460 & var_490 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" & var_4E0 
  loc_17A1EBD:           var_550 = var_4F0 & " AND VType in ('RC') and (RoomOcc.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or RoomOcc.LOGSITE_CODE='HO') And Roomocc.Site_Code='" 
  loc_17A1EDE:           unk_4E5AD5.Execute CStr(var_550 & CVar(MemVar_1F92070) & "')"), var_188, 
  loc_17A1EE9:           Set var_AC = var_188
  loc_17A1FA4:           unk_4E5AD5.Execute CStr("Select * from RoomOcc Where DocId='" & var_AC.Fields.Item("DocID").Value & "' And SNo=1"), var_140, -1
  loc_17A1FAF:           Set var_B4 = var_11C
  loc_17A2002:           If (Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_17A20B3:             Proc_96_11_EF9DD8(CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_17A20B8:             var_9C = 1
  loc_17A20E3:           Else
  loc_17A211D:             var_104 = "hh:nn"
  loc_17A212C:             var_140 = Format(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckoutVar")), var_9C)), var_104)
  loc_17A2191:             Proc_96_11_EF9DD8(CDate(var_140), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("variation")), 1, 1)), "hh:nn")), 1)
  loc_17A2196:             var_9C = 1
  loc_17A21BE:           End If
  loc_17A21F7:           If (Proc_6_38_E68A98(CVar(var_B0.Fields.Item("RoomRentChkOutPost")), var_9C) = "Auto") Then
  loc_17A21FA:             GoTo loc_17A22C9
  loc_17A21FD:           End If
  loc_17A221C:           var_F4 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_17A228C:           If ((((Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckOut"))) = "24 Hrs") And (var_94 = MemVar_1F920EC)) And (var_94 <> CDate(Proc_6_38_E68A98(var_F4, 1)))) And (var_9C >= var_A4)) Then
  loc_17A228F:             GoTo loc_17A2BA7
  loc_17A2292:           End If
  loc_17A22C6:           If (MsgBox("Want to Post Charges for " & CDate(var_94), &H24, var_F4, var_104, var_140) = 6) Then
  loc_17A22C9:             ' Referenced from: 17A21FA
  loc_17A2308:             var_11C = var_B0.Fields
  loc_17A2321:             var_C0 = Proc_6_38_E68A98(CVar(var_11C.Item("RoomRentBefChkOut")), (Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckOut"))) = "Other"))
  loc_17A233F:             If (var_11C And (var_C0 = "Yes")) Then
  loc_17A2351:               var_E4 = var_B4.Fields
  loc_17A238C:               var_F4 = CVar(var_B0.Fields.Item("CheckoutVar")) 'Address
  loc_17A2475:               Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_F4)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_94 = CDate(Proc_6_38_E68A98(CVar(var_E4.Item("ChkInDate"))))), 1)
  loc_17A24BC:               If (1 And (1 > CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_17A24E4:                 unk_4E5AD5.Execute CStr(var_AC.Source), var_F4, -1
  loc_17A2552:                 Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_E4, 0, "*", 0)
  loc_17A2567:               End If
  loc_17A2567:             End If
  loc_17A2576:             If ((var_94 = MemVar_1F920EC) And (var_9C >= var_A4)) Then
  loc_17A2588:               var_E4 = var_B0.Fields
  loc_17A25D1:               var_C0 = Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_E4.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_17A2626:               If (1 And (Proc_6_38_E68A98(CVar(var_B0.Fields.Item("RoomRentBefChkOut")), (var_E4 And (var_C0 = "Other"))) <> "Yes")) Then
  loc_17A2653:                 var_144 = 0
  loc_17A267C:                 Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A2694:               Else
  loc_17A2717:                 var_C0 = Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_B0.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_17A2781:                 If (((1 And (var_C0 = "Other")) And (Proc_6_38_E68A98(CVar(var_B0.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_94 = CDate(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ChkInDate")), var_144)))) Then
  loc_17A27AE:                   var_144 = 0
  loc_17A27D7:                   Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A27EF:                 Else
  loc_17A280E:                   var_104 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_17A2839:                   var_140 = CVar(var_B0.Fields.Item("CheckoutVar")) 'Address
  loc_17A295C:                   var_C0 = Proc_6_38_E68A98(CVar(var_B0.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckOut")), 1, 1) = "Other"))
  loc_17A2984:                   Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_140, 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_17A29D7:                   If (1 And (((1 And (var_C0 = "Yes")) And (var_94 = CDate(Proc_6_38_E68A98(var_104, Proc_6_38_E68A98(var_104, var_144))))) <= CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_17A2A04:                     var_144 = 0
  loc_17A2A2D:                     Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A2A45:                   Else
  loc_17A2A64:                     var_F4 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_17A2AC4:                     If ((Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_94 = CDate(Proc_6_38_E68A98(var_F4, var_144)))) Then
  loc_17A2AF1:                       var_144 = 0
  loc_17A2B1A:                       Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A2B2F:                     End If
  loc_17A2B2F:                   End If
  loc_17A2B2F:                 End If
  loc_17A2B2F:               End If
  loc_17A2B32:             Else
  loc_17A2B5C:               var_144 = 0
  loc_17A2B85:               Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*", var_144, 1)
  loc_17A2B9A:             End If
  loc_17A2BA2:             Call Proc_101_44_141BE84(&HFF, 1, var_144)
  loc_17A2BA7:             ' Referenced from: 17A228F
  loc_17A2BA7:           End If
  loc_17A2BA7:         End If
  loc_17A2BAA:       Next var_1A0 'Double
  loc_17A2BAF:     End If
  loc_17A2BB4:     Set var_A8 = Nothing
  loc_17A2BB7:   End If
  loc_17A2BB7:   Call Proc_101_44_141BE84()
  loc_17A2BC0:   Set var_E4 = Me.FGrid
  loc_17A2BD1: End If
  loc_17A2BD6: Set var_B4 = Nothing
  loc_17A2BDE: Set var_B0 = Nothing
  loc_17A2BE6: Set var_B8 = Nothing
  loc_17A2BEE: Set var_AC = Nothing
  loc_17A2BF1: Exit Sub
  loc_17A2BF2: ' Referenced from: 17A0DDB
  loc_17A2C0B: MsgBox("TXT_VALIDATE", 0, var_F4, var_104, var_140)
  loc_17A2C1B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63DD4
  'Data Table: 4E5AD0
  loc_E63DA4: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E63DA7:   Call DGRoomType_UnknownEvent_9()
  loc_E63DAC: End If
  loc_E63DC8: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E63DCB:   Call DGRoomNo_UnknownEvent_9()
  loc_E63DD0: End If
  loc_E63DD0: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F1F3D4
  'Data Table: 4E5AD0
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F1F2E4: Call Proc_101_43_EBDDF8()
  loc_F1F2FC: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F1F317: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F1F320: Set var_BC = Me.FGrid
  loc_F1F356: Set var_104 = Me.TxtGrid
  loc_F1F35C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F1F364: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F1F395: var_110 = CLng(Me.FGrid.Col)
  loc_F1F3A5: If (var_110 = CLng(&HA)) Then
  loc_F1F3B7:   Set var_A8 = Me.TxtGrid
  loc_F1F3BD:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F1F3C5:   var_BC.MaxLength = var_110
  loc_F1F3D1: End If
  loc_F1F3D1: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FA927C
  'Data Table: 4E5AD0
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_FA90F0: On Error Goto loc_FA9276
  loc_FA90FD: If (CLng(Shift) = &H1B) Then
  loc_FA910D:   Set var_88 = Me.TxtGrid
  loc_FA9113:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA912D:   Set var_94 = Me.TxtGrid
  loc_FA9133:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FA913B:   var_98.Text = var_8C.Tag
  loc_FA9157:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FA915C:   Call Proc_101_43_EBDDF8(arg_14)
  loc_FA9165:   Set var_88 = Me.FGrid
  loc_FA9182:   Set var_88 = Me.TxtGrid
  loc_FA9188:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA9190:   var_8C.Visible = False
  loc_FA919C:   Exit Sub
  loc_FA919D: End If
  loc_FA91B0: var_AC = CLng(Me.FGrid.Col)
  loc_FA91C0: If (var_AC = CLng(&HA)) Then
  loc_FA91D2:   Set var_88 = Me.TxtGrid
  loc_FA91D8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_FA91E0:   var_8C.MaxLength = var_AC
  loc_FA920C:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_FA9215:     Call Proc_101_47_ECC3B4(KeyCode, var_AE)
  loc_FA9220:     If (var_AE = &HFF) Then
  loc_FA9266:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72)
  loc_FA9276:       ' Referenced from: FA90F0
  loc_FA9276:     End If
  loc_FA9276:   End If
  loc_FA9276: End If
  loc_FA9276: Proc_6_60_E62BC4(&HA, 0, &HA)
  loc_FA927B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E00794
  'Data Table: 4E5AD0
  loc_E0078B: Proc_6_58_E054C0(arg_10)
  loc_E00790: Exit Sub
  loc_E00791: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E34274
  'Data Table: 4E5AD0
  Dim var_9C As Long
  loc_E3424C: On Error Goto loc_E3426C
  loc_E34262: var_9C = CLng(Me.FGrid.Col)
  loc_E3426B: Exit Sub
  loc_E3426C: ' Referenced from: E3424C
  loc_E3426C: Proc_6_60_E62BC4(var_9C)
  loc_E34271: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E594F8
  'Data Table: 4E5AD0
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E594C4: If (Cancel = 0) Then
  loc_E594CD:   Call Proc_101_47_ECC3B4(Cancel, var_88)
  loc_E594D6:   arg_10 = Not(var_88)
  loc_E594D9: End If
  loc_E594EC: var_A0 = CLng(Me.FGrid.Col)
  loc_E594F5: Exit Sub
End Sub

Public Function MasterFormExitGet() '4E6D8C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4E6D9B
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4E6DAA
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4E6DB9
  mVType = Value
End Sub

Public Property Get OpenMode() 'E03C00
  'Data Table: 4E5AD0
  loc_E03BF9: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E00668
  'Data Table: 4E5AD0
  loc_E00662: global_68 = vNewValue
  loc_E00665: Exit Sub
End Sub

Public Sub Proc_101_40_DFD11C
  'Data Table: 4E5AD0
  loc_DFD118: Exit Sub
  loc_DFD119: CopyBytes -2561
End Sub

Public Sub Proc_101_41_E78DE4(arg_C) 'E78DE4
  'Data Table: 4E5AD0
  Dim var_98 As TextBox
  loc_E78D92: Set var_8C = Me.Txt
  loc_E78D98: Call 0.Method_Proc_101_41_E78DE4C (var_8E, var_86)
  loc_E78DA8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78DBE:   Set var_8C = Me.Txt
  loc_E78DC4:   Call 0.Method_Proc_101_41_E78DE40 (CInt(var_86), var_98)
  loc_E78DCC:   var_98.Enabled = arg_C
  loc_E78DDB: Next var_92 'Byte
  loc_E78DE1: Exit Sub
End Sub

Public Sub Proc_101_42_EAC520
  'Data Table: 4E5AD0
  Dim var_98 As TextBox
  loc_EAC49E: Set var_8C = Me.Txt
  loc_EAC4A4: Call 0.Method_Proc_101_42_EAC520C (var_8E, var_86)
  loc_EAC4B4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAC4CA:   Set var_8C = Me.Txt
  loc_EAC4D0:   Call 0.Method_Proc_101_42_EAC5200 (CInt(var_86), var_98)
  loc_EAC4D8:   var_98.Text = vbNullString
  loc_EAC4F4:   Set var_8C = Me.Txt
  loc_EAC4FA:   Call 0.Method_Proc_101_42_EAC5200 (CInt(var_86), var_98)
  loc_EAC502:   var_98.Tag = vbNullString
  loc_EAC511: Next var_92 'Byte
  loc_EAC517: Call Proc_101_45_137B3A8()
  loc_EAC51C: Exit Sub
End Sub

Public Sub Proc_101_43_EBDDF8
  'Data Table: 4E5AD0
  loc_EBDD70: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBDD82:   Me.DGRoomNo.Visible = False
  loc_EBDD8A: End If
  loc_EBDDA6: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EBDDB8:   Me.DGRoomType.Visible = False
  loc_EBDDC0: End If
  loc_EBDDDC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBDDEE:   Me.FGPoint.Visible = False
  loc_EBDDF6: End If
  loc_EBDDF6: Exit Sub
End Sub

Public Sub Proc_101_44_141BE84
  'Data Table: 4E5AD0
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F0 As String
  Dim var_A4 As Variant
  Dim var_F4 As String
  Dim unk_4E5AD5 As Connection15
  Dim var_A0 As Variant
  Dim var_FC As Variant
  Dim var_C4 As Variant
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_E4 As Variant
  Dim var_168 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_178 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_112 As Integer
  Dim var_1E8 As Variant
  Dim var_1C4 As Variant
  Dim var_158 As Variant
  Dim var_1F8 As Variant
  Dim var_1A4 As Variant
  loc_141B42C: On Error Goto loc_141BE1D
  loc_141B43A: Set var_A0 = Me.Txt
  loc_141B440: Call 0.Method_Proc_101_44_141BE840 (CInt(&HA))
  loc_141B469: If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_141B46C:   Exit Sub
  loc_141B46D: End If
  loc_141B488: var_F0 = "Select * from paycharge where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (ContraDocId is NULL or contradocid='') and folionoDocid='"
  loc_141B499: Set var_A0 = Me.Txt
  loc_141B49F: Call 0.Method_Proc_101_44_141BE840 (CInt(&HA), var_A4, var_EC, var_F0)
  loc_141B4A7: var_B4 = var_A4.Tag
  loc_141B4B0: var_F4 = -1 & var_EC
  loc_141B4C0: unk_4E5AD5.Execute var_F4 & "' order by vDate,vtime,VNO,SNO", var_FC, var_A4
  loc_141B4CB: Set var_8C = var_FC
  loc_141B4F0: var_100 = Me.Recordset15.RecordCount
  loc_141B4FE: var_D4 = CVar((var_100 + 2)) 'Long
  loc_141B50D: Me.FGrid.Rows = vbNullString
  loc_141B522: Set var_A0 = Me.FGrid
  loc_141B528: var_A0.Row = 1
  loc_141B530: ' Referenced from: 141BC6A
  loc_141B542: If Not(Me.var_A0.EOF) Then
  loc_141B549:   Set var_118 = Me.FGrid
  loc_141B556:   var_C4 = Me.FGrid.Row
  loc_141B55F:   var_110 = CVar(CLng(var_C4)) 'Long
  loc_141B597:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("MarkEntry")), CVar(CLng(0)))) 'String
  loc_141B59E:   LateIdCallSt
  loc_141B5C0:   var_C4 = Me.FGrid.Row
  loc_141B601:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_C4)))) 'String
  loc_141B608:   LateIdCallSt
  loc_141B62A:   var_C4 = Me.FGrid.Row
  loc_141B66B:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_C4)), var_118)) 'String
  loc_141B672:   LateIdCallSt
  loc_141B6B3:   var_168 = Me.FGrid.Row
  loc_141B6BC:   var_128 = CVar(CLng(var_168)) 'Long
  loc_141B6C4:   var_148 = CVar(CLng(3)) 'Long
  loc_141B6F1:   var_178 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_141B6F8:   LateIdCallSt
  loc_141B73D:   var_168 = Me.FGrid.Row
  loc_141B762:   var_C4 = "0.00"
  loc_141B782:   LateIdCallSt
  loc_141B7CE:   Proc_6_39_E7C810(var_C4, CVar(Me.var_168.Fields.Item("AmtDr")), CVar(var_94), var_118, CVar(CStr(Format(CVar(Me.var_168.Fields.Item("AmtCr")), var_C4))), 1, 1)
  loc_141B7D6:   var_E4 = (CVar(CLng(4)) + var_C4)
  loc_141B7DB:   var_94 = CSng(Format(CVar(Me.var_168.Fields.Item("AmtCr")), var_C4))
  loc_141B81A:   Proc_6_39_E7C810(var_C4, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_168)))
  loc_141B822:   var_E4 = (var_118 + var_C4)
  loc_141B827:   var_9C = CSng(Format(CVar(Me.var_168.Fields.Item("AmtCr")), var_C4))
  loc_141B849:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141B851:   var_148 = CVar(CLng(5)) 'Long
  loc_141B873:   var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_141B883:   var_178 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_141B88A:   LateIdCallSt
  loc_141B8AE:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_141B8C4:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141B8CC:     var_128 = CVar(CLng(6)) 'Long
  loc_141B8D1:     var_148 = "Dr"
  loc_141B8DA:     LateIdCallSt
  loc_141B8EB:   Else
  loc_141B8F7:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_141B90D:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141B915:       var_128 = CVar(CLng(6)) 'Long
  loc_141B91A:       var_148 = "Cr"
  loc_141B923:       LateIdCallSt
  loc_141B934:     Else
  loc_141B947:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141B94F:       var_128 = CVar(CLng(6)) 'Long
  loc_141B954:       var_148 = vbNullString
  loc_141B95D:       LateIdCallSt
  loc_141B96B:     End If
  loc_141B96B:   End If
  loc_141B975:   var_C4 = Me.FGrid.Row
  loc_141B98E:   var_D4 = "DocID"
  loc_141B9B6:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(7)), CVar(CLng(var_C4)), var_118, var_148, var_128, var_D4)) 'String
  loc_141B9BD:   LateIdCallSt
  loc_141B9DF:   var_C4 = Me.FGrid.Row
  loc_141BA20:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_C4)), var_118, var_E4, var_118)) 'String
  loc_141BA27:   LateIdCallSt
  loc_141BA49:   var_C4 = Me.FGrid.Row
  loc_141BA91:   LateIdCallSt
  loc_141BAD4:   var_112 = IsNull(CVar(Me.Recordset15.Fields.Item("Split")))
  loc_141BB0B:   var_1E8 = Me.FGrid.Row
  loc_141BB4C:   var_1C4 = CVar(Proc_6_38_E68A98(CVar(Me.var_1E8.Fields.Item("Split")), CVar(CLng(&HA)), CVar(CLng(var_1E8)), var_112, var_118, CVar(Proc_6_38_E68A98(CVar(Me.Me.Recordset15.Fields.Item("Split").Value.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(Me.Recordset15.Fields.Item("Split").Value)), var_118, var_E4)))) 'String
  loc_141BB8C:   LateIdCallSt
  loc_141BBC2:   var_C4 = Me.FGrid.Row
  loc_141BC03:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("Bill_no")), CVar(CLng(&HB)), CVar(CLng(var_C4)), var_118, CVar(CStr(IIf(var_112 Or (Me.Recordset15.Fields.Item("Split").Value = vbNullString), "1", var_1C4))))) 'String
  loc_141BC0A:   LateIdCallSt
  loc_141BC24:   Set var_118 = Nothing 
  loc_141BC41:   var_D4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_141BC4A:   Set var_A4 = Me.FGrid
  loc_141BC50:   var_A4.Row = "Bill_no"
  loc_141BC65:   Me.var_A4.MoveNext
  loc_141BC6A:   GoTo loc_141B530
  loc_141BC6D: End If
  loc_141BC80: Me.FGrid.FixedRows = 1
  loc_141BC8C: Set var_23C = Me.Fgrid1
  loc_141BC8F: var_128 = 0
  loc_141BC9B: var_148 = CVar(CLng(1)) 'Long
  loc_141BCC9: var_E4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_141BCD0: LateIdCallSt
  loc_141BCE1: var_128 = 0
  loc_141BCED: var_148 = CVar(CLng(2)) 'Long
  loc_141BD1B: var_E4 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_141BD22: LateIdCallSt
  loc_141BD33: var_128 = 0
  loc_141BD3F: var_148 = CVar(CLng(3)) 'Long
  loc_141BD61: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_141BD71: var_168 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_141BD78: LateIdCallSt
  loc_141BD8B: var_158 = 0
  loc_141BD97: var_1F8 = CVar(CLng(4)) 'Long
  loc_141BDA1: var_C4 = vbNullString
  loc_141BDBE: var_D4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_141BDC5: var_E4 = IIf(var_9C, "Cr", var_C4)
  loc_141BDD2: var_168 = "Dr"
  loc_141BDE4: var_138 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_141BDF4: var_1A4 = CVar(CStr(IIf(CVar(CLng(&HB)), var_168, var_E4))) 'String
  loc_141BDFB: LateIdCallSt
  loc_141BE18: Set var_23C = Nothing 
  loc_141BE1C: Exit Sub
  loc_141BE1D: ' Referenced from: 141B42C
  loc_141BE36: MsgBox("FILL DETAILS", 0, var_C4, var_E4, var_168)
  loc_141BE5C: Set var_A0 = Err()
  loc_141BE62: Call 0.Method_arg_1C (var_100, 0, var_C4, var_E4, var_168, var_23C, var_1A4, var_1F8)
  loc_141BE6E: MsgBox(CVar(var_100), var_158, var_23C, var_168, 1)
  loc_141BE81: Exit Sub
End Sub

Public Sub Proc_101_45_137B3A8
  'Data Table: 4E5AD0
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_137AB08: Set var_90 = Me.FGrid
  loc_137AB1E: Me.FGrid.Rows = 1
  loc_137AB3A: global_60 = CStr(CLng(var_90.BackColor))
  loc_137AB50: var_90.Cols = &HC
  loc_137AB55: var_A0 = 0
  loc_137AB61: var_D8 = CVar(CLng(0)) 'Long
  loc_137AB66: var_F8 = "SNo"
  loc_137AB6F: LateIdCallSt
  loc_137AB7A: var_A0 = CVar(CLng(0)) 'Long
  loc_137AB7F: var_D8 = 0
  loc_137AB8B: LateIdCallSt
  loc_137AB93: var_A0 = 0
  loc_137AB9F: var_D8 = CVar(CLng(1)) 'Long
  loc_137ABA4: var_F8 = "Date"
  loc_137ABAD: LateIdCallSt
  loc_137ABB8: var_A0 = CVar(CLng(1)) 'Long
  loc_137ABC3: var_D8 = CVar(CInt(1)) 'Integer
  loc_137ABCA: LateIdCallSt
  loc_137ABD5: var_A0 = CVar(CLng(1)) 'Long
  loc_137ABE0: var_D8 = CVar(CInt(1)) 'Integer
  loc_137ABE7: LateIdCallSt
  loc_137ABF2: var_A0 = CVar(CLng(1)) 'Long
  loc_137ABF7: var_D8 = &H44C
  loc_137AC03: LateIdCallSt
  loc_137AC0B: var_A0 = 0
  loc_137AC17: var_D8 = CVar(CLng(2)) 'Long
  loc_137AC1C: var_F8 = "Particulars"
  loc_137AC25: LateIdCallSt
  loc_137AC30: var_A0 = CVar(CLng(2)) 'Long
  loc_137AC3B: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AC42: LateIdCallSt
  loc_137AC4D: var_A0 = CVar(CLng(2)) 'Long
  loc_137AC58: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AC5F: LateIdCallSt
  loc_137AC6A: var_A0 = CVar(CLng(2)) 'Long
  loc_137AC6F: var_D8 = &HBB8
  loc_137AC7B: LateIdCallSt
  loc_137AC83: var_A0 = 0
  loc_137AC8F: var_D8 = CVar(CLng(3)) 'Long
  loc_137AC94: var_F8 = "Debit"
  loc_137AC9D: LateIdCallSt
  loc_137ACA8: var_A0 = CVar(CLng(3)) 'Long
  loc_137ACB3: var_D8 = CVar(CInt(7)) 'Integer
  loc_137ACBA: LateIdCallSt
  loc_137ACC5: var_A0 = CVar(CLng(3)) 'Long
  loc_137ACD0: var_D8 = CVar(CInt(7)) 'Integer
  loc_137ACD7: LateIdCallSt
  loc_137ACE2: var_A0 = CVar(CLng(3)) 'Long
  loc_137ACE7: var_D8 = &H44C
  loc_137ACF3: LateIdCallSt
  loc_137ACFB: var_A0 = 0
  loc_137AD07: var_D8 = CVar(CLng(4)) 'Long
  loc_137AD0C: var_F8 = "Credit"
  loc_137AD15: LateIdCallSt
  loc_137AD20: var_A0 = CVar(CLng(4)) 'Long
  loc_137AD2B: var_D8 = CVar(CInt(7)) 'Integer
  loc_137AD32: LateIdCallSt
  loc_137AD3D: var_A0 = CVar(CLng(4)) 'Long
  loc_137AD48: var_D8 = CVar(CInt(7)) 'Integer
  loc_137AD4F: LateIdCallSt
  loc_137AD5A: var_A0 = CVar(CLng(4)) 'Long
  loc_137AD5F: var_D8 = &H44C
  loc_137AD6B: LateIdCallSt
  loc_137AD73: var_A0 = 0
  loc_137AD7F: var_D8 = CVar(CLng(5)) 'Long
  loc_137AD84: var_F8 = "Balance"
  loc_137AD8D: LateIdCallSt
  loc_137AD98: var_A0 = CVar(CLng(5)) 'Long
  loc_137ADA3: var_D8 = CVar(CInt(7)) 'Integer
  loc_137ADAA: LateIdCallSt
  loc_137ADB5: var_A0 = CVar(CLng(5)) 'Long
  loc_137ADC0: var_D8 = CVar(CInt(7)) 'Integer
  loc_137ADC7: LateIdCallSt
  loc_137ADD2: var_A0 = CVar(CLng(5)) 'Long
  loc_137ADD7: var_D8 = &H3E8
  loc_137ADE3: LateIdCallSt
  loc_137ADEB: var_A0 = 0
  loc_137ADF7: var_D8 = CVar(CLng(6)) 'Long
  loc_137ADFC: var_F8 = vbNullString
  loc_137AE05: LateIdCallSt
  loc_137AE10: var_A0 = CVar(CLng(6)) 'Long
  loc_137AE1B: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AE22: LateIdCallSt
  loc_137AE2D: var_A0 = CVar(CLng(6)) 'Long
  loc_137AE38: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AE3F: LateIdCallSt
  loc_137AE4A: var_A0 = CVar(CLng(6)) 'Long
  loc_137AE4F: var_D8 = &H12C
  loc_137AE5B: LateIdCallSt
  loc_137AE63: var_A0 = 0
  loc_137AE6F: var_D8 = CVar(CLng(7)) 'Long
  loc_137AE74: var_F8 = vbNullString
  loc_137AE7D: LateIdCallSt
  loc_137AE88: var_A0 = CVar(CLng(7)) 'Long
  loc_137AE93: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AE9A: LateIdCallSt
  loc_137AEA5: var_A0 = CVar(CLng(7)) 'Long
  loc_137AEB0: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AEB7: LateIdCallSt
  loc_137AEC2: var_A0 = CVar(CLng(7)) 'Long
  loc_137AEC7: var_D8 = 0
  loc_137AED3: LateIdCallSt
  loc_137AEDB: var_A0 = 0
  loc_137AEE7: var_D8 = CVar(CLng(8)) 'Long
  loc_137AEEC: var_F8 = vbNullString
  loc_137AEF5: LateIdCallSt
  loc_137AF00: var_A0 = CVar(CLng(8)) 'Long
  loc_137AF0B: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AF12: LateIdCallSt
  loc_137AF1D: var_A0 = CVar(CLng(8)) 'Long
  loc_137AF28: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AF2F: LateIdCallSt
  loc_137AF3A: var_A0 = CVar(CLng(8)) 'Long
  loc_137AF3F: var_D8 = 0
  loc_137AF4B: LateIdCallSt
  loc_137AF53: var_A0 = 0
  loc_137AF5F: var_D8 = CVar(CLng(9)) 'Long
  loc_137AF64: var_F8 = "User"
  loc_137AF6D: LateIdCallSt
  loc_137AF78: var_A0 = CVar(CLng(9)) 'Long
  loc_137AF83: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AF8A: LateIdCallSt
  loc_137AF95: var_A0 = CVar(CLng(9)) 'Long
  loc_137AFA0: var_D8 = CVar(CInt(1)) 'Integer
  loc_137AFA7: LateIdCallSt
  loc_137AFB2: var_A0 = CVar(CLng(9)) 'Long
  loc_137AFB7: var_D8 = &H320
  loc_137AFC3: LateIdCallSt
  loc_137AFCB: var_A0 = 0
  loc_137AFD7: var_D8 = CVar(CLng(&HA)) 'Long
  loc_137AFDC: var_F8 = "Split"
  loc_137AFE5: LateIdCallSt
  loc_137AFF0: var_A0 = CVar(CLng(&HA)) 'Long
  loc_137AFFB: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B002: LateIdCallSt
  loc_137B00D: var_A0 = CVar(CLng(&HA)) 'Long
  loc_137B018: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B01F: LateIdCallSt
  loc_137B02A: var_A0 = CVar(CLng(&HA)) 'Long
  loc_137B02F: var_D8 = &H20D
  loc_137B03B: LateIdCallSt
  loc_137B043: var_A0 = 0
  loc_137B04F: var_D8 = CVar(CLng(&HB)) 'Long
  loc_137B054: var_F8 = "Bill_No"
  loc_137B05D: LateIdCallSt
  loc_137B068: var_A0 = CVar(CLng(&HB)) 'Long
  loc_137B073: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B07A: LateIdCallSt
  loc_137B085: var_A0 = CVar(CLng(&HB)) 'Long
  loc_137B090: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B097: LateIdCallSt
  loc_137B0A2: var_A0 = CVar(CLng(&HB)) 'Long
  loc_137B0A7: var_D8 = &H2D5
  loc_137B0B3: LateIdCallSt
  loc_137B0BB: var_A0 = vbNullString
  loc_137B0C5: Set var_B4 = Me.FGrid
  loc_137B0E9: Me.FGrid.FixedRows = 1
  loc_137B0F3: Set var_90 = Nothing 
  loc_137B0FB: Set var_10C = Me.Fgrid1
  loc_137B111: Me.Fgrid1.Rows = 1
  loc_137B12D: global_60 = CStr(CLng(var_10C.BackColor))
  loc_137B143: var_10C.Cols = 5
  loc_137B148: var_A0 = 0
  loc_137B154: var_D8 = CVar(CLng(0)) 'Long
  loc_137B159: var_F8 = "Total :"
  loc_137B162: LateIdCallSt
  loc_137B16D: var_A0 = CVar(CLng(0)) 'Long
  loc_137B178: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B17F: LateIdCallSt
  loc_137B18A: var_A0 = CVar(CLng(0)) 'Long
  loc_137B195: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B19C: LateIdCallSt
  loc_137B1A7: var_A0 = CVar(CLng(0)) 'Long
  loc_137B1AC: var_D8 = &HFD2
  loc_137B1B8: LateIdCallSt
  loc_137B1C0: var_A0 = 0
  loc_137B1CC: var_D8 = CVar(CLng(1)) 'Long
  loc_137B1D1: var_F8 = vbNullString
  loc_137B1DA: LateIdCallSt
  loc_137B1E5: var_A0 = CVar(CLng(1)) 'Long
  loc_137B1F0: var_D8 = CVar(CInt(7)) 'Integer
  loc_137B1F7: LateIdCallSt
  loc_137B202: var_A0 = CVar(CLng(1)) 'Long
  loc_137B20D: var_D8 = CVar(CInt(7)) 'Integer
  loc_137B214: LateIdCallSt
  loc_137B21F: var_A0 = CVar(CLng(1)) 'Long
  loc_137B224: var_D8 = &H424
  loc_137B230: LateIdCallSt
  loc_137B238: var_A0 = 0
  loc_137B244: var_D8 = CVar(CLng(2)) 'Long
  loc_137B249: var_F8 = vbNullString
  loc_137B252: LateIdCallSt
  loc_137B25D: var_A0 = CVar(CLng(2)) 'Long
  loc_137B268: var_D8 = CVar(CInt(7)) 'Integer
  loc_137B26F: LateIdCallSt
  loc_137B27A: var_A0 = CVar(CLng(2)) 'Long
  loc_137B285: var_D8 = CVar(CInt(7)) 'Integer
  loc_137B28C: LateIdCallSt
  loc_137B297: var_A0 = CVar(CLng(2)) 'Long
  loc_137B29C: var_D8 = &H44C
  loc_137B2A8: LateIdCallSt
  loc_137B2B0: var_A0 = 0
  loc_137B2BC: var_D8 = CVar(CLng(3)) 'Long
  loc_137B2C1: var_F8 = vbNullString
  loc_137B2CA: LateIdCallSt
  loc_137B2D5: var_A0 = CVar(CLng(3)) 'Long
  loc_137B2E0: var_D8 = CVar(CInt(7)) 'Integer
  loc_137B2E7: LateIdCallSt
  loc_137B2F2: var_A0 = CVar(CLng(3)) 'Long
  loc_137B2FD: var_D8 = CVar(CInt(7)) 'Integer
  loc_137B304: LateIdCallSt
  loc_137B30F: var_A0 = CVar(CLng(3)) 'Long
  loc_137B314: var_D8 = &H41A
  loc_137B320: LateIdCallSt
  loc_137B328: var_A0 = 0
  loc_137B334: var_D8 = CVar(CLng(4)) 'Long
  loc_137B339: var_F8 = vbNullString
  loc_137B342: LateIdCallSt
  loc_137B34D: var_A0 = CVar(CLng(4)) 'Long
  loc_137B358: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B35F: LateIdCallSt
  loc_137B36A: var_A0 = CVar(CLng(4)) 'Long
  loc_137B375: var_D8 = CVar(CInt(1)) 'Integer
  loc_137B37C: LateIdCallSt
  loc_137B387: var_A0 = CVar(CLng(4)) 'Long
  loc_137B38C: var_D8 = &H12C
  loc_137B398: LateIdCallSt
  loc_137B3A2: Set var_10C = Nothing 
  loc_137B3A6: Exit Sub
End Sub

Public Sub Proc_101_46_E3EB28
  'Data Table: 4E5AD0
  loc_E3EB04: Set var_88 = Me.TopCtrl1
  loc_E3EB0A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3EB23: If (CStr() = "Browse") Then
  loc_E3EB26:   Exit Sub
  loc_E3EB27: End If
  loc_E3EB27: Exit Sub
End Sub

Public Sub Proc_101_47_ECC3B4
  'Data Table: 4E5AD0
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_FC As Variant
  loc_ECC33B: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_ECC351:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_ECC359:   var_DC = CVar(CLng(&HA)) 'Long
  loc_ECC36A:   Set var_8C = Me.TxtGrid
  loc_ECC370:   Call 0.Method_Proc_101_47_ECC3B40 (0, var_A4, var_A8)
  loc_ECC378:   var_DC = var_A4.Text
  loc_ECC380:   var_FC = CVar(var_A8) 'String
  loc_ECC388:   Set var_110 = Me.FGrid
  loc_ECC38E:   LateIdCallSt
  loc_ECC3A8: End If
  loc_ECC3AD: Proc_101_47_ECC3B4 = &HFF
End Sub
