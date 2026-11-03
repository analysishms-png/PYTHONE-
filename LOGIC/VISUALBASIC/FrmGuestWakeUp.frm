VERSION 5.00
Begin VB.Form FrmGuestWakeUp
  Caption = "Register Wake up Calls"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10440
  ClientHeight = 5745
  Begin DataGrid DGRoom
    Left = 7950
    Top = 4140
    Width = 2250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 55
  End
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    Left = 2760
    Top = 1020
    Width = 2940
    Height = 285
    Enabled = 0   'False
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
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1305
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 51
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 2760
    Top = 1305
    Width = 345
    Height = 285
    Enabled = 0   'False
    TabIndex = 50
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
    Left = 3090
    Top = 1305
    Width = 345
    Height = 285
    Enabled = 0   'False
    TabIndex = 49
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1875
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 48
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
    Index = 27
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 2160
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 47
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
    Index = 25
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 2445
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 46
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
    Left = 7290
    Top = 1020
    Width = 480
    Height = 285
    Enabled = 0   'False
    TabIndex = 38
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1020
    Width = 495
    Height = 285
    Enabled = 0   'False
    TabIndex = 37
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 2445
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 36
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 9135
    Top = 1020
    Width = 1110
    Height = 285
    Enabled = 0   'False
    TabIndex = 35
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
    Index = 13
    BackColor = &HFFFFFF&
    Left = 7980
    Top = 1305
    Width = 330
    Height = 285
    Enabled = 0   'False
    TabIndex = 34
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
    Left = 8310
    Top = 1305
    Width = 330
    Height = 285
    Enabled = 0   'False
    TabIndex = 33
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1305
    Width = 1170
    Height = 285
    Enabled = 0   'False
    TabIndex = 32
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
    Index = 17
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 2160
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 31
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
    Index = 18
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1875
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 30
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1590
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 29
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 2730
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 28
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
  End
  Begin Frame FrmList
    Left = 7680
    Top = 3345
    Width = 2055
    Height = 1725
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 60
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 25
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1020
    Width = 1185
    Height = 285
    TabIndex = 2
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
    Index = 1
    Left = 1575
    Top = 735
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
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
    Left = 6825
    Top = 750
    Width = 2310
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 12
    MaxLength = 21
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
    Left = 1590
    Top = 3615
    Width = 1425
    Height = 255
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 10
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 5355
    Width = 1425
    Height = 255
    Enabled = 0   'False
    TabIndex = 10
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 4350
    Top = 735
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    Alignment = 1 'Right Justify
    MaxLength = 6
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
    Left = 1590
    Top = 3345
    Width = 1425
    Height = 255
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
    Index = 9
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 4620
    Width = 4455
    Height = 720
    TabIndex = 9
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
    Index = 8
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 3885
    Width = 4455
    Height = 720
    TabIndex = 8
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1590
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
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
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10440
    Height = 375
    TabIndex = 0
  End
  Begin MaskEdBox txtM
    Index = 11
    Left = 3030
    Top = 3615
    Width = 690
    Height = 255
    TabIndex = 7
  End
  Begin MSFlexGrid FGPoint
    Left = 5790
    Top = 3720
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 56
  End
  Begin Label Lbl
    Caption = "Check In Dt."
    Index = 26
    ForeColor = &H0&
    Left = 105
    Top = 1260
    Width = 1035
    Height = 240
    TabIndex = 54
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
    Index = 2
    ForeColor = &H0&
    Left = 105
    Top = 1800
    Width = 690
    Height = 240
    TabIndex = 53
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
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &H0&
    Left = 5745
    Top = 1035
    Width = 930
    Height = 240
    TabIndex = 45
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
    Caption = "Status"
    Index = 1
    ForeColor = &H0&
    Left = 5745
    Top = 2460
    Width = 540
    Height = 240
    TabIndex = 44
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &H0&
    Left = 8235
    Top = 1035
    Width = 690
    Height = 240
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
  Begin Label Lbl
    Caption = "Dep. Dt."
    Index = 4
    ForeColor = &H0&
    Left = 5745
    Top = 1320
    Width = 690
    Height = 240
    TabIndex = 42
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &H0&
    Left = 5745
    Top = 1605
    Width = 930
    Height = 240
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
    Caption = "Comment2"
    Index = 8
    ForeColor = &H0&
    Left = 5745
    Top = 1890
    Width = 930
    Height = 240
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
    Caption = "Comment3"
    Index = 13
    ForeColor = &H0&
    Left = 5745
    Top = 2175
    Width = 930
    Height = 240
    TabIndex = 39
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
    Caption = "Reminder Details"
    Index = 0
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 3090
    Width = 10320
    Height = 225
    TabIndex = 27
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
  Begin Label Label1
    Caption = "Room Details"
    Index = 1
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 420
    Width = 10320
    Height = 225
    TabIndex = 26
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
  Begin Shape Shape1
    BorderColor = &H808080&
    Left = 45
    Top = 405
    Width = 10335
    Height = 5280
  End
  Begin Label LblName
    Caption = "Company"
    Index = 6
    ForeColor = &H0&
    Left = 105
    Top = 2745
    Width = 795
    Height = 240
    TabIndex = 23
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 735
    Top = 765
    Width = 600
    Height = 240
    TabIndex = 22
    Alignment = 1 'Right Justify
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
  Begin Label LblName
    Caption = "Vr.No"
    Index = 1
    ForeColor = &H0&
    Left = 105
    Top = 750
    Width = 480
    Height = 240
    TabIndex = 21
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 6150
    Top = 765
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
  Begin Label LblName
    Caption = "Date"
    Index = 13
    ForeColor = &H0&
    Left = 105
    Top = 3615
    Width = 390
    Height = 240
    TabIndex = 19
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
  Begin Label LblName
    Caption = "User"
    Index = 18
    ForeColor = &H0&
    Left = 105
    Top = 5355
    Width = 390
    Height = 240
    TabIndex = 18
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
  Begin Label LblName
    Caption = "Extension"
    Index = 15
    ForeColor = &H0&
    Left = 3165
    Top = 750
    Width = 810
    Height = 240
    TabIndex = 17
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
  Begin Label LblName
    Caption = "Reminder Reqd."
    Index = 14
    ForeColor = &H0&
    Left = 105
    Top = 3345
    Width = 1380
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
  Begin Label LblName
    Caption = "Other Req."
    Index = 8
    ForeColor = &H0&
    Left = 105
    Top = 4620
    Width = 930
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
  Begin Label LblName
    Caption = "Food Ordered"
    Index = 7
    ForeColor = &H0&
    Left = 105
    Top = 3885
    Width = 1185
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
  Begin Label LblName
    Caption = "Name"
    Index = 5
    ForeColor = &H0&
    Left = 105
    Top = 1485
    Width = 495
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
  Begin Label LblName
    Caption = "Room No."
    Index = 3
    ForeColor = &H0&
    Left = 105
    Top = 1005
    Width = 840
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
End

Attribute VB_Name = "FrmGuestWakeUp"

Private global_124 As Long

