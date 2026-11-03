VERSION 5.00
Begin VB.Form FaVtype
  Caption = "Define Voucher Type"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaVtype.frx":0
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11400
  ClientHeight = 7620
  BeginProperty Font
    Name = "MS Sans Serif"
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
    Width = 11400
    Height = 450
    TabIndex = 57
  End
  Begin DataGrid DGCategory
    Left = 2490
    Top = 6780
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGNCat
    Left = 2490
    Top = 7380
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin DataGrid DGGroup
    Left = 6825
    Top = 6810
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 40
  End
  Begin DataGrid DGDR
    Left = 11040
    Top = 5595
    Width = 5640
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 52
  End
  Begin DataGrid DGCR
    Left = 11235
    Top = 4560
    Width = 5640
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 53
  End
  Begin DataGrid DGVType
    Left = 2505
    Top = 7050
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 5295
    Width = 3360
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 4980
    Width = 3360
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    ForeColor = &HC00000&
    Left = 2250
    Top = 5610
    Width = 480
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin SSTab SSTab1
    Left = 6735
    Top = 1200
    Width = 9945
    Height = 2400
    TabIndex = 16
    Begin Frame Frame3
      Left = 195
      Top = 390
      Width = 9570
      Height = 1950
      TabIndex = 37
      Begin TextBox TxtGrid
        Index = 0
        BackColor = &HC0FFFF&
        ForeColor = &H80000012&
        Left = 1725
        Top = 465
        Width = 1485
        Height = 240
        Visible = 0   'False
        TabIndex = 39
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin MSHFlexGrid FGrid
        Left = 15
        Top = 150
        Width = 9510
        Height = 1770
        TabIndex = 15
      End
    End
    Begin Frame Frame2
      Left = -74835
      Top = 330
      Width = 9570
      Height = 2010
      TabIndex = 36
      Begin TextBox TxtGrid
        Index = 1
        BackColor = &HC0FFFF&
        ForeColor = &H80000012&
        Left = 1695
        Top = 750
        Width = 1485
        Height = 240
        Visible = 0   'False
        TabIndex = 41
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin MSHFlexGrid FGrid1
        Left = 15
        Top = 150
        Width = 9495
        Height = 1815
        TabIndex = 38
      End
    End
    Begin Frame Frame1
      Left = -74790
      Top = 375
      Width = 9555
      Height = 1920
      TabIndex = 34
      Begin MSHFlexGrid FGrid2
        Left = 15
        Top = 120
        Width = 9510
        Height = 1800
        TabIndex = 35
      End
    End
  End
  Begin Frame FrmList
    Left = 270
    Top = 6570
    Width = 2010
    Height = 1725
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 45
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 33
    End
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 4665
    Width = 480
    Height = 285
    Text = "No"
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 1200
    Width = 990
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    ForeColor = &HC00000&
    Left = 2250
    Top = 3720
    Width = 5640
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 150
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 4350
    Width = 480
    Height = 285
    Text = "No"
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    ForeColor = &HC00000&
    Left = 2250
    Top = 4035
    Width = 480
    Height = 285
    Text = "No"
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 2460
    Width = 1005
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 3405
    Width = 480
    Height = 285
    Text = "No"
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 1515
    Width = 3360
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 2145
    Width = 2025
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 1830
    Width = 2025
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 2775
    Width = 1005
    Height = 285
    Text = "Automatic"
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 9
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 2250
    Top = 3090
    Width = 480
    Height = 285
    Text = "Yes"
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7170
    Top = 5580
    Width = 3660
    Height = 285
    TabIndex = 56
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
    Left = 7125
    Top = 4980
    Width = 3750
    Height = 255
    TabIndex = 55
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 54
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
    Caption = "First Dr/Cr"
    Index = 20
    ForeColor = &HC00000&
    Left = 1260
    Top = 5610
    Width = 945
    Height = 240
    TabIndex = 51
    Alignment = 1 'Right Justify
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
    Caption = "(D)r / (C)r"
    Index = 19
    ForeColor = &H80&
    Left = 2775
    Top = 5610
    Width = 840
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
  Begin Label Lbl
    Caption = "Default Debit A/C"
    Index = 18
    ForeColor = &HC00000&
    Left = 585
    Top = 5295
    Width = 1620
    Height = 240
    TabIndex = 49
    Alignment = 1 'Right Justify
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
    Caption = "Default Credit A/C"
    Index = 17
    ForeColor = &HC00000&
    Left = 510
    Top = 4980
    Width = 1695
    Height = 240
    TabIndex = 48
    Alignment = 1 'Right Justify
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
    Caption = "(Y)es / (N)o"
    Index = 16
    ForeColor = &H80&
    Left = 2760
    Top = 4665
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 15
    ForeColor = &H80&
    Left = 2760
    Top = 4350
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 14
    ForeColor = &H80&
    Left = 2760
    Top = 4035
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 13
    ForeColor = &H80&
    Left = 2760
    Top = 3405
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 12
    ForeColor = &H80&
    Left = 2775
    Top = 3090
    Width = 1005
    Height = 240
    TabIndex = 43
    Alignment = 1 'Right Justify
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
    Caption = "(M)anual / (A)utomatic / (S)emiauto"
    Index = 8
    ForeColor = &H80&
    Left = 3270
    Top = 2775
    Width = 3300
    Height = 240
    TabIndex = 42
    Alignment = 1 'Right Justify
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
    Caption = "Clg Date"
    Index = 11
    ForeColor = &HC00000&
    Left = 1380
    Top = 4665
    Width = 810
    Height = 240
    TabIndex = 31
    Alignment = 1 'Right Justify
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
    Caption = "Type"
    Index = 2
    ForeColor = &HC00000&
    Left = 1725
    Top = 1200
    Width = 465
    Height = 240
    TabIndex = 30
    Alignment = 1 'Right Justify
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
    Caption = "Nature"
    Index = 1
    ForeColor = &HC00000&
    Left = 1560
    Top = 2460
    Width = 630
    Height = 240
    TabIndex = 29
    Alignment = 1 'Right Justify
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
    Caption = "Category"
    Index = 0
    ForeColor = &HC00000&
    Left = 1335
    Top = 2145
    Width = 855
    Height = 240
    TabIndex = 28
    Alignment = 1 'Right Justify
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
    Caption = "Description"
    Index = 3
    ForeColor = &HC00000&
    Left = 1125
    Top = 1515
    Width = 1065
    Height = 240
    TabIndex = 27
    Alignment = 1 'Right Justify
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
    Caption = "Numbering Method"
    Index = 5
    ForeColor = &HC00000&
    Left = 375
    Top = 2775
    Width = 1815
    Height = 240
    TabIndex = 26
    Alignment = 1 'Right Justify
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
    Caption = "Chq Date"
    Index = 10
    ForeColor = &HC00000&
    Left = 1320
    Top = 4350
    Width = 870
    Height = 240
    TabIndex = 25
    Alignment = 1 'Right Justify
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
    Caption = "Short Name"
    Index = 4
    ForeColor = &HC00000&
    Left = 1065
    Top = 1830
    Width = 1125
    Height = 240
    TabIndex = 24
    Alignment = 1 'Right Justify
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
    Caption = "Seperate Narration"
    Index = 6
    ForeColor = &HC00000&
    Left = 375
    Top = 3090
    Width = 1815
    Height = 240
    TabIndex = 23
    Alignment = 1 'Right Justify
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
    Caption = "Common Narration"
    Index = 7
    ForeColor = &HC00000&
    Left = 390
    Top = 3405
    Width = 1800
    Height = 240
    TabIndex = 22
    Alignment = 1 'Right Justify
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
    Caption = "Chq No."
    Index = 9
    ForeColor = &HC00000&
    Left = 1440
    Top = 4035
    Width = 750
    Height = 240
    TabIndex = 21
    Alignment = 1 'Right Justify
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
  Begin Label Label3
    Caption = "Address1"
    BackColor = &HC0FFFF&
    ForeColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 855
    Height = 255
    TabIndex = 18
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "FaVtype"

Private global_98 As Integer
Private global_100 As Integer

Private Sub DGGroup_UnknownEvent_9 '1015EC0
  'Data Table: 50BA98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_1015CB0: On Error Goto loc_1015E97
  loc_1015CC2: Me.DGGroup.Visible = False
  loc_1015CE1: If (Me.RecordCount > 0) Then
  loc_1015D12:   var_CC = CStr(Me.Fields.Item("Name").Value)
  loc_1015D1E:   Set var_B4 = Me.TxtGrid
  loc_1015D24:   Call 0.Method_DGGroup_UnknownEvent_90 (1, var_B8)
  loc_1015D2C:   var_B8.Text = var_CC
  loc_1015D55:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1015D5D:   var_EC = CVar(CLng(4)) 'Long
  loc_1015D90:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1015D98:   Set var_B8 = Me.FGrid1
  loc_1015D9E:   LateIdCallSt
  loc_1015DCD:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1015DD5:   var_EC = CVar(CLng(1)) 'Long
  loc_1015DF7:   var_B0 = Me.Fields.Item("Name")
  loc_1015E08:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_1015E10:   Set var_B8 = Me.FGrid1
  loc_1015E16:   LateIdCallSt
  loc_1015E32: End If
  loc_1015E3F: Call Proc_207_54_12DDF44(0, 0, var_132, var_B8, var_11C, var_EC)
  loc_1015E50: Set var_A8 = Me.TxtGrid
  loc_1015E56: Call 0.Method_DGGroup_UnknownEvent_90 (1, var_B0, var_12E, var_A4)
  loc_1015E5E: var_B8 = var_B0.Visible
  loc_1015E70: If (var_12E = &HFF) Then
  loc_1015E7C:   Set var_A8 = Me.TxtGrid
  loc_1015E82:   Call 0.Method_DGGroup_UnknownEvent_90 (1, var_B0, var_11C)
  loc_1015E8A:   var_B0.SetFocus
  loc_1015E96: End If
  loc_1015E96: Exit Sub
  loc_1015E97: ' Referenced from: 1015CB0
  loc_1015E9D: Call 0.Method_arg_50 (var_CC, var_EC)
  loc_1015EB2: Proc_183_57_104AA84(var_CC, "DGGroup_Click")
  loc_1015EBE: Exit Sub
End Sub

Private Sub Form_Load() '12F5364
  'Data Table: 50BA98
  Dim var_BC As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_D8 As String
  loc_12F4C64: On Error Goto loc_12F533A
  loc_12F4C71: Set var_A8 = Me.TopCtrl1
  loc_12F4C77: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_12F4C85: Call 0.Method_arg_50 (var_AC)
  loc_12F4C95: Set var_A8 = Me.TopCtrl1
  loc_12F4C9B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_12F4CB5: Me.LblUser.Left = CDbl(13500)
  loc_12F4CCC: Me.LblUser.Top = CDbl(7800)
  loc_12F4CE3: Me.LblLDt.Top = CDbl(8160)
  loc_12F4CFA: Me.LblLDt.Left = CDbl(13500)
  loc_12F4D09: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12F4D21: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12F4D3C: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12F4D57: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12F4D72: Me.SSTab1.BackColor = CVar(CLng(MemVar_1F921B0))
  loc_12F4D86: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_12F4D97: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_12F4DA8: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_12F4DB9: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_12F4DCA: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_12F4DDB: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_12F4DEC: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_12F4DFD: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_12F4E0E: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_12F4E1F: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_12F4E39: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_12F4E47: Set var_A8 = MemVar_1F92044
  loc_12F4E56: Call 0.Method_Form_Load8 (var_A8)
  loc_12F4E6C: Me.var_A8.Clone
  loc_12F4E86: Call 0.Method_arg_50 (var_A8, -1)
  loc_12F4E9C: Set global_56 = New 
  loc_12F4EAE: Me.Recordset15.CursorLocation = 3
  loc_12F4ED8: var_BC = CVar("Select DISTINCT Category As Code,Category as Name From VoucherCat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Category") 'String
  loc_12F4EE2: Me.Open var_BC, CVar(MemVar_1F921DC), 2
  loc_12F4EF6: CVarUnk
  loc_12F4EFB: VerifyVarObj
  loc_12F4F01: Set var_A8 = Me.DGCategory
  loc_12F4F07: LateIdStAd
  loc_12F4F1F: Set global_60 = New 
  loc_12F4F31: Me.DGCategory.CursorLocation = 3
  loc_12F4F5B: var_BC = CVar("Select Category As Code,V_Type as Name,Category From Voucher_Type WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') order by V_type") 'String
  loc_12F4F65: Me.Open var_BC, CVar(MemVar_1F921DC), 2
  loc_12F4F79: CVarUnk
  loc_12F4F7E: VerifyVarObj
  loc_12F4F84: Set var_A8 = Me.DGVType
  loc_12F4F8A: LateIdStAd
  loc_12F4FA2: Set global_64 = New 
  loc_12F4FB4: Me.DGVType.CursorLocation = 3
  loc_12F4FDE: var_BC = CVar("Select Category as Code,NCat as Name,Category From VoucherCat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Category") 'String
  loc_12F4FE8: Me.Open var_BC, CVar(MemVar_1F921DC), 2
  loc_12F4FFC: CVarUnk
  loc_12F5001: VerifyVarObj
  loc_12F5007: Set var_A8 = Me.DGNCat
  loc_12F500D: LateIdStAd
  loc_12F5025: Set global_72 = New 
  loc_12F5037: Me.DGNCat.CursorLocation = 3
  loc_12F506B: Me.Open CVar("Select ShowGroup,DonotShowGroup From FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'"), CVar(MemVar_1F921DC), 2
  loc_12F5080: Set global_84 = New 
  loc_12F5092: Me.Recordset15.CursorLocation = 3
  loc_12F50BC: var_BC = CVar("Select SubCode As Code,Name From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_12F50C6: Me.Open var_BC, CVar(MemVar_1F921DC), 2
  loc_12F50DA: CVarUnk
  loc_12F50DF: VerifyVarObj
  loc_12F50E5: Set var_A8 = Me.DGCR
  loc_12F50EB: LateIdStAd
  loc_12F5103: Set global_80 = New 
  loc_12F5115: Me.DGCR.CursorLocation = 3
  loc_12F513F: var_BC = CVar("Select SubCode As Code,Name From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_12F5149: Me.Open var_BC, CVar(MemVar_1F921DC), 2
  loc_12F515D: CVarUnk
  loc_12F5162: VerifyVarObj
  loc_12F5168: Set var_A8 = Me.DGDR
  loc_12F516E: LateIdStAd
  loc_12F5186: Set global_68 = New 
  loc_12F5198: Me.DGDR.CursorLocation = 3
  loc_12F51DC: If (Me.Fields.Item("ShowGroup").Value = "Yes") Then
  loc_12F51FD:   var_AC = "Select GroupCode as Code,GroupName as Name From AcGroup Where SysGroup = 'Y' And AliasYN <> 'Y' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_12F520E:   Me.Open CVar(var_AC & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F921DC), 2
  loc_12F521C: Else
  loc_12F5241:   var_BC = CVar("Select GroupCode as Code,GroupName as Name From AcGroup Where AliasYN <> 'Y' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by GroupName") 'String
  loc_12F524B:   Me.Open var_BC, CVar(MemVar_1F921DC), 2
  loc_12F5256: End If
  loc_12F525F: CVarUnk
  loc_12F5264: VerifyVarObj
  loc_12F526A: Set var_A8 = Me.DGGroup
  loc_12F5270: LateIdStAd
  loc_12F529A: Me.DGGroup.CursorLocation = 3
  loc_12F52CB: var_D8 = "Select V.V_Type as SearchCode,V.* From Voucher_Type V WHERE SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_12F52DC: Me.Open CVar(var_D8 & "' Order by V.V_type"), CVar(MemVar_1F921DC), 2
  loc_12F52F9: Set var_A8 = Me
  loc_12F5302: var_AC = "INI"
  loc_12F5310: Call Proc_207_60_EB1BB8(Proc_5_1_100CB50(var_AC, var_A8, New, 3, -1, var_A8, global_68, 3), -1, 3, -1)
  loc_12F531B: Call Proc_207_63_1420B64(var_A8, global_80)
  loc_12F532C: Proc_183_47_EA0858(Me, 3)
  loc_12F5334: Call Proc_207_59_1727C88(-1)
  loc_12F5339: Exit Sub
  loc_12F533A: ' Referenced from: 12F4C64
  loc_12F5340: Call 0.Method_arg_50 (var_AC)
  loc_12F5348: var_D8 = "Form_Load"
  loc_12F5355: Proc_183_57_104AA84(var_AC)
  loc_12F5361: Exit Sub
End Sub

Private Sub Form_Resize() 'FAC968
  'Data Table: 50BA98
  Dim var_8C As Label
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_FAC7E8: On Error Goto loc_FAC940
  loc_FAC7F1: Call 0.Method_arg_50 (var_88)
  loc_FAC803: Me.LblFormCaption.Caption = var_88
  loc_FAC81C: Me.LblFormCaption.Left = CDbl(0)
  loc_FAC828: Set var_A0 = Me.TopCtrl1
  loc_FAC82E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_FAC83B: Set var_8C = Me.TopCtrl1
  loc_FAC841: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_FAC85B: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_FAC876: Call 0.Method_arg_100 (var_B8)
  loc_FAC888: Me.LblFormCaption.Width = var_B8
  loc_FAC89E: Set var_8C = Me.Txt
  loc_FAC8A4: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_FAC8C3: Me.DGVType.Left = CVar(var_A0.Left)
  loc_FAC8DF: Set var_B4 = Me.Txt
  loc_FAC8E5: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_FAC900: Set var_8C = Me.Txt
  loc_FAC906: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_FAC91E: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_FAC92D: Me.DGVType.Top = CVar(var_A0.Left)
  loc_FAC93F: Exit Sub
  loc_FAC940: ' Referenced from: FAC7E8
  loc_FAC946: Call 0.Method_arg_50 (var_88)
  loc_FAC94E: var_EC = "Form_Resize"
  loc_FAC95B: Proc_183_57_104AA84(var_88)
  loc_FAC967: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'ECEB5C
  'Data Table: 50BA98
  loc_ECEAB0: On Error Goto loc_ECEB32
  loc_ECEABE: Set global_56 = Nothing
  loc_ECEAD0: Set global_76 = Nothing
  loc_ECEAE2: Set global_64 = Nothing
  loc_ECEAF4: Set global_60 = Nothing
  loc_ECEB06: Set global_84 = Nothing
  loc_ECEB18: Set global_80 = Nothing
  loc_ECEB2A: Set global_124 = Nothing
  loc_ECEB31: Exit Sub
  loc_ECEB32: ' Referenced from: ECEAB0
  loc_ECEB38: Call 0.Method_arg_50 (var_8C)
  loc_ECEB40: var_94 = "Form_Unload"
  loc_ECEB4D: Proc_183_57_104AA84(var_8C)
  loc_ECEB59: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E02648
  'Data Table: 50BA98
  loc_E02641: Call Form_Unload(&HFF)
  loc_E02646: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E69758
  'Data Table: 50BA98
  loc_E69710: On Error Goto loc_E6972E
  loc_E69725: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E6972D: Exit Sub
  loc_E6972E: ' Referenced from: E69710
  loc_E69734: Call 0.Method_arg_50 (var_8C)
  loc_E69749: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E69755: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11137A4
  'Data Table: 50BA98
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_112 As Integer
  Dim Me As Recordset15
  loc_1113464: On Error Goto loc_111377B
  loc_1113467: Call Proc_207_61_F94DBC()
  loc_111346F: var_86 = Index
  loc_1113478: If (var_86 = 0) Then
  loc_111348E:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11134CD:   Set var_108 = Me.TxtGrid
  loc_11134D3:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11134DB:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_11134FC: Else
  loc_1113502:   If (var_86 = 1) Then
  loc_1113518:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1113521:     Set var_A0 = Me.FGrid1
  loc_1113557:     Set var_108 = Me.TxtGrid
  loc_111355D:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), CVar(CLng(var_A0.Col)))
  loc_1113565:     var_10C.Tag = var_C0
  loc_1113583:   End If
  loc_1113583: End If
  loc_1113592: Set var_8C = Me.TxtGrid
  loc_1113598: Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_11135A0: var_A0.MaxLength = var_C0
  loc_11135AF: var_112 = Index
  loc_11135B8: If (var_112 = 0) Then
  loc_11135BB:   GoTo loc_111377A
  loc_11135BE: End If
  loc_11135C4: If (var_112 = 1) Then
  loc_11135EA:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_11135F6:     var_11C = Me.RecordCount
  loc_111360D:     var_11E = Me.EOF
  loc_1113621:     var_120 = Me.BOF
  loc_1113641:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111367D:     If (CVar(CLng(1)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_1113680:       Exit Sub
  loc_1113681:     End If
  loc_1113694:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111369C:     var_E0 = CVar(CLng(1)) 'Long
  loc_11136CF:     If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_11136D8:       Me.MoveFirst
  loc_11136F0:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11136F8:       var_E0 = CVar(CLng(4)) 'Long
  loc_1113707:       var_B0 = Me.FGrid1.TextMatrix)
  loc_1113728:       var_110 = CStr(var_B0)
  loc_111373C:       Me.Find "Code='" & var_110 & "'", 0, 1
  loc_111376C:       If (Me.EOF = &HFF) Then
  loc_1113775:         Me.MoveFirst
  loc_111377A:         ' Referenced from: 11135BB
  loc_111377A:       End If
  loc_111377A:     End If
  loc_111377A:   End If
  loc_111377A: End If
  loc_111377A: Exit Sub
  loc_111377B: ' Referenced from: 1113464
  loc_1113781: Call 0.Method_arg_50 (var_110, var_138, var_B0, var_E0, var_C0, var_E0)
  loc_1113796: Proc_183_57_104AA84(var_110, "TxtGrid_GotFocus", var_C0, var_C0)
  loc_11137A2: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C2D14
  'Data Table: 50BA98
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B0 As Long
  loc_12C26A8: On Error Goto loc_12C2CEA
  loc_12C26B5: If (CLng(Shift) = &H1B) Then
  loc_12C26C5:   Set var_88 = Me.TxtGrid
  loc_12C26CB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12C26D3:   var_90 = var_8C.Tag
  loc_12C26E5:   Set var_94 = Me.TxtGrid
  loc_12C26EB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_12C26F3:   var_98.Text = var_90
  loc_12C270F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C2717:   var_9A = KeyCode
  loc_12C2720:   If (var_9A = 0) Then
  loc_12C2727:     Set var_88 = Me.FGrid
  loc_12C273B:   Else
  loc_12C2741:     If (var_9A = 1) Then
  loc_12C2748:       Set var_88 = Me.FGrid1
  loc_12C2759:     End If
  loc_12C2759:   End If
  loc_12C2765:   Set var_88 = Me.TxtGrid
  loc_12C276B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 0, FGrid1.DispID_8001)
  loc_12C2773:   var_8C.Visible = FGrid.DispID_8001
  loc_12C277F:   Exit Sub
  loc_12C2780: End If
  loc_12C2783: var_9C = KeyCode
  loc_12C278C: If (var_9C = 0) Then
  loc_12C27A2:   var_B0 = CLng(Me.FGrid.Col)
  loc_12C27B2:   If (var_B0 = CLng(3)) Then
  loc_12C27F5:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C2805:       Call Proc_207_54_12DDF44(0, 0, var_B6, var_B0)
  loc_12C2810:       If (var_B6 = &HFF) Then
  loc_12C2847:         Set var_8C = Me.TxtGrid
  loc_12C2856:         Proc_183_25_11BD654(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4)
  loc_12C2885:         Set var_88 = Me.Txt
  loc_12C288B:         Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C2893:         0 = var_8C.Text
  loc_12C289B:         var_AC = CVar(var_90) 'String
  loc_12C28A3:         Set var_94 = Me.FGrid
  loc_12C28A9:         LateIdCallSt
  loc_12C28BD:       End If
  loc_12C28BD:     End If
  loc_12C28C0:   Else
  loc_12C28C7:     If (var_B0 = CLng(1)) Then
  loc_12C290A:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C291A:         Call Proc_207_54_12DDF44(0, 0, var_B6, var_94, var_AC)
  loc_12C2925:         If (var_B6 = &HFF) Then
  loc_12C295C:           Set var_8C = Me.TxtGrid
  loc_12C296B:           Proc_183_25_11BD654(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4, 0)
  loc_12C299A:           Set var_88 = Me.Txt
  loc_12C29A0:           Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C29A8:           0 = var_8C.Text
  loc_12C29B0:           var_AC = CVar(var_90) 'String
  loc_12C29B8:           Set var_94 = Me.FGrid
  loc_12C29BE:           LateIdCallSt
  loc_12C29D2:         End If
  loc_12C29D2:       End If
  loc_12C29D5:     Else
  loc_12C29DC:       If (var_B0 = CLng(2)) Then
  loc_12C2A1F:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C2A2F:           Call Proc_207_54_12DDF44(0, 0, var_B6, var_94, var_AC)
  loc_12C2A3A:           If (var_B6 = &HFF) Then
  loc_12C2A71:             Set var_8C = Me.TxtGrid
  loc_12C2A80:             Proc_183_25_11BD654(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4, 0)
  loc_12C2AAF:             Set var_88 = Me.Txt
  loc_12C2AB5:             Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C2ABD:             0 = var_8C.Text
  loc_12C2AC5:             var_AC = CVar(var_90) 'String
  loc_12C2ACD:             Set var_94 = Me.FGrid
  loc_12C2AD3:             LateIdCallSt
  loc_12C2AE7:           End If
  loc_12C2AE7:         End If
  loc_12C2AEA:       Else
  loc_12C2AF1:         If (var_B0 = CLng(4)) Then
  loc_12C2B34:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C2B44:             Call Proc_207_54_12DDF44(0, 0, var_B6, var_94, var_AC)
  loc_12C2B4F:             If (var_B6 = &HFF) Then
  loc_12C2B86:               Set var_8C = Me.TxtGrid
  loc_12C2B95:               Proc_183_25_11BD654(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4, 0)
  loc_12C2BC4:               Set var_88 = Me.Txt
  loc_12C2BCA:               Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C2BD2:               0 = var_8C.Text
  loc_12C2BDA:               var_AC = CVar(var_90) 'String
  loc_12C2BE2:               Set var_94 = Me.FGrid
  loc_12C2BE8:               LateIdCallSt
  loc_12C2BFC:             End If
  loc_12C2BFC:           End If
  loc_12C2BFC:         End If
  loc_12C2BFC:       End If
  loc_12C2BFC:     End If
  loc_12C2BFC:   End If
  loc_12C2BFF: Else
  loc_12C2C05:   If (var_9C = 1) Then
  loc_12C2C12:     var_AC = Me.FGrid1.Col
  loc_12C2C25:     If (CLng(var_AC) = CLng(1)) Then
  loc_12C2C2C:       Set var_94 = Me.DGGroup
  loc_12C2C5E:       Proc_183_34_1305540(var_94, Me.TxtGrid, KeyCode, global_68, Shift, &HFF, 1)
  loc_12C2C78:       If (CLng(Shift) = &HD) Then
  loc_12C2C88:         Call Proc_207_55_109C9C0(0, 0, var_B6, var_94, var_AC)
  loc_12C2C93:         If (var_B6 = &HFF) Then
  loc_12C2CD9:           Proc_183_25_11BD654(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_100, 1, 0)
  loc_12C2CE9:         End If
  loc_12C2CE9:       End If
  loc_12C2CE9:     End If
  loc_12C2CE9:   End If
  loc_12C2CE9: End If
  loc_12C2CE9: Exit Sub
  loc_12C2CEA: ' Referenced from: 12C26A8
  loc_12C2CF0: Call 0.Method_arg_50 (var_90, 0, 0, 0)
  loc_12C2D05: Proc_183_57_104AA84(var_90, "FGrid_KeyDown", var_9C)
  loc_12C2D11: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F66FFC
  'Data Table: 50BA98
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_B0 As Long
  loc_F66ED0: On Error Goto loc_F66FD1
  loc_F66ED6: Proc_183_46_E070C0(arg_10)
  loc_F66EDE: var_86 = KeyAscii
  loc_F66EE7: If (var_86 = 0) Then
  loc_F66F0D:   If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_F66F19:     Set var_8C = Me.TxtGrid
  loc_F66F1F:     Call 0.Method_TxtGrid_KeyPress0 (0, var_A4)
  loc_F66F3A:     Proc_183_22_129AEBC(var_A4, arg_10, 8)
  loc_F66F46:   End If
  loc_F66F49: Else
  loc_F66F4F:   If (var_86 = 1) Then
  loc_F66F65:     var_B0 = CLng(Me.FGrid1.Col)
  loc_F66F75:     If (var_B0 = CLng(1)) Then
  loc_F66F94:       If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_F66FA6:         var_B4 = "Name"
  loc_F66FC1:         Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_68, arg_10, var_B4)
  loc_F66FD0:       End If
  loc_F66FD0:     End If
  loc_F66FD0:   End If
  loc_F66FD0: End If
  loc_F66FD0: Exit Sub
  loc_F66FD1: ' Referenced from: F66ED0
  loc_F66FD7: Call 0.Method_arg_50 (var_B4, 0, var_B0)
  loc_F66FEC: Proc_183_57_104AA84(var_B4, "TxtGrid_KeyPress", 0)
  loc_F66FF8: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1066EBC
  'Data Table: 50BA98
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  Dim var_110 As Variant
  Dim var_A8 As String
  Dim var_128 As Long
  loc_1066C4C: On Error Goto loc_1066E93
  loc_1066C52: var_86 = KeyCode
  loc_1066C5B: If (var_86 = 0) Then
  loc_1066C71:   var_A0 = CLng(Me.FGrid.Col)
  loc_1066C81:   If (var_A0 = CLng(3)) Then
  loc_1066C97:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1066CC0:     Set var_8C = Me.TxtGrid
  loc_1066CC6:     Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_1066CCE:     var_D0 = var_A4.Text
  loc_1066CD6:     var_110 = CVar(var_A8) 'String
  loc_1066CDE:     Set var_124 = Me.FGrid
  loc_1066CE4:     LateIdCallSt
  loc_1066D05:   Else
  loc_1066D0C:     If (var_A0 = CLng(4)) Then
  loc_1066D1B:       Set var_8C = Me.TxtGrid
  loc_1066D21:       Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, var_124)
  loc_1066D29:       var_110 = var_A4.Text
  loc_1066D40:       If (var_A8 = vbNullString) Then
  loc_1066D47:         var_A8 = CStr(0)
  loc_1066D53:         Set var_8C = Me.TxtGrid
  loc_1066D59:         Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8)
  loc_1066D61:         var_A4.Text = var_A0
  loc_1066D70:       End If
  loc_1066D83:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1066D9B:       var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1066DAC:       Set var_8C = Me.TxtGrid
  loc_1066DB2:       Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8)
  loc_1066DBA:       var_F0 = var_A4.Text
  loc_1066DC2:       var_110 = CVar(var_A8) 'String
  loc_1066DCA:       Set var_124 = Me.FGrid
  loc_1066DD0:       LateIdCallSt
  loc_1066DEE:     End If
  loc_1066DEE:   End If
  loc_1066DF1: Else
  loc_1066DF7:   If (var_86 = 1) Then
  loc_1066E0D:     var_128 = CLng(Me.FGrid1.Col)
  loc_1066E1D:     If (var_128 = CLng(1)) Then
  loc_1066E43:       If ((Shift <> &HD) And (CBool(Me.DGGroup.Visible) = 0)) Then
  loc_1066E54:         Call TxtGrid_KeyDown(KeyCode, global_98)
  loc_1066E68:         var_A8 = "Name"
  loc_1066E83:         Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_68, Shift, var_A8, &HFF)
  loc_1066E92:       End If
  loc_1066E92:     End If
  loc_1066E92:   End If
  loc_1066E92: End If
  loc_1066E92: Exit Sub
  loc_1066E93: ' Referenced from: 1066C4C
  loc_1066E99: Call 0.Method_arg_50 (var_A8, 0, var_128, var_124)
  loc_1066EAE: Proc_183_57_104AA84(var_A8, "TxtGrid_KeyUp", var_110)
  loc_1066EBA: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E90218
  'Data Table: 50BA98
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E901A0: On Error Goto loc_E901ED
  loc_E901A6: var_86 = Cancel
  loc_E901AF: If (var_86 = 0) Then
  loc_E901BD:   Call Proc_207_54_12DDF44(Cancel, &HFF)
  loc_E901C6:   arg_10 = Not(var_8A)
  loc_E901CC: Else
  loc_E901D2:   If (var_86 = 1) Then
  loc_E901E0:     Call Proc_207_55_109C9C0(Cancel, &HFF, var_8A)
  loc_E901E9:     arg_10 = Not(var_8A)
  loc_E901EC:   End If
  loc_E901EC: End If
  loc_E901EC: Exit Sub
  loc_E901ED: ' Referenced from: E901A0
  loc_E901F3: Call 0.Method_arg_50 (var_90, arg_10, arg_10)
  loc_E90208: Proc_183_57_104AA84(var_90, "TxtGrid_Validate")
  loc_E90214: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'EBF02C
  'Data Table: 50BA98
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EBEF94: On Error Goto loc_EBF003
  loc_EBEFBA: If (CDbl(CLng(Me.FGrid1.BackColorSel)) = CDbl(global_52)) Then
  loc_EBEFD0:   Me.FGrid1.Col = 1
  loc_EBEFD8: End If
  loc_EBEFE3: Set var_88 = Me.TxtGrid
  loc_EBEFE9: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_BC)
  loc_EBEFF1: var_BC.Visible = False
  loc_EBEFFD: Call Proc_207_61_F94DBC()
  loc_EBF002: Exit Sub
  loc_EBF003: ' Referenced from: EBEF94
  loc_EBF009: Call 0.Method_arg_50 (var_C0)
  loc_EBF011: var_C8 = "FGrid1_GotFocus"
  loc_EBF01E: Proc_183_57_104AA84(var_C0)
  loc_EBF02A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E67A28
  'Data Table: 50BA98
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  Dim arg_20FF As Integer
  loc_E679E4: Set var_88 = Me.TxtGrid
  loc_E679EA: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E67A04: If (var_8C.Visible = 0) Then
  loc_E67A1D:   Me.FGrid1.BackColorSel = CVar(CLng(global_52))
  loc_E67A25: End If
  loc_E67A25: Exit Sub
  loc_E67A26: arg_20FF = 
