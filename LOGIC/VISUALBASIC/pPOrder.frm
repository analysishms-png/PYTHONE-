VERSION 5.00
Begin VB.Form pPOrder
  Caption = "Purchase Order"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = -4095
  ClientTop = -315
  ClientWidth = 11880
  ClientHeight = 8070
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 450
    TabIndex = 64
  End
  Begin TextBox Txt
    Index = 17
    ForeColor = &HC00000&
    Left = 8850
    Top = 1425
    Width = 1275
    Height = 285
    TabIndex = 4
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
    Appearance = 0 'Flat
  End
  Begin DataGrid DGItem
    Left = 9570
    Top = 9225
    Width = 8415
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGParty
    Left = 9810
    Top = 8850
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin DataGrid DGOrdType
    Left = 10125
    Top = 8460
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin Frame FrmList
    Left = 5250
    Top = 8775
    Width = 2010
    Height = 1725
    Visible = 0   'False
    TabIndex = 38
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 675
      Top = -1110
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 39
    End
  End
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC00000&
    Left = 6450
    Top = 7365
    Width = 7635
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 120
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
    Index = 9
    ForeColor = &HC00000&
    Left = 6450
    Top = 7050
    Width = 7635
    Height = 285
    TabIndex = 15
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
    Index = 1
    ForeColor = &HC00000&
    Left = 1725
    Top = 1110
    Width = 2415
    Height = 285
    TabIndex = 0
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 720
    Top = 2055
    Width = 1065
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 3
    ForeColor = &HC00000&
    Left = 8865
    Top = 1110
    Width = 1260
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
  Begin TextBox Txt
    Index = 12
    ForeColor = &HC00000&
    Left = 6450
    Top = 7995
    Width = 7635
    Height = 285
    TabIndex = 18
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
    Index = 6
    ForeColor = &HC00000&
    Left = 1605
    Top = 7320
    Width = 1260
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 14
    ForeColor = &HC00000&
    Left = 4110
    Top = 7335
    Width = 795
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 1605
    Top = 7635
    Width = 1260
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 1605
    Top = 7005
    Width = 1260
    Height = 285
    TabIndex = 7
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
    Index = 11
    ForeColor = &HC00000&
    Left = 6450
    Top = 7680
    Width = 7635
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 70
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
    ForeColor = &HC00000&
    Left = 4110
    Top = 7965
    Width = 795
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    ForeColor = &HC00000&
    Left = 4110
    Top = 7650
    Width = 795
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 4110
    Top = 7020
    Width = 795
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 8
    ForeColor = &HC00000&
    Left = 1605
    Top = 7950
    Width = 1275
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 17
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
    ForeColor = &HC00000&
    Left = 5805
    Top = 1110
    Width = 1260
    Height = 285
    TabIndex = 2
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 15825
    Top = 6885
    Width = 2310
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 1725
    Top = 1425
    Width = 5340
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
    Left = 0
    Top = 1750
    Width = 14115
    Height = 5235
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 7650
    Top = 8985
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 47
  End
  Begin DataGrid DGIndent
    Left = 10710
    Top = 8175
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin MSHFlexGrid FGCat
    Left = 90
    Top = 9615
    Width = 9150
    Height = 2355
    Visible = 0   'False
    TabIndex = 60
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 30
    Top = 8295
    Width = 2745
    Height = 345
    TabIndex = 65
    AutoSize = -1  'True
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 8205
    Top = 8355
    Width = 2790
    Height = 285
    TabIndex = 63
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
    Left = 6960
    Top = 8355
    Width = 2880
    Height = 255
    TabIndex = 62
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 61
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
  Begin Label Label2
    Index = 4
    BackColor = &HB4FEBD&
    ForeColor = &H80000008&
    Left = 16440
    Top = 1335
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 3
    BackColor = &H80C0FF&
    ForeColor = &H80000008&
    Left = 16440
    Top = 1065
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 58
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Between Max And Min  Stock"
    Index = 12
    ForeColor = &HC00000&
    Left = 16770
    Top = 1365
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 57
    Alignment = 2 'Center
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
    Caption = "Below To Minimum Stock"
    Index = 9
    ForeColor = &HC00000&
    Left = 16755
    Top = 1095
    Width = 2445
    Height = 240
    Visible = 0   'False
    TabIndex = 56
    Alignment = 2 'Center
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
    Caption = "Above To Maximum Stock "
    Index = 8
    ForeColor = &HC00000&
    Left = 16755
    Top = 825
    Width = 2550
    Height = 240
    Visible = 0   'False
    TabIndex = 55
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 2
    BackColor = &H8080FF&
    ForeColor = &H80000008&
    Left = 16440
    Top = 795
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest Bill Printed "
    Index = 0
    ForeColor = &H0&
    Left = 330
    Top = 15
    Width = 1650
    Height = 210
    TabIndex = 53
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 0
    BackColor = &HB4FEBD&
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 285
    Height = 270
    TabIndex = 52
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest Bill Printed "
    Index = 2
    ForeColor = &H0&
    Left = 14460
    Top = 7290
    Width = 1650
    Height = 210
    Visible = 0   'False
    TabIndex = 51
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 1
    BackColor = &HB4FEBD&
    ForeColor = &H80000008&
    Left = 14130
    Top = 7275
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Indent No."
    Index = 5
    ForeColor = &HC00000&
    Left = 7740
    Top = 1425
    Width = 975
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
    Caption = "Fwd. Charges"
    Index = 47
    ForeColor = &HC00000&
    Left = 210
    Top = 7335
    Width = 1305
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
  Begin Label Label1
    Caption = "%"
    Index = 43
    ForeColor = &HC00000&
    Left = 4965
    Top = 7350
    Width = 150
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
    Caption = "%"
    Index = 40
    ForeColor = &HC00000&
    Left = 4965
    Top = 7980
    Width = 150
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
  Begin Label Label1
    Caption = "%"
    Index = 39
    ForeColor = &HC00000&
    Left = 4965
    Top = 7680
    Width = 150
    Height = 240
    TabIndex = 41
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
    Caption = "%"
    Index = 38
    ForeColor = &HC00000&
    Left = 4965
    Top = 7035
    Width = 150
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
  Begin Label Label1
    Caption = "Supplier Name"
    Index = 32
    ForeColor = &HC00000&
    Left = 255
    Top = 1440
    Width = 1425
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
  Begin Label Label1
    Caption = "Remark"
    Index = 29
    ForeColor = &HC00000&
    Left = 5340
    Top = 7695
    Width = 735
    Height = 240
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 15420
    Top = 6585
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 35
    Alignment = 1 'Right Justify
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
  Begin Label Label1
    Caption = "Order Type"
    Index = 28
    ForeColor = &HC00000&
    Left = 255
    Top = 1125
    Width = 1065
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
  Begin Label Label1
    Caption = "Order  Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 7725
    Top = 1125
    Width = 1095
    Height = 240
    TabIndex = 32
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
    Caption = "Pay. Terms"
    Index = 25
    ForeColor = &HC00000&
    Left = 5340
    Top = 7380
    Width = 1065
    Height = 240
    TabIndex = 31
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
    Caption = "Desp. Thru"
    Index = 23
    ForeColor = &HC00000&
    Left = 5340
    Top = 7065
    Width = 1020
    Height = 240
    TabIndex = 30
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
    Caption = "Sur Charge"
    Index = 21
    ForeColor = &HC00000&
    Left = 3000
    Top = 7980
    Width = 1080
    Height = 240
    TabIndex = 29
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
    Caption = "Sale Tax"
    Index = 20
    ForeColor = &HC00000&
    Left = 3000
    Top = 7665
    Width = 855
    Height = 240
    TabIndex = 28
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
    Caption = "Excise"
    Index = 19
    ForeColor = &HC00000&
    Left = 3000
    Top = 7350
    Width = 615
    Height = 240
    TabIndex = 27
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
    Caption = "Del.Sch."
    Index = 13
    ForeColor = &HC00000&
    Left = 5340
    Top = 8010
    Width = 795
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
  Begin Label Label1
    Caption = "Discount"
    Index = 11
    ForeColor = &HC00000&
    Left = 3000
    Top = 7035
    Width = 810
    Height = 240
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
  Begin Label Label1
    Caption = "Pack. Charges"
    Index = 10
    ForeColor = &HC00000&
    Left = 210
    Top = 7665
    Width = 1365
    Height = 240
    TabIndex = 24
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
    Caption = "Disp. Mode"
    Index = 7
    ForeColor = &HC00000&
    Left = 210
    Top = 7020
    Width = 1050
    Height = 240
    TabIndex = 23
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
    Caption = "Prices"
    Index = 6
    ForeColor = &HC00000&
    Left = 210
    Top = 7965
    Width = 585
    Height = 240
    TabIndex = 22
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
    Caption = "Order No."
    Index = 4
    ForeColor = &HC00000&
    Left = 4830
    Top = 1125
    Width = 915
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 15120
    Top = 7800
    Width = 660
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
End

Attribute VB_Name = "pPOrder"

Private global_100 As Integer
Private global_102 As Integer
Private global_116 As Long

Private Sub DGOrdType_UnknownEvent_9 'FD2FE8
  'Data Table: 503190
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD2E2C: On Error Goto loc_FD2FE0
  loc_FD2E3E: Me.DGOrdType.Visible = False
  loc_FD2E5D: If (Me.RecordCount > 0) Then
  loc_FD2EAF:   Set var_CC = Me.Txt
  loc_FD2EB5:   Call 0.Method_DGOrdType_UnknownEvent_90 (CInt(CStr(Me.DGOrdType.Tag)), var_D0)
  loc_FD2EBD:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD2F15:   Set var_B4 = Me.DGOrdType
  loc_FD2F2C:   Set var_CC = Me.Txt
  loc_FD2F32:   Call 0.Method_DGOrdType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD2F3A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD2F8E:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD2F9F: End If
  loc_FD2FBD: Set var_B0 = Me.Txt
  loc_FD2FC3: Call 0.Method_DGOrdType_UnknownEvent_90 (CInt(CStr(Me.DGOrdType.Tag)))
  loc_FD2FCB: var_B4.SetFocus
  loc_FD2FDF: Exit Sub
  loc_FD2FE0: ' Referenced from: FD2E2C
  loc_FD2FE0: Proc_6_60_E62BC4(var_B4)
  loc_FD2FE5: Exit Sub
End Sub

Private Sub DGOrdType_UnknownEvent_1F 'E739B0
  'Data Table: 503190
  loc_E7396E: Proc_6_153_E91194(Me.DGOrdType, arg_14)
  loc_E73985: Set var_8C = Me.FGPoint
  loc_E739A1: Proc_6_138_106D6F8(Me.DGOrdType, global_52, CInt(1))
  loc_E739AF: Exit Sub
End Sub

Private Sub DGIndent_UnknownEvent_9 'F5B040
  'Data Table: 503190
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5AF20: On Error Goto loc_F5B03A
  loc_F5AF32: Me.DGIndent.Visible = False
  loc_F5AF51: If (Me.RecordCount > 0) Then
  loc_F5AF90:   Set var_B4 = Me.Txt
  loc_F5AF96:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5AF9E:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5AFD1:   var_B0 = Me.Fields.Item("Name")
  loc_F5AFF0:   Set var_B4 = Me.Txt
  loc_F5AFF6:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5AFFE:   var_B8.Text = CStr(var_B0.Value)
  loc_F5B014: End If
  loc_F5B01F: Set var_A8 = Me.Txt
  loc_F5B025: Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&H11))
  loc_F5B02D: var_B0.SetFocus
  loc_F5B039: Exit Sub
  loc_F5B03A: ' Referenced from: F5AF20
  loc_F5B03A: Proc_6_60_E62BC4(var_B0)
  loc_F5B03F: Exit Sub
End Sub

