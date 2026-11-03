VERSION 5.00
Begin VB.Form HallBooking
  Caption = "Banquet Booking"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11730
  ClientHeight = 7485
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
  Appearance = 0 'Flat
  WhatsThisHelp = -1  'True
  Begin DataGrid DGCity
    Left = 16740
    Top = 3975
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 67
  End
  Begin DataGrid DGBookingAgent
    Left = 14445
    Top = 3840
    Width = 4980
    Height = 2910
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 99
  End
  Begin TextBox txt
    Index = 35
    ForeColor = &HFF0000&
    Left = 2010
    Top = 3990
    Width = 4530
    Height = 285
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
  Begin BtnEnh Command1
    Left = 7605
    Top = 7080
    Width = 1800
    Height = 495
    TabIndex = 95
  End
  Begin MSFlexGrid FGPoint
    Left = 17535
    Top = 6270
    Width = 1935
    Height = 1440
    Visible = 0   'False
    TabIndex = 65
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11730
    Height = 450
    TabIndex = 84
  End
  Begin TextBox txt
    Index = 33
    ForeColor = &HFF0000&
    Left = 2010
    Top = 5880
    Width = 4530
    Height = 570
    TabIndex = 21
    BorderStyle = 0 'None
    MultiLine = -1  'True
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
  Begin TextBox txt
    Index = 32
    ForeColor = &HFF0000&
    Left = 5025
    Top = 5565
    Width = 1515
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGCompany
    Left = 15510
    Top = 3510
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 66
  End
  Begin DataGrid DGParty
    Left = 16920
    Top = 2670
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
  Begin DataGrid DGVenue
    Left = 16665
    Top = 2100
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
End
Begin DataGrid DGSource
  Left = 16740
  Top = 1530
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 62
End
Begin DataGrid DGFuncType
  Left = 16665
  Top = 885
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 63
End
Begin DataGrid DGMarketSeg
  Left = 16590
  Top = 465
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 64
End
Begin TextBox txt
  Index = 34
  ForeColor = &H0&
  Left = 17970
  Top = 8850
  Width = 2040
  Height = 240
  Visible = 0   'False
  TabIndex = 60
  BorderStyle = 0 'None
  MaxLength = 21
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 18
  ForeColor = &HFF0000&
  Left = 2010
  Top = 5565
  Width = 2040
  Height = 285
  TabIndex = 19
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
Begin TextBox txt
  Index = 19
  ForeColor = &HFF0000&
  Left = 15780
  Top = 8880
  Width = 2040
  Height = 285
  Visible = 0   'False
  TabIndex = 23
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
Begin TextBox txt
  Index = 16
  ForeColor = &HFF0000&
  Left = 2010
  Top = 5250
  Width = 2040
  Height = 285
  TabIndex = 17
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
Begin TextBox txt
  Index = 17
  ForeColor = &HFF0000&
  Left = 5025
  Top = 5250
  Width = 1515
  Height = 285
  TabIndex = 18
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
Begin TextBox txt
  Index = 2
  ForeColor = &H80&
  Left = 4815
  Top = 1410
  Width = 1725
  Height = 360
  Enabled = 0   'False
  TabIndex = 5
  MaxLength = 12
  Locked = -1  'True
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
Begin TextBox txt
  Index = 15
  ForeColor = &HFF0000&
  Left = 2010
  Top = 4935
  Width = 4530
  Height = 285
  TabIndex = 16
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
Begin TextBox txt
  Index = 13
  ForeColor = &HFF0000&
  Left = 2010
  Top = 4305
  Width = 4530
  Height = 285
  TabIndex = 14
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
Begin TextBox txt
  Index = 12
  ForeColor = &HFF0000&
  Left = 2010
  Top = 3675
  Width = 4530
  Height = 285
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
Begin TextBox txt
  Index = 8
  ForeColor = &HFF0000&
  Left = 2010
  Top = 3045
  Width = 2145
  Height = 285
  TabIndex = 8
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
Begin TextBox txt
  Index = 9
  ForeColor = &HFF0000&
  Left = 5055
  Top = 3045
  Width = 1485
  Height = 285
  TabIndex = 9
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
Begin TextBox txt
  Index = 14
  ForeColor = &HFF0000&
  Left = 2010
  Top = 4620
  Width = 4530
  Height = 285
  TabIndex = 15
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
Begin CommandButton Command1z
  Caption = "Advance"
  Left = 4665
  Top = 8610
  Width = 1485
  Height = 300
  Visible = 0   'False
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
  MaskColor = &HFFC0C0&
  Style = 1
End
Begin TextBox txt
  Index = 25
  ForeColor = &HFF0000&
  Left = 8910
  Top = 3315
  Width = 4530
  Height = 285
  TabIndex = 29
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
Begin TextBox txt
  Index = 26
  ForeColor = &HFF0000&
  Left = 8910
  Top = 3630
  Width = 4530
  Height = 285
  TabIndex = 30
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
Begin TextBox txt
  Index = 24
  ForeColor = &HFF0000&
  Left = 8910
  Top = 3000
  Width = 4530
  Height = 285
  TabIndex = 28
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
Begin MaskEdBox txtMEd
  Index = 0
  Left = 2145
  Top = 7035
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 32
End
Begin TextBox TxtGrid
  Index = 1
  BackColor = &HC0C0C0&
  ForeColor = &H80000012&
  Left = 1095
  Top = 7095
  Width = 765
  Height = 225
  Visible = 0   'False
  TabIndex = 31
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 150
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
Begin TextBox txt
  Index = 11
  ForeColor = &HFF0000&
  Left = 5055
  Top = 3360
  Width = 1485
  Height = 285
  TabIndex = 11
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
Begin TextBox txt
  Index = 10
  ForeColor = &HFF0000&
  Left = 2010
  Top = 3360
  Width = 2145
  Height = 285
  TabIndex = 10
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
Begin TextBox txt
  Index = 7
  ForeColor = &HFF0000&
  Left = 5055
  Top = 2730
  Width = 1485
  Height = 285
  TabIndex = 7
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
Begin TextBox txt
  Index = 6
  ForeColor = &HFF0000&
  Left = 2010
  Top = 2730
  Width = 2145
  Height = 285
  TabIndex = 6
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
Begin TextBox txt
  Index = 5
  ForeColor = &HFF0000&
  Left = 2010
  Top = 2415
  Width = 4530
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
Begin CommandButton CmdMorez
  Caption = "Catering Booking"
  Left = 2475
  Top = 8835
  Width = 1755
  Height = 300
  Visible = 0   'False
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
  MaskColor = &HFFC0C0&
  Style = 1
End
Begin TextBox txt
  Index = 20
  ForeColor = &HFF0000&
  Left = 8910
  Top = 1740
  Width = 4530
  Height = 285
  TabIndex = 24
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
Begin TextBox txt
  Index = 21
  ForeColor = &HFF0000&
  Left = 8910
  Top = 2055
  Width = 4530
  Height = 285
  TabIndex = 25
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
Begin TextBox txt
  Index = 22
  ForeColor = &HFF0000&
  Left = 8910
  Top = 2370
  Width = 4530
  Height = 285
  TabIndex = 26
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
Begin TextBox txt
  Index = 23
  ForeColor = &HFF0000&
  Left = 8910
  Top = 2685
  Width = 4530
  Height = 285
  TabIndex = 27
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
Begin TextBox txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &H80&
  Left = 7155
  Top = 1050
  Width = 675
  Height = 285
  TabIndex = 0
  MaxLength = 8
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
Begin TextBox txt
  Index = 1
  ForeColor = &HFF0000&
  Left = 2010
  Top = 1470
  Width = 1500
  Height = 285
  TabIndex = 1
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
Begin TextBox txt
  Index = 3
  ForeColor = &HFF0000&
  Left = 2010
  Top = 1785
  Width = 4530
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
Begin TextBox txt
  Index = 4
  ForeColor = &HFF0000&
  Left = 2010
  Top = 2100
  Width = 4530
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
Begin MSHFlexGrid FGrid
  Left = 420
  Top = 6735
  Width = 6840
  Height = 2115
  TabIndex = 22
End
Begin Frame Frame1
  ForeColor = &H80000008&
  Left = 7530
  Top = 4515
  Width = 6255
  Height = 2535
  TabIndex = 49
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
  BorderStyle = 0 'None
  Begin BtnEnh BtnEnh1
    Left = 0
    Top = 1590
    Width = 1500
    Height = 885
    TabIndex = 87
  End
  Begin TextBox Txt1
    Index = 32
    ForeColor = &HFF0000&
    Left = 1515
    Top = 1590
    Width = 4530
    Height = 870
    TabIndex = 38
    BorderStyle = 0 'None
    MultiLine = -1  'True
    Alignment = 2 'Center
    DataSource = "Txt1"
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
  Begin TextBox txt
    Index = 30
    ForeColor = &HFF0000&
    Left = 1515
    Top = 960
    Width = 4530
    Height = 285
    TabIndex = 36
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox txt
    Index = 29
    ForeColor = &HFF0000&
    Left = 1515
    Top = 645
    Width = 4530
    Height = 285
    TabIndex = 35
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox txt
    Index = 28
    ForeColor = &HFF0000&
    Left = 1515
    Top = 330
    Width = 4530
    Height = 285
    TabIndex = 34
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox txt
    Index = 27
    ForeColor = &HFF0000&
    Left = 1515
    Top = 15
    Width = 4530
    Height = 285
    TabIndex = 33
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox txt
    Index = 31
    ForeColor = &HFF0000&
    Left = 1515
    Top = 1275
    Width = 4530
    Height = 285
    TabIndex = 37
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin BtnEnh BtnEnh3
    Left = 0
    Top = 15
    Width = 1500
    Height = 285
    TabIndex = 88
  End
  Begin BtnEnh BtnEnh4
    Left = 0
    Top = 330
    Width = 1500
    Height = 285
    TabIndex = 89
  End
  Begin BtnEnh BtnEnh5
    Left = 0
    Top = 645
    Width = 1500
    Height = 285
    TabIndex = 90
  End
  Begin BtnEnh BtnEnh6
    Left = 0
    Top = 960
    Width = 1500
    Height = 285
    TabIndex = 91
  End
End
Begin BtnEnh BtnEnh2
  Left = 0
  Top = 1275
  Width = 1500
  Height = 285
  TabIndex = 92
End
Begin BtnEnh BtnEnh7
  Left = 4890
  Top = 1050
  Width = 2265
  Height = 285
  TabIndex = 93
End
Begin BtnEnh CmdMore
  Left = 9405
  Top = 7080
  Width = 1800
  Height = 495
  TabIndex = 96
End
Begin Label Label1
  Caption = "Booking Agent"
  Index = 3
  ForeColor = &HFF0000&
  Left = 420
  Top = 3975
  Width = 1395
  Height = 240
  TabIndex = 98
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
Begin Label LblBillRemark
  Caption = "Bill Remark"
  ForeColor = &HFF&
  Left = 8055
  Top = 1065
  Width = 3135
  Height = 270
  TabIndex = 97
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Monotype Corsiva"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Day"
  Index = 2
  ForeColor = &HFF0000&
  Left = 4395
  Top = 1485
  Width = 360
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
Begin Label Label4
  Caption = "Instructions for Department"
  ForeColor = &H80&
  Left = 6975
  Top = 4185
  Width = 2925
  Height = 270
  TabIndex = 86
  Alignment = 1 'Right Justify
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
Begin Label Label3
  Caption = "Party Instructions"
  ForeColor = &H80&
  Left = 6975
  Top = 1425
  Width = 1860
  Height = 270
  TabIndex = 85
  Alignment = 1 'Right Justify
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
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 15
  Top = 8520
  Width = 2520
  Height = 255
  TabIndex = 83
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
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 0
  Top = 8850
  Width = 2430
  Height = 285
  TabIndex = 82
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 435
  Width = 180
  Height = 540
  TabIndex = 81
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
  Caption = "Remark"
  Index = 9
  ForeColor = &HFF0000&
  Left = 420
  Top = 5805
  Width = 735
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
Begin Label Label1
  Caption = "Function Type"
  Index = 28
  ForeColor = &HFF0000&
  Left = 420
  Top = 4305
  Width = 1350
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
Begin Label Label1
  Caption = "City Name"
  Index = 13
  ForeColor = &HFF0000&
  Left = 420
  Top = 2715
  Width = 975
  Height = 240
  TabIndex = 78
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
  Caption = "Mobile No."
  Index = 40
  ForeColor = &HFF0000&
  Left = 420
  Top = 3345
  Width = 1020
  Height = 240
  TabIndex = 77
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
  Caption = "Company Name"
  Index = 6
  ForeColor = &HFF0000&
  Left = 420
  Top = 3660
  Width = 1515
  Height = 240
  TabIndex = 76
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
  Caption = "Phone(Res.)"
  Index = 36
  ForeColor = &HFF0000&
  Left = 420
  Top = 3030
  Width = 1140
  Height = 240
  TabIndex = 75
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
  Caption = "Market Segment"
  Index = 47
  ForeColor = &HFF0000&
  Left = 420
  Top = 4620
  Width = 1560
  Height = 240
  TabIndex = 74
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
  Caption = "Business Source"
  Index = 48
  ForeColor = &HFF0000&
  Left = 420
  Top = 4935
  Width = 1560
  Height = 240
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
End
Begin Label Label1
  Caption = "Exp Pax"
  Index = 49
  ForeColor = &HFF0000&
  Left = 420
  Top = 5175
  Width = 795
  Height = 240
  TabIndex = 72
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
  Caption = "Booking Type"
  Index = 52
  ForeColor = &HFF0000&
  Left = 14340
  Top = 8865
  Width = 1305
  Height = 240
  Visible = 0   'False
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
End
Begin Label Label1
  Caption = "Rate/Pax"
  Index = 53
  ForeColor = &HFF0000&
  Left = 420
  Top = 5550
  Width = 870
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
Begin Label Label1
  Caption = "Advance"
  Index = 8
  ForeColor = &HFF0000&
  Left = 4110
  Top = 5565
  Width = 825
  Height = 240
  TabIndex = 69
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
  Caption = "Special Inst 1"
  Index = 4
  ForeColor = &HFF0000&
  Left = 7530
  Top = 1755
  Width = 1275
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
End
Begin Shape Shape1
  BorderColor = &H808080&
  Left = 19845
  Top = 7950
  Width = 240
  Height = 210
  Visible = 0   'False
End
Begin Label Label2
  Caption = "Venue Selection"
  ForeColor = &H80&
  Left = 420
  Top = 6480
  Width = 1740
  Height = 270
  TabIndex = 61
  Alignment = 1 'Right Justify
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
  BorderColor = &H808080&
  Left = 19500
  Top = 7995
  Width = 210
  Height = 195
  Visible = 0   'False
End
Begin Label Lbl
  Caption = "Gurr. Pax"
  Index = 19
  ForeColor = &H0&
  Left = 0
  Top = 0
  Width = 1335
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
Begin Label Label1
  Caption = "Gurr. Pax"
  Index = 35
  ForeColor = &HFF0000&
  Left = 4080
  Top = 5250
  Width = 915
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
End
Begin Label Lbl
  Caption = "(Off.)"
  Index = 17
  ForeColor = &HFF0000&
  Left = 4185
  Top = 3030
  Width = 450
  Height = 240
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
End
Begin Label Label1
  Caption = "Special Inst. 7"
  Index = 44
  ForeColor = &HFF0000&
  Left = 7530
  Top = 3645
  Width = 1335
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
End
Begin Label Label1
  Caption = "Special Inst 6"
  Index = 45
  ForeColor = &HFF0000&
  Left = 7530
  Top = 3330
  Width = 1275
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
Begin Label Label1
  Caption = "Special Inst 5"
  Index = 46
  ForeColor = &HFF0000&
  Left = 7530
  Top = 3015
  Width = 1275
  Height = 240
  TabIndex = 53
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
  Caption = "DOC ID"
  Index = 43
  ForeColor = &H0&
  Left = 18630
  Top = 8310
  Width = 585
  Height = 225
  Visible = 0   'False
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
Begin Label Label1
  Caption = "PAN No."
  Index = 41
  ForeColor = &HFF0000&
  Left = 4200
  Top = 3375
  Width = 780
  Height = 240
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
Begin Label Label1
  Caption = "PIN"
  Index = 20
  ForeColor = &HFF0000&
  Left = 4215
  Top = 2760
  Width = 330
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
Begin Label Label1
  Caption = "Special Inst 3"
  Index = 33
  ForeColor = &HFF0000&
  Left = 7530
  Top = 2385
  Width = 1275
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
Begin Label Label1
  Caption = "Special Inst 2"
  Index = 32
  ForeColor = &HFF0000&
  Left = 7530
  Top = 2070
  Width = 1275
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
Begin Label Label1
  Caption = "Special Inst 4"
  Index = 23
  ForeColor = &HFF0000&
  Left = 7530
  Top = 2700
  Width = 1275
  Height = 240
  TabIndex = 46
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
  Caption = "Booking Date"
  Index = 1
  ForeColor = &HFF0000&
  Left = 405
  Top = 1485
  Width = 1275
  Height = 240
  TabIndex = 45
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
  Caption = "VPrefix"
  ForeColor = &H0&
  Left = 18360
  Top = 8010
  Width = 600
  Height = 240
  Visible = 0   'False
  TabIndex = 44
  Alignment = 1 'Right Justify
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "Party "
  Index = 5
  ForeColor = &HFF0000&
  Left = 405
  Top = 1800
  Width = 555
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
Begin Label Label1
  Caption = "Address"
  Index = 0
  ForeColor = &HFF0000&
  Left = 405
  Top = 2115
  Width = 750
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

Attribute VB_Name = "HallBooking"

Private global_52 As Integer
Private global_132 As Integer
Private global_134 As Integer
Private global_144 As Integer
Private global_148 As Long
Private global_140 As Long
Private global_112 As Integer

Private Sub CmdMore_UnknownEvent_9 '1131BFC
  'Data Table: 5727D4
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_D4 As String
  Dim var_88 As Fields15
  Dim var_C8 As String
  Dim var_EC As Variant
  Dim var_10C As Variant
  loc_1131894: On Error Goto loc_1131BBE
  loc_113189B: Set var_88 = Me.TopCtrl1
  loc_11318A1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_11318BA: If (CStr() <> "Browse") Then
  loc_11318BD:   Exit Sub
  loc_11318BE: End If
  loc_11318C2: Set var_88 = Me.TopCtrl1
  loc_11318C8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_11318E1: If (CStr() = "Add") Then
  loc_11318E4:   Call TopCtrl1_UnknownEvent_16()
  loc_113190C:   Call Proc_123_76_EEE3D0(Proc_5_1_100CB50("INI", Me))
  loc_1131922:   Set var_88 = Me.TxtGrid
  loc_1131928:   Call 0.Method_CmdMore_UnknownEvent_90 (1, var_A4)
  loc_1131930:   var_A4.Visible = False
  loc_113193C:   Call Proc_123_73_16C3C34(global_60)
  loc_1131941:   ' Referenced from: 1131B04
  loc_113194D:   Call CateringBooking.global_56Put(global_56)
  loc_1131962:   Set var_88 = Me.Frame1
  loc_1131968:   Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H22), var_A4)
  loc_113197E:   Call 0.Method_arg_1C4 (CateringBooking.Frame1.Text)
  loc_113199B:   Call 0.Method_arg_2B0 (var_B8)
  loc_11319A6:   Call CateringBooking.TopCtrl1_UnknownEvent_A()
  loc_11319B9:   Set var_88 = var_A8.Txt
  loc_11319BF:   Call 0.Method_CmdMore_UnknownEvent_90 (&H2D, var_A4)
  loc_11319C7:   CateringBooking.Txt.SetFocus
  loc_11319D6: Else
  loc_11319DC:   Me.Close
  loc_11319F1:   Set var_88 = Me.txt
  loc_11319F7:   Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H22), var_A4)
  loc_1131A33:   var_D4 = "Select S.DocId as SearchCode,S.DocID From HAllBook S WHERE S.RestCode='" & global_56 & "' AND S.Docid='" & var_A4.Text
  loc_1131A44:   Me.Open CVar(var_D4 & "'"), CVar(MemVar_1F92044), 3
  loc_1131A75:   If (Me.RecordCount <> 0) Then
  loc_1131AB9:     var_C8 = "Select S.DocId AS DocId From HAllBook1 S WHERE S.DocId='"
  loc_1131AC1:     var_EC = var_C8 & Me.Fields.Item("DocID").Value 
  loc_1131ACA:     var_10C = var_EC & "' Order by Docid" 
  loc_1131AD5:     Me.Recordset15.Open var_10C, CVar(MemVar_1F92044), 3
  loc_1131B01:     If (Me.Recordset15.RecordCount = 0) Then
  loc_1131B04:       GoTo loc_1131941
  loc_1131B0C:       Set var_DC = Nothing
  loc_1131B12:     Else
  loc_1131B16:       Set var_88 = Me.TopCtrl1
  loc_1131B1C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(1)
  loc_1131B24:       var_9C = CStr(-1)
  loc_1131B35:       If ("Select S.DocId as SearchCode,S.DocID From HAllBook S WHERE S.RestCode='" & global_56 = "Edit") Then
  loc_1131B38:         Call TopCtrl1_UnknownEvent_16()
  loc_1131B3D:       End If
  loc_1131B49:       Call CateringBooking.global_56Put(global_56)
  loc_1131B54:       var_B8 = "DocID"
  loc_1131B7C:       var_9C = CStr(Me.Recordset15.Fields.Item(var_B8).Value)
  loc_1131B85:       Call 0.Method_arg_1C4 (var_9C, 1)
  loc_1131BA5:       Call 0.Method_arg_2B0 (var_B8, var_C8)
  loc_1131BAA:     End If
  loc_1131BAA:   End If
  loc_1131BAA: End If
  loc_1131BAA: Call Form_Load()
  loc_1131BB8: Call 0.Method_arg_2AC (1, -1)
  loc_1131BBD: Exit Sub
  loc_1131BBE: ' Referenced from: 1131894
  loc_1131BD4: Set var_88 = Err()
  loc_1131BDA: Call 0.Method_arg_2C (var_9C, 0, var_EC)
  loc_1131BE5: MsgBox(CVar(var_9C), var_10C, var_12C, var_C8, )
  loc_1131BF8: Exit Sub
End Sub

Private Sub DGSource_UnknownEvent_9 'F4CFA4
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4CE9B: Me.DGSource.Visible = False
  loc_F4CEBA: If (Me.RecordCount > 0) Then
  loc_F4CEF9:   Set var_B4 = Me.txt
  loc_F4CEFF:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4CF07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4CF3A:   var_B0 = Me.Fields.Item("Code")
  loc_F4CF59:   Set var_B4 = Me.txt
  loc_F4CF5F:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4CF67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4CF7D: End If
  loc_F4CF88: Set var_A8 = Me.txt
  loc_F4CF8E: Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF))
  loc_F4CF96: var_B0.SetFocus
  loc_F4CFA2: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '114CAE8
  'Data Table: 5727D4
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Recordset15
  loc_114C762: Set var_88 = Me.TxtGrid
  loc_114C768: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_114C776: Proc_6_74_E226B0(var_8C)
  loc_114C782: Call Proc_123_77_FB8088(var_8C)
  loc_114C793: If (Index = 1) Then
  loc_114C7AC:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_114C7C7:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114C7D0:   Set var_8C = Me.FGrid
  loc_114C7E8:   Set var_90 = Me.FGrid
  loc_114C806:   Set var_108 = Me.TxtGrid
  loc_114C80C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(var_90.TextMatrix)))
  loc_114C814:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_114C832:   var_A4 = "MS Sans Serif"
  loc_114C844:   Set var_88 = Me.TxtGrid
  loc_114C84A:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90)
  loc_114C85A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0
  loc_114C875:   Set var_88 = Me.TxtGrid
  loc_114C87B:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(8))
  loc_114C883:   var_8C.FontSize = var_8C.Font
  loc_114C8B2:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_114C8C2:     Set var_90 = Me.TxtGrid
  loc_114C8C8:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_114C8D0:     var_114 = var_108.Height
  loc_114C8E2:     Set var_88 = Me.TxtGrid
  loc_114C8E8:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_114C8FC:     var_A4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_114C90B:     Me.DGVenue.Top = var_8C.Font
  loc_114C92A:     Set var_88 = Me.TxtGrid
  loc_114C930:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_114C949:     Set var_90 = Me.DGVenue
  loc_114C94F:     var_90.Left = CVar(var_8C.Left)
  loc_114C99E:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_114C9A1:       Exit Sub
  loc_114C9A2:     End If
  loc_114C9A8:     Me.MoveFirst
  loc_114C9C0:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114C9C8:     var_E4 = CVar(CLng(7)) 'Long
  loc_114C9D1:     Set var_8C = Me.FGrid
  loc_114CA0C:     Me.Find "Code='" & CStr(var_8C.TextMatrix)) & "'", 0, 1
  loc_114CA3C:     If (Me.EOF = &HFF) Then
  loc_114CA45:       Me.MoveFirst
  loc_114CA4A:     End If
  loc_114CA4D:   Else
  loc_114CA54:     If (var_114 = CLng(2)) Then
  loc_114CA69:       Set var_88 = Me.TxtGrid
  loc_114CA6F:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90, "WINGDINGS", var_138)
  loc_114CA77:       var_D4 = var_8C.Font
  loc_114CA7F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0
  loc_114CA9A:       Set var_88 = Me.TxtGrid
  loc_114CAA0:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(&HE))
  loc_114CAA8:       var_8C.FontSize = var_E4
  loc_114CAC4:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_114CADE:       Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_114CAE6:     End If
  loc_114CAE6:   End If
  loc_114CAE6: End If
  loc_114CAE6: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10A06B4
  'Data Table: 5727D4
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10A0404: If (KeyCode = 1) Then
  loc_10A0411:   If (CLng(Shift) = &H1B) Then
  loc_10A0421:     Set var_8C = Me.TxtGrid
  loc_10A0427:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10A0441:     Set var_98 = Me.TxtGrid
  loc_10A0447:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10A044F:     var_9C.Text = var_90.Tag
  loc_10A046B:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10A0470:     Call Proc_123_77_FB8088(arg_14)
  loc_10A0479:     Set var_8C = Me.FGrid
  loc_10A0496:     Set var_8C = Me.TxtGrid
  loc_10A049C:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10A04A4:     var_90.Visible = FGrid.DispID_8001
  loc_10A04B0:     Exit Sub
  loc_10A04B1:   End If
  loc_10A04C4:   var_B0 = CLng(Me.FGrid.Col)
  loc_10A04D4:   If (var_B0 = CLng(1)) Then
  loc_10A04EF:     Set var_9C = Nothing
  loc_10A0528:     Proc_6_69_134A198(Me.DGVenue, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_10A0546:     If (CLng(Shift) = &HD) Then
  loc_10A054F:       Call Proc_123_72_12D0D8C(KeyCode, var_B2, 1, Nothing)
  loc_10A055A:       If (var_B2 = &HFF) Then
  loc_10A05A0:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_134, 7, 2)
  loc_10A05B0:       End If
  loc_10A05B0:     End If
  loc_10A05B3:   Else
  loc_10A05BA:     If (var_B0 = CLng(3)) Then
  loc_10A05C7:       If (CLng(Shift) = &HD) Then
  loc_10A05D0:         Call Proc_123_72_12D0D8C(KeyCode, var_B2, 3, 0)
  loc_10A05DB:         If (var_B2 = &HFF) Then
  loc_10A0621:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_134, 7, 0)
  loc_10A0631:         End If
  loc_10A0631:       End If
  loc_10A0634:     Else
  loc_10A063B:       If (var_B0 = CLng(5)) Then
  loc_10A0648:         If (CLng(Shift) = &HD) Then
  loc_10A0651:           Call Proc_123_72_12D0D8C(KeyCode, var_B2, 4, 0)
  loc_10A065C:           If (var_B2 = &HFF) Then
  loc_10A06A2:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_134, 7, 0)
  loc_10A06B2:           End If
  loc_10A06B2:         End If
  loc_10A06B2:       End If
  loc_10A06B2:     End If
  loc_10A06B2:   End If
  loc_10A06B2: End If
  loc_10A06B2: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EB6144
  'Data Table: 5727D4
  loc_EB60AF: Proc_6_58_E054C0(arg_10)
  loc_EB60C0: If (KeyAscii = 1) Then
  loc_EB60E6:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EB6105:     If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_EB6117:       var_A4 = "Name"
  loc_EB6132:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_EB6141:     End If
  loc_EB6141:   End If
  loc_EB6141: End If
  loc_EB6141: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDB218
  'Data Table: 5727D4
  loc_EDB164: On Error Goto loc_EDB20F
  loc_EDB173: If (KeyCode = 1) Then
  loc_EDB199:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EDB1BF:     If ((Shift <> &HD) And (CBool(Me.DGVenue.Visible) = 0)) Then
  loc_EDB1D0:       Call TxtGrid_KeyDown(KeyCode, global_132)
  loc_EDB1FF:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_EDB20E:     End If
  loc_EDB20E:   End If
  loc_EDB20E: End If
  loc_EDB20E: Exit Sub
  loc_EDB20F: ' Referenced from: EDB164
  loc_EDB20F: Proc_6_60_E62BC4(&HFF, 0)
  loc_EDB214: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E62D54
  'Data Table: 5727D4
  Dim var_90 As MaskEdBox
  loc_E62D14: If (Cancel = 1) Then
  loc_E62D1D:   Call Proc_123_72_12D0D8C(Cancel, var_88)
  loc_E62D37:   Set var_8C = Me.txtMEd
  loc_E62D3D:   Call 0.Method_TxtGrid_Validate0 (0, var_90, False)
  loc_E62D45:   var_90.Visible = Not(var_88)
  loc_E62D51: End If
  loc_E62D51: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F4EC84
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4EB7B: Me.DGMarketSeg.Visible = False
  loc_F4EB9A: If (Me.RecordCount > 0) Then
  loc_F4EBD9:   Set var_B4 = Me.txt
  loc_F4EBDF:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F4EBE7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4EC1A:   var_B0 = Me.Fields.Item("Code")
  loc_F4EC39:   Set var_B4 = Me.txt
  loc_F4EC3F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F4EC47:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4EC5D: End If
  loc_F4EC68: Set var_A8 = Me.txt
  loc_F4EC6E: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE))
  loc_F4EC76: var_B0.SetFocus
  loc_F4EC82: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'EA6B08
  'Data Table: 5727D4
  Dim var_A8 As Variant
  loc_EA6A88: Set var_88 = Me.DGMarketSeg
  loc_EA6AB2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6ABA: Set var_BC = Me.DGMarketSeg
  loc_EA6AF6: Proc_6_138_106D6F8(Me.DGMarketSeg, global_64, CInt(&HE), Me.FGPoint)
  loc_EA6B04: Exit Sub
  loc_EA6B05: DGMarketSeg.DispID_1B = var_A8
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED1AA8
  'Data Table: 5727D4
  loc_ED1A0C: If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_ED1A0F:   Call DGVenue_UnknownEvent_9()
  loc_ED1A14: End If
  loc_ED1A30: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_ED1A33:   Call DGMarketSeg_UnknownEvent_9()
  loc_ED1A38: End If
  loc_ED1A54: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_ED1A57:   Call DGFuncType_UnknownEvent_9()
  loc_ED1A5C: End If
  loc_ED1A78: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_ED1A7B:   Call DGSource_UnknownEvent_9()
  loc_ED1A80: End If
  loc_ED1A9C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_ED1A9F:   Call DGParty_UnknownEvent_9()
  loc_ED1AA4: End If
  loc_ED1AA4: Exit Sub
  loc_ED1AA5: StAryRecMove
End Sub

Private Sub DGParty_UnknownEvent_9 'F39364
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3925B: Me.DGParty.Visible = False
  loc_F3927A: If (Me.RecordCount > 0) Then
  loc_F392B9:   Set var_B4 = Me.txt
  loc_F392BF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F392C7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F392FA:   var_B0 = Me.Fields.Item("Code")
  loc_F39319:   Set var_B4 = Me.txt
  loc_F3931F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39327:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3933D: End If
  loc_F39348: Set var_A8 = Me.txt
  loc_F3934E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F39356: var_B0.SetFocus
  loc_F39362: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA6A44
  'Data Table: 5727D4
  Dim var_A8 As Variant
  loc_EA69C4: Set var_88 = Me.DGParty
  loc_EA69EE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA69F6: Set var_BC = Me.DGParty
  loc_EA6A32: Proc_6_138_106D6F8(Me.DGParty, global_72, CInt(3), Me.FGPoint)
  loc_EA6A40: Exit Sub
End Sub