End Sub

Private Sub Fgrid1_UnknownEvent_9 '106FEC0
  'Data Table: 50BA98
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_106FC3C: On Error Goto loc_106FE96
  loc_106FC43: Set var_88 = Me.TopCtrl1
  loc_106FC49: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_106FC62: If (CStr() = "Browse") Then
  loc_106FC65:   Exit Sub
  loc_106FC66: End If
  loc_106FCA3: If ((CLng(Me.FGrid1.Col) = CLng(2)) Or (CLng(Me.FGrid1.Col) = CLng(3))) Then
  loc_106FCB9:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106FCD1:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_106FCEB:   var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_106FD08:   If (var_9C = vbNullString) Then
  loc_106FD2D:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_106FD5E:     Me.FGrid1.Row = CVar(CLng(Me.FGrid1.Row))
  loc_106FD7D:     Me.FGrid1.CellFontName = "wingdings"
  loc_106FD97:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_106FDB2:     Me.FGrid1.CellForeColor = &HFF
  loc_106FDCD:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106FDE5:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_106FDEA:     var_114 = "ü"
  loc_106FDF4:     Set var_F4 = Me.FGrid1
  loc_106FDFA:     LateIdCallSt
  loc_106FE15:   Else
  loc_106FE28:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106FE31:     Set var_A0 = Me.FGrid1
  loc_106FE40:     var_E0 = CVar(CLng(var_A0.Col)) 'Long
  loc_106FE45:     var_114 = vbNullString
  loc_106FE4F:     Set var_F4 = Me.FGrid1
  loc_106FE55:     LateIdCallSt
  loc_106FE6D:   End If
  loc_106FE70: Else
  loc_106FE7B:   Set var_88 = Me.TxtGrid
  loc_106FE81:   Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_A0, 0, var_F4, var_114, var_E0, var_C0)
  loc_106FE89:   var_A0.Visible = var_F4
  loc_106FE95: End If
  loc_106FE95: Exit Sub
  loc_106FE96: ' Referenced from: 106FC3C
  loc_106FE9C: Call 0.Method_arg_50 (var_9C, var_114, var_E0)
  loc_106FEB1: Proc_183_57_104AA84(var_9C, "FGrid1_Click", var_C0)
  loc_106FEBD: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '1254CDC
  'Data Table: 50BA98
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_130 As String
  loc_1254780: On Error Goto loc_1254CB4
  loc_1254787: Set var_88 = Me.TopCtrl1
  loc_125478D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12547A6: If (CStr() = "Browse") Then
  loc_12547A9:   Exit Sub
  loc_12547AA: End If
  loc_125481E: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_1254829:   var_9C = "+{Tab}"
  loc_125482F:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_1254839:   Cancel = 0
  loc_125483F: Else
  loc_1254849:   var_B0 = Me.FGrid1.Rows
  loc_125486E:   var_9C = CStr(Me.FGrid1.Tag)
  loc_1254885:   var_D8 = 1
  loc_12548A0:   var_C4 = Me.FGrid1.TextMatrix)
  loc_12548CD:   If (CVar(CLng(1)) And (CStr(var_C4) <> vbNullString)) Then
  loc_12548E6:     var_D8 = "Save Record ?"
  loc_1254907:     If (MsgBox(var_D8, 4, "Save Data", var_C4, var_11C) = 6) Then
  loc_125490A:       Call TopCtrl1_UnknownEvent_16()
  loc_125490F:       Exit Sub
  loc_1254910:     End If
  loc_1254913:   Else
  loc_125491D:     var_B0 = Me.FGrid1.Rows
  loc_125496A:     If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_125497B:       Proc_303_0_FB9B68("{Tab}", 0, var_B0, var_D8, ((CLng(Cancel) = &H28) And (CDbl(Val("{Tab}")) = CDbl((CLng(var_B0) - 1)))))
  loc_1254983:     End If
  loc_1254983:   End If
  loc_1254983: End If
  loc_1254989: global_98 = Cancel
  loc_12549AF: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_12549D3: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_12549F9:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_1254A0F:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254A27:     var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1254A2C:     var_130 = vbNullString
  loc_1254A36:     Set var_B4 = Me.FGrid1
  loc_1254A3C:     LateIdCallSt
  loc_1254A67:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254A6F:     var_F8 = CVar(CLng(4)) 'Long
  loc_1254A74:     var_130 = vbNullString
  loc_1254A7E:     Set var_A0 = Me.FGrid1
  loc_1254A84:     LateIdCallSt
  loc_1254A96:   End If
  loc_1254A96: End If
  loc_1254A9C: If (Cancel = &HD) Then
  loc_1254AA4:   global_100 = 0
  loc_1254AE4:   If ((CLng(Me.FGrid1.Col) = CLng(2)) Or (CLng(Me.FGrid1.Col) = CLng(3))) Then
  loc_1254AFA:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254B12:     var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1254B2C:     var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_1254B49:     If (var_9C = vbNullString) Then
  loc_1254B6E:       Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_1254B9F:       Me.FGrid1.Row = CVar(CLng(Me.FGrid1.Row))
  loc_1254BBE:       Me.FGrid1.CellFontName = "wingdings"
  loc_1254BD8:       Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_1254BF3:       Me.FGrid1.CellForeColor = &HFF
  loc_1254C0E:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254C26:       var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1254C2B:       var_130 = "ü"
  loc_1254C35:       Set var_B4 = Me.FGrid1
  loc_1254C3B:       LateIdCallSt
  loc_1254C56:     Else
  loc_1254C69:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254C81:       var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1254C86:       var_130 = vbNullString
  loc_1254C90:       Set var_B4 = Me.FGrid1
  loc_1254C96:       LateIdCallSt
  loc_1254CAE:     End If
  loc_1254CAE:   End If
  loc_1254CAE: End If
  loc_1254CB0: Cancel = 0
  loc_1254CB3: Exit Sub
  loc_1254CB4: ' Referenced from: 1254780
  loc_1254CBA: Call 0.Method_arg_50 (var_9C, Cancel, var_B4, var_130, var_F8, var_D8, var_B4, var_130)
  loc_1254CCF: Proc_183_57_104AA84(var_9C, "FGrid1_KeyDown", var_F8, var_D8, var_F8)
  loc_1254CDB: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E5FFB0
  'Data Table: 50BA98
  loc_E5FF6C: On Error Goto loc_E5FF86
  loc_E5FF78: Call Fgrid1_UnknownEvent_C()
  loc_E5FF82: global_100 = 0
  loc_E5FF85: Exit Sub
  loc_E5FF86: ' Referenced from: E5FF6C
  loc_E5FF8C: Call 0.Method_arg_50 (var_8C, global_100)
  loc_E5FFA1: Proc_183_57_104AA84(var_8C, "FGrid1_DblClick")
  loc_E5FFAD: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'EEC59C
  'Data Table: 50BA98
  loc_EEC4E8: On Error Goto loc_EEC572
  loc_EEC50E: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_EEC54A:   Proc_183_26_1158124(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EEC55C: End If
  loc_EEC566: If (CLng(Cancel) <> &HD) Then
  loc_EEC56E:   global_100 = &HFF
  loc_EEC571: End If
  loc_EEC571: Exit Sub
  loc_EEC572: ' Referenced from: EEC4E8
  loc_EEC578: Call 0.Method_arg_50 (var_B4, global_100, 0)
  loc_EEC58D: Proc_183_57_104AA84(var_B4, "FGrid1_KeyPress")
  loc_EEC599: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D '1050088
  'Data Table: 50BA98
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Long
  loc_104FE2C: On Error Goto loc_105005F
  loc_104FE33: Set var_8C = Me.TopCtrl1
  loc_104FE39: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104FE41: var_A0 = CStr()
  loc_104FE52: If (var_A0 = "Browse") Then
  loc_104FE55:   Exit Sub
  loc_104FE56: End If
  loc_104FE73: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_104FE76:   Exit Sub
  loc_104FE77: End If
  loc_104FE88: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104FEAA:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_104FEE4:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_104FF06:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_104FF1C:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_104FF25:         Set var_114 = Me.FGrid1
  loc_104FF40:       Else
  loc_104FF53:         Me.FGrid1.Rows = 1
  loc_104FF70:         var_D0 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_104FF78:         Set var_114 = Me.FGrid1
  loc_104FFA7:         Me.FGrid1.FixedRows = 1
  loc_104FFAF:       End If
  loc_104FFD4:       For var_118 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_118 'Integer
  loc_104FFDE:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_104FFE3:         var_E0 = 0
  loc_104FFF1:         var_9C = CVar(CStr(var_86)) 'String
  loc_104FFF9:         Set var_8C = Me.FGrid1
  loc_104FFFF:         LateIdCallSt
  loc_1050010:       Next var_118 'Integer
  loc_1050015:     End If
  loc_1050018:   Else
  loc_1050039:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1050049:   End If
  loc_105004D:   Set var_8C = Me.FGrid1
  loc_105005E: End If
  loc_105005E: Exit Sub
  loc_105005F: ' Referenced from: 104FE2C
  loc_1050065: Call 0.Method_arg_50 (var_A0)
  loc_105007A: Proc_183_57_104AA84(var_A0, "FGrid1_KeyUp")
  loc_1050086: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E3F48C
  'Data Table: 50BA98
  Dim var_8C As TextBox
  loc_E3F46B: Set var_88 = Me.TxtGrid
  loc_E3F471: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E3F479: var_8C.Visible = False
  loc_E3F485: Call Proc_207_61_F94DBC()
  loc_E3F48A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '131A4E4
  'Data Table: 50BA98
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_EC As String
  loc_1319D74: On Error Goto loc_131A4BB
  loc_1319D81: Set var_88 = Me.Txt
  loc_1319D87: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1319D95: Proc_183_28_E20B20(var_8C)
  loc_1319DA1: Call Proc_207_61_F94DBC(var_8C)
  loc_1319DA9: var_92 = Index
  loc_1319DB4: If (var_92 = CInt(0)) Then
  loc_1319E05:   Set var_88 = Me.Txt
  loc_1319E0B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1319E13:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1319E2B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1319E2E:     Exit Sub
  loc_1319E2F:   End If
  loc_1319E3C:   Set var_88 = Me.Txt
  loc_1319E42:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319E4A:   var_A0 = var_8C.Text
  loc_1319E5C:   var_B0 = "Name"
  loc_1319E97:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1319EA0:     Me.MoveFirst
  loc_1319EC3:     Set var_88 = Me.Txt
  loc_1319EC9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1319ED1:     0 = var_8C.Text
  loc_1319EEA:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1319EFF:   End If
  loc_1319F02: Else
  loc_1319F0A:   If (var_92 = CInt(2)) Then
  loc_1319F5B:     Set var_88 = Me.Txt
  loc_1319F61:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319F81:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1319F84:       Exit Sub
  loc_1319F85:     End If
  loc_1319F92:     Set var_88 = Me.Txt
  loc_1319F98:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319FA0:     var_A0 = var_8C.Text
  loc_1319FB2:     var_B0 = "Name"
  loc_1319FED:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1319FF6:       Me.MoveFirst
  loc_131A019:       Set var_88 = Me.Txt
  loc_131A01F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A027:       0 = var_8C.Text
  loc_131A040:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_131A055:     End If
  loc_131A058:   Else
  loc_131A060:     If (var_92 = CInt(1)) Then
  loc_131A072:       Me.Filter = 0
  loc_131A088:       Set var_88 = Me.Txt
  loc_131A08E:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_131A0B0:       Me.Filter = CVar("Category='" & var_8C.Text & "'")
  loc_131A114:       Set var_88 = Me.Txt
  loc_131A11A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A13A:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_131A13D:         Exit Sub
  loc_131A13E:       End If
  loc_131A14B:       Set var_88 = Me.Txt
  loc_131A151:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A159:       var_A0 = var_8C.Text
  loc_131A16B:       var_B0 = "Name"
  loc_131A1A6:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A1AF:         Me.MoveFirst
  loc_131A1D2:         Set var_88 = Me.Txt
  loc_131A1D8:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A1E0:         0 = var_8C.Text
  loc_131A1F9:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_131A20E:       End If
  loc_131A211:     Else
  loc_131A219:       If (var_92 = CInt(&HC)) Then
  loc_131A26A:         Set var_88 = Me.Txt
  loc_131A270:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A290:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_131A293:           Exit Sub
  loc_131A294:         End If
  loc_131A2A1:         Set var_88 = Me.Txt
  loc_131A2A7:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A2AF:         var_A0 = var_8C.Text
  loc_131A2C1:         var_B0 = "Name"
  loc_131A2FC:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A305:           Me.MoveFirst
  loc_131A328:           Set var_88 = Me.Txt
  loc_131A32E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A336:           0 = var_8C.Text
  loc_131A34F:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_131A364:         End If
  loc_131A367:       Else
  loc_131A36F:         If (var_92 = CInt(&HD)) Then
  loc_131A3C0:           Set var_88 = Me.Txt
  loc_131A3C6:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A3E6:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_131A3E9:             Exit Sub
  loc_131A3EA:           End If
  loc_131A3F7:           Set var_88 = Me.Txt
  loc_131A3FD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A405:           var_A0 = var_8C.Text
  loc_131A417:           var_B0 = "Name"
  loc_131A452:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A45B:             Me.MoveFirst
  loc_131A47E:             Set var_88 = Me.Txt
  loc_131A484:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A48C:             0 = var_8C.Text
  loc_131A4A5:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_131A4BA:           End If
  loc_131A4BA:         End If
  loc_131A4BA:       End If
  loc_131A4BA:     End If
  loc_131A4BA:   End If
  loc_131A4BA: End If
  loc_131A4BA: Exit Sub
  loc_131A4BB: ' Referenced from: 1319D74
  loc_131A4C1: Call 0.Method_arg_50 (var_A0)
  loc_131A4C9: var_EC = "Txt_GotFocus"
  loc_131A4D6: Proc_183_57_104AA84(var_A0)
  loc_131A4E2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11A50C4
  'Data Table: 50BA98
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_90 As Variant
  Dim var_F8 As String
  loc_11A4CBC: On Error Goto loc_11A509A
  loc_11A4CC9: If (CLng(Shift) = &H1B) Then
  loc_11A4CCC:   Call Proc_207_61_F94DBC()
  loc_11A4CD1:   Exit Sub
  loc_11A4CD2: End If
  loc_11A4CD5: var_86 = KeyCode
  loc_11A4CE0: If (var_86 = CInt(&HC)) Then
  loc_11A4D19:   Proc_183_34_1305540(Me.DGCR, Me.Txt, KeyCode, global_84)
  loc_11A4D2C: Else
  loc_11A4D34:   If (var_86 = CInt(&HD)) Then
  loc_11A4D6D:     Proc_183_34_1305540(Me.DGDR, Me.Txt, KeyCode, global_80, Shift, 0)
  loc_11A4D80:   Else
  loc_11A4D88:     If (var_86 = CInt(2)) Then
  loc_11A4DC1:       Proc_183_31_100809C(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_11A4DD4:     Else
  loc_11A4DDC:       If (var_86 = CInt(0)) Then
  loc_11A4E15:         Proc_183_34_1305540(Me.DGCategory, Me.Txt, KeyCode, global_56, Shift, 0, 1)
  loc_11A4E28:       Else
  loc_11A4E30:         If (var_86 = CInt(1)) Then
  loc_11A4E69:           Proc_183_34_1305540(Me.DGNCat, Me.Txt, KeyCode, global_64, Shift, 0, 1)
  loc_11A4E79:         End If
  loc_11A4E79:       End If
  loc_11A4E79:     End If
  loc_11A4E79:   End If
  loc_11A4E79: End If
  loc_11A4E93: Set var_90 = Me.DGCR
  loc_11A4F20: If ((((((CBool(Me.DGDR.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGCategory.Visible) = 0)) And (CBool(Me.DGNCat.Visible) = 0)) And (CBool(Me.DGVType.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_11A4F38:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11A4F49:     Set var_8C = Me.Txt
  loc_11A4F4F:     Call 0.Method_Txt_KeyDown0 (CInt(7), var_90, var_F8, 1, 1)
  loc_11A4F57:     Shift = var_90.Text
  loc_11A4F6E:     If (var_F8 = "Yes") Then
  loc_11A4F7E:       Set var_8C = Me.Txt
  loc_11A4F84:       Call 0.Method_Txt_KeyDown0 (CInt(8), var_90, &HFF)
  loc_11A4F8C:       var_90.Enabled = False
  loc_11A4F9B:     Else
  loc_11A4FA8:       Set var_8C = Me.Txt
  loc_11A4FAE:       Call 0.Method_Txt_KeyDown0 (CInt(8), var_90, 0)
  loc_11A4FB6:       var_90.Enabled = True
  loc_11A4FD0:       Set var_8C = Me.Txt
  loc_11A4FD6:       Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_11A4FDE:       var_90.Text = vbNullString
  loc_11A4FEA:     End If
  loc_11A4FF0:     Proc_183_29_E52C04(Shift, arg_14)
  loc_11A4FF5:   End If
  loc_11A4FF9:   Set var_8C = Me.TopCtrl1
  loc_11A4FFF:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_11A5021:   If ((CStr() = "Add") And (KeyCode <> CInt(0))) Then
  loc_11A5039:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11A5042:       Proc_183_30_E53180(Shift)
  loc_11A5047:     End If
  loc_11A5047:   End If
  loc_11A504B:   Set var_8C = Me.TopCtrl1
  loc_11A5051:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_11A5059:   var_F8 = CStr()
  loc_11A5073:   If ((var_F8 = "Edit") And (KeyCode <> CInt(3))) Then
  loc_11A508B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11A5094:       Proc_183_30_E53180(Shift)
  loc_11A5099:     End If
  loc_11A5099:   End If
  loc_11A5099: End If
  loc_11A5099: Exit Sub
  loc_11A509A: ' Referenced from: 11A4CBC
  loc_11A50A0: Call 0.Method_arg_50 (var_F8)
  loc_11A50B5: Proc_183_57_104AA84(var_F8, "Txt_KeyDown")
  loc_11A50C1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '121F910
  'Data Table: 50BA98
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As String
  loc_121F418: On Error Goto loc_121F8E7
  loc_121F41E: Proc_183_46_E070C0(arg_10)
  loc_121F426: var_86 = KeyAscii
  loc_121F431: If (var_86 = CInt(&HC)) Then
  loc_121F450:   If (CBool(Me.DGCR.Visible) = &HFF) Then
  loc_121F462:     var_A0 = "Name"
  loc_121F47D:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_84, arg_10)
  loc_121F48C:   End If
  loc_121F48F: Else
  loc_121F497:   If (var_86 = CInt(&HD)) Then
  loc_121F4B6:     If (CBool(Me.DGDR.Visible) = &HFF) Then
  loc_121F4E3:       Proc_183_41_1459C78(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_121F4F2:     End If
  loc_121F4F5:   Else
  loc_121F4FD:     If (var_86 = CInt(0)) Then
  loc_121F51C:       If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_121F549:         Proc_183_41_1459C78(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_121F558:       End If
  loc_121F55B:     Else
  loc_121F563:       If (var_86 = CInt(1)) Then
  loc_121F582:         If (CBool(Me.DGNCat.Visible) = &HFF) Then
  loc_121F589:           Set var_A8 = Me.Txt
  loc_121F594:           var_A0 = "Name"
  loc_121F5AF:           Proc_183_41_1459C78(var_A8, KeyAscii, global_64, arg_10, var_A0, 0)
  loc_121F5BE:         End If
  loc_121F5C1:       Else
  loc_121F5C9:         If (var_86 = CInt(5)) Then
  loc_121F5D9:           If ((arg_10 = &H4D) Or (arg_10 = &H6D)) Then
  loc_121F5E9:             Set var_8C = Me.Txt
  loc_121F5EF:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Manual", 0)
  loc_121F5F7:             var_A8.Text = 0
  loc_121F605:             arg_10 = 0
  loc_121F60B:           Else
  loc_121F618:             If ((arg_10 = &H41) Or (arg_10 = &H61)) Then
  loc_121F628:               Set var_8C = Me.Txt
  loc_121F62E:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Automatic", arg_10)
  loc_121F636:               var_A8.Text = var_A0
  loc_121F644:               arg_10 = 0
  loc_121F64A:             Else
  loc_121F657:               If ((arg_10 = &H53) Or (arg_10 = &H73)) Then
  loc_121F667:                 Set var_8C = Me.Txt
  loc_121F66D:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "SemiAuto")
  loc_121F675:                 var_A8.Text = arg_10
  loc_121F683:                 arg_10 = 0
  loc_121F689:               Else
  loc_121F68B:                 arg_10 = 0
  loc_121F68E:               End If
  loc_121F68E:             End If
  loc_121F68E:           End If
  loc_121F691:         Else
  loc_121F699:           If Not (var_86 = CInt(6)) Then
  loc_121F6A4:             If Not (var_86 = CInt(7)) Then
  loc_121F6AF:               If Not (var_86 = CInt(9)) Then
  loc_121F6BA:                 If Not (var_86 = CInt(&HA)) Then
  loc_121F6C5:                   If (var_86 = CInt(&HB)) Then
  loc_121F6C8:                   End If
  loc_121F6C8:                 End If
  loc_121F6C8:               End If
  loc_121F6C8:             End If
  loc_121F6D5:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_121F6E5:               Set var_8C = Me.Txt
  loc_121F6EB:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No", arg_10)
  loc_121F6F3:               var_A8.Text = arg_10
  loc_121F701:               arg_10 = 0
  loc_121F707:             Else
  loc_121F714:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_121F724:                 Set var_8C = Me.Txt
  loc_121F72A:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_121F732:                 var_A8.Text = arg_10
  loc_121F740:                 arg_10 = 0
  loc_121F746:               Else
  loc_121F748:                 arg_10 = 0
  loc_121F74B:               End If
  loc_121F74B:             End If
  loc_121F753:             If (KeyAscii = CInt(7)) Then
  loc_121F764:               Set var_8C = Me.Txt
  loc_121F76A:               Call 0.Method_Txt_KeyPress0 (CInt(7), var_A8, var_A0, arg_10)
  loc_121F772:               arg_10 = var_A8.Text
  loc_121F789:               If (var_A0 = "Yes") Then
  loc_121F799:                 Set var_8C = Me.Txt
  loc_121F79F:                 Call 0.Method_Txt_KeyPress0 (CInt(8), var_A8, &HFF)
  loc_121F7A7:                 var_A8.Enabled = False
  loc_121F7B6:               Else
  loc_121F7C3:                 Set var_8C = Me.Txt
  loc_121F7C9:                 Call 0.Method_Txt_KeyPress0 (CInt(8), var_A8)
  loc_121F7D1:                 var_A8.Enabled = False
  loc_121F7EB:                 Set var_8C = Me.Txt
  loc_121F7F1:                 Call 0.Method_Txt_KeyPress0 (CInt(8), var_A8)
  loc_121F7F9:                 var_A8.Text = vbNullString
  loc_121F805:               End If
  loc_121F805:             End If
  loc_121F808:           Else
  loc_121F810:             If (var_86 = CInt(&HE)) Then
  loc_121F847:               If (CLng(Asc(CStr(Ucase(Chr(CLng(arg_10)))))) = &H44) Then
  loc_121F858:                 Set var_8C = Me.Txt
  loc_121F85E:                 Call 0.Method_Txt_KeyPress0 (CInt(&HE), var_A8)
  loc_121F866:                 var_A8.Text = "Dr"
  loc_121F874:                 arg_10 = 0
  loc_121F87A:               Else
  loc_121F894:                 var_A0 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_121F8AE:                 If (CLng(Asc(var_A0)) = &H43) Then
  loc_121F8BF:                   Set var_8C = Me.Txt
  loc_121F8C5:                   Call 0.Method_Txt_KeyPress0 (CInt(&HE), var_A8, "Cr")
  loc_121F8CD:                   var_A8.Text = arg_10
  loc_121F8DB:                   arg_10 = 0
  loc_121F8E1:                 Else
  loc_121F8E3:                   arg_10 = 0
  loc_121F8E6:                 End If
  loc_121F8E6:               End If
  loc_121F8E6:             End If
  loc_121F8E6:           End If
  loc_121F8E6:         End If
  loc_121F8E6:       End If
  loc_121F8E6:     End If
  loc_121F8E6:   End If
  loc_121F8E6: End If
  loc_121F8E6: Exit Sub
  loc_121F8E7: ' Referenced from: 121F418
  loc_121F8ED: Call 0.Method_arg_50 (var_A0, arg_10)
  loc_121F902: Proc_183_57_104AA84(var_A0, "TXT_KeyPress")
  loc_121F90E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F24530
  'Data Table: 50BA98
  Dim var_86 As Integer
  loc_F24438: On Error Goto loc_F24508
  loc_F2443E: var_86 = KeyCode
  loc_F24449: If (var_86 = CInt(2)) Then
  loc_F24468:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F24475:     var_A0 = "Name"
  loc_F24490:     Proc_183_32_FE7F70(Me.Txt, KeyCode, global_60)
  loc_F2449F:   End If
  loc_F244A2: Else
  loc_F244AA:   If (var_86 = CInt(5)) Then
  loc_F244C8:     If (Me.FrmList.Visible = &HFF) Then
  loc_F244F7:       Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F24507:     End If
  loc_F24507:   End If
  loc_F24507: End If
  loc_F24507: Exit Sub
  loc_F24508: ' Referenced from: F24438
  loc_F2450E: Call 0.Method_arg_50 (var_A0, global_120, Shift)
  loc_F24523: Proc_183_57_104AA84(var_A0, "Txt_KeyUp")
  loc_F2452F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E7E6B0
  'Data Table: 50BA98
  loc_E7E658: On Error Goto loc_E7E686
  loc_E7E665: Set var_88 = Me.Txt
  loc_E7E66B: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E7E679: Proc_183_27_E22608(var_8C)
  loc_E7E685: Exit Sub
  loc_E7E686: ' Referenced from: E7E658
  loc_E7E68C: Call 0.Method_arg_50 (var_94)
  loc_E7E6A1: Proc_183_57_104AA84(var_94, "Txt_LostFocus")
  loc_E7E6AD: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1357C88
  'Data Table: 50BA98
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim arg_10 As Integer
  Dim var_C4 As Variant
  loc_1357458: On Error Goto loc_1357C60
  loc_135745E: var_86 = Cancel
  loc_1357469: If (var_86 = CInt(&HC)) Then
  loc_13574BA:   Set var_94 = Me.Txt
  loc_13574C0:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13574C8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_13574E0:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_13574F0:     Set var_94 = Me.Txt
  loc_13574F6:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13574FE:     var_98.Text = vbNullString
  loc_1357517:     Set var_94 = Me.Txt
  loc_135751D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1357525:     var_98.Tag = vbNullString
  loc_1357534:   Else
  loc_135756F:     Set var_B0 = Me.Txt
  loc_1357575:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_135757D:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13575B0:     var_98 = Me.Fields.Item("Code")
  loc_13575CE:     Set var_B0 = Me.Txt
  loc_13575D4:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13575DC:     var_B4.Tag = CStr(var_98.Value)
  loc_13575F2:   End If
  loc_13575F5: Else
  loc_13575FD:   If (var_86 = CInt(&HD)) Then
  loc_135764E:     Set var_94 = Me.Txt
  loc_1357654:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1357674:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1357684:       Set var_94 = Me.Txt
  loc_135768A:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1357692:       var_98.Text = vbNullString
  loc_13576AB:       Set var_94 = Me.Txt
  loc_13576B1:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13576B9:       var_98.Tag = vbNullString
  loc_13576C8:     Else
  loc_1357703:       Set var_B0 = Me.Txt
  loc_1357709:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1357711:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1357744:       var_98 = Me.Fields.Item("Code")
  loc_1357762:       Set var_B0 = Me.Txt
  loc_1357768:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1357770:       var_B4.Tag = CStr(var_98.Value)
  loc_1357786:     End If
  loc_1357789:   Else
  loc_1357791:     If (var_86 = CInt(0)) Then
  loc_135779F:       Set var_94 = Me.Txt
  loc_13577A5:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13577AD:       var_9C = "Category"
  loc_13577CE:       If (Proc_183_19_E8DAFC(var_98, var_9C) = 0) Then
  loc_13577DB:         Set var_94 = Me.Txt
  loc_13577E1:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13577E9:         var_98.SetFocus
  loc_13577F7:         arg_10 = &HFF
  loc_13577FA:         Exit Sub
  loc_13577FB:       End If
  loc_1357849:       Set var_94 = Me.Txt
  loc_135784F:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1357857:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_135786F:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_135787F:         Set var_94 = Me.Txt
  loc_1357885:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_135788D:         var_98.Text = vbNullString
  loc_13578A6:         Set var_94 = Me.Txt
  loc_13578AC:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13578B4:         var_98.Tag = vbNullString
  loc_13578C3:       Else
  loc_13578FE:         Set var_B0 = Me.Txt
  loc_1357904:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_135790C:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_135793F:         var_98 = Me.Fields.Item("Code")
  loc_135795D:         Set var_B0 = Me.Txt
  loc_1357963:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_135796B:         var_B4.Tag = CStr(var_98.Value)
  loc_1357981:       End If
  loc_1357984:     Else
  loc_135798C:       If (var_86 = CInt(1)) Then
  loc_135799A:         Set var_94 = Me.Txt
  loc_13579A0:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_13579A8:         var_9C = "NCat"
  loc_13579C9:         If (Proc_183_19_E8DAFC(var_98, var_9C) = 0) Then
  loc_13579D6:           Set var_94 = Me.Txt
  loc_13579DC:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13579E4:           var_98.SetFocus
  loc_13579F2:           arg_10 = &HFF
  loc_13579F5:           Exit Sub
  loc_13579F6:         End If
  loc_1357A16:         var_8E = Me.EOF
  loc_1357A44:         Set var_94 = Me.Txt
  loc_1357A4A:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1357A52:         ((Me.RecordCount = 0) Or ((var_8E = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1357A6A:         If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1357A7A:           Set var_94 = Me.Txt
  loc_1357A80:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1357A88:           var_98.Text = vbNullString
  loc_1357AA1:           Set var_94 = Me.Txt
  loc_1357AA7:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1357AAF:           var_98.Tag = vbNullString
  loc_1357ABE:         Else
  loc_1357AF9:           Set var_B0 = Me.Txt
  loc_1357AFF:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1357B07:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1357B3A:           var_98 = Me.Fields.Item("Code")
  loc_1357B58:           Set var_B0 = Me.Txt
  loc_1357B5E:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1357B66:           var_B4.Tag = CStr(var_98.Value)
  loc_1357B7C:         End If
  loc_1357B7F:       Else
  loc_1357B87:         If (var_86 = CInt(2)) Then
  loc_1357B95:           Set var_94 = Me.Txt
  loc_1357B9B:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1357BA3:           var_9C = "Voucher Type"
  loc_1357BC4:           If (Proc_183_19_E8DAFC(var_98, var_9C) = 0) Then
  loc_1357BD1:             Set var_94 = Me.Txt
  loc_1357BD7:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1357BDF:             var_98.SetFocus
  loc_1357BED:             arg_10 = &HFF
  loc_1357BF0:             Exit Sub
  loc_1357BF1:           End If
  loc_1357BF4:           Call Proc_207_53_10D50C4(var_8E, arg_10)
  loc_1357BFF:           If (var_8E = &HFF) Then
  loc_1357C04:             arg_10 = &HFF
  loc_1357C07:             Exit Sub
  loc_1357C08:           End If
  loc_1357C08:           var_AC = 1
  loc_1357C27:           Set var_94 = Me.Txt
  loc_1357C2D:           Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C, CVar(CLng(5)))
  loc_1357C35:           var_AC = var_98.Text
  loc_1357C3D:           var_C4 = CVar(var_9C) 'String
  loc_1357C45:           Set var_B0 = Me.FGrid
  loc_1357C4B:           LateIdCallSt
  loc_1357C5F:         End If
  loc_1357C5F:       End If
  loc_1357C5F:     End If
  loc_1357C5F:   End If
  loc_1357C5F: End If
  loc_1357C5F: Exit Sub
  loc_1357C60: ' Referenced from: 1357458
  loc_1357C66: Call 0.Method_arg_50 (var_9C, var_B0, var_C4)
  loc_1357C7B: Proc_183_57_104AA84(var_9C, "Txt_Validate")
  loc_1357C87: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '104EDB8
  'Data Table: 50BA98
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_104EB5C: On Error Goto loc_104ED8E
  loc_104EB63: Set var_88 = Me.TopCtrl1
  loc_104EB69: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104EB82: If (CStr() = "Browse") Then
  loc_104EB85:   Exit Sub
  loc_104EB86: End If
  loc_104EBC3: If ((CLng(Me.FGrid2.Col) = CLng(2)) Or (CLng(Me.FGrid2.Col) = CLng(3))) Then
  loc_104EBD9:   var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_104EBF1:   var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_104EC0B:   var_9C = CStr(Me.FGrid2.TextMatrix))
  loc_104EC28:   If (var_9C = vbNullString) Then
  loc_104EC4D:     Me.FGrid2.Col = CVar(CLng(Me.FGrid2.Col))
  loc_104EC7E:     Me.FGrid2.Row = CVar(CLng(Me.FGrid2.Row))
  loc_104EC9D:     Me.FGrid2.CellFontName = "wingdings"
  loc_104ECB7:     Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_104ECD2:     Me.FGrid2.CellForeColor = &HFF
  loc_104ECED:     var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_104ED05:     var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_104ED0A:     var_114 = "ü"
  loc_104ED14:     Set var_F4 = Me.FGrid2
  loc_104ED1A:     LateIdCallSt
  loc_104ED35:   Else
  loc_104ED48:     var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_104ED60:     var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_104ED65:     var_114 = vbNullString
  loc_104ED6F:     Set var_F4 = Me.FGrid2
  loc_104ED75:     LateIdCallSt
  loc_104ED8D:   End If
  loc_104ED8D: End If
  loc_104ED8D: Exit Sub
  loc_104ED8E: ' Referenced from: 104EB5C
  loc_104ED94: Call 0.Method_arg_50 (var_9C, var_F4, var_114, var_E0, var_C0, var_F4)
  loc_104EDA9: Proc_183_57_104AA84(var_9C, "FGrid2_Click", var_114, var_E0)
  loc_104EDB5: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_A '1035DB0
  'Data Table: 50BA98
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_104 As String
  Dim var_114 As String
  loc_1035B74: On Error Goto loc_1035D88
  loc_1035B7D: If (Cancel = &HD) Then
  loc_1035BBD:   If ((CLng(Me.FGrid2.Col) = CLng(2)) Or (CLng(Me.FGrid2.Col) = CLng(3))) Then
  loc_1035BD3:     var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1035BEB:     var_DC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1035C05:     var_104 = CStr(Me.FGrid2.TextMatrix))
  loc_1035C22:     If (var_104 = vbNullString) Then
  loc_1035C47:       Me.FGrid2.Col = CVar(CLng(Me.FGrid2.Col))
  loc_1035C78:       Me.FGrid2.Row = CVar(CLng(Me.FGrid2.Row))
  loc_1035C97:       Me.FGrid2.CellFontName = "wingdings"
  loc_1035CB1:       Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_1035CCC:       Me.FGrid2.CellForeColor = &HFF
  loc_1035CE7:       var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1035CFF:       var_DC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1035D04:       var_114 = "ü"
  loc_1035D0E:       Set var_F0 = Me.FGrid2
  loc_1035D14:       LateIdCallSt
  loc_1035D2F:     Else
  loc_1035D42:       var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1035D5A:       var_DC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1035D5F:       var_114 = vbNullString
  loc_1035D69:       Set var_F0 = Me.FGrid2
  loc_1035D6F:       LateIdCallSt
  loc_1035D87:     End If
  loc_1035D87:   End If
  loc_1035D87: End If
  loc_1035D87: Exit Sub
  loc_1035D88: ' Referenced from: 1035B74
  loc_1035D8E: Call 0.Method_arg_50 (var_104, var_F0, var_114, var_DC, var_BC, var_F0)
  loc_1035DA3: Proc_183_57_104AA84(var_104, "FGrid2_KeyDown", var_114, var_DC)
  loc_1035DAF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EBE76C
  'Data Table: 50BA98
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EBE6D4: On Error Goto loc_EBE743
  loc_EBE6FA: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_52)) Then
  loc_EBE710:   Me.FGrid.Col = 1
  loc_EBE718: End If
  loc_EBE723: Set var_88 = Me.TxtGrid
  loc_EBE729: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EBE731: var_BC.Visible = False
  loc_EBE73D: Call Proc_207_61_F94DBC()
  loc_EBE742: Exit Sub
  loc_EBE743: ' Referenced from: EBE6D4
  loc_EBE749: Call 0.Method_arg_50 (var_C0)
  loc_EBE751: var_C8 = "FGrid_GotFocus"
  loc_EBE75E: Proc_183_57_104AA84(var_C0)
  loc_EBE76A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68CC0
  'Data Table: 50BA98
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68C7C: Set var_88 = Me.TxtGrid
  loc_E68C82: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68C9C: If (var_8C.Visible = 0) Then
  loc_E68CB5:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E68CBD: End If
  loc_E68CBD: Exit Sub
  loc_E68CBE: Set arg_2070 = 
End Sub

Private Sub FGrid_UnknownEvent_9 'E35B34
  'Data Table: 50BA98
  Dim var_8C As TextBox
  loc_E35B17: Set var_88 = Me.TxtGrid
  loc_E35B1D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E35B25: var_8C.Visible = False
  loc_E35B31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1108B98
  'Data Table: 50BA98
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_120 As Long
  Dim var_130 As String
  loc_1108864: On Error Goto loc_1108B6D
  loc_110886B: Set var_88 = Me.TopCtrl1
  loc_1108871: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_110888A: If (CStr() = "Browse") Then
  loc_110888D:   Exit Sub
  loc_110888E: End If
  loc_1108902: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_110890D:   var_9C = "+{Tab}"
  loc_1108913:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_110891D:   Cancel = 0
  loc_1108923: Else
  loc_110892D:   var_B0 = Me.FGrid.Rows
  loc_1108952:   var_9C = CStr(Me.FGrid.Tag)
  loc_1108969:   var_D8 = 1
  loc_1108984:   var_C4 = Me.FGrid.TextMatrix)
  loc_11089B1:   If (CVar(CLng(5)) And (CStr(var_C4) <> vbNullString)) Then
  loc_11089CA:     var_D8 = "Save Record ?"
  loc_11089EB:     If (MsgBox(var_D8, 4, "Save Data", var_C4, var_11C) = 6) Then
  loc_11089EE:       Call TopCtrl1_UnknownEvent_16()
  loc_11089F3:       Exit Sub
  loc_11089F4:     End If
  loc_11089F7:   Else
  loc_1108A01:     var_B0 = Me.FGrid.Rows
  loc_1108A4E:     If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1108A59:       var_9C = "{Tab}"
  loc_1108A5F:       Proc_303_0_FB9B68(var_9C, 0, var_B0, var_D8, ((CLng(Cancel) = &H28) And (CDbl(Val(var_9C)) = CDbl((CLng(var_B0) - 1)))))
  loc_1108A67:     End If
  loc_1108A67:   End If
  loc_1108A67: End If
  loc_1108A6D: global_98 = Cancel
  loc_1108A93: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1108AB7: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1108ACD:   var_120 = CLng(Me.FGrid.Col)
  loc_1108ADD:   If Not (var_120 = CLng(3)) Then
  loc_1108AE7:     If Not (var_120 = CLng(1)) Then
  loc_1108AF1:       If Not (var_120 = CLng(2)) Then
  loc_1108AFB:         If (var_120 = CLng(4)) Then
  loc_1108AFE:         End If
  loc_1108AFE:       End If
  loc_1108AFE:     End If
  loc_1108B11:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1108B29:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1108B2E:     var_130 = vbNullString
  loc_1108B38:     Set var_B4 = Me.FGrid
  loc_1108B3E:     LateIdCallSt
  loc_1108B56:   End If
  loc_1108B56: End If
  loc_1108B5C: If (Cancel = &HD) Then
  loc_1108B64:   global_100 = 0
  loc_1108B67: End If
  loc_1108B69: Cancel = 0
  loc_1108B6C: Exit Sub
  loc_1108B6D: ' Referenced from: 1108864
  loc_1108B73: Call 0.Method_arg_50 (var_9C, Cancel, global_100, var_B4, var_130, var_F8, var_D8)
  loc_1108B88: Proc_183_57_104AA84(var_9C, "FGrid_KeyDown", var_120, global_98)
  loc_1108B94: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E5FBB0
  'Data Table: 50BA98
  loc_E5FB6C: On Error Goto loc_E5FB86
  loc_E5FB78: Call FGrid_UnknownEvent_C()
  loc_E5FB82: global_100 = 0
  loc_E5FB85: Exit Sub
  loc_E5FB86: ' Referenced from: E5FB6C
  loc_E5FB8C: Call 0.Method_arg_50 (var_8C, global_100)
  loc_E5FBA1: Proc_183_57_104AA84(var_8C, "FGrid_DblClick")
  loc_E5FBAD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F66440
  'Data Table: 50BA98
  Dim var_9C As Long
  loc_F66320: On Error Goto loc_F66416
  loc_F66336: var_9C = CLng(Me.FGrid.Col)
  loc_F66346: If Not (var_9C = CLng(3)) Then
  loc_F66350:   If Not (var_9C = CLng(1)) Then
  loc_F6635A:     If (var_9C = CLng(2)) Then
  loc_F6635D:     End If
  loc_F6635D:   End If
  loc_F66396:   Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F663AB: Else
  loc_F663B2:   If (var_9C = CLng(4)) Then
  loc_F663EE:     Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F66400:   End If
  loc_F66400: End If
  loc_F6640A: If (CLng(Cancel) <> &HD) Then
  loc_F66412:   global_100 = &HFF
  loc_F66415: End If
  loc_F66415: Exit Sub
  loc_F66416: ' Referenced from: F66320
  loc_F6641C: Call 0.Method_arg_50 (var_B4, global_100, Cancel)
  loc_F66431: Proc_183_57_104AA84(var_B4, "FGrid_KeyPress", 0)
  loc_F6643D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104F318
  'Data Table: 50BA98
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Long
  loc_104F0BC: On Error Goto loc_104F2EF
  loc_104F0C3: Set var_8C = Me.TopCtrl1
  loc_104F0C9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104F0D1: var_A0 = CStr()
  loc_104F0E2: If (var_A0 = "Browse") Then
  loc_104F0E5:   Exit Sub
  loc_104F0E6: End If
  loc_104F103: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104F106:   Exit Sub
  loc_104F107: End If
  loc_104F118: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104F13A:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104F174:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_104F196:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104F1AC:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104F1B5:         Set var_114 = Me.FGrid
  loc_104F1D0:       Else
  loc_104F1E3:         Me.FGrid.Rows = 1
  loc_104F200:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_104F208:         Set var_114 = Me.FGrid
  loc_104F237:         Me.FGrid.FixedRows = 1
  loc_104F23F:       End If
  loc_104F264:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_104F26E:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_104F273:         var_E0 = 0
  loc_104F281:         var_9C = CVar(CStr(var_86)) 'String
  loc_104F289:         Set var_8C = Me.FGrid
  loc_104F28F:         LateIdCallSt
  loc_104F2A0:       Next var_118 'Integer
  loc_104F2A5:     End If
  loc_104F2A8:   Else
  loc_104F2C9:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_104F2D9:   End If
  loc_104F2DD:   Set var_8C = Me.FGrid
  loc_104F2EE: End If
  loc_104F2EE: Exit Sub
  loc_104F2EF: ' Referenced from: 104F0BC
  loc_104F2F5: Call 0.Method_arg_50 (var_A0)
  loc_104F30A: Proc_183_57_104AA84(var_A0, "FGrid_KeyUp")
  loc_104F316: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F554
  'Data Table: 50BA98
  Dim var_8C As TextBox
  loc_E3F533: Set var_88 = Me.TxtGrid
  loc_E3F539: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F541: var_8C.Visible = False
  loc_E3F54D: Call Proc_207_61_F94DBC()
  loc_E3F552: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F7E584
  'Data Table: 50BA98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7E440: On Error Goto loc_F7E55A
  loc_F7E452: Me.DGVType.Visible = False
  loc_F7E471: If (Me.RecordCount > 0) Then
  loc_F7E4B0:   Set var_B4 = Me.Txt
  loc_F7E4B6:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F7E4BE:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7E4F1:   var_B0 = Me.Fields.Item("Name")
  loc_F7E502:   var_CC = CStr(var_B0.Value)
  loc_F7E510:   Set var_B4 = Me.Txt
  loc_F7E516:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F7E51E:   var_B8.Text = var_CC
  loc_F7E534: End If
  loc_F7E53F: Set var_A8 = Me.Txt
  loc_F7E545: Call 0.Method_DGVType_UnknownEvent_90 (CInt(2))
  loc_F7E54D: var_B0.SetFocus
  loc_F7E559: Exit Sub
  loc_F7E55A: ' Referenced from: F7E440
  loc_F7E560: Call 0.Method_arg_50 (var_CC)
  loc_F7E575: Proc_183_57_104AA84(var_CC, "DGVType_Click")
  loc_F7E581: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FC766C
  'Data Table: 50BA98
  Dim var_94 As TextBox
  loc_FC74BC: On Error Goto loc_FC7643
  loc_FC74D4: var_88 = "ADD"
  loc_FC74E2: Call Proc_207_60_EB1BB8(Proc_5_1_100CB50(var_88, Me))
  loc_FC74ED: Call Proc_207_58_FA2654(global_76)
  loc_FC74FD: Set var_8C = Me.Txt
  loc_FC7503: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_FC750B: var_94.SetFocus
  loc_FC7525: Set var_8C = Me.Txt
  loc_FC752B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_FC7533: var_94.Text = "Manual"
  loc_FC754D: Set var_8C = Me.Txt
  loc_FC7553: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_FC755B: var_94.Text = "Yes"
  loc_FC7575: Set var_8C = Me.Txt
  loc_FC757B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_FC7583: var_94.Text = "Yes"
  loc_FC759D: Set var_8C = Me.Txt
  loc_FC75A3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_94)
  loc_FC75AB: var_94.Text = "Yes"
  loc_FC75C5: Set var_8C = Me.Txt
  loc_FC75CB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_FC75D3: var_94.Text = "Yes"
  loc_FC75ED: Set var_8C = Me.Txt
  loc_FC75F3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_94)
  loc_FC75FB: var_94.Text = "Yes"
  loc_FC762A: LateIdCallSt
  loc_FC7638: Call Proc_207_64_ECB7EC(Me.FGrid, CVar(CStr(1)), CVar(CLng(4)))
  loc_FC763D: Call Proc_207_65_12EAD1C(1)
  loc_FC7642: Exit Sub
  loc_FC7643: ' Referenced from: FC74BC
  loc_FC7649: Call 0.Method_arg_50 (var_88)
  loc_FC765E: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_FC766A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECE888
  'Data Table: 50BA98
  loc_ECE7EC: On Error Goto loc_ECE85D
  loc_ECE826: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECE83E:   var_108 = "INI"
  loc_ECE84C:   Call Proc_207_60_EB1BB8(Proc_5_1_100CB50(var_108, Me))
  loc_ECE857:   Call Proc_207_59_1727C88(global_76)
  loc_ECE85C: End If
  loc_ECE85C: Exit Sub
  loc_ECE85D: ' Referenced from: ECE7EC
  loc_ECE863: Call 0.Method_arg_50 (var_108)
  loc_ECE86B: var_118 = "TopCtrl1_eCancel"
  loc_ECE878: Proc_183_57_104AA84(var_108)
  loc_ECE884: Exit Sub
  loc_ECE886: Error
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11BE8B4
  'Data Table: 50BA98
  Dim Me As Recordset15
  Dim unk_50BAC1 As Connection15
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_CC As String
  loc_11BE484: On Error Goto loc_11BE87F
  loc_11BE4CE: If (Proc_7_3_F61A94(CStr(Me.Fields.Item("V_Type").Value)) = &HFF) Then
  loc_11BE4F2:   MsgBox("Transactions Exist For this Voucher Type,Can't Delete it", &H10, "Voucher Type Validation", var_10C, var_12C)
  loc_11BE502:   Exit Sub
  loc_11BE503: End If
  loc_11BE53A: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_10C, var_12C) = 6) Then
  loc_11BE546:   unk_50BAC1.BeginTrans var_130
  loc_11BE55C:   var_94 = Me.Bookmark 'Variant
  loc_11BE5B2:   var_12C = "Delete From Voucher_Prefix Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_11BE5DC:   unk_50BAC1.Execute CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_1B0, -1
  loc_11BE652:   var_12C = "Delete From Voucher_Include Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_11BE67C:   unk_50BAC1.Execute CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_1B0, -1
  loc_11BE6F2:   var_12C = "Delete From Voucher_Exclude Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_11BE71C:   unk_50BAC1.Execute CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_1B0, -1
  loc_11BE792:   var_12C = "Delete From Voucher_Type Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_11BE7B2:   var_CC = CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'")
  loc_11BE7BC:   unk_50BAC1.Execute var_CC, var_1B0, -1
  loc_11BE7E6:   unk_50BAC1.CommitTrans
  loc_11BE7F6:   Me.Requery -1
  loc_11BE816:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11BE823:     Me.Bookmark = var_94
  loc_11BE82B:   Else
  loc_11BE83F:     If (Me.EOF = 0) Then
  loc_11BE848:       Me.MoveLast
  loc_11BE84D:     End If
  loc_11BE84D:   End If
  loc_11BE84D:   Call Proc_207_59_1727C88(var_1B4, var_1B4)
  loc_11BE86E:   Proc_5_0_110649C(&HFF, Me, global_76)
  loc_11BE876: End If
  loc_11BE87B: Set var_A0 = Nothing
  loc_11BE87E: Exit Sub
  loc_11BE87F: ' Referenced from: 11BE484
  loc_11BE885: unk_50BAC1.RollbackTrans
  loc_11BE890: Call 0.Method_arg_50 (var_CC, 0)
  loc_11BE8A5: Proc_183_57_104AA84(var_CC, "TopCtrl1_eDel")
  loc_11BE8B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F98774
  'Data Table: 50BA98
  Dim var_94 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F9860C: On Error Goto loc_F9874B
  loc_F98632: Call Proc_207_60_EB1BB8(Proc_5_1_100CB50("EDIT", Me))
  loc_F9864B: Set var_8C = Me.Txt
  loc_F98651: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F98659: var_88 = var_94.Text
  loc_F98664: global_92 = var_88
  loc_F9868F: Set var_94 = Me.FGrid
  loc_F986B8: Set var_8C = Me.Txt
  loc_F986BE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94, 0)
  loc_F986C6: var_94.Enabled = FGrid.DispID_10000
  loc_F986DF: Set var_8C = Me.Txt
  loc_F986E5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94, 0)
  loc_F986ED: var_94.Enabled = CVar(CStr(CLng(Me.FGrid.Rows)))
  loc_F98706: Set var_8C = Me.Txt
  loc_F9870C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F98714: var_94.Enabled = False
  loc_F9872B: Set var_8C = Me.Txt
  loc_F98731: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F98739: var_94.SetFocus
  loc_F98745: Call Proc_207_65_12EAD1C(global_76)
  loc_F9874A: Exit Sub
  loc_F9874B: ' Referenced from: F9860C
  loc_F98751: Call 0.Method_arg_50 (var_88)
  loc_F98759: var_CC = "TopCtrl1_eEdit"
  loc_F98766: Proc_183_57_104AA84(var_88)
  loc_F98772: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A0B8
  'Data Table: 50BA98
  loc_E1A0AD: Me.Global.Unload Me
  loc_E1A0B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F04324
  'Data Table: 50BA98
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F04250: On Error Goto loc_F042FC
  loc_F0426A: If (Me.RecordCount <= 0) Then
  loc_F04273:   var_B8 = "Information"
  loc_F0428E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F0429E:   Exit Sub
  loc_F0429F: End If
  loc_F042A6: var_10C = "Select V.V_Type as SearchCode,V.Category,V.NCat,V.Description,V.V_Type,V.Short_Name,V.Number_Method,V.Separate_Narr,V.Common_Narr,V.Narration,V.ChqNo,V.ChqDt,V.ClgDt From Voucher_Type V WHERE SITE_CODE='" & MemVar_1F92070
  loc_F042BB: MemVar_1F920E4 = var_10C & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' Order by V.V_Type"
  loc_F042CE: MemVar_1F92120 = Me
  loc_F042D5: var_10C = "2000,2000,1000,1000,1000,1000,1000,1000,1000"
  loc_F042DB: Proc_6_126_F1BCC0(var_10C)
  loc_F042F6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F042FB: Exit Sub
  loc_F042FC: ' Referenced from: F04250
  loc_F04302: Call 0.Method_arg_50 (var_10C)
  loc_F04317: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_F04323: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E79B84
  'Data Table: 50BA98
  loc_E79B2C: On Error Goto loc_E79B59
  loc_E79B4B: Proc_5_0_110649C(&HFF, Me)
  loc_E79B53: Call Proc_207_59_1727C88(global_76)
  loc_E79B58: Exit Sub
  loc_E79B59: ' Referenced from: E79B2C
  loc_E79B5F: Call 0.Method_arg_50 (var_94)
  loc_E79B74: Proc_183_57_104AA84(var_94, "TopCtrl1_eFirst")
  loc_E79B80: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7AA5C
  'Data Table: 50BA98
  loc_E7AA04: On Error Goto loc_E7AA31
  loc_E7AA23: Proc_5_0_110649C(&HFF, Me)
  loc_E7AA2B: Call Proc_207_59_1727C88(global_76)
  loc_E7AA30: Exit Sub
  loc_E7AA31: ' Referenced from: E7AA04
  loc_E7AA37: Call 0.Method_arg_50 (var_94)
  loc_E7AA4C: Proc_183_57_104AA84(var_94, "TopCtrl1_eLast")
  loc_E7AA58: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7AAF4
  'Data Table: 50BA98
  loc_E7AA9C: On Error Goto loc_E7AAC9
  loc_E7AABB: Proc_5_0_110649C(&HFF, Me)
  loc_E7AAC3: Call Proc_207_59_1727C88(global_76)
  loc_E7AAC8: Exit Sub
  loc_E7AAC9: ' Referenced from: E7AA9C
  loc_E7AACF: Call 0.Method_arg_50 (var_94)
  loc_E7AAE4: Proc_183_57_104AA84(var_94, "TopCtrl1_eNext")
  loc_E7AAF0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E7B214
  'Data Table: 50BA98
  loc_E7B1BC: On Error Goto loc_E7B1E9
  loc_E7B1DB: Proc_5_0_110649C(&HFF, Me)
  loc_E7B1E3: Call Proc_207_59_1727C88(global_76)
  loc_E7B1E8: Exit Sub
  loc_E7B1E9: ' Referenced from: E7B1BC
  loc_E7B1EF: Call 0.Method_arg_50 (var_94)
  loc_E7B204: Proc_183_57_104AA84(var_94, "TopCtrl1_ePrev")
  loc_E7B210: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E7B6D8
  'Data Table: 50BA98
  Dim Me As Recordset15
  loc_E7B67C: On Error Goto loc_E7B6B0
  loc_E7B68A: Me.Requery -1
  loc_E7B69A: Me.Requery -1
  loc_E7B6AA: Me.Requery -1
  loc_E7B6AF: Exit Sub
  loc_E7B6B0: ' Referenced from: E7B67C
  loc_E7B6B6: Call 0.Method_arg_50 (var_88)
  loc_E7B6BE: var_90 = "TopCtrl1_eRef"
  loc_E7B6CB: Proc_183_57_104AA84(var_88)
  loc_E7B6D7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16CD9C0
  'Data Table: 50BA98
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_C4 As String
  Dim var_124 As Variant
  Dim var_15C As Variant
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim unk_50BAC1 As Connection15
  Dim var_8A As Integer
  Dim var_168 As String
  Dim var_16C As String
  Dim var_170 As String
  Dim var_180 As Variant
  Dim var_188 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1C4 As String
  Dim var_1BC As TextBox
  Dim var_1D0 As String
  Dim var_1E0 As TextBox
  Dim var_1F0 As String
  Dim var_20C As String
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_214 As TextBox
  Dim var_260 As TextBox
  Dim var_274 As Variant
  Dim var_2BC As Variant
  Dim var_2EC As Variant
  Dim var_31C As Variant
  Dim var_34C As Variant
  Dim var_36C As Variant
  Dim var_238 As Variant
  Dim var_284 As Variant
  Dim var_2CC As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_3E8 As Variant
  Dim var_184 As MSHFlexGrid
  Dim var_5A0 As Double
  Dim var_390 As Variant
  Dim var_4E8 As Variant
  Dim var_508 As Variant
  Dim Me As Recordset15
  loc_16CC0E8: On Error Goto loc_16CD982
  loc_16CC0F6: Set var_B8 = Me.Txt
  loc_16CC0FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16CC125: If (Proc_183_19_E8DAFC(var_BC, "Category") = 0) Then
  loc_16CC128:   Exit Sub
  loc_16CC129: End If
  loc_16CC134: Set var_B8 = Me.Txt
  loc_16CC13A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC)
  loc_16CC163: If (Proc_183_19_E8DAFC(var_BC, "Voucher Type") = 0) Then
  loc_16CC166:   Exit Sub
  loc_16CC167: End If
  loc_16CC172: Set var_B8 = Me.Txt
  loc_16CC178: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC)
  loc_16CC189: Set var_C0 = var_BC
  loc_16CC1A1: If (Proc_183_19_E8DAFC(var_C0, "Description") = 0) Then
  loc_16CC1A4:   Exit Sub
  loc_16CC1A5: End If
  loc_16CC1A5: var_D4 = 1
  loc_16CC1CB: var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_16CC1DC: If (var_C4 = vbNullString) Then
  loc_16CC1E5:   Call 0.Method_arg_50 (var_C4, CVar(CLng(5)))
  loc_16CC1F3:   var_124 = CVar(var_C4) 'String
  loc_16CC206:   MsgBox("Please Fill Voucher Type Detail", &H40, var_124, var_134, var_144)
  loc_16CC229:   Me.FGrid.Row = 1
  loc_16CC235:   Set var_B8 = Me.FGrid
  loc_16CC246:   Exit Sub
  loc_16CC247: End If
  loc_16CC26C: For var_148 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_148 'Integer
  loc_16CC276:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CC27E:   var_F4 = CVar(CLng(5)) 'Long
  loc_16CC2A9:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_16CC2AC:     var_D4 = 1
  loc_16CC2B8:     var_F4 = CVar(CLng(1)) 'Long
  loc_16CC2E3:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CC2FF:       MsgBox("From Date is a Required Field", 0, var_124, var_134, var_144)
  loc_16CC313:       Set var_B8 = Me.FGrid
  loc_16CC324:       Exit Sub
  loc_16CC325:     End If
  loc_16CC325:     var_D4 = 1
  loc_16CC331:     var_F4 = CVar(CLng(2)) 'Long
  loc_16CC35C:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CC378:       MsgBox("To Date is a Required Field", 0, var_124, var_134, var_144)
  loc_16CC38C:       Set var_B8 = Me.FGrid
  loc_16CC39D:       Exit Sub
  loc_16CC39E:     End If
  loc_16CC39E:     var_D4 = 1
  loc_16CC3AA:     var_F4 = CVar(CLng(3)) 'Long
  loc_16CC3D5:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CC3F1:       MsgBox("Prefix is a Required Field", 0, var_124, var_134, var_144)
  loc_16CC405:       Set var_B8 = Me.FGrid
  loc_16CC416:       Exit Sub
  loc_16CC417:     End If
  loc_16CC41A:   Else
  loc_16CC41E:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CC426:     var_F4 = CVar(CLng(5)) 'Long
  loc_16CC451:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CC458:       var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CC461:       Set var_B8 = Me.FGrid
  loc_16CC472:     End If
  loc_16CC472:   End If
  loc_16CC475: Next var_148 'Integer
  loc_16CC49F: For var_14C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_14C 'Integer
  loc_16CC4A9:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CC4B1:   var_F4 = CVar(CLng(3)) 'Long
  loc_16CC4F7:   var_96 = 0
  loc_16CC523:   For var_160 = (var_92 + 1) To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_160 'Integer
  loc_16CC52D:     var_D4 = CVar(CLng(var_94)) 'Long
  loc_16CC535:     var_F4 = CVar(CLng(3)) 'Long
  loc_16CC55E:     var_134 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_16CC581:     If (CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = CStr(var_134)) Then
  loc_16CC58A:       var_96 = (var_96 + 1)
  loc_16CC58D:     End If
  loc_16CC593:     If (var_96 > 1) Then
  loc_16CC5B7:       MsgBox("Duplicate Voucher Prefix ", &H40, "Grid Validation", var_134, var_144)
  loc_16CC5CB:       Set var_B8 = Me.FGrid
  loc_16CC5DC:       Exit Sub
  loc_16CC5DD:     End If
  loc_16CC5E0:   Next var_160 'Integer
  loc_16CC5E8: Next var_14C 'Integer
  loc_16CC5FB: Set var_B8 = Me.Txt
  loc_16CC601: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_BC)
  loc_16CC63C: var_A4 = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CC662: Set var_B8 = Me.Txt
  loc_16CC668: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_BC)
  loc_16CC6A3: var_A8 = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CC6C9: Set var_B8 = Me.Txt
  loc_16CC6CF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_BC)
  loc_16CC70A: var_AC = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CC730: Set var_B8 = Me.Txt
  loc_16CC736: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_BC)
  loc_16CC771: var_B0 = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CC797: Set var_B8 = Me.Txt
  loc_16CC79D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_BC)
  loc_16CC7A5: var_C4 = var_BC.Text
  loc_16CC7D8: var_B4 = CStr(IIf((var_C4 = "Yes"), "Y", "N"))
  loc_16CC7F9: unk_50BAC1.BeginTrans var_164
  loc_16CC821: Set var_B8 = Me.Txt
  loc_16CC827: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, "Delete From Voucher_Prefix Where V_Type='")
  loc_16CC82F: var_114 = var_BC.Text
  loc_16CC838: var_168 = -1 & var_C4
  loc_16CC864: unk_50BAC1.Execute var_168 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C0, &HFF
  loc_16CC8A4: Set var_B8 = Me.Txt
  loc_16CC8AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, "Delete From Voucher_Include Where V_Type='")
  loc_16CC8B2: var_114 = var_BC.Text
  loc_16CC8BB: var_168 = -1 & var_C4
  loc_16CC8E7: unk_50BAC1.Execute var_168 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C0, 
  loc_16CC927: Set var_B8 = Me.Txt
  loc_16CC92D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, "Delete From Voucher_Exclude Where V_Type='")
  loc_16CC935: var_114 = var_BC.Text
  loc_16CC93E: var_168 = -1 & var_C4
  loc_16CC945: var_16C = var_168 & "' AND SITE_CODE='"
  loc_16CC96A: unk_50BAC1.Execute var_16C & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C0, 
  loc_16CC990: Set var_B8 = Me.TopCtrl1
  loc_16CC996: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16CC99E: var_C4 = CStr()
  loc_16CC9AF: If (var_C4 = "Add") Then
  loc_16CC9D0:   Set var_B8 = Me.Txt
  loc_16CC9D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_C4, "Insert Into Voucher_Type(Category,NCat,V_Type,Description,Short_Name,Number_Method,Separate_Narr,Common_Narr,Narration,ChqNo,ChqDt,ClgDt,U_Name,U_EntDt,U_AE,DefaultCrAC,DefaultDrAC,FirstDrCr,SITE_CODE,LOGSITE_CODE) Values ('")
  loc_16CC9DE:   var_390 = var_BC.Text
  loc_16CC9E7:   var_168 = -1 & var_C4
  loc_16CC9EE:   var_170 = var_168 & "','"
  loc_16CC9FF:   Set var_C0 = Me.Txt
  loc_16CCA05:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_180, var_16C)
  loc_16CCA0D:   var_170 = var_180.Text
  loc_16CCA2E:   Set var_184 = Me.Txt
  loc_16CCA34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_16CCA5D:   Set var_190 = Me.Txt
  loc_16CCA63:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_194)
  loc_16CCA8C:   Set var_1A4 = Me.Txt
  loc_16CCA92:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_16CCABB:   Set var_1B8 = Me.Txt
  loc_16CCAC1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_16CCAE0:   var_1D0 = var_394 & var_16C & "','" & var_188.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','" & var_1BC.Text & "','" & var_A4
  loc_16CCB06:   Set var_1DC = Me.Txt
  loc_16CCB0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1E0)
  loc_16CCB55:   var_20C = var_1D0 & "','" & var_A8 & "','" & var_1E0.Text & "','" & var_AC & "','" & var_B0 & "','" & var_B4 & "','" & MemVar_1F920C8
  loc_16CCB6A:   Proc_183_7_EB0C44(var_114, MemVar_1F920EC)
  loc_16CCB8D:   Set var_210 = Me.Txt
  loc_16CCB93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_214)
  loc_16CCBA9:   Proc_183_9_EAA760(var_238, CVar(var_214.Tag))
  loc_16CCBCC:   Set var_25C = Me.Txt
  loc_16CCBD2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_260)
  loc_16CCBE8:   Proc_183_9_EAA760(var_284, CVar(var_260.Tag))
  loc_16CCC08:   Set var_2A8 = Me.Txt
  loc_16CCC0E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_2AC)
  loc_16CCC1D:   Proc_183_9_EAA760(var_2CC, CVar(var_2AC))
  loc_16CCC4B:   var_34C = CVar(var_20C & "',") & var_114 & ",'A'," & var_238 & "," & var_284 & "," & var_2CC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_16CCC62:   unk_50BAC1.Execute CStr(var_34C & "')"), , 
  loc_16CCD07: Else
  loc_16CCD25:   Set var_B8 = Me.Txt
  loc_16CCD2B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_BC, var_C4, "Update Voucher_Type Set DefaultCrAC='")
  loc_16CCD33:   var_2EC = var_BC.Tag
  loc_16CCD3C:   var_168 = -1 & var_C4
  loc_16CCD43:   var_170 = var_168 & "',DefaultDrAC='"
  loc_16CCD54:   Set var_C0 = Me.Txt
  loc_16CCD5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_180, var_16C)
  loc_16CCD62:   var_170 = var_180.Tag
  loc_16CCD83:   Set var_184 = Me.Txt
  loc_16CCD89:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_188)
  loc_16CCDB2:   Set var_190 = Me.Txt
  loc_16CCDB8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_194)
  loc_16CCDE1:   Set var_1A4 = Me.Txt
  loc_16CCDE7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_16CCDFF:   var_1C4 = var_25C & var_16C & "',FirstDrCr='" & var_188.Text & "',Description='" & var_194.Text & "',Short_Name='" & var_1A8.Text & "',Number_Method='"
  loc_16CCE10:   Set var_1B8 = Me.Txt
  loc_16CCE16:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_16CCE5B:   Set var_1DC = Me.Txt
  loc_16CCE61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1E0)
  loc_16CCE79:   var_1F0 = var_1C4 & var_1BC.Text & "',Separate_Narr='" & var_A4 & "',Common_Narr='" & var_A8 & "',Narration='" & var_1E0.Text & "',ChqNo='"
  loc_16CCEB1:   var_124 = CVar(var_1F0 & var_AC & "',ChqDt='" & var_B0 & "',ClgDt='" & var_B4 & "',U_Name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_16CCEBF:   Proc_183_7_EB0C44(var_114, MemVar_1F920EC)
  loc_16CCED0:   var_144 = var_124 & var_114 & ",U_AE='E',SITE_CODE='" 
  loc_16CCF08:   Set var_210 = Me.Txt
  loc_16CCF0E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_214)
  loc_16CCF21:   var_284 = var_144 & CVar(MemVar_1F92070) & "',LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' Where V_Type='" & CVar(var_214.Text) 
  loc_16CCF5E:   unk_50BAC1.Execute CStr(var_284 & "' AND SITE_CODE='" & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), , 
  loc_16CCFF0: End If
  loc_16CD015: For var_3B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_3B8 'Integer
  loc_16CD01F:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD024:   var_F4 = 1
  loc_16CD042:   var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_16CD04E:   var_15C = CVar(CLng(var_92)) 'Long
  loc_16CD053:   var_31C = 2
  loc_16CD0C5:   If (3 And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_16CD0E3:     var_114 = Me.FGrid.TextMatrix)
  loc_16CD0FB:     var_31C = CVar(CLng(1)) 'Long
  loc_16CD11B:     Proc_183_7_EB0C44(var_144, CVar(CStr(Me.FGrid.TextMatrix))), var_31C, CVar(CLng(var_92)), var_114, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_16CD14C:     Proc_183_7_EB0C44(var_284, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_92)), CVar(CLng(var_92)), (var_31C And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)))
  loc_16CD155:     var_3E8 = CVar(CLng(var_92)) 'Long
  loc_16CD16C:     var_2BC = Me.FGrid.TextMatrix)
  loc_16CD1A6:     var_5A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16CD1B4:     Proc_183_7_EB0C44(var_548, MemVar_1F920EC, var_5A0, CVar(CLng(4)), CVar(CLng(var_92)), var_2BC, CVar(CLng(3)))
  loc_16CD1D1:     var_168 = "Insert Into Voucher_Prefix(V_Type,Date_From,Date_To,Prefix,Start_Srl_No,SITE_CODE,LOGSITE_CODE,U_Name,U_EntDt,U_AE) Values ('" & CStr(var_114)
  loc_16CD229:     var_36C = CVar(var_168 & "',") & var_144 & "," & var_284 & ",'" & CVar(CStr(var_2BC)) & "'," & CVar(var_5A0) & ",'" & CVar(MemVar_1F92070) 
  loc_16CD232:     var_390 = var_36C & "','" 
  loc_16CD24F:     var_508 = var_390 & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) 
  loc_16CD276:     unk_50BAC1.Execute CStr(var_508 & "'," & var_548 & ",'A')"), var_598, -1
  loc_16CD2D2:   End If
  loc_16CD2D5: Next var_3B8 'Integer
  loc_16CD2FF: For var_5A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_92 = var_5A4 'Integer
  loc_16CD309:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD30E:   var_F4 = 1
  loc_16CD32C:   var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_16CD338:   var_15C = CVar(CLng(var_92)) 'Long
  loc_16CD34A:   Set var_BC = Me.FGrid1
  loc_16CD3AF:   If (CVar(CLng(var_92)) And (3 Or (CStr(Me.FGrid1.TextMatrix)) <> vbNullString))) Then
  loc_16CD3C0:     Set var_B8 = Me.Txt
  loc_16CD3C6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, (CStr(var_BC.TextMatrix)) <> vbNullString), 2)
  loc_16CD3CE:     var_15C = var_BC.Text
  loc_16CD3D7:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD3DF:     var_F4 = CVar(CLng(4)) 'Long
  loc_16CD3FE:     var_15C = CVar(CLng(var_92)) 'Long
  loc_16CD415:     var_124 = Me.FGrid1.TextMatrix)
  loc_16CD46A:     var_274 = Me.FGrid1.TextMatrix)
  loc_16CD4AF:     Proc_183_7_EB0C44(var_390, MemVar_1F920EC, var_274, CVar(CLng(3)), CVar(CLng(var_92)), var_124, CVar(CLng(2)))
  loc_16CD4CF:     var_16C = "Insert Into Voucher_include(V_Type,GroupCode,DR,CR,SITE_CODE,LOGSITE_CODE,U_Name,U_EntDt,U_AE) Values ('" & var_C4 & "','"
  loc_16CD4F7:     var_2BC = CVar(var_16C & CStr(Me.FGrid1.TextMatrix)) & "','") & IIf((CStr(var_124) = "ü"), "Y", "N") & "','" & IIf((CStr(var_274) = "ü"), "Y", "N") 
  loc_16CD549:     var_4E8 = var_2BC & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_390 & ",'A')" 
  loc_16CD557:     unk_50BAC1.Execute CStr(var_4E8), var_508, -1
  loc_16CD5B5:   End If
  loc_16CD5B8: Next var_5A4 'Integer
  loc_16CD5E2: For var_5A8 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_92 = var_5A8 'Integer
  loc_16CD5EC:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD5F1:   var_F4 = 1
  loc_16CD60F:   var_C4 = CStr(Me.FGrid2.TextMatrix))
  loc_16CD61B:   var_15C = CVar(CLng(var_92)) 'Long
  loc_16CD62D:   Set var_BC = Me.FGrid2
  loc_16CD692:   If (CVar(CLng(var_92)) And (3 Or (CStr(Me.FGrid2.TextMatrix)) <> vbNullString))) Then
  loc_16CD6A3:     Set var_B8 = Me.Txt
  loc_16CD6A9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, (CStr(var_BC.TextMatrix)) <> vbNullString), 2)
  loc_16CD6B1:     var_15C = var_BC.Text
  loc_16CD6BA:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD6C2:     var_F4 = CVar(CLng(4)) 'Long
  loc_16CD6E1:     var_15C = CVar(CLng(var_92)) 'Long
  loc_16CD6F8:     var_124 = Me.FGrid2.TextMatrix)
  loc_16CD74D:     var_274 = Me.FGrid2.TextMatrix)
  loc_16CD792:     Proc_183_7_EB0C44(var_390, MemVar_1F920EC, var_274, CVar(CLng(3)), CVar(CLng(var_92)), var_124, CVar(CLng(2)))
  loc_16CD7B2:     var_16C = "Insert Into Voucher_Exclude(V_Type,GroupCode,DR,CR,SITE_CODE,LOGSITE_CODE,U_Name,U_EntDt,U_AE) Values ('" & var_C4 & "','"
  loc_16CD7DA:     var_2BC = CVar(var_16C & CStr(Me.FGrid2.TextMatrix)) & "','") & IIf((CStr(var_124) = "ü"), "Y", "N") & "','" & IIf((CStr(var_274) = "ü"), "Y", "N") 
  loc_16CD82C:     var_4E8 = var_2BC & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_390 & ",'A')" 
  loc_16CD83A:     unk_50BAC1.Execute CStr(var_4E8), var_508, -1
  loc_16CD898:   End If
  loc_16CD89B: Next var_5A8 'Integer
  loc_16CD8A6: unk_50BAC1.CommitTrans
  loc_16CD8AD: var_8A = 0
  loc_16CD8BE: Set var_B8 = Me.Txt
  loc_16CD8C4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC)
  loc_16CD8E9: Me.Requery -1
  loc_16CD913: Me.Find "SearchCode ='" & var_BC.Text & "'", 0, 1
  loc_16CD923: Set var_B8 = Me.TopCtrl1
  loc_16CD929: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_16CD942: If (CStr(var_8A) = "Add") Then
  loc_16CD945:   Call TopCtrl1_UnknownEvent_A()
  loc_16CD94A:   Exit Sub
  loc_16CD94B: End If
  loc_16CD960: var_C4 = "INI"
  loc_16CD96E: Call Proc_207_60_EB1BB8(Proc_5_1_100CB50(var_C4, Me))
  loc_16CD97E: Set var_88 = Nothing
  loc_16CD981: Exit Sub
  loc_16CD982: ' Referenced from: 16CC0E8
  loc_16CD988: If (var_8A = &HFF) Then
  loc_16CD991:   unk_50BAC1.RollbackTrans
  loc_16CD996: End If
  loc_16CD99C: Call 0.Method_arg_50 (var_C4)
  loc_16CD9B1: Proc_183_57_104AA84(var_C4, "TopCtrl1_eSave")
  loc_16CD9BD: Exit Sub