Private Sub ListView_UnknownEvent_13 'F14E9C
  'Data Table: 473520
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F14DB8: On Error Goto loc_F14E96
  loc_F14DBF: Set var_A4 = Me.ListView
  loc_F14E09: Set var_BC = Me.Txt
  loc_F14E0F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F14E17: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F14E43: Me.FrmList.Visible = False
  loc_F14E65: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F14E73: Set var_9C = Me.Txt
  loc_F14E79: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F14E81: var_A4.SetFocus
  loc_F14E95: Exit Sub
  loc_F14E96: ' Referenced from: F14DB8
  loc_F14E96: Proc_6_60_E62BC4(var_C8)
  loc_F14E9B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'FDFD30
  'Data Table: 473520
  Dim var_B4 As Variant
  Dim var_88 As String
  loc_FDFB5C: On Error Goto loc_FDFD2A
  loc_FDFB74: var_88 = "ADD"
  loc_FDFB82: Call Proc_37_35_FA83EC(Proc_5_1_100CB50(var_88, Me))
  loc_FDFB96: Set var_8C = Me.TopCtrl1
  loc_FDFB9C: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030008(False)
  loc_FDFBAD: Set var_8C = Me.TopCtrl1
  loc_FDFBB3: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(False)
  loc_FDFBC4: Set var_8C = Me.TopCtrl1
  loc_FDFBCA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030009(False)
  loc_FDFBDB: Set var_8C = Me.TopCtrl1
  loc_FDFBE1: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030006(False)
  loc_FDFBE9: Call Proc_37_33_F31320(global_96)
  loc_FDFBF4: Call Proc_37_38_1147C74(MemVar_1F92044)
  loc_FDFC07: Set var_8C = Me.Txt
  loc_FDFC0D: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_B4)
  loc_FDFC15: var_B4.Text = var_88
  loc_FDFC29: var_88 = CStr(MemVar_1F920EC)
  loc_FDFC37: Set var_8C = Me.Txt
  loc_FDFC3D: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(6), var_B4)
  loc_FDFC45: var_B4.Text = var_88
  loc_FDFC8F: Set var_8C = Me.txtM
  loc_FDFC95: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&HB), var_B4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_FDFC9D: var_B4.defaultText = 1
  loc_FDFCBF: Set var_8C = Me.Txt
  loc_FDFCC5: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_B4)
  loc_FDFCCD: var_B4.SetFocus
  loc_FDFCE7: Set var_8C = Me.Txt
  loc_FDFCED: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_B4, "Yes")
  loc_FDFCF5: var_B4.Text = 1
  loc_FDFD0F: Set var_8C = Me.Txt
  loc_FDFD15: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&HA), var_B4)
  loc_FDFD1D: var_B4.Text = MemVar_1F920C8
  loc_FDFD29: Exit Sub
  loc_FDFD2A: ' Referenced from: FDFB5C
  loc_FDFD2A: Proc_6_60_E62BC4(var_88)
  loc_FDFD2F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F6261C
  'Data Table: 473520
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_8C As String
  loc_F624F8: On Error Goto loc_F625D9
  loc_F62512: If (Me.RecordCount > 0) Then
  loc_F62538:   Call Proc_37_35_FA83EC(Proc_5_1_100CB50("EDIT", Me))
  loc_F62550:   Set var_90 = Me.Txt
  loc_F62556:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_98)
  loc_F6255E:   var_98.Enabled = False
  loc_F6256D: Else
  loc_F6258E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6259E: End If
  loc_F625A9: Set var_90 = Me.txtM
  loc_F625AF: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(&HB), var_98)
  loc_F625BF: var_8C = CStr(var_98.defaultText)
  loc_F625C8: global_84 = var_8C
  loc_F625D8: Exit Sub
  loc_F625D9: ' Referenced from: F624F8
  loc_F625E1: Set var_90 = Err()
  loc_F625E7: Call 0.Method_arg_2C (var_8C)
  loc_F62608: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6261B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1104F28
  'Data Table: 473520
  Dim var_96 As Integer
  Dim unk_473539 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  Dim var_9C As String
  loc_1104C20: On Error Goto loc_1104ECE
  loc_1104C5A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1104C6B:   unk_473539.BeginTrans var_11C
  loc_1104C81:   var_94 = Me.Bookmark 'Variant
  loc_1104CA3:   Set var_120 = Me.Txt
  loc_1104CA9:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From GuestWakeUp Where DocID='")
  loc_1104CB1:   var_B8 = var_124.Text
  loc_1104CBA:   var_12C = -1 & var_128
  loc_1104CCA:   unk_473539.Execute var_12C & "'", var_134, &HFF
  loc_1104CF2:   Set var_120 = Me.Txt
  loc_1104CF8:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124)
  loc_1104D0A:   var_168 = 0
  loc_1104D1D:   var_160 = 0
  loc_1104D28:   var_15C = 0
  loc_1104D3B:   var_154 = 0
  loc_1104D46:   var_150 = 0
  loc_1104D59:   var_148 = 0
  loc_1104D98:   var_128 = "GuestWakeUp"
  loc_1104DA1:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_1104DCC:   unk_473539.CommitTrans
  loc_1104DD3:   var_96 = 0
  loc_1104DE1:   Me.Requery -1
  loc_1104DF1:   Me.Requery -1
  loc_1104E11:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1104E1E:     Me.Bookmark = var_94
  loc_1104E26:   Else
  loc_1104E3A:     If (Me.EOF = 0) Then
  loc_1104E43:       Me.MoveLast
  loc_1104E48:     End If
  loc_1104E48:   End If
  loc_1104E48:   Call Proc_37_33_F31320(var_96, var_148, 0, var_150, var_154)
  loc_1104E69:   Proc_5_0_110649C(&HFF, Me, global_96, 0)
  loc_1104E7A:   Set var_120 = Me.TopCtrl1
  loc_1104E80:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030008(False)
  loc_1104E91:   Set var_120 = Me.TopCtrl1
  loc_1104E97:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(False)
  loc_1104EA8:   Set var_120 = Me.TopCtrl1
  loc_1104EAE:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030009(False)
  loc_1104EBF:   Set var_120 = Me.TopCtrl1
  loc_1104EC5:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030006(False)
  loc_1104ECD: End If
  loc_1104ECD: Exit Sub
  loc_1104ECE: ' Referenced from: 1104C20
  loc_1104ED4: If (var_96 = &HFF) Then
  loc_1104EDD:   unk_473539.RollbackTrans
  loc_1104EE2: End If
  loc_1104EEA: Set var_120 = Err()
  loc_1104EF0: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_1104F11: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_1104F24: Exit Sub
  loc_1104F25: var_9C = var_160
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1B534
  'Data Table: 473520
  loc_E1B529: Me.Global.Unload Me
  loc_E1B531: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14B005C
  'Data Table: 473520
  Dim var_A4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_AC As String
  Dim var_86 As Integer
  Dim unk_473539 As Connection15
  Dim var_134 As String
  Dim var_138 As String
  Dim var_A8 As Variant
  Dim var_158 As TextBox
  Dim var_6C4 As Double
  Dim var_1D0 As Variant
  Dim var_258 As TextBox
  Dim var_2B4 As TextBox
  Dim var_6CC As Double
  Dim var_144 As String
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_DC As Variant
  Dim var_12C As Variant
  Dim var_2D8 As Variant
  Dim var_500 As Variant
  Dim var_694 As Variant
  Dim unk_473582 As Connection15
  Dim var_A0 As Recordset15
  Dim var_98 As Long
  Dim var_154 As TextBox
  Dim var_1BC As TextBox
  Dim var_254 As TextBox
  Dim var_25C As String
  Dim var_178 As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_14AF4E0: On Error Goto loc_14B0041
  loc_14AF4E6: Call Proc_37_32_F8AFD0(var_9A)
  loc_14AF4F1: If (var_9A = 0) Then
  loc_14AF4F4:   Exit Sub
  loc_14AF4F5: End If
  loc_14AF500: Set var_A0 = Me.Txt
  loc_14AF506: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_14AF517: Set var_A8 = var_A4
  loc_14AF52F: If (Proc_6_27_EA565C(var_A8, "Room No") = 0) Then
  loc_14AF532:   Exit Sub
  loc_14AF533: End If
  loc_14AF541: Set var_A0 = Me.Txt
  loc_14AF547: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_A4)
  loc_14AF566: If (var_A4.Text = vbNullString) Then
  loc_14AF582:   MsgBox("Date is Required", &H40, var_EC, var_10C, var_12C)
  loc_14AF592:   Exit Sub
  loc_14AF593: End If
  loc_14AF59C: Set var_A0 = Me.txtM
  loc_14AF5A2: Call 0.Method_TopCtrl1_UnknownEvent_190 (&HB, var_A4)
  loc_14AF5AA: var_CC = var_A4.defaultText
  loc_14AF5B2: var_AC = CStr(var_CC)
  loc_14AF5C7: If (var_AC = vbNullString) Then
  loc_14AF5CA:   Exit Sub
  loc_14AF5CB: End If
  loc_14AF5D9: unk_473539.BeginTrans var_130
  loc_14AF5FC: Set var_A0 = Me.Txt
  loc_14AF602: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A4, var_AC, "Delete From GuestWakeUp Where DocID='", var_CC)
  loc_14AF60A: -1 = var_A4.Text
  loc_14AF623: unk_473539.Execute var_A8 & var_AC & "'", &HFF, var_A4
  loc_14AF64B: Set var_A0 = Me.Txt
  loc_14AF651: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A4)
  loc_14AF659: var_AC = var_A4.Text
  loc_14AF67E: Set var_154 = Me.Txt
  loc_14AF684: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_158)
  loc_14AF699: var_6C4 = Val(var_158.Text)
  loc_14AF6AA: Proc_6_7_F25D88(var_CC, global_64)
  loc_14AF6E2: Set var_1BC = Me.Txt
  loc_14AF6E8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1C0, 1)
  loc_14AF6F0: var_1D0 = CVar(var_1C0) 'Address
  loc_14AF6F7: Proc_6_17_EAA2B0(var_1E0, var_1D0)
  loc_14AF70A: Set var_254 = Me.Txt
  loc_14AF710: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_258, var_25C)
  loc_14AF718: 1 = var_258.Tag
  loc_14AF726: Proc_6_17_EAA2B0(var_27C, CVar(var_25C))
  loc_14AF739: Set var_2B0 = Me.Txt
  loc_14AF73F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_2B4)
  loc_14AF754: var_6CC = Val(var_2B4.Text)
  loc_14AF762: Set var_2FC = Me.Txt
  loc_14AF768: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_300)
  loc_14AF787: Proc_6_17_EAA2B0(var_330, Left(CVar(var_300), 1))
  loc_14AF797: Set var_364 = Me.Txt
  loc_14AF79D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_368)
  loc_14AF7AC: Proc_6_17_EAA2B0(var_388, CVar(var_368))
  loc_14AF7BC: Set var_3BC = Me.Txt
  loc_14AF7C2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_3C0)
  loc_14AF7D1: Proc_6_17_EAA2B0(var_3E0, CVar(var_3C0))
  loc_14AF7E1: Set var_414 = Me.Txt
  loc_14AF7E7: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_418)
  loc_14AF7F6: Proc_6_7_F25D88(var_438, CVar(var_418))
  loc_14AF806: Set var_46C = Me.txtM
  loc_14AF80C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_470)
  loc_14AF81B: Proc_6_17_EAA2B0(var_490, CVar(var_470))
  loc_14AF82E: Proc_6_7_F25D88(var_5A0, Date)
  loc_14AF837: Set var_5D4 = Me.TopCtrl1
  loc_14AF83D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(var_6CC)
  loc_14AF88C: var_134 = "Insert Into GuestWakeUp (DocID,VType,VPrefix,Site_Code,VNo,VDate,VTime,RoomNo,RoomCat,RoomType,Extension,RemReqd,FoodOrd,OtherReq,WDate,WTime,GuestProf,FolioNo,U_Name,U_EntDt,U_AE) Values ('" & var_AC
  loc_14AF893: var_138 = var_134 & "','"
  loc_14AF8D3: var_EC = CVar(var_138 & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_6C4) & ",") 'String
  loc_14AF933: var_2D8 = var_EC & var_CC & ",'" & Format(Time, "HH:MM") & "'," & var_1E0 & ",'" & CVar(global_68) & "'," & var_27C & "," & CVar(var_6CC) 
  loc_14AF9A2: var_500 = var_2D8 & "," & var_330 & "," & var_388 & "," & var_3E0 & "," & var_438 & "," & var_490 & ",'" & CVar(global_72) & "'," 
  loc_14AF9EC: var_694 = var_500 & CVar(global_76) & ",'" & CVar(MemVar_1F920C8) & "'," & var_5A0 & ",'" & IIf((var_5F4 = "Add"), "A", "E") & "')" 
  loc_14AF9FA: unk_473539.Execute CStr(var_694), var_6B8, -1
  loc_14AFAC8: If (MemVar_1F921D0 = "Y") Then
  loc_14AFAD1:   var_DC = 0
  loc_14AFAF0:   unk_473582.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_CC, -1
  loc_14AFAF8:   var_A0 = var_A0.Fields
  loc_14AFB00:   var_DC = var_A4.Item(var_A4)
  loc_14AFB08:   var_A8 = var_A8.Value
  loc_14AFB12:   var_98 = CLng(var_EC)
  loc_14AFB43:   Set var_A0 = Me.Txt
  loc_14AFB49:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A4, var_AC, "Delete from EPABX_IN where v_type='WKALM' AND ROOM_NO='", var_CC, -1)
  loc_14AFB51:   var_158 = var_A4.Text
  loc_14AFB72:   Set var_A8 = Me.Txt
  loc_14AFB78:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_154, var_138, var_98 & var_AC & "' AND VdATE=#")
  loc_14AFB80:   var_EC = var_154.Text
  loc_14AFB99:   unk_473582.Execute var_6BC & var_138 & "#", var_6C4, 
  loc_14AFBC9:   Set var_A0 = Me.Txt
  loc_14AFBCF:   Call 0.Method_TopCtrl1_UnknownEvent_190 (6, var_A4)
  loc_14AFBEA:   Set var_A8 = Me.Txt
  loc_14AFBF0:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_154)
  loc_14AFC0B:   Set var_158 = Me.Txt
  loc_14AFC11:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1BC)
  loc_14AFC2C:   Set var_1C0 = Me.Txt
  loc_14AFC32:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_254)
  loc_14AFC4A:   Set var_258 = Me.txtM
  loc_14AFC50:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB))
  loc_14AFC5D:   var_CC = CVar(var_2B0) 'Address
  loc_14AFC74:   Set var_2B4 = Me.txtM
  loc_14AFC7A:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_2FC)
  loc_14AFCAC:   var_134 = "Insert into EPABX_IN (ID,V_TYPE,VDATE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE,ALARM_HOUR,ALARM_MIN) VALUES(" & CStr(var_98)
  loc_14AFCEB:   var_10C = CVar(var_134 & ",'WKALM',#" & var_A4.Text & "#,'" & var_154.Text & "','" & var_1BC.Text & "','" & var_254.Text & "',0,'") 'String
  loc_14AFCFA:   var_178 = var_10C & Left(var_CC, 2) & "','" 
  loc_14AFD18:   unk_473582.Execute CStr(var_178 & Right(CVar(var_2FC), 2) & "')"), var_1D0, -1
  loc_14AFD6E: End If
  loc_14AFD72: Set var_A0 = Me.TopCtrl1
  loc_14AFD78: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(var_300)
  loc_14AFD8D: If (var_2B0 = "Add") Then
  loc_14AFDA4:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_14AFDCA:   var_EC = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14AFDDB:   Proc_6_7_F25D88(var_CC, global_64, var_EC)
  loc_14AFDFA:   unk_473539.Execute CStr(var_178 & var_CC & " Order By VP.Date_From DESC"), -1, var_A0
  loc_14AFE05:   Set var_8C = var_A0
  loc_14AFE3B:   If (var_8C.RecordCount > 0) Then
  loc_14AFE4C:     Set var_A0 = Me.Txt
  loc_14AFE52:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A4)
  loc_14AFE5A:     var_AC = var_A4.Text
  loc_14AFE67:     var_6C4 = Val(var_AC)
  loc_14AFE6D:     var_BC = "Date_From"
  loc_14AFE90:     Proc_6_7_F25D88(var_EC, CVar(var_8C.Fields.Item(var_BC)))
  loc_14AFEC3:     var_144 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_6C4) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_14AFEF6:     unk_473539.Execute CStr(CVar(var_144 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_EC), var_178, -1
  loc_14AFF2A:   End If
  loc_14AFF2A: End If
  loc_14AFF30: unk_473539.CommitTrans
  loc_14AFF43: Set var_A0 = Me.Txt
  loc_14AFF49: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A4, var_AC)
  loc_14AFF51: var_158 = var_A4.Text
  loc_14AFF65: var_86 = 0
  loc_14AFF73: Me.Requery -1
  loc_14AFF9D: Me.Find "SearchCode ='" & "SearchCode ='" & var_AC & "'", 0, 1
  loc_14AFFCC: Call Proc_37_35_FA83EC(Proc_5_1_100CB50("INI", Me, global_96), var_BC)
  loc_14AFFE0: Set var_A0 = Me.TopCtrl1
  loc_14AFFE6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030008(False)
  loc_14AFFF7: Set var_A0 = Me.TopCtrl1
  loc_14AFFFD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(False)
  loc_14B000E: Set var_A0 = Me.TopCtrl1
  loc_14B0014: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030009(False)
  loc_14B0025: Set var_A0 = Me.TopCtrl1
  loc_14B002B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030006(False)
  loc_14B0033: Call Proc_37_33_F31320(var_86)
  loc_14B003D: Set var_8C = Nothing
  loc_14B0040: Exit Sub
  loc_14B0041: ' Referenced from: 14AF4E0
  loc_14B0047: If (var_86 = &HFF) Then
  loc_14B0050:   unk_473539.RollbackTrans
  loc_14B0055: End If
  loc_14B0055: Proc_6_60_E62BC4(var_6C4)
  loc_14B005A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'F01E08
  'Data Table: 473520
  loc_F01D30: On Error Goto loc_F01E02
  loc_F01D6A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F01D90:   Call Proc_37_35_FA83EC(Proc_5_1_100CB50("INI", Me))
  loc_F01DA4:   Set var_10C = Me.TopCtrl1
  loc_F01DAA:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030008(False)
  loc_F01DBB:   Set var_10C = Me.TopCtrl1
  loc_F01DC1:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(False)
  loc_F01DD2:   Set var_10C = Me.TopCtrl1
  loc_F01DD8:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030009(False)
  loc_F01DE9:   Set var_10C = Me.TopCtrl1
  loc_F01DEF:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030006(False)
  loc_F01DF7:   Call Proc_37_36_EB6224(global_96)
  loc_F01DFC:   Call Proc_37_33_F31320()
  loc_F01E01: End If
  loc_F01E01: Exit Sub
  loc_F01E02: ' Referenced from: F01D30
  loc_F01E02: Proc_6_60_E62BC4()
  loc_F01E07: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB62F0
  'Data Table: 473520
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_EB625C: On Error Goto loc_EB62EA
  loc_EB6276: If (Me.RecordCount <= 0) Then
  loc_EB627F:   var_B8 = "Information"
  loc_EB629A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB62AA:   Exit Sub
  loc_EB62AB: End If
  loc_EB62B2: MemVar_1F920E4 = "Select GW.DocID as SearchCode,CAST(GW.VNo AS VARCHAR) As VrNo,GW.RoomNo,GF.Name As GuestName,GF.Company,GW.FoodOrd,GW.OtherReq " & "From ((GuestWakeUp GW Left Join RoomOcc RO On (GW.RoomNo=RO.RoomNo And GW.FolioNo=RO.FolioNo)) Left Join GuestFolio GF On RO.FolioNo=GF.FolioNo) Order by GW.DocID,GW.VNo"
  loc_EB62BF: Proc_6_126_F1BCC0("1000,1000,2500,2000,2000,2000")
  loc_EB62CD: MemVar_1F92120 = Me
  loc_EB62E4: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB62E9: Exit Sub
  loc_EB62EA: ' Referenced from: EB625C
  loc_EB62EA: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EB62EF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0ABF0
  'Data Table: 473520
  Dim Me As Recordset15
  loc_E0ABE7: Me.Requery -1
  loc_E0ABEC: Exit Sub