Private Sub Form_Load() '14F09B4
  'Data Table: 5727D4
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_BC As TextBox
  Dim var_E4 As Variant
  Dim unk_5727EB As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_110 As String
  Dim var_114 As String
  Dim var_10C As String
  Dim Me As Recordset15
  Dim var_108 As Variant
  loc_14EFB8C: On Error Goto loc_14F09AC
  loc_14EFB9D: Set var_8C = Me.txt
  loc_14EFBA3: Call 0.Method_Form_Load0 (CInt(&HC), var_90)
  loc_14EFBC2: Me.DGCompany.Left = CVar(var_90.Left)
  loc_14EFBDE: Set var_B8 = Me.txt
  loc_14EFBE4: Call 0.Method_Form_Load0 (CInt(&HC), var_BC)
  loc_14EFBFF: Set var_8C = Me.txt
  loc_14EFC05: Call 0.Method_Form_Load0 (CInt(&HC), var_90)
  loc_14EFC1D: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14EFC2C: Me.DGCompany.Top = CVar(var_90.Left)
  loc_14EFC4C: Set var_8C = Me.txt
  loc_14EFC52: Call 0.Method_Form_Load0 (CInt(&H23), var_90)
  loc_14EFC71: Me.DGBookingAgent.Left = CVar(var_90.Left)
  loc_14EFC8D: Set var_B8 = Me.txt
  loc_14EFC93: Call 0.Method_Form_Load0 (CInt(&H23), var_BC)
  loc_14EFCAE: Set var_8C = Me.txt
  loc_14EFCB4: Call 0.Method_Form_Load0 (CInt(&H23), var_90)
  loc_14EFCCC: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14EFCDB: Me.DGBookingAgent.Top = CVar(var_90.Left)
  loc_14EFCFB: Set var_8C = Me.txt
  loc_14EFD01: Call 0.Method_Form_Load0 (CInt(&HE), var_90)
  loc_14EFD20: Me.DGMarketSeg.Left = CVar(var_90.Left)
  loc_14EFD3C: Set var_B8 = Me.txt
  loc_14EFD42: Call 0.Method_Form_Load0 (CInt(&HE), var_BC)
  loc_14EFD5D: Set var_8C = Me.txt
  loc_14EFD63: Call 0.Method_Form_Load0 (CInt(&HE), var_90)
  loc_14EFD7B: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14EFD8A: Me.DGMarketSeg.Top = CVar(var_90.Left)
  loc_14EFDAA: Set var_8C = Me.txt
  loc_14EFDB0: Call 0.Method_Form_Load0 (CInt(&HF), var_90)
  loc_14EFDCF: Me.DGSource.Left = CVar(var_90.Left)
  loc_14EFDEB: Set var_B8 = Me.txt
  loc_14EFDF1: Call 0.Method_Form_Load0 (CInt(&HF), var_BC)
  loc_14EFE0C: Set var_8C = Me.txt
  loc_14EFE12: Call 0.Method_Form_Load0 (CInt(&HF), var_90)
  loc_14EFE2A: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14EFE39: Me.DGSource.Top = CVar(var_90.Left)
  loc_14EFE59: Set var_8C = Me.txt
  loc_14EFE5F: Call 0.Method_Form_Load0 (CInt(&HD), var_90)
  loc_14EFE7E: Me.DGFuncType.Left = CVar(var_90.Left)
  loc_14EFE9A: Set var_B8 = Me.txt
  loc_14EFEA0: Call 0.Method_Form_Load0 (CInt(&HD), var_BC)
  loc_14EFEBB: Set var_8C = Me.txt
  loc_14EFEC1: Call 0.Method_Form_Load0 (CInt(&HD), var_90)
  loc_14EFED9: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14EFEE8: Me.DGFuncType.Top = CVar(var_90.Left)
  loc_14EFF08: Set var_8C = Me.txt
  loc_14EFF0E: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_14EFF2D: Me.DGParty.Left = CVar(var_90.Left)
  loc_14EFF49: Set var_B8 = Me.txt
  loc_14EFF4F: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_14EFF57: var_C0 = var_BC.Height
  loc_14EFF6A: Set var_8C = Me.txt
  loc_14EFF70: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_14EFF88: var_A4 = CVar(((var_90.Top + var_C0) + CDbl(&H1E))) 'Single
  loc_14EFF97: Me.DGParty.Top = CVar(var_90.Left)
  loc_14EFFC6: Proc_6_17_EAA2B0(var_D4, MemVar_1F92078, "Select * From Enviro Where LogSite_Code=")
  loc_14EFFCE: var_E4 = var_108 & var_D4 
  loc_14EFFDC: unk_5727EB.Execute CStr(var_E4), -1, var_8C
  loc_14EFFE7: Set var_88 = var_8C
  loc_14EFFFF: var_94 = var_88.RecordCount
  loc_14F000D: If (var_94 > 0) Then
  loc_14F0027:   var_90 = var_88.Fields.Item("PANNOMandatoryYN")
  loc_14F003E:   global_128 = Proc_6_38_E68A98(CVar(var_90))
  loc_14F004B: End If
  loc_14F0050: Set var_88 = Nothing
  loc_14F0068: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_14F0071:   global_104 = "IBOOK"
  loc_14F0090:   var_110 = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F92078 & "') And code not in (select InquiryCode from HallBook Where InquiryCode<>'"
  loc_14F00A1:   Set var_8C = Me.txt
  loc_14F00A7:   Call 0.Method_Form_Load0 (CInt(3), var_90, var_10C, var_110)
  loc_14F00AF:   var_D4 = var_90.Tag
  loc_14F00B8:   var_114 = -1 & var_10C
  loc_14F00C8:   unk_5727EB.Execute var_114 & "') and Status='Active' AND CatType='Indoor' order by PartyName", var_B8, 
  loc_14F00D9:   Set global_72 = var_B8
  loc_14F00FB: Else
  loc_14F0110:   If (global_56 = MemVar_1F92078 & "ODC") Then
  loc_14F0119:     global_104 = "OBOOK"
  loc_14F0138:     var_110 = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F92078 & "') And code not in (select InquiryCode from HallBook Where InquiryCode<>'"
  loc_14F0149:     Set var_8C = Me.txt
  loc_14F014F:     Call 0.Method_Form_Load0 (CInt(3), var_90, var_10C, var_110)
  loc_14F0157:     var_D4 = var_90.Tag
  loc_14F0160:     var_114 = -1 & var_10C
  loc_14F0170:     unk_5727EB.Execute var_114 & "') and Status='Active' AND CatType='Outdoor' order by PartyName", var_B8, 
  loc_14F0181:     Set global_72 = var_B8
  loc_14F01A0:   End If
  loc_14F01A0: End If
  loc_14F01A9: CVarUnk
  loc_14F01AE: VerifyVarObj
  loc_14F01B4: Set var_8C = Me.DGParty
  loc_14F01BA: LateIdStAd
  loc_14F01DD: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_14F01E6:   global_104 = "IBOOK"
  loc_14F0205:   var_10C = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F92078 & "') AND CatType='Indoor' order by PartyName"
  loc_14F020E:   unk_5727EB.Execute var_10C, var_D4, -1
  loc_14F021F:   Set global_76 = var_8C
  loc_14F0237: Else
  loc_14F024C:   If (global_56 = MemVar_1F92078 & "ODC") Then
  loc_14F0255:     global_104 = "OBOOK"
  loc_14F0274:     var_10C = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F92078 & "') AND CatType='Outdoor' order by PartyName"
  loc_14F027D:     unk_5727EB.Execute var_10C, var_D4, -1
  loc_14F028E:     Set global_76 = var_8C
  loc_14F02A3:   End If
  loc_14F02A3: End If
  loc_14F02C7: unk_5727EB.Execute "Select Code,Name From MarketSeg Where Active<>'No' And LogSite_Code in ('" & MemVar_1F92078 & "') Order by Name", var_D4, -1
  loc_14F02D8: Set global_64 = var_8C
  loc_14F02F6: CVarUnk
  loc_14F02FB: VerifyVarObj
  loc_14F0307: LateIdStAd
  loc_14F0339: unk_5727EB.Execute "Select Code,Name From VenueMast Where LogSite_Code in ('" & MemVar_1F92078 & "') Order by Name", var_D4, -1
  loc_14F0368: CVarUnk
  loc_14F036D: VerifyVarObj
  loc_14F0373: Set var_8C = Me.DGVenue
  loc_14F0379: LateIdStAd
  loc_14F03A3: Me.DGVenue.CursorLocation = 3
  loc_14F03CD: var_D4 = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY Where LogSite_Code in ('" & MemVar_1F92078 & "') Order by CITYName") 'String
  loc_14F03EB: CVarUnk
  loc_14F03F0: VerifyVarObj
  loc_14F03F6: Set var_8C = Me.DGCity
  loc_14F03FC: LateIdStAd
  loc_14F041E: Call 0.Method_Form_Load0 (CInt(6), var_90, var_94, Me.txt, New, 3, -1)
  loc_14F043D: Me.DGCity.Left = CVar(var_94)
  loc_14F0459: Set var_B8 = Me.txt
  loc_14F045F: Call 0.Method_Form_Load0 (CInt(6), var_BC, var_C0, Me.DGMarketSeg, var_90.Left)
  loc_14F0467: var_8C = var_BC.Height
  loc_14F0480: Call 0.Method_Form_Load0 (CInt(6), var_90, var_94)
  loc_14F0488: global_64 = var_90.Top
  loc_14F0494: var_A4 = CVar((var_94 + var_C0)) 'Single
  loc_14F04A3: Me.DGCity.Top = CVar(var_94)
  loc_14F04D9: unk_5727EB.Execute "Select Code,Name From BussSource Where Active<>'No' And LogSite_Code in ('" & MemVar_1F92078 & "') Order by Name", var_D4, -1
  loc_14F04EA: Set global_80 = Me.txt
  loc_14F0508: CVarUnk
  loc_14F050D: VerifyVarObj
  loc_14F0519: LateIdStAd
  loc_14F054B: unk_5727EB.Execute "Select Code,Name From FunctionType Where LogSite_Code in ('" & MemVar_1F92078 & "') Order by Name", var_D4, -1
  loc_14F055C: Set global_84 = Me.DGSource
  loc_14F057A: CVarUnk
  loc_14F057F: VerifyVarObj
  loc_14F058B: LateIdStAd
  loc_14F05B4: var_10C = "Select SubCode As Code,Name From SubGroup Where LogSite_Code in ('" & MemVar_1F92078 & "') And Nature='Customer' order by Name"
  loc_14F05BD: unk_5727EB.Execute var_10C, var_D4, -1
  loc_14F05EC: CVarUnk
  loc_14F05F1: VerifyVarObj
  loc_14F05FD: LateIdStAd
  loc_14F0626: var_10C = "Select SubCode ,Name From Subgroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CompanyType like ('Travel Agency') Order by Name"
  loc_14F062F: unk_5727EB.Execute var_10C, var_D4, -1
  loc_14F065E: CVarUnk
  loc_14F0663: VerifyVarObj
  loc_14F0669: Set var_8C = Me.DGBookingAgent
  loc_14F066F: LateIdStAd
  loc_14F0687: Set global_60 = New 
  loc_14F0699: Me.DGBookingAgent.CursorLocation = 3
  loc_14F06C3: var_10C = "Select S.DocId as SearchCode,S.DocID,* From HAllBook S WHERE LogSite_Code in ('" & MemVar_1F92078 & "') And restCode='"
  loc_14F06E5: var_D4 = CVar(var_10C & global_56 & "' AND VType='" & global_104 & "' Order by S.Docid") 'String
  loc_14F06EF: r_D4, CVar(MemVar_1F92044), 2 var_D4, CVar(MemVar_1F92044), 3
  loc_14F0704: Call Proc_123_85_12F7F44(1, -1, var_8C, Me.DGCompany, var_8C, var_8C)
  loc_14F0709: Call Proc_123_70_1113B5C(Me.DGFuncType, var_8C, var_8C)
  loc_14F0741: Call 0.Method_arg_50 (var_10C, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code in ('" & MemVar_1F92078 & "') And ENAME='", var_D4, -1, var_8C, var_90)
  loc_14F0768: unk_5727EB.Execute 0 & var_10C & "' AND UNAME='" & MemVar_1F920C8 & "'", var_B8, var_E4
  loc_14F0770: global_84 = var_8C.Fields
  loc_14F0778: var_8C = var_90.Item(var_8C)
  loc_14F0780:  = var_B8.Value
  loc_14F07B1: If (var_E4 > 0) Then
  loc_14F07FA:   Call 0.Method_arg_50 (var_10C, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code in ('" & MemVar_1F92078 & "') And ENAME='", var_D4, -1, var_8C, var_90, 0)
  loc_14F0821:   unk_5727EB.Execute var_B8 & var_10C & "' AND UNAME='" & MemVar_1F920C8 & "'", var_E4, "SearchCode='"
  loc_14F0829:   0 = var_8C.Fields
  loc_14F0831:   var_154 = var_90.Item(1)
  loc_14F0839:    = var_B8.Value
  loc_14F0858:   Me.Find CStr(var_E4 & "'"), , 
  loc_14F0884: End If
  loc_14F089B: If (Me.RecordCount > 0) Then
  loc_14F08A4:   Me.MoveLast
  loc_14F08A9: End If
  loc_14F08CC: Call Proc_123_76_EEE3D0(Proc_5_1_100CB50("INI", Me))
  loc_14F08E3: If (global_148 = 2) Then
  loc_14F08E6:   Call Proc_123_73_16C3C34(global_60)
  loc_14F08EE: Else
  loc_14F08EE:   Call TopCtrl1_UnknownEvent_A()
  loc_14F08F3: End If
  loc_14F08FA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_14F0912: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_14F0928: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_14F093F: Me.LblUser.Left = CDbl(13500)
  loc_14F0956: Me.LblUser.Top = CDbl(7800)
  loc_14F096D: Me.LblLDt.Top = CDbl(8160)
  loc_14F097E: Set var_8C = Me.LblLDt
  loc_14F0984: var_8C.Left = CDbl(13500)
  loc_14F0995: Call 0.Method_arg_160 (var_8C)
  loc_14F09A3: Call 0.Method_arg_164 (var_8C)
  loc_14F09AB: Exit Sub
  loc_14F09AC: ' Referenced from: 14EFB8C
  loc_14F09AC: Proc_6_60_E62BC4()
  loc_14F09B1: Exit Sub
End Sub

Private Sub Form_Resize() 'ED1B88
  'Data Table: 5727D4
  Dim var_8C As Label
  loc_ED1AE6: Call 0.Method_arg_50 (var_88)
  loc_ED1AF8: Me.LblFormCaption.Caption = var_88
  loc_ED1B11: Me.LblFormCaption.Left = CDbl(0)
  loc_ED1B1D: Set var_A0 = Me.TopCtrl1
  loc_ED1B23: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_ED1B30: Set var_8C = Me.TopCtrl1
  loc_ED1B36: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_ED1B50: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED1B6B: Call 0.Method_arg_100 (var_B8)
  loc_ED1B7D: Me.LblFormCaption.Width = var_B8
  loc_ED1B85: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E69A94
  'Data Table: 5727D4
  loc_E69A4B: Set global_68 = Nothing
  loc_E69A57: global_52 = 0
  loc_E69A65: Set global_124 = Nothing
  loc_E69A77: Set global_88 = Nothing
  loc_E69A89: Set global_92 = Nothing
  loc_E69A90: Exit Sub
End Sub

Private Sub Form_Activate() 'EB6D10
  'Data Table: 5727D4
  Dim var_8C As Long
  Dim var_94 As TextBox
  loc_EB6C87: var_8C = OpenMode
  loc_EB6C93: If (var_8C = 1) Then
  loc_EB6CA4:   Set var_90 = Me.txt
  loc_EB6CAA:   Call 0.Method_Form_Activate0 (CInt(1), var_94)
  loc_EB6CC1:   Set var_9C = Me.TopCtrl1
  loc_EB6CC7:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((var_94.Enabled = &HFF))
  loc_EB6CE7:   If ( And (CStr(var_8C) <> "Browse")) Then
  loc_EB6CF5:     Set var_90 = Me.txt
  loc_EB6CFB:     Call 0.Method_Form_Activate0 (CInt(1))
  loc_EB6D03:     var_94.SetFocus
  loc_EB6D0F:   End If
  loc_EB6D0F: End If
  loc_EB6D0F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24F6C
  'Data Table: 5727D4
  loc_E24F51: If (global_52 = &HFF) Then
  loc_E24F61:   Me.Global.Unload Me
  loc_E24F69: End If
  loc_E24F69: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E36558
  'Data Table: 5727D4
  loc_E3652C: On Error Goto loc_E36550
  loc_E36547: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3654F: Exit Sub
  loc_E36550: ' Referenced from: E3652C
  loc_E36550: Proc_6_60_E62BC4(Shift)
  loc_E36555: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_9 'F4D7E4
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D6DB: Me.DGFuncType.Visible = False
  loc_F4D6FA: If (Me.RecordCount > 0) Then
  loc_F4D739:   Set var_B4 = Me.txt
  loc_F4D73F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4D747:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4D77A:   var_B0 = Me.Fields.Item("Code")
  loc_F4D799:   Set var_B4 = Me.txt
  loc_F4D79F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4D7A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4D7BD: End If
  loc_F4D7C8: Set var_A8 = Me.txt
  loc_F4D7CE: Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HD))
  loc_F4D7D6: var_B0.SetFocus
  loc_F4D7E2: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_1F 'EA1DB4
  'Data Table: 5727D4
  Dim var_A8 As Variant
  loc_EA1D34: Set var_88 = Me.DGFuncType
  loc_EA1D5E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1D66: Set var_BC = Me.DGFuncType
  loc_EA1DA2: Proc_6_138_106D6F8(Me.DGFuncType, global_84, CInt(&HD), Me.FGPoint)
  loc_EA1DB0: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_0 'F33200
  'Data Table: 5727D4
  Dim var_98 As Variant
  Dim var_10C As MaskEdBox
  Dim var_130 As Long
  loc_F330FC: Call Proc_123_77_FB8088()
  loc_F3310D: If (KeyCode = 0) Then
  loc_F33126:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_F33141:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F33181:   Set var_108 = Me.txtMEd
  loc_F33187:   Call 0.Method_txtMEd_UnknownEvent_00 (KeyCode, var_10C, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_F3318F:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F331BF:   var_130 = CLng(Me.FGrid.Col)
  loc_F331CF:   If Not (var_130 = CLng(4)) Then
  loc_F331D9:     If (var_130 = CLng(6)) Then
  loc_F331DC:     End If
  loc_F331E5:     If (global_134 = 0) Then
  loc_F331F0:       var_134 = "{Home}+{End}"
  loc_F331F6:       Proc_303_0_FB9B68(var_134, 0, var_130)
  loc_F331FE:     End If
  loc_F331FE:   End If
  loc_F331FE: End If
  loc_F331FE: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_8 'E1FFA4
  'Data Table: 5727D4
  Dim Shift As Integer
  loc_E1FF8C: If (KeyCode = 0) Then
  loc_E1FF95:   Call Proc_123_83_105EE70(KeyCode, var_88)
  loc_E1FF9E:   Shift = Not(var_88)
  loc_E1FFA1: End If
  loc_E1FFA1: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_B '103F1B8
  'Data Table: 5727D4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C4 As Long
  loc_103EF5F: var_86 = KeyCode
  loc_103EF68: If (var_86 = 0) Then
  loc_103EF75:   If (CLng(Shift) = &H1B) Then
  loc_103EF78:     Call Proc_123_77_FB8088(var_86)
  loc_103EF81:     Set var_8C = Me.FGrid
  loc_103EFA1:     Set var_8C = Me.txtMEd
  loc_103EFA7:     Call 0.Method_txtMEd_UnknownEvent_B0 (KeyCode, var_90)
  loc_103EFAF:     var_90.Visible = False
  loc_103EFBB:     Exit Sub
  loc_103EFBC:   End If
  loc_103EFCF:   var_C4 = CLng(Me.FGrid.Col)
  loc_103EFDF:   If (var_C4 = CLng(4)) Then
  loc_103F022:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_134 = &HFF))) Then
  loc_103F02B:       Call Proc_123_83_105EE70(KeyCode, var_C6)
  loc_103F036:       If (var_C6 = &HFF) Then
  loc_103F044:         Set var_8C = Me.TxtGrid
  loc_103F04A:         Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_103F052:         var_90.Visible = var_C4
  loc_103F092:         Set var_90 = Me.txtMEd
  loc_103F0A1:         Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_134)
  loc_103F0B1:       End If
  loc_103F0B1:     End If
  loc_103F0B4:   Else
  loc_103F0BB:     If (var_C4 = CLng(6)) Then
  loc_103F0FE:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_134 = &HFF))) Then
  loc_103F107:         Call Proc_123_83_105EE70(KeyCode, var_C6, 7, 0)
  loc_103F112:         If (var_C6 = &HFF) Then
  loc_103F120:           Set var_8C = Me.TxtGrid
  loc_103F126:           Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_103F12E:           var_90.Visible = True
  loc_103F16E:           Set var_90 = Me.txtMEd
  loc_103F17D:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_134, 7)
  loc_103F190:         Else
  loc_103F19A:           Set var_8C = Me.txtMEd
  loc_103F1A0:           Call 0.Method_txtMEd_UnknownEvent_B0 (KeyCode, var_90, 0, 0)
  loc_103F1B7:         End If
  loc_103F1B7:       End If
  loc_103F1B7:     End If
  loc_103F1B7:   End If
  loc_103F1B7: End If
  loc_103F1B7: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_C 'E5116C
  'Data Table: 5727D4
  Dim var_A0 As Long
  loc_E5113B: Proc_6_58_E054C0(Shift)
  loc_E5114C: If (KeyCode = 0) Then
  loc_E51162:   var_A0 = CLng(Me.FGrid.Col)
  loc_E5116B: End If
  loc_E5116B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14F531C
  'Data Table: 5727D4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_14F44D2: Set var_88 = Me.txt
  loc_14F44D8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14F44E6: Proc_6_74_E226B0(var_8C)
  loc_14F44F2: Call Proc_123_77_FB8088(var_8C)
  loc_14F44FA: var_92 = Index
  loc_14F4505: If (var_92 = CInt(6)) Then
  loc_14F451F:   If (Me.RecordCount > 0) Then
  loc_14F452D:     Set var_8C = Me.FGPoint
  loc_14F4545:     Proc_6_137_1193554(Me.DGCity, global_124, Index)
  loc_14F4553:   End If
  loc_14F45A1:   Set var_88 = Me.txt
  loc_14F45A7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F45AF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F45C7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_14F45CA:     Exit Sub
  loc_14F45CB:   End If
  loc_14F45D8:   Set var_88 = Me.txt
  loc_14F45DE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F45E6:   var_A0 = var_8C.Text
  loc_14F45F8:   var_B0 = "Name"
  loc_14F4633:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F463C:     Me.MoveFirst
  loc_14F465F:     Set var_88 = Me.txt
  loc_14F4665:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F466D:     0 = var_8C.Text
  loc_14F4686:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_14F469B:   End If
  loc_14F469E: Else
  loc_14F46A6:   If (var_92 = CInt(3)) Then
  loc_14F46C0:     If (Me.RecordCount > 0) Then
  loc_14F46CE:       Set var_8C = Me.FGPoint
  loc_14F46E6:       Proc_6_137_1193554(Me.DGParty, global_72)
  loc_14F46F4:     End If
  loc_14F4742:     Set var_88 = Me.txt
  loc_14F4748:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F4750:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F4768:     If (Index Or (var_A0 = vbNullString)) Then
  loc_14F476B:       Exit Sub
  loc_14F476C:     End If
  loc_14F4779:     Set var_88 = Me.txt
  loc_14F477F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4787:     var_A0 = var_8C.Text
  loc_14F4799:     var_B0 = "Name"
  loc_14F47D4:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F47DD:       Me.MoveFirst
  loc_14F4800:       Set var_88 = Me.txt
  loc_14F4806:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F480E:       0 = var_8C.Text
  loc_14F4827:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F483C:     End If
  loc_14F483F:   Else
  loc_14F4847:     If (var_92 = CInt(&HE)) Then
  loc_14F4861:       If (Me.RecordCount > 0) Then
  loc_14F486F:         Set var_8C = Me.FGPoint
  loc_14F4887:         Proc_6_137_1193554(Me.DGMarketSeg, global_64)
  loc_14F4895:       End If
  loc_14F48E3:       Set var_88 = Me.txt
  loc_14F48E9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F48F1:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F4909:       If (Index Or (var_A0 = vbNullString)) Then
  loc_14F4919:         Set var_88 = Me.txt
  loc_14F491F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4927:         var_8C.Tag = vbNullString
  loc_14F4933:         Exit Sub
  loc_14F4934:       End If
  loc_14F4941:       Set var_88 = Me.txt
  loc_14F4947:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F494F:       var_A0 = var_8C.Text
  loc_14F4961:       var_B0 = "Name"
  loc_14F499C:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F49A5:         Me.MoveFirst
  loc_14F49C8:         Set var_88 = Me.txt
  loc_14F49CE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F49D6:         0 = var_8C.Text
  loc_14F49EF:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F4A04:       End If
  loc_14F4A07:     Else
  loc_14F4A0F:       If (var_92 = CInt(&HC)) Then
  loc_14F4A29:         If (Me.RecordCount > 0) Then
  loc_14F4A37:           Set var_8C = Me.FGPoint
  loc_14F4A4F:           Proc_6_137_1193554(Me.DGCompany, global_88)
  loc_14F4A5D:         End If
  loc_14F4AAB:         Set var_88 = Me.txt
  loc_14F4AB1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F4AB9:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F4AD1:         If (Index Or (var_A0 = vbNullString)) Then
  loc_14F4AE1:           Set var_88 = Me.txt
  loc_14F4AE7:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4AEF:           var_8C.Tag = vbNullString
  loc_14F4AFB:           Exit Sub
  loc_14F4AFC:         End If
  loc_14F4B09:         Set var_88 = Me.txt
  loc_14F4B0F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4B22:         global_120 = var_8C.Tag
  loc_14F4B3D:         Set var_88 = Me.txt
  loc_14F4B43:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4B4B:         var_A0 = var_8C.Text
  loc_14F4B5D:         var_B0 = "Name"
  loc_14F4B98:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F4BA1:           Me.MoveFirst
  loc_14F4BC4:           Set var_88 = Me.txt
  loc_14F4BCA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F4BD2:           0 = var_8C.Text
  loc_14F4BEB:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F4C00:         End If
  loc_14F4C03:       Else
  loc_14F4C0B:         If (var_92 = CInt(&H23)) Then
  loc_14F4C25:           If (Me.RecordCount > 0) Then
  loc_14F4C33:             Set var_8C = Me.FGPoint
  loc_14F4C4B:             Proc_6_137_1193554(Me.DGBookingAgent, global_92)
  loc_14F4C59:           End If
  loc_14F4CA7:           Set var_88 = Me.txt
  loc_14F4CAD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F4CB5:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F4CCD:           If (Index Or (var_A0 = vbNullString)) Then
  loc_14F4CD0:             Exit Sub
  loc_14F4CD1:           End If
  loc_14F4CDE:           Set var_88 = Me.txt
  loc_14F4CE4:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4CEC:           var_A0 = var_8C.Text
  loc_14F4CFE:           var_B0 = "Name"
  loc_14F4D39:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F4D42:             Me.MoveFirst
  loc_14F4D65:             Set var_88 = Me.txt
  loc_14F4D6B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F4D73:             0 = var_8C.Text
  loc_14F4D8C:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F4DA1:           End If
  loc_14F4DA4:         Else
  loc_14F4DAC:           If (var_92 = CInt(&HF)) Then
  loc_14F4DC6:             If (Me.RecordCount > 0) Then
  loc_14F4DD4:               Set var_8C = Me.FGPoint
  loc_14F4DEC:               Proc_6_137_1193554(Me.DGSource, global_80)
  loc_14F4DFA:             End If
  loc_14F4E48:             Set var_88 = Me.txt
  loc_14F4E4E:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F4E56:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F4E6E:             If (Index Or (var_A0 = vbNullString)) Then
  loc_14F4E7E:               Set var_88 = Me.txt
  loc_14F4E84:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4E8C:               var_8C.Tag = vbNullString
  loc_14F4E98:               Exit Sub
  loc_14F4E99:             End If
  loc_14F4EA6:             Set var_88 = Me.txt
  loc_14F4EAC:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F4EB4:             var_A0 = var_8C.Text
  loc_14F4EC6:             var_B0 = "Name"
  loc_14F4F01:             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F4F0A:               Me.MoveFirst
  loc_14F4F2D:               Set var_88 = Me.txt
  loc_14F4F33:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F4F3B:               0 = var_8C.Text
  loc_14F4F54:               Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F4F69:             End If
  loc_14F4F6C:           Else
  loc_14F4F74:             If (var_92 = CInt(&HD)) Then
  loc_14F4F8E:               If (Me.RecordCount > 0) Then
  loc_14F4F9C:                 Set var_8C = Me.FGPoint
  loc_14F4FB4:                 Proc_6_137_1193554(Me.DGFuncType, global_84)
  loc_14F4FC2:               End If
  loc_14F5010:               Set var_88 = Me.txt
  loc_14F5016:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F501E:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F5036:               If (Index Or (var_A0 = vbNullString)) Then
  loc_14F5046:                 Set var_88 = Me.txt
  loc_14F504C:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5054:                 var_8C.Tag = vbNullString
  loc_14F5060:                 Exit Sub
  loc_14F5061:               End If
  loc_14F506E:               Set var_88 = Me.txt
  loc_14F5074:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F507C:               var_A0 = var_8C.Text
  loc_14F508E:               var_B0 = "Name"
  loc_14F50C9:               If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F50D2:                 Me.MoveFirst
  loc_14F50F5:                 Set var_88 = Me.txt
  loc_14F50FB:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F5103:                 0 = var_8C.Text
  loc_14F511C:                 Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F5131:               End If
  loc_14F5134:             Else
  loc_14F513C:               If (var_92 = CInt(&H11)) Then
  loc_14F514D:                 Set var_88 = Me.txt
  loc_14F5153:                 Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_14F5177:                 If (CDbl(Val(var_8C.Text)) <= CDbl(0)) Then
  loc_14F519B:                   MsgBox("Can't leave blank the Expected Pax.", &H40, "Hall Booking...", var_E4, var_12C)
  loc_14F51B6:                   Set var_88 = Me.txt
  loc_14F51BC:                   Call 0.Method_Txt_GotFocus0 (CInt(&H10))
  loc_14F51C4:                   var_8C.SetFocus
  loc_14F51D0:                   Exit Sub
  loc_14F51D1:                 End If
  loc_14F51D4:               Else
  loc_14F51DC:                 If (var_92 = CInt(&H12)) Then
  loc_14F51ED:                   Set var_88 = Me.txt
  loc_14F51F3:                   Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14F5217:                   If (CDbl(Val(var_8C.Text)) <= CDbl(0)) Then
  loc_14F523B:                     MsgBox("Can't leave blank the Gurrented Pax.", &H40, "Hall Booking...", var_E4, var_12C)
  loc_14F5256:                     Set var_88 = Me.txt
  loc_14F525C:                     Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14F5264:                     var_8C.SetFocus
  loc_14F5270:                     Exit Sub
  loc_14F5271:                   End If
  loc_14F5274:                 Else
  loc_14F527C:                   If (var_92 = CInt(&H14)) Then
  loc_14F528D:                     Set var_88 = Me.txt
  loc_14F5293:                     Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_14F52B7:                     If (CDbl(Val(var_8C.Text)) <= CDbl(0)) Then
  loc_14F52F1:                       If (MsgBox("Do you want leave blank the Rate of Per Pax.", &H44, "Hall Booking...", var_E4, var_12C) = 7) Then
  loc_14F52FF:                         Set var_88 = Me.txt
  loc_14F5305:                         Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_14F530D:                         var_8C.SetFocus
  loc_14F5319:                         Exit Sub
  loc_14F531A:                       End If
  loc_14F531A:                     End If
  loc_14F531A:                   End If
  loc_14F531A:                 End If
  loc_14F531A:               End If
  loc_14F531A:             End If
  loc_14F531A:           End If
  loc_14F531A:         End If
  loc_14F531A:       End If
  loc_14F531A:     End If
  loc_14F531A:   End If
  loc_14F531A: End If
  loc_14F531A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13AF500
  'Data Table: 5727D4
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  loc_13AEBD6: If (CLng(Shift) = &H1B) Then
  loc_13AEBD9:   Call Proc_123_77_FB8088()
  loc_13AEBDE:   Exit Sub
  loc_13AEBDF: End If
  loc_13AEBE2: var_86 = KeyCode
  loc_13AEBED: If (var_86 = CInt(6)) Then
  loc_13AEC0D:   Set var_9C = Me.FGPoint
  loc_13AEC3F:   Proc_6_79_11ACE04(Me.DGCity, Me.txt, CInt(6), global_124, Shift)
  loc_13AECAC:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AECD2:     Proc_6_138_106D6F8(Me.DGCity, global_124, KeyCode, Me.FGPoint, &HFF)
  loc_13AECE0:   End If
  loc_13AECE3: Else
  loc_13AECEB:   If (var_86 = CInt(3)) Then
  loc_13AED10:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13AED30:       Set var_9C = Me.FGPoint
  loc_13AED62:       Proc_6_79_11ACE04(Me.DGParty, Me.txt, CInt(3), global_72, Shift, &HFF, 1)
  loc_13AED76:     End If
  loc_13AEDCF:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AEDD6:       Set var_9C = Me.DGParty
  loc_13AEDF5:       Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C)
  loc_13AEE03:     End If
  loc_13AEE06:   Else
  loc_13AEE0E:     If (var_86 = CInt(&HE)) Then
  loc_13AEE67:       Proc_6_69_134A198(Me.DGMarketSeg, Me.txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_13AEED6:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AEEFC:         Proc_6_138_106D6F8(Me.DGMarketSeg, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AEF0A:       End If
  loc_13AEF0D:     Else
  loc_13AEF15:       If (var_86 = CInt(&HC)) Then
  loc_13AEF6E:         Proc_6_69_134A198(Me.DGCompany, Me.txt, KeyCode, global_88, Shift, 0, 1, Nothing)
  loc_13AEFDD:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AF003:           Proc_6_138_106D6F8(Me.DGCompany, global_88, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AF011:         End If
  loc_13AF014:       Else
  loc_13AF01C:         If (var_86 = CInt(&H23)) Then
  loc_13AF079:           Proc_6_69_134A198(Me.DGBookingAgent, Me.txt, CInt(&H23), global_92, Shift, 0, 1, Nothing)
  loc_13AF0E8:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AF10E:             Proc_6_138_106D6F8(Me.DGBookingAgent, global_92, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AF11C:           End If
  loc_13AF11F:         Else
  loc_13AF127:           If (var_86 = CInt(&HD)) Then
  loc_13AF180:             Proc_6_69_134A198(Me.DGFuncType, Me.txt, KeyCode, global_84, Shift, 0, 1, Nothing)
  loc_13AF1EF:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AF215:               Proc_6_138_106D6F8(Me.DGFuncType, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AF223:             End If
  loc_13AF226:           Else
  loc_13AF22E:             If (var_86 = CInt(&HF)) Then
  loc_13AF287:               Proc_6_69_134A198(Me.DGSource, Me.txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_13AF2F6:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AF31C:                 Proc_6_138_106D6F8(Me.DGSource, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AF32A:               End If
  loc_13AF32A:             End If
  loc_13AF32A:           End If
  loc_13AF32A:         End If
  loc_13AF32A:       End If
  loc_13AF32A:     End If
  loc_13AF32A:   End If
  loc_13AF32A: End If
  loc_13AF35B: Set var_9C = Me.DGSource
  loc_13AF407: If ((((((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGFuncType.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGBookingAgent.Visible) = 0)) And (CBool(Me.DGMarketSeg.Visible) = 0)) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGVenue.Visible) = 0)) Then
  loc_13AF41F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13AF428:     Proc_6_75_E527CC(Shift, arg_14, 0, 1)
  loc_13AF42D:   End If
  loc_13AF431:   Set var_8C = Me.TopCtrl1
  loc_13AF437:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C)
  loc_13AF459:   If ((CStr(0) = "Add") And (KeyCode <> CInt(0))) Then
  loc_13AF471:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13AF47A:       Proc_6_76_E52838(Shift, arg_14)
  loc_13AF47F:     End If
  loc_13AF482:   Else
  loc_13AF486:     Set var_8C = Me.TopCtrl1
  loc_13AF48C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_86)
  loc_13AF4AE:     If ((CStr() = "Edit") And (KeyCode <> CInt(1))) Then
  loc_13AF4C6:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13AF4CF:         Proc_6_76_E52838(Shift)
  loc_13AF4D4:       End If
  loc_13AF4D4:     End If
  loc_13AF4D4:   End If
  loc_13AF4F2:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1A))) Then
  loc_13AF4F8:     Call Proc_123_78_F0990C(KeyCode)
  loc_13AF4FD:   End If
  loc_13AF4FD: End If
  loc_13AF4FD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '117BA5C
  'Data Table: 5727D4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_117B678: On Error Goto loc_117BA54
  loc_117B67E: Proc_6_58_E054C0(arg_10)
  loc_117B686: var_86 = KeyAscii
  loc_117B691: If (var_86 = CInt(0)) Then
  loc_117B69E:   Set var_8C = Me.txt
  loc_117B6A4:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_117B6BF:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_117B6CE: Else
  loc_117B6D6:   If (var_86 = CInt(&HE)) Then
  loc_117B6F5:     If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_117B707:       var_AC = "Name"
  loc_117B722:       Proc_6_89_146F1AC(Me.txt, KeyAscii, global_64, arg_10)
  loc_117B754:       Proc_6_138_106D6F8(Me.DGMarketSeg, global_64, KeyAscii, Me.FGPoint)
  loc_117B762:     End If
  loc_117B765:   Else
  loc_117B76D:     If (var_86 = CInt(&HF)) Then
  loc_117B78C:       If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_117B7B9:         Proc_6_89_146F1AC(Me.txt, KeyAscii, global_80, arg_10, "Name")
  loc_117B7EB:         Proc_6_138_106D6F8(Me.DGSource, global_80, KeyAscii, Me.FGPoint, 0)
  loc_117B7F9:       End If
  loc_117B7FC:     Else
  loc_117B804:       If (var_86 = CInt(&HC)) Then
  loc_117B823:         If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_117B850:           Proc_6_89_146F1AC(Me.txt, KeyAscii, global_88, arg_10, "Name")
  loc_117B882:           Proc_6_138_106D6F8(Me.DGCompany, global_88, KeyAscii, Me.FGPoint, 0)
  loc_117B890:         End If
  loc_117B893:       Else
  loc_117B89B:         If (var_86 = CInt(&H23)) Then
  loc_117B8BA:           If (CBool(Me.DGBookingAgent.Visible) = &HFF) Then
  loc_117B8E7:             Proc_6_89_146F1AC(Me.txt, KeyAscii, global_92, arg_10, "Name")
  loc_117B919:             Proc_6_138_106D6F8(Me.DGBookingAgent, global_92, KeyAscii, Me.FGPoint, 0)
  loc_117B927:           End If
  loc_117B92A:         Else
  loc_117B932:           If (var_86 = CInt(&HD)) Then
  loc_117B951:             If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_117B963:               var_AC = "Name"
  loc_117B97E:               Proc_6_89_146F1AC(Me.txt, KeyAscii, global_84, arg_10, var_AC)
  loc_117B998:               Set var_90 = Me.FGPoint
  loc_117B9B0:               Proc_6_138_106D6F8(Me.DGFuncType, global_84, KeyAscii, var_90, 0)
  loc_117B9BE:             End If
  loc_117B9C1:           Else
  loc_117B9C9:             If Not (var_86 = CInt(&H10)) Then
  loc_117B9D4:               If (var_86 = CInt(&H11)) Then
  loc_117B9D7:               End If
  loc_117B9E1:               Set var_8C = Me.txt
  loc_117B9E7:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, var_AC)
  loc_117BA02:               Proc_6_42_129A86C(var_90, arg_10, 4, 0)
  loc_117BA11:             Else
  loc_117BA19:               If (var_86 = CInt(&H12)) Then
  loc_117BA26:                 Set var_8C = Me.txt
  loc_117BA2C:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 0)
  loc_117BA47:                 Proc_6_42_129A86C(var_90, arg_10, 6)
  loc_117BA53:               End If
  loc_117BA53:             End If
  loc_117BA53:           End If
  loc_117BA53:         End If
  loc_117BA53:       End If
  loc_117BA53:     End If
  loc_117BA53:   End If
  loc_117BA53: End If
  loc_117BA53: Exit Sub
  loc_117BA54: ' Referenced from: 117B678
  loc_117BA54: Proc_6_60_E62BC4(2, 0)
  loc_117BA59: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F8B190
  'Data Table: 5727D4
  Dim var_86 As Integer
  loc_F8B033: var_86 = KeyCode
  loc_F8B03E: If (var_86 = CInt(6)) Then
  loc_F8B05D:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F8B06A:     var_A4 = "Name"
  loc_F8B089:     Proc_6_80_FF0AC0(Me.txt, CInt(6), global_124)
  loc_F8B0BB:     Proc_6_138_106D6F8(Me.DGCity, global_124, KeyCode, Me.FGPoint)
  loc_F8B0C9:   End If
  loc_F8B0CC: Else
  loc_F8B0D4:   If (var_86 = CInt(3)) Then
  loc_F8B0F3:     If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F8B100:       var_A4 = "Name"
  loc_F8B11F:       Proc_6_80_FF0AC0(Me.txt, CInt(3), global_72, Shift)
  loc_F8B151:       Proc_6_138_106D6F8(Me.DGParty, global_72, KeyCode, Me.FGPoint)
  loc_F8B15F:     End If
  loc_F8B162:   Else
  loc_F8B16A:     If Not (var_86 = CInt(&H11)) Then
  loc_F8B175:       If (var_86 = CInt(&H12)) Then
  loc_F8B178:       End If
  loc_F8B17B:     Else
  loc_F8B183:       If (var_86 = CInt(&H20)) Then
  loc_F8B18C:         If (Shift = &HD) Then
  loc_F8B18F:         End If
  loc_F8B18F:       End If
  loc_F8B18F:     End If
  loc_F8B18F:   End If
  loc_F8B18F: End If
  loc_F8B18F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50424
  'Data Table: 5727D4
  loc_E50402: Set var_88 = Me.txt
  loc_E50408: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50416: Proc_6_73_E22704(var_8C)
  loc_E50422: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '16601D0
  'Data Table: 5727D4
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim Me As Recordset15
  Dim var_A0 As String
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_BC As Variant
  Dim arg_10 As Integer
  Dim unk_5727EB As Connection15
  Dim var_B8 As Recordset15
  Dim var_130 As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_10C As Long
  Dim var_138 As String
  Dim var_88 As Recordset15
  Dim var_144 As Double
  loc_165EAE0: On Error Goto loc_16601C9
  loc_165EAE6: var_8A = Cancel
  loc_165EAF1: If (var_8A = CInt(6)) Then
  loc_165EB01:   Set var_90 = Me.txt
  loc_165EB07:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165EB0F:   var_98 = var_94.Text
  loc_165EB26:   If (var_98 = vbNullString) Then
  loc_165EB36:     Set var_90 = Me.txt
  loc_165EB3C:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165EB44:     var_94.Tag = vbNullString
  loc_165EB50:     Exit Sub
  loc_165EB51:   End If
  loc_165EB68:   If (Me.RecordCount <= 0) Then
  loc_165EB6B:     Exit Sub
  loc_165EB6C:   End If
  loc_165EB72:   Me.MoveFirst
  loc_165EB95:   Set var_90 = Me.txt
  loc_165EB9B:   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, "Name like '")
  loc_165EBA3:   0 = var_94.Text
  loc_165EBBC:   Me.Find 1 & var_98 & "*'", var_B4, var_8A
  loc_165EBE8:   If (Me.AbsolutePosition > 0) Then
  loc_165EC26:     Set var_B8 = Me.txt
  loc_165EC2C:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165EC34:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_165EC67:     var_94 = Me.Fields.Item("Code")
  loc_165EC85:     Set var_B8 = Me.txt
  loc_165EC8B:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165EC93:     var_BC.Tag = CStr(var_94.Value)
  loc_165ECA9:     GoTo loc_165ECAC
  loc_165ECAC:     ' Referenced from: 165ECA9
  loc_165ECAC:   End If
  loc_165ECAF: Else
  loc_165ECB7:   If (var_8A = CInt(0)) Then
  loc_165ECC5:     Set var_90 = Me.txt
  loc_165ECCB:     Call 0.Method_Txt_Validate0 (CInt(0))
  loc_165ECD3:     var_98 = "Vr. No"
  loc_165ECF4:     If (Proc_6_27_EA565C(var_94, var_98) = 0) Then
  loc_165ED02:       Set var_90 = Me.txt
  loc_165ED08:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_165ED10:       var_94.SetFocus
  loc_165ED1E:       arg_10 = &HFF
  loc_165ED21:       Exit Sub
  loc_165ED22:     End If
  loc_165ED30:     Set var_90 = Me.txt
  loc_165ED36:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98)
  loc_165ED3E:     arg_10 = var_94.Text
  loc_165ED56:     If (CDbl(var_98) = CDbl(0)) Then
  loc_165ED6C:       var_CC = "Vr. No Can Not Be 0"
  loc_165ED72:       MsgBox(var_CC, 0, var_EC, var_10C, var_12C)
  loc_165ED8C:       Set var_90 = Me.txt
  loc_165ED92:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165ED9A:       var_94.SetFocus
  loc_165EDA8:       arg_10 = &HFF
  loc_165EDAB:       Exit Sub
  loc_165EDAC:     End If
  loc_165EDB0:     Set var_90 = Me.TopCtrl1
  loc_165EDB6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_165EDBE:     var_98 = CStr(var_94)
  loc_165EDCF:     If (var_98 = "Add") Then
  loc_165EDD8:       Call Proc_123_79_10E9320(MemVar_1F92044)
  loc_165EDEB:       Set var_90 = Me.txt
  loc_165EDF1:       Call 0.Method_Txt_Validate0 (CInt(&H22), var_94)
  loc_165EDF9:       var_94.Text = var_98
  loc_165EE08:     End If
  loc_165EE0C:     Set var_90 = Me.TopCtrl1
  loc_165EE12:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_98)
  loc_165EE1A:     var_98 = CStr()
  loc_165EE2B:     If (var_98 = "Add") Then
  loc_165EE5B:       Set var_90 = Me.txt
  loc_165EE61:       Call 0.Method_Txt_Validate0 (CInt(&H22), var_94, var_98, "Select Count(*) From HallBook Where DocID='", var_CC, -1)
  loc_165EE72:       var_A0 = var_BC & var_98
  loc_165EE82:       unk_5727EB.Execute var_A0 & "'", 0, var_130
  loc_165EE92:        = var_BC.Item()
  loc_165EE9A:        = var_130.Value
  loc_165EEC7:       If (var_94.Text.Fields > 0) Then
  loc_165EED0:         Call 0.Method_arg_50 (var_98)
  loc_165EEF1:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_98), var_10C, var_12C)
  loc_165EF07:         Call Proc_123_79_10E9320(MemVar_1F92044)
  loc_165EF17:         If (var_98 = vbNullString) Then
  loc_165EF24:           Set var_90 = Me.txt
  loc_165EF2A:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165EF32:           var_94.SetFocus
  loc_165EF40:           arg_10 = &HFF
  loc_165EF43:           Exit Sub
  loc_165EF44:         End If
  loc_165EF4A:         Call Proc_123_79_10E9320(MemVar_1F92044, var_98)
  loc_165EF5D:         Set var_90 = Me.txt
  loc_165EF63:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_94, var_98)
  loc_165EF6B:         var_94.Text = arg_10
  loc_165EF7C:         arg_10 = &HFF
  loc_165EF7F:         Exit Sub
  loc_165EF80:       End If
  loc_165EF80:     End If
  loc_165EF83:   Else
  loc_165EF8B:     If (var_8A = CInt(1)) Then
  loc_165EF9C:       Set var_90 = Me.txt
  loc_165EFA2:       Call 0.Method_Txt_Validate0 (CInt(1), var_94, var_98)
  loc_165EFAA:       arg_10 = var_94.Text
  loc_165EFDA:       If (Len(Trim(CVar(var_98))) = 0) Then
  loc_165EFF0:         Set var_90 = Me.txt
  loc_165EFF6:         Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_165EFFE:         var_94.Text = CStr(MemVar_1F920EC)
  loc_165F010:       Else
  loc_165F01A:         Set var_90 = Me.txt
  loc_165F020:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F040:         Set var_BC = Me.txt
  loc_165F046:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_165F04E:         var_130.Text = Proc_6_33_1512840(var_94)
  loc_165F061:       End If
  loc_165F06C:       Set var_90 = Me.txt
  loc_165F072:       Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_165F096:       var_10C = Format(CVar(var_94), "DDDD")
  loc_165F0A1:       var_12C = Trim(var_10C)
  loc_165F0A9:       var_98 = CStr(var_12C)
  loc_165F0B8:       Set var_B8 = Me.txt
  loc_165F0BE:       Call 0.Method_Txt_Validate0 (CInt(2), var_BC, var_98)
  loc_165F0EF:       Set var_90 = Me.txt
  loc_165F0F5:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_165F0FD:       1 = var_94.Text
  loc_165F118:       Set var_B8 = Me.txt
  loc_165F11E:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_A0)
  loc_165F126:       (CDate(var_98) >= MemVar_1F920F4) = 1
  loc_165F148:       If Not((var_98 And (CDate(var_A0) <= MemVar_1F920FC))) Then
  loc_165F16C:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_165F186:         Set var_90 = Me.txt
  loc_165F18C:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_165F194:         var_94.SetFocus
  loc_165F1A2:         arg_10 = &HFF
  loc_165F1A5:         Exit Sub
  loc_165F1A6:       End If
  loc_165F1AA:       Set var_90 = Me.TopCtrl1
  loc_165F1B0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_165F1B8:       var_98 = CStr(var_94)
  loc_165F1C9:       If (var_98 = "Add") Then
  loc_165F1D2:         Call Proc_123_79_10E9320(MemVar_1F92044)
  loc_165F1E2:         If (var_98 = vbNullString) Then
  loc_165F1EF:           Set var_90 = Me.txt
  loc_165F1F5:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F1FD:           var_94.SetFocus
  loc_165F20B:           arg_10 = &HFF
  loc_165F20E:           Exit Sub
  loc_165F20F:         End If
  loc_165F215:         Call Proc_123_79_10E9320(MemVar_1F92044, var_98)
  loc_165F228:         Set var_90 = Me.txt
  loc_165F22E:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_94, var_98)
  loc_165F236:         var_94.Text = arg_10
  loc_165F245:       End If
  loc_165F248:     Else
  loc_165F250:       If (var_8A = CInt(&HE)) Then
  loc_165F2A1:         Set var_90 = Me.txt
  loc_165F2A7:         Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_165F2AF:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_165F2C7:         If (var_98 Or (var_98 = vbNullString)) Then
  loc_165F2D7:           Set var_90 = Me.txt
  loc_165F2DD:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F2E5:           var_94.Tag = vbNullString
  loc_165F2F1:           Exit Sub
  loc_165F2F2:         End If
  loc_165F32D:         Set var_B8 = Me.txt
  loc_165F333:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F33B:         var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_165F36E:         var_94 = Me.Fields.Item("Code")
  loc_165F38C:         Set var_B8 = Me.txt
  loc_165F392:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F39A:         var_BC.Tag = CStr(var_94.Value)
  loc_165F3B3:       Else
  loc_165F3BB:         If (var_8A = CInt(&HF)) Then
  loc_165F40C:           Set var_90 = Me.txt
  loc_165F412:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F432:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_165F442:             Set var_90 = Me.txt
  loc_165F448:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F450:             var_94.Tag = vbNullString
  loc_165F45C:             Exit Sub
  loc_165F45D:           End If
  loc_165F498:           Set var_B8 = Me.txt
  loc_165F49E:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F4A6:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_165F4D9:           var_94 = Me.Fields.Item("Code")
  loc_165F4F7:           Set var_B8 = Me.txt
  loc_165F4FD:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F505:           var_BC.Tag = CStr(var_94.Value)
  loc_165F51E:         Else
  loc_165F526:           If (var_8A = CInt(&HC)) Then
  loc_165F577:             Set var_90 = Me.txt
  loc_165F57D:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F59D:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_165F5AD:               Set var_90 = Me.txt
  loc_165F5B3:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F5BB:               var_94.Tag = vbNullString
  loc_165F5C7:               Exit Sub
  loc_165F5C8:             End If
  loc_165F60B:             If CBool(CVar(global_120) <> Me.Fields.Item("Code").Value) Then
  loc_165F649:               Set var_B8 = Me.txt
  loc_165F64F:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F657:               var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_165F68A:               var_94 = Me.Fields.Item("Code")
  loc_165F69B:               var_98 = CStr(var_94.Value)
  loc_165F6A8:               Set var_B8 = Me.txt
  loc_165F6AE:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F6B6:               var_BC.Tag = var_98
  loc_165F6D2:               Call 0.Method_arg_50 (var_98)
  loc_165F709:               If (MsgBox("Would U like to Change Above Information Acc. To Company Info.", &H124, CVar(var_98), var_10C, var_12C) = 6) Then
  loc_165F720:                 var_98 = "Select lTrim(ConPrefix+' '+ConPerson) As Party,Add1,LTrim(RTrim(Add2))+', '+LTrim(RTrim(Add3)) As Add2,City.CityName,ltrim(Pin) As Pin,Phone,Mobile,PanNo From SubGroup S Left Join City On City.CityCode=S.CityCode Where S.LogSite_Code in ('" & MemVar_1F92078
  loc_165F737:                 Set var_90 = Me.txt
  loc_165F73D:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_A0, var_98 & "') And SubCode='")
  loc_165F745:                 var_CC = var_94.Tag
  loc_165F74E:                 var_138 = -1 & var_A0
  loc_165F75E:                 unk_5727EB.Execute var_138 & "'", var_B8, 
  loc_165F769:                 Set var_88 = var_B8
  loc_165F799:                 If (var_88.RecordCount > 0) Then
  loc_165F7EC:                   Set var_B8 = Me.txt
  loc_165F7F2:                   Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_165F7FA:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Party")))), &H32))
  loc_165F868:                   Set var_B8 = Me.txt
  loc_165F86E:                   Call 0.Method_Txt_Validate0 (CInt(4), var_BC)
  loc_165F876:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))), &H32))
  loc_165F8E4:                   Set var_B8 = Me.txt
  loc_165F8EA:                   Call 0.Method_Txt_Validate0 (CInt(5), var_BC)
  loc_165F8F2:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))), &H32))
  loc_165F946:                   Set var_B8 = Me.txt
  loc_165F94C:                   Call 0.Method_Txt_Validate0 (CInt(6), var_BC)
  loc_165F954:                   var_BC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_165F9B8:                   Set var_B8 = Me.txt
  loc_165F9BE:                   Call 0.Method_Txt_Validate0 (CInt(7), var_BC)
  loc_165F9C6:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin")))), 6))
  loc_165FA34:                   Set var_B8 = Me.txt
  loc_165FA3A:                   Call 0.Method_Txt_Validate0 (CInt(9), var_BC)
  loc_165FA42:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Phone")))), &H1E))
  loc_165FAB0:                   Set var_B8 = Me.txt
  loc_165FAB6:                   Call 0.Method_Txt_Validate0 (CInt(&HA), var_BC)
  loc_165FABE:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")))), &H19))
  loc_165FAF3:                   var_94 = var_88.Fields.Item("PanNo")
  loc_165FB2C:                   Set var_B8 = Me.txt
  loc_165FB32:                   Call 0.Method_Txt_Validate0 (CInt(&HB), var_BC)
  loc_165FB3A:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_94))), &H14))
  loc_165FB58:                 End If
  loc_165FB5D:                 Set var_88 = Nothing
  loc_165FB60:               End If
  loc_165FB60:             End If
  loc_165FB63:           Else
  loc_165FB6B:             If (var_8A = CInt(&H23)) Then
  loc_165FB7B:               Set var_90 = Me.txt
  loc_165FB81:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FBA0:               If (var_94.Text = vbNullString) Then
  loc_165FBB0:                 Set var_90 = Me.txt
  loc_165FBB6:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FBBE:                 var_94.Tag = vbNullString
  loc_165FBCA:               End If
  loc_165FBCD:             Else
  loc_165FBD5:               If (var_8A = CInt(&HD)) Then
  loc_165FC26:                 Set var_90 = Me.txt
  loc_165FC2C:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FC4C:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_165FC5C:                   Set var_90 = Me.txt
  loc_165FC62:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FC6A:                   var_94.Tag = vbNullString
  loc_165FC76:                   Exit Sub
  loc_165FC77:                 End If
  loc_165FCB2:                 Set var_B8 = Me.txt
  loc_165FCB8:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165FCC0:                 var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_165FCDC:                 var_B4 = "Code"
  loc_165FCF3:                 var_94 = Me.Fields.Item(var_B4)
  loc_165FD11:                 Set var_B8 = Me.txt
  loc_165FD17:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165FD1F:                 var_BC.Tag = CStr(var_94.Value)
  loc_165FD38:               Else
  loc_165FD40:                 If (var_8A = CInt(3)) Then
  loc_165FD50:                   Set var_90 = Me.txt
  loc_165FD56:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FD5E:                   var_98 = var_94.Text
  loc_165FD75:                   If (var_98 = vbNullString) Then
  loc_165FD85:                     Set var_90 = Me.txt
  loc_165FD8B:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FD93:                     var_94.Tag = vbNullString
  loc_165FDA1:                     arg_10 = &HFF
  loc_165FDA4:                     Exit Sub
  loc_165FDA5:                   End If
  loc_165FDBC:                   If (Me.RecordCount <= 0) Then
  loc_165FDBF:                     GoTo loc_165FF21
  loc_165FDC2:                   End If
  loc_165FDC8:                   Me.MoveFirst
  loc_165FDEB:                   Set var_90 = Me.txt
  loc_165FDF1:                   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, "Name like '")
  loc_165FDF9:                   0 = var_94.Text
  loc_165FE12:                   Me.Find 1 & var_98 & "*'", var_B4, arg_10
  loc_165FE3E:                   If (Me.AbsolutePosition > 0) Then
  loc_165FE58:                     If (Me.RecordCount > 0) Then
  loc_165FE96:                       Set var_B8 = Me.txt
  loc_165FE9C:                       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165FEA4:                       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_165FED7:                       var_94 = Me.Fields.Item("Code")
  loc_165FEF5:                       Set var_B8 = Me.txt
  loc_165FEFB:                       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165FF03:                       var_BC.Tag = CStr(var_94.Value)
  loc_165FF19:                       Call Proc_123_84_14C2A00()
  loc_165FF1E:                       GoTo loc_165FF21
  loc_165FF21:                       ' Referenced from:                 165FF1E
  loc_165FF21:                       ' Referenced from:                 165FDBF
  loc_165FF21:                     End If
  loc_165FF21:                   End If
  loc_165FF24:                 Else
  loc_165FF2C:                   If Not (var_8A = CInt(&H10)) Then
  loc_165FF37:                     If (var_8A = CInt(&H11)) Then
  loc_165FF3A:                     End If
  loc_165FF44:                     Set var_90 = Me.txt
  loc_165FF4A:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_165FF62:                     If Not(IsNumeric(CVar(var_94))) Then
  loc_165FF76:                       Set var_90 = Me.txt
  loc_165FF7C:                       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FF84:                       var_94.Text = CStr(0)
  loc_165FF93:                     End If
  loc_165FFA0:                     Set var_90 = Me.txt
  loc_165FFA6:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FFAE:                     var_98 = var_94.Text
  loc_165FFCD:                     var_EC = "0"
  loc_165FFDD:                     var_10C = Format(CVar(Val(var_98)), var_EC)
  loc_165FFE5:                     var_A0 = CStr(var_10C)
  loc_165FFF3:                     Set var_B8 = Me.txt
  loc_165FFF9:                     Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_A0, 1)
  loc_1660001:                     var_BC.Text = 1
  loc_166002F:                     Set var_90 = Me.txt
  loc_1660035:                     Call 0.Method_Txt_Validate0 (CInt(&H10), var_94, var_98)
  loc_166003D:                     var_144 = var_94.Text
  loc_166005D:                     Set var_B8 = Me.txt
  loc_1660063:                     Call 0.Method_Txt_Validate0 (CInt(&H11), var_BC, var_A0)
  loc_166006B:                     (CDbl(Val(var_98)) > CDbl(0)) = var_BC.Text
  loc_1660090:                     If (var_94 And (CDbl(Val(var_A0)) > CDbl(0))) Then
  loc_16600A1:                       Set var_B8 = Me.txt
  loc_16600A7:                       Call 0.Method_Txt_Validate0 (CInt(&H11), var_BC)
  loc_16600BC:                       var_144 = Val(var_BC.Text)
  loc_16600CD:                       Set var_90 = Me.txt
  loc_16600D3:                       Call 0.Method_Txt_Validate0 (CInt(&H10), var_94)
  loc_1660100:                       If (CDbl(Val(var_94.Text)) < CDbl(var_144)) Then
  loc_166011C:                         MsgBox("Expected Attendence can't be Less Than Guaranteed Attendence", &H40, var_EC, var_10C, var_12C)
  loc_166012C:                       End If
  loc_166012C:                     End If
  loc_166012F:                   Else
  loc_1660137:                     If Not (var_8A = CInt(&HD)) Then
  loc_1660142:                       If Not (var_8A = CInt(&H14)) Then
  loc_166014D:                         If Not (var_8A = CInt(&H15)) Then
  loc_1660158:                           If Not (var_8A = CInt(&H16)) Then
  loc_1660163:                             If Not (var_8A = CInt(&H17)) Then
  loc_166016E:                               If Not (var_8A = CInt(&H18)) Then
  loc_1660179:                                 If Not (var_8A = CInt(&H19)) Then
  loc_1660184:                                   If (var_8A = CInt(&H1A)) Then
  loc_1660187:                                   End If
  loc_1660187:                                 End If
  loc_1660187:                               End If
  loc_1660187:                             End If
  loc_1660187:                           End If
  loc_1660187:                         End If
  loc_1660187:                       End If
  loc_166018F:                       If (Cancel = CInt(&H1A)) Then
  loc_16601A5:                         Me.FGrid.Col = 1
  loc_16601C0:                         Me.FGrid.Row = 1
  loc_16601C8:                       End If
  loc_16601C8:                     End If
  loc_16601C8:                   End If
  loc_16601C8:                 End If
  loc_16601C8:               End If
  loc_16601C8:             End If
  loc_16601C8:           End If
  loc_16601C8:         End If
  loc_16601C8:       End If
  loc_16601C8:     End If
  loc_16601C8:   End If
  loc_16601C8: End If
  loc_16601C8: Exit Sub
  loc_16601C9: ' Referenced from: 165EAE0
  loc_16601C9: Proc_6_60_E62BC4(var_144)
  loc_16601CE: Exit Sub
