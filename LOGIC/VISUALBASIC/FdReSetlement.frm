VERSION 5.00
Begin VB.Form FdReSetlement
  Caption = "Post Charges/Payment"
  BackColor = &HFFC0C0&
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
  ClientWidth = 9555
  ClientHeight = 7350
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6900
    Width = 9555
    Height = 450
    Visible = 0   'False
    TabIndex = 106
  End
  Begin DataGrid DGMember
    Left = 13650
    Top = 6195
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 102
  End
  Begin Frame FrMember
    BackColor = &HFFC0C0&
    Left = 165
    Top = 8055
    Width = 6000
    Height = 315
    Visible = 0   'False
    TabIndex = 100
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 39
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1650
      Top = 30
      Width = 4000
      Height = 285
      TabIndex = 32
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Member"
      Index = 2
      ForeColor = &HC00000&
      Left = 15
      Top = 30
      Width = 780
      Height = 240
      TabIndex = 101
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
  Begin DataGrid DGBill
    Left = 13320
    Top = 5610
    Width = 6780
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 97
  End
  Begin PictureBox Picture2
    Picture = "FdReSetlement.frx":0
    Left = 18870
    Top = 7860
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 96
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture1
    Picture = "FdReSetlement.frx":34E
    Left = 19620
    Top = 7665
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 95
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3075
    Top = 1395
    Width = 930
    Height = 285
    Visible = 0   'False
    TabIndex = 94
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 1080
    Width = 1545
    Height = 285
    TabIndex = 2
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
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 10350
    Top = 0
  End
  Begin DataGrid DGRoom
    Left = 12600
    Top = 5700
    Width = 3885
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
End
Begin DataGrid DGRoomNo
  Left = 13980
  Top = 4890
  Width = 2580
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 22
End
Begin DataGrid DGEmp
  Left = 12555
  Top = 4980
  Width = 4170
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 46
End
Begin DataGrid DGChrgPayment
  Left = 15795
  Top = 4860
  Width = 5490
  Height = 3465
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 23
End
Begin TextBox Txt
  Index = 35
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 9570
  Top = 1740
  Width = 1500
  Height = 285
  TabIndex = 6
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 9
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 11
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2340
  Width = 2535
  Height = 285
  Enabled = 0   'False
  TabIndex = 71
  BorderStyle = 0 'None
  MaxLength = 16
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
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2010
  Top = 2655
  Width = 480
  Height = 285
  Enabled = 0   'False
  TabIndex = 70
  BorderStyle = 0 'None
  MaxLength = 2
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
  Index = 12
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2655
  Width = 495
  Height = 285
  Enabled = 0   'False
  TabIndex = 69
  BorderStyle = 0 'None
  MaxLength = 2
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
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 14655
  Top = 3570
  Width = 480
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 68
  BorderStyle = 0 'None
  MaxLength = 1
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
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2970
  Width = 1005
  Height = 285
  Enabled = 0   'False
  TabIndex = 67
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
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 4035
  Top = 660
  Width = 765
  Height = 285
  Enabled = 0   'False
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 5
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
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 1710
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 66
  BorderStyle = 0 'None
  MaxLength = 11
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
End
Begin TextBox Txt
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 3840
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 65
  BorderStyle = 0 'None
  MaxLength = 50
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
End
Begin TextBox Txt
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5100
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 64
  BorderStyle = 0 'None
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
End
Begin TextBox Txt
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1275
  Top = 6360
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 63
  BorderStyle = 0 'None
  MaxLength = 8
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
End
Begin TextBox Txt
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3555
  Top = 1710
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 62
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
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
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3060
  Top = 1710
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 61
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
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
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 1395
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 60
  BorderStyle = 0 'None
  MaxLength = 5
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
End
Begin TextBox Txt
  Index = 30
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3060
  Top = 2025
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 59
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
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
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 29
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3555
  Top = 2025
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 58
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
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
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 31
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2025
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 57
  BorderStyle = 0 'None
  MaxLength = 11
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
End
Begin TextBox Txt
  Index = 34
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1275
  Top = 6045
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 56
  BorderStyle = 0 'None
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
End
Begin TextBox Txt
  Index = 33
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5730
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 55
  BorderStyle = 0 'None
  MaxLength = 50
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
End
Begin TextBox Txt
  Index = 32
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5415
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 54
  BorderStyle = 0 'None
  MaxLength = 16
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
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4785
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 53
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
End
Begin TextBox Txt
  Index = 27
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4470
  Width = 3930
  Height = 285
  Enabled = 0   'False
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
End
Begin TextBox Txt
  Index = 26
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4155
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 51
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
End
Begin DataGrid DGCompany
  Left = 16740
  Top = 4500
  Width = 4215
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 49
End
Begin Frame FrComp
  BackColor = &HFFC0C0&
  Left = 150
  Top = 8370
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 47
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
  Begin PictureBox Picture4
    Picture = "FdReSetlement.frx":69C
    Left = 5715
    Top = 30
    Width = 320
    Height = 270
    TabIndex = 99
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1665
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Company"
    Index = 27
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 900
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
End
Begin Frame FrCCDet
  BackColor = &HFFC0C0&
  Left = 5415
  Top = 2340
  Width = 6000
  Height = 960
  Visible = 0   'False
  TabIndex = 41
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
  Begin TextBox Txt
    Index = 37
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4155
    Top = 630
    Width = 1500
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 630
    Width = 1500
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 315
    Width = 4000
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Batch No."
    Index = 0
    ForeColor = &HC00000&
    Left = 3255
    Top = 660
    Width = 945
    Height = 225
    TabIndex = 93
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
  Begin Label LblName
    Caption = "Exp.Dt."
    Index = 20
    ForeColor = &HC00000&
    Left = 15
    Top = 615
    Width = 675
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
  Begin Label LblName
    Caption = "Holder"
    Index = 19
    ForeColor = &HC00000&
    Left = 15
    Top = 315
    Width = 630
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
  Begin Label LblName
    Caption = "C.C. No."
    Index = 18
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 765
    Height = 240
    TabIndex = 42
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
Begin Frame FrEmp
  BackColor = &HFFC0C0&
  Left = 165
  Top = 7740
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 39
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
  Begin PictureBox Picture3
    Picture = "FdReSetlement.frx":9EA
    Left = 5685
    Top = 45
    Width = 320
    Height = 270
    Visible = 0   'False
    TabIndex = 98
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Staff"
    Index = 22
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 435
    Height = 240
    TabIndex = 40
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
Begin Frame FrSendRoom
  BackColor = &HFFC0C0&
  Left = 165
  Top = 6795
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 37
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
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 2000
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Room No.#"
    Index = 26
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 1035
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
Begin Frame FrChqDet
  BackColor = &HFFC0C0&
  Left = 165
  Top = 7110
  Width = 6000
  Height = 645
  Visible = 0   'False
  TabIndex = 34
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
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 345
    Width = 2000
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 2000
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Cheque Dt."
    Index = 16
    ForeColor = &HC00000&
    Left = 15
    Top = 330
    Width = 1050
    Height = 285
    TabIndex = 36
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
  Begin Label LblName
    Caption = "Cheque No."
    Index = 15
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 1110
    Height = 240
    TabIndex = 35
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
Begin TextBox Txt
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 1110
  Width = 1500
  Height = 285
  Enabled = 0   'False
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 11
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 16
  BackColor = &HFFFFFF&
  Left = 11805
  Top = 180
  Width = 990
  Height = 255
  Visible = 0   'False
  TabIndex = 24
  BorderStyle = 0 'None
  MaxLength = 21
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
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 1740
  Width = 1500
  Height = 285
  TabIndex = 5
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 11
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 2055
  Width = 4000
  Height = 285
  TabIndex = 7
  BorderStyle = 0 'None
  MaxLength = 50
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 1425
  Width = 4000
  Height = 285
  TabIndex = 4
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
  Appearance = 0 'Flat
End
Begin MaskEdBox txtVTime
  Left = 10320
  Top = 1110
  Width = 750
  Height = 285
  TabIndex = 3
End
Begin MSHFlexGrid FGrid
  Left = 5895
  Top = 3750
  Width = 5790
  Height = 2430
  TabIndex = 89
End
Begin MSFlexGrid FGPoint
  Left = 16455
  Top = 7860
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 91
End
Begin BtnEnh CmdExit
  Left = 8940
  Top = 7575
  Width = 1350
  Height = 1050
  TabIndex = 104
End
Begin BtnEnh BtnSave
  Left = 6990
  Top = 7560
  Width = 1350
  Height = 1050
  TabIndex = 105
End
Begin Line Line1
  BorderColor = &HC00000&
  X1 = 7020
  Y1 = 7005
  X2 = 10275
  Y2 = 7005
  BorderWidth = 2
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 103
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
  Caption = "Guest Bill No"
  Index = 17
  ForeColor = &HC00000&
  Left = 240
  Top = 1095
  Width = 1065
  Height = 225
  TabIndex = 92
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
  Caption = "Settlement Details"
  Index = 3
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5370
  Top = 3375
  Width = 6765
  Height = 375
  TabIndex = 90
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
Begin Label Lbl
  Caption = "Tip"
  Index = 15
  ForeColor = &HC00000&
  Left = 9165
  Top = 1740
  Width = 300
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
Begin Label Label1
  Caption = "Payment Detail "
  Index = 2
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5340
  Top = 615
  Width = 6765
  Height = 375
  TabIndex = 87
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
Begin Label Lbl
  Caption = "Adult/Child"
  Index = 16
  ForeColor = &HC00000&
  Left = 240
  Top = 2670
  Width = 900
  Height = 225
  TabIndex = 86
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
  Caption = "Rate Code"
  Index = 14
  ForeColor = &HC00000&
  Left = 13590
  Top = 3585
  Width = 870
  Height = 225
  Visible = 0   'False
  TabIndex = 85
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
  Index = 12
  ForeColor = &HC00000&
  Left = 240
  Top = 2985
  Width = 930
  Height = 225
  TabIndex = 84
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
  Caption = "Room No"
  Index = 34
  ForeColor = &HC00000&
  Left = 240
  Top = 2355
  Width = 765
  Height = 225
  TabIndex = 83
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
  Caption = "Check In Date"
  Index = 26
  ForeColor = &HC00000&
  Left = 240
  Top = 1725
  Width = 1170
  Height = 225
  TabIndex = 82
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
  Left = 4035
  Top = 1710
  Width = 1590
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
  Caption = "Guest Name"
  Index = 11
  ForeColor = &HC00000&
  Left = 210
  Top = 3810
  Width = 1035
  Height = 225
  TabIndex = 80
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
  Index = 10
  ForeColor = &HC00000&
  Left = 210
  Top = 5115
  Width = 795
  Height = 225
  TabIndex = 79
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
  Index = 9
  ForeColor = &HC00000&
  Left = 210
  Top = 6375
  Width = 555
  Height = 225
  TabIndex = 78
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
  Caption = "Guest Folio No."
  Index = 6
  ForeColor = &HC00000&
  Left = 240
  Top = 1410
  Width = 1245
  Height = 225
  TabIndex = 77
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
  Caption = "Depature Date"
  Index = 5
  ForeColor = &HC00000&
  Left = 240
  Top = 2040
  Width = 1215
  Height = 225
  TabIndex = 76
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
  Index = 3
  ForeColor = &HC00000&
  Left = 210
  Top = 5490
  Width = 930
  Height = 225
  TabIndex = 75
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
  Index = 1
  ForeColor = &HC00000&
  Left = 210
  Top = 5775
  Width = 930
  Height = 225
  TabIndex = 74
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
  Left = 210
  Top = 6075
  Width = 930
  Height = 225
  TabIndex = 73
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
  Left = 210
  Top = 4095
  Width = 720
  Height = 225
  TabIndex = 72
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
Begin Label LblNature
  Caption = "."
  BackColor = &HFFC0C0&
  ForeColor = &H4080&
  Left = 11130
  Top = 1410
  Width = 1080
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
Begin Label LTxt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &H800000&
  Left = 8625
  Top = 6345
  Width = 1605
  Height = 285
  TabIndex = 33
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &H800000&
  Left = 8625
  Top = 7080
  Width = 1605
  Height = 285
  TabIndex = 31
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &H800000&
  Left = 8625
  Top = 6660
  Width = 1605
  Height = 285
  TabIndex = 30
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Total Amount"
  Index = 23
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7095
  Top = 6345
  Width = 1500
  Height = 285
  TabIndex = 29
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Shape Shape5
  BorderColor = &HC00000&
  Left = 7035
  Top = 6270
  Width = 3255
  Height = 1200
  BorderWidth = 2
  FillColor = &HC0FFC0&
End
Begin Label LblName
  Caption = "Paid Amount"
  Index = 24
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7095
  Top = 6660
  Width = 1500
  Height = 285
  TabIndex = 28
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Balance"
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7095
  Top = 7095
  Width = 1500
  Height = 285
  TabIndex = 27
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label Lbl
  Caption = "Vr. Date"
  Index = 8
  ForeColor = &HC00000&
  Left = 5400
  Top = 1140
  Width = 765
  Height = 240
  TabIndex = 26
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
  Caption = "."
  ForeColor = &H4080&
  Left = 4035
  Top = 2025
  Width = 1590
  Height = 240
  Visible = 0   'False
  TabIndex = 25
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
  Caption = "Amount"
  Index = 7
  ForeColor = &HC00000&
  Left = 5400
  Top = 1755
  Width = 735
  Height = 240
  TabIndex = 21
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
  Caption = "Reference"
  Index = 4
  ForeColor = &HC00000&
  Left = 5400
  Top = 2085
  Width = 975
  Height = 240
  TabIndex = 20
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
  Caption = "Charge/Payment"
  Index = 0
  ForeColor = &HC00000&
  Left = 5400
  Top = 1440
  Width = 1590
  Height = 240
  TabIndex = 19
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
  Caption = "Payment/Charges Details"
  Index = 0
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 150
  Top = 3375
  Width = 5100
  Height = 375
  TabIndex = 18
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
  Caption = "Room Details for Room No."
  Index = 1
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 150
  Top = 615
  Width = 5100
  Height = 375
  TabIndex = 17
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

Attribute VB_Name = "FdReSetlement"

Private global_188 As Integer
Private global_52 As Integer
Private global_148 As Long

Private Sub DGChrgPayment_UnknownEvent_9 'F8401C
  'Data Table: 533C28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F83ED7: Me.DGChrgPayment.Visible = False
  loc_F83EF6: If (Me.RecordCount > 0) Then
  loc_F83F35:   Set var_B4 = Me.Txt
  loc_F83F3B:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F83F43:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F83F76:   var_B0 = Me.Fields.Item("Name")
  loc_F83F95:   Set var_B4 = Me.Txt
  loc_F83F9B:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F83FA3:   var_B8.Text = CStr(var_B0.Value)
  loc_F83FB9: End If
  loc_F83FB9: Call Proc_167_42_F6D49C()
  loc_F83FDA: If (CBool(Me.FGPoint.Visible) = 0) Then
  loc_F83FEC:   Me.FGPoint.Visible = False
  loc_F83FF4: End If
  loc_F83FFF: Set var_A8 = Me.Txt
  loc_F84005: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4))
  loc_F8400D: var_B0.SetFocus
  loc_F84019: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_1F 'E9B210
  'Data Table: 533C28
  Dim var_A8 As Variant
  loc_E9B194: Set var_88 = Me.DGChrgPayment
  loc_E9B1BE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9B1C6: Set var_BC = Me.DGChrgPayment
  loc_E9B200: Proc_6_138_106D6F8(Me.DGChrgPayment, global_100, 0, Me.FGPoint)
  loc_E9B20E: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F550A0
  'Data Table: 533C28
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54F89: Set var_A8 = Me.DGMember
  loc_F54F8F: var_A8.Visible = False
  loc_F54FB1: If (Me.var_A8.RecordCount > 0) Then
  loc_F54FF3:   Set var_B4 = Me.Txt
  loc_F54FF9:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F55001:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F55037:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F55056:   Set var_B4 = Me.Txt
  loc_F5505C:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F55064:   var_B8.Text = CStr(var_B0.Value)
  loc_F5507A: End If
  loc_F55085: Set var_A8 = Me.Txt
  loc_F5508B: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27))
  loc_F55093: var_B0.SetFocus
  loc_F5509F: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F55640
  'Data Table: 533C28
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F55529: Set var_A8 = Me.DGCompany
  loc_F5552F: var_A8.Visible = False
  loc_F55551: If (Me.var_A8.RecordCount > 0) Then
  loc_F55593:   Set var_B4 = Me.Txt
  loc_F55599:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F555A1:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F555D7:   var_B0 = Me.Recordset15.Fields.Item("RoomNo")
  loc_F555F6:   Set var_B4 = Me.Txt
  loc_F555FC:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F55604:   var_B8.Text = CStr(var_B0.Value)
  loc_F5561A: End If
  loc_F55625: Set var_A8 = Me.Txt
  loc_F5562B: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19))
  loc_F55633: var_B0.SetFocus
  loc_F5563F: Exit Sub
End Sub