Private Sub DGIndent_UnknownEvent_1F 'E73A44
  'Data Table: 503190
  loc_E73A02: Proc_6_153_E91194(Me.DGIndent, arg_14)
  loc_E73A19: Set var_8C = Me.FGPoint
  loc_E73A35: Proc_6_138_106D6F8(Me.DGIndent, global_56, CInt(&H11))
  loc_E73A43: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAF350
  'Data Table: 503190
  loc_EAF2D8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EAF2DB:   Call DGItem_UnknownEvent_9()
  loc_EAF2E0: End If
  loc_EAF2FC: If (CBool(Me.DGOrdType.Visible) = &HFF) Then
  loc_EAF2FF:   Call DGOrdType_UnknownEvent_9()
  loc_EAF304: End If
  loc_EAF320: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EAF323:   Call DGParty_UnknownEvent_9()
  loc_EAF328: End If
  loc_EAF344: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_EAF347:   Call DGIndent_UnknownEvent_9()
  loc_EAF34C: End If
  loc_EAF34C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E3F9A0
  'Data Table: 503190
  Dim var_8C As TextBox
  loc_E3F97F: Set var_88 = Me.TxtGrid
  loc_E3F985: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E3F98D: var_8C.Visible = False
  loc_E3F999: Call Proc_89_62_F6B9C8()
  loc_E3F99E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'F30C58
  'Data Table: 503190
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_F30B54: Set var_88 = Me.TxtGrid
  loc_F30B5A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_F30B74: If (var_8C.Visible = 0) Then
  loc_F30B95:   var_B0 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_F30BD1:   If (CVar(CLng(&H10)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_F30BE7:     var_B0 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_F30BEF:     var_D0 = CVar(CLng(&H10)) 'Long
  loc_F30C1C:     Me.FGrid.BackColorSel = CVar(CLng(CStr(Me.FGrid.TextMatrix))))
  loc_F30C37:   Else
  loc_F30C4D:     Me.FGrid.BackColorSel = CVar(CLng(global_80))
  loc_F30C55:   End If
  loc_F30C55: End If
  loc_F30C55: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF484
  'Data Table: 503190
  loc_DFF47C: Call Proc_89_52_E3FEB0()
  loc_DFF481: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '120A430
  'Data Table: 503190
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  loc_1209F70: Set var_88 = Me.TopCtrl1
  loc_1209F76: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1209FBB: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1209FC4:   Call Form_KeyDown(Cancel, arg_10)
  loc_1209FC9: End If
  loc_1209FCD: Set var_88 = Me.TopCtrl1
  loc_1209FD3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1209FEC: If (CStr() = "Browse") Then
  loc_1209FEF:   Exit Sub
  loc_1209FF0: End If
  loc_120A064: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_120A06F:   var_9C = "+{Tab}"
  loc_120A075:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_120A07F:   Cancel = 0
  loc_120A085: Else
  loc_120A08F:   var_B0 = Me.FGrid.Rows
  loc_120A0DC:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_120A0ED:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_120A0F7:     Cancel = 0
  loc_120A0FA:   End If
  loc_120A0FA: End If
  loc_120A100: global_100 = Cancel
  loc_120A126: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_120A14A: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_120A160:   var_DC = CLng(Me.FGrid.Col)
  loc_120A170:   If (var_DC = CLng(3)) Then
  loc_120A186:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120A19E:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_120A1A3:     var_11C = vbNullString
  loc_120A1AD:     Set var_B4 = Me.FGrid
  loc_120A1B3:     LateIdCallSt
  loc_120A1DE:     var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120A1E6:     var_11C = CVar(CLng(9)) 'Long
  loc_120A211:     var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_120A219:     Set var_A0 = Me.FGrid
  loc_120A21F:     LateIdCallSt
  loc_120A23E:   Else
  loc_120A245:     If (var_DC = CLng(8)) Then
  loc_120A256:       If CBool(global_152 <> "No") Then
  loc_120A26C:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120A284:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_120A289:         var_11C = vbNullString
  loc_120A293:         Set var_B4 = Me.FGrid
  loc_120A299:         LateIdCallSt
  loc_120A2C4:         var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120A2CC:         var_11C = CVar(CLng(9)) 'Long
  loc_120A2F7:         var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_120A2FF:         Set var_A0 = Me.FGrid
  loc_120A305:         LateIdCallSt
  loc_120A321:       End If
  loc_120A324:     Else
  loc_120A32B:       If (var_DC = CLng(1)) Then
  loc_120A341:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120A349:         var_FC = CVar(CLng(&HE)) 'Long
  loc_120A34E:         var_11C = vbNullString
  loc_120A358:         Set var_A0 = Me.FGrid
  loc_120A35E:         LateIdCallSt
  loc_120A383:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120A38B:         var_FC = CVar(CLng(1)) 'Long
  loc_120A390:         var_11C = vbNullString
  loc_120A39A:         Set var_A0 = Me.FGrid
  loc_120A3A0:         LateIdCallSt
  loc_120A3B5:       Else
  loc_120A3BC:         If (var_DC = CLng(2)) Then
  loc_120A3D2:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120A3EA:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_120A3EF:           var_11C = vbNullString
  loc_120A3F9:           Set var_B4 = Me.FGrid
  loc_120A3FF:           LateIdCallSt
  loc_120A417:         End If
  loc_120A417:       End If
  loc_120A417:     End If
  loc_120A417:   End If
  loc_120A417: End If
  loc_120A41D: If (Cancel = &HD) Then
  loc_120A425:   global_102 = 0
  loc_120A428: End If
  loc_120A42A: Cancel = 0
  loc_120A42D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E13FE8
  'Data Table: 503190
  loc_E13FD9: Call FGrid_UnknownEvent_C()
  loc_E13FE3: global_102 = 0
  loc_E13FE6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '107CB0C
  'Data Table: 503190
  Dim var_A4 As String
  Dim var_90 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_D2 As Integer
  Dim var_BC As TextBox
  Dim var_CC As TextBox
  loc_107C87C: Set var_90 = Me.TopCtrl1
  loc_107C882: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107C89B: If (CStr() = "Browse") Then
  loc_107C89E:   Exit Sub
  loc_107C89F: End If
  loc_107C8B2: var_A8 = CLng(Me.FGrid.Col)
  loc_107C8C2: If Not (var_A8 = CLng(1)) Then
  loc_107C8CC:   If (var_A8 = CLng(2)) Then
  loc_107C8CF:   End If
  loc_107C8D3:   Set var_CC = Me.FGrid
  loc_107C8F7:   var_A4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_107C924:   Set var_BC = var_CC
  loc_107C936:   Proc_6_63_110ABA4(Me, var_BC, Me.TxtGrid, 0, 0)
  loc_107C95E:   Set var_90 = Me.TxtGrid
  loc_107C964:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_BC, var_A4, Asc(var_A4))
  loc_107C96C:   0 = var_BC.Text
  loc_107C985:   If (Len(var_A4) <= 1) Then
  loc_107C994:     Set var_90 = Me.TxtGrid
  loc_107C99A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_BC, var_A4)
  loc_107C9A2:     var_D2 = var_BC.Text
  loc_107C9B3:     Set var_C0 = Me.TxtGrid
  loc_107C9B9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_CC)
  loc_107C9C1:     var_CC.Text = var_A4
  loc_107C9D4:   End If
  loc_107C9E0:   Set var_90 = Me.TxtGrid
  loc_107C9E6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_BC)
  loc_107CA00:   Set var_C0 = Me.TxtGrid
  loc_107CA06:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_CC)
  loc_107CA0E:   var_CC.SelStart = Len(var_BC.Text)
  loc_107CA24: Else
  loc_107CA2B:   If (var_A8 = CLng(3)) Then
  loc_107CA6C:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_107CA81:   Else
  loc_107CA88:     If (var_A8 = CLng(8)) Then
  loc_107CA99:       If CBool(global_152 <> "No") Then
  loc_107CADA:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_107CAEC:       End If
  loc_107CAEC:     End If
  loc_107CAEC:   End If
  loc_107CAEC: End If
  loc_107CAF6: If (CLng(Cancel) <> &HD) Then
  loc_107CAFE:   global_102 = &HFF
  loc_107CB01: End If
  loc_107CB06: Set var_88 = Nothing
  loc_107CB09: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '118F0F4
  'Data Table: 503190
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As String
  Dim unk_5031AD As Connection15
  Dim var_8C As Recordset15
  loc_118ED30: Set var_94 = Me.TopCtrl1
  loc_118ED36: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_118ED4F: If (CStr() = "Browse") Then
  loc_118ED52:   Exit Sub
  loc_118ED53: End If
  loc_118ED70: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_118ED73:   Exit Sub
  loc_118ED74: End If
  loc_118ED85: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_118EDA7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_118EDB8:     Set var_94 = Me.Txt
  loc_118EDBE:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(0), var_AC)
  loc_118EDDE:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118EDE6:     var_E4 = CVar(CLng(0)) 'Long
  loc_118EE32:     var_118 = "Select Count(*) From Stock Where ContraDocid='" & var_AC.Text & "' And ContraSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_118EE42:     unk_5031AD.Execute var_118 & vbNullString, var_13C, -1
  loc_118EE4D:     Set var_8C = var_140
  loc_118EE8B:     If (var_8C.RecordCount > 0) Then
  loc_118EECA:       If (var_8C.Fields.Item(0).Value > 0) Then
  loc_118EEEE:         MsgBox("Can't Remove Row :Related Entry Exists In Stock", &H30, "Row Validation", var_13C, var_15C)
  loc_118EF02:         Set var_94 = Me.FGrid
  loc_118EF13:         Exit Sub
  loc_118EF14:       End If
  loc_118EF14:     End If
  loc_118EF4B:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_13C, var_15C) = 6) Then
  loc_118EF6D:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_118EF83:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118EF8C:         Set var_AC = Me.FGrid
  loc_118EFA7:       Else
  loc_118EFBA:         Me.FGrid.Rows = 1
  loc_118EFD7:         var_108 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_118EFDF:         Set var_AC = Me.FGrid
  loc_118F00E:         Me.FGrid.FixedRows = 1
  loc_118F016:       End If
  loc_118F01A:       Set var_94 = Me.TopCtrl1
  loc_118F020:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_10000)
  loc_118F039:       If (CStr(var_108) = "Add") Then
  loc_118F061:         For var_160 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_160 'Integer
  loc_118F06B:           var_C4 = CVar(CLng(var_86)) 'Long
  loc_118F073:           var_E4 = CVar(CLng(0)) 'Long
  loc_118F07D:           var_A4 = CVar(CStr(var_86)) 'String
  loc_118F085:           Set var_94 = Me.FGrid
  loc_118F08B:           LateIdCallSt
  loc_118F09C:         Next var_160 'Integer
  loc_118F0A1:       End If
  loc_118F0A1:       Call Proc_89_54_1142B2C()
  loc_118F0A6:     End If
  loc_118F0A9:   Else
  loc_118F0CA:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_13C, var_15C)
  loc_118F0DA:   End If
  loc_118F0DE:   Set var_94 = Me.FGrid
  loc_118F0EF: End If
  loc_118F0EF: Exit Sub
  loc_118F0F0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9BB00
  'Data Table: 503190
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9BAA3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9BABB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9BAE3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9BAFE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40FE4
  'Data Table: 503190
  Dim var_8C As TextBox
  loc_E40FB8: Call Proc_89_62_F6B9C8()
  loc_E40FC8: Set var_88 = Me.TxtGrid
  loc_E40FCE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40FD6: var_8C.Visible = False
  loc_E40FE2: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10DCC10
  'Data Table: 503190
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_10DC914: Call Proc_89_62_F6B9C8()
  loc_10DC925: If (Index = 0) Then
  loc_10DC93B:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DC97A:   Set var_108 = Me.TxtGrid
  loc_10DC980:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10DC988:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_10DC9B9:   var_114 = CLng(Me.FGrid.Col)
  loc_10DC9C9:   If (var_114 = CLng(1)) Then
  loc_10DC9DF:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DCA07:     global_96 = CStr(Me.FGrid.TextMatrix))
  loc_10DCA33:     If (Me.RecordCount > 0) Then
  loc_10DCA59:       Proc_6_137_1193554(Me.DGItem, global_60, Index, Me.FGPoint, CVar(CLng(&HE)))
  loc_10DCA67:     End If
  loc_10DCAA8:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10DCAAB:       Exit Sub
  loc_10DCAAC:     End If
  loc_10DCABF:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DCAC7:     var_E0 = CVar(CLng(1)) 'Long
  loc_10DCAFA:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10DCB03:       Me.MoveFirst
  loc_10DCB1B:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DCB2C:       Set var_A0 = Me.FGrid
  loc_10DCB43:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_A0.TextMatrix))), CVar(CLng(1)), var_C0, CVar(CLng(1)))
  loc_10DCB6C:       Me.Find CStr("Name =" & var_12C), 0, 1
  loc_10DCB9C:       If (Me.EOF = &HFF) Then
  loc_10DCBA5:         Me.MoveFirst
  loc_10DCBAA:       End If
  loc_10DCBAA:     End If
  loc_10DCBAD:   Else
  loc_10DCBB4:     If Not (var_114 = CLng(3)) Then
  loc_10DCBBE:       If (var_114 = CLng(8)) Then
  loc_10DCBC1:       End If
  loc_10DCBD0:       Set var_8C = Me.TxtGrid
  loc_10DCBD6:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0, var_15C, var_C0)
  loc_10DCBDE:       var_A0.MaxLength = var_C0
  loc_10DCBF3:       If (global_102 = 0) Then
  loc_10DCBFE:         var_110 = "{Home}+{End}"
  loc_10DCC04:         Proc_303_0_FB9B68(CStr("Name =" & var_12C), 0, var_114)
  loc_10DCC0C:       End If
  loc_10DCC0C:     End If
  loc_10DCC0C:   End If
  loc_10DCC0C: End If
  loc_10DCC0C: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1227DCC
  'Data Table: 503190
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_12278CB: var_86 = Shift
  loc_12278DA: If (KeyCode = 0) Then
  loc_12278E7:   If (CLng(Shift) = &H1B) Then
  loc_12278F7:     Set var_8C = Me.TxtGrid
  loc_12278FD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1227905:     var_88 = var_90.Tag
  loc_1227917:     Set var_98 = Me.TxtGrid
  loc_122791D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1227925:     var_9C.Text = var_94
  loc_1227941:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1227946:     Call Proc_89_62_F6B9C8(arg_14)
  loc_122794F:     Set var_8C = Me.FGrid
  loc_122796C:     Set var_8C = Me.TxtGrid
  loc_1227972:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_122797A:     var_90.Visible = FGrid.DispID_8001
  loc_1227986:     Exit Sub
  loc_1227987:   End If
  loc_122799A:   var_B0 = CLng(Me.FGrid.Col)
  loc_12279AA:   If (var_B0 = CLng(1)) Then
  loc_12279CA:     Set var_9C = Me.FGPoint
  loc_12279D5:     Set var_98 = Nothing
  loc_1227A03:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_1227A72:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1227A79:       Set var_98 = Me.DGItem
  loc_1227A98:       Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, 1)
  loc_1227AA6:     End If
  loc_1227AB0:     If (CLng(Shift) = &HD) Then
  loc_1227AB9:       Call Proc_89_53_153620C(KeyCode, var_B2, var_98, var_9C)
  loc_1227AC4:       If (var_B2 = &HFF) Then
  loc_1227B11:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)))
  loc_1227B21:       End If
  loc_1227B21:     End If
  loc_1227B24:   Else
  loc_1227B2B:     If (var_B0 = CLng(3)) Then
  loc_1227B6E:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_102 = &HFF))) Then
  loc_1227B77:         Call Proc_89_53_153620C(KeyCode, var_B2, 0, 2)
  loc_1227B82:         If (var_B2 = &HFF) Then
  loc_1227B93:           If CBool(global_152 <> "No") Then
  loc_1227BE0:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), 0)
  loc_1227BF3:           Else
  loc_1227C3D:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), &H10, 0)
  loc_1227C4D:           End If
  loc_1227C4D:         End If
  loc_1227C4D:       End If
  loc_1227C50:     Else
  loc_1227C57:       If (var_B0 = CLng(8)) Then
  loc_1227C9A:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_102 = &HFF))) Then
  loc_1227CA3:           Call Proc_89_53_153620C(KeyCode, var_B2, 0, 8, 0)
  loc_1227CAE:           If (var_B2 = &HFF) Then
  loc_1227CFB:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), &H10)
  loc_1227D0B:           End If
  loc_1227D0B:         End If
  loc_1227D0E:       Else
  loc_1227D15:         If (var_B0 = CLng(2)) Then
  loc_1227D58:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_102 = &HFF))) Then
  loc_1227D63:             Call Proc_89_53_153620C(0, var_B4, 0, 0)
  loc_1227D6E:             If (var_B4 = &HFF) Then
  loc_1227DBB:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), 0)
  loc_1227DCB:             End If
  loc_1227DCB:           End If
  loc_1227DCB:         End If
  loc_1227DCB:       End If
  loc_1227DCB:     End If
  loc_1227DCB:   End If
  loc_1227DCB: End If
  loc_1227DCB: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FA1D74
  'Data Table: 503190
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_FA1BF3: Proc_6_58_E054C0(arg_10)
  loc_FA1C04: If (KeyAscii = 0) Then
  loc_FA1C1A:   var_A0 = CLng(Me.FGrid.Col)
  loc_FA1C2A:   If (var_A0 = CLng(1)) Then
  loc_FA1C49:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FA1C5B:       var_A4 = "Name"
  loc_FA1C76:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_FA1C90:       Set var_AC = Me.FGPoint
  loc_FA1CA8:       Proc_6_138_106D6F8(Me.DGItem, global_60, KeyAscii, var_AC)
  loc_FA1CB6:     End If
  loc_FA1CB9:   Else
  loc_FA1CC0:     If (var_A0 = CLng(3)) Then
  loc_FA1CCD:       Set var_8C = Me.TxtGrid
  loc_FA1CD3:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_FA1CEE:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_FA1CFD:     Else
  loc_FA1D04:       If (var_A0 = CLng(8)) Then
  loc_FA1D11:         Set var_8C = Me.TxtGrid
  loc_FA1D17:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_FA1D32:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_FA1D41:       Else
  loc_FA1D48:         If (var_A0 = CLng(2)) Then
  loc_FA1D59:           Set var_8C = Me.TxtGrid
  loc_FA1D5F:           Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, &H23)
  loc_FA1D67:           var_AC.MaxLength = 2
  loc_FA1D73:         End If
  loc_FA1D73:       End If
  loc_FA1D73:     End If
  loc_FA1D73:   End If
  loc_FA1D73: End If
  loc_FA1D73: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10CB5F4
  'Data Table: 503190
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_AC As Variant
  Dim var_114 As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_128 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_A8 As String
  loc_10CB314: On Error Goto loc_10CB5EE
  loc_10CB323: If (KeyCode = 0) Then
  loc_10CB339:   var_A0 = CLng(Me.FGrid.Col)
  loc_10CB349:   If (var_A0 = CLng(1)) Then
  loc_10CB36F:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10CB380:       Call TxtGrid_KeyDown(KeyCode, global_100)
  loc_10CB389:       Set var_AC = Me.TxtGrid
  loc_10CB394:       var_A8 = "Name"
  loc_10CB3AF:       Proc_6_89_146F1AC(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10CB3BE:     End If
  loc_10CB3C1:   Else
  loc_10CB3C8:     If (var_A0 = CLng(2)) Then
  loc_10CB408:       Set var_8C = Me.TxtGrid
  loc_10CB40E:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_10CB416:       &HFF = var_AC.Text
  loc_10CB41E:       var_114 = CVar(var_A8) 'String
  loc_10CB426:       Set var_128 = Me.FGrid
  loc_10CB42C:       LateIdCallSt
  loc_10CB44D:     Else
  loc_10CB454:       If (var_A0 = CLng(3)) Then
  loc_10CB464:         Set var_8C = Me.TxtGrid
  loc_10CB46A:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_128)
  loc_10CB472:         var_114 = var_AC.Text
  loc_10CB495:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CB4AD:         var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10CB4DA:         var_168 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10CB4E2:         Set var_128 = Me.FGrid
  loc_10CB4E8:         LateIdCallSt
  loc_10CB522:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CB52A:         var_178 = CVar(CLng(5)) 'Long
  loc_10CB54C:         var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10CB562:         var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CB56A:         var_1C4 = CVar(CLng(6)) 'Long
  loc_10CB582:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CB58A:         var_F4 = CVar(CLng(3)) 'Long
  loc_10CB5B2:         var_168 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10CB5BA:         Set var_1E8 = Me.FGrid
  loc_10CB5C0:         LateIdCallSt
  loc_10CB5ED:       End If
  loc_10CB5ED:     End If
  loc_10CB5ED:   End If
  loc_10CB5ED: End If
  loc_10CB5ED: Exit Sub
  loc_10CB5EE: ' Referenced from: 10CB314
  loc_10CB5EE: Proc_6_60_E62BC4(var_1E8, var_168, var_F4, var_D4, var_1C4, var_1A4, var_180, var_178)
  loc_10CB5F3: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E234CC
  'Data Table: 503190
  Dim arg_10 As Integer
  loc_E234B4: If (Cancel = 0) Then
  loc_E234BD:   Call Proc_89_53_153620C(Cancel, var_88)
  loc_E234C6:   arg_10 = Not(var_88)
  loc_E234C9: End If
  loc_E234C9: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F546BC
  'Data Table: 503190
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F545DE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F545E5:   Set var_A8 = Me.ListView
  loc_F5462F:   Set var_C0 = Me.Txt
  loc_F54635:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5463D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5465D: End If
  loc_F54669: Me.FrmList.Visible = False
  loc_F54699: Set var_9C = Me.Txt
  loc_F5469F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F546A7: var_A8.SetFocus
  loc_F546BB: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '13A3FD4
  'Data Table: 503190
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_A0 As String
  Dim var_F8 As String
  loc_13A36D6: Set var_88 = Me.Txt
  loc_13A36DC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13A36EA: Proc_6_74_E226B0(var_8C)
  loc_13A36F6: Call Proc_89_62_F6B9C8(var_8C)
  loc_13A36FE: var_92 = Index
  loc_13A3709: If (var_92 = CInt(1)) Then
  loc_13A3723:   If (Me.RecordCount > 0) Then
  loc_13A3731:     Set var_8C = Me.FGPoint
  loc_13A3749:     Proc_6_137_1193554(Me.DGOrdType, global_52, Index)
  loc_13A3757:   End If
  loc_13A37A5:   Set var_88 = Me.Txt
  loc_13A37AB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A37B3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13A37CB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_13A37CE:     Exit Sub
  loc_13A37CF:   End If
  loc_13A37DC:   Set var_88 = Me.Txt
  loc_13A37E2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A37EA:   var_A0 = var_8C.Text
  loc_13A37F2:   var_D4 = CVar(var_A0) 'String
  loc_13A3837:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13A3840:     Me.MoveFirst
  loc_13A3865:     Set var_88 = Me.Txt
  loc_13A386B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13A3873:     0 = var_8C.Text
  loc_13A3881:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_13A3897:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_13A38AF:   End If
  loc_13A38B2: Else
  loc_13A38BA:   If (var_92 = CInt(4)) Then
  loc_13A38D4:     If (Me.RecordCount > 0) Then
  loc_13A38E2:       Set var_8C = Me.FGPoint
  loc_13A38FA:       Proc_6_137_1193554(Me.DGParty, global_68)
  loc_13A3908:     End If
  loc_13A3956:     Set var_88 = Me.Txt
  loc_13A395C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A3964:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13A397C:     If (Index Or (var_A0 = vbNullString)) Then
  loc_13A397F:       Exit Sub
  loc_13A3980:     End If
  loc_13A398D:     Set var_88 = Me.Txt
  loc_13A3993:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A39A6:     global_92 = var_8C.Text
  loc_13A39C1:     Set var_88 = Me.Txt
  loc_13A39C7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A39CF:     var_A0 = var_8C.Text
  loc_13A39D7:     var_D4 = CVar(var_A0) 'String
  loc_13A3A1C:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13A3A25:       Me.MoveFirst
  loc_13A3A4A:       Set var_88 = Me.Txt
  loc_13A3A50:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13A3A58:       0 = var_8C.Text
  loc_13A3A66:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_13A3A7C:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_13A3A94:     End If
  loc_13A3A97:   Else
  loc_13A3A9F:     If (var_92 = CInt(&H11)) Then
  loc_13A3AAC:       Set global_56 = New 
  loc_13A3ABE:       Me.Recordset15.CursorLocation = 3
  loc_13A3AE1:       var_A0 = "SELECT Distinct I.DocId AS code, LTrim(Right(I.Docid,8)) AS Name FROM Indent AS I INNER JOIN Indent1 AS I1 ON I.DocId = I1.DocId WHERE (IsNull(I1.ClearYN,''))<>'Y'  AND I.Vtype In (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Site_Code='" & MemVar_1F92070
  loc_13A3B00:       Me.Open CVar(var_A0 & "' and LogSite_Code='" & MemVar_1F92078 & "' and NCAT='PIND') ORDER BY I.DocId"), CVar(MemVar_1F92044), 3
  loc_13A3B1A:       CVarUnk
  loc_13A3B1F:       VerifyVarObj
  loc_13A3B25:       Set var_88 = Me.DGIndent
  loc_13A3B2B:       LateIdStAd
  loc_13A3B50:       If (Me.RecordCount > 0) Then
  loc_13A3B5E:         Set var_8C = Me.FGPoint
  loc_13A3B76:         Proc_6_137_1193554(Me.DGIndent, global_56, Index, var_8C)
  loc_13A3B84:       End If
  loc_13A3BD2:       Set var_88 = Me.Txt
  loc_13A3BD8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_13A3BE0:       var_88 = var_8C.Text
  loc_13A3BF8:       If (global_56 Or (var_A0 = vbNullString)) Then
  loc_13A3BFB:         Exit Sub
  loc_13A3BFC:       End If
  loc_13A3C09:       Set var_88 = Me.Txt
  loc_13A3C0F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A3C17:       1 = var_8C.Text
  loc_13A3C22:       global_92 = var_A0
  loc_13A3C3D:       Set var_88 = Me.Txt
  loc_13A3C43:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A3C4B:       var_A0 = var_8C.Text
  loc_13A3C53:       var_D4 = CVar(var_A0) 'String
  loc_13A3C98:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13A3CA1:         Me.MoveFirst
  loc_13A3CC6:         Set var_88 = Me.Txt
  loc_13A3CCC:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13A3CD4:         0 = var_8C.Text
  loc_13A3CE2:         Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_13A3CF8:         Me.Find CStr(var_F8 & var_D4), -1, 
  loc_13A3D10:       End If
  loc_13A3D13:     Else
  loc_13A3D1B:       If (var_92 = CInt(5)) Then
  loc_13A3D2B:         ReDim var_100(0 To 7)
  loc_13A3D42:         var_100(0) = "Railway"
  loc_13A3D51:         var_100(1) = "VPP"
  loc_13A3D60:         var_100(2) = "AIR Mail"
  loc_13A3D6F:         var_100(3) = "Transport"
  loc_13A3D7E:         var_100(4) = "Personally"
  loc_13A3D8D:         var_100(5) = "Post Parcel"
  loc_13A3D9C:         var_100(6) = "Courier"
  loc_13A3DAB:         var_100(7) = "Cargo"
  loc_13A3DC2:         global_128 = Array(var_100)
  loc_13A3DCD:         Set var_B4 = Me.ListView
  loc_13A3DE8:         Set var_8C = Me.Txt
  loc_13A3E02:         Set global_144 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_13A3E20:         Set var_88 = Me.Txt
  loc_13A3E26:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A3E2E:         global_128 = var_8C.Text
  loc_13A3E40:         Set var_90 = Me.Txt
  loc_13A3E46:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_13A3E4E:         var_B4.Tag = 8
  loc_13A3E64:       Else
  loc_13A3E6C:         If (var_92 = CInt(8)) Then
  loc_13A3E7C:           ReDim var_100(0 To 3)
  loc_13A3E93:           var_100(0) = "F.O.R. Our Works"
  loc_13A3EA2:           var_100(1) = "F.O.R. Kanpur"
  loc_13A3EB1:           var_100(2) = "F.O.R. Your Place"
  loc_13A3EC0:           var_100(3) = "Ex Your Works"
  loc_13A3ED7:           global_128 = Array(var_100)
  loc_13A3EE2:           Set var_B4 = Me.ListView
  loc_13A3EFD:           Set var_8C = Me.Txt
  loc_13A3F17:           Set global_144 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_128)
  loc_13A3F35:           Set var_88 = Me.Txt
  loc_13A3F3B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A3F43:           4 = var_8C.Text
  loc_13A3F55:           Set var_90 = Me.Txt
  loc_13A3F5B:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_13A3F63:           var_B4.Tag = global_128
  loc_13A3F79:         Else
  loc_13A3F81:           If Not (var_92 = CInt(2)) Then
  loc_13A3F8C:             If Not (var_92 = CInt(3)) Then
  loc_13A3F97:               If Not (var_92 = CInt(&HD)) Then
  loc_13A3FA2:                 If Not (var_92 = CInt(&HE)) Then
  loc_13A3FAD:                   If Not (var_92 = CInt(&HF)) Then
  loc_13A3FB8:                     If (var_92 = CInt(&H10)) Then
  loc_13A3FBB:                     End If
  loc_13A3FBB:                   End If
  loc_13A3FBB:                 End If
  loc_13A3FBB:               End If
  loc_13A3FBB:             End If
  loc_13A3FC3:             var_A0 = "{Home}+{End}"
  loc_13A3FC9:             Proc_303_0_FB9B68(var_A0, 0)
  loc_13A3FD1:           End If
  loc_13A3FD1:         End If
  loc_13A3FD1:       End If
  loc_13A3FD1:     End If
  loc_13A3FD1:   End If
  loc_13A3FD1: End If
  loc_13A3FD1: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12FD71C
  'Data Table: 503190
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_12FD03F: var_86 = Shift
  loc_12FD04C: If (CLng(Shift) = &H1B) Then
  loc_12FD04F:   Call Proc_89_62_F6B9C8(var_86)
  loc_12FD054:   Exit Sub
  loc_12FD055: End If
  loc_12FD058: var_88 = KeyCode
  loc_12FD063: If (var_88 = CInt(1)) Then
  loc_12FD083:   Set var_A0 = Me.FGPoint
  loc_12FD08E:   Set var_9C = Nothing
  loc_12FD0C0:   Proc_6_69_134A198(Me.DGOrdType, Me.Txt, CInt(1), global_52, Shift, &HFF)
  loc_12FD12F:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12FD155:     Proc_6_138_106D6F8(Me.DGOrdType, global_52, KeyCode, Me.FGPoint, 1)
  loc_12FD163:   End If
  loc_12FD166: Else
  loc_12FD16E:   If (var_88 = CInt(4)) Then
  loc_12FD199:     Set var_9C = Nothing
  loc_12FD1CB:     Proc_6_69_134A198(Me.DGParty, Me.Txt, CInt(4), global_68, Shift, &HFF, 1)
  loc_12FD23A:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12FD241:       Set var_9C = Me.DGParty
  loc_12FD260:       Proc_6_138_106D6F8(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_12FD26E:     End If
  loc_12FD271:   Else
  loc_12FD279:     If (var_88 = CInt(&H11)) Then
  loc_12FD287:       Set var_AC = Me.Txt
  loc_12FD299:       Set var_A0 = Me.FGPoint
  loc_12FD2D6:       Proc_6_69_134A198(Me.DGIndent, var_AC, CInt(&H11), global_56, Shift, &HFF, 1, Nothing)
  loc_12FD2F5:       var_B4 = Me.RecordCount
  loc_12FD345:       If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12FD353:         Set var_90 = Me.FGPoint
  loc_12FD36B:         Proc_6_138_106D6F8(Me.DGIndent, global_56, KeyCode, var_90, var_A0, 0)
  loc_12FD379:       End If
  loc_12FD37C:     Else
  loc_12FD384:       If (var_88 = CInt(5)) Then
  loc_12FD3A9:         Set var_8C = Me.Txt
  loc_12FD3AF:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, 0)
  loc_12FD3B7:         var_9C = var_90.Left
  loc_12FD3C9:         Set var_9C = Me.Txt
  loc_12FD3CF:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12FD3D7:         var_A0 = var_A0.Top
  loc_12FD3E9:         Set var_A8 = Me.Txt
  loc_12FD3EF:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_12FD3F7:         0 = var_AC.Height
  loc_12FD409:         Set var_B0 = Me.Txt
  loc_12FD40F:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12FD417:         var_C4 = var_C0.Width
  loc_12FD45F:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12FD486:       Else
  loc_12FD48E:         If (var_88 = CInt(8)) Then
  loc_12FD4B3:           Set var_8C = Me.Txt
  loc_12FD4B9:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_12FD4C1:           CInt((var_B8 + var_BC)) = var_90.Left
  loc_12FD4D3:           Set var_9C = Me.Txt
  loc_12FD4D9:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12FD4E1:           CInt(var_C4) = var_A0.Top
  loc_12FD4F3:           Set var_A8 = Me.Txt
  loc_12FD4F9:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_12FD501:           2080 = var_AC.Height
  loc_12FD513:           Set var_B0 = Me.Txt
  loc_12FD519:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12FD521:           var_C4 = var_C0.Width
  loc_12FD569:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12FD58D:         End If
  loc_12FD58D:       End If
  loc_12FD58D:     End If
  loc_12FD58D:   End If
  loc_12FD58D: End If
  loc_12FD619: If (((((CBool(Me.DGOrdType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGIndent.Visible) = 0)) And (CBool(Me.DGItem.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12FD63A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H10))) Then
  loc_12FD643:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_B4), CInt((var_B8 + var_BC)))
  loc_12FD648:   End If
  loc_12FD64C:   Set var_8C = Me.TopCtrl1
  loc_12FD652:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(var_C4))
  loc_12FD674:   If ((CStr(1040) = "Add") And (KeyCode <> CInt(1))) Then
  loc_12FD68C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_12FD695:       Proc_6_76_E52838(Shift, arg_14)
  loc_12FD69A:     End If
  loc_12FD69D:   Else
  loc_12FD6A1:     Set var_8C = Me.TopCtrl1
  loc_12FD6A7:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_12FD6C9:     If ((CStr() = "Edit") And (KeyCode <> CInt(3))) Then
  loc_12FD6E1:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_12FD6EA:         Proc_6_76_E52838(Shift)
  loc_12FD6EF:       End If
  loc_12FD6EF:     End If
  loc_12FD6EF:   End If
  loc_12FD70D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_12FD713:     Call Proc_89_63_F90404(KeyCode)
  loc_12FD718:   End If
  loc_12FD718: End If
  loc_12FD718: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1179934
  'Data Table: 503190
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_1179558: On Error Goto loc_117992D
  loc_117955E: Proc_6_58_E054C0(arg_10)
  loc_1179566: var_86 = KeyAscii
  loc_1179571: If (var_86 = CInt(1)) Then
  loc_1179590:   If (CBool(Me.DGOrdType.Visible) = &HFF) Then
  loc_11795A6:     Me.DGOrdType.Tag = CVar(CStr(KeyAscii))
  loc_11795C0:     var_B0 = "Name"
  loc_11795DB:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10)
  loc_11795F5:     Set var_B8 = Me.FGPoint
  loc_117960D:     Proc_6_138_106D6F8(Me.DGOrdType, global_52, KeyAscii, var_B8)
  loc_117961B:   End If
  loc_117961E: Else
  loc_1179626:   If (var_86 = CInt(2)) Then
  loc_1179633:     Set var_8C = Me.Txt
  loc_1179639:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_1179654:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_1179663:   Else
  loc_117966B:     If (var_86 = CInt(4)) Then
  loc_117968A:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_11796B7:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_11796E9:         Proc_6_138_106D6F8(Me.DGParty, global_68, KeyAscii, Me.FGPoint)
  loc_11796F7:       End If
  loc_11796FA:     Else
  loc_1179702:       If (var_86 = CInt(&H11)) Then
  loc_1179721:         If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_117974E:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_1179768:           Set var_B8 = Me.FGPoint
  loc_1179780:           Proc_6_138_106D6F8(Me.DGIndent, global_56, KeyAscii, var_B8, 0)
  loc_117978E:         End If
  loc_1179791:       Else
  loc_1179799:         If (var_86 = CInt(&HD)) Then
  loc_11797A6:           Set var_8C = Me.Txt
  loc_11797AC:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_11797C7:           Proc_6_42_129A86C(var_B8, arg_10, 2, 2)
  loc_11797D6:         Else
  loc_11797DE:           If (var_86 = CInt(&HE)) Then
  loc_11797EB:             Set var_8C = Me.Txt
  loc_11797F1:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_117980C:             Proc_6_42_129A86C(var_B8, arg_10, 2)
  loc_117981B:           Else
  loc_1179823:             If (var_86 = CInt(&HF)) Then
  loc_1179830:               Set var_8C = Me.Txt
  loc_1179836:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_1179851:               Proc_6_42_129A86C(var_B8, arg_10, 2)
  loc_1179860:             Else
  loc_1179868:               If (var_86 = CInt(&H10)) Then
  loc_1179875:                 Set var_8C = Me.Txt
  loc_117987B:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_1179896:                 Proc_6_42_129A86C(var_B8, arg_10, 2)
  loc_11798A5:               Else
  loc_11798AD:                 If (var_86 = CInt(7)) Then
  loc_11798BA:                   Set var_8C = Me.Txt
  loc_11798C0:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_11798DB:                   Proc_6_42_129A86C(var_B8, arg_10, 5)
  loc_11798EA:                 Else
  loc_11798F2:                   If (var_86 = CInt(6)) Then
  loc_11798FF:                     Set var_8C = Me.Txt
  loc_1179905:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_1179920:                     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_117992C:                   End If
  loc_117992C:                 End If
  loc_117992C:               End If
  loc_117992C:             End If
  loc_117992C:           End If
  loc_117992C:         End If
  loc_117992C:       End If
  loc_117992C:     End If
  loc_117992C:   End If
  loc_117992C: End If
  loc_117992C: Exit Sub
  loc_117992D: ' Referenced from: 1179558
  loc_117992D: Proc_6_60_E62BC4(2, 0)
  loc_1179932: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC9E98
  'Data Table: 503190
  Dim var_86 As Integer
  loc_EC9DF3: var_86 = KeyCode
  loc_EC9DFE: If Not (var_86 = CInt(5)) Then
  loc_EC9E09:   If (var_86 = CInt(8)) Then
  loc_EC9E0C:   End If
  loc_EC9E27:   If (Me.FrmList.Visible = &HFF) Then
  loc_EC9E56:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_EC9E66:   End If
  loc_EC9E69: Else
  loc_EC9E71:   If Not (var_86 = CInt(&HD)) Then
  loc_EC9E7C:     If Not (var_86 = CInt(&HE)) Then
  loc_EC9E87:       If Not (var_86 = CInt(&HF)) Then
  loc_EC9E92:         If (var_86 = CInt(&H10)) Then
  loc_EC9E95:         End If
  loc_EC9E95:       End If
  loc_EC9E95:     End If
  loc_EC9E95:   End If
  loc_EC9E95: End If
  loc_EC9E95: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C86C
  'Data Table: 503190
  loc_E4C84A: Set var_88 = Me.Txt
  loc_E4C850: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C85E: Proc_6_73_E22704(var_8C)
  loc_E4C86A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '16F6510
  'Data Table: 503190
  Dim var_8C As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim Me As Variant
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_9C As String
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Variant
  Dim unk_5031AD As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_154 As Variant
  Dim var_15C As Variant
  Dim var_180 As Variant
  Dim var_188 As TextBox
  Dim var_1AC As Variant
  Dim var_12C As String
  Dim var_98 As Variant
  Dim var_158 As Variant
  Dim var_108 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_144 As Variant
  Dim var_170 As Variant
  Dim var_118 As Variant
  Dim var_218 As MSHFlexGrid
  Dim var_220 As Double
  loc_16F4A14: On Error Goto loc_16F650A
  loc_16F4A1A: var_8C = Cancel
  loc_16F4A25: If (var_8C = CInt(1)) Then
  loc_16F4A33:   Set var_90 = Me.Txt
  loc_16F4A39:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F4A41:   var_9C = "Order Type"
  loc_16F4A62:   If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_16F4A70:     Set var_90 = Me.Txt
  loc_16F4A76:     Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F4A7E:     var_94.SetFocus
  loc_16F4A8C:     arg_10 = &HFF
  loc_16F4A8F:     Exit Sub
  loc_16F4A90:   End If
  loc_16F4ADE:   Set var_90 = Me.Txt
  loc_16F4AE4:   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F4AEC:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_16F4B04:   If (arg_10 Or (var_9C = vbNullString)) Then
  loc_16F4B14:     Set var_90 = Me.Txt
  loc_16F4B1A:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F4B22:     var_94.Text = vbNullString
  loc_16F4B3B:     Set var_90 = Me.Txt
  loc_16F4B41:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F4B49:     var_94.Tag = vbNullString
  loc_16F4B5B:     global_120 = vbNullString
  loc_16F4B65:     global_124 = vbNullString
  loc_16F4B6C:   Else
  loc_16F4BA7:     Set var_98 = Me.Txt
  loc_16F4BAD:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F4BB5:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16F4C06:     Set var_98 = Me.Txt
  loc_16F4C0C:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F4C14:     var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16F4C5E:     global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_16F4C89:     var_94 = Me.Fields.Item("ContraType")
  loc_16F4CA0:     global_124 = Proc_6_38_E68A98(CVar(var_94))
  loc_16F4CB1:     Set var_90 = Me.TopCtrl1
  loc_16F4CB7:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8C)
  loc_16F4CBF:     var_9C = CStr()
  loc_16F4CD0:     If (var_9C = "Add") Then
  loc_16F4CD9:       Call Proc_89_64_1111E34(MemVar_1F92044)
  loc_16F4CEC:       Set var_90 = Me.Txt
  loc_16F4CF2:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_16F4CFA:       var_94.Text = var_9C
  loc_16F4D09:     End If
  loc_16F4D09:   End If
  loc_16F4D17:   Set var_90 = Me.Txt
  loc_16F4D1D:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F4D2D:   var_C8 = CVar(var_94.Tag) 'String
  loc_16F4D51:   If (Trim(var_C8) = "PORD") Then
  loc_16F4D62:     Set var_90 = Me.Txt
  loc_16F4D68:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F4D70:     var_94.Text = vbNullString
  loc_16F4D8A:     Set var_90 = Me.Txt
  loc_16F4D90:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F4D98:     var_94.Tag = vbNullString
  loc_16F4DB1:     Set var_90 = Me.Txt
  loc_16F4DB7:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F4DBF:     var_94.Enabled = True
  loc_16F4DCE:   Else
  loc_16F4DEB:     Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, "Select E.CashPurchAc,S.Name From Enviro E Inner Join SubGroup S ON E.CashPurchAc=S.SubCode WHERE E.LOGSITE_CODE=", var_E8)
  loc_16F4DF3:     var_D8 = -1 & var_C8 
  loc_16F4E01:     unk_5031AD.Execute CStr(Trim(var_C8)), var_90, CStr(Trim(var_C8))
  loc_16F4E0C:     Set var_88 = var_90
  loc_16F4E32:     If (var_88.RecordCount > 0) Then
  loc_16F4E6E:       Set var_98 = Me.Txt
  loc_16F4E74:       Call 0.Method_Txt_Validate0 (CInt(4), var_B8)
  loc_16F4E7C:       var_B8.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_16F4EAC:       var_94 = var_88.Fields.Item("CashPurchAc")
  loc_16F4ECB:       Set var_98 = Me.Txt
  loc_16F4ED1:       Call 0.Method_Txt_Validate0 (CInt(4), var_B8)
  loc_16F4ED9:       var_B8.Tag = CStr(var_94.Value)
  loc_16F4EEF:     End If
  loc_16F4EFC:     Set var_90 = Me.Txt
  loc_16F4F02:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F4F0A:     var_94.Enabled = False
  loc_16F4F16:   End If
  loc_16F4F19: Else
  loc_16F4F21:   If (var_8C = CInt(2)) Then
  loc_16F4F2F:     Set var_90 = Me.Txt
  loc_16F4F35:     Call 0.Method_Txt_Validate0 (CInt(2))
  loc_16F4F3D:     var_9C = "Order No"
  loc_16F4F5E:     If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_16F4F6C:       Set var_90 = Me.Txt
  loc_16F4F72:       Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_16F4F7A:       var_94.SetFocus
  loc_16F4F88:       arg_10 = &HFF
  loc_16F4F8B:       Exit Sub
  loc_16F4F8C:     End If
  loc_16F4F9A:     Set var_90 = Me.Txt
  loc_16F4FA0:     Call 0.Method_Txt_Validate0 (CInt(2), var_94, var_9C)
  loc_16F4FA8:     arg_10 = var_94.Text
  loc_16F4FC0:     If (CDbl(var_9C) = CDbl(0)) Then
  loc_16F4FDC:       MsgBox("Order No Can Not Be 0", 0, Trim("Order No Can Not Be 0"), var_E8, var_128)
  loc_16F4FF6:       Set var_90 = Me.Txt
  loc_16F4FFC:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F5004:       var_94.SetFocus
  loc_16F5012:       arg_10 = &HFF
  loc_16F5015:       Exit Sub
  loc_16F5016:     End If
  loc_16F501A:     Set var_90 = Me.TopCtrl1
  loc_16F5020:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_16F5039:     If (CStr(var_94) = "Add") Then
  loc_16F5061:       Set var_90 = Me.Txt
  loc_16F5067:       Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F508E:       Set var_98 = Me.Txt
  loc_16F5094:       Call 0.Method_Txt_Validate0 (CInt(1), var_B8, var_134)
  loc_16F509C:       5 = var_B8.Tag
  loc_16F50A9:       var_C8 = Space((CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_94.Tag) - Len(var_134)))
  loc_16F50B1:       var_E8 = ( + "Order No Can Not Be 0")
  loc_16F50BE:       var_128 = (var_E8 + CVar(global_112))
  loc_16F50D2:       var_144 = Space((5 - Len(global_112)))
  loc_16F50DA:       var_154 = (var_128 + var_144)
  loc_16F50F1:       Set var_158 = Me.Txt
  loc_16F50F7:       Call 0.Method_Txt_Validate0 (CInt(2), var_15C, var_160)
  loc_16F50FF:       8 = var_15C.Text
  loc_16F510C:       var_170 = Space((var_154 - Len(var_160)))
  loc_16F5114:       var_180 = ( + var_170)
  loc_16F5126:       Set var_184 = Me.Txt
  loc_16F512C:       Call 0.Method_Txt_Validate0 (CInt(2), var_188)
  loc_16F513F:       var_1AC = (var_180 + CVar(var_188.Text))
  loc_16F5198:       Set var_90 = Me.Txt
  loc_16F519E:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_16F51A6:       var_94.Text = CStr(var_1AC)
  loc_16F51C2:       Me.LblVPrefix.Caption = global_112
  loc_16F51CA:     End If
  loc_16F51CE:     Set var_90 = Me.TopCtrl1
  loc_16F51D4:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16F51DC:     var_9C = CStr()
  loc_16F51ED:     If (var_9C = "Add") Then
  loc_16F521D:       Set var_90 = Me.Txt
  loc_16F5223:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_9C, "Select Count(*) From POrder Where DocID='", "Order No Can Not Be 0", -1)
  loc_16F5244:       unk_5031AD.Execute var_B8 & var_9C & "'", 0, var_158
  loc_16F5254:        = var_B8.Item()
  loc_16F525C:        = var_158.Value
  loc_16F5289:       If (var_94.Text.Fields > 0) Then
  loc_16F5292:         Call 0.Method_arg_50 (var_9C)
  loc_16F52B3:         MsgBox("Duplicate Order No.", &H40, CVar(var_9C), var_E8, var_128)
  loc_16F52C9:         Call Proc_89_64_1111E34(MemVar_1F92044)
  loc_16F52D9:         If (var_9C = vbNullString) Then
  loc_16F52E6:           Set var_90 = Me.Txt
  loc_16F52EC:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F52F4:           var_94.SetFocus
  loc_16F5302:           arg_10 = &HFF
  loc_16F5305:           Exit Sub
  loc_16F5306:         End If
  loc_16F530C:         Call Proc_89_64_1111E34(MemVar_1F92044, var_9C)
  loc_16F531F:         Set var_90 = Me.Txt
  loc_16F5325:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_9C)
  loc_16F532D:         var_94.Text = arg_10
  loc_16F533E:         arg_10 = &HFF
  loc_16F5341:         Exit Sub
  loc_16F5342:       End If
  loc_16F5342:     End If
  loc_16F5345:   Else
  loc_16F534D:     If (var_8C = CInt(3)) Then
  loc_16F535E:       Set var_90 = Me.Txt
  loc_16F5364:       Call 0.Method_Txt_Validate0 (CInt(3), var_94, var_9C)
  loc_16F536C:       arg_10 = var_94.Text
  loc_16F539C:       If (Len(Trim(CVar(var_9C))) = 0) Then
  loc_16F53B2:         Set var_90 = Me.Txt
  loc_16F53B8:         Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_16F53C0:         var_94.Text = CStr(MemVar_1F920EC)
  loc_16F53D2:       Else
  loc_16F53DC:         Set var_90 = Me.Txt
  loc_16F53E2:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F53F5:         var_9C = Proc_6_33_1512840(var_94)
  loc_16F5402:         Set var_B8 = Me.Txt
  loc_16F5408:         Call 0.Method_Txt_Validate0 (Cancel, var_158)
  loc_16F5410:         var_158.Text = var_9C
  loc_16F5423:       End If
  loc_16F5427:       Set var_90 = Me.TopCtrl1
  loc_16F542D:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_16F5435:       var_9C = CStr()
  loc_16F5446:       If (var_9C = "Add") Then
  loc_16F544F:         Call Proc_89_64_1111E34(MemVar_1F92044)
  loc_16F5462:         Set var_90 = Me.Txt
  loc_16F5468:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_16F5470:         var_94.Text = var_9C
  loc_16F547F:       End If
  loc_16F5482:     Else
  loc_16F548A:       If (var_8C = CInt(4)) Then
  loc_16F5498:         Set var_90 = Me.Txt
  loc_16F549E:         Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F54A6:         var_9C = "Party Name"
  loc_16F54C7:         If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_16F54D5:           Set var_90 = Me.Txt
  loc_16F54DB:           Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F54E3:           var_94.SetFocus
  loc_16F54F1:           arg_10 = &HFF
  loc_16F54F4:           Exit Sub
  loc_16F54F5:         End If
  loc_16F5543:         Set var_90 = Me.Txt
  loc_16F5549:         Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F5551:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_16F5569:         If (arg_10 Or (var_9C = vbNullString)) Then
  loc_16F5579:           Set var_90 = Me.Txt
  loc_16F557F:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F5587:           var_94.Text = vbNullString
  loc_16F55A0:           Set var_90 = Me.Txt
  loc_16F55A6:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F55AE:           var_94.Tag = vbNullString
  loc_16F55BD:         Else
  loc_16F55CB:           Set var_90 = Me.Txt
  loc_16F55D1:           Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F5605:           If (Trim(CVar(var_94.Tag)) = "PORD") Then
  loc_16F5643:             Set var_98 = Me.Txt
  loc_16F5649:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F5651:             var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16F5684:             var_94 = Me.Fields.Item("Code")
  loc_16F5695:             var_9C = CStr(var_94.Value)
  loc_16F56A2:             Set var_98 = Me.Txt
  loc_16F56A8:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F56B0:             var_B8.Tag = var_9C
  loc_16F56C6:           End If
  loc_16F56C6:         End If
  loc_16F56C9:       Else
  loc_16F56D1:         If (var_8C = CInt(&H11)) Then
  loc_16F5722:           Set var_90 = Me.Txt
  loc_16F5728:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F5730:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_16F5748:           If (var_9C Or (var_9C = vbNullString)) Then
  loc_16F5758:             Set var_90 = Me.Txt
  loc_16F575E:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F5766:             var_94.Text = vbNullString
  loc_16F577F:             Set var_90 = Me.Txt
  loc_16F5785:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F578D:             var_94.Tag = vbNullString
  loc_16F579C:           Else
  loc_16F57D7:             Set var_98 = Me.Txt
  loc_16F57DD:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F57E5:             var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16F5818:             var_94 = Me.Fields.Item("Code")
  loc_16F5836:             Set var_98 = Me.Txt
  loc_16F583C:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F5844:             var_B8.Tag = CStr(var_94.Value)
  loc_16F585A:           End If
  loc_16F585E:           Set var_88 = New 
  loc_16F5869:           Me.Recordset15.CursorLocation = 3
  loc_16F587C:           Set var_90 = Me.Txt
  loc_16F5882:           Call 0.Method_Txt_Validate0 (CInt(&H11), var_94)
  loc_16F58AD:           var_12C = "Select I.Docid ,I1.Sno,ItemMast.name as ItemName,I1.Item as ItemCode,i1.specification,i1.unit,i1.qty,i1.rate,i1.amount,I1.WtUnit,I1.ConvFactor,I1.WtQty,I1.TaxStru,I1.TaxAmt,I1.Total From (Indent I Inner join Indent1 I1 on I.Docid=I1.Docid)Inner join ItemMast on I1.Item=ItemMast.Code And ItemMast.ItemType='Store' where (IsNull(I1.ClearYN,''))<>'Y'  AND I.Docid='" & var_94.Tag
  loc_16F58BB:           var_88.Open CVar(var_12C & "' Order by I.Docid"), CVar(MemVar_1F92044), 3
  loc_16F58E5:           If (var_88.RecordCount > 0) Then
  loc_16F58F7:             Me.FGrid.Redraw = False
  loc_16F591C:             global_148 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_16F5925:             ' Referenced from:         16F61DD
  loc_16F5934:             If Not(var_88.EOF) Then
  loc_16F595C:               For var_1B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):         var_8A = var_1B4 'Integer
  loc_16F5966:                 var_B4 = CVar(CLng(var_8A)) 'Long
  loc_16F596E:                 var_108 = CVar(CLng(&HC)) 'Long
  loc_16F5988:                 var_E8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16F59AE:                 var_D8 = var_88.Fields.Item("DocID").Value
  loc_16F59BE:                 var_1D4 = CVar(CLng(var_8A)) 'Long
  loc_16F59CF:                 Set var_B8 = Me.FGrid
  loc_16F5A36:                 If CBool(CVar(CLng(&HD)) And (CVar(CStr(var_B8.TextMatrix))) = var_88.Fields.Item("SNo").Value)) Then
  loc_16F5A39:                   GoTo loc_16F61D5
  loc_16F5A3C:                 End If
  loc_16F5A3F:               Next var_1B4 'Integer
  loc_16F5A62:               var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_16F5A6A:               Set var_94 = Me.FGrid
  loc_16F5A88:               Set var_218 = Me.FGrid
  loc_16F5A92:               var_B4 = CVar(CLng(global_148)) 'Long
  loc_16F5A9A:               var_108 = CVar(CLng(0)) 'Long
  loc_16F5AA7:               var_C8 = CVar(CStr(global_148)) 'String
  loc_16F5AAE:               LateIdCallSt
  loc_16F5AC0:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F5AC8:               var_118 = CVar(CLng(&HE)) 'Long
  loc_16F5AF8:               var_D8 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_16F5AFF:               LateIdCallSt
  loc_16F5B1C:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F5B24:               var_118 = CVar(CLng(1)) 'Long
  loc_16F5B54:               var_D8 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_16F5B5B:               LateIdCallSt
  loc_16F5B78:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F5B80:               var_118 = CVar(CLng(4)) 'Long
  loc_16F5BB0:               var_D8 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_16F5BB7:               LateIdCallSt
  loc_16F5BF0:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F5BF8:               var_1C4 = CVar(CLng(3)) 'Long
  loc_16F5C25:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_16F5C2C:               LateIdCallSt
  loc_16F5C49:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F5C51:               var_118 = CVar(CLng(7)) 'Long
  loc_16F5C81:               var_D8 = CVar(CStr(var_88.Fields.Item("WtUnit").Value)) 'String
  loc_16F5C88:               LateIdCallSt
  loc_16F5CC1:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F5CC9:               var_1C4 = CVar(CLng(6)) 'Long
  loc_16F5CF6:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("WTQty")), "0.000"))) 'String
  loc_16F5CFD:               LateIdCallSt
  loc_16F5D36:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F5D3E:               var_1C4 = CVar(CLng(5)) 'Long
  loc_16F5D6B:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("COnvFactor")), "0.000"))) 'String
  loc_16F5D72:               LateIdCallSt
  loc_16F5DAB:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F5DC7:               var_D8 = "0.00"
  loc_16F5DE7:               LateIdCallSt
  loc_16F5E23:               Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("TaxAmt")), var_218, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_D8))), 1, 1, CVar(CLng(8)))
  loc_16F5E2F:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F5E37:               var_1C4 = CVar(CLng(&HA)) 'Long
  loc_16F5E60:               var_144 = CVar(CStr(Format(var_D8, "0.00"))) 'String
  loc_16F5E67:               LateIdCallSt
  loc_16F5EA2:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F5EAA:               var_1C4 = CVar(CLng(9)) 'Long
  loc_16F5ED7:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16F5EDE:               LateIdCallSt
  loc_16F5F17:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F5F53:               LateIdCallSt
  loc_16F5FA5:               var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(global_148)), var_218, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_16F5FAC:               LateIdCallSt
  loc_16F5FFA:               var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), CVar(CLng(&HC)), CVar(CLng(global_148)), var_218, var_D8, CVar(CLng(&HB)))) 'String
  loc_16F6001:               LateIdCallSt
  loc_16F604D:               Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("SNo")), CVar(CLng(&HD)), CVar(CLng(global_148)), var_218, var_D8)
  loc_16F605D:               LateIdCallSt
  loc_16F60AD:               var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&H11)), CVar(CLng(global_148)), var_218, CVar(CStr(var_D8)))) 'String
  loc_16F60B4:               LateIdCallSt
  loc_16F60CD:               var_B4 = CVar(CLng(global_148)) 'Long
  loc_16F60D5:               var_108 = CVar(CLng(&HF)) 'Long
  loc_16F60DA:               var_1C4 = "Y"
  loc_16F60E3:               LateIdCallSt
  loc_16F60F6:               If (global_84 = "Yes") Then
  loc_16F6123:                 var_1C4 = CVar(CLng(global_148)) 'Long
  loc_16F613B:                 Call Proc_89_55_138CBE4(CStr(var_218.TextMatrix)), var_12C, CVar(CLng(&H10)), var_1C4, var_218.TextMatrix), CVar(CLng(&HE)), CVar(CLng(global_148)), var_218)
  loc_16F6143:                 var_D8 = CVar(var_12C) 'String
  loc_16F614A:                 LateIdCallSt
  loc_16F6163:                 var_B4 = CVar(CLng(global_148)) 'Long
  loc_16F616B:                 var_108 = CVar(CLng(&H10)) 'Long
  loc_16F617E:                 var_9C = CStr(var_218.TextMatrix))
  loc_16F618C:                 If (var_9C <> vbNullString) Then
  loc_16F619E:                   var_108 = CVar(CLng(&H10)) 'Long
  loc_16F61B5:                   Call Proc_89_56_E8C874(CStr(var_218.TextMatrix)), var_108, CVar(CLng(global_148)), var_108, CVar(CLng(global_148)), var_218, var_D8, var_1C4)
  loc_16F61C0:                 End If
  loc_16F61C0:               End If
  loc_16F61C2:               Set var_218 = Nothing 
  loc_16F61D2:               global_148 = (global_148 + 1)
  loc_16F61D5:               ' Referenced from:         16F5A39
  loc_16F61D8:               var_88.MoveNext
  loc_16F61DD:               GoTo loc_16F5925
  loc_16F61E0:             End If
  loc_16F61F3:             Me.FGrid.FixedRows = 1
  loc_16F61FE:           Else
  loc_16F620C:             Me.FGrid.Redraw = True
  loc_16F621D:             If (global_148 = 1) Then
  loc_16F6220:               var_B4 = 1
  loc_16F6233:               Me.FGrid.Rows = var_B4
  loc_16F6259:               var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), global_148, var_108, var_B4))) 'String
  loc_16F6261:               Set var_94 = Me.FGrid
  loc_16F628E:               Me.FGrid.FixedRows = 1
  loc_16F6296:             End If
  loc_16F6296:           End If
  loc_16F62A4:           Me.FGrid.Redraw = True
  loc_16F62B5:           If (global_148 = 1) Then
  loc_16F62CB:             Me.FGrid.Rows = 1
  loc_16F62F1:             var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8, var_218))) 'String
  loc_16F62F9:             Set var_94 = Me.FGrid
  loc_16F6326:             Me.FGrid.FixedRows = 1
  loc_16F632E:           End If
  loc_16F632E:           Call Proc_89_54_1142B2C(FGrid.DispID_10000, var_C8, var_D8)
  loc_16F6336:         Else
  loc_16F633E:           If Not (var_8C = CInt(8)) Then
  loc_16F6349:             If (var_8C = CInt(5)) Then
  loc_16F634C:             End If
  loc_16F6359:             Set var_90 = Me.Txt
  loc_16F635F:             Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F6367:             var_108 = var_94.Text
  loc_16F637E:             If (var_9C <> vbNullString) Then
  loc_16F6399:               Set var_94 = Me.ListView.SelectedItem
  loc_16F63B1:               Set var_98 = Me.Txt
  loc_16F63B7:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_94.Text)
  loc_16F63BF:               var_B8.Text = var_218
  loc_16F63D5:             End If
  loc_16F63D8:           Else
  loc_16F63E0:             If Not (var_8C = CInt(&HD)) Then
  loc_16F63EB:               If Not (var_8C = CInt(&HE)) Then
  loc_16F63F6:                 If Not (var_8C = CInt(&HF)) Then
  loc_16F6401:                   If Not (var_8C = CInt(&H10)) Then
  loc_16F640C:                     If Not (var_8C = CInt(7)) Then
  loc_16F6417:                       If (var_8C = CInt(6)) Then
  loc_16F641A:                       End If
  loc_16F641A:                     End If
  loc_16F641A:                   End If
  loc_16F641A:                 End If
  loc_16F641A:               End If
  loc_16F6424:               Set var_90 = Me.Txt
  loc_16F642A:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F6442:               If Not(IsNumeric(CVar(var_94))) Then
  loc_16F6456:                 Set var_90 = Me.Txt
  loc_16F645C:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F6464:                 var_94.Text = CStr(0)
  loc_16F6473:               End If
  loc_16F6480:               Set var_90 = Me.Txt
  loc_16F6486:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F649B:               var_220 = Val(var_94.Text)
  loc_16F64D3:               Set var_98 = Me.Txt
  loc_16F64D9:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, CStr(Format(CVar(var_220), "0.00")), 1)
  loc_16F64E1:               var_B8.Text = 1
  loc_16F6501:             End If
  loc_16F6501:           End If
  loc_16F6501:         End If
  loc_16F6501:       End If
  loc_16F6501:     End If
  loc_16F6501:   End If
  loc_16F6501: End If
  loc_16F6506: Set var_88 = Nothing
  loc_16F6509: Exit Sub
  loc_16F650A: ' Referenced from: 16F4A14
  loc_16F650A: Proc_6_60_E62BC4(var_220)
  loc_16F650F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '101F020
  'Data Table: 503190
  Dim var_A0 As String
  Dim unk_5031AD As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_101EE0C: On Error Goto loc_101F017
  loc_101EE1B: Set var_90 = Me
  loc_101EE32: Call Proc_89_61_EFDD4C(Proc_5_1_100CB50("ADD", var_90))
  loc_101EE3D: Call Proc_89_60_F52F00(global_64)
  loc_101EE6B: var_A0 = "Select Description,V_Type From Voucher_Type Where Site_Code='" & MemVar_1F92070 & "' and LogSite_Code='" & MemVar_1F92078 & "' and NCat='PORD'"
  loc_101EE74: unk_5031AD.Execute var_A0, var_C0, -1
  loc_101EE7F: Set var_88 = var_90
  loc_101EEA7: If (var_88.RecordCount > 0) Then
  loc_101EEE3:   Set var_CC = Me.Txt
  loc_101EEE9:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D0)
  loc_101EEF1:   var_D0.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_101EF21:   var_C8 = var_88.Fields.Item("V_Type")
  loc_101EF40:   Set var_CC = Me.Txt
  loc_101EF46:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D0)
  loc_101EF4E:   var_D0.Tag = CStr(var_C8.Value)
  loc_101EF64: End If
  loc_101EF9B: Set var_90 = Me.Txt
  loc_101EFA1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_C8, CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy")))
  loc_101EFA9: var_C8.Text = 1
  loc_101EFCA: Set var_90 = Me.Txt
  loc_101EFD0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C8)
  loc_101EFD8: var_C8.SetFocus
  loc_101EFF1: Me.LblUser.Caption = vbNullString
  loc_101F006: Me.LblLDt.Caption = vbNullString
  loc_101F013: Set var_88 = Nothing
  loc_101F016: Exit Sub
  loc_101F017: ' Referenced from: 101EE0C
  loc_101F017: Proc_6_60_E62BC4(1)
  loc_101F01C: Exit Sub
  loc_101F01D: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDB024
  'Data Table: 503190
  Dim var_10C As TextBox
  loc_EDAF7C: On Error Goto loc_EDB01C
  loc_EDAFB6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EDAFC4:   Set var_108 = Me.TxtGrid
  loc_EDAFCA:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (0, var_10C)
  loc_EDAFD2:   var_10C.Visible = False
  loc_EDB001:   Call Proc_89_61_EFDD4C(Proc_5_1_100CB50("INI", Me))
  loc_EDB00C:   Call Proc_89_58_16D0FDC(global_64)
  loc_EDB017:   global_92 = vbNullString
  loc_EDB01B: End If
  loc_EDB01B: Exit Sub
  loc_EDB01C: ' Referenced from: EDAF7C
  loc_EDB01C: Proc_6_60_E62BC4()
  loc_EDB021: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1346F54
  'Data Table: 503190
  Dim var_AC As Variant
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_5031AD As Connection15
  Dim var_98 As Recordset15
  Dim var_A8 As Fields15
  Dim var_118 As Variant
  Dim var_DC As Fields15
  Dim var_128 As Variant
  Dim var_B0 As String
  Dim var_12C As String
  Dim var_138 As String
  Dim var_D8 As Variant
  Dim Me As Recordset15
  loc_13467A4: On Error Goto loc_1346F03
  loc_13467B5: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_13467B8:   Exit Sub
  loc_13467B9: End If
  loc_13467D7: Set var_A8 = Me.Txt
  loc_13467DD: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B0, "Select Distinct DocId,VType,VNo From Stock Where ContraDocId='")
  loc_13467E5: var_D8 = var_AC.Text
  loc_13467EE: var_B4 = -1 & var_B0
  loc_13467FE: unk_5031AD.Execute var_B4 & "'", var_DC, 
  loc_1346809: Set var_98 = var_DC
  loc_1346827: var_E0 = var_98.RecordCount
  loc_1346835: If (var_E0 > 0) Then
  loc_1346838:   ' Referenced from: 13469B1
  loc_1346847:   If Not(var_98.EOF) Then
  loc_1346852:     If (var_9C = vbNullString) Then
  loc_1346895:       var_B8 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_98.Fields.Item("vType").Value), 6)
  loc_134689C:       var_118 = CVar(Proc_6_45_EAD428(CStr(var_98.Fields.Item("vType").Value), 6) & "'" & " V.No :-> ") 'String
  loc_13468CE:       var_9C = CStr(var_118 & var_98.Fields.Item("VNo").Value)
  loc_13468F3:     Else
  loc_134692F:       var_12C = var_9C & "," & vbCrLf & "V.Type :-> "
  loc_134694F:       var_118 = CVar(var_12C & Proc_6_45_EAD428(CStr(var_98.Fields.Item("vType").Value), 6) & " V.No :-> ") 'String
  loc_1346964:       var_DC = var_98.Fields
  loc_134697C:       var_128 = var_118 & var_DC.Item("VNo").Value 
  loc_1346981:       var_9C = CStr(var_128)
  loc_13469A9:     End If
  loc_13469AC:     var_98.MoveNext
  loc_13469B1:     GoTo loc_1346838
  loc_13469B4:   End If
  loc_13469BA:   Call 0.Method_arg_50 (var_13C)
  loc_1346A08:   var_D8 = CVar("GIN " & vbCrLf & vbNullString & var_9C & " " & vbCrLf & "Generated For This Purchase Order," & vbCrLf & "Can Not Delete The Record") 'String
  loc_1346A0B:   MsgBox(var_D8, &H30, CVar(var_13C), var_118, var_128)
  loc_1346A31:   Set var_98 = Nothing
  loc_1346A34:   Exit Sub
  loc_1346A35: End If
  loc_1346A6C: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_118, var_128) = 6) Then
  loc_1346A78:   unk_5031AD.BeginTrans var_E0
  loc_1346A8E:   var_94 = Me.Bookmark 'Variant
  loc_1346ADA:   var_118 = "Select IndentDocId,IndentSno from POrder1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1346AE8:   unk_5031AD.Execute CStr(var_118), var_128, -1
  loc_1346AF3:   Set var_98 = var_DC
  loc_1346B0D:   ' Referenced from: 1346BCF
  loc_1346B1C:   If Not(var_98.EOF) Then
  loc_1346B46:     var_AC = var_98.Fields.Item("IndentDocID")
  loc_1346B57:     var_B0 = Proc_6_38_E68A98(CVar(var_AC), "Update Indent1 Set ClearYN='' where Docid='", var_17C)
  loc_1346B5B:     var_B4 = -1 & var_B0
  loc_1346B62:     var_128 = CVar("GIN " & vbCrLf & vbNullString & "' and Sno=") 'String
  loc_1346B74:     var_DC = var_98.Fields
  loc_1346B8B:     Proc_6_39_E7C810(var_118, CVar(var_DC.Item("IndentSno")), var_128)
  loc_1346BA1:     unk_5031AD.Execute CStr(var_180 & var_118), var_DC, 
  loc_1346BCA:     var_98.MoveNext
  loc_1346BCF:     GoTo loc_1346B0D
  loc_1346BD2:   End If
  loc_1346BF0:   Set var_A8 = Me.Txt
  loc_1346BF6:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B0, "Delete From POrder1 Where DocID='")
  loc_1346C07:   var_B4 = -1 & var_B0
  loc_1346C17:   unk_5031AD.Execute "GIN " & vbCrLf & vbNullString & "'", var_DC, 
  loc_1346C3F:   Set var_A8 = Me.Txt
  loc_1346C45:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC)
  loc_1346C57:   var_1A0 = 0
  loc_1346C6A:   var_198 = 0
  loc_1346C75:   var_194 = 0
  loc_1346CA6:   var_138 = 0
  loc_1346CE5:   var_B0 = "POrder1"
  loc_1346CEE:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "DocId", &HC8, var_AC.Text, 0, 0, 0)
  loc_1346D31:   Set var_A8 = Me.Txt
  loc_1346D37:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B0, "Delete From POrder Where DocID='", var_AC.Text, -1, var_DC)
  loc_1346D3F:   var_138 = var_AC.Text
  loc_1346D4F:   var_B8 = 0 & var_B0 & "'"
  loc_1346D58:   unk_5031AD.Execute var_B8, 0, 0
  loc_1346D80:   Set var_A8 = Me.Txt
  loc_1346D86:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B8)
  loc_1346D8E:   0 = var_AC.Text
  loc_1346D98:   var_1A0 = 0
  loc_1346DAB:   var_198 = 0
  loc_1346DB6:   var_194 = 0
  loc_1346DC9:   var_18C = 0
  loc_1346DD4:   var_13C = 0
  loc_1346DE7:   var_138 = 0
  loc_1346E26:   var_B0 = "POrder"
  loc_1346E2F:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "DocId", &HC8, var_B8, 0, 0, 0)
  loc_1346E5A:   unk_5031AD.CommitTrans
  loc_1346E6A:   Me.Requery -1
  loc_1346E7A:   Me.Requery -1
  loc_1346E9A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1346EA7:     Me.Bookmark = var_94
  loc_1346EAF:   Else
  loc_1346EC3:     If (Me.EOF = 0) Then
  loc_1346ECC:       Me.MoveLast
  loc_1346ED1:     End If
  loc_1346ED1:   End If
  loc_1346ED1:   Call Proc_89_58_16D0FDC(var_138, 0, var_13C, var_18C)
  loc_1346EF2:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_1346EFA: End If
  loc_1346EFF: Set var_98 = Nothing
  loc_1346F02: Exit Sub
  loc_1346F03: ' Referenced from: 13467A4
  loc_1346F09: unk_5031AD.RollbackTrans
  loc_1346F16: Set var_A8 = Err()
  loc_1346F1C: Call 0.Method_arg_2C (var_B0, 0, var_194)
  loc_1346F3D: MsgBox(CVar(var_B0), &H10, " Deletion Message", var_118, var_128)
  loc_1346F50: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2F068
  'Data Table: 503190
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F2EF50: On Error Goto loc_F2F062
  loc_F2EF61: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F2EF64:   Exit Sub
  loc_F2EF65: End If
  loc_F2EF88: Call Proc_89_61_EFDD4C(Proc_5_1_100CB50("EDIT", Me))
  loc_F2EFA0: Set var_8C = Me.Txt
  loc_F2EFA6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F2EFAE: var_94.Enabled = False
  loc_F2EFC7: Set var_8C = Me.Txt
  loc_F2EFCD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F2EFEF: Set var_8C = Me.Txt
  loc_F2EFF5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F2F00F: If (False = &HFF) Then
  loc_F2F01D:   Set var_8C = Me.Txt
  loc_F2F023:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F2F02B:   var_94.SetFocus
  loc_F2F037: End If
  loc_F2F044: Me.LblUser.Caption = vbNullString
  loc_F2F059: Me.LblLDt.Caption = vbNullString
  loc_F2F061: Exit Sub
  loc_F2F062: ' Referenced from: F2EF50
  loc_F2F062: Proc_6_60_E62BC4(global_64)
  loc_F2F067: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19BF8
  'Data Table: 503190
  loc_E19BED: Me.Global.Unload Me
  loc_E19BF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE3DB8
  'Data Table: 503190
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_114 As String
  Dim MemVar_1F920E4 As String
  loc_EE3D04: On Error Goto loc_EE3DB0
  loc_EE3D1E: If (Me.RecordCount <= 0) Then
  loc_EE3D27:   var_B8 = "Information"
  loc_EE3D42:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE3D52:   Exit Sub
  loc_EE3D53: End If
  loc_EE3D5A: var_10C = "Select P.DocID as SearchCode,V.Description As OrderType,VNO As OrdNo,VDAte As OrdDate,SG.Name As PartyName " & "From (POrder  P Inner Join SubGroup SG On P.PartyCode=SG.SubCode) "
  loc_EE3D68: var_114 = var_10C & "Inner Join Voucher_Type V on (P.VType=V.V_Type and P.LogSite_Code=V.LogSite_Code) Where V.LogSite_Code='" & MemVar_1F92078
  loc_EE3D6F: MemVar_1F920E4 = var_114 & "' Order by P.DocID,P.VNo"
  loc_EE3D85: Proc_6_126_F1BCC0("1500,1000,1500,3000")
  loc_EE3D93: MemVar_1F92120 = Me
  loc_EE3DAA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE3DAF: Exit Sub
  loc_EE3DB0: ' Referenced from: EE3D04
  loc_EE3DB0: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EE3DB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E39F18
  'Data Table: 503190
  loc_E39F08: Proc_5_0_110649C(&HFF, Me)
  loc_E39F10: Call Proc_89_58_16D0FDC(global_64)
  loc_E39F15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39EB8
  'Data Table: 503190
  loc_E39EA8: Proc_5_0_110649C(&HFF, Me)
  loc_E39EB0: Call Proc_89_58_16D0FDC(global_64)
  loc_E39EB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39E58
  'Data Table: 503190
  loc_E39E48: Proc_5_0_110649C(&HFF, Me)
  loc_E39E50: Call Proc_89_58_16D0FDC(global_64)
  loc_E39E55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39DF8
  'Data Table: 503190
  loc_E39DE8: Proc_5_0_110649C(&HFF, Me)
  loc_E39DF0: Call Proc_89_58_16D0FDC(global_64)
  loc_E39DF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1057268
  'Data Table: 503190
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_BC As Variant
  Dim var_AC As Fields15
  Dim var_C0 As Field20
  Dim var_100 As String
  Dim unk_5031AD As Connection15
  Dim var_116 As Integer
  loc_105700C: On Error Goto loc_1057261
  loc_1057018: var_A4 = Me.RecordCount
  loc_1057026: If (var_A4 <= 0) Then
  loc_1057029:   Exit Sub
  loc_105702A: End If
  loc_1057031: var_A8 = "SELECT PO.VType, PO.VNo, PO.VDate, S.Name as PartyName, S.Add1, S.Add2, S.Add3,C.CityName,C.ZipCode,ST.ShortName StateCode,ST.Name StateName,S.GSTIN, S.Phone, I.Name as ItemName, PO1.Specification, PO1.Unit, PO1.Qty, PO1.Rate, PO1.Amount, PO.DispatchMode, case PO.DespatchThru when '' then 'N/A' else PO.DespatchThru end as DespatchThru, case PO.PaymentTerms when '' then 'N/A' else PO.PaymentTerms end as PaymentTerms, case PO.DeliverySch when '' then 'N/A' else PO.DeliverySch end as DeliverySch, PO.ExPer, PO.TaxPer, PO.DiscPer, PO.STaxPer, PO.ForwardCharges, PO.MaxQty, PO.PackCharge, case PO.Prices when '' then 'N/A' else PO.Prices end as Prices, case PO.Remark when '' then 'N/A' else PO.Remark end as Remark, PO1.TaxAmt, PO1.Total " & " FROM POrder AS PO Left JOIN POrder1 AS PO1 ON PO.Docid = PO1.Docid Left JOIN SubGroup AS S ON PO.PartyCode = S.SubCode Left Join City C on S.CityCode=C.CityCode Left Join State ST on C.State=ST.Code Left JOIN ItemMast AS I ON PO1.ItemCode = I.Code And I.ItemType='Store' Left JOIN City ON S.CityCode = City.CityCode "
  loc_1057050: var_AC = Me.Fields
  loc_1057058: var_C0 = var_AC.Item("SearchCode")
  loc_1057060: var_D0 = var_C0.Value
  loc_105706C: var_100 = "'"
  loc_1057076: var_88 = CStr(CVar(var_A8 & " Where PO.DocID='") & var_D0 & var_100)
  loc_1057096: If (var_88 = vbNullString) Then
  loc_1057099:   Exit Sub
  loc_105709A: End If
  loc_10570B0: unk_5031AD.Execute var_88, var_D0, -1
  loc_10570DA: Set var_AC = var_AC 
  loc_10570E6: var_116 = CreateFieldDefFile(var_AC, MemVar_1F920B4 & "\POrder.ttx")
  loc_10570F0: Set var_9C = var_AC
  loc_10570F6: var_BC = CVar(var_116) 'Integer
  loc_10570F9: var_98 = var_BC 'Variant
  loc_1057115: var_A8 = MemVar_1F920B4 & "\POrder.RPT"
  loc_105711E: Call 0.Method_arg_1C (var_A8, var_BC, var_AC)
  loc_1057129: MemVar_1F921E4 = var_AC
  loc_1057144: Call 0.Method_arg_90 (var_AC, var_A4, var_9E, 1)
  loc_105714C: Call 0.Method_arg_24 (var_116, &HFF)
  loc_1057158: For var_11A =  To CInt(var_A4): var_AC = var_11A 'Integer
  loc_1057171:   Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_1057179:   Call 0.Method_arg_20 (var_C0)
  loc_1057181:   Call 0.Method_arg_30 (var_A8)
  loc_105719B:   If (var_A8 = "Title") Then
  loc_10571B1:     Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_10571B9:     Call 0.Method_arg_20 (var_C0)
  loc_10571C1:     Call 0.Method_arg_38 ("'Purchase Order'")
  loc_10571CD:   End If
  loc_10571D0: Next var_11A 'Integer
  loc_10571EE: Call 0.Method_arg_64 (var_AC, CVar(var_9C))
  loc_10571F6: Call 0.Method_arg_2C (var_100)
  loc_1057204: Call 0.Method_arg_150 (var_130)
  loc_105720F: Call 0.Method_arg_50 (var_A8)
  loc_1057219: Set var_C0 = Nothing
  loc_1057233: Set var_AC = MemVar_1F921E4 
  loc_105723F: Proc_6_99_1483714(var_AC, 0, var_A8)
  loc_105724A: MemVar_1F921E4 = var_AC
  loc_105725D: Set var_9C = Nothing
  loc_1057260: Exit Sub
  loc_1057261: ' Referenced from: 105700C
  loc_1057261: Proc_6_60_E62BC4(&HFF)
  loc_1057266: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3E3C8
  'Data Table: 503190
  Dim Me As Recordset15
  loc_E3E39F: Me.Requery -1
  loc_E3E3AF: Me.Requery -1
  loc_E3E3BF: Me.Requery -1
  loc_E3E3C4: Exit Sub
  loc_E3E3C5: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1796CD8
  'Data Table: 503190
  Dim var_F4 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_F0 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_FC As String
  Dim var_194 As String
  Dim var_198 As String
  Dim unk_5031AD As Connection15
  Dim var_F8 As Variant
  Dim var_19C As Variant
  Dim var_1A0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_1F0 As TextBox
  Dim var_7F4 As Double
  Dim var_224 As TextBox
  Dim var_270 As Variant
  Dim var_2FC As Variant
  Dim var_348 As Variant
  Dim var_394 As Variant
  Dim var_400 As TextBox
  Dim var_7FC As Double
  Dim var_44C As Variant
  Dim var_804 As Double
  Dim var_498 As Variant
  Dim var_504 As TextBox
  Dim var_80C As Double
  Dim var_550 As TextBox
  Dim var_814 As Double
  Dim var_5BC As TextBox
  Dim var_81C As Double
  Dim var_608 As TextBox
  Dim var_824 As Double
  Dim var_714 As Variant
  Dim var_6F4 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim var_1BC As String
  Dim var_1D0 As String
  Dim var_1FC As String
  Dim var_200 As String
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_2E4 As Variant
  Dim var_320 As Variant
  Dim var_340 As Variant
  Dim var_37C As Variant
  Dim var_3E8 As Variant
  Dim var_470 As Variant
  Dim var_480 As Variant
  Dim var_490 As Variant
  Dim var_4EC As Variant
  Dim var_584 As Variant
  Dim var_5B4 As Variant
  Dim var_5D0 As Variant
  Dim var_5E0 As Variant
  Dim var_63C As Variant
  Dim var_64C As Variant
  Dim var_67C As Variant
  Dim var_6DC As Variant
  Dim var_774 As Variant
  Dim var_BA As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_CC As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Double
  Dim var_26C As MSHFlexGrid
  Dim var_2F8 As MSHFlexGrid
  Dim var_344 As MSHFlexGrid
  Dim var_850 As Variant
  Dim var_870 As Variant
  Dim var_390 As MSHFlexGrid
  Dim var_450 As String
  Dim var_3FC As MSHFlexGrid
  Dim var_49C As String
  Dim var_9D0 As Variant
  Dim var_448 As MSHFlexGrid
  Dim var_7E8 As Variant
  Dim var_554 As String
  Dim var_CD0 As Double
  Dim var_494 As MSHFlexGrid
  Dim var_B90 As Variant
  Dim var_BB0 As Variant
  Dim var_5C0 As String
  Dim var_C20 As Variant
  Dim var_500 As MSHFlexGrid
  Dim var_6AC As Variant
  Dim var_AA0 As Variant
  Dim var_C80 As Variant
  Dim var_60C As String
  Dim var_88 As Recordset15
  loc_1794FE8: On Error Goto loc_1796CBB
  loc_1794FF6: Set var_F0 = Me.TxtGrid
  loc_1794FFC: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_F4)
  loc_1795004: var_F4.Visible = False
  loc_1795010: Call Proc_89_62_F6B9C8()
  loc_1795020: Set var_F0 = Me.Txt
  loc_1795026: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_179504F: If (Proc_6_27_EA565C(var_F4, "Order Type") = 0) Then
  loc_1795052:   Exit Sub
  loc_1795053: End If
  loc_179505E: Set var_F0 = Me.Txt
  loc_1795064: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F4)
  loc_179508D: If (Proc_6_27_EA565C(var_F4, "Order No") = 0) Then
  loc_1795090:   Exit Sub
  loc_1795091: End If
  loc_179509C: Set var_F0 = Me.Txt
  loc_17950A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_F4)
  loc_17950CB: If (Proc_6_27_EA565C(var_F4, "Order Date") = 0) Then
  loc_17950CE:   Exit Sub
  loc_17950CF: End If
  loc_17950DA: Set var_F0 = Me.Txt
  loc_17950E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_F4)
  loc_17950F1: Set var_F8 = var_F4
  loc_1795109: If (Proc_6_27_EA565C(var_F8, "Party Name") = 0) Then
  loc_179510C:   Exit Sub
  loc_179510D: End If
  loc_1795110: Call Proc_89_51_100F5C4(var_FE)
  loc_179511B: If (var_FE = 0) Then
  loc_179512C:   Set var_F0 = Me.Txt
  loc_1795132:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_F4)
  loc_179513A:   var_FE = var_F4.Enabled
  loc_179514C:   If (var_FE = &HFF) Then
  loc_179515A:     Set var_F0 = Me.Txt
  loc_1795160:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_F4)
  loc_1795168:     var_F4.SetFocus
  loc_1795174:   End If
  loc_1795174:   Exit Sub
  loc_1795175: End If
  loc_1795178: Call Proc_89_59_112F25C(var_FE)
  loc_1795183: If (var_FE = 0) Then
  loc_1795186:   Exit Sub
  loc_1795187: End If
  loc_1795193: Call Txt_Validate(CInt(2))
  loc_1795198: var_110 = 1
  loc_17951A1: var_130 = 1
  loc_17951BF: var_160 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17951C5: var_170 = Trim(var_160)
  loc_17951E1: If (var_170 = vbNullString) Then
  loc_17951F7:   var_150 = "Item Detail Required "
  loc_17951FD:   MsgBox(var_150, 0, var_160, var_170, var_190)
  loc_1795220:   Me.FGrid.Row = 1
  loc_179522C:   Set var_F0 = Me.FGrid
  loc_1795250:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1795258:   Exit Sub
  loc_1795259: End If
  loc_179525D: Set var_F0 = Me.TopCtrl1
  loc_1795263: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_8001)
  loc_179526B: var_FC = CStr(var_130)
  loc_179527C: If (var_FC = "Add") Then
  loc_17952AC:   Set var_F0 = Me.Txt
  loc_17952B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC, "Select Count(*) From POrder Where DocID='", var_150, -1, var_F8)
  loc_17952BA:   var_19C = var_F4.Text
  loc_17952D3:   unk_5031AD.Execute 0 & var_FC & "'", var_1A0, var_160
  loc_17952DB:   var_110 = var_F8.Fields
  loc_17952E3:   var_F4 = var_19C.Item(&HFF)
  loc_17952EB:    = var_1A0.Value
  loc_1795318:   If (var_160 > 0) Then
  loc_1795321:     Call Proc_89_64_1111E34(MemVar_1F92044)
  loc_1795334:     Set var_F0 = Me.Txt
  loc_179533A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4)
  loc_1795342:     var_F4.Text = var_FC
  loc_1795351:     Exit Sub
  loc_1795352:   End If
  loc_1795355: Else
  loc_1795372:   var_F4 = Me.Fields.Item("DocID")
  loc_179537A:   var_150 = var_F4.Value
  loc_1795389:   global_104 = CStr(var_150)
  loc_179539A: End If
  loc_17953A8: Set var_F0 = Me.Txt
  loc_17953AE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_F4)
  loc_17953B6: var_FC = var_F4.Text
  loc_17953BE: var_1A4 = var_FC
  loc_17953D0: If (var_1A4 = "Railway") Then
  loc_17953D6:   var_98 = "RW"
  loc_17953DC: Else
  loc_17953E4:   If (var_1A4 = "VPP") Then
  loc_17953EA:     var_98 = "VP"
  loc_17953F0:   Else
  loc_17953F8:     If (var_1A4 = "AIR Mail") Then
  loc_17953FE:       var_98 = "AM"
  loc_1795404:     Else
  loc_179540C:       If (var_1A4 = "Transport") Then
  loc_1795412:         var_98 = "TR"
  loc_1795418:       Else
  loc_1795420:         If (var_1A4 = "Personally") Then
  loc_1795426:           var_98 = "PS"
  loc_179542C:         Else
  loc_1795434:           If (var_1A4 = "Post Parcel") Then
  loc_179543A:             var_98 = "PP"
  loc_1795440:           Else
  loc_1795448:             If (var_1A4 = "Courier") Then
  loc_179544E:               var_98 = "CO"
  loc_1795454:             Else
  loc_179545C:               If (var_1A4 = "Cargo") Then
  loc_1795462:                 var_98 = "CA"
  loc_1795465:               End If
  loc_1795465:             End If
  loc_1795465:           End If
  loc_1795465:         End If
  loc_1795465:       End If
  loc_1795465:     End If
  loc_1795465:   End If
  loc_1795465: End If
  loc_1795467: var_8A = &HFF
  loc_1795473: unk_5031AD.BeginTrans var_1A8
  loc_1795496: Set var_F0 = Me.Txt
  loc_179549C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC, "Delete From POrder1 Where DocID='", var_150)
  loc_17954A4: -1 = var_F4.Text
  loc_17954BD: unk_5031AD.Execute var_F8 & var_FC & "'", var_8A, var_FC
  loc_17954F5: Set var_F0 = Me.Txt
  loc_17954FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC, "Delete From POrder Where DocID='")
  loc_1795503: var_150 = var_F4.Text
  loc_179550C: var_194 = -1 & var_FC
  loc_179551C: unk_5031AD.Execute var_F8 & var_FC & "'", var_F8, 
  loc_1795544: Set var_F0 = Me.Txt
  loc_179554A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4)
  loc_1795565: Set var_F8 = Me.Txt
  loc_179556B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C)
  loc_1795598: Set var_1EC = Me.Txt
  loc_179559E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1F0)
  loc_17955C1: Set var_208 = Me.Txt
  loc_17955C7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_20C)
  loc_17955D6: Proc_6_7_F25D88(var_160, CVar(var_20C))
  loc_17955E9: Set var_220 = Me.Txt
  loc_17955EF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_224)
  loc_179560A: Set var_26C = Me.Txt
  loc_1795610: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_270)
  loc_1795618: var_274 = var_270.Text
  loc_179562B: Set var_2F8 = Me.Txt
  loc_1795631: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2FC)
  loc_179564C: Set var_344 = Me.Txt
  loc_1795652: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_348)
  loc_179566D: Set var_390 = Me.Txt
  loc_1795673: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_394)
  loc_179568E: Set var_3FC = Me.Txt
  loc_1795694: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_400)
  loc_17956A9: var_7FC = Val(var_400.Text)
  loc_17956BA: Set var_448 = Me.Txt
  loc_17956C0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_44C, var_450)
  loc_17956D5: var_804 = Val(var_450)
  loc_17956E6: Set var_494 = Me.Txt
  loc_17956EC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_498, var_49C)
  loc_1795707: Set var_500 = Me.Txt
  loc_179570D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_504)
  loc_1795722: var_80C = Val(var_504.Text)
  loc_1795733: Set var_54C = Me.Txt
  loc_1795739: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_550, var_554)
  loc_179574E: var_814 = Val(var_554)
  loc_179575F: Set var_5B8 = Me.Txt
  loc_1795765: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_5BC, var_5C0)
  loc_179577A: var_81C = Val(var_5C0)
  loc_179578B: Set var_604 = Me.Txt
  loc_1795791: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_608, var_60C)
  loc_17957A6: var_824 = Val(var_60C)
  loc_17957AC: var_69C = Date
  loc_17957B7: Proc_6_7_F25D88(var_6AC, var_69C)
  loc_17957C0: Set var_6E0 = Me.TopCtrl1
  loc_17957C6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_824)
  loc_1795818: var_194 = "Insert Into POrder(" & "DocID,VType,VPrefix,Site_Code,VNo," & "VDate,PartyCode,"
  loc_1795834: var_1B4 = var_194 & "Remark," & "DispatchMode,DespatchThru,PaymentTerms,Prices," & "PackCharge,ForwardCharges,DeliverySch," & "DiscPer,ExPer,"
  loc_1795857: var_1D0 = var_1B4 & "TaxPer,STaxPer,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values(" & "'" & var_F4.Text & "','"
  loc_1795889: var_1FC = CStr(Val(var_1F0.Text))
  loc_179589B: var_170 = CVar(var_1D0 & var_19C.Tag & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & var_1FC & "," & vbNullString) 'String
  loc_17958FF: var_320 = var_170 & var_160 & ",'" & CVar(var_224.Tag) & "'," & "'" & CVar(var_274) & "'," & "'" & CVar(var_98) & "','" & CVar(var_2FC.Text) 
  loc_1795956: var_470 = var_320 & "','" & CVar(var_348.Text) & "','" & CVar(var_394.Text) & "'," & vbNullString & CVar(var_44C.Text) & "," & CVar(var_498.Text) 
  loc_17959B7: var_5E0 = var_470 & ",'" & CVar(var_49C) & "'," & vbNullString & CVar(var_550.Text) & "," & CVar(var_5BC.Text) & "," & vbNullString & CVar(var_608.Text) 
  loc_17959F7: var_6DC = var_5E0 & "," & CVar(var_824) & ",'" & CVar(MemVar_1F920C8) & "'," & var_6AC & ",'" 
  loc_1795A28: unk_5031AD.Execute CStr(var_6DC & IIf((CStr(var_6F0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_7E8, -1
  loc_1795B30: var_BA = 0
  loc_1795B36: var_C4 = CDbl(0)
  loc_1795B5E: For var_828 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_828 'Integer
  loc_1795B68:   var_110 = CVar(CLng(var_92)) 'Long
  loc_1795B70:   var_130 = CVar(CLng(1)) 'Long
  loc_1795B9B:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1795BA4:     var_BA = (var_BA + 1)
  loc_1795BA7:   End If
  loc_1795BAB:   var_110 = CVar(CLng(var_92)) 'Long
  loc_1795BB3:   var_130 = CVar(CLng(9)) 'Long
  loc_1795BDF:   var_C4 = (var_C4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1795BEE: Next var_828 'Integer
  loc_1795C01: Set var_F0 = Me.Txt
  loc_1795C07: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4)
  loc_1795C0F: var_FC = var_F4.Text
  loc_1795C2A: var_D4 = ((var_C4 * Val(var_FC)) / CDbl(&H64))
  loc_1795C45: Set var_F0 = Me.Txt
  loc_1795C4B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_F4, var_FC)
  loc_1795C53: var_D4 = var_F4.Text
  loc_1795C72: var_DC = (((var_C4 - var_D4) * Val(var_FC)) / CDbl(&H64))
  loc_1795C8D: Set var_F0 = Me.Txt
  loc_1795C93: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_F4, var_FC)
  loc_1795C9B: var_DC = var_F4.Text
  loc_1795CBE: var_E4 = ((((var_C4 - var_D4) + var_DC) * Val(var_FC)) / CDbl(&H64))
  loc_1795CD9: Set var_F0 = Me.Txt
  loc_1795CDF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_F4, var_FC, var_E4)
  loc_1795CE7: var_7F4 = var_F4.Text
  loc_1795D0E: var_EC = (((((var_C4 - var_D4) + var_DC) + var_E4) * Val(var_FC)) / CDbl(&H64))
  loc_1795D29: Set var_F8 = Me.Txt
  loc_1795D2F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_19C, var_194, var_EC)
  loc_1795D37: var_7F4 = var_19C.Text
  loc_1795D44: var_7F4 = Val(var_194)
  loc_1795D55: Set var_F0 = Me.Txt
  loc_1795D5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F4, var_FC)
  loc_1795D8C: var_CC = (((Val(var_FC) + var_F4.Text) + ((((var_C4 - var_D4) + var_DC) + var_E4) + var_EC)) - var_DC)
  loc_1795DCC: For var_82C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_82C 'Integer
  loc_1795DDB:   var_B0 = CDbl(0)
  loc_1795E31:   Set var_F4 = Me.FGrid
  loc_1795E42:   var_FC = CStr(var_F4.TextMatrix))
  loc_1795E70:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_FC)) > CDbl(0))) Then
  loc_1795E81:     Set var_F8 = Me.Txt
  loc_1795E87:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_19C, var_194, CVar(CLng(var_92)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1795E8F:     var_B0 = var_19C.Text
  loc_1795E9C:     var_7F4 = Val(var_194)
  loc_1795EAD:     Set var_F0 = Me.Txt
  loc_1795EB3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F4, var_FC, var_7F4, CDbl(0))
  loc_1795EBB:     1 = var_F4.Text
  loc_1795EDC:     var_A0 = (((((Val(var_FC) + var_7F4) - var_D4) + var_DC) + var_E4) + var_EC)
  loc_1795EF8:     If (var_92 = var_BA) Then
  loc_1795F17:       var_150 = CVar((var_CC - CDbl(0))) 'Double
  loc_1795F37:       var_110 = CVar(CLng(var_92)) 'Long
  loc_1795F3F:       var_130 = CVar(CLng(3)) 'Long
  loc_1795F90:       var_B0 = CSng(Format(CVar((CSng(Format(Me.FGrid.TextMatrix), "00.00")) / Val(CStr(Me.FGrid.TextMatrix))))), "00.00"))
  loc_1795FA8:       var_110 = CVar(CLng(var_92)) 'Long
  loc_1795FB0:       var_130 = CVar(CLng(9)) 'Long
  loc_1795FE0:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1796008:         For var_830 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_830 'Integer
  loc_1796012:           var_110 = CVar(CLng(var_94)) 'Long
  loc_179601A:           var_130 = CVar(CLng(9)) 'Long
  loc_179604A:           If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1796050:             var_A8 = CDbl(0)
  loc_1796053:             GoTo loc_1796056
  loc_1796056:             ' Referenced from: 1796053
  loc_1796056:           End If
  loc_1796059:         Next var_830 'Integer
  loc_179605E:       End If
  loc_1796061:     Else
  loc_1796068:       If (var_C4 <> CDbl(0)) Then
  loc_179606F:         var_110 = CVar(CLng(var_92)) 'Long
  loc_1796077:         var_130 = CVar(CLng(9)) 'Long
  loc_17960A0:         var_180 = CVar(CLng(var_92)) 'Long
  loc_17960A8:         var_2E4 = CVar(CLng(9)) 'Long
  loc_17960B1:         Set var_F4 = Me.FGrid
  loc_17960F1:         var_170 = CVar((Val(CStr(Me.FGrid.TextMatrix))) + ((var_A0 * Val(CStr(var_F4.TextMatrix)))) / var_C4))) 'Double
  loc_1796101:         var_A8 = CSng(Format("00.00", "00.00"))
  loc_179611F:       End If
  loc_1796123:       var_110 = CVar(CLng(var_92)) 'Long
  loc_179612B:       var_130 = CVar(CLng(3)) 'Long
  loc_1796157:       If (CDbl(CStr(Me.FGrid.TextMatrix))) <> CDbl(0)) Then
  loc_179615E:         var_110 = CVar(CLng(var_92)) 'Long
  loc_1796166:         var_130 = CVar(CLng(3)) 'Long
  loc_17961A7:         var_160 = CVar((var_A8 / Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_17961B7:         var_B0 = CSng(Format(var_160, "00.00"))
  loc_17961CB:       End If
  loc_17961D2:       var_B8 = (var_B8 + var_A8)
  loc_17961D5:     End If
  loc_17961E3:     Set var_F0 = Me.Txt
  loc_17961E9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_1B4, CDbl(0), var_B0, 1, 1)
  loc_17961F1:     var_7F4 = var_F4.Text
  loc_1796203:     var_7F4 = Val(CStr(var_92))
  loc_1796214:     Set var_F8 = Me.Txt
  loc_179621A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C, var_1D0, var_7F4, var_130)
  loc_1796222:     var_110 = var_19C.Tag
  loc_179622E:     Set var_1A0 = Me.LblVPrefix
  loc_1796247:     Set var_1EC = Me.Txt
  loc_179624D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1F0, var_1FC, var_130)
  loc_1796255:     var_110 = var_1F0.Text
  loc_1796262:     var_7FC = Val(var_1FC)
  loc_1796270:     Set var_208 = Me.Txt
  loc_1796276:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_20C, var_7FC)
  loc_1796285:     Proc_6_7_F25D88(var_160, CVar(var_20C))
  loc_1796298:     Set var_220 = Me.Txt
  loc_179629E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_224, var_274)
  loc_17962A6:     var_A8 = var_224.Tag
  loc_17962AF:     var_130 = CVar(CLng(var_92)) 'Long
  loc_17962B7:     var_180 = CVar(CLng(&HE)) 'Long
  loc_17962D6:     var_37C = CVar(CLng(var_92)) 'Long
  loc_17962DE:     var_3E8 = CVar(CLng(3)) 'Long
  loc_1796307:     var_480 = CVar(CLng(var_92)) 'Long
  loc_179630F:     var_4EC = CVar(CLng(8)) 'Long
  loc_1796338:     var_584 = CVar(CLng(var_92)) 'Long
  loc_1796340:     var_5D0 = CVar(CLng(4)) 'Long
  loc_179635F:     var_63C = CVar(CLng(var_92)) 'Long
  loc_1796367:     var_67C = CVar(CLng(&HC)) 'Long
  loc_1796386:     var_714 = CVar(CLng(var_92)) 'Long
  loc_179638E:     var_774 = CVar(CLng(&HD)) 'Long
  loc_17963B7:     var_850 = CVar(CLng(var_92)) 'Long
  loc_17963BF:     var_870 = CVar(CLng(9)) 'Long
  loc_17963E1:     var_81C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1796412:     var_824 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1796430:     var_5B4 = Me.FGrid.TextMatrix)
  loc_179644A:     Proc_6_7_F25D88(var_69C, Date, var_5B4, CVar(CLng(2)), CVar(CLng(var_92)), var_824, CVar(CLng(&HB)), CVar(CLng(var_92)))
  loc_1796453:     Set var_400 = Me.TopCtrl1
  loc_1796459:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_81C)
  loc_1796494:     var_9D0 = CVar(CLng(var_92)) 'Long
  loc_17964BE:     var_CC8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17964EF:     var_CD0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1796520:     var_6F4 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_92)), var_CD0, CVar(CLng(6)), CVar(CLng(var_92)), var_CC8, CVar(CLng(5)))
  loc_1796527:     var_B90 = CVar(CLng(var_92)) 'Long
  loc_179652F:     var_BB0 = CVar(CLng(&HA)) 'Long
  loc_1796558:     var_C20 = CVar(CLng(var_92)) 'Long
  loc_1796560:     var_C40 = CVar(CLng(&H11)) 'Long
  loc_179659D:     var_198 = "Insert Into POrder1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,PartyCode,ItemCode," & "Qty,Rate,Unit,IndentDocId,IndentSno,"
  loc_17965AB:     var_1B0 = var_198 & "Amount,Total,Specification,U_Name,U_EntDt,U_AE,ConvRatio,WtQty,WtUnit,LogSite_Code,TaxAmt,TaxStru) " & "Values("
  loc_17965B2:     var_1B8 = var_1B0 & "'"
  loc_1796604:     var_200 = var_1B8 & var_1B4 & "'," & CStr(var_7F4) & ",'" & var_1D0 & "','" & var_1A0.Caption & "','" & MemVar_1F92070 & "'," & vbNullString
  loc_1796617:     var_170 = CVar(var_200 & CStr(var_7FC) & ",") 'String
  loc_1796639:     var_258 = var_170 & var_160 & ",'" & CVar(var_274) & "','" 
  loc_1796675:     var_340 = var_258 & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_17966B1:     var_490 = var_340 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1796709:     var_64C = var_490 & "," & vbNullString & CVar(var_81C) & "," & CVar(var_824) & ",'" & CVar(CStr(var_5B4)) & "','" & CVar(MemVar_1F920C8) 
  loc_179675A:     var_AA0 = var_64C & "'," & var_69C & ",'" & IIf((CStr(var_6DC) = "Add"), "A", "E") & "'," & CVar(var_CC8) & "," & CVar(var_CD0) & ",'" 
  loc_179679F:     var_C80 = var_AA0 & CVar(var_6F4) & "','" & CVar(MemVar_1F92078) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_17967B6:     unk_5031AD.Execute CStr(var_C80 & "')"), var_CC0, -1
  loc_17968DA:     var_110 = CVar(CLng(var_92)) 'Long
  loc_17968E2:     var_130 = CVar(CLng(&HC)) 'Long
  loc_1796901:     var_180 = CVar(CLng(var_92)) 'Long
  loc_1796909:     var_2E4 = CVar(CLng(&HD)) 'Long
  loc_1796912:     Set var_F4 = Me.FGrid
  loc_1796918:     var_160 = var_F4.TextMatrix)
  loc_179694D:     var_1AC = "Update Indent1 Set ClearYN='Y' Where Docid='" & CStr(Me.FGrid.TextMatrix)) & "' and Sno="
  loc_1796962:     unk_5031AD.Execute var_1AC & CStr(Val(CStr(var_160))), var_170, -1
  loc_1796988:   End If
  loc_179698B: Next var_82C 'Integer
  loc_1796994: Set var_F0 = Me.TopCtrl1
  loc_179699A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17969B3: If (CStr() = "Add") Then
  loc_17969CA:   var_FC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_17969F0:   Set var_F0 = Me.Txt
  loc_17969F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4, var_1AC, var_FC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_17969FE:   var_238 = var_F4.Tag
  loc_1796A07:   var_1B4 = -1 & var_1AC
  loc_1796A0E:   var_170 = CVar(var_1AC & CStr(Val(CStr(var_160))) & "' And VP.Date_From<=") 'String
  loc_1796A1F:   Set var_F8 = Me.Txt
  loc_1796A25:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_19C, var_1B8)
  loc_1796A2D:   var_170 = var_19C.Text
  loc_1796A3B:   Proc_6_7_F25D88(var_160, CVar(var_1B8))
  loc_1796A5A:   unk_5031AD.Execute CStr(var_1A0 & var_160 & " Order By VP.Date_From DESC"), , 
  loc_1796A65:   Set var_88 = var_1A0
  loc_1796AA9:   If (var_88.RecordCount > 0) Then
  loc_1796ABA:     Set var_F0 = Me.Txt
  loc_1796AC0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F4)
  loc_1796AC8:     var_FC = var_F4.Text
  loc_1796AD5:     var_7F4 = Val(var_FC)
  loc_1796ADE:     var_110 = "V_Type"
  loc_1796B25:     Proc_6_7_F25D88(var_238, CVar(var_88.Fields.Item("Date_From")))
  loc_1796B58:     var_1B4 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7F4) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1796B80:     var_1BC = CStr(CVar(var_1B4 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_110).Value & "' and Date_From=" & var_238)
  loc_1796B8A:     unk_5031AD.Execute var_1BC, var_258, -1
  loc_1796BC4:   End If
  loc_1796BC4: End If
  loc_1796BCA: unk_5031AD.CommitTrans
  loc_1796BDD: Set var_F0 = Me.Txt
  loc_1796BE3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC)
  loc_1796BEB: var_1F0 = var_F4.Text
  loc_1796BFF: var_8A = 0
  loc_1796C0D: Me.Requery -1
  loc_1796C1D: Me.Requery -1
  loc_1796C47: Me.Find "SearchCode ='" & "SearchCode ='" & var_FC & "'", 0, 1
  loc_1796C57: Set var_F0 = Me.TopCtrl1
  loc_1796C5D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_110)
  loc_1796C76: If (CStr(var_8A) = "Add") Then
  loc_1796C79:   Call TopCtrl1_UnknownEvent_A()
  loc_1796C7E:   Exit Sub
  loc_1796C7F: End If
  loc_1796CA2: Call Proc_89_61_EFDD4C(Proc_5_1_100CB50("INI", Me), global_64)
  loc_1796CAD: Call Proc_89_58_16D0FDC(var_7F4)
  loc_1796CB7: Set var_88 = Nothing
  loc_1796CBA: Exit Sub
  loc_1796CBB: ' Referenced from: 1794FE8
  loc_1796CC1: If (var_8A = &HFF) Then
  loc_1796CCA:   unk_5031AD.RollbackTrans
  loc_1796CCF: End If
  loc_1796CCF: Proc_6_60_E62BC4()
  loc_1796CD4: Exit Sub
  loc_1796CD5: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '109BA98
  'Data Table: 503190
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_14C As Variant
  loc_109B7F7: Me.DGItem.Visible = False
  loc_109B816: If (Me.RecordCount > 0) Then
  loc_109B853:   Set var_B4 = Me.TxtGrid
  loc_109B859:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_109B861:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_109B88A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109B892:   var_EC = CVar(CLng(1)) 'Long
  loc_109B8C5:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_109B8CD:   Set var_B8 = Me.FGrid
  loc_109B8D3:   LateIdCallSt
  loc_109B902:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109B90A:   var_EC = CVar(CLng(&HE)) 'Long
  loc_109B93D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_109B945:   Set var_B8 = Me.FGrid
  loc_109B94B:   LateIdCallSt
  loc_109B97A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109B982:   var_EC = CVar(CLng(4)) 'Long
  loc_109B9B5:   var_11C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_109B9BD:   Set var_B8 = Me.FGrid
  loc_109B9C3:   LateIdCallSt
  loc_109B9F9:   var_B0 = Me.Fields.Item("PurchRate")
  loc_109BA11:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109BA19:   var_FC = CVar(CLng(8)) 'Long
  loc_109BA46:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_109BA4E:   Set var_B8 = Me.FGrid
  loc_109BA54:   LateIdCallSt
  loc_109BA72: End If
  loc_109BA7B: Set var_A8 = Me.TxtGrid
  loc_109BA81: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_14C, 1, 1, var_FC)
  loc_109BA89: var_B0.SetFocus
  loc_109BA95: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E7391C
  'Data Table: 503190
  loc_E738DA: Proc_6_153_E91194(Me.DGItem, arg_14)
  loc_E738F1: Set var_8C = Me.FGPoint
  loc_E7390B: Proc_6_138_106D6F8(Me.DGItem, global_60, 0)
  loc_E73919: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4DD64
  'Data Table: 503190
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DC5B: Me.DGParty.Visible = False
  loc_F4DC7A: If (Me.RecordCount > 0) Then
  loc_F4DCB9:   Set var_B4 = Me.Txt
  loc_F4DCBF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4DCC7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4DCFA:   var_B0 = Me.Fields.Item("Name")
  loc_F4DD19:   Set var_B4 = Me.Txt
  loc_F4DD1F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4DD27:   var_B8.Text = CStr(var_B0.Value)
  loc_F4DD3D: End If
  loc_F4DD48: Set var_A8 = Me.Txt
  loc_F4DD4E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F4DD56: var_B0.SetFocus
  loc_F4DD62: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'E73AD8
  'Data Table: 503190
  loc_E73A96: Proc_6_153_E91194(Me.DGParty, arg_14)
  loc_E73AAD: Set var_8C = Me.FGPoint
  loc_E73AC9: Proc_6_138_106D6F8(Me.DGParty, global_68, CInt(4))
  loc_E73AD7: Exit Sub
