VERSION 5.00
Begin VB.Form FrmHouGuestMsg
  Caption = "In House Guest Message"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmHouGuestMsg.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11520
  ClientHeight = 8880
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8430
    Width = 11520
    Height = 450
    Visible = 0   'False
    TabIndex = 53
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 8295
    Top = 5640
    Width = 510
    Height = 255
    Enabled = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
  Begin DataGrid DGRoom
    Left = 13140
    Top = 5640
    Width = 2160
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 5355
    Width = 1290
    Height = 255
    Enabled = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 5070
    Width = 1290
    Height = 255
    Enabled = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    MaxLength = 11
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 3750
    Width = 4245
    Height = 285
    Enabled = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12375
    Top = 4455
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 34
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12375
    Top = 4170
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 33
    MaxLength = 50
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12375
    Top = 3885
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 32
    MaxLength = 16
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 1530
    Width = 1170
    Height = 285
    Enabled = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 2490
    Width = 4245
    Height = 285
    TabIndex = 28
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 2805
    Width = 4245
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 3120
    Width = 4245
    Height = 285
    TabIndex = 26
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12090
    Top = 2715
    Width = 2820
    Height = 285
    Visible = 0   'False
    TabIndex = 25
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 3435
    Width = 4245
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 2055
    Top = 1860
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 2055
    Top = 1530
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 0
    Left = 12810
    Top = 3270
    Width = 420
    Height = 255
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 1845
    Width = 1170
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 2055
    Top = 5040
    Width = 4245
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12375
    Top = 3600
    Width = 1170
    Height = 285
    Visible = 0   'False
    TabIndex = 5
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 2055
    Top = 5610
    Width = 4245
    Height = 1365
    TabIndex = 8
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 100
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 2055
    Top = 5325
    Width = 4245
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 2175
    Width = 4245
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin MaskEdBox txtRecdTime
    Left = 8820
    Top = 5070
    Width = 735
    Height = 255
    TabIndex = 9
  End
  Begin MaskEdBox TxtArrTime
    Left = 8730
    Top = 1845
    Width = 795
    Height = 285
    TabIndex = 42
  End
  Begin MaskEdBox TxtDepTime
    Left = 13545
    Top = 3600
    Width = 735
    Height = 285
    Visible = 0   'False
    TabIndex = 43
  End
  Begin MSFlexGrid FGPoint
    Left = 10995
    Top = 7500
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 46
  End
  Begin BtnEnh CmdExit
    Left = 6225
    Top = 7215
    Width = 1275
    Height = 1050
    TabIndex = 51
  End
  Begin BtnEnh BtnEnh1
    Left = 2325
    Top = 7230
    Width = 1350
    Height = 1050
    TabIndex = 52
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 15
    Width = 180
    Height = 540
    TabIndex = 50
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
  Begin Label LblName
    Caption = "(Y)es/(N)o"
    Index = 2
    ForeColor = &HC0&
    Left = 8850
    Top = 5640
    Width = 825
    Height = 225
    TabIndex = 49
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
    Caption = "Message Delivered"
    Index = 0
    ForeColor = &H800000&
    Left = 6465
    Top = 5655
    Width = 1620
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
  Begin Label Label1
    Caption = "Caller Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 555
    Top = 4410
    Width = 10335
    Height = 375
    TabIndex = 45
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
    Caption = "Room Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 540
    Top = 765
    Width = 10350
    Height = 375
    TabIndex = 44
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
    Caption = "Status"
    Index = 1
    ForeColor = &H800000&
    Left = 2235
    Top = 3795
    Width = 555
    Height = 285
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &H800000&
    Left = 11295
    Top = 3900
    Width = 930
    Height = 225
    Visible = 0   'False
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
  Begin Label Lbl
    Caption = "Comment2"
    Index = 8
    ForeColor = &H800000&
    Left = 11295
    Top = 4185
    Width = 930
    Height = 225
    Visible = 0   'False
    TabIndex = 37
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
    ForeColor = &H800000&
    Left = 11295
    Top = 4470
    Width = 930
    Height = 225
    Visible = 0   'False
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &H800000&
    Left = 6705
    Top = 1545
    Width = 660
    Height = 285
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
    Caption = "Address"
    Index = 2
    ForeColor = &H800000&
    Left = 2235
    Top = 2505
    Width = 720
    Height = 285
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
  Begin Label LblName
    Caption = "Company Name"
    Index = 6
    ForeColor = &H800000&
    Left = 2235
    Top = 3465
    Width = 1335
    Height = 225
    TabIndex = 24
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H800000&
    Left = 13500
    Top = 2055
    Width = 630
    Height = 285
    Visible = 0   'False
    TabIndex = 23
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
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &H800000&
    Left = 780
    Top = 1530
    Width = 465
    Height = 285
    TabIndex = 22
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 12180
    Top = 3285
    Width = 585
    Height = 225
    Visible = 0   'False
    TabIndex = 21
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
    Caption = "Arrival Date"
    Index = 13
    ForeColor = &H800000&
    Left = 6375
    Top = 1860
    Width = 990
    Height = 285
    TabIndex = 20
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
    Caption = "Recd.Date"
    Index = 16
    ForeColor = &H800000&
    Left = 6570
    Top = 5055
    Width = 870
    Height = 225
    TabIndex = 19
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
    Caption = "User Name"
    Index = 18
    ForeColor = &H800000&
    Left = 6555
    Top = 5370
    Width = 945
    Height = 225
    TabIndex = 18
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
    Caption = "Tel./Mobil No."
    Index = 15
    ForeColor = &H800000&
    Left = 720
    Top = 5040
    Width = 1110
    Height = 225
    TabIndex = 17
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
    Caption = "Dep.Date"
    Index = 14
    ForeColor = &H800000&
    Left = 11310
    Top = 3615
    Width = 765
    Height = 225
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Guest Message"
    Index = 8
    ForeColor = &H800000&
    Left = 720
    Top = 5610
    Width = 1320
    Height = 225
    TabIndex = 15
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
    Caption = "Caller Name"
    Index = 7
    ForeColor = &H800000&
    Left = 720
    Top = 5325
    Width = 1035
    Height = 225
    TabIndex = 14
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
    Caption = "Guest Name"
    Index = 5
    ForeColor = &H800000&
    Left = 2235
    Top = 2145
    Width = 1035
    Height = 225
    TabIndex = 13
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
    Caption = "Room No."
    Index = 3
    ForeColor = &H800000&
    Left = 780
    Top = 1845
    Width = 810
    Height = 285
    TabIndex = 10
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

Attribute VB_Name = "FrmHouGuestMsg"

Private global_88 As Long

Private Sub CmdExit_UnknownEvent_9 'E19D74
  'Data Table: 490DEC
  Dim arg_74FF As Double
  loc_E19D69: Me.Global.Unload Me
  loc_E19D71: Exit Sub
  loc_E19D72: arg_74FF = 
End Sub