Private Sub btnsave_UnknownEvent_9 'DFF3A4
  'Data Table: 533C28
  loc_DFF39C: Call TopCtrl1_UnknownEvent_16()
  loc_DFF3A1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1520314
  'Data Table: 533C28
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_C4 As Variant
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_88 As Frame
  loc_151F3AE: Set var_88 = Me.Txt
  loc_151F3B4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_151F3C2: Proc_6_74_E226B0(var_8C)
  loc_151F3CE: Call Proc_167_42_F6D49C(var_8C)
  loc_151F3D6: var_92 = Index
  loc_151F3E1: If (var_92 = CInt(0)) Then
  loc_151F3FB:   If (Me.RecordCount > 0) Then
  loc_151F409:     Set var_8C = Me.FGPoint
  loc_151F421:     Proc_6_137_1193554(Me.DGRoomNo, global_96, Index)
  loc_151F42F:   End If
  loc_151F47D:   Set var_88 = Me.Txt
  loc_151F483:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F48B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151F4B1:   If (var_92 Or (Proc_6_38_E68A98(CVar(var_A0), var_8C) = vbNullString)) Then
  loc_151F4B4:     Exit Sub
  loc_151F4B5:   End If
  loc_151F4C2:   Set var_88 = Me.Txt
  loc_151F4C8:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F4D0:   var_A0 = var_8C.Text
  loc_151F4E2:   var_C4 = "RoomNo"
  loc_151F51D:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151F526:     Me.MoveFirst
  loc_151F549:     Set var_88 = Me.Txt
  loc_151F54F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_151F557:     0 = var_8C.Text
  loc_151F570:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151F585:   End If
  loc_151F588: Else
  loc_151F590:   If (var_92 = CInt(&H24)) Then
  loc_151F5AA:     If (Me.RecordCount > 0) Then
  loc_151F5B8:       Set var_8C = Me.FGPoint
  loc_151F5D0:       Proc_6_137_1193554(Me.DGBill, global_192)
  loc_151F5DE:     End If
  loc_151F62C:     Set var_88 = Me.Txt
  loc_151F632:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F63A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151F660:     If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_151F663:       Exit Sub
  loc_151F664:     End If
  loc_151F671:     Set var_88 = Me.Txt
  loc_151F677:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F67F:     var_A0 = var_8C.Text
  loc_151F691:     var_C4 = "Bill_no"
  loc_151F6CC:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151F6D5:       Me.MoveFirst
  loc_151F6F8:       Set var_88 = Me.Txt
  loc_151F6FE:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "BillNo ='")
  loc_151F706:       0 = var_8C.Text
  loc_151F71F:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151F734:     End If
  loc_151F737:   Else
  loc_151F73F:     If (var_92 = CInt(4)) Then
  loc_151F759:       If (Me.RecordCount > 0) Then
  loc_151F767:         Set var_8C = Me.FGPoint
  loc_151F77F:         Proc_6_137_1193554(Me.DGChrgPayment, global_100)
  loc_151F78D:       End If
  loc_151F7DB:       Set var_88 = Me.Txt
  loc_151F7E1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F7E9:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151F80F:       If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_151F812:         Exit Sub
  loc_151F813:       End If
  loc_151F820:       Set var_88 = Me.Txt
  loc_151F826:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F82E:       var_A0 = var_8C.Text
  loc_151F840:       var_C4 = "Name"
  loc_151F87B:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151F884:         Me.MoveFirst
  loc_151F8A7:         Set var_88 = Me.Txt
  loc_151F8AD:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151F8B5:         0 = var_8C.Text
  loc_151F8CE:         Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151F8E3:       End If
  loc_151F8E6:     Else
  loc_151F8EE:       If (var_92 = CInt(&H18)) Then
  loc_151F91C:         var_C4 = CVar((Me.FrSendRoom.Top + Me.FrSendRoom.Height)) 'Single
  loc_151F925:         Set var_90 = Me.DGRoom
  loc_151F92B:         var_90.Top = var_C4
  loc_151F947:         Set var_8C = Me.Txt
  loc_151F94D:         Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_90)
  loc_151F973:         var_C4 = CVar((Me.FrSendRoom.Left + var_90.Left)) 'Single
  loc_151F982:         Me.DGRoom.Left = var_C4
  loc_151F9A9:         If (Me.RecordCount > 0) Then
  loc_151F9B7:           Set var_8C = Me.FGPoint
  loc_151F9CF:           Proc_6_137_1193554(Me.DGRoom, global_112)
  loc_151F9DD:         End If
  loc_151FA2B:         Set var_88 = Me.Txt
  loc_151FA31:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151FA39:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151FA5F:         If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_151FA6F:           Set var_88 = Me.Txt
  loc_151FA75:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FA7D:           var_8C.Tag = vbNullString
  loc_151FA89:           Exit Sub
  loc_151FA8A:         End If
  loc_151FA97:         Set var_88 = Me.Txt
  loc_151FA9D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FAA5:         var_A0 = var_8C.Text
  loc_151FAB7:         var_C4 = "RoomNo"
  loc_151FAF2:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151FAFB:           Me.MoveFirst
  loc_151FB1E:           Set var_88 = Me.Txt
  loc_151FB24:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151FB2C:           0 = var_8C.Text
  loc_151FB45:           Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151FB5A:         End If
  loc_151FB5D:       Else
  loc_151FB65:         If (var_92 = CInt(&H17)) Then
  loc_151FB93:           var_C4 = CVar((Me.FrEmp.Top + Me.FrEmp.Height)) 'Single
  loc_151FB9C:           Set var_90 = Me.DGEmp
  loc_151FBA2:           var_90.Top = var_C4
  loc_151FBBE:           Set var_8C = Me.Txt
  loc_151FBC4:           Call 0.Method_Txt_GotFocus0 (CInt(&H17), var_90)
  loc_151FBEA:           var_C4 = CVar((Me.FrEmp.Left + var_90.Left)) 'Single
  loc_151FBF3:           Set var_C8 = Me.DGEmp
  loc_151FBF9:           var_C8.Left = var_C4
  loc_151FC23:           If (Me.var_C8.RecordCount > 0) Then
  loc_151FC31:             Set var_8C = Me.FGPoint
  loc_151FC4D:             Proc_6_137_1193554(Me.DGEmp, global_120)
  loc_151FC5B:           End If
  loc_151FCB2:           Set var_88 = Me.Txt
  loc_151FCB8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151FCC0:           ((global_120.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_151FCE6:           If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_151FCE9:             Exit Sub
  loc_151FCEA:           End If
  loc_151FCF7:           Set var_88 = Me.Txt
  loc_151FCFD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FD05:           var_A0 = var_8C.Text
  loc_151FD17:           var_C4 = "Name"
  loc_151FD55:           If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_151FD61:             Me.Recordset15.MoveFirst
  loc_151FD84:             Set var_88 = Me.Txt
  loc_151FD8A:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151FD92:             0 = var_8C.Text
  loc_151FDAE:             Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_151FDC3:           End If
  loc_151FDC6:         Else
  loc_151FDCE:           If (var_92 = CInt(&H19)) Then
  loc_151FDFC:             var_C4 = CVar((Me.FrComp.Top + Me.FrComp.Height)) 'Single
  loc_151FE05:             Set var_90 = Me.DGCompany
  loc_151FE0B:             var_90.Top = var_C4
  loc_151FE27:             Set var_8C = Me.Txt
  loc_151FE2D:             Call 0.Method_Txt_GotFocus0 (CInt(&H19), var_90)
  loc_151FE53:             var_C4 = CVar((Me.FrComp.Left + var_90.Left)) 'Single
  loc_151FE5C:             Set var_C8 = Me.DGCompany
  loc_151FE62:             var_C8.Left = var_C4
  loc_151FE8C:             If (Me.var_C8.RecordCount > 0) Then
  loc_151FE9A:               Set var_8C = Me.FGPoint
  loc_151FEB6:               Proc_6_137_1193554(Me.DGCompany, global_116)
  loc_151FEC4:             End If
  loc_151FF1B:             Set var_88 = Me.Txt
  loc_151FF21:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151FF29:             ((global_116.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_151FF4F:             If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_151FF52:               Exit Sub
  loc_151FF53:             End If
  loc_151FF60:             Set var_88 = Me.Txt
  loc_151FF66:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FF6E:             var_A0 = var_8C.Text
  loc_151FF80:             var_C4 = "Name"
  loc_151FFBE:             If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_151FFCA:               Me.Recordset15.MoveFirst
  loc_151FFED:               Set var_88 = Me.Txt
  loc_151FFF3:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151FFFB:               0 = var_8C.Text
  loc_1520017:               Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_152002C:             End If
  loc_152002F:           Else
  loc_1520037:             If (var_92 = CInt(&H27)) Then
  loc_1520065:               var_C4 = CVar((Me.FrMember.Top + Me.FrMember.Height)) 'Single
  loc_152006E:               Set var_90 = Me.DGMember
  loc_1520074:               var_90.Top = var_C4
  loc_1520090:               Set var_8C = Me.Txt
  loc_1520096:               Call 0.Method_Txt_GotFocus0 (CInt(&H27), var_90)
  loc_15200BC:               var_C4 = CVar((Me.FrMember.Left + var_90.Left)) 'Single
  loc_15200C5:               Set var_C8 = Me.DGMember
  loc_15200CB:               var_C8.Left = var_C4
  loc_15200F5:               If (Me.var_C8.RecordCount > 0) Then
  loc_1520103:                 Set var_8C = Me.FGPoint
  loc_152011F:                 Proc_6_137_1193554(Me.DGMember, global_124)
  loc_152012D:               End If
  loc_1520184:               Set var_88 = Me.Txt
  loc_152018A:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1520192:               ((global_124.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_15201B8:               If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_15201BB:                 Exit Sub
  loc_15201BC:               End If
  loc_15201C9:               Set var_88 = Me.Txt
  loc_15201CF:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15201D7:               var_A0 = var_8C.Text
  loc_15201E9:               var_C4 = "Name"
  loc_1520203:               var_C8 = Me.Recordset15.Fields.Item(var_C4)
  loc_1520227:               If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_1520233:                 Me.Recordset15.MoveFirst
  loc_1520256:                 Set var_88 = Me.Txt
  loc_152025C:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1520264:                 0 = var_8C.Text
  loc_1520280:                 Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_1520295:               End If
  loc_1520295:             End If
  loc_1520295:           End If
  loc_1520295:         End If
  loc_1520295:       End If
  loc_1520295:     End If
  loc_1520295:   End If
  loc_1520295: End If
  loc_15202A4: Set var_88 = Me.Txt
  loc_15202AA: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15202B2: var_8C.SelStart = 0
  loc_15202CB: Set var_88 = Me.Txt
  loc_15202D1: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15202EC: Set var_90 = Me.Txt
  loc_15202F2: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_15202FA: var_C8.SelLength = Len(var_8C.Text)
  loc_152030D: Call Proc_167_42_F6D49C()
  loc_1520312: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '151857C
  'Data Table: 533C28
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_BC As String
  loc_1517667: var_88 = Shift
  loc_1517674: If (CLng(Shift) = &H1B) Then
  loc_1517677:   Call Proc_167_42_F6D49C(var_88)
  loc_151767C:   Exit Sub
  loc_151767D: End If
  loc_1517680: var_8A = KeyCode
  loc_151768B: If (var_8A = CInt(0)) Then
  loc_15176A6:   Set var_A4 = Nothing
  loc_15176B1:   Set var_A0 = Nothing
  loc_15176E3:   Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_96, Shift, 0)
  loc_1517750:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1517776:     Proc_6_138_106D6F8(Me.DGRoomNo, global_96, KeyCode, Me.FGPoint, 1)
  loc_1517784:   End If
  loc_1517787: Else
  loc_151778F:   If (var_8A = CInt(&H24)) Then
  loc_15177B5:     Set var_A0 = Nothing
  loc_15177E7:     Proc_6_69_134A198(Me.DGBill, Me.Txt, CInt(&H24), global_192, Shift, 0, 0)
  loc_1517854:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_151785B:       Set var_A0 = Me.DGBill
  loc_151787A:       Proc_6_138_106D6F8(var_A0, global_192, KeyCode, Me.FGPoint, var_A0, Nothing)
  loc_1517888:     End If
  loc_151788B:   Else
  loc_1517893:     If (var_8A = CInt(4)) Then
  loc_15178AE:       Set var_A4 = Nothing
  loc_15178EB:       Proc_6_69_134A198(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift, 0, 1, Nothing)
  loc_1517958:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_151795F:         Set var_A0 = Me.DGChrgPayment
  loc_1517966:         Set var_94 = Me.FGPoint
  loc_151797E:         Proc_6_138_106D6F8(var_A0, global_100, KeyCode, var_94, var_A4, 0)
  loc_151798C:       End If
  loc_151798F:     Else
  loc_1517997:       If (var_8A = CInt(6)) Then
  loc_15179A4:         Set var_90 = Me.Txt
  loc_15179AA:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, var_A0)
  loc_15179C5:         Proc_6_41_FA0BA4(var_94, Shift, 8, 2)
  loc_15179D4:       Else
  loc_15179DC:         If (var_8A = CInt(&H23)) Then
  loc_15179E9:           Set var_90 = Me.Txt
  loc_15179EF:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_A4)
  loc_1517A0A:           Proc_6_41_FA0BA4(var_94, Shift, 6)
  loc_1517A19:         Else
  loc_1517A21:           If (var_8A = CInt(&H18)) Then
  loc_1517A3C:             Set var_A4 = Nothing
  loc_1517A47:             Set var_A0 = Nothing
  loc_1517A79:             Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&H18), global_112, Shift, 0, 1)
  loc_1517AE6:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1517AED:               Set var_A0 = Me.DGRoom
  loc_1517B0C:               Proc_6_138_106D6F8(var_A0, global_112, KeyCode, Me.FGPoint, var_A0)
  loc_1517B1A:             End If
  loc_1517B1D:           Else
  loc_1517B25:             If (var_8A = CInt(&H17)) Then
  loc_1517B81:               Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift, 0, 1, Nothing)
  loc_1517BF1:               If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1517C1B:                 Proc_6_138_106D6F8(Me.DGEmp, global_120, KeyCode, Me.FGPoint, Nothing, 0)
  loc_1517C29:               End If
  loc_1517C2C:             Else
  loc_1517C34:               If (var_8A = CInt(&H19)) Then
  loc_1517C4F:                 Set var_A4 = Nothing
  loc_1517C90:                 Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, 0, 1, Nothing)
  loc_1517D00:                 If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1517D0E:                   Set var_94 = Me.FGPoint
  loc_1517D2A:                   Proc_6_138_106D6F8(Me.DGCompany, global_116, KeyCode, var_94, var_A4, 0)
  loc_1517D38:                 End If
  loc_1517D3B:               Else
  loc_1517D43:                 If (var_8A = CInt(5)) Then
  loc_1517D50:                   If (CLng(Shift) = &H2D) Then
  loc_1517D60:                     Set var_90 = Me.Txt
  loc_1517D66:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC, var_A4)
  loc_1517D6E:                     0 = var_94.Text
  loc_1517D79:                     Call Proc_167_51_EE26B8(var_B8, var_BC, 2)
  loc_1517D8F:                     Set var_A0 = Me.Txt
  loc_1517D95:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_1517D9D:                     var_A4.Text = 0 & var_B8
  loc_1517DC3:                     Set var_90 = Me.Txt
  loc_1517DC9:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1517DD1:                     var_B8 = var_94.Text
  loc_1517DE4:                     Set var_A0 = Me.Txt
  loc_1517DEA:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_1517DF2:                     var_A4.SelStart = Len(var_B8)
  loc_1517E05:                     Exit Sub
  loc_1517E06:                   End If
  loc_1517E09:                 Else
  loc_1517E11:                   If (var_8A = CInt(&H25)) Then
  loc_1517E1E:                     Set var_90 = Me.Txt
  loc_1517E24:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1517E3F:                     Proc_6_41_FA0BA4(var_94, Shift, 8)
  loc_1517E4E:                   Else
  loc_1517E56:                     If (var_8A = CInt(&H27)) Then
  loc_1517E71:                       Set var_A4 = Nothing
  loc_1517E7C:                       Set var_A0 = Nothing
  loc_1517EB2:                       Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, 0)
  loc_1517F22:                       If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1517F4C:                         Proc_6_138_106D6F8(Me.DGMember, global_124, KeyCode, Me.FGPoint, 1)
  loc_1517F5A:                       End If
  loc_1517F5A:                     End If
  loc_1517F5A:                   End If
  loc_1517F5A:                 End If
  loc_1517F5A:               End If
  loc_1517F5A:             End If
  loc_1517F5A:           End If
  loc_1517F5A:         End If
  loc_1517F5A:       End If
  loc_1517F5A:     End If
  loc_1517F5A:   End If
  loc_1517F5A: End If
  loc_1517F91: var_F0 = Me.DGCompany.Visible
  loc_1517FA8: var_100 = Me.DGEmp.Visible
  loc_151801C: If (((((((CBool(Me.DGMember.Visible) = 0) And (CBool(Me.DGBill.Visible) = 0)) And (CBool(var_F0) = 0)) And (CBool(var_100) = 0)) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(Me.DGRoomNo.Visible) = 0)) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_1518053:   Set var_94 = Me.FrComp
  loc_151806C:   Set var_A0 = Me.FrChqDet
  loc_1518085:   Set var_A4 = Me.FrSendRoom
  loc_15180E2:   If ((((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((((((Me.FrCCDet.Visible = 0) And (var_94.Visible = 0)) And (var_A0.Visible = 0)) And (var_A4.Visible = 0)) And (Me.FrEmp.Visible = 0)) And (Me.FrMember.Visible = 0))) And (KeyCode = CInt(5))) Then
  loc_15180EB:     Call Txt_Validate(KeyCode)
  loc_15180F6:     If (var_86 = &HFF) Then
  loc_15180F9:       Exit Sub
  loc_15180FA:     End If
  loc_15180FA:     Call Proc_167_47_1579264(var_86, var_A0, var_A4)
  loc_1518108:     If (global_188 = 0) Then
  loc_1518116:       Set var_90 = Me.Txt
  loc_151811C:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, 0)
  loc_1518124:       var_94.SetFocus
  loc_1518130:     End If
  loc_1518130:     Exit Sub
  loc_1518131:   End If
  loc_151814F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H16))) Then
  loc_1518158:     Call Txt_Validate(KeyCode)
  loc_151816C:     Me.FGPoint.Visible = False
  loc_151817A:     If (var_86 = &HFF) Then
  loc_151817D:       Exit Sub
  loc_151817E:     End If
  loc_15181B5:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_15181B8:       Call Proc_167_47_1579264(var_86, 0)
  loc_15181BD:     End If
  loc_15181C6:     If (global_188 = 0) Then
  loc_15181D4:       Set var_90 = Me.Txt
  loc_15181DA:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_15181E2:       var_94.SetFocus
  loc_15181EE:     End If
  loc_15181EE:     Exit Sub
  loc_15181EF:   End If
  loc_151820D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H18))) Then
  loc_1518216:     Call Txt_Validate(KeyCode)
  loc_151822A:     Me.FGPoint.Visible = False
  loc_1518238:     If (var_86 = &HFF) Then
  loc_151823B:       Exit Sub
  loc_151823C:     End If
  loc_1518273:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_1518276:       Call Proc_167_47_1579264(var_86)
  loc_151827B:     End If
  loc_1518284:     If (global_188 = 0) Then
  loc_1518292:       Set var_90 = Me.Txt
  loc_1518298:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_15182A0:       var_94.SetFocus
  loc_15182AC:     End If
  loc_15182AC:     Exit Sub
  loc_15182AD:   End If
  loc_15182CB:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_15182D4:     Call Txt_Validate(KeyCode)
  loc_15182DF:     If (var_86 = &HFF) Then
  loc_15182E2:       Exit Sub
  loc_15182E3:     End If
  loc_151831A:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_151831D:       Call Proc_167_47_1579264(var_86)
  loc_1518322:     End If
  loc_151832B:     If (global_188 = 0) Then
  loc_1518339:       Set var_90 = Me.Txt
  loc_151833F:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1518347:       var_94.SetFocus
  loc_1518353:     End If
  loc_1518353:     Exit Sub
  loc_1518354:   End If
  loc_151837B:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&H19)) Or (KeyCode = CInt(&H27)))) Then
  loc_1518384:     Call Txt_Validate(KeyCode)
  loc_15183A9:     Set var_90 = Me.Txt
  loc_15183AF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_B8, 0)
  loc_15183B7:     (var_86 = &HFF) = var_94.Tag
  loc_15183E0:     If (var_8A Or (Proc_96_1_F8C534(Proc_6_38_E68A98(CVar(var_B8), var_86)) = 0)) Then
  loc_15183E9:       Call 0.Method_arg_50 (var_B8)
  loc_151840A:       MsgBox("Credit Not Allowed to this company.", &H10, CVar(var_B8), var_F0, var_100)
  loc_151841A:       Exit Sub
  loc_151841B:     End If
  loc_1518421:     If (var_86 = &HFF) Then
  loc_1518424:       Exit Sub
  loc_1518425:     End If
  loc_151845C:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_151845F:       Call Proc_167_47_1579264()
  loc_1518464:     End If
  loc_151846D:     If (global_188 = 0) Then
  loc_151847B:       Set var_90 = Me.Txt
  loc_1518481:       Call 0.Method_Txt_KeyDown0 (CInt(4))
  loc_1518489:       var_94.SetFocus
  loc_1518495:     End If
  loc_1518495:     Exit Sub
  loc_1518496:   End If
  loc_15184B4:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H25))) Then
  loc_15184BD:     Call Txt_Validate(KeyCode)
  loc_15184C8:     If (var_86 = &HFF) Then
  loc_15184CB:       Exit Sub
  loc_15184CC:     End If
  loc_1518503:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_1518506:       Call Proc_167_47_1579264(var_86)
  loc_151850B:     End If
  loc_1518514:     If (global_188 = 0) Then
  loc_1518522:       Set var_90 = Me.Txt
  loc_1518528:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1518530:       var_94.SetFocus
  loc_151853C:     End If
  loc_151853C:     Exit Sub
  loc_151853D:   End If
  loc_1518552:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_151855B:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1518560:   End If
  loc_151856A:   If (CLng(Shift) = &H26) Then
  loc_1518573:     Proc_6_76_E52838(Shift, arg_14)
  loc_1518578:   End If
  loc_1518578: End If
  loc_1518578: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1231514
  'Data Table: 533C28
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim arg_6FFF As Integer
  loc_1230FEB: Proc_6_58_E054C0(arg_10)
  loc_1230FF6: Proc_6_133_E7EF78(var_94)
  loc_1230FFF: arg_10 = CInt(var_94)
  loc_1231008: var_96 = KeyAscii
  loc_1231013: If (var_96 = CInt(0)) Then
  loc_1231032:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_123105F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "RoomNo")
  loc_1231091:     Proc_6_138_106D6F8(Me.DGRoomNo, global_96, KeyAscii, Me.FGPoint)
  loc_123109F:   End If
  loc_12310A2: Else
  loc_12310AA:   If (var_96 = CInt(&H24)) Then
  loc_12310C9:     If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_12310F6:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_192, arg_10, "Bill_No")
  loc_1231128:       Proc_6_138_106D6F8(Me.DGBill, global_192, KeyAscii, Me.FGPoint, 0)
  loc_1231136:     End If
  loc_1231139:   Else
  loc_1231141:     If (var_96 = CInt(4)) Then
  loc_1231160:       If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_123118D:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_100, arg_10, "Name")
  loc_12311BF:         Proc_6_138_106D6F8(Me.DGChrgPayment, global_100, KeyAscii, Me.FGPoint, 0)
  loc_12311CD:       End If
  loc_12311D0:     Else
  loc_12311D8:       If (var_96 = CInt(&H18)) Then
  loc_12311F7:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1231224:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_112, arg_10, "RoomNo")
  loc_123123E:           Set var_A8 = Me.FGPoint
  loc_1231256:           Proc_6_138_106D6F8(Me.DGRoom, global_112, KeyAscii, var_A8, 0)
  loc_1231264:         End If
  loc_1231267:       Else
  loc_123126F:         If (var_96 = CInt(6)) Then
  loc_123127C:           Set var_9C = Me.Txt
  loc_1231282:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_123129D:           Proc_6_42_129A86C(var_A8, arg_10, 8, 2)
  loc_12312AC:         Else
  loc_12312B4:           If (var_96 = CInt(&H23)) Then
  loc_12312C1:             Set var_9C = Me.Txt
  loc_12312C7:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_12312E2:             Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_12312F1:           Else
  loc_12312F9:             If (var_96 = CInt(&H17)) Then
  loc_1231318:               If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1231349:                 Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_123137F:                 Proc_6_138_106D6F8(Me.DGEmp, global_120, KeyAscii, Me.FGPoint)
  loc_123138D:               End If
  loc_1231390:             Else
  loc_1231398:               If (var_96 = CInt(&H19)) Then
  loc_12313B7:                 If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_12313E8:                   Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_116, arg_10, "Name")
  loc_123141E:                   Proc_6_138_106D6F8(Me.DGCompany, global_116, KeyAscii, Me.FGPoint, 0)
  loc_123142C:                 End If
  loc_123142F:               Else
  loc_1231437:                 If (var_96 = CInt(&H27)) Then
  loc_1231456:                   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1231487:                     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_124, arg_10, "Name")
  loc_12314A1:                     Set var_A8 = Me.FGPoint
  loc_12314BD:                     Proc_6_138_106D6F8(Me.DGMember, global_124, KeyAscii, var_A8, 0)
  loc_12314CB:                   End If
  loc_12314CE:                 Else
  loc_12314D6:                   If (var_96 = CInt(&H25)) Then
  loc_12314E3:                     Set var_9C = Me.Txt
  loc_12314E9:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1231504:                     Proc_6_42_129A86C(var_A8, arg_10, 8, 0)
  loc_1231510:                   End If
  loc_1231510:                 End If
  loc_1231510:               End If
  loc_1231510:             End If
  loc_1231510:           End If
  loc_1231510:         End If
  loc_1231510:       End If
  loc_1231510:     End If
  loc_1231510:   End If
  loc_1231510: End If
  loc_1231510: Exit Sub
  loc_1231511: arg_6FFF = 2
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1119278
  'Data Table: 533C28
  Dim var_86 As Integer
  loc_1118F1F: var_86 = KeyCode
  loc_1118F2A: If (var_86 = CInt(0)) Then
  loc_1118F49:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_1118F5D:     var_A8 = "RoomNO"
  loc_1118F85:     Proc_6_68_129FB34(Me.DGRoomNo, Me.Txt, CInt(0), global_96)
  loc_1118F98:   End If
  loc_1118F9B: Else
  loc_1118FA3:   If (var_86 = CInt(&H24)) Then
  loc_1118FC2:     If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_1118FD6:       var_A8 = "Bill_No"
  loc_1118FFE:       Proc_6_68_129FB34(Me.DGBill, Me.Txt, CInt(&H24), global_192, Shift)
  loc_1119011:     End If
  loc_1119014:   Else
  loc_111901C:     If (var_86 = CInt(4)) Then
  loc_111903B:       If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_111904F:         var_A8 = "Name"
  loc_1119077:         Proc_6_68_129FB34(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift)
  loc_111908A:       End If
  loc_111908D:     Else
  loc_1119095:       If (var_86 = CInt(&H17)) Then
  loc_11190B4:         If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_11190F4:           Proc_6_68_129FB34(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift, "Name")
  loc_1119107:         End If
  loc_111910A:       Else
  loc_1119112:         If (var_86 = CInt(&H18)) Then
  loc_1119131:           If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1119169:             Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_112, Shift, "RoomNo")
  loc_111917C:           End If
  loc_111917F:         Else
  loc_1119187:           If (var_86 = CInt(&H19)) Then
  loc_11191A6:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_11191E6:               Proc_6_68_129FB34(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, "Name")
  loc_11191F9:             End If
  loc_11191FC:           Else
  loc_1119204:             If (var_86 = CInt(&H27)) Then
  loc_1119223:               If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1119263:                 Proc_6_68_129FB34(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, "Name")
  loc_1119276:               End If
  loc_1119276:             End If
  loc_1119276:           End If
  loc_1119276:         End If
  loc_1119276:       End If
  loc_1119276:     End If
  loc_1119276:   End If
  loc_1119276: End If
  loc_1119276: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E3A4
  'Data Table: 533C28
  loc_E4E382: Set var_88 = Me.Txt
  loc_E4E388: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E396: Proc_6_73_E22704(var_8C)
  loc_E4E3A2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18EEDEC
  'Data Table: 533C28
  Dim var_DA As Integer
  Dim var_E4 As Variant
  Dim var_EC As String
  Dim Me As Variant
  Dim var_100 As String
  Dim var_E0 As Variant
  Dim var_E8 As String
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_164 As String
  Dim var_168 As Variant
  Dim var_18C As Variant
  Dim var_1A4 As String
  Dim var_1B0 As String
  Dim var_1AC As TextBox
  Dim var_160 As Variant
  Dim unk_533C53 As Connection15
  Dim var_D8 As Recordset15
  Dim arg_10 As Integer
  Dim var_1C0 As Variant
  Dim var_106 As Integer
  loc_18EC37F: var_DA = Cancel
  loc_18EC38A: If (var_DA = CInt(0)) Then
  loc_18EC399:   If (global_148 = 1) Then
  loc_18EC3AA:     Set var_E0 = Me.Txt
  loc_18EC3B0:     Call 0.Method_Txt_Validate0 (CInt(0), var_E4)
  loc_18EC3B8:     var_E8 = var_E4.Text
  loc_18EC3CF:     If (var_E8 <> vbNullString) Then
  loc_18EC3F1:       Set var_E0 = Me.Txt
  loc_18EC3F7:       Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8, "roomNo='")
  loc_18EC3FF:       0 = var_E4.Text
  loc_18EC418:       Me.Find 1 & var_E8 & "'", var_100, var_DA
  loc_18EC42D:     End If
  loc_18EC42D:   End If
  loc_18EC42D:   Call Proc_167_46_121BA28()
  loc_18EC480:   Set var_E0 = Me.Txt
  loc_18EC486:   Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EC4A6:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_E4.Text = vbNullString)) Then
  loc_18EC4B6:     Set var_E0 = Me.Txt
  loc_18EC4BC:     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EC4C4:     var_E4.Tag = vbNullString
  loc_18EC4D0:     Exit Sub
  loc_18EC4D1:   End If
  loc_18EC50C:   Set var_10C = Me.Txt
  loc_18EC512:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EC51A:   var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_18EC56B:   Set var_10C = Me.Txt
  loc_18EC571:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EC579:   var_110.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_18EC5C8:   Set var_10C = Me.Txt
  loc_18EC5CE:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18EC5D6:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_18EC623:   Set var_10C = Me.Txt
  loc_18EC629:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18EC631:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")))
  loc_18EC65F:   var_E4 = Me.Fields.Item("ChkInDate")
  loc_18EC67E:   Set var_10C = Me.Txt
  loc_18EC684:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_18EC68C:   var_110.Text = Proc_6_38_E68A98(CVar(var_E4))
  loc_18EC6AB:   Set var_E0 = Me.Txt
  loc_18EC6B1:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18EC6EB:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_E4), "DDDD"))
  loc_18EC756:   Set var_10C = Me.Txt
  loc_18EC75C:   Call 0.Method_Txt_Validate0 (CInt(2), var_110, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18EC764:   var_110.Text = 1
  loc_18EC7B8:   var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_18EC7D5:   Set var_10C = Me.Txt
  loc_18EC7DB:   Call 0.Method_Txt_Validate0 (CInt(3), var_110)
  loc_18EC7E3:   var_110.Text = CStr(Right(var_130, 2))
  loc_18EC83A:   Set var_10C = Me.Txt
  loc_18EC840:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18EC848:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestCode")))
  loc_18EC895:   Set var_10C = Me.Txt
  loc_18EC89B:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18EC8A3:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestName")))
  loc_18EC8F0:   Set var_10C = Me.Txt
  loc_18EC8F6:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18EC8FE:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_18EC94B:   Set var_10C = Me.Txt
  loc_18EC951:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18EC959:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_18EC996:   Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item("RoomRate")))
  loc_18EC9AD:   Set var_10C = Me.Txt
  loc_18EC9B3:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_110)
  loc_18EC9BB:   var_110.Text = CStr(var_130)
  loc_18ECA0C:   Set var_10C = Me.Txt
  loc_18ECA12:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_110)
  loc_18ECA1A:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_18ECA67:   Set var_10C = Me.Txt
  loc_18ECA6D:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18ECA75:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18ECAC2:   Set var_10C = Me.Txt
  loc_18ECAC8:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18ECAD0:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_18ECB1D:   Set var_10C = Me.Txt
  loc_18ECB23:   Call 0.Method_Txt_Validate0 (CInt(&H26), var_110)
  loc_18ECB2B:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanCode")))
  loc_18ECB45:   global_136 = "RO"
  loc_18ECB7A:   global_132 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18ECBC0:   Set var_10C = Me.Txt
  loc_18ECBC6:   Call 0.Method_Txt_Validate0 (CInt(9), var_110)
  loc_18ECBCE:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_18ECC0B:   Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item("OldAdult")))
  loc_18ECC22:   Set var_10C = Me.Txt
  loc_18ECC28:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_110)
  loc_18ECC30:   var_110.Text = CStr(var_130)
  loc_18ECC62:   var_E4 = Me.Fields.Item("OldChild")
  loc_18ECC71:   Proc_6_39_E7C810(var_130, CVar(var_E4))
  loc_18ECC88:   Set var_10C = Me.Txt
  loc_18ECC8E:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_110)
  loc_18ECC96:   var_110.Text = CStr(var_130)
  loc_18ECCC1:   Set var_E0 = Me.Txt
  loc_18ECCC7:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_E4)
  loc_18ECCCF:   var_E4.Text = CStr(MemVar_1F920EC)
  loc_18ECD17:   Set var_10C = Me.Txt
  loc_18ECD1D:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_110)
  loc_18ECD25:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add1")))
  loc_18ECD72:   Set var_10C = Me.Txt
  loc_18ECD78:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_110)
  loc_18ECD80:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add2")))
  loc_18ECDAE:   var_E4 = Me.Fields.Item("CityName")
  loc_18ECDEE:   var_110 = Me.Fields.Item("StateName")
  loc_18ECE52:   var_1B0 = var_E4 & Proc_6_38_E68A98(Trim(CVar(var_110)), Proc_6_38_E68A98(Trim(CVar(var_E4))) & ",") & "," & Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("CountryName"))))
  loc_18ECE60:   Set var_1A8 = Me.Txt
  loc_18ECE66:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1AC)
  loc_18ECE6E:   var_1AC.Text = var_1B0
  loc_18ECED9:   Set var_10C = Me.Txt
  loc_18ECEDF:   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_110)
  loc_18ECEE7:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_18ECF4E:   Set var_10C = Me.Txt
  loc_18ECF54:   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_110)
  loc_18ECF5C:   var_110.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18ECFCD:   Set var_10C = Me.Txt
  loc_18ECFD3:   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_110)
  loc_18ECFDB:   var_110.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18ED032:   Set var_10C = Me.Txt
  loc_18ED038:   Call 0.Method_Txt_Validate0 (CInt(&H20), var_110)
  loc_18ED040:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_18ED08D:   Set var_10C = Me.Txt
  loc_18ED093:   Call 0.Method_Txt_Validate0 (CInt(&H21), var_110)
  loc_18ED09B:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_18ED0C9:   var_E4 = Me.Fields.Item("Comments3")
  loc_18ED0DA:   var_E8 = Proc_6_38_E68A98(CVar(var_E4))
  loc_18ED0E8:   Set var_10C = Me.Txt
  loc_18ED0EE:   Call 0.Method_Txt_Validate0 (CInt(&H22), var_110)
  loc_18ED0F6:   var_110.Text = var_E8
  loc_18ED144:   Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_18ED15A: Else
  loc_18ED162:   If (var_DA = CInt(&H24)) Then
  loc_18ED17C:     If (Me.RecordCount <= 0) Then
  loc_18ED17F:       Exit Sub
  loc_18ED180:     End If
  loc_18ED18B:     Me.Requery -1
  loc_18ED1A7:     If (Me.RecordCount > 0) Then
  loc_18ED1B0:       Me.MoveFirst
  loc_18ED1B5:     End If
  loc_18ED1C3:     Set var_E0 = Me.Txt
  loc_18ED1C9:     Call 0.Method_Txt_Validate0 (CInt(&H24), var_E4, var_E8)
  loc_18ED1D1:     1 = var_E4.Text
  loc_18ED1E8:     If (var_E8 <> vbNullString) Then
  loc_18ED242:       Me.Find CStr("Docid='" & Me.Fields.Item("FolioNoDocid").Value & "'"), 0, 1
  loc_18ED25A:     End If
  loc_18ED274:     var_E4 = Me.Fields.Item("SettleDate")
  loc_18ED2A0:     var_E8 = CStr(Format(CVar(var_E4), "dd/MMM/yyyy"))
  loc_18ED2AF:     Set var_10C = Me.Txt
  loc_18ED2B5:     Call 0.Method_Txt_Validate0 (CInt(&H11), var_110, var_E8, 1)
  loc_18ED2BD:     var_110.Text = 1
  loc_18ED2D7:     Call Proc_167_46_121BA28(var_1C0)
  loc_18ED32A:     Set var_E0 = Me.Txt
  loc_18ED330:     Call 0.Method_Txt_Validate0 (Cancel, var_E4, var_E8)
  loc_18ED338:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_E4.Text
  loc_18ED350:     If (1 Or (var_E8 = vbNullString)) Then
  loc_18ED360:       Set var_E0 = Me.Txt
  loc_18ED366:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18ED36E:       var_E4.Tag = vbNullString
  loc_18ED37A:       Exit Sub
  loc_18ED37B:     End If
  loc_18ED3B6:     Set var_10C = Me.Txt
  loc_18ED3BC:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18ED3C4:     var_110.Text = CStr(Me.Fields.Item("Bill_no").Value)
  loc_18ED415:     Set var_10C = Me.Txt
  loc_18ED41B:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18ED423:     var_110.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_18ED475:     Set var_10C = Me.Txt
  loc_18ED47B:     Call 0.Method_Txt_Validate0 (CInt(0), var_110)
  loc_18ED483:     var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_18ED4D5:     Set var_10C = Me.Txt
  loc_18ED4DB:     Call 0.Method_Txt_Validate0 (CInt(0), var_110)
  loc_18ED4E3:     var_110.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_18ED532:     Set var_10C = Me.Txt
  loc_18ED538:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18ED540:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_18ED58D:     Set var_10C = Me.Txt
  loc_18ED593:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18ED59B:     var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")))
  loc_18ED5C9:     var_E4 = Me.Fields.Item("ChkInDate")
  loc_18ED5E8:     Set var_10C = Me.Txt
  loc_18ED5EE:     Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_18ED5F6:     var_110.Text = Proc_6_38_E68A98(CVar(var_E4))
  loc_18ED615:     Set var_E0 = Me.Txt
  loc_18ED61B:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18ED655:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_E4), "DDDD"))
  loc_18ED6C0:     Set var_10C = Me.Txt
  loc_18ED6C6:     Call 0.Method_Txt_Validate0 (CInt(2), var_110, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18ED6CE:     var_110.Text = 1
  loc_18ED722:     var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_18ED73F:     Set var_10C = Me.Txt
  loc_18ED745:     Call 0.Method_Txt_Validate0 (CInt(3), var_110)
  loc_18ED74D:     var_110.Text = CStr(Right(var_130, 2))
  loc_18ED7A4:     Set var_10C = Me.Txt
  loc_18ED7AA:     Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18ED7B2:     var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestCode")))
  loc_18ED7FF:     Set var_10C = Me.Txt
  loc_18ED805:     Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18ED80D:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestName")))
  loc_18ED85A:     Set var_10C = Me.Txt
  loc_18ED860:     Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18ED868:     var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_18ED8B5:     Set var_10C = Me.Txt
  loc_18ED8BB:     Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18ED8C3:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_18ED900:     Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item("RoomRate")))
  loc_18ED917:     Set var_10C = Me.Txt
  loc_18ED91D:     Call 0.Method_Txt_Validate0 (CInt(&HF), var_110)
  loc_18ED925:     var_110.Text = CStr(var_130)
  loc_18ED976:     Set var_10C = Me.Txt
  loc_18ED97C:     Call 0.Method_Txt_Validate0 (CInt(&HE), var_110)
  loc_18ED984:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_18ED9D1:     Set var_10C = Me.Txt
  loc_18ED9D7:     Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18ED9DF:     var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18EDA2C:     Set var_10C = Me.Txt
  loc_18EDA32:     Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18EDA3A:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_18EDA87:     Set var_10C = Me.Txt
  loc_18EDA8D:     Call 0.Method_Txt_Validate0 (CInt(&H26), var_110)
  loc_18EDA95:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanCode")))
  loc_18EDAAF:     global_136 = "RO"
  loc_18EDAE4:     global_132 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18EDB2A:     Set var_10C = Me.Txt
  loc_18EDB30:     Call 0.Method_Txt_Validate0 (CInt(9), var_110)
  loc_18EDB38:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_18EDB75:     Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item("OldAdult")))
  loc_18EDB8C:     Set var_10C = Me.Txt
  loc_18EDB92:     Call 0.Method_Txt_Validate0 (CInt(&HC), var_110)
  loc_18EDB9A:     var_110.Text = CStr(var_130)
  loc_18EDBDB:     Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item("OldChild")))
  loc_18EDBF2:     Set var_10C = Me.Txt
  loc_18EDBF8:     Call 0.Method_Txt_Validate0 (CInt(&HD), var_110)
  loc_18EDC00:     var_110.Text = CStr(var_130)
  loc_18EDC51:     Set var_10C = Me.Txt
  loc_18EDC57:     Call 0.Method_Txt_Validate0 (CInt(&H1A), var_110)
  loc_18EDC5F:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add1")))
  loc_18EDCAC:     Set var_10C = Me.Txt
  loc_18EDCB2:     Call 0.Method_Txt_Validate0 (CInt(&H1B), var_110)
  loc_18EDCBA:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add2")))
  loc_18EDCE8:     var_E4 = Me.Fields.Item("CityName")
  loc_18EDD28:     var_110 = Me.Fields.Item("StateName")
  loc_18EDD64:     var_168 = Me.Fields
  loc_18EDD8C:     var_1B0 = var_E4 & Proc_6_38_E68A98(Trim(CVar(var_110)), Proc_6_38_E68A98(Trim(CVar(var_E4))) & ",") & "," & Proc_6_38_E68A98(Trim(CVar(var_168.Item("CountryName"))))
  loc_18EDD9A:     Set var_1A8 = Me.Txt
  loc_18EDDA0:     Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1AC)
  loc_18EDDA8:     var_1AC.Text = var_1B0
  loc_18EDE13:     Set var_10C = Me.Txt
  loc_18EDE19:     Call 0.Method_Txt_Validate0 (CInt(&H1F), var_110)
  loc_18EDE21:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_18EDE88:     Set var_10C = Me.Txt
  loc_18EDE8E:     Call 0.Method_Txt_Validate0 (CInt(&H1E), var_110)
  loc_18EDE96:     var_110.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18EDEDF:     var_EC = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))
  loc_18EDEEA:     var_130 = CVar(var_EC) 'String
  loc_18EDF07:     Set var_10C = Me.Txt
  loc_18EDF0D:     Call 0.Method_Txt_Validate0 (CInt(&H1D), var_110)
  loc_18EDF15:     var_110.Text = CStr(Right(var_130, 2))
  loc_18EDF6C:     Set var_10C = Me.Txt
  loc_18EDF72:     Call 0.Method_Txt_Validate0 (CInt(&H20), var_110)
  loc_18EDF7A:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_18EDFC7:     Set var_10C = Me.Txt
  loc_18EDFCD:     Call 0.Method_Txt_Validate0 (CInt(&H21), var_110)
  loc_18EDFD5:     var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_18EE003:     var_E4 = Me.Fields.Item("Comments3")
  loc_18EE022:     Set var_10C = Me.Txt
  loc_18EE028:     Call 0.Method_Txt_Validate0 (CInt(&H22), var_110)
  loc_18EE030:     var_110.Text = Proc_6_38_E68A98(CVar(var_E4))
  loc_18EE058:     var_E8 = "Select Sum(AmtDr) as DrAmt,Sum(AmtCr) as CrAmt from paycharge where IsNull(ContraDocid,'')='' And ((Modeset <> 'S' or IsNull(Modeset,'')='') Or (Modeset='S' and PayCode='" & MemVar_1F92078
  loc_18EE070:     Set var_E0 = Me.Txt
  loc_18EE076:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_E4, var_EC, var_E8 & "ROFF')) and folioNoDocid='")
  loc_18EE07E:     var_120 = var_E4.Tag
  loc_18EE087:     var_164 = -1 & var_EC
  loc_18EE095:     var_1A4 = var_E4 & Proc_6_38_E68A98(Trim(CVar(var_110)), Proc_6_38_E68A98(Trim(CVar(var_E4))) & ",") & "' and Logsite_code='" & MemVar_1F92078
  loc_18EE0A5:     unk_533C53.Execute var_1A4 & "'", var_10C, 
  loc_18EE0B0:     Set var_D8 = var_10C
  loc_18EE0E4:     If (var_D8.RecordCount > 0) Then
  loc_18EE0FE:       var_E4 = var_D8.Fields.Item("DrAmt")
  loc_18EE106:       var_120 = CVar(var_E4) 'Address
  loc_18EE10D:       Proc_6_39_E7C810(var_130)
  loc_18EE124:       Set var_10C = Me.LTxt
  loc_18EE12A:       Call 0.Method_Txt_Validate0 (CInt(0), var_110)
  loc_18EE132:       var_110.Caption = CStr(var_130)
  loc_18EE158:       Set var_E0 = Me.LTxt
  loc_18EE15E:       Call 0.Method_Txt_Validate0 (CInt(0), var_E4)
  loc_18EE19A:       var_E4 = var_D8.Fields.Item("CrAmt")
  loc_18EE1A9:       Proc_6_39_E7C810(var_130, CVar(var_E4))
  loc_18EE1C0:       Set var_10C = Me.LTxt
  loc_18EE1C6:       Call 0.Method_Txt_Validate0 (CInt(1), var_110, CStr(var_130))
  loc_18EE1CE:       var_110.Caption = Val(var_E4.Caption)
  loc_18EE1F4:       Set var_E0 = Me.LTxt
  loc_18EE1FA:       Call 0.Method_Txt_Validate0 (CInt(1), var_E4)
  loc_18EE212:       global_172 = Val(var_E4.Caption)
  loc_18EE21F:     End If
  loc_18EE259:     Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_18EE26C:     Call Proc_167_48_142421C(1, 1)
  loc_18EE274:   Else
  loc_18EE27C:     If (var_DA = CInt(&H11)) Then
  loc_18EE291:       Set var_E0 = Me.Txt
  loc_18EE297:       Call 0.Method_Txt_Validate0 (Cancel, var_E4, CStr(MemVar_1F920EC))
  loc_18EE2BB:       Set var_E0 = Me.Txt
  loc_18EE2C1:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EE2E1:       If (CDate(global_172) < MemVar_1F920EC) Then
  loc_18EE2E6:         arg_10 = &HFF
  loc_18EE2E9:         Exit Sub
  loc_18EE2EA:       End If
  loc_18EE324:       Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_18EE33A:     Else
  loc_18EE342:       If (var_DA = CInt(4)) Then
  loc_18EE3D1:         Me.LblNature.Caption = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")), 1, 1))))
  loc_18EE43B:         var_18C = arg_10 And (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")), (CStr(Me.Fields.Item("Flag").Value) = "Cr")))) = vbNullString)
  loc_18EE44F:         If CBool(var_18C) Then
  loc_18EE4A7:           Set var_10C = Me.Txt
  loc_18EE4AD:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, CStr(Format(CVar(Me.Fields.Item("SaleRate")), "0.00")))
  loc_18EE4B5:           var_110.Text = 1
  loc_18EE4CF:         End If
  loc_18EE51C:         var_110 = Me.Fields.Item("PayType")
  loc_18EE54E:         If CBool(Not(IsNull(CVar(Me.Fields.Item("PayType")))) And (var_110.Value <> vbNullString)) Then
  loc_18EE583:           Call Proc_167_44_123FBF4(CStr(Me.Fields.Item("PayType").Value), 1)
  loc_18EE598:         Else
  loc_18EE5A4:           Me.FrChqDet.Visible = False
  loc_18EE5B8:           Me.FrCCDet.Visible = False
  loc_18EE5CC:           Me.FrEmp.Visible = False
  loc_18EE5E0:           Me.FrComp.Visible = False
  loc_18EE5F4:           Me.FrMember.Visible = False
  loc_18EE608:           Me.FrSendRoom.Visible = False
  loc_18EE610:         End If
  loc_18EE645:         var_E4 = Me.Fields.Item("Flag")
  loc_18EE673:         If CBool((FdReSetlement.OpenMode = 1) And (var_E4.Value = "Dr")) Then
  loc_18EE681:           Set var_E0 = Me.LTxt
  loc_18EE687:           Call 0.Method_Txt_Validate0 (CInt(2), var_E4)
  loc_18EE6B3:           var_E8 = CStr(Format(CVar(var_E4), "0.00"))
  loc_18EE6C2:           Set var_10C = Me.Txt
  loc_18EE6C8:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_18EE6D0:           var_110.Text = 1
  loc_18EE6EA:         End If
  loc_18EE707:         var_E4 = Me.Fields.Item("PayType")
  loc_18EE72C:         Set var_10C = Me.Txt
  loc_18EE732:         Call 0.Method_Txt_Validate0 (CInt(5), var_110, (var_E4.Value = "Cash"))
  loc_18EE76B:         If CBool(1 And (Trim(CVar(var_110)) = vbNullString)) Then
  loc_18EE77C:           Set var_E0 = Me.Txt
  loc_18EE782:           Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18EE78A:           var_E4.Text = "CASH RECD."
  loc_18EE799:         Else
  loc_18EE7B6:           var_E4 = Me.Fields.Item("PayType")
  loc_18EE7BE:           var_120 = var_E4.Value
  loc_18EE7DE:           Set var_10C = Me.Txt
  loc_18EE7E4:           Call 0.Method_Txt_Validate0 (CInt(5), var_110, var_E8)
  loc_18EE7EC:           (var_120 <> "Cash") = var_110.Text
  loc_18EE818:           If CBool(var_120 And (var_E8 = "CASH RECD.")) Then
  loc_18EE829:             Set var_E0 = Me.Txt
  loc_18EE82F:             Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18EE837:             var_E4.Text = vbNullString
  loc_18EE846:           Else
  loc_18EE863:             var_E4 = Me.Fields.Item("PayType")
  loc_18EE88B:             Set var_10C = Me.Txt
  loc_18EE891:             Call 0.Method_Txt_Validate0 (CInt(6), var_110)
  loc_18EE8CA:             If CBool((var_E4.Value = "Cash") And (CDbl(Val(var_110.Text)) < CDbl(0))) Then
  loc_18EE8DB:               Set var_E0 = Me.Txt
  loc_18EE8E1:               Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18EE8E9:               var_E4.Text = "CASH PAID "
  loc_18EE8F5:             End If
  loc_18EE8F5:           End If
  loc_18EE8F5:         End If
  loc_18EE934:         If (Me.Fields.Item("Flag").Value = "Cr") Then
  loc_18EE973:           Set var_10C = Me.Txt
  loc_18EE979:           Call 0.Method_Txt_Validate0 (CInt(5), var_110)
  loc_18EE981:           var_110.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18EE997:         End If
  loc_18EE9B1:         var_E4 = Me.Fields.Item("PayType")
  loc_18EE9C2:         var_106 = IsNull(CVar(var_E4))
  loc_18EE9DF:         var_110 = Me.Fields.Item("PayType")
  loc_18EE9E7:         var_140 = CVar(var_110) 'Address
  loc_18EEA24:         If (IIf(var_106, vbNullString, var_140) = vbNullString) Then
  loc_18EEA34:           Set var_E0 = Me.Txt
  loc_18EEA3A:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_18EEA42:           var_E4.Visible = False
  loc_18EEA59:           Set var_E0 = Me.Lbl
  loc_18EEA5F:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_18EEA67:           var_E4.Visible = False
  loc_18EEA76:         Else
  loc_18EEA83:           Set var_E0 = Me.Txt
  loc_18EEA89:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_18EEA91:           var_E4.Visible = True
  loc_18EEAA8:           Set var_E0 = Me.Lbl
  loc_18EEAAE:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_18EEAB6:           var_E4.Visible = True
  loc_18EEAC2:         End If
  loc_18EEAC5:       Else
  loc_18EEACD:         If (var_DA = CInt(&H16)) Then
  loc_18EEADD:           Set var_E0 = Me.Txt
  loc_18EEAE3:           Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EEB09:           Set var_10C = Me.Txt
  loc_18EEB0F:           Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EEB17:           var_110.Text = Proc_6_34_14ECF20(var_E4.Text)
  loc_18EEB31:         Else
  loc_18EEB39:           If (var_DA = CInt(&H14)) Then
  loc_18EEB49:             Set var_E0 = Me.Txt
  loc_18EEB4F:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EEB6E:             If (var_E4.Text = vbNullString) Then
  loc_18EEB73:               arg_10 = &HFF
  loc_18EEB76:               Exit Sub
  loc_18EEB77:             End If
  loc_18EEB81:             Set var_E0 = Me.Txt
  loc_18EEB87:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EEB9A:             var_E8 = Proc_6_33_1512840(var_E4, arg_10)
  loc_18EEBA7:             Set var_110 = Me.Txt
  loc_18EEBAD:             Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_18EEBB5:             var_168.Text = var_E8
  loc_18EEBCB:           Else
  loc_18EEBD3:             If (var_DA = CInt(6)) Then
  loc_18EEBFF:               var_130 = Trim(CVar(Me.Fields.Item("PayType")))
  loc_18EEC1F:               Set var_10C = Me.Txt
  loc_18EEC25:               Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_18EEC2D:               (var_130 <> vbNullString) = var_110.Text
  loc_18EEC43:               var_160 = var_106 And (CDbl(Val(var_E8)) < CDbl(0))
  loc_18EEC5E:               If CBool(var_160) Then
  loc_18EEC7E:                 var_E4 = Me.Fields.Item("PayType")
  loc_18EECA0:                 If (var_E4.Value = "Cash") Then
  loc_18EECB1:                   Set var_E0 = Me.Txt
  loc_18EECB7:                   Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18EECBF:                   var_E4.Text = "CASH PAID "
  loc_18EECCB:                 End If
  loc_18EECCB:               End If
  loc_18EECF2:               Set var_E4 = Me.Txt
  loc_18EECF8:               Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_18EED39:               If (((Me.LblNature.Caption = "Credit Card") And (CDbl(Val(var_10C.Text)) <= CDbl(0))) And (FdReSetlement.ParentForm = "Check Out")) Then
  loc_18EED55:                 MsgBox("Negative Settlement is not allowed", &H40, var_130, var_140, var_160)
  loc_18EED67:                 arg_10 = &HFF
  loc_18EED6A:               End If
  loc_18EED74:               Set var_E0 = Me.Txt
  loc_18EED7A:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EEDB4:               Set var_10C = Me.Txt
  loc_18EEDBA:               Call 0.Method_Txt_Validate0 (Cancel, var_110, CStr(Format(CVar(var_E4), "0.00")))
  loc_18EEDC2:               var_110.Text = 1
  loc_18EEDDC:             End If
  loc_18EEDDC:           End If
  loc_18EEDDC:         End If
  loc_18EEDDC:       End If
  loc_18EEDDC:     End If
  loc_18EEDDC:   End If
  loc_18EEDDC: End If
  loc_18EEDDC: Call Proc_167_42_F6D49C(1)
  loc_18EEDE6: Set var_D8 = Nothing
  loc_18EEDE9: Exit Sub