End Sub

Private Sub Form_Load() '1221374
  'Data Table: 503190
  Dim var_88 As String
  Dim var_8C As String
  Dim unk_5031AD As Connection15
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Label
  loc_1220E78: On Error Goto loc_122136D
  loc_1220E96: var_8C = "select SmartPurchaseOrder,RateEditableInPO,DateEditableOnRequisitionYN from Enviro where LogSite_Code='" & MemVar_1F92078 & "'"
  loc_1220E9F: unk_5031AD.Execute var_8C, var_AC, -1
  loc_1220EB0: Set global_76 = var_B0
  loc_1220F5C: var_B4 = Me.Fields.Item("DateEditableOnRequisitionYN")
  loc_1220F73: global_168 = Proc_6_38_E68A98(CVar(var_B4), CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEditableInPO")))))
  loc_1220F8B: If (Proc_6_38_E68A98(CVar(Me.Fields.Item("SmartPurchaseOrder"))) <> "Yes") Then
  loc_1220F99:   Set var_B0 = Me.Label2
  loc_1220F9F:   Call 0.Method_Form_Load0 (2, var_B4)
  loc_1220FA7:   var_B4.Visible = False
  loc_1220FBE:   Set var_B0 = Me.Label1
  loc_1220FC4:   Call 0.Method_Form_Load0 (8, var_B4)
  loc_1220FCC:   var_B4.Visible = False
  loc_1220FE3:   Set var_B0 = Me.Label2
  loc_1220FE9:   Call 0.Method_Form_Load0 (3, var_B4)
  loc_1220FF1:   var_B4.Visible = False
  loc_1221008:   Set var_B0 = Me.Label1
  loc_122100E:   Call 0.Method_Form_Load0 (9, var_B4)
  loc_1221016:   var_B4.Visible = False
  loc_1221022: End If
  loc_122102C: Set global_52 = New 
  loc_122103E: Me.CursorLocation = 3
  loc_1221068: var_8C = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Site_Code='" & MemVar_1F92070 & "' and LogSite_Code='"
  loc_1221080: Me.Open CVar(var_8C & MemVar_1F92078 & "' and Category in('PORD') Order by Description"), CVar(MemVar_1F92044), 3
  loc_122109A: CVarUnk
  loc_122109F: VerifyVarObj
  loc_12210A5: Set var_B0 = Me.DGOrdType
  loc_12210AB: LateIdStAd
  loc_12210C3: Set global_68 = New 
  loc_12210D5: Me.DGOrdType.CursorLocation = 3
  loc_12210F8: var_88 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and  (Subgroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_12210FF: var_AC = CVar("Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Site_Code='" & MemVar_1F92070 & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier') Order by Name") 'String
  loc_1221109: Me.Open var_AC, CVar(MemVar_1F92044), 3
  loc_122111D: CVarUnk
  loc_1221122: VerifyVarObj
  loc_1221128: Set var_B0 = Me.DGParty
  loc_122112E: LateIdStAd
  loc_1221158: Me.DGParty.CursorLocation = 3
  loc_1221182: var_8C = "SELECT I.Docid as code,LTrim(right(I.Docid,8)) as Name From Indent I where (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') and I.DOCID NOT In (Select INDENTDOCID From PORDER1 where Logsite_Code='"
  loc_122119A: Me.Open CVar(var_8C & MemVar_1F92078 & "') Order by I.DOCID"), CVar(MemVar_1F92044), 3
  loc_12211B4: CVarUnk
  loc_12211B9: VerifyVarObj
  loc_12211BF: Set var_B0 = Me.DGIndent
  loc_12211C5: LateIdStAd
  loc_12211EF: Me.DGIndent.CursorLocation = 3
  loc_1221212: var_88 = "Select I.Code,I.Name as Name,I.Unit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as PurchRate,I.ConvRatio as COnvFactor ,I.IssueUnit as WtUnit ,P.Name as GrpName,IC.taxStru  From (ItemMast I Inner Join ItemGrp P on I.ItemGroup = P.Code) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1221223: Me.Open CVar(var_88 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1221237: CVarUnk
  loc_122123C: VerifyVarObj
  loc_1221242: Set var_B0 = Me.DGItem
  loc_1221248: LateIdStAd
  loc_1221272: Me.DGItem.CursorLocation = 3
  loc_1221295: var_88 = "Select P.DocID as SearchCode,P.DocID,P.Logsite_Code,P.Site_Code From POrder P Inner Join Voucher_Type V On (P.VType=V.V_Type and P.LogSite_Code=V.LogSite_Code) Where V.LogSite_Code='" & MemVar_1F92078
  loc_12212A6: Me.Open CVar(var_88 & "' And V.NCat='PORD' Order By P.DocID"), CVar(MemVar_1F92044), 3
  loc_12212BD: Set var_B0 = Me
  loc_12212D4: Call Proc_89_61_EFDD4C(Proc_5_1_100CB50("INI", var_B0, New, 1, -1, var_B0, New, 1), -1, var_B0, New)
  loc_12212DF: Call Proc_89_50_1395620(1, -1)
  loc_12212E4: Call Proc_89_58_16D0FDC(var_B0)
  loc_12212F8: Me.LblUser.Left = CDbl(14500)
  loc_122130F: Me.LblUser.Top = CDbl(7800)
  loc_1221326: Me.LblLDt.Top = CDbl(8160)
  loc_122133D: Me.LblLDt.Left = CDbl(14500)
  loc_122134C: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1221364: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_122136C: Exit Sub
  loc_122136D: ' Referenced from: 1220E78
  loc_122136D: Proc_6_60_E62BC4(global_68)
  loc_1221372: Exit Sub
End Sub

Private Sub Form_Resize() 'ED18B8
  'Data Table: 503190
  Dim var_8C As Label
  loc_ED1816: Call 0.Method_arg_50 (var_88)
  loc_ED1828: Me.LblFormCaption.Caption = var_88
  loc_ED1841: Me.LblFormCaption.Left = CDbl(0)
  loc_ED184D: Set var_A0 = Me.TopCtrl1
  loc_ED1853: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED1860: Set var_8C = Me.TopCtrl1
  loc_ED1866: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED1880: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED189B: Call 0.Method_arg_100 (var_B8)
  loc_ED18AD: Me.LblFormCaption.Width = var_B8
  loc_ED18B5: Exit Sub
  loc_ED18B6: Set arg_1800 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5EA38
  'Data Table: 503190
  loc_E5E9F7: Set global_64 = Nothing
  loc_E5EA09: Set global_52 = Nothing
  loc_E5EA1B: Set global_60 = Nothing
  loc_E5EA2D: Set global_56 = Nothing
  loc_E5EA34: Exit Sub
  loc_E5EA35: StUdtVar
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E025D0
  'Data Table: 503190
  loc_E025C9: Call Form_Unload(&HFF)
  loc_E025CE: Exit Sub
End Sub

Private Sub Form_Activate() 'E5B27C
  'Data Table: 503190
  loc_E5B244: Set var_88 = Me.TopCtrl1
  loc_E5B24A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E5B25F: If (CLng(CInt()) = &H2D) Then
  loc_E5B262:   Call TopCtrl1_UnknownEvent_15()
  loc_E5B267: End If
  loc_E5B274: global_72 = CStr(0)
  loc_E5B27B: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29D98
  'Data Table: 503190
  loc_E29D70: On Error Goto loc_E29D90
  loc_E29D87: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29D8F: Exit Sub
  loc_E29D90: ' Referenced from: E29D70
  loc_E29D90: Proc_6_60_E62BC4(Shift)
  loc_E29D95: Exit Sub
  loc_E29D96: Set arg_1874 = 0
End Sub

Public Sub SEARCHBACK(MyValue) 'E977A8
  'Data Table: 503190
  Dim Me As Recordset15
  loc_E97736: On Error Goto loc_E9779F
  loc_E9773F: Me.MoveFirst
  loc_E97769: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97791: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E97799: Call Proc_89_58_16D0FDC(0)
  loc_E9779E: Exit Sub
  loc_E9779F: ' Referenced from: E97736
  loc_E9779F: Proc_6_60_E62BC4(var_A0)
  loc_E977A4: Exit Sub
End Sub

Public Sub Proc_89_50_1395620
  'Data Table: 503190
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As DataGrid
  Dim var_C8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_1394D46: Set var_88 = Me.Txt
  loc_1394D4C: Call 0.Method_Proc_89_50_13956200 (CInt(1), var_8C)
  loc_1394D6B: Me.DGOrdType.Left = CVar(var_8C.Left)
  loc_1394D87: Set var_B4 = Me.Txt
  loc_1394D8D: Call 0.Method_Proc_89_50_13956200 (CInt(1), var_B8)
  loc_1394DA8: Set var_88 = Me.Txt
  loc_1394DAE: Call 0.Method_Proc_89_50_13956200 (CInt(1), var_8C)
  loc_1394DC6: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1394DD5: Me.DGOrdType.Top = CVar(var_8C.Left)
  loc_1394DF9: Me.DGParty.Left = CVar(CDbl(0))
  loc_1394E0F: Set var_B4 = Me.Txt
  loc_1394E15: Call 0.Method_Proc_89_50_13956200 (CInt(4), var_B8)
  loc_1394E30: Set var_88 = Me.Txt
  loc_1394E36: Call 0.Method_Proc_89_50_13956200 (CInt(4), var_8C)
  loc_1394E4E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1394E5D: Me.DGParty.Top = CVar(CDbl(0))
  loc_1394E82: Me.DGParty.Height = CVar(CDbl(5640))
  loc_1394E98: Set var_88 = Me.Txt
  loc_1394E9E: Call 0.Method_Proc_89_50_13956200 (CInt(&H11), var_8C)
  loc_1394EBD: Me.DGIndent.Left = CVar(var_8C.Left)
  loc_1394ED9: Set var_B4 = Me.Txt
  loc_1394EDF: Call 0.Method_Proc_89_50_13956200 (CInt(&H11), var_B8)
  loc_1394EFA: Set var_88 = Me.Txt
  loc_1394F00: Call 0.Method_Proc_89_50_13956200 (CInt(&H11), var_8C)
  loc_1394F18: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1394F27: Me.DGIndent.Top = CVar(var_8C.Left)
  loc_1394F4C: Me.DGItem.Left = CVar(CDbl(1000))
  loc_1394F67: Me.DGItem.Top = CVar(CDbl(2575))
  loc_1394F7C: global_72 = CStr(0)
  loc_1394F87: Set var_C8 = Me.FGrid
  loc_1394F9E: global_80 = CStr(CLng(var_C8.BackColor))
  loc_1394FB4: var_C8.Width = CVar(CDbl(14020))
  loc_1394FC4: var_C8.Left = CVar(CDbl(&H64))
  loc_1394FD5: var_C8.Top = CVar(CDbl(1750))
  loc_1394FE6: var_C8.Cols = &H11
  loc_1394FF7: var_C8.Height = CVar(CDbl(5235))
  loc_1395008: var_C8.RowHeightMin = 0
  loc_1395010: var_A0 = CVar(CLng(0)) 'Long
  loc_1395015: var_E8 = &H190
  loc_1395021: LateIdCallSt
  loc_139502C: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1395031: var_E8 = 0
  loc_139503D: LateIdCallSt
  loc_1395045: var_A0 = 0
  loc_1395051: var_E8 = CVar(CLng(1)) 'Long
  loc_1395056: var_108 = "Item Name"
  loc_139505F: LateIdCallSt
  loc_139506A: var_A0 = CVar(CLng(1)) 'Long
  loc_1395075: var_E8 = CVar(CInt(1)) 'Integer
  loc_139507C: LateIdCallSt
  loc_1395087: var_A0 = CVar(CLng(1)) 'Long
  loc_139508C: var_E8 = &HC80
  loc_1395098: LateIdCallSt
  loc_13950A0: var_A0 = 0
  loc_13950AC: var_E8 = CVar(CLng(2)) 'Long
  loc_13950B1: var_108 = "Specification"
  loc_13950BA: LateIdCallSt
  loc_13950C5: var_A0 = CVar(CLng(2)) 'Long
  loc_13950D0: var_E8 = CVar(CInt(1)) 'Integer
  loc_13950D7: LateIdCallSt
  loc_13950E2: var_A0 = CVar(CLng(2)) 'Long
  loc_13950E7: var_E8 = &H6EA
  loc_13950F3: LateIdCallSt
  loc_13950FB: var_A0 = 0
  loc_1395107: var_E8 = CVar(CLng(4)) 'Long
  loc_139510C: var_108 = "Unit"
  loc_1395115: LateIdCallSt
  loc_1395120: var_A0 = CVar(CLng(4)) 'Long
  loc_139512B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1395132: LateIdCallSt
  loc_139513D: var_A0 = CVar(CLng(4)) 'Long
  loc_1395148: var_E8 = CVar(CInt(1)) 'Integer
  loc_139514F: LateIdCallSt
  loc_139515A: var_A0 = CVar(CLng(4)) 'Long
  loc_139515F: var_E8 = &H384
  loc_139516B: LateIdCallSt
  loc_1395173: var_A0 = 0
  loc_139517F: var_E8 = CVar(CLng(3)) 'Long
  loc_1395184: var_108 = "Qty"
  loc_139518D: LateIdCallSt
  loc_1395198: var_A0 = CVar(CLng(3)) 'Long
  loc_13951A3: var_E8 = CVar(CInt(7)) 'Integer
  loc_13951AA: LateIdCallSt
  loc_13951B5: var_A0 = CVar(CLng(3)) 'Long
  loc_13951C0: var_E8 = CVar(CInt(7)) 'Integer
  loc_13951C7: LateIdCallSt
  loc_13951D2: var_A0 = CVar(CLng(3)) 'Long
  loc_13951D7: var_E8 = &H3E8
  loc_13951E3: LateIdCallSt
  loc_13951EB: var_A0 = 0
  loc_13951F7: var_E8 = CVar(CLng(5)) 'Long
  loc_13951FC: var_108 = "Conv.Factor"
  loc_1395205: LateIdCallSt
  loc_1395210: var_A0 = CVar(CLng(5)) 'Long
  loc_139521B: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395222: LateIdCallSt
  loc_139522D: var_A0 = CVar(CLng(5)) 'Long
  loc_1395238: var_E8 = CVar(CInt(7)) 'Integer
  loc_139523F: LateIdCallSt
  loc_139524A: var_A0 = CVar(CLng(5)) 'Long
  loc_139524F: var_E8 = 0
  loc_139525B: LateIdCallSt
  loc_1395263: var_A0 = 0
  loc_139526F: var_E8 = CVar(CLng(6)) 'Long
  loc_1395274: var_108 = "Wt.Qty"
  loc_139527D: LateIdCallSt
  loc_1395288: var_A0 = CVar(CLng(6)) 'Long
  loc_1395293: var_E8 = CVar(CInt(7)) 'Integer
  loc_139529A: LateIdCallSt
  loc_13952A5: var_A0 = CVar(CLng(6)) 'Long
  loc_13952B0: var_E8 = CVar(CInt(7)) 'Integer
  loc_13952B7: LateIdCallSt
  loc_13952C2: var_A0 = CVar(CLng(6)) 'Long
  loc_13952C7: var_E8 = &H3E8
  loc_13952D3: LateIdCallSt
  loc_13952DB: var_A0 = 0
  loc_13952E7: var_E8 = CVar(CLng(7)) 'Long
  loc_13952EC: var_108 = "Wt.Unit"
  loc_13952F5: LateIdCallSt
  loc_1395300: var_A0 = CVar(CLng(7)) 'Long
  loc_139530B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1395312: LateIdCallSt
  loc_139531D: var_A0 = CVar(CLng(7)) 'Long
  loc_1395328: var_E8 = CVar(CInt(1)) 'Integer
  loc_139532F: LateIdCallSt
  loc_139533A: var_A0 = CVar(CLng(7)) 'Long
  loc_139533F: var_E8 = &H384
  loc_139534B: LateIdCallSt
  loc_1395353: var_A0 = 0
  loc_139535F: var_E8 = CVar(CLng(8)) 'Long
  loc_1395364: var_108 = "Rate"
  loc_139536D: LateIdCallSt
  loc_1395378: var_A0 = CVar(CLng(8)) 'Long
  loc_1395383: var_E8 = CVar(CInt(7)) 'Integer
  loc_139538A: LateIdCallSt
  loc_1395395: var_A0 = CVar(CLng(8)) 'Long
  loc_13953A0: var_E8 = CVar(CInt(7)) 'Integer
  loc_13953A7: LateIdCallSt
  loc_13953B2: var_A0 = CVar(CLng(8)) 'Long
  loc_13953B7: var_E8 = &H384
  loc_13953C3: LateIdCallSt
  loc_13953CB: var_A0 = 0
  loc_13953D7: var_E8 = CVar(CLng(&HA)) 'Long
  loc_13953DC: var_108 = "Tax Amt."
  loc_13953E5: LateIdCallSt
  loc_13953F0: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13953FB: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395402: LateIdCallSt
  loc_139540D: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1395418: var_E8 = CVar(CInt(7)) 'Integer
  loc_139541F: LateIdCallSt
  loc_139542A: var_A0 = CVar(CLng(&HA)) 'Long
  loc_139542F: var_E8 = &H384
  loc_139543B: LateIdCallSt
  loc_1395443: var_A0 = 0
  loc_139544F: var_E8 = CVar(CLng(9)) 'Long
  loc_1395454: var_108 = "Goods Amt."
  loc_139545D: LateIdCallSt
  loc_1395468: var_A0 = CVar(CLng(9)) 'Long
  loc_1395473: var_E8 = CVar(CInt(7)) 'Integer
  loc_139547A: LateIdCallSt
  loc_1395485: var_A0 = CVar(CLng(9)) 'Long
  loc_1395490: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395497: LateIdCallSt
  loc_13954A2: var_A0 = CVar(CLng(9)) 'Long
  loc_13954A7: var_E8 = &H5DC
  loc_13954B3: LateIdCallSt
  loc_13954BB: var_A0 = 0
  loc_13954C7: var_E8 = CVar(CLng(&HB)) 'Long
  loc_13954CC: var_108 = "Total"
  loc_13954D5: LateIdCallSt
  loc_13954E0: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13954EB: var_E8 = CVar(CInt(7)) 'Integer
  loc_13954F2: LateIdCallSt
  loc_13954FD: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1395508: var_E8 = CVar(CInt(7)) 'Integer
  loc_139550F: LateIdCallSt
  loc_139551A: var_A0 = CVar(CLng(&HB)) 'Long
  loc_139551F: var_E8 = &H44C
  loc_139552B: LateIdCallSt
  loc_1395536: var_A0 = CVar(CLng(&HC)) 'Long
  loc_139553B: var_E8 = 0
  loc_1395547: LateIdCallSt
  loc_1395552: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1395557: var_E8 = 0
  loc_1395563: LateIdCallSt
  loc_139556E: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1395573: var_E8 = 0
  loc_139557F: LateIdCallSt
  loc_139558A: var_A0 = CVar(CLng(&H10)) 'Long
  loc_139558F: var_E8 = 0
  loc_139559B: LateIdCallSt
  loc_13955A6: var_A0 = CVar(CLng(&H11)) 'Long
  loc_13955AB: var_E8 = 0
  loc_13955B7: LateIdCallSt
  loc_13955C1: Set var_C8 = Nothing 
  loc_13955C9: Set var_11C = Me.FGCat
  loc_13955E0: global_80 = CStr(CLng(var_11C.BackColor))
  loc_13955ED: var_A0 = CVar(CLng(3)) 'Long
  loc_13955F2: var_E8 = &H7D0
  loc_13955FE: LateIdCallSt
  loc_1395612: var_11C.Cols = 7
  loc_1395619: Set var_11C = Nothing 
  loc_139561D: Exit Sub
End Sub

Public Sub Proc_89_51_100F5C4
  'Data Table: 503190
  Dim unk_5031AD As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_100F3F3: unk_5031AD.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Order Entry' ", var_AC, -1
  loc_100F3FE: Set var_8C = var_B0
  loc_100F41B: If (var_8C.RecordCount > 0) Then
  loc_100F438:   var_B8 = var_8C.Fields.Item("SDate")
  loc_100F49E:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_100F4AF:     Set var_B0 = Me.Txt
  loc_100F4B5:     Call 0.Method_Proc_89_51_100F5C40 (CInt(3), var_B8, var_134)
  loc_100F4BD:     var_B0 = var_B8.Text
  loc_100F508:     Set var_138 = Me.Txt
  loc_100F50E:     Call 0.Method_Proc_89_51_100F5C40 (CInt(3), var_13C, var_140)
  loc_100F516:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_100F547:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_100F54F:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_100F57E:     If CBool(Not &HFF And var_120) Then
  loc_100F5A2:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_100F5B7:       Proc_89_51_100F5C4 = 0
  loc_100F5BD:     End If
  loc_100F5BD:   End If
  loc_100F5BD: End If
  loc_100F5BD: Proc_89_51_100F5C4 = 
End Sub

Public Sub Proc_89_52_E3FEB0
  'Data Table: 503190
  loc_E3FE8C: Set var_88 = Me.TopCtrl1
  loc_E3FE92: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3FEAB: If (CStr() = "Browse") Then
  loc_E3FEAE:   Exit Sub
  loc_E3FEAF: End If
  loc_E3FEAF: Exit Sub
End Sub

Public Sub Proc_89_53_153620C(arg_C) '153620C
  'Data Table: 503190
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_128 As Variant
  Dim var_B4 As String
  Dim var_14C As Variant
  Dim var_13C As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_170 As String
  Dim var_174 As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_88 As Integer
  loc_1535268: If (arg_C = 0) Then
  loc_153527E:   var_A4 = CLng(Me.FGrid.Col)
  loc_153528E:   If (var_A4 = CLng(1)) Then
  loc_15352B1:     var_AA = Me.EOF
  loc_15352DF:     Set var_90 = Me.TxtGrid
  loc_15352E5:     Call 0.Method_Proc_89_53_153620C0 (arg_C, var_B0, var_B4)
  loc_15352ED:     ((Me.RecordCount = 0) Or ((var_AA = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_1535305:     If (var_A4 Or (var_B4 = vbNullString)) Then
  loc_153531B:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535323:       var_E4 = CVar(CLng(1)) 'Long
  loc_1535328:       var_104 = vbNullString
  loc_1535332:       Set var_B0 = Me.FGrid
  loc_1535338:       LateIdCallSt
  loc_153535D:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535365:       var_E4 = CVar(CLng(&HE)) 'Long
  loc_153536A:       var_104 = vbNullString
  loc_1535374:       Set var_B0 = Me.FGrid
  loc_153537A:       LateIdCallSt
  loc_153539F:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15353A7:       var_E4 = CVar(CLng(4)) 'Long
  loc_15353AC:       var_104 = vbNullString
  loc_15353B6:       Set var_B0 = Me.FGrid
  loc_15353BC:       LateIdCallSt
  loc_15353E1:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15353E9:       var_E4 = CVar(CLng(8)) 'Long
  loc_15353EE:       var_104 = vbNullString
  loc_15353F8:       Set var_B0 = Me.FGrid
  loc_15353FE:       LateIdCallSt
  loc_1535423:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153542B:       var_E4 = CVar(CLng(7)) 'Long
  loc_1535430:       var_104 = vbNullString
  loc_153543A:       Set var_B0 = Me.FGrid
  loc_1535440:       LateIdCallSt
  loc_1535465:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153546D:       var_E4 = CVar(CLng(5)) 'Long
  loc_1535472:       var_104 = vbNullString
  loc_153547C:       Set var_B0 = Me.FGrid
  loc_1535482:       LateIdCallSt
  loc_15354A7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15354AF:       var_E4 = CVar(CLng(6)) 'Long
  loc_15354B4:       var_104 = vbNullString
  loc_15354BE:       Set var_B0 = Me.FGrid
  loc_15354C4:       LateIdCallSt
  loc_15354E9:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15354F1:       var_E4 = CVar(CLng(&H11)) 'Long
  loc_15354F6:       var_104 = vbNullString
  loc_1535500:       Set var_B0 = Me.FGrid
  loc_1535506:       LateIdCallSt
  loc_153551B:     Else
  loc_153551E:       Call Proc_89_57_105676C(var_AA, var_B0, var_104, var_E4, var_C4, var_B0, var_104, var_E4)
  loc_1535529:       If (var_AA = 0) Then
  loc_1535531:         Proc_89_53_153620C = 0
  loc_1535537:       End If
  loc_153554A:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535552:       var_F4 = CVar(CLng(1)) 'Long
  loc_1535585:       var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_153558D:       Set var_13C = Me.FGrid
  loc_1535593:       LateIdCallSt
  loc_15355C2:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15355CA:       var_F4 = CVar(CLng(&HE)) 'Long
  loc_15355FD:       var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1535605:       Set var_13C = Me.FGrid
  loc_153560B:       LateIdCallSt
  loc_1535640:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535648:       var_E4 = CVar(CLng(&HE)) 'Long
  loc_1535662:       var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1535680:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535688:       var_14C = CVar(CLng(&HE)) 'Long
  loc_15356A2:       var_170 = CStr(Me.FGrid.TextMatrix))
  loc_153570D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HE)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1535723:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153572B:         var_F4 = CVar(CLng(4)) 'Long
  loc_153575E:         var_138 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1535766:         Set var_13C = Me.FGrid
  loc_153576C:         LateIdCallSt
  loc_15357BA:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15357C2:         var_104 = CVar(CLng(8)) 'Long
  loc_15357EF:         var_184 = CVar(CStr(Format(CVar(Me.Fields.Item("PurchRate")), "0.00"))) 'String
  loc_15357F7:         Set var_13C = Me.FGrid
  loc_15357FD:         LateIdCallSt
  loc_153582E:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535836:         var_F4 = CVar(CLng(7)) 'Long
  loc_1535869:         var_138 = CVar(CStr(Me.Fields.Item("WtUnit").Value)) 'String
  loc_1535871:         Set var_13C = Me.FGrid
  loc_1535877:         LateIdCallSt
  loc_15358A6:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15358AE:         var_E4 = CVar(CLng(6)) 'Long
  loc_15358B7:         var_128 = CVar(CStr(0)) 'String
  loc_15358BF:         Set var_B0 = Me.FGrid
  loc_15358C5:         LateIdCallSt
  loc_153590D:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535915:         var_104 = CVar(CLng(5)) 'Long
  loc_1535950:         LateIdCallSt
  loc_15359B9:         var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("COnvFactor")), "0.00"))), 1, 1)) 'String
  loc_15359C1:         Set var_13C = Me.FGrid
  loc_15359C7:         LateIdCallSt
  loc_15359E1:       End If
  loc_15359E1:     End If
  loc_15359FC:     var_E4 = CVar(CLng(1)) 'Long
  loc_1535A05:     Set var_B0 = Me.FGrid
  loc_1535A16:     var_138 = CVar(CStr(var_B0.TextMatrix))) 'String
  loc_1535A1C:     var_16C = Trim(var_138)
  loc_1535A24:     var_104 = vbNullString
  loc_1535A3E:     If (var_16C = var_104) Then
  loc_1535A47:       Call 0.Method_arg_50 (var_B4, var_E4, CVar(CLng(Me.FGrid.Row)), var_13C, var_138, var_104)
  loc_1535A68:       MsgBox("Item Required", &H40, CVar(var_B4), var_138, var_16C)
  loc_1535A7D:       Proc_89_53_153620C = 0
  loc_1535A83:     End If
  loc_1535A91:     Me.FGrid.Redraw = True
  loc_1535AA2:     If (global_148 = 1) Then
  loc_1535AB8:       Me.FGrid.Rows = 1
  loc_1535ADE:       var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_E4, var_B0))) 'String
  loc_1535AE6:       Set var_B0 = Me.FGrid
  loc_1535B13:       Me.FGrid.FixedRows = 1
  loc_1535B1B:     End If
  loc_1535B26:     If (global_84 = "Yes") Then
  loc_1535B3C:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535B8A:       Call Proc_89_55_138CBE4(CStr(Me.FGrid.TextMatrix)), var_170, CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), Me.FGrid.TextMatrix), CVar(CLng(&HE)))
  loc_1535B92:       var_16C = CVar(var_170) 'String
  loc_1535B9A:       Set var_13C = Me.FGrid
  loc_1535BA0:       LateIdCallSt
  loc_1535BC1:     End If
  loc_1535BD4:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535BE5:     Set var_B0 = Me.FGrid
  loc_1535BEB:     var_128 = var_B0.TextMatrix)
  loc_1535C1B:     Set var_13C = Me.FGrid
  loc_1535C21:     var_16C = var_13C.TextMatrix)
  loc_1535C5F:     var_88 = Proc_96_27_11F27DC(CStr(var_128), Val(CStr(var_16C)), MemVar_1F92070, MemVar_1F92078 & "PURC", global_88, Val(CStr(var_16C)), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1535C91:     Me.LblCurStockStr.Caption = global_88
  loc_1535C99:     Call Proc_89_54_1142B2C(var_88, var_128, CVar(CLng(&HE)), var_C4, var_13C)
  loc_1535CA1:   Else
  loc_1535CA8:     If (var_A4 = CLng(3)) Then
  loc_1535CB5:       Set var_90 = Me.TxtGrid
  loc_1535CBB:       Call 0.Method_Proc_89_53_153620C0 (arg_C, var_B0, var_16C)
  loc_1535CD3:       If Not(IsNumeric(CVar(var_B0))) Then
  loc_1535CDA:         var_B4 = CStr(0)
  loc_1535CE7:         Set var_90 = Me.TxtGrid
  loc_1535CED:         Call 0.Method_Proc_89_53_153620C0 (arg_C, var_B0, var_B4)
  loc_1535CF5:         var_B0.Text = var_C4
  loc_1535D04:       End If
  loc_1535D11:       Set var_90 = Me.TxtGrid
  loc_1535D17:       Call 0.Method_Proc_89_53_153620C0 (arg_C, var_B0, var_B4)
  loc_1535D1F:       FGrid.DispID_10000 = var_B0.Text
  loc_1535D2E:       var_16C = Me.FGrid.Row
  loc_1535D37:       var_D4 = CVar(CLng(var_16C)) 'Long
  loc_1535D4F:       var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1535D72:       var_138 = Format(CVar(var_B4), "0.000")
  loc_1535D89:       LateIdCallSt
  loc_1535DE2:       var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1535E00:       If (CDbl(Val(var_B4)) = CDbl(0)) Then
  loc_1535E09:         Call 0.Method_arg_50 (var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_138)))
  loc_1535E2A:         MsgBox("Quantity Required", &H40, CVar(var_B4), var_138, var_16C)
  loc_1535E3F:         Proc_89_53_153620C = 0
  loc_1535E45:       End If
  loc_1535E50:       If (global_84 = "Yes") Then
  loc_1535E66:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535EB4:         Call Proc_89_55_138CBE4(CStr(Me.FGrid.TextMatrix)), var_170, CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), Me.FGrid.TextMatrix), CVar(CLng(&HE)))
  loc_1535EBC:         var_16C = CVar(var_170) 'String
  loc_1535EC4:         Set var_13C = Me.FGrid
  loc_1535ECA:         LateIdCallSt
  loc_1535EEB:       End If
  loc_1535EFE:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1535F0F:       Set var_B0 = Me.FGrid
  loc_1535F15:       var_128 = var_B0.TextMatrix)
  loc_1535F45:       Set var_13C = Me.FGrid
  loc_1535F4B:       var_16C = var_13C.TextMatrix)
  loc_1535F89:       var_88 = Proc_96_27_11F27DC(CStr(var_128), Val(CStr(var_16C)), MemVar_1F92070, MemVar_1F92078 & "PURC", global_88, Val(CStr(var_16C)), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1535FBB:       Me.LblCurStockStr.Caption = global_88
  loc_1535FC3:       Call Proc_89_54_1142B2C(var_88, var_128, CVar(CLng(&HE)), var_C4, var_13C)
  loc_1535FCB:     Else
  loc_1535FD2:       If (var_A4 = CLng(8)) Then
  loc_1535FDF:         Set var_90 = Me.TxtGrid
  loc_1535FE5:         Call 0.Method_Proc_89_53_153620C0 (arg_C, var_B0, var_16C)
  loc_1535FFD:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_1536004:           var_B4 = CStr(0)
  loc_1536011:           Set var_90 = Me.TxtGrid
  loc_1536017:           Call 0.Method_Proc_89_53_153620C0 (arg_C, var_B0, var_B4)
  loc_153601F:           var_B0.Text = var_C4
  loc_153602E:         End If
  loc_153603B:         Set var_90 = Me.TxtGrid
  loc_1536041:         Call 0.Method_Proc_89_53_153620C0 (arg_C, var_B0, var_B4)
  loc_1536049:         1 = var_B0.Text
  loc_1536058:         var_16C = Me.FGrid.Row
  loc_1536061:         var_D4 = CVar(CLng(var_16C)) 'Long
  loc_1536079:         var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_153609C:         var_138 = Format(CVar(var_B4), "0.00")
  loc_15360B3:         LateIdCallSt
  loc_15360FB:         Set var_B0 = Me.FGrid
  loc_153610C:         var_B4 = CStr(var_B0.TextMatrix))
  loc_153612A:         If (CDbl(Val(var_B4)) = CDbl(0)) Then
  loc_1536133:           Call 0.Method_arg_50 (var_B4, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_138)))
  loc_1536154:           MsgBox("Rate Required", &H40, CVar(var_B4), var_138, var_16C)
  loc_1536169:           Proc_89_53_153620C = 0
  loc_153616F:         End If
  loc_153616F:         Call Proc_89_54_1142B2C(1, 1, var_F4)
  loc_1536177:       Else
  loc_153617E:         If (var_A4 = CLng(2)) Then
  loc_1536194:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15361BD:           Set var_90 = Me.TxtGrid
  loc_15361C3:           Call 0.Method_Proc_89_53_153620C0 (0, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)))
  loc_15361CB:           var_C4 = var_B0.Text
  loc_15361D3:           var_138 = CVar(var_B4) 'String
  loc_15361DB:           Set var_174 = Me.FGrid
  loc_15361E1:           LateIdCallSt
  loc_15361FF:         End If
  loc_15361FF:       End If
  loc_15361FF:     End If
  loc_15361FF:   End If
  loc_15361FF: End If
  loc_1536204: Proc_89_53_153620C = &HFF