End Sub

Private Sub Form_Load() '10F11D0
  'Data Table: 473520
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_D0 As DataGrid
  Dim var_D4 As TextBox
  Dim var_D8 As DataGrid
  loc_10F0EB0: On Error Goto loc_10F11CA
  loc_10F0EB9: Call 0.Method_Me8 (var_88)
  loc_10F0EC4: Call 0.Method_Me0 (var_8C)
  loc_10F0EE3: Proc_6_23_DFBA28(Me, CInt(var_88))
  loc_10F0EF7: Set var_98 = MemVar_1F92244.PictSubMenu
  loc_10F0EFD: var_8C = MDIForm1.PictSubMenu.Height
  loc_10F0F0E: Set var_90 = MemVar_1F92244.PictSubMenu
  loc_10F0F14: var_88 = MDIForm1.PictSubMenu.Top
  loc_10F0F24: Call 0.Method_arg_7C ((var_88 + var_8C))
  loc_10F0F3A: Set global_100 = New 
  loc_10F0F4C: Me.Recordset15.CursorLocation = 3
  loc_10F0F76: var_AC = CVar("Select RoomType as Type,RoomNo,RoomCat,'' AS Extension From Roomocc where RoomOcc.logsite_code='" & MemVar_1F92078 & "' and chkoutdate is NULL Order by RoomNO") 'String
  loc_10F0F94: CVarUnk
  loc_10F0F99: VerifyVarObj
  loc_10F0F9F: Set var_90 = Me.DGRoom
  loc_10F0FA5: LateIdStAd
  loc_10F0FC7: Call 0.Method_Form_Load0 (CInt(2), var_98, var_88, Me.Txt)
  loc_10F0FCF: global_100 = var_98.Left
  loc_10F0FE6: Me.DGRoom.Left = CVar(var_88)
  loc_10F1002: Set var_D0 = Me.Txt
  loc_10F1008: Call 0.Method_Form_Load0 (CInt(2), var_D4, var_8C)
  loc_10F1010: 3 = var_D4.Height
  loc_10F1023: Set var_90 = Me.Txt
  loc_10F1029: Call 0.Method_Form_Load0 (CInt(2), var_98, var_88)
  loc_10F1031: -1 = var_98.Top
  loc_10F103D: var_BC = CVar((var_88 + var_8C)) 'Single
  loc_10F1046: Set var_D8 = Me.DGRoom
  loc_10F104C: var_D8.Top = CVar(var_88)
  loc_10F107A: Me.var_D8.CursorLocation = 3
  loc_10F10A4: var_AC = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From GuestWakeUp where LogSite_Code='" & MemVar_1F92078 & "' Order by DocID") 'String
  loc_10F10AE: r_AC, CVar(MemVar_1F92044), 2 var_AC, CVar(MemVar_1F92044), 2
  loc_10F10BF: global_60 = "HTGWP"
  loc_10F10E6: Call Proc_37_35_FA83EC(Proc_5_1_100CB50("INI", Me, New), 3)
  loc_10F1109: Proc_6_23_DFBA28(Me, 6085, 10525)
  loc_10F111A: Set var_90 = Me.TopCtrl1
  loc_10F1120: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030008(False)
  loc_10F1131: Set var_90 = Me.TopCtrl1
  loc_10F1137: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(False)
  loc_10F1148: Set var_90 = Me.TopCtrl1
  loc_10F114E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030009(False)
  loc_10F115F: Set var_90 = Me.TopCtrl1
  loc_10F1165: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030006(False)
  loc_10F116D: Call Proc_37_33_F31320(-1)
  loc_10F117A: Call 0.Method_Me4 (CDbl(10560))
  loc_10F1187: Call 0.Method_MeC (CDbl(6150))
  loc_10F11BB: global_64 = CStr(Format(MemVar_1F920EC, "DD/MM/YYYY"))
  loc_10F11C9: Exit Sub
  loc_10F11CA: ' Referenced from: 10F0EB0
  loc_10F11CA: Proc_6_60_E62BC4(1, 1)
  loc_10F11CF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E402A0
  'Data Table: 473520
  loc_E4027B: Set global_100 = Nothing
  loc_E4028D: Set global_96 = Nothing
  loc_E4029C: Exit Sub
  loc_E4029D: Set var_90 = 0