End Sub

Private Sub DGBill_UnknownEvent_9 'F9DE28
  'Data Table: 533C28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F9DCBF: Me.DGBill.Visible = False
  loc_F9DCDE: If (Me.RecordCount > 0) Then
  loc_F9DD1D:   Set var_B4 = Me.Txt
  loc_F9DD23:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(&H24), var_B8)
  loc_F9DD2B:   var_B8.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_F9DD7D:   Set var_B4 = Me.Txt
  loc_F9DD83:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F9DD8B:   var_B8.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_F9DDBE:   var_B0 = Me.Fields.Item("Bill_no")
  loc_F9DDDD:   Set var_B4 = Me.Txt
  loc_F9DDE3:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(&H24), var_B8)
  loc_F9DDEB:   var_B8.Text = CStr(var_B0.Value)
  loc_F9DE01: End If
  loc_F9DE0C: Set var_A8 = Me.Txt
  loc_F9DE12: Call 0.Method_DGBill_UnknownEvent_90 (CInt(&H24))
  loc_F9DE1A: var_B0.SetFocus
  loc_F9DE26: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EDB8CC
  'Data Table: 533C28
  loc_EDB82C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EDB82F:   Call DGCompany_UnknownEvent_9()
  loc_EDB834: End If
  loc_EDB850: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EDB853:   Call DGRoom_UnknownEvent_9()
  loc_EDB858: End If
  loc_EDB874: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_EDB877:   Call DGEmp_UnknownEvent_9()
  loc_EDB87C: End If
  loc_EDB898: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EDB89B:   Call DGChrgPayment_UnknownEvent_9()
  loc_EDB8A0: End If
  loc_EDB8BC: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EDB8BF:   Call DGRoomNo_UnknownEvent_9()
  loc_EDB8C4: End If
  loc_EDB8C4: Call Proc_167_42_F6D49C()
  loc_EDB8C9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E805F8
  'Data Table: 533C28
  Dim var_8C As Label
  Dim var_98 As TextBox
  loc_E80598: Call Proc_167_45_1367634()
  loc_E805A9: Call Txt_Validate(CInt(4))
  loc_E805C7: Call Proc_167_44_123FBF4(Me.LblNature.Caption)
  loc_E805DD: Set var_8C = Me.Txt
  loc_E805E3: Call 0.Method_FGrid_UnknownEvent_90 (CInt(6), var_98)
  loc_E805EB: var_98.SetFocus
  loc_E805F7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F13B60
  'Data Table: 533C28
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F13A78: On Error Goto loc_F13B1D
  loc_F13A92: If (Me.RecordCount > 0) Then
  loc_F13AAA:   var_8C = "EDIT"
  loc_F13AB8:   Call Proc_167_40_E7829C(Proc_5_1_100CB50(var_8C, Me))
  loc_F13ACE:   Set var_90 = Me.Txt
  loc_F13AD4:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F13ADC:   var_98.SetFocus
  loc_F13AEB: Else
  loc_F13B0C:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F13B1C: End If
  loc_F13B1C: Exit Sub
  loc_F13B1D: ' Referenced from: F13A78
  loc_F13B25: Set var_90 = Err()
  loc_F13B2B: Call 0.Method_arg_2C (var_8C)
  loc_F13B4C: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F13B5F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECAC2C
  'Data Table: 533C28
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_ECAB88: On Error Goto loc_ECAC23
  loc_ECABA2: If (Me.RecordCount <= 0) Then
  loc_ECABAB:   var_B8 = "Information"
  loc_ECABC6:   MsgBox("No Records Found", &H40, var_B8, var_E8, var_108)
  loc_ECABD6:   Exit Sub
  loc_ECABD7: End If
  loc_ECABE8: MemVar_1F920E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & global_56 & "' ORDER BY VDate"
  loc_ECABF5: MemVar_1F92120 = Me
  loc_ECAC02: Proc_6_126_F1BCC0("2000,2000,2000,2000")
  loc_ECAC1D: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECAC22: Exit Sub
  loc_ECAC23: ' Referenced from: ECAB88
  loc_ECAC23: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_ECAC28: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1BF8B1C
  'Data Table: 533C28
  Dim var_E8 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_F0 As Variant
  Dim var_17C As String
  Dim var_180 As String
  Dim var_184 As String
  Dim var_188 As String
  Dim var_18C As String
  Dim unk_533C53 As Connection15
  Dim var_124 As Variant
  Dim var_EC As Variant
  Dim var_1A4 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim var_1D4 As Variant
  Dim var_20C As Variant
  Dim var_1F8 As Variant
  Dim var_1FC As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_240 As Variant
  Dim var_178 As String
  Dim var_230 As Variant
  Dim var_280 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_270 As Variant
  Dim MemVar_1F920EC As Double
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_220 As Variant
  Dim var_194 As Variant
  Dim var_260 As Variant
  Dim var_1AC As Variant
  Dim var_2B0 As Variant
  Dim var_9A As Variant
  Dim var_DC As Variant
  Dim var_F2 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_30C As Variant
  Dim var_34C As Variant
  Dim var_36C As Variant
  Dim var_41C As Variant
  Dim var_43C As Variant
  Dim var_45C As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_53C As Variant
  Dim var_55C As Variant
  Dim var_5D0 As Variant
  Dim var_5F0 As Variant
  Dim var_604 As Variant
  Dim var_668 As Variant
  Dim var_688 As Variant
  Dim var_6AC As Variant
  Dim var_71C As Variant
  Dim var_73C As Variant
  Dim var_760 As Variant
  Dim var_7B0 As Variant
  Dim var_7D0 As Variant
  Dim var_7F4 As Variant
  Dim var_83C As Variant
  Dim var_8C4 As Variant
  Dim var_8D4 As Variant
  Dim var_924 As Variant
  Dim var_968 As Variant
  Dim var_9B8 As Variant
  Dim var_9FC As Variant
  Dim var_A4C As Variant
  Dim var_A90 As Variant
  Dim var_B24 As Variant
  Dim var_B34 As Variant
  Dim var_B44 As Variant
  Dim var_BD4 As Variant
  Dim var_CA4 As Variant
  Dim var_CC4 As Variant
  Dim var_CD8 As Variant
  Dim var_CE8 As Variant
  Dim var_CF8 As Variant
  Dim var_D40 As Variant
  Dim var_2D4 As String
  Dim var_2DC As String
  Dim var_2E4 As String
  Dim var_2D0 As Variant
  Dim var_2FC As Variant
  Dim var_32C As Variant
  Dim var_2C0 As Variant
  Dim var_33C As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3DC As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_50C As Variant
  Dim var_51C As Variant
  Dim var_52C As Variant
  Dim var_590 As Variant
  Dim var_5A0 As Variant
  Dim var_628 As Variant
  Dim var_638 As Variant
  Dim var_648 As Variant
  Dim var_6CC As Variant
  Dim var_6DC As Variant
  Dim var_6EC As Variant
  Dim var_780 As Variant
  Dim var_790 As Variant
  Dim var_834 As Variant
  Dim var_850 As Variant
  Dim var_860 As Variant
  Dim var_870 As Variant
  Dim var_880 As Variant
  Dim var_8E4 As Variant
  Dim var_8F4 As Variant
  Dim var_914 As Variant
  Dim var_978 As Variant
  Dim var_988 As Variant
  Dim var_A0C As Variant
  Dim var_A1C As Variant
  Dim var_A3C As Variant
  Dim var_AC0 As Variant
  Dim var_B64 As Variant
  Dim var_BA4 As Variant
  Dim var_BC4 As Variant
  Dim var_BF4 As Variant
  Dim var_C54 As Variant
  Dim var_C74 As Variant
  Dim var_C94 As Variant
  Dim var_D18 As Variant
  Dim var_D38 As Variant
  Dim var_D54 As Variant
  Dim var_D84 As Variant
  Dim var_DA4 As Variant
  Dim var_DF4 As Variant
  Dim var_E14 As Variant
  Dim var_8A0 As Variant
  Dim var_838 As MSHFlexGrid
  Dim var_AB0 As Variant
  Dim var_B54 As Variant
  Dim var_BE4 As Variant
  Dim var_8C0 As Variant
  Dim var_954 As Variant
  Dim var_9E8 As Variant
  Dim var_D08 As Variant
  Dim var_840 As String
  Dim var_35C As Variant
  Dim var_37C As Variant
  Dim var_600 As Variant
  Dim var_7E0 As Variant
  Dim var_D3C As Variant
  Dim var_E3C As Variant
  Dim var_E98 As Variant
  Dim var_EB8 As Variant
  Dim var_DE4 As Variant
  Dim var_EF4 As TextBox
  Dim var_4BC As Variant
  Dim var_E38 As Variant
  Dim var_EDC As Variant
  Dim var_F34 As Variant
  Dim var_D0 As Double
  Dim var_D4 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_44C As Variant
  Dim var_4DC As Variant
  Dim var_1038 As Double
  Dim var_1054 As Double
  Dim var_105C As Double
  Dim var_A4 As Double
  Dim Me As Variant
  loc_1BF3190: On Error Goto loc_1BF8AC7
  loc_1BF3197: var_86 = CByte(0) 'Byte
  loc_1BF31A6: Set var_E4 = Me.Txt
  loc_1BF31AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1BF31BD: Set var_EC = var_E8
  loc_1BF31D5: If (Proc_6_27_EA565C(var_EC, "Room No") = 0) Then
  loc_1BF31DF:   Call Txt_GotFocus(CInt(0))
  loc_1BF31E4:   Exit Sub
  loc_1BF31E5: End If
  loc_1BF31F3: Set var_E4 = Me.LTxt
  loc_1BF31F9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_E8)
  loc_1BF321D: If (CDbl(Val(var_E8.Caption)) <> CDbl(0)) Then
  loc_1BF3239:   MsgBox("Settlement Amount Should Match with Bill Amount", 0, var_134, var_154, var_174)
  loc_1BF3249:   Exit Sub
  loc_1BF324A: End If
  loc_1BF3254: var_114 = Me.FGrid.Rows
  loc_1BF3263: var_104 = 1
  loc_1BF3279: Set var_E8 = Me.FGrid
  loc_1BF327F: var_134 = var_E8.TextMatrix)
  loc_1BF32A4: If (1 And (CStr(var_134) = vbNullString)) Then
  loc_1BF32B5:   var_104 = "Nill Details Can't be Saved"
  loc_1BF32BA:   var_114 = var_104
  loc_1BF32C0:   MsgBox(var_114, 0, var_134, var_154, var_174)
  loc_1BF32D0:   Exit Sub
  loc_1BF32D1: End If
  loc_1BF32EC: var_17C = "Select * From PayCharge Where DocId In (Select Max(DocID) From PayCharge Where ModeSet='S' And PayCode<>'" & MemVar_1F92078 & "ROFF' And FolioNoDocid='"
  loc_1BF32FD: Set var_E4 = Me.Txt
  loc_1BF3303: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_E8, var_178, var_17C, var_114)
  loc_1BF330B: -1 = var_E8.Tag
  loc_1BF3332: unk_533C53.Execute var_EC & var_178 & "') And ModeSet<>'S' And PayCode='" & MemVar_1F92078 & "ROOM'", var_104, (CLng(var_114) = 2)
  loc_1BF333D: Set var_BC = var_EC
  loc_1BF3366: var_190 = Me.Recordset15.RecordCount
  loc_1BF3374: If (var_190 > 0) Then
  loc_1BF3391:   var_E8 = Me.Recordset15.Fields.Item("FolioNo")
  loc_1BF3399:   var_114 = CVar(var_E8) 'Address
  loc_1BF33A0:   Proc_6_39_E7C810(var_134, var_114)
  loc_1BF33BF:   var_194 = Me.Recordset15.Fields.Item("Bill_no")
  loc_1BF33ED:   var_1AC = Me.Recordset15.Fields.Item("Bill_no")
  loc_1BF3413:   var_1C0 = Me.Recordset15.Fields
  loc_1BF3423:   var_1D4 = CVar(var_1C0.Item("FolioNoDocid")) 'Address
  loc_1BF3438:   var_20C = 0
  loc_1BF3468:   unk_533C53.Execute "Select Top 1 RoomNo From RoomOcc Where Docid='" & Proc_6_38_E68A98(var_1D4) & "' Order By Sno Desc", var_1F4, -1
  loc_1BF3470:   var_1F8 = var_1F8.Fields
  loc_1BF3478:   var_20C = var_1FC.Item(var_1FC)
  loc_1BF3480:   var_210 = var_210.Value
  loc_1BF34B3:   var_260 = IIf((Proc_6_38_E68A98(CVar(var_194)) <> vbNullString), CVar(" Ref. Bill No. " & Proc_6_38_E68A98(CVar(var_1AC))), CVar(" Room No. " & Proc_6_38_E68A98(var_220, var_220)))
  loc_1BF34ED:   MsgBox(CVar("Previous Settlement related entry exists : " & vbCrLf & "Folio No. ") & var_134 & var_260, &H10, "Validation : Room Settlement", var_2B0, var_2D0)
  loc_1BF3544:   Set var_BC = Nothing
  loc_1BF3547:   Exit Sub
  loc_1BF3548: End If
  loc_1BF3551: unk_533C53.BeginTrans var_190
  loc_1BF355A: var_86 = CByte(1) 'Byte
  loc_1BF3564: var_124 = 0
  loc_1BF3581: var_F0 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F92078
  loc_1BF3591: unk_533C53.Execute var_F0 & "'", var_114, -1
  loc_1BF3599: var_E4 = var_E4.Fields
  loc_1BF35A1: var_124 = var_E8.Item(var_E8)
  loc_1BF35A9: var_EC = var_EC.Value
  loc_1BF35B3: MemVar_1F920EC = CDate(var_134)
  loc_1BF35EA: Set var_E4 = Me.LTxt
  loc_1BF35F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8, "Update FOMBillChangeDetails set NextSettleAmt=", var_2D0, -1)
  loc_1BF35FF: Proc_6_39_E7C810(var_134, CVar(var_E8), var_1C0)
  loc_1BF3623: var_1BC = MemVar_1F920EC & var_134 & ",SettledBy='" & CVar(MemVar_1F920C8) & "',BillSettleDate=" 
  loc_1BF3632: Proc_6_7_F25D88(var_1D4, MemVar_1F920EC, var_1BC)
  loc_1BF3643: var_220 = var_134 & var_1D4 & " where FolionoDocid='" 
  loc_1BF3655: Set var_EC = Me.Txt
  loc_1BF365B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_194, var_F0)
  loc_1BF3663: var_220 = var_194.Tag
  loc_1BF3689: Set var_1A8 = Me.Txt
  loc_1BF368F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_1AC)
  loc_1BF3697: var_178 = var_1AC.Text
  loc_1BF36B9: unk_533C53.Execute CStr(var_E8 & CVar(var_F0) & "' and Bill_No='" & CVar(var_178) & "'"), , 
  loc_1BF3713: var_17C = "Select Distinct SettleDate,IsNull(U_Name,'')U_Name from PayCharge Where PayCode<>'" & MemVar_1F92078 & "ROFF' And ModeSet='S' and FolioNoDocid='"
  loc_1BF3724: Set var_E4 = Me.Txt
  loc_1BF372A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_E8, var_178, var_17C)
  loc_1BF3732: var_114 = var_E8.Tag
  loc_1BF373B: var_180 = -1 & var_178
  loc_1BF374B: unk_533C53.Execute Proc_6_38_E68A98(var_1D4) & "' And SettleDate Is Not Null", var_EC, 0
  loc_1BF3756: Set var_BC = var_EC
  loc_1BF3789: If (Me.Recordset15.RecordCount > 0) Then
  loc_1BF37FD:   var_E8 = Me.Recordset15.Fields.Item("U_Name")
  loc_1BF380E:   var_E0 = Proc_6_38_E68A98(CVar(var_E8), CDate(Format(CVar(Me.Recordset15.Fields.Item("SettleDate")), "dd/MMM/yyyy")))
  loc_1BF381A: Else
  loc_1BF3825:   Set var_E4 = Me.Txt
  loc_1BF382B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_E8)
  loc_1BF383C:   var_F2 = IsDate(CVar(var_E8))
  loc_1BF384A:   Set var_EC = Me.Txt
  loc_1BF3850:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_194, var_F2)
  loc_1BF3898:   var_DC = CDate(Format(IIf(var_F2, CVar(var_194), MemVar_1F920EC), "dd/MMM/yyyy"))
  loc_1BF38B1: End If
  loc_1BF38D6: For var_2E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_2E0 'Integer
  loc_1BF38E0:   var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF38E5:   var_144 = 3
  loc_1BF38F2:   Set var_E4 = Me.FGrid
  loc_1BF38F8:   var_114 = var_E4.TextMatrix)
  loc_1BF3914:   If (CStr(var_114) = "Dr") Then
  loc_1BF393B:     unk_533C53.Execute "Select Name,ShortName from depart where code='" & MemVar_1F92078 & "FOM'", var_114, -1
  loc_1BF3946:     Set var_A8 = var_E4
  loc_1BF396A:     If (var_A8.RecordCount > 0) Then
  loc_1BF3971:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3976:       var_144 = 1
  loc_1BF39CB:       unk_533C53.Execute CStr("Select ShortName From RevMast where code='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_1BC, -1
  loc_1BF39D6:       Set var_B8 = var_E8
  loc_1BF39F6:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF39FE:       var_144 = CVar(CLng(&HF)) 'Long
  loc_1BF3A3A:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1BF3A41:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3A46:         var_144 = 2
  loc_1BF3A75:         If (CStr(Me.FGrid.TextMatrix)) = "Cash") Then
  loc_1BF3A7B:           var_C0 = "CASH RECD."
  loc_1BF3A81:         Else
  loc_1BF3A85:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3A8A:           var_144 = 2
  loc_1BF3AB9:           If (CStr(Me.FGrid.TextMatrix)) = "Credit Card") Then
  loc_1BF3ABC:             var_1E4 = "C.CNo. "
  loc_1BF3AC5:             var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3B03:             var_C0 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1BF3B19:           Else
  loc_1BF3B1D:             var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3B22:             var_144 = 2
  loc_1BF3B51:             If (CStr(Me.FGrid.TextMatrix)) = "Cheque") Then
  loc_1BF3B54:               var_1E4 = "C.CNo. "
  loc_1BF3B5D:               var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3B9B:               var_C0 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1BF3BB1:             Else
  loc_1BF3BB5:               var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3BBA:               var_144 = 2
  loc_1BF3BE9:               If (CStr(Me.FGrid.TextMatrix)) = "Staff") Then
  loc_1BF3BEC:                 var_1E4 = "STAFF SETTELMENT ("
  loc_1BF3BF5:                 var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3C33:                 var_C0 = CStr(CVar(CLng(&H10)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1BF3C49:               Else
  loc_1BF3C4D:                 var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3C52:                 var_144 = 2
  loc_1BF3C81:                 If (CStr(Me.FGrid.TextMatrix)) = "Company") Then
  loc_1BF3C84:                   var_1E4 = "COMPANY SETTELMENT ("
  loc_1BF3C8D:                   var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3CB0:                   var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1BF3CB6:                   var_154 = Trim(var_134)
  loc_1BF3CCC:                   var_C0 = CStr(&H16 & var_154 & ")")
  loc_1BF3CE2:                 Else
  loc_1BF3CE6:                   var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3CEB:                   var_144 = 2
  loc_1BF3D1A:                   If (CStr(Me.FGrid.TextMatrix)) = "Room") Then
  loc_1BF3D21:                     var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3D26:                     var_144 = &H19
  loc_1BF3D45:                     var_230 = " ROOM ADJUSTMENT ("
  loc_1BF3D50:                     var_20C = 0
  loc_1BF3D74:                     var_178 = "SELECT IsNull(Max(RoomOcc.RoomNo),'') From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F92078 & "') AND CHKOUTDATE IS NULL And DOCID='"
  loc_1BF3D8F:                     unk_533C53.Execute var_178 & CStr(Me.FGrid.TextMatrix)) & "'", var_134, -1
  loc_1BF3D97:                     var_E8 = var_E8.Fields
  loc_1BF3D9F:                     var_20C = var_EC.Item(var_EC)
  loc_1BF3DA7:                     var_194 = var_194.Value
  loc_1BF3DBD:                     var_C0 = CStr(var_154 & var_154 & ")")
  loc_1BF3DE8:                   Else
  loc_1BF3DEC:                     var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3DF1:                     var_144 = 2
  loc_1BF3E20:                     If (CStr(Me.FGrid.TextMatrix)) = "Void") Then
  loc_1BF3E26:                       var_C0 = "VOID SETTELMENT"
  loc_1BF3E2C:                     Else
  loc_1BF3E43:                       var_E8 = var_B8.Fields.Item("ShortName")
  loc_1BF3E5F:                       var_154 = (Trim(CVar(var_E8)) + " (")
  loc_1BF3E7D:                       var_194 = var_A8.Fields.Item("ShortName")
  loc_1BF3E8D:                       var_1A4 = (var_154 + var_194.Value)
  loc_1BF3E96:                       var_1BC = (var_154 & var_154 & ")" + ")")
  loc_1BF3E9B:                       var_C0 = CStr(var_1BC)
  loc_1BF3EB6:                     End If
  loc_1BF3EB6:                   End If
  loc_1BF3EB6:                 End If
  loc_1BF3EB6:               End If
  loc_1BF3EB6:             End If
  loc_1BF3EB6:           End If
  loc_1BF3EB6:         End If
  loc_1BF3EB9:       Else
  loc_1BF3EBD:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3EC5:         var_144 = CVar(CLng(&HF)) 'Long
  loc_1BF3EEE:         var_C0 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1BF3EFD:       End If
  loc_1BF3EFD:     End If
  loc_1BF3F25:     var_E0 = CStr(IIf((var_E0 = vbNullString), MemVar_1F920C8, var_E0))
  loc_1BF3F35:     global_56 = "REC"
  loc_1BF3F3B:     var_9A = 1
  loc_1BF3F42:     var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF3F5A:     var_114 = Me.FGrid.TextMatrix)
  loc_1BF3F65:     var_F0 = CStr(var_114)
  loc_1BF3F76:     If (var_F0 = vbNullString) Then
  loc_1BF3F7F:       Call Proc_167_43_10ADEB8(MemVar_1F92044, var_F0, &H1A, var_104, var_9A, &H1A, var_104, &H1A)
  loc_1BF3F95:       Set var_E4 = Me.Txt
  loc_1BF3F9B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_104, var_230, var_114)
  loc_1BF3FC3:       Set var_EC = Me.Txt
  loc_1BF3FC9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, var_104)
  loc_1BF3FD8:       Proc_6_7_F25D88(var_1D4, CVar(var_194), var_E8.Text)
  loc_1BF4013:       Set var_1A8 = Me.Txt
  loc_1BF4019:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF4021:       1 = var_1AC.Tag
  loc_1BF402A:       var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF4032:       var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF4051:       var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF4056:       var_36C = &H15
  loc_1BF4079:       var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF407E:       var_43C = 1
  loc_1BF40A1:       var_4AC = CVar(CLng(var_9C)) 'Long
  loc_1BF40A6:       var_4CC = 2
  loc_1BF40C9:       var_53C = CVar(CLng(var_9C)) 'Long
  loc_1BF40CE:       var_55C = 9
  loc_1BF40FB:       var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BF4100:       var_5F0 = &H12
  loc_1BF412D:       var_668 = CVar(CLng(var_9C)) 'Long
  loc_1BF4132:       var_688 = 5
  loc_1BF415A:       var_73C = 6
  loc_1BF416D:       var_760 = Me.FGrid.TextMatrix)
  loc_1BF4194:       var_7F4 = Me.FGrid.TextMatrix)
  loc_1BF41AE:       Set var_838 = Me.Txt
  loc_1BF41B4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_840, var_7F4, CVar(CLng(7)), CVar(CLng(var_9C)), var_760)
  loc_1BF41BC:       var_73C = var_83C.Text
  loc_1BF41DC:       var_8D4 = Me.FGrid.TextMatrix)
  loc_1BF4203:       var_968 = Me.FGrid.TextMatrix)
  loc_1BF422A:       var_9FC = Me.FGrid.TextMatrix)
  loc_1BF4262:       Proc_6_7_F25D88(var_AB0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9FC, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_968)
  loc_1BF4293:       Proc_6_7_F25D88(var_B54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF42A3:       Proc_6_8_EB0DE4(var_BE4, CVar(Proc_6_14_EF349C(var_8D4, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF42AC:       var_CA4 = CVar(CLng(var_9C)) 'Long
  loc_1BF42BE:       Set var_CD8 = Me.FGrid
  loc_1BF42D5:       Proc_6_39_E7C810(var_D08, CVar(CStr(var_CD8.TextMatrix))), &H18)
  loc_1BF42E8:       Set var_D3C = Me.Txt
  loc_1BF42EE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D40, var_D44)
  loc_1BF42F6:       var_CA4 = var_D40.Tag
  loc_1BF4306:       Proc_6_7_F25D88(var_DE4, var_DC)
  loc_1BF431F:       var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF436E:       var_154 = CVar(var_178 & "'," & CStr(var_9A) & ",'" & global_56 & "'," & CStr(global_108) & ",'" & MemVar_1F92070 & "','") 'String
  loc_1BF43B3:       var_2FC = var_154 & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(var_2EC) & "','" 
  loc_1BF43F9:       var_47C = var_2FC & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF4435:       var_638 = var_47C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF4483:       var_834 = var_638 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(var_760)) & "','" & CVar(CStr(var_7F4)) & "'," 
  loc_1BF44D2:       var_A3C = var_834 & CVar(var_840) & ",'" & CVar(CStr(var_8D4)) & "','" & CVar(CStr(var_968)) & "','" & CVar(CStr(var_9FC)) & "'," 
  loc_1BF44D9:       var_AC0 = var_A3C & var_AB0 
  loc_1BF44E9:       var_B64 = var_AC0 & "," & var_B54 
  loc_1BF450C:       var_BF4 = var_B64 & ",'" & CVar(var_E0) & "'," & var_BE4 
  loc_1BF4555:       var_D54 = CVar(var_D44) 'String
  loc_1BF4561:       var_D84 = var_BF4 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(global_160) & "'," & var_D08 & ",'" & var_D54 & "','" 
  loc_1BF456B:       var_DA4 = var_D84 & CVar(MemVar_1F92078) 
  loc_1BF4584:       var_E14 = var_DA4 & "'," & var_DE4 & ")" 
  loc_1BF4592:       unk_533C53.Execute CStr(var_E14), var_E38, -1
  loc_1BF46C4:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF46C9:       var_144 = 2
  loc_1BF46E7:       var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1BF46F8:       If (var_F0 = "Room") Then
  loc_1BF4704:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF4743:         var_C0 = CStr(&H13 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1BF475C:         var_9A = (var_9A + 1)
  loc_1BF476D:         Set var_E4 = Me.Txt
  loc_1BF4773:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_9A, var_104, " ROOM ADJUSTMENT (")
  loc_1BF477B:         var_144 = var_E8.Text
  loc_1BF478B:         var_134 = Trim(CVar(Me.LblVPrefix))
  loc_1BF479B:         Set var_EC = Me.Txt
  loc_1BF47A1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, var_104)
  loc_1BF47A9:         var_1BC = CVar(var_194) 'Address
  loc_1BF47B0:         Proc_6_7_F25D88(var_1D4, var_1BC, var_E3C)
  loc_1BF47DA:         var_D44 = Format$(Time, "HH:mm")
  loc_1BF47EB:         Set var_1A8 = Me.Txt
  loc_1BF47F1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF47F9:         1 = var_1AC.Tag
  loc_1BF4802:         var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF480A:         var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF4829:         var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF482E:         var_36C = &H15
  loc_1BF4851:         var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF4856:         var_43C = 1
  loc_1BF4879:         var_4AC = CVar(CLng(var_9C)) 'Long
  loc_1BF487E:         var_4CC = 2
  loc_1BF48A1:         var_53C = CVar(CLng(var_9C)) 'Long
  loc_1BF48A6:         var_55C = 9
  loc_1BF48D3:         var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BF48D8:         var_5F0 = &H12
  loc_1BF48E5:         Set var_604 = Me.FGrid
  loc_1BF4905:         var_668 = CVar(CLng(var_9C)) 'Long
  loc_1BF490A:         var_688 = 5
  loc_1BF492D:         var_71C = CVar(CLng(var_9C)) 'Long
  loc_1BF4932:         var_73C = 6
  loc_1BF4955:         var_7B0 = CVar(CLng(var_9C)) 'Long
  loc_1BF495D:         var_7D0 = CVar(CLng(7)) 'Long
  loc_1BF497C:         var_870 = CVar(CLng(var_9C)) 'Long
  loc_1BF4981:         var_8A0 = &H17
  loc_1BF4994:         var_850 = Me.FGrid.TextMatrix)
  loc_1BF49BB:         var_8E4 = Me.FGrid.TextMatrix)
  loc_1BF49E2:         var_978 = Me.FGrid.TextMatrix)
  loc_1BF4A09:         var_A0C = Me.FGrid.TextMatrix)
  loc_1BF4A41:         Proc_6_7_F25D88(var_AC0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_A0C, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_978)
  loc_1BF4A72:         Proc_6_7_F25D88(var_B64, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF4A82:         Proc_6_8_EB0DE4(var_BF4, CVar(Proc_6_14_EF349C(var_8E4, CVar(CLng(&HA)), CVar(CLng(var_9C)))), var_850)
  loc_1BF4A8B:         var_CC4 = CVar(CLng(var_9C)) 'Long
  loc_1BF4AA3:         var_C94 = Me.FGrid.TextMatrix)
  loc_1BF4ABA:         Proc_6_7_F25D88(var_D54, var_DC, var_C94, &H19)
  loc_1BF4AD3:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF4AED:         var_188 = var_178 & "'," & CStr(var_9A) & ",'"
  loc_1BF4B38:         var_1F4 = CVar(var_188 & global_56 & "'," & CStr(global_108) & ",'" & MemVar_1F92070 & "','") & var_134 & "'," & var_1D4 
  loc_1BF4B67:         var_2FC = var_1F4 & ",'" & CVar(var_D44) & "','" & CVar(var_2EC) & "','" 
  loc_1BF4BA2:         var_40C = var_2FC & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_C0) & "','" 
  loc_1BF4BD5:         var_5A0 = var_40C & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF4C1A:         var_780 = var_5A0 & "," & CVar(Val(CStr(var_604.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF4C5F:         var_968 = var_780 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(CStr(var_850)) & ",'" & CVar(CStr(var_8E4)) & "','" 
  loc_1BF4CBA:         var_BD4 = var_968 & CVar(CStr(var_978)) & "','" & CVar(CStr(var_A0C)) & "'," & var_AC0 & "," & var_B64 & ",'" & CVar(var_E0) & "'," 
  loc_1BF4CD4:         var_C54 = var_BD4 & var_BF4 & ",'A','" & CVar(MemVar_1F92078) 
  loc_1BF4CFB:         var_D18 = var_C54 & "FOM','" & CVar(CStr(var_C94)) & "','" & CVar(MemVar_1F92078) 
  loc_1BF4D22:         unk_533C53.Execute CStr(var_D18 & "'," & var_D54 & ")"), var_DA4, -1
  loc_1BF4E40:       End If
  loc_1BF4E54:       var_F0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1BF4E7A:       var_154 = CVar(var_F0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_56 & "' And VP.Date_From<=") 'String
  loc_1BF4E8B:       Set var_E4 = Me.Txt
  loc_1BF4E91:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_E8, var_188, var_154, var_1BC, -1)
  loc_1BF4E99:       var_EC = var_E8.Text
  loc_1BF4EA7:       Proc_6_7_F25D88(var_134, CVar(var_188), var_CD8)
  loc_1BF4EB8:       var_1A4 = var_CC4 & var_134 & " Order By VP.Date_From DESC" 
  loc_1BF4EC6:       unk_533C53.Execute CStr(var_1A4), var_8A0, var_870
  loc_1BF4ED1:       Set var_8C = var_EC
  loc_1BF4F12:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1BF4F38:         var_17C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(global_108) & " Where (SITE_CODE='"
  loc_1BF4F65:         var_154 = CVar(var_17C & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='" & global_56 & "' and Date_From=") 'String
  loc_1BF4F91:         Proc_6_7_F25D88(var_134, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154)
  loc_1BF4FA7:         unk_533C53.Execute CStr(var_1A4 & var_134), -1, var_EC
  loc_1BF4FD5:       End If
  loc_1BF4FD8:     Else
  loc_1BF4FDC:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF4FE1:       var_144 = &H1A
  loc_1BF4FF4:       var_114 = Me.FGrid.TextMatrix)
  loc_1BF500E:       Set var_E8 = Me.Txt
  loc_1BF5014:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_EC, var_17C)
  loc_1BF5057:       unk_533C53.Execute "Select * From PayCharge Where DocId='" & CStr(var_EC.Tag) & "' And SNo=1 And FolioNoDocid='" & var_17C & "'", var_134, -1
  loc_1BF5062:       Set var_BC = var_194
  loc_1BF509D:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1BF50A4:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF50BC:         var_114 = Me.FGrid.TextMatrix)
  loc_1BF50D6:         Set var_E8 = Me.Txt
  loc_1BF50DC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_EC, var_17C, var_114, &H1A)
  loc_1BF50E4:         var_104 = var_EC.Tag
  loc_1BF50FD:         var_F0 = CStr(var_114)
  loc_1BF5108:         var_180 = "Delete From PayCharge Where DocId='" & var_F0 & "' And FolioNoDocid='"
  loc_1BF510F:         var_184 = var_180 & var_17C
  loc_1BF511F:         unk_533C53.Execute var_184 & "'", var_134, -1
  loc_1BF515A:         var_E4 = Me.Recordset15.Fields
  loc_1BF5162:         var_E8 = var_E4.Item("DocID")
  loc_1BF5184:         var_EC = Me.Recordset15.Fields
  loc_1BF518C:         var_194 = var_EC.Item("VNo")
  loc_1BF51EC:         Proc_6_7_F25D88(var_2FC, CVar(Me.Recordset15.Fields.Item("VDate")), var_194)
  loc_1BF5242:         Set var_210 = Me.Txt
  loc_1BF5248:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_604, var_F0, 1)
  loc_1BF5250:         1 = var_604.Tag
  loc_1BF5259:         var_43C = CVar(CLng(var_9C)) 'Long
  loc_1BF5261:         var_48C = CVar(CLng(&H11)) 'Long
  loc_1BF5280:         var_4CC = CVar(CLng(var_9C)) 'Long
  loc_1BF5285:         var_51C = &H15
  loc_1BF52A8:         var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BF52AD:         var_5D0 = 1
  loc_1BF52D0:         var_600 = CVar(CLng(var_9C)) 'Long
  loc_1BF52D5:         var_648 = 2
  loc_1BF52F8:         var_688 = CVar(CLng(var_9C)) 'Long
  loc_1BF52FD:         var_6DC = 9
  loc_1BF532A:         var_73C = CVar(CLng(var_9C)) 'Long
  loc_1BF532F:         var_790 = &H12
  loc_1BF535C:         var_7E0 = CVar(CLng(var_9C)) 'Long
  loc_1BF5361:         var_870 = 5
  loc_1BF5389:         var_924 = 6
  loc_1BF539C:         var_880 = Me.FGrid.TextMatrix)
  loc_1BF53C3:         var_914 = Me.FGrid.TextMatrix)
  loc_1BF53DD:         Set var_B24 = Me.Txt
  loc_1BF53E3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CD8, var_180, var_914, CVar(CLng(7)), CVar(CLng(var_9C)), var_880)
  loc_1BF53EB:         var_924 = var_CD8.Text
  loc_1BF540B:         var_A1C = Me.FGrid.TextMatrix)
  loc_1BF5432:         var_AB0 = Me.FGrid.TextMatrix)
  loc_1BF5459:         var_B44 = Me.FGrid.TextMatrix)
  loc_1BF5491:         Proc_6_7_F25D88(var_BD4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_B44, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_AB0)
  loc_1BF54C2:         Proc_6_7_F25D88(var_C54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF54D2:         Proc_6_8_EB0DE4(var_D18, CVar(Proc_6_14_EF349C(var_A1C, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF54DB:         var_E98 = CVar(CLng(var_9C)) 'Long
  loc_1BF54ED:         Set var_ECC = Me.FGrid
  loc_1BF5504:         Proc_6_39_E7C810(var_E14, CVar(CStr(var_ECC.TextMatrix))), &H18)
  loc_1BF5517:         Set var_EF0 = Me.Txt
  loc_1BF551D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_EF4, var_184)
  loc_1BF5525:         var_E98 = var_EF4.Tag
  loc_1BF5535:         Proc_6_7_F25D88(var_F94, var_DC)
  loc_1BF5547:         var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code,SettleDate) Values ('"
  loc_1BF559B:         var_250 = var_124 & var_E8.Value & "'," & CVar(var_9A) & ",'" & CVar(global_56) & "'," & var_194.Value & ",'" & CVar(MemVar_1F92070) 
  loc_1BF55CE:         var_39C = var_250 & "','" & Me.Recordset15.Fields.Item("vPrefix").Value & "'," & var_2FC & ",'" & CVar(Format$(CVar(Me.Recordset15.Fields.Item("VTIME")), "HH:mm")) 
  loc_1BF5609:         var_50C = var_39C & "','" & CVar(var_F0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF5644:         var_6CC = var_50C & "','" & CVar(var_C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF5680:         var_834 = var_6CC & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF56D8:         var_A90 = var_834 & "'," & "'" & CVar(CStr(var_880)) & "','" & CVar(CStr(var_914)) & "'," & CVar(var_180) & ",'" & CVar(CStr(var_A1C)) 
  loc_1BF5710:         var_BE4 = var_A90 & "','" & CVar(CStr(var_AB0)) & "','" & CVar(CStr(var_B44)) & "'," & var_BD4 
  loc_1BF5720:         var_C74 = var_BE4 & "," & var_C54 
  loc_1BF5743:         var_D38 = var_C74 & ",'" & CVar(var_E0) & "'," & var_D18 
  loc_1BF578C:         var_F04 = CVar(var_184) 'String
  loc_1BF5798:         var_F34 = var_D38 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(global_160) & "'," & var_E14 & ",'" & var_F04 & "','" 
  loc_1BF57C9:         unk_533C53.Execute CStr(var_F34 & CVar(MemVar_1F92078) & "'," & var_F94 & ")"), var_FE4, -1
  loc_1BF5901:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF5906:         var_144 = 2
  loc_1BF5924:         var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1BF5935:         If (var_F0 = "Room") Then
  loc_1BF5941:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF5959:           var_114 = Me.FGrid.TextMatrix)
  loc_1BF5980:           var_C0 = CStr(&H13 & Trim(CVar(CStr(var_114))) & ")")
  loc_1BF5999:           var_9A = (var_9A + 1)
  loc_1BF59A2:           var_104 = "DocID"
  loc_1BF59B1:           var_E4 = Me.var_114.Fields
  loc_1BF59B9:           var_E8 = var_E4.Item(var_104)
  loc_1BF59DB:           var_EC = Me.Recordset15.Fields
  loc_1BF59E3:           var_194 = var_EC.Item("VNo")
  loc_1BF5A0D:           var_1AC = Me.Recordset15.Fields.Item("vPrefix")
  loc_1BF5A43:           Proc_6_7_F25D88(var_2FC, CVar(Me.Recordset15.Fields.Item("VDate")), var_9A, var_104, " ROOM ADJUSTMENT (")
  loc_1BF5A99:           Set var_210 = Me.Txt
  loc_1BF5A9F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_604, var_F0, 1, 1)
  loc_1BF5AA7:           var_144 = var_604.Tag
  loc_1BF5AB0:           var_43C = CVar(CLng(var_9C)) 'Long
  loc_1BF5AB8:           var_48C = CVar(CLng(&H11)) 'Long
  loc_1BF5AD7:           var_4CC = CVar(CLng(var_9C)) 'Long
  loc_1BF5ADC:           var_51C = &H15
  loc_1BF5AFF:           var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BF5B04:           var_5D0 = 1
  loc_1BF5B27:           var_600 = CVar(CLng(var_9C)) 'Long
  loc_1BF5B2C:           var_648 = 2
  loc_1BF5B4F:           var_688 = CVar(CLng(var_9C)) 'Long
  loc_1BF5B54:           var_6DC = 9
  loc_1BF5B61:           Set var_83C = Me.FGrid
  loc_1BF5B81:           var_73C = CVar(CLng(var_9C)) 'Long
  loc_1BF5B86:           var_790 = &H12
  loc_1BF5BB3:           var_7E0 = CVar(CLng(var_9C)) 'Long
  loc_1BF5BB8:           var_870 = 5
  loc_1BF5BDB:           var_8C0 = CVar(CLng(var_9C)) 'Long
  loc_1BF5BE0:           var_924 = 6
  loc_1BF5C03:           var_954 = CVar(CLng(var_9C)) 'Long
  loc_1BF5C0B:           var_9B8 = CVar(CLng(7)) 'Long
  loc_1BF5C2A:           var_9E8 = CVar(CLng(var_9C)) 'Long
  loc_1BF5C2F:           var_A4C = &H17
  loc_1BF5C42:           var_9A8 = Me.FGrid.TextMatrix)
  loc_1BF5C69:           var_A3C = Me.FGrid.TextMatrix)
  loc_1BF5C90:           var_AC0 = Me.FGrid.TextMatrix)
  loc_1BF5CB7:           var_B54 = Me.FGrid.TextMatrix)
  loc_1BF5CD8:           Set var_E3C = Me.FGrid
  loc_1BF5CEF:           Proc_6_7_F25D88(var_BE4, CVar(CStr(var_E3C.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_B54, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_AC0)
  loc_1BF5D20:           Proc_6_7_F25D88(var_C74, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF5D30:           Proc_6_8_EB0DE4(var_D38, CVar(Proc_6_14_EF349C(var_A3C, CVar(CLng(&HA)), CVar(CLng(var_9C)))), var_9A8)
  loc_1BF5D39:           var_EB8 = CVar(CLng(var_9C)) 'Long
  loc_1BF5D3E:           var_EDC = &H19
  loc_1BF5D51:           var_DC4 = Me.FGrid.TextMatrix)
  loc_1BF5D6A:           var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code) Values ('"
  loc_1BF5DA4:           var_1D4 = var_124 & var_E8.Value & "'," & CVar(var_9A) & ",'" & CVar(global_56) & "'," 
  loc_1BF5DF1:           var_39C = var_1D4 & var_194.Value & ",'" & CVar(MemVar_1F92070) & "','" & var_1AC.Value & "'," & var_2FC & ",'" & CVar(Format$(CVar(Me.Recordset15.Fields.Item("VTIME")), "HH:mm")) 
  loc_1BF5E2C:           var_50C = var_39C & "','" & CVar(var_F0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF5E67:           var_6CC = var_50C & "','" & CVar(var_C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF5EA3:           var_834 = var_6CC & "',0," & CVar(Val(CStr(var_83C.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF5EE8:           var_A0C = var_834 & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(CStr(var_9A8)) 
  loc_1BF5F05:           var_AB0 = var_A0C & ",'" & CVar(CStr(var_A3C)) & "','" 
  loc_1BF5F57:           var_CF8 = var_AB0 & CVar(CStr(var_AC0)) & "','" & CVar(CStr(var_B54)) & "'," & var_BE4 & "," & var_C74 & ",'" & CVar(var_E0) 
  loc_1BF5F97:           var_E14 = var_CF8 & "'," & var_D38 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(CStr(var_DC4)) & "','" 
  loc_1BF5FB8:           unk_533C53.Execute CStr(var_E14 & CVar(MemVar_1F92078) & "')"), var_F04, -1
  loc_1BF60D6:         End If
  loc_1BF60D6:       End If
  loc_1BF60D6:     End If
  loc_1BF60D9:   Else
  loc_1BF6100:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1BF6111:     If (var_F0 = "Cr") Then
  loc_1BF611A:       global_56 = "REV"
  loc_1BF6124:       Call Proc_167_43_10ADEB8(MemVar_1F92044, var_F0, 3, CVar(CLng(var_9C)), var_ECC)
  loc_1BF612E:       var_9A = 1
  loc_1BF613F:       Set var_E4 = Me.Txt
  loc_1BF6145:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_F0, var_9A, var_DC4)
  loc_1BF614D:       var_EDC = var_E8.Text
  loc_1BF6156:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF615B:       var_144 = 1
  loc_1BF6168:       Set var_EC = Me.FGrid
  loc_1BF61A5:       var_1A4 = CVar("Select * from PlanDetails where foliono=" & var_F0 & " and Revcode='") & Trim(CVar(CStr(var_EC.TextMatrix)))) 
  loc_1BF61BC:       unk_533C53.Execute CStr(var_1A4 & "'"), var_1D4, -1
  loc_1BF61C7:       Set var_A8 = var_194
  loc_1BF6203:       If (var_A8.RecordCount > 0) Then
  loc_1BF6209:         var_C4 = "Yes"
  loc_1BF6210:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6215:         var_144 = 9
  loc_1BF6283:         If (var_A8.Fields.Item("TaxInc").Value = "Yes") Then
  loc_1BF62CF:           var_174 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(var_A8.Fields.Item("RevCode"))) & "'" 
  loc_1BF62DD:           unk_533C53.Execute CStr(var_174), var_1A4, -1
  loc_1BF62E8:           Set var_D4 = var_EC
  loc_1BF6316:           If (var_D4.RecordCount > 0) Then
  loc_1BF6326:             var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1BF6362:             var_F0 = CStr(var_124 & var_D4.Fields.Item("TaxStru").Value & "' Group By Nature ")
  loc_1BF636C:             unk_533C53.Execute var_F0, var_174, -1
  loc_1BF6377:             Set var_C8 = var_EC
  loc_1BF63A5:             If (var_C8.RecordCount > 0) Then
  loc_1BF63AE:               var_104 = "Rate"
  loc_1BF63C2:               var_E8 = var_C8.Fields.Item(var_104)
  loc_1BF63D7:               var_144 = CVar(Val(CStr(Me.FGrid.TextMatrix)))) 'Double
  loc_1BF63E3:               var_134 = (100 + var_E8.Value)
  loc_1BF6407:               var_D0 = CSng(Round(((var_144 / 100 & var_D4.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1BF641C:             End If
  loc_1BF641C:           End If
  loc_1BF642A:           Set var_E4 = Me.Txt
  loc_1BF6430:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D0, var_EC, var_EC)
  loc_1BF6438:           var_D0 = var_E8.Text
  loc_1BF6458:           Set var_EC = Me.Txt
  loc_1BF645E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, var_144, var_104)
  loc_1BF646D:           Proc_6_7_F25D88(var_1D4, CVar(var_194), var_194)
  loc_1BF64A8:           Set var_1A8 = Me.Txt
  loc_1BF64AE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF64B6:           1 = var_1AC.Tag
  loc_1BF64BF:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF64C7:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF64D0:           Set var_1C0 = Me.FGrid
  loc_1BF64E6:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF64EB:           var_36C = &H15
  loc_1BF650E:           var_3DC = CVar(CLng(var_9C)) 'Long
  loc_1BF6516:           var_41C = CVar(CLng(&HF)) 'Long
  loc_1BF6535:           var_44C = CVar(CLng(var_9C)) 'Long
  loc_1BF653A:           var_4AC = 1
  loc_1BF655D:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF6562:           var_53C = 9
  loc_1BF659F:           var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BF65A4:           var_5F0 = &H12
  loc_1BF65D1:           var_668 = CVar(CLng(var_9C)) 'Long
  loc_1BF65D6:           var_688 = 5
  loc_1BF65E9:           var_6AC = Me.FGrid.TextMatrix)
  loc_1BF65FE:           var_73C = 6
  loc_1BF6611:           var_760 = Me.FGrid.TextMatrix)
  loc_1BF6638:           var_7F4 = Me.FGrid.TextMatrix)
  loc_1BF6652:           Set var_838 = Me.Txt
  loc_1BF6658:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_D44, var_7F4, CVar(CLng(7)), CVar(CLng(var_9C)), var_760)
  loc_1BF6660:           var_73C = var_83C.Text
  loc_1BF6680:           var_8D4 = Me.FGrid.TextMatrix)
  loc_1BF66A7:           var_968 = Me.FGrid.TextMatrix)
  loc_1BF66CE:           var_9FC = Me.FGrid.TextMatrix)
  loc_1BF66F5:           var_A90 = Me.FGrid.TextMatrix)
  loc_1BF6706:           Proc_6_7_F25D88(var_AB0, CVar(CStr(var_A90)), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9FC, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_968)
  loc_1BF6720:           Set var_B24 = Me.FGrid
  loc_1BF6726:           var_B34 = var_B24.TextMatrix)
  loc_1BF6737:           Proc_6_7_F25D88(var_B54, CVar(CStr(var_B34)), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF6747:           Proc_6_8_EB0DE4(var_BE4, CVar(Proc_6_14_EF349C(var_8D4, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF6791:           Set var_D40 = Me.Txt
  loc_1BF6797:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E3C)
  loc_1BF67AF:           Proc_6_7_F25D88(var_DC4, var_DC)
  loc_1BF67C8:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF67D7:           var_180 = CStr(var_9A)
  loc_1BF67DB:           var_184 = var_178 & "'," & var_180
  loc_1BF67EC:           var_18C = var_184 & ",'" & global_56
  loc_1BF6802:           var_2DC = var_18C & "','" & CStr(global_108)
  loc_1BF6840:           var_270 = CVar(var_2DC & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1BF687B:           var_3AC = var_270 & "','" & CVar(var_2EC) & "','" & CVar(CStr(var_1C0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF68B7:           var_52C = var_3AC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF68F3:           var_6CC = var_52C & "," & CVar(Val(CStr(var_D0))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_6AC)) 
  loc_1BF694B:           var_8F4 = var_6CC & "'," & "'" & CVar(CStr(var_760)) & "','" & CVar(CStr(var_7F4)) & "'," & CVar(var_D44) & ",'" & CVar(CStr(var_8D4)) 
  loc_1BF69A6:           var_BA4 = var_8F4 & "','" & CVar(CStr(var_968)) & "','" & CVar(CStr(var_9FC)) & "'," & var_AB0 & "," & var_B54 & ",'" & CVar(MemVar_1F920C8) 
  loc_1BF69AF:           var_BC4 = var_BA4 & "'," 
  loc_1BF69EC:           var_D08 = var_BC4 & var_BE4 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(Proc_6_38_E68A98(var_C4, var_6AC)) & "','" & var_A8.Fields.Item("ChrgCode").Value 
  loc_1BF6A1B:           var_DA4 = var_D08 & "','" & CVar(var_E3C.Tag) & "','" & CVar(MemVar_1F92078) & "'," 
  loc_1BF6A2B:           var_DF4 = var_DA4 & var_DC4 & ")" 
  loc_1BF6A39:           unk_533C53.Execute CStr(var_DF4), var_E14, -1
  loc_1BF6B6F:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6B74:           var_144 = 1
  loc_1BF6B87:           var_114 = Me.FGrid.TextMatrix)
  loc_1BF6BA1:           Set var_E8 = Me.Txt
  loc_1BF6BA7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_18C, var_114)
  loc_1BF6BAF:           var_144 = var_EC.Text
  loc_1BF6BD2:           Set var_194 = Me.Txt
  loc_1BF6BD8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1A8, var_2DC)
  loc_1BF6BE0:           var_104 = var_1A8.Text
  loc_1BF6C10:           var_1D4 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1BF6C23:           Set var_1AC = Me.Txt
  loc_1BF6C29:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C0, var_F0, 1)
  loc_1BF6C31:           1 = var_1C0.Tag
  loc_1BF6C3A:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF6C42:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF6C62:           var_240 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF6C6B:           var_2C0 = CVar(CLng(var_9C)) 'Long
  loc_1BF6C70:           var_35C = 1
  loc_1BF6C83:           var_250 = Me.FGrid.TextMatrix)
  loc_1BF6C93:           var_37C = CVar(CLng(var_9C)) 'Long
  loc_1BF6C98:           var_3DC = 1
  loc_1BF6CAB:           var_260 = Me.FGrid.TextMatrix)
  loc_1BF6CBB:           var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF6CC0:           var_43C = 9
  loc_1BF6CE6:           var_1038 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF6CED:           var_48C = CVar(CLng(var_9C)) 'Long
  loc_1BF6CF2:           var_4BC = &H12
  loc_1BF6D18:           var_1040 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF6D1F:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF6D24:           var_53C = 5
  loc_1BF6D48:           var_2FC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF6D51:           var_55C = CVar(CLng(var_9C)) 'Long
  loc_1BF6D7A:           var_32C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF6DB4:           Set var_838 = Me.Txt
  loc_1BF6DBA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1BF6DC2:           var_55C = var_83C.Text
  loc_1BF6DCF:           var_1048 = Val(var_180)
  loc_1BF6DD6:           var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BF6E05:           var_6DC = CVar(CLng(&HB)) 'Long
  loc_1BF6E4A:           var_3CC = Date
  loc_1BF6E52:           var_3EC = Date
  loc_1BF6E5A:           var_40C = Date
  loc_1BF6E6D:           Set var_A80 = Me.Txt
  loc_1BF6E73:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B24, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1BF6E7B:           var_6DC = var_B24.Tag
  loc_1BF6EA8:           var_104C = Proc_6_38_E68A98(CVar(var_A8.Fields.Item("ChrgCode")), CVar(CLng(var_9C)), Me.FGrid.TextMatrix), CVar(CLng(&HA)))
  loc_1BF6EB0:           var_1030 = 0
  loc_1BF6EBB:           var_102C = 0
  loc_1BF6EE8:           var_1018 = "A"
  loc_1BF6F57:           var_840 = vbNullString
  loc_1BF6FB6:           Proc_96_8_1CC2560(CStr(var_114), var_18C, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_2DC))
  loc_1BF7061:         Else
  loc_1BF706F:           Set var_E4 = Me.Txt
  loc_1BF7075:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_1D4), var_F0, CStr(var_240))
  loc_1BF707D:           CStr(var_250) = var_E8.Text
  loc_1BF709D:           Set var_EC = Me.Txt
  loc_1BF70A3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, CStr(var_260))
  loc_1BF70B2:           Proc_6_7_F25D88(var_1D4, CVar(var_194), var_840)
  loc_1BF70ED:           Set var_1A8 = Me.Txt
  loc_1BF70F3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF70FB:           1 = var_1AC.Tag
  loc_1BF7104:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF710C:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF7115:           Set var_1C0 = Me.FGrid
  loc_1BF712B:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF7130:           var_36C = &H15
  loc_1BF7153:           var_3DC = CVar(CLng(var_9C)) 'Long
  loc_1BF715B:           var_41C = CVar(CLng(&HF)) 'Long
  loc_1BF717A:           var_44C = CVar(CLng(var_9C)) 'Long
  loc_1BF717F:           var_4AC = 1
  loc_1BF71A2:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF71A7:           var_53C = 9
  loc_1BF71D4:           var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BF71D9:           var_5D0 = &H12
  loc_1BF7206:           var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BF720B:           var_668 = 5
  loc_1BF721E:           var_638 = Me.FGrid.TextMatrix)
  loc_1BF7233:           var_71C = 6
  loc_1BF7246:           var_6EC = Me.FGrid.TextMatrix)
  loc_1BF726D:           var_780 = Me.FGrid.TextMatrix)
  loc_1BF7287:           Set var_838 = Me.Txt
  loc_1BF728D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_840, var_780, CVar(CLng(7)), CVar(CLng(var_9C)), var_6EC)
  loc_1BF7295:           var_71C = var_83C.Text
  loc_1BF72B5:           var_860 = Me.FGrid.TextMatrix)
  loc_1BF72DC:           var_8F4 = Me.FGrid.TextMatrix)
  loc_1BF7303:           var_988 = Me.FGrid.TextMatrix)
  loc_1BF733B:           Proc_6_7_F25D88(var_A90, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_988, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_8F4)
  loc_1BF7355:           Set var_B24 = Me.FGrid
  loc_1BF736C:           Proc_6_7_F25D88(var_B34, CVar(CStr(var_B24.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF737C:           Proc_6_8_EB0DE4(var_BC4, CVar(Proc_6_14_EF349C(var_860, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF73CA:           Set var_D40 = Me.Txt
  loc_1BF73D0:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E3C)
  loc_1BF73E8:           Proc_6_7_F25D88(var_DA4, var_DC)
  loc_1BF7401:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF7410:           var_180 = CStr(var_9A)
  loc_1BF7414:           var_184 = var_178 & "'," & var_180
  loc_1BF7425:           var_18C = var_184 & ",'" & global_56
  loc_1BF743B:           var_2DC = var_18C & "','" & CStr(global_108)
  loc_1BF7479:           var_270 = CVar(var_2DC & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1BF74B4:           var_3AC = var_270 & "','" & CVar(var_2EC) & "','" & CVar(CStr(var_1C0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF74F0:           var_52C = var_3AC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF7535:           var_760 = var_52C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_638)) & "'," & "'" & CVar(CStr(var_6EC)) 
  loc_1BF7584:           var_968 = var_760 & "','" & CVar(CStr(var_780)) & "'," & CVar(var_840) & ",'" & CVar(CStr(var_860)) & "','" & CVar(CStr(var_8F4)) 
  loc_1BF75DB:           var_BD4 = var_968 & "','" & CVar(CStr(var_988)) & "'," & var_A90 & "," & var_B34 & ",'" & CVar(MemVar_1F920C8) & "'," & var_BC4 
  loc_1BF7614:           var_CF8 = var_BD4 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(Proc_6_38_E68A98(var_C4, var_638)) & "','" & CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("ChrgCode")))) 
  loc_1BF7627:           var_D38 = var_CF8 & "','" & CVar(var_E3C.Tag) 
  loc_1BF7643:           var_D84 = var_D38 & "','" & CVar(MemVar_1F92078) & "'," 
  loc_1BF7661:           unk_533C53.Execute CStr(var_D84 & var_DA4 & ")"), var_DF4, -1
  loc_1BF7793:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF7798:           var_144 = 1
  loc_1BF77AB:           var_114 = Me.FGrid.TextMatrix)
  loc_1BF77C5:           Set var_E8 = Me.Txt
  loc_1BF77CB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_18C, var_114)
  loc_1BF77D3:           var_144 = var_EC.Text
  loc_1BF77F6:           Set var_194 = Me.Txt
  loc_1BF77FC:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1A8, var_2DC)
  loc_1BF7804:           var_104 = var_1A8.Text
  loc_1BF7834:           var_1D4 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1BF7847:           Set var_1AC = Me.Txt
  loc_1BF784D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C0, var_F0, 1)
  loc_1BF7855:           1 = var_1C0.Tag
  loc_1BF785E:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF7866:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF7886:           var_240 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF788F:           var_2C0 = CVar(CLng(var_9C)) 'Long
  loc_1BF7894:           var_35C = 1
  loc_1BF78A7:           var_250 = Me.FGrid.TextMatrix)
  loc_1BF78B7:           var_37C = CVar(CLng(var_9C)) 'Long
  loc_1BF78BC:           var_3DC = 1
  loc_1BF78CF:           var_260 = Me.FGrid.TextMatrix)
  loc_1BF78DF:           var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF78E4:           var_43C = 9
  loc_1BF790A:           var_1038 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF7911:           var_48C = CVar(CLng(var_9C)) 'Long
  loc_1BF7916:           var_4BC = &H12
  loc_1BF793C:           var_1040 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF7943:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF7948:           var_53C = 5
  loc_1BF796C:           var_2FC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF7975:           var_55C = CVar(CLng(var_9C)) 'Long
  loc_1BF799E:           var_32C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF79D8:           Set var_838 = Me.Txt
  loc_1BF79DE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1BF79E6:           var_55C = var_83C.Text
  loc_1BF79F3:           var_1048 = Val(var_180)
  loc_1BF79FA:           var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BF7A29:           var_6DC = CVar(CLng(&HB)) 'Long
  loc_1BF7A6E:           var_3CC = Date
  loc_1BF7A76:           var_3EC = Date
  loc_1BF7A7E:           var_40C = Date
  loc_1BF7A91:           Set var_A80 = Me.Txt
  loc_1BF7A97:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B24, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1BF7A9F:           var_6DC = var_B24.Tag
  loc_1BF7ABB:           var_D3C = var_A8.Fields.Item("ChrgCode")
  loc_1BF7ACC:           var_104C = Proc_6_38_E68A98(CVar(var_D3C), CVar(CLng(var_9C)), Me.FGrid.TextMatrix), CVar(CLng(&HA)))
  loc_1BF7AD4:           var_1030 = 0
  loc_1BF7ADF:           var_102C = 0
  loc_1BF7B0C:           var_1018 = "A"
  loc_1BF7B7B:           var_840 = vbNullString
  loc_1BF7BDA:           Proc_96_8_1CC2560(CStr(var_114), var_18C, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_2DC))
  loc_1BF7C82:         End If
  loc_1BF7C85:       Else
  loc_1BF7C88:         var_C4 = vbNullString
  loc_1BF7C99:         Set var_E4 = Me.Txt
  loc_1BF7C9F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_1D4), var_F0, CStr(var_240))
  loc_1BF7CA7:         CStr(var_250) = var_E8.Text
  loc_1BF7CC7:         Set var_EC = Me.Txt
  loc_1BF7CCD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, CStr(var_260))
  loc_1BF7CDC:         Proc_6_7_F25D88(var_1D4, CVar(var_194), var_840)
  loc_1BF7D17:         Set var_1A8 = Me.Txt
  loc_1BF7D1D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF7D25:         1 = var_1AC.Tag
  loc_1BF7D2E:         var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF7D36:         var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF7D3F:         Set var_1C0 = Me.FGrid
  loc_1BF7D55:         var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF7D5A:         var_36C = &H15
  loc_1BF7D7D:         var_3DC = CVar(CLng(var_9C)) 'Long
  loc_1BF7D85:         var_41C = CVar(CLng(&HF)) 'Long
  loc_1BF7DA4:         var_44C = CVar(CLng(var_9C)) 'Long
  loc_1BF7DA9:         var_4AC = 1
  loc_1BF7DCC:         var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF7DD1:         var_53C = 9
  loc_1BF7DFE:         var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BF7E03:         var_5D0 = &H12
  loc_1BF7E30:         var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BF7E35:         var_668 = 5
  loc_1BF7E48:         var_638 = Me.FGrid.TextMatrix)
  loc_1BF7E5D:         var_71C = 6
  loc_1BF7E70:         var_6EC = Me.FGrid.TextMatrix)
  loc_1BF7E97:         var_780 = Me.FGrid.TextMatrix)
  loc_1BF7EB1:         Set var_838 = Me.Txt
  loc_1BF7EB7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_840, var_780, CVar(CLng(7)), CVar(CLng(var_9C)), var_6EC)
  loc_1BF7EBF:         var_71C = var_83C.Text
  loc_1BF7ED9:         Set var_8C4 = Me.FGrid
  loc_1BF7EDF:         var_860 = var_8C4.TextMatrix)
  loc_1BF7F06:         var_8F4 = Me.FGrid.TextMatrix)
  loc_1BF7F2D:         var_988 = Me.FGrid.TextMatrix)
  loc_1BF7F65:         Proc_6_7_F25D88(var_A90, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_988, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_8F4)
  loc_1BF7F96:         Proc_6_7_F25D88(var_B34, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF7FA6:         Proc_6_8_EB0DE4(var_BC4, CVar(Proc_6_14_EF349C(var_860, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF7FC9:         Set var_CD8 = Me.Txt
  loc_1BF7FCF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D3C)
  loc_1BF7FE7:         Proc_6_7_F25D88(var_D38, var_DC)
  loc_1BF8000:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF8013:         var_184 = var_178 & "'," & CStr(var_9A)
  loc_1BF801A:         var_188 = var_184 & ",'"
  loc_1BF802B:         var_2D4 = var_188 & global_56 & "','"
  loc_1BF8041:         var_2E4 = var_2D4 & CStr(global_108) & "','"
  loc_1BF8078:         var_270 = CVar(var_2E4 & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1BF80B3:         var_3AC = var_270 & "','" & CVar(var_2EC) & "','" & CVar(CStr(var_1C0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF80EF:         var_52C = var_3AC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF8134:         var_760 = var_52C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_638)) & "'," & "'" & CVar(CStr(var_6EC)) 
  loc_1BF8183:         var_968 = var_760 & "','" & CVar(CStr(var_780)) & "'," & CVar(var_840) & ",'" & CVar(CStr(var_860)) & "','" & CVar(CStr(var_8F4)) 
  loc_1BF81DA:         var_BD4 = var_968 & "','" & CVar(CStr(var_988)) & "'," & var_A90 & "," & var_B34 & ",'" & CVar(MemVar_1F920C8) & "'," & var_BC4 
  loc_1BF8213:         var_CE8 = var_BD4 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(Proc_6_38_E68A98(var_C4, var_638)) & "','" & CVar(var_D3C.Tag) 
  loc_1BF824D:         unk_533C53.Execute CStr(var_CE8 & "','" & CVar(MemVar_1F92078) & "'," & var_D38 & ")"), var_D84, -1
  loc_1BF8373:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF8378:         var_144 = 1
  loc_1BF838B:         var_114 = Me.FGrid.TextMatrix)
  loc_1BF83A5:         Set var_E8 = Me.Txt
  loc_1BF83AB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_2D4, var_114)
  loc_1BF83B3:         var_144 = var_EC.Text
  loc_1BF83BC:         var_134 = CVar(Me.LblVPrefix) 'Address
  loc_1BF83D6:         Set var_194 = Me.Txt
  loc_1BF83DC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1A8, var_2E4)
  loc_1BF83E4:         var_104 = var_1A8.Text
  loc_1BF840E:         var_1BC = CVar(Format$(Time, "HH:mm")) 'String
  loc_1BF8414:         var_1D4 = Trim(var_1BC)
  loc_1BF8427:         Set var_1AC = Me.Txt
  loc_1BF842D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C0, var_F0, 1)
  loc_1BF8435:         1 = var_1C0.Tag
  loc_1BF843E:         var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF8446:         var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF8466:         var_240 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF846F:         var_2C0 = CVar(CLng(var_9C)) 'Long
  loc_1BF8474:         var_35C = 1
  loc_1BF8487:         var_250 = Me.FGrid.TextMatrix)
  loc_1BF8497:         var_37C = CVar(CLng(var_9C)) 'Long
  loc_1BF849C:         var_3DC = 1
  loc_1BF84AF:         var_260 = Me.FGrid.TextMatrix)
  loc_1BF84BF:         var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF84C4:         var_43C = 9
  loc_1BF84EA:         var_1040 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF84F1:         var_48C = CVar(CLng(var_9C)) 'Long
  loc_1BF84F6:         var_4BC = 9
  loc_1BF851C:         var_1048 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF8523:         var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF8528:         var_53C = &H12
  loc_1BF854E:         var_1054 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF8555:         var_55C = CVar(CLng(var_9C)) 'Long
  loc_1BF855A:         var_590 = 5
  loc_1BF857E:         var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF8587:         var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BF85B0:         var_33C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF85EA:         Set var_83C = Me.Txt
  loc_1BF85F0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_8C4, var_184, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1BF85F8:         var_5D0 = var_8C4.Text
  loc_1BF8605:         var_105C = Val(var_184)
  loc_1BF860C:         var_688 = CVar(CLng(var_9C)) 'Long
  loc_1BF8614:         var_6DC = CVar(CLng(&HA)) 'Long
  loc_1BF8623:         var_39C = Me.FGrid.TextMatrix)
  loc_1BF8633:         var_71C = CVar(CLng(var_9C)) 'Long
  loc_1BF863B:         var_73C = CVar(CLng(&HB)) 'Long
  loc_1BF8680:         var_3EC = Date
  loc_1BF8688:         var_40C = Date
  loc_1BF8690:         var_45C = Date
  loc_1BF86A3:         Set var_B24 = Me.Txt
  loc_1BF86A9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CD8, var_188, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1BF86B1:         var_73C = var_CD8.Tag
  loc_1BF86BB:         var_104C = 0
  loc_1BF86C6:         var_1030 = 0
  loc_1BF86D9:         var_102C = 0
  loc_1BF86F7:         var_101C = "A"
  loc_1BF876A:         var_D44 = vbNullString
  loc_1BF87C9:         Proc_96_8_1CC2560(CStr(var_114), var_2D4, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(var_134)), CDate(var_2E4))
  loc_1BF8871:       End If
  loc_1BF8887:       Set var_E4 = Me.FGrid
  loc_1BF88A0:       var_E48 = Val(CStr(var_E4.TextMatrix)))
  loc_1BF88AA:       var_A4 = (var_A4 + var_E48)
  loc_1BF88CA:       var_F0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1BF88F0:       var_154 = CVar(var_F0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_56 & "' And VP.Date_From<=") 'String
  loc_1BF8907:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_E8, var_188, var_154, var_1BC, -1, var_EC)
  loc_1BF890F:       var_A4 = var_E8.Text
  loc_1BF891D:       Proc_6_7_F25D88(var_134, CVar(var_188), var_E48, 9)
  loc_1BF892E:       var_1A4 = CVar(CLng(var_9C)) & var_134 & " Order By VP.Date_From DESC" 
  loc_1BF893C:       unk_533C53.Execute CStr(var_1A4), CStr(var_1D4), var_F0
  loc_1BF8947:       Set var_8C = var_EC
  loc_1BF8988:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1BF89A3:         var_F0 = CStr(global_108)
  loc_1BF89C3:         var_188 = "Update Voucher_Prefix Set Start_Srl_No=" & var_F0 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1BF89DB:         var_154 = CVar(var_188 & "') and V_Type='" & global_56 & "' and Date_From=") 'String
  loc_1BF8A07:         Proc_6_7_F25D88(var_134, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154, var_1A4)
  loc_1BF8A0F:         var_174 = -1 & var_134 
  loc_1BF8A1D:         unk_533C53.Execute CStr(CVar(CLng(var_9C)) & var_134), var_EC, CStr(var_240)
  loc_1BF8A4B:       End If
  loc_1BF8A4B:     End If
  loc_1BF8A4B:   End If
  loc_1BF8A4E: Next var_2E0 'Integer
  loc_1BF8A59: unk_533C53.CommitTrans
  loc_1BF8A62: var_86 = CByte(0) 'Byte
  loc_1BF8A66: Call Proc_167_41_F060C8()
  loc_1BF8A76: Me.Requery -1
  loc_1BF8A7B: Call Proc_167_46_121BA28()
  loc_1BF8A85: Set var_94 = Nothing
  loc_1BF8A8D: Set var_8C = Nothing
  loc_1BF8A95: Set var_A8 = Nothing
  loc_1BF8A9D: Set var_C8 = Nothing
  loc_1BF8AA5: Set var_D4 = Nothing
  loc_1BF8AAD: global_188 = &HFF
  loc_1BF8ABD: Me.Global.Unload Me
  loc_1BF8AC5: Exit Sub
  loc_1BF8AC6: Exit Sub
  loc_1BF8AC7: ' Referenced from: 1BF3190
  loc_1BF8AD0: If (CInt(var_86) = 1) Then
  loc_1BF8AD9:   unk_533C53.RollbackTrans
  loc_1BF8ADE: End If
  loc_1BF8AE6: Set var_E4 = Err()
  loc_1BF8AEC: Call 0.Method_arg_2C (var_F0)
  loc_1BF8B05: MsgBox(CVar(var_F0), &H10, var_134, var_154, CVar(CLng(var_9C)) & var_134)
  loc_1BF8B18: Exit Sub