Private Sub BtnEnh1_UnknownEvent_9 '13B54A8
  'Data Table: 490DEC
  Dim var_86 As Integer
  Dim unk_490DF2 As Connection15
  Dim var_A0 As TextBox
  Dim var_B0 As String
  Dim var_A4 As Variant
  Dim var_F4 As TextBox
  Dim var_610 As Double
  Dim var_C4 As Variant
  Dim var_15C As Variant
  Dim var_1E4 As TextBox
  Dim var_E0 As String
  Dim var_114 As Variant
  Dim var_320 As Variant
  Dim var_488 As Variant
  Dim var_A8 As String
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  loc_13B4C90: On Error Goto loc_13B548E
  loc_13B4C96: Call Proc_38_31_F90C3C(var_96)
  loc_13B4CA1: If (var_96 = 0) Then
  loc_13B4CA4:   Exit Sub
  loc_13B4CA5: End If
  loc_13B4CB0: Set var_9C = Me.Txt
  loc_13B4CB6: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2))
  loc_13B4CDF: If (Proc_6_27_EA565C(var_A0, "Room No") = 0) Then
  loc_13B4CE2:   Exit Sub
  loc_13B4CE3: End If
  loc_13B4CEE: Set var_9C = Me.Txt
  loc_13B4CF4: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(7), var_A0)
  loc_13B4CFC: var_A8 = "Caller Name"
  loc_13B4D05: Set var_A4 = var_A0
  loc_13B4D1D: If (Proc_6_27_EA565C(var_A4, var_A8) = 0) Then
  loc_13B4D20:   Exit Sub
  loc_13B4D21: End If
  loc_13B4D2F: unk_490DF2.BeginTrans var_AC
  loc_13B4D52: Set var_9C = Me.Txt
  loc_13B4D58: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_A0, var_A8, "Delete From GuestMessage Where DocID='", var_D4)
  loc_13B4D60: -1 = var_A0.Text
  loc_13B4D79: unk_490DF2.Execute var_A4 & var_A8 & "'", &HFF, var_A0
  loc_13B4DA1: Set var_9C = Me.Txt
  loc_13B4DA7: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_A0)
  loc_13B4DD4: Set var_F0 = Me.Txt
  loc_13B4DDA: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_F4)
  loc_13B4DEF: var_610 = Val(var_F4.Text)
  loc_13B4E00: Proc_6_7_F25D88(var_D4, global_64)
  loc_13B4E10: Set var_148 = Me.Txt
  loc_13B4E16: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_14C)
  loc_13B4E1E: var_15C = CVar(var_14C) 'Address
  loc_13B4E25: Proc_6_17_EAA2B0(var_16C, var_15C)
  loc_13B4E38: Set var_1E0 = Me.Txt
  loc_13B4E3E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_1E4)
  loc_13B4E54: Proc_6_17_EAA2B0(var_208, CVar(var_1E4.Tag))
  loc_13B4E64: Set var_23C = Me.Txt
  loc_13B4E6A: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(7), var_240)
  loc_13B4E79: Proc_6_17_EAA2B0(var_260, CVar(var_240))
  loc_13B4E89: Set var_294 = Me.Txt
  loc_13B4E8F: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(8), var_298)
  loc_13B4E9E: Proc_6_17_EAA2B0(var_2B8, CVar(var_298))
  loc_13B4EAE: Set var_2EC = Me.Txt
  loc_13B4EB4: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(9), var_2F0)
  loc_13B4EC3: Proc_6_17_EAA2B0(var_310, CVar(var_2F0))
  loc_13B4ED3: Set var_344 = Me.Txt
  loc_13B4ED9: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_348)
  loc_13B4EE8: Proc_6_7_F25D88(var_368, CVar(var_348))
  loc_13B4EF8: Proc_6_17_EAA2B0(var_3B8, CVar(Me.txtRecdTime))
  loc_13B4F0B: Proc_6_7_F25D88(var_4C8, Date)
  loc_13B4F14: Set var_4FC = Me.TopCtrl1
  loc_13B4F1A: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_610)
  loc_13B4F65: var_B0 = "Insert Into GuestMessage (DocID,VType,VPrefix,Site_Code,VNo,VDate,RoomNo,RoomCat,RoomType,Caller,Telephone,Message,RecdDate,RecdTime,GuestProf,FolioNo,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A0.Text
  loc_13B4FAC: var_114 = CVar(var_B0 & "','" & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_610) & ",") 'String
  loc_13B5018: var_320 = var_114 & var_D4 & "," & var_16C & ",'" & CVar(global_68) & "'," & var_208 & "," & var_260 & "," & var_2B8 & "," & var_310 
  loc_13B5078: var_488 = var_320 & "," & var_368 & "," & var_3B8 & ",'" & CVar(global_72) & "'," & CVar(global_76) & ",'" & CVar(MemVar_1F920C8) 
  loc_13B50C2: unk_490DF2.Execute CStr(var_488 & "'," & var_4C8 & ",'" & IIf((CStr(var_50C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_604, -1
  loc_13B517A: Set var_9C = Me.TopCtrl1
  loc_13B5180: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_608)
  loc_13B5199: If (CStr() = "Add") Then
  loc_13B51B0:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_13B51D6:   var_114 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_13B51E7:   Proc_6_7_F25D88(var_D4, global_64, var_114)
  loc_13B5206:   unk_490DF2.Execute CStr(var_15C & var_D4 & " Order By VP.Date_From DESC"), -1, var_9C
  loc_13B5211:   Set var_8C = var_9C
  loc_13B5247:   If (var_8C.RecordCount > 0) Then
  loc_13B5258:     Set var_9C = Me.Txt
  loc_13B525E:     Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_A0)
  loc_13B5266:     var_A8 = var_A0.Text
  loc_13B5273:     var_610 = Val(var_A8)
  loc_13B5279:     var_C4 = "Date_From"
  loc_13B529C:     Proc_6_7_F25D88(var_114, CVar(var_8C.Fields.Item(var_C4)))
  loc_13B52CF:     var_E0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_13B5302:     unk_490DF2.Execute CStr(CVar(var_E0 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_114), var_15C, -1
  loc_13B5336:   End If
  loc_13B5336: End If
  loc_13B533C: unk_490DF2.CommitTrans
  loc_13B534F: Set var_9C = Me.Txt
  loc_13B5355: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_A0, var_A8)
  loc_13B535D: var_F4 = var_A0.Text
  loc_13B5371: var_86 = 0
  loc_13B537F: Me.Requery -1
  loc_13B53A9: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_13B53B9: Set var_9C = Me.TopCtrl1
  loc_13B53BF: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_C4)
  loc_13B53D8: If (CStr(var_86) = "Add") Then
  loc_13B53DB:   Call TopCtrl1_UnknownEvent_A()
  loc_13B53E0:   Exit Sub
  loc_13B53E1: End If
  loc_13B5404: Call Proc_38_34_10D0BA4(Proc_5_1_100CB50("INI", Me), global_80)
  loc_13B5418: Set var_9C = Me.TopCtrl1
  loc_13B541E: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030010(False)
  loc_13B542F: Set var_9C = Me.TopCtrl1
  loc_13B5435: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030011(False)
  loc_13B5446: Set var_9C = Me.TopCtrl1
  loc_13B544C: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030013(False)
  loc_13B545D: Set var_9C = Me.TopCtrl1
  loc_13B5463: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030012(False)
  loc_13B546B: Call Proc_38_32_F2B164(var_610)
  loc_13B5475: Set var_8C = Nothing
  loc_13B5485: Me.TopCtrl1.Unload Me
  loc_13B548D: Exit Sub
  loc_13B548E: ' Referenced from: 13B4C90
  loc_13B5494: If (var_86 = &HFF) Then
  loc_13B549D:   unk_490DF2.RollbackTrans
  loc_13B54A2: End If
  loc_13B54A2: Proc_6_60_E62BC4()
  loc_13B54A7: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEACE4
  'Data Table: 490DEC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEAB1A: Set var_88 = Me.Txt
  loc_FEAB20: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEAB2E: Proc_6_74_E226B0(var_8C)
  loc_FEAB3A: Call Proc_38_35_E85390(var_8C)
  loc_FEAB42: var_92 = Index
  loc_FEAB4D: If (var_92 = CInt(2)) Then
  loc_FEAB67:   If (Me.RecordCount > 0) Then
  loc_FEAB75:     Set var_8C = Me.FGPoint
  loc_FEAB8D:     Proc_6_137_1193554(Me.DGRoom, global_84, Index)
  loc_FEAB9B:   End If
  loc_FEABE9:   Set var_88 = Me.Txt
  loc_FEABEF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEABF7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEAC0F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEAC12:     Exit Sub
  loc_FEAC13:   End If
  loc_FEAC20:   Set var_88 = Me.Txt
  loc_FEAC26:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEAC2E:   var_A0 = var_8C.Text
  loc_FEAC40:   var_B0 = "RoomNo"
  loc_FEAC7B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEAC84:     Me.MoveFirst
  loc_FEACA7:     Set var_88 = Me.Txt
  loc_FEACAD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEACB5:     0 = var_8C.Text
  loc_FEACCE:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEACE3:   End If
  loc_FEACE3: End If
  loc_FEACE3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '103966C
  'Data Table: 490DEC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_103942B: var_86 = Shift
  loc_1039438: If (CLng(Shift) = &H1B) Then
  loc_103943B:   Call Proc_38_35_E85390(var_86)
  loc_1039440:   Exit Sub
  loc_1039441: End If
  loc_1039444: var_88 = KeyCode
  loc_103944F: If (var_88 = CInt(2)) Then
  loc_103946F:   Set var_A0 = Me.FGPoint
  loc_103947A:   Set var_9C = Nothing
  loc_10394AC:   Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(2), global_84, Shift, 0)
  loc_103951B:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1039522:     Set var_9C = Me.DGRoom
  loc_1039541:     Proc_6_138_106D6F8(var_9C, global_84, KeyCode, Me.FGPoint, 1)
  loc_103954F:   End If
  loc_103954F: End If
  loc_103956B: If (CBool(Me.DGRoom.Visible) = 0) Then
  loc_103958C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(9))) Then
  loc_1039595:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_103959A:   End If
  loc_103959E:   Set var_8C = Me.TopCtrl1
  loc_10395A4:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_A0)
  loc_10395C6:   If ((CStr(0) = "Add") And (KeyCode <> CInt(2))) Then
  loc_10395DE:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10395E7:       Proc_6_76_E52838(Shift, arg_14)
  loc_10395EC:     End If
  loc_10395EF:   Else
  loc_10395F3:     Set var_8C = Me.TopCtrl1
  loc_10395F9:     Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_88)
  loc_103961B:     If ((CStr() = "Edit") And (KeyCode <> CInt(8))) Then
  loc_1039633:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_103963C:         Proc_6_76_E52838(Shift)
  loc_1039641:       End If
  loc_1039641:     End If
  loc_1039641:   End If
  loc_103965F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_1039665:     Call Proc_38_36_EE20C8(KeyCode)
  loc_103966A:   End If
  loc_103966A: End If
  loc_103966A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FA4110
  'Data Table: 490DEC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_FA3F90: On Error Goto loc_FA4107
  loc_FA3F99: Proc_6_133_E7EF78(var_94)
  loc_FA3FA2: arg_10 = CInt(var_94)
  loc_FA3FAB: Proc_6_58_E054C0(arg_10, arg_10)
  loc_FA3FB3: var_96 = KeyAscii
  loc_FA3FBE: If (var_96 = CInt(&H15)) Then
  loc_FA3FEA:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FA3FFA:     Set var_CC = Me.Txt
  loc_FA4000:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_FA4008:     var_D0.Text = var_96
  loc_FA4017:   Else
  loc_FA4040:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FA4050:       Set var_CC = Me.Txt
  loc_FA4056:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_FA405E:       var_D0.Text = "No"
  loc_FA406A:     End If
  loc_FA406A:   End If
  loc_FA406C:   arg_10 = 0
  loc_FA4072: Else
  loc_FA407A:   If (var_96 = CInt(2)) Then
  loc_FA4099:     If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FA40AB:       var_D4 = "RoomNo"
  loc_FA40C6:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_84, arg_10)
  loc_FA40F8:       Proc_6_138_106D6F8(Me.DGRoom, global_84, KeyAscii, Me.FGPoint)
  loc_FA4106:     End If
  loc_FA4106:   End If
  loc_FA4106: End If
  loc_FA4106: Exit Sub
  loc_FA4107: ' Referenced from: FA3F90
  loc_FA4107: Proc_6_60_E62BC4(var_D4, 0)
  loc_FA410C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEA74
  'Data Table: 490DEC
  Dim var_86 As Integer
  loc_DFEA6F: var_86 = KeyCode
  loc_DFEA72: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49194
  'Data Table: 490DEC
  loc_E49172: Set var_88 = Me.Txt
  loc_E49178: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49186: Proc_6_73_E22704(var_8C)
  loc_E49192: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1423748
  'Data Table: 490DEC
  Dim var_8A As Integer
  Dim var_D4 As String
  Dim var_94 As Variant
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_E8 As String
  Dim var_100 As TextBox
  Dim var_110 As String
  Dim var_B4 As Variant
  Dim unk_490DF2 As Connection15
  Dim var_88 As Recordset15
  Dim var_FC As MaskEdBox
  loc_1422CAF: var_8A = Cancel
  loc_1422CBA: If (var_8A = CInt(&H15)) Then
  loc_1422CC7:   Set var_90 = Me.Txt
  loc_1422CCD:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1422CF4:   var_D4 = "Y"
  loc_1422D08:   If (Ucase(Left(CVar(var_94), 1)) = var_D4) Then
  loc_1422D18:     Set var_90 = Me.Txt
  loc_1422D1E:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1422D26:     var_94.Text = "Yes"
  loc_1422D35:   Else
  loc_1422D42:     Set var_90 = Me.Txt
  loc_1422D48:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1422D50:     var_94.Text = "No"
  loc_1422D5C:   End If
  loc_1422D5F: Else
  loc_1422D67:   If (var_8A = CInt(2)) Then
  loc_1422D76:     If (global_88 = 1) Then
  loc_1422D97:       Set var_90 = Me.Txt
  loc_1422D9D:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_E8, "roomno='")
  loc_1422DA5:       0 = var_94.Text
  loc_1422DBE:       Me.Find 1 & var_E8 & "'", var_D4, var_8A
  loc_1422DD3:     End If
  loc_1422E21:     Set var_90 = Me.Txt
  loc_1422E27:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1422E47:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1422E57:       Set var_90 = Me.Txt
  loc_1422E5D:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1422E65:       var_94.Text = vbNullString
  loc_1422E7E:       Set var_90 = Me.Txt
  loc_1422E84:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1422E8C:       var_94.Tag = vbNullString
  loc_1422E9B:     Else
  loc_1422ED7:       Set var_FC = Me.Txt
  loc_1422EDD:       Call 0.Method_Txt_Validate0 (CInt(2), var_100)
  loc_1422EE5:       var_100.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_1422F3D:       Call 0.Method_Txt_Validate0 (CInt(2), var_100)
  loc_1422F45:       var_100.Tag = CStr(Me.Fields.Item("Type").Value)
  loc_1422F8F:       global_68 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_1422FAD:       var_110 = "SELECT GF.Name,GF.Company,RO.FolioNo,RO.GuestProf,RO.ChkInDate, RO.ChkInTime, RO.DepDate, RO.DepTime, GuestProf.Add1, GuestProf.Add2, SubGroup.Name AS CompanyName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestStat.Name AS GuestStatus, City.CityName, RoomCat.Name as RoomCat FROM ((((GuestProf RIGHT JOIN (RoomOcc AS RO LEFT JOIN GuestFolio AS GF ON RO.FolioNo = GF.FolioNo) ON GuestProf.Code = GF.GuestProf) LEFT JOIN SubGroup ON GF.Company = SubGroup.SubCode) LEFT JOIN GuestStat ON GuestProf.GuestStatus = GuestStat.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN RoomCat ON RO.RoomCat=RoomCat.Code Where RoomNo='"
  loc_1422FDF:       var_B4 = var_110 & Me.Fields.Item("RoomNo").Value 
  loc_1422FF6:       unk_490DF2.Execute CStr(var_B4 & "' And ChkOutDate is Null"), var_E4, -1
  loc_1423001:       Set var_88 = Me.Txt
  loc_142302F:       If (var_88.RecordCount > 0) Then
  loc_1423068:         Set var_FC = Me.Txt
  loc_142306E:         Call 0.Method_Txt_Validate0 (CInt(3), var_100)
  loc_1423076:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")))
  loc_14230B0:         Proc_6_39_E7C810(var_B4, CVar(var_88.Fields.Item("FolioNo")))
  loc_14230C7:         Set var_FC = Me.Txt
  loc_14230CD:         Call 0.Method_Txt_Validate0 (CInt(&HC), var_100)
  loc_14230D5:         var_100.Text = CStr(var_B4)
  loc_1423123:         Set var_FC = Me.Txt
  loc_1423129:         Call 0.Method_Txt_Validate0 (CInt(4), var_100)
  loc_1423131:         var_100.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Company")))
  loc_142317B:         Set var_FC = Me.Txt
  loc_1423181:         Call 0.Method_Txt_Validate0 (CInt(4), var_100)
  loc_1423189:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyName")))
  loc_14231D3:         Set var_FC = Me.Txt
  loc_14231D9:         Call 0.Method_Txt_Validate0 (CInt(&HE), var_100)
  loc_14231E1:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments1")))
  loc_142322B:         Set var_FC = Me.Txt
  loc_1423231:         Call 0.Method_Txt_Validate0 (CInt(&HF), var_100)
  loc_1423239:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments2")))
  loc_1423283:         Set var_FC = Me.Txt
  loc_1423289:         Call 0.Method_Txt_Validate0 (CInt(&H10), var_100)
  loc_1423291:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments3")))
  loc_14232DB:         Set var_FC = Me.Txt
  loc_14232E1:         Call 0.Method_Txt_Validate0 (CInt(&H11), var_100)
  loc_14232E9:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_1423333:         Set var_FC = Me.Txt
  loc_1423339:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_100)
  loc_1423341:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_142338B:         Set var_FC = Me.Txt
  loc_1423391:         Call 0.Method_Txt_Validate0 (CInt(&H14), var_100)
  loc_1423399:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_14233E3:         Set var_FC = Me.Txt
  loc_14233E9:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_100)
  loc_14233F1:         var_100.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuestStatus")))
  loc_142343E:         Set var_FC = Me.Txt
  loc_1423444:         Call 0.Method_Txt_Validate0 (CInt(5), var_100)
  loc_142344C:         var_100.Text = CStr(var_88.Fields.Item("ChkInDate").Value)
  loc_142349B:         Me.TxtArrTime.defaultText = CVar(CStr(var_88.Fields.Item("ChkInTime").Value))
  loc_14234E9:         Set var_FC = Me.Txt
  loc_14234EF:         Call 0.Method_Txt_Validate0 (CInt(6), var_100)
  loc_14234F7:         var_100.Text = CStr(var_88.Fields.Item("DepDate").Value)
  loc_1423546:         Me.TxtDepTime.defaultText = CVar(CStr(var_88.Fields.Item("DepTime").Value))
  loc_142358C:         global_72 = CStr(var_88.Fields.Item("GuestProf").Value)
  loc_14235F3:         var_94 = var_88.Fields.Item("RoomCat")
  loc_1423612:         Set var_FC = Me.Txt
  loc_1423618:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_100, CStr(var_94.Value))
  loc_1423620:         var_100.Text = CLng(var_88.Fields.Item("FolioNo").Value)
  loc_1423639:       Else
  loc_1423647:         Set var_90 = Me.Txt
  loc_142364D:         Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_1423655:         var_94.Text = vbNullString
  loc_142366F:         Set var_90 = Me.Txt
  loc_1423675:         Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_142367D:         var_94.Text = vbNullString
  loc_1423697:         Set var_90 = Me.Txt
  loc_142369D:         Call 0.Method_Txt_Validate0 (CInt(5), var_94)
  loc_14236A5:         var_94.Text = vbNullString
  loc_14236C1:         Me.TxtArrTime.defaultText = vbNullString
  loc_14236D7:         Set var_90 = Me.Txt
  loc_14236DD:         Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14236E5:         var_94.Text = vbNullString
  loc_1423701:         Me.TxtDepTime.defaultText = vbNullString
  loc_142370F:         global_72 = vbNullString
  loc_142372C:         Set var_90 = Me.Txt
  loc_1423732:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_94, vbNullString)
  loc_142373A:         var_94.Text = 0
  loc_1423746:       End If
  loc_1423746:     End If
  loc_1423746:   End If
  loc_1423746: End If
  loc_1423746: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3E324
  'Data Table: 490DEC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E21B: Me.DGRoom.Visible = False
  loc_F3E23A: If (Me.RecordCount > 0) Then
  loc_F3E279:   Set var_B4 = Me.Txt
  loc_F3E27F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3E287:   var_B8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F3E2BA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F3E2D9:   Set var_B4 = Me.Txt
  loc_F3E2DF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3E2E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E2FD: End If
  loc_F3E308: Set var_A8 = Me.Txt
  loc_F3E30E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2))
  loc_F3E316: var_B0.SetFocus
  loc_F3E322: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA0010
  'Data Table: 490DEC
  Dim var_A8 As Variant
  loc_E9FF94: Set var_88 = Me.DGRoom
  loc_E9FFBE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9FFC6: Set var_BC = Me.DGRoom
  loc_EA0000: Proc_6_138_106D6F8(Me.DGRoom, global_84, 0, Me.FGPoint)
  loc_EA000E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FB8C0C
  'Data Table: 490DEC
  Dim var_B4 As TextBox
  Dim var_88 As String
  Dim var_8C As MaskEdBox
  loc_FB8A68: On Error Goto loc_FB8C06
  loc_FB8A80: var_88 = "ADD"
  loc_FB8A8E: Call Proc_38_34_10D0BA4(Proc_5_1_100CB50(var_88, Me))
  loc_FB8AA2: Set var_8C = Me.TopCtrl1
  loc_FB8AA8: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030010(False)
  loc_FB8AB9: Set var_8C = Me.TopCtrl1
  loc_FB8ABF: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030011(False)
  loc_FB8AD0: Set var_8C = Me.TopCtrl1
  loc_FB8AD6: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030013(False)
  loc_FB8AE7: Set var_8C = Me.TopCtrl1
  loc_FB8AED: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030012(False)
  loc_FB8AF5: Call Proc_38_32_F2B164(global_80)
  loc_FB8B00: Call Proc_38_37_11470C8(MemVar_1F92044)
  loc_FB8B13: Set var_8C = Me.Txt
  loc_FB8B19: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B4)
  loc_FB8B21: var_B4.Text = var_88
  loc_FB8B6A: Set var_8C = Me.Txt
  loc_FB8B70: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_B4, CStr(Format(Date, "DD/MM/YYYY")))
  loc_FB8B78: var_B4.Text = 1
  loc_FB8BCA: Me.txtRecdTime.defaultText = CVar(CStr(Format(Time, "HH:MM")))
  loc_FB8BEB: Set var_8C = Me.Txt
  loc_FB8BF1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_B4, MemVar_1F920C8, 1)
  loc_FB8BF9: var_B4.Text = 1
  loc_FB8C05: Exit Sub
  loc_FB8C06: ' Referenced from: FB8A68
  loc_FB8C06: Proc_6_60_E62BC4(1)
  loc_FB8C0B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F049E8
  'Data Table: 490DEC
  loc_F04910: On Error Goto loc_F049E2
  loc_F0494A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F04970:   Call Proc_38_34_10D0BA4(Proc_5_1_100CB50("INI", Me))
  loc_F04984:   Set var_10C = Me.TopCtrl1
  loc_F0498A:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030010(False)
  loc_F0499B:   Set var_10C = Me.TopCtrl1
  loc_F049A1:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030011(False)
  loc_F049B2:   Set var_10C = Me.TopCtrl1
  loc_F049B8:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030013(False)
  loc_F049C9:   Set var_10C = Me.TopCtrl1
  loc_F049CF:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030012(False)
  loc_F049D7:   Call Proc_38_35_E85390(global_80)
  loc_F049DC:   Call Proc_38_32_F2B164()
  loc_F049E1: End If
  loc_F049E1: Exit Sub
  loc_F049E2: ' Referenced from: F04910
  loc_F049E2: Proc_6_60_E62BC4()
  loc_F049E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '110FDCC
  'Data Table: 490DEC
  Dim var_96 As Integer
  Dim unk_490DF2 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_110FAB4: On Error Goto loc_110FD74
  loc_110FAC5: If (Proc_183_56_FE8818(global_80) = &HFF) Then
  loc_110FAC8:   Exit Sub
  loc_110FAC9: End If
  loc_110FB00: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_110FB11:   unk_490DF2.BeginTrans var_11C
  loc_110FB27:   var_94 = Me.Bookmark 'Variant
  loc_110FB49:   Set var_120 = Me.Txt
  loc_110FB4F:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From GuestMessage Where DocID='")
  loc_110FB57:   var_B8 = var_124.Text
  loc_110FB60:   var_12C = -1 & var_128
  loc_110FB70:   unk_490DF2.Execute var_12C & "'", var_134, &HFF
  loc_110FB98:   Set var_120 = Me.Txt
  loc_110FB9E:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_110FBB0:   var_168 = 0
  loc_110FBC3:   var_160 = 0
  loc_110FBCE:   var_15C = 0
  loc_110FBE1:   var_154 = 0
  loc_110FBEC:   var_150 = 0
  loc_110FBFF:   var_148 = 0
  loc_110FC3E:   var_128 = "GuestMessage"
  loc_110FC47:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_110FC72:   unk_490DF2.CommitTrans
  loc_110FC79:   var_96 = 0
  loc_110FC87:   Me.Requery -1
  loc_110FC97:   Me.Requery -1
  loc_110FCB7:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_110FCC4:     Me.Bookmark = var_94
  loc_110FCCC:   Else
  loc_110FCE0:     If (Me.EOF = 0) Then
  loc_110FCE9:       Me.MoveLast
  loc_110FCEE:     End If
  loc_110FCEE:   End If
  loc_110FCEE:   Call Proc_38_32_F2B164(var_96, var_148, 0, var_150, var_154)
  loc_110FD0F:   Proc_5_0_110649C(&HFF, Me, global_80, 0)
  loc_110FD20:   Set var_120 = Me.TopCtrl1
  loc_110FD26:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030010(False)
  loc_110FD37:   Set var_120 = Me.TopCtrl1
  loc_110FD3D:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030011(False)
  loc_110FD4E:   Set var_120 = Me.TopCtrl1
  loc_110FD54:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030013(False)
  loc_110FD65:   Set var_120 = Me.TopCtrl1
  loc_110FD6B:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030012(False)
  loc_110FD73: End If
  loc_110FD73: Exit Sub
  loc_110FD74: ' Referenced from: 110FAB4
  loc_110FD7A: If (var_96 = &HFF) Then
  loc_110FD83:   unk_490DF2.RollbackTrans
  loc_110FD88: End If
  loc_110FD90: Set var_120 = Err()
  loc_110FD96: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_110FDB7: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_110FDCA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F61D7C
  'Data Table: 490DEC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F61C58: On Error Goto loc_F61D36
  loc_F61C69: If (Proc_183_55_FE7900(global_80) = &HFF) Then
  loc_F61C6C:   Exit Sub
  loc_F61C6D: End If
  loc_F61C84: If (Me.RecordCount > 0) Then
  loc_F61C9C:   var_8C = "EDIT"
  loc_F61CAA:   Call Proc_38_34_10D0BA4(Proc_5_1_100CB50(var_8C, Me))
  loc_F61CC2:   Set var_90 = Me.Txt
  loc_F61CC8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_F61CD0:   var_98.Enabled = False
  loc_F61CDF: Else
  loc_F61D00:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F61D10: End If
  loc_F61D1B: Set var_90 = Me.Txt
  loc_F61D21: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98)
  loc_F61D29: var_98.SetFocus
  loc_F61D35: Exit Sub
  loc_F61D36: ' Referenced from: F61C58
  loc_F61D3E: Set var_90 = Err()
  loc_F61D44: Call 0.Method_arg_2C (var_8C)
  loc_F61D65: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F61D78: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19D28
  'Data Table: 490DEC
  loc_E19D1D: Me.Global.Unload Me
  loc_E19D25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB3978
  'Data Table: 490DEC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB38E8: On Error Goto loc_EB3972
  loc_EB3902: If (Me.RecordCount <= 0) Then
  loc_EB390B:   var_B8 = "Information"
  loc_EB3926:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3936:   Exit Sub
  loc_EB3937: End If
  loc_EB393A: MemVar_1F920E4 = "Select GM.DocID as SearchCode,CAST(GM.VNo AS VARCHAR) As VrNo,GM.RoomNo,GF.Name As GuestName,GF.Company,GM.Caller,GM.Telephone From ((GuestMessage GM Left Join RoomOcc RO On (GM.RoomNo=RO.RoomNo And GM.FolioNo=RO.FolioNo)) Left Join GuestFolio GF On RO.FolioNo=GF.FolioNo) Order by GM.DocID,GM.VNo"
  loc_EB3947: Proc_6_126_F1BCC0("1000,1000,2500,2000,2000,2000")
  loc_EB3955: MemVar_1F92120 = Me
  loc_EB396C: Call 0.Method_arg_2B0 (1)
  loc_EB3971: Exit Sub
  loc_EB3972: ' Referenced from: EB38E8
  loc_EB3972: Proc_6_60_E62BC4(var_B8)
  loc_EB3977: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A2A4
  'Data Table: 490DEC
  Dim Me As Recordset15
  loc_E0A29B: Me.Requery -1
  loc_E0A2A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13AD6EC
  'Data Table: 490DEC
  Dim var_86 As Integer
  Dim unk_490DF2 As Connection15
  Dim var_A0 As TextBox
  Dim var_B0 As String
  Dim var_A4 As Variant
  Dim var_F4 As TextBox
  Dim var_610 As Double
  Dim var_C4 As Variant
  Dim var_15C As Variant
  Dim var_1E4 As TextBox
  Dim var_E0 As String
  Dim var_114 As Variant
  Dim var_320 As Variant
  Dim var_488 As Variant
  Dim var_A8 As String
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim Me As Recordset15
  loc_13ACEE8: On Error Goto loc_13AD6D1
  loc_13ACEEE: Call Proc_38_31_F90C3C(var_96)
  loc_13ACEF9: If (var_96 = 0) Then
  loc_13ACEFC:   Exit Sub
  loc_13ACEFD: End If
  loc_13ACF08: Set var_9C = Me.Txt
  loc_13ACF0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_13ACF37: If (Proc_6_27_EA565C(var_A0, "Room No") = 0) Then
  loc_13ACF3A:   Exit Sub
  loc_13ACF3B: End If
  loc_13ACF46: Set var_9C = Me.Txt
  loc_13ACF4C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0)
  loc_13ACF54: var_A8 = "Caller Name"
  loc_13ACF5D: Set var_A4 = var_A0
  loc_13ACF75: If (Proc_6_27_EA565C(var_A4, var_A8) = 0) Then
  loc_13ACF78:   Exit Sub
  loc_13ACF79: End If
  loc_13ACF87: unk_490DF2.BeginTrans var_AC
  loc_13ACFAA: Set var_9C = Me.Txt
  loc_13ACFB0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8, "Delete From GuestMessage Where DocID='", var_D4)
  loc_13ACFB8: -1 = var_A0.Text
  loc_13ACFD1: unk_490DF2.Execute var_A4 & var_A8 & "'", &HFF, var_A0
  loc_13ACFF9: Set var_9C = Me.Txt
  loc_13ACFFF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_13AD02C: Set var_F0 = Me.Txt
  loc_13AD032: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4)
  loc_13AD047: var_610 = Val(var_F4.Text)
  loc_13AD058: Proc_6_7_F25D88(var_D4, global_64)
  loc_13AD068: Set var_148 = Me.Txt
  loc_13AD06E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_14C)
  loc_13AD076: var_15C = CVar(var_14C) 'Address
  loc_13AD07D: Proc_6_17_EAA2B0(var_16C, var_15C)
  loc_13AD090: Set var_1E0 = Me.Txt
  loc_13AD096: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4)
  loc_13AD0AC: Proc_6_17_EAA2B0(var_208, CVar(var_1E4.Tag))
  loc_13AD0BC: Set var_23C = Me.Txt
  loc_13AD0C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_240)
  loc_13AD0D1: Proc_6_17_EAA2B0(var_260, CVar(var_240))
  loc_13AD0E1: Set var_294 = Me.Txt
  loc_13AD0E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_298)
  loc_13AD0F6: Proc_6_17_EAA2B0(var_2B8, CVar(var_298))
  loc_13AD106: Set var_2EC = Me.Txt
  loc_13AD10C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2F0)
  loc_13AD11B: Proc_6_17_EAA2B0(var_310, CVar(var_2F0))
  loc_13AD12B: Set var_344 = Me.Txt
  loc_13AD131: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_348)
  loc_13AD140: Proc_6_7_F25D88(var_368, CVar(var_348))
  loc_13AD150: Proc_6_17_EAA2B0(var_3B8, CVar(Me.txtRecdTime))
  loc_13AD163: Proc_6_7_F25D88(var_4C8, Date)
  loc_13AD16C: Set var_4FC = Me.TopCtrl1
  loc_13AD172: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_610)
  loc_13AD1BD: var_B0 = "Insert Into GuestMessage (DocID,VType,VPrefix,Site_Code,VNo,VDate,RoomNo,RoomCat,RoomType,Caller,Telephone,Message,RecdDate,RecdTime,GuestProf,FolioNo,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A0.Text
  loc_13AD204: var_114 = CVar(var_B0 & "','" & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_610) & ",") 'String
  loc_13AD270: var_320 = var_114 & var_D4 & "," & var_16C & ",'" & CVar(global_68) & "'," & var_208 & "," & var_260 & "," & var_2B8 & "," & var_310 
  loc_13AD2D0: var_488 = var_320 & "," & var_368 & "," & var_3B8 & ",'" & CVar(global_72) & "'," & CVar(global_76) & ",'" & CVar(MemVar_1F920C8) 
  loc_13AD31A: unk_490DF2.Execute CStr(var_488 & "'," & var_4C8 & ",'" & IIf((CStr(var_50C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_604, -1
  loc_13AD3D2: Set var_9C = Me.TopCtrl1
  loc_13AD3D8: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_608)
  loc_13AD3F1: If (CStr() = "Add") Then
  loc_13AD408:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_13AD42E:   var_114 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_13AD43F:   Proc_6_7_F25D88(var_D4, global_64, var_114)
  loc_13AD45E:   unk_490DF2.Execute CStr(var_15C & var_D4 & " Order By VP.Date_From DESC"), -1, var_9C
  loc_13AD469:   Set var_8C = var_9C
  loc_13AD49F:   If (var_8C.RecordCount > 0) Then
  loc_13AD4B0:     Set var_9C = Me.Txt
  loc_13AD4B6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_13AD4BE:     var_A8 = var_A0.Text
  loc_13AD4CB:     var_610 = Val(var_A8)
  loc_13AD4D1:     var_C4 = "Date_From"
  loc_13AD4F4:     Proc_6_7_F25D88(var_114, CVar(var_8C.Fields.Item(var_C4)))
  loc_13AD527:     var_E0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_13AD55A:     unk_490DF2.Execute CStr(CVar(var_E0 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_114), var_15C, -1
  loc_13AD58E:   End If
  loc_13AD58E: End If
  loc_13AD594: unk_490DF2.CommitTrans
  loc_13AD5A7: Set var_9C = Me.Txt
  loc_13AD5AD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8)
  loc_13AD5B5: var_F4 = var_A0.Text
  loc_13AD5C9: var_86 = 0
  loc_13AD5D7: Me.Requery -1
  loc_13AD601: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_13AD611: Set var_9C = Me.TopCtrl1
  loc_13AD617: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(var_C4)
  loc_13AD630: If (CStr(var_86) = "Add") Then
  loc_13AD633:   Call TopCtrl1_UnknownEvent_A()
  loc_13AD638:   Exit Sub
  loc_13AD639: End If
  loc_13AD65C: Call Proc_38_34_10D0BA4(Proc_5_1_100CB50("INI", Me), global_80)
  loc_13AD670: Set var_9C = Me.TopCtrl1
  loc_13AD676: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030010(False)
  loc_13AD687: Set var_9C = Me.TopCtrl1
  loc_13AD68D: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030011(False)
  loc_13AD69E: Set var_9C = Me.TopCtrl1
  loc_13AD6A4: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030013(False)
  loc_13AD6B5: Set var_9C = Me.TopCtrl1
  loc_13AD6BB: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030012(False)
  loc_13AD6C3: Call Proc_38_32_F2B164(var_610)
  loc_13AD6CD: Set var_8C = Nothing
  loc_13AD6D0: Exit Sub
  loc_13AD6D1: ' Referenced from: 13ACEE8
  loc_13AD6D7: If (var_86 = &HFF) Then
  loc_13AD6E0:   unk_490DF2.RollbackTrans
  loc_13AD6E5: End If
  loc_13AD6E5: Proc_6_60_E62BC4()
  loc_13AD6EA: Exit Sub
End Sub

Private Sub Form_Load() '10AC60C
  'Data Table: 490DEC
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_D4 As TextBox
  Dim var_CC As TextBox
  Dim var_D0 As DataGrid
  loc_10AC33C: On Error Goto loc_10AC605
  loc_10AC345: Call 0.Method_Me8 (var_88)
  loc_10AC350: Call 0.Method_Me0 (var_8C)
  loc_10AC36F: Proc_6_23_DFBA28(Me, CInt(var_88))
  loc_10AC37F: Call 0.Method_arg_7C (CDbl(1450))
  loc_10AC38C: Call 0.Method_arg_74 (CDbl(1625))
  loc_10AC399: Call 0.Method_MeC (CDbl(9200))
  loc_10AC3A6: Call 0.Method_Me4 (CDbl(17000))
  loc_10AC3B2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10AC3D3: Me.Recordset15.CursorLocation = 3
  loc_10AC3FD: var_A8 = CVar("Select RoomType as Type,RoomNo,RoomCat From Roomocc where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and chkoutdate is NULL Order by RoomNO") 'String
  loc_10AC41B: CVarUnk
  loc_10AC420: VerifyVarObj
  loc_10AC426: Set var_90 = Me.DGRoom
  loc_10AC42C: LateIdStAd
  loc_10AC456: Me.DGRoom.CursorLocation = 3
  loc_10AC480: var_A8 = CVar("Select DocID as SearchCode,DocID,Site_Code,LogSite_Code From GuestMessage where   LOGSITE_CODE='" & MemVar_1F92078 & "' Order by DocID") 'String
  loc_10AC48A: r_A8, CVar(MemVar_1F92044), 2 var_A8, CVar(MemVar_1F92044), 2
  loc_10AC49B: global_60 = "HTHGM"
  loc_10AC4AA: global_64 = CStr(MemVar_1F920EC)
  loc_10AC4D4: Call Proc_38_34_10D0BA4(Proc_5_1_100CB50("INI", Me, New, 3, -1), Me, New)
  loc_10AC4DF: Call Proc_38_32_F2B164(3, -1)
  loc_10AC4ED: Set var_90 = Me.TopCtrl1
  loc_10AC4F3: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030010(False)
  loc_10AC504: Set var_90 = Me.TopCtrl1
  loc_10AC50A: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030011(False)
  loc_10AC51B: Set var_90 = Me.TopCtrl1
  loc_10AC521: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030013(False)
  loc_10AC532: Set var_90 = Me.TopCtrl1
  loc_10AC538: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030012(False)
  loc_10AC54E: Set var_D0 = Me.Txt
  loc_10AC554: Call 0.Method_Form_Load0 (CInt(2), var_D4)
  loc_10AC55C: var_8C = var_D4.Height
  loc_10AC56F: Set var_90 = Me.Txt
  loc_10AC575: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_10AC589: var_B8 = CVar((var_CC.Top + var_8C)) 'Single
  loc_10AC598: Me.DGRoom.Top = False
  loc_10AC5B8: Set var_90 = Me.Txt
  loc_10AC5BE: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_10AC5DD: Me.DGRoom.Left = CVar(var_CC.Left)
  loc_10AC5FC: If (OpenMode = 1) Then
  loc_10AC5FF:   Call TopCtrl1_UnknownEvent_A()
  loc_10AC604: End If
  loc_10AC604: Exit Sub
  loc_10AC605: ' Referenced from: 10AC33C
  loc_10AC605: Proc_6_60_E62BC4(CInt(var_8C))
  loc_10AC60A: Exit Sub
  loc_10AC60B: Exit Sub
End Sub

Private Sub Form_Resize() 'E71264
  'Data Table: 490DEC
  loc_E7120E: Call 0.Method_arg_50 (var_88)
  loc_E71220: Me.LblFormCaption.Caption = var_88
  loc_E71239: Me.LblFormCaption.Left = CDbl(0)
  loc_E71247: Call 0.Method_arg_100 (var_90)
  loc_E71259: Me.LblFormCaption.Width = var_90
  loc_E71261: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40944
  'Data Table: 490DEC
  loc_E4091F: Set global_84 = Nothing
  loc_E40931: Set global_80 = Nothing
  loc_E40940: Exit Sub
  loc_E40941: Set var_90 = 0
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B90C
  'Data Table: 490DEC
  loc_E5B8D4: Set var_88 = Me.TopCtrl1
  loc_E5B8DA: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005()
  loc_E5B8FD: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5B905:   Call Form_Unload(&HFF)
  loc_E5B90A: End If
  loc_E5B90A: Exit Sub
End Sub

Private Sub Form_Activate() 'E49130
  'Data Table: 490DEC
  loc_E49100: On Error Goto loc_E4912A
  loc_E49107: Set var_88 = Me.TopCtrl1
  loc_E4910D: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030000()
  loc_E49122: If (CLng(CInt()) = &H2D) Then
  loc_E49125:   Call TopCtrl1_UnknownEvent_15()
  loc_E4912A:   ' Referenced from: E49100
  loc_E4912A: End If
  loc_E4912A: Proc_6_60_E62BC4()
  loc_E4912F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25AC4
  'Data Table: 490DEC
  loc_E25AA9: If (MasterFormExit = &HFF) Then
  loc_E25AB9:   Me.Global.Unload Me
  loc_E25AC1: End If
  loc_E25AC1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A18C
  'Data Table: 490DEC
  loc_E2A164: On Error Goto loc_E2A184
  loc_E2A17B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A183: Exit Sub
  loc_E2A184: ' Referenced from: E2A164
  loc_E2A184: Proc_6_60_E62BC4(Shift)
  loc_E2A189: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E32EF4
  'Data Table: 490DEC
  loc_E32EE8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E32EEB:   Call DGRoom_UnknownEvent_9()
  loc_E32EF0: End If
  loc_E32EF0: Exit Sub
End Sub

Public Function MasterFormExitGet() '491B00
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '491B0F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96388
  'Data Table: 490DEC
  Dim Me As Recordset15
  loc_E96316: On Error Goto loc_E9637F
  loc_E9631F: Me.MoveFirst
  loc_E96349: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96371: Proc_5_0_110649C(&HFF, Me, global_80)
  loc_E96379: Call Proc_38_33_14C0124(0)
  loc_E9637E: Exit Sub
  loc_E9637F: ' Referenced from: E96316
  loc_E9637F: Proc_6_60_E62BC4(var_A0)
  loc_E96384: Exit Sub
End Sub

Public Property Get OpenMode() 'E06600
  'Data Table: 490DEC
  loc_E065F9: OpenMode = global_88
End Sub

Public Property Let OpenMode(vNewValue) 'E015E0
  'Data Table: 490DEC
  loc_E015DA: global_88 = vNewValue
  loc_E015DD: Exit Sub
End Sub

Public Sub Proc_38_31_F90C3C
  'Data Table: 490DEC
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_490DF2 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F90AFD: Set var_8C = Me.TopCtrl1
  loc_F90B03: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030005(&HFF)
  loc_F90B0B: var_A0 = CStr()
  loc_F90B1C: If (var_A0 = "Add") Then
  loc_F90B4C:   Set var_8C = Me.Txt
  loc_F90B52:   Call 0.Method_Proc_38_31_F90C3C0 (CInt(0), var_A4, var_A0, "Select Count(*) From GuestMessage Where DocID='", var_9C, -1)
  loc_F90B73:   unk_490DF2.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F90B83:    = var_C4.Item()
  loc_F90B8B:    = var_D8.Value
  loc_F90BB8:   If (var_A4.Text.Fields > 0) Then
  loc_F90BC1:     Call 0.Method_arg_50 (var_A0)
  loc_F90BE2:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F90BF8:     Call Proc_38_37_11470C8(MemVar_1F92044)
  loc_F90C0B:     Set var_8C = Me.Txt
  loc_F90C11:     Call 0.Method_Proc_38_31_F90C3C0 (CInt(0), var_A4)
  loc_F90C19:     var_A4.Text = var_A0
  loc_F90C2D:     Proc_38_31_F90C3C = 0
  loc_F90C33:   End If
  loc_F90C33: End If
  loc_F90C33: Proc_38_31_F90C3C = var_A0
End Sub

Public Sub Proc_38_32_F2B164
  'Data Table: 490DEC
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F2B05E: Set var_8C = Me.Txt
  loc_F2B064: Call 0.Method_Proc_38_32_F2B164C (var_8E, var_86)
  loc_F2B074: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2B08A:   Set var_8C = Me.Txt
  loc_F2B090:   Call 0.Method_Proc_38_32_F2B1640 (CInt(var_86), var_98)
  loc_F2B098:   var_98.Text = vbNullString
  loc_F2B0B4:   Set var_8C = Me.Txt
  loc_F2B0BA:   Call 0.Method_Proc_38_32_F2B1640 (CInt(var_86), var_98)
  loc_F2B0C2:   var_98.Tag = vbNullString
  loc_F2B0D1: Next var_92 'Byte
  loc_F2B0E4: Me.LblVPrefix.Caption = vbNullString
  loc_F2B0FC: Me.TxtArrTime.defaultText = vbNullString
  loc_F2B114: Me.txtRecdTime.defaultText = vbNullString
  loc_F2B12C: Me.TxtDepTime.defaultText = vbNullString
  loc_F2B13D: Set var_8C = Me.TopCtrl1
  loc_F2B143: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030016(False)
  loc_F2B154: Set var_8C = Me.TopCtrl1
  loc_F2B15A: Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030017(False)
  loc_F2B162: Exit Sub
End Sub

Public Sub Proc_38_33_14C0124
  'Data Table: 490DEC
  Dim Me As Variant
  Dim var_C8 As String
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim unk_490DF2 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_11C As Variant
  loc_14BF3F8: On Error Goto loc_14C011D
  loc_14BF412: If (Me.RecordCount > 0) Then
  loc_14BF46B:   unk_490DF2.Execute CStr("Select * From GuestMessage Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_14BF476:   Set var_88 = var_120
  loc_14BF493:   Set var_124 = var_88 
  loc_14BF4D0:   Set var_120 = Me.Txt
  loc_14BF4D6:   Call 0.Method_Proc_38_33_14C01240 (CInt(0), var_128)
  loc_14BF4DE:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_14BF52C:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_14BF579:   Set var_120 = Me.Txt
  loc_14BF57F:   Call 0.Method_Proc_38_33_14C01240 (CInt(1), var_128)
  loc_14BF587:   var_128.Text = CStr(var_124.Fields.Item("VNo").Value)
  loc_14BF5D6:   Set var_120 = Me.Txt
  loc_14BF5DC:   Call 0.Method_Proc_38_33_14C01240 (CInt(2), var_128)
  loc_14BF5E4:   var_128.Text = CStr(var_124.Fields.Item("RoomNo").Value)
  loc_14BF607:   var_C8 = "SELECT GF.Name, GF.Company, RO.FolioNo, RO.GuestProf, RO.ChkInDate, RO.ChkInTime, RO.DepDate, RO.DepTime, GF.Add1, GF.Add2, SubGroup.Name AS CompanyName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestStat.Name AS GuestStatus, City.CityName, RoomCat.Name as RoomCat FROM ((((GuestProf RIGHT JOIN (RoomOcc AS RO LEFT JOIN GuestFolio AS GF ON RO.FolioNo = GF.FolioNo) ON GuestProf.Code = GF.GuestProf) LEFT JOIN SubGroup ON GF.Company = SubGroup.SubCode) LEFT JOIN GuestStat ON GuestProf.GuestStatus = GuestStat.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN RoomCat ON RO.RoomCat = RoomCat.Code Where RO.RoomNo='"
  loc_14BF636:   var_D8 = var_C8 & var_124.Fields.Item("RoomNo").Value 
  loc_14BF65D:   var_128 = var_124.Fields.Item("FolioNo")
  loc_14BF684:   unk_490DF2.Execute CStr(var_D8 & "' And RO.FolioNo=" & var_128.Value & vbNullString), var_178, -1
  loc_14BF68F:   Set var_8C = var_17C
  loc_14BF6C7:   If (var_8C.RecordCount > 0) Then
  loc_14BF700:     Set var_120 = Me.Txt
  loc_14BF706:     Call 0.Method_Proc_38_33_14C01240 (CInt(3), var_128)
  loc_14BF70E:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")), var_17C)
  loc_14BF748:     Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item("FolioNo")))
  loc_14BF75F:     Set var_120 = Me.Txt
  loc_14BF765:     Call 0.Method_Proc_38_33_14C01240 (CInt(&HC), var_128)
  loc_14BF76D:     var_128.Text = CStr(var_D8)
  loc_14BF7BB:     Set var_120 = Me.Txt
  loc_14BF7C1:     Call 0.Method_Proc_38_33_14C01240 (CInt(4), var_128)
  loc_14BF7C9:     var_128.Tag = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Company")))
  loc_14BF813:     Set var_120 = Me.Txt
  loc_14BF819:     Call 0.Method_Proc_38_33_14C01240 (CInt(4), var_128)
  loc_14BF821:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CompanyName")))
  loc_14BF86B:     Set var_120 = Me.Txt
  loc_14BF871:     Call 0.Method_Proc_38_33_14C01240 (CInt(&HE), var_128)
  loc_14BF879:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Comments1")))
  loc_14BF8C3:     Set var_120 = Me.Txt
  loc_14BF8C9:     Call 0.Method_Proc_38_33_14C01240 (CInt(&HF), var_128)
  loc_14BF8D1:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Comments2")))
  loc_14BF91B:     Set var_120 = Me.Txt
  loc_14BF921:     Call 0.Method_Proc_38_33_14C01240 (CInt(&H10), var_128)
  loc_14BF929:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Comments3")))
  loc_14BF973:     Set var_120 = Me.Txt
  loc_14BF979:     Call 0.Method_Proc_38_33_14C01240 (CInt(&H11), var_128)
  loc_14BF981:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Add1")))
  loc_14BF9CB:     Set var_120 = Me.Txt
  loc_14BF9D1:     Call 0.Method_Proc_38_33_14C01240 (CInt(&H12), var_128)
  loc_14BF9D9:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Add2")))
  loc_14BFA23:     Set var_120 = Me.Txt
  loc_14BFA29:     Call 0.Method_Proc_38_33_14C01240 (CInt(&H14), var_128)
  loc_14BFA31:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CityName")))
  loc_14BFA7B:     Set var_120 = Me.Txt
  loc_14BFA81:     Call 0.Method_Proc_38_33_14C01240 (CInt(&HD), var_128)
  loc_14BFA89:     var_128.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("GuestStatus")))
  loc_14BFAD6:     Set var_120 = Me.Txt
  loc_14BFADC:     Call 0.Method_Proc_38_33_14C01240 (CInt(5), var_128)
  loc_14BFAE4:     var_128.Text = CStr(var_8C.Fields.Item("ChkInDate").Value)
  loc_14BFB33:     Me.TxtArrTime.defaultText = CVar(CStr(var_8C.Fields.Item("ChkInTime").Value))
  loc_14BFB81:     Set var_120 = Me.Txt
  loc_14BFB87:     Call 0.Method_Proc_38_33_14C01240 (CInt(6), var_128)
  loc_14BFB8F:     var_128.Text = CStr(var_8C.Fields.Item("DepDate").Value)
  loc_14BFBDE:     Me.TxtDepTime.defaultText = CVar(CStr(var_8C.Fields.Item("DepTime").Value))
  loc_14BFC24:     global_72 = CStr(var_8C.Fields.Item("GuestProf").Value)
  loc_14BFCAA:     Set var_120 = Me.Txt
  loc_14BFCB0:     Call 0.Method_Proc_38_33_14C01240 (CInt(&H13), var_128, CStr(var_8C.Fields.Item("RoomCat").Value))
  loc_14BFCB8:     var_128.Text = CLng(var_8C.Fields.Item("FolioNo").Value)
  loc_14BFCE5:     var_A8 = var_88.Fields.Item("Solved")
  loc_14BFD04:     Set var_120 = Me.Txt
  loc_14BFD0A:     Call 0.Method_Proc_38_33_14C01240 (CInt(&H15), var_128)
  loc_14BFD12:     var_128.Text = Proc_6_38_E68A98(CVar(var_A8))
  loc_14BFD29:   Else
  loc_14BFD37:     Set var_94 = Me.Txt
  loc_14BFD3D:     Call 0.Method_Proc_38_33_14C01240 (CInt(3), var_A8)
  loc_14BFD45:     var_A8.Text = vbNullString
  loc_14BFD5F:     Set var_94 = Me.Txt
  loc_14BFD65:     Call 0.Method_Proc_38_33_14C01240 (CInt(4), var_A8)
  loc_14BFD6D:     var_A8.Text = vbNullString
  loc_14BFD87:     Set var_94 = Me.Txt
  loc_14BFD8D:     Call 0.Method_Proc_38_33_14C01240 (CInt(5), var_A8)
  loc_14BFD95:     var_A8.Text = vbNullString
  loc_14BFDB1:     Me.TxtArrTime.defaultText = vbNullString
  loc_14BFDC7:     Set var_94 = Me.Txt
  loc_14BFDCD:     Call 0.Method_Proc_38_33_14C01240 (CInt(6), var_A8)
  loc_14BFDD5:     var_A8.Text = vbNullString
  loc_14BFDF1:     Me.TxtDepTime.defaultText = vbNullString
  loc_14BFE07:     Set var_94 = Me.Txt
  loc_14BFE0D:     Call 0.Method_Proc_38_33_14C01240 (CInt(&H15), var_A8)
  loc_14BFE15:     var_A8.Text = vbNullString
  loc_14BFE27:     global_72 = vbNullString
  loc_14BFE33:     global_76 = 0
  loc_14BFE36:   End If
  loc_14BFE6C:   Set var_120 = Me.Txt
  loc_14BFE72:   Call 0.Method_Proc_38_33_14C01240 (CInt(7), var_128)
  loc_14BFE7A:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Caller")), global_76)
  loc_14BFEC4:   Set var_120 = Me.Txt
  loc_14BFECA:   Call 0.Method_Proc_38_33_14C01240 (CInt(8), var_128)
  loc_14BFED2:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Telephone")))
  loc_14BFF1C:   Set var_120 = Me.Txt
  loc_14BFF22:   Call 0.Method_Proc_38_33_14C01240 (CInt(9), var_128)
  loc_14BFF2A:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Message")))
  loc_14BFF90:   Set var_120 = Me.Txt
  loc_14BFF96:   Call 0.Method_Proc_38_33_14C01240 (CInt(&HA), var_128, CStr(Format(CVar(var_124.Fields.Item("RecdDate")), "DD/MM/YYYY")))
  loc_14BFF9E:   var_128.Text = 1
  loc_14C000A:   Me.txtRecdTime.defaultText = CVar(CStr(Format(CVar(var_124.Fields.Item("RecdTime")), "HH:MM")))
  loc_14C0057:   Set var_120 = Me.Txt
  loc_14C005D:   Call 0.Method_Proc_38_33_14C01240 (CInt(&HB), var_128, Proc_6_38_E68A98(CVar(var_124.Fields.Item("U_Name")), 1, 1))
  loc_14C0065:   var_128.Text = 1
  loc_14C0081:   Set var_94 = Me.TopCtrl1
  loc_14C0087:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030016(True)
  loc_14C0097:   Set var_94 = Me.TopCtrl1
  loc_14C009D:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030017(True)
  loc_14C00AE:   Set var_94 = Me.TopCtrl1
  loc_14C00B4:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030010(False)
  loc_14C00C5:   Set var_94 = Me.TopCtrl1
  loc_14C00CB:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030011(False)
  loc_14C00DC:   Set var_94 = Me.TopCtrl1
  loc_14C00E2:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030013(False)
  loc_14C00F3:   Set var_94 = Me.TopCtrl1
  loc_14C00F9:   Call {C03B6B08-9F25-4B50-88E922387BF46F3A}.DispID_68030012(False)
  loc_14C0103:   Set var_124 = Nothing 
  loc_14C010A: Else
  loc_14C010A:   Call Proc_38_32_F2B164(var_120)
  loc_14C010F: End If
  loc_14C010F: Call Proc_38_35_E85390()
  loc_14C0119: Set var_88 = Nothing
  loc_14C011C: Exit Sub
  loc_14C011D: ' Referenced from: 14BF3F8
  loc_14C011D: Proc_6_60_E62BC4()
  loc_14C0122: Exit Sub