End Sub

Private Sub DGVenue_UnknownEvent_9 'FE3258
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE3093: Me.DGVenue.Visible = False
  loc_FE30B2: If (Me.RecordCount > 0) Then
  loc_FE30EF:   Set var_B4 = Me.TxtGrid
  loc_FE30F5:   Call 0.Method_DGVenue_UnknownEvent_90 (1, var_B8)
  loc_FE30FD:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FE3126:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE312E:   var_EC = CVar(CLng(1)) 'Long
  loc_FE3161:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE3169:   Set var_B8 = Me.FGrid
  loc_FE316F:   LateIdCallSt
  loc_FE319E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE31A6:   var_EC = CVar(CLng(7)) 'Long
  loc_FE31C8:   var_B0 = Me.Fields.Item("Code")
  loc_FE31D9:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE31E1:   Set var_B8 = Me.FGrid
  loc_FE31E7:   LateIdCallSt
  loc_FE3203: End If
  loc_FE320F: Set var_A8 = Me.TxtGrid
  loc_FE3215: Call 0.Method_DGVenue_UnknownEvent_90 (1, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE321D: var_A4 = var_B0.Visible
  loc_FE322F: If (var_12E = &HFF) Then
  loc_FE323B:   Set var_A8 = Me.TxtGrid
  loc_FE3241:   Call 0.Method_DGVenue_UnknownEvent_90 (1, var_B0, var_B8)
  loc_FE3249:   var_B0.SetFocus
  loc_FE3255: End If
  loc_FE3255: Exit Sub
End Sub

Private Sub DGVenue_UnknownEvent_1F 'ED9EFC
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim var_BC As TextBox
  loc_ED9E58: Set var_88 = Me.DGVenue
  loc_ED9E82: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_ED9E8A: Set var_BC = Me.DGVenue
  loc_ED9EB2: Set var_88 = Me.TxtGrid
  loc_ED9EB8: Call 0.Method_DGVenue_UnknownEvent_1F0 (1, var_BC, var_C4)
  loc_ED9EC0: DGVenue.DispID_1B = var_BC.Text
  loc_ED9EC9: Set var_CC = Me.FGPoint
  loc_ED9EE6: Proc_6_138_106D6F8(Me.DGVenue, global_68, CInt(var_C4))
  loc_ED9EFB: Exit Sub
End Sub

Private Sub DGBookingAgent_UnknownEvent_9 'F4FBA4
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4FA9B: Me.DGBookingAgent.Visible = False
  loc_F4FABA: If (Me.RecordCount > 0) Then
  loc_F4FAF9:   Set var_B4 = Me.txt
  loc_F4FAFF:   Call 0.Method_DGBookingAgent_UnknownEvent_90 (CInt(&H23), var_B8)
  loc_F4FB07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4FB3A:   var_B0 = Me.Fields.Item("Code")
  loc_F4FB59:   Set var_B4 = Me.txt
  loc_F4FB5F:   Call 0.Method_DGBookingAgent_UnknownEvent_90 (CInt(&H23), var_B8)
  loc_F4FB67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4FB7D: End If
  loc_F4FB88: Set var_A8 = Me.txt
  loc_F4FB8E: Call 0.Method_DGBookingAgent_UnknownEvent_90 (CInt(&H23))
  loc_F4FB96: var_B0.SetFocus
  loc_F4FBA2: Exit Sub
End Sub

Private Sub DGBookingAgent_UnknownEvent_1F 'EA6BCC
  'Data Table: 5727D4
  Dim var_A8 As Variant
  loc_EA6B4C: Set var_88 = Me.DGBookingAgent
  loc_EA6B76: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6B7E: Set var_BC = Me.DGBookingAgent
  loc_EA6BBA: Proc_6_138_106D6F8(Me.DGBookingAgent, global_92, CInt(&H23), Me.FGPoint)
  loc_EA6BC8: Exit Sub
  loc_EA6BC9: DGBookingAgent.DispID_1B = var_A8
End Sub

Private Sub FGrid_UnknownEvent_0 'E5DEB4
  'Data Table: 5727D4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim arg_5CFF As Variant
  loc_E5DE7F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5DE92: Set var_A8 = Me.TxtGrid
  loc_E5DE98: Call 0.Method_FGrid_UnknownEvent_00 (1, var_AC)
  loc_E5DEA0: var_AC.Visible = False
  loc_E5DEAC: Call Proc_123_77_FB8088()
  loc_E5DEB1: Exit Sub
  loc_E5DEB2: arg_5CFF = CVar() 'Integer
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFB84
  'Data Table: 5727D4
  loc_DFFB7C: Call Proc_123_71_E43F88()
  loc_DFFB81: Exit Sub
  loc_DFFB82: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_A '1245A4C
  'Data Table: 5727D4
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  loc_124551C: Set var_88 = Me.TopCtrl1
  loc_1245522: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1245567: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1245570:   Call Form_KeyDown(Cancel, arg_10)
  loc_1245575: End If
  loc_1245579: Set var_88 = Me.TopCtrl1
  loc_124557F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1245598: If (CStr() = "Browse") Then
  loc_124559B:   Exit Sub
  loc_124559C: End If
  loc_1245610: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1245629:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_1245639:   var_9C = "+{Tab}"
  loc_124563F:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1245649:   Cancel = 0
  loc_124564F: Else
  loc_1245659:   var_B0 = Me.FGrid.Rows
  loc_12456A6:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12456BF:     Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_12456D5:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_12456DF:     Cancel = 0
  loc_12456E2:   End If
  loc_12456E2: End If
  loc_12456E8: global_132 = Cancel
  loc_124570E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1245732: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1245748:   var_EC = CLng(Me.FGrid.Col)
  loc_1245758:   If (var_EC = CLng(1)) Then
  loc_124576E:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1245786:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_124578B:     var_11C = vbNullString
  loc_1245795:     Set var_B4 = Me.FGrid
  loc_124579B:     LateIdCallSt
  loc_12457C6:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12457CE:     var_FC = CVar(CLng(7)) 'Long
  loc_12457D3:     var_11C = vbNullString
  loc_12457DD:     Set var_A0 = Me.FGrid
  loc_12457E3:     LateIdCallSt
  loc_12457F8:   Else
  loc_12457FF:     If Not (var_EC = CLng(3)) Then
  loc_1245809:       If (var_EC = CLng(5)) Then
  loc_124580C:       End If
  loc_124581F:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1245837:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_124583C:       var_11C = vbNullString
  loc_1245846:       Set var_B4 = Me.FGrid
  loc_124584C:       LateIdCallSt
  loc_1245867:     Else
  loc_124586E:       If Not (var_EC = CLng(4)) Then
  loc_1245878:         If (var_EC = CLng(6)) Then
  loc_124587B:         End If
  loc_124588E:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12458A6:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12458AB:         var_11C = "00:00"
  loc_12458B5:         Set var_B4 = Me.FGrid
  loc_12458BB:         LateIdCallSt
  loc_12458D3:       End If
  loc_12458D3:     End If
  loc_12458D3:   End If
  loc_12458D3: End If
  loc_12458FB: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_124590E:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_1245928:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_1245943:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124594B:   var_FC = CVar(CLng(2)) 'Long
  loc_1245979:   var_17C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1245981:   var_19C = CVar(CLng(2)) 'Long
  loc_12459B8:   var_1BC = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_12459C0:   Set var_1D0 = Me.FGrid
  loc_12459C6:   LateIdCallSt
  loc_12459EF: End If
  loc_1245A17: If ((CLng(Cancel) = &HD) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_1245A2C:   Me.FGrid.Col = CVar(CLng(3))
  loc_1245A34: End If
  loc_1245A3A: If (Cancel = &HD) Then
  loc_1245A42:   global_134 = 0
  loc_1245A45: End If
  loc_1245A47: Cancel = 0
  loc_1245A4A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E107A8
  'Data Table: 5727D4
  loc_E10799: Call FGrid_UnknownEvent_C()
  loc_E107A3: global_134 = 0
  loc_E107A6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102DBFC
  'Data Table: 5727D4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_102D9C8: Set var_88 = Me.TopCtrl1
  loc_102D9CE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_102D9E7: If (CStr() = "Browse") Then
  loc_102D9EA:   Exit Sub
  loc_102D9EB: End If
  loc_102D9FE: var_A0 = CLng(Me.FGrid.Col)
  loc_102DA0E: If Not (var_A0 = CLng(1)) Then
  loc_102DA18:   If Not (var_A0 = CLng(3)) Then
  loc_102DA22:     If (var_A0 = CLng(5)) Then
  loc_102DA25:     End If
  loc_102DA25:   End If
  loc_102DA29:   Set var_C4 = Me.FGrid
  loc_102DA4D:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102DA7A:   Set var_B4 = var_C4
  loc_102DA8C:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_102DAB4:   Set var_88 = Me.TxtGrid
  loc_102DABA:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_102DAC2:   0 = var_B4.Text
  loc_102DADB:   If (Len(var_9C) <= 1) Then
  loc_102DAEA:     Set var_88 = Me.TxtGrid
  loc_102DAF0:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_102DAF8:     var_CA = var_B4.Text
  loc_102DB09:     Set var_B8 = Me.TxtGrid
  loc_102DB0F:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_102DB17:     var_C4.Text = var_9C
  loc_102DB2A:   End If
  loc_102DB36:   Set var_88 = Me.TxtGrid
  loc_102DB3C:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4)
  loc_102DB56:   Set var_B8 = Me.TxtGrid
  loc_102DB5C:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_102DB64:   var_C4.SelStart = Len(var_B4.Text)
  loc_102DB7A: Else
  loc_102DB81:   If Not (var_A0 = CLng(4)) Then
  loc_102DB8B:     If (var_A0 = CLng(6)) Then
  loc_102DB8E:     End If
  loc_102DB9F:     var_9C = "T"
  loc_102DBD0:     Proc_6_134_112AEB4(Me, Me.FGrid, Me.txtMEd, 0)
  loc_102DBE5:   End If
  loc_102DBE5: End If
  loc_102DBEF: If (CLng(Cancel) <> &HD) Then
  loc_102DBF7:   global_134 = &HFF
  loc_102DBFA: End If
  loc_102DBFA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE67DC
  'Data Table: 5727D4
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE660C: Set var_88 = Me.TopCtrl1
  loc_FE6612: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FE662B: If (CStr() = "Browse") Then
  loc_FE662E:   Exit Sub
  loc_FE662F: End If
  loc_FE664C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE664F:   Exit Sub
  loc_FE6650: End If
  loc_FE6661: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE6683:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE66BD:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE66DF:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE66F5:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE66FE:         Set var_110 = Me.FGrid
  loc_FE6719:       Else
  loc_FE672C:         Me.FGrid.Rows = 1
  loc_FE6752:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FE675A:         Set var_110 = Me.FGrid
  loc_FE6787:         Me.FGrid.FixedRows = 1
  loc_FE678F:       End If
  loc_FE678F:     End If
  loc_FE6792:   Else
  loc_FE67B3:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE67C3:   End If
  loc_FE67C7:   Set var_88 = Me.FGrid
  loc_FE67D8: End If
  loc_FE67D8: Exit Sub
  loc_FE67D9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'F85E98
  'Data Table: 5727D4
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_F85D60: Set var_88 = Me.TopCtrl1
  loc_F85D66: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_F85D7F: If (CStr() = "Browse") Then
  loc_F85D82:   Exit Sub
  loc_F85D83: End If
  loc_F85DA0: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_F85DB3:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_F85DCD:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_F85DE8:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F85DF0:   var_CC = CVar(CLng(2)) 'Long
  loc_F85E1E:   var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F85E26:   var_194 = CVar(CLng(2)) 'Long
  loc_F85E5D:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_F85E65:   Set var_1C8 = Me.FGrid
  loc_F85E6B:   LateIdCallSt
  loc_F85E94: End If
  loc_F85E94: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E71DF4
  'Data Table: 5727D4
  Dim var_8C As TextBox
  loc_E71D98: Call Proc_123_77_FB8088()
  loc_E71DA9: Set var_88 = Me.TxtGrid
  loc_E71DAF: Call 0.Method_FGrid_UnknownEvent_150 (1, var_8C)
  loc_E71DC9: If (var_8C.Visible = &HFF) Then
  loc_E71DD7:   Set var_88 = Me.TxtGrid
  loc_E71DDD:   Call 0.Method_FGrid_UnknownEvent_150 (1, var_8C)
  loc_E71DE5:   var_8C.Visible = False
  loc_E71DF1: End If
  loc_E71DF1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F11758
  'Data Table: 5727D4
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F11660: On Error Goto loc_F11751
  loc_F11686: Call Proc_123_76_EEE3D0(Proc_5_1_100CB50("ADD", Me))
  loc_F1169E: Set var_8C = Me.txt
  loc_F116A4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H20), var_94)
  loc_F116AC: var_94.Enabled = False
  loc_F116B8: Call Proc_123_75_FC7A64(global_60)
  loc_F116CA: Me.LblUser.Caption = vbNullString
  loc_F116DF: Me.LblLDt.Caption = vbNullString
  loc_F116FA: Set var_8C = Me.txt
  loc_F11700: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_F11708: var_94.Text = CStr(MemVar_1F920EC)
  loc_F11728: If (OpenMode = 2) Then
  loc_F11736:   Set var_8C = Me.txt
  loc_F1173C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_F11744:   var_94.SetFocus
  loc_F11750: End If
  loc_F11750: Exit Sub
  loc_F11751: ' Referenced from: F11660
  loc_F11751: Proc_6_60_E62BC4(var_94)
  loc_F11756: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECA22C
  'Data Table: 5727D4
  Dim var_114 As TextBox
  loc_ECA190: On Error Goto loc_ECA226
  loc_ECA1CA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECA1F0:   Call Proc_123_76_EEE3D0(Proc_5_1_100CB50("INI", Me))
  loc_ECA206:   Set var_10C = Me.TxtGrid
  loc_ECA20C:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (1, var_114)
  loc_ECA214:   var_114.Visible = False
  loc_ECA220:   Call Proc_123_73_16C3C34(global_60)
  loc_ECA225: End If
  loc_ECA225: Exit Sub
  loc_ECA226: ' Referenced from: ECA190
  loc_ECA226: Proc_6_60_E62BC4()
  loc_ECA22B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13971B0
  'Data Table: 5727D4
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim unk_5727EB As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  Dim var_AC As Variant
  loc_1396906: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_1396909:   Exit Sub
  loc_139690A: End If
  loc_1396910: var_128 = 0
  loc_1396961: var_EC = "SELECT Count(*) FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_139696F: unk_5727EB.Execute CStr(var_EC), var_110, -1
  loc_1396977: var_114 = var_114.Fields
  loc_139697F: var_128 = var_118.Item(var_118)
  loc_1396987: var_12C = var_12C.Value
  loc_13969B4: If (var_13C > 0) Then
  loc_13969DE:   MsgBox(CVar("Can not delete this booking." & vbCrLf & "Bill Generated!"), &H10, "Booking...", var_EC, var_110)
  loc_13969F1:   Exit Sub
  loc_13969F2: End If
  loc_13969F2: On Error Goto loc_139715F
  loc_1396A27: var_17C = "Pre-Costing"
  loc_1396A6F: If (Proc_6_108_1010FEC(MemVar_1F92044, "HallPreCosting", "ContraDocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_1396A72:   Exit Sub
  loc_1396A73: End If
  loc_1396AED: If (Proc_6_108_1010FEC(MemVar_1F92044, "PaychargeH", "ContraDocID", CStr(Me.Fields.Item("SearchCode").Value), 0, "Advance") = 0) Then
  loc_1396AF0:   Exit Sub
  loc_1396AF1: End If
  loc_1396B6B: If (Proc_6_108_1010FEC(MemVar_1F92044, "HallSale1", "BookDocId", CStr(Me.Fields.Item("SearchCode").Value), 0, "Hall Bill") = 0) Then
  loc_1396B6E:   Exit Sub
  loc_1396B6F: End If
  loc_1396BA6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_EC, var_110) = 6) Then
  loc_1396BB2:   unk_5727EB.BeginTrans var_178
  loc_1396BC8:   var_16C = Me.Bookmark 'Variant
  loc_1396C22:   unk_5727EB.Execute CStr("Delete From HallBook Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_110, -1
  loc_1396C6D:   var_1AC = 0
  loc_1396C80:   var_1A4 = 0
  loc_1396C8B:   var_1A0 = 0
  loc_1396C9E:   var_198 = 0
  loc_1396CA9:   var_194 = 0
  loc_1396CBC:   var_18C = 0
  loc_1396D05:   Proc_154_5_10E33A4(MemVar_1F92044, "HallBook", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1396D83:   unk_5727EB.Execute CStr("Delete From HallBook1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_110, -1
  loc_1396DCE:   var_1AC = 0
  loc_1396DE1:   var_1A4 = 0
  loc_1396DEC:   var_1A0 = 0
  loc_1396DFF:   var_198 = 0
  loc_1396E0A:   var_194 = 0
  loc_1396E1D:   var_18C = 0
  loc_1396E66:   Proc_154_5_10E33A4(MemVar_1F92044, "HallBook1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1396ED6:   var_EC = "Delete From VenueOCC Where FPDocID='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1396EE4:   unk_5727EB.Execute CStr(var_EC), var_110, -1
  loc_1396F25:   var_AC = Me.Fields.Item("SearchCode").Value
  loc_1396F2F:   var_1AC = 0
  loc_1396F42:   var_1A4 = 0
  loc_1396F4D:   var_1A0 = 0
  loc_1396F60:   var_198 = 0
  loc_1396F6B:   var_194 = 0
  loc_1396F7E:   var_18C = 0
  loc_1396FC7:   Proc_154_5_10E33A4(MemVar_1F92044, "VenueOCC", "FPDocId", &HC8, CStr(var_AC), 0, 0, 0)
  loc_1396FF5:   unk_5727EB.CommitTrans
  loc_1397005:   Me.Requery -1
  loc_1397025:   If (CVar(Me.RecordCount) >= var_16C) Then
  loc_1397032:     Me.Bookmark = var_16C
  loc_139703A:   Else
  loc_139704E:     If (Me.EOF = 0) Then
  loc_1397057:       Me.MoveLast
  loc_139705C:     End If
  loc_139705C:   End If
  loc_139705C:   Call Proc_123_73_16C3C34(var_18C, 0, var_194, var_198)
  loc_1397072:   Set var_88 = Me
  loc_139707D:   Proc_5_0_110649C(&HFF, var_88, global_60, 0)
  loc_1397085: End If
  loc_139709A: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_13970A3:   global_104 = "IBOOK"
  loc_13970BD:   unk_5727EB.Execute "Select Code,PartyName as Name From BookingInquiry where code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName", var_AC, -1
  loc_13970CE:   Set global_72 = var_88
  loc_13970DF: Else
  loc_13970EC:   var_F0 = MemVar_1F92078 & "ODC"
  loc_13970F4:   If (global_56 = var_F0) Then
  loc_13970FD:     global_104 = "OBOOK"
  loc_1397117:     unk_5727EB.Execute "Select Code,PartyName as Name From BookingInquiry where code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName", var_AC, -1
  loc_1397128:     Set global_72 = var_88
  loc_1397136:   End If
  loc_1397136: End If
  loc_139713F: CVarUnk
  loc_1397144: VerifyVarObj
  loc_139714A: Set var_88 = Me.DGParty
  loc_1397150: LateIdStAd
  loc_139715E: Exit Sub
  loc_139715F: ' Referenced from: 13969F2
  loc_1397165: unk_5727EB.RollbackTrans
  loc_1397178: Call 0.Method_arg_2C (var_F0, Err(), global_72, Err(), Err())
  loc_1397199: MsgBox(CVar(var_F0), &H10, " Deletion Message", var_EC, var_110)
  loc_13971AC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '11CCE74
  'Data Table: 5727D4
  Dim var_98 As Integer
  Dim var_9C As TextBox
  Dim var_A4 As TextBox
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_90 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  loc_11CCA16: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_11CCA19:   Exit Sub
  loc_11CCA1A: End If
  loc_11CCA1A: On Error Goto loc_11CCE6B
  loc_11CCA40: Call Proc_123_76_EEE3D0(Proc_5_1_100CB50("EDIT", Me))
  loc_11CCA57: If (global_140 <> 0) Then
  loc_11CCA66:   Set var_90 = Me.txt
  loc_11CCA6C:   Call 0.Method_TopCtrl1_UnknownEvent_DC (var_92, var_86)
  loc_11CCA7A:   For var_96 = global_60 To (var_92 - 2): 0 = var_96 'Integer
  loc_11CCA83:     var_98 = var_86
  loc_11CCA8E:     If Not (var_98 = CInt(3)) Then
  loc_11CCA99:       If Not (var_98 = CInt(4)) Then
  loc_11CCAA4:         If Not (var_98 = CInt(5)) Then
  loc_11CCAAF:           If Not (var_98 = CInt(6)) Then
  loc_11CCABA:             If Not (var_98 = CInt(7)) Then
  loc_11CCAC5:               If Not (var_98 = CInt(8)) Then
  loc_11CCAD0:                 If Not (var_98 = CInt(9)) Then
  loc_11CCADB:                   If Not (var_98 = CInt(&HA)) Then
  loc_11CCAE6:                     If Not (var_98 = CInt(&HB)) Then
  loc_11CCAF1:                       If Not (var_98 = CInt(&HC)) Then
  loc_11CCAFC:                         If Not (var_98 = CInt(&H23)) Then
  loc_11CCB07:                           If (var_98 = CInt(&H21)) Then
  loc_11CCB0A:                           End If
  loc_11CCB0A:                         End If
  loc_11CCB0A:                       End If
  loc_11CCB0A:                     End If
  loc_11CCB0A:                   End If
  loc_11CCB0A:                 End If
  loc_11CCB0A:               End If
  loc_11CCB0A:             End If
  loc_11CCB0A:           End If
  loc_11CCB0A:         End If
  loc_11CCB0A:       End If
  loc_11CCB0D:     Else
  loc_11CCB19:       Set var_90 = Me.txt
  loc_11CCB1F:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_9C, 0)
  loc_11CCB27:       var_9C.Enabled = var_98
  loc_11CCB33:     End If
  loc_11CCB36:   Next var_96 'Integer
  loc_11CCB48:   Set var_90 = Me.Txt1
  loc_11CCB4E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H20), var_9C)
  loc_11CCB56:   var_9C.Enabled = False
  loc_11CCB62: End If
  loc_11CCB6F: Set var_90 = Me.txt
  loc_11CCB75: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_11CCB7D: var_9C.Enabled = False
  loc_11CCB97: Set var_90 = Me.txt
  loc_11CCB9D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_11CCBA5: var_8C = var_9C.Text
  loc_11CCBC1: Set var_A0 = Me.txt
  loc_11CCBC7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_A4)
  loc_11CCBF1: If Not(((CDate(var_8C) >= MemVar_1F920F4) And (CDate(var_A4.Text) <= MemVar_1F920FC))) Then
  loc_11CCC01:   Set var_90 = Me.txt
  loc_11CCC07:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_11CCC0F:   var_9C.Enabled = False
  loc_11CCC1B: End If
  loc_11CCC32: If (Me.RecordCount > 0) Then
  loc_11CCC3B:   Me.MoveFirst
  loc_11CCC5F:   Set var_90 = Me.txt
  loc_11CCC65:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C, var_8C, "Code='")
  loc_11CCC6D:   0 = var_9C.Tag
  loc_11CCC86:   Me.Find 1 & var_8C & "'", var_C0, 
  loc_11CCCC4:   If ((Me.BOF = &HFF) Or (Me.EOF = &HFF)) Then
  loc_11CCCD4:     Set var_90 = Me.txt
  loc_11CCCDA:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C)
  loc_11CCCE2:     var_9C.Enabled = True
  loc_11CCCF1:   Else
  loc_11CCCFE:     Set var_90 = Me.txt
  loc_11CCD04:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C)
  loc_11CCD0C:     var_9C.Enabled = False
  loc_11CCD18:   End If
  loc_11CCD18: End If
  loc_11CCD25: Set var_90 = Me.txt
  loc_11CCD2B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H20), var_9C)
  loc_11CCD4D: Set var_90 = Me.txt
  loc_11CCD53: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_11CCD6D: If (False = &HFF) Then
  loc_11CCD7B:   Set var_90 = Me.txt
  loc_11CCD81:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1))
  loc_11CCD89:   var_9C.SetFocus
  loc_11CCD95: End If
  loc_11CCD95: var_C0 = vbNullString
  loc_11CCD9F: Set var_90 = Me.FGrid
  loc_11CCDC9: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CCDD1: var_F4 = CVar(CLng(4)) 'Long
  loc_11CCDD6: var_114 = "00:00"
  loc_11CCDE0: Set var_9C = Me.FGrid
  loc_11CCDE6: LateIdCallSt
  loc_11CCE11: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CCE19: var_F4 = CVar(CLng(6)) 'Long
  loc_11CCE1E: var_114 = "00:00"
  loc_11CCE28: Set var_9C = Me.FGrid
  loc_11CCE2E: LateIdCallSt
  loc_11CCE4D: Me.LblUser.Caption = vbNullString
  loc_11CCE62: Me.LblLDt.Caption = vbNullString
  loc_11CCE6A: Exit Sub
  loc_11CCE6B: ' Referenced from: 11CCA1A
  loc_11CCE6B: Proc_6_60_E62BC4(var_9C, var_114, var_F4, var_C0, var_9C, var_114)
  loc_11CCE70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AAD0
  'Data Table: 5727D4
  loc_E1AAC5: Me.Global.Unload Me
  loc_E1AACD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEDE7C
  'Data Table: 5727D4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  loc_EEDDD7: If (Me.RecordCount <= 0) Then
  loc_EEDDE0:   var_B8 = "Information"
  loc_EEDDFB:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEDE0B:   Exit Sub
  loc_EEDE0C: End If
  loc_EEDE13: var_10C = "SELECT hallbook.Docid as SearchCode,HallBook.VNo, Convert(Varchar(11),HallBook.Vdate,100) as VDate, HallBook.VTime,convert(Varchar(11),V.FromDate,100) As Func_Date, HallBook.PartyName, HallBook.Add1, HallBook.City, HallBook.ContactNo_Res, FunctionType.Name" & " FROM ((HallBook INNER JOIN FunctionType ON HallBook.Func_Name = FunctionType.Code) LEFT JOIN MarketSeg ON HallBook.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON HallBook.BussSource = BussSource.Code Left JOIN VenueOcc V ON HallBook.Docid = V.FPDocid WHERE HallBook.LogSite_Code='"
  loc_EEDE47: MemVar_1F92120 = Me
  loc_EEDE54: Proc_6_126_F1BCC0("600,1150,700,1150,2200,2000,1700,2000,2000,2000")
  loc_EEDE6F: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEDE74: Exit Sub
  loc_EEDE75: Proc_6_60_E62BC4("600,1150,700,1150,2200,2000,1700,2000,2000,2000" & MemVar_1F92078 & "' And HallBook.Vtype='" & global_104 & "' order by HallBook.DocId,V.FromDate")
  loc_EEDE7A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E365B8
  'Data Table: 5727D4
  Dim arg_5CFF As Double
  loc_E365A8: Proc_5_0_110649C(&HFF, Me)
  loc_E365B0: Call Proc_123_73_16C3C34(global_60)
  loc_E365B5: Exit Sub
  loc_E365B6: arg_5CFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36678
  'Data Table: 5727D4
  loc_E36668: Proc_5_0_110649C(&HFF, Me)
  loc_E36670: Call Proc_123_73_16C3C34(global_60)
  loc_E36675: Exit Sub
  loc_E36676: arg_5C74 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36858
  'Data Table: 5727D4
  loc_E36848: Proc_5_0_110649C(&HFF, Me)
  loc_E36850: Call Proc_123_73_16C3C34(global_60)
  loc_E36855: Exit Sub
  loc_E36856: arg_5C74 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36918
  'Data Table: 5727D4
  Dim arg_5CFF As Double
  loc_E36908: Proc_5_0_110649C(&HFF, Me)
  loc_E36910: Call Proc_123_73_16C3C34(global_60)
  loc_E36915: Exit Sub
  loc_E36916: arg_5CFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '162EA9C
  'Data Table: 5727D4
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As String
  Dim var_DC As Variant
  Dim unk_5727EB As Connection15
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_128 As Variant
  Dim var_9C As Recordset15
  Dim var_C4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_108 As Variant
  Dim var_148 As Variant
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_138 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_152 As Integer
  Dim var_BC As Recordset15
  Dim var_150 As Variant
  Dim var_1BC As Variant
  Dim var_194 As Variant
  Dim var_1C0 As Field20
  Dim var_C8 As Recordset15
  loc_162D574: On Error Goto loc_162EA96
  loc_162D57E: var_CC = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName,ItemGrp.Name As ItemGrpName "
  loc_162D58C: var_D4 = var_CC & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code And HB1.RestCode = I.RestCode) Inner Join ItemGrp On ItemGrp.Code=I.ItemGroup "
  loc_162D5A4: Set var_D8 = Me.txt
  loc_162D5AA: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC)
  loc_162D5C2: var_88 = var_D4 & "Where HB.DocID='" & var_DC.Text & "'"
  loc_162D5E3: If (var_88 = vbNullString) Then
  loc_162D5E6:   Exit Sub
  loc_162D5E7: End If
  loc_162D5FD: unk_5727EB.Execute var_88, var_108, -1
  loc_162D62E: Proc_6_17_EAA2B0(var_108, MemVar_1F92078, "Select * From Enviro Where LogSite_Code=", var_148)
  loc_162D636: var_128 = -1 & var_108 
  loc_162D644: unk_5727EB.Execute CStr(var_128), var_D8, var_D8
  loc_162D64F: Set var_C8 = var_D8
  loc_162D675: If (var_D8.RecordCount <= 0) Then
  loc_162D67F:   var_CC = "Select HB.*,0 As SNo,'' As Item,0 As QtyIss,0 As Rate,0 As LineAmt,'' As Unit,0 AS LineTaxPer,0 As TaxAmt, " & "0 As LineDiscP,0 as LineDiscA,'' As Remarks,0 As LineTotal,'' As IName,'' As ItemGrpName "
  loc_162D697:   Set var_D8 = Me.txt
  loc_162D69D:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC)
  loc_162D6B5:   var_88 = var_CC & "From HallBook HB Where HB.DocID='" & var_DC.Text & "'"
  loc_162D6CA: End If
  loc_162D6E8: Set var_D8 = Me.txt
  loc_162D6EE: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC, var_CC, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_162D6F6: var_108 = var_DC.Text
  loc_162D6FF: var_D0 = -1 & var_CC
  loc_162D70F: unk_5727EB.Execute var_DC.Text & "'", var_150, 
  loc_162D71A: Set var_BC = var_150
  loc_162D750: Set var_D8 = Me.txt
  loc_162D756: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC, var_CC, "Select AmtCr-AmtDr Adv,PayType,VNo,VDate FROM PayChargeH Where VType In ('AD','AR') AND ContraDocId='")
  loc_162D75E: var_108 = var_DC.Text
  loc_162D767: var_D0 = -1 & var_CC
  loc_162D777: unk_5727EB.Execute var_DC.Text & "'", var_150, 
  loc_162D782: Set var_C4 = var_150
  loc_162D7AE: If (var_C4.RecordCount > 0) Then
  loc_162D7D9:   var_B4 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VNo")))
  loc_162D811:   var_B8 = "& " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")))
  loc_162D84A:   Proc_6_47_EF59D0(var_128, CVar(var_C4.Fields.Item("Adv")))
  loc_162D852:   var_148 = (CVar(var_AC) + var_128)
  loc_162D857:   var_AC = CSng(var_148)
  loc_162D88E:   var_B0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")))
  loc_162D89A:   var_C4.MoveNext
  loc_162D89F:   ' Referenced from: 162DA10
  loc_162D8AE:   If Not(var_C4.EOF) Then
  loc_162D8DE:     Proc_6_47_EF59D0(var_128, CVar(var_C4.Fields.Item("Adv")))
  loc_162D8E6:     var_148 = (CVar(var_AC) + var_128)
  loc_162D8EB:     var_AC = CSng(var_148)
  loc_162D933:     If (var_AC <> Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")), var_B0)) Then
  loc_162D96C:       var_B0 = var_AC & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PayType")), var_B0 & ", ")
  loc_162D9B2:       var_B4 = var_B4 & ", " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VNo")))
  loc_162D9C9:       var_CC = var_B8 & ", "
  loc_162D9E3:       var_DC = var_C4.Fields.Item("VDate")
  loc_162D9F8:       var_B8 = var_CC & Proc_6_38_E68A98(CVar(var_DC))
  loc_162DA08:     End If
  loc_162DA0B:     var_C4.MoveNext
  loc_162DA10:     GoTo loc_162D89F
  loc_162DA13:   End If
  loc_162DA16: Else
  loc_162DA1F:   var_AC = 0
  loc_162DA25:   var_B0 = vbNullString
  loc_162DA28: End If
  loc_162DA46: Set var_D8 = Me.txt
  loc_162DA4C: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC, var_CC, "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_162DA54: var_108 = var_DC.Text
  loc_162DA5D: var_D0 = -1 & var_CC
  loc_162DA6D: unk_5727EB.Execute Proc_6_38_E68A98(CVar(var_DC)) & "'", var_150, var_AC
  loc_162DA78: Set var_C0 = var_150
  loc_162DAA4: If (var_C0.RecordCount > 0) Then
  loc_162DAA7:   ' Referenced from: 162DB42
  loc_162DAB6:   If Not(var_C0.EOF) Then
  loc_162DACF:     var_108 = vbNullString
  loc_162DAE4:     var_148 = IIf((var_A4 = vbNullString), var_108, ",")
  loc_162DAEC:     var_174 = CVar(var_A4) & var_148 
  loc_162DB02:     var_D8 = var_C0.Fields
  loc_162DB0A:     var_DC = var_D8.Item("VenuName")
  loc_162DB1F:     var_A4 = CStr(var_174 & var_DC.Value)
  loc_162DB3D:     var_C0.MoveNext
  loc_162DB42:     GoTo loc_162DAA7
  loc_162DB45:   End If
  loc_162DB45: End If
  loc_162DB4D: If (var_88 = vbNullString) Then
  loc_162DB50:   Exit Sub
  loc_162DB51: End If
  loc_162DB67: unk_5727EB.Execute var_88, var_108, -1
  loc_162DB72: Set var_9C = var_D8
  loc_162DB81: var_14C = var_9C.RecordCount
  loc_162DB8F: If (var_14C <= 0) Then
  loc_162DB98:   Call 0.Method_arg_50 (var_CC)
  loc_162DBB9:   MsgBox("** No Records Found to Print **", &H40, CVar(var_CC), var_148, var_174)
  loc_162DBC9:   Exit Sub
  loc_162DBCA: End If
  loc_162DBE0: Set var_D8 = var_9C 
  loc_162DBEC: var_152 = CreateFieldDefFile(var_D8, MemVar_1F920B4 & "\FuncProspect.ttx")
  loc_162DBF6: Set var_9C = var_D8
  loc_162DBFC: var_F8 = CVar(var_152) 'Integer
  loc_162DBFF: var_98 = var_F8 'Variant
  loc_162DC1B: var_CC = MemVar_1F920B4 & "\FuncProspect.RPT"
  loc_162DC24: Call 0.Method_arg_1C (var_CC, var_F8, var_D8)
  loc_162DC2F: MemVar_1F921E4 = var_D8
  loc_162DC4A: Call 0.Method_arg_90 (var_D8, var_14C, var_9E, 1)
  loc_162DC52: Call 0.Method_arg_24 (var_152, &HFF)
  loc_162DC5E: For var_1A8 =  To CInt(var_14C): var_D8 = var_1A8 'Integer
  loc_162DC77:   Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162DC7F:   Call 0.Method_arg_20 (var_DC)
  loc_162DC87:   Call 0.Method_arg_30 (var_CC)
  loc_162DC9D:   var_1B8 = Ucase(CVar(var_CC)) 'Variant
  loc_162DCB6:   If (var_1B8 = "FDATE") Then
  loc_162DD0F:     Call 0.Method_arg_90 (var_150, CLng(var_9E))
  loc_162DD17:     Call 0.Method_arg_20 (var_1BC)
  loc_162DD1F:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & "'"))
  loc_162DD3E:   Else
  loc_162DD49:     If (var_1B8 = "FTIME") Then
  loc_162DD63:       var_D8 = var_BC.Fields
  loc_162DD6B:       var_DC = var_D8.Item("FromTime")
  loc_162DD7F:       var_138 = " - "
  loc_162DD9A:       var_150 = var_BC.Fields
  loc_162DDA2:       var_1BC = var_150.Item("ToTime")
  loc_162DDAA:       var_174 = var_1BC.Value
  loc_162DDB2:       var_194 = "'" & var_DC.Value & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & var_174 
  loc_162DDD3:       Call 0.Method_arg_90 (var_1C0, CLng(var_9E))
  loc_162DDDB:       Call 0.Method_arg_20 (var_1C4)
  loc_162DDE3:       Call 0.Method_arg_38 (CStr(var_194 & "'"))
  loc_162DE0C:     Else
  loc_162DE17:       If (var_1B8 = "VENUENAME") Then
  loc_162DE3B:         Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162DE43:         Call 0.Method_arg_20 (var_DC)
  loc_162DE4B:         Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_162DE61:       Else
  loc_162DE6C:         If (var_1B8 = "TITLE") Then
  loc_162DE82:           Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162DE8A:           Call 0.Method_arg_20 (var_DC)
  loc_162DE92:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_162DEA1:         Else
  loc_162DEAC:           If (var_1B8 = "FDAY") Then
  loc_162DF11:             Call 0.Method_arg_90 (var_150, CLng(var_9E))
  loc_162DF19:             Call 0.Method_arg_20 (var_1BC)
  loc_162DF21:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_BC.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_162DF42:           Else
  loc_162DF64:             If (var_1B8 = Ucase("FunctionName")) Then
  loc_162DF72:               var_184 = 0
  loc_162DF88:               var_118 = "SELECT Name FROM FunctionType WHERE Code='"
  loc_162DF9F:               var_D8 = var_9C.Fields
  loc_162DFA7:               var_DC = var_D8.Item("Func_Name")
  loc_162DFBB:               var_138 = "'"
  loc_162DFC0:               var_148 = var_118 & var_DC.Value & var_138 
  loc_162DFCE:               unk_5727EB.Execute CStr(var_148), var_174, -1
  loc_162DFD6:               var_150 = var_150.Fields
  loc_162DFDE:               var_184 = var_1BC.Item(var_1BC)
  loc_162DFE6:               var_1C0 = var_1C0.Value
  loc_162E00F:               Call 0.Method_arg_90 (var_1C4, CLng(var_9E), var_1F8)
  loc_162E017:               Call 0.Method_arg_20 (CStr(var_194 & var_194 & "'"))
  loc_162E01F:               Call 0.Method_arg_38 ("'")
  loc_162E050:             Else
  loc_162E072:               If (var_1B8 = Ucase("Advance")) Then
  loc_162E09B:                 Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162E0A3:                 Call 0.Method_arg_20 (var_DC)
  loc_162E0AB:                 Call 0.Method_arg_38 ("'" & CStr(var_AC) & "'")
  loc_162E0C3:               Else
  loc_162E0E5:                 If (var_1B8 = Ucase("PayType")) Then
  loc_162E109:                   Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162E111:                   Call 0.Method_arg_20 (var_DC)
  loc_162E119:                   Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_162E12F:                 Else
  loc_162E151:                   If (var_1B8 = Ucase("aVNo")) Then
  loc_162E175:                     Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162E17D:                     Call 0.Method_arg_20 (var_DC)
  loc_162E185:                     Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_162E19B:                   Else
  loc_162E1BD:                     If (var_1B8 = Ucase("aVDate")) Then
  loc_162E1C7:                       var_CC = "'" & var_B8
  loc_162E1E1:                       Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162E1E9:                       Call 0.Method_arg_20 (var_DC)
  loc_162E1F1:                       Call 0.Method_arg_38 (var_CC & "'")
  loc_162E204:                     End If
  loc_162E204:                   End If
  loc_162E204:                 End If
  loc_162E204:               End If
  loc_162E204:             End If
  loc_162E204:           End If
  loc_162E204:         End If
  loc_162E204:       End If
  loc_162E204:     End If
  loc_162E204:   End If
  loc_162E207: Next var_1A8 'Integer
  loc_162E212: var_14C = var_C8.RecordCount
  loc_162E220: If (var_14C > 0) Then
  loc_162E226:   var_C8.MoveFirst
  loc_162E23C:   Call 0.Method_arg_90 (var_D8, var_14C)
  loc_162E244:   Call 0.Method_arg_24 (var_9E)
  loc_162E250:   For var_1FC =  To CInt(var_14C): 1 = var_1FC 'Integer
  loc_162E269:     Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162E271:     Call 0.Method_arg_20 (var_DC)
  loc_162E279:     Call 0.Method_arg_30 (var_CC)
  loc_162E28F:     var_20C = Ucase(CVar(var_CC)) 'Variant
  loc_162E2BF:     If (var_20C = Ucase("Instruction1")) Then
  loc_162E2F0:       Proc_6_17_EAA2B0(var_148)
  loc_162E30C:       Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E314:       Call 0.Method_arg_20 (CStr(var_148))
  loc_162E31C:       Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction1")))))
  loc_162E339:     Else
  loc_162E35B:       If (var_20C = Ucase("Instruction2")) Then
  loc_162E38C:         Proc_6_17_EAA2B0(var_148)
  loc_162E3A8:         Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E3B0:         Call 0.Method_arg_20 (CStr(var_148))
  loc_162E3B8:         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction2")))))
  loc_162E3D5:       Else
  loc_162E3F7:         If (var_20C = Ucase("Instruction3")) Then
  loc_162E428:           Proc_6_17_EAA2B0(var_148)
  loc_162E444:           Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E44C:           Call 0.Method_arg_20 (CStr(var_148))
  loc_162E454:           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction3")))))
  loc_162E471:         Else
  loc_162E493:           If (var_20C = Ucase("Instruction4")) Then
  loc_162E4C4:             Proc_6_17_EAA2B0(var_148)
  loc_162E4E0:             Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E4E8:             Call 0.Method_arg_20 (CStr(var_148))
  loc_162E4F0:             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction4")))))
  loc_162E50D:           Else
  loc_162E52F:             If (var_20C = Ucase("Instruction5")) Then
  loc_162E560:               Proc_6_17_EAA2B0(var_148)
  loc_162E57C:               Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E584:               Call 0.Method_arg_20 (CStr(var_148))
  loc_162E58C:               Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction5")))))
  loc_162E5A9:             Else
  loc_162E5CB:               If (var_20C = Ucase("Instruction6")) Then
  loc_162E5FC:                 Proc_6_17_EAA2B0(var_148)
  loc_162E618:                 Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E620:                 Call 0.Method_arg_20 (CStr(var_148))
  loc_162E628:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction6")))))
  loc_162E645:               Else
  loc_162E667:                 If (var_20C = Ucase("Instruction7")) Then
  loc_162E698:                   Proc_6_17_EAA2B0(var_148)
  loc_162E6B4:                   Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E6BC:                   Call 0.Method_arg_20 (CStr(var_148))
  loc_162E6C4:                   Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction7")))))
  loc_162E6E1:                 Else
  loc_162E703:                   If (var_20C = Ucase("Instruction8")) Then
  loc_162E734:                     Proc_6_17_EAA2B0(var_148)
  loc_162E750:                     Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E758:                     Call 0.Method_arg_20 (CStr(var_148))
  loc_162E760:                     Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction8")))))
  loc_162E77D:                   Else
  loc_162E79F:                     If (var_20C = Ucase("Instruction9")) Then
  loc_162E7D0:                       Proc_6_17_EAA2B0(var_148)
  loc_162E7EC:                       Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E7F4:                       Call 0.Method_arg_20 (CStr(var_148))
  loc_162E7FC:                       Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction9")))))
  loc_162E819:                     Else
  loc_162E83B:                       If (var_20C = Ucase("Instruction10")) Then
  loc_162E86C:                         Proc_6_17_EAA2B0(var_148)
  loc_162E888:                         Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E890:                         Call 0.Method_arg_20 (CStr(var_148))
  loc_162E898:                         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction10")))))
  loc_162E8B5:                       Else
  loc_162E8D7:                         If (var_20C = Ucase("Instruction11")) Then
  loc_162E908:                           Proc_6_17_EAA2B0(var_148)
  loc_162E924:                           Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E92C:                           Call 0.Method_arg_20 (CStr(var_148))
  loc_162E934:                           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("FPInstruction11")))))
  loc_162E951:                         Else
  loc_162E973:                           If (var_20C = Ucase("Instruction12")) Then
  loc_162E985:                             var_D8 = var_C8.Fields
  loc_162E9A4:                             Proc_6_17_EAA2B0(var_148)
  loc_162E9AC:                             var_CC = CStr(var_148)
  loc_162E9C0:                             Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162E9C8:                             Call 0.Method_arg_20 (var_CC)
  loc_162E9D0:                             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_D8.Item("FPInstruction12")))))
  loc_162E9EA:                           End If
  loc_162E9EA:                         End If
  loc_162E9EA:                       End If
  loc_162E9EA:                     End If
  loc_162E9EA:                   End If
  loc_162E9EA:                 End If
  loc_162E9EA:               End If
  loc_162E9EA:             End If
  loc_162E9EA:           End If
  loc_162E9EA:         End If
  loc_162E9EA:       End If
  loc_162E9EA:     End If
  loc_162E9ED:   Next var_1FC 'Integer
  loc_162E9F2: End If
  loc_162EA0B: Call 0.Method_arg_64 (var_D8, CVar(var_9C))
  loc_162EA13: Call 0.Method_arg_2C (var_118)
  loc_162EA21: Call 0.Method_arg_150 (var_138)
  loc_162EA2C: Call 0.Method_arg_50 (var_CC)
  loc_162EA36: Set var_DC = Nothing
  loc_162EA50: Set var_D8 = MemVar_1F921E4 
  loc_162EA5C: Proc_6_99_1483714(var_D8, 0, var_CC)
  loc_162EA67: MemVar_1F921E4 = var_D8
  loc_162EA7A: Set var_9C = Nothing
  loc_162EA82: Set var_BC = Nothing
  loc_162EA8A: Set var_C0 = Nothing
  loc_162EA92: Set var_C4 = Nothing
  loc_162EA95: Exit Sub
  loc_162EA96: ' Referenced from: 162D574
  loc_162EA96: Proc_6_60_E62BC4(&HFF)
  loc_162EA9B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E72614
  'Data Table: 5727D4
  Dim Me As Recordset15
  loc_E725BB: Me.Requery -1
  loc_E725CB: Me.Requery -1
  loc_E725DB: Me.Requery -1
  loc_E725EB: Me.Requery -1
  loc_E725FB: Me.Requery -1
  loc_E7260B: Me.Requery -1
  loc_E72610: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19253E4
  'Data Table: 5727D4
  Dim var_B4 As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_140 As Variant
  Dim var_14C As Double
  Dim var_11C As Variant
  Dim var_B0 As Variant
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_144 As String
  Dim var_168 As String
  Dim unk_5727EB As Connection15
  Dim var_B8 As Variant
  Dim var_16C As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_174 As String
  Dim var_178 As String
  Dim var_184 As String
  Dim var_17C As Variant
  Dim var_190 As TextBox
  Dim var_1A4 As Variant
  Dim var_1C0 As String
  Dim var_1B8 As TextBox
  Dim var_1CC As TextBox
  Dim var_1E0 As Variant
  Dim var_1F4 As Variant
  Dim var_200 As String
  Dim var_208 As Variant
  Dim var_21C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_240 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_18C As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As TextBox
  Dim var_1C8 As TextBox
  Dim var_1DC As Variant
  Dim var_1F0 As Variant
  Dim var_204 As Variant
  Dim var_218 As Variant
  Dim var_22C As Variant
  Dim var_244 As Variant
  Dim var_294 As Variant
  Dim var_60C As Variant
  Dim var_654 As Variant
  Dim var_69C As TextBox
  Dim var_6E4 As TextBox
  Dim var_72C As Variant
  Dim var_774 As TextBox
  Dim var_7BC As TextBox
  Dim var_804 As TextBox
  Dim var_84C As TextBox
  Dim var_894 As TextBox
  Dim var_8DC As TextBox
  Dim var_928 As TextBox
  Dim var_974 As TextBox
  Dim var_9C0 As TextBox
  Dim var_E5C As Double
  Dim var_A0C As TextBox
  Dim var_E64 As Double
  Dim var_A58 As TextBox
  Dim var_E6C As Double
  Dim var_C1C As TextBox
  Dim var_C68 As TextBox
  Dim var_CB4 As TextBox
  Dim var_D00 As TextBox
  Dim var_D4C As TextBox
  Dim var_180 As String
  Dim var_290 As Variant
  Dim var_2A4 As Variant
  Dim var_2D4 As Variant
  Dim var_344 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_404 As Variant
  Dim var_434 As Variant
  Dim var_444 As Variant
  Dim var_4A4 As Variant
  Dim var_4D4 As Variant
  Dim var_4E4 As Variant
  Dim var_4F4 As Variant
  Dim var_574 As Variant
  Dim var_5A4 As Variant
  Dim var_62C As Variant
  Dim var_74C As Variant
  Dim var_86C As Variant
  Dim var_998 As Variant
  Dim var_ADC As Variant
  Dim var_C40 As Variant
  Dim var_D90 As Variant
  Dim var_A4 As Recordset15
  Dim var_230 As Field20
  Dim var_608 As Field20
  Dim var_650 As Field20
  Dim var_698 As Field20
  Dim var_6E0 As TextBox
  Dim var_E74 As Double
  Dim var_728 As TextBox
  Dim var_E7C As Double
  Dim var_770 As Field20
  Dim var_88 As Recordset15
  loc_1922B95: global_144 = 0
  loc_1922B98: On Error Goto loc_19253C9
  loc_1922BA6: Set var_B0 = Me.txt
  loc_1922BAC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_1922BD5: If (Proc_6_27_EA565C(var_B4, "Voucher Date") = 0) Then
  loc_1922BD8:   Exit Sub
  loc_1922BD9: End If
  loc_1922BE4: Set var_B0 = Me.txt
  loc_1922BEA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1922C13: If (Proc_6_27_EA565C(var_B4, "Voucher No") = 0) Then
  loc_1922C16:   Exit Sub
  loc_1922C17: End If
  loc_1922C22: Set var_B0 = Me.txt
  loc_1922C28: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B4)
  loc_1922C51: If (Proc_6_27_EA565C(var_B4, "Party name") = 0) Then
  loc_1922C54:   Exit Sub
  loc_1922C55: End If
  loc_1922C60: Set var_B0 = Me.txt
  loc_1922C66: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B4)
  loc_1922C8F: If (Proc_6_27_EA565C(var_B4, "Mobile No.") = 0) Then
  loc_1922C92:   Exit Sub
  loc_1922C93: End If
  loc_1922CA1: Set var_B0 = Me.txt
  loc_1922CA7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B4)
  loc_1922CAF: var_BC = var_B4.Text
  loc_1922CC8: If (Len(var_BC) <> &HA) Then
  loc_1922CD1:   Call 0.Method_arg_50 (var_BC)
  loc_1922CF2:   MsgBox("Please fill 10 Digit Mobile No.", &H10, CVar(var_BC), var_10C, var_12C)
  loc_1922D02:   Exit Sub
  loc_1922D03: End If
  loc_1922D0E: If (global_128 = "Yes") Then
  loc_1922D1C:   Set var_B0 = Me.txt
  loc_1922D22:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B4)
  loc_1922D4B:   If (Proc_6_27_EA565C(var_B4, "Pan No.") = 0) Then
  loc_1922D4E:     Exit Sub
  loc_1922D4F:   End If
  loc_1922D5D:   Set var_B0 = Me.txt
  loc_1922D63:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B4)
  loc_1922D6B:   var_BC = var_B4.Text
  loc_1922D84:   If (Len(var_BC) <> &HA) Then
  loc_1922D8D:     Call 0.Method_arg_50 (var_BC)
  loc_1922DAE:     MsgBox("Please fill 10 Digit Pan No.", &H10, CVar(var_BC), var_10C, var_12C)
  loc_1922DBE:     Exit Sub
  loc_1922DBF:   End If
  loc_1922DBF: End If
  loc_1922DCA: Set var_B0 = Me.txt
  loc_1922DD0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_B4)
  loc_1922DF9: If (Proc_6_27_EA565C(var_B4, "Function Type") = 0) Then
  loc_1922DFC:   Exit Sub
  loc_1922DFD: End If
  loc_1922E0B: Set var_B0 = Me.txt
  loc_1922E11: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B4)
  loc_1922E35: If (CDbl(Val(var_B4.Text)) <= CDbl(0)) Then
  loc_1922E59:   MsgBox("Can't leave blank to Expected Pax.", &H40, "Hall Booking...", var_10C, var_12C)
  loc_1922E74:   Set var_B0 = Me.txt
  loc_1922E7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B4)
  loc_1922E82:   var_B4.SetFocus
  loc_1922E8E:   Exit Sub
  loc_1922E8F: End If
  loc_1922E9D: Set var_B0 = Me.txt
  loc_1922EA3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4)
  loc_1922EAB: var_BC = var_B4.Text
  loc_1922EC7: If (CDbl(Val(var_BC)) <= CDbl(0)) Then
  loc_1922EEB:   MsgBox("Can't leave blank to Gurrented Pax.", &H40, "Hall Booking...", var_10C, var_12C)
  loc_1922F06:   Set var_B0 = Me.txt
  loc_1922F0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4)
  loc_1922F14:   var_B4.SetFocus
  loc_1922F20:   Exit Sub
  loc_1922F21: End If
  loc_1922F2F: Set var_B8 = Me.txt
  loc_1922F35: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_140)
  loc_1922F4A: var_14C = Val(var_140.Text)
  loc_1922F5B: Set var_B0 = Me.txt
  loc_1922F61: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4, var_BC)
  loc_1922F8E: If (CDbl(Val(var_BC)) > CDbl(var_B4.Text)) Then
  loc_1922FB2:   MsgBox("Gurrented Pax must be equal or less then Expected Pax.", &H40, "Hall Booking...", var_10C, var_12C)
  loc_1922FCD:   Set var_B0 = Me.txt
  loc_1922FD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4)
  loc_1922FDB:   var_B4.SetFocus
  loc_1922FE7:   Exit Sub
  loc_1922FE8: End If
  loc_1922FE8: var_CC = 1
  loc_1922FF1: var_11C = 1
  loc_1923015: var_10C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1923031: If (var_10C = vbNullString) Then
  loc_192303F:   var_EC = "Hall Booking..."
  loc_1923055:   MsgBox("Please select Venue name.", &H40, var_EC, var_10C, var_12C)
  loc_1923069:   Set var_B0 = Me.FGrid
  loc_192307A:   Exit Sub
  loc_192307B: End If
  loc_192307E: Call Proc_123_82_138DE44(var_15E, FGrid.DispID_8001, var_11C)
  loc_1923089: If (var_15E = 0) Then
  loc_192308C:   Exit Sub
  loc_192308D: End If
  loc_19230B5: For var_162 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_AA = var_162 'Byte
  loc_19230C0:   var_CC = CVar(CLng(var_AA)) 'Long
  loc_19230C8:   var_11C = CVar(CLng(7)) 'Long
  loc_19230F3:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_192310A:     Me.FGrid.Row = CVar(CLng(var_AA))
  loc_1923117:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_192311F:     var_11C = CVar(CLng(1)) 'Long
  loc_192314A:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1923166:       MsgBox("Fill Venue Name", 0, var_EC, var_10C, var_12C)
  loc_192317A:       Set var_B0 = Me.FGrid
  loc_192318B:       Exit Sub
  loc_192318C:     End If
  loc_1923191:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_1923199:     var_11C = CVar(CLng(3)) 'Long
  loc_19231C4:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_19231E0:       MsgBox("Fill From Date", 0, var_EC, var_10C, var_12C)
  loc_19231F4:       Set var_B0 = Me.FGrid
  loc_1923205:       Exit Sub
  loc_1923206:     End If
  loc_192320B:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_1923213:     var_11C = CVar(CLng(4)) 'Long
  loc_192323E:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_192325A:       MsgBox("Fill Start Time", 0, var_EC, var_10C, var_12C)
  loc_192326E:       Set var_B0 = Me.FGrid
  loc_192327F:       Exit Sub
  loc_1923280:     End If
  loc_1923285:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_192328D:     var_11C = CVar(CLng(5)) 'Long
  loc_19232B8:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_19232D4:       MsgBox("Fill To Date", 0, var_EC, var_10C, var_12C)
  loc_19232E8:       Set var_B0 = Me.FGrid
  loc_19232F9:       Exit Sub
  loc_19232FA:     End If
  loc_19232FF:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_1923307:     var_11C = CVar(CLng(6)) 'Long
  loc_1923332:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1923348:       var_DC = "Fill End Time"
  loc_192334E:       MsgBox(var_DC, 0, var_EC, var_10C, var_12C)
  loc_1923362:       Set var_B0 = Me.FGrid
  loc_1923373:       Exit Sub
  loc_1923374:     End If
  loc_1923374:   End If
  loc_1923377: Next var_162 'Byte
  loc_1923380: Call Proc_123_74_F94528(var_15E)
  loc_192338B: If (var_15E = 0) Then
  loc_192338E:   Exit Sub
  loc_192338F: End If
  loc_192339A: Set var_B0 = Me.TxtGrid
  loc_19233A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_B4)
  loc_19233A8: var_B4.Visible = False
  loc_19233C2: Set var_B0 = Me.txtMEd
  loc_19233C8: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_B4)
  loc_19233D0: var_B4.Visible = False
  loc_19233DC: Call Proc_123_77_FB8088()
  loc_19233E5: Set var_B0 = Me.TopCtrl1
  loc_19233EB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1923404: If (CStr() = "Add") Then
  loc_1923415:   Set var_B0 = Me.txt
  loc_192341B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_1923423:   var_BC = var_B4.Text
  loc_1923443:   If (Proc_6_91_EF2D40(CDate(var_BC)) = 0) Then
  loc_1923451:     Set var_B0 = Me.txt
  loc_1923457:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_192345F:     var_B4.SetFocus
  loc_192346B:     Exit Sub
  loc_192346C:   End If
  loc_1923499:   Set var_B0 = Me.txt
  loc_192349F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Select Count(*) From HallBook Where DocID='", var_DC, -1)
  loc_19234B7:   var_168 = var_140 & var_BC & "'"
  loc_19234C0:   unk_5727EB.Execute var_168, 0, var_16C
  loc_19234C8:   var_EC = var_B4.Text.Fields
  loc_19234D0:    = var_140.Item(var_B4)
  loc_19234D8:    = var_16C.Value
  loc_1923505:   If (var_EC > 0) Then
  loc_192350E:     Call Proc_123_79_10E9320(MemVar_1F92044)
  loc_1923521:     Set var_B0 = Me.txt
  loc_1923527:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4)
  loc_192352F:     var_B4.Text = var_BC
  loc_192353E:     Exit Sub
  loc_192353F:   End If
  loc_1923542: Else
  loc_192355F:   var_B4 = Me.Fields.Item("DocID")
  loc_1923570:   var_BC = CStr(var_B4.Value)
  loc_1923576:   global_100 = var_BC
  loc_1923587: End If
  loc_1923589: var_8A = &HFF
  loc_1923595: unk_5727EB.BeginTrans var_170
  loc_19235A6: If (global_140 <> 0) Then
  loc_19235C7:   Set var_B0 = Me.txt
  loc_19235CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B4, var_BC, "Update HallBook Set PartyName='", var_290)
  loc_19235D5:   -1 = var_B4.Text
  loc_19235E5:   var_174 = var_294 & var_BC & "',Add1='"
  loc_19235F6:   Set var_B8 = Me.txt
  loc_19235FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_140, var_168)
  loc_1923604:   var_174 = var_140.Text
  loc_1923614:   var_184 = var_8A & var_168 & "',Add2='"
  loc_1923625:   Set var_16C = Me.txt
  loc_192362B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_17C, var_180)
  loc_1923633:   var_184 = var_17C.Text
  loc_1923654:   Set var_18C = Me.txt
  loc_192365A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_190)
  loc_1923683:   Set var_1A0 = Me.txt
  loc_1923689:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A4)
  loc_19236A1:   var_1C0 = var_BC & var_180 & "',City='" & var_190.Text & "',PinCode='" & var_1A4.Text & "',PanNo='"
  loc_19236B2:   Set var_1B4 = Me.txt
  loc_19236B8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1B8)
  loc_19236C0:   var_1BC = var_1B8.Text
  loc_19236E1:   Set var_1C8 = Me.txt
  loc_19236E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1CC)
  loc_1923710:   Set var_1DC = Me.txt
  loc_1923716:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1E0)
  loc_192373F:   Set var_1F0 = Me.txt
  loc_1923745:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1F4)
  loc_1923756:   var_200 = var_1C0 & var_1BC & "',ContactNo_Res='" & var_1CC.Text & "',ContactNo_Off='" & var_1E0.Text & "',MobileNo='" & var_1F4.Text
  loc_192376E:   Set var_204 = Me.txt
  loc_1923774:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_208)
  loc_192379D:   Set var_218 = Me.txt
  loc_19237A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_21C)
  loc_19237C9:   Set var_22C = Me.txt
  loc_19237CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_230)
  loc_19237DE:   Proc_6_17_EAA2B0(var_EC, CVar(var_230))
  loc_19237EF:   var_240 = CVar(var_200 & "',CompanyCode='" & var_208.Tag & "',BookingAgent='" & var_21C.Tag & "',Remark=") & var_EC & " Where DocID='" 
  loc_1923801:   Set var_244 = Me.txt
  loc_1923807:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_248)
  loc_1923831:   unk_5727EB.Execute CStr(var_240 & CVar(var_248.Text) & "'"), , 
  loc_19238CA: Else
  loc_19238E8:   Set var_B0 = Me.txt
  loc_19238EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Select * From HallBook Where DocID='")
  loc_19238F6:   var_DC = var_B4.Text
  loc_19238FF:   var_144 = -1 & var_BC
  loc_192390F:   unk_5727EB.Execute var_294 & var_BC & "'", var_B8, 
  loc_192391A:   Set var_A4 = var_B8
  loc_1923950:   Set var_B0 = Me.txt
  loc_1923956:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Delete From HallBook Where DocID='")
  loc_192395E:   var_DC = var_B4.Text
  loc_1923967:   var_144 = -1 & var_BC
  loc_1923977:   unk_5727EB.Execute var_294 & var_BC & "'", var_B8, 
  loc_192399F:   Set var_B0 = Me.txt
  loc_19239A5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4)
  loc_19239C0:   Set var_B8 = Me.txt
  loc_19239C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_140)
  loc_19239E9:   Set var_16C = Me.txt
  loc_19239EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_17C)
  loc_19239F7:   var_DC = CVar(var_17C) 'Address
  loc_19239FE:   Proc_6_7_F25D88(var_EC, var_DC)
  loc_1923A4B:   Set var_190 = Me.txt
  loc_1923A51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A0, var_1BC)
  loc_1923A59:   1 = var_1A0.Text
  loc_1923A6C:   Set var_1A4 = Me.txt
  loc_1923A72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1C0)
  loc_1923A7A:   1 = var_1B4.Text
  loc_1923A8D:   Set var_1B8 = Me.txt
  loc_1923A93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1C8)
  loc_1923AAE:   Set var_1CC = Me.txt
  loc_1923AB4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1DC)
  loc_1923ACF:   Set var_1E0 = Me.txt
  loc_1923AD5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1F0)
  loc_1923AF0:   Set var_1F4 = Me.txt
  loc_1923AF6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_204)
  loc_1923B11:   Set var_208 = Me.txt
  loc_1923B17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_218)
  loc_1923B32:   Set var_21C = Me.txt
  loc_1923B38:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_22C)
  loc_1923B53:   Set var_230 = Me.txt
  loc_1923B59:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_244)
  loc_1923B74:   Set var_248 = Me.txt
  loc_1923B7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_294)
  loc_1923B95:   Set var_608 = Me.txt
  loc_1923B9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_60C)
  loc_1923BB6:   Set var_650 = Me.txt
  loc_1923BBC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_654)
  loc_1923BD7:   Set var_698 = Me.txt
  loc_1923BDD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_69C)
  loc_1923BF8:   Set var_6E0 = Me.txt
  loc_1923BFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_6E4)
  loc_1923C19:   Set var_728 = Me.txt
  loc_1923C1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_72C)
  loc_1923C3A:   Set var_770 = Me.txt
  loc_1923C40:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_774)
  loc_1923C5B:   Set var_7B8 = Me.txt
  loc_1923C61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_7BC)
  loc_1923C7C:   Set var_800 = Me.txt
  loc_1923C82:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_804)
  loc_1923C9D:   Set var_848 = Me.txt
  loc_1923CA3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_84C)
  loc_1923CBE:   Set var_890 = Me.txt
  loc_1923CC4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_894)
  loc_1923CDF:   Set var_8D8 = Me.txt
  loc_1923CE5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_8DC)
  loc_1923D00:   Set var_924 = Me.txt
  loc_1923D06:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_928)
  loc_1923D21:   Set var_970 = Me.Txt1
  loc_1923D27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_974)
  loc_1923D42:   Set var_9BC = Me.txt
  loc_1923D48:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_9C0)
  loc_1923D5D:   var_E5C = Val(var_9C0.Text)
  loc_1923D6E:   Set var_A08 = Me.txt
  loc_1923D74:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_A0C, var_A10)
  loc_1923D89:   var_E64 = Val(var_A10)
  loc_1923D9A:   Set var_A54 = Me.txt
  loc_1923DA0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_A58, var_A5C)
  loc_1923DB5:   var_E6C = Val(var_A5C)
  loc_1923DC3:   Proc_6_7_F25D88(var_B3C, MemVar_1F920EC)
  loc_1923DCC:   Set var_B70 = Me.TopCtrl1
  loc_1923DD2:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_E6C)
  loc_1923E17:   Set var_C18 = Me.txt
  loc_1923E1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_C1C)
  loc_1923E38:   Set var_C64 = Me.txt
  loc_1923E3E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_C68)
  loc_1923E59:   Set var_CB0 = Me.txt
  loc_1923E5F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_CB4)
  loc_1923E7A:   Set var_CFC = Me.txt
  loc_1923E80:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_D00)
  loc_1923E9B:   Set var_D48 = Me.txt
  loc_1923EA1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_D4C)
  loc_1923EB9:   Set var_DD4 = Me.txt
  loc_1923EBF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_DD8)
  loc_1923ECE:   Proc_6_17_EAA2B0(var_DF8, CVar(var_DD8))
  loc_1923EE7:   var_BC = "Insert Into HallBook(" & "Docid,VNo,VDate,VType,VPrefix,VTime,Site_Code, "
  loc_1923EEE:   var_144 = var_BC & "PartyName,Add1,Add2,City,PinCode,PanNo,ContactNo_Res,ContactNo_Off,MobileNo,Func_Name, "
  loc_1923EF5:   var_168 = var_144 & "MenuSpl1,MenuSpl2, "
  loc_1923EFC:   var_174 = var_168 & "MenuSpl3,MenuSpl4,MenuSpl5,MenuSpl6,MenuSpl7,HouseKeep,FrontOff,Engg,Security,Chef,Board,ExpAtt, "
  loc_1923F03:   var_178 = var_174 & "GuarAtt,CoverRate,RestCode,U_Name, U_EntDt, U_AE,MarketSeg,BussSource,CompanyCode,BookingAgent,InquiryCode,LogSite_Code,Remark) "
  loc_1923F0A:   var_180 = var_178 & " Values("
  loc_1923F3C:   var_CC = ",'"
  loc_1923F57:   var_26C = CVar(var_180 & "'" & var_B4.Text & "'," & CStr(Val(var_140.Text)) & ",") & var_EC & var_CC & CVar(global_104) & "','" 
  loc_1923FA3:   var_384 = var_26C & CVar(Me.LblVPrefix.Caption) & "','" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(MemVar_1F92070) & "'," & "'" & CVar(var_1BC) 
  loc_1923FF8:   var_4A4 = var_384 & "','" & CVar(var_1C0) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_1DC.Text) & "','" & CVar(var_1F0.Text) & "','" 
  loc_1924044:   var_5A4 = var_4A4 & CVar(var_204.Text) & "','" & CVar(var_218.Text) & "','" & CVar(var_22C.Text) & "','" & CVar(var_244.Text) & "','" 
  loc_192406A:   var_62C = var_5A4 & CVar(var_294.Tag) & "'," & "'" & CVar(var_60C.Text) 
  loc_19240B6:   var_74C = var_62C & "','" & CVar(var_654.Text) & "','" & CVar(var_69C.Text) & "','" & CVar(var_6E4.Text) & "','" & CVar(var_72C.Text) 
  loc_1924102:   var_86C = var_74C & "','" & CVar(var_774.Text) & "','" & CVar(var_7BC.Text) & "','" & CVar(var_804.Text) & "','" & CVar(var_84C.Text) 
  loc_192414E:   var_998 = var_86C & "','" & CVar(var_894.Text) & "','" & CVar(var_8DC.Text) & "','" & CVar(var_928.Text) & "','" & CVar(var_974.Text) 
  loc_19241A9:   var_ADC = var_998 & "'," & CVar(var_A0C.Text) & "," & CVar(var_A58.Text) & "," & CVar(var_E6C) & ",'" & CVar(global_56) & "','" 
  loc_19241E6:   var_C40 = var_ADC & CVar(MemVar_1F920C8) & "'," & var_B3C & ",'" & IIf((CStr(var_B80) = "Add"), "A", "E") & "','" & CVar(var_C1C.Tag) 
  loc_192423B:   var_D90 = var_C40 & "','" & CVar(var_C68.Tag) & "','" & CVar(var_CB4.Tag) & "','" & CVar(var_D00.Tag) & "','" & CVar(var_D4C.Tag) & "','" 
  loc_192426C:   unk_5727EB.Execute CStr(var_D90 & CVar(MemVar_1F92078) & "'," & var_DF8 & ")"), var_E4C, -1
  loc_1924446:   If (var_A4.RecordCount > 0) Then
  loc_1924463:     var_B4 = var_A4.Fields.Item("Total")
  loc_192446B:     var_DC = var_B4.Value
  loc_1924482:     var_B8 = var_A4.Fields
  loc_19244A5:     Set var_16C = Me.txt
  loc_19244AB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_17C, var_BC)
  loc_19244B3:     var_E50 = var_17C.Text
  loc_19244C0:     var_14C = Val(var_BC)
  loc_19244D1:     Set var_18C = Me.txt
  loc_19244D7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_190, var_144)
  loc_19244EC:     var_E5C = Val(var_144)
  loc_1924524:     Set var_1B4 = Me.txt
  loc_192452A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1B8, var_168)
  loc_192453F:     var_E64 = Val(var_168)
  loc_1924550:     Set var_1C8 = Me.txt
  loc_1924556:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_1CC, var_174)
  loc_192456B:     var_E6C = Val(var_174)
  loc_192462C:     var_404 = var_A4.Fields.Item("Servicecharge").Value
  loc_1924653:     var_444 = var_A4.Fields.Item("AddAmt").Value
  loc_19246DB:     Set var_69C = Me.txt
  loc_19246E1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_6E0, var_178)
  loc_19246F6:     var_E74 = Val(var_178)
  loc_1924707:     Set var_6E4 = Me.txt
  loc_192470D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_728, var_180)
  loc_1924722:     var_E7C = Val(var_180)
  loc_1924757:     Set var_774 = Me.txt
  loc_192475D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_7B8)
  loc_1924794:     var_12C = CVar("Update HallBook Set " & "Total=") & var_DC & ",Hallrent=" 
  loc_19247B6:     var_290 = (CVar((var_190.Text * var_1B8.Text)) + var_A4.Fields.Item("Total").Value)
  loc_19247BA:     var_2A4 = var_12C & var_B8.Item("HallRent").Value & ",NetAmount=" & var_12C & var_B8.Item("HallRent").Value & ",NetAmount=" & CVar(Me.LblVPrefix.Caption) 
  loc_19247D5:     var_2D4 = (CVar((var_1CC.Text * var_6E0.Text)) + var_A4.Fields.Item("Total").Value)
  loc_19247FB:     var_374 = var_2A4 & ",Amount=" & CVar(Format$(Time, "HH:mm")) & "," & "DiscPer=" & var_A4.Fields.Item("DiscPer").Value & ",DiscAmt=" 
  loc_192482B:     var_434 = var_374 & var_A4.Fields.Item("DiscAmt").Value & ",Tax=" & var_A4.Fields.Item("Tax").Value & ",ServiceCharge=" & var_404 & ",AddAmt=" 
  loc_1924852:     var_4E4 = var_434 & var_444 & ",dedAmt=" & var_A4.Fields.Item("DedAmt").Value & ",RoundOff=" & var_A4.Fields.Item("RoundOff").Value 
  loc_192485B:     var_4F4 = var_4E4 & ",Advance=" 
  loc_192488C:     var_574 = var_4F4 & var_A4.Fields.Item("Advance").Value & "," & "TotalCoverRate=" & CVar((var_728.Text * var_E7C)) & ",MenuCatalog='" 
  loc_19248BA:     unk_5727EB.Execute CStr(var_574 & var_A4.Fields.Item("MenuCatalog").Value & "' WHere Docid='" & Trim(CVar(var_7B8)) & "'"), var_62C, -1
  loc_192498C:   End If
  loc_192498C: End If
  loc_19249AA: Set var_B0 = Me.txt
  loc_19249B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Delete From VenueOCC Where FPDocID='", var_DC)
  loc_19249B8: -1 = var_B4.Text
  loc_19249D1: unk_5727EB.Execute var_B8 & var_BC & "'", var_7BC, var_E7C
  loc_1924A10: For var_E80 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_E80 'Integer
  loc_1924A1A:   var_CC = CVar(CLng(var_92)) 'Long
  loc_1924A5E:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1924A6F:     Set var_B0 = Me.txt
  loc_1924A75:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_174, CVar(CLng(1)))
  loc_1924A7D:     var_CC = var_B4.Text
  loc_1924A86:     var_CC = CVar(CLng(var_92)) 'Long
  loc_1924A8E:     var_11C = CVar(CLng(7)) 'Long
  loc_1924A97:     Set var_B8 = Me.FGrid
  loc_1924A9D:     var_DC = var_B8.TextMatrix)
  loc_1924AC4:     var_EC = Me.FGrid.TextMatrix)
  loc_1924AD5:     Proc_6_7_F25D88(var_12C, CVar(CStr(var_EC)), CVar(CLng(3)), CVar(CLng(var_92)), var_DC)
  loc_1924AF5:     var_27C = Me.FGrid.TextMatrix)
  loc_1924B06:     Proc_6_7_F25D88(var_2A4, CVar(CStr(var_27C)), CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1924B0F:     var_4D4 = CVar(CLng(var_92)) 'Long
  loc_1924B26:     var_2D4 = Me.FGrid.TextMatrix)
  loc_1924B47:     Set var_18C = Me.FGrid
  loc_1924B4D:     var_344 = var_18C.TextMatrix)
  loc_1924B64:     Proc_6_7_F25D88(var_404, MemVar_1F920EC, var_344, CVar(CLng(6)), CVar(CLng(var_92)), var_2D4)
  loc_1924B6D:     Set var_190 = Me.TopCtrl1
  loc_1924B73:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(CVar(CLng(4)))
  loc_1924BC5:     var_144 = "Insert Into VenueOCC(" & "FPDocid,VenuCode,FromDate,ToDate,FromTime,ToTime," & "Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_1924BDA:     var_180 = var_144 & "Values(" & "'" & var_174
  loc_1924C31:     var_374 = CVar(var_180 & "','" & CStr(var_DC) & "',") & var_12C & "," & var_2A4 & ",'" & CVar(CStr(var_2D4)) & "','" & CVar(CStr(var_344)) 
  loc_1924C80:     var_4A4 = var_374 & "'," & "'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_404 & ",'" & IIf((CStr(var_444) = "Add"), "A", "E") 
  loc_1924CAA:     unk_5727EB.Execute CStr(var_4A4 & "','" & CVar(MemVar_1F92078) & "')"), var_4F4, -1
  loc_1924D2C:   End If
  loc_1924D2F: Next var_E80 'Integer
  loc_1924D38: Set var_B0 = Me.TopCtrl1
  loc_1924D3E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1924D57: If (CStr() = "Add") Then
  loc_1924D6E:   var_BC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1924D94:   var_10C = CVar(var_BC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_104 & "' And VP.Date_From<=") 'String
  loc_1924DA5:   Set var_B0 = Me.txt
  loc_1924DAB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4, var_180, var_10C)
  loc_1924DB3:   var_25C = var_B4.Text
  loc_1924DC1:   Proc_6_7_F25D88(var_EC, CVar(var_180))
  loc_1924DC9:   var_12C = -1 & var_EC 
  loc_1924DE0:   unk_5727EB.Execute CStr(var_12C & " Order By VP.Date_From DESC"), var_B8, 
  loc_1924DEB:   Set var_88 = var_B8
  loc_1924E29:   If (var_88.RecordCount > 0) Then
  loc_1924E3A:     Set var_B0 = Me.txt
  loc_1924E40:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1924E55:     var_14C = Val(var_B4.Text)
  loc_1924E6A:     var_B8 = var_88.Fields
  loc_1924E7A:     var_DC = var_B8.Item("V_Type").Value
  loc_1924EA5:     Proc_6_7_F25D88(var_25C, CVar(var_88.Fields.Item("Date_From")))
  loc_1924ECA:     var_174 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_14C) & " Where (SITE_CODE='"
  loc_1924EF5:     var_12C = CVar(var_174 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_DC & "' and Date_From=" 
  loc_1924EFC:     var_26C = var_12C & var_25C 
  loc_1924F0A:     unk_5727EB.Execute CStr(var_26C), var_27C, -1
  loc_1924F44:   End If
  loc_1924F44: End If
  loc_1924F48: Set var_B0 = Me.TopCtrl1
  loc_1924F4E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_18C)
  loc_1924F67: If (CStr(var_14C) = "Add") Then
  loc_1924F8D:   var_BC = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078
  loc_1924FAB:   Call 0.Method_arg_50 (var_174, var_BC & "' And UNAME='" & MemVar_1F920C8 & "' AND ENAME='", var_DC, -1, var_B0)
  loc_1924FBB:   var_184 = var_B4 & var_174 & "' "
  loc_1924FC4:   unk_5727EB.Execute var_184, 0, var_B8
  loc_1924FD4:    = var_B4.Item()
  loc_1924FDC:    = var_B8.Value
  loc_192500D:   If (var_B0.Fields > 0) Then
  loc_192502E:     Set var_B0 = Me.txt
  loc_1925034:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "UPDATE LASTVOU  SET DOCID='")
  loc_192503C:     var_DC = var_B4.Text
  loc_1925045:     var_144 = -1 & var_BC
  loc_192505A:     var_178 = var_BC & "' And UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F92078 & "' and UNAME='"
  loc_1925071:     Call 0.Method_arg_50 (var_184, var_178 & MemVar_1F920C8 & "' AND ENAME='")
  loc_192508A:     unk_5727EB.Execute var_B8 & var_184 & "'  ", , 
  loc_19250B5:   Else
  loc_19250D9:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' And UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_26C)
  loc_19250E2:     var_174 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' And UNAME='"
  loc_19250E9:     var_180 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' And UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F92078 & "','"
  loc_19250FA:     Set var_B0 = Me.txt
  loc_1925100:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_178)
  loc_1925108:     var_180 = var_B4.Text
  loc_192512C:     var_CC = MemVar_1F920EC
  loc_1925134:     Proc_6_7_F25D88(var_DC, var_CC)
  loc_1925166:     unk_5727EB.Execute CStr(CVar(var_B8 & var_178 & "','" & MemVar_1F92070 & "',") & var_DC & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_192519C:   End If
  loc_192519C: End If
  loc_19251A2: unk_5727EB.CommitTrans
  loc_19251BC: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_19251C5:   global_104 = "IBOOK"
  loc_19251E4:   var_144 = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F92078 & "') And code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName"
  loc_19251ED:   unk_5727EB.Execute var_144, var_DC, -1
  loc_19251FE:   Set global_72 = var_B0
  loc_1925216: Else
  loc_192522B:   If (global_56 = MemVar_1F92078 & "ODC") Then
  loc_1925234:     global_104 = "OBOOK"
  loc_192524C:     var_BC = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code In ('" & MemVar_1F92078
  loc_192525C:     unk_5727EB.Execute var_BC & "') And code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName", var_DC, -1
  loc_192526D:     Set global_72 = var_B0
  loc_1925282:   End If
  loc_1925282: End If
  loc_192528B: CVarUnk
  loc_1925290: VerifyVarObj
  loc_1925296: Set var_B0 = Me.DGParty
  loc_192529C: LateIdStAd
  loc_19252BD: Set var_B0 = Me.txt
  loc_19252C3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, 0)
  loc_19252CB: var_B0 = var_B4.Text
  loc_19252D3: var_90 = var_BC
  loc_19252DF: var_8A = 0
  loc_19252ED: Me.Requery -1
  loc_1925317: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_1925327: Set var_B0 = Me.TopCtrl1
  loc_192532D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_CC)
  loc_1925346: If (CStr(var_8A) = "Add") Then
  loc_192534C:   Call Proc_123_86_15FC1A0(var_90, global_72)
  loc_1925351: End If
  loc_1925355: Set var_B0 = Me.TopCtrl1
  loc_192535B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_B0)
  loc_1925374: If (CStr(var_B0) = "Add") Then
  loc_1925377:   Call TopCtrl1_UnknownEvent_A()
  loc_192537C:   Exit Sub
  loc_192537D: End If
  loc_19253A0: Call Proc_123_76_EEE3D0(Proc_5_1_100CB50("INI", Me))
  loc_19253AB: Call Proc_123_73_16C3C34(global_60)
  loc_19253B5: global_144 = &HFF
  loc_19253BD: Set var_88 = Nothing
  loc_19253C5: Set var_A4 = Nothing
  loc_19253C8: Exit Sub
  loc_19253C9: ' Referenced from: 1922B98
  loc_19253CF: If (var_8A = &HFF) Then
  loc_19253D8:   unk_5727EB.RollbackTrans
  loc_19253DD: End If
  loc_19253DD: Proc_6_60_E62BC4(global_144)
  loc_19253E2: Exit Sub