End Sub

Private Sub Form_Load() '146395C
  'Data Table: 533C28
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_533C53 As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_B4 As TextBox
  Dim var_D4 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As DataGrid
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_138 As Variant
  loc_1462DB8: On Error Goto loc_1463956
  loc_1462DC2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1462DDA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1462DF0: Me.FrCCDet.BackColor = CLng(MemVar_1F921B0)
  loc_1462E06: Me.FrChqDet.BackColor = CLng(MemVar_1F921B0)
  loc_1462E1C: Me.FrSendRoom.BackColor = CLng(MemVar_1F921B0)
  loc_1462E32: Me.FrEmp.BackColor = CLng(MemVar_1F921B0)
  loc_1462E48: Me.FrMember.BackColor = CLng(MemVar_1F921B0)
  loc_1462E5E: Me.FrComp.BackColor = CLng(MemVar_1F921B0)
  loc_1462E6B: global_188 = 0
  loc_1462E7A: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_1462E8B: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_1462E9C: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_1462EAD: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_1462EBE: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1462ECF: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1462EE0: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_1462EF1: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_1462F02: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_1462F13: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1462F2D: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1462F3B: Set var_B0 = MemVar_1F92044
  loc_1462F4A: Call 0.Method_Form_Load8 (var_B0)
  loc_1462F60: Me.Recordset20.Clone
  loc_1462F7A: Call 0.Method_arg_50 (var_B0, -1)
  loc_1462FA1: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_1462FAA: Me.Connection15.Execute var_BC, var_CC, -1
  loc_1462FDC: CVarUnk
  loc_1462FE1: VerifyVarObj
  loc_1462FED: LateIdStAd
  loc_146301F: unk_533C53.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_CC, -1
  loc_1463049: var_B0 = Me.DGCompany.Fields
  loc_1463051: var_B4 = var_B0.Item("CreditCardInfoMandatory")
  loc_1463059: var_CC = CVar(var_B4) 'Address
  loc_1463073: If (Proc_6_38_E68A98(var_CC, var_B0, var_B0, var_B0) = "Y") Then
  loc_146307C:   global_88 = "Y"
  loc_1463080: End If
  loc_146308E: Set var_B0 = Me.Txt
  loc_1463094: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0)
  loc_146309C: var_B0 = var_B4.Left
  loc_14630B3: Me.DGCompany.Left = CVar(var_D0)
  loc_14630CF: Set var_D4 = Me.Txt
  loc_14630D5: Call 0.Method_Form_Load0 (CInt(&H19), var_D8, var_DC)
  loc_14630DD: var_B0 = var_D8.Height
  loc_14630F0: Set var_B0 = Me.Txt
  loc_14630F6: Call 0.Method_Form_Load0 (CInt(&H19), var_B4)
  loc_146310E: var_9C = CVar(((var_B4.Top + var_DC) + CDbl(&H1E))) 'Single
  loc_146311D: Me.DGCompany.Top = CVar(var_B4.Top)
  loc_146313D: Set var_B0 = Me.Txt
  loc_1463143: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_1463162: Me.DGChrgPayment.Left = CVar(var_B4.Left)
  loc_146317E: Set var_D4 = Me.Txt
  loc_1463184: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_146318C: var_DC = var_D8.Height
  loc_14631A5: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_14631AD: var_D0 = var_B4.Top
  loc_14631B9: var_9C = CVar((var_D0 + var_DC)) 'Single
  loc_14631C8: Me.DGChrgPayment.Top = CVar(var_B4.Left)
  loc_14631FE: unk_533C53.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') ORDER BY Name", var_CC, -1
  loc_146320F: Set global_120 = Me.Txt
  loc_1463230: CVarUnk
  loc_1463235: VerifyVarObj
  loc_146323B: Set var_B0 = Me.DGEmp
  loc_1463241: LateIdStAd
  loc_1463263: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_146326B: global_120 = var_B4.Left
  loc_1463282: Me.DGEmp.Left = CVar(var_D0)
  loc_146329E: Set var_D4 = Me.Txt
  loc_14632A4: Call 0.Method_Form_Load0 (CInt(&H17), var_D8, var_DC)
  loc_14632AC: var_B0 = var_D8.Height
  loc_14632C5: Call 0.Method_Form_Load0 (CInt(&H17), var_B4)
  loc_14632CD: var_D0 = var_B4.Top
  loc_14632DD: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_14632EC: Me.DGEmp.Top = CVar(var_D0)
  loc_1463319: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_1463330: unk_533C53.Execute var_BC & MemVar_1F92078 & "') Order By Name", var_CC, -1
  loc_1463341: Set global_124 = Me.Txt
  loc_1463366: CVarUnk
  loc_146336B: VerifyVarObj
  loc_1463371: Set var_B0 = Me.DGMember
  loc_1463377: LateIdStAd
  loc_14633A5: If (FdReSetlement.ParentForm = "Check Out") Then
  loc_14633B2:   Set global_100 = New 
  loc_14633C4:   Me.DGMember.CursorLocation = 3
  loc_14633E7:   var_B8 = "SELECT DP.PayCode as Code, RevMast.name as Name, revmast.Type as Flag, revMast.PayType as Paytype, revMast.SaleRate as SaleRate, revMast.Cost as Cost FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F92078
  loc_1463406:   Me.Open CVar(var_B8 & "') AND restcode='" & MemVar_1F92078 & "Fom" & "' ORDER BY NAME "), CVar(MemVar_1F92044), 2
  loc_1463420:   CVarUnk
  loc_1463425:   VerifyVarObj
  loc_146342B:   Set var_B0 = Me.DGChrgPayment
  loc_1463431:   LateIdStAd
  loc_1463442: Else
  loc_146344C:   Set global_100 = New 
  loc_146345E:   Me.CursorLocation = 3
  loc_1463488:   var_CC = CVar("Select Code,Name,Type as Flag,PayType,SaleRate,Cost From RevMast where  (LOGSITE_CODE='" & MemVar_1F92078 & "') AND ((Fieldtype in ('C','P')  AND FLAGTYPE='FOM') OR (PAYTYPE<>'' AND PAYTYPE IS NOT NULL)) ORDER BY NAME ") 'String
  loc_1463492:   Me.Open var_CC, CVar(MemVar_1F92044), 2
  loc_14634A6:   CVarUnk
  loc_14634AB:   VerifyVarObj
  loc_14634B1:   Set var_B0 = Me.DGChrgPayment
  loc_14634B7:   LateIdStAd
  loc_14634C5: End If
  loc_14634D9: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt, global_100, 3, -1)
  loc_14634E1: var_B0 = var_B4.Left
  loc_14634F8: Me.DGRoomNo.Left = CVar(var_D0)
  loc_1463514: Set var_D4 = Me.Txt
  loc_146351A: Call 0.Method_Form_Load0 (CInt(0), var_D8, var_DC, global_100, 3)
  loc_1463522: -1 = var_D8.Height
  loc_1463535: Set var_B0 = Me.Txt
  loc_146353B: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0)
  loc_1463543: var_B0 = var_B4.Top
  loc_1463553: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_146355C: Set var_E0 = Me.DGRoomNo
  loc_1463562: var_E0.Top = CVar(var_D0)
  loc_1463590: Me.var_E0.CursorLocation = 3
  loc_14635B3: var_B8 = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.Docid, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,RoomOcc.ChkOutDate, RoomOcc.ChkOutTime,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, " & "GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GUESTSTAT.NAME AS STATUSNAME,RoomOcc.PlanCode FROM (((((RoomMast inner JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) Inner JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) Inner JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) Inner JOIN RoomCat ON RoomOcc.RoomCat=RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE (RoomOcc.LOGSITE_CODE='"
  loc_14635C1: var_CC = CVar(var_B8 & MemVar_1F92078 & "') AND CHKOUTDATE IS not NULL AND RoomOcc.Type='O' AND ROOMMAST.TYPE='RO' ORDER BY RoomOcc.Docid") 'String
  loc_14635CB: Me.Open var_CC, CVar(MemVar_1F92044), 2
  loc_14635E3: CVarUnk
  loc_14635E8: VerifyVarObj
  loc_14635F4: LateIdStAd
  loc_146360C: Set global_192 = New 
  loc_146361E: Me.DGRoomNo.CursorLocation = 3
  loc_146362D: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_146363B:   Proc_6_7_F25D88(var_CC, MemVar_1F920F4, Me.DGRoomNo, New)
  loc_146364B:   Proc_6_7_F25D88(var_138, MemVar_1F920FC, 3)
  loc_1463667:   var_AC = "Select BillDet.Bill_No ,BillDet.BillSettleDate as SettleDate,BillDet.Folio_NO as FolioNo,GuestProf.Name as GuestName,GuestFolio.Docid  as FolioNoDocid from BillDet inner join Guestprof on BillDet.GuestProf=GuestProf.code Inner Join GuestFolio on GuestFolio.docid=BillDet.FolioNodocid Where BillDet.BillSettleDate between "
  loc_14636A6:   Me.Open var_AC & var_CC & " And " & var_138 & " and BillDet.LogSite_Code='" & CVar(MemVar_1F92078) & "' order by Bill_No", CVar(MemVar_1F92044), 2
  loc_14636C1: Else
  loc_14636CC:   Proc_6_7_F25D88(var_CC, MemVar_1F920EC, 3, -1)
  loc_14636E8:   var_AC = "Select BillDet.Bill_No ,BillDet.BillSettleDate as SettleDate,BillDet.Folio_NO as FolioNo,GuestProf.Name as GuestName,GuestFolio.Docid  as FolioNoDocid from BillDet inner join Guestprof on BillDet.GuestProf=GuestProf.code Inner Join GuestFolio on GuestFolio.Docid=BillDet.FolioNoDocid Where BillDet.BillSettleDate="
  loc_1463717:   Me.Open var_AC & var_CC & " and BillDet.LogSite_Code='" & CVar(MemVar_1F92078) & "' order by Bill_No", CVar(MemVar_1F92044), 2
  loc_1463729: End If
  loc_1463732: CVarUnk
  loc_1463737: VerifyVarObj
  loc_146373D: Set var_B0 = Me.DGBill
  loc_1463743: LateIdStAd
  loc_1463765: Call 0.Method_Form_Load0 (CInt(&H24), var_B4, var_D0, Me.Txt, global_192)
  loc_146376D: 3 = var_B4.Left
  loc_1463784: Me.DGBill.Left = CVar(var_D0)
  loc_14637A0: Set var_D4 = Me.Txt
  loc_14637A6: Call 0.Method_Form_Load0 (CInt(&H24), var_D8, var_DC, -1)
  loc_14637AE: -1 = var_D8.Height
  loc_14637C1: Set var_B0 = Me.Txt
  loc_14637C7: Call 0.Method_Form_Load0 (CInt(&H24), var_B4, var_D0)
  loc_14637CF: global_124 = var_B4.Top
  loc_14637DF: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_14637E8: Set var_E0 = Me.DGBill
  loc_14637EE: var_E0.Top = CVar(var_D0)
  loc_146380A: Set global_112 = New 
  loc_146381C: Me.var_E0.CursorLocation = 3
  loc_1463846: var_CC = CVar("SELECT RoomOcc.DocId as Code,RoomOcc.RoomNo,RoomOcc.FolioNo From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F92078 & "') AND CHKOUTDATE IS NULL") 'String
  loc_1463850: Me.Open var_CC, CVar(MemVar_1F92044), 2
  loc_1463864: CVarUnk
  loc_1463869: VerifyVarObj
  loc_146386F: Set var_B0 = Me.DGRoom
  loc_1463875: LateIdStAd
  loc_1463897: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_146389F: global_112 = var_B4.Left
  loc_14638B6: Me.DGRoom.Left = CVar(var_D0)
  loc_14638E4: Set var_B0 = Me.Txt
  loc_14638EA: Call 0.Method_Form_Load0 (CInt(&H18), var_B4, var_D0)
  loc_14638F2: 3 = var_B4.Height
  loc_1463902: var_9C = CVar(((var_D0 + Me.FrSendRoom.Top) + CDbl(&H1E))) 'Single
  loc_1463911: Me.DGRoom.Top = CVar(var_D0)
  loc_1463921: Call Proc_167_46_121BA28(-1)
  loc_146392E: Call 0.Method_arg_7C (CDbl(1785))
  loc_146393B: Call 0.Method_MeC (CDbl(7770))
  loc_1463948: Call 0.Method_Me4 (CDbl(10455))
  loc_1463952: Set var_88 = Nothing
  loc_1463955: Exit Sub
  loc_1463956: ' Referenced from: 1462DB8
  loc_1463956: Proc_6_60_E62BC4(var_B0)
  loc_146395B: Exit Sub
End Sub

Private Sub Form_Resize() 'E70484
  'Data Table: 533C28
  loc_E7042E: Call 0.Method_arg_50 (var_88)
  loc_E70440: Me.LblFormCaption.Caption = var_88
  loc_E70459: Me.LblFormCaption.Left = CDbl(0)
  loc_E70467: Call 0.Method_arg_100 (var_90)
  loc_E70479: Me.LblFormCaption.Width = var_90
  loc_E70481: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E55B44
  'Data Table: 533C28
  loc_E55B0F: Set global_96 = Nothing
  loc_E55B21: Set global_100 = Nothing
  loc_E55B33: Set global_192 = Nothing
  loc_E55B3F: global_52 = 0
  loc_E55B42: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'EA7E24
  'Data Table: 533C28
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim Cancel As Integer
  loc_EA7DA8: var_94 = 1
  loc_EA7DB1: var_B4 = 1
  loc_EA7DE0: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_EA7E12:   If (MsgBox("Exit without Saving Transaction?", &H121, var_EC, var_FC, var_10C) = 2) Then
  loc_EA7E17:     Cancel = 1
  loc_EA7E1A:     Exit Sub
  loc_EA7E1E:   Else
  loc_EA7E20:     Cancel = 0
  loc_EA7E23:   End If
  loc_EA7E23: End If
  loc_EA7E23: Exit Sub
End Sub

Private Sub Form_Activate() 'E70888
  'Data Table: 533C28
  Dim var_94 As TextBox
  loc_E70834: On Error Goto loc_E70880
  loc_E7084D: If (FdReSetlement.ParentForm = "Check Out") Then
  loc_E70856:   global_160 = "S"
  loc_E70865:   Set var_90 = Me.Txt
  loc_E7086B:   Call 0.Method_Form_Activate0 (CInt(&H24))
  loc_E70873:   var_94.SetFocus
  loc_E7087F: End If
  loc_E7087F: Exit Sub
  loc_E70880: ' Referenced from: E70834
  loc_E70880: Proc_6_60_E62BC4(var_94)
  loc_E70885: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24EBC
  'Data Table: 533C28
  loc_E24EA1: If (global_52 = &HFF) Then
  loc_E24EB1:   Me.Global.Unload Me
  loc_E24EB9: End If
  loc_E24EB9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5E0B8
  'Data Table: 533C28
  loc_E5E06C: On Error Goto loc_E5E0AF
  loc_E5E079: If (CLng(KeyCode) = &H79) Then
  loc_E5E089:   Me.Global.Unload Me
  loc_E5E091:   Exit Sub
  loc_E5E092: End If
  loc_E5E0A6: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E5E0AE: Exit Sub
  loc_E5E0AF: ' Referenced from: E5E06C
  loc_E5E0AF: Proc_6_60_E62BC4(Shift)
  loc_E5E0B4: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F4C084
  'Data Table: 533C28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BF7B: Me.DGRoomNo.Visible = False
  loc_F4BF9A: If (Me.RecordCount > 0) Then
  loc_F4BFD9:   Set var_B4 = Me.Txt
  loc_F4BFDF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4BFE7:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F4C01A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F4C039:   Set var_B4 = Me.Txt
  loc_F4C03F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4C047:   var_B8.Text = CStr(var_B0.Value)
  loc_F4C05D: End If
  loc_F4C068: Set var_A8 = Me.Txt
  loc_F4C06E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F4C076: var_B0.SetFocus
  loc_F4C082: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9C7D0
  'Data Table: 533C28
  Dim var_A8 As Variant
  loc_E9C754: Set var_88 = Me.DGRoomNo
  loc_E9C77E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9C786: Set var_BC = Me.DGRoomNo
  loc_E9C7C0: Proc_6_138_106D6F8(Me.DGRoomNo, global_96, 0, Me.FGPoint)
  loc_E9C7CE: Exit Sub
End Sub

Private Sub Timer1_Timer() '1053958
  'Data Table: 533C28
  Dim var_8C As TextBox
  loc_10536EE: Set var_88 = Me.Txt
  loc_10536F4: Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1053711: If (var_8C.BackColor = &HD3B3FF) Then
  loc_1053722:   Set var_88 = Me.Txt
  loc_1053728:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1053747:   If (var_8C.Text <> vbNullString) Then
  loc_105375A:     Set var_88 = Me.Txt
  loc_1053760:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1053768:     var_8C.BackColor = &HFFFFFF
  loc_1053774:   End If
  loc_1053782:   Set var_88 = Me.Txt
  loc_1053788:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_10537A7:   If (var_8C.Text <> vbNullString) Then
  loc_10537BA:     Set var_88 = Me.Txt
  loc_10537C0:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_10537C8:     var_8C.BackColor = &HFFFFFF
  loc_10537D4:   End If
  loc_10537E2:   Set var_88 = Me.Txt
  loc_10537E8:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1053807:   If (var_8C.Text <> vbNullString) Then
  loc_105381A:     Set var_88 = Me.Txt
  loc_1053820:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1053828:     var_8C.BackColor = &HFFFFFF
  loc_1053834:   End If
  loc_1053837: Else
  loc_1053845:   Set var_88 = Me.Txt
  loc_105384B:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_105386A:   If (var_8C.Text <> vbNullString) Then
  loc_105387D:     Set var_88 = Me.Txt
  loc_1053883:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_105388B:     var_8C.BackColor = &HD3B3FF
  loc_1053897:   End If
  loc_10538A5:   Set var_88 = Me.Txt
  loc_10538AB:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_10538CA:   If (var_8C.Text <> vbNullString) Then
  loc_10538DD:     Set var_88 = Me.Txt
  loc_10538E3:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_10538EB:     var_8C.BackColor = &HD3B3FF
  loc_10538F7:   End If
  loc_1053905:   Set var_88 = Me.Txt
  loc_105390B:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_105392A:   If (var_8C.Text <> vbNullString) Then
  loc_105393D:     Set var_88 = Me.Txt
  loc_1053943:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_105394B:     var_8C.BackColor = &HD3B3FF
  loc_1053957:   End If
  loc_1053957: End If
  loc_1053957: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F4F0A4
  'Data Table: 533C28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4EF9B: Me.DGRoom.Visible = False
  loc_F4EFBA: If (Me.RecordCount > 0) Then
  loc_F4EFF9:   Set var_B4 = Me.Txt
  loc_F4EFFF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F4F007:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4F03A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F4F059:   Set var_B4 = Me.Txt
  loc_F4F05F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F4F067:   var_B8.Text = CStr(var_B0.Value)
  loc_F4F07D: End If
  loc_F4F088: Set var_A8 = Me.Txt
  loc_F4F08E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18))
  loc_F4F096: var_B0.SetFocus
  loc_F4F0A2: Exit Sub
  loc_F4F0A3: var_B0 = 
End Sub

Public Sub txtVTime_UnknownEvent_8(Index As Integer) 'EC7808
  'Data Table: 533C28
  Dim Index As Integer
  Dim var_4F01 As Double
  loc_EC77E6: If ((CDbl(Val(CStr(Left(CVar(Me.txtVTime), 2)))) > CDbl(&H17)) Or (CDbl(Val(CStr(Right(CVar(Me.txtVTime), 2)))) > CDbl(&H3B))) Then
  loc_EC77EB:   Index = &HFF
  loc_EC77EE:   Exit Sub
  loc_EC77EF: End If
  loc_EC77FD: Proc_303_0_FB9B68("	", 0)
  loc_EC7805: Exit Sub
  loc_EC7806: var_4F01 = Index
End Sub

Public Sub txtVTime_UnknownEvent_B(Index As Integer) 'E0A21C
  'Data Table: 533C28
  loc_E0A20E: If (Index = &HD) Then
  loc_E0A216:   Call txtVTime_UnknownEvent_8(&HFF)
  loc_E0A21B: End If
  loc_E0A21B: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17774
  'Data Table: 533C28
  loc_E17769: Me.Global.Unload Me
  loc_E17771: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F54560
  'Data Table: 533C28
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54449: Set var_A8 = Me.DGEmp
  loc_F5444F: var_A8.Visible = False
  loc_F54471: If (Me.var_A8.RecordCount > 0) Then
  loc_F544B3:   Set var_B4 = Me.Txt
  loc_F544B9:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F544C1:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F544F7:   var_B0 = Me.Recordset15.Fields.Item("Code")
  loc_F54516:   Set var_B4 = Me.Txt
  loc_F5451C:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F54524:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5453A: End If
  loc_F54545: Set var_A8 = Me.Txt
  loc_F5454B: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17))
  loc_F54553: var_B0.SetFocus
  loc_F5455F: Exit Sub