End Sub

Private Sub DGNCat_UnknownEvent_9 'F7F090
  'Data Table: 50BA98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7EF4C: On Error Goto loc_F7F066
  loc_F7EF5E: Me.DGNCat.Visible = False
  loc_F7EF7D: If (Me.RecordCount > 0) Then
  loc_F7EFBC:   Set var_B4 = Me.Txt
  loc_F7EFC2:   Call 0.Method_DGNCat_UnknownEvent_90 (CInt(1), var_B8)
  loc_F7EFCA:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7EFFD:   var_B0 = Me.Fields.Item("Name")
  loc_F7F00E:   var_CC = CStr(var_B0.Value)
  loc_F7F01C:   Set var_B4 = Me.Txt
  loc_F7F022:   Call 0.Method_DGNCat_UnknownEvent_90 (CInt(1), var_B8)
  loc_F7F02A:   var_B8.Text = var_CC
  loc_F7F040: End If
  loc_F7F04B: Set var_A8 = Me.Txt
  loc_F7F051: Call 0.Method_DGNCat_UnknownEvent_90 (CInt(1))
  loc_F7F059: var_B0.SetFocus
  loc_F7F065: Exit Sub
  loc_F7F066: ' Referenced from: F7EF4C
  loc_F7F06C: Call 0.Method_arg_50 (var_CC)
  loc_F7F081: Proc_183_57_104AA84(var_CC, "DGNCat_Click")
  loc_F7F08D: Exit Sub