End Sub

Private Sub Txt1_KeyDown(KeyCode As Integer, Shift As Integer) 'E65C70
  'Data Table: 5727D4
  Dim MemVar_770300.global_0 As Integer
  loc_E65C26: If (KeyCode = CInt(&H20)) Then
  loc_E65C3F:   If ((CLng(Shift) = &HD) And (MemVar_770300.global_0 > 4)) Then
  loc_E65C48:     Proc_6_75_E527CC(Shift, arg_14)
  loc_E65C54:     MemVar_770300.global_0 = 0
  loc_E65C5A:   Else
  loc_E65C6A:     MemVar_770300.global_0 = (MemVar_770300.global_0 + 1)
  loc_E65C6D:   End If
  loc_E65C6D: End If
  loc_E65C6D: Exit Sub
  loc_E65C6E: Set arg_5C70 = MemVar_770300.global_0
End Sub

Private Sub Command1_UnknownEvent_0 'F821B8
  'Data Table: 5727D4
  Dim var_90 As Variant
  Dim var_98 As String
  Dim unk_5727EB As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_C8 As TextBox
  loc_F82092: Set var_8C = Me.txt
  loc_F82098: Call 0.Method_Command1_UnknownEvent_00 (CInt(&H22), var_90, var_94, "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='")
  loc_F820A0: var_BC = var_90.Text
  loc_F820A9: var_98 = -1 & var_94
  loc_F820B9: unk_5727EB.Execute var_98 & "'", var_C0, 
  loc_F820C4: Set var_88 = var_C0
  loc_F82122: If ((var_88.RecordCount > 0) And (IsNull(CVar(var_88.Fields.Item("Advance"))) = 0)) Then
  loc_F8213F:   var_90 = var_88.Fields.Item("Advance")
  loc_F8215E:   Set var_C0 = Me.txt
  loc_F82164:   Call 0.Method_Command1_UnknownEvent_00 (CInt(&H20), var_C8)
  loc_F8216C:   var_C8.Text = CStr(var_90.Value)
  loc_F82185: Else
  loc_F82193:   Set var_8C = Me.txt
  loc_F82199:   Call 0.Method_Command1_UnknownEvent_00 (CInt(&H20), var_90)
  loc_F821A1:   var_90.Text = "0.00"
  loc_F821AD: End If
  loc_F821B2: Set var_88 = Nothing
  loc_F821B5: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '11A173C
  'Data Table: 5727D4
  Dim var_9C As String
  Dim var_A4 As TextBox
  Dim var_9E As Integer
  Dim var_E0 As Integer
  Dim unk_5727EB As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_98 As Variant
  Dim arg_6CFF As Double
  loc_11A1340: On Error Goto loc_11A16FE
  loc_11A1347: Set var_88 = Me.TopCtrl1
  loc_11A134D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_11A1366: If (CStr() <> "Browse") Then
  loc_11A1369:   Exit Sub
  loc_11A136A: End If
  loc_11A1378: Set var_88 = Me.txt
  loc_11A137E: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_A4)
  loc_11A1390: var_9E = CInt(var_A4.Text)
  loc_11A13A1: Set var_88 = Me.TopCtrl1
  loc_11A13A7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9E)
  loc_11A13C0: If (CStr() <> "Add") Then
  loc_11A13C3:   GoTo loc_11A1423
  loc_11A13C6: End If
  loc_11A13C6: Call TopCtrl1_UnknownEvent_16()
  loc_11A13EE: Call Proc_123_76_EEE3D0(Proc_5_1_100CB50("INI", Me))
  loc_11A1404: Set var_88 = Me.TxtGrid
  loc_11A140A: Call 0.Method_Command1_UnknownEvent_90 (1, var_A4)
  loc_11A1412: var_A4.Visible = False
  loc_11A141E: Call Proc_123_73_16C3C34(global_60)
  loc_11A1423: ' Referenced from: 11A13C3
  loc_11A1430: var_9C = MemVar_1F92078 & "BANQ"
  loc_11A1438: If (global_56 = var_9C) Then
  loc_11A1468:   Set var_88 = Me.txt
  loc_11A146E:   Call 0.Method_Command1_UnknownEvent_90 (CInt(&H22), var_A4, var_9C, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_98, -1)
  loc_11A14A0:   unk_5727EB.Execute var_D0 & var_9C & "' And RestCode='" & global_56 & "'", 0, var_E4
  loc_11A14B0:    = var_D0.Item()
  loc_11A14B8:    = var_E4.Value
  loc_11A14E9:   If (var_A4.Text.Fields > 0) Then
  loc_11A1510:     var_98 = CVar("Can not modify advance." & vbCrLf & "Bill Generated!") 'String
  loc_11A1513:     MsgBox(var_98, &H10, "Advance...", var_114, var_124)
  loc_11A1526:     Exit Sub
  loc_11A1527:   End If
  loc_11A152A: Else
  loc_11A1537:   var_9C = MemVar_1F92078 & "ODC"
  loc_11A153F:   If (global_56 = var_9C) Then
  loc_11A1548:     var_E0 = 0
  loc_11A156F:     Set var_88 = Me.txt
  loc_11A1575:     Call 0.Method_Command1_UnknownEvent_90 (CInt(&H22), var_A4, var_9C, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_98, -1)
  loc_11A15A7:     unk_5727EB.Execute var_D0 & var_9C & "' And RestCode='" & global_56 & "'", var_E0, var_E4
  loc_11A15B7:      = var_D0.Item()
  loc_11A15BF:      = var_E4.Value
  loc_11A15F0:     If (var_A4.Text.Fields > 0) Then
  loc_11A15FE:       var_F4 = "Advance..."
  loc_11A161A:       MsgBox(CVar("Can not modify advance." & vbCrLf & "Bill Generated!"), &H10, var_F4, var_114, var_124)
  loc_11A162D:       Exit Sub
  loc_11A162E:     End If
  loc_11A162E:   End If
  loc_11A162E: End If
  loc_11A1643: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_11A164F:   HallAdvanceDepDialog.AdvType = "AD"
  loc_11A1657: Else
  loc_11A1660:   HallAdvanceDepDialog.AdvType = "AD"
  loc_11A1665: End If
  loc_11A1673: Set var_88 = Me.txt
  loc_11A1679: Call 0.Method_Command1_UnknownEvent_90 (CInt(&H22), var_A4)
  loc_11A168F: HallAdvanceDepDialog.pDocId = var_A4.Text
  loc_11A16A9: HallAdvanceDepDialog.OpenMode = 1
  loc_11A16B9: HallAdvanceDepDialog.OpenType = 6
  loc_11A16CA: Call HallAdvanceDepDialog.global_52Put(global_56)
  loc_11A16D4: var_9C = CStr(var_9E)
  loc_11A16DD: Call 0.Method_arg_1C4 (var_9C)
  loc_11A16F8: Call 0.Method_arg_2B0 (1)
  loc_11A16FD: Exit Sub
  loc_11A16FE: ' Referenced from: 11A1340
  loc_11A1714: Set var_88 = Err()
  loc_11A171A: Call 0.Method_arg_2C (var_9C, 0, var_F4)
  loc_11A1725: MsgBox(CVar(var_9C), var_114, var_124, var_E0, )
  loc_11A1738: Exit Sub
  loc_11A1739: arg_6CFF = 