End Sub

Private Sub Form_Activate() 'E48020
  'Data Table: 473520
  loc_E47FF0: On Error Goto loc_E4801A
  loc_E47FF7: Set var_88 = Me.TopCtrl1
  loc_E47FFD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030010()
  loc_E48012: If (CLng(CInt()) = &H2D) Then
  loc_E48015:   Call TopCtrl1_UnknownEvent_1D()
  loc_E4801A:   ' Referenced from: E47FF0
  loc_E4801A: End If
  loc_E4801A: Proc_6_60_E62BC4()
  loc_E4801F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25A6C
  'Data Table: 473520
  loc_E25A51: If (MasterFormExit = &HFF) Then
  loc_E25A61:   Me.Global.Unload Me
  loc_E25A69: End If
  loc_E25A69: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A3B4
  'Data Table: 473520
  loc_E2A38C: On Error Goto loc_E2A3AC
  loc_E2A3A3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A3AB: Exit Sub
  loc_E2A3AC: ' Referenced from: E2A38C
  loc_E2A3AC: Proc_6_60_E62BC4(Shift)
  loc_E2A3B1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10C3ACC
  'Data Table: 473520
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_10C380A: Set var_88 = Me.Txt
  loc_10C3810: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10C381E: Proc_6_74_E226B0(var_8C)
  loc_10C382A: Call Proc_37_36_EB6224(var_8C)
  loc_10C3832: var_92 = Index
  loc_10C383D: If (var_92 = CInt(2)) Then
  loc_10C3857:   If (Me.RecordCount > 0) Then
  loc_10C3865:     Set var_8C = Me.FGPoint
  loc_10C387D:     Proc_6_137_1193554(Me.DGRoom, global_100, Index)
  loc_10C388B:   End If
  loc_10C38D9:   Set var_88 = Me.Txt
  loc_10C38DF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10C38E7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10C38FF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_10C3902:     Exit Sub
  loc_10C3903:   End If
  loc_10C3910:   Set var_88 = Me.Txt
  loc_10C3916:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10C391E:   var_A0 = var_8C.Text
  loc_10C3930:   var_B0 = "RoomNo"
  loc_10C396B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_10C3974:     Me.MoveFirst
  loc_10C3997:     Set var_88 = Me.Txt
  loc_10C399D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_10C39A5:     0 = var_8C.Text
  loc_10C39BE:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_10C39D3:   End If
  loc_10C39D6: Else
  loc_10C39DE:   If (var_92 = CInt(5)) Then
  loc_10C39EE:     ReDim var_F0(0 To 1)
  loc_10C3A05:     var_F0(0) = "Yes"
  loc_10C3A14:     var_F0(1) = "No"
  loc_10C3A2B:     global_104 = Array(var_F0)
  loc_10C3A36:     Set var_B4 = Me.ListView
  loc_10C3A51:     Set var_8C = Me.Txt
  loc_10C3A6B:     Set global_120 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_10C3A89:     Set var_88 = Me.Txt
  loc_10C3A8F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10C3A97:     global_104 = var_8C.Text
  loc_10C3AA9:     Set var_90 = Me.Txt
  loc_10C3AAF:     Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_10C3AB7:     var_B4.Tag = 2
  loc_10C3ACA:   End If
  loc_10C3ACA: End If
  loc_10C3ACA: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '116190C
  'Data Table: 473520
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_116157F: var_86 = Shift
  loc_116158C: If (CLng(Shift) = &H1B) Then
  loc_116158F:   Call Proc_37_36_EB6224(var_86)
  loc_1161594:   Exit Sub
  loc_1161595: End If
  loc_1161598: var_88 = KeyCode
  loc_11615A3: If (var_88 = CInt(2)) Then
  loc_11615B1:   Set var_AC = Me.Txt
  loc_11615C3:   Set var_A0 = Me.FGPoint
  loc_11615CE:   Set var_9C = Nothing
  loc_1161600:   Proc_6_69_134A198(Me.DGRoom, var_AC, CInt(2), global_100, Shift, 0)
  loc_116161F:   var_B4 = Me.RecordCount
  loc_116166F:   If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1161676:     Set var_9C = Me.DGRoom
  loc_116167D:     Set var_90 = Me.FGPoint
  loc_1161695:     Proc_6_138_106D6F8(var_9C, global_100, KeyCode, var_90, 1)
  loc_11616A3:   End If
  loc_11616A6: Else
  loc_11616AE:   If (var_88 = CInt(5)) Then
  loc_11616D3:     Set var_8C = Me.Txt
  loc_11616D9:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_9C)
  loc_11616E1:     var_A0 = var_90.Left
  loc_11616F3:     Set var_9C = Me.Txt
  loc_11616F9:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_1161701:     0 = var_A0.Top
  loc_1161713:     Set var_A8 = Me.Txt
  loc_1161719:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_1161721:     var_BC = var_AC.Height
  loc_1161733:     Set var_B0 = Me.Txt
  loc_1161739:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1161741:     var_C4 = var_C0.Width
  loc_1161789:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11617B5:     Call Txt_Validate(KeyCode)
  loc_11617BA:   End If
  loc_11617BA: End If
  loc_11617F3: If ((CBool(Me.DGRoom.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_1161814:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(9))) Then
  loc_116181D:     Proc_6_75_E527CC(Shift, arg_14, 0, CInt(var_B4))
  loc_1161822:   End If
  loc_1161826:   Set var_8C = Me.TopCtrl1
  loc_116182C:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(CInt((var_B8 + var_BC)))
  loc_1161859:   If CBool((CInt(var_C4) = "Add") And (KeyCode <> CInt(2))) Then
  loc_1161871:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_116187A:       Proc_6_76_E52838(Shift, arg_14)
  loc_116187F:     End If
  loc_1161882:   Else
  loc_1161886:     Set var_8C = Me.TopCtrl1
  loc_116188C:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(780)
  loc_11618B9:     If CBool((var_88 = "Edit") And (KeyCode <> CInt(7))) Then
  loc_11618D1:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11618DA:         Proc_6_76_E52838(Shift)
  loc_11618DF:       End If
  loc_11618DF:     End If
  loc_11618DF:   End If
  loc_11618FD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_1161903:     Call Proc_37_37_EE1ED0(KeyCode)
  loc_1161908:   End If
  loc_1161908: End If
  loc_1161908: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F17954
  'Data Table: 473520
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F17860: On Error Goto loc_F1794B
  loc_F17866: Proc_6_58_E054C0(arg_10)
  loc_F1786E: var_86 = KeyAscii
  loc_F17879: If (var_86 = CInt(7)) Then
  loc_F17886:   Set var_8C = Me.Txt
  loc_F1788C:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F178A7:   Proc_6_42_129A86C(var_90, arg_10, 6)
  loc_F178B6: Else
  loc_F178BE:   If (var_86 = CInt(2)) Then
  loc_F178DD:     If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F178EF:       var_AC = "RoomNo"
  loc_F1790A:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_100, arg_10)
  loc_F1793C:       Proc_6_138_106D6F8(Me.DGRoom, global_100, KeyAscii, Me.FGPoint)
  loc_F1794A:     End If
  loc_F1794A:   End If
  loc_F1794A: End If
  loc_F1794A: Exit Sub
  loc_F1794B: ' Referenced from: F17860
  loc_F1794B: Proc_6_60_E62BC4(var_AC, 0)
  loc_F17950: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8B024
  'Data Table: 473520
  loc_E8AFC6: If (KeyCode = CInt(5)) Then
  loc_E8AFE4:   If (Me.FrmList.Visible = &HFF) Then
  loc_E8B013:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_E8B023:   End If
  loc_E8B023: End If
  loc_E8B023: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48C4C
  'Data Table: 473520
  loc_E48C2A: Set var_88 = Me.Txt
  loc_E48C30: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48C3E: Proc_6_73_E22704(var_8C)
  loc_E48C4A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14DB028
  'Data Table: 473520
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_C0 As TextBox
  Dim var_E0 As String
  Dim var_F0 As Variant
  Dim unk_473539 As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As TextBox
  loc_14DA267: var_8A = Cancel
  loc_14DA272: If (var_8A = CInt(2)) Then
  loc_14DA281:   If (global_124 = 1) Then
  loc_14DA2A2:     Set var_90 = Me.Txt
  loc_14DA2A8:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, "roomno='")
  loc_14DA2B0:     0 = var_94.Text
  loc_14DA2C9:     Me.Find 1 & var_98 & "'", var_B0, var_8A
  loc_14DA2DE:   End If
  loc_14DA32C:   Set var_90 = Me.Txt
  loc_14DA332:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DA352:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_14DA362:     Set var_90 = Me.Txt
  loc_14DA368:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DA370:     var_94.Text = vbNullString
  loc_14DA389:     Set var_90 = Me.Txt
  loc_14DA38F:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DA397:     var_94.Tag = vbNullString
  loc_14DA3A6:   Else
  loc_14DA3E2:     Set var_BC = Me.Txt
  loc_14DA3E8:     Call 0.Method_Txt_Validate0 (CInt(2), var_C0)
  loc_14DA3F0:     var_C0.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_14DA442:     Set var_BC = Me.Txt
  loc_14DA448:     Call 0.Method_Txt_Validate0 (CInt(2), var_C0)
  loc_14DA450:     var_C0.Tag = CStr(Me.Fields.Item("Type").Value)
  loc_14DA4A5:     Call 0.Method_Txt_Validate0 (CInt(7), var_C0)
  loc_14DA4AD:     var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Extension")))
  loc_14DA4F5:     global_68 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_14DA513:     var_E0 = "SELECT GF.Name,GF.Company,RO.FolioNo,RO.GuestProf,RO.ChkInDate, RO.ChkInTime, RO.DepDate, RO.DepTime, GuestProf.Add1, GuestProf.Add2, SubGroup.Name AS CompanyName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestStat.Name AS GuestStatus, City.CityName, RoomCat.Name as RoomCat FROM ((((GuestProf RIGHT JOIN (RoomOcc AS RO LEFT JOIN GuestFolio AS GF ON RO.FolioNo = GF.FolioNo) ON GuestProf.Code = GF.GuestProf) LEFT JOIN SubGroup ON GF.Company = SubGroup.SubCode) LEFT JOIN GuestStat ON GuestProf.GuestStatus = GuestStat.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN RoomCat ON RO.RoomCat=RoomCat.Code Where RoomNo='"
  loc_14DA545:     var_F0 = var_E0 & Me.Fields.Item("RoomNo").Value 
  loc_14DA55C:     unk_473539.Execute CStr(var_F0 & "' And ChkOutDate is Null"), var_130, -1
  loc_14DA567:     Set var_88 = Me.Txt
  loc_14DA595:     If (var_88.RecordCount > 0) Then
  loc_14DA5CE:       Set var_BC = Me.Txt
  loc_14DA5D4:       Call 0.Method_Txt_Validate0 (CInt(3), var_C0)
  loc_14DA5DC:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")))
  loc_14DA616:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("FolioNo")))
  loc_14DA62D:       Set var_BC = Me.Txt
  loc_14DA633:       Call 0.Method_Txt_Validate0 (CInt(&HE), var_C0)
  loc_14DA63B:       var_C0.Text = CStr(var_F0)
  loc_14DA689:       Set var_BC = Me.Txt
  loc_14DA68F:       Call 0.Method_Txt_Validate0 (CInt(4), var_C0)
  loc_14DA697:       var_C0.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Company")))
  loc_14DA6E1:       Set var_BC = Me.Txt
  loc_14DA6E7:       Call 0.Method_Txt_Validate0 (CInt(4), var_C0)
  loc_14DA6EF:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyName")))
  loc_14DA739:       Set var_BC = Me.Txt
  loc_14DA73F:       Call 0.Method_Txt_Validate0 (CInt(&H13), var_C0)
  loc_14DA747:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments1")))
  loc_14DA791:       Set var_BC = Me.Txt
  loc_14DA797:       Call 0.Method_Txt_Validate0 (CInt(&H12), var_C0)
  loc_14DA79F:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments2")))
  loc_14DA7E9:       Set var_BC = Me.Txt
  loc_14DA7EF:       Call 0.Method_Txt_Validate0 (CInt(&H11), var_C0)
  loc_14DA7F7:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments3")))
  loc_14DA841:       Set var_BC = Me.Txt
  loc_14DA847:       Call 0.Method_Txt_Validate0 (CInt(&H1A), var_C0)
  loc_14DA84F:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_14DA899:       Set var_BC = Me.Txt
  loc_14DA89F:       Call 0.Method_Txt_Validate0 (CInt(&H1B), var_C0)
  loc_14DA8A7:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_14DA8F1:       Set var_BC = Me.Txt
  loc_14DA8F7:       Call 0.Method_Txt_Validate0 (CInt(&H19), var_C0)
  loc_14DA8FF:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_14DA949:       Set var_BC = Me.Txt
  loc_14DA94F:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_C0)
  loc_14DA957:       var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuestStatus")))
  loc_14DA9A4:       Set var_BC = Me.Txt
  loc_14DA9AA:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_C0)
  loc_14DA9B2:       var_C0.Text = CStr(var_88.Fields.Item("ChkInDate").Value)
  loc_14DAA0A:       Set var_BC = Me.Txt
  loc_14DAA10:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_C0)
  loc_14DAA18:       var_C0.Text = CStr(Left(CVar(var_88.Fields.Item("ChkInTime")), 2))
  loc_14DAA72:       Set var_BC = Me.Txt
  loc_14DAA78:       Call 0.Method_Txt_Validate0 (CInt(&H15), var_C0)
  loc_14DAA80:       var_C0.Text = CStr(Right(CVar(var_88.Fields.Item("ChkInTime")), 2))
  loc_14DAAD1:       Set var_BC = Me.Txt
  loc_14DAAD7:       Call 0.Method_Txt_Validate0 (CInt(&HB), var_C0)
  loc_14DAADF:       var_C0.Text = CStr(var_88.Fields.Item("DepDate").Value)
  loc_14DAB37:       Set var_BC = Me.Txt
  loc_14DAB3D:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_C0)
  loc_14DAB45:       var_C0.Text = CStr(Left(CVar(var_88.Fields.Item("DepTime")), 2))
  loc_14DAB9F:       Set var_BC = Me.Txt
  loc_14DABA5:       Call 0.Method_Txt_Validate0 (CInt(&HC), var_C0)
  loc_14DABAD:       var_C0.Text = CStr(Right(CVar(var_88.Fields.Item("DepTime")), 2))
  loc_14DABF6:       global_72 = CStr(var_88.Fields.Item("GuestProf").Value)
  loc_14DAC5D:       var_94 = var_88.Fields.Item("RoomCat")
  loc_14DAC7C:       Set var_BC = Me.Txt
  loc_14DAC82:       Call 0.Method_Txt_Validate0 (CInt(&H18), var_C0, CStr(var_94.Value))
  loc_14DAC8A:       var_C0.Text = CLng(var_88.Fields.Item("FolioNo").Value)
  loc_14DACA3:     Else
  loc_14DACB1:       Set var_90 = Me.Txt
  loc_14DACB7:       Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_14DACBF:       var_94.Text = vbNullString
  loc_14DACD9:       Set var_90 = Me.Txt
  loc_14DACDF:       Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_14DACE7:       var_94.Text = vbNullString
  loc_14DAD01:       Set var_90 = Me.Txt
  loc_14DAD07:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_94)
  loc_14DAD0F:       var_94.Text = vbNullString
  loc_14DAD29:       Set var_90 = Me.Txt
  loc_14DAD2F:       Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_14DAD37:       var_94.Text = vbNullString
  loc_14DAD51:       Set var_90 = Me.Txt
  loc_14DAD57:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_94)
  loc_14DAD5F:       var_94.Text = vbNullString
  loc_14DAD79:       Set var_90 = Me.Txt
  loc_14DAD7F:       Call 0.Method_Txt_Validate0 (CInt(&H15), var_94)
  loc_14DAD87:       var_94.Text = vbNullString
  loc_14DADA1:       Set var_90 = Me.Txt
  loc_14DADA7:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_14DADAF:       var_94.Text = vbNullString
  loc_14DADC9:       Set var_90 = Me.Txt
  loc_14DADCF:       Call 0.Method_Txt_Validate0 (CInt(&HC), var_94)
  loc_14DADD7:       var_94.Text = vbNullString
  loc_14DADE9:       global_72 = vbNullString
  loc_14DAE06:       Set var_90 = Me.Txt
  loc_14DAE0C:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_94, vbNullString)
  loc_14DAE14:       var_94.Text = 0
  loc_14DAE20:     End If
  loc_14DAE20:   End If
  loc_14DAE23: Else
  loc_14DAE2B:   If (var_8A = CInt(5)) Then
  loc_14DAE3B:     Set var_90 = Me.Txt
  loc_14DAE41:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DAE60:     If (var_94.Text <> vbNullString) Then
  loc_14DAE7B:       Set var_94 = Me.ListView.SelectedItem
  loc_14DAE93:       Set var_BC = Me.Txt
  loc_14DAE99:       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_14DAEA1:       var_C0.Text = var_94.Text
  loc_14DAEB7:     End If
  loc_14DAEC4:     Set var_90 = Me.Txt
  loc_14DAECA:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DAEE9:     If (var_94.Text = "No") Then
  loc_14DAEF9:       Set var_90 = Me.Txt
  loc_14DAEFF:       Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14DAF07:       var_94.Enabled = False
  loc_14DAF23:       Set var_90 = Me.txtM
  loc_14DAF29:       Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_14DAF31:       var_94.Enabled = False
  loc_14DAF40:     Else
  loc_14DAF4D:       Set var_90 = Me.Txt
  loc_14DAF53:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DAF72:       If (var_94.Text = "Yes") Then
  loc_14DAF82:         Set var_90 = Me.Txt
  loc_14DAF88:         Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14DAF90:         var_94.Enabled = True
  loc_14DAFAB:         Set var_90 = Me.txtM
  loc_14DAFB1:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_14DAFB9:         var_94.Enabled = True
  loc_14DAFC5:       End If
  loc_14DAFC5:     End If
  loc_14DAFC8:   Else
  loc_14DAFD0:     If (var_8A = CInt(6)) Then
  loc_14DAFDE:       Set var_90 = Me.Txt
  loc_14DAFE4:       Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14DB004:       Set var_C0 = Me.Txt
  loc_14DB00A:       Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_14DB012:       var_134.Text = Proc_6_33_1512840(var_94)
  loc_14DB025:     End If
  loc_14DB025:   End If
  loc_14DB025: End If
  loc_14DB025: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E51024
  'Data Table: 473520
  loc_E50FFE: Set var_88 = Me.txtM
  loc_E51004: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E51012: Proc_6_74_E226B0(var_8C)
  loc_E5101E: Call Proc_37_36_EB6224(var_8C)
  loc_E51023: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E48D84
  'Data Table: 473520
  loc_E48D62: Set var_88 = Me.txtM
  loc_E48D68: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E48D76: Proc_6_73_E22704(var_8C)
  loc_E48D82: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E53D38
  'Data Table: 473520
  Dim arg_10 As Integer
  loc_E53D0E: Set var_88 = Me.txtM
  loc_E53D14: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E53D2E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E53D33:   arg_10 = &HFF
  loc_E53D36: End If
  loc_E53D36: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E5FCBC
  'Data Table: 473520
  loc_E5FC76: If (CLng(arg_10) = &H1B) Then
  loc_E5FC79:   Call Proc_37_36_EB6224()
  loc_E5FC7E:   Exit Sub
  loc_E5FC7F: End If
  loc_E5FC94: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E5FC9D:   Proc_6_75_E527CC(arg_10)
  loc_E5FCA2: End If
  loc_E5FCAC: If (CLng(arg_10) = &H26) Then
  loc_E5FCB5:   Proc_6_76_E52838(arg_10, arg_14)
  loc_E5FCBA: End If
  loc_E5FCBA: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E37694
  'Data Table: 473520
  loc_E37688: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E3768B:   Call DGRoom_UnknownEvent_9()
  loc_E37690: End If
  loc_E37690: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F411E4
  'Data Table: 473520
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F410DB: Me.DGRoom.Visible = False
  loc_F410FA: If (Me.RecordCount > 0) Then
  loc_F41139:   Set var_B4 = Me.Txt
  loc_F4113F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F41147:   var_B8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F4117A:   var_B0 = Me.Fields.Item("Type")
  loc_F41199:   Set var_B4 = Me.Txt
  loc_F4119F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F411A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F411BD: End If
  loc_F411C8: Set var_A8 = Me.Txt
  loc_F411CE: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2))
  loc_F411D6: var_B0.SetFocus
  loc_F411E2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E9B150
  'Data Table: 473520
  Dim var_A8 As Variant
  loc_E9B0D4: Set var_88 = Me.DGRoom
  loc_E9B0FE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9B106: Set var_BC = Me.DGRoom
  loc_E9B140: Proc_6_138_106D6F8(Me.DGRoom, global_100, 0, Me.FGPoint)
  loc_E9B14E: Exit Sub