End Sub

Private Sub DGDR_UnknownEvent_9 'F7E0C8
  'Data Table: 50BA98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7DF84: On Error Goto loc_F7E09E
  loc_F7DF96: Me.DGDR.Visible = False
  loc_F7DFB5: If (Me.RecordCount > 0) Then
  loc_F7DFF4:   Set var_B4 = Me.Txt
  loc_F7DFFA:   Call 0.Method_DGDR_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F7E002:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7E035:   var_B0 = Me.Fields.Item("Name")
  loc_F7E046:   var_CC = CStr(var_B0.Value)
  loc_F7E054:   Set var_B4 = Me.Txt
  loc_F7E05A:   Call 0.Method_DGDR_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F7E062:   var_B8.Text = var_CC
  loc_F7E078: End If
  loc_F7E083: Set var_A8 = Me.Txt
  loc_F7E089: Call 0.Method_DGDR_UnknownEvent_90 (CInt(&HD))
  loc_F7E091: var_B0.SetFocus
  loc_F7E09D: Exit Sub
  loc_F7E09E: ' Referenced from: F7DF84
  loc_F7E0A4: Call 0.Method_arg_50 (var_CC)
  loc_F7E0B9: Proc_183_57_104AA84(var_CC, "DGDR_Click")
  loc_F7E0C5: Exit Sub