End Sub

Private Sub DGCity_UnknownEvent_9 'F4D104
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4CFFB: Me.DGCity.Visible = False
  loc_F4D01A: If (Me.RecordCount > 0) Then
  loc_F4D059:   Set var_B4 = Me.txt
  loc_F4D05F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4D067:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4D09A:   var_B0 = Me.Fields.Item("Code")
  loc_F4D0B9:   Set var_B4 = Me.txt
  loc_F4D0BF:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4D0C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4D0DD: End If
  loc_F4D0E8: Set var_A8 = Me.txt
  loc_F4D0EE: Call 0.Method_DGCity_UnknownEvent_90 (CInt(6))
  loc_F4D0F6: var_B0.SetFocus
  loc_F4D102: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F4FE64
  'Data Table: 5727D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4FD5B: Me.DGCompany.Visible = False
  loc_F4FD7A: If (Me.RecordCount > 0) Then
  loc_F4FDB9:   Set var_B4 = Me.txt
  loc_F4FDBF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4FDC7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4FDFA:   var_B0 = Me.Fields.Item("Code")
  loc_F4FE19:   Set var_B4 = Me.txt
  loc_F4FE1F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4FE27:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4FE3D: End If
  loc_F4FE48: Set var_A8 = Me.txt
  loc_F4FE4E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HC))
  loc_F4FE56: var_B0.SetFocus
  loc_F4FE62: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA2620
  'Data Table: 5727D4
  Dim var_A8 As Variant
  loc_EA25A0: Set var_88 = Me.DGCompany
  loc_EA25CA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA25D2: Set var_BC = Me.DGCompany
  loc_EA260E: Proc_6_138_106D6F8(Me.DGCompany, global_88, CInt(&HC), Me.FGPoint)
  loc_EA261C: Exit Sub
  loc_EA261D: DGCompany.DispID_1B = var_A8