End Sub

Public Function MasterFormExitGet() '4740B4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4740C3
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96B70
  'Data Table: 473520
  Dim Me As Recordset15
  loc_E96AFE: On Error Goto loc_E96B67
  loc_E96B07: Me.MoveFirst
  loc_E96B31: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96B59: Proc_5_0_110649C(&HFF, Me, global_96)
  loc_E96B61: Call Proc_37_34_132594C(0)
  loc_E96B66: Exit Sub
  loc_E96B67: ' Referenced from: E96AFE
  loc_E96B67: Proc_6_60_E62BC4(var_A0)
  loc_E96B6C: Exit Sub
End Sub

Public Property Get OpenMode() 'E068C0
  'Data Table: 473520
  loc_E068B9: OpenMode = global_124
End Sub

Public Property Let OpenMode(vNewValue) 'E01784
  'Data Table: 473520
  loc_E0177E: global_124 = vNewValue
  loc_E01781: Exit Sub
End Sub

Public Sub Proc_37_32_F8AFD0
  'Data Table: 473520
  Dim var_C0 As TextBox
  Dim unk_473539 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F8AE95: Set var_8C = Me.TopCtrl1
  loc_F8AE9B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(&HFF)
  loc_F8AEB0: If ( = "Add") Then
  loc_F8AEE0:   Set var_8C = Me.Txt
  loc_F8AEE6:   Call 0.Method_Proc_37_32_F8AFD00 (CInt(0), var_C0, var_C4, "Select Count(*) From GuestWakeUp Where DocID='", var_AC, -1)
  loc_F8AF07:   unk_473539.Execute var_D4 & var_C4 & "'", 0, var_E8
  loc_F8AF17:    = var_D4.Item()
  loc_F8AF1F:    = var_E8.Value
  loc_F8AF4C:   If (var_C0.Text.Fields > 0) Then
  loc_F8AF55:     Call 0.Method_arg_50 (var_C4)
  loc_F8AF76:     MsgBox("Duplicate Serial No.", &H40, CVar(var_C4), var_108, var_118)
  loc_F8AF8C:     Call Proc_37_38_1147C74(MemVar_1F92044)
  loc_F8AF9F:     Set var_8C = Me.Txt
  loc_F8AFA5:     Call 0.Method_Proc_37_32_F8AFD00 (CInt(0), var_C0)
  loc_F8AFAD:     var_C0.Text = var_C4
  loc_F8AFC1:     Proc_37_32_F8AFD0 = 0
  loc_F8AFC7:   End If
  loc_F8AFC7: End If
  loc_F8AFC7: Proc_37_32_F8AFD0 = var_C4