End Sub

Public Function global_52Get() '53583C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '53584B
  global_52 = Value
End Sub

Public Function global_56Get() '53585A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '535869
  global_56 = Value
End Sub

Public Property Get OpenMode() 'E02C40
  'Data Table: 533C28
  loc_E02C39: OpenMode = global_148
End Sub

Public Property Let OpenMode(vNewValue) 'E0134C
  'Data Table: 533C28
  loc_E01346: global_148 = vNewValue
  loc_E01349: Exit Sub
End Sub

Public Property Get ParentForm() 'E105F4
  'Data Table: 533C28
  loc_E105E8: var_88 = global_156
  loc_E105EB: ParentForm = 
End Sub

Public Property Let ParentForm(vNewValue) 'E10564
  'Data Table: 533C28
  loc_E1055C: global_156 = vNewValue
  loc_E10560: Exit Sub
End Sub

Public Sub Proc_167_40_E7829C(arg_C) 'E7829C
  'Data Table: 533C28
  Dim var_98 As TextBox
  loc_E7824A: Set var_8C = Me.Txt
  loc_E78250: Call 0.Method_Proc_167_40_E7829CC (var_8E, var_86)
  loc_E78260: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78276:   Set var_8C = Me.Txt
  loc_E7827C:   Call 0.Method_Proc_167_40_E7829C0 (CInt(var_86), var_98)
  loc_E78284:   var_98.Enabled = arg_C
  loc_E78293: Next var_92 'Byte
  loc_E78299: Exit Sub
  loc_E7829A: Get , ,  'get  bytes