End Sub

Private Sub DGCR_UnknownEvent_9 'F7DC0C
  'Data Table: 50BA98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7DAC8: On Error Goto loc_F7DBE2
  loc_F7DADA: Me.DGCR.Visible = False
  loc_F7DAF9: If (Me.RecordCount > 0) Then
  loc_F7DB38:   Set var_B4 = Me.Txt
  loc_F7DB3E:   Call 0.Method_DGCR_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F7DB46:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7DB79:   var_B0 = Me.Fields.Item("Name")
  loc_F7DB8A:   var_CC = CStr(var_B0.Value)
  loc_F7DB98:   Set var_B4 = Me.Txt
  loc_F7DB9E:   Call 0.Method_DGCR_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F7DBA6:   var_B8.Text = var_CC
  loc_F7DBBC: End If
  loc_F7DBC7: Set var_A8 = Me.Txt
  loc_F7DBCD: Call 0.Method_DGCR_UnknownEvent_90 (CInt(&HC))
  loc_F7DBD5: var_B0.SetFocus
  loc_F7DBE1: Exit Sub
  loc_F7DBE2: ' Referenced from: F7DAC8
  loc_F7DBE8: Call 0.Method_arg_50 (var_CC)
  loc_F7DBFD: Proc_183_57_104AA84(var_CC, "DGCR_Click")
  loc_F7DC09: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F7E25C
  'Data Table: 50BA98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7E118: On Error Goto loc_F7E232
  loc_F7E12A: Me.DGCategory.Visible = False
  loc_F7E149: If (Me.RecordCount > 0) Then
  loc_F7E188:   Set var_B4 = Me.Txt
  loc_F7E18E:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F7E196:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7E1C9:   var_B0 = Me.Fields.Item("Name")
  loc_F7E1DA:   var_CC = CStr(var_B0.Value)
  loc_F7E1E8:   Set var_B4 = Me.Txt
  loc_F7E1EE:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F7E1F6:   var_B8.Text = var_CC
  loc_F7E20C: End If
  loc_F7E217: Set var_A8 = Me.Txt
  loc_F7E21D: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0))
  loc_F7E225: var_B0.SetFocus
  loc_F7E231: Exit Sub
  loc_F7E232: ' Referenced from: F7E118
  loc_F7E238: Call 0.Method_arg_50 (var_CC)
  loc_F7E24D: Proc_183_57_104AA84(var_CC, "DGCategory_Click")
  loc_F7E259: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBACF0
  'Data Table: 50BA98
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBAC5E: On Error Goto loc_EBACC7
  loc_EBAC67: Me.MoveFirst
  loc_EBAC81: var_8C = "SearchCode='" & MyValue
  loc_EBAC91: Me.Find var_8C & "'", 0, 1
  loc_EBACB9: Proc_5_0_110649C(&HFF, Me, global_76)
  loc_EBACC1: Call Proc_207_59_1727C88(0)
  loc_EBACC6: Exit Sub
  loc_EBACC7: ' Referenced from: EBAC5E
  loc_EBACCD: Call 0.Method_arg_50 (var_8C)
  loc_EBACE2: Proc_183_57_104AA84(var_8C, "SEARCHBACK")
  loc_EBACEE: Exit Sub