End Sub

Public Sub Proc_37_33_F31320
  'Data Table: 473520
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_F3120E: Set var_8C = Me.Txt
  loc_F31214: Call 0.Method_Proc_37_33_F31320C (var_8E, var_86)
  loc_F31224: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F3123A:   Set var_8C = Me.Txt
  loc_F31240:   Call 0.Method_Proc_37_33_F313200 (CInt(var_86), var_98)
  loc_F31248:   var_98.Text = vbNullString
  loc_F31264:   Set var_8C = Me.Txt
  loc_F3126A:   Call 0.Method_Proc_37_33_F313200 (CInt(var_86), var_98)
  loc_F31272:   var_98.Tag = vbNullString
  loc_F31281: Next var_92 'Byte
  loc_F31296: Set var_8C = Me.txtM
  loc_F3129C: Call 0.Method_Proc_37_33_F313200 (&HB, var_98)
  loc_F312A4: var_98.Text = "00:00"
  loc_F312BF: Set var_8C = Me.txtM
  loc_F312C5: Call 0.Method_Proc_37_33_F313200 (&HB, var_98)
  loc_F312CD: var_98.Tag = vbNullString
  loc_F312E6: Me.LblVPrefix.Caption = vbNullString
  loc_F312F7: Set var_8C = Me.TopCtrl1
  loc_F312FD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000B(False)
  loc_F3130E: Set var_8C = Me.TopCtrl1
  loc_F31314: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000A(False)
  loc_F3131C: Exit Sub