End Sub

Public Sub Proc_167_41_F060C8
  'Data Table: 533C28
  Dim var_98 As Variant
  loc_F05FEA: Set var_8C = Me.Txt
  loc_F05FF0: Call 0.Method_Proc_167_41_F060C8C (var_8E, var_86)
  loc_F06000: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F06016:   Set var_8C = Me.Txt
  loc_F0601C:   Call 0.Method_Proc_167_41_F060C80 (CInt(var_86), var_98)
  loc_F06024:   var_98.Text = vbNullString
  loc_F06040:   Set var_8C = Me.Txt
  loc_F06046:   Call 0.Method_Proc_167_41_F060C80 (CInt(var_86), var_98)
  loc_F0604E:   var_98.Tag = vbNullString
  loc_F0605D: Next var_92 'Byte
  loc_F06071: Set var_8C = Me.LTxt
  loc_F06077: Call 0.Method_Proc_167_41_F060C8C (var_8E, var_86)
  loc_F06087: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_F0609D:   Set var_8C = Me.LTxt
  loc_F060A3:   Call 0.Method_Proc_167_41_F060C80 (CInt(var_86), var_98)
  loc_F060AB:   var_98.Caption = vbNullString
  loc_F060BA: Next var_9C 'Byte
  loc_F060C0: Call Proc_167_46_121BA28()
  loc_F060C5: Exit Sub