End Sub

Public Sub Proc_207_53_10D50C4
  'Data Table: 50BA98
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_50BAC1 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_140 As String
  loc_10D4DEC: On Error Goto loc_10D5095
  loc_10D4E06: If (Me.RecordCount = 0) Then
  loc_10D4E09:   Proc_207_53_10D50C4 = 
  loc_10D4E0F: End If
  loc_10D4E13: Set var_90 = Me.TopCtrl1
  loc_10D4E19: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D4E21: var_A4 = CStr()
  loc_10D4E32: If (var_A4 = "Add") Then
  loc_10D4E62:   Set var_90 = Me.Txt
  loc_10D4E68:   Call 0.Method_Proc_207_53_10D50C40 (CInt(2), var_A8, var_A4, "Select Count(*) From Voucher_Type Where V_Type='", var_A0, -1)
  loc_10D4EA5:   unk_50BAC1.Execute var_D8 & var_A4 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", 0, var_EC
  loc_10D4EB5:    = var_D8.Item()
  loc_10D4EBD:    = var_EC.Value
  loc_10D4EF2:   If (var_A8.Text.Fields > 0) Then
  loc_10D4F10:     var_A0 = "Duplicate Voucher Type"
  loc_10D4F16:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_10D4F31:     Set var_90 = Me.Txt
  loc_10D4F37:     Call 0.Method_Proc_207_53_10D50C40 (CInt(2))
  loc_10D4F3F:     var_A8.SetFocus
  loc_10D4F50:     Proc_207_53_10D50C4 = &HFF
  loc_10D4F56:   End If
  loc_10D4F59: Else
  loc_10D4F86:   Set var_90 = Me.Txt
  loc_10D4F8C:   Call 0.Method_Proc_207_53_10D50C40 (CInt(2), var_A8, var_A4, "Select Count(*) From Voucher_Type Where V_Type='", var_A0, -1)
  loc_10D4FCA:   var_140 = var_D8 & var_A4 & "' And V_Type <>'" & global_92 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_10D4FDA:   unk_50BAC1.Execute var_140 & "'", 0, var_EC
  loc_10D4FEA:    = var_D8.Item(var_A8)
  loc_10D4FF2:    = var_EC.Value
  loc_10D502B:   If (var_A8.Text.Fields > 0) Then
  loc_10D504F:     MsgBox("Duplicate Voucher Type", &H40, "Information", var_11C, var_13C)
  loc_10D506A:     Set var_90 = Me.Txt
  loc_10D5070:     Call 0.Method_Proc_207_53_10D50C40 (CInt(2))
  loc_10D5078:     var_A8.SetFocus
  loc_10D5089:     Proc_207_53_10D50C4 = &HFF
  loc_10D508F:   End If
  loc_10D508F: End If
  loc_10D508F: Proc_207_53_10D50C4 = var_A8
  loc_10D5095: ' Referenced from: 10D4DEC
  loc_10D509B: Call 0.Method_arg_50 (var_A4)
  loc_10D50B0: Proc_183_57_104AA84(var_A4)
  loc_10D50BC: Proc_207_53_10D50C4 = "Validate"
End Sub

Public Sub Proc_207_54_12DDF44(arg_C, arg_10) '12DDF44
  'Data Table: 50BA98
  Dim var_8A As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_A4 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_AC As TextBox
  Dim var_118 As Variant
  Dim var_B0 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_13C As Variant
  loc_12DD894: On Error Goto loc_12DDF14
  loc_12DD89A: var_8A = arg_C
  loc_12DD8A3: If (var_8A = 0) Then
  loc_12DD8B9:   var_A4 = CLng(Me.FGrid.Col)
  loc_12DD8C9:   If (var_A4 = CLng(3)) Then
  loc_12DD8CF:     Call Proc_207_56_FF36F4(var_A6, var_A4)
  loc_12DD8DA:     If (var_A6 = 0) Then
  loc_12DD8E2:       Proc_207_54_12DDF44 = 0
  loc_12DD8E8:     End If
  loc_12DD8FB:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DD913:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12DD924:     Set var_90 = Me.TxtGrid
  loc_12DD92A:     Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_B0)
  loc_12DD932:     var_F8 = var_AC.Text
  loc_12DD93A:     var_118 = CVar(var_B0) 'String
  loc_12DD942:     Set var_12C = Me.FGrid
  loc_12DD948:     LateIdCallSt
  loc_12DD994:     Set var_90 = Me.Txt
  loc_12DD99A:     Call 0.Method_Proc_207_54_12DDF440 (CInt(2), var_AC, var_B0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)))
  loc_12DD9A2:     var_12C = var_AC.Text
  loc_12DD9AA:     var_C8 = CVar(var_B0) 'String
  loc_12DD9B2:     Set var_B8 = Me.FGrid
  loc_12DD9B8:     LateIdCallSt
  loc_12DD9D5:   Else
  loc_12DD9DC:     If (var_A4 = CLng(4)) Then
  loc_12DD9EB:       Set var_90 = Me.TxtGrid
  loc_12DD9F1:       Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_B0, var_B8)
  loc_12DD9F9:       var_C8 = var_AC.Text
  loc_12DDA10:       If (var_B0 = vbNullString) Then
  loc_12DDA17:         var_B0 = CStr(0)
  loc_12DDA23:         Set var_90 = Me.TxtGrid
  loc_12DDA29:         Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_B0)
  loc_12DDA31:         var_AC.Text = var_118
  loc_12DDA40:       End If
  loc_12DDA53:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDA7C:       Set var_90 = Me.TxtGrid
  loc_12DDA82:       Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)))
  loc_12DDA8A:       var_D8 = var_AC.Text
  loc_12DDA92:       var_118 = CVar(var_B0) 'String
  loc_12DDA9A:       Set var_12C = Me.FGrid
  loc_12DDAA0:       LateIdCallSt
  loc_12DDAC1:     Else
  loc_12DDAC8:       If (var_A4 = CLng(1)) Then
  loc_12DDAD7:         Set var_90 = Me.TxtGrid
  loc_12DDADD:         Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_B0, var_12C)
  loc_12DDAE5:         var_118 = var_AC.Text
  loc_12DDB15:         If (Len(Trim(CVar(var_B0))) = 0) Then
  loc_12DDB2B:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDB33:           var_F8 = CVar(CLng(1)) 'Long
  loc_12DDB3D:           var_C8 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_12DDB45:           Set var_AC = Me.FGrid
  loc_12DDB4B:           LateIdCallSt
  loc_12DDB74:           var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDB7C:           var_108 = CVar(CLng(3)) 'Long
  loc_12DDB95:           var_118 = CVar(CStr(Year(MemVar_1F920EC))) 'String
  loc_12DDB9D:           Set var_AC = Me.FGrid
  loc_12DDBA3:           LateIdCallSt
  loc_12DDBBE:         Else
  loc_12DDBC7:           Set var_90 = Me.TxtGrid
  loc_12DDBCD:           Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_AC, var_118, var_108, var_E8)
  loc_12DDC07:           Call 0.Method_arg_184 (var_AC, var_B0, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_AC)
  loc_12DDC1D:           LateIdCallSt
  loc_12DDC40:           Set var_90 = Me.TxtGrid
  loc_12DDC46:           Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, Me.FGrid, CVar(var_B0), CVar(var_B0))
  loc_12DDC4F:           Set var_B8 = Me.FGrid
  loc_12DDC80:           Call 0.Method_arg_184 (var_AC, var_B0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_12DDC97:           var_13C = CVar(CStr(Year(CVar(var_B0)))) 'String
  loc_12DDCA5:           LateIdCallSt
  loc_12DDCC7:           Set var_B4 = Me.FGrid
  loc_12DDCF1:           Set var_90 = Me.Txt
  loc_12DDCF7:           Call 0.Method_Proc_207_54_12DDF440 (CInt(2), var_AC, var_B0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_12DDCFF:           var_13C = var_AC.Text
  loc_12DDD07:           var_C8 = CVar(var_B0) 'String
  loc_12DDD0F:           Set var_B8 = Me.FGrid
  loc_12DDD15:           LateIdCallSt
  loc_12DDD2F:         End If
  loc_12DDD32:       Else
  loc_12DDD39:         If (var_A4 = CLng(2)) Then
  loc_12DDD48:           Set var_90 = Me.TxtGrid
  loc_12DDD4E:           Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_B0, var_B8, var_C8)
  loc_12DDD56:           var_F8 = var_AC.Text
  loc_12DDD86:           If (Len(Trim(CVar(var_B0))) = 0) Then
  loc_12DDD9C:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDDA4:             var_F8 = CVar(CLng(2)) 'Long
  loc_12DDDAE:             var_C8 = CVar(CStr(MemVar_1F920FC)) 'String
  loc_12DDDB6:             Set var_AC = Me.FGrid
  loc_12DDDBC:             LateIdCallSt
  loc_12DDDD5:           Else
  loc_12DDDDE:             Set var_90 = Me.TxtGrid
  loc_12DDDE4:             Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, var_AC, var_C8, var_F8)
  loc_12DDE1E:             Call 0.Method_arg_184 (var_AC, var_B0, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_12DDE26:             var_C8 = CVar(var_B0) 'String
  loc_12DDE2E:             Set var_12C = Me.FGrid
  loc_12DDE34:             LateIdCallSt
  loc_12DDE4E:           End If
  loc_12DDE52:           Set var_B4 = Me.FGrid
  loc_12DDE61:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDE7C:           Set var_90 = Me.Txt
  loc_12DDE82:           Call 0.Method_Proc_207_54_12DDF440 (CInt(2), var_AC, var_B0, CVar(CLng(5)), var_D8, var_12C)
  loc_12DDE8A:           var_C8 = var_AC.Text
  loc_12DDE92:           var_C8 = CVar(var_B0) 'String
  loc_12DDE9A:           Set var_B8 = Me.FGrid
  loc_12DDEA0:           LateIdCallSt
  loc_12DDEBA:         End If
  loc_12DDEBA:       End If
  loc_12DDEBA:     End If
  loc_12DDEBA:   End If
  loc_12DDEBD: Else
  loc_12DDEC3:   If (var_8A = 1) Then
  loc_12DDEC6:   End If
  loc_12DDEC6: End If
  loc_12DDED1: If (arg_10 = 0) Then
  loc_12DDED8:   Set var_90 = Me.FGrid
  loc_12DDEF4:   Set var_90 = Me.TxtGrid
  loc_12DDEFA:   Call 0.Method_Proc_207_54_12DDF440 (0, var_AC, 0, FGrid.DispID_8001, &HFF, var_B8)
  loc_12DDF02:   var_AC.Visible = var_C8
  loc_12DDF0E: End If
  loc_12DDF0E: Proc_207_54_12DDF44 = var_D8
  loc_12DDF14: ' Referenced from: 12DD894
  loc_12DDF1A: Call 0.Method_arg_50 (var_B0, var_D8)
  loc_12DDF2F: Proc_183_57_104AA84(var_B0, "TxtGridLeave")
  loc_12DDF3B: Proc_207_54_12DDF44 = var_D8
End Sub

Public Sub Proc_207_55_109C9C0
  'Data Table: 50BA98
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  loc_109C710: On Error Goto loc_109C990
  loc_109C726: var_A0 = CLng(Me.FGrid1.Col)
  loc_109C736: If (var_A0 = CLng(1)) Then
  loc_109C759:   var_A6 = Me.EOF
  loc_109C786:   Set var_8C = Me.TxtGrid
  loc_109C78C:   Call 0.Method_Proc_207_55_109C9C00 (1, var_AC, var_B0)
  loc_109C794:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_109C7AC:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_109C7C2:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109C7CA:     var_E0 = CVar(CLng(1)) 'Long
  loc_109C7CF:     var_100 = vbNullString
  loc_109C7D9:     Set var_AC = Me.FGrid1
  loc_109C7DF:     LateIdCallSt
  loc_109C804:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109C80C:     var_E0 = CVar(CLng(4)) 'Long
  loc_109C811:     var_100 = vbNullString
  loc_109C81B:     Set var_AC = Me.FGrid1
  loc_109C821:     LateIdCallSt
  loc_109C836:   Else
  loc_109C839:     Call Proc_207_57_FF4F5C(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_109C844:     If (var_A6 = 0) Then
  loc_109C84C:       Proc_207_55_109C9C0 = 0
  loc_109C852:     End If
  loc_109C865:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109C86D:     var_F0 = CVar(CLng(1)) 'Long
  loc_109C8A0:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_109C8A8:     Set var_138 = Me.FGrid1
  loc_109C8AE:     LateIdCallSt
  loc_109C8DD:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109C8E5:     var_F0 = CVar(CLng(4)) 'Long
  loc_109C907:     var_AC = Me.Fields.Item("Code")
  loc_109C918:     var_134 = CVar(CStr(var_AC.Value)) 'String
  loc_109C920:     Set var_138 = Me.FGrid1
  loc_109C926:     LateIdCallSt
  loc_109C942:   End If
  loc_109C942: End If
  loc_109C94D: If (arg_10 = 0) Then
  loc_109C954:   Set var_8C = Me.FGrid1
  loc_109C970:   Set var_8C = Me.TxtGrid
  loc_109C976:   Call 0.Method_Proc_207_55_109C9C00 (1, var_AC, 0, FGrid1.DispID_8001, &HFF, var_138, var_134)
  loc_109C97E:   var_AC.Visible = var_F0
  loc_109C98A: End If
  loc_109C98A: Proc_207_55_109C9C0 = var_D0
  loc_109C990: ' Referenced from: 109C710
  loc_109C996: Call 0.Method_arg_50 (var_B0, var_138, var_134)
  loc_109C9AB: Proc_183_57_104AA84(var_B0, "TxtGridLeave1", var_F0)
  loc_109C9B7: Proc_207_55_109C9C0 = var_D0
  loc_109C9BD: ThisVCallI2
End Sub

Public Sub Proc_207_56_FF36F4
  'Data Table: 50BA98
  Dim var_98 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_E0 As Variant
  Dim var_B0 As TextBox
  loc_FF351C: On Error Goto loc_FF36C6
  loc_FF3542: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FF3547:   var_92 = 3 'Byte
  loc_FF354B: End If
  loc_FF3554: Set var_98 = Me.TxtGrid
  loc_FF355A: Call 0.Method_Proc_207_56_FF36F40 (0, var_B0)
  loc_FF3582: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_B0))))))
  loc_FF35BA: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E4 'Integer
  loc_FF35DE:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FF35E1:     GoTo loc_FF36B3
  loc_FF35E4:   End If
  loc_FF35E8:   var_F4 = CVar(CLng(var_88)) 'Long
  loc_FF3612:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FF361C:   var_E0 = CVar(CStr(var_D0)) 'String
  loc_FF3651:   If ((var_8C = CStr(Ucase(var_E0))) And (CStr(Ucase(var_E0)) <> vbNullString)) Then
  loc_FF3675:     MsgBox("Duplicate Prefix Not Allowed", &H40, "Validation", var_D0, var_E0)
  loc_FF368E:     Set var_98 = Me.TxtGrid
  loc_FF3694:     Call 0.Method_Proc_207_56_FF36F40 (0, var_B0, CVar(CLng(var_92)))
  loc_FF369C:     var_B0.SetFocus
  loc_FF36AD:     Proc_207_56_FF36F4 = 0
  loc_FF36B3:     ' Referenced from: FF35E1
  loc_FF36B3:   End If
  loc_FF36B6: Next var_E4 'Integer
  loc_FF36C0: Proc_207_56_FF36F4 = &HFF
  loc_FF36C6: ' Referenced from: FF351C
  loc_FF36CC: Call 0.Method_arg_50 (var_138)
  loc_FF36E1: Proc_183_57_104AA84(var_138)
  loc_FF36ED: Proc_207_56_FF36F4 = "ChkDuplicate"
End Sub

Public Sub Proc_207_57_FF4F5C
  'Data Table: 50BA98
  Dim var_98 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_E0 As Variant
  Dim var_B0 As TextBox
  loc_FF4D84: On Error Goto loc_FF4F2E
  loc_FF4DAA: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_FF4DAF:   var_92 = 1 'Byte
  loc_FF4DB3: End If
  loc_FF4DBC: Set var_98 = Me.TxtGrid
  loc_FF4DC2: Call 0.Method_Proc_207_57_FF4F5C0 (1, var_B0)
  loc_FF4DEA: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_B0))))))
  loc_FF4E22: For var_E4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_E4 'Integer
  loc_FF4E46:   If (CLng(var_88) = CLng(Me.FGrid1.Row)) Then
  loc_FF4E49:     GoTo loc_FF4F1B
  loc_FF4E4C:   End If
  loc_FF4E50:   var_F4 = CVar(CLng(var_88)) 'Long
  loc_FF4E7A:   var_D0 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_FF4E84:   var_E0 = CVar(CStr(var_D0)) 'String
  loc_FF4EB9:   If ((var_8C = CStr(Ucase(var_E0))) And (CStr(Ucase(var_E0)) <> vbNullString)) Then
  loc_FF4EDD:     MsgBox("Duplicate Group Name Not Allowed", &H40, "Validation", var_D0, var_E0)
  loc_FF4EF6:     Set var_98 = Me.TxtGrid
  loc_FF4EFC:     Call 0.Method_Proc_207_57_FF4F5C0 (1, var_B0, CVar(CLng(var_92)))
  loc_FF4F04:     var_B0.SetFocus
  loc_FF4F15:     Proc_207_57_FF4F5C = 0
  loc_FF4F1B:     ' Referenced from: FF4E49
  loc_FF4F1B:   End If
  loc_FF4F1E: Next var_E4 'Integer
  loc_FF4F28: Proc_207_57_FF4F5C = &HFF
  loc_FF4F2E: ' Referenced from: FF4D84
  loc_FF4F34: Call 0.Method_arg_50 (var_138)
  loc_FF4F49: Proc_183_57_104AA84(var_138)
  loc_FF4F55: Proc_207_57_FF4F5C = "ChkDuplicate1"
End Sub

Public Sub Proc_207_58_FA2654
  'Data Table: 50BA98
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_FA24D8: On Error Goto loc_FA262C
  loc_FA24E1: global_92 = vbNullString
  loc_FA24F3: Set var_8C = Me.Txt
  loc_FA24F9: Call 0.Method_Proc_207_58_FA2654C (var_8E, var_86)
  loc_FA2509: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FA251F:   Set var_8C = Me.Txt
  loc_FA2525:   Call 0.Method_Proc_207_58_FA26540 (CInt(var_86), var_98)
  loc_FA252D:   var_98.Text = vbNullString
  loc_FA2549:   Set var_8C = Me.Txt
  loc_FA254F:   Call 0.Method_Proc_207_58_FA26540 (CInt(var_86), var_98)
  loc_FA2557:   var_98.Tag = vbNullString
  loc_FA2566: Next var_92 'Byte
  loc_FA257A: Set var_8C = Me.Txt
  loc_FA2580: Call 0.Method_Proc_207_58_FA26540 (CInt(&HC), var_98)
  loc_FA2588: var_98.Tag = vbNullString
  loc_FA25A2: Set var_8C = Me.Txt
  loc_FA25A8: Call 0.Method_Proc_207_58_FA26540 (CInt(&HD), var_98)
  loc_FA25B0: var_98.Tag = vbNullString
  loc_FA25CF: Me.FGrid.Rows = 1
  loc_FA25EC: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FA25F4: Set var_98 = Me.FGrid
  loc_FA2623: Me.FGrid.FixedRows = 1
  loc_FA262B: Exit Sub
  loc_FA262C: ' Referenced from: FA24D8
  loc_FA2632: Call 0.Method_arg_50 (var_DC, FGrid.DispID_10000)
  loc_FA2647: Proc_183_57_104AA84(var_DC, "BlankText")
  loc_FA2653: Exit Sub