End Sub

Public Sub Proc_37_34_132594C
  'Data Table: 473520
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim unk_473539 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_11C As Variant
  loc_13251D4: On Error Goto loc_1325945
  loc_13251EE: If (Me.RecordCount > 0) Then
  loc_1325247:   unk_473539.Execute CStr("Select * From GuestWakeUp Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_132526F:   Set var_124 = var_120 
  loc_13252AC:   Set var_120 = Me.Txt
  loc_13252B2:   Call 0.Method_Proc_37_34_132594C0 (CInt(0), var_128)
  loc_13252BA:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_1325308:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_1325355:   Set var_120 = Me.Txt
  loc_132535B:   Call 0.Method_Proc_37_34_132594C0 (CInt(1), var_128)
  loc_1325363:   var_128.Text = CStr(var_124.Fields.Item("VNo").Value)
  loc_13253B2:   Set var_120 = Me.Txt
  loc_13253B8:   Call 0.Method_Proc_37_34_132594C0 (CInt(2), var_128)
  loc_13253C0:   var_128.Text = CStr(var_124.Fields.Item("RoomNo").Value)
  loc_1325412:   var_D8 = "Select Name,Company From RoomOcc RO Left Join GuestFolio GF On RO.FolioNo=GF.FolioNo Where RO.RoomNo='" & var_124.Fields.Item("RoomNo").Value 
  loc_1325439:   var_128 = var_124.Fields.Item("FolioNo")
  loc_1325460:   unk_473539.Execute CStr(var_D8 & "' And RO.FolioNo=" & var_128.Value & vbNullString), var_178, -1
  loc_132546B:   Set var_8C = var_17C
  loc_13254A3:   If (var_8C.RecordCount > 0) Then
  loc_13254DC:     Set var_120 = Me.Txt
  loc_13254E2:     Call 0.Method_Proc_37_34_132594C0 (CInt(3), var_128)
  loc_13254EA:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")), var_17C)
  loc_1325515:     var_A8 = var_8C.Fields.Item("Company")
  loc_1325534:     Set var_120 = Me.Txt
  loc_132553A:     Call 0.Method_Proc_37_34_132594C0 (CInt(4), var_128)
  loc_1325542:     var_128.Text = Proc_6_38_E68A98(CVar(var_A8))
  loc_1325559:   Else
  loc_1325567:     Set var_94 = Me.Txt
  loc_132556D:     Call 0.Method_Proc_37_34_132594C0 (CInt(3), var_A8)
  loc_1325575:     var_A8.Text = vbNullString
  loc_132558F:     Set var_94 = Me.Txt
  loc_1325595:     Call 0.Method_Proc_37_34_132594C0 (CInt(4), var_A8)
  loc_132559D:     var_A8.Text = vbNullString
  loc_13255A9:   End If
  loc_13255CF:   Proc_6_39_E7C810(var_D8, CVar(var_124.Fields.Item("Extension")))
  loc_13255E6:   Set var_120 = Me.Txt
  loc_13255EC:   Call 0.Method_Proc_37_34_132594C0 (CInt(7), var_128)
  loc_13255F4:   var_128.Text = CStr(var_D8)
  loc_1325677:   Set var_120 = Me.Txt
  loc_132567D:   Call 0.Method_Proc_37_34_132594C0 (CInt(5), var_128)
  loc_1325685:   var_128.Text = CStr(IIf((var_124.Fields.Item("RemReqd").Value = "Y"), "Yes", "No"))
  loc_13256DB:   Set var_120 = Me.Txt
  loc_13256E1:   Call 0.Method_Proc_37_34_132594C0 (CInt(8), var_128)
  loc_13256E9:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("FoodOrd")))
  loc_132574F:   Set var_120 = Me.Txt
  loc_1325755:   Call 0.Method_Proc_37_34_132594C0 (CInt(6), var_128, CStr(Format(CVar(var_124.Fields.Item("WDate")), "DD/MM/YYYY")))
  loc_132575D:   var_128.Text = 1
  loc_13257CA:   Set var_120 = Me.txtM
  loc_13257D0:   Call 0.Method_Proc_37_34_132594C0 (CInt(&HB), var_128, CVar(CStr(Format(CVar(var_124.Fields.Item("WTime")), "HH:MM"))), 1)
  loc_13257D8:   var_128.defaultText = 1
  loc_1325827:   Set var_120 = Me.Txt
  loc_132582D:   Call 0.Method_Proc_37_34_132594C0 (CInt(9), var_128)
  loc_1325835:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("OtherReq")), 1)
  loc_132587F:   Set var_120 = Me.Txt
  loc_1325885:   Call 0.Method_Proc_37_34_132594C0 (CInt(&HA), var_128)
  loc_132588D:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("U_Name")))
  loc_13258A9:   Set var_94 = Me.TopCtrl1
  loc_13258AF:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000B(True)
  loc_13258BF:   Set var_94 = Me.TopCtrl1
  loc_13258C5:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000A(True)
  loc_13258D6:   Set var_94 = Me.TopCtrl1
  loc_13258DC:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030008(False)
  loc_13258ED:   Set var_94 = Me.TopCtrl1
  loc_13258F3:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(False)
  loc_1325904:   Set var_94 = Me.TopCtrl1
  loc_132590A:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030009(False)
  loc_132591B:   Set var_94 = Me.TopCtrl1
  loc_1325921:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030006(False)
  loc_132592B:   Set var_124 = Nothing 
  loc_1325932: Else
  loc_1325932:   Call Proc_37_33_F31320(var_120)
  loc_1325937: End If
  loc_1325937: Call Proc_37_36_EB6224()
  loc_1325941: Set var_88 = Nothing
  loc_1325944: Exit Sub
  loc_1325945: ' Referenced from: 13251D4
  loc_1325945: Proc_6_60_E62BC4()
  loc_132594A: Exit Sub