End Sub

Public Sub Proc_167_42_F6D49C
  'Data Table: 533C28
  loc_F6D370: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6D382:   Me.DGRoomNo.Visible = False
  loc_F6D38A: End If
  loc_F6D3A6: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_F6D3B8:   Me.DGChrgPayment.Visible = False
  loc_F6D3C0: End If
  loc_F6D3DC: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F6D3EE:   Me.DGRoom.Visible = False
  loc_F6D3F6: End If
  loc_F6D412: If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_F6D424:   Me.DGBill.Visible = False
  loc_F6D42C: End If
  loc_F6D448: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6D45A:   Me.DGMember.Visible = False
  loc_F6D462: End If
  loc_F6D47E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6D490:   Me.FGPoint.Visible = False
  loc_F6D498: End If
  loc_F6D498: Exit Sub
End Sub

Public Sub Proc_167_43_10ADEB8
  'Data Table: 533C28
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_96 As Integer
  Dim var_13C As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_10ADC30: var_90 = global_56
  loc_10ADC47: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10ADC78: Set var_B4 = Me.Txt
  loc_10ADC7E: Call 0.Method_Proc_167_43_10ADEB80 (CInt(&H11), var_B8, CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10ADC8D: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_10ADC95: var_F8 = -1 & var_D8 
  loc_10ADCA9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_10ADCB4: Set var_8C = var_140
  loc_10ADCF0: If (var_8C.RecordCount > 0) Then
  loc_10ADD2F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10ADD32:     GoTo loc_10ADDB2
  loc_10ADD35:   End If
  loc_10ADD60:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10ADD87:   var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_10ADD9C:   var_D8 = (var_B8.Value + 1)
  loc_10ADDA1:   var_96 = CInt(var_D8)
  loc_10ADDB2:   ' Referenced from: 10ADD32
  loc_10ADDB2: End If
  loc_10ADDDD: var_C8 = Space((5 - Len(var_90)))
  loc_10ADDE5: var_E8 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_B8.Value)
  loc_10ADDF6: var_F8 = Space((5 - Len(var_94)))
  loc_10ADDFE: var_118 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_F8)
  loc_10ADE08: var_13C = (var_F8 & " Order By VP.Date_From DESC" + CVar(var_94))
  loc_10ADE1E: var_158 = Space((8 - Len(CStr(var_96))))
  loc_10ADE26: var_168 = (var_13C + var_158)
  loc_10ADE32: var_188 = (var_168 + CVar(CStr(var_96)))
  loc_10ADE37: var_9C = CStr(var_188)
  loc_10ADE67: Me.LblVPrefix.Caption = var_94
  loc_10ADE7D: Set var_B4 = Me.Txt
  loc_10ADE83: Call 0.Method_Proc_167_43_10ADEB80 (CInt(&H10), var_B8)
  loc_10ADE8B: var_B8.Text = var_9C
  loc_10ADEA4: var_88 = var_9C
  loc_10ADEAC: Set var_8C = Nothing
  loc_10ADEAF: Proc_167_43_10ADEB8 = CLng(var_96)
End Sub

Public Sub Proc_167_44_123FBF4(arg_C) '123FBF4
  'Data Table: 533C28
  Dim var_88 As Frame
  Dim var_8C As Variant
  Dim var_9C As TextBox
  Dim var_98 As Frame
  loc_123F6C0: Me.FrChqDet.Visible = False
  loc_123F6D4: Me.FrCCDet.Visible = False
  loc_123F6E8: Me.FrEmp.Visible = False
  loc_123F6FC: Me.FrComp.Visible = False
  loc_123F710: Me.FrMember.Visible = False
  loc_123F724: Me.FrSendRoom.Visible = False
  loc_123F73A: Set var_88 = Me.Txt
  loc_123F740: Call 0.Method_Proc_167_44_123FBF40 (CInt(&H18), var_8C)
  loc_123F748: var_8C.Tag = vbNullString
  loc_123F757: var_90 = arg_C
  loc_123F762: If (var_90 = "Cheque") Then
  loc_123F771:   Me.FrChqDet.Visible = True
  loc_123F787:   Set var_98 = Me.Txt
  loc_123F78D:   Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_9C)
  loc_123F7A8:   Set var_88 = Me.Txt
  loc_123F7AE:   Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_8C)
  loc_123F7CD:   Me.FrChqDet.Top = (var_8C.Top + var_9C.Height)
  loc_123F7EB:   Set var_88 = Me.Lbl
  loc_123F7F1:   Call 0.Method_Proc_167_44_123FBF40 (4, var_8C)
  loc_123F80B:   Me.FrChqDet.Left = var_8C.Left
  loc_123F81C: Else
  loc_123F824:   If (var_90 = "Credit Card") Then
  loc_123F832:     If (global_88 = "Y") Then
  loc_123F841:       Me.FrCCDet.Visible = True
  loc_123F857:       Set var_98 = Me.Txt
  loc_123F85D:       Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_9C)
  loc_123F878:       Set var_88 = Me.Txt
  loc_123F87E:       Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_8C)
  loc_123F89D:       Me.FrCCDet.Top = (var_8C.Top + var_9C.Height)
  loc_123F8BB:       Set var_88 = Me.Lbl
  loc_123F8C1:       Call 0.Method_Proc_167_44_123FBF40 (4, var_8C)
  loc_123F8DB:       Me.FrCCDet.Left = var_8C.Left
  loc_123F8E9:     End If
  loc_123F8EC:   Else
  loc_123F8F4:     If (var_90 = "Staff") Then
  loc_123F903:       Me.FrEmp.Visible = True
  loc_123F919:       Set var_98 = Me.Txt
  loc_123F91F:       Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_9C)
  loc_123F93A:       Set var_88 = Me.Txt
  loc_123F940:       Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_8C)
  loc_123F95F:       Me.FrEmp.Top = (var_8C.Top + var_9C.Height)
  loc_123F97D:       Set var_88 = Me.Lbl
  loc_123F983:       Call 0.Method_Proc_167_44_123FBF40 (4, var_8C)
  loc_123F99D:       Me.FrEmp.Left = var_8C.Left
  loc_123F9AE:     Else
  loc_123F9B6:       If (var_90 = "Company") Then
  loc_123F9C5:         Me.FrComp.Visible = True
  loc_123F9DB:         Set var_98 = Me.Txt
  loc_123F9E1:         Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_9C)
  loc_123F9FC:         Set var_88 = Me.Txt
  loc_123FA02:         Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_8C)
  loc_123FA21:         Me.FrComp.Top = (var_8C.Top + var_9C.Height)
  loc_123FA3F:         Set var_88 = Me.Lbl
  loc_123FA45:         Call 0.Method_Proc_167_44_123FBF40 (4, var_8C)
  loc_123FA5F:         Me.FrComp.Left = var_8C.Left
  loc_123FA70:       Else
  loc_123FA78:         If (var_90 = "Room") Then
  loc_123FA87:           Me.FrSendRoom.Visible = True
  loc_123FA9D:           Set var_98 = Me.Txt
  loc_123FAA3:           Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_9C)
  loc_123FABE:           Set var_88 = Me.Txt
  loc_123FAC4:           Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_8C)
  loc_123FAE3:           Me.FrSendRoom.Top = (var_8C.Top + var_9C.Height)
  loc_123FB01:           Set var_88 = Me.Lbl
  loc_123FB07:           Call 0.Method_Proc_167_44_123FBF40 (4, var_8C)
  loc_123FB21:           Me.FrSendRoom.Left = var_8C.Left
  loc_123FB32:         Else
  loc_123FB3A:           If (var_90 = "Member") Then
  loc_123FB49:             Me.FrMember.Visible = True
  loc_123FB5F:             Set var_98 = Me.Txt
  loc_123FB65:             Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_9C)
  loc_123FB80:             Set var_88 = Me.Txt
  loc_123FB86:             Call 0.Method_Proc_167_44_123FBF40 (CInt(5), var_8C)
  loc_123FBA5:             Me.FrMember.Top = (var_8C.Top + var_9C.Height)
  loc_123FBC3:             Set var_88 = Me.Lbl
  loc_123FBC9:             Call 0.Method_Proc_167_44_123FBF40 (4, var_8C)
  loc_123FBE3:             Me.FrMember.Left = var_8C.Left
  loc_123FBF1:           End If
  loc_123FBF1:         End If
  loc_123FBF1:       End If
  loc_123FBF1:     End If
  loc_123FBF1:   End If
  loc_123FBF1: End If
  loc_123FBF1: Exit Sub
End Sub

Public Sub Proc_167_45_1367634
  'Data Table: 533C28
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_F0 As String
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As TextBox
  Dim Me As Variant
  loc_1366DE7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366DEC: var_C8 = 1
  loc_1366E23: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1366E2A:   Set var_F4 = Me.FGrid
  loc_1366E40:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366E45:   var_C8 = 1
  loc_1366E5C:   var_F0 = CStr(var_F4.TextMatrix))
  loc_1366E6A:   Set var_DC = Me.Txt
  loc_1366E70:   Call 0.Method_Proc_167_45_13676340 (CInt(4), var_F8, var_F0, var_C8)
  loc_1366E78:   var_F8.Tag = var_A8
  loc_1366EA7:   If (Me.RecordCount > 0) Then
  loc_1366EB0:     Me.MoveFirst
  loc_1366ECC:     If (Me.AbsolutePosition > 0) Then
  loc_1366EEE:       Set var_88 = Me.Txt
  loc_1366EF4:       Call 0.Method_Proc_167_45_13676340 (CInt(4), var_DC, var_F0, "Code='", 0)
  loc_1366EFC:       1 = var_DC.Tag
  loc_1366F15:       Me.Find var_A8 & var_F0 & "'", var_C8, var_A8
  loc_1366F2A:     End If
  loc_1366F2A:   End If
  loc_1366F3D:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366F42:   var_C8 = 3
  loc_1366F5F:   global_140 = CStr(var_F4.TextMatrix))
  loc_1366FAD:   Set var_DC = Me.Txt
  loc_1366FB3:   Call 0.Method_Proc_167_45_13676340 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), 4)
  loc_1366FBB:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1366FE6:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366FEB:   var_C8 = 5
  loc_1367008:   global_132 = CStr(var_F4.TextMatrix))
  loc_136702C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1367031:   var_C8 = 6
  loc_136704E:   global_136 = CStr(var_F4.TextMatrix))
  loc_1367072:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136709C:   Set var_DC = Me.Txt
  loc_13670A2:   Call 0.Method_Proc_167_45_13676340 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), 9, var_A8, 9)
  loc_13670AA:   var_F8.Text = var_A8
  loc_13670DD:   var_C8 = CVar(CLng(&HA)) 'Long
  loc_13670FE:   Set var_DC = Me.Txt
  loc_1367104:   Call 0.Method_Proc_167_45_13676340 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_136710C:   var_F8.Text = var_C8
  loc_1367160:   Set var_DC = Me.Txt
  loc_1367166:   Call 0.Method_Proc_167_45_13676340 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_136716E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13671C2:   Set var_DC = Me.Txt
  loc_13671C8:   Call 0.Method_Proc_167_45_13676340 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13671D0:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1367224:   Set var_DC = Me.Txt
  loc_136722A:   Call 0.Method_Proc_167_45_13676340 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_1367232:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1367287:   Set var_DC = Me.Txt
  loc_136728D:   Call 0.Method_Proc_167_45_13676340 (CInt(&H25), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_1367295:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13672E9:   Set var_DC = Me.Txt
  loc_13672EF:   Call 0.Method_Proc_167_45_13676340 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13672F7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_136734B:   Set var_DC = Me.Txt
  loc_1367351:   Call 0.Method_Proc_167_45_13676340 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_1367359:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13673AD:   Set var_DC = Me.Txt
  loc_13673B3:   Call 0.Method_Proc_167_45_13676340 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13673BB:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_136740F:   Set var_DC = Me.Txt
  loc_1367415:   Call 0.Method_Proc_167_45_13676340 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_136741D:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1367472:   Set var_DC = Me.Txt
  loc_1367478:   Call 0.Method_Proc_167_45_13676340 (CInt(&H23), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_1367480:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13674D5:   Set var_DC = Me.Txt
  loc_13674DB:   Call 0.Method_Proc_167_45_13676340 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_13674E3:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1367537:   Set var_DC = Me.Txt
  loc_136753D:   Call 0.Method_Proc_167_45_13676340 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(7)))
  loc_1367545:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_136759A:   Set var_DC = Me.Txt
  loc_13675A0:   Call 0.Method_Proc_167_45_13676340 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_13675A8:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13675FD:   Set var_DC = Me.Txt
  loc_1367603:   Call 0.Method_Proc_167_45_13676340 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H16)
  loc_136760B:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1367628:   global_128 = &HFF
  loc_136762D:   Set var_F4 = Nothing 
  loc_1367631: End If
  loc_1367631: Exit Sub
End Sub

Public Sub Proc_167_46_121BA28
  'Data Table: 533C28
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_EC As MSHFlexGrid
  Dim var_FC As Variant
  loc_121B530: Set var_88 = Me.FGrid
  loc_121B53F: var_88.Cols = &H1B
  loc_121B550: var_88.Rows = 1
  loc_121B558: var_98 = CVar(CLng(&HA)) 'Long
  loc_121B55D: var_B8 = 0
  loc_121B569: LateIdCallSt
  loc_121B574: var_98 = CVar(CLng(&HB)) 'Long
  loc_121B579: var_B8 = 0
  loc_121B585: LateIdCallSt
  loc_121B590: var_98 = CVar(CLng(&HC)) 'Long
  loc_121B595: var_B8 = 0
  loc_121B5A1: LateIdCallSt
  loc_121B5AC: var_98 = CVar(CLng(&HD)) 'Long
  loc_121B5B1: var_B8 = 0
  loc_121B5BD: LateIdCallSt
  loc_121B5C8: var_98 = CVar(CLng(&HE)) 'Long
  loc_121B5CD: var_B8 = 0
  loc_121B5D9: LateIdCallSt
  loc_121B5E4: var_98 = CVar(CLng(&HF)) 'Long
  loc_121B5E9: var_B8 = 0
  loc_121B5F5: LateIdCallSt
  loc_121B600: var_98 = CVar(CLng(&H10)) 'Long
  loc_121B605: var_B8 = 0
  loc_121B611: LateIdCallSt
  loc_121B61C: var_98 = CVar(CLng(&H11)) 'Long
  loc_121B621: var_B8 = 0
  loc_121B62D: LateIdCallSt
  loc_121B635: var_98 = &H12
  loc_121B63E: var_B8 = 0
  loc_121B64A: LateIdCallSt
  loc_121B652: var_98 = 1
  loc_121B65B: var_B8 = 0
  loc_121B667: LateIdCallSt
  loc_121B66F: var_98 = 2
  loc_121B678: var_B8 = 0
  loc_121B684: LateIdCallSt
  loc_121B68C: var_98 = 5
  loc_121B695: var_B8 = 0
  loc_121B6A1: LateIdCallSt
  loc_121B6A9: var_98 = 6
  loc_121B6B2: var_B8 = 0
  loc_121B6BE: LateIdCallSt
  loc_121B6C9: var_98 = CVar(CLng(7)) 'Long
  loc_121B6CE: var_B8 = 0
  loc_121B6DA: LateIdCallSt
  loc_121B6E5: var_98 = CVar(CLng(8)) 'Long
  loc_121B6EA: var_B8 = 0
  loc_121B6F6: LateIdCallSt
  loc_121B6FE: var_98 = 3
  loc_121B707: var_B8 = 0
  loc_121B713: LateIdCallSt
  loc_121B71B: var_98 = &H17
  loc_121B724: var_B8 = 0
  loc_121B730: LateIdCallSt
  loc_121B738: var_98 = 0
  loc_121B741: var_B8 = &HFA
  loc_121B74D: LateIdCallSt
  loc_121B755: var_98 = 0
  loc_121B75E: var_B8 = 0
  loc_121B767: var_D8 = "SNo"
  loc_121B770: LateIdCallSt
  loc_121B778: var_98 = 0
  loc_121B781: var_B8 = &H1C2
  loc_121B78D: LateIdCallSt
  loc_121B795: var_98 = 0
  loc_121B79E: var_B8 = 4
  loc_121B7A7: var_D8 = "Payment Type"
  loc_121B7B0: LateIdCallSt
  loc_121B7B8: var_98 = 4
  loc_121B7C7: var_B8 = CVar(CInt(1)) 'Integer
  loc_121B7CE: LateIdCallSt
  loc_121B7D6: var_98 = 4
  loc_121B7DF: var_B8 = &HDAC
  loc_121B7EB: LateIdCallSt
  loc_121B7F3: var_98 = 0
  loc_121B7FC: var_B8 = 9
  loc_121B805: var_D8 = "Amount"
  loc_121B80E: LateIdCallSt
  loc_121B816: var_98 = 9
  loc_121B825: var_B8 = CVar(CInt(7)) 'Integer
  loc_121B82C: LateIdCallSt
  loc_121B834: var_98 = 9
  loc_121B843: var_B8 = CVar(CInt(7)) 'Integer
  loc_121B84A: LateIdCallSt
  loc_121B852: var_98 = 9
  loc_121B85B: var_B8 = &H4EC
  loc_121B867: LateIdCallSt
  loc_121B86F: var_98 = 0
  loc_121B878: var_B8 = &H12
  loc_121B881: var_D8 = "Tip"
  loc_121B88A: LateIdCallSt
  loc_121B892: var_98 = &H12
  loc_121B8A1: var_B8 = CVar(CInt(7)) 'Integer
  loc_121B8A8: LateIdCallSt
  loc_121B8B0: var_98 = &H12
  loc_121B8BF: var_B8 = CVar(CInt(7)) 'Integer
  loc_121B8C6: LateIdCallSt
  loc_121B8CE: var_98 = &H12
  loc_121B8D7: var_B8 = 0
  loc_121B8E3: LateIdCallSt
  loc_121B8EB: var_98 = &H13
  loc_121B8F4: var_B8 = 0
  loc_121B900: LateIdCallSt
  loc_121B908: var_98 = &H14
  loc_121B911: var_B8 = 0
  loc_121B91D: LateIdCallSt
  loc_121B925: var_98 = &H15
  loc_121B92E: var_B8 = 0
  loc_121B93A: LateIdCallSt
  loc_121B942: var_98 = &H16
  loc_121B94B: var_B8 = 0
  loc_121B957: LateIdCallSt
  loc_121B95F: var_98 = &H18
  loc_121B968: var_B8 = 0
  loc_121B974: LateIdCallSt
  loc_121B97C: var_98 = &H19
  loc_121B985: var_B8 = 0
  loc_121B991: LateIdCallSt
  loc_121B999: var_98 = &H1A
  loc_121B9A2: var_B8 = 0
  loc_121B9AE: LateIdCallSt
  loc_121B9B8: Set var_88 = Nothing 
  loc_121B9BC: var_98 = vbNullString
  loc_121B9C6: Set var_EC = Me.FGrid
  loc_121B9EA: Me.FGrid.FixedRows = 1
  loc_121B9F2: var_98 = 1
  loc_121B9FB: var_B8 = 0
  loc_121BA08: var_FC = CVar(CStr(1)) 'String
  loc_121BA10: Set var_EC = Me.FGrid
  loc_121BA16: LateIdCallSt
  loc_121BA24: Exit Sub
End Sub