End Sub

Public Sub Proc_38_34_10D0BA4(arg_C) '10D0BA4
  'Data Table: 490DEC
  Dim var_98 As TextBox
  Dim var_8C As MaskEdBox
  loc_10D089E: Set var_8C = Me.Txt
  loc_10D08A4: Call 0.Method_Proc_38_34_10D0BA4C (var_8E, var_86)
  loc_10D08B4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10D08CA:   Set var_8C = Me.Txt
  loc_10D08D0:   Call 0.Method_Proc_38_34_10D0BA40 (CInt(var_86), var_98)
  loc_10D08D8:   var_98.Enabled = arg_C
  loc_10D08E7: Next var_92 'Byte
  loc_10D08FA: Set var_8C = Me.Txt
  loc_10D0900: Call 0.Method_Proc_38_34_10D0BA40 (CInt(0), var_98)
  loc_10D0908: var_98.Enabled = False
  loc_10D0921: Set var_8C = Me.Txt
  loc_10D0927: Call 0.Method_Proc_38_34_10D0BA40 (CInt(1), var_98)
  loc_10D092F: var_98.Enabled = False
  loc_10D0948: Set var_8C = Me.Txt
  loc_10D094E: Call 0.Method_Proc_38_34_10D0BA40 (CInt(3), var_98)
  loc_10D0956: var_98.Enabled = False
  loc_10D096F: Set var_8C = Me.Txt
  loc_10D0975: Call 0.Method_Proc_38_34_10D0BA40 (CInt(4), var_98)
  loc_10D097D: var_98.Enabled = False
  loc_10D0996: Set var_8C = Me.Txt
  loc_10D099C: Call 0.Method_Proc_38_34_10D0BA40 (CInt(5), var_98)
  loc_10D09A4: var_98.Enabled = False
  loc_10D09BF: Me.TxtArrTime.Enabled = False
  loc_10D09D4: Set var_8C = Me.Txt
  loc_10D09DA: Call 0.Method_Proc_38_34_10D0BA40 (CInt(6), var_98)
  loc_10D09E2: var_98.Enabled = False
  loc_10D09FD: Me.TxtDepTime.Enabled = False
  loc_10D0A12: Set var_8C = Me.Txt
  loc_10D0A18: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&HA), var_98)
  loc_10D0A20: var_98.Enabled = False
  loc_10D0A3B: Me.txtRecdTime.Enabled = False
  loc_10D0A50: Set var_8C = Me.Txt
  loc_10D0A56: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&HB), var_98)
  loc_10D0A5E: var_98.Enabled = False
  loc_10D0A78: Set var_8C = Me.Txt
  loc_10D0A7E: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&HB), var_98)
  loc_10D0A86: var_98.Text = MemVar_1F920C8
  loc_10D0A9F: Set var_8C = Me.Txt
  loc_10D0AA5: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&HE), var_98)
  loc_10D0AAD: var_98.Enabled = False
  loc_10D0AC6: Set var_8C = Me.Txt
  loc_10D0ACC: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&HF), var_98)
  loc_10D0AD4: var_98.Enabled = False
  loc_10D0AED: Set var_8C = Me.Txt
  loc_10D0AF3: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&H10), var_98)
  loc_10D0AFB: var_98.Enabled = False
  loc_10D0B14: Set var_8C = Me.Txt
  loc_10D0B1A: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&H11), var_98)
  loc_10D0B22: var_98.Enabled = False
  loc_10D0B3B: Set var_8C = Me.Txt
  loc_10D0B41: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&H12), var_98)
  loc_10D0B49: var_98.Enabled = False
  loc_10D0B62: Set var_8C = Me.Txt
  loc_10D0B68: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&H14), var_98)
  loc_10D0B70: var_98.Enabled = False
  loc_10D0B89: Set var_8C = Me.Txt
  loc_10D0B8F: Call 0.Method_Proc_38_34_10D0BA40 (CInt(&HD), var_98)
  loc_10D0B97: var_98.Enabled = False
  loc_10D0BA3: Exit Sub