End Sub

Public Sub Proc_207_59_1727C88
  'Data Table: 50BA98
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_50BAC1 As Connection15
  Dim var_94 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Fields15
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_16C As Variant
  Dim var_1B4 As Variant
  Dim var_1D8 As String
  Dim var_128 As TextBox
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  loc_172604C: On Error Goto loc_1727C5D
  loc_17260A5: unk_50BAC1.Execute CStr("Select V_Type,U_AE,U_Name,U_Entdt From Voucher_Type Where V_Type='" & Me.Fields.Item("V_Type").Value & "'  "), var_120, -1
  loc_17260B0: Set var_94 = var_124
  loc_1726104: var_124 = var_94.Fields
  loc_172616D: var_18C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17261B2: Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("U_Name")), var_18C)))
  loc_172622C: var_128 = var_94.Fields.Item("U_AE")
  loc_172628D: var_18C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_17262B4: var_1B4 = CVar(var_94.Fields.Item("U_EntDt")) 'Address
  loc_17262D2: Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(var_1B4)))
  loc_1726321: If (Me.RecordCount > 0) Then
  loc_1726360:   Set var_124 = Me.Txt
  loc_1726366:   Call 0.Method_Proc_207_59_1727C880 (CInt(0), var_128)
  loc_172636E:   var_128.Text = CStr(Me.Fields.Item("Category").Value)
  loc_17263BD:   Set var_124 = Me.Txt
  loc_17263C3:   Call 0.Method_Proc_207_59_1727C880 (CInt(1), var_128)
  loc_17263CB:   var_128.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("NCat")))
  loc_172641B:   Set var_124 = Me.Txt
  loc_1726421:   Call 0.Method_Proc_207_59_1727C880 (CInt(2), var_128)
  loc_1726429:   var_128.Text = CStr(Me.Fields.Item("V_Type").Value)
  loc_172647B:   Set var_124 = Me.Txt
  loc_1726481:   Call 0.Method_Proc_207_59_1727C880 (CInt(3), var_128)
  loc_1726489:   var_128.Text = CStr(Me.Fields.Item("Description").Value)
  loc_17264D8:   Set var_124 = Me.Txt
  loc_17264DE:   Call 0.Method_Proc_207_59_1727C880 (CInt(4), var_128)
  loc_17264E6:   var_128.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Short_Name")))
  loc_1726533:   Set var_124 = Me.Txt
  loc_1726539:   Call 0.Method_Proc_207_59_1727C880 (CInt(5), var_128)
  loc_1726541:   var_128.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Number_Method")))
  loc_1726587:   If Not(IsNull(CVar(Me.Fields.Item("Separate_Narr")))) Then
  loc_17265A7:     var_AC = Me.Fields.Item("Separate_Narr")
  loc_17265F8:     Set var_124 = Me.Txt
  loc_17265FE:     Call 0.Method_Proc_207_59_1727C880 (CInt(6), var_128)
  loc_1726606:     var_128.Text = CStr(IIf((var_AC.Value = "Y"), "Yes", "No"))
  loc_1726629:   Else
  loc_1726637:     Set var_98 = Me.Txt
  loc_172663D:     Call 0.Method_Proc_207_59_1727C880 (CInt(6), var_AC)
  loc_1726645:     var_AC.Text = vbNullString
  loc_1726651:   End If
  loc_1726683:   If Not(IsNull(CVar(Me.Fields.Item("Common_Narr")))) Then
  loc_17266A3:     var_AC = Me.Fields.Item("Common_Narr")
  loc_17266F4:     Set var_124 = Me.Txt
  loc_17266FA:     Call 0.Method_Proc_207_59_1727C880 (CInt(7), var_128)
  loc_1726702:     var_128.Text = CStr(IIf((var_AC.Value = "Y"), "Yes", "No"))
  loc_1726725:   Else
  loc_1726733:     Set var_98 = Me.Txt
  loc_1726739:     Call 0.Method_Proc_207_59_1727C880 (CInt(7), var_AC)
  loc_1726741:     var_AC.Text = vbNullString
  loc_172674D:   End If
  loc_1726786:   Set var_124 = Me.Txt
  loc_172678C:   Call 0.Method_Proc_207_59_1727C880 (CInt(8), var_128)
  loc_1726794:   var_128.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Narration")))
  loc_17267DA:   If Not(IsNull(CVar(Me.Fields.Item("ChqNo")))) Then
  loc_17267FA:     var_AC = Me.Fields.Item("ChqNo")
  loc_172684B:     Set var_124 = Me.Txt
  loc_1726851:     Call 0.Method_Proc_207_59_1727C880 (CInt(9), var_128)
  loc_1726859:     var_128.Text = CStr(IIf((var_AC.Value = "Y"), "Yes", "No"))
  loc_172687C:   Else
  loc_172688A:     Set var_98 = Me.Txt
  loc_1726890:     Call 0.Method_Proc_207_59_1727C880 (CInt(7), var_AC)
  loc_1726898:     var_AC.Text = vbNullString
  loc_17268A4:   End If
  loc_1726912:   Set var_124 = Me.Txt
  loc_1726918:   Call 0.Method_Proc_207_59_1727C880 (CInt(&HA), var_128)
  loc_1726920:   var_128.Text = CStr(IIf((Me.Fields.Item("ChqDt").Value = "Y"), "Yes", "No"))
  loc_172697A:   var_120 = "Yes"
  loc_17269AE:   Set var_124 = Me.Txt
  loc_17269B4:   Call 0.Method_Proc_207_59_1727C880 (CInt(&HB), var_128)
  loc_17269BC:   var_128.Text = CStr(IIf((Me.Fields.Item("CLGDT").Value = "Y"), var_120, "No"))
  loc_1726A15:   Set var_124 = Me.Txt
  loc_1726A1B:   Call 0.Method_Proc_207_59_1727C880 (CInt(&HE), var_128)
  loc_1726A23:   var_128.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("FirstDrCr")))
  loc_1726A46:   Me.FGrid.Redraw = False
  loc_1726A61:   Me.FGrid.Rows = 1
  loc_1726A6B:   var_8E = 1
  loc_1726AA7:   Set var_124 = Me.Txt
  loc_1726AAD:   Call 0.Method_Proc_207_59_1727C880 (CInt(&HC), var_128)
  loc_1726AB5:   var_128.Tag = Proc_183_2_E5A304(CVar(Me.Fields.Item("DefaultCrAC")))
  loc_1726B02:   Set var_124 = Me.Txt
  loc_1726B08:   Call 0.Method_Proc_207_59_1727C880 (CInt(&HD), var_128)
  loc_1726B10:   var_128.Tag = Proc_183_2_E5A304(CVar(Me.Fields.Item("DefaultDrAC")))
  loc_1726B7A:   unk_50BAC1.Execute CStr("SELECT NAME FROM SUBGROUP WHERE SUBCODE='" & Me.Fields.Item("DefaultCrAC").Value & "'"), var_120, -1
  loc_1726B85:   Set var_88 = var_124
  loc_1726BB3:   If (var_88.RecordCount > 0) Then
  loc_1726BCD:     var_AC = var_88.Fields.Item("Name")
  loc_1726BEC:     Set var_124 = Me.Txt
  loc_1726BF2:     Call 0.Method_Proc_207_59_1727C880 (CInt(&HC), var_128)
  loc_1726BFA:     var_128.Text = Proc_183_2_E5A304(CVar(var_AC), var_124)
  loc_1726C11:   Else
  loc_1726C1F:     Set var_98 = Me.Txt
  loc_1726C25:     Call 0.Method_Proc_207_59_1727C880 (CInt(&HC), var_AC)
  loc_1726C2D:     var_AC.Text = vbNullString
  loc_1726C39:   End If
  loc_1726C8F:   unk_50BAC1.Execute CStr("SELECT NAME FROM SUBGROUP WHERE SUBCODE='" & Me.Fields.Item("DefaultDrAC").Value & "'"), var_120, -1
  loc_1726C9A:   Set var_88 = var_124
  loc_1726CC8:   If (var_88.RecordCount > 0) Then
  loc_1726CE2:     var_AC = var_88.Fields.Item("Name")
  loc_1726D01:     Set var_124 = Me.Txt
  loc_1726D07:     Call 0.Method_Proc_207_59_1727C880 (CInt(&HD), var_128)
  loc_1726D0F:     var_128.Text = Proc_183_2_E5A304(CVar(var_AC), var_124)
  loc_1726D26:   Else
  loc_1726D34:     Set var_98 = Me.Txt
  loc_1726D3A:     Call 0.Method_Proc_207_59_1727C880 (CInt(&HD), var_AC)
  loc_1726D42:     var_AC.Text = vbNullString
  loc_1726D4E:   End If
  loc_1726D8D:   var_DC = "Select V_Type,Date_From,Date_to,Prefix,Start_Srl_No From Voucher_Prefix Where V_Type='" & Me.Fields.Item("V_Type").Value 
  loc_1726DBC:   var_18C = var_DC & "' AND SITE_CODE='" & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' Order By Date_From" 
  loc_1726DCA:   unk_50BAC1.Execute CStr(var_18C), var_1B4, -1
  loc_1726DD5:   Set var_88 = var_124
  loc_1726E0B:   If (var_88.RecordCount > 0) Then
  loc_1726E0E:     ' Referenced from: 172702B
  loc_1726E1D:     If Not(var_88.EOF) Then
  loc_1726E20:       var_A8 = vbNullString
  loc_1726E2A:       Set var_98 = Me.FGrid
  loc_1726E3F:       Set var_1F0 = Me.FGrid
  loc_1726E46:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1726E58:       var_BC = CVar(CStr(var_8E)) 'String
  loc_1726E5F:       LateIdCallSt
  loc_1726EA3:       var_DC = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Prefix")), CVar(CLng(3)), CVar(CLng(var_8E)), var_1F0, CVar(var_88.Fields.Item("Prefix")), CVar(CLng(0)))) 'String
  loc_1726EAA:       LateIdCallSt
  loc_1726EF5:       var_DC = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Date_From")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1F0, var_DC)) 'String
  loc_1726EFC:       LateIdCallSt
  loc_1726F47:       var_DC = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Date_to")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1F0, var_DC)) 'String
  loc_1726F4E:       LateIdCallSt
  loc_1726F97:       Proc_183_3_E7D1C8(var_DC, CVar(var_88.Fields.Item("start_srl_no")), CVar(CLng(4)), CVar(CLng(var_8E)), var_1F0, var_DC)
  loc_1726FA0:       var_FC = CVar(CStr(var_DC)) 'String
  loc_1726FA7:       LateIdCallSt
  loc_1726FBF:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1726FC7:       var_110 = CVar(CLng(5)) 'Long
  loc_1726FF7:       var_DC = CVar(CStr(var_88.Fields.Item("V_Type").Value)) 'String
  loc_1726FFE:       LateIdCallSt
  loc_1727016:       Set var_1F0 = Nothing 
  loc_1727020:       var_8E = (var_8E + 1)
  loc_1727026:       var_88.MoveNext
  loc_172702B:       GoTo loc_1726E0E
  loc_172702E:     End If
  loc_1727041:     Me.FGrid.FixedRows = 1
  loc_1727049:   End If
  loc_1727057:   Me.FGrid.Redraw = True
  loc_1727065:   If (var_8E = 1) Then
  loc_172707B:     Me.FGrid.Rows = 1
  loc_1727098:     var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_17270A0:     Set var_AC = Me.FGrid
  loc_17270CF:     Me.FGrid.FixedRows = 1
  loc_17270D7:   End If
  loc_17270E6:   Me.FGrid1.Redraw = False
  loc_1727101:   Me.FGrid1.Rows = 1
  loc_172710B:   var_8E = 1
  loc_172711B:   var_CC = "Select V_Type,Voucher_Include.GroupCode,GroupName,Dr,Cr From Voucher_Include Left Join AcGroup  on Voucher_Include.GroupCode = AcGroup.GroupCode Where AcGroup.AliasYN <>'Y' And V_Type='"
  loc_1727169:   var_14C = var_CC & Me.Fields.Item("V_Type").Value & "' AND Voucher_Include.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND Voucher_Include.LOGSITE_CODE='" 
  loc_172718A:   unk_50BAC1.Execute CStr(var_14C & CVar(MemVar_1F92078) & "' Order By Voucher_Include.GroupCode"), var_1B4, -1
  loc_1727195:   Set var_88 = var_124
  loc_17271CB:   If (var_88.RecordCount > 0) Then
  loc_17271CE:     ' Referenced from: 17274C7
  loc_17271DD:     If Not(var_88.EOF) Then
  loc_17271E0:       var_A8 = vbNullString
  loc_17271EA:       Set var_98 = Me.FGrid1
  loc_17271FF:       Set var_1F4 = Me.FGrid1
  loc_1727206:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_172720E:       var_EC = CVar(CLng(0)) 'Long
  loc_1727218:       var_BC = CVar(CStr(var_8E)) 'String
  loc_172721F:       LateIdCallSt
  loc_172722E:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1727236:       var_110 = CVar(CLng(1)) 'Long
  loc_1727266:       var_DC = CVar(CStr(var_88.Fields.Item("GroupName").Value)) 'String
  loc_172726D:       LateIdCallSt
  loc_17272B2:       If Not(IsNull(CVar(var_88.Fields.Item("dr")))) Then
  loc_17272E0:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_17272E8:         var_16C = CVar(CLng(2)) 'Long
  loc_1727323:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("dr").Value = "Y"), "ü", vbNullString))) 'String
  loc_172732A:         LateIdCallSt
  loc_172734B:       Else
  loc_172734F:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1727357:         var_EC = CVar(CLng(2)) 'Long
  loc_172735C:         var_13C = vbNullString
  loc_1727365:         LateIdCallSt
  loc_172736D:       End If
  loc_172739C:       If Not(IsNull(CVar(var_88.Fields.Item("cr")))) Then
  loc_17273CA:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_17273D2:         var_16C = CVar(CLng(3)) 'Long
  loc_172740D:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("cr").Value = "Y"), "ü", vbNullString))) 'String
  loc_1727414:         LateIdCallSt
  loc_1727435:       Else
  loc_1727439:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1727441:         var_EC = CVar(CLng(3)) 'Long
  loc_1727446:         var_13C = vbNullString
  loc_172744F:         LateIdCallSt
  loc_1727457:       End If
  loc_172745B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1727463:       var_110 = CVar(CLng(4)) 'Long
  loc_1727493:       var_DC = CVar(CStr(var_88.Fields.Item("GroupCode").Value)) 'String
  loc_172749A:       LateIdCallSt
  loc_17274B2:       Set var_1F4 = Nothing 
  loc_17274BC:       var_8E = (var_8E + 1)
  loc_17274C2:       var_88.MoveNext
  loc_17274C7:       GoTo loc_17271CE
  loc_17274CA:     End If
  loc_17274DD:     Me.FGrid1.FixedRows = 1
  loc_17274E5:   End If
  loc_17274F3:   Me.FGrid1.Redraw = True
  loc_1727501:   If (var_8E = 1) Then
  loc_1727517:     Me.FGrid1.Rows = 1
  loc_1727534:     var_DC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_172753C:     Set var_AC = Me.FGrid1
  loc_172756B:     Me.FGrid1.FixedRows = 1
  loc_1727573:   End If
  loc_1727598:   For var_208 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_90 = var_208 'Integer
  loc_17275B1:     Me.FGrid1.Row = CVar(CLng(var_90))
  loc_17275CB:     Me.FGrid1.Col = CVar(CLng(2))
  loc_17275E3:     Me.FGrid1.CellFontName = "wingdings"
  loc_17275FD:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_1727618:     Me.FGrid1.CellForeColor = &HFF
  loc_1727632:     Me.FGrid1.Col = CVar(CLng(3))
  loc_172764A:     Me.FGrid1.CellFontName = "wingdings"
  loc_1727664:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_172767F:     Me.FGrid1.CellForeColor = &HFF
  loc_172768A:   Next var_208 'Integer
  loc_172769E:   Me.FGrid2.Redraw = False
  loc_17276B9:   Me.FGrid2.Rows = 1
  loc_17276C3:   var_8E = 1
  loc_17276D3:   var_CC = "Select VE.V_Type,VE.GroupCode,A.GroupName,VE.Dr,VE.Cr From Voucher_Exclude VE Left Join AcGroup A on VE.GroupCode=A.GroupCode Where A.AliasYN <>'Y' And VE.V_Type='"
  loc_172772B:   var_17C = var_CC & Me.Fields.Item("V_Type").Value & "' AND VE.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND VE.LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1727738:   var_100 = CStr(var_17C & "' Order By VE.GroupCode")
  loc_1727742:   unk_50BAC1.Execute var_100, var_1B4, -1
  loc_172774D:   Set var_88 = var_124
  loc_1727783:   If (var_88.RecordCount > 0) Then
  loc_1727786:     ' Referenced from: 1727A7F
  loc_1727795:     If Not(var_88.EOF) Then
  loc_1727798:       var_A8 = vbNullString
  loc_17277A2:       Set var_98 = Me.FGrid2
  loc_17277B7:       Set var_20C = Me.FGrid2
  loc_17277BE:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_17277C6:       var_EC = CVar(CLng(0)) 'Long
  loc_17277D0:       var_BC = CVar(CStr(var_8E)) 'String
  loc_17277D7:       LateIdCallSt
  loc_17277E6:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17277EE:       var_110 = CVar(CLng(1)) 'Long
  loc_172781E:       var_DC = CVar(CStr(var_88.Fields.Item("GroupName").Value)) 'String
  loc_1727825:       LateIdCallSt
  loc_172786A:       If Not(IsNull(CVar(var_88.Fields.Item("dr")))) Then
  loc_1727898:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_17278A0:         var_16C = CVar(CLng(2)) 'Long
  loc_17278DB:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("dr").Value = "Y"), "ü", vbNullString))) 'String
  loc_17278E2:         LateIdCallSt
  loc_1727903:       Else
  loc_1727907:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_172790F:         var_EC = CVar(CLng(2)) 'Long
  loc_1727914:         var_13C = vbNullString
  loc_172791D:         LateIdCallSt
  loc_1727925:       End If
  loc_1727954:       If Not(IsNull(CVar(var_88.Fields.Item("cr")))) Then
  loc_1727982:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_172798A:         var_16C = CVar(CLng(3)) 'Long
  loc_17279C5:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("cr").Value = "Y"), "ü", vbNullString))) 'String
  loc_17279CC:         LateIdCallSt
  loc_17279ED:       Else
  loc_17279F1:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_17279F9:         var_EC = CVar(CLng(3)) 'Long
  loc_17279FE:         var_13C = vbNullString
  loc_1727A07:         LateIdCallSt
  loc_1727A0F:       End If
  loc_1727A13:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1727A1B:       var_110 = CVar(CLng(4)) 'Long
  loc_1727A4B:       var_DC = CVar(CStr(var_88.Fields.Item("GroupCode").Value)) 'String
  loc_1727A52:       LateIdCallSt
  loc_1727A6A:       Set var_20C = Nothing 
  loc_1727A74:       var_8E = (var_8E + 1)
  loc_1727A7A:       var_88.MoveNext
  loc_1727A7F:       GoTo loc_1727786
  loc_1727A82:     End If
  loc_1727A95:     Me.FGrid2.FixedRows = 1
  loc_1727A9D:   End If
  loc_1727AAB:   Me.FGrid2.Redraw = True
  loc_1727AB9:   If (var_8E = 1) Then
  loc_1727ACF:     Me.FGrid2.Rows = 1
  loc_1727AEC:     var_DC = CVar(CStr(CLng(Me.FGrid2.Rows))) 'String
  loc_1727AF4:     Set var_AC = Me.FGrid2
  loc_1727B23:     Me.FGrid2.FixedRows = 1
  loc_1727B2B:   End If
  loc_1727B50:   For var_210 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_90 = var_210 'Integer
  loc_1727B69:     Me.FGrid2.Row = CVar(CLng(var_90))
  loc_1727B83:     Me.FGrid2.Col = CVar(CLng(2))
  loc_1727B9B:     Me.FGrid2.CellFontName = "wingdings"
  loc_1727BB5:     Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_1727BD0:     Me.FGrid2.CellForeColor = &HFF
  loc_1727BEA:     Me.FGrid2.Col = CVar(CLng(3))
  loc_1727C02:     Me.FGrid2.CellFontName = "wingdings"
  loc_1727C1C:     Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_1727C37:     Me.FGrid2.CellForeColor = &HFF
  loc_1727C42:   Next var_210 'Integer
  loc_1727C4A: Else
  loc_1727C4A:   Call Proc_207_58_FA2654()
  loc_1727C4F: End If
  loc_1727C4F: Call Proc_207_61_F94DBC()
  loc_1727C59: Set var_88 = Nothing
  loc_1727C5C: Exit Sub
  loc_1727C5D: ' Referenced from: 172604C
  loc_1727C63: Call 0.Method_arg_50 (var_100)
  loc_1727C6B: var_1D8 = "MoveRec"
  loc_1727C78: Proc_183_57_104AA84(var_100)
  loc_1727C84: Exit Sub
End Sub

Public Sub Proc_207_60_EB1BB8(arg_C) 'EB1BB8
  'Data Table: 50BA98
  Dim var_98 As TextBox
  loc_EB1B2C: On Error Goto loc_EB1B8D
  loc_EB1B3D: Set var_8C = Me.Txt
  loc_EB1B43: Call 0.Method_Proc_207_60_EB1BB8C (var_8E, var_86)
  loc_EB1B53: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB1B69:   Set var_8C = Me.Txt
  loc_EB1B6F:   Call 0.Method_Proc_207_60_EB1BB80 (CInt(var_86), var_98)
  loc_EB1B77:   var_98.Enabled = arg_C
  loc_EB1B86: Next var_92 'Byte
  loc_EB1B8C: Exit Sub
  loc_EB1B8D: ' Referenced from: EB1B2C
  loc_EB1B93: Call 0.Method_arg_50 (var_9C)
  loc_EB1B9B: var_A4 = "Disp_Text"
  loc_EB1BA8: Proc_183_57_104AA84(var_9C)
  loc_EB1BB4: Exit Sub
End Sub