End Sub

Public Sub Proc_89_54_1142B2C
  'Data Table: 503190
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_168 As Variant
  Dim var_170 As MSHFlexGrid
  Dim var_1B0 As Variant
  Dim var_248 As Double
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  loc_11427E3: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11427EB: var_C8 = CVar(CLng(&H11)) 'Long
  loc_114282C: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1142834: var_144 = CVar(CLng(8)) 'Long
  loc_1142896: var_248 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11428DA: Call Proc_89_65_171ECEC(CStr(Me.FGrid.TextMatrix)), CInt(CLng(Me.FGrid.Row)), CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_248)), "0.00")), 1, 1, var_248, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1142923: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114292B: var_C8 = CVar(CLng(8)) 'Long
  loc_1142963: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114296B: var_144 = CVar(CLng(3)) 'Long
  loc_11429A3: var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11429AB: var_1E8 = CVar(CLng(9)) 'Long
  loc_11429DC: var_218 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11429E4: Set var_170 = Me.FGrid
  loc_11429EA: LateIdCallSt
  loc_1142A30: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1142A38: var_C8 = CVar(CLng(9)) 'Long
  loc_1142A70: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1142A78: var_144 = CVar(CLng(&HA)) 'Long
  loc_1142AB0: var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1142AB8: var_1E8 = CVar(CLng(&HB)) 'Long
  loc_1142AD9: var_168 = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1142AE9: var_218 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1142AF1: Set var_170 = Me.FGrid
  loc_1142AF7: LateIdCallSt
  loc_1142B2A: Exit Sub