End Sub

Public Sub Proc_38_35_E85390
  'Data Table: 490DEC
  loc_E8533C: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E8534E:   Me.DGRoom.Visible = False
  loc_E85356: End If
  loc_E85372: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E85384:   Me.FGPoint.Visible = False
  loc_E8538C: End If
  loc_E8538C: Exit Sub
End Sub

Public Sub Proc_38_36_EE20C8(arg_C) 'EE20C8
  'Data Table: 490DEC
  Dim var_8C As TextBox
  Dim arg_74FF As Double
  loc_EE201C: Call Proc_38_35_E85390()
  loc_EE202C: Set var_88 = Me.Txt
  loc_EE2032: Call 0.Method_Proc_38_36_EE20C80 (CInt(2))
  loc_EE205B: If (Proc_6_27_EA565C(var_8C, "Room No") = 0) Then
  loc_EE205E:   Exit Sub
  loc_EE205F: End If
  loc_EE2096: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE2099:   Call TopCtrl1_UnknownEvent_16()
  loc_EE20A1: Else
  loc_EE20AB:   Set var_88 = Me.Txt
  loc_EE20B1:   Call 0.Method_Proc_38_36_EE20C80 (arg_C, var_8C)
  loc_EE20B9:   var_8C.SetFocus
  loc_EE20C5: End If
  loc_EE20C5: Exit Sub
  loc_EE20C6: arg_74FF = var_8C