End Sub

Public Function global_52Get() '574BE0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '574BEF
  global_52 = Value
End Sub

Public Function global_56Get() '574BFE
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '574C0D
  global_56 = Value
End Sub

Public Property Get OpenMode() 'E07F00
  'Data Table: 5727D4
  loc_E07EF9: OpenMode = global_148
End Sub

Public Property Let OpenMode(vNewValue) 'E019A0
  'Data Table: 5727D4
  loc_E0199A: global_148 = vNewValue
  loc_E0199D: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E70AE0
  'Data Table: 5727D4
  Dim Me As Recordset15
  loc_E70A8A: Me.MoveFirst
  loc_E70AB4: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E70AD4: If (Me.EOF = 0) Then
  loc_E70AD7:   Call Proc_123_73_16C3C34(var_9C)
  loc_E70ADC: End If
  loc_E70ADC: Exit Sub
  loc_E70ADD: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E974C8
  'Data Table: 5727D4
  Dim Me As Recordset15
  loc_E97456: On Error Goto loc_E974BF
  loc_E9745F: Me.MoveFirst
  loc_E97489: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E974B1: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E974B9: Call Proc_123_73_16C3C34(0)
  loc_E974BE: Exit Sub
  loc_E974BF: ' Referenced from: E97456
  loc_E974BF: Proc_6_60_E62BC4(var_A0)
  loc_E974C4: Exit Sub
End Sub

Public Sub SEARCHBACKBANQUET(mVenueCode, mVenueName, mFromTime, mFuncDate) 'ED222C
  'Data Table: 5727D4
  Dim var_94 As Long
  Dim var_B4 As Variant
  loc_ED2170: Call TopCtrl1_UnknownEvent_A()
  loc_ED2175: var_94 = 1
  loc_ED2181: var_B4 = CVar(CLng(1)) 'Long
  loc_ED2191: Set var_D8 = Me.FGrid
  loc_ED2197: LateIdCallSt
  loc_ED21A2: var_94 = 1
  loc_ED21AE: var_B4 = CVar(CLng(7)) 'Long
  loc_ED21BE: Set var_D8 = Me.FGrid
  loc_ED21C4: LateIdCallSt
  loc_ED21CF: var_94 = 1
  loc_ED21DB: var_B4 = CVar(CLng(3)) 'Long
  loc_ED21EB: Set var_D8 = Me.FGrid
  loc_ED21F1: LateIdCallSt
  loc_ED21FC: var_94 = 1
  loc_ED2208: var_B4 = CVar(CLng(4)) 'Long
  loc_ED2218: Set var_D8 = Me.FGrid
  loc_ED221E: LateIdCallSt
  loc_ED2229: Exit Sub
End Sub

Public Sub Proc_123_70_1113B5C
  'Data Table: 5727D4
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_111380F: Me.Frame1.Left = CDbl(7530)
  loc_1113826: Me.Frame1.Top = CDbl(4515)
  loc_1113832: Set var_8C = Me.FGrid
  loc_1113849: global_96 = CStr(CLng(var_8C.BackColor))
  loc_111385F: var_8C.Cols = 8
  loc_1113867: var_B0 = CVar(CLng(0)) 'Long
  loc_111386C: var_D0 = &HFA
  loc_1113878: LateIdCallSt
  loc_1113880: var_B0 = 0
  loc_111388C: var_D0 = CVar(CLng(1)) 'Long
  loc_1113891: var_F0 = "Venu Name"
  loc_111389A: LateIdCallSt
  loc_11138A5: var_B0 = CVar(CLng(1)) 'Long
  loc_11138B0: var_D0 = CVar(CInt(1)) 'Integer
  loc_11138B7: LateIdCallSt
  loc_11138C2: var_B0 = CVar(CLng(1)) 'Long
  loc_11138C7: var_D0 = &H9C4
  loc_11138D3: LateIdCallSt
  loc_11138DB: var_B0 = 0
  loc_11138E7: var_D0 = CVar(CLng(2)) 'Long
  loc_11138EC: var_F0 = "Selection"
  loc_11138F5: LateIdCallSt
  loc_1113900: var_B0 = CVar(CLng(2)) 'Long
  loc_111390B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1113912: LateIdCallSt
  loc_111391D: var_B0 = CVar(CLng(2)) 'Long
  loc_1113922: var_D0 = 0
  loc_111392E: LateIdCallSt
  loc_1113936: var_B0 = 0
  loc_1113942: var_D0 = CVar(CLng(3)) 'Long
  loc_1113947: var_F0 = "Date From"
  loc_1113950: LateIdCallSt
  loc_111395B: var_B0 = CVar(CLng(3)) 'Long
  loc_1113966: var_D0 = CVar(CInt(1)) 'Integer
  loc_111396D: LateIdCallSt
  loc_1113978: var_B0 = CVar(CLng(3)) 'Long
  loc_1113983: var_D0 = CVar(CInt(1)) 'Integer
  loc_111398A: LateIdCallSt
  loc_1113995: var_B0 = CVar(CLng(3)) 'Long
  loc_111399A: var_D0 = &H47E
  loc_11139A6: LateIdCallSt
  loc_11139AE: var_B0 = 0
  loc_11139BA: var_D0 = CVar(CLng(4)) 'Long
  loc_11139BF: var_F0 = "Time Fr"
  loc_11139C8: LateIdCallSt
  loc_11139D3: var_B0 = CVar(CLng(4)) 'Long
  loc_11139DE: var_D0 = CVar(CInt(1)) 'Integer
  loc_11139E5: LateIdCallSt
  loc_11139F0: var_B0 = CVar(CLng(4)) 'Long
  loc_11139FB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1113A02: LateIdCallSt
  loc_1113A0D: var_B0 = CVar(CLng(4)) 'Long
  loc_1113A12: var_D0 = &H36B
  loc_1113A1E: LateIdCallSt
  loc_1113A26: var_B0 = 0
  loc_1113A32: var_D0 = CVar(CLng(5)) 'Long
  loc_1113A37: var_F0 = "Date To"
  loc_1113A40: LateIdCallSt
  loc_1113A4B: var_B0 = CVar(CLng(5)) 'Long
  loc_1113A56: var_D0 = CVar(CInt(1)) 'Integer
  loc_1113A5D: LateIdCallSt
  loc_1113A68: var_B0 = CVar(CLng(5)) 'Long
  loc_1113A73: var_D0 = CVar(CInt(1)) 'Integer
  loc_1113A7A: LateIdCallSt
  loc_1113A85: var_B0 = CVar(CLng(5)) 'Long
  loc_1113A8A: var_D0 = &H47E
  loc_1113A96: LateIdCallSt
  loc_1113A9E: var_B0 = 0
  loc_1113AAA: var_D0 = CVar(CLng(6)) 'Long
  loc_1113AAF: var_F0 = "Time To"
  loc_1113AB8: LateIdCallSt
  loc_1113AC3: var_B0 = CVar(CLng(6)) 'Long
  loc_1113ACE: var_D0 = CVar(CInt(1)) 'Integer
  loc_1113AD5: LateIdCallSt
  loc_1113AE0: var_B0 = CVar(CLng(6)) 'Long
  loc_1113AEB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1113AF2: LateIdCallSt
  loc_1113AFD: var_B0 = CVar(CLng(6)) 'Long
  loc_1113B02: var_D0 = &H36B
  loc_1113B0E: LateIdCallSt
  loc_1113B16: var_B0 = 0
  loc_1113B22: var_D0 = CVar(CLng(7)) 'Long
  loc_1113B27: var_F0 = "Venu Code"
  loc_1113B30: LateIdCallSt
  loc_1113B3B: var_B0 = CVar(CLng(7)) 'Long
  loc_1113B40: var_D0 = 0
  loc_1113B4C: LateIdCallSt
  loc_1113B56: Set var_8C = Nothing 
  loc_1113B5A: Exit Sub
End Sub

Public Sub Proc_123_71_E43F88
  'Data Table: 5727D4
  loc_E43F64: Set var_88 = Me.TopCtrl1
  loc_E43F6A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E43F83: If (CStr() = "Browse") Then
  loc_E43F86:   Exit Sub
  loc_E43F87: End If
  loc_E43F87: Exit Sub
End Sub

Public Sub Proc_123_72_12D0D8C(arg_C) '12D0D8C
  'Data Table: 5727D4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_92 As Integer
  Dim var_120 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_140 As Variant
  Dim var_BC As String
  Dim var_158 As TextBox
  Dim var_144 As Variant
  Dim var_16C As Variant
  Dim var_154 As Variant
  Dim var_130 As Variant
  loc_12D0718: If (arg_C = 1) Then
  loc_12D072E:   var_AC = CLng(Me.FGrid.Col)
  loc_12D073E:   If (var_AC = CLng(1)) Then
  loc_12D0761:     var_B2 = Me.EOF
  loc_12D078F:     Set var_98 = Me.TxtGrid
  loc_12D0795:     Call 0.Method_Proc_123_72_12D0D8C0 (arg_C, var_B8, var_BC)
  loc_12D079D:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_12D07B5:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_12D07CB:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D07D3:       var_EC = CVar(CLng(1)) 'Long
  loc_12D07D8:       var_10C = vbNullString
  loc_12D07E2:       Set var_B8 = Me.FGrid
  loc_12D07E8:       LateIdCallSt
  loc_12D080D:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D0815:       var_EC = CVar(CLng(7)) 'Long
  loc_12D081A:       var_10C = vbNullString
  loc_12D0824:       Set var_B8 = Me.FGrid
  loc_12D082A:       LateIdCallSt
  loc_12D083F:     Else
  loc_12D0842:       Call Proc_123_81_FBB8A4(var_B2, var_B8, var_10C, var_EC, var_CC)
  loc_12D084D:       If (var_B2 = 0) Then
  loc_12D0855:         Proc_123_72_12D0D8C = 0
  loc_12D085B:       End If
  loc_12D086F:       var_92 = CInt(CLng(Me.FGrid.Row))
  loc_12D088B:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D0893:       var_FC = CVar(CLng(1)) 'Long
  loc_12D08C6:       var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12D08CE:       Set var_144 = Me.FGrid
  loc_12D08D4:       LateIdCallSt
  loc_12D0903:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D090B:       var_FC = CVar(CLng(7)) 'Long
  loc_12D092D:       var_B8 = Me.Fields.Item("Code")
  loc_12D093E:       var_140 = CVar(CStr(var_B8.Value)) 'String
  loc_12D0946:       Set var_144 = Me.FGrid
  loc_12D094C:       LateIdCallSt
  loc_12D096C:       var_CC = CVar(CLng(var_92)) 'Long
  loc_12D0974:       var_EC = CVar(CLng(0)) 'Long
  loc_12D097E:       var_A8 = CVar(CStr(var_92)) 'String
  loc_12D0986:       Set var_98 = Me.FGrid
  loc_12D098C:       LateIdCallSt
  loc_12D099A:     End If
  loc_12D099D:   Else
  loc_12D09A4:     If Not (var_AC = CLng(3)) Then
  loc_12D09AE:       If (var_AC = CLng(5)) Then
  loc_12D09B1:       End If
  loc_12D09C4:       Call 0.Method_Proc_123_72_12D0D8C0 (arg_C, var_B8, var_BC, Me.TxtGrid, var_A8, var_EC, var_CC)
  loc_12D09CC:       var_144 = var_B8.Text
  loc_12D09E2:       var_140 = Len(Trim(CVar(var_BC)))
  loc_12D09FC:       If (var_140 = 0) Then
  loc_12D0A11:         Set var_98 = Me.TxtGrid
  loc_12D0A17:         Call 0.Method_Proc_123_72_12D0D8C0 (arg_C, var_B8, CStr(MemVar_1F920EC), var_140, var_FC)
  loc_12D0A1F:         var_B8.Text = var_DC
  loc_12D0A31:       Else
  loc_12D0A3B:         Set var_98 = Me.TxtGrid
  loc_12D0A41:         Call 0.Method_Proc_123_72_12D0D8C0 (arg_C, var_B8, var_144)
  loc_12D0A61:         Set var_144 = Me.TxtGrid
  loc_12D0A67:         Call 0.Method_Proc_123_72_12D0D8C0 (arg_C, var_158)
  loc_12D0A6F:         var_158.Text = Proc_6_33_1512840(var_B8, var_140)
  loc_12D0A82:       End If
  loc_12D0A90:       Set var_120 = Me.txt
  loc_12D0A96:       Call 0.Method_Proc_123_72_12D0D8C0 (CInt(1), var_144)
  loc_12D0AB0:       Set var_98 = Me.TxtGrid
  loc_12D0AB6:       Call 0.Method_Proc_123_72_12D0D8C0 (arg_C, var_B8)
  loc_12D0AE0:       If (CDate(var_B8.Text) < CDate(var_144.Text)) Then
  loc_12D0B04:         MsgBox("Please check Function Date.", &H40, "Error...", var_140, var_154)
  loc_12D0B18:         Set var_98 = Me.FGrid
  loc_12D0B29:         Proc_123_72_12D0D8C = FGrid.DispID_8001
  loc_12D0B2F:       End If
  loc_12D0B37:       If (arg_C = CInt(5)) Then
  loc_12D0B44:         var_140 = Me.FGrid.Row
  loc_12D0B4D:         var_10C = CVar(CLng(var_140)) 'Long
  loc_12D0B55:         var_16C = CVar(CLng(3)) 'Long
  loc_12D0B64:         var_154 = Me.FGrid.TextMatrix)
  loc_12D0B83:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D0B8B:         var_EC = CVar(CLng(5)) 'Long
  loc_12D0B94:         Set var_B8 = Me.FGrid
  loc_12D0B9A:         var_130 = var_B8.TextMatrix)
  loc_12D0BA5:         var_BC = CStr(var_130)
  loc_12D0BD1:         If (CDate(var_BC) < CDate(CStr(var_154))) Then
  loc_12D0BED:           MsgBox("To Date and Time Must be Greater than From Date and Time", &H40, var_130, var_140, var_154)
  loc_12D0C02:           Proc_123_72_12D0D8C = 0
  loc_12D0C08:         End If
  loc_12D0C08:       End If
  loc_12D0C45:       Set var_98 = Me.TxtGrid
  loc_12D0C4B:       Call 0.Method_Proc_123_72_12D0D8C0 (arg_C, var_B8, var_BC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(Me.FGrid.Col)))
  loc_12D0C53:       var_CC = var_B8.Text
  loc_12D0C5B:       var_140 = CVar(var_BC) 'String
  loc_12D0C69:       LateIdCallSt
  loc_12D0CCE:       var_140 = Me.FGrid.Row
  loc_12D0CEE:       var_154 = Me.FGrid.TextMatrix)
  loc_12D0D1F:       If (CVar(CLng(6)) And (CStr(var_154) <> vbNullString)) Then
  loc_12D0D25:         Call Proc_123_82_138DE44(var_B2, CVar(CLng(var_140)), (CStr(Me.FGrid.TextMatrix)) <> vbNullString), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_12D0D30:         If (var_B2 = 0) Then
  loc_12D0D54:           MsgBox("Please check To Date.", &H40, "Error...", var_140, var_154)
  loc_12D0D68:           Set var_98 = Me.FGrid
  loc_12D0D79:           Proc_123_72_12D0D8C = FGrid.DispID_8001
  loc_12D0D7F:         End If
  loc_12D0D7F:       End If
  loc_12D0D7F:     End If
  loc_12D0D7F:   End If
  loc_12D0D7F: End If
  loc_12D0D84: Proc_123_72_12D0D8C = &HFF