End Sub

Public Sub Proc_89_55_138CBE4(arg_C) '138CBE4
  'Data Table: 503190
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_C4 As String
  Dim unk_5031AD As Connection15
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_1C4 As Variant
  Dim var_1F4 As Variant
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_F0 As Variant
  Dim var_EC As Variant
  Dim var_96 As Integer
  Dim var_104 As Variant
  Dim var_230 As Double
  Dim var_8C As Recordset15
  loc_138C3A1: var_A0 = "Select Distinct I.Name As ItemName, " & "I.MaxStock/I.ConvRatio as MaxStock,I.MinStock/I.ConvRatio as MinStock " & "From ItemMast I Where  "
  loc_138C3D5: var_C4 = var_A0 & "I.LogSite_Code='" & Proc_6_45_EAD428(MemVar_1F92078) & "' and  " & "I.Code='" & arg_C & "' And I.ItemType='Store' " & "And I.RestCode = '"
  loc_138C3EC: unk_5031AD.Execute var_C4 & MemVar_1F92078 & "PURC' Order By Name", var_EC, -1
  loc_138C3F7: Set var_8C = var_F0
  loc_138C431: var_9C = "SELECT isnull(Sum(S.RecdQty),0) AS Qty FROM ((Stock S iNNER Join ItemMast I On S.Item=I.Code And I.ItemType='Store') " & "Inner Join Voucher_type VT On (S.VType=VT.V_Type And S.LogSite_Code=VT.LogSite_Code)) Where S.LogSite_Code='"
  loc_138C457: Proc_6_7_F25D88(var_104, Date, CVar(var_9C & MemVar_1F92078 & "' " & "and S.VDate < "), var_214)
  loc_138C45F: var_124 = -1 & var_104 
  loc_138C4A0: var_1F4 = var_124 & " And Item='" & CVar(arg_C) & "'" & "And S.GODOWNCODE ='" & CVar(MemVar_1F92078) & "PURC' " & "And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','KSREC','KMREC') AND S.QtyRec>0 Group By S.Item HAVING Sum(S.QtyRec)>0" 
  loc_138C4AE: unk_5031AD.Execute CStr(var_1F4), var_F0, var_F0
  loc_138C4B9: Set var_90 = var_F0
  loc_138C4F9: var_9C = "SELECT Sum(S.IssQty) AS Qty FROM ((Stock S Inner Join ItemMast I On S.Item=I.Code And I.ItemType='Store') " & "Inner Join Voucher_type VT On (S.VType=VT.V_Type And S.LogSite_Code=VT.LogSite_Code)) Where S.LogSite_Code='"
  loc_138C51F: Proc_6_7_F25D88(var_104, Date, CVar(var_9C & MemVar_1F92078 & "' and " & "S.VDate < "), var_214)
  loc_138C527: var_124 = -1 & var_104 
  loc_138C568: var_1F4 = var_124 & " And Item='" & CVar(arg_C) & "' " & " And S.GODOWNCODE = '" & CVar(MemVar_1F92078) & "PURC'  And " & "VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS') AND S.QtyIss>0 Group By S.Item HAVING Sum(S.QtyIss)>0" 
  loc_138C576: unk_5031AD.Execute CStr(var_1F4), var_F0, 2
  loc_138C581: Set var_94 = var_F0
  loc_138C5D6: If ((var_90.RecordCount > 0) And (var_94.RecordCount > 0)) Then
  loc_138C5F8:   var_EC = CVar(var_90.Fields.Item("qty")) 'Address
  loc_138C5FF:   Proc_6_39_E7C810(var_104)
  loc_138C62A:   Proc_6_39_E7C810(var_124, CVar(var_94.Fields.Item("qty")))
  loc_138C64A:   var_134 = (var_104 - var_124)
  loc_138C66A:   var_96 = CInt(Val(CStr(Format(var_124 & " And Item='", "0.00"))))
  loc_138C6C5:   var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138C6D0:   var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C6FB:   Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("MaxStock")), "PURC'  And ", var_230, CVar(CLng(3)))
  loc_138C71C:   If (CVar(CLng(Me.FGrid.Row)) > var_124) Then
  loc_138C728:     Call Proc_89_56_E8C874("&H8080FF", var_96, 1)
  loc_138C733:   Else
  loc_138C75D:     var_104 = Me.FGrid.TextMatrix)
  loc_138C770:     var_230 = Val(CStr(var_104))
  loc_138C77B:     var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C7A6:     Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("MinStock")), "PURC'  And ", var_230)
  loc_138C7C7:     If (CVar(CLng(3)) < var_124) Then
  loc_138C7D3:       Call Proc_89_56_E8C874("&H80C0FF", CVar(CLng(Me.FGrid.Row)))
  loc_138C7DE:     Else
  loc_138C7E7:       Call Proc_89_56_E8C874("&H80000005", 1)
  loc_138C7EF:     End If
  loc_138C7EF:   End If
  loc_138C7F2: Else
  loc_138C806:   If (var_94.RecordCount <= 0) Then
  loc_138C82F:     Proc_6_39_E7C810(var_104, CVar(var_90.Fields.Item("qty")))
  loc_138C84F:     var_124 = Format(var_104, "0.00")
  loc_138C861:     var_96 = CInt(Val(CStr(var_124)))
  loc_138C8B2:     var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138C8BD:     var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C8E8:     Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("MaxStock")), "PURC'  And ", var_230, CVar(CLng(3)))
  loc_138C909:     If (CVar(CLng(Me.FGrid.Row)) > var_124) Then
  loc_138C915:       Call Proc_89_56_E8C874("&H8080FF", var_96, 1)
  loc_138C920:     Else
  loc_138C94A:       var_104 = Me.FGrid.TextMatrix)
  loc_138C95D:       var_230 = Val(CStr(var_104))
  loc_138C968:       var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C993:       Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("MinStock")), "PURC'  And ", var_230)
  loc_138C9B4:       If (CVar(CLng(3)) < var_124) Then
  loc_138C9C0:         Call Proc_89_56_E8C874("&H80C0FF", CVar(CLng(Me.FGrid.Row)))
  loc_138C9CB:       Else
  loc_138C9D4:         Call Proc_89_56_E8C874("&H80000005", 1)
  loc_138C9DC:       End If
  loc_138C9DC:     End If
  loc_138C9DF:   Else
  loc_138C9F3:     If (var_90.RecordCount <= 0) Then
  loc_138CA1C:       Proc_6_39_E7C810(var_104, CVar(var_94.Fields.Item("qty")))
  loc_138CA3C:       var_124 = Format(var_104, "0.00")
  loc_138CA4F:       var_96 = CInt(-Val(CStr(var_124)))
  loc_138CAA0:       var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138CAAB:       var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138CAD6:       Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("MaxStock")), "PURC'  And ", var_230, CVar(CLng(3)))
  loc_138CAF7:       If (CVar(CLng(Me.FGrid.Row)) > var_124) Then
  loc_138CB03:         Call Proc_89_56_E8C874("&H8080FF", var_96, 1)
  loc_138CB0E:       Else
  loc_138CB18:         var_EC = Me.FGrid.Row
  loc_138CB4B:         var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138CB56:         var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138CB81:         Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("MinStock")), "PURC'  And ", var_230)
  loc_138CBA2:         If (CVar(CLng(3)) < var_124) Then
  loc_138CBAE:           Call Proc_89_56_E8C874("&H80C0FF", CVar(CLng(var_EC)))
  loc_138CBB9:         Else
  loc_138CBC2:           Call Proc_89_56_E8C874("&H80000005", 1)
  loc_138CBCA:         End If
  loc_138CBCA:       End If
  loc_138CBCD:     Else
  loc_138CBD6:       Call Proc_89_56_E8C874("&H80000005")
  loc_138CBDE:     End If
  loc_138CBDE:   End If
  loc_138CBDE: End If
  loc_138CBDE: Proc_89_55_138CBE4 = var_EC