End Sub

Public Sub Proc_38_37_11470C8
  'Data Table: 490DEC
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
  loc_1146D78: var_90 = global_60
  loc_1146D8F: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1146DB2: var_E0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_1146DC3: Proc_6_7_F25D88(var_D0, global_64, var_E0)
  loc_1146DCB: var_F0 = var_134 & var_D0 
  loc_1146DD4: var_110 = var_F0 & " Order By VP.Date_From DESC" 
  loc_1146DDF: Me.Connection15.Execute CStr(var_110), -1, var_138
  loc_1146DEA: Set var_8C = var_138
  loc_1146E20: If (var_8C.RecordCount <= 0) Then
  loc_1146E3C:   MsgBox("Invalid Date", 0, var_E0, var_F0, var_110)
  loc_1146E4F:   var_88 = vbNullString
  loc_1146E52:   Proc_38_37_11470C8 = 
  loc_1146E58: End If
  loc_1146E6C: If (var_8C.RecordCount > 0) Then
  loc_1146EAB:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1146EC8:     var_150 = var_8C.Fields.Item("Prefix")
  loc_1146ED9:     var_9C = CStr(var_150.Value)
  loc_1146EF4:     Set var_138 = Me.Txt
  loc_1146EFA:     Call 0.Method_Proc_38_37_11470C80 (CInt(1), var_150)
  loc_1146F10:     var_94 = CLng(Val(var_150.Text))
  loc_1146F20:   Else
  loc_1146F4B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1146F72:     var_150 = var_8C.Fields.Item("start_srl_no")
  loc_1146F87:     var_E0 = (var_150.Value + 1)
  loc_1146F8D:     var_94 = CLng(var_E0)
  loc_1146F9E:   End If
  loc_1146F9E: End If
  loc_1146FC9: var_D0 = Space((5 - Len(var_90)))
  loc_1146FD1: var_F0 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_150.Value)
  loc_1146FDB: var_110 = (var_F0 + CVar(var_9C))
  loc_1146FEC: var_134 = Space((5 - Len(var_9C)))
  loc_1146FF4: var_164 = (var_110 + var_134)
  loc_114700A: var_174 = Space((8 - Len(CStr(var_94))))
  loc_1147012: var_184 = (var_164 + var_174)
  loc_114701E: var_1A4 = (var_184 + CVar(CStr(var_94)))
  loc_1147023: var_98 = CStr(var_1A4)
  loc_1147053: Me.LblVPrefix.Caption = var_9C
  loc_1147069: Set var_138 = Me.Txt
  loc_114706F: Call 0.Method_Proc_38_37_11470C80 (CInt(0), var_150)
  loc_1147077: var_150.Text = var_98
  loc_1147096: Set var_138 = Me.Txt
  loc_114709C: Call 0.Method_Proc_38_37_11470C80 (CInt(1), var_150)
  loc_11470A4: var_150.Text = CStr(var_94)
  loc_11470B6: var_88 = var_98
  loc_11470BE: Set var_8C = Nothing
  loc_11470C1: Proc_38_37_11470C8 = var_94
End Sub