End Sub

Public Sub Proc_123_73_16C3C34
  'Data Table: 5727D4
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim unk_5727EB As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_8C As Recordset15
  Dim var_12C As TextBox
  Dim var_1EC As Recordset15
  Dim var_92 As Integer
  Dim var_124 As Variant
  loc_16C2284: On Error Goto loc_16C3C2D
  loc_16C229F: Me.LblBillRemark.Caption = vbNullString
  loc_16C22BE: If (Me.RecordCount > 0) Then
  loc_16C22CE:   var_D0 = "SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName, BA.Name as BookingAgentName FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode LEFT JOIN SubGroup BA ON S.BookingAgent = BA.SubCode Where S.Docid='"
  loc_16C2317:   unk_5727EB.Execute CStr(var_D0 & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_16C2322:   Set var_88 = var_128
  loc_16C23DF:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16C2424:   Me.LblUser.Caption = CStr(0 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_16C2496:   var_128 = var_88.Fields
  loc_16C249E:   var_12C = var_128.Item("U_AE")
  loc_16C24B7:   var_124 = "entdt : "
  loc_16C24FF:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C)) = "E"), "Last Update : ", var_124))
  loc_16C2544:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_16C25BB:   var_E0 = "SELECT VNo FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & Me.Fields.Item("SearchCode").Value 
  loc_16C25D2:   unk_5727EB.Execute CStr(var_E0 & "'"), var_124, -1
  loc_16C25DD:   Set var_8C = var_128
  loc_16C260B:   If (var_8C.RecordCount > 0) Then
  loc_16C2634:     Proc_6_39_E7C810(var_E0, CVar(var_8C.Fields.Item("VNo")))
  loc_16C2641:     global_140 = CLng(var_E0)
  loc_16C2689:     Set var_128 = Me.LblBillRemark
  loc_16C268F:     var_128.Caption = CStr("Banquet Bill No. " & var_8C.Fields.Item("VNo").Value)
  loc_16C26A7:   End If
  loc_16C26B4:   var_D0 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_16C26FA:   unk_5727EB.Execute CStr("Banquet Bill No. " & var_88.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_16C2705:   Set var_8C = var_128
  loc_16C2765:   If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_16C2782:     var_B0 = var_8C.Fields.Item("Advance")
  loc_16C27A7:     Call 0.Method_Proc_123_73_16C3C340 (CInt(&H20), var_12C, CStr(var_B0.Value))
  loc_16C27AF:     var_12C.Text = Me.txt
  loc_16C27C8:   Else
  loc_16C27D6:     Set var_98 = Me.txt
  loc_16C27DC:     Call 0.Method_Proc_123_73_16C3C340 (CInt(&H20), var_B0, "0.00")
  loc_16C27E4:     var_B0.Text = global_140
  loc_16C27F0:   End If
  loc_16C27F3:   Set var_1EC = var_88 
  loc_16C2830:   Set var_128 = Me.txt
  loc_16C2836:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H22), var_12C)
  loc_16C283E:   var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_16C288D:   Set var_128 = Me.txt
  loc_16C2893:   Call 0.Method_Proc_123_73_16C3C340 (CInt(0), var_12C)
  loc_16C289B:   var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_16C28C8:   var_B0 = var_1EC.Fields.Item("VDate")
  loc_16C2903:   Set var_128 = Me.txt
  loc_16C2909:   Call 0.Method_Proc_123_73_16C3C340 (CInt(1), var_12C, CStr(Format(CVar(var_B0), "DD/MMM/YYYY")))
  loc_16C2911:   var_12C.Text = 1
  loc_16C2936:   Set var_98 = Me.txt
  loc_16C293C:   Call 0.Method_Proc_123_73_16C3C340 (CInt(1), var_B0)
  loc_16C296B:   var_124 = Trim(Format(CVar(var_B0), "DDDD"))
  loc_16C2982:   Set var_128 = Me.txt
  loc_16C2988:   Call 0.Method_Proc_123_73_16C3C340 (CInt(2), var_12C, CStr(var_124), 1)
  loc_16C2990:   var_12C.Text = 1
  loc_16C29E4:   Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_16C2A31:   Set var_128 = Me.txt
  loc_16C2A37:   Call 0.Method_Proc_123_73_16C3C340 (CInt(3), var_12C, CStr(var_1EC.Fields.Item("PartyName").Value))
  loc_16C2A3F:   var_12C.Text = 1
  loc_16C2A8E:   Set var_128 = Me.txt
  loc_16C2A94:   Call 0.Method_Proc_123_73_16C3C340 (CInt(3), var_12C)
  loc_16C2A9C:   var_12C.Tag = CStr(var_1EC.Fields.Item("InquiryCode").Value)
  loc_16C2AEB:   Set var_128 = Me.txt
  loc_16C2AF1:   Call 0.Method_Proc_123_73_16C3C340 (CInt(4), var_12C)
  loc_16C2AF9:   var_12C.Text = CStr(var_1EC.Fields.Item("Add1").Value)
  loc_16C2B48:   Set var_128 = Me.txt
  loc_16C2B4E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(5), var_12C)
  loc_16C2B56:   var_12C.Text = CStr(var_1EC.Fields.Item("Add2").Value)
  loc_16C2BA5:   Set var_128 = Me.txt
  loc_16C2BAB:   Call 0.Method_Proc_123_73_16C3C340 (CInt(6), var_12C)
  loc_16C2BB3:   var_12C.Text = CStr(var_1EC.Fields.Item("City").Value)
  loc_16C2C02:   Set var_128 = Me.txt
  loc_16C2C08:   Call 0.Method_Proc_123_73_16C3C340 (CInt(7), var_12C)
  loc_16C2C10:   var_12C.Text = CStr(var_1EC.Fields.Item("PinCode").Value)
  loc_16C2C5F:   Set var_128 = Me.txt
  loc_16C2C65:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HB), var_12C)
  loc_16C2C6D:   var_12C.Text = CStr(var_1EC.Fields.Item("PanNo").Value)
  loc_16C2CBC:   Set var_128 = Me.txt
  loc_16C2CC2:   Call 0.Method_Proc_123_73_16C3C340 (CInt(8), var_12C)
  loc_16C2CCA:   var_12C.Text = CStr(var_1EC.Fields.Item("ContactNo_Res").Value)
  loc_16C2D19:   Set var_128 = Me.txt
  loc_16C2D1F:   Call 0.Method_Proc_123_73_16C3C340 (CInt(9), var_12C)
  loc_16C2D27:   var_12C.Text = CStr(var_1EC.Fields.Item("ContactNo_Off").Value)
  loc_16C2D76:   Set var_128 = Me.txt
  loc_16C2D7C:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HA), var_12C)
  loc_16C2D84:   var_12C.Text = CStr(var_1EC.Fields.Item("MobileNo").Value)
  loc_16C2DD0:   Set var_128 = Me.txt
  loc_16C2DD6:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H14), var_12C)
  loc_16C2DDE:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl1")))
  loc_16C2E28:   Set var_128 = Me.txt
  loc_16C2E2E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H15), var_12C)
  loc_16C2E36:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl2")))
  loc_16C2E80:   Set var_128 = Me.txt
  loc_16C2E86:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H16), var_12C)
  loc_16C2E8E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl3")))
  loc_16C2ED8:   Set var_128 = Me.txt
  loc_16C2EDE:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H17), var_12C)
  loc_16C2EE6:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl4")))
  loc_16C2F30:   Set var_128 = Me.txt
  loc_16C2F36:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H18), var_12C)
  loc_16C2F3E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl5")))
  loc_16C2F88:   Set var_128 = Me.txt
  loc_16C2F8E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H19), var_12C)
  loc_16C2F96:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl6")))
  loc_16C2FE0:   Set var_128 = Me.txt
  loc_16C2FE6:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H1A), var_12C)
  loc_16C2FEE:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MenuSpl7")))
  loc_16C3038:   Set var_128 = Me.txt
  loc_16C303E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HD), var_12C)
  loc_16C3046:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Func_Name")))
  loc_16C3090:   Set var_128 = Me.txt
  loc_16C3096:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HD), var_12C)
  loc_16C309E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("EventName")))
  loc_16C30E8:   Set var_128 = Me.txt
  loc_16C30EE:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HE), var_12C)
  loc_16C30F6:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MarketSeg")))
  loc_16C3140:   Set var_128 = Me.txt
  loc_16C3146:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HE), var_12C)
  loc_16C314E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("SegmentName")))
  loc_16C3198:   Set var_128 = Me.txt
  loc_16C319E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HF), var_12C)
  loc_16C31A6:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BussSource")))
  loc_16C31F0:   Set var_128 = Me.txt
  loc_16C31F6:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HF), var_12C)
  loc_16C31FE:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BussSourcename")))
  loc_16C3248:   Set var_128 = Me.txt
  loc_16C324E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HC), var_12C)
  loc_16C3256:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("companyCode")))
  loc_16C32A0:   Set var_128 = Me.txt
  loc_16C32A6:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&HC), var_12C)
  loc_16C32AE:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("CompanyName")))
  loc_16C32F8:   Set var_128 = Me.txt
  loc_16C32FE:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H23), var_12C)
  loc_16C3306:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BookingAgent")))
  loc_16C3350:   Set var_128 = Me.txt
  loc_16C3356:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H23), var_12C)
  loc_16C335E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BookingAgentName")))
  loc_16C33A8:   Set var_128 = Me.txt
  loc_16C33AE:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H1B), var_12C)
  loc_16C33B6:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("HouseKeep")))
  loc_16C3400:   Set var_128 = Me.txt
  loc_16C3406:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H1C), var_12C)
  loc_16C340E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("FrontOff")))
  loc_16C3458:   Set var_128 = Me.txt
  loc_16C345E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H1D), var_12C)
  loc_16C3466:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Engg")))
  loc_16C34B0:   Set var_128 = Me.txt
  loc_16C34B6:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H1E), var_12C)
  loc_16C34BE:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Security")))
  loc_16C3508:   Set var_128 = Me.txt
  loc_16C350E:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H1F), var_12C)
  loc_16C3516:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Chef")))
  loc_16C3560:   Set var_128 = Me.Txt1
  loc_16C3566:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H20), var_12C)
  loc_16C356E:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Board")))
  loc_16C35D4:   Set var_128 = Me.txt
  loc_16C35DA:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H10), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ExpAtt")), "0")))
  loc_16C35E2:   var_12C.Text = 1
  loc_16C364E:   Set var_128 = Me.txt
  loc_16C3654:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H11), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("GuarAtt")), "0")), 1)
  loc_16C365C:   var_12C.Text = 1
  loc_16C36C8:   Set var_128 = Me.txt
  loc_16C36CE:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H12), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("CoverRate")), "0.00")), 1)
  loc_16C36D6:   var_12C.Text = 1
  loc_16C372C:   Call 0.Method_Proc_123_73_16C3C340 (CInt(&H21), var_12C)
  loc_16C3734:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Remark")), 1)
  loc_16C374A:   Set var_1EC = Nothing 
  loc_16C375D:   Me.FGrid.Redraw = False
  loc_16C3778:   Me.FGrid.Rows = 1
  loc_16C3782:   var_92 = 1
  loc_16C37C4:   var_E0 = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("SearchCode").Value 
  loc_16C37DB:   unk_5727EB.Execute CStr(var_E0 & "'"), var_124, -1
  loc_16C37E6:   Set var_88 = Me.txt
  loc_16C3814:   If (var_88.RecordCount > 0) Then
  loc_16C3817:     ' Referenced from: 16C3B54
  loc_16C3826:     If Not(var_88.EOF) Then
  loc_16C3829:       var_AC = vbNullString
  loc_16C3833:       Set var_98 = Me.FGrid
  loc_16C384F:       var_AC = CVar(CLng(var_92)) 'Long
  loc_16C3857:       var_F0 = CVar(CLng(0)) 'Long
  loc_16C3861:       var_C0 = CVar(CStr(var_92)) 'String
  loc_16C3868:       LateIdCallSt
  loc_16C3877:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_16C387F:       var_114 = CVar(CLng(7)) 'Long
  loc_16C38AF:       var_E0 = CVar(CStr(var_88.Fields.Item("VenuCode").Value)) 'String
  loc_16C38B6:       LateIdCallSt
  loc_16C3905:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VenuName")), CVar(CLng(1)), CVar(CLng(var_92)), Me.FGrid, var_E0, CVar(CLng(1)), CVar(CLng(var_92)))) 'String
  loc_16C390C:       LateIdCallSt
  loc_16C3930:       Me.FGrid.Col = CVar(CLng(2))
  loc_16C394B:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_16C3963:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_16C397D:       Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_16C3989:       var_AC = CVar(CLng(var_92)) 'Long
  loc_16C3991:       var_F0 = CVar(CLng(2)) 'Long
  loc_16C3996:       var_140 = "ü"
  loc_16C399F:       LateIdCallSt
  loc_16C39AB:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_16C39B3:       var_114 = CVar(CLng(3)) 'Long
  loc_16C39E3:       var_E0 = CVar(CStr(var_88.Fields.Item("FromDate").Value)) 'String
  loc_16C39EA:       LateIdCallSt
  loc_16C3A04:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_16C3A0C:       var_114 = CVar(CLng(5)) 'Long
  loc_16C3A3C:       var_E0 = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_16C3A43:       LateIdCallSt
  loc_16C3A79:       var_F0 = CVar(CLng(var_92)) 'Long
  loc_16C3A81:       var_140 = CVar(CLng(4)) 'Long
  loc_16C3AAE:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromTime")), "HH:MM"))) 'String
  loc_16C3AB5:       LateIdCallSt
  loc_16C3AEB:       var_F0 = CVar(CLng(var_92)) 'Long
  loc_16C3AF3:       var_140 = CVar(CLng(6)) 'Long
  loc_16C3B20:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("ToTime")), "HH:MM"))) 'String
  loc_16C3B27:       LateIdCallSt
  loc_16C3B3F:       Set var_1F4 = Nothing 
  loc_16C3B49:       var_92 = (var_92 + 1)
  loc_16C3B4F:       var_88.MoveNext
  loc_16C3B54:       GoTo loc_16C3817
  loc_16C3B57:     End If
  loc_16C3B6A:     Me.FGrid.FixedRows = 1
  loc_16C3B72:   End If
  loc_16C3B80:   Me.FGrid.Redraw = True
  loc_16C3B8E:   If (var_92 = 1) Then
  loc_16C3BA4:     Me.FGrid.Rows = 1
  loc_16C3BCA:     var_C0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_92, var_1F4, var_124, 1, 1, var_140))) 'String
  loc_16C3BD2:     Set var_B0 = Me.FGrid
  loc_16C3BFF:     Me.FGrid.FixedRows = 1
  loc_16C3C07:   End If
  loc_16C3C0A: Else
  loc_16C3C0A:   Call Proc_123_75_FC7A64(FGrid.DispID_10000, var_C0, var_F0, var_1F4, var_124)
  loc_16C3C0F: End If
  loc_16C3C0F: Call Proc_123_77_FB8088(1, 1)
  loc_16C3C19: Set var_88 = Nothing
  loc_16C3C21: Set var_8C = Nothing
  loc_16C3C29: Set var_90 = Nothing
  loc_16C3C2C: Exit Sub
  loc_16C3C2D: ' Referenced from: 16C2284
  loc_16C3C2D: Proc_6_60_E62BC4(var_140)
  loc_16C3C32: Exit Sub
End Sub

Public Sub Proc_123_74_F94528
  'Data Table: 5727D4
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_5727EB As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F943E9: Set var_9C = Me.TopCtrl1
  loc_F943EF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(&HFF)
  loc_F943F7: var_B0 = CStr()
  loc_F94408: If (var_B0 = "Add") Then
  loc_F94438:   Set var_9C = Me.txt
  loc_F9443E:   Call 0.Method_Proc_123_74_F945280 (CInt(&H22), var_B4, var_B0, "Select Count(*) From HallBook Where DocID='", var_AC, -1)
  loc_F9445F:   unk_5727EB.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F9446F:    = var_D4.Item()
  loc_F94477:    = var_E8.Value
  loc_F944A4:   If (var_B4.Text.Fields > 0) Then
  loc_F944AD:     Call 0.Method_arg_50 (var_B0)
  loc_F944CE:     MsgBox("Duplicate FP. No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F944E4:     Call Proc_123_79_10E9320(MemVar_1F92044)
  loc_F944F7:     Set var_9C = Me.txt
  loc_F944FD:     Call 0.Method_Proc_123_74_F945280 (CInt(&H22), var_B4)
  loc_F94505:     var_B4.Text = var_B0
  loc_F94519:     Proc_123_74_F94528 = 0
  loc_F9451F:   End If
  loc_F9451F: End If
  loc_F9451F: Proc_123_74_F94528 = var_B0
End Sub

Public Sub Proc_123_75_FC7A64
  'Data Table: 5727D4
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_E8 As String
  Dim var_108 As Variant
  loc_FC78B9: Me.LblVPrefix.Caption = vbNullString
  loc_FC78CF: Set var_8C = Me.txt
  loc_FC78D5: Call 0.Method_Proc_123_75_FC7A64C (var_8E, var_86)
  loc_FC78E5: For var_92 =  To CByte((var_8E - 2)): CByte(0) = var_92 'Byte
  loc_FC78FB:   Set var_8C = Me.txt
  loc_FC7901:   Call 0.Method_Proc_123_75_FC7A640 (CInt(var_86), var_98)
  loc_FC7909:   var_98.Text = vbNullString
  loc_FC7925:   Set var_8C = Me.txt
  loc_FC792B:   Call 0.Method_Proc_123_75_FC7A640 (CInt(var_86), var_98)
  loc_FC7933:   var_98.Tag = vbNullString
  loc_FC7942: Next var_92 'Byte
  loc_FC7956: Set var_8C = Me.Txt1
  loc_FC795C: Call 0.Method_Proc_123_75_FC7A640 (CInt(&H20), var_98)
  loc_FC7964: var_98.Text = vbNullString
  loc_FC7988: Me.LblBillRemark.Caption = vbNullString
  loc_FC7990: Call Proc_123_70_1113B5C(0)
  loc_FC7995: var_A8 = 1
  loc_FC79A1: var_C8 = CVar(CLng(4)) 'Long
  loc_FC79A6: var_E8 = "00:00"
  loc_FC79B0: Set var_8C = Me.FGrid
  loc_FC79B6: LateIdCallSt
  loc_FC79C1: var_A8 = 1
  loc_FC79DC: Set var_8C = Me.FGrid
  loc_FC79E2: LateIdCallSt
  loc_FC7A00: Me.FGrid.Rows = 1
  loc_FC7A26: var_108 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), Me.FGrid, "00:00", CVar(CLng(6))))) 'String
  loc_FC7A2E: Set var_98 = Me.FGrid
  loc_FC7A5B: Me.FGrid.FixedRows = 1
  loc_FC7A63: Exit Sub
End Sub

Public Sub Proc_123_76_EEE3D0(arg_C) 'EEE3D0
  'Data Table: 5727D4
  Dim var_98 As TextBox
  loc_EEE30A: Set var_8C = Me.txt
  loc_EEE310: Call 0.Method_Proc_123_76_EEE3D0C (var_8E, var_86)
  loc_EEE320: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EEE336:   Set var_8C = Me.txt
  loc_EEE33C:   Call 0.Method_Proc_123_76_EEE3D00 (CInt(var_86), var_98)
  loc_EEE344:   var_98.Enabled = arg_C
  loc_EEE353: Next var_92 'Byte
  loc_EEE367: Set var_8C = Me.Txt1
  loc_EEE36D: Call 0.Method_Proc_123_76_EEE3D00 (CInt(&H20), var_98)
  loc_EEE375: var_98.Enabled = arg_C
  loc_EEE38E: Set var_8C = Me.txt
  loc_EEE394: Call 0.Method_Proc_123_76_EEE3D00 (CInt(&H22), var_98)
  loc_EEE39C: var_98.Enabled = False
  loc_EEE3B5: Set var_8C = Me.txt
  loc_EEE3BB: Call 0.Method_Proc_123_76_EEE3D00 (CInt(2), var_98)
  loc_EEE3C3: var_98.Enabled = False
  loc_EEE3CF: Exit Sub
End Sub

Public Sub Proc_123_77_FB8088
  'Data Table: 5727D4
  loc_FB7EF0: If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_FB7F02:   Me.DGVenue.Visible = False
  loc_FB7F0A: End If
  loc_FB7F26: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_FB7F38:   Me.DGMarketSeg.Visible = False
  loc_FB7F40: End If
  loc_FB7F5C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB7F6E:   Me.FGPoint.Visible = False
  loc_FB7F76: End If
  loc_FB7F92: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_FB7FA4:   Me.DGSource.Visible = False
  loc_FB7FAC: End If
  loc_FB7FC8: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_FB7FDA:   Me.DGFuncType.Visible = False
  loc_FB7FE2: End If
  loc_FB7FFE: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FB8010:   Me.DGParty.Visible = False
  loc_FB8018: End If
  loc_FB8034: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB8046:   Me.DGCompany.Visible = False
  loc_FB804E: End If
  loc_FB806A: If (CBool(Me.DGBookingAgent.Visible) = &HFF) Then
  loc_FB807C:   Me.DGBookingAgent.Visible = False
  loc_FB8084: End If
  loc_FB8084: Exit Sub
End Sub

Public Sub Proc_123_78_F0990C
  'Data Table: 5727D4
  loc_F09830: Call Proc_123_77_FB8088()
  loc_F09840: Set var_88 = Me.txt
  loc_F09846: Call 0.Method_Proc_123_78_F0990C0 (CInt(1))
  loc_F0986F: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F09872:   Exit Sub
  loc_F09873: End If
  loc_F0987E: Set var_88 = Me.txt
  loc_F09884: Call 0.Method_Proc_123_78_F0990C0 (CInt(0), var_8C)
  loc_F098AD: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F098B0:   Exit Sub
  loc_F098B1: End If
  loc_F098E8: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F098EB:   Call TopCtrl1_UnknownEvent_16()
  loc_F098F3: Else
  loc_F098F9:   Call 0.Method_arg_1E8 (var_88)
  loc_F09901:   Call var_88.SetFocus
  loc_F0990A: End If
  loc_F0990A: Exit Sub
End Sub

Public Sub Proc_123_79_10E9320
  'Data Table: 5727D4
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
  loc_10E9048: var_90 = global_104
  loc_10E905F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E9090: Set var_A8 = Me.txt
  loc_10E9096: Call 0.Method_Proc_123_79_10E93200 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E90A5: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10E90AD: var_EC = -1 & var_CC 
  loc_10E90C1: Me.txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E90CC: Set var_8C = var_134
  loc_10E9108: If (var_8C.RecordCount > 0) Then
  loc_10E9147:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E917B:     global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E91A6:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E91BB:     var_CC = (var_AC.Value + 1)
  loc_10E91C3:     global_112 = CInt(var_CC)
  loc_10E91D4:   End If
  loc_10E91D4: End If
  loc_10E91FF: var_BC = Space((5 - Len(var_90)))
  loc_10E9207: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E921B: var_EC = Space((5 - Len(global_108)))
  loc_10E9223: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E9230: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_108))
  loc_10E9249: var_14C = Space((8 - Len(CStr(global_112))))
  loc_10E9251: var_15C = (var_130 + var_14C)
  loc_10E9260: var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10E926B: global_100 = CStr(var_17C)
  loc_10E92A1: Me.LblVPrefix.Caption = global_108
  loc_10E92BA: Set var_A8 = Me.txt
  loc_10E92C0: Call 0.Method_Proc_123_79_10E93200 (CInt(&H22), var_AC)
  loc_10E92C8: var_AC.Text = global_100
  loc_10E92EA: Set var_A8 = Me.txt
  loc_10E92F0: Call 0.Method_Proc_123_79_10E93200 (CInt(0), var_AC)
  loc_10E92F8: var_AC.Text = CStr(global_112)
  loc_10E930D: var_88 = global_100
  loc_10E9315: Set var_8C = Nothing
  loc_10E9318: Proc_123_79_10E9320 = global_112
End Sub

Public Sub Proc_123_80_10B7280(arg_C, arg_10, arg_14) '10B7280
  'Data Table: 5727D4
  Dim unk_5727EB As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B6FEE: If (arg_C = "HSBK") Then
  loc_10B7015:   unk_5727EB.Execute "Select Distinct DocId,V_Type,V_No From HallBook Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B7020:   Set var_8C = var_C4
  loc_10B7033:   var_94 = "Hall Booking"
  loc_10B7039: Else
  loc_10B703E:   Proc_123_80_10B7280 = &HFF
  loc_10B7044: End If
  loc_10B7058: If (var_8C.RecordCount > 0) Then
  loc_10B705B:   ' Referenced from: 10B71D4
  loc_10B706A:   If Not(var_8C.EOF) Then
  loc_10B7075:     If (var_90 = vbNullString) Then
  loc_10B70B8:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B70BF:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B70F1:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B7116:     Else
  loc_10B7152:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B7172:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B719F:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B71A4:       var_90 = CStr(var_11C)
  loc_10B71CC:     End If
  loc_10B71CF:     var_8C.MoveNext
  loc_10B71D4:     GoTo loc_10B705B
  loc_10B71D7:   End If
  loc_10B71DD:   Call 0.Method_arg_50 (var_138)
  loc_10B7239:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B723C:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B726B:   Set var_8C = Nothing
  loc_10B726E:   Proc_123_80_10B7280 = 0
  loc_10B7274: End If
  loc_10B7279: Proc_123_80_10B7280 = &HFF
End Sub

Public Sub Proc_123_81_FBB8A4
  'Data Table: 5727D4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBB727: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBB72C:   var_92 = 1 'Byte
  loc_FBB730: End If
  loc_FBB739: Set var_98 = Me.TxtGrid
  loc_FBB73F: Call 0.Method_Proc_123_81_FBB8A40 (1, var_B0)
  loc_FBB762: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBB796: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBB7BA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBB7BD:     GoTo loc_FBB88F
  loc_FBB7C0:   End If
  loc_FBB7C4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBB7EE:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBB7F8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBB82D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBB851:     MsgBox("Duplicate Venue Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBB86A:     Set var_98 = Me.TxtGrid
  loc_FBB870:     Call 0.Method_Proc_123_81_FBB8A40 (1, var_B0, CVar(CLng(var_92)))
  loc_FBB878:     var_B0.SetFocus
  loc_FBB889:     Proc_123_81_FBB8A4 = 0
  loc_FBB88F:     ' Referenced from: FBB7BD
  loc_FBB88F:   End If
  loc_FBB892: Next var_D4 'Integer
  loc_FBB89C: Proc_123_81_FBB8A4 = &HFF
End Sub

Public Sub Proc_123_82_138DE44
  'Data Table: 5727D4
  Dim var_A0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_174 As String
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1DC As Variant
  Dim var_1E0 As String
  Dim var_1E4 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_238 As Variant
  Dim var_24C As String
  Dim var_270 As Variant
  Dim var_86 As Integer
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_15C As Integer
  Dim var_2BC As String
  Dim var_13C As String
  Dim unk_5727EB As Connection15
  loc_138D5CF: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D5D7: var_E0 = CVar(CLng(7)) 'Long
  loc_138D5F1: var_108 = CStr(Me.FGrid.TextMatrix))
  loc_138D60C: var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D614: var_14C = CVar(CLng(3)) 'Long
  loc_138D62E: var_174 = CStr(Me.FGrid.TextMatrix))
  loc_138D64A: var_198 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D652: var_1B8 = CVar(CLng(4)) 'Long
  loc_138D661: var_1DC = Me.FGrid.TextMatrix)
  loc_138D66C: var_1E0 = CStr(var_1DC)
  loc_138D67F: var_1F4 = Me.FGrid.Row
  loc_138D688: var_204 = CVar(CLng(var_1F4)) 'Long
  loc_138D690: var_224 = CVar(CLng(5)) 'Long
  loc_138D699: Set var_238 = Me.FGrid
  loc_138D6AA: var_24C = CStr(var_238.TextMatrix))
  loc_138D6C6: var_270 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D72C: If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_138D742:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D74A:   var_14C = CVar(CLng(5)) 'Long
  loc_138D753:   Set var_160 = Me.FGrid
  loc_138D759:   var_170 = var_160.TextMatrix)
  loc_138D778:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D780:   var_E0 = CVar(CLng(3)) 'Long
  loc_138D7A3:   var_174 = CStr(var_170)
  loc_138D7C6:   If (CDate(CStr(Me.FGrid.TextMatrix))) > CDate(var_174)) Then
  loc_138D7CE:     Proc_123_82_138DE44 = 0
  loc_138D7D4:   End If
  loc_138D7E2:   Set var_10C = Me.txt
  loc_138D7E8:   Call 0.Method_Proc_123_82_138DE440 (CInt(1), var_160, var_174, var_E0, var_C0, var_170, var_14C)
  loc_138D7F0:   var_12C = var_160.Text
  loc_138D803:   Set var_1E4 = Me.txt
  loc_138D809:   Call 0.Method_Proc_123_82_138DE440 (CInt(1), var_238, var_24C, var_270, (var_224 And (var_24C <> vbNullString)))
  loc_138D811:   var_204 = var_238.Text
  loc_138D829:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D831:   var_E0 = CVar(CLng(3)) 'Long
  loc_138D840:   var_104 = Me.FGrid.TextMatrix)
  loc_138D84B:   var_108 = CStr(var_104)
  loc_138D860:   var_11C = Me.FGrid.Row
  loc_138D869:   var_12C = CVar(CLng(var_11C)) 'Long
  loc_138D880:   var_170 = Me.FGrid.TextMatrix)
  loc_138D8C0:   If (CVar(CLng(5)) Or (CDate(CStr(var_170)) < CDate(var_24C))) Then
  loc_138D8E1:     MsgBox("Check Booking Entry Date", &H40, var_104, var_11C, var_170)
  loc_138D8F1:     Proc_123_82_138DE44 = 0
  loc_138D8F7:   End If
  loc_138D90A:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D912:   var_E0 = CVar(CLng(3)) 'Long
  loc_138D933:   var_174 = CStr(Me.FGrid.TextMatrix)) & " "
  loc_138D949:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D974:   var_90 = CDate(CVar(CLng(4)) & CStr(Me.FGrid.TextMatrix)))
  loc_138D9AB:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D9B3:   var_E0 = CVar(CLng(5)) 'Long
  loc_138D9BC:   Set var_F4 = Me.FGrid
  loc_138D9D4:   var_174 = CStr(var_F4.TextMatrix)) & " "
  loc_138D9EA:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138D9FB:   Set var_160 = Me.FGrid
  loc_138DA15:   var_98 = CDate(CVar(CLng(6)) & CStr(var_160.TextMatrix)))
  loc_138DA3D:   Set var_A0 = Me.TopCtrl1
  loc_138DA43:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_98)
  loc_138DA4B:   var_108 = CStr(var_12C)
  loc_138DA5C:   If (var_108 = "Add") Then
  loc_138DA62:     var_9C = vbNullString
  loc_138DA68:   Else
  loc_138DA79:     Set var_A0 = Me.txt
  loc_138DA7F:     Call 0.Method_Proc_123_82_138DE440 (CInt(&H22), var_F4, var_108, "S.FPDocid<>'", var_174, var_E0, var_C0)
  loc_138DA87:     var_90 = var_F4.Text
  loc_138DA97:     var_9C = var_12C & var_108 & "' AND "
  loc_138DAA8:   End If
  loc_138DABB:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138DAC3:   var_E0 = CVar(CLng(7)) 'Long
  loc_138DAD2:   var_104 = Me.FGrid.TextMatrix)
  loc_138DAE4:   var_15C = 0
  loc_138DB21:   var_2BC = "Select COunt(*) From VenueOCC S WHERE LogSite_Code='" & MemVar_1F92078 & "' And " & var_9C & " VenuCode='" & CStr(var_104)
  loc_138DB28:   var_11C = CVar(var_2BC & "' and '") 'String
  loc_138DB32:   var_170 = var_11C & CDate(var_90) 
  loc_138DB36:   var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+convert(smalldatetime,ToTime) "
  loc_138DB49:   unk_5727EB.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_138DB51:   var_10C = var_10C.Fields
  loc_138DB59:   var_15C = var_160.Item(var_160)
  loc_138DB61:   var_178 = var_178.Value
  loc_138DBA0:   If (var_1F4 > 0) Then
  loc_138DBA5:     var_86 = 0
  loc_138DBC7:     MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check From Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_138DBEC:     Me.FGrid.Col = CVar(CLng(3))
  loc_138DC07:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138DC0F:     var_E0 = CVar(CLng(5)) 'Long
  loc_138DC14:     var_12C = vbNullString
  loc_138DC1E:     Set var_F4 = Me.FGrid
  loc_138DC24:     LateIdCallSt
  loc_138DC3A:     Set var_A0 = Me.FGrid
  loc_138DC4B:     Proc_123_82_138DE44 = FGrid.DispID_8001
  loc_138DC51:   End If
  loc_138DC64:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138DC6C:   var_E0 = CVar(CLng(7)) 'Long
  loc_138DC7B:   var_104 = Me.FGrid.TextMatrix)
  loc_138DC8D:   var_15C = 0
  loc_138DCCA:   var_2BC = "Select COunt(*) From VenueOCC S WHERE LogSite_Code='" & MemVar_1F92078 & "' And " & var_9C & " VenuCode='" & CStr(var_104)
  loc_138DCD1:   var_11C = CVar(var_2BC & "' and '") 'String
  loc_138DCDB:   var_170 = var_11C & CDate(var_98) 
  loc_138DCDF:   var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+Convert(smalldatetime,ToTime) "
  loc_138DCF2:   unk_5727EB.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_138DCFA:   var_10C = var_10C.Fields
  loc_138DD02:   var_15C = var_160.Item(var_160)
  loc_138DD0A:   var_178 = var_178.Value
  loc_138DD49:   If (var_1F4 > 0) Then
  loc_138DD4E:     var_86 = 0
  loc_138DD70:     MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check To Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_138DD95:     Me.FGrid.Col = CVar(CLng(5))
  loc_138DDB0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138DDB8:     var_E0 = CVar(CLng(5)) 'Long
  loc_138DDBD:     var_12C = vbNullString
  loc_138DDC7:     Set var_F4 = Me.FGrid
  loc_138DDCD:     LateIdCallSt
  loc_138DDE3:     Set var_A0 = Me.FGrid
  loc_138DDF4:     Proc_123_82_138DE44 = FGrid.DispID_8001
  loc_138DDFA:   End If
  loc_138DE01:   If (var_90 >= var_98) Then
  loc_138DE1D:     MsgBox("Check Booking Dates and Times", &H40, var_104, var_11C, var_170)
  loc_138DE32:     Proc_123_82_138DE44 = 0
  loc_138DE38:   End If
  loc_138DE38: End If
  loc_138DE3D: Proc_123_82_138DE44 = &HFF