End Sub

Public Sub Proc_89_56_E8C874(arg_C) 'E8C874
  'Data Table: 503190
  Dim var_8C As MSHFlexGrid
  loc_E8C800: Set var_8C = Me.FGrid
  loc_E8C81E: For var_A0 = 1 To CInt((CLng(var_8C.Cols) - 1)): var_86 = var_A0 'Integer
  loc_E8C838:   var_8C.Row = CVar(CLng(var_8C.RowSel))
  loc_E8C84C:   var_8C.Col = CVar(CLng(var_86))
  loc_E8C85D:   var_8C.CellBackColor = CVar(CLng(arg_C))
  loc_E8C865: Next var_A0 'Integer
  loc_E8C86C: Set var_8C = Nothing 
  loc_E8C870: Exit Sub
End Sub

Public Sub Proc_89_57_105676C
  'Data Table: 503190
  Dim var_98 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_178 As Variant
  loc_105653F: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1056544:   var_94 = 1 'Byte
  loc_1056548: End If
  loc_105655B: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10565A1: Set var_134 = Me.TxtGrid
  loc_10565A7: Call 0.Method_Proc_89_57_105676C0 (0, var_138, Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))
  loc_10565C9: var_178 = (CVar(CLng(var_92)) + Ucase(Trim(CVar(var_138))))
  loc_10565CE: var_8C = CStr(var_178)
  loc_1056614: For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_17C 'Integer
  loc_1056638:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_105663B:     GoTo loc_1056757
  loc_105663E:   End If
  loc_1056642:   var_BC = CVar(CLng(var_88)) 'Long
  loc_105666C:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1056677:   var_120 = Ucase(var_110)
  loc_1056696:   Set var_F0 = Me.FGrid
  loc_10566C0:   var_178 = (CVar(CLng(var_94)) + Ucase(Trim(CVar(CStr(var_F0.TextMatrix))))))
  loc_10566F5:   If ((var_8C = CStr(var_178)) And (CStr(var_178) <> vbNullString)) Then
  loc_1056719:     MsgBox("Duplicate Item Name & PartNo Not Allowed", &H40, "Validation", var_110, var_120)
  loc_1056732:     Set var_98 = Me.TxtGrid
  loc_1056738:     Call 0.Method_Proc_89_57_105676C0 (0, var_F0, CVar(CLng(var_88)), var_120, CVar(CLng(var_92)))
  loc_1056740:     var_F0.SetFocus
  loc_1056751:     Proc_89_57_105676C = 0
  loc_1056757:     ' Referenced from: 105663B
  loc_1056757:   End If
  loc_105675A: Next var_17C 'Integer
  loc_1056764: Proc_89_57_105676C = &HFF