Public Sub Proc_167_47_1579264
  'Data Table: 533C28
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_E0 As TextBox
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_140 As Variant
  Dim var_9C As Fields15
  Dim var_164 As Long
  loc_1578156: Set var_8C = Me.Txt
  loc_157815C: Call 0.Method_Proc_167_47_15792640 (CInt(6), var_90)
  loc_1578180: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1578191:   Set var_8C = Me.Txt
  loc_1578197:   Call 0.Method_Proc_167_47_15792640 (CInt(6), var_90)
  loc_157819F:   var_90.Text = vbNullString
  loc_15781AB: End If
  loc_15781B9: Set var_8C = Me.Txt
  loc_15781BF: Call 0.Method_Proc_167_47_15792640 (CInt(6), var_90)
  loc_15781D9: If (var_90.Visible = &HFF) Then
  loc_15781E7:   Set var_8C = Me.Txt
  loc_15781ED:   Call 0.Method_Proc_167_47_15792640 (CInt(6))
  loc_15781F5:   var_94 = "Amount"
  loc_1578216:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1578219:     Exit Sub
  loc_157821A:   End If
  loc_157821A: End If
  loc_1578237: var_90 = Me.Fields.Item("PayType")
  loc_157825F: Set var_9C = Me.Txt
  loc_1578265: Call 0.Method_Proc_167_47_15792640 (CInt(&H17), var_E0, var_94)
  loc_157826D: (var_90.Value = "Staff") = var_E0.Text
  loc_1578299: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_15782A7:   Set var_8C = Me.Txt
  loc_15782AD:   Call 0.Method_Proc_167_47_15792640 (CInt(&H17))
  loc_15782B5:   var_94 = "Staff Name"
  loc_15782D6:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15782D9:     Exit Sub
  loc_15782DA:   End If
  loc_15782DA: End If
  loc_15782F7: var_90 = Me.Fields.Item("PayType")
  loc_157831F: Set var_9C = Me.Txt
  loc_1578325: Call 0.Method_Proc_167_47_15792640 (CInt(0), var_E0, var_94)
  loc_157832D: (var_90.Value = "Room") = var_E0.Text
  loc_1578359: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_1578367:   Set var_8C = Me.Txt
  loc_157836D:   Call 0.Method_Proc_167_47_15792640 (CInt(0))
  loc_1578375:   var_94 = "Room Name"
  loc_1578396:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1578399:     Exit Sub
  loc_157839A:   End If
  loc_157839A: End If
  loc_15783B7: var_90 = Me.Fields.Item("PayType")
  loc_15783DF: Set var_9C = Me.Txt
  loc_15783E5: Call 0.Method_Proc_167_47_15792640 (CInt(&H19), var_E0, var_94)
  loc_15783ED: (var_90.Value = "Company") = var_E0.Text
  loc_1578419: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_1578427:   Set var_8C = Me.Txt
  loc_157842D:   Call 0.Method_Proc_167_47_15792640 (CInt(&H19))
  loc_1578435:   var_94 = "Company Name"
  loc_1578456:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1578459:     Exit Sub
  loc_157845A:   End If
  loc_157845A: End If
  loc_1578477: var_90 = Me.Fields.Item("PayType")
  loc_157849F: Set var_9C = Me.Txt
  loc_15784A5: Call 0.Method_Proc_167_47_15792640 (CInt(&H27), var_E0, var_94)
  loc_15784AD: (var_90.Value = "Member") = var_E0.Text
  loc_15784D9: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_15784E7:   Set var_8C = Me.Txt
  loc_15784ED:   Call 0.Method_Proc_167_47_15792640 (CInt(&H27))
  loc_15784F5:   var_94 = "Member Name"
  loc_1578516:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1578519:     Exit Sub
  loc_157851A:   End If
  loc_157851A: End If
  loc_1578525: If (global_88 = "Y") Then
  loc_1578545:   var_90 = Me.Fields.Item("PayType")
  loc_157856D:   Set var_9C = Me.Txt
  loc_1578573:   Call 0.Method_Proc_167_47_15792640 (CInt(&H12), var_E0, var_94)
  loc_157857B:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_15785A7:   If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_15785B5:     Set var_8C = Me.Txt
  loc_15785BB:     Call 0.Method_Proc_167_47_15792640 (CInt(&H12))
  loc_15785C3:     var_94 = "Credit Card No."
  loc_15785E4:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15785E7:       Exit Sub
  loc_15785E8:     End If
  loc_15785E8:   End If
  loc_1578605:   var_90 = Me.Fields.Item("PayType")
  loc_157862D:   Set var_9C = Me.Txt
  loc_1578633:   Call 0.Method_Proc_167_47_15792640 (CInt(&H13), var_E0, var_94)
  loc_157863B:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_1578667:   If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_1578675:     Set var_8C = Me.Txt
  loc_157867B:     Call 0.Method_Proc_167_47_15792640 (CInt(&H13))
  loc_15786A4:     If (Proc_6_27_EA565C(var_90, "Holder's Name") = 0) Then
  loc_15786A7:       Exit Sub
  loc_15786A8:     End If
  loc_15786A8:   End If
  loc_15786C5:   var_90 = Me.Fields.Item("PayType")
  loc_15786EA:   Set var_9C = Me.Txt
  loc_15786F0:   Call 0.Method_Proc_167_47_15792640 (CInt(&H25), var_E0)
  loc_1578729:   If CBool((var_90.Value = "Credit Card") And (Trim(CVar(var_E0)) = vbNullString)) Then
  loc_1578737:     Set var_8C = Me.Txt
  loc_157873D:     Call 0.Method_Proc_167_47_15792640 (CInt(&H25), var_90)
  loc_1578745:     var_94 = "Batch No"
  loc_1578766:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1578774:       Set var_8C = Me.Txt
  loc_157877A:       Call 0.Method_Proc_167_47_15792640 (CInt(&H25), var_90)
  loc_1578782:       var_90.SetFocus
  loc_157878E:       Exit Sub
  loc_157878F:     End If
  loc_157878F:   End If
  loc_157878F: End If
  loc_15787AC: var_90 = Me.Fields.Item("PayType")
  loc_15787D4: Set var_9C = Me.Txt
  loc_15787DA: Call 0.Method_Proc_167_47_15792640 (CInt(&H15), var_E0, var_94)
  loc_15787E2: (var_90.Value = "Cheque") = var_E0.Text
  loc_157880E: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_157881C:   Set var_8C = Me.Txt
  loc_1578822:   Call 0.Method_Proc_167_47_15792640 (CInt(&H15))
  loc_157882A:   var_94 = "Cheque No."
  loc_157884B:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_157884E:     Exit Sub
  loc_157884F:   End If
  loc_157884F: End If
  loc_157886C: var_90 = Me.Fields.Item("PayType")
  loc_1578894: Set var_9C = Me.Txt
  loc_157889A: Call 0.Method_Proc_167_47_15792640 (CInt(&H16), var_E0, var_94)
  loc_15788A2: (var_90.Value = "Cheque") = var_E0.Text
  loc_15788CE: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_15788DC:   Set var_8C = Me.Txt
  loc_15788E2:   Call 0.Method_Proc_167_47_15792640 (CInt(&H16))
  loc_157890B:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_157890E:     Exit Sub
  loc_157890F:   End If
  loc_157890F: End If
  loc_1578918: If (global_128 = 0) Then
  loc_1578934:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1578957:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1578970:   If (var_94 <> vbNullString) Then
  loc_157898F:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 4))) 'String
  loc_1578997:     Set var_90 = Me.FGrid
  loc_15789B1:   End If
  loc_15789CB:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15789D7: Else
  loc_15789EB:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15789F4: End If
  loc_15789F8: Set var_144 = Me.FGrid
  loc_1578A1B: Set var_8C = Me.Txt
  loc_1578A21: Call 0.Method_Proc_167_47_15792640 (CInt(4), var_90, var_94, 1, CVar(CLng(var_86)), var_86)
  loc_1578A29: var_86 = var_90.Tag
  loc_1578A31: var_BC = CVar(var_94) 'String
  loc_1578A38: LateIdCallSt
  loc_1578A4E: var_AC = CVar(CLng(var_86)) 'Long
  loc_1578A53: var_F0 = 3
  loc_1578A69: LateIdCallSt
  loc_1578A91: Set var_8C = Me.Txt
  loc_1578A97: Call 0.Method_Proc_167_47_15792640 (CInt(4), var_90, var_94, 4, CVar(CLng(var_86)), var_144, global_140)
  loc_1578A9F: var_F0 = var_90.Text
  loc_1578AA7: var_BC = CVar(var_94) 'String
  loc_1578AAE: LateIdCallSt
  loc_1578AD5: var_AC = "PayType"
  loc_1578AEC: var_90 = Me.Fields.Item(var_AC)
  loc_1578B04: LateIdCallSt
  loc_1578B24: Set var_8C = Me.Txt
  loc_1578B2A: Call 0.Method_Proc_167_47_15792640 (CInt(&H18), var_90, var_94, var_144, CVar(Proc_6_38_E68A98(CVar(var_90), 2, CVar(CLng(var_86)), var_144, CVar(var_90), var_AC)))
  loc_1578B32: var_144 = var_90.Tag
  loc_1578B5A: var_140 = CVar(CLng(var_86)) 'Long
  loc_1578B5F: var_164 = &H17
  loc_1578B93: LateIdCallSt
  loc_1578BD4: Set var_8C = Me.Txt
  loc_1578BDA: Call 0.Method_Proc_167_47_15792640 (CInt(&H18), var_90, var_94, &H19, CVar(CLng(var_86)), var_144, CVar(CStr(IIf((var_94 <> vbNullString), CVar(Me.Fields.Item("FolioNo")), 0))))
  loc_1578BE2: var_164 = var_90.Tag
  loc_1578BEA: var_BC = CVar(var_94) 'String
  loc_1578BF1: LateIdCallSt
  loc_1578C22: Set var_8C = Me.Txt
  loc_1578C28: Call 0.Method_Proc_167_47_15792640 (CInt(5), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_144)
  loc_1578C30: var_BC = var_90.Text
  loc_1578C38: var_BC = CVar(var_94) 'String
  loc_1578C3F: LateIdCallSt
  loc_1578C55: var_AC = CVar(CLng(var_86)) 'Long
  loc_1578C5A: var_F0 = 5
  loc_1578C70: LateIdCallSt
  loc_1578C7C: var_AC = CVar(CLng(var_86)) 'Long
  loc_1578C81: var_F0 = 6
  loc_1578C97: LateIdCallSt
  loc_1578CBE: Set var_8C = Me.Txt
  loc_1578CC4: Call 0.Method_Proc_167_47_15792640 (CInt(0), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_144, global_136)
  loc_1578CCC: var_F0 = var_90.Text
  loc_1578CDB: LateIdCallSt
  loc_1578D0D: Set var_8C = Me.Txt
  loc_1578D13: Call 0.Method_Proc_167_47_15792640 (CInt(6), var_90, var_94, 9, CVar(CLng(var_86)), var_144, CVar(var_94))
  loc_1578D1B: var_AC = var_90.Text
  loc_1578D23: var_BC = CVar(var_94) 'String
  loc_1578D2A: LateIdCallSt
  loc_1578D5C: Set var_8C = Me.Txt
  loc_1578D62: Call 0.Method_Proc_167_47_15792640 (CInt(&H23), var_90, var_94, &H12, CVar(CLng(var_86)), var_144)
  loc_1578D6A: var_BC = var_90.Text
  loc_1578D72: var_BC = CVar(var_94) 'String
  loc_1578D79: LateIdCallSt
  loc_1578DAA: Set var_8C = Me.Txt
  loc_1578DB0: Call 0.Method_Proc_167_47_15792640 (CInt(&H12), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_144)
  loc_1578DB8: var_BC = var_90.Text
  loc_1578DC0: var_BC = CVar(var_94) 'String
  loc_1578DC7: LateIdCallSt
  loc_1578DF8: Set var_8C = Me.Txt
  loc_1578DFE: Call 0.Method_Proc_167_47_15792640 (CInt(&H13), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_144)
  loc_1578E06: var_BC = var_90.Text
  loc_1578E0E: var_BC = CVar(var_94) 'String
  loc_1578E15: LateIdCallSt
  loc_1578E46: Set var_8C = Me.Txt
  loc_1578E4C: Call 0.Method_Proc_167_47_15792640 (CInt(&H14), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_144)
  loc_1578E54: var_BC = var_90.Text
  loc_1578E5C: var_BC = CVar(var_94) 'String
  loc_1578E63: LateIdCallSt
  loc_1578E95: Set var_8C = Me.Txt
  loc_1578E9B: Call 0.Method_Proc_167_47_15792640 (CInt(&H25), var_90, var_94, &H18, CVar(CLng(var_86)), var_144)
  loc_1578EA3: var_BC = var_90.Text
  loc_1578EAB: var_BC = CVar(var_94) 'String
  loc_1578EB2: LateIdCallSt
  loc_1578EE3: Set var_8C = Me.Txt
  loc_1578EE9: Call 0.Method_Proc_167_47_15792640 (CInt(&H15), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_144)
  loc_1578EF1: var_BC = var_90.Text
  loc_1578EF9: var_BC = CVar(var_94) 'String
  loc_1578F00: LateIdCallSt
  loc_1578F31: Set var_8C = Me.Txt
  loc_1578F37: Call 0.Method_Proc_167_47_15792640 (CInt(&H16), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_144)
  loc_1578F3F: var_BC = var_90.Text
  loc_1578F47: var_BC = CVar(var_94) 'String
  loc_1578F4E: LateIdCallSt
  loc_1578F7F: Set var_8C = Me.Txt
  loc_1578F85: Call 0.Method_Proc_167_47_15792640 (CInt(&H17), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_144)
  loc_1578F8D: var_BC = var_90.Text
  loc_1578F95: var_BC = CVar(var_94) 'String
  loc_1578F9C: LateIdCallSt
  loc_1578FCD: Set var_8C = Me.Txt
  loc_1578FD3: Call 0.Method_Proc_167_47_15792640 (CInt(&H17), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_144)
  loc_1578FDB: var_BC = var_90.Tag
  loc_1578FE3: var_BC = CVar(var_94) 'String
  loc_1578FEA: LateIdCallSt
  loc_157901C: Set var_8C = Me.Txt
  loc_1579022: Call 0.Method_Proc_167_47_15792640 (CInt(0), var_90, var_94, &H13, CVar(CLng(var_86)), var_144)
  loc_157902A: var_BC = var_90.Tag
  loc_1579032: var_BC = CVar(var_94) 'String
  loc_1579039: LateIdCallSt
  loc_157906B: Set var_8C = Me.Txt
  loc_1579071: Call 0.Method_Proc_167_47_15792640 (CInt(0), var_90, var_94, &H14, CVar(CLng(var_86)), var_144)
  loc_1579079: var_BC = var_90.Text
  loc_1579081: var_BC = CVar(var_94) 'String
  loc_1579088: LateIdCallSt
  loc_157909E: var_AC = CVar(CLng(var_86)) 'Long
  loc_15790A3: var_F0 = 2
  loc_15790BA: var_94 = CStr(Txt.DispID_41)
  loc_15790C8: If (var_94 = "Member") Then
  loc_15790EB:   Set var_8C = Me.Txt
  loc_15790F1:   Call 0.Method_Proc_167_47_15792640 (CInt(&H27), var_90, var_94, &H15, CVar(CLng(var_86)), &H15, CVar(CLng(var_86)))
  loc_15790F9:   var_144 = var_90.Tag
  loc_1579108:   LateIdCallSt
  loc_157913A:   Set var_8C = Me.Txt
  loc_1579140:   Call 0.Method_Proc_167_47_15792640 (CInt(&H27), var_90, var_94, &H16, CVar(CLng(var_86)), var_144, CVar(var_94))
  loc_1579148:   var_BC = var_90.Text
  loc_1579150:   var_BC = CVar(var_94) 'String
  loc_1579157:   LateIdCallSt
  loc_157916C: Else
  loc_157918C:   Set var_8C = Me.Txt
  loc_1579192:   Call 0.Method_Proc_167_47_15792640 (CInt(&H19), var_90, var_94, &H15, CVar(CLng(var_86)), var_144)
  loc_157919A:   var_BC = var_90.Tag
  loc_15791A2:   var_BC = CVar(var_94) 'String
  loc_15791A9:   LateIdCallSt
  loc_15791BF:   var_AC = CVar(CLng(var_86)) 'Long
  loc_15791DB:   Set var_8C = Me.Txt
  loc_15791E1:   Call 0.Method_Proc_167_47_15792640 (CInt(&H19), var_90, var_94, &H16, var_AC, var_144)
  loc_15791E9:   var_BC = var_90.Text
  loc_15791F1:   var_BC = CVar(var_94) 'String
  loc_15791F8:   LateIdCallSt
  loc_157920A: End If
  loc_1579210: Call Proc_167_49_114DE84(Nothing, var_BC, Nothing, global_132)
  loc_1579223: Set var_8C = Me.LTxt
  loc_1579229: Call 0.Method_Proc_167_47_15792640 (CInt(2), var_90, var_94)
  loc_1579231: var_F0 = var_90.Caption
  loc_157924D: If (CDbl(Val(var_94)) = CDbl(0)) Then
  loc_1579250:   Call TopCtrl1_UnknownEvent_16()
  loc_1579255:   Exit Sub
  loc_1579256: End If
  loc_1579256: Call Proc_167_50_102AEB4(var_AC)
  loc_1579260: global_128 = 0
  loc_1579263: Exit Sub
End Sub

Public Sub Proc_167_48_142421C
  'Data Table: 533C28
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_B8 As TextBox
  Dim var_C4 As String
  Dim unk_533C53 As Connection15
  Dim var_B4 As Variant
  Dim var_8C As Recordset15
  Dim var_86 As Integer
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_14237BC: var_90 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName, P.Type,"
  loc_14237CA: var_98 = var_90 & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.FolioNoDocId, ST.CardNo, ST.CardHolder, ST.ChqNo,ST.BatchNo, "
  loc_14237D1: var_9C = var_98 & "ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode as MemCode FROM ((((PayCharge AS ST left JOIN "
  loc_14237DF: var_A4 = var_9C & "GuestProf AS GP ON ST.GuestProf = GP.Code) left JOIN Employee AS E " & "ON ST.EmpCode = E.Code) left JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_14237ED: var_AC = var_A4 & "left JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))left join SubGroup CC on CC.SubCode=ST.CompCode where ST.PayCode<>'"
  loc_142380C: Set var_B4 = Me.Txt
  loc_1423812: Call 0.Method_Proc_167_48_142421C0 (CInt(&H24), var_B8, var_BC, var_AC & MemVar_1F92078 & "ROFF' And ST.ModeSet='S' and ST.FolioNoDocid='")
  loc_142381A: var_E8 = var_B8.Tag
  loc_1423823: var_C4 = -1 & var_BC
  loc_1423833: unk_533C53.Execute var_C4 & "' And ST.SettleDate Is Not Null Order By ST.VNo", var_EC, 
  loc_142383E: Set var_8C = var_EC
  loc_142387D: Me.FGrid.Rows = 1
  loc_1423899: If (var_8C.RecordCount > 0) Then
  loc_142389C:   ' Referenced from: 142416E
  loc_14238AB:   If Not(var_8C.EOF) Then
  loc_14238B4:     var_86 = (var_86 + 1)
  loc_14238BB:     Set var_108 = Me.FGrid
  loc_14238DA:     var_E8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_142392D:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), &H1A, CVar(CLng(var_86)))) 'String
  loc_1423934:     LateIdCallSt
  loc_1423980:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PayCode")), 1, CVar(CLng(var_86)), var_108)) 'String
  loc_1423987:     LateIdCallSt
  loc_14239D3:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Type")), 3, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_14239DA:     LateIdCallSt
  loc_1423A26:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PayName")), 4, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1423A2D:     LateIdCallSt
  loc_1423A79:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PayType")), 2, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1423A80:     LateIdCallSt
  loc_1423ACA:     Proc_6_39_E7C810(var_148, CVar(var_8C.Fields.Item("FolioNo")), &H17, CVar(CLng(var_86)), var_108)
  loc_1423ADA:     LateIdCallSt
  loc_1423B28:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("FolioNoDocid")), &H19, CVar(CLng(var_86)), var_108, CVar(CStr(var_148)))) 'String
  loc_1423B2F:     LateIdCallSt
  loc_1423B7A:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Comments")), CVar(CLng(&HF)), CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1423B81:     LateIdCallSt
  loc_1423BCD:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RoomCat")), 5, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1423BD4:     LateIdCallSt
  loc_1423C20:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Roomtype")), 6, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1423C27:     LateIdCallSt
  loc_1423C72:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RoomNo")), CVar(CLng(7)), CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1423C79:     LateIdCallSt
  loc_1423CC3:     Proc_6_47_EF59D0(var_148, CVar(var_8C.Fields.Item("AmtCr")), 9, CVar(CLng(var_86)), var_108, var_148)
  loc_1423CD3:     LateIdCallSt
  loc_1423D1F:     Proc_6_47_EF59D0(var_148, CVar(var_8C.Fields.Item("TipAmt")), &H12, CVar(CLng(var_86)), var_108, CVar(CStr(var_148)))
  loc_1423D2F:     LateIdCallSt
  loc_1423D7C:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")), CVar(CLng(&HA)), CVar(CLng(var_86)), var_108, CVar(CStr(var_148)))) 'String
  loc_1423D83:     LateIdCallSt
  loc_1423DCE:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardHolder")), CVar(CLng(&HB)), CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1423DD5:     LateIdCallSt
  loc_1423E07:     var_118 = CVar(CLng(var_86)) 'Long
  loc_1423E43:     LateIdCallSt
  loc_1423E93:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BatchNo")), &H18, CVar(CLng(var_86)), var_108, CVar(CStr(Format(CVar(var_8C.Fields.Item("ExpDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1423E9A:     LateIdCallSt
  loc_1423EE5:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ChqNo")), CVar(CLng(&HD)), CVar(CLng(var_86)), var_108, var_148, CVar(CLng(&HC)))) 'String
  loc_1423EEC:     LateIdCallSt
  loc_1423F1E:     var_118 = CVar(CLng(var_86)) 'Long
  loc_1423F5A:     LateIdCallSt
  loc_1423FA9:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_86)), var_108, CVar(CStr(Format(CVar(var_8C.Fields.Item("ChqDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1423FB0:     LateIdCallSt
  loc_1423FFB:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("EmpCode")), CVar(CLng(&H11)), CVar(CLng(var_86)), var_108, var_148, CVar(CLng(&HE)))) 'String
  loc_1424002:     LateIdCallSt
  loc_142404E:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RoomNo")), &H13, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424055:     LateIdCallSt
  loc_14240A1:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RoomNo")), &H14, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_14240A8:     LateIdCallSt
  loc_14240F4:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CompCode")), &H15, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_14240FB:     LateIdCallSt
  loc_1424147:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CompName")), &H16, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_142414E:     LateIdCallSt
  loc_1424162:     Set var_108 = Nothing 
  loc_1424169:     var_8C.MoveNext
  loc_142416E:     GoTo loc_142389C
  loc_1424171:   End If
  loc_1424174: Else
  loc_1424174:   Call Proc_167_50_102AEB4(var_108, var_148, var_118, var_108)
  loc_1424179: End If
  loc_1424198: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14241B7:   var_E8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_148))) 'String
  loc_14241BF:   Set var_B8 = Me.FGrid
  loc_14241D9: End If
  loc_14241EC: Me.FGrid.FixedRows = 1
  loc_1424207: Me.FGrid.Row = 1
  loc_142420F: Call Proc_167_49_114DE84(FGrid.DispID_10000, var_E8)
  loc_1424214: Call FGrid_UnknownEvent_9()
  loc_1424219: Exit Sub
End Sub

Public Sub Proc_167_49_114DE84
  'Data Table: 533C28
  Dim var_98 As Variant
  Dim var_D4 As String
  Dim var_D0 As Label
  Dim var_CC As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_154 As Double
  Dim var_FC As MSHFlexGrid
  Dim var_15C As Double
  Dim var_C8 As Variant
  Dim var_148 As Label
  Dim var_144 As Label
  Dim var_160 As Label
  loc_114DB32: Set var_CC = Me.LTxt
  loc_114DB38: Call 0.Method_Proc_167_49_114DE840 (CInt(1), var_D0, CStr(Format(global_172, "0.00")))
  loc_114DB40: var_D0.Caption = 1
  loc_114DB90: Set var_CC = Me.LTxt
  loc_114DB96: Call 0.Method_Proc_167_49_114DE840 (CInt(0), var_D0, CStr(Format(global_164, "0.00")))
  loc_114DB9E: var_D0.Caption = 1
  loc_114DBD9: For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D8 'Integer
  loc_114DBE3:   var_98 = CVar(CLng(var_86)) 'Long
  loc_114DC06:   var_D4 = CStr(Me.FGrid.TextMatrix))
  loc_114DC17:   If (var_D4 = "Dr") Then
  loc_114DC28:     Set var_CC = Me.LTxt
  loc_114DC2E:     Call 0.Method_Proc_167_49_114DE840 (CInt(1), var_D0, var_D4, 3)
  loc_114DC36:     var_98 = var_D0.Caption
  loc_114DC4A:     var_98 = CVar(CLng(var_86)) 'Long
  loc_114DC75:     var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_114DC94:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_114DCB2:     Set var_144 = Me.LTxt
  loc_114DCB8:     Call 0.Method_Proc_167_49_114DE840 (CInt(1), var_148, CStr(Format(Format(global_164, "0.00"), "0.00")), 1, 1, var_15C)
  loc_114DCC0:     var_148.Caption = 9
  loc_114DCE9:   Else
  loc_114DCF7:     Set var_CC = Me.LTxt
  loc_114DCFD:     Call 0.Method_Proc_167_49_114DE840 (CInt(0), var_D0, var_D4, var_98)
  loc_114DD05:     var_154 = var_D0.Caption
  loc_114DD19:     var_98 = CVar(CLng(var_86)) 'Long
  loc_114DD44:     var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_114DD63:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_114DD81:     Set var_144 = Me.LTxt
  loc_114DD87:     Call 0.Method_Proc_167_49_114DE840 (CInt(0), var_148, CStr(Format(Format(global_164, "0.00"), "0.00")), 1, 1, var_15C)
  loc_114DD8F:     var_148.Caption = 9
  loc_114DDB5:   End If
  loc_114DDB8: Next var_D8 'Integer
  loc_114DDCB: Set var_CC = Me.LTxt
  loc_114DDD1: Call 0.Method_Proc_167_49_114DE840 (CInt(0), var_D0)
  loc_114DDF7: Set var_FC = Me.LTxt
  loc_114DDFD: Call 0.Method_Proc_167_49_114DE840 (CInt(1), var_144)
  loc_114DE31: var_B8 = CVar((Val(var_D0.Caption) - Val(var_144.Caption))) 'Double
  loc_114DE4F: Set var_148 = Me.LTxt
  loc_114DE55: Call 0.Method_Proc_167_49_114DE840 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_114DE5D: var_160.Caption = 1
  loc_114DE83: Exit Sub
End Sub

Public Sub Proc_167_50_102AEB4
  'Data Table: 533C28
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_102AC7A: Set var_88 = Me.Txt
  loc_102AC80: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H17), var_8C)
  loc_102AC88: var_8C.Text = vbNullString
  loc_102ACA2: Set var_88 = Me.Txt
  loc_102ACA8: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H17), var_8C)
  loc_102ACB0: var_8C.Tag = vbNullString
  loc_102ACCA: Set var_88 = Me.Txt
  loc_102ACD0: Call 0.Method_Proc_167_50_102AEB40 (CInt(5), var_8C)
  loc_102ACD8: var_8C.Text = vbNullString
  loc_102ACF2: Set var_88 = Me.Txt
  loc_102ACF8: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H12), var_8C)
  loc_102AD00: var_8C.Text = vbNullString
  loc_102AD1A: Set var_88 = Me.Txt
  loc_102AD20: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H13), var_8C)
  loc_102AD28: var_8C.Text = vbNullString
  loc_102AD42: Set var_88 = Me.Txt
  loc_102AD48: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H14), var_8C)
  loc_102AD50: var_8C.Text = vbNullString
  loc_102AD6A: Set var_88 = Me.Txt
  loc_102AD70: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H25), var_8C)
  loc_102AD78: var_8C.Text = vbNullString
  loc_102AD92: Set var_88 = Me.Txt
  loc_102AD98: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H15), var_8C)
  loc_102ADA0: var_8C.Text = vbNullString
  loc_102ADBA: Set var_88 = Me.Txt
  loc_102ADC0: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H19), var_8C)
  loc_102ADC8: var_8C.Text = vbNullString
  loc_102ADE2: Set var_88 = Me.Txt
  loc_102ADE8: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H19), var_8C)
  loc_102ADF0: var_8C.Tag = vbNullString
  loc_102AE0A: Set var_88 = Me.Txt
  loc_102AE10: Call 0.Method_Proc_167_50_102AEB40 (CInt(&H16), var_8C)
  loc_102AE18: var_8C.Text = vbNullString
  loc_102AE32: Set var_88 = Me.Txt
  loc_102AE38: Call 0.Method_Proc_167_50_102AEB40 (CInt(4), var_8C)
  loc_102AE40: var_8C.Tag = vbNullString
  loc_102AE5A: Set var_88 = Me.Txt
  loc_102AE60: Call 0.Method_Proc_167_50_102AEB40 (CInt(4), var_8C)
  loc_102AE68: var_8C.Text = vbNullString
  loc_102AE81: Me.LblNature.Caption = vbNullString
  loc_102AE97: Set var_88 = Me.Txt
  loc_102AE9D: Call 0.Method_Proc_167_50_102AEB40 (CInt(6), var_8C)
  loc_102AEA5: var_8C.Text = vbNullString
  loc_102AEB1: Exit Sub
End Sub

Public Sub Proc_167_51_EE26B8
  'Data Table: 533C28
  loc_EE2606: On Error Goto loc_EE264C
  loc_EE261E: Call 0.Method_arg_18C (var_8C)
  loc_EE2626: Call var_8C.Show
  loc_EE263B: Call 0.Method_arg_188 (var_B0)
  loc_EE2643: var_88 = var_B0
  loc_EE2646: Proc_167_51_EE26B8 = 1
  loc_EE264C: ' Referenced from: EE2606
  loc_EE2654: Set var_8C = Err()
  loc_EE265A: Call 0.Method_arg_1C (var_B4)
  loc_EE266B: If (var_B4 <> 0) Then
  loc_EE2676:   Set var_8C = Err()
  loc_EE267C:   Call 0.Method_arg_2C (var_B0)
  loc_EE269D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE26B0: End If
  loc_EE26B0: Proc_167_51_EE26B8 = 
End Sub