End Sub

Public Sub Proc_37_35_FA83EC(arg_C) 'FA83EC
  'Data Table: 473520
  Dim var_98 As Variant
  loc_FA825E: Set var_8C = Me.Txt
  loc_FA8264: Call 0.Method_Proc_37_35_FA83ECC (var_8E, var_86)
  loc_FA8274: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FA828A:   Set var_8C = Me.Txt
  loc_FA8290:   Call 0.Method_Proc_37_35_FA83EC0 (CInt(var_86), var_98)
  loc_FA8298:   var_98.Enabled = arg_C
  loc_FA82A7: Next var_92 'Byte
  loc_FA82BA: Set var_8C = Me.Txt
  loc_FA82C0: Call 0.Method_Proc_37_35_FA83EC0 (CInt(0), var_98)
  loc_FA82C8: var_98.Enabled = False
  loc_FA82E1: Set var_8C = Me.Txt
  loc_FA82E7: Call 0.Method_Proc_37_35_FA83EC0 (CInt(1), var_98)
  loc_FA82EF: var_98.Enabled = False
  loc_FA8308: Set var_8C = Me.Txt
  loc_FA830E: Call 0.Method_Proc_37_35_FA83EC0 (CInt(3), var_98)
  loc_FA8316: var_98.Enabled = False
  loc_FA832F: Set var_8C = Me.Txt
  loc_FA8335: Call 0.Method_Proc_37_35_FA83EC0 (CInt(4), var_98)
  loc_FA833D: var_98.Enabled = False
  loc_FA8356: Set var_8C = Me.Txt
  loc_FA835C: Call 0.Method_Proc_37_35_FA83EC0 (CInt(7), var_98)
  loc_FA8364: var_98.Enabled = False
  loc_FA8382: Set var_8C = Me.txtM
  loc_FA8388: Call 0.Method_Proc_37_35_FA83EC0 (CInt(&HB), var_98)
  loc_FA8390: var_98.Enabled = arg_C
  loc_FA83A9: Set var_8C = Me.Txt
  loc_FA83AF: Call 0.Method_Proc_37_35_FA83EC0 (CInt(&HA), var_98)
  loc_FA83B7: var_98.Enabled = False
  loc_FA83D1: Set var_8C = Me.Txt
  loc_FA83D7: Call 0.Method_Proc_37_35_FA83EC0 (CInt(&HA), var_98)
  loc_FA83DF: var_98.Text = MemVar_1F920C8
  loc_FA83EB: Exit Sub
End Sub

Public Sub Proc_37_36_EB6224
  'Data Table: 473520
  loc_EB61A0: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EB61B2:   Me.DGRoom.Visible = False
  loc_EB61BA: End If
  loc_EB61D5: If (Me.FrmList.Visible = &HFF) Then
  loc_EB61E4:   Me.FrmList.Visible = False
  loc_EB61EC: End If
  loc_EB6208: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB621A:   Me.FGPoint.Visible = False
  loc_EB6222: End If
  loc_EB6222: Exit Sub
End Sub

Public Sub Proc_37_37_EE1ED0(arg_C) 'EE1ED0
  'Data Table: 473520
  Dim var_8C As TextBox
  loc_EE1E24: Call Proc_37_36_EB6224()
  loc_EE1E34: Set var_88 = Me.Txt
  loc_EE1E3A: Call 0.Method_Proc_37_37_EE1ED00 (CInt(2))
  loc_EE1E63: If (Proc_6_27_EA565C(var_8C, "Room No") = 0) Then
  loc_EE1E66:   Exit Sub
  loc_EE1E67: End If
  loc_EE1E9E: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE1EA1:   Call TopCtrl1_UnknownEvent_19()
  loc_EE1EA9: Else
  loc_EE1EB3:   Set var_88 = Me.Txt
  loc_EE1EB9:   Call 0.Method_Proc_37_37_EE1ED00 (arg_C, var_8C)
  loc_EE1EC1:   var_8C.SetFocus
  loc_EE1ECD: End If
  loc_EE1ECD: Exit Sub
End Sub

Public Sub Proc_37_38_1147C74
  'Data Table: 473520
  Dim var_A0 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_94 As Long
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  loc_1147924: var_90 = global_60
  loc_114793B: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_114795E: var_E0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_114796F: Proc_6_7_F25D88(var_D0, global_64, var_E0)
  loc_1147977: var_F0 = var_134 & var_D0 
  loc_1147980: var_110 = var_F0 & " Order By VP.Date_From DESC" 
  loc_114798B: Me.Connection15.Execute CStr(var_110), -1, var_138
  loc_1147996: Set var_8C = var_138
  loc_11479CC: If (var_8C.RecordCount <= 0) Then
  loc_11479E8:   MsgBox("Invalid Date", 0, var_E0, var_F0, var_110)
  loc_11479FB:   var_88 = vbNullString
  loc_11479FE:   Proc_37_38_1147C74 = 
  loc_1147A04: End If
  loc_1147A18: If (var_8C.RecordCount > 0) Then
  loc_1147A57:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1147A74:     var_150 = var_8C.Fields.Item("Prefix")
  loc_1147A85:     var_9C = CStr(var_150.Value)
  loc_1147AA0:     Set var_138 = Me.Txt
  loc_1147AA6:     Call 0.Method_Proc_37_38_1147C740 (CInt(1), var_150)
  loc_1147ABC:     var_94 = CLng(Val(var_150.Text))
  loc_1147ACC:   Else
  loc_1147AF7:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1147B1E:     var_150 = var_8C.Fields.Item("start_srl_no")
  loc_1147B33:     var_E0 = (var_150.Value + 1)
  loc_1147B39:     var_94 = CLng(var_E0)
  loc_1147B4A:   End If
  loc_1147B4A: End If
  loc_1147B75: var_D0 = Space((5 - Len(var_90)))
  loc_1147B7D: var_F0 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_150.Value)
  loc_1147B87: var_110 = (var_F0 + CVar(var_9C))
  loc_1147B98: var_134 = Space((5 - Len(var_9C)))
  loc_1147BA0: var_164 = (var_110 + var_134)
  loc_1147BB6: var_174 = Space((8 - Len(CStr(var_94))))
  loc_1147BBE: var_184 = (var_164 + var_174)
  loc_1147BCA: var_1A4 = (var_184 + CVar(CStr(var_94)))
  loc_1147BCF: var_98 = CStr(var_1A4)
  loc_1147BFF: Me.LblVPrefix.Caption = var_9C
  loc_1147C15: Set var_138 = Me.Txt
  loc_1147C1B: Call 0.Method_Proc_37_38_1147C740 (CInt(0), var_150)
  loc_1147C23: var_150.Text = var_98
  loc_1147C42: Set var_138 = Me.Txt
  loc_1147C48: Call 0.Method_Proc_37_38_1147C740 (CInt(1), var_150)
  loc_1147C50: var_150.Text = CStr(var_94)
  loc_1147C62: var_88 = var_98
  loc_1147C6A: Set var_8C = Nothing
  loc_1147C6D: Proc_37_38_1147C74 = var_94
End Sub