End Sub

Public Sub Proc_89_58_16D0FDC
  'Data Table: 503190
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_5031AD As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_138 As String
  Dim var_19C As Fields15
  Dim var_1E4 As String
  Dim var_1F4 As Recordset15
  Dim var_134 As TextBox
  Dim var_8C As Recordset15
  Dim var_1F6 As Integer
  Dim var_1B0 As TextBox
  Dim var_90 As Integer
  Dim var_12C As Variant
  Dim var_158 As Variant
  Dim var_98 As Recordset15
  loc_16CF5F4: On Error Goto loc_16D0FD6
  loc_16CF60E: If (Me.RecordCount > 0) Then
  loc_16CF61E:   Me.LblCurStockStr.Caption = vbNullString
  loc_16CF67C:   unk_5031AD.Execute CStr("Select * From POrder Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_12C, -1
  loc_16CF687:   Set var_88 = var_130
  loc_16CF6DB:   var_130 = var_88.Fields
  loc_16CF744:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16CF789:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_16CF803:   var_134 = var_88.Fields.Item("U_AE")
  loc_16CF81C:   var_12C = "entdt : "
  loc_16CF83F:   var_158 = IIf((Proc_6_38_E68A98(CVar(var_134)) = "E"), "Last Update : ", var_12C)
  loc_16CF84C:   var_188 = "Created By : "
  loc_16CF883:   var_1B0 = var_88.Fields.Item("U_EntDt")
  loc_16CF89B:   var_1E4 = CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), var_188, var_158) & CVar(Proc_6_38_E68A98(CVar(var_1B0))))
  loc_16CF8A9:   Me.LblLDt.Caption = var_1E4
  loc_16CF8E4:   Set var_1F4 = var_88 
  loc_16CF921:   Set var_130 = Me.Txt
  loc_16CF927:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(0), var_134)
  loc_16CF92F:   var_134.Text = CStr(var_1F4.Fields.Item("DocID").Value)
  loc_16CF97D:   Me.LblVPrefix.Caption = CStr(var_1F4.Fields.Item("vPrefix").Value)
  loc_16CF9C2:   global_112 = CStr(var_1F4.Fields.Item("vPrefix").Value)
  loc_16CFA12:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(1), var_134)
  loc_16CFA1A:   var_134.Tag = CStr(var_1F4.Fields.Item("vType").Value)
  loc_16CFA83:   unk_5031AD.Execute CStr("Select Description,NCat From Voucher_Type Where V_Type='" & var_1F4.Fields.Item("vType").Value & "'"), var_12C, -1
  loc_16CFA8E:   Set var_8C = Me.Txt
  loc_16CFABC:   If (var_8C.RecordCount > 0) Then
  loc_16CFAF5:     Set var_130 = Me.Txt
  loc_16CFAFB:     Call 0.Method_Proc_89_58_16D0FDC0 (CInt(1), var_134)
  loc_16CFB03:     var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Description")))
  loc_16CFB2E:     var_B8 = var_8C.Fields.Item("NCat")
  loc_16CFB45:     global_120 = Proc_6_38_E68A98(CVar(var_B8))
  loc_16CFB55:   Else
  loc_16CFB63:     Set var_A4 = Me.Txt
  loc_16CFB69:     Call 0.Method_Proc_89_58_16D0FDC0 (CInt(1), var_B8)
  loc_16CFB71:     var_B8.Text = vbNullString
  loc_16CFB83:     global_120 = vbNullString
  loc_16CFB87:   End If
  loc_16CFBC0:   Set var_130 = Me.Txt
  loc_16CFBC6:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(2), var_134)
  loc_16CFBCE:   var_134.Text = CStr(var_1F4.Fields.Item("VNo").Value)
  loc_16CFC36:   Set var_130 = Me.Txt
  loc_16CFC3C:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(3), var_134, CStr(Format(CVar(var_1F4.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_16CFC44:   var_134.Text = 1
  loc_16CFC86:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("PartyCode")))
  loc_16CFC98:   var_130 = var_1F4.Fields
  loc_16CFCA0:   var_134 = var_130.Item("PartyCode")
  loc_16CFCC1:   var_12C = IIf(var_1F6, vbNullString, CVar(var_134))
  loc_16CFCD8:   Set var_19C = Me.Txt
  loc_16CFCDE:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(4), var_1B0, CStr(var_12C))
  loc_16CFCE6:   var_1B0.Tag = var_1F6
  loc_16CFD59:   unk_5031AD.Execute CStr("Select SG.Name From SubGroup SG Where SG.SubCode='" & var_1F4.Fields.Item("PartyCode").Value & "'"), var_12C, -1
  loc_16CFD64:   Set var_8C = var_130
  loc_16CFD92:   If (var_8C.RecordCount > 0) Then
  loc_16CFDAC:     var_B8 = var_8C.Fields.Item("Name")
  loc_16CFDCB:     Set var_130 = Me.Txt
  loc_16CFDD1:     Call 0.Method_Proc_89_58_16D0FDC0 (CInt(4), var_134, Proc_6_38_E68A98(CVar(var_B8), var_130))
  loc_16CFDD9:     var_134.Text = 1
  loc_16CFDF0:   Else
  loc_16CFDFE:     Set var_A4 = Me.Txt
  loc_16CFE04:     Call 0.Method_Proc_89_58_16D0FDC0 (CInt(4), var_B8)
  loc_16CFE0C:     var_B8.Text = vbNullString
  loc_16CFE18:   End If
  loc_16CFE40:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("Remark")))
  loc_16CFE5A:   var_134 = var_1F4.Fields.Item("Remark")
  loc_16CFE92:   Set var_19C = Me.Txt
  loc_16CFE98:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&HB), var_1B0, CStr(IIf(var_1F6, vbNullString, CVar(var_134))))
  loc_16CFEA0:   var_1B0.Text = var_1F6
  loc_16CFEDA:   var_B8 = var_1F4.Fields.Item("DispatchMode")
  loc_16CFEEA:   var_208 = var_B8.Value 'Variant
  loc_16CFF00:   If (var_208 = "RW") Then
  loc_16CFF11:     Set var_A4 = Me.Txt
  loc_16CFF17:     Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16CFF1F:     var_B8.Text = "Railway"
  loc_16CFF2E:   Else
  loc_16CFF39:     If (var_208 = "VP") Then
  loc_16CFF4A:       Set var_A4 = Me.Txt
  loc_16CFF50:       Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16CFF58:       var_B8.Text = "VPP"
  loc_16CFF67:     Else
  loc_16CFF72:       If (var_208 = "AM") Then
  loc_16CFF83:         Set var_A4 = Me.Txt
  loc_16CFF89:         Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16CFF91:         var_B8.Text = "AIR Mail"
  loc_16CFFA0:       Else
  loc_16CFFAB:         If (var_208 = "TR") Then
  loc_16CFFBC:           Set var_A4 = Me.Txt
  loc_16CFFC2:           Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16CFFCA:           var_B8.Text = "Transport"
  loc_16CFFD9:         Else
  loc_16CFFE4:           If (var_208 = "PS") Then
  loc_16CFFF5:             Set var_A4 = Me.Txt
  loc_16CFFFB:             Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16D0003:             var_B8.Text = "Personally"
  loc_16D0012:           Else
  loc_16D001D:             If (var_208 = "PP") Then
  loc_16D002E:               Set var_A4 = Me.Txt
  loc_16D0034:               Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16D003C:               var_B8.Text = "Post Parcel"
  loc_16D004B:             Else
  loc_16D0056:               If (var_208 = "CO") Then
  loc_16D0067:                 Set var_A4 = Me.Txt
  loc_16D006D:                 Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16D0075:                 var_B8.Text = "Courier"
  loc_16D0084:               Else
  loc_16D008F:                 If (var_208 = "CA") Then
  loc_16D00A0:                   Set var_A4 = Me.Txt
  loc_16D00A6:                   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(5), var_B8)
  loc_16D00AE:                   var_B8.Text = "Cargo"
  loc_16D00BA:                 End If
  loc_16D00BA:               End If
  loc_16D00BA:             End If
  loc_16D00BA:           End If
  loc_16D00BA:         End If
  loc_16D00BA:       End If
  loc_16D00BA:     End If
  loc_16D00BA:   End If
  loc_16D00F0:   Set var_130 = Me.Txt
  loc_16D00F6:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(9), var_134)
  loc_16D00FE:   var_134.Text = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("DespatchThru")))
  loc_16D013A:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("PaymentTerms")))
  loc_16D018C:   Set var_19C = Me.Txt
  loc_16D0192:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&HA), var_1B0, CStr(IIf(var_1F6, vbNullString, CVar(var_1F4.Fields.Item("PaymentTerms")))))
  loc_16D019A:   var_1B0.Text = var_1F6
  loc_16D01E2:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("Prices")))
  loc_16D01FC:   var_134 = var_1F4.Fields.Item("Prices")
  loc_16D0234:   Set var_19C = Me.Txt
  loc_16D023A:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(8), var_1B0, CStr(IIf(var_1F6, vbNullString, CVar(var_134))))
  loc_16D0242:   var_1B0.Text = var_1F6
  loc_16D02B4:   Set var_130 = Me.Txt
  loc_16D02BA:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(7), var_134, CStr(Format(CVar(var_1F4.Fields.Item("PackCharge")), "0.00")))
  loc_16D02C2:   var_134.Text = 1
  loc_16D032E:   Set var_130 = Me.Txt
  loc_16D0334:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(6), var_134, CStr(Format(CVar(var_1F4.Fields.Item("ForwardCharges")), "0.00")), 1)
  loc_16D033C:   var_134.Text = 1
  loc_16D038C:   Set var_130 = Me.Txt
  loc_16D0392:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&HC), var_134)
  loc_16D039A:   var_134.Text = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("DeliverySch")), 1)
  loc_16D0400:   Set var_130 = Me.Txt
  loc_16D0406:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&HD), var_134, CStr(Format(CVar(var_1F4.Fields.Item("DiscPer")), "0.00")))
  loc_16D040E:   var_134.Text = 1
  loc_16D047A:   Set var_130 = Me.Txt
  loc_16D0480:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&HE), var_134, CStr(Format(CVar(var_1F4.Fields.Item("ExPer")), "0.00")), 1)
  loc_16D0488:   var_134.Text = 1
  loc_16D04F4:   Set var_130 = Me.Txt
  loc_16D04FA:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&HF), var_134, CStr(Format(CVar(var_1F4.Fields.Item("TaxPer")), "0.00")), 1)
  loc_16D0502:   var_134.Text = 1
  loc_16D0574:   Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&H10), var_134, CStr(Format(CVar(var_1F4.Fields.Item("STaxPer")), "0.00")), 1)
  loc_16D057C:   var_134.Text = 1
  loc_16D0598:   Set var_1F4 = Nothing 
  loc_16D05AB:   Me.FGrid.Redraw = False
  loc_16D05C6:   Me.FGrid.Rows = 1
  loc_16D05D0:   var_90 = 1
  loc_16D05EE:   var_E8 = CVar("Select P1.*,I.Name As ItemName " & "From POrder1 P1 Left Join Itemmast I on P1.ItemCode=I.Code And I.ItemType='Store' " & "Where P1.DocID='") 'String
  loc_16D0635:   unk_5031AD.Execute CStr(var_E8 & Me.Fields.Item("DocID").Value & "' Order by SNo"), var_158, -1
  loc_16D0640:   Set var_88 = Me.Txt
  loc_16D0663:   var_9C = vbNullString
  loc_16D067A:   If (var_88.RecordCount > 0) Then
  loc_16D067D:     ' Referenced from: 16D0EFE
  loc_16D068C:     If Not(var_88.EOF) Then
  loc_16D068F:       var_B4 = vbNullString
  loc_16D0699:       Set var_A4 = Me.FGrid
  loc_16D06AE:       Set var_20C = Me.FGrid
  loc_16D06B5:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D06BD:       var_11C = CVar(CLng(0)) 'Long
  loc_16D06ED:       var_E8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16D06F4:       LateIdCallSt
  loc_16D070E:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D0716:       var_11C = CVar(CLng(&HE)) 'Long
  loc_16D0746:       var_E8 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_16D074D:       LateIdCallSt
  loc_16D079C:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_90)), var_20C, var_E8, CVar(CLng(1)), CVar(CLng(var_90)))) 'String
  loc_16D07A3:       LateIdCallSt
  loc_16D07EE:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(var_90)), var_20C, var_E8, var_20C)) 'String
  loc_16D07F5:       LateIdCallSt
  loc_16D080B:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D0813:       var_11C = CVar(CLng(4)) 'Long
  loc_16D0843:       var_E8 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_16D084A:       LateIdCallSt
  loc_16D0880:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D089C:       var_E8 = "0.000"
  loc_16D08BC:       LateIdCallSt
  loc_16D08F8:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("ConvRatio")), var_20C, CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_E8))), 1, 1, CVar(CLng(3)))
  loc_16D0901:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D0939:       LateIdCallSt
  loc_16D098A:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("WtUnit")), CVar(CLng(7)), CVar(CLng(var_90)), var_20C, CVar(CStr(Format(var_E8, "0.00"))), 1, 1)) 'String
  loc_16D0991:       LateIdCallSt
  loc_16D09C9:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("WTQty")), var_20C, var_E8, CVar(CLng(5)))
  loc_16D09D2:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D09DA:       var_148 = CVar(CLng(6)) 'Long
  loc_16D0A03:       var_158 = CVar(CStr(Format(var_E8, "0.000"))) 'String
  loc_16D0A0A:       LateIdCallSt
  loc_16D0A42:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D0A5E:       var_E8 = "0.00"
  loc_16D0A7E:       LateIdCallSt
  loc_16D0ABA:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("TaxAmt")), var_20C, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_E8))), 1, 1, CVar(CLng(8)))
  loc_16D0AC3:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D0ACB:       var_148 = CVar(CLng(&HA)) 'Long
  loc_16D0AF4:       var_158 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_16D0AFB:       LateIdCallSt
  loc_16D0B33:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D0B3B:       var_148 = CVar(CLng(9)) 'Long
  loc_16D0B68:       var_12C = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16D0B6F:       LateIdCallSt
  loc_16D0BA5:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D0BAD:       var_148 = CVar(CLng(&HB)) 'Long
  loc_16D0BD1:       var_108 = Format(CVar(var_88.Fields.Item("Total")), "0.00")
  loc_16D0BDA:       var_12C = CVar(CStr(var_108)) 'String
  loc_16D0BE1:       LateIdCallSt
  loc_16D0BFB:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D0C03:       var_11C = CVar(CLng(&HC)) 'Long
  loc_16D0C33:       var_E8 = CVar(CStr(var_88.Fields.Item("IndentDocID").Value)) 'String
  loc_16D0C3A:       LateIdCallSt
  loc_16D0C54:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D0C5C:       var_11C = CVar(CLng(&HD)) 'Long
  loc_16D0C8C:       var_E8 = CVar(CStr(var_88.Fields.Item("IndentSno").Value)) 'String
  loc_16D0C93:       LateIdCallSt
  loc_16D0CB5:       var_11C = CVar(CLng(&H11)) 'Long
  loc_16D0CE2:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStru")), var_11C, CVar(CLng(var_90)), var_20C, var_E8, var_11C, CVar(CLng(var_90)))) 'String
  loc_16D0CE9:       LateIdCallSt
  loc_16D0D33:       var_10C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("IndentDocID")), "Select ClearYn from Indent1 where Docid='", var_188, -1, var_19C, var_20C, var_E8)
  loc_16D0D37:       var_138 = var_20C & "Select P1.*,I.Name As ItemName " & "From POrder1 P1 Left Join Itemmast I on P1.ItemCode=I.Code And I.ItemType='Store' "
  loc_16D0D3E:       var_12C = CVar(var_138 & "' and Sno=") 'String
  loc_16D0D44:       var_D8 = "IndentSno"
  loc_16D0D58:       var_134 = var_88.Fields.Item(var_D8)
  loc_16D0D67:       Proc_6_39_E7C810(var_108, CVar(var_134), var_12C, CVar(var_134))
  loc_16D0D7D:       unk_5031AD.Execute CStr(var_11C & var_108), var_D8, var_20C
  loc_16D0D88:       Set var_98 = var_19C
  loc_16D0DC0:       If (var_98.RecordCount > 0) Then
  loc_16D0DC7:         var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D0DFC:         var_E8 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ClearYN")), CVar(CLng(&HF)))) 'String
  loc_16D0E03:         LateIdCallSt
  loc_16D0E15:       End If
  loc_16D0E4E:       Set var_130 = Me.Txt
  loc_16D0E54:       Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&H11), var_134, CStr(var_88.Fields.Item("IndentDocID").Value), var_20C)
  loc_16D0E5C:       var_134.Tag = var_E8
  loc_16D0EBF:       Set var_130 = Me.Txt
  loc_16D0EC5:       Call 0.Method_Proc_89_58_16D0FDC0 (CInt(&H11), var_134, CStr(Trim(Right(CVar(var_88.Fields.Item("IndentDocID")), 8))))
  loc_16D0ECD:       var_134.Text = var_D8
  loc_16D0EE9:       Set var_20C = Nothing 
  loc_16D0EF3:       var_90 = (var_90 + 1)
  loc_16D0EF9:       var_88.MoveNext
  loc_16D0EFE:       GoTo loc_16D067D
  loc_16D0F01:     End If
  loc_16D0F14:     Me.FGrid.FixedRows = 1
  loc_16D0F1C:   End If
  loc_16D0F2A:   Me.FGrid.Redraw = True
  loc_16D0F38:   If (var_90 = 1) Then
  loc_16D0F4E:     Me.FGrid.Rows = 1
  loc_16D0F6B:     var_E8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16D0F73:     Set var_B8 = Me.FGrid
  loc_16D0FA2:     Me.FGrid.FixedRows = 1
  loc_16D0FAA:   End If
  loc_16D0FAD: Else
  loc_16D0FAD:   Call Proc_89_60_F52F00(FGrid.DispID_10000, var_E8)
  loc_16D0FB2: End If
  loc_16D0FB2: Call Proc_89_62_F6B9C8(var_90)
  loc_16D0FBC: Set var_88 = Nothing
  loc_16D0FC4: Set var_8C = Nothing
  loc_16D0FCC: Set var_98 = Nothing
  loc_16D0FD2: var_9C = vbNullString
  loc_16D0FD5: Exit Sub
  loc_16D0FD6: ' Referenced from: 16CF5F4
  loc_16D0FD6: Proc_6_60_E62BC4(var_12C)
  loc_16D0FDB: Exit Sub