End Sub

Public Sub Proc_123_83_105EE70(arg_C) '105EE70
  'Data Table: 5727D4
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CC As Variant
  Dim var_A4 As Variant
  Dim var_11C As Variant
  loc_105EC10: If (arg_C = 0) Then
  loc_105EC26:   var_A0 = CLng(Me.FGrid.Col)
  loc_105EC36:   If (var_A0 = CLng(6)) Then
  loc_105EC43:     Set var_8C = Me.txtMEd
  loc_105EC49:     Call 0.Method_Proc_123_83_105EE700 (arg_C, var_A4)
  loc_105EC63:     If (IsDate(CVar(var_A4)) = 0) Then
  loc_105EC6B:       Proc_123_83_105EE70 = 0
  loc_105EC71:     End If
  loc_105EC84:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105ECAB:     Set var_8C = Me.txtMEd
  loc_105ECB1:     Call 0.Method_Proc_123_83_105EE700 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_105ECCF:     LateIdCallSt
  loc_105ECF2:     Call Proc_123_82_138DE44(var_132, Me.FGrid, CVar(CStr(var_A4.defaultText)))
  loc_105ECFD:     If (var_132 = 0) Then
  loc_105ED05:       Proc_123_83_105EE70 = 0
  loc_105ED0B:     End If
  loc_105ED0E:   Else
  loc_105ED15:     If (var_A0 = CLng(4)) Then
  loc_105ED22:       Set var_8C = Me.txtMEd
  loc_105ED28:       Call 0.Method_Proc_123_83_105EE700 (arg_C, var_A4, var_CC)
  loc_105ED42:       If (IsDate(CVar(var_A4)) = 0) Then
  loc_105ED4A:         Proc_123_83_105EE70 = 0
  loc_105ED50:       End If
  loc_105ED63:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105ED8A:       Set var_8C = Me.txtMEd
  loc_105ED90:       Call 0.Method_Proc_123_83_105EE700 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_105EDA0:       var_11C = CVar(CStr(var_A4.defaultText)) 'String
  loc_105EDAE:       LateIdCallSt
  loc_105EDF2:       Set var_A4 = Me.FGrid
  loc_105EE1C:       If (CStr(var_A4.TextMatrix)) <> vbNullString) Then
  loc_105EE22:         Call Proc_123_82_138DE44(var_132, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_105EE2D:         If (var_132 = 0) Then
  loc_105EE35:           Proc_123_83_105EE70 = 0
  loc_105EE3B:         End If
  loc_105EE3B:       End If
  loc_105EE3B:     End If
  loc_105EE3B:   End If
  loc_105EE3B: End If
  loc_105EE3B: var_CC = False
  loc_105EE49: Set var_8C = Me.txtMEd
  loc_105EE4F: Call 0.Method_Proc_123_83_105EE700 (0, var_A4, var_CC, var_11C)
  loc_105EE57: var_A4.Visible = var_CC
  loc_105EE68: Proc_123_83_105EE70 = &HFF
End Sub

Public Sub Proc_123_84_14C2A00
  'Data Table: 5727D4
  Dim var_90 As String
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_5727EB As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_D4 As Recordset15
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Variant
  Dim var_148 As Integer
  Dim var_108 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_CC As Variant
  Dim var_9C As String
  Dim var_164 As TextBox
  Dim var_138 As Variant
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_14C1CF0: var_90 = "SELECT  BookingInquiry.Code, BookingInquiry.CatType, BookingInquiry.PartyName, BookingInquiry.Add1, BookingInquiry.Add2, BookingInquiry.City, BookingInquiry.PhoneR, BookingInquiry.PhoneO, BookingInquiry.MobileNo, BookingInquiry.FaxNo, BookingInquiry.ConPerson, BookingInquiry.BookedBy, BookingInquiry.FuncType AS FuncType, BookingInquiry.FuncDate, BookingInquiry.HandledBy, BookingInquiry.BussSource AS BussSource, BookingInquiry.Status, BookingInquiry.MarketSeg AS MarketSeg, BookingInquiry.Pax, BookingInquiry.GurrPax, BookingInquiry.RatePax, BookingInquiry.VenueCode, BookingInquiry.Site_Code FROM BookingInquiry WHERE LogSite_Code='" & MemVar_1F92078
  loc_14C1D08: Set var_94 = Me.txt
  loc_14C1D0E: Call 0.Method_Proc_123_84_14C2A000 (CInt(3), var_98, var_9C, var_90 & "' And PartyName='")
  loc_14C1D16: var_C8 = var_98.Text
  loc_14C1D1F: var_A4 = -1 & var_9C
  loc_14C1D2F: unk_5727EB.Execute var_A4 & "' and BookingInquiry.code not in (select InquiryCode from HallBook)", var_CC, 
  loc_14C1D3A: Set var_88 = var_CC
  loc_14C1D6A: If (var_88.RecordCount > 0) Then
  loc_14C1D70:   Set var_D4 = var_88 
  loc_14C1DAD:   Set var_CC = Me.txt
  loc_14C1DB3:   Call 0.Method_Proc_123_84_14C2A000 (CInt(3), var_D8)
  loc_14C1DBB:   var_D8.Tag = CStr(var_D4.Fields.Item("Code").Value)
  loc_14C1E0A:   Set var_CC = Me.txt
  loc_14C1E10:   Call 0.Method_Proc_123_84_14C2A000 (CInt(3), var_D8)
  loc_14C1E18:   var_D8.Text = CStr(var_D4.Fields.Item("PartyName").Value)
  loc_14C1E64:   Set var_CC = Me.txt
  loc_14C1E6A:   Call 0.Method_Proc_123_84_14C2A000 (CInt(4), var_D8)
  loc_14C1E72:   var_D8.Text = Proc_6_38_E68A98(CVar(var_D4.Fields.Item("Add1")))
  loc_14C1EBC:   Set var_CC = Me.txt
  loc_14C1EC2:   Call 0.Method_Proc_123_84_14C2A000 (CInt(5), var_D8)
  loc_14C1ECA:   var_D8.Text = Proc_6_38_E68A98(CVar(var_D4.Fields.Item("Add2")))
  loc_14C1F14:   Set var_CC = Me.txt
  loc_14C1F1A:   Call 0.Method_Proc_123_84_14C2A000 (CInt(6), var_D8)
  loc_14C1F22:   var_D8.Text = Proc_6_38_E68A98(CVar(var_D4.Fields.Item("City")))
  loc_14C1F6C:   Set var_CC = Me.txt
  loc_14C1F72:   Call 0.Method_Proc_123_84_14C2A000 (CInt(9), var_D8)
  loc_14C1F7A:   var_D8.Text = Proc_6_38_E68A98(CVar(var_D4.Fields.Item("PhoneO")))
  loc_14C1FC4:   Set var_CC = Me.txt
  loc_14C1FCA:   Call 0.Method_Proc_123_84_14C2A000 (CInt(8), var_D8)
  loc_14C1FD2:   var_D8.Text = Proc_6_38_E68A98(CVar(var_D4.Fields.Item("PhoneR")))
  loc_14C201C:   Set var_CC = Me.txt
  loc_14C2022:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&HA), var_D8)
  loc_14C202A:   var_D8.Text = Proc_6_38_E68A98(CVar(var_D4.Fields.Item("MobileNo")))
  loc_14C2055:   var_98 = var_D4.Fields.Item("FuncType")
  loc_14C2074:   Set var_CC = Me.txt
  loc_14C207A:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&HD), var_D8)
  loc_14C2082:   var_D8.Tag = Proc_6_38_E68A98(CVar(var_98))
  loc_14C20A4:   Set var_94 = Me.txt
  loc_14C20AA:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&HD), var_98)
  loc_14C20DE:   If CBool(Trim(CVar(var_98.Tag)) <> vbNullString) Then
  loc_14C20E4:     var_148 = 0
  loc_14C2140:     unk_5727EB.Execute CStr("SELECT NAME from FunctionType WHERE Code='" & var_D4.Fields.Item("FuncType").Value & "'"), var_138, -1
  loc_14C2148:     var_CC = var_CC.Fields
  loc_14C2150:     var_148 = var_D8.Item(var_D8)
  loc_14C216F:     Set var_160 = Me.txt
  loc_14C2175:     Call 0.Method_Proc_123_84_14C2A000 (CInt(&HD), var_164)
  loc_14C217D:     var_164.Text = Proc_6_38_E68A98(CVar(var_14C))
  loc_14C21A5:   End If
  loc_14C21BC:   var_98 = var_D4.Fields.Item("BussSource")
  loc_14C21DB:   Set var_CC = Me.txt
  loc_14C21E1:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&HF), var_D8)
  loc_14C21E9:   var_D8.Tag = Proc_6_38_E68A98(CVar(var_98))
  loc_14C220B:   Set var_94 = Me.txt
  loc_14C2211:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&HF), var_98)
  loc_14C2245:   If CBool(Trim(CVar(var_98.Tag)) <> vbNullString) Then
  loc_14C224B:     var_148 = 0
  loc_14C22A7:     unk_5727EB.Execute CStr("SELECT NAME from BussSource WHERE Code='" & var_D4.Fields.Item("BussSource").Value & "'"), var_138, -1
  loc_14C22AF:     var_CC = var_CC.Fields
  loc_14C22B7:     var_148 = var_D8.Item(var_D8)
  loc_14C22D6:     Set var_160 = Me.txt
  loc_14C22DC:     Call 0.Method_Proc_123_84_14C2A000 (CInt(&HF), var_164)
  loc_14C22E4:     var_164.Text = Proc_6_38_E68A98(CVar(var_14C), var_14C)
  loc_14C230C:   End If
  loc_14C2323:   var_98 = var_D4.Fields.Item("MarketSeg")
  loc_14C2342:   Set var_CC = Me.txt
  loc_14C2348:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&HE), var_D8)
  loc_14C2350:   var_D8.Tag = Proc_6_38_E68A98(CVar(var_98))
  loc_14C2372:   Set var_94 = Me.txt
  loc_14C2378:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&HE), var_98)
  loc_14C23AC:   If CBool(Trim(CVar(var_98.Tag)) <> vbNullString) Then
  loc_14C23B2:     var_148 = 0
  loc_14C23F7:     var_E8 = "SELECT NAME from MarketSeg WHERE Code='" & var_D4.Fields.Item("MarketSeg").Value 
  loc_14C240E:     unk_5727EB.Execute CStr(var_E8 & "'"), var_138, -1
  loc_14C2416:     var_CC = var_CC.Fields
  loc_14C241E:     var_148 = var_D8.Item(var_D8)
  loc_14C242F:     var_9C = Proc_6_38_E68A98(CVar(var_14C), var_14C)
  loc_14C243D:     Set var_160 = Me.txt
  loc_14C2443:     Call 0.Method_Proc_123_84_14C2A000 (CInt(&HE), var_164)
  loc_14C244B:     var_164.Text = var_9C
  loc_14C2473:   End If
  loc_14C2499:   Proc_6_39_E7C810(var_E8, CVar(var_D4.Fields.Item("Pax")))
  loc_14C24B0:   Set var_CC = Me.txt
  loc_14C24B6:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&H10), var_D8)
  loc_14C24BE:   var_D8.Text = CStr(var_E8)
  loc_14C24FC:   Proc_6_39_E7C810(var_E8, CVar(var_D4.Fields.Item("GurrPax")))
  loc_14C2513:   Set var_CC = Me.txt
  loc_14C2519:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&H11), var_D8)
  loc_14C2521:   var_D8.Text = CStr(var_E8)
  loc_14C2550:   var_98 = var_D4.Fields.Item("RatePax")
  loc_14C255F:   Proc_6_39_E7C810(var_E8, CVar(var_98))
  loc_14C2576:   Set var_CC = Me.txt
  loc_14C257C:   Call 0.Method_Proc_123_84_14C2A000 (CInt(&H12), var_D8)
  loc_14C2584:   var_D8.Text = CStr(var_E8)
  loc_14C25B0:   var_90 = "SELECT V.Name AS VenueName, B.* FROM BookingDetail B INNER JOIN VenueMast V ON B.VenueCode=V.Code WHERE B.LogSite_Code='" & MemVar_1F92078
  loc_14C25C8:   Set var_94 = Me.txt
  loc_14C25CE:   Call 0.Method_Proc_123_84_14C2A000 (CInt(3), var_98, var_9C, CVar(var_90 & "' And  B.Code='"))
  loc_14C25D6:   var_174 = var_98.Tag
  loc_14C25EC:   var_138 = -1 & Trim(CVar(var_9C)) 
  loc_14C2603:   unk_5727EB.Execute CStr(var_138 & "'"), var_CC, var_14C
  loc_14C260E:   Set var_88 = var_CC
  loc_14C2645:   Call Proc_123_70_1113B5C(Me.FGrid.Text)
  loc_14C265D:   Me.FGrid.Rows = 2
  loc_14C2679:   If (var_88.RecordCount < 0) Then
  loc_14C267C:     Exit Sub
  loc_14C267D:     ' Referenced from: 14C29EC
  loc_14C267D:   End If
  loc_14C268C:   If Not(var_88.EOF) Then
  loc_14C2695:     var_8A = (var_8A + 1)
  loc_14C26B1:     var_B8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C26B9:     var_118 = CVar(CLng(0)) 'Long
  loc_14C26C3:     var_E8 = CVar(CStr(var_8A)) 'String
  loc_14C26CB:     Set var_98 = Me.FGrid
  loc_14C26D1:     LateIdCallSt
  loc_14C2700:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C2708:     var_128 = CVar(CLng(7)) 'Long
  loc_14C2738:     var_F8 = CVar(CStr(var_88.Fields.Item("Venuecode").Value)) 'String
  loc_14C2740:     Set var_D8 = Me.FGrid
  loc_14C2746:     LateIdCallSt
  loc_14C277B:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C2783:     var_128 = CVar(CLng(1)) 'Long
  loc_14C27B3:     var_F8 = CVar(CStr(var_88.Fields.Item("VenueName").Value)) 'String
  loc_14C27BB:     Set var_D8 = Me.FGrid
  loc_14C27C1:     LateIdCallSt
  loc_14C27F6:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C27FE:     var_128 = CVar(CLng(3)) 'Long
  loc_14C282E:     var_F8 = CVar(CStr(var_88.Fields.Item("FuncDate").Value)) 'String
  loc_14C2836:     Set var_D8 = Me.FGrid
  loc_14C283C:     LateIdCallSt
  loc_14C2871:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C2879:     var_128 = CVar(CLng(5)) 'Long
  loc_14C28A9:     var_F8 = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_14C28B1:     Set var_D8 = Me.FGrid
  loc_14C28B7:     LateIdCallSt
  loc_14C28EC:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C28F4:     var_128 = CVar(CLng(4)) 'Long
  loc_14C2924:     var_F8 = CVar(CStr(var_88.Fields.Item("FuncTime").Value)) 'String
  loc_14C292C:     Set var_D8 = Me.FGrid
  loc_14C2932:     LateIdCallSt
  loc_14C2967:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C296F:     var_128 = CVar(CLng(6)) 'Long
  loc_14C299F:     var_F8 = CVar(CStr(var_88.Fields.Item("ToTime").Value)) 'String
  loc_14C29A7:     Set var_D8 = Me.FGrid
  loc_14C29AD:     LateIdCallSt
  loc_14C29C9:     var_B8 = vbNullString
  loc_14C29D3:     Set var_94 = Me.FGrid
  loc_14C29E7:     var_88.MoveNext
  loc_14C29EC:     GoTo loc_14C267D
  loc_14C29EF:   End If
  loc_14C29F1:   Set var_D4 = Nothing 
  loc_14C29F5: End If
  loc_14C29FA: Set var_88 = Nothing
  loc_14C29FD: Exit Sub
End Sub

Public Sub Proc_123_85_12F7F44
  'Data Table: 5727D4
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_12F786C: Set var_A4 = Me.txt
  loc_12F7872: Call 0.Method_Proc_123_85_12F7F440 (CInt(3), var_A8)
  loc_12F787A: var_A8.MaxLength = Me.Fields.Item("PartyName").DefinedSize
  loc_12F78C2: Set var_A4 = Me.txt
  loc_12F78C8: Call 0.Method_Proc_123_85_12F7F440 (CInt(4), var_A8)
  loc_12F78D0: var_A8.MaxLength = Me.Fields.Item("Add1").DefinedSize
  loc_12F7918: Set var_A4 = Me.txt
  loc_12F791E: Call 0.Method_Proc_123_85_12F7F440 (CInt(5), var_A8)
  loc_12F7926: var_A8.MaxLength = Me.Fields.Item("Add2").DefinedSize
  loc_12F796E: Set var_A4 = Me.txt
  loc_12F7974: Call 0.Method_Proc_123_85_12F7F440 (CInt(6), var_A8)
  loc_12F797C: var_A8.MaxLength = Me.Fields.Item("City").DefinedSize
  loc_12F79C4: Set var_A4 = Me.txt
  loc_12F79CA: Call 0.Method_Proc_123_85_12F7F440 (CInt(7), var_A8)
  loc_12F79D2: var_A8.MaxLength = Me.Fields.Item("PinCode").DefinedSize
  loc_12F7A1A: Set var_A4 = Me.txt
  loc_12F7A20: Call 0.Method_Proc_123_85_12F7F440 (CInt(&HB), var_A8)
  loc_12F7A28: var_A8.MaxLength = Me.Fields.Item("PanNo").DefinedSize
  loc_12F7A70: Set var_A4 = Me.txt
  loc_12F7A76: Call 0.Method_Proc_123_85_12F7F440 (CInt(9), var_A8)
  loc_12F7A7E: var_A8.MaxLength = Me.Fields.Item("ContactNo_oFF").DefinedSize
  loc_12F7AC6: Set var_A4 = Me.txt
  loc_12F7ACC: Call 0.Method_Proc_123_85_12F7F440 (CInt(8), var_A8)
  loc_12F7AD4: var_A8.MaxLength = Me.Fields.Item("ContactNo_Res").DefinedSize
  loc_12F7B1C: Set var_A4 = Me.Txt1
  loc_12F7B22: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H20), var_A8)
  loc_12F7B2A: var_A8.MaxLength = Me.Fields.Item("Board").DefinedSize
  loc_12F7B72: Set var_A4 = Me.txt
  loc_12F7B78: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H1F), var_A8)
  loc_12F7B80: var_A8.MaxLength = Me.Fields.Item("Chef").DefinedSize
  loc_12F7BC8: Set var_A4 = Me.txt
  loc_12F7BCE: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H1E), var_A8)
  loc_12F7BD6: var_A8.MaxLength = Me.Fields.Item("Security").DefinedSize
  loc_12F7C1E: Set var_A4 = Me.txt
  loc_12F7C24: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H1D), var_A8)
  loc_12F7C2C: var_A8.MaxLength = Me.Fields.Item("Engg").DefinedSize
  loc_12F7C74: Set var_A4 = Me.txt
  loc_12F7C7A: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H1C), var_A8)
  loc_12F7C82: var_A8.MaxLength = Me.Fields.Item("FrontOff").DefinedSize
  loc_12F7CCA: Set var_A4 = Me.txt
  loc_12F7CD0: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H1B), var_A8)
  loc_12F7CD8: var_A8.MaxLength = Me.Fields.Item("HouseKeep").DefinedSize
  loc_12F7D20: Set var_A4 = Me.txt
  loc_12F7D26: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H1A), var_A8)
  loc_12F7D2E: var_A8.MaxLength = Me.Fields.Item("MenuSpl7").DefinedSize
  loc_12F7D76: Set var_A4 = Me.txt
  loc_12F7D7C: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H19), var_A8)
  loc_12F7D84: var_A8.MaxLength = Me.Fields.Item("MenuSpl6").DefinedSize
  loc_12F7DCC: Set var_A4 = Me.txt
  loc_12F7DD2: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H18), var_A8)
  loc_12F7DDA: var_A8.MaxLength = Me.Fields.Item("MenuSpl5").DefinedSize
  loc_12F7E22: Set var_A4 = Me.txt
  loc_12F7E28: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H17), var_A8)
  loc_12F7E30: var_A8.MaxLength = Me.Fields.Item("MenuSpl4").DefinedSize
  loc_12F7E78: Set var_A4 = Me.txt
  loc_12F7E7E: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H16), var_A8)
  loc_12F7E86: var_A8.MaxLength = Me.Fields.Item("MenuSpl3").DefinedSize
  loc_12F7ECE: Set var_A4 = Me.txt
  loc_12F7ED4: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H15), var_A8)
  loc_12F7EDC: var_A8.MaxLength = Me.Fields.Item("MenuSpl2").DefinedSize
  loc_12F7F24: Set var_A4 = Me.txt
  loc_12F7F2A: Call 0.Method_Proc_123_85_12F7F440 (CInt(&H14), var_A8)
  loc_12F7F32: var_A8.MaxLength = Me.Fields.Item("MenuSpl1").DefinedSize
  loc_12F7F42: Exit Sub
End Sub

Public Sub Proc_123_86_15FC1A0(arg_C) '15FC1A0
  'Data Table: 5727D4
  Dim var_F8 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_5727EB As Connection15
  Dim var_E4 As Variant
  Dim var_E8 As Fields15
  Dim var_FC As Variant
  Dim var_B4 As Double
  Dim var_A8 As Recordset15
  Dim var_E0 As Variant
  Dim var_154 As Variant
  Dim var_10C As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_88 As Recordset15
  Dim var_328 As String
  Dim var_134 As Variant
  Dim var_32C As String
  Dim var_330 As String
  Dim var_334 As String
  loc_15FADEC: If (arg_C = vbNullString) Then
  loc_15FADEF:   Exit Sub
  loc_15FADF0: End If
  loc_15FADF0: On Error Goto loc_15FC197
  loc_15FADF9: var_F8 = 0
  loc_15FAE26: unk_5727EB.Execute "SELECT ISNULL(Sum(AmtCr),0) FROM PayChargeH WHERE VType='AD' AND ContraDocId='" & arg_C & "'", var_E0, -1
  loc_15FAE36: var_F8 = var_E8.Item(var_E8)
  loc_15FAE3E: var_FC = var_FC.Value
  loc_15FAE47: var_B4 = CSng(var_10C)
  loc_15FAE7C: var_C0 = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & arg_C & "'"
  loc_15FAE85: unk_5727EB.Execute var_C0, var_E0, -1
  loc_15FAE90: Set var_A8 = var_E4.Fields
  loc_15FAEA0: ' Referenced from: 15FB07A
  loc_15FAEAF: If Not(var_A8.EOF) Then
  loc_15FAF34:   var_E4 = var_A8.Fields
  loc_15FAF44:   var_E0 = CVar(var_E4.Item("VenuName")) 'Address
  loc_15FAF58:   var_154 = CVar(var_B4 & Proc_6_38_E68A98(var_E0, var_AC, var_E4) & " (") 'String
  loc_15FAF82:   var_164 = (1 + Format(CVar(var_A8.Fields.Item("FromDate")), "DD/MM/YY"))
  loc_15FAF8B:   var_184 = (var_164 + " ")
  loc_15FAFB6:   var_1EC = (1 + Format(CVar(var_A8.Fields.Item("FromTime")), "HH:MM"))
  loc_15FAFBF:   var_20C = (var_1EC + " To ")
  loc_15FAFEA:   var_274 = (1 + Format(CVar(var_A8.Fields.Item("ToDate")), "DD/MM/YY"))
  loc_15FAFF3:   var_294 = (var_274 + " ")
  loc_15FB01E:   var_2FC = (1 + Format(CVar(var_A8.Fields.Item("ToTime")), "HH:MM"))
  loc_15FB027:   var_31C = (var_2FC + ") ")
  loc_15FB02C:   var_AC = CStr(var_31C)
  loc_15FB075:   var_A8.MoveNext
  loc_15FB07A:   GoTo loc_15FAEA0
  loc_15FB07D: End If
  loc_15FB091: var_BC = "SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode Where S.Docid='" & arg_C
  loc_15FB0A1: unk_5727EB.Execute var_BC & "'", var_E0, -1
  loc_15FB0AC: Set var_A8 = var_E4
  loc_15FB0E0: unk_5727EB.Execute "Select BanqBookingMsg,BanqBookingCancelMsg,SendingMessageText from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E0, -1
  loc_15FB0EB: Set var_88 = var_E4
  loc_15FB10F: If (var_88.RecordCount > 0) Then
  loc_15FB121:   var_E4 = var_88.Fields
  loc_15FB149:   var_A4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Item("SendingMessageText")), var_E4, var_E4, 1, var_294, 1))))
  loc_15FB18F:   var_8C = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BanqBookingMsg")), var_20C, 1, var_184))))
  loc_15FB1AD:   var_E4 = var_88.Fields
  loc_15FB1BD:   var_E0 = CVar(var_E4.Item("BanqBookingCancelMsg")) 'Address
  loc_15FB1D5:   var_90 = CStr(Trim(CVar(Proc_6_38_E68A98(var_E0, 1))))
  loc_15FB1E4: End If
  loc_15FB1E7: var_B8 = "Booking"
  loc_15FB213: var_328 = "Select TxtMsg,MobileNo from EmailSMSForward WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And Type='" & var_B8 & "' And Len(MobileNo)>=10 And Len(TxtMsg)>0"
  loc_15FB21C: unk_5727EB.Execute var_328, var_E0, -1
  loc_15FB227: Set var_88 = var_E4
  loc_15FB24F: If (var_88.RecordCount > 0) Then
  loc_15FB261:   var_E4 = var_88.Fields
  loc_15FB289:   var_9C = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Item("MobileNo")), var_E4))))
  loc_15FB2CF:   var_94 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TxtMsg")), var_154))))
  loc_15FB2DE: End If
  loc_15FB2E3: Set var_88 = Nothing
  loc_15FB2FF: If ((var_A4 <> "Auto") And (Len(var_8C) <> 0)) Then
  loc_15FB34D:   var_A0 = Replace(var_A0, "<Booking No>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("VNo"))), 1, -1, 0)
  loc_15FB3BE:   var_A0 = Replace(var_A0, "<Booking Date>", CStr(Format(CVar(var_A8.Fields.Item("VDate")), "DD/MM/YY")), 1, -1, 0)
  loc_15FB41B:   var_A0 = Replace(var_A0, "<Party Name>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("PartyName")), 1), 1, -1, 0)
  loc_15FB4E0:   var_334 = Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Add1")), 1) & ", " & Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Add2"))) & ", " & Proc_6_38_E68A98(CVar(var_A8.Fields.Item("City")))
  loc_15FB4EE:   var_A0 = Replace(var_A0, "<Party Address>", var_334, 1, -1, 0)
  loc_15FB565:   var_A0 = Replace(var_A0, "<Company Name>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("CompanyName"))), 1, -1, 0)
  loc_15FB5C0:   var_A0 = Replace(var_A0, "<Function Type>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("EventName"))), 1, -1, 0)
  loc_15FB631:   var_A0 = Replace(var_A0, "<Exp Pax>", CStr(Format(CVar(var_A8.Fields.Item("ExpAtt")), "0")), 1, -1, 0)
  loc_15FB6A4:   var_A0 = Replace(var_A0, "<Gurr Pax>", CStr(Format(CVar(var_A8.Fields.Item("GuarAtt")), "0")), 1, -1, 0)
  loc_15FB717:   var_A0 = Replace(var_A0, "<Pax Rate>", CStr(Format(CVar(var_A8.Fields.Item("CoverRate")), "0.00")), 1, -1, 0)
  loc_15FB764:   var_134 = Format(CVar(var_A8.Fields.Item("NetAmount")), "0.00")
  loc_15FB78A:   var_A0 = Replace(var_A0, "<Net Amount>", CStr(var_134), 1, -1, 0)
  loc_15FB7E7:   var_A0 = Replace(var_A0, "<Remark>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Remark")), 1, 1, 1, 1), 1, -1, 0)
  loc_15FB842:   var_A0 = Replace(var_A0, "<Status>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("BookingStatus")), 1, 1), 1, -1, 0)
  loc_15FB898:   var_A0 = Replace(var_A0, "<Advance>", CStr(Format(var_B4, "0.00")), 1, -1, 0)
  loc_15FB8C2:   var_A0 = Replace(var_A0, "<Venue Detail>", var_AC, 1, -1, 0)
  loc_15FB8C5: End If
  loc_15FB90B: If ((Len(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("MobileNo")), 1, 1)) >= &HA) And (Len(var_8C) <> 0)) Then
  loc_15FB95F:   Proc_6_39_E7C810(var_134, CVar(var_A8.Fields.Item("VNo")))
  loc_15FB9E2:   var_340 = Proc_6_38_E68A98(CVar(var_A8.Fields.Item("PartyName")))
  loc_15FB9F2:   var_330 = vbNullString
  loc_15FBA36:   Proc_233_5_11B7494(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("DocID")), 1), global_104, CLng(var_134), 0, Proc_6_38_E68A98(CVar(var_A8.Fields.Item("companyCode")), 1), Proc_6_38_E68A98(CVar(var_A8.Fields.Item("MobileNo"))), vbNullString)
  loc_15FBA6E: End If
  loc_15FBA71: var_A0 = var_94
  loc_15FBA87: If ((var_A4 <> "Auto") And (Len(var_A0) <> 0)) Then
  loc_15FBAD5:   var_A0 = Replace(var_A0, "<Booking No>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("VNo")), var_A0, MemVar_1F920C8, var_340), 1, -1, 0)
  loc_15FBB46:   var_A0 = Replace(var_A0, "<Booking Date>", CStr(Format(CVar(var_A8.Fields.Item("VDate")), "DD/MM/YY")), 1, -1, 0)
  loc_15FBBA3:   var_A0 = Replace(var_A0, "<Party Name>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("PartyName")), 1, 1, var_330), 1, -1, 0)
  loc_15FBC57:   var_328 = Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Add1")), CDbl(0)) & ", " & Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Add2")), var_B8)
  loc_15FBC76:   var_A0 = Replace(var_A0, "<Party Address>", var_328 & ", " & Proc_6_38_E68A98(CVar(var_A8.Fields.Item("City"))), 1, -1, 0)
  loc_15FBCED:   var_A0 = Replace(var_A0, "<Company Name>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("CompanyName"))), 1, -1, 0)
  loc_15FBD48:   var_A0 = Replace(var_A0, "<Function Type>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("EventName"))), 1, -1, 0)
  loc_15FBDB9:   var_A0 = Replace(var_A0, "<Exp Pax>", CStr(Format(CVar(var_A8.Fields.Item("ExpAtt")), "0")), 1, -1, 0)
  loc_15FBE2C:   var_A0 = Replace(var_A0, "<Gurr Pax>", CStr(Format(CVar(var_A8.Fields.Item("GuarAtt")), "0")), 1, -1, 0)
  loc_15FBE9F:   var_A0 = Replace(var_A0, "<Pax Rate>", CStr(Format(CVar(var_A8.Fields.Item("CoverRate")), "0.00")), 1, -1, 0)
  loc_15FBEEC:   var_134 = Format(CVar(var_A8.Fields.Item("NetAmount")), "0.00")
  loc_15FBF12:   var_A0 = Replace(var_A0, "<Net Amount>", CStr(var_134), 1, -1, 0)
  loc_15FBF6F:   var_A0 = Replace(var_A0, "<Remark>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Remark")), 1, 1, 1, 1), 1, -1, 0)
  loc_15FBFCA:   var_A0 = Replace(var_A0, "<Status>", Proc_6_38_E68A98(CVar(var_A8.Fields.Item("BookingStatus")), 1, 1), 1, -1, 0)
  loc_15FC020:   var_A0 = Replace(var_A0, "<Advance>", CStr(Format(var_B4, "0.00")), 1, -1, 0)
  loc_15FC04A:   var_A0 = Replace(var_A0, "<Venue Detail>", var_AC, 1, -1, 0)
  loc_15FC04D: End If
  loc_15FC062: If ((Len(var_9C) >= &HA) And (Len(var_A0) <> 0)) Then
  loc_15FC0B6:   Proc_6_39_E7C810(var_134, CVar(var_A8.Fields.Item("VNo")), 1)
  loc_15FC10E:   var_338 = Proc_6_38_E68A98(CVar(var_A8.Fields.Item("PartyName")))
  loc_15FC11E:   var_32C = vbNullString
  loc_15FC15E:   Proc_233_5_11B7494(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("DocID")), 1, 1), global_104, CLng(var_134), 0, Proc_6_38_E68A98(CVar(var_A8.Fields.Item("companyCode")), 1), var_9C, vbNullString)
  loc_15FC18E: End If
  loc_15FC193: Set var_A8 = Nothing
  loc_15FC196: Exit Sub
  loc_15FC197: ' Referenced from: 15FADF0
  loc_15FC197: Proc_6_60_E62BC4(var_A0, MemVar_1F920C8, var_338, var_32C)
  loc_15FC19C: Exit Sub
End Sub