Public Sub Proc_207_61_F94DBC
  'Data Table: 50BA98
  loc_F94C50: On Error Goto loc_F94D94
  loc_F94C6F: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F94C81:   Me.DGCategory.Visible = False
  loc_F94C89: End If
  loc_F94CA5: If (CBool(Me.DGNCat.Visible) = &HFF) Then
  loc_F94CB7:   Me.DGNCat.Visible = False
  loc_F94CBF: End If
  loc_F94CDB: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F94CED:   Me.DGVType.Visible = False
  loc_F94CF5: End If
  loc_F94D10: If (Me.FrmList.Visible = &HFF) Then
  loc_F94D1F:   Me.FrmList.Visible = False
  loc_F94D27: End If
  loc_F94D43: If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_F94D55:   Me.DGGroup.Visible = False
  loc_F94D5D: End If
  loc_F94D79: If (CBool(Me.DGCR.Visible) = &HFF) Then
  loc_F94D8B:   Me.DGCR.Visible = False
  loc_F94D93: End If
  loc_F94D93: Exit Sub
  loc_F94D94: ' Referenced from: F94C50
  loc_F94D9A: Call 0.Method_arg_50 (var_C0)
  loc_F94DA2: var_C8 = "Grid_Hide"
  loc_F94DAF: Proc_183_57_104AA84(var_C0)
  loc_F94DBB: Exit Sub
End Sub

Public Sub Proc_207_62_ECE798(arg_C) 'ECE798
  'Data Table: 50BA98
  Dim var_10C As TextBox
  loc_ECE700: On Error Goto loc_ECE76F
  loc_ECE703: Call Proc_207_61_F94DBC()
  loc_ECE73F: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_ECE742:   Call TopCtrl1_UnknownEvent_16()
  loc_ECE74A: Else
  loc_ECE754:   Set var_108 = Me.Txt
  loc_ECE75A:   Call 0.Method_Proc_207_62_ECE7980 (arg_C)
  loc_ECE762:   var_10C.SetFocus
  loc_ECE76E: End If
  loc_ECE76E: Exit Sub
  loc_ECE76F: ' Referenced from: ECE700
  loc_ECE775: Call 0.Method_arg_50 (var_110)
  loc_ECE78A: Proc_183_57_104AA84(var_110, "SaveMsg")
  loc_ECE796: Exit Sub
End Sub

Public Sub Proc_207_63_1420B64
  'Data Table: 50BA98
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_14200D0: On Error Goto loc_1420B3A
  loc_14200E3: Me.SSTab1.Tab = 0
  loc_14200FE: Me.SSTab1.Left = CVar(CDbl(6735))
  loc_1420119: Me.SSTab1.Top = CVar(CDbl(1200))
  loc_1420133: Me.FGrid.Left = CVar(CDbl(0))
  loc_142014D: Me.FGrid.Top = CVar(CDbl(0))
  loc_1420179: Me.FGrid.Width = CVar(Me.Frame3.Width)
  loc_14201A9: Me.FGrid.Height = CVar(Me.Frame3.Height)
  loc_14201C7: Me.FGrid1.Left = CVar(CDbl(0))
  loc_14201E1: Me.FGrid1.Top = CVar(CDbl(0))
  loc_142020D: Me.FGrid1.Width = CVar(Me.Frame2.Width)
  loc_142023D: Me.FGrid1.Height = CVar(Me.Frame2.Height)
  loc_142025B: Me.FGrid2.Left = CVar(CDbl(0))
  loc_1420275: Me.FGrid2.Top = CVar(CDbl(0))
  loc_14202A1: Me.FGrid2.Width = CVar(Me.Frame1.Width)
  loc_14202CB: Set var_B0 = Me.FGrid2
  loc_14202D1: var_B0.Height = CVar(Me.Frame1.Height)
  loc_14202F0: Me.DGCategory.Left = CVar(CDbl(7665))
  loc_142030B: Me.DGCategory.Top = CVar(CDbl(465))
  loc_1420326: Me.DGNCat.Left = CVar(CDbl(7665))
  loc_1420341: Me.DGNCat.Top = CVar(CDbl(465))
  loc_142035C: Me.DGVType.Left = CVar(CDbl(7665))
  loc_1420377: Me.DGVType.Top = CVar(CDbl(465))
  loc_1420392: Me.DGGroup.Left = CVar(CDbl(7665))
  loc_14203AD: Me.DGGroup.Top = CVar(CDbl(465))
  loc_14203C3: Set var_A8 = Me.Txt
  loc_14203C9: Call 0.Method_Proc_207_63_1420B640 (CInt(&HC), var_B0)
  loc_14203E8: Me.DGCR.Left = CVar(var_B0.Left)
  loc_1420404: Set var_B4 = Me.Txt
  loc_142040A: Call 0.Method_Proc_207_63_1420B640 (CInt(&HC), var_B8)
  loc_1420425: Set var_A8 = Me.Txt
  loc_142042B: Call 0.Method_Proc_207_63_1420B640 (CInt(&HC), var_B0)
  loc_142043F: var_94 = CVar((var_B0.Top + var_B8.Height)) 'Single
  loc_142044E: Me.DGCR.Top = CVar(var_B0.Left)
  loc_142046E: Set var_A8 = Me.Txt
  loc_1420474: Call 0.Method_Proc_207_63_1420B640 (CInt(&HD), var_B0)
  loc_1420493: Me.DGDR.Left = CVar(var_B0.Left)
  loc_14204AF: Set var_B4 = Me.Txt
  loc_14204B5: Call 0.Method_Proc_207_63_1420B640 (CInt(&HD), var_B8)
  loc_14204D0: Set var_A8 = Me.Txt
  loc_14204D6: Call 0.Method_Proc_207_63_1420B640 (CInt(&HD), var_B0)
  loc_14204EA: var_94 = CVar((var_B0.Top + var_B8.Height)) 'Single
  loc_14204F9: Me.DGDR.Top = CVar(var_B0.Left)
  loc_142050F: Set var_C4 = Me.FGrid
  loc_142051E: var_C4.Cols = 6
  loc_1420537: global_52 = CStr(CLng(var_C4.BackColor))
  loc_1420544: var_94 = CVar(CLng(0)) 'Long
  loc_1420549: var_E8 = &H1F4
  loc_1420555: LateIdCallSt
  loc_142055D: var_94 = 0
  loc_1420569: var_E8 = CVar(CLng(5)) 'Long
  loc_142056E: var_108 = "Voucher Type"
  loc_1420577: LateIdCallSt
  loc_1420582: var_94 = CVar(CLng(5)) 'Long
  loc_1420587: var_E8 = 0
  loc_1420593: LateIdCallSt
  loc_142059B: var_94 = 0
  loc_14205A7: var_E8 = CVar(CLng(1)) 'Long
  loc_14205AC: var_108 = "From Date"
  loc_14205B5: LateIdCallSt
  loc_14205C0: var_94 = CVar(CLng(1)) 'Long
  loc_14205CB: var_E8 = CVar(CInt(1)) 'Integer
  loc_14205D2: LateIdCallSt
  loc_14205DD: var_94 = CVar(CLng(1)) 'Long
  loc_14205E8: var_E8 = CVar(CInt(1)) 'Integer
  loc_14205EF: LateIdCallSt
  loc_14205FA: var_94 = CVar(CLng(1)) 'Long
  loc_14205FF: var_E8 = &H9C4
  loc_142060B: LateIdCallSt
  loc_1420613: var_94 = 0
  loc_142061F: var_E8 = CVar(CLng(2)) 'Long
  loc_1420624: var_108 = "To Date"
  loc_142062D: LateIdCallSt
  loc_1420638: var_94 = CVar(CLng(2)) 'Long
  loc_1420643: var_E8 = CVar(CInt(1)) 'Integer
  loc_142064A: LateIdCallSt
  loc_1420655: var_94 = CVar(CLng(2)) 'Long
  loc_1420660: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420667: LateIdCallSt
  loc_1420672: var_94 = CVar(CLng(2)) 'Long
  loc_1420677: var_E8 = &H9C4
  loc_1420683: LateIdCallSt
  loc_142068B: var_94 = 0
  loc_1420697: var_E8 = CVar(CLng(3)) 'Long
  loc_142069C: var_108 = "Prefix"
  loc_14206A5: LateIdCallSt
  loc_14206B0: var_94 = CVar(CLng(3)) 'Long
  loc_14206BB: var_E8 = CVar(CInt(1)) 'Integer
  loc_14206C2: LateIdCallSt
  loc_14206CD: var_94 = CVar(CLng(3)) 'Long
  loc_14206D8: var_E8 = CVar(CInt(1)) 'Integer
  loc_14206DF: LateIdCallSt
  loc_14206EA: var_94 = CVar(CLng(3)) 'Long
  loc_14206EF: var_E8 = &H7D0
  loc_14206FB: LateIdCallSt
  loc_1420703: var_94 = 0
  loc_142070F: var_E8 = CVar(CLng(4)) 'Long
  loc_1420714: var_108 = "Start Sr. No."
  loc_142071D: LateIdCallSt
  loc_1420728: var_94 = CVar(CLng(4)) 'Long
  loc_1420733: var_E8 = CVar(CInt(7)) 'Integer
  loc_142073A: LateIdCallSt
  loc_1420745: var_94 = CVar(CLng(4)) 'Long
  loc_1420750: var_E8 = CVar(CInt(7)) 'Integer
  loc_1420757: LateIdCallSt
  loc_1420762: var_94 = CVar(CLng(4)) 'Long
  loc_1420767: var_E8 = &H7D0
  loc_1420773: LateIdCallSt
  loc_142077D: Set var_C4 = Nothing 
  loc_1420785: Set var_11C = Me.FGrid1
  loc_1420794: var_11C.Cols = 5
  loc_14207AD: global_52 = CStr(CLng(var_11C.BackColor))
  loc_14207BA: var_94 = CVar(CLng(0)) 'Long
  loc_14207BF: var_E8 = &H1F4
  loc_14207CB: LateIdCallSt
  loc_14207D3: var_94 = 0
  loc_14207DF: var_E8 = CVar(CLng(1)) 'Long
  loc_14207E4: var_108 = "Group Name"
  loc_14207ED: LateIdCallSt
  loc_14207F8: var_94 = CVar(CLng(1)) 'Long
  loc_1420803: var_E8 = CVar(CInt(1)) 'Integer
  loc_142080A: LateIdCallSt
  loc_1420815: var_94 = CVar(CLng(1)) 'Long
  loc_1420820: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420827: LateIdCallSt
  loc_1420832: var_94 = CVar(CLng(1)) 'Long
  loc_1420837: var_E8 = &HBB8
  loc_1420843: LateIdCallSt
  loc_142084B: var_94 = 0
  loc_1420857: var_E8 = CVar(CLng(2)) 'Long
  loc_142085C: var_108 = "Dr"
  loc_1420865: LateIdCallSt
  loc_1420870: var_94 = CVar(CLng(2)) 'Long
  loc_142087B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420882: LateIdCallSt
  loc_142088D: var_94 = CVar(CLng(2)) 'Long
  loc_1420898: var_E8 = CVar(CInt(1)) 'Integer
  loc_142089F: LateIdCallSt
  loc_14208AA: var_94 = CVar(CLng(2)) 'Long
  loc_14208AF: var_E8 = &H3E8
  loc_14208BB: LateIdCallSt
  loc_14208C3: var_94 = 0
  loc_14208CF: var_E8 = CVar(CLng(3)) 'Long
  loc_14208D4: var_108 = "Cr"
  loc_14208DD: LateIdCallSt
  loc_14208E8: var_94 = CVar(CLng(3)) 'Long
  loc_14208F3: var_E8 = CVar(CInt(1)) 'Integer
  loc_14208FA: LateIdCallSt
  loc_1420905: var_94 = CVar(CLng(3)) 'Long
  loc_1420910: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420917: LateIdCallSt
  loc_1420922: var_94 = CVar(CLng(3)) 'Long
  loc_1420927: var_E8 = &H3E8
  loc_1420933: LateIdCallSt
  loc_142093E: var_94 = CVar(CLng(4)) 'Long
  loc_1420943: var_E8 = 0
  loc_142094F: LateIdCallSt
  loc_1420959: Set var_11C = Nothing 
  loc_1420961: Set var_120 = Me.FGrid2
  loc_1420970: var_120.Cols = 5
  loc_1420983: var_D8 = CStr(CLng(var_120.BackColor))
  loc_1420989: global_52 = var_D8
  loc_1420996: var_94 = CVar(CLng(0)) 'Long
  loc_142099B: var_E8 = &H1F4
  loc_14209A7: LateIdCallSt
  loc_14209AF: var_94 = 0
  loc_14209BB: var_E8 = CVar(CLng(1)) 'Long
  loc_14209C0: var_108 = "Group Name"
  loc_14209C9: LateIdCallSt
  loc_14209D4: var_94 = CVar(CLng(1)) 'Long
  loc_14209DF: var_E8 = CVar(CInt(1)) 'Integer
  loc_14209E6: LateIdCallSt
  loc_14209F1: var_94 = CVar(CLng(1)) 'Long
  loc_14209FC: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420A03: LateIdCallSt
  loc_1420A0E: var_94 = CVar(CLng(1)) 'Long
  loc_1420A13: var_E8 = &HBB8
  loc_1420A1F: LateIdCallSt
  loc_1420A27: var_94 = 0
  loc_1420A33: var_E8 = CVar(CLng(2)) 'Long
  loc_1420A38: var_108 = "Dr"
  loc_1420A41: LateIdCallSt
  loc_1420A4C: var_94 = CVar(CLng(2)) 'Long
  loc_1420A57: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420A5E: LateIdCallSt
  loc_1420A69: var_94 = CVar(CLng(2)) 'Long
  loc_1420A74: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420A7B: LateIdCallSt
  loc_1420A86: var_94 = CVar(CLng(2)) 'Long
  loc_1420A8B: var_E8 = &H3E8
  loc_1420A97: LateIdCallSt
  loc_1420A9F: var_94 = 0
  loc_1420AAB: var_E8 = CVar(CLng(3)) 'Long
  loc_1420AB0: var_108 = "Cr"
  loc_1420AB9: LateIdCallSt
  loc_1420AC4: var_94 = CVar(CLng(3)) 'Long
  loc_1420ACF: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420AD6: LateIdCallSt
  loc_1420AE1: var_94 = CVar(CLng(3)) 'Long
  loc_1420AEC: var_E8 = CVar(CInt(1)) 'Integer
  loc_1420AF3: LateIdCallSt
  loc_1420AFE: var_94 = CVar(CLng(3)) 'Long
  loc_1420B03: var_E8 = &H3E8
  loc_1420B0F: LateIdCallSt
  loc_1420B1A: var_94 = CVar(CLng(4)) 'Long
  loc_1420B1F: var_E8 = 0
  loc_1420B2B: LateIdCallSt
  loc_1420B35: Set var_120 = Nothing 
  loc_1420B39: Exit Sub
  loc_1420B3A: ' Referenced from: 14200D0
  loc_1420B40: Call 0.Method_arg_50 (var_D8, var_120, var_E8, var_94, var_120, var_E8, var_94, var_120)
  loc_1420B55: Proc_183_57_104AA84(var_D8, "Ini_Grid", var_E8, var_94, var_120)
  loc_1420B61: Exit Sub
End Sub

Public Sub Proc_207_64_ECB7EC
  'Data Table: 50BA98
  Dim var_CC As Variant
  loc_ECB750: On Error Goto loc_ECB7C3
  loc_ECB766: Me.FGrid1.Rows = 1
  loc_ECB783: var_CC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_ECB78B: Set var_D0 = Me.FGrid1
  loc_ECB7BA: Me.FGrid1.FixedRows = 1
  loc_ECB7C2: Exit Sub
  loc_ECB7C3: ' Referenced from: ECB750
  loc_ECB7C9: Call 0.Method_arg_50 (var_D4, FGrid1.DispID_10000)
  loc_ECB7DE: Proc_183_57_104AA84(var_D4, "BlankFGrid1")
  loc_ECB7EA: Exit Sub
End Sub

Public Sub Proc_207_65_12EAD1C
  'Data Table: 50BA98
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_B4 As Variant
  Dim var_E0 As String
  Dim var_86 As Integer
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_134 As String
  Dim unk_50BAC1 As Connection15
  Dim var_90 As Recordset15
  Dim var_140 As MSHFlexGrid
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_12EA66C: On Error Goto loc_12EACF4
  loc_12EA682: Me.FGrid2.Rows = 1
  loc_12EA69F: var_D8 = CVar(CStr(CLng(Me.FGrid2.Rows))) 'String
  loc_12EA6A7: Set var_DC = Me.FGrid2
  loc_12EA6D6: Me.FGrid2.FixedRows = 1
  loc_12EA71D: If (Me.Fields.Item("DonotShowGroup").Value = "Yes") Then
  loc_12EA73E:   var_E0 = "Select GroupCode as Code,GroupName as Name From AcGroup Where SysGroup='Y' and AliasYN='N' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_12EA74F:   Me.Recordset15.Open CVar(var_E0 & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F921DC), 2
  loc_12EA75D: Else
  loc_12EA782:   var_C8 = CVar("Select GroupCode as Code,GroupName as Name From AcGroup Where AliasYN='N' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by GroupName") 'String
  loc_12EA78C:   Me.Recordset15.Open var_C8, CVar(MemVar_1F921DC), 2
  loc_12EA797: End If
  loc_12EA7AE: If (Me.Recordset15.RecordCount > 0) Then
  loc_12EA7B3:   var_86 = 1
  loc_12EA7B6:   ' Referenced from: 12EA92B
  loc_12EA7C8:   If Not(Me.Recordset15.EOF) Then
  loc_12EA7CB:     var_A4 = vbNullString
  loc_12EA7D5:     Set var_B8 = Me.FGrid2
  loc_12EA7EA:     Set var_EC = Me.FGrid2
  loc_12EA7F1:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12EA7F9:     var_FC = CVar(CLng(0)) 'Long
  loc_12EA803:     var_C8 = CVar(CStr(var_86)) 'String
  loc_12EA80A:     LateIdCallSt
  loc_12EA819:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_12EA821:     var_10C = CVar(CLng(1)) 'Long
  loc_12EA854:     var_D8 = CVar(CStr(Me.FGrid2.Fields.Item("Name").Value)) 'String
  loc_12EA85B:     LateIdCallSt
  loc_12EA875:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12EA87D:     var_FC = CVar(CLng(2)) 'Long
  loc_12EA882:     var_11C = vbNullString
  loc_12EA88B:     LateIdCallSt
  loc_12EA897:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12EA89F:     var_FC = CVar(CLng(3)) 'Long
  loc_12EA8A4:     var_11C = vbNullString
  loc_12EA8AD:     LateIdCallSt
  loc_12EA8B9:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_12EA8C1:     var_10C = CVar(CLng(4)) 'Long
  loc_12EA8E3:     var_DC = Me.Recordset15.Fields.Item("Code")
  loc_12EA8EB:     var_C8 = var_DC.Value
  loc_12EA8F4:     var_D8 = CVar(CStr(var_C8)) 'String
  loc_12EA8FB:     LateIdCallSt
  loc_12EA913:     Set var_EC = Nothing 
  loc_12EA91D:     var_86 = (var_86 + 1)
  loc_12EA926:     Me.Recordset15.MoveNext
  loc_12EA92B:     GoTo loc_12EA7B6
  loc_12EA92E:   End If
  loc_12EA941:   Me.FGrid2.FixedRows = 1
  loc_12EA949: End If
  loc_12EA94D: Set var_B8 = Me.TopCtrl1
  loc_12EA953: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_12EA95B: var_E0 = CStr(var_EC)
  loc_12EA96C: If (var_E0 = "Edit") Then
  loc_12EA98D:   Set var_B8 = Me.Txt
  loc_12EA993:   Call 0.Method_Proc_207_65_12EAD1C0 (CInt(2), var_DC, var_E0, "Select GroupCode,CR,DR From Voucher_Exclude Where V_Type='", var_C8, -1, var_140)
  loc_12EA99B:   var_D8 = var_DC.Text
  loc_12EA9C2:   unk_50BAC1.Execute var_10C & var_E0 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO')", var_B4, var_EC
  loc_12EA9CD:   Set var_90 = var_140
  loc_12EA9E9:   ' Referenced from: 12EACE0
  loc_12EA9F8:   If Not(var_90.EOF) Then
  loc_12EAA20:     For var_144 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_92 = var_144 'Integer
  loc_12EAA48:       var_D8 = var_90.Fields.Item("GroupCode").Value
  loc_12EAA54:       var_B4 = CVar(CLng(var_92)) 'Long
  loc_12EAA8E:       If (CVar(CLng(4)) = CVar(CStr(Me.FGrid2.TextMatrix)))) Then
  loc_12EAAA4:         Me.FGrid2.Row = CVar(CLng(var_92))
  loc_12EAABE:         Me.FGrid2.Col = CVar(CLng(2))
  loc_12EAAD6:         Me.FGrid2.CellFontName = "wingdings"
  loc_12EAAF0:         Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_12EAB0B:         Me.FGrid2.CellForeColor = &HFF
  loc_12EAB3E:         var_11C = CVar(CLng(var_92)) 'Long
  loc_12EAB46:         var_194 = CVar(CLng(2)) 'Long
  loc_12EAB81:         var_1B4 = CVar(CStr(IIf((var_90.Fields.Item("dr").Value = "Y"), "ü", vbNullString))) 'String
  loc_12EAB89:         Set var_140 = Me.FGrid2
  loc_12EAB8F:         LateIdCallSt
  loc_12EABC2:         Me.FGrid2.Row = CVar(CLng(var_92))
  loc_12EABDC:         Me.FGrid2.Col = CVar(CLng(3))
  loc_12EABF4:         Me.FGrid2.CellFontName = "wingdings"
  loc_12EAC0E:         Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_12EAC29:         Me.FGrid2.CellForeColor = &HFF
  loc_12EAC5C:         var_11C = CVar(CLng(var_92)) 'Long
  loc_12EAC64:         var_194 = CVar(CLng(3)) 'Long
  loc_12EAC9F:         var_1B4 = CVar(CStr(IIf((var_90.Fields.Item("cr").Value = "Y"), "ü", vbNullString))) 'String
  loc_12EACA7:         Set var_140 = Me.FGrid2
  loc_12EACAD:         LateIdCallSt
  loc_12EACCD:         Exit For
  loc_12EACD0:       End If
  loc_12EACD3:     Next var_144 'Integer
  loc_12EACD8:     ' Referenced from: 12EACCD
  loc_12EACDB:     var_90.MoveNext
  loc_12EACE0:     GoTo loc_12EA9E9
  loc_12EACE3:   End If
  loc_12EACE3: End If
  loc_12EACE8: Set var_8C = Nothing
  loc_12EACF0: Set var_90 = Nothing
  loc_12EACF3: Exit Sub
  loc_12EACF4: ' Referenced from: 12EA66C
  loc_12EACFA: Call 0.Method_arg_50 (var_E0)
  loc_12EAD02: var_134 = "FillFGrid2"
  loc_12EAD0F: Proc_183_57_104AA84(var_E0)
  loc_12EAD1B: Exit Sub
End Sub