End Sub

Public Sub Proc_89_59_112F25C
  'Data Table: 503190
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_5031AD As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_112EF05: Set var_9C = Me.TopCtrl1
  loc_112EF0B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_112EF13: var_B0 = CStr()
  loc_112EF24: If (var_B0 = "Add") Then
  loc_112EF54:   Set var_9C = Me.Txt
  loc_112EF5A:   Call 0.Method_Proc_89_59_112F25C0 (CInt(0), var_B4, var_B0, "Select Count(*) From POrder Where DocID='", var_AC, -1)
  loc_112EF7B:   unk_5031AD.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_112EF8B:    = var_D4.Item()
  loc_112EF93:    = var_E8.Value
  loc_112EFC0:   If (var_B4.Text.Fields > 0) Then
  loc_112EFC9:     Call 0.Method_arg_50 (var_B0)
  loc_112EFEA:     MsgBox("Duplicate Order No.", &H40, CVar(var_B0), var_118, var_128)
  loc_112F000:     Call Proc_89_64_1111E34(MemVar_1F92044)
  loc_112F013:     Set var_9C = Me.Txt
  loc_112F019:     Call 0.Method_Proc_89_59_112F25C0 (CInt(0), var_B4)
  loc_112F021:     var_B4.Text = var_B0
  loc_112F035:     Proc_89_59_112F25C = 0
  loc_112F03B:   End If
  loc_112F03B: End If
  loc_112F060: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_112F06A:   var_CC = CVar(CLng(var_88)) 'Long
  loc_112F072:   var_108 = CVar(CLng(1)) 'Long
  loc_112F092:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_112F0AE:   If CBool(var_118 <> vbNullString) Then
  loc_112F0B5:     var_CC = CVar(CLng(var_88)) 'Long
  loc_112F0BD:     var_108 = CVar(CLng(3)) 'Long
  loc_112F0ED:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_112F115:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_112F13B:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_112F147:       Set var_9C = Me.FGrid
  loc_112F16B:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_112F178:       Proc_89_59_112F25C = 0
  loc_112F17E:     End If
  loc_112F182:     var_CC = CVar(CLng(var_88)) 'Long
  loc_112F18A:     var_108 = CVar(CLng(8)) 'Long
  loc_112F1BA:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_112F1E2:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_112F208:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_112F214:       Set var_9C = Me.FGrid
  loc_112F238:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_112F245:       Proc_89_59_112F25C = 0
  loc_112F24B:     End If
  loc_112F24B:   End If
  loc_112F24E: Next var_12C 'Integer
  loc_112F253: Proc_89_59_112F25C = 
  loc_112F259: ArrayRebase1Var
End Sub

Public Sub Proc_89_60_F52F00
  'Data Table: 503190
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F52DEA: Set var_8C = Me.Txt
  loc_F52DF0: Call 0.Method_Proc_89_60_F52F00C (var_8E, var_86)
  loc_F52E00: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F52E16:   Set var_8C = Me.Txt
  loc_F52E1C:   Call 0.Method_Proc_89_60_F52F000 (CInt(var_86), var_98)
  loc_F52E24:   var_98.Text = vbNullString
  loc_F52E40:   Set var_8C = Me.Txt
  loc_F52E46:   Call 0.Method_Proc_89_60_F52F000 (CInt(var_86), var_98)
  loc_F52E4E:   var_98.Tag = vbNullString
  loc_F52E5D: Next var_92 'Byte
  loc_F52E70: Me.LblCurStockStr.Caption = vbNullString
  loc_F52E85: Me.LblVPrefix.Caption = vbNullString
  loc_F52EA0: Me.FGrid.Rows = 1
  loc_F52EBD: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F52EC5: Set var_98 = Me.FGrid
  loc_F52EF4: Me.FGrid.FixedRows = 1
  loc_F52EFC: Exit Sub
End Sub

Public Sub Proc_89_61_EFDD4C(arg_C) 'EFDD4C
  'Data Table: 503190
  Dim var_98 As TextBox
  Dim var_D8 As Variant
  loc_EFDC76: Set var_8C = Me.Txt
  loc_EFDC7C: Call 0.Method_Proc_89_61_EFDD4CC (var_8E, var_86)
  loc_EFDC8C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EFDCA2:   Set var_8C = Me.Txt
  loc_EFDCA8:   Call 0.Method_Proc_89_61_EFDD4C0 (CInt(var_86), var_98)
  loc_EFDCB0:   var_98.Enabled = arg_C
  loc_EFDCBF: Next var_92 'Byte
  loc_EFDCD2: Set var_8C = Me.Txt
  loc_EFDCD8: Call 0.Method_Proc_89_61_EFDD4C0 (CInt(0), var_98)
  loc_EFDCE0: var_98.Enabled = False
  loc_EFDCF9: Set var_8C = Me.Txt
  loc_EFDCFF: Call 0.Method_Proc_89_61_EFDD4C0 (CInt(2), var_98)
  loc_EFDD07: var_98.Enabled = False
  loc_EFDD1E: If (global_168 = "No") Then
  loc_EFDD2E:   Set var_8C = Me.Txt
  loc_EFDD34:   Call 0.Method_Proc_89_61_EFDD4C0 (CInt(3), var_98)
  loc_EFDD3C:   var_98.Enabled = False
  loc_EFDD48: End If
  loc_EFDD48: Exit Sub
  loc_EFDD49: var_D8 = CVar() 'String
End Sub

Public Sub Proc_89_62_F6B9C8
  'Data Table: 503190
  loc_F6B89F: If (Me.FrmList.Visible = &HFF) Then
  loc_F6B8AE:   Me.FrmList.Visible = False
  loc_F6B8B6: End If
  loc_F6B8D2: If (CBool(Me.DGOrdType.Visible) = &HFF) Then
  loc_F6B8E4:   Me.DGOrdType.Visible = False
  loc_F6B8EC: End If
  loc_F6B908: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F6B91A:   Me.DGParty.Visible = False
  loc_F6B922: End If
  loc_F6B93E: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6B950:   Me.DGItem.Visible = False
  loc_F6B958: End If
  loc_F6B974: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_F6B986:   Me.DGIndent.Visible = False
  loc_F6B98E: End If
  loc_F6B9AA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6B9BC:   Me.FGPoint.Visible = False
  loc_F6B9C4: End If
  loc_F6B9C4: Exit Sub
End Sub

Public Sub Proc_89_63_F90404
  'Data Table: 503190
  loc_F902AC: Call Proc_89_62_F6B9C8()
  loc_F902BC: Set var_88 = Me.Txt
  loc_F902C2: Call 0.Method_Proc_89_63_F904040 (CInt(1))
  loc_F902EB: If (Proc_6_27_EA565C(var_8C, "Order Type") = 0) Then
  loc_F902EE:   Exit Sub
  loc_F902EF: End If
  loc_F902FA: Set var_88 = Me.Txt
  loc_F90300: Call 0.Method_Proc_89_63_F904040 (CInt(2), var_8C)
  loc_F90329: If (Proc_6_27_EA565C(var_8C, "Order No") = 0) Then
  loc_F9032C:   Exit Sub
  loc_F9032D: End If
  loc_F90338: Set var_88 = Me.Txt
  loc_F9033E: Call 0.Method_Proc_89_63_F904040 (CInt(3), var_8C)
  loc_F90367: If (Proc_6_27_EA565C(var_8C, "Order Date") = 0) Then
  loc_F9036A:   Exit Sub
  loc_F9036B: End If
  loc_F90376: Set var_88 = Me.Txt
  loc_F9037C: Call 0.Method_Proc_89_63_F904040 (CInt(4), var_8C)
  loc_F903A5: If (Proc_6_27_EA565C(var_8C, "Party Name") = 0) Then
  loc_F903A8:   Exit Sub
  loc_F903A9: End If
  loc_F903E0: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F903E3:   Call TopCtrl1_UnknownEvent_16()
  loc_F903EB: Else
  loc_F903F1:   Call 0.Method_arg_1E8 (var_88)
  loc_F903F9:   Call var_88.SetFocus
  loc_F90402: End If
  loc_F90402: Exit Sub
End Sub

Public Sub Proc_89_64_1111E34
  'Data Table: 503190
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_1111B30: Set var_94 = Me.Txt
  loc_1111B36: Call 0.Method_Proc_89_64_1111E340 (CInt(1), var_98)
  loc_1111B46: var_90 = var_98.Tag
  loc_1111B56: global_108 = var_90
  loc_1111B6E: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1111B9F: Set var_94 = Me.Txt
  loc_1111BA5: Call 0.Method_Proc_89_64_1111E340 (CInt(3), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1111BB4: Proc_6_7_F25D88(var_CC, CVar(var_98), var_130)
  loc_1111BBC: var_EC = -1 & var_CC 
  loc_1111BD0: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1111BDB: Set var_8C = var_134
  loc_1111C17: If (var_8C.RecordCount > 0) Then
  loc_1111C56:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1111C59:     GoTo loc_1111CE7
  loc_1111C5C:   End If
  loc_1111C8D:   global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1111CB8:   var_98 = var_8C.Fields.Item("start_srl_no")
  loc_1111CCD:   var_CC = (var_98.Value + 1)
  loc_1111CD6:   global_116 = CLng(var_CC)
  loc_1111CE7:   ' Referenced from: 1111C59
  loc_1111CE7: End If
  loc_1111D12: var_BC = Space((5 - Len(var_90)))
  loc_1111D1A: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_98.Value)
  loc_1111D27: var_EC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_112))
  loc_1111D3B: var_10C = Space((5 - Len(global_112)))
  loc_1111D43: var_130 = (var_EC + var_EC & " Order By VP.Date_From DESC")
  loc_1111D5C: var_14C = Space((8 - Len(CStr(global_116))))
  loc_1111D64: var_15C = (var_130 + var_14C)
  loc_1111D73: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_1111D7E: global_104 = CStr(var_17C)
  loc_1111DB4: Me.LblVPrefix.Caption = global_112
  loc_1111DCD: Set var_94 = Me.Txt
  loc_1111DD3: Call 0.Method_Proc_89_64_1111E340 (CInt(0), var_98)
  loc_1111DDB: var_98.Text = global_104
  loc_1111DFD: Set var_94 = Me.Txt
  loc_1111E03: Call 0.Method_Proc_89_64_1111E340 (CInt(2), var_98)
  loc_1111E0B: var_98.Text = CStr(global_116)
  loc_1111E20: var_88 = global_104
  loc_1111E28: Set var_8C = Nothing
  loc_1111E2B: Proc_89_64_1111E34 = global_116
End Sub

Public Sub Proc_89_65_171ECEC(arg_C, arg_10, arg_14) '171ECEC
  'Data Table: 503190
  Dim var_D8 As String
  Dim unk_5031AD As Connection15
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_D2 As Integer
  Dim var_100 As Variant
  Dim var_FC As Variant
  Dim var_130 As Variant
  Dim var_11C As Variant
  Dim var_C0 As Recordset15
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_D0 As Double
  Dim var_1F4 As Double
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_160 As Variant
  Dim var_204 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_1E8 As Double
  Dim var_9C As Double
  Dim var_260 As Double
  Dim var_1B0 As Variant
  loc_171D110: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_171D120: unk_5031AD.Execute var_D8 & "'", var_FC, -1
  loc_171D12B: Set var_8C = var_100
  loc_171D13E: var_94 = arg_14
  loc_171D143: var_86 = 1
  loc_171D149: var_A8 = var_94
  loc_171D14F: var_B0 = var_94
  loc_171D155: var_B8 = CDbl(0)
  loc_171D16C: If (var_8C.RecordCount > 0) Then
  loc_171D16F:   ' Referenced from: 171ECCD
  loc_171D17E:   If Not(var_8C.EOF) Then
  loc_171D185:     Set var_10C = Me.FGCat
  loc_171D188:     var_EC = vbNullString
  loc_171D1AD:     If (var_8C.RecordCount > 0) Then
  loc_171D1B6:       var_D2 = (var_D2 + 1)
  loc_171D1BC:       var_EC = "Nature"
  loc_171D1EF:       var_150 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_171D208:       If (var_150 = "On Base Amt") Then
  loc_171D233:         var_130 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_171D255:         If (Trim(var_130) = "Room Rate") Then
  loc_171D263:           If (global_172 = "Room Service") Then
  loc_171D28C:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_171D2BA:             Proc_6_39_E7C810(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_171D2EC:             Proc_6_39_E7C810(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_171D31C:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_171D35B:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171D399:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171D3AC:               Else
  loc_171D3DF:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_171D408:                 Proc_6_142_14A55B0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_171D40D:                 var_D0 = var_1F4
  loc_171D421:               End If
  loc_171D428:               If (var_D0 > CDbl(0)) Then
  loc_171D444:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D44C:                 var_18C = CVar(CLng(0)) 'Long
  loc_171D456:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171D45D:                 LateIdCallSt
  loc_171D488:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D490:                 var_18C = CVar(CLng(1)) 'Long
  loc_171D49A:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171D4A1:                 LateIdCallSt
  loc_171D4CC:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D4D4:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171D504:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171D50B:                 LateIdCallSt
  loc_171D53E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D546:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171D576:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171D57D:                 LateIdCallSt
  loc_171D5B0:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D5B8:                 var_18C = CVar(CLng(4)) 'Long
  loc_171D5C2:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171D5C9:                 LateIdCallSt
  loc_171D5F4:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D5FC:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171D62C:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171D633:                 LateIdCallSt
  loc_171D68D:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D695:                 var_234 = CVar(CLng(6)) 'Long
  loc_171D69A:                 var_178 = 2
  loc_171D6D9:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171D6E0:                 LateIdCallSt
  loc_171D707:               Else
  loc_171D70D:                 var_86 = (var_86 - 1)
  loc_171D723:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_171D739:               End If
  loc_171D752:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D75A:               var_18C = CVar(CLng(6)) 'Long
  loc_171D77F:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171D7A8:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D7B0:               var_18C = CVar(CLng(6)) 'Long
  loc_171D7CB:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_171D7D5:               var_94 = (var_94 + var_1E8)
  loc_171D7EC:               var_B0 = (var_B0 + var_D0)
  loc_171D7F2:               var_B8 = var_D0
  loc_171D7FC:               var_B0 = (var_B0 + var_D0)
  loc_171D802:               var_B8 = var_D0
  loc_171D805:             End If
  loc_171D805:           End If
  loc_171D808:         Else
  loc_171D844:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171D882:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171D895:           Else
  loc_171D8B7:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_171D8F1:             Proc_6_142_14A55B0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_171D8F6:             var_260 = var_B8
  loc_171D938:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_171D956:           End If
  loc_171D97C:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_171D9B6:           Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_171D9E0:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_171D9EA:             If (var_D0 > CDbl(0)) Then
  loc_171DA06:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DA0E:               var_18C = CVar(CLng(0)) 'Long
  loc_171DA18:               var_130 = CVar(CStr(var_86)) 'String
  loc_171DA1F:               LateIdCallSt
  loc_171DA4A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DA52:               var_18C = CVar(CLng(1)) 'Long
  loc_171DA5C:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171DA63:               LateIdCallSt
  loc_171DA8E:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DA96:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171DAC6:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171DACD:               LateIdCallSt
  loc_171DB00:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DB08:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171DB38:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171DB3F:               LateIdCallSt
  loc_171DB72:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DB7A:               var_18C = CVar(CLng(4)) 'Long
  loc_171DB84:               var_130 = CVar(CStr(var_A8)) 'String
  loc_171DB8B:               LateIdCallSt
  loc_171DBB6:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DBBE:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171DBEE:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171DBF5:               LateIdCallSt
  loc_171DC4F:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DC57:               var_234 = CVar(CLng(6)) 'Long
  loc_171DC9B:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171DCA2:               LateIdCallSt
  loc_171DCC6:             End If
  loc_171DCDF:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DCE7:             var_18C = CVar(CLng(6)) 'Long
  loc_171DD0C:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171DD35:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DD3D:             var_18C = CVar(CLng(6)) 'Long
  loc_171DD45:             var_130 = var_10C.TextMatrix)
  loc_171DD58:             var_1E8 = Val(CStr(var_130))
  loc_171DD62:             var_94 = (var_94 + var_1E8)
  loc_171DD79:             var_B0 = (var_B0 + var_D0)
  loc_171DD7F:             var_B8 = var_D0
  loc_171DD82:           End If
  loc_171DD82:         End If
  loc_171DD85:       Else
  loc_171DD90:         If (var_150 = "On Running Total") Then
  loc_171DDCF:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171DE0D:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_171DE20:           Else
  loc_171DE7C:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171DE81:             var_D0 = var_94
  loc_171DE95:           End If
  loc_171DEBB:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_171DED5:           If (var_130 > 0) Then
  loc_171DEDF:             If (var_D0 > CDbl(0)) Then
  loc_171DEFB:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DF03:               var_18C = CVar(CLng(0)) 'Long
  loc_171DF0D:               var_130 = CVar(CStr(var_86)) 'String
  loc_171DF14:               LateIdCallSt
  loc_171DF3F:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DF47:               var_18C = CVar(CLng(1)) 'Long
  loc_171DF51:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171DF58:               LateIdCallSt
  loc_171DF83:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DF8B:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171DFBB:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171DFC2:               LateIdCallSt
  loc_171DFF5:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DFFD:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171E02D:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171E034:               LateIdCallSt
  loc_171E067:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E06F:               var_18C = CVar(CLng(4)) 'Long
  loc_171E079:               var_130 = CVar(CStr(var_B0)) 'String
  loc_171E080:               LateIdCallSt
  loc_171E0AB:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E0B3:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171E0E3:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171E0EA:               LateIdCallSt
  loc_171E144:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E14C:               var_234 = CVar(CLng(6)) 'Long
  loc_171E190:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171E197:               LateIdCallSt
  loc_171E1BB:             End If
  loc_171E1D4:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E1DC:             var_18C = CVar(CLng(6)) 'Long
  loc_171E201:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171E22A:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E232:             var_18C = CVar(CLng(6)) 'Long
  loc_171E257:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171E26E:             var_B0 = (var_B0 + var_D0)
  loc_171E274:             var_B8 = var_D0
  loc_171E277:           End If
  loc_171E27A:         Else
  loc_171E285:           If (var_150 = "On Prev. Tax Amt") Then
  loc_171E2C4:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171E302:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_171E315:             Else
  loc_171E371:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171E376:               var_D0 = var_94
  loc_171E38A:             End If
  loc_171E391:             If (var_D0 > CDbl(0)) Then
  loc_171E3AD:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E3B5:               var_18C = CVar(CLng(0)) 'Long
  loc_171E3BF:               var_130 = CVar(CStr(var_86)) 'String
  loc_171E3C6:               LateIdCallSt
  loc_171E3F1:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E3F9:               var_18C = CVar(CLng(1)) 'Long
  loc_171E403:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171E40A:               LateIdCallSt
  loc_171E435:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E43D:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171E46D:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171E474:               LateIdCallSt
  loc_171E4A7:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E4AF:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171E4DF:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171E4E6:               LateIdCallSt
  loc_171E519:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E521:               var_18C = CVar(CLng(4)) 'Long
  loc_171E52B:               var_130 = CVar(CStr(var_B8)) 'String
  loc_171E532:               LateIdCallSt
  loc_171E55D:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E565:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171E595:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171E59C:               LateIdCallSt
  loc_171E5F6:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E5FE:               var_234 = CVar(CLng(6)) 'Long
  loc_171E603:               var_178 = 2
  loc_171E642:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171E649:               LateIdCallSt
  loc_171E66D:             End If
  loc_171E686:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E68E:             var_18C = CVar(CLng(6)) 'Long
  loc_171E6B3:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171E6DC:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E6E4:             var_18C = CVar(CLng(6)) 'Long
  loc_171E6EC:             var_130 = var_10C.TextMatrix)
  loc_171E6FF:             var_1E8 = Val(CStr(var_130))
  loc_171E709:             var_94 = (var_94 + var_1E8)
  loc_171E720:             var_B0 = (var_B0 + var_D0)
  loc_171E726:             var_B8 = var_D0
  loc_171E72C:           Else
  loc_171E768:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171E7A6:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171E7B9:             Else
  loc_171E815:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171E81A:               var_D0 = var_94
  loc_171E82E:             End If
  loc_171E831:             var_EC = "Limit"
  loc_171E854:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_171E88E:             Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_171E8B8:             If CBool(var_9C And (var_178 > 0)) Then
  loc_171E8C2:               If (var_D0 > CDbl(0)) Then
  loc_171E8DE:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E8E6:                 var_18C = CVar(CLng(0)) 'Long
  loc_171E8F0:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171E8F7:                 LateIdCallSt
  loc_171E922:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E92A:                 var_18C = CVar(CLng(1)) 'Long
  loc_171E934:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171E93B:                 LateIdCallSt
  loc_171E966:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E96E:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171E99E:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171E9A5:                 LateIdCallSt
  loc_171E9D8:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E9E0:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171EA10:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171EA17:                 LateIdCallSt
  loc_171EA4A:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EA52:                 var_18C = CVar(CLng(4)) 'Long
  loc_171EA5C:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171EA63:                 LateIdCallSt
  loc_171EA8E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EA96:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171EAC6:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171EACD:                 LateIdCallSt
  loc_171EB27:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EB2F:                 var_234 = CVar(CLng(6)) 'Long
  loc_171EB73:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171EB7A:                 LateIdCallSt
  loc_171EB9E:               End If
  loc_171EBB7:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EBBF:               var_18C = CVar(CLng(6)) 'Long
  loc_171EBE4:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171EC0D:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EC15:               var_18C = CVar(CLng(6)) 'Long
  loc_171EC3A:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171EC51:               var_B0 = (var_B0 + var_D0)
  loc_171EC57:               var_B8 = var_D0
  loc_171EC5A:             End If
  loc_171EC5A:           End If
  loc_171EC5A:         End If
  loc_171EC5A:       End If
  loc_171EC5A:     End If
  loc_171EC60:     var_86 = (var_86 + 1)
  loc_171EC65:     Set var_10C = Nothing 
  loc_171EC6D:     var_18C = CVar(CLng(arg_10)) 'Long
  loc_171EC75:     var_204 = CVar(CLng(&HA)) 'Long
  loc_171ECA3:     var_140 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_171ECAB:     Set var_100 = Me.FGrid
  loc_171ECB1:     LateIdCallSt
  loc_171ECC8:     var_8C.MoveNext
  loc_171ECCD:     GoTo loc_171D16F
  loc_171ECD0:   End If
  loc_171ECD5:   Set var_8C = Nothing
  loc_171ECDD:   Set var_C4 = Nothing
  loc_171ECE5:   Set var_C0 = Nothing
  loc_171ECE8: End If
  loc_171ECE8: Exit Sub
End Sub
