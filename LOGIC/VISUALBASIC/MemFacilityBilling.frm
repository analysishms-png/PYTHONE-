VERSION 5.00
Begin VB.Form MemFacilityBilling
  Caption = "Member Facility Billing"
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
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 61
  End
  Begin CommandButton CmdRefreshCategory
    Caption = "Refresh Category"
    Left = 9435
    Top = 795
    Width = 1725
    Height = 300
    Visible = 0   'False
    TabIndex = 58
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdEditSave
    Caption = "Edit Save"
    Left = 390
    Top = 7755
    Width = 1185
    Height = 345
    Visible = 0   'False
    TabIndex = 57
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
  Begin TextBox TxtOtherCredit
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2910
    Top = 7245
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin Frame FrAutoBillingYN
    Left = 6765
    Top = 1095
    Width = 5250
    Height = 420
    TabIndex = 51
    BorderStyle = 0 'None
    Begin CommandButton Command1
      Caption = "Auto Billing"
      Left = 3375
      Top = 45
      Width = 1860
      Height = 405
      TabIndex = 53
    End
    Begin ProgressBar ProgressBar1
      Left = 15
      Top = 90
      Width = 3345
      Height = 315
      TabIndex = 52
    End
  End
  Begin Frame FrAutoBilling
    Left = 6750
    Top = 1500
    Width = 7095
    Height = 2865
    Visible = 0   'False
    TabIndex = 40
    Begin DataGrid DGMemType
      Left = 1740
      Top = 735
      Width = 4725
      Height = 2010
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 41
    End
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      Left = 1725
      Top = 1005
      Width = 1425
      Height = 255
      Enabled = 0   'False
      TabIndex = 44
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
      Index = 9
      BackColor = &HFFFFFF&
      Left = 1725
      Top = 735
      Width = 1425
      Height = 255
      TabIndex = 43
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
      Index = 8
      BackColor = &HFFFFFF&
      Left = 1725
      Top = 465
      Width = 4425
      Height = 255
      TabIndex = 42
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
    Begin CommandButton CmdAutoBilling
      Caption = "Cancel"
      Index = 1
      Left = 4950
      Top = 2205
      Width = 1215
      Height = 360
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
    Begin CommandButton CmdAutoBilling
      Caption = "Start"
      Index = 0
      Left = 3750
      Top = 2205
      Width = 1200
      Height = 360
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
    Begin MSFlexGrid FGPoint1
      Left = 315
      Top = 1335
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 45
    End
    Begin Label LblName
      Caption = "Bill Date"
      Index = 7
      ForeColor = &H0&
      Left = 150
      Top = 1020
      Width = 690
      Height = 240
      TabIndex = 50
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
      Caption = "MemberType"
      Index = 9
      ForeColor = &H0&
      Left = 150
      Top = 465
      Width = 1125
      Height = 240
      TabIndex = 49
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
      Caption = "For Month"
      Index = 6
      ForeColor = &H0&
      Left = 150
      Top = 750
      Width = 870
      Height = 240
      TabIndex = 47
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
  Begin TextBox TxtCreditAmt
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2910
    Top = 6930
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPreBalance
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2910
    Top = 6615
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtTaxAmt
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4860
    Top = 6705
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 34
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 9450
    Top = 6630
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 8880
    Top = 6630
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 29
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3960
    Top = 525
    Width = 1170
    Height = 285
    TabIndex = 27
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
    Index = 6
    BackColor = &HFFFFFF&
    Left = 13485
    Top = 5400
    Width = 1050
    Height = 255
    Visible = 0   'False
    TabIndex = 24
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1545
    Top = 525
    Width = 1170
    Height = 285
    TabIndex = 23
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 30
    Width = 2310
    Height = 255
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGt1
    Index = 1
    ForeColor = &HFF0000&
    Left = 2370
    Top = 1905
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtGt2
    Index = 1
    ForeColor = &HFF0000&
    Left = 5970
    Top = 1905
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtGt3
    Index = 1
    ForeColor = &HFF0000&
    Left = 9495
    Top = 1905
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3960
    Top = 1155
    Width = 1110
    Height = 285
    TabIndex = 3
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1545
    Top = 1155
    Width = 1425
    Height = 285
    TabIndex = 2
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7665
    Top = 840
    Width = 1425
    Height = 285
    TabIndex = 1
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1545
    Top = 840
    Width = 5190
    Height = 285
    TabIndex = 0
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 5745
    Top = 9105
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 3015
    Top = 11130
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 105
      Top = 60
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 6
    End
  End
  Begin DataGrid DGMemName
    Left = 10050
    Top = 7485
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 8325
    Width = 10695
    Height = 2580
    Visible = 0   'False
    TabIndex = 9
  End
  Begin MSHFlexGrid FGCat
    Left = 120
    Top = 4200
    Width = 10680
    Height = 2355
    Visible = 0   'False
    TabIndex = 21
  End
  Begin BtnEnh CmdFill
    Left = 5400
    Top = 1200
    Width = 1350
    Height = 285
    TabIndex = 4
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 10995
    Top = 6705
    Width = 3375
    Height = 285
    TabIndex = 60
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
    Left = 10995
    Top = 6990
    Width = 3330
    Height = 255
    TabIndex = 59
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
  Begin Label LblDrCr1
    Caption = "."
    ForeColor = &H80&
    Left = 4260
    Top = 7260
    Width = 60
    Height = 255
    TabIndex = 56
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
  Begin Label LblPreBalance
    Caption = "Other Credit"
    Index = 1
    ForeColor = &HFF0000&
    Left = 150
    Top = 7260
    Width = 1155
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
  Begin Label LblCreditAmt
    Caption = "Credit Amt. (During Month)"
    Index = 0
    ForeColor = &HFF0000&
    Left = 150
    Top = 6945
    Width = 2520
    Height = 240
    TabIndex = 39
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
  Begin Label LblDrCr
    Caption = "."
    ForeColor = &H80&
    Left = 4245
    Top = 6615
    Width = 60
    Height = 255
    TabIndex = 37
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
  Begin Label LblPreBalance
    Caption = "Previous Balance "
    Index = 0
    ForeColor = &HFF0000&
    Left = 150
    Top = 6630
    Width = 1725
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6885
    Top = 6945
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 33
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 9255
    Top = 6630
    Width = 135
    Height = 225
    Visible = 0   'False
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6915
    Top = 6630
    Width = 480
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
  Begin Label LblName
    Caption = "Vdate"
    Index = 5
    ForeColor = &HFF0000&
    Left = 3120
    Top = 540
    Width = 555
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 12600
    Top = 5400
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 26
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
  Begin Label LblName
    Caption = "Vr No."
    Index = 4
    ForeColor = &HFF0000&
    Left = 105
    Top = 525
    Width = 585
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
    Caption = "         Facility Details                                  Revenues                                       POS Bills"
    BackColor = &HFF8080&
    ForeColor = &H80000014&
    Left = 90
    Top = 1515
    Width = 10695
    Height = 285
    TabIndex = 20
  End
  Begin Line Line2
    BorderColor = &HFF0000&
    X1 = 3675
    Y1 = 1875
    X2 = 3675
    Y2 = 6585
  End
  Begin Line Line1
    BorderColor = &HFF0000&
    X1 = 7275
    Y1 = 1875
    X2 = 7275
    Y2 = 6585
  End
  Begin Shape Shape1
    BorderColor = &HFF8080&
    Left = 120
    Top = 1830
    Width = 10680
    Height = 4740
    BorderWidth = 2
  End
  Begin Label LblCap1
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 240
    Top = 1905
    Width = 2130
    Height = 225
    Visible = 0   'False
    TabIndex = 19
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
  Begin Label LblCap2
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3825
    Top = 1905
    Width = 2145
    Height = 240
    Visible = 0   'False
    TabIndex = 18
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
  Begin Label LblCap3
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 7410
    Top = 1905
    Width = 2085
    Height = 225
    Visible = 0   'False
    TabIndex = 17
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
  Begin Label LblName
    Caption = "Bill Date"
    Index = 3
    ForeColor = &HFF0000&
    Left = 3120
    Top = 1200
    Width = 810
    Height = 240
    TabIndex = 13
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
    Caption = "Month"
    Index = 2
    ForeColor = &HFF0000&
    Left = 105
    Top = 1215
    Width = 585
    Height = 240
    TabIndex = 12
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
    Caption = "Card No"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6810
    Top = 900
    Width = 765
    Height = 240
    TabIndex = 11
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
    Caption = "Member Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 105
    Top = 840
    Width = 1395
    Height = 240
    TabIndex = 10
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

Attribute VB_Name = "MemFacilityBilling"


Private Sub Command1_Click() 'E590BC
  'Data Table: 5571B0
  Dim var_88 As Frame
  loc_E59084: Set var_88 = Me.TopCtrl1
  loc_E5908A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E590A3: If (CStr() <> "Add") Then
  loc_E590A6:   Exit Sub
  loc_E590A7: End If
  loc_E590B3: Me.FrAutoBilling.Visible = True
  loc_E590BB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F0F4C0
  'Data Table: 5571B0
  Dim var_88 As String
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F0F3CC: On Error Goto loc_F0F4B8
  loc_F0F3F2: Call Proc_279_52_F62910(Proc_5_1_100CB50("ADD", Me))
  loc_F0F3FD: Call Proc_279_50_121FE5C(global_104)
  loc_F0F407: var_88 = CStr(MemVar_1F920EC)
  loc_F0F415: Set var_8C = Me.Txt
  loc_F0F41B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_F0F423: var_94.Text = var_88
  loc_F0F438: Call Proc_279_44_10FFA74(MemVar_1F92044)
  loc_F0F44B: Set var_8C = Me.Txt
  loc_F0F451: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_94)
  loc_F0F459: var_94.Text = var_88
  loc_F0F473: Set var_8C = Me.Txt
  loc_F0F479: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F0F481: var_94.SetFocus
  loc_F0F49A: Me.LblUser.Caption = vbNullString
  loc_F0F4AF: Me.LblLDt.Caption = vbNullString
  loc_F0F4B7: Exit Sub
  loc_F0F4B8: ' Referenced from: F0F3CC
  loc_F0F4B8: Proc_6_60_E62BC4(var_88)
  loc_F0F4BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9A3C8
  'Data Table: 5571B0
  loc_E9A350: On Error Goto loc_E9A3C1
  loc_E9A38A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9A3B0:   Call Proc_279_52_F62910(Proc_5_1_100CB50("INI", Me))
  loc_E9A3BB:   Call Proc_279_51_19921B4(global_104)
  loc_E9A3C0: End If
  loc_E9A3C0: Exit Sub
  loc_E9A3C1: ' Referenced from: E9A350
  loc_E9A3C1: Proc_6_60_E62BC4()
  loc_E9A3C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '115B8F4
  'Data Table: 5571B0
  Dim var_96 As Integer
  Dim unk_5571CB As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  Dim arg_38F8 As String
  loc_115B548: On Error Goto loc_115B89A
  loc_115B559: If (Proc_183_56_FE8818(global_104) = &HFF) Then
  loc_115B55C:   Exit Sub
  loc_115B55D: End If
  loc_115B594: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_115B599:   var_96 = 0
  loc_115B5A5:   unk_5571CB.BeginTrans var_11C
  loc_115B5AC:   var_96 = &HFF
  loc_115B5C0:   var_94 = Me.Bookmark 'Variant
  loc_115B61A:   unk_5571CB.Execute CStr("Delete From Ledger Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115B68C:   unk_5571CB.Execute CStr("Delete From MemBill Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115B6FE:   unk_5571CB.Execute CStr("Delete From MemBill1 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115B770:   unk_5571CB.Execute CStr("Delete From MemBill2 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115B7D4:   var_F8 = "Delete From MemSunTran Where DocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_115B7D8:   var_128 = CStr(var_F8)
  loc_115B7E2:   unk_5571CB.Execute var_128, var_118, -1
  loc_115B804:   unk_5571CB.CommitTrans
  loc_115B80B:   var_96 = 0
  loc_115B819:   Me.Requery -1
  loc_115B839:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_115B846:     Me.Bookmark = var_94
  loc_115B84E:   Else
  loc_115B862:     If (Me.EOF = 0) Then
  loc_115B86B:       Me.MoveLast
  loc_115B870:     End If
  loc_115B870:   End If
  loc_115B870:   Call Proc_279_51_19921B4(var_96, var_12C, var_12C, var_12C)
  loc_115B891:   Proc_5_0_110649C(&HFF, Me, global_104, 0)
  loc_115B899: End If
  loc_115B899: Exit Sub
  loc_115B89A: ' Referenced from: 115B548
  loc_115B8A0: If (var_96 = &HFF) Then
  loc_115B8A9:   unk_5571CB.RollbackTrans
  loc_115B8AE: End If
  loc_115B8B6: Set var_120 = Err()
  loc_115B8BC: Call 0.Method_arg_2C (var_128, var_12C, var_12C)
  loc_115B8DD: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_115B8F0: Exit Sub
  loc_115B8F2: arg_38F8 = var_96 & var_96
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F861E4
  'Data Table: 5571B0
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F86094: On Error Goto loc_F8619E
  loc_F860A5: If (Proc_183_55_FE7900(global_104) = &HFF) Then
  loc_F860A8:   Exit Sub
  loc_F860A9: End If
  loc_F860BE: var_88 = "EDIT"
  loc_F860CC: Call Proc_279_52_F62910(Proc_5_1_100CB50(var_88, Me))
  loc_F860E4: Set var_8C = Me.Txt
  loc_F860EA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F860F2: var_94.Enabled = False
  loc_F8610B: Set var_8C = Me.Txt
  loc_F86111: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_94)
  loc_F86119: var_94.Enabled = False
  loc_F86132: Set var_8C = Me.Txt
  loc_F86138: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F86140: var_94.Enabled = False
  loc_F86159: Set var_8C = Me.Txt
  loc_F8615F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F86167: var_94.Enabled = False
  loc_F86180: Me.LblUser.Caption = vbNullString
  loc_F86195: Me.LblLDt.Caption = vbNullString
  loc_F8619D: Exit Sub
  loc_F8619E: ' Referenced from: F86094
  loc_F861A6: Set var_8C = Err()
  loc_F861AC: Call 0.Method_arg_2C (var_88)
  loc_F861CD: MsgBox(CVar(var_88), &H30, " Editing Error ", var_E4, var_104)
  loc_F861E0: Exit Sub
  loc_F861E1: global_104 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E175AC
  'Data Table: 5571B0
  loc_E175A1: Me.Global.Unload Me
  loc_E175A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE53B8
  'Data Table: 5571B0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EE5304: On Error Goto loc_EE53B0
  loc_EE531E: If (Me.RecordCount <= 0) Then
  loc_EE5327:   var_B8 = "Information"
  loc_EE5342:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE5352:   Exit Sub
  loc_EE5353: End If
  loc_EE535A: var_10C = "Select M.DocId As Code, M.Vno As BillNo,S.Name As MemberName,M.CardNo,M.MthYear As ForMonth, convert(Varchar(11),M.VDate,106) As BillDate From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.VPrefix=" & MemVar_1F9212C
  loc_EE536F: MemVar_1F920E4 = var_10C & " And (M.LOGSITE_CODE='" & MemVar_1F92078 & "' or M.LOGSITE_CODE='HO') Order By DocId"
  loc_EE5382: MemVar_1F92120 = Me
  loc_EE538F: Proc_6_126_F1BCC0("700,3000,700,900,1000")
  loc_EE53AA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE53AF: Exit Sub
  loc_EE53B0: ' Referenced from: EE5304
  loc_EE53B0: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EE53B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F4D8
  'Data Table: 5571B0
  loc_E2F4C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2F4D0: Call Proc_279_51_19921B4(global_104)
  loc_E2F4D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F538
  'Data Table: 5571B0
  loc_E2F528: Proc_5_0_110649C(&HFF, Me)
  loc_E2F530: Call Proc_279_51_19921B4(global_104)
  loc_E2F535: Exit Sub
  loc_E2F536: BranchFVar 14591
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F0B8
  'Data Table: 5571B0
  loc_E2F0A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2F0B0: Call Proc_279_51_19921B4(global_104)
  loc_E2F0B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F598
  'Data Table: 5571B0
  loc_E2F588: Proc_5_0_110649C(&HFF, Me)
  loc_E2F590: Call Proc_279_51_19921B4(global_104)
  loc_E2F595: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F6B24C
  'Data Table: 5571B0
  Dim unk_5571CB As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim Me As Recordset15
  loc_F6B118: On Error Goto loc_F6B244
  loc_F6B13F: unk_5571CB.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F92078 & "'", var_B0, -1
  loc_F6B193: If (Proc_6_38_E68A98(CVar(var_B4.Fields.Fields.Item("Bill_PrintType"))) = "W") Then
  loc_F6B1D1:   Proc_272_1_19C894C(CStr(Me.Fields.Item("SearchCode").Value), "N")
  loc_F6B1EA: Else
  loc_F6B208:   var_B4 = Me.Fields
  loc_F6B225:   Proc_272_2_170434C(CStr(var_B4.Item("SearchCode").Value), "N")
  loc_F6B23B: End If
  loc_F6B240: Set var_88 = Nothing
  loc_F6B243: Exit Sub
  loc_F6B244: ' Referenced from: F6B118
  loc_F6B244: Proc_6_60_E62BC4(var_B4)
  loc_F6B249: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AD44
  'Data Table: 5571B0
  Dim Me As Recordset15
  loc_E0AD3B: Me.Requery -1
  loc_E0AD40: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16A9920
  'Data Table: 5571B0
  Dim var_9C As Variant
  Dim unk_5571CB As Connection15
  Dim var_94 As TextBox
  Dim var_B8 As String
  Dim var_B0 As Variant
  Dim var_118 As TextBox
  Dim var_160 As Label
  Dim var_1AC As Variant
  Dim var_1F8 As Variant
  Dim var_244 As Variant
  Dim var_290 As Variant
  Dim var_2EC As Variant
  Dim var_338 As TextBox
  Dim var_65C As Double
  Dim var_3D4 As Variant
  Dim var_3B4 As Variant
  Dim var_3A4 As Variant
  Dim var_474 As Variant
  Dim var_59C As TextBox
  Dim var_664 As Double
  Dim var_5E8 As TextBox
  Dim var_66C As Double
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_278 As Variant
  Dim var_288 As Variant
  Dim var_2B4 As Variant
  Dim var_31C As Variant
  Dim var_35C As Variant
  Dim var_36C As Variant
  Dim var_37C As Variant
  Dim var_404 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_444 As Variant
  Dim var_454 As Variant
  Dim var_494 As Variant
  Dim var_4A4 As Variant
  Dim var_4C4 As Variant
  Dim var_504 As Variant
  Dim var_514 As Variant
  Dim var_524 As Variant
  Dim var_534 As Variant
  Dim var_56C As Variant
  Dim var_57C As Variant
  Dim var_5B0 As Variant
  Dim var_61C As Variant
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_11C As String
  Dim var_114 As Variant
  Dim var_E0 As Variant
  Dim var_1A8 As MSHFlexGrid
  Dim var_1F4 As MSHFlexGrid
  Dim var_680 As Variant
  Dim var_240 As MSHFlexGrid
  Dim var_6B0 As Variant
  Dim var_6D0 As Variant
  Dim var_710 As Variant
  Dim var_730 As Variant
  Dim var_28C As MSHFlexGrid
  Dim var_390 As Variant
  Dim var_5A0 As String
  Dim var_770 As Variant
  Dim var_790 As Variant
  Dim var_2D8 As MSHFlexGrid
  Dim var_5EC As String
  Dim var_2DC As MSHFlexGrid
  Dim var_330 As MSHFlexGrid
  Dim var_1B0 As String
  Dim var_484 As Variant
  Dim var_55C As Variant
  Dim var_650 As Variant
  Dim var_D0 As Variant
  Dim var_248 As String
  Dim var_A30 As Double
  Dim var_A38 As Double
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_16A8144: On Error Goto loc_16A98CB
  loc_16A814B: var_86 = CByte(0) 'Byte
  loc_16A815A: Set var_90 = Me.Txt
  loc_16A8160: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16A8189: If (Proc_6_27_EA565C(var_94, "MemName Name") = 0) Then
  loc_16A8193:   Call Txt_GotFocus()
  loc_16A8198:   Exit Sub
  loc_16A8199: End If
  loc_16A81A4: Set var_90 = Me.Txt
  loc_16A81AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_16A81D3: If (Proc_6_27_EA565C(var_94, "Card No") = 0) Then
  loc_16A81DD:   Call Txt_GotFocus()
  loc_16A81E2:   Exit Sub
  loc_16A81E3: End If
  loc_16A81EE: Set var_90 = Me.Txt
  loc_16A81F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_16A821D: If (Proc_6_27_EA565C(var_94, "For Month") = 0) Then
  loc_16A8227:   Call Txt_GotFocus()
  loc_16A822C:   Exit Sub
  loc_16A822D: End If
  loc_16A8238: Set var_90 = Me.Txt
  loc_16A823E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, CInt(2))
  loc_16A824F: Set var_98 = var_94
  loc_16A8267: If (Proc_6_27_EA565C(var_98, "Bill Date") = 0) Then
  loc_16A826A:   Exit Sub
  loc_16A826B: End If
  loc_16A826F: Set var_90 = Me.TopCtrl1
  loc_16A8275: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(CInt(0))
  loc_16A827D: var_9C = CStr(var_94)
  loc_16A828E: If (var_9C = "Add") Then
  loc_16A8294:   Call Proc_279_49_100162C(var_9E)
  loc_16A829F:   If (var_9E = &HFF) Then
  loc_16A82A2:     Exit Sub
  loc_16A82A3:   End If
  loc_16A82A3: End If
  loc_16A82AC: unk_5571CB.BeginTrans var_B4
  loc_16A82B5: var_86 = CByte(1) 'Byte
  loc_16A82D7: Set var_90 = Me.Txt
  loc_16A82DD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From Ledger Where DocId='")
  loc_16A82E5: var_B0 = var_94.Text
  loc_16A82EE: var_B8 = -1 & var_9C
  loc_16A82FE: unk_5571CB.Execute var_B8 & "'", var_98, 
  loc_16A8336: Set var_90 = Me.Txt
  loc_16A833C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemBill Where DocId='")
  loc_16A8344: var_B0 = var_94.Text
  loc_16A834D: var_B8 = -1 & var_9C
  loc_16A835D: unk_5571CB.Execute var_B8 & "'", var_98, 
  loc_16A8395: Set var_90 = Me.Txt
  loc_16A839B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemBill1 Where DocId='")
  loc_16A83A3: var_B0 = var_94.Text
  loc_16A83AC: var_B8 = -1 & var_9C
  loc_16A83BC: unk_5571CB.Execute var_B8 & "'", var_98, 
  loc_16A83F4: Set var_90 = Me.Txt
  loc_16A83FA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemBill2 Where DocId='")
  loc_16A8402: var_B0 = var_94.Text
  loc_16A840B: var_B8 = -1 & var_9C
  loc_16A841B: unk_5571CB.Execute var_B8 & "'", var_98, 
  loc_16A8453: Set var_90 = Me.Txt
  loc_16A8459: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, "Delete From MemSunTran Where DocId='")
  loc_16A8461: var_B0 = var_94.Text
  loc_16A846A: var_B8 = -1 & var_9C
  loc_16A847A: unk_5571CB.Execute var_B8 & "'", var_98, 
  loc_16A84A2: Set var_90 = Me.Txt
  loc_16A84A8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_16A84B0: var_9C = var_94.Text
  loc_16A84C0: Set var_98 = Me.Txt
  loc_16A84C6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_16A84D5: Proc_6_7_F25D88(var_E0, CVar(var_D0))
  loc_16A84E8: Set var_114 = Me.Txt
  loc_16A84EE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_118)
  loc_16A8502: Set var_160 = Me.LblVPrefix
  loc_16A851B: Set var_1A8 = Me.Txt
  loc_16A8521: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1AC)
  loc_16A853C: Set var_1F4 = Me.Txt
  loc_16A8542: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1F8)
  loc_16A855D: Set var_240 = Me.Txt
  loc_16A8563: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_244)
  loc_16A856B: var_248 = var_244.Tag
  loc_16A857E: Set var_28C = Me.Txt
  loc_16A8584: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_290)
  loc_16A859C: Set var_2D8 = Me.Txt
  loc_16A85A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2DC)
  loc_16A85BD: Set var_330 = Me.TxtGt
  loc_16A85C3: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_9E)
  loc_16A85D5: Set var_334 = Me.TxtGt
  loc_16A85DB: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9E, var_338)
  loc_16A85F0: var_65C = Val(var_338.Text)
  loc_16A85F7: Set var_380 = Me.TopCtrl1
  loc_16A85FD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_65C)
  loc_16A8639: var_474 = CVar(Proc_6_15_EF2C1C(var_D0)) 'String
  loc_16A863F: Proc_6_7_F25D88(var_484)
  loc_16A864F: Set var_538 = Me.Txt
  loc_16A8655: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_53C)
  loc_16A8664: Proc_6_7_F25D88(var_55C, CVar(var_53C))
  loc_16A8670: Set var_590 = Me.TxtGt
  loc_16A8676: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_592)
  loc_16A868B: Set var_598 = Me.TxtGt
  loc_16A8691: Call 0.Method_TopCtrl1_UnknownEvent_160 ((var_592 - 1), var_59C)
  loc_16A86A6: var_664 = Val(var_59C.Text)
  loc_16A86B5: Set var_5E4 = Me.TxtGt
  loc_16A86BB: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_5E8, var_5EC)
  loc_16A86E7: var_B8 = "Insert Into MemBill (DocId,vDate,Vno,Vprefix,VType,MemCode,MemCatCode,CardNo,MthYear,NetAmount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,BillDate,RoundOff,Amount) " & " Values ('"
  loc_16A86F5: var_F0 = CVar(var_B8 & var_9C & "',") 'String
  loc_16A8747: var_21C = var_F0 & var_E0 & "," & CVar(var_118.Text) & ",'" & CVar(var_160.Caption) & "','" & CVar(var_1AC.Text) & "','" & CVar(var_1F8.Tag) 
  loc_16A87A1: var_404 = var_21C & "','" & CVar(var_248) & "','" & CVar(var_290.Text) & "','" & Trim(CVar(var_2DC)) & "'," & CVar(var_65C) & ",'" & IIf((CStr(var_390) = "Add"), "A", "E") 
  loc_16A87FA: var_56C = var_404 & "','" & CVar(MemVar_1F920C8) & "'," & var_484 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "'," & var_55C 
  loc_16A8839: unk_5571CB.Execute CStr(var_56C & "," & CVar(var_5E8.Text) & "," & CVar(Val(var_5EC)) & ")"), var_650, -1
  loc_16A891E: For var_670 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_670 'Integer
  loc_16A8932:   Set var_90 = Me.Txt
  loc_16A8938:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C, 1)
  loc_16A8940:   var_654 = var_94.Text
  loc_16A8951:   var_194 = CVar(CLng(0)) 'Long
  loc_16A895A:   Set var_98 = Me.FGrid
  loc_16A8973:   var_65C = Val(CStr(var_98.TextMatrix)))
  loc_16A8984:   Set var_D0 = Me.Txt
  loc_16A898A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_114, var_248, var_65C)
  loc_16A8992:   var_194 = var_114.Text
  loc_16A89A2:   Set var_118 = Me.Txt
  loc_16A89A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_160, CVar(CLng(var_88)))
  loc_16A89B7:   Proc_6_7_F25D88(var_F0, CVar(var_160))
  loc_16A89C0:   var_278 = CVar(CLng(var_88)) 'Long
  loc_16A89C8:   var_31C = CVar(CLng(3)) 'Long
  loc_16A89D1:   Set var_1A8 = Me.FGrid
  loc_16A89E7:   var_3A4 = CVar(CLng(var_88)) 'Long
  loc_16A89EF:   var_3D4 = CVar(CLng(4)) 'Long
  loc_16A8A0E:   var_454 = CVar(CLng(var_88)) 'Long
  loc_16A8A16:   var_4C4 = CVar(CLng(5)) 'Long
  loc_16A8A35:   var_524 = CVar(CLng(var_88)) 'Long
  loc_16A8A3D:   var_5B0 = CVar(CLng(7)) 'Long
  loc_16A8A5C:   var_61C = CVar(CLng(var_88)) 'Long
  loc_16A8A64:   var_680 = CVar(CLng(8)) 'Long
  loc_16A8A83:   var_6B0 = CVar(CLng(var_88)) 'Long
  loc_16A8A8B:   var_6D0 = CVar(CLng(9)) 'Long
  loc_16A8AB4:   var_710 = CVar(CLng(var_88)) 'Long
  loc_16A8ABC:   var_730 = CVar(CLng(&HA)) 'Long
  loc_16A8AD6:   var_5A0 = CStr(Me.FGrid.TextMatrix))
  loc_16A8AE5:   var_770 = CVar(CLng(var_88)) 'Long
  loc_16A8AED:   var_790 = CVar(CLng(4)) 'Long
  loc_16A8B23:   var_404 = Me.FGrid.TextMatrix)
  loc_16A8B74:   var_494 = Me.FGrid.TextMatrix)
  loc_16A8B9B:   var_514 = Me.FGrid.TextMatrix)
  loc_16A8BAB:   Set var_334 = Me.TopCtrl1
  loc_16A8BB1:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_514)
  loc_16A8BF3:   Proc_6_7_F25D88(var_940, CVar(Proc_6_15_EF2C1C(CVar(CLng(&HC)), CVar(CLng(var_88)), var_494, CVar(CLng(&HB)), CVar(CLng(var_88)), var_404)), CVar(CLng(&HD)), CVar(CLng(var_88)))
  loc_16A8C0C:   var_B8 = "Insert Into MemBill1 (DocId,Sno,Vno,vDate,VType,Type,FacilityCode,TaxStru,AcCode,BaseAmt,TaxAmt,OutletCode,AcPosting,AcPostingYN,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_16A8C3B:   var_100 = CVar(var_B8 & var_9C & "'," & CStr(var_65C) & "," & var_248 & ",") 'String
  loc_16A8C7D:   var_23C = var_100 & var_F0 & ",'" & CVar(CStr(var_1A8.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_16A8CB9:   var_35C = var_23C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16A8CC2:   var_37C = var_35C & "," 
  loc_16A8CDD:   var_474 = var_37C & CVar(Val(var_5A0)) & ",'" & IIf((CStr(Me.FGrid.TextMatrix)) = "Outlet"), CVar(CStr(var_404)), vbNullString) 
  loc_16A8D02:   var_534 = CVar(CStr(var_514)) 'String
  loc_16A8D28:   var_650 = var_474 & "','" & CVar(CStr(var_494)) & "','" & var_534 & "','" & IIf((CStr(var_56C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) 
  loc_16A8D75:   unk_5571CB.Execute CStr(var_650 & "'," & var_940 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_A14, -1
  loc_16A8E4E: Next var_670 'Integer
  loc_16A8E78: For var_A18 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_A18 'Integer
  loc_16A8E82:   var_CC = CVar(CLng(var_88)) 'Long
  loc_16A8E8A:   var_194 = CVar(CLng(2)) 'Long
  loc_16A8EC6:   If CBool(Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) Then
  loc_16A8ED7:     Set var_90 = Me.Txt
  loc_16A8EDD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C)
  loc_16A8EE5:     var_194 = var_94.Text
  loc_16A8F18:     var_65C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_16A8F30:     Set var_D0 = Me.FGCat
  loc_16A8F36:     var_E0 = var_D0.TextMatrix)
  loc_16A8F49:     var_664 = Val(CStr(var_E0))
  loc_16A8F5A:     Set var_114 = Me.Txt
  loc_16A8F60:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_118, var_5A0, var_664, CVar(CLng(1)), CVar(CLng(var_88)))
  loc_16A8F78:     Set var_160 = Me.Txt
  loc_16A8F7E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A8, CVar(CLng(0)))
  loc_16A8F8D:     Proc_6_7_F25D88(var_100, CVar(var_1A8), CVar(CLng(var_88)))
  loc_16A8F96:     var_36C = CVar(CLng(var_88)) 'Long
  loc_16A8F9E:     var_3B4 = CVar(CLng(4)) 'Long
  loc_16A8FA7:     Set var_1AC = Me.FGCat
  loc_16A8FBD:     var_434 = CVar(CLng(var_88)) 'Long
  loc_16A8FC5:     var_4A4 = CVar(CLng(5)) 'Long
  loc_16A8FE4:     var_504 = CVar(CLng(var_88)) 'Long
  loc_16A8FEC:     var_57C = CVar(CLng(6)) 'Long
  loc_16A8FF5:     Set var_1F8 = Me.FGCat
  loc_16A9022:     var_288 = Me.FGCat.TextMatrix)
  loc_16A9035:     var_66C = Val(CStr(var_288))
  loc_16A904D:     Set var_244 = Me.FGCat
  loc_16A9066:     var_A30 = Val(CStr(var_244.TextMatrix)))
  loc_16A9097:     var_A38 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_16A909E:     Set var_290 = Me.TopCtrl1
  loc_16A90A4:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_A38)
  loc_16A90E6:     Proc_6_7_F25D88(var_474, CVar(Proc_6_15_EF2C1C(CVar(CLng(&HA)), CVar(CLng(var_88)), var_A30, CVar(CLng(9)), CVar(CLng(var_88)), var_66C)), CVar(CLng(8)), CVar(CLng(var_88)))
  loc_16A90FF:     var_B8 = "Insert Into MemBill2 (DocId,Sno,Sno1,Vno,vDate,VType,FacilityCode,TaxCode,BaseAmt,TaxPer,TaxAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_16A915B:     var_184 = CVar(var_B8 & var_9C & "'," & CStr(var_118.Text) & "," & CStr(var_664) & "," & var_5A0 & ",") & var_100 & ",'" & CVar(CStr(var_1AC.TextMatrix))) 
  loc_16A91A0:     var_2B4 = var_184 & "','" & CVar(CStr(Me.FGCat.TextMatrix))) & "','" & CVar(CStr(var_1F8.TextMatrix))) & "'," & CVar(var_66C) & "," 
  loc_16A91E2:     var_424 = var_2B4 & CVar(var_A30) & "," & CVar(var_A38) & ",'" & IIf((CStr(var_37C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) 
  loc_16A91EB:     var_444 = var_424 & "'," 
  loc_16A922F:     unk_5571CB.Execute CStr(var_444 & var_474 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_534, -1
  loc_16A92DD:   End If
  loc_16A92E0: Next var_A18 'Integer
  loc_16A92F1: Set var_90 = Me.LblCap
  loc_16A92F7: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_9E, var_88)
  loc_16A9302: For var_A3C =  To var_9E: 1 = var_A3C 'Integer
  loc_16A9316:   Set var_90 = Me.Txt
  loc_16A931C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_16A9334:   Set var_98 = Me.Txt
  loc_16A933A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_16A9349:   Proc_6_7_F25D88(var_E0, CVar(var_D0))
  loc_16A935C:   Set var_114 = Me.Txt
  loc_16A9362:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_118)
  loc_16A9376:   Set var_160 = Me.LblVPrefix
  loc_16A938F:   Set var_1A8 = Me.Txt
  loc_16A9395:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1AC)
  loc_16A93AF:   Set var_1F4 = Me.LblCap
  loc_16A93B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_1F8)
  loc_16A93CF:   Set var_240 = Me.TxtGt
  loc_16A93D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_244)
  loc_16A93EA:   var_65C = Val(var_244.Text)
  loc_16A93F1:   Set var_28C = Me.TopCtrl1
  loc_16A93F7:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_65C)
  loc_16A9433:   var_35C = CVar(Proc_6_15_EF2C1C(var_D0)) 'String
  loc_16A9439:   Proc_6_7_F25D88(var_37C)
  loc_16A9452:   var_B8 = "Insert Into MemSunTran (DocId,Sno,vDate,Vno,Vprefix,VType,SunCode,SunAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_16A9460:   var_11C = var_B8 & var_94.Text & "',"
  loc_16A9495:   var_15C = CVar(var_11C & CStr(var_88) & ",") & var_E0 & "," & CVar(var_118.Text) & ",'" 
  loc_16A94E9:   var_2EC = var_15C & CVar(var_160.Caption) & "','" & CVar(var_1AC.Text) & "','" & CVar(var_1F8.Tag) & "'," & CVar(var_65C) & ",'" & IIf((CStr(var_288) = "Add"), "A", "E") 
  loc_16A953B:   var_424 = var_2EC & "','" & CVar(MemVar_1F920C8) & "'," & var_37C & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_16A9549:   unk_5571CB.Execute CStr(var_424), var_444, -1
  loc_16A95D2: Next var_A3C 'Integer
  loc_16A95DB: Set var_90 = Me.TopCtrl1
  loc_16A95E1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_16A95FA: If (CStr() = "Add") Then
  loc_16A9611:   var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_16A9637:   Set var_90 = Me.Txt
  loc_16A963D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_94, var_11C, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='MBILL' And VP.Date_From<="))
  loc_16A9645:   var_12C = var_94.Text
  loc_16A9653:   Proc_6_7_F25D88(var_E0, CVar(var_11C))
  loc_16A965B:   var_100 = -1 & var_E0 
  loc_16A9672:   unk_5571CB.Execute CStr(CVar(var_11C & CStr(var_88) & ",") & var_E0 & " Order By VP.Date_From DESC"), var_98, 
  loc_16A967D:   Set var_8C = var_98
  loc_16A96B7:   If (var_8C.RecordCount > 0) Then
  loc_16A96C8:     Set var_90 = Me.Txt
  loc_16A96CE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_94)
  loc_16A96E3:     var_65C = Val(var_94.Text)
  loc_16A96EC:     var_CC = "V_Type"
  loc_16A9733:     Proc_6_7_F25D88(var_12C, CVar(var_8C.Fields.Item("Date_From")))
  loc_16A9766:     var_1B0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_65C) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_16A9774:     var_E0 = CVar(var_1B0 & MemVar_1F92078 & "') and V_Type='") 'String
  loc_16A977A:     var_F0 = var_E0 & var_8C.Fields.Item(var_CC).Value 
  loc_16A9783:     var_100 = var_F0 & "' and Date_From=" 
  loc_16A9798:     unk_5571CB.Execute CStr(var_100 & var_12C), var_15C, -1
  loc_16A97D2:   End If
  loc_16A97D2: End If
  loc_16A97D8: unk_5571CB.CommitTrans
  loc_16A97E1: var_86 = CByte(0) 'Byte
  loc_16A97E5: Call Proc_279_48_174C60C(var_160)
  loc_16A97F8: Set var_90 = Me.Txt
  loc_16A97FE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_16A982A: Me.Requery -1
  loc_16A9857: Me.Find "SearchCode ='" & var_94.Text & "'", 0, 1
  loc_16A9867: Set var_90 = Me.TopCtrl1
  loc_16A986D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_CC)
  loc_16A9886: If (CStr(var_65C) = "Add") Then
  loc_16A9889:   Call TopCtrl1_UnknownEvent_A()
  loc_16A988E:   Exit Sub
  loc_16A988F: End If
  loc_16A98A4: var_9C = "INI"
  loc_16A98B2: Call Proc_279_52_F62910(Proc_5_1_100CB50(var_9C, Me))
  loc_16A98BD: Call Proc_279_51_19921B4(global_104)
  loc_16A98C7: Set var_8C = Nothing
  loc_16A98CA: Exit Sub
  loc_16A98CB: ' Referenced from: 16A8144
  loc_16A98D4: If (CInt(var_86) = 1) Then
  loc_16A98DD:   unk_5571CB.RollbackTrans
  loc_16A98E2: End If
  loc_16A98EA: Set var_90 = Err()
  loc_16A98F0: Call 0.Method_arg_2C (var_9C)
  loc_16A9909: MsgBox(CVar(var_9C), &H10, var_E0, var_F0, var_100)
  loc_16A991C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E5310C
  'Data Table: 5571B0
  loc_E530E6: Set var_88 = Me.Txt
  loc_E530EC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E530FA: Proc_6_74_E226B0(var_8C)
  loc_E53106: Call Proc_279_53_E54A5C(var_8C)
  loc_E5310B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FA85A8
  'Data Table: 5571B0
  Dim var_86 As Integer
  loc_FA842E: If (CLng(Shift) = &H1B) Then
  loc_FA8431:   Call Proc_279_53_E54A5C()
  loc_FA8436:   Exit Sub
  loc_FA8437: End If
  loc_FA843A: var_86 = KeyCode
  loc_FA8445: If (var_86 = CInt(0)) Then
  loc_FA8460:   Set var_9C = Nothing
  loc_FA846B:   Set var_98 = Nothing
  loc_FA8499:   Proc_6_69_134A198(Me.DGMemName, Me.Txt, KeyCode, global_108, Shift, 0)
  loc_FA84B0: Else
  loc_FA84B8:   If (var_86 = CInt(8)) Then
  loc_FA84D3:     Set var_9C = Nothing
  loc_FA84DE:     Set var_98 = Nothing
  loc_FA850C:     Proc_6_69_134A198(Me.DGMemType, Me.Txt, KeyCode, global_112, Shift, 0, 1, var_98)
  loc_FA8520:   End If
  loc_FA8520: End If
  loc_FA855B: If ((CBool(Me.DGMemName.Visible) = 0) And (CBool(Me.DGMemType.Visible) = 0)) Then
  loc_FA8573:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FA857C:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_FA8581:   End If
  loc_FA8596:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FA859F:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_FA85A4:   End If
  loc_FA85A4: End If
  loc_FA85A4: Exit Sub
  loc_FA85A5: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E06880
  'Data Table: 5571B0
  Dim var_86 As Integer
  loc_E06873: Proc_6_58_E054C0(arg_10)
  loc_E0687B: var_86 = KeyAscii
  loc_E0687E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F19CA8
  'Data Table: 5571B0
  Dim var_86 As Integer
  loc_F19BBB: var_86 = KeyCode
  loc_F19BC6: If (var_86 = CInt(0)) Then
  loc_F19BE5:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_F19BF9:     var_A4 = "Name"
  loc_F19C1D:     Proc_6_68_129FB34(Me.DGMemName, Me.Txt, KeyCode, global_108)
  loc_F19C30:   End If
  loc_F19C33: Else
  loc_F19C3B:   If (var_86 = CInt(8)) Then
  loc_F19C5A:     If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_F19C6E:       var_A4 = "Name"
  loc_F19C92:       Proc_6_68_129FB34(Me.DGMemType, Me.Txt, KeyCode, global_112, Shift)
  loc_F19CA5:     End If
  loc_F19CA5:   End If
  loc_F19CA5: End If
  loc_F19CA5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47A6C
  'Data Table: 5571B0
  loc_E47A4A: Set var_88 = Me.Txt
  loc_E47A50: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47A5E: Proc_6_73_E22704(var_8C)
  loc_E47A6A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1376C7C
  'Data Table: 5571B0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As String
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_130 As TextBox
  loc_1376403: var_86 = Cancel
  loc_137640E: If (var_86 = CInt(0)) Then
  loc_137645F:   Set var_94 = Me.Txt
  loc_1376465:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_137646D:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1376485:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_1376495:     Set var_94 = Me.Txt
  loc_137649B:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13764A3:     var_98.Text = vbNullString
  loc_13764BC:     Set var_94 = Me.Txt
  loc_13764C2:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13764CA:     var_98.Tag = vbNullString
  loc_13764E4:     Set var_94 = Me.Txt
  loc_13764EA:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_13764F2:     var_98.Text = vbNullString
  loc_137650C:     Set var_94 = Me.Txt
  loc_1376512:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_137651A:     var_98.Tag = vbNullString
  loc_1376529:   Else
  loc_1376564:     Set var_B0 = Me.Txt
  loc_137656A:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1376572:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13765C3:     Set var_B0 = Me.Txt
  loc_13765C9:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13765D1:     var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1376623:     Set var_B0 = Me.Txt
  loc_1376629:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_1376631:     var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_137664D:     var_AC = "CompanyType"
  loc_1376664:     var_98 = Me.Fields.Item(var_AC)
  loc_1376683:     Set var_B0 = Me.Txt
  loc_1376689:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_1376691:     var_B4.Tag = CStr(var_98.Value)
  loc_13766A7:   End If
  loc_13766AA: Else
  loc_13766B2:   If (var_86 = CInt(1)) Then
  loc_13766BF:     Set var_94 = Me.Txt
  loc_13766C5:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_13766D4:     var_D4 = Trim(CVar(var_98))
  loc_13766DC:     var_9C = CStr(var_D4)
  loc_13766EA:     Set var_B0 = Me.Txt
  loc_13766F0:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13766F8:     var_B4.Text = var_9C
  loc_1376727:     If (Me.RecordCount > 0) Then
  loc_1376730:       Me.MoveFirst
  loc_1376753:       Set var_94 = Me.Txt
  loc_1376759:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, "CardNo='")
  loc_1376761:       0 = var_98.Text
  loc_137677A:       Me.Find 1 & var_9C & "'", var_AC, var_98
  loc_13767B8:       If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_13767D4:         MsgBox("InValid Card no", &H40, var_D4, var_10C, var_12C)
  loc_13767F2:         Set var_94 = Me.Txt
  loc_13767F8:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1376800:         var_98.Text = vbNullString
  loc_137681A:         Set var_94 = Me.Txt
  loc_1376820:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1376828:         var_98.Tag = vbNullString
  loc_1376841:         Set var_94 = Me.Txt
  loc_1376847:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_137684F:         var_98.Text = vbNullString
  loc_1376868:         Set var_94 = Me.Txt
  loc_137686E:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1376876:         var_98.Tag = vbNullString
  loc_1376885:       Else
  loc_13768C1:         Set var_B0 = Me.Txt
  loc_13768C7:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_13768CF:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1376921:         Set var_B0 = Me.Txt
  loc_1376927:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_137692F:         var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1376980:         Set var_B0 = Me.Txt
  loc_1376986:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_137698E:         var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_13769C1:         var_98 = Me.Fields.Item("CompanyType")
  loc_13769DF:         Set var_B0 = Me.Txt
  loc_13769E5:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13769ED:         var_B4.Tag = CStr(var_98.Value)
  loc_1376A03:       End If
  loc_1376A03:     End If
  loc_1376A06:   Else
  loc_1376A0E:     If (var_86 = CInt(2)) Then
  loc_1376A1B:       Set var_94 = Me.Txt
  loc_1376A21:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_1376A41:       Set var_B4 = Me.Txt
  loc_1376A47:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1376A4F:       var_130.Text = Proc_6_120_133A1D8(var_98)
  loc_1376A6F:       Set var_94 = Me.Txt
  loc_1376A75:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1376A7D:       var_9C = var_98.Text
  loc_1376AA9:       If CBool(Trim(CVar(var_9C)) <> vbNullString) Then
  loc_1376ABC:         Set var_94 = Me.Txt
  loc_1376AC2:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1376ACA:         "01/" = var_98.Text
  loc_1376B0F:         Set var_B0 = Me.Txt
  loc_1376B15:         Call 0.Method_Txt_Validate0 (CInt(3), var_B4)
  loc_1376B1D:         var_B4.Text = CStr(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(var_98 & var_9C)))))
  loc_1376B3F:       End If
  loc_1376B42:     Else
  loc_1376B4A:       If (var_86 = CInt(9)) Then
  loc_1376B57:         Set var_94 = Me.Txt
  loc_1376B5D:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1376B7D:         Set var_B4 = Me.Txt
  loc_1376B83:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1376B8B:         var_130.Text = Proc_6_120_133A1D8(var_98)
  loc_1376BAB:         Set var_94 = Me.Txt
  loc_1376BB1:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1376BB9:         var_9C = var_98.Text
  loc_1376BE5:         If CBool(Trim(CVar(var_9C)) <> vbNullString) Then
  loc_1376BF8:           Set var_94 = Me.Txt
  loc_1376BFE:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1376C06:           "01/" = var_98.Text
  loc_1376C4B:           Set var_B0 = Me.Txt
  loc_1376C51:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_B4)
  loc_1376C59:           var_B4.Text = CStr(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(var_98 & var_9C)))))
  loc_1376C7B:         End If
  loc_1376C7B:       End If
  loc_1376C7B:     End If
  loc_1376C7B:   End If
  loc_1376C7B: End If
  loc_1376C7B: Exit Sub
End Sub

Private Sub CmdRefreshCategory_Click() 'F197A4
  'Data Table: 5571B0
  Dim var_8C As TextBox
  Dim unk_5571CB As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_F4 As TextBox
  loc_F19705: Set var_88 = Me.Txt
  loc_F1970B: Call 0.Method_CmdRefreshCategory_Click0 (CInt(0), var_8C, var_90, "Select IsNull(Max(CompanyType),'') From SubGroup Where SubCode='", var_C0, -1)
  loc_F1973A: unk_5571CB.Execute var_C8 & var_90 & "' And LogSite_Code='" & MemVar_1F92078 & "'", 0, var_DC
  loc_F1974A:  = var_C8.Item()
  loc_F19752:  = var_DC.Value
  loc_F19769: Set var_F0 = Me.Txt
  loc_F1976F: Call 0.Method_CmdRefreshCategory_Click0 (CInt(1), var_F4)
  loc_F19777: var_F4.Tag = CStr(var_8C.Tag.Fields)
  loc_F197A3: Exit Sub
End Sub

Private Sub DGMemName_UnknownEvent_9 'F50124
  'Data Table: 5571B0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5001B: Me.DGMemName.Visible = False
  loc_F5003A: If (Me.RecordCount > 0) Then
  loc_F50079:   Set var_B4 = Me.Txt
  loc_F5007F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F50087:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F500BA:   var_B0 = Me.Fields.Item("Code")
  loc_F500D9:   Set var_B4 = Me.Txt
  loc_F500DF:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F500E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F500FD: End If
  loc_F50108: Set var_A8 = Me.Txt
  loc_F5010E: Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0))
  loc_F50116: var_B0.SetFocus
  loc_F50122: Exit Sub
End Sub

Private Sub CmdEditSave_Click() 'E9857C
  'Data Table: 5571B0
  loc_E98508: Call TopCtrl1_UnknownEvent_D()
  loc_E9850D: Call CmdFill_UnknownEvent_9()
  loc_E98512: Call TopCtrl1_UnknownEvent_16()
  loc_E9851B: Set var_88 = Me.TopCtrl1
  loc_E98521: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011()
  loc_E98533: If (CBool() = &HFF) Then
  loc_E98536:   Call TopCtrl1_UnknownEvent_12()
  loc_E9853B:   Call CmdEditSave_Click()
  loc_E98543: Else
  loc_E98549:   Call 0.Method_arg_50 (var_9C)
  loc_E9856A:   MsgBox("Updation Completed.", &H40, CVar(var_9C), var_DC, var_FC)
  loc_E9857A:   Exit Sub
  loc_E9857B: End If
  loc_E9857B: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '10546C4
  'Data Table: 5571B0
  Dim var_DC As Variant
  Dim var_A0 As TextBox
  loc_1054474: Set var_88 = Me.TopCtrl1
  loc_105447A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_1054493: If (CStr() = "Browse") Then
  loc_1054496:   Exit Sub
  loc_1054497: End If
  loc_10544A2: Set var_88 = Me.Txt
  loc_10544A8: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_10544D1: If (Proc_6_27_EA565C(var_A0, "MemName Name") = 0) Then
  loc_10544DB:   Call Txt_GotFocus(CInt(0))
  loc_10544E0:   Exit Sub
  loc_10544E1: End If
  loc_10544EC: Set var_88 = Me.Txt
  loc_10544F2: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_A0)
  loc_105451B: If (Proc_6_27_EA565C(var_A0, "Card No") = 0) Then
  loc_1054525:   Call Txt_GotFocus(CInt(1))
  loc_105452A:   Exit Sub
  loc_105452B: End If
  loc_1054536: Set var_88 = Me.Txt
  loc_105453C: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_A0)
  loc_1054565: If (Proc_6_27_EA565C(var_A0, "For Month") = 0) Then
  loc_105456F:   Call Txt_GotFocus(CInt(2))
  loc_1054574:   Exit Sub
  loc_1054575: End If
  loc_1054580: Set var_88 = Me.Txt
  loc_1054586: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3), var_A0)
  loc_10545AF: If (Proc_6_27_EA565C(var_A0, "Bill Date") = 0) Then
  loc_10545B9:   Call Txt_GotFocus(CInt(3))
  loc_10545BE:   Exit Sub
  loc_10545BF: End If
  loc_10545CA: Set var_88 = Me.Txt
  loc_10545D0: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_A0)
  loc_10545DF: var_B8 = Trim(CVar(var_A0))
  loc_10545EF: Set var_A4 = Me.Txt
  loc_10545F5: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3), var_CC)
  loc_10545FD: var_DC = CVar(var_CC) 'Address
  loc_1054614: var_C8 = Left(var_B8, 3)
  loc_105466B: If (var_A0 > Proc_6_35_F31B34(CStr(Mid(Trim(var_DC), 4, 3)), Proc_6_35_F31B34(CStr(var_C8)))) Then
  loc_1054687:   MsgBox("Bill Date Should be For Billing Month Or Greater", &H40, var_B8, var_C8, var_DC)
  loc_10546A2:   Set var_88 = Me.Txt
  loc_10546A8:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3))
  loc_10546B0:   var_A0.SetFocus
  loc_10546BC:   Exit Sub
  loc_10546BD: End If
  loc_10546BD: Call Proc_279_45_1B12958(var_A0)
  loc_10546C2: Exit Sub
End Sub

Private Sub Form_Load() '11FCB64
  'Data Table: 5571B0
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim unk_5571CB As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_D0 As TextBox
  Dim var_FC As DataGrid
  Dim var_100 As TextBox
  loc_11FC6CC: On Error Goto loc_11FCB5B
  loc_11FC6D6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11FC6E5: Set var_B0 = Me.TopCtrl1
  loc_11FC6EB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11FC6F9: Call 0.Method_arg_50 (var_B4)
  loc_11FC709: Set var_B0 = Me.TopCtrl1
  loc_11FC70F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B4))
  loc_11FC724: Set global_108 = New 
  loc_11FC72F: Set var_8C = New 
  loc_11FC73D: Me.TopCtrl1.CursorLocation = 3
  loc_11FC760: var_B4 = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And IsNull(FBilling,'')<>'N' And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_11FC771: Me.Open CVar(var_B4 & "' or SUBGROUP.LOGSITE_CODE='HO') Order by subgroup.Name"), CVar(MemVar_1F92044), 3
  loc_11FC785: CVarUnk
  loc_11FC78A: VerifyVarObj
  loc_11FC790: Set var_B0 = Me.DGMemName
  loc_11FC796: LateIdStAd
  loc_11FC7C0: Me.DGMemName.CursorLocation = 3
  loc_11FC7EA: var_C4 = CVar("Select  Code, Name From MemCatMast WHERE Corporate='N' And IsNull(FBilling,'')<>'N' AND (  LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_11FC7F4: Me.Open var_C4, CVar(MemVar_1F921DC), 2
  loc_11FC808: CVarUnk
  loc_11FC80D: VerifyVarObj
  loc_11FC813: Set var_B0 = Me.DGMemType
  loc_11FC819: LateIdStAd
  loc_11FC84B: unk_5571CB.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F92078 & "'", var_C4, -1
  loc_11FC856: Set var_88 = var_B0
  loc_11FC88A: unk_5571CB.Execute "Select * from UserPermission where UserName='" & MemVar_1F920C8 & "'", var_C4, -1
  loc_11FC8B9: If (var_88.RecordCount > 0) Then
  loc_11FC8CB:   var_B0 = var_B0.Fields
  loc_11FC8F5:   If (Proc_6_38_E68A98(CVar(var_B0.Item("FacilityBilling")), var_B0, var_B0, var_B0, New, 3) = "Auto") Then
  loc_11FC904:     Me.FrAutoBillingYN.Visible = True
  loc_11FC915:     Set var_B0 = Me.CmdFill
  loc_11FC91B:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_11FC926:   Else
  loc_11FC932:     Me.FrAutoBillingYN.Visible = False
  loc_11FC942:     Set var_B0 = Me.CmdFill
  loc_11FC948:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11FC950:   End If
  loc_11FC95F:   var_B0 = var_88.Fields
  loc_11FC967:   var_D0 = var_B0.Item("MemberBillLedgerPostingOnDate")
  loc_11FC978:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_D0), -1, var_B0)) 'String
  loc_11FC98D:   global_128 = CStr(Ucase(var_E0))
  loc_11FC9A0: End If
  loc_11FC9BC: Me.CursorLocation = 3
  loc_11FC9F4: var_C4 = CVar("Select DocId As SearchCode,* From MemBill Where VPrefix=" & MemVar_1F9212C & " And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By DocId") 'String
  loc_11FC9FE: Me.Open var_C4, CVar(MemVar_1F92044), 3
  loc_11FCA32: Call Proc_279_52_F62910(Proc_5_1_100CB50("INI", Me, New, 1), -1, global_108)
  loc_11FCA3D: Call Proc_279_46_1193DFC(1)
  loc_11FCA42: Call Proc_279_51_19921B4(-1)
  loc_11FCA55: Set var_B0 = Me.Txt
  loc_11FCA5B: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_11FCA7A: Me.DGMemName.Left = CVar(var_D0.Left)
  loc_11FCA96: Set var_FC = Me.Txt
  loc_11FCA9C: Call 0.Method_Form_Load0 (CInt(0), var_100)
  loc_11FCAB7: Set var_B0 = Me.Txt
  loc_11FCABD: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_11FCAD5: var_9C = CVar(((var_D0.Top + var_100.Height) + CDbl(&H19))) 'Single
  loc_11FCAE4: Me.DGMemName.Top = CVar(var_D0.Left)
  loc_11FCB05: Me.LblUser.Left = CDbl(13500)
  loc_11FCB1C: Me.LblUser.Top = CDbl(7800)
  loc_11FCB33: Me.LblLDt.Top = CDbl(8160)
  loc_11FCB4A: Me.LblLDt.Left = CDbl(13500)
  loc_11FCB57: Set var_88 = Nothing
  loc_11FCB5A: Exit Sub
  loc_11FCB5B: ' Referenced from: 11FC6CC
  loc_11FCB5B: Proc_6_60_E62BC4()
  loc_11FCB60: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E43F2C
  'Data Table: 5571B0
  loc_E43F07: Set global_108 = Nothing
  loc_E43F19: Set global_104 = Nothing
  loc_E43F28: Exit Sub
  loc_E43F2A: If ( <= 0) Then Exit Sub
  loc_E43F2A: End If
End Sub

Private Sub Form_Activate() 'E472B8
  'Data Table: 5571B0
  loc_E47288: On Error Goto loc_E472B2
  loc_E4728F: Set var_88 = Me.TopCtrl1
  loc_E47295: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E472AA: If (CLng(CInt()) = &H2D) Then
  loc_E472AD:   Call TopCtrl1_UnknownEvent_15()
  loc_E472B2:   ' Referenced from: E47288
  loc_E472B2: End If
  loc_E472B2: Proc_6_60_E62BC4()
  loc_E472B7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24B4C
  'Data Table: 5571B0
  loc_E24B31: If (MasterFormExit = &HFF) Then
  loc_E24B41:   Me.Global.Unload Me
  loc_E24B49: End If
  loc_E24B49: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F11C18
  'Data Table: 5571B0
  Dim var_88 As CommandButton
  loc_F11B30: On Error Goto loc_F11C0F
  loc_F11B47: Proc_6_88_FE81B4(Me, KeyCode)
  loc_F11B8C: If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_F11B8F:   Call CmdEditSave_Click()
  loc_F11B97: Else
  loc_F11B9B:   Set var_88 = Me.TopCtrl1
  loc_F11BA1:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(Shift)
  loc_F11BF7:   If CBool(((CStr(0) <> "Browse") And (Shift = 2)) And (Ucase(Chr(CLng(KeyCode))) = "H")) Then
  loc_F11C06:     Me.CmdRefreshCategory.Visible = True
  loc_F11C0E:   End If
  loc_F11C0E: End If
  loc_F11C0E: Exit Sub
  loc_F11C0F: ' Referenced from: F11B30
  loc_F11C0F: Proc_6_60_E62BC4()
  loc_F11C14: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F56B4C
  'Data Table: 5571B0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F56A6E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F56A75:   Set var_A8 = Me.ListView
  loc_F56ABF:   Set var_C0 = Me.TxtGrid
  loc_F56AC5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F56ACD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F56AED: End If
  loc_F56AF9: Me.FrmList.Visible = False
  loc_F56B29: Set var_9C = Me.TxtGrid
  loc_F56B2F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F56B37: var_A8.SetFocus
  loc_F56B4B: Exit Sub
End Sub

Private Sub CmdAutoBilling_Click(Index As Integer) 'F0EB28
  'Data Table: 5571B0
  Dim unk_5571CB As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_E2 As Integer
  loc_F0EA70: unk_5571CB.Execute "Select AutoMemberBilling from MemEnviro where LogSite_Code='" & MemVar_1F92078 & "'", var_B4, -1
  loc_F0EA7B: Set var_88 = var_B8
  loc_F0EA9F: If (var_88.RecordCount > 0) Then
  loc_F0EAD9:   var_8C = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoMemberBilling"))))))
  loc_F0EAE8: End If
  loc_F0EAED: Set var_88 = Nothing
  loc_F0EAFC: Me.FrAutoBilling.Visible = False
  loc_F0EB07: var_E2 = Index
  loc_F0EB10: If (var_E2 = 0) Then
  loc_F0EB1C:   Call Proc_279_56_12DB4BC(var_8C, var_E2)
  loc_F0EB24: End If
  loc_F0EB24: Exit Sub
End Sub

Public Function MasterFormExitGet() '5592A0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5592AF
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '5592BE
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '5592CD
  SearchCode = Value
End Sub

Public Function global_60Get() '5592DC
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5592EB
  global_60 = Value
End Sub

Public Function global_64Get() '5592FA
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '559309
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '559318
  global_64 = Value
End Sub

Public Function global_80Get() '559327
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '559336
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '559345
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E931F0
  'Data Table: 5571B0
  Dim Me As Recordset15
  loc_E9317E: On Error Goto loc_E931E7
  loc_E93187: Me.MoveFirst
  loc_E931B1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E931D9: Proc_5_0_110649C(&HFF, Me, global_104)
  loc_E931E1: Call Proc_279_51_19921B4(0)
  loc_E931E6: Exit Sub
  loc_E931E7: ' Referenced from: E9317E
  loc_E931E7: Proc_6_60_E62BC4(var_A0)
  loc_E931EC: Exit Sub
End Sub

Public Sub Proc_279_44_10FFA74
  'Data Table: 5571B0
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_134 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_10FF77D: var_90 = "MBILL"
  loc_10FF794: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10FF7C5: Set var_AC = Me.Txt
  loc_10FF7CB: Call 0.Method_Proc_279_44_10FFA740 (CInt(7), var_B0, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10FF7DA: Proc_6_7_F25D88(var_D0, CVar(var_B0), var_134)
  loc_10FF7E2: var_F0 = -1 & var_D0 
  loc_10FF7F6: Me.Txt.Execute CStr(var_F0 & " Order By VP.Date_From DESC"), var_138, 
  loc_10FF801: Set var_8C = var_138
  loc_10FF83D: If (var_8C.RecordCount > 0) Then
  loc_10FF87C:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10FF87F:     GoTo loc_10FF90A
  loc_10FF882:   End If
  loc_10FF8B3:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10FF8DE:   var_B0 = var_8C.Fields.Item("start_srl_no")
  loc_10FF8F3:   var_D0 = (var_B0.Value + 1)
  loc_10FF8F9:   var_94 = CLng(var_D0)
  loc_10FF90A:   ' Referenced from: 10FF87F
  loc_10FF90A: End If
  loc_10FF935: var_C0 = Space((5 - Len(var_90)))
  loc_10FF93D: var_E0 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_B0.Value)
  loc_10FF94A: var_F0 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_96))
  loc_10FF95E: var_110 = Space((5 - Len(global_96)))
  loc_10FF966: var_134 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_10FF97C: var_150 = Space((8 - Len(CStr(var_94))))
  loc_10FF984: var_160 = (var_134 + var_150)
  loc_10FF990: var_180 = (var_160 + CVar(CStr(var_94)))
  loc_10FF99B: global_100 = CStr(var_180)
  loc_10FF9D1: Me.LblVPrefix.Caption = global_96
  loc_10FF9EA: Set var_AC = Me.Txt
  loc_10FF9F0: Call 0.Method_Proc_279_44_10FFA740 (CInt(4), var_B0)
  loc_10FF9F8: var_B0.Text = global_100
  loc_10FFA17: Set var_AC = Me.Txt
  loc_10FFA1D: Call 0.Method_Proc_279_44_10FFA740 (CInt(5), var_B0)
  loc_10FFA25: var_B0.Text = CStr(var_94)
  loc_10FFA42: Set var_AC = Me.Txt
  loc_10FFA48: Call 0.Method_Proc_279_44_10FFA740 (CInt(6), var_B0)
  loc_10FFA50: var_B0.Text = var_90
  loc_10FFA62: var_88 = global_100
  loc_10FFA6A: Set var_8C = Nothing
  loc_10FFA6D: Proc_279_44_10FFA74 = var_94
End Sub

Public Sub Proc_279_45_1B12958
  'Data Table: 5571B0
  Dim var_12C As String
  Dim var_130 As String
  Dim unk_5571CB As Connection15
  Dim var_D8 As Recordset15
  Dim var_140 As Variant
  Dim var_154 As Variant
  Dim var_150 As Variant
  Dim var_178 As Variant
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_164 As Variant
  Dim var_168 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_120 As Double
  Dim var_9E As Integer
  Dim var_128 As Double
  Dim var_19C As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_1D4 As Variant
  Dim var_228 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_26C As Variant
  Dim var_268 As Variant
  Dim var_27C As Variant
  Dim var_294 As Variant
  Dim var_258 As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_32C As String
  Dim var_280 As Field20
  Dim var_330 As String
  Dim var_338 As String
  Dim var_340 As String
  Dim var_90 As Recordset15
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_96 As Integer
  Dim var_86 As Integer
  Dim var_37C As Double
  Dim var_A8 As Double
  Dim var_33C As String
  Dim var_9C As Recordset15
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_EC As Double
  Dim var_36C As Double
  Dim var_374 As Double
  Dim var_38C As Integer
  Dim var_E4 As Double
  Dim var_B0 As Double
  loc_1B0E32C: var_12C = "Select * from MemEnviro where LogSite_Code='" & MemVar_1F92078
  loc_1B0E33C: unk_5571CB.Execute var_12C & "'", var_150, -1
  loc_1B0E347: Set var_D8 = var_154
  loc_1B0E36B: If (var_D8.RecordCount > 0) Then
  loc_1B0E385:   var_15C = var_D8.Fields.Item("AgeParameter")
  loc_1B0E38D:   var_150 = CVar(var_15C) 'Address
  loc_1B0E396:   var_CC = Proc_6_38_E68A98(var_150)
  loc_1B0E39F: End If
  loc_1B0E3A4: Set var_D8 = Nothing
  loc_1B0E3DA: Call 0.Method_Proc_279_45_1B129580 (CInt(1), var_15C, var_12C, "Select IsNull(Max(Surcharge),'') from MemCatMast where Code='", var_150, -1)
  loc_1B0E3FB: unk_5571CB.Execute var_168 & var_12C & "'", 0, var_17C
  loc_1B0E40B:  = var_168.Item(Me.Txt)
  loc_1B0E413:  = var_17C.Value
  loc_1B0E41C: var_118 = CStr(var_15C.Tag.Fields)
  loc_1B0E44C: Set var_154 = Me.Txt
  loc_1B0E452: Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_15C)
  loc_1B0E477: var_F4 = CDate("01/" & Trim(CVar(Proc_6_38_E68A98(CVar(var_15C)))))
  loc_1B0E4A6: var_FC = CDate(DateAdd("m", CDbl(&HFF), var_F4))
  loc_1B0E4C8: var_104 = CDate(DateAdd("m", CDbl(&HFE), var_F4))
  loc_1B0E4D9: Set var_154 = Me.Txt
  loc_1B0E4DF: Call 0.Method_Proc_279_45_1B129580 (CInt(3), var_15C, var_104)
  loc_1B0E521: Set var_154 = Me.Txt
  loc_1B0E527: Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_15C, "15/")
  loc_1B0E52F: var_150 = CVar(var_15C) 'Address
  loc_1B0E53E: var_19C = Trim(CVar(Proc_6_38_E68A98(var_150, CDate(Trim(CVar(Proc_6_38_E68A98(CVar(var_15C), var_FC)))))))
  loc_1B0E546: var_1AC = var_F4 & var_19C 
  loc_1B0E54C: var_10C = CDate(var_1AC)
  loc_1B0E567: If (var_CC = "Yes") Then
  loc_1B0E597:   Set var_154 = Me.Txt
  loc_1B0E59D:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, "Select DOB From SubGroup S Inner Join MemberFamily M On S.SubCode=M.SubCode And M.SNo=1 Where S.SubCode='", var_150, -1)
  loc_1B0E5CC:   unk_5571CB.Execute var_168 & var_12C & "' And (S.Logsite_Code='" & MemVar_1F92078 & "' Or S.Logsite_Code='HO')", 0, var_17C
  loc_1B0E5D4:   var_18C = var_15C.Tag.Fields
  loc_1B0E5DC:    = var_168.Item(var_10C)
  loc_1B0E5E4:    = var_17C.Value
  loc_1B0E612:   If IsNull(var_18C) Then
  loc_1B0E628:     var_150 = "Member's Date Of Birth is not defined!"
  loc_1B0E62E:     MsgBox(var_150, &H10, var_18C, var_19C, var_1AC)
  loc_1B0E63E:     Exit Sub
  loc_1B0E642:   Else
  loc_1B0E650:     Set var_154 = Me.Txt
  loc_1B0E656:     Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C)
  loc_1B0E65E:     var_12C = var_15C.Tag
  loc_1B0E669:     var_178 = 0
  loc_1B0E686:     var_130 = "Select max(DOB) From SubGroup S Inner Join MemberFamily M On S.SubCode=M.SubCode And M.SNo=1 Where S.SubCode='" & var_12C
  loc_1B0E68D:     var_160 = var_130 & "' And (S.Logsite_Code='"
  loc_1B0E6A4:     unk_5571CB.Execute var_160 & MemVar_1F92078 & "' Or S.Logsite_Code='HO')", var_150, -1
  loc_1B0E6AC:     var_164 = var_164.Fields
  loc_1B0E6B4:     var_178 = var_168.Item(var_168)
  loc_1B0E6BC:     var_17C = var_17C.Value
  loc_1B0E6C6:     var_120 = CDate(var_18C)
  loc_1B0E6FA:     Set var_154 = Me.Txt
  loc_1B0E700:     Call 0.Method_Proc_279_45_1B129580 (CInt(3), var_15C, var_12C)
  loc_1B0E708:     var_120 = var_15C.Text
  loc_1B0E768:     var_128 = CDate(DateAdd("yyyy", CDbl(CInt(DateDiff("yyyy", var_120, CDate(CDate(var_12C)), 1, 1))), var_120))
  loc_1B0E77C:     Set var_154 = Me.Txt
  loc_1B0E782:     Call 0.Method_Proc_279_45_1B129580 (CInt(3), var_15C, var_12C)
  loc_1B0E7A2:     If (var_15C.Text <= CDate(var_12C)) Then
  loc_1B0E7AB:       var_9E = (var_9E + 1)
  loc_1B0E7AE:     End If
  loc_1B0E7AE:   End If
  loc_1B0E7AE: End If
  loc_1B0E7BA: Set var_154 = Me.LblCap
  loc_1B0E7C0: Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86, 2)
  loc_1B0E7CB: For var_1DA = var_9E To var_1D6: var_9E = var_1DA 'Integer
  loc_1B0E7DB:   Set var_154 = Me.LblCap
  loc_1B0E7E1:   Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0E7F2:   Me.LblCap.Unload var_15C
  loc_1B0E808:   Set var_154 = Me.TxtGt
  loc_1B0E80E:   Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0E81F:   Me.TxtGt.Unload var_15C
  loc_1B0E82E: Next var_1DA 'Integer
  loc_1B0E83F: Set var_154 = Me.LblCap1
  loc_1B0E845: Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B0E850: For var_1DE =  To var_1D6: 2 = var_1DE 'Integer
  loc_1B0E860:   Set var_154 = Me.LblCap1
  loc_1B0E866:   Call 0.Method_Proc_279_45_1B129580 (var_86)
  loc_1B0E877:   Me.LblCap1.Unload var_15C
  loc_1B0E88D:   Set var_154 = Me.TxtGt1
  loc_1B0E893:   Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0E8A4:   Me.TxtGt1.Unload var_15C
  loc_1B0E8B3: Next var_1DE 'Integer
  loc_1B0E8C4: Set var_154 = Me.LblCap2
  loc_1B0E8CA: Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B0E8D5: For var_1E2 =  To var_1D6: 2 = var_1E2 'Integer
  loc_1B0E8E5:   Set var_154 = Me.LblCap2
  loc_1B0E8EB:   Call 0.Method_Proc_279_45_1B129580 (var_86)
  loc_1B0E8FC:   Me.LblCap2.Unload var_15C
  loc_1B0E912:   Set var_154 = Me.TxtGt2
  loc_1B0E918:   Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0E929:   Me.TxtGt2.Unload var_15C
  loc_1B0E938: Next var_1E2 'Integer
  loc_1B0E949: Set var_154 = Me.LblCap3
  loc_1B0E94F: Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B0E95A: For var_1E6 =  To var_1D6: 2 = var_1E6 'Integer
  loc_1B0E96A:   Set var_154 = Me.LblCap3
  loc_1B0E970:   Call 0.Method_Proc_279_45_1B129580 (var_86)
  loc_1B0E981:   Me.LblCap3.Unload var_15C
  loc_1B0E997:   Set var_154 = Me.TxtGt3
  loc_1B0E99D:   Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0E9AE:   Me.TxtGt3.Unload var_15C
  loc_1B0E9BD: Next var_1E6 'Integer
  loc_1B0E9CE: Set var_154 = Me.TxtGt
  loc_1B0E9D4: Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0E9DC: var_15C.Text = vbNullString
  loc_1B0E9F3: Set var_154 = Me.LblCap1
  loc_1B0E9F9: Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0EA01: var_15C.Visible = False
  loc_1B0EA18: Set var_154 = Me.TxtGt1
  loc_1B0EA1E: Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0EA26: var_15C.Visible = False
  loc_1B0EA3D: Set var_154 = Me.LblCap2
  loc_1B0EA43: Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0EA4B: var_15C.Visible = False
  loc_1B0EA62: Set var_154 = Me.TxtGt2
  loc_1B0EA68: Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0EA70: var_15C.Visible = False
  loc_1B0EA87: Set var_154 = Me.LblCap3
  loc_1B0EA8D: Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0EA95: var_15C.Visible = False
  loc_1B0EAAC: Set var_154 = Me.TxtGt3
  loc_1B0EAB2: Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0EABA: var_15C.Visible = False
  loc_1B0EAD3: var_140 = "Select Max(MB.FCCode) As FcCode,Max(MF.Name) As Facility,Sum(Amount) As Amount,Max(MF.TaxStru) As TaxStru,Max(MF.AcCode) As AcCode from (MemFacilityBilling MB Left Join MemFacilityMast MF On MB.FcCode=MF.Code) Where MthYear='"
  loc_1B0EAE3: Set var_154 = Me.Txt
  loc_1B0EAE9: Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_15C, var_140)
  loc_1B0EB09: var_1AC = var_268 & Trim(CVar(var_15C)) & "' And MemCode='" 
  loc_1B0EB1B: Set var_164 = Me.Txt
  loc_1B0EB21: Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_168, var_12C)
  loc_1B0EB29: var_1AC = var_168.Tag
  loc_1B0EB34: var_208 = -1 & CVar(var_12C) 
  loc_1B0EB50: var_248 = var_208 & "' And (MF.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or MF.LogSite_Code='HO') Group By MB.FcCode Order By Facility" 
  loc_1B0EB5E: unk_5571CB.Execute CStr(var_248), var_17C, 
  loc_1B0EB69: Set var_8C = var_17C
  loc_1B0EBAF: Set var_154 = Me.Txt
  loc_1B0EBB5: Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, "Select max(RestCode) As RestCode,max(Name) As Outlet,Sum(AmtCr) As Amount from PayCharge P Left Join Depart D On P.RestCode=D.Code Where P.CompCode='")
  loc_1B0EBBD: var_324 = var_15C.Tag
  loc_1B0EBC6: var_130 = -1 & var_12C
  loc_1B0EBCD: var_19C = CVar(CStr(var_248) & "' And P.PayType ='Member' And P.RoomType='TB' And SubString(convert(Varchar(11),vdate,106),4,3)+'/'+ SubString(convert(Varchar(11),vdate,106),8,4)='") 'String
  loc_1B0EBDB: Set var_164 = Me.Txt
  loc_1B0EBE1: Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_168)
  loc_1B0EBE9: var_150 = CVar(var_168) 'Address
  loc_1B0EBF0: var_18C = Trim(var_150)
  loc_1B0EC14: var_218 = var_268 & Trim(CVar(var_15C)) & var_18C & "' And (P.Logsite_Code='" & CVar(MemVar_1F92078) & "' Or P.Logsite_Code='HO') Group By restCode " 
  loc_1B0EC1D: var_228 = var_218 & " Union All Select max(RestCode) As RestCode,'Banquet' As Outlet,Sum(AmtCr) As Amount from PayChargeH P Where P.CompCode='" 
  loc_1B0EC2F: Set var_17C = Me.Txt
  loc_1B0EC35: Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_26C, var_160)
  loc_1B0EC3D: var_228 = var_26C.Tag
  loc_1B0EC4C: var_238 = "' And P.PayType ='Member' And P.RoomType='HS' And SubString(convert(Varchar(11),vdate,106),4,3)+'/'+ SubString(convert(Varchar(11),vdate,106),8,4)='"
  loc_1B0EC60: Set var_280 = Me.Txt
  loc_1B0EC66: Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_284)
  loc_1B0EC6E: var_294 = CVar(var_284) 'Address
  loc_1B0EC86: var_2C4 = var_328 & CVar(var_160) & "' Or MF.LogSite_Code='HO') Group By MB.FcCode Order By Facility" & Trim(var_294) & "' And (P.Logsite_Code='" 
  loc_1B0EC90: var_2E4 = var_2C4 & CVar(MemVar_1F92078) 
  loc_1B0ECA7: unk_5571CB.Execute CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet"), , 
  loc_1B0ECB2: Set var_94 = var_328
  loc_1B0ECFC: var_178 = 0
  loc_1B0ED23: Set var_154 = Me.Txt
  loc_1B0ED29: Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, "Select Count(*) From MemRevenueForPeriod M Where M.MemCode='", var_150, -1)
  loc_1B0ED3A: var_130 = var_26C & var_12C
  loc_1B0ED41: var_1B0 = var_130 & "' And Cast(('01/'+'"
  loc_1B0ED52: Set var_164 = Me.Txt
  loc_1B0ED58: Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_168, var_160, CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet"))
  loc_1B0ED60: var_178 = var_168.Text
  loc_1B0ED69: var_1B4 = var_280 & var_160
  loc_1B0ED70: var_32C = var_1B4 & "') As smalldatetime) Between Cast(('01/'+M.FrMonth) As smalldatetime) And Cast(('01/'+M.ToMonth) As smalldatetime)"
  loc_1B0ED79: unk_5571CB.Execute var_32C, var_18C, 
  loc_1B0ED81:  = var_15C.Tag.Fields
  loc_1B0ED89:  = var_26C.Item()
  loc_1B0ED91:  = var_280.Value
  loc_1B0ED9C: Proc_6_39_E7C810(var_328 & CVar(var_160) & Trim(CVar(var_15C)))
  loc_1B0EDD5: If (var_328 & CVar(var_160) & Trim(CVar(var_15C)) > 0) Then
  loc_1B0EDEC:   var_12C = "Select M.* from (Select M1.MemCode,M1.Type,M1.RevCode,M1.Amount,M1.Nature,M1.AppMonth, " & "M2.Description,M2.AcountYN,M2.AcCode,M2.AcPosting,M2.TaxStru,M2.SubsDetails,M2.RefundableYN,M2.SubsChargeYN,M1.LogSite_Code From "
  loc_1B0EE04:   Set var_154 = Me.Txt
  loc_1B0EE0A:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_130, var_12C & "((Select * From MemRevenueForPeriod MR Where MR.MemCode='")
  loc_1B0EE12:   var_150 = var_15C.Tag
  loc_1B0EE1B:   var_1B0 = -1 & var_130
  loc_1B0EE22:   var_32C = CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet") & "' And Cast(('01/'+'"
  loc_1B0EE33:   Set var_164 = Me.Txt
  loc_1B0EE39:   Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_168, var_1B4)
  loc_1B0EE41:   var_32C = var_168.Text
  loc_1B0EE58:   var_338 = var_280 & var_1B4 & "') As smalldatetime) " & "Between Cast(('01/'+MR.FrMonth) As smalldatetime) And Cast(('01/'+MR.ToMonth) As smalldatetime)) M1 Left Join MembershipRevMast M2 On M1.RevCode=M2.Code) Where SubsDetails='Recurring') M "
  loc_1B0EE5F:   var_340 = var_338 & "Where M.MemCode='"
  loc_1B0EE70:   Set var_17C = Me.Txt
  loc_1B0EE76:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_26C, var_33C)
  loc_1B0EE7E:   var_340 = var_26C.Tag
  loc_1B0EEA5:   unk_5571CB.Execute var_18C & var_33C & "' And (M.Logsite_Code='" & MemVar_1F92078 & "' Or M.Logsite_Code='HO')", , 
  loc_1B0EEB0:   Set var_90 = var_280
  loc_1B0EEFC:   If (var_90.RecordCount > 0) Then
  loc_1B0EF62:     If ((Proc_6_38_E68A98(CVar(var_90.Fields.Item("Type"))) = "OutStation") And ((var_8C.RecordCount > 0) Or (var_94.RecordCount > 0))) Then
  loc_1B0EF68:       var_B4 = "'"
  loc_1B0EF6B:       ' Referenced from: 1B0F04A
  loc_1B0EF7A:       If Not(var_90.EOF) Then
  loc_1B0EF9A:         If (var_90.AbsolutePosition = var_90.RecordCount) Then
  loc_1B0EFCD:           var_18C = (CVar(var_B4) + var_90.Fields.Item("RevCode").Value)
  loc_1B0EFD6:           var_19C = (var_18C + "'")
  loc_1B0EFDB:           var_B4 = CStr(var_328 & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Type"))) & "((Select * From MemRevenueForPeriod MR Where MR.MemCode='") & Trim(CVar(var_90.Fields.Item("RevCode"))))
  loc_1B0EFF1:         Else
  loc_1B0F011:           var_15C = var_90.Fields.Item("RevCode")
  loc_1B0F021:           var_18C = (CVar(var_B4) + var_15C.Value)
  loc_1B0F02A:           var_19C = (var_18C + "','")
  loc_1B0F02F:           var_B4 = CStr(var_328 & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Type"))) & "((Select * From MemRevenueForPeriod MR Where MR.MemCode='") & Trim(CVar(var_15C)))
  loc_1B0F042:         End If
  loc_1B0F045:         var_90.MoveNext
  loc_1B0F04A:         GoTo loc_1B0EF6B
  loc_1B0F04D:       End If
  loc_1B0F061:       var_12C = "Select M.* from (Select M1.MemCat,M1.RevCode,M1.Amount,M1.Nature,M1.AppMonth, " & "M2.Description,M2.AcountYN,M2.AcCode,M2.AcPosting,M2.TaxStru,M2.SubsDetails,M2.RefundableYN,M2.SubsChargeYN,M1.LogSite_Code From "
  loc_1B0F079:       Set var_154 = Me.Txt
  loc_1B0F07F:       Call 0.Method_Proc_279_45_1B129580 (CInt(1), var_15C, var_130, var_12C & "(MemCatRevWise M1 Left Join MembershipRevMast M2 On M1.RevCode=M2.Code) Where MemCat='")
  loc_1B0F087:       var_27C = var_15C.Tag
  loc_1B0F090:       var_1B0 = -1 & var_130
  loc_1B0F09E:       var_330 = CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet") & "' And SubsDetails='Recurring' And " & "AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='"
  loc_1B0F0AF:       Set var_164 = Me.Txt
  loc_1B0F0B5:       Call 0.Method_Proc_279_45_1B129580 (CInt(1), var_168, var_32C)
  loc_1B0F0BD:       var_330 = var_168.Tag
  loc_1B0F0DB:       Set var_17C = Me.Txt
  loc_1B0F0E1:       Call 0.Method_Proc_279_45_1B129580 (CInt(3), var_26C)
  loc_1B0F0F0:       Proc_6_7_F25D88(var_18C, CVar(var_26C))
  loc_1B0F114:       var_218 = CVar(var_280 & var_32C & "' And Appdate<=") & var_18C & "Order By AppDate Desc)) M " & "Where (M.Logsite_Code='" & CVar(MemVar_1F92078) 
  loc_1B0F13E:       unk_5571CB.Execute CStr(var_218 & "' Or M.Logsite_Code='HO') And M.RevCode In (" & CVar(var_B4) & ")"), , 
  loc_1B0F149:       Set var_90 = var_280
  loc_1B0F189:     End If
  loc_1B0F189:   End If
  loc_1B0F18C: Else
  loc_1B0F1A0:   var_12C = "Select M.* from (Select M1.MemCat,M1.RevCode,M1.Amount,M1.Nature,M1.AppMonth, " & "M2.Description,M2.AcountYN,M2.AcCode,M2.AcPosting,M2.TaxStru,M2.SubsDetails,M2.RefundableYN,M2.SubsChargeYN,M1.LogSite_Code From "
  loc_1B0F1B8:   Set var_154 = Me.Txt
  loc_1B0F1BE:   Call 0.Method_Proc_279_45_1B129580 (CInt(1), var_15C, var_130, var_12C & "(MemCatRevWise M1 Left Join MembershipRevMast M2 On M1.RevCode=M2.Code) Where MemCat='")
  loc_1B0F1C6:   var_248 = var_15C.Tag
  loc_1B0F1CF:   var_1B0 = -1 & var_130
  loc_1B0F1DD:   var_330 = CStr(var_2E4 & "' Or P.Logsite_Code='HO') Group By restCode Order By Outlet") & "' And SubsDetails='Recurring' And " & "AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='"
  loc_1B0F1EE:   Set var_164 = Me.Txt
  loc_1B0F1F4:   Call 0.Method_Proc_279_45_1B129580 (CInt(1), var_168, var_32C)
  loc_1B0F1FC:   var_330 = var_168.Tag
  loc_1B0F21A:   Set var_17C = Me.Txt
  loc_1B0F220:   Call 0.Method_Proc_279_45_1B129580 (CInt(3), var_26C)
  loc_1B0F22F:   Proc_6_7_F25D88(var_18C, CVar(var_26C))
  loc_1B0F253:   var_218 = CVar(var_280 & var_32C & "' And Appdate<=") & var_18C & "Order By AppDate Desc)) M " & "Where (M.Logsite_Code='" & CVar(MemVar_1F92078) 
  loc_1B0F25C:   var_228 = var_218 & "' Or M.Logsite_Code='HO')" 
  loc_1B0F260:   var_338 = CStr(var_228)
  loc_1B0F26A:   unk_5571CB.Execute var_338, , 
  loc_1B0F275:   Set var_90 = var_280
  loc_1B0F2B1: End If
  loc_1B0F2C4: Me.FGrid.Rows = 1
  loc_1B0F2DF: Me.FGCat.Rows = 1
  loc_1B0F2E9: var_96 = 1
  loc_1B0F2EE: var_86 = 1
  loc_1B0F305: If (var_8C.RecordCount > 0) Then
  loc_1B0F308:   ' Referenced from: 1B0FB0F
  loc_1B0F30E:   var_1D6 = var_8C.EOF
  loc_1B0F317:   If Not(var_1D6) Then
  loc_1B0F324:     Set var_154 = Me.LblCap1
  loc_1B0F32A:     Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B0F336:     If (var_86 > var_1D6) Then
  loc_1B0F343:       Set var_154 = Me.LblCap1
  loc_1B0F349:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0F35A:       Me.LblCap1.Load var_15C
  loc_1B0F373:       Set var_164 = Me.LblCap1
  loc_1B0F379:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B0F396:       Set var_154 = Me.LblCap1
  loc_1B0F39C:       Call 0.Method_Proc_279_45_1B129580 ((var_86 - 1), var_15C)
  loc_1B0F3BF:       Set var_17C = Me.LblCap1
  loc_1B0F3C5:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_26C)
  loc_1B0F3CD:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B0F3E1:     End If
  loc_1B0F3EB:     Set var_154 = Me.TxtGt1
  loc_1B0F3F1:     Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B0F3FD:     If (var_96 > var_1D6) Then
  loc_1B0F40A:       Set var_154 = Me.TxtGt1
  loc_1B0F410:       Call 0.Method_Proc_279_45_1B129580 (var_86)
  loc_1B0F421:       Me.TxtGt1.Load var_15C
  loc_1B0F43A:       Set var_164 = Me.TxtGt1
  loc_1B0F440:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B0F45D:       Set var_154 = Me.TxtGt1
  loc_1B0F463:       Call 0.Method_Proc_279_45_1B129580 ((var_86 - 1), var_15C)
  loc_1B0F486:       Set var_17C = Me.TxtGt1
  loc_1B0F48C:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_26C)
  loc_1B0F494:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B0F4A8:     End If
  loc_1B0F4B4:     Set var_154 = Me.LblCap1
  loc_1B0F4BA:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0F4C2:     var_15C.Visible = True
  loc_1B0F4DA:     Set var_154 = Me.TxtGt1
  loc_1B0F4E0:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0F4E8:     var_15C.Visible = True
  loc_1B0F529:     Set var_164 = Me.LblCap1
  loc_1B0F52F:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B0F537:     var_168.Tag = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("fcCode")))
  loc_1B0F583:     var_18C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_1B0F59F:     Set var_164 = Me.LblCap1
  loc_1B0F5A5:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B0F5AD:     var_168.Caption = CStr(StrConv(var_18C, 3, 0))
  loc_1B0F5F1:     Proc_6_39_E7C810(var_18C, CVar(var_8C.Fields.Item("Amount")))
  loc_1B0F619:     var_12C = CStr(Format(var_18C, "0.00"))
  loc_1B0F627:     Set var_164 = Me.TxtGt1
  loc_1B0F62D:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_168, var_12C)
  loc_1B0F635:     var_168.Text = 1
  loc_1B0F656:     var_150 = CVar(CStr(var_96)) 'String
  loc_1B0F65E:     Set var_154 = Me.FGrid
  loc_1B0F6AB:     var_18C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000)) 'String
  loc_1B0F6B9:     LateIdCallSt
  loc_1B0F6F5:     Proc_6_39_E7C810(var_18C, CVar(var_8C.Fields.Item("Amount")), Me.FGrid, var_18C)
  loc_1B0F6FE:     var_1C4 = CVar(CLng(var_96)) 'Long
  loc_1B0F706:     var_238 = CVar(CLng(9)) 'Long
  loc_1B0F73D:     LateIdCallSt
  loc_1B0F781:     var_15C = var_8C.Fields.Item("AcCode")
  loc_1B0F792:     var_18C = CVar(Proc_6_38_E68A98(CVar(var_15C), CVar(CLng(8)), CVar(CLng(var_96)), Me.FGrid, CVar(CStr(Format(var_18C, "0.00"))), 1)) 'String
  loc_1B0F79A:     Set var_164 = Me.FGrid
  loc_1B0F7A0:     LateIdCallSt
  loc_1B0F7BA:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B0F7C2:     var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1B0F7C7:     var_238 = vbNullString
  loc_1B0F7D1:     Set var_154 = Me.FGrid
  loc_1B0F7D7:     LateIdCallSt
  loc_1B0F7E6:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B0F7EE:     var_1C4 = CVar(CLng(&HC)) 'Long
  loc_1B0F7FD:     Set var_154 = Me.FGrid
  loc_1B0F803:     LateIdCallSt
  loc_1B0F833:     Call 0.Method_Proc_279_45_1B129580 (CInt(4), var_15C, var_12C, CVar(CLng(1)), CVar(CLng(var_96)), Me.Txt, "Y")
  loc_1B0F83B:     var_1C4 = var_15C.Text
  loc_1B0F851:     LateIdCallSt
  loc_1B0F884:     Set var_154 = Me.Txt
  loc_1B0F88A:     Call 0.Method_Proc_279_45_1B129580 (CInt(5), var_15C, var_12C, CVar(CLng(2)), CVar(CLng(var_96)), Me.FGrid, CVar(var_12C))
  loc_1B0F892:     var_140 = var_15C.Text
  loc_1B0F89A:     var_150 = CVar(var_12C) 'String
  loc_1B0F8A2:     Set var_164 = Me.FGrid
  loc_1B0F8A8:     LateIdCallSt
  loc_1B0F8C0:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B0F8D7:     Set var_154 = Me.FGrid
  loc_1B0F8DD:     LateIdCallSt
  loc_1B0F90B:     var_154 = var_8C.Fields
  loc_1B0F928:     var_18C = CVar(Proc_6_38_E68A98(var_154.Item("fcCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_154, vbNullString, CVar(CLng(&HD)))) 'String
  loc_1B0F936:     LateIdCallSt
  loc_1B0F962:     var_140 = "TaxStru"
  loc_1B0F976:     var_15C = var_8C.Fields.Item(var_140)
  loc_1B0F987:     var_18C = CVar(Proc_6_38_E68A98(CVar(var_15C), CVar(CLng(7)), CVar(CLng(var_96)), Me.FGrid, var_18C, var_140)) 'String
  loc_1B0F995:     LateIdCallSt
  loc_1B0F9CA:     Set var_154 = Me.Txt
  loc_1B0F9D0:     Call 0.Method_Proc_279_45_1B129580 (CInt(6), var_15C, var_12C, CVar(CLng(3)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B0F9D8:     var_18C = var_15C.Text
  loc_1B0F9E0:     var_150 = CVar(var_12C) 'String
  loc_1B0F9E8:     Set var_164 = Me.FGrid
  loc_1B0F9EE:     LateIdCallSt
  loc_1B0FA06:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B0FA0E:     var_1C4 = CVar(CLng(4)) 'Long
  loc_1B0FA13:     var_238 = "Facility"
  loc_1B0FA1D:     Set var_154 = Me.FGrid
  loc_1B0FA23:     LateIdCallSt
  loc_1B0FA32:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B0FA3A:     var_1C4 = CVar(CLng(7)) 'Long
  loc_1B0FA49:     var_150 = Me.FGrid.TextMatrix)
  loc_1B0FA59:     var_238 = CVar(CLng(var_96)) 'Long
  loc_1B0FA61:     var_2D4 = CVar(CLng(9)) 'Long
  loc_1B0FA6A:     Set var_15C = Me.FGrid
  loc_1B0FA83:     var_37C = Val(CStr(var_15C.TextMatrix)))
  loc_1B0FAD3:     Call Proc_279_55_1844B4C(CStr(var_150), var_96, CSng(Format(CVar(var_37C), "0.00")), vbNullString, 0, 1, 1, var_37C)
  loc_1B0FAFB:     var_96 = (var_96 + 1)
  loc_1B0FB04:     var_86 = (var_86 + 1)
  loc_1B0FB0A:     var_8C.MoveNext
  loc_1B0FB0F:     GoTo loc_1B0F308
  loc_1B0FB12:   End If
  loc_1B0FB1D:   Set var_154 = Me.LblCap1
  loc_1B0FB23:   Call 0.Method_Proc_279_45_1B129580 (1, var_15C, &HFF, var_86, var_96, var_2D4, var_238)
  loc_1B0FB2B:   var_15C.FontBold = var_150
  loc_1B0FB49:   Call 0.Method_Proc_279_45_1B12958C (var_1D6, var_164, &HFF, var_1C4)
  loc_1B0FB55:   Set var_15C = Me.LblCap1
  loc_1B0FB5B:   Call 0.Method_Proc_279_45_1B129580 (var_1D6, var_140, Me.LblCap1)
  loc_1B0FB63:   var_164.FontBold = var_238
  loc_1B0FB7C:   Set var_154 = Me.TxtGt1
  loc_1B0FB82:   Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B0FB8A:   var_15C.FontBold = True
  loc_1B0FBA2:   Set var_154 = Me.TxtGt1
  loc_1B0FBA8:   Call 0.Method_Proc_279_45_1B12958C (var_1D6, var_164)
  loc_1B0FBB4:   Set var_15C = Me.TxtGt1
  loc_1B0FBBA:   Call 0.Method_Proc_279_45_1B129580 (var_1D6, &HFF)
  loc_1B0FBC2:   var_164.FontBold = var_1C4
  loc_1B0FBD0: End If
  loc_1B0FBD2: var_86 = 1
  loc_1B0FBE9: If (var_90.RecordCount > 0) Then
  loc_1B0FBEC:   ' Referenced from: 1B10781
  loc_1B0FBF2:   var_1D6 = var_90.EOF
  loc_1B0FBFB:   If Not(var_1D6) Then
  loc_1B0FC34:     Set var_164 = Me.Txt
  loc_1B0FC3A:     Call 0.Method_Proc_279_45_1B129580 (CInt(2), var_168)
  loc_1B0FC42:     var_18C = CVar(var_168) 'Address
  loc_1B0FC49:     var_19C = Trim(var_18C)
  loc_1B0FC75:     var_26C = var_90.Fields.Item("Nature")
  loc_1B0FC86:     var_160 = Proc_6_38_E68A98(CVar(var_26C))
  loc_1B0FCBF:     If (Proc_6_36_11C2EAC(Proc_6_38_E68A98(CVar(var_90.Fields.Item("AppMonth"))), CStr(Left(var_19C, 3))) = &HFF) Then
  loc_1B0FCE8:       Proc_6_39_E7C810(var_18C, CVar(var_90.Fields.Item("Amount")))
  loc_1B0FCF1:       var_A8 = CSng(var_18C)
  loc_1B0FD06:       If (var_CC = "Yes") Then
  loc_1B0FD22:         var_130 = "Select SValue,PerOrAmt From MemAgeRevWise Where " & CStr(CInt(DateDiff("yyyy", var_120, CDate(CDate(var_12C)), 1, 1)))
  loc_1B0FD29:         var_160 = var_130 & " Between FrAge And ToAge And RevCode='"
  loc_1B0FD5B:         var_1B0 = Proc_6_38_E68A98(var_90.Fields.Item("RevCode").Value, var_160, var_218, -1)
  loc_1B0FD77:         Set var_164 = Me.Txt
  loc_1B0FD7D:         Call 0.Method_Proc_279_45_1B129580 (CInt(1), var_168, var_32C, var_328 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("AppMonth"))) & "' And MemCat='")
  loc_1B0FD95:         var_33C = var_160 & var_32C & "' And AppDate=(Select Top 1 AppDate From MemAgeRevWise Where MemCat='"
  loc_1B0FDA6:         Set var_17C = Me.Txt
  loc_1B0FDAC:         Call 0.Method_Proc_279_45_1B129580 (CInt(1), var_26C, var_338)
  loc_1B0FDB4:         var_33C = var_26C.Tag
  loc_1B0FDD2:         Set var_280 = Me.Txt
  loc_1B0FDD8:         Call 0.Method_Proc_279_45_1B129580 (CInt(3), var_284)
  loc_1B0FDE0:         var_18C = CVar(var_284) 'Address
  loc_1B0FDE7:         Proc_6_7_F25D88(var_19C, var_18C)
  loc_1B0FE06:         unk_5571CB.Execute CStr(CVar(var_86 & var_338 & "' And Appdate<=") & var_19C & "Order By AppDate Desc)"), , 
  loc_1B0FE11:         Set var_9C = var_328
  loc_1B0FE67:         If (var_9C.RecordCount > 0) Then
  loc_1B0FEA3:           If (Proc_6_38_E68A98(CVar(var_9C.Fields.Item("PerOrAmt"))) = "Per") Then
  loc_1B0FED3:             Proc_6_39_E7C810(var_18C, CVar(var_9C.Fields.Item("SValue")))
  loc_1B0FEE9:             var_A8 = CSng(((CVar(var_168.Tag) * var_18C) / 100))
  loc_1B0FEF9:           Else
  loc_1B0FF32:             If (Proc_6_38_E68A98(CVar(var_9C.Fields.Item("PerOrAmt"))) = "Amt") Then
  loc_1B0FF4C:               var_15C = var_9C.Fields.Item("SValue")
  loc_1B0FF5B:               Proc_6_39_E7C810(var_18C, CVar(var_15C))
  loc_1B0FF64:               var_A8 = CSng(var_18C)
  loc_1B0FF71:             End If
  loc_1B0FF71:           End If
  loc_1B0FF71:         End If
  loc_1B0FF71:       End If
  loc_1B0FF78:       If (var_A8 <> CDbl(0)) Then
  loc_1B0FF85:         Set var_154 = Me.LblCap2
  loc_1B0FF8B:         Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B0FF97:         If (var_A8 > var_1D6) Then
  loc_1B0FFA4:           Set var_154 = Me.LblCap2
  loc_1B0FFAA:           Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B0FFBB:           Me.LblCap2.Load var_15C
  loc_1B0FFD4:           Set var_164 = Me.LblCap2
  loc_1B0FFDA:           Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B0FFF7:           Set var_154 = Me.LblCap2
  loc_1B0FFFD:           Call 0.Method_Proc_279_45_1B129580 ((var_86 - 1), var_15C)
  loc_1B10020:           Set var_17C = Me.LblCap2
  loc_1B10026:           Call 0.Method_Proc_279_45_1B129580 (var_86, var_26C)
  loc_1B1002E:           var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B10042:         End If
  loc_1B1004C:         Set var_154 = Me.TxtGt2
  loc_1B10052:         Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B1005E:         If (var_A8 > var_1D6) Then
  loc_1B1006B:           Set var_154 = Me.TxtGt2
  loc_1B10071:           Call 0.Method_Proc_279_45_1B129580 (var_86)
  loc_1B10082:           Me.TxtGt2.Load var_15C
  loc_1B1009B:           Set var_164 = Me.TxtGt2
  loc_1B100A1:           Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B100BE:           Set var_154 = Me.TxtGt2
  loc_1B100C4:           Call 0.Method_Proc_279_45_1B129580 ((var_86 - 1), var_15C)
  loc_1B100E7:           Set var_17C = Me.TxtGt2
  loc_1B100ED:           Call 0.Method_Proc_279_45_1B129580 (var_86, var_26C)
  loc_1B100F5:           var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B10109:         End If
  loc_1B10115:         Set var_154 = Me.LblCap2
  loc_1B1011B:         Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B10123:         var_15C.Visible = True
  loc_1B1013B:         Set var_154 = Me.TxtGt2
  loc_1B10141:         Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B10149:         var_15C.Visible = True
  loc_1B10191:         Set var_164 = Me.LblCap2
  loc_1B10197:         Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B1019F:         var_168.Tag = Proc_6_38_E68A98(var_90.Fields.Item("RevCode").Value)
  loc_1B101CC:         var_15C = var_90.Fields.Item("Description")
  loc_1B10209:         Set var_164 = Me.LblCap2
  loc_1B1020F:         Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B10217:         var_168.Caption = CStr(StrConv(CVar(Proc_6_38_E68A98(CVar(var_15C))), 3, 0))
  loc_1B1025D:         var_12C = CStr(Format(var_A8, "0.00"))
  loc_1B1026B:         Set var_154 = Me.TxtGt2
  loc_1B10271:         Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C, var_12C)
  loc_1B10279:         var_15C.Text = 1
  loc_1B10294:         var_150 = CVar(CStr(var_96)) 'String
  loc_1B1029C:         Set var_154 = Me.FGrid
  loc_1B102E9:         var_18C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000)) 'String
  loc_1B102F1:         Set var_164 = Me.FGrid
  loc_1B102F7:         LateIdCallSt
  loc_1B10311:         var_1C4 = CVar(CLng(var_96)) 'Long
  loc_1B1034F:         Set var_154 = Me.FGrid
  loc_1B10355:         LateIdCallSt
  loc_1B10389:         var_154 = var_90.Fields
  loc_1B103A2:         var_18C = CVar(Proc_6_38_E68A98(CVar(var_154.Item("AcCode")), CVar(CLng(8)), CVar(CLng(var_96)), var_154, CVar(CStr(Format(var_A8, "0.00"))), 1, 1)) 'String
  loc_1B103B0:         LateIdCallSt
  loc_1B103FF:         var_18C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ACPosting")), CVar(CLng(&HB)), CVar(CLng(var_96)), Me.FGrid, var_18C, CVar(CLng(9)))) 'String
  loc_1B1040D:         LateIdCallSt
  loc_1B1044B:         var_15C = var_90.Fields.Item("AcountYN")
  loc_1B1045C:         var_18C = CVar(Proc_6_38_E68A98(CVar(var_15C), CVar(CLng(&HC)), CVar(CLng(var_96)), Me.FGrid, var_18C)) 'String
  loc_1B1046A:         LateIdCallSt
  loc_1B1049F:         Set var_154 = Me.Txt
  loc_1B104A5:         Call 0.Method_Proc_279_45_1B129580 (CInt(4), var_15C, var_12C, CVar(CLng(1)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B104AD:         var_18C = var_15C.Text
  loc_1B104B5:         var_150 = CVar(var_12C) 'String
  loc_1B104C3:         LateIdCallSt
  loc_1B104F6:         Set var_154 = Me.Txt
  loc_1B104FC:         Call 0.Method_Proc_279_45_1B129580 (CInt(5), var_15C, var_12C, CVar(CLng(2)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B10504:         var_150 = var_15C.Text
  loc_1B1050C:         var_150 = CVar(var_12C) 'String
  loc_1B10514:         Set var_164 = Me.FGrid
  loc_1B1051A:         LateIdCallSt
  loc_1B10532:         var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10549:         Set var_154 = Me.FGrid
  loc_1B1054F:         LateIdCallSt
  loc_1B1057D:         var_154 = var_90.Fields
  loc_1B1059A:         var_18C = CVar(Proc_6_38_E68A98(var_154.Item("RevCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_154, vbNullString, CVar(CLng(&HD)))) 'String
  loc_1B105A8:         LateIdCallSt
  loc_1B105D4:         var_140 = "TaxStru"
  loc_1B105E8:         var_15C = var_90.Fields.Item(var_140)
  loc_1B105F9:         var_18C = CVar(Proc_6_38_E68A98(CVar(var_15C), CVar(CLng(7)), CVar(CLng(var_96)), Me.FGrid, var_18C, var_140)) 'String
  loc_1B10607:         LateIdCallSt
  loc_1B1063C:         Set var_154 = Me.Txt
  loc_1B10642:         Call 0.Method_Proc_279_45_1B129580 (CInt(6), var_15C, var_12C, CVar(CLng(3)), CVar(CLng(var_96)), Me.FGrid)
  loc_1B1064A:         var_18C = var_15C.Text
  loc_1B10652:         var_150 = CVar(var_12C) 'String
  loc_1B1065A:         Set var_164 = Me.FGrid
  loc_1B10660:         LateIdCallSt
  loc_1B10678:         var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10680:         var_1C4 = CVar(CLng(4)) 'Long
  loc_1B10685:         var_238 = "Revenue"
  loc_1B1068F:         Set var_154 = Me.FGrid
  loc_1B10695:         LateIdCallSt
  loc_1B106A4:         var_140 = CVar(CLng(var_96)) 'Long
  loc_1B106AC:         var_1C4 = CVar(CLng(7)) 'Long
  loc_1B106BB:         var_150 = Me.FGrid.TextMatrix)
  loc_1B106CB:         var_238 = CVar(CLng(var_96)) 'Long
  loc_1B106D3:         var_2D4 = CVar(CLng(9)) 'Long
  loc_1B106DC:         Set var_15C = Me.FGrid
  loc_1B106F5:         var_37C = Val(CStr(var_15C.TextMatrix)))
  loc_1B10745:         Call Proc_279_55_1844B4C(CStr(var_150), var_96, CSng(Format(CVar(var_37C), "0.00")), vbNullString, 0, 1, 1, var_37C)
  loc_1B1076D:         var_96 = (var_96 + 1)
  loc_1B10776:         var_86 = (var_86 + 1)
  loc_1B10779:       End If
  loc_1B10779:     End If
  loc_1B1077C:     var_90.MoveNext
  loc_1B10781:     GoTo loc_1B0FBEC
  loc_1B10784:   End If
  loc_1B1078F:   Set var_154 = Me.LblCap2
  loc_1B10795:   Call 0.Method_Proc_279_45_1B129580 (1, var_15C, &HFF, var_86, var_96, var_2D4, var_238)
  loc_1B1079D:   var_15C.FontBold = var_150
  loc_1B107BB:   Call 0.Method_Proc_279_45_1B12958C (var_1D6, var_164, &HFF, var_1C4)
  loc_1B107C7:   Set var_15C = Me.LblCap2
  loc_1B107CD:   Call 0.Method_Proc_279_45_1B129580 (var_1D6, var_140, Me.LblCap2)
  loc_1B107D5:   var_164.FontBold = var_238
  loc_1B107EE:   Set var_154 = Me.TxtGt2
  loc_1B107F4:   Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B107FC:   var_15C.FontBold = True
  loc_1B10814:   Set var_154 = Me.TxtGt2
  loc_1B1081A:   Call 0.Method_Proc_279_45_1B12958C (var_1D6, var_164)
  loc_1B10826:   Set var_15C = Me.TxtGt2
  loc_1B1082C:   Call 0.Method_Proc_279_45_1B129580 (var_1D6, &HFF)
  loc_1B10834:   var_164.FontBold = var_1C4
  loc_1B10842: End If
  loc_1B10844: var_86 = 1
  loc_1B1085B: If (var_94.RecordCount > 0) Then
  loc_1B1085E:   ' Referenced from: 1B10FD6
  loc_1B10864:   var_1D6 = var_94.EOF
  loc_1B1086D:   If Not(var_1D6) Then
  loc_1B1087A:     Set var_154 = Me.LblCap3
  loc_1B10880:     Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B1088C:     If (var_86 > var_1D6) Then
  loc_1B10899:       Set var_154 = Me.LblCap3
  loc_1B1089F:       Call 0.Method_Proc_279_45_1B129580 (var_86)
  loc_1B108B0:       Me.LblCap3.Load var_15C
  loc_1B108C9:       Set var_164 = Me.LblCap3
  loc_1B108CF:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B108EC:       Set var_154 = Me.LblCap3
  loc_1B108F2:       Call 0.Method_Proc_279_45_1B129580 ((var_86 - 1), var_15C)
  loc_1B10915:       Set var_17C = Me.LblCap3
  loc_1B1091B:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_26C)
  loc_1B10923:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B10937:     End If
  loc_1B10941:     Set var_154 = Me.TxtGt3
  loc_1B10947:     Call 0.Method_Proc_279_45_1B129588 (var_1D6, var_86)
  loc_1B10953:     If (var_15C > var_1D6) Then
  loc_1B10960:       Set var_154 = Me.TxtGt3
  loc_1B10966:       Call 0.Method_Proc_279_45_1B129580 (var_86)
  loc_1B10977:       Me.TxtGt3.Load var_15C
  loc_1B10990:       Set var_164 = Me.TxtGt3
  loc_1B10996:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B109B3:       Set var_154 = Me.TxtGt3
  loc_1B109B9:       Call 0.Method_Proc_279_45_1B129580 ((var_86 - 1), var_15C)
  loc_1B109DC:       Set var_17C = Me.TxtGt3
  loc_1B109E2:       Call 0.Method_Proc_279_45_1B129580 (var_86, var_26C)
  loc_1B109EA:       var_26C.Top = ((var_15C.Top + var_168.Height) + CDbl(&HF))
  loc_1B109FE:     End If
  loc_1B10A0A:     Set var_154 = Me.LblCap3
  loc_1B10A10:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B10A18:     var_15C.Visible = True
  loc_1B10A30:     Set var_154 = Me.TxtGt3
  loc_1B10A36:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_15C)
  loc_1B10A3E:     var_15C.Visible = True
  loc_1B10A86:     Set var_164 = Me.LblCap3
  loc_1B10A8C:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B10A94:     var_168.Tag = Proc_6_38_E68A98(var_94.Fields.Item("RestCode").Value)
  loc_1B10AE2:     var_18C = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Outlet")))) 'String
  loc_1B10AFE:     Set var_164 = Me.LblCap3
  loc_1B10B04:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_168)
  loc_1B10B0C:     var_168.Caption = CStr(StrConv(var_18C, 3, 0))
  loc_1B10B50:     Proc_6_39_E7C810(var_18C, CVar(var_94.Fields.Item("Amount")))
  loc_1B10B78:     var_12C = CStr(Format(var_18C, "0.00"))
  loc_1B10B86:     Set var_164 = Me.TxtGt3
  loc_1B10B8C:     Call 0.Method_Proc_279_45_1B129580 (var_86, var_168, var_12C)
  loc_1B10B94:     var_168.Text = 1
  loc_1B10BB5:     var_150 = CVar(CStr(var_96)) 'String
  loc_1B10BBD:     Set var_154 = Me.FGrid
  loc_1B10C0A:     var_18C = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Outlet")), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000)) 'String
  loc_1B10C18:     LateIdCallSt
  loc_1B10C45:     var_15C = var_94.Fields.Item("Amount")
  loc_1B10C54:     Proc_6_39_E7C810(var_18C, CVar(var_15C), Me.FGrid, var_18C)
  loc_1B10C5D:     var_1C4 = CVar(CLng(var_96)) 'Long
  loc_1B10C65:     var_238 = CVar(CLng(9)) 'Long
  loc_1B10C8E:     var_1F8 = CVar(CStr(Format(var_18C, "0.00"))) 'String
  loc_1B10C96:     Set var_164 = Me.FGrid
  loc_1B10C9C:     LateIdCallSt
  loc_1B10CBC:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10CC4:     var_1C4 = CVar(CLng(8)) 'Long
  loc_1B10CC9:     var_238 = vbNullString
  loc_1B10CD3:     Set var_154 = Me.FGrid
  loc_1B10CD9:     LateIdCallSt
  loc_1B10CE8:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10CF0:     var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1B10CF5:     var_238 = vbNullString
  loc_1B10CFF:     Set var_154 = Me.FGrid
  loc_1B10D05:     LateIdCallSt
  loc_1B10D14:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10D1C:     var_1C4 = CVar(CLng(&HC)) 'Long
  loc_1B10D2B:     Set var_154 = Me.FGrid
  loc_1B10D31:     LateIdCallSt
  loc_1B10D61:     Call 0.Method_Proc_279_45_1B129580 (CInt(4), var_15C, var_12C, CVar(CLng(1)), CVar(CLng(var_96)), Me.Txt, "N")
  loc_1B10D69:     var_1C4 = var_15C.Text
  loc_1B10D7F:     LateIdCallSt
  loc_1B10DB2:     Set var_154 = Me.Txt
  loc_1B10DB8:     Call 0.Method_Proc_279_45_1B129580 (CInt(5), var_15C, var_12C, CVar(CLng(2)), CVar(CLng(var_96)), Me.FGrid, CVar(var_12C))
  loc_1B10DC0:     var_140 = var_15C.Text
  loc_1B10DC8:     var_150 = CVar(var_12C) 'String
  loc_1B10DD6:     LateIdCallSt
  loc_1B10E15:     var_15C = var_94.Fields.Item("RestCode")
  loc_1B10E2A:     var_18C = CVar(Proc_6_38_E68A98(var_15C.Value, CVar(CLng(&HD)), CVar(CLng(var_96)), Me.FGrid, var_15C.Value)) 'String
  loc_1B10E32:     Set var_164 = Me.FGrid
  loc_1B10E38:     LateIdCallSt
  loc_1B10E54:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10E5C:     var_1C4 = CVar(CLng(5)) 'Long
  loc_1B10E61:     var_238 = vbNullString
  loc_1B10E6B:     Set var_154 = Me.FGrid
  loc_1B10E71:     LateIdCallSt
  loc_1B10E80:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10E88:     var_1C4 = CVar(CLng(7)) 'Long
  loc_1B10E97:     Set var_154 = Me.FGrid
  loc_1B10E9D:     LateIdCallSt
  loc_1B10ECD:     Call 0.Method_Proc_279_45_1B129580 (CInt(6), var_15C, var_12C, CVar(CLng(3)), CVar(CLng(var_96)), Me.Txt, vbNullString)
  loc_1B10ED5:     var_1C4 = var_15C.Text
  loc_1B10EDD:     var_150 = CVar(var_12C) 'String
  loc_1B10EE5:     Set var_164 = Me.FGrid
  loc_1B10EEB:     LateIdCallSt
  loc_1B10F03:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1B10F0B:     var_1C4 = CVar(CLng(4)) 'Long
  loc_1B10F10:     var_238 = "Outlet"
  loc_1B10F1A:     Set var_154 = Me.FGrid
  loc_1B10F20:     LateIdCallSt
  loc_1B10F2E:     var_140 = "Amount"
  loc_1B10F3A:     var_154 = var_94.Fields
  loc_1B10F42:     var_15C = var_154.Item(var_140)
  loc_1B10F4A:     var_150 = CVar(var_15C) 'Address
  loc_1B10F51:     Proc_6_39_E7C810(var_18C, var_150, var_154, var_238, var_1C4, var_140, var_164)
  loc_1B10FA2:     Call Proc_279_55_1844B4C(MemVar_1F92078 & "TMPA", var_96, CSng(Format(var_18C, "0.00")), vbNullString, 0, 1, 1)
  loc_1B10FC2:     var_96 = (var_96 + 1)
  loc_1B10FCB:     var_86 = (var_86 + 1)
  loc_1B10FD1:     var_94.MoveNext
  loc_1B10FD6:     GoTo loc_1B1085E
  loc_1B10FD9:   End If
  loc_1B10FE4:   Set var_154 = Me.LblCap3
  loc_1B10FEA:   Call 0.Method_Proc_279_45_1B129580 (1, var_15C, &HFF, var_86, var_96, var_150)
  loc_1B10FF2:   var_15C.FontBold = var_140
  loc_1B11010:   Call 0.Method_Proc_279_45_1B12958C (var_1D6, var_164, &HFF, Me.LblCap3)
  loc_1B1101C:   Set var_15C = Me.LblCap3
  loc_1B11022:   Call 0.Method_Proc_279_45_1B129580 (var_1D6, var_238, var_1C4)
  loc_1B1102A:   var_164.FontBold = var_140
  loc_1B11043:   Set var_154 = Me.TxtGt3
  loc_1B11049:   Call 0.Method_Proc_279_45_1B129580 (1, var_15C)
  loc_1B11051:   var_15C.FontBold = True
  loc_1B11069:   Set var_154 = Me.TxtGt3
  loc_1B1106F:   Call 0.Method_Proc_279_45_1B12958C (var_1D6, var_164)
  loc_1B1107B:   Set var_15C = Me.TxtGt3
  loc_1B11081:   Call 0.Method_Proc_279_45_1B129580 (var_1D6, &HFF)
  loc_1B11089:   var_164.FontBold = var_164
  loc_1B11097: End If
  loc_1B110A5: Set var_154 = Me.Txt
  loc_1B110AB: Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C)
  loc_1B110B3: var_12C = var_15C.Tag
  loc_1B110F1: var_238 = 0
  loc_1B11118: var_1AC = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C)) & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B11135: unk_5571CB.Execute CStr(Format("MMM/yyyy", "0.00") & Format(var_F4, "MMM/yyyy") & "')"), var_218, -1
  loc_1B1113D: var_164 = var_164.Fields
  loc_1B11145: var_238 = var_168.Item(var_168)
  loc_1B1114D: var_17C = var_17C.Value
  loc_1B11156: var_C0 = CSng(var_228)
  loc_1B11192: Set var_154 = Me.Txt
  loc_1B11198: Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B111A0: var_228 = var_15C.Tag
  loc_1B111DE: var_238 = 0
  loc_1B11205: var_1AC = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), 1) & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B11214: var_208 = Format("MMM/yyyy", "0.00") & Format(var_F4, "MMM/yyyy") & "')" 
  loc_1B11222: unk_5571CB.Execute CStr(var_208), var_218, -1
  loc_1B1122A: var_164 = var_164.Fields
  loc_1B11232: var_238 = var_168.Item(var_168)
  loc_1B1123A: var_17C = var_17C.Value
  loc_1B11280: var_18C = "0.00"
  loc_1B1128D: var_150 = CVar((var_C0 - CSng(var_228))) 'Double
  loc_1B1129C: var_12C = CStr(Format(CVar(var_12C), var_18C))
  loc_1B112AA: Me.TxtOtherCredit.Text = var_12C
  loc_1B112EB: Set var_154 = Me.Txt
  loc_1B112F1: Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, "Select max(MeshAc) From SubGroup S Where S.SubCode='", CVar(var_12C), -1, var_164)
  loc_1B112F9: var_168 = var_15C.Tag
  loc_1B11320: unk_5571CB.Execute 0 & var_12C & "' And (S.Logsite_Code='" & MemVar_1F92078 & "' Or S.Logsite_Code='HO')", var_17C, var_18C
  loc_1B11328: 1 = var_164.Fields
  loc_1B11330: var_C8 = var_168.Item(1)
  loc_1B11338:  = var_17C.Value
  loc_1B11380: If (Trim(CVar(Proc_6_38_E68A98(var_18C))) = vbNullString) Then
  loc_1B11391:   Set var_154 = Me.Txt
  loc_1B11397:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C)
  loc_1B1139F:   var_12C = var_15C.Tag
  loc_1B113B5:   var_140 = var_F4
  loc_1B113BD:   Proc_6_7_F25D88(var_18C)
  loc_1B113C8:   var_1D4 = 0
  loc_1B113EF:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C)) & "' And V_date<") 'String
  loc_1B1140C:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B11414:   var_164 = var_164.Fields
  loc_1B1141C:   var_1D4 = var_168.Item(var_168)
  loc_1B11424:   var_17C = var_17C.Value
  loc_1B1142D:   var_C0 = CSng(var_218)
  loc_1B11467:   Set var_154 = Me.Txt
  loc_1B1146D:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C)
  loc_1B11475:   var_C0 = var_15C.Tag
  loc_1B11493:   Proc_6_7_F25D88(var_18C, var_F4)
  loc_1B1149E:   var_1D4 = 0
  loc_1B114C5:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_218) & "' And V_date<") 'String
  loc_1B114E2:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B114EA:   var_164 = var_164.Fields
  loc_1B114F2:   var_1D4 = var_168.Item(var_168)
  loc_1B114FA:   var_17C = var_17C.Value
  loc_1B11503:   var_C8 = CSng(var_218)
  loc_1B1153D:   Set var_154 = Me.Txt
  loc_1B11543:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C)
  loc_1B1154B:   var_C8 = var_15C.Tag
  loc_1B11589:   var_238 = 0
  loc_1B115A9:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_218)
  loc_1B115B0:   var_1AC = CVar(var_160 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B115BF:   var_208 = Format(var_F4, "MMM/yyyy") & "MMM/yyyy" & Format(var_F4, "MMM/yyyy") & "')" 
  loc_1B115CD:   unk_5571CB.Execute CStr(var_208), var_218, -1
  loc_1B115D5:   var_164 = var_164.Fields
  loc_1B115DD:   var_238 = var_168.Item(var_168)
  loc_1B115E5:   var_17C = var_17C.Value
  loc_1B115EE:   var_EC = CSng(var_228)
  loc_1B11638:   var_150 = CVar((var_C8 - var_C0)) 'Double
  loc_1B11655:   Me.TxtPreBalance.Tag = CStr(Format(CVar(var_12C), "0.00"))
  loc_1B11683:   var_36C = Val(Me.TxtPreBalance.Tag)
  loc_1B1168D:   Set var_15C = Me.TxtPreBalance
  loc_1B116A0:   var_374 = Val(var_15C.Tag)
  loc_1B11700:   Me.LblDrCr.Caption = CStr(IIf((CDbl(var_36C) = CDbl(0)), vbNullString, IIf((CDbl(var_374) > CDbl(0)), " Dr", " Cr")))
  loc_1B11745:   var_150 = CVar(Abs((var_C8 - var_C0))) 'Double
  loc_1B11762:   Me.TxtPreBalance.Text = CStr(Format(" Dr", "0.00"))
  loc_1B117AC:   Me.TxtCreditAmt.Text = CStr(Format(var_EC, "0.00"))
  loc_1B117D7:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B117E9:     var_18C = "0.00"
  loc_1B117FA:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B11832:     Call Proc_279_55_1844B4C(MemVar_1F92078 & "TPRB", var_96, CSng(Format("0.00", var_18C)), vbNullString, 0, 1, 1, 1)
  loc_1B11847:   End If
  loc_1B11854:   var_12C = Me.TxtTaxAmt.Text
  loc_1B1186C:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B11875:     var_96 = (var_96 + 1)
  loc_1B11878:   End If
  loc_1B11886:   Set var_154 = Me.Txt
  loc_1B1188C:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_96, 1, 1)
  loc_1B11894:   1 = var_15C.Tag
  loc_1B118B2:   Proc_6_7_F25D88(var_18C, var_FC)
  loc_1B118BD:   var_1D4 = 0
  loc_1B118E4:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_374, var_36C) & "' And V_date<") 'String
  loc_1B11901:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B11909:   var_164 = var_164.Fields
  loc_1B11911:   var_1D4 = var_168.Item(var_168)
  loc_1B11919:   var_17C = var_17C.Value
  loc_1B11922:   var_C0 = CSng(var_218)
  loc_1B1195C:   Set var_154 = Me.Txt
  loc_1B11962:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B1196A:   var_218 = var_15C.Tag
  loc_1B11988:   Proc_6_7_F25D88(var_18C, var_FC)
  loc_1B11993:   var_1D4 = 0
  loc_1B119BA:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), 1) & "' And V_date<") 'String
  loc_1B119D7:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B119DF:   var_164 = var_164.Fields
  loc_1B119E7:   var_1D4 = var_168.Item(var_168)
  loc_1B119EF:   var_17C = var_17C.Value
  loc_1B119F8:   var_C8 = CSng(var_218)
  loc_1B11A32:   Set var_154 = Me.Txt
  loc_1B11A38:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C)
  loc_1B11A40:   var_C8 = var_15C.Tag
  loc_1B11A87:   var_218 = "MMM/yyyy"
  loc_1B11AA3:   var_2F4 = 0
  loc_1B11AC3:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_218)
  loc_1B11ACA:   var_1AC = CVar(var_160 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B11AD9:   var_208 = Format(var_F4, "MMM/yyyy") & "MMM/yyyy" & Format(var_F4, "MMM/yyyy") & "','" 
  loc_1B11AF7:   unk_5571CB.Execute CStr(var_208 & Format(var_FC, var_218) & "')"), var_27C, -1
  loc_1B11AFF:   var_164 = var_164.Fields
  loc_1B11B07:   var_2F4 = var_168.Item(var_168)
  loc_1B11B0F:   var_17C = var_17C.Value
  loc_1B11B18:   var_EC = CSng(var_294)
  loc_1B11B67:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B11B79:     var_18C = "0.00"
  loc_1B11B8A:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B11BC2:     Call Proc_279_55_1844B4C(MemVar_1F92078 & "TPR1", var_96, CSng(Format(CVar(var_12C), var_18C)), vbNullString, 0, 1, 1)
  loc_1B11BD7:   End If
  loc_1B11BE4:   var_12C = Me.TxtTaxAmt.Text
  loc_1B11BFC:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B11C05:     var_96 = (var_96 + 1)
  loc_1B11C08:   End If
  loc_1B11C16:   Set var_154 = Me.Txt
  loc_1B11C1C:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_96, var_EC, var_294)
  loc_1B11C24:   1 = var_15C.Tag
  loc_1B11C42:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B11C4D:   var_1D4 = 0
  loc_1B11C74:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), 1, 1) & "' And V_date<") 'String
  loc_1B11C91:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B11C99:   var_164 = var_164.Fields
  loc_1B11CA1:   var_1D4 = var_168.Item(var_168)
  loc_1B11CA9:   var_17C = var_17C.Value
  loc_1B11CB2:   var_C0 = CSng(var_218)
  loc_1B11CEC:   Set var_154 = Me.Txt
  loc_1B11CF2:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B11CFA:   var_218 = var_15C.Tag
  loc_1B11D18:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B11D23:   var_1D4 = 0
  loc_1B11D4A:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), 1) & "' And V_date<") 'String
  loc_1B11D67:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B11D6F:   var_164 = var_164.Fields
  loc_1B11D77:   var_1D4 = var_168.Item(var_168)
  loc_1B11D7F:   var_17C = var_17C.Value
  loc_1B11D88:   var_C8 = CSng(var_218)
  loc_1B11DC2:   Set var_154 = Me.Txt
  loc_1B11DC8:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C)
  loc_1B11DD0:   var_C8 = var_15C.Tag
  loc_1B11E17:   var_218 = "MMM/yyyy"
  loc_1B11E28:   var_228 = Format(var_FC, var_218)
  loc_1B11E58:   var_38C = 0
  loc_1B11E78:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_218)
  loc_1B11E7F:   var_1AC = CVar(var_160 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1B11E8E:   var_208 = Format(var_F4, "MMM/yyyy") & "MMM/yyyy" & Format(var_F4, "MMM/yyyy") & "','" 
  loc_1B11E95:   var_248 = var_208 & var_228 
  loc_1B11E9E:   var_268 = var_248 & "','" 
  loc_1B11EBC:   unk_5571CB.Execute CStr(var_268 & Format(var_104, "MMM/yyyy") & "')"), var_2C4, -1
  loc_1B11EC4:   var_164 = var_164.Fields
  loc_1B11ECC:   var_38C = var_168.Item(var_168)
  loc_1B11ED4:   var_17C = var_17C.Value
  loc_1B11EDD:   var_EC = CSng(var_2E4)
  loc_1B11F34:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B11F46:     var_18C = "0.00"
  loc_1B11F57:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B11F8F:     Call Proc_279_55_1844B4C(MemVar_1F92078 & "TPR2", var_96, CSng(Format(CVar(var_12C), var_18C)), vbNullString, 0, 1, 1, var_EC)
  loc_1B11FA4:   End If
  loc_1B11FB1:   var_12C = Me.TxtTaxAmt.Text
  loc_1B11FC9:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B11FD2:     var_96 = (var_96 + 1)
  loc_1B11FD5:   End If
  loc_1B11FE3:   Set var_154 = Me.Txt
  loc_1B11FE9:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_96, var_2E4, 1)
  loc_1B11FF1:   1 = var_15C.Tag
  loc_1B1200F:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B1201A:   var_1D4 = 0
  loc_1B12041:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), 1, 1) & "' And V_date<") 'String
  loc_1B1205E:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B12066:   var_164 = var_164.Fields
  loc_1B1206E:   var_1D4 = var_168.Item(var_168)
  loc_1B12076:   var_17C = var_17C.Value
  loc_1B1207F:   var_C0 = CSng(var_218)
  loc_1B120B9:   Set var_154 = Me.Txt
  loc_1B120BF:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B120C7:   var_218 = var_15C.Tag
  loc_1B120E5:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B120F0:   var_1D4 = 0
  loc_1B12117:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), 1) & "' And V_date<") 'String
  loc_1B12134:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B1213C:   var_164 = var_164.Fields
  loc_1B12144:   var_1D4 = var_168.Item(var_168)
  loc_1B1214C:   var_17C = var_17C.Value
  loc_1B12155:   var_C8 = CSng(var_218)
  loc_1B1218F:   Set var_154 = Me.Txt
  loc_1B12195:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C)
  loc_1B1219D:   var_C8 = var_15C.Tag
  loc_1B121BB:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B121CB:   Proc_6_7_F25D88(var_208, var_10C)
  loc_1B121D6:   var_238 = 0
  loc_1B121F6:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','CNT') And SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_218)
  loc_1B12221:   unk_5571CB.Execute CStr(CVar(var_160 & "' And V_Date Between ") & var_18C & " And " & var_208), var_228, -1
  loc_1B12229:   var_164 = var_164.Fields
  loc_1B12231:   var_238 = var_168.Item(var_168)
  loc_1B12239:   var_17C = var_17C.Value
  loc_1B12242:   var_EC = CSng(var_248)
  loc_1B12282:   If (CDbl(((var_C8 - var_C0) - var_EC)) <= CDbl(0)) Then
  loc_1B12291:     var_E4 = Abs(((var_C8 - var_C0) - var_EC))
  loc_1B12294:   End If
  loc_1B122A2:   Set var_154 = Me.Txt
  loc_1B122A8:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_E4)
  loc_1B122B0:   var_EC = var_15C.Tag
  loc_1B122CE:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B122DE:   Proc_6_7_F25D88(var_208, var_FC)
  loc_1B122E9:   var_258 = 0
  loc_1B12310:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_248) & "' And V_date>=") 'String
  loc_1B12326:   var_218 = var_19C & var_18C & " And  V_date<" & var_208 
  loc_1B1232F:   var_228 = var_218 & vbNullString 
  loc_1B1233D:   unk_5571CB.Execute CStr(var_228), var_248, -1
  loc_1B12345:   var_164 = var_164.Fields
  loc_1B1234D:   var_258 = var_168.Item(var_168)
  loc_1B12355:   var_17C = var_17C.Value
  loc_1B1235E:   var_C8 = CSng(var_268)
  loc_1B123A5:   If ((var_118 <> "N") And (CDbl((var_C8 - var_E4)) > CDbl(0))) Then
  loc_1B123B7:     var_18C = "0.00"
  loc_1B123C4:     var_150 = CVar((var_C8 - var_E4)) 'Double
  loc_1B123FC:     Call Proc_279_55_1844B4C(MemVar_1F92078 & "TPR3", var_96, CSng(Format(CVar(var_12C), var_18C)), vbNullString, 0)
  loc_1B12411:   End If
  loc_1B1241E:   var_12C = Me.TxtTaxAmt.Text
  loc_1B12436:   If (CDbl(Val(var_12C)) > CDbl(0)) Then
  loc_1B1243F:     var_96 = (var_96 + 1)
  loc_1B12442:   End If
  loc_1B12450:   Set var_154 = Me.Txt
  loc_1B12456:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_96, 1)
  loc_1B1245E:   1 = var_15C.Tag
  loc_1B1247C:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B12487:   var_1D4 = 0
  loc_1B124AE:   var_19C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_C8) & "' And V_date<") 'String
  loc_1B124CB:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B124D3:   var_164 = var_164.Fields
  loc_1B124DB:   var_1D4 = var_168.Item(var_168)
  loc_1B124E3:   var_17C = var_17C.Value
  loc_1B124EC:   var_C0 = CSng(var_218)
  loc_1B12526:   Set var_154 = Me.Txt
  loc_1B1252C:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C, var_C0)
  loc_1B12534:   var_218 = var_15C.Tag
  loc_1B12552:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B1255D:   var_1D4 = 0
  loc_1B12584:   var_19C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_268) & "' And V_date<") 'String
  loc_1B125A1:   unk_5571CB.Execute CStr(var_19C & var_18C & vbNullString), var_208, -1
  loc_1B125A9:   var_164 = var_164.Fields
  loc_1B125B1:   var_1D4 = var_168.Item(var_168)
  loc_1B125B9:   var_17C = var_17C.Value
  loc_1B125C2:   var_C8 = CSng(var_218)
  loc_1B125FC:   Set var_154 = Me.Txt
  loc_1B12602:   Call 0.Method_Proc_279_45_1B129580 (CInt(0), var_15C, var_12C)
  loc_1B1260A:   var_C8 = var_15C.Tag
  loc_1B12628:   Proc_6_7_F25D88(var_18C, var_104)
  loc_1B12638:   Proc_6_7_F25D88(var_208, var_10C)
  loc_1B12643:   var_238 = 0
  loc_1B12663:   var_160 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','CNT') And SubCode='" & Proc_6_38_E68A98(CVar(var_12C), var_218)
  loc_1B1268E:   unk_5571CB.Execute CStr(CVar(var_160 & "' And V_Date Between ") & var_18C & " And " & var_208), var_228, -1
  loc_1B12696:   var_164 = var_164.Fields
  loc_1B1269E:   var_238 = var_168.Item(var_168)
  loc_1B126A6:   var_17C = var_17C.Value
  loc_1B126AF:   var_EC = CSng(var_248)
  loc_1B126F8:   If ((var_118 <> "N") And (CDbl(((var_C8 - var_C0) - var_EC)) > CDbl(0))) Then
  loc_1B1271B:     var_150 = CVar(((var_C8 - var_C0) - var_EC)) 'Double
  loc_1B12753:     Call Proc_279_55_1844B4C(MemVar_1F92078 & "TPR4", var_96, CSng(Format(CVar(var_12C), "0.00")), vbNullString, 0)
  loc_1B12768:   End If
  loc_1B1278D:   If (CDbl(Val(Me.TxtTaxAmt.Text)) > CDbl(0)) Then
  loc_1B12796:     var_96 = (var_96 + 1)
  loc_1B12799:   End If
  loc_1B12799: End If
  loc_1B127BE: For var_390 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_390 'Integer
  loc_1B127C8:   var_140 = CVar(CLng(var_86)) 'Long
  loc_1B127D0:   var_1C4 = CVar(CLng(9)) 'Long
  loc_1B127FC:   var_B0 = (var_B0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1B1280B: Next var_390 'Integer
  loc_1B12861: Call Proc_279_55_1844B4C(MemVar_1F92078 & "TMBA", var_96, CSng(Format(var_B0, "0.00")), vbNullString)
  loc_1B12899: If (CDbl(Val(Me.TxtTaxAmt.Text)) > CDbl(0)) Then
  loc_1B128A2:   var_96 = (var_96 + 1)
  loc_1B128A5: End If
  loc_1B128C4: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1B128C7:   var_140 = "1"
  loc_1B128D1:   Set var_154 = Me.FGrid
  loc_1B128E2: End If
  loc_1B128F5: Me.FGrid.FixedRows = 1
  loc_1B1291C: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1B1291F:   var_140 = 1
  loc_1B12932:   Me.FGCat.FixedRows = var_140
  loc_1B1293A: End If
  loc_1B1293A: Call Proc_279_54_14E5B50(FGrid.DispID_10000, var_140, var_96)
  loc_1B12944: Set var_8C = Nothing
  loc_1B1294C: Set var_90 = Nothing
  loc_1B12954: Set var_9C = Nothing
  loc_1B12957: Exit Sub
End Sub

Public Sub Proc_279_46_1193DFC
  'Data Table: 5571B0
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_100 As MSHFlexGrid
  loc_11939F4: On Error Goto loc_1193DF4
  loc_11939FB: Set var_88 = Me.FGrid
  loc_1193A0A: var_88.Cols = &HE
  loc_1193A1B: var_88.Rows = 2
  loc_1193A2C: var_88.FixedCols = 1
  loc_1193A45: global_84 = CStr(CLng(var_88.BackColor))
  loc_1193A52: var_98 = CVar(CLng(0)) 'Long
  loc_1193A57: var_CC = &H1F4
  loc_1193A63: LateIdCallSt
  loc_1193A6B: var_98 = 0
  loc_1193A77: var_CC = CVar(CLng(0)) 'Long
  loc_1193A7C: var_EC = "SNo"
  loc_1193A85: LateIdCallSt
  loc_1193A90: var_98 = CVar(CLng(6)) 'Long
  loc_1193A95: var_CC = &H7D0
  loc_1193AA1: LateIdCallSt
  loc_1193AA9: var_98 = 0
  loc_1193AB5: var_CC = CVar(CLng(6)) 'Long
  loc_1193ABA: var_EC = "Description"
  loc_1193AC3: LateIdCallSt
  loc_1193ACE: var_98 = CVar(CLng(9)) 'Long
  loc_1193AD3: var_CC = &H3E8
  loc_1193ADF: LateIdCallSt
  loc_1193AE7: var_98 = 0
  loc_1193AF3: var_CC = CVar(CLng(9)) 'Long
  loc_1193AF8: var_EC = "BaseAmt"
  loc_1193B01: LateIdCallSt
  loc_1193B0C: var_98 = CVar(CLng(8)) 'Long
  loc_1193B11: var_CC = &H3E8
  loc_1193B1D: LateIdCallSt
  loc_1193B25: var_98 = 0
  loc_1193B31: var_CC = CVar(CLng(8)) 'Long
  loc_1193B36: var_EC = "AcCode"
  loc_1193B3F: LateIdCallSt
  loc_1193B4A: var_98 = CVar(CLng(&HB)) 'Long
  loc_1193B4F: var_CC = &H5DC
  loc_1193B5B: LateIdCallSt
  loc_1193B63: var_98 = 0
  loc_1193B6F: var_CC = CVar(CLng(&HB)) 'Long
  loc_1193B74: var_EC = "AcPosting"
  loc_1193B7D: LateIdCallSt
  loc_1193B88: var_98 = CVar(CLng(&HC)) 'Long
  loc_1193B8D: var_CC = &H44C
  loc_1193B99: LateIdCallSt
  loc_1193BA1: var_98 = 0
  loc_1193BAD: var_CC = CVar(CLng(&HC)) 'Long
  loc_1193BB2: var_EC = "AcPostingYN"
  loc_1193BBB: LateIdCallSt
  loc_1193BC3: var_98 = 0
  loc_1193BCF: var_CC = CVar(CLng(1)) 'Long
  loc_1193BD4: var_EC = "Docid"
  loc_1193BDD: LateIdCallSt
  loc_1193BE8: var_98 = CVar(CLng(1)) 'Long
  loc_1193BED: var_CC = &H3E8
  loc_1193BF9: LateIdCallSt
  loc_1193C01: var_98 = 0
  loc_1193C0D: var_CC = CVar(CLng(2)) 'Long
  loc_1193C12: var_EC = "Bill No"
  loc_1193C1B: LateIdCallSt
  loc_1193C26: var_98 = CVar(CLng(2)) 'Long
  loc_1193C2B: var_CC = &H3E8
  loc_1193C37: LateIdCallSt
  loc_1193C3F: var_98 = 0
  loc_1193C4B: var_CC = CVar(CLng(&HD)) 'Long
  loc_1193C50: var_EC = "OutletCode"
  loc_1193C59: LateIdCallSt
  loc_1193C64: var_98 = CVar(CLng(&HD)) 'Long
  loc_1193C69: var_CC = &H3E8
  loc_1193C75: LateIdCallSt
  loc_1193C7D: var_98 = 0
  loc_1193C89: var_CC = CVar(CLng(5)) 'Long
  loc_1193C8E: var_EC = "FacilityCode"
  loc_1193C97: LateIdCallSt
  loc_1193CA2: var_98 = CVar(CLng(5)) 'Long
  loc_1193CA7: var_CC = &H3E8
  loc_1193CB3: LateIdCallSt
  loc_1193CBB: var_98 = 0
  loc_1193CC7: var_CC = CVar(CLng(7)) 'Long
  loc_1193CCC: var_EC = "TaxStruCode"
  loc_1193CD5: LateIdCallSt
  loc_1193CE0: var_98 = CVar(CLng(7)) 'Long
  loc_1193CE5: var_CC = &H3E8
  loc_1193CF1: LateIdCallSt
  loc_1193CF9: var_98 = 0
  loc_1193D05: var_CC = CVar(CLng(4)) 'Long
  loc_1193D0A: var_EC = "Type"
  loc_1193D13: LateIdCallSt
  loc_1193D1E: var_98 = CVar(CLng(4)) 'Long
  loc_1193D23: var_CC = &H3E8
  loc_1193D2F: LateIdCallSt
  loc_1193D37: var_98 = 0
  loc_1193D43: var_CC = CVar(CLng(3)) 'Long
  loc_1193D48: var_EC = "VType"
  loc_1193D51: LateIdCallSt
  loc_1193D5C: var_98 = CVar(CLng(4)) 'Long
  loc_1193D61: var_CC = &H3E8
  loc_1193D6D: LateIdCallSt
  loc_1193D75: var_98 = 0
  loc_1193D81: var_CC = CVar(CLng(&HA)) 'Long
  loc_1193D86: var_EC = "Tax Amt"
  loc_1193D8F: LateIdCallSt
  loc_1193D9A: var_98 = CVar(CLng(&HA)) 'Long
  loc_1193D9F: var_CC = &H3E8
  loc_1193DAB: LateIdCallSt
  loc_1193DB5: Set var_88 = Nothing 
  loc_1193DC3: var_98 = CVar(CLng(7)) 'Long
  loc_1193DC8: var_CC = &H7D0
  loc_1193DD4: LateIdCallSt
  loc_1193DDC: var_98 = &HB
  loc_1193DE8: Me.FGCat.Cols = var_98
  loc_1193DEF: Set var_100 = Nothing 
  loc_1193DF3: Exit Sub
  loc_1193DF4: ' Referenced from: 11939F4
  loc_1193DF4: Proc_6_60_E62BC4(var_100, var_CC, var_98, var_88, var_CC, var_98, var_88)
  loc_1193DF9: Exit Sub
End Sub

Public Sub Proc_279_47_DFD358
  'Data Table: 5571B0
  loc_DFD354: Exit Sub
End Sub

Public Sub Proc_279_48_174C60C
  'Data Table: 5571B0
  Dim var_B0 As Variant
  Dim var_A8 As Double
  Dim var_9E As Integer
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_5571CB As Connection15
  Dim var_88 As Recordset15
  Dim var_E0 As Variant
  Dim var_EC As Variant
  Dim var_DC As Variant
  Dim var_120 As Variant
  Dim var_94 As Double
  Dim var_150 As Label
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_134 As TextBox
  Dim var_13C As String
  Dim var_AC As Fields15
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_188 As TextBox
  Dim var_190 As TextBox
  Dim var_18C As Label
  Dim var_100 As Variant
  Dim var_20C As Integer
  Dim var_B4 As String
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_138 As String
  loc_174A933: If (global_128 = "VOUCHER DATE") Then
  loc_174A944:   Set var_AC = Me.Txt
  loc_174A94A:   Call 0.Method_Proc_279_48_174C60C0 (CInt(7), var_B0)
  loc_174A95C:   var_A8 = CDate(var_B0.Text)
  loc_174A96C: Else
  loc_174A97A:   Set var_AC = Me.Txt
  loc_174A980:   Call 0.Method_Proc_279_48_174C60C0 (CInt(3), var_B0)
  loc_174A988:   var_B4 = var_B0.Text
  loc_174A992:   var_A8 = CDate(var_B4)
  loc_174A99F: End If
  loc_174A9A1: var_9E = 1
  loc_174A9C2: Set var_AC = Me.Txt
  loc_174A9C8: Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_B4, "Select Sum(BaseAmt) as BaseAmt  from MemBill1 where Type='Outlet' and Docid='", var_DC)
  loc_174A9D0: -1 = var_B0.Text
  loc_174A9E9: unk_5571CB.Execute var_E0 & var_B4 & "'", var_9E, var_A8
  loc_174A9F4: Set var_88 = var_E0
  loc_174AA20: If (var_88.RecordCount > 0) Then
  loc_174AA2A:   Set var_AC = Me.TxtGt
  loc_174AA30:   Call 0.Method_Proc_279_48_174C60C8 (var_E6)
  loc_174AA42:   Set var_B0 = Me.TxtGt
  loc_174AA48:   Call 0.Method_Proc_279_48_174C60C0 (var_E6, var_E0)
  loc_174AA70:   var_EC = var_88.Fields
  loc_174AA87:   Proc_6_39_E7C810(var_100, CVar(var_EC.Item("BaseAmt")))
  loc_174AA8F:   var_120 = (CVar(Val(var_E0.Text)) - var_100)
  loc_174AA94:   var_94 = CSng(var_120)
  loc_174AAAF: Else
  loc_174AAB6:   Set var_AC = Me.TxtGt
  loc_174AABC:   Call 0.Method_Proc_279_48_174C60C8 (var_E6, var_94)
  loc_174AACE:   Set var_B0 = Me.TxtGt
  loc_174AAD4:   Call 0.Method_Proc_279_48_174C60C0 (var_E6, var_E0)
  loc_174AAE9:   var_94 = Val(var_E0.Text)
  loc_174AAF8: End If
  loc_174AB06: Set var_AC = Me.Txt
  loc_174AB0C: Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140)
  loc_174AB27: Set var_E0 = Me.Txt
  loc_174AB2D: Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC)
  loc_174AB5A: Set var_F0 = Me.Txt
  loc_174AB60: Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_124)
  loc_174AB68: var_B4 = var_124.Tag
  loc_174AB7B: Set var_128 = Me.Txt
  loc_174AB81: Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_12C)
  loc_174AB9C: Set var_130 = Me.Txt
  loc_174ABA2: Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_134)
  loc_174ABAA: var_138 = var_134.Text
  loc_174ABBC: var_184 = 0
  loc_174ABC7: var_180 = 0
  loc_174ABD2: var_17C = 0
  loc_174ABDB: var_178 = "A"
  loc_174ABFB: var_13C = "Against bill no : " & var_12C.Text & " For "
  loc_174AC09: var_168 = vbNullString
  loc_174AC4A: Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_EC.Text), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174AC92: var_9E = (var_9E + 1)
  loc_174ACB3: Set var_AC = Me.Txt
  loc_174ACB9: Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_B4, "Select Sum(TaxAmt) as BaseAmt,max(Accode) as AcCode from MemBILL2 Inner join Revmast on revmast.code=Membill2.TaxCode Where Docid='", Now, -1, var_E0)
  loc_174ACC1: var_9E = var_B0.Text
  loc_174ACDA: unk_5571CB.Execute var_B4 & var_B4 & "' Group By TaxCode", CDbl(0), var_B0.Text
  loc_174ACE5: Set var_88 = var_E0
  loc_174ACFD: ' Referenced from: 174B1A2
  loc_174AD0C: If Not(var_88.EOF) Then
  loc_174AD26:   var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174AD35:   Proc_6_39_E7C810(var_100, CVar(var_B0), var_168)
  loc_174AD4F:   If (var_100 > 0) Then
  loc_174AD60:     Set var_AC = Me.Txt
  loc_174AD66:     Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140)
  loc_174AD6E:     var_13C & var_138 = var_B0.Text
  loc_174AD81:     Set var_E0 = Me.Txt
  loc_174AD87:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC)
  loc_174AD8F:     var_14C = var_EC.Text
  loc_174ADC8:     var_100 = var_88.Fields.Item("AcCode").Value
  loc_174ADEF:     var_120 = var_88.Fields.Item("BaseAmt").Value
  loc_174AE02:     Set var_130 = Me.Txt
  loc_174AE08:     Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_134)
  loc_174AE10:     var_B4 = var_134.Tag
  loc_174AE23:     Set var_150 = Me.Txt
  loc_174AE29:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_188)
  loc_174AE44:     Set var_18C = Me.Txt
  loc_174AE4A:     Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_190)
  loc_174AE52:     var_138 = var_190.Text
  loc_174AE5A:     var_DC = Now
  loc_174AE64:     var_184 = 0
  loc_174AE6F:     var_180 = 0
  loc_174AE7A:     var_17C = 0
  loc_174AE83:     var_178 = "A"
  loc_174AEA3:     var_13C = "Against bill no : " & var_188.Text & " For "
  loc_174AEF6:     Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174AF4C:     var_9E = (var_9E + 1)
  loc_174AF52:   Else
  loc_174AF69:     var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174AF78:     Proc_6_39_E7C810(var_100, CVar(var_B0), var_9E, CStr(var_100), CSng(var_120), CDbl(0))
  loc_174AF92:     If (var_100 < 0) Then
  loc_174AFA3:       Set var_AC = Me.Txt
  loc_174AFA9:       Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140, var_B4)
  loc_174AFB1:       var_13C & var_138 = var_B0.Text
  loc_174AFC4:       Set var_E0 = Me.Txt
  loc_174AFCA:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC, var_14C)
  loc_174AFD2:       MemVar_1F920C8 = var_EC.Text
  loc_174B00B:       var_1BC = var_88.Fields.Item("AcCode").Value
  loc_174B02F:       var_DC = CVar(var_88.Fields.Item("BaseAmt")) 'Address
  loc_174B036:       Proc_6_39_E7C810(var_100, var_DC)
  loc_174B049:       Set var_130 = Me.Txt
  loc_174B04F:       Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_134, var_B4)
  loc_174B057:       CDate(var_DC) = var_134.Tag
  loc_174B06A:       Set var_150 = Me.Txt
  loc_174B070:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_188)
  loc_174B08B:       Set var_18C = Me.Txt
  loc_174B091:       Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_190)
  loc_174B099:       var_138 = var_190.Text
  loc_174B0A1:       var_1AC = Now
  loc_174B0AB:       var_184 = 0
  loc_174B0B6:       var_180 = 0
  loc_174B0C1:       var_17C = 0
  loc_174B0CA:       var_178 = "A"
  loc_174B0EA:       var_13C = "Against bill no :   " & var_188.Text & " For "
  loc_174B0FF:       var_120 = Abs(var_100)
  loc_174B141:       Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174B197:       var_9E = (var_9E + 1)
  loc_174B19A:     End If
  loc_174B19A:   End If
  loc_174B19D:   var_88.MoveNext
  loc_174B1A2:   GoTo loc_174ACFD
  loc_174B1A5: End If
  loc_174B1C3: Set var_AC = Me.Txt
  loc_174B1C9: Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_B4, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode,Name from MemBill1 Left join MemFacilityMast on MemFacilitymast.code=Membill1.Facilitycode where Type='Facility' and Docid='", var_DC, -1, var_E0)
  loc_174B1D1: var_9E = var_B0.Text
  loc_174B1EA: unk_5571CB.Execute CStr(var_1BC) & var_B4 & "'", CDbl(0), CSng(var_120)
  loc_174B1F5: Set var_88 = var_E0
  loc_174B20D: ' Referenced from: 174B6B2
  loc_174B21C: If Not(var_88.EOF) Then
  loc_174B236:   var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174B245:   Proc_6_39_E7C810(var_100, CVar(var_B0), var_B4)
  loc_174B25F:   If (var_100 > 0) Then
  loc_174B270:     Set var_AC = Me.Txt
  loc_174B276:     Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140)
  loc_174B27E:     var_13C & var_138 = var_B0.Text
  loc_174B291:     Set var_E0 = Me.Txt
  loc_174B297:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC)
  loc_174B29F:     var_14C = var_EC.Text
  loc_174B2D8:     var_100 = var_88.Fields.Item("AcCode").Value
  loc_174B2FF:     var_120 = var_88.Fields.Item("BaseAmt").Value
  loc_174B312:     Set var_130 = Me.Txt
  loc_174B318:     Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_134)
  loc_174B320:     var_B4 = var_134.Tag
  loc_174B333:     Set var_150 = Me.Txt
  loc_174B339:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_188)
  loc_174B354:     Set var_18C = Me.Txt
  loc_174B35A:     Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_190)
  loc_174B362:     var_138 = var_190.Text
  loc_174B36A:     var_DC = Now
  loc_174B374:     var_184 = 0
  loc_174B37F:     var_180 = 0
  loc_174B38A:     var_17C = 0
  loc_174B393:     var_178 = "A"
  loc_174B3B3:     var_13C = "Against bill no : " & var_188.Text & " For "
  loc_174B406:     Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174B45C:     var_9E = (var_9E + 1)
  loc_174B462:   Else
  loc_174B479:     var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174B488:     Proc_6_39_E7C810(var_100, CVar(var_B0), var_9E, CStr(var_100), CSng(var_120), CDbl(0))
  loc_174B4A2:     If (var_100 < 0) Then
  loc_174B4B3:       Set var_AC = Me.Txt
  loc_174B4B9:       Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140, var_B4)
  loc_174B4C1:       var_13C & var_138 = var_B0.Text
  loc_174B4D4:       Set var_E0 = Me.Txt
  loc_174B4DA:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC, var_14C)
  loc_174B4E2:       MemVar_1F920C8 = var_EC.Text
  loc_174B51B:       var_1BC = var_88.Fields.Item("AcCode").Value
  loc_174B53F:       var_DC = CVar(var_88.Fields.Item("BaseAmt")) 'Address
  loc_174B546:       Proc_6_39_E7C810(var_100, var_DC)
  loc_174B559:       Set var_130 = Me.Txt
  loc_174B55F:       Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_134, var_B4)
  loc_174B567:       CDate(var_DC) = var_134.Tag
  loc_174B57A:       Set var_150 = Me.Txt
  loc_174B580:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_188)
  loc_174B59B:       Set var_18C = Me.Txt
  loc_174B5A1:       Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_190)
  loc_174B5A9:       var_138 = var_190.Text
  loc_174B5B1:       var_1AC = Now
  loc_174B5BB:       var_184 = 0
  loc_174B5C6:       var_180 = 0
  loc_174B5D1:       var_17C = 0
  loc_174B5DA:       var_178 = "A"
  loc_174B5FA:       var_13C = "Against bill no :   " & var_188.Text & " For "
  loc_174B60F:       var_120 = Abs(var_100)
  loc_174B651:       Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174B6A7:       var_9E = (var_9E + 1)
  loc_174B6AA:     End If
  loc_174B6AA:   End If
  loc_174B6AD:   var_88.MoveNext
  loc_174B6B2:   GoTo loc_174B20D
  loc_174B6B5: End If
  loc_174B6D3: Set var_AC = Me.Txt
  loc_174B6D9: Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_B4, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode from MemBill1 Left join MembershipRevMast on MembershipRevMast.code=Membill1.Facilitycode where Type='Revenue' and Docid='", var_DC, -1, var_E0)
  loc_174B6E1: var_9E = var_B0.Text
  loc_174B6FA: unk_5571CB.Execute CStr(var_1BC) & var_B4 & "'", CDbl(0), CSng(var_120)
  loc_174B705: Set var_88 = var_E0
  loc_174B71D: ' Referenced from: 174BBC2
  loc_174B72C: If Not(var_88.EOF) Then
  loc_174B746:   var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174B755:   Proc_6_39_E7C810(var_100, CVar(var_B0), var_B4)
  loc_174B76F:   If (var_100 > 0) Then
  loc_174B780:     Set var_AC = Me.Txt
  loc_174B786:     Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140)
  loc_174B78E:     var_13C & var_138 = var_B0.Text
  loc_174B7A1:     Set var_E0 = Me.Txt
  loc_174B7A7:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC)
  loc_174B7AF:     var_14C = var_EC.Text
  loc_174B7E8:     var_100 = var_88.Fields.Item("AcCode").Value
  loc_174B80F:     var_120 = var_88.Fields.Item("BaseAmt").Value
  loc_174B822:     Set var_130 = Me.Txt
  loc_174B828:     Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_134)
  loc_174B830:     var_B4 = var_134.Tag
  loc_174B843:     Set var_150 = Me.Txt
  loc_174B849:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_188)
  loc_174B864:     Set var_18C = Me.Txt
  loc_174B86A:     Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_190)
  loc_174B872:     var_138 = var_190.Text
  loc_174B87A:     var_DC = Now
  loc_174B884:     var_184 = 0
  loc_174B88F:     var_180 = 0
  loc_174B89A:     var_17C = 0
  loc_174B8A3:     var_178 = "A"
  loc_174B8C3:     var_13C = "Against bill no : " & var_188.Text & " For "
  loc_174B916:     Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174B96C:     var_9E = (var_9E + 1)
  loc_174B972:   Else
  loc_174B989:     var_B0 = var_88.Fields.Item("BaseAmt")
  loc_174B998:     Proc_6_39_E7C810(var_100, CVar(var_B0), var_9E, CStr(var_100), CSng(var_120), CDbl(0))
  loc_174B9B2:     If (var_100 < 0) Then
  loc_174B9C3:       Set var_AC = Me.Txt
  loc_174B9C9:       Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140, var_B4)
  loc_174B9D1:       var_13C & var_138 = var_B0.Text
  loc_174B9E4:       Set var_E0 = Me.Txt
  loc_174B9EA:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC, var_14C)
  loc_174B9F2:       MemVar_1F920C8 = var_EC.Text
  loc_174BA2B:       var_1BC = var_88.Fields.Item("AcCode").Value
  loc_174BA47:       var_12C = var_88.Fields.Item("BaseAmt")
  loc_174BA4F:       var_DC = CVar(var_12C) 'Address
  loc_174BA56:       Proc_6_39_E7C810(var_100, var_DC)
  loc_174BA69:       Set var_130 = Me.Txt
  loc_174BA6F:       Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_134, var_B4)
  loc_174BA77:       CDate(var_DC) = var_134.Tag
  loc_174BA8A:       Set var_150 = Me.Txt
  loc_174BA90:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_188)
  loc_174BAAB:       Set var_18C = Me.Txt
  loc_174BAB1:       Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_190)
  loc_174BAB9:       var_138 = var_190.Text
  loc_174BAC1:       var_1AC = Now
  loc_174BACB:       var_184 = 0
  loc_174BAD6:       var_180 = 0
  loc_174BAE1:       var_17C = 0
  loc_174BAEA:       var_178 = "A"
  loc_174BB0A:       var_13C = "Against bill no :   " & var_188.Text & " For "
  loc_174BB1F:       var_120 = Abs(var_100)
  loc_174BB61:       Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174BBB7:       var_9E = (var_9E + 1)
  loc_174BBBA:     End If
  loc_174BBBA:   End If
  loc_174BBBD:   var_88.MoveNext
  loc_174BBC2:   GoTo loc_174B71D
  loc_174BBC5: End If
  loc_174BBE3: Set var_AC = Me.Txt
  loc_174BBE9: Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_B4, "Select IsNull(RoundOff,0) As RoundOff,MemBill.MemCode from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_DC, -1, var_E0)
  loc_174BBF1: var_9E = var_B0.Text
  loc_174BC0A: unk_5571CB.Execute CStr(var_1BC) & var_B4 & "'", CDbl(0), CSng(var_120)
  loc_174BC15: Set var_88 = var_E0
  loc_174BC2D: ' Referenced from: 174C069
  loc_174BC3C: If Not(var_88.EOF) Then
  loc_174BC59:   var_B0 = var_88.Fields.Item("RoundOff")
  loc_174BC7B:   If (var_B0.Value > 0) Then
  loc_174BC8C:     Set var_AC = Me.Txt
  loc_174BC92:     Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140)
  loc_174BC9A:     var_B4 = var_B0.Text
  loc_174BCAD:     Set var_E0 = Me.Txt
  loc_174BCB3:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC, var_14C)
  loc_174BCBB:     var_13C & var_138 = var_EC.Text
  loc_174BCF4:     var_100 = var_88.Fields.Item("RoundOff").Value
  loc_174BD07:     Set var_128 = Me.Txt
  loc_174BD0D:     Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_12C)
  loc_174BD15:     var_B4 = var_12C.Tag
  loc_174BD28:     Set var_130 = Me.Txt
  loc_174BD2E:     Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_134)
  loc_174BD49:     Set var_150 = Me.Txt
  loc_174BD4F:     Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_188)
  loc_174BD57:     var_138 = var_188.Text
  loc_174BD5F:     var_DC = Now
  loc_174BD69:     var_184 = 0
  loc_174BD74:     var_180 = 0
  loc_174BD7F:     var_17C = 0
  loc_174BD88:     var_178 = "A"
  loc_174BDA8:     var_13C = "Against bill no : " & var_134.Text & " For "
  loc_174BDFE:     Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, "MBILL", CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174BE4B:   Else
  loc_174BE65:     var_B0 = var_88.Fields.Item("RoundOff")
  loc_174BE87:     If (var_B0.Value < 0) Then
  loc_174BE98:       Set var_AC = Me.Txt
  loc_174BE9E:       Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_140, MemVar_1F92070 & "ROFF", CSng(var_100), CDbl(0))
  loc_174BEA6:       var_B4 = var_B0.Text
  loc_174BEB9:       Set var_E0 = Me.Txt
  loc_174BEBF:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC, var_14C, var_13C & var_138)
  loc_174BEC7:       MemVar_1F920C8 = var_EC.Text
  loc_174BEF8:       var_124 = var_88.Fields.Item("RoundOff")
  loc_174BF00:       var_DC = var_124.Value
  loc_174BF13:       Set var_128 = Me.Txt
  loc_174BF19:       Call 0.Method_Proc_279_48_174C60C0 (CInt(0), var_12C, var_B4)
  loc_174BF21:       CDate(var_DC) = var_12C.Tag
  loc_174BF34:       Set var_130 = Me.Txt
  loc_174BF3A:       Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_134)
  loc_174BF55:       Set var_150 = Me.Txt
  loc_174BF5B:       Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_188)
  loc_174BF63:       var_138 = var_188.Text
  loc_174BF6B:       var_120 = Now
  loc_174BF75:       var_184 = 0
  loc_174BF80:       var_180 = 0
  loc_174BF8B:       var_17C = 0
  loc_174BF94:       var_178 = "A"
  loc_174BFB4:       var_13C = "Against bill no :   " & var_134.Text & " For "
  loc_174BFC9:       var_100 = Abs(var_DC)
  loc_174BFFB:       var_148 = "MBILL"
  loc_174C00E:       Proc_6_141_12E1E18(MemVar_1F92044, var_140, var_9E, var_148, CLng(var_14C), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174C058:     End If
  loc_174C058:   End If
  loc_174C05E:   var_9E = (var_9E + 1)
  loc_174C064:   var_88.MoveNext
  loc_174C069:   GoTo loc_174BC2D
  loc_174C06C: End If
  loc_174C08A: Set var_AC = Me.Txt
  loc_174C090: Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_B4, "Select NetAmount,MemBill.MemCode,MeshAc,Vdate from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_DC, -1, var_E0)
  loc_174C098: var_9E = var_B0.Text
  loc_174C0B1: unk_5571CB.Execute MemVar_1F92070 & "ROFF" & var_B4 & "'", CDbl(0), CSng(var_100)
  loc_174C0BC: Set var_88 = var_E0
  loc_174C0E8: If (var_88.RecordCount > 0) Then
  loc_174C119:   var_120 = Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("meshAc")), var_B4)))
  loc_174C135:   If CBool(var_120 <> vbNullString) Then
  loc_174C138:     ' Referenced from: 174C600
  loc_174C147:     If Not(var_88.EOF) Then
  loc_174C161:       var_B0 = var_88.Fields.Item("MemCode")
  loc_174C18C:       var_EC = var_88.Fields.Item("VDate")
  loc_174C19B:       Proc_6_7_F25D88(var_120, CVar(var_EC))
  loc_174C1A6:       var_20C = 0
  loc_174C1C6:       var_B8 = "Select isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As CreditAmt From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_B0), var_13C & var_138)
  loc_174C1DC:       var_1DC = CVar(MemVar_1F92070 & "ROFF" & Proc_6_38_E68A98(CVar(var_B0), var_13C & var_138) & "' And V_date<=") & var_120 & vbNullString 
  loc_174C1EA:       unk_5571CB.Execute CStr(var_1DC), var_1FC, -1
  loc_174C1F2:       var_F0 = var_F0.Fields
  loc_174C1FA:       var_20C = var_124.Item(var_124)
  loc_174C202:       var_128 = var_128.Value
  loc_174C20D:       Proc_6_39_E7C810(var_22C, var_21C)
  loc_174C24D:       If (CSng(var_22C) > CDbl(0)) Then
  loc_174C256:         var_9E = (var_9E + 1)
  loc_174C267:         Set var_AC = Me.Txt
  loc_174C26D:         Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_13C, var_9E)
  loc_174C288:         Set var_E0 = Me.Txt
  loc_174C28E:         Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC, var_148)
  loc_174C296:         var_21C = var_EC.Text
  loc_174C309:         Set var_130 = Me.Txt
  loc_174C30F:         Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_134)
  loc_174C317:         var_B4 = var_134.Text
  loc_174C32A:         Set var_150 = Me.Txt
  loc_174C330:         Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_188)
  loc_174C338:         var_BC = var_188.Text
  loc_174C34A:         var_180 = 0
  loc_174C355:         var_17C = 0
  loc_174C360:         var_178 = 0
  loc_174C369:         var_16C = "A"
  loc_174C3D8:         Proc_6_141_12E1E18(MemVar_1F92044, var_13C, var_9E, "MBILL", CLng(var_148), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174C42A:         var_9E = (var_9E + 1)
  loc_174C43B:         Set var_AC = Me.Txt
  loc_174C441:         Call 0.Method_Proc_279_48_174C60C0 (CInt(4), var_B0, var_13C, var_9E, CStr(var_88.Fields.Item("MemCode").Value), var_B0.Text)
  loc_174C449:         CDbl(0) = var_B0.Text
  loc_174C45C:         Set var_E0 = Me.Txt
  loc_174C462:         Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_EC, var_148, CStr(var_88.Fields.Item("meshAc").Value))
  loc_174C46A:         var_138 & var_BC = var_EC.Text
  loc_174C4A3:         var_100 = var_88.Fields.Item("meshAc").Value
  loc_174C4CA:         var_120 = var_88.Fields.Item("MemCode").Value
  loc_174C4DD:         Set var_130 = Me.Txt
  loc_174C4E3:         Call 0.Method_Proc_279_48_174C60C0 (CInt(5), var_134, var_B4)
  loc_174C4EB:         MemVar_1F920C8 = var_134.Text
  loc_174C4FE:         Set var_150 = Me.Txt
  loc_174C504:         Call 0.Method_Proc_279_48_174C60C0 (CInt(2), var_188, var_BC)
  loc_174C50C:         CDate(Now) = var_188.Text
  loc_174C514:         var_DC = Now
  loc_174C51E:         var_180 = 0
  loc_174C529:         var_17C = 0
  loc_174C534:         var_178 = 0
  loc_174C53D:         var_16C = "A"
  loc_174C55D:         var_138 = "Against bill no : " & var_B4 & " For "
  loc_174C5AC:         Proc_6_141_12E1E18(MemVar_1F92044, var_13C, var_9E, "MBILL", CLng(var_148), Me.LblVPrefix.Caption, MemVar_1F92070, var_A8)
  loc_174C5F8:       End If
  loc_174C5FB:       var_88.MoveNext
  loc_174C600:       GoTo loc_174C138
  loc_174C603:     End If
  loc_174C603:   End If
  loc_174C603: End If
  loc_174C608: Set var_88 = Nothing
  loc_174C60B: Exit Sub
End Sub

Public Sub Proc_279_49_100162C
  'Data Table: 5571B0
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_9C As TextBox
  Dim var_A8 As String
  Dim var_C0 As Variant
  Dim var_110 As Variant
  Dim unk_5571CB As Connection15
  Dim var_90 As Recordset15
  Dim var_98 As Fields15
  loc_1001470: If (Me.RecordCount = 0) Then
  loc_1001473:   Proc_279_49_100162C = 0
  loc_1001479: End If
  loc_100148D: var_94 = "Select Vno From MemBill Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_10014A5: Set var_98 = Me.Txt
  loc_10014AB: Call 0.Method_Proc_279_49_100162C0 (CInt(0), var_9C, var_A0, var_94 & "' or LOGSITE_CODE='HO') and (MemCode='")
  loc_10014BC: var_A8 = -1 & var_A0
  loc_10014D1: Set var_AC = Me.Txt
  loc_10014D7: Call 0.Method_Proc_279_49_100162C0 (CInt(2), var_B0)
  loc_10014E6: var_D0 = Trim(CVar(var_B0))
  loc_10014F7: var_110 = CVar(var_A8 & "' And MthYear='") & var_D0 & "')" 
  loc_1001505: unk_5571CB.Execute CStr(var_110), var_138, 
  loc_1001510: Set var_90 = var_138
  loc_100154E: If (var_90.RecordCount > 0) Then
  loc_1001568:   var_9C = var_90.Fields.Item("VNo")
  loc_1001570:   var_C0 = CVar(var_9C) 'Address
  loc_1001577:   Proc_6_39_E7C810(var_D0)
  loc_100159E:   MsgBox("Duplicate Entry Against Voucher No. " & var_D0, &H40, "Information", var_110, var_9C.Tag)
  loc_10015C0:   Set var_98 = Me.Txt
  loc_10015C6:   Call 0.Method_Proc_279_49_100162C0 (CInt(0), var_9C)
  loc_10015CE:   var_9C.SetFocus
  loc_10015DF:   Proc_279_49_100162C = &HFF
  loc_10015E5: End If
  loc_10015EB: Call Proc_279_44_10FFA74(MemVar_1F92044, var_94)
  loc_10015FE: Set var_98 = Me.Txt
  loc_1001604: Call 0.Method_Proc_279_49_100162C0 (CInt(4), var_9C)
  loc_100160C: var_9C.Text = var_94
  loc_1001620: Set var_90 = Nothing
  loc_1001623: Proc_279_49_100162C = var_C0
End Sub

Public Sub Proc_279_50_121FE5C
  'Data Table: 5571B0
  Dim var_98 As Variant
  Dim var_8C As Variant
  Dim var_EC As Variant
  loc_121F96A: Set var_8C = Me.Txt
  loc_121F970: Call 0.Method_Proc_279_50_121FE5CC (var_8E, var_86)
  loc_121F980: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_121F996:   Set var_8C = Me.Txt
  loc_121F99C:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86), var_98)
  loc_121F9A4:   var_98.Text = vbNullString
  loc_121F9C0:   Set var_8C = Me.Txt
  loc_121F9C6:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86), var_98)
  loc_121F9CE:   var_98.Tag = vbNullString
  loc_121F9DD: Next var_92 'Byte
  loc_121F9F0: Me.TxtPreBalance.Text = vbNullString
  loc_121FA05: Me.TxtPreBalance.Tag = vbNullString
  loc_121FA1A: Me.TxtCreditAmt.Text = vbNullString
  loc_121FA2F: Me.LblDrCr.Caption = vbNullString
  loc_121FA45: Set var_8C = Me.LblCap
  loc_121FA4B: Call 0.Method_Proc_279_50_121FE5C8 (var_8E, var_86)
  loc_121FA58: For var_9C =  To CByte(var_8E): CByte(2) = var_9C 'Byte
  loc_121FA6B:   Set var_8C = Me.LblCap
  loc_121FA71:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86))
  loc_121FA82:   Me.LblCap.Unload var_98
  loc_121FA9B:   Set var_8C = Me.TxtGt
  loc_121FAA1:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86), var_98)
  loc_121FAB2:   Me.TxtGt.Unload var_98
  loc_121FAC1: Next var_9C 'Byte
  loc_121FAD5: Set var_8C = Me.LblCap1
  loc_121FADB: Call 0.Method_Proc_279_50_121FE5C8 (var_8E, var_86)
  loc_121FAE8: For var_A4 =  To CByte(var_8E): CByte(2) = var_A4 'Byte
  loc_121FAFB:   Set var_8C = Me.LblCap1
  loc_121FB01:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86))
  loc_121FB12:   Me.LblCap1.Unload var_98
  loc_121FB2B:   Set var_8C = Me.TxtGt1
  loc_121FB31:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86), var_98)
  loc_121FB42:   Me.TxtGt1.Unload var_98
  loc_121FB51: Next var_A4 'Byte
  loc_121FB65: Set var_8C = Me.LblCap2
  loc_121FB6B: Call 0.Method_Proc_279_50_121FE5C8 (var_8E, var_86)
  loc_121FB78: For var_A8 =  To CByte(var_8E): CByte(2) = var_A8 'Byte
  loc_121FB8B:   Set var_8C = Me.LblCap2
  loc_121FB91:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86))
  loc_121FBA2:   Me.LblCap2.Unload var_98
  loc_121FBBB:   Set var_8C = Me.TxtGt2
  loc_121FBC1:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86), var_98)
  loc_121FBD2:   Me.TxtGt2.Unload var_98
  loc_121FBE1: Next var_A8 'Byte
  loc_121FBF5: Set var_8C = Me.LblCap3
  loc_121FBFB: Call 0.Method_Proc_279_50_121FE5C8 (var_8E, var_86)
  loc_121FC08: For var_AC =  To CByte(var_8E): CByte(2) = var_AC 'Byte
  loc_121FC1B:   Set var_8C = Me.LblCap3
  loc_121FC21:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86))
  loc_121FC32:   Me.LblCap3.Unload var_98
  loc_121FC4B:   Set var_8C = Me.TxtGt3
  loc_121FC51:   Call 0.Method_Proc_279_50_121FE5C0 (CInt(var_86), var_98)
  loc_121FC62:   Me.TxtGt3.Unload var_98
  loc_121FC71: Next var_AC 'Byte
  loc_121FC83: Set var_8C = Me.TxtGt
  loc_121FC89: Call 0.Method_Proc_279_50_121FE5C0 (1, var_98)
  loc_121FC91: var_98.Text = vbNullString
  loc_121FCA8: Set var_8C = Me.LblCap1
  loc_121FCAE: Call 0.Method_Proc_279_50_121FE5C0 (1, var_98)
  loc_121FCB6: var_98.Visible = False
  loc_121FCCD: Set var_8C = Me.TxtGt1
  loc_121FCD3: Call 0.Method_Proc_279_50_121FE5C0 (1, var_98)
  loc_121FCDB: var_98.Visible = False
  loc_121FCF2: Set var_8C = Me.LblCap2
  loc_121FCF8: Call 0.Method_Proc_279_50_121FE5C0 (1, var_98)
  loc_121FD00: var_98.Visible = False
  loc_121FD17: Set var_8C = Me.TxtGt2
  loc_121FD1D: Call 0.Method_Proc_279_50_121FE5C0 (1, var_98)
  loc_121FD25: var_98.Visible = False
  loc_121FD3C: Set var_8C = Me.LblCap3
  loc_121FD42: Call 0.Method_Proc_279_50_121FE5C0 (1, var_98)
  loc_121FD4A: var_98.Visible = False
  loc_121FD61: Set var_8C = Me.TxtGt3
  loc_121FD67: Call 0.Method_Proc_279_50_121FE5C0 (1, var_98)
  loc_121FD6F: var_98.Visible = False
  loc_121FD8E: Me.FGrid.Rows = 1
  loc_121FDAB: var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_121FDB3: Set var_98 = Me.FGrid
  loc_121FDE2: Me.FGrid.FixedRows = 1
  loc_121FDFD: Me.FGCat.Rows = 1
  loc_121FE1A: var_EC = CVar(CStr(CLng(Me.FGCat.Rows))) 'String
  loc_121FE22: Set var_98 = Me.FGCat
  loc_121FE51: Me.FGCat.FixedRows = 1
  loc_121FE59: Exit Sub
End Sub

Public Sub Proc_279_51_19921B4
  'Data Table: 5571B0
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim unk_5571CB As Connection15
  Dim var_1B4 As String
  Dim var_1C4 As Variant
  Dim var_1C8 As Variant
  Dim var_1DC As Variant
  Dim var_25C As Variant
  Dim var_2AC As String
  Dim var_2C0 As Variant
  Dim var_2D4 As Variant
  Dim var_314 As Variant
  Dim var_394 As Variant
  Dim var_88 As Recordset15
  Dim var_E0 As Variant
  Dim var_3BC As String
  Dim var_1EC As Variant
  Dim var_3B8 As Variant
  Dim var_8C As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_3D0 As MSHFlexGrid
  Dim var_90 As Recordset15
  Dim var_AC As Double
  Dim var_A4 As Double
  Dim var_B4 As Double
  Dim var_3E0 As Double
  Dim var_3E8 As Double
  Dim var_94 As Recordset15
  loc_198F32C: On Error Goto loc_19921AB
  loc_198F346: If (Me.RecordCount > 0) Then
  loc_198F349:   Call Proc_279_50_121FE5C()
  loc_198F38D:   var_100 = "Select S.Name As MemName,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198F3BC:   var_1A0 = var_100 & "' And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO')" 
  loc_198F3CA:   unk_5571CB.Execute CStr(var_1A0), var_1C4, -1
  loc_198F3D5:   Set var_88 = var_1C8
  loc_198F436:   var_100 = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198F45C:   var_180 = var_100 & "' And M1.Type='Facility' And M1.Site_Code='" & CVar(MemVar_1F92070) & "' And (M1.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_198F469:   var_1B4 = "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_198F46E:   var_1C4 = var_180 & "' Or M1.LogSite_Code='HO') union " & var_1B4 
  loc_198F487:   var_1C8 = Me.Fields
  loc_198F4BB:   var_25C = var_1C4 & var_1C8.Item("SearchCode").Value & "' And M1.Type='Revenue' And M1.Site_Code='" & CVar(MemVar_1F92070) & "' And (M1.LogSite_Code='" 
  loc_198F4D2:   var_2AC = "Select Case When IsNull(D.Name,'')='' Then 'Banquet' Else D.Name End As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_198F511:   var_314 = var_25C & CVar(MemVar_1F92078) & "' Or M1.LogSite_Code='HO') union " & var_2AC & Me.Fields.Item("SearchCode").Value & "' And M1.Type='Outlet' And M1.Site_Code='" 
  loc_198F537:   var_394 = var_314 & CVar(MemVar_1F92070) & "' And (M1.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M1.LogSite_Code='HO') Order by sno" 
  loc_198F545:   unk_5571CB.Execute CStr(var_394), var_3B4, -1
  loc_198F550:   Set var_8C = var_3B8
  loc_198F5D9:   var_100 = "Select R.Name As TaxName,M2.* From membill2 M2 Left Join RevMast R On M2.TaxCode=R.Code Where M2.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198F608:   var_1A0 = var_100 & "' And M2.Site_Code='" & CVar(MemVar_1F92070) & "' And (M2.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M2.LogSite_Code='HO') Order By Sno,Sno1" 
  loc_198F616:   unk_5571CB.Execute CStr(var_1A0), var_1C4, -1
  loc_198F621:   Set var_90 = var_1C8
  loc_198F682:   var_100 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_198F6B1:   var_1A0 = var_100 & "' And MS.Site_Code='" & CVar(MemVar_1F92070) & "' And (MS.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or MS.LogSite_Code='HO') Order By Sno" 
  loc_198F6BF:   unk_5571CB.Execute CStr(var_1A0), var_1C4, -1
  loc_198F6CA:   Set var_94 = var_1C8
  loc_198F700:   If (var_88.RecordCount > 0) Then
  loc_198F73D:     var_1C8 = var_88.Fields
  loc_198F7A6:     var_1A0 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_1C8, var_1C8) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_1C8.Item("U_AE")), var_3B8) = "E"), "Modified By : ", "User : "))
  loc_198F7EB:     Me.LblUser.Caption = CStr(var_1C8 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_1A0)))
  loc_198F865:     var_1DC = var_88.Fields.Item("U_AE")
  loc_198F8C6:     var_1A0 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_1DC)) = "E"), "Last Update : ", "entdt : "))
  loc_198F8E5:     var_2D4 = var_88.Fields.Item("U_EntDt")
  loc_198F8ED:     var_1C4 = CVar(var_2D4) 'Address
  loc_198F8F6:     var_1EC = CVar(Proc_6_38_E68A98(var_1C4)) 'String
  loc_198F90B:     Me.LblLDt.Caption = CStr(var_1A0 & var_1EC)
  loc_198F979:     Set var_1C8 = Me.Txt
  loc_198F97F:     Call 0.Method_Proc_279_51_19921B40 (CInt(4), var_1DC)
  loc_198F987:     var_1DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_198F9D1:     Set var_1C8 = Me.Txt
  loc_198F9D7:     Call 0.Method_Proc_279_51_19921B40 (CInt(0), var_1DC)
  loc_198F9DF:     var_1DC.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")))
  loc_198F9F6:     var_CC = "MemName"
  loc_198FA0A:     var_D0 = var_88.Fields.Item(var_CC)
  loc_198FA1B:     var_1A4 = Proc_6_38_E68A98(CVar(var_D0))
  loc_198FA29:     Set var_1C8 = Me.Txt
  loc_198FA2F:     Call 0.Method_Proc_279_51_19921B40 (CInt(0), var_1DC)
  loc_198FA37:     var_1DC.Text = var_1A4
  loc_198FA62:     If (Me.RecordCount > 0) Then
  loc_198FA6B:       Me.MoveFirst
  loc_198FA8F:       Set var_BC = Me.Txt
  loc_198FA95:       Call 0.Method_Proc_279_51_19921B40 (CInt(0), var_D0, var_1A4, "SubCode='")
  loc_198FA9D:       0 = var_D0.Tag
  loc_198FAB6:       Me.Find 1 & var_1A4 & "'", var_CC, 
  loc_198FACB:     End If
  loc_198FB01:     Set var_1C8 = Me.Txt
  loc_198FB07:     Call 0.Method_Proc_279_51_19921B40 (CInt(1), var_1DC)
  loc_198FB0F:     var_1DC.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCatcode")))
  loc_198FB59:     Set var_1C8 = Me.Txt
  loc_198FB5F:     Call 0.Method_Proc_279_51_19921B40 (CInt(1), var_1DC)
  loc_198FB67:     var_1DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_198FBB1:     Set var_1C8 = Me.Txt
  loc_198FBB7:     Call 0.Method_Proc_279_51_19921B40 (CInt(2), var_1DC)
  loc_198FBBF:     var_1DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")))
  loc_198FBFE:     var_100 = "dd/MMM/yyyy"
  loc_198FC25:     Set var_1C8 = Me.Txt
  loc_198FC2B:     Call 0.Method_Proc_279_51_19921B40 (CInt(3), var_1DC, CStr(Format(CVar(var_88.Fields.Item("VDate")), var_100)))
  loc_198FC33:     var_1DC.Text = 1
  loc_198FC73:     Proc_6_39_E7C810(var_100, CVar(var_88.Fields.Item("VNo")))
  loc_198FC8A:     Set var_1C8 = Me.Txt
  loc_198FC90:     Call 0.Method_Proc_279_51_19921B40 (CInt(5), var_1DC)
  loc_198FC98:     var_1DC.Text = CStr(var_100)
  loc_198FCE5:     Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_198FD2D:     Set var_1C8 = Me.Txt
  loc_198FD33:     Call 0.Method_Proc_279_51_19921B40 (CInt(6), var_1DC)
  loc_198FD3B:     var_1DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vType")))
  loc_198FDA5:     Set var_1C8 = Me.Txt
  loc_198FDAB:     Call 0.Method_Proc_279_51_19921B40 (CInt(7), var_1DC, Proc_6_38_E68A98(Format(CVar(var_88.Fields.Item("Billdate")), "dd/MMM/yyyy"), 1))
  loc_198FDB3:     var_1DC.Text = 1
  loc_198FDD3:     var_B8 = var_8C.RecordCount
  loc_198FDE1:     If (var_B8 > 0) Then
  loc_198FDE6:       var_96 = 1
  loc_198FDEB:       var_98 = 1
  loc_198FDF0:       var_9A = 1
  loc_198FDF5:       var_9C = 1
  loc_198FE0B:       Me.FGrid.Rows = 1
  loc_198FE13:       ' Referenced from: 1990DF6
  loc_198FE19:       var_3CA = var_8C.EOF
  loc_198FE22:       If Not(var_3CA) Then
  loc_198FE29:         Set var_3D0 = Me.FGrid
  loc_198FE2C:         var_CC = vbNullString
  loc_198FE51:         var_CC = "Facility"
  loc_198FE76:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_CC)), CVar(CLng(6)), CVar(CLng(var_96)), FGrid.DispID_10000, var_CC)) 'String
  loc_198FE7D:         LateIdCallSt
  loc_198FEC6:         Proc_6_39_E7C810(var_100, CVar(var_8C.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_96)), var_3D0, var_100)
  loc_198FED6:         LateIdCallSt
  loc_198FF21:         Proc_6_39_E7C810(var_100, CVar(var_8C.Fields.Item("VNo")), CVar(CLng(2)), CVar(CLng(var_96)), var_3D0, CVar(CStr(var_100)))
  loc_198FF31:         LateIdCallSt
  loc_198FF7E:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), CVar(CLng(1)), CVar(CLng(var_96)), var_3D0, CVar(CStr(var_100)))) 'String
  loc_198FF85:         LateIdCallSt
  loc_198FFD0:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("vType")), CVar(CLng(3)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_198FFD7:         LateIdCallSt
  loc_1990022:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Type")), CVar(CLng(4)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_1990029:         LateIdCallSt
  loc_199003F:         var_CC = CVar(CLng(var_96)) 'Long
  loc_1990068:         If (CStr(var_3D0.TextMatrix)) = "Outlet") Then
  loc_1990082:           var_CC = "OutletCode"
  loc_19900AB:           var_100 = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(var_CC).Value, CVar(CLng(&HD)), CVar(CLng(var_96)), CVar(CLng(4)), var_CC, var_3D0)) 'String
  loc_19900B2:           LateIdCallSt
  loc_19900CB:         Else
  loc_199010B:           var_100 = CVar(Proc_6_38_E68A98(var_8C.Fields.Item("FacilityCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_3D0, var_100, var_100)) 'String
  loc_1990112:           LateIdCallSt
  loc_1990128:         End If
  loc_1990161:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(7)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_1990168:         LateIdCallSt
  loc_19901B3:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("AcCode")), CVar(CLng(8)), CVar(CLng(var_96)), var_3D0, var_100)) 'String
  loc_19901BA:         LateIdCallSt
  loc_19901F2:         Proc_6_39_E7C810(var_100, CVar(var_8C.Fields.Item("BaseAmt")), var_3D0, var_100, var_9C)
  loc_19901FB:         var_110 = CVar(CLng(var_96)) 'Long
  loc_1990203:         var_150 = CVar(CLng(9)) 'Long
  loc_1990233:         LateIdCallSt
  loc_1990271:         Proc_6_39_E7C810(var_100, CVar(var_8C.Fields.Item("TaxAmt")), var_3D0, CVar(CStr(Format(var_100, "0.00"))), 1, 1)
  loc_199027A:         var_110 = CVar(CLng(var_96)) 'Long
  loc_1990282:         var_150 = CVar(CLng(&HA)) 'Long
  loc_19902B2:         LateIdCallSt
  loc_1990303:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ACPosting")), CVar(CLng(&HB)), CVar(CLng(var_96)), var_3D0, CVar(CStr(Format(var_100, "0.00"))), 1, 1)) 'String
  loc_199030A:         LateIdCallSt
  loc_1990344:         var_D0 = var_8C.Fields.Item("AcPostingYN")
  loc_199035C:         LateIdCallSt
  loc_199037A:         var_110 = CVar(CLng(4)) 'Long
  loc_199039B:         If (CStr(var_3D0.TextMatrix)) = "Facility") Then
  loc_19903A8:           Set var_BC = Me.LblCap1
  loc_19903AE:           Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_98, var_110, CVar(CLng(var_96)), var_3D0, CVar(Proc_6_38_E68A98(CVar(var_D0), CVar(CLng(&HC)), CVar(CLng(var_96)), var_3D0, var_100, var_150)))
  loc_19903BA:           If (var_110 > var_3CA) Then
  loc_19903C7:             Set var_BC = Me.LblCap1
  loc_19903CD:             Call 0.Method_Proc_279_51_19921B40 (var_98, var_D0, var_150)
  loc_19903DE:             Me.LblCap1.Load var_D0
  loc_19903F7:             Set var_1C8 = Me.LblCap1
  loc_19903FD:             Call 0.Method_Proc_279_51_19921B40 (var_98, var_1DC, var_3D4)
  loc_1990405:             var_110 = var_1DC.Height
  loc_199041A:             Set var_BC = Me.LblCap1
  loc_1990420:             Call 0.Method_Proc_279_51_19921B40 ((var_98 - 1), var_D0, var_B8)
  loc_1990428:             var_9A = var_D0.Top
  loc_1990443:             Set var_2C0 = Me.LblCap1
  loc_1990449:             Call 0.Method_Proc_279_51_19921B40 (var_98, var_2D4)
  loc_1990451:             var_2D4.Top = ((var_B8 + var_3D4) + CDbl(&HF))
  loc_1990465:           End If
  loc_199046F:           Set var_BC = Me.TxtGt1
  loc_1990475:           Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_98)
  loc_1990481:           If (var_98 > var_3CA) Then
  loc_199048E:             Set var_BC = Me.TxtGt1
  loc_1990494:             Call 0.Method_Proc_279_51_19921B40 (var_98)
  loc_19904A5:             Me.TxtGt1.Load var_D0
  loc_19904BE:             Set var_1C8 = Me.TxtGt1
  loc_19904C4:             Call 0.Method_Proc_279_51_19921B40 (var_98, var_1DC)
  loc_19904CC:             var_3D4 = var_1DC.Height
  loc_19904E1:             Set var_BC = Me.TxtGt1
  loc_19904E7:             Call 0.Method_Proc_279_51_19921B40 ((var_98 - 1), var_D0)
  loc_199050A:             Set var_2C0 = Me.TxtGt1
  loc_1990510:             Call 0.Method_Proc_279_51_19921B40 (var_98, var_2D4)
  loc_1990518:             var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_199052C:           End If
  loc_1990538:           Set var_BC = Me.LblCap1
  loc_199053E:           Call 0.Method_Proc_279_51_19921B40 (var_98, var_D0)
  loc_1990546:           var_D0.Visible = True
  loc_199055E:           Set var_BC = Me.TxtGt1
  loc_1990564:           Call 0.Method_Proc_279_51_19921B40 (var_98, var_D0)
  loc_199056C:           var_D0.Visible = True
  loc_19905B4:           Set var_1C8 = Me.LblCap1
  loc_19905BA:           Call 0.Method_Proc_279_51_19921B40 (var_98, var_1DC)
  loc_19905C2:           var_1DC.Tag = Proc_6_38_E68A98(var_8C.Fields.Item("FacilityCode").Value)
  loc_1990610:           var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_199062C:           Set var_1C8 = Me.LblCap1
  loc_1990632:           Call 0.Method_Proc_279_51_19921B40 (var_98, var_1DC)
  loc_199063A:           var_1DC.Caption = CStr(StrConv(var_100, 3, 0))
  loc_199066F:           var_D0 = var_8C.Fields.Item("BaseAmt")
  loc_199067E:           Proc_6_39_E7C810(var_100, CVar(var_D0))
  loc_19906B4:           Set var_1C8 = Me.TxtGt1
  loc_19906BA:           Call 0.Method_Proc_279_51_19921B40 (var_98, var_1DC, CStr(Format(var_100, "0.00")))
  loc_19906C2:           var_1DC.Text = 1
  loc_19906E4:           var_98 = (var_98 + 1)
  loc_19906EA:         Else
  loc_1990717:           If (CStr(TxtGt1.DispID_41) = "Revenue") Then
  loc_1990724:             Set var_BC = Me.LblCap2
  loc_199072A:             Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_9A, CVar(CLng(4)), CVar(CLng(var_96)))
  loc_1990736:             If (var_98 > var_3CA) Then
  loc_1990743:               Set var_BC = Me.LblCap2
  loc_1990749:               Call 0.Method_Proc_279_51_19921B40 (var_9A, var_D0)
  loc_199075A:               Me.LblCap2.Load var_D0
  loc_1990773:               Set var_1C8 = Me.LblCap2
  loc_1990779:               Call 0.Method_Proc_279_51_19921B40 (var_9A, var_1DC, var_3D4)
  loc_1990781:               1 = var_1DC.Height
  loc_1990796:               Set var_BC = Me.LblCap2
  loc_199079C:               Call 0.Method_Proc_279_51_19921B40 ((var_9A - 1), var_D0)
  loc_19907BF:               Set var_2C0 = Me.LblCap2
  loc_19907C5:               Call 0.Method_Proc_279_51_19921B40 (var_9A, var_2D4)
  loc_19907CD:               var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_19907E1:             End If
  loc_19907EB:             Set var_BC = Me.TxtGt2
  loc_19907F1:             Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_9A)
  loc_19907FD:             If (var_D0 > var_3CA) Then
  loc_199080A:               Set var_BC = Me.TxtGt2
  loc_1990810:               Call 0.Method_Proc_279_51_19921B40 (var_9A)
  loc_1990821:               Me.TxtGt2.Load var_D0
  loc_199083A:               Set var_1C8 = Me.TxtGt2
  loc_1990840:               Call 0.Method_Proc_279_51_19921B40 (var_9A, var_1DC)
  loc_1990848:               var_3D4 = var_1DC.Height
  loc_199085D:               Set var_BC = Me.TxtGt2
  loc_1990863:               Call 0.Method_Proc_279_51_19921B40 ((var_9A - 1), var_D0)
  loc_1990886:               Set var_2C0 = Me.TxtGt2
  loc_199088C:               Call 0.Method_Proc_279_51_19921B40 (var_9A, var_2D4)
  loc_1990894:               var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_19908A8:             End If
  loc_19908B4:             Set var_BC = Me.LblCap2
  loc_19908BA:             Call 0.Method_Proc_279_51_19921B40 (var_9A, var_D0)
  loc_19908C2:             var_D0.Visible = True
  loc_19908DA:             Set var_BC = Me.TxtGt2
  loc_19908E0:             Call 0.Method_Proc_279_51_19921B40 (var_9A, var_D0)
  loc_19908E8:             var_D0.Visible = True
  loc_1990930:             Set var_1C8 = Me.LblCap2
  loc_1990936:             Call 0.Method_Proc_279_51_19921B40 (var_9A, var_1DC)
  loc_199093E:             var_1DC.Tag = Proc_6_38_E68A98(var_8C.Fields.Item("FacilityCode").Value)
  loc_199098C:             var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_19909A8:             Set var_1C8 = Me.LblCap2
  loc_19909AE:             Call 0.Method_Proc_279_51_19921B40 (var_9A, var_1DC)
  loc_19909B6:             var_1DC.Caption = CStr(StrConv(var_100, 3, 0))
  loc_19909EB:             var_D0 = var_8C.Fields.Item("BaseAmt")
  loc_19909FA:             Proc_6_39_E7C810(var_100, CVar(var_D0))
  loc_1990A30:             Set var_1C8 = Me.TxtGt2
  loc_1990A36:             Call 0.Method_Proc_279_51_19921B40 (var_9A, var_1DC, CStr(Format(var_100, "0.00")))
  loc_1990A3E:             var_1DC.Text = 1
  loc_1990A60:             var_9A = (var_9A + 1)
  loc_1990A66:           Else
  loc_1990A93:             If (CStr(TxtGt2.DispID_41) = "Outlet") Then
  loc_1990AA0:               Set var_BC = Me.LblCap3
  loc_1990AA6:               Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_9C, CVar(CLng(4)), CVar(CLng(var_96)))
  loc_1990AB2:               If (var_9A > var_3CA) Then
  loc_1990ABF:                 Set var_BC = Me.LblCap3
  loc_1990AC5:                 Call 0.Method_Proc_279_51_19921B40 (var_9C, var_D0)
  loc_1990AD6:                 Me.LblCap3.Load var_D0
  loc_1990AEF:                 Set var_1C8 = Me.LblCap3
  loc_1990AF5:                 Call 0.Method_Proc_279_51_19921B40 (var_9C, var_1DC, var_3D4)
  loc_1990AFD:                 1 = var_1DC.Height
  loc_1990B12:                 Set var_BC = Me.LblCap3
  loc_1990B18:                 Call 0.Method_Proc_279_51_19921B40 ((var_9C - 1), var_D0)
  loc_1990B3B:                 Set var_2C0 = Me.LblCap3
  loc_1990B41:                 Call 0.Method_Proc_279_51_19921B40 (var_9C, var_2D4)
  loc_1990B49:                 var_2D4.Top = ((var_D0.Top + var_3D4) + CDbl(&HF))
  loc_1990B5D:               End If
  loc_1990B67:               Set var_BC = Me.TxtGt3
  loc_1990B6D:               Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_9C)
  loc_1990B79:               If (var_D0 > var_3CA) Then
  loc_1990B86:                 Set var_BC = Me.TxtGt3
  loc_1990B8C:                 Call 0.Method_Proc_279_51_19921B40 (var_9C)
  loc_1990B9D:                 Me.TxtGt3.Load var_D0
  loc_1990BB6:                 Set var_1C8 = Me.TxtGt3
  loc_1990BBC:                 Call 0.Method_Proc_279_51_19921B40 (var_9C, var_1DC)
  loc_1990BD9:                 Set var_BC = Me.TxtGt3
  loc_1990BDF:                 Call 0.Method_Proc_279_51_19921B40 ((var_9C - 1), var_D0)
  loc_1990C02:                 Set var_2C0 = Me.TxtGt3
  loc_1990C08:                 Call 0.Method_Proc_279_51_19921B40 (var_9C, var_2D4)
  loc_1990C10:                 var_2D4.Top = ((var_D0.Top + var_1DC.Height) + CDbl(&HF))
  loc_1990C24:               End If
  loc_1990C30:               Set var_BC = Me.LblCap3
  loc_1990C36:               Call 0.Method_Proc_279_51_19921B40 (var_9C, var_D0)
  loc_1990C3E:               var_D0.Visible = True
  loc_1990C56:               Set var_BC = Me.TxtGt3
  loc_1990C5C:               Call 0.Method_Proc_279_51_19921B40 (var_9C, var_D0)
  loc_1990C64:               var_D0.Visible = True
  loc_1990CAC:               Set var_1C8 = Me.LblCap3
  loc_1990CB2:               Call 0.Method_Proc_279_51_19921B40 (var_9C, var_1DC)
  loc_1990CBA:               var_1DC.Tag = Proc_6_38_E68A98(var_8C.Fields.Item("OutletCode").Value)
  loc_1990D08:               var_100 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")))) 'String
  loc_1990D24:               Set var_1C8 = Me.LblCap3
  loc_1990D2A:               Call 0.Method_Proc_279_51_19921B40 (var_9C, var_1DC)
  loc_1990D32:               var_1DC.Caption = CStr(StrConv(var_100, 3, 0))
  loc_1990D76:               Proc_6_39_E7C810(var_100, CVar(var_8C.Fields.Item("BaseAmt")))
  loc_1990DAC:               Set var_1C8 = Me.TxtGt3
  loc_1990DB2:               Call 0.Method_Proc_279_51_19921B40 (var_9C, var_1DC, CStr(Format(var_100, "0.00")))
  loc_1990DBA:               var_1DC.Text = 1
  loc_1990DDC:               var_9C = (var_9C + 1)
  loc_1990DDF:             End If
  loc_1990DDF:           End If
  loc_1990DDF:         End If
  loc_1990DE1:         Set var_3D0 = Nothing 
  loc_1990DEB:         var_96 = (var_96 + 1)
  loc_1990DF1:         var_8C.MoveNext
  loc_1990DF6:         GoTo loc_198FE13
  loc_1990DF9:       End If
  loc_1990DF9:     End If
  loc_1990DF9:     var_CC = 0
  loc_1990E03:     Set var_BC = Me.FGrid
  loc_1990E30:     If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1990E33:       var_CC = "1"
  loc_1990E3D:       Set var_BC = Me.FGrid
  loc_1990E4E:     End If
  loc_1990E61:     Me.FGrid.FixedRows = 1
  loc_1990E7D:     If (var_90.RecordCount > 0) Then
  loc_1990E82:       var_96 = 1
  loc_1990E98:       Me.FGCat.Rows = 1
  loc_1990EA0:       ' Referenced from: 1991314
  loc_1990EAF:       If Not(var_90.EOF) Then
  loc_1990EB6:         Set var_3D8 = Me.FGCat
  loc_1990EB9:         var_CC = vbNullString
  loc_1990EDE:         var_CC = "SNo"
  loc_1990F01:         Proc_6_39_E7C810(var_100, CVar(var_90.Fields.Item(var_CC)), CVar(CLng(0)), CVar(CLng(var_96)), FGCat.DispID_10000, var_CC, var_96)
  loc_1990F11:         LateIdCallSt
  loc_1990F5C:         Proc_6_39_E7C810(var_100, CVar(var_90.Fields.Item("Sno1")), CVar(CLng(1)), CVar(CLng(var_96)), var_3D8, CVar(CStr(var_100)), FGrid.DispID_10000)
  loc_1990F6C:         LateIdCallSt
  loc_1990F94:         var_CC = "DocID"
  loc_1990FB9:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_CC)), CVar(CLng(2)), CVar(CLng(var_96)), var_3D8, CVar(CStr(var_100)), var_CC)) 'String
  loc_1990FC0:         LateIdCallSt
  loc_1991009:         Proc_6_39_E7C810(var_100, CVar(var_90.Fields.Item("VNo")), CVar(CLng(3)), CVar(CLng(var_96)), var_3D8, var_100)
  loc_1991019:         LateIdCallSt
  loc_1991066:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("vType")), CVar(CLng(4)), CVar(CLng(var_96)), var_3D8, CVar(CStr(var_100)))) 'String
  loc_199106D:         LateIdCallSt
  loc_19910BF:         var_100 = CVar(Proc_6_38_E68A98(var_90.Fields.Item("FacilityCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_3D8, var_100)) 'String
  loc_19910C6:         LateIdCallSt
  loc_1991115:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxCode")), CVar(CLng(6)), CVar(CLng(var_96)), var_3D8, var_100)) 'String
  loc_199111C:         LateIdCallSt
  loc_1991167:         var_100 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxName")), CVar(CLng(7)), CVar(CLng(var_96)), var_3D8, var_100)) 'String
  loc_199116E:         LateIdCallSt
  loc_19911A6:         Proc_6_39_E7C810(var_100, CVar(var_90.Fields.Item("BaseAmt")), var_3D8, var_100, FGrid.DispID_2E)
  loc_19911AF:         var_110 = CVar(CLng(var_96)) 'Long
  loc_19911B7:         var_150 = CVar(CLng(8)) 'Long
  loc_19911E7:         LateIdCallSt
  loc_1991225:         Proc_6_39_E7C810(var_100, CVar(var_90.Fields.Item("TaxPer")), var_3D8, CVar(CStr(Format(var_100, "0.00"))), 1, 1)
  loc_199122E:         var_110 = CVar(CLng(var_96)) 'Long
  loc_1991266:         LateIdCallSt
  loc_19912A4:         Proc_6_39_E7C810(var_100, CVar(var_90.Fields.Item("TaxAmt")), var_3D8, CVar(CStr(Format(var_100, "0.00"))), 1, 1, CVar(CLng(9)))
  loc_19912AD:         var_110 = CVar(CLng(var_96)) 'Long
  loc_19912B5:         var_150 = CVar(CLng(&HA)) 'Long
  loc_19912DE:         var_160 = CVar(CStr(Format(var_100, "0.00"))) 'String
  loc_19912E5:         LateIdCallSt
  loc_19912FF:         Set var_3D8 = Nothing 
  loc_1991309:         var_96 = (var_96 + 1)
  loc_199130F:         var_90.MoveNext
  loc_1991314:         GoTo loc_1990EA0
  loc_1991317:       End If
  loc_1991317:     End If
  loc_1991317:     var_CC = 0
  loc_1991321:     Set var_BC = Me.FGCat
  loc_199134E:     If (CLng(Me.FGCat.Rows) = 1) Then
  loc_1991351:       var_CC = "1"
  loc_199135B:       Set var_BC = Me.FGCat
  loc_199136C:     End If
  loc_199137F:     Me.FGCat.FixedRows = 1
  loc_1991387:   End If
  loc_199138A:   var_CC = "MemCode"
  loc_19913EB:   var_150 = 0
  loc_199140B:   var_3BC = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_CC)), FGCat.DispID_10000, var_CC, FGCat.DispID_2E, var_CC, var_96, var_3D8)
  loc_1991412:   var_160 = CVar(var_3BC & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_199142F:   unk_5571CB.Execute CStr(var_160 & Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_160, 1, 1))) & "')"), var_1C4, -1
  loc_1991437:   var_2C0 = var_2C0.Fields
  loc_1991447:   var_3B8 = var_3B8.Value
  loc_1991450:   var_AC = CSng(var_1EC)
  loc_19914D9:   var_140 = Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_2D4.Item(var_2D4))))
  loc_19914E4:   var_150 = 0
  loc_1991504:   var_3BC = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_AC, var_1EC)
  loc_199150B:   var_160 = CVar(var_3BC & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1991515:   var_110 = "')"
  loc_1991528:   unk_5571CB.Execute CStr(var_160 & var_140 & var_110), var_1C4, -1
  loc_1991530:   var_2C0 = var_2C0.Fields
  loc_1991538:   var_150 = var_2D4.Item(var_2D4)
  loc_1991540:   var_3B8 = var_3B8.Value
  loc_1991549:   var_A4 = CSng(var_1EC)
  loc_1991595:   var_E0 = CVar((var_AC - var_A4)) 'Double
  loc_19915B2:   Me.TxtOtherCredit.Text = CStr(Format(CVar(var_88.Fields.Item("MemCode")), "0.00"))
  loc_1991626:   Proc_6_7_F25D88(var_140, CVar(var_110 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/", var_1EC)))
  loc_1991631:   var_150 = 0
  loc_1991651:   var_3BC = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), 1, 1, var_A4)
  loc_1991675:   unk_5571CB.Execute CStr(CVar(var_3BC & "' And V_date<") & var_140 & vbNullString), var_1C4, -1
  loc_199167D:   var_2C0 = var_2C0.Fields
  loc_1991685:   var_150 = var_2D4.Item(var_2D4)
  loc_199168D:   var_3B8 = var_3B8.Value
  loc_1991696:   var_AC = CSng(var_1EC)
  loc_1991728:   Proc_6_7_F25D88(var_140, CVar(var_1EC & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_1991733:   var_150 = 0
  loc_199175A:   var_160 = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_AC) & "' And V_date<") 'String
  loc_1991777:   unk_5571CB.Execute CStr(var_160 & var_140 & vbNullString), var_1C4, -1
  loc_199177F:   var_2C0 = var_2C0.Fields
  loc_1991787:   var_150 = var_2D4.Item(var_2D4)
  loc_199178F:   var_3B8 = var_3B8.Value
  loc_1991798:   var_A4 = CSng(var_1EC)
  loc_199180C:   var_1DC = var_88.Fields.Item("MthYear")
  loc_199182E:   var_150 = 0
  loc_199184E:   var_3BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT') And SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_A4)
  loc_1991855:   var_160 = CVar(var_3BC & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_1991872:   unk_5571CB.Execute CStr(var_160 & Trim(CVar(Proc_6_38_E68A98(CVar(var_1DC), var_1EC))) & "')"), var_1C4, -1
  loc_199187A:   var_2C0 = var_2C0.Fields
  loc_1991882:   var_150 = var_2D4.Item(var_2D4)
  loc_199188A:   var_3B8 = var_3B8.Value
  loc_1991893:   var_B4 = CSng(var_1EC)
  loc_19918DF:   var_E0 = CVar((var_A4 - var_AC)) 'Double
  loc_19918FC:   Me.TxtPreBalance.Tag = CStr(Format(CVar(var_88.Fields.Item("MemCode")), "0.00"))
  loc_199192A:   var_3E0 = Val(Me.TxtPreBalance.Tag)
  loc_1991934:   Set var_D0 = Me.TxtPreBalance
  loc_1991947:   var_3E8 = Val(var_D0.Tag)
  loc_199194A:   var_110 = " Cr"
  loc_19919A7:   Me.LblDrCr.Caption = CStr(IIf((CDbl(var_3E0) = CDbl(0)), vbNullString, IIf((CDbl(var_3E8) > CDbl(0)), " Dr", var_110)))
  loc_19919EC:   var_E0 = CVar(Abs((var_A4 - var_AC))) 'Double
  loc_1991A09:   Me.TxtPreBalance.Text = CStr(Format(" Dr", "0.00"))
  loc_1991A53:   Me.TxtCreditAmt.Text = CStr(Format(var_B4, "0.00"))
  loc_1991A79:   If (var_94.RecordCount > 0) Then
  loc_1991A7E:     var_96 = 1
  loc_1991A81:     ' Referenced from: 199217A
  loc_1991A87:     var_3CA = var_94.EOF
  loc_1991A90:     If Not(var_3CA) Then
  loc_1991A9D:       Set var_BC = Me.LblDummy
  loc_1991AA3:       Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_96, var_96, 1, 1, 1, 1)
  loc_1991AAF:       If (var_3E8 > var_3CA) Then
  loc_1991ABC:         Set var_BC = Me.LblDummy
  loc_1991AC2:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0, var_3E0, 1)
  loc_1991AD3:         Me.LblDummy.Load var_D0
  loc_1991AEB:         Set var_BC = Me.LblDummy
  loc_1991AF1:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0, 0, 1)
  loc_1991AF9:         var_D0.Visible = var_B4
  loc_1991B05:       End If
  loc_1991B0F:       Set var_BC = Me.LblCap
  loc_1991B15:       Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_96)
  loc_1991B21:       If (var_1EC > var_3CA) Then
  loc_1991B2E:         Set var_BC = Me.LblCap
  loc_1991B34:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0)
  loc_1991B45:         Me.LblCap.Load var_D0
  loc_1991B5E:         Set var_1C8 = Me.LblCap
  loc_1991B64:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC)
  loc_1991B81:         Set var_BC = Me.LblCap
  loc_1991B87:         Call 0.Method_Proc_279_51_19921B40 ((var_96 - 1), var_D0)
  loc_1991BAA:         Set var_2C0 = Me.LblCap
  loc_1991BB0:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_2D4)
  loc_1991BB8:         var_2D4.Top = ((var_D0.Top + var_1DC.Height) + CDbl(&HF))
  loc_1991BCC:       End If
  loc_1991BD6:       Set var_BC = Me.TxtGt
  loc_1991BDC:       Call 0.Method_Proc_279_51_19921B48 (var_3CA, var_96)
  loc_1991BE8:       If (var_110 > var_3CA) Then
  loc_1991BF5:         Set var_BC = Me.TxtGt
  loc_1991BFB:         Call 0.Method_Proc_279_51_19921B40 (var_96)
  loc_1991C0C:         Me.TxtGt.Load var_D0
  loc_1991C25:         Set var_1C8 = Me.TxtGt
  loc_1991C2B:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC)
  loc_1991C48:         Set var_BC = Me.TxtGt
  loc_1991C4E:         Call 0.Method_Proc_279_51_19921B40 ((var_96 - 1), var_D0)
  loc_1991C71:         Set var_2C0 = Me.TxtGt
  loc_1991C77:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_2D4)
  loc_1991C7F:         var_2D4.Top = ((var_D0.Top + var_1DC.Height) + CDbl(&HF))
  loc_1991C93:       End If
  loc_1991CD7:       If (Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunCode"))) = MemVar_1F92070 & "TOT") Then
  loc_1991CF1:         var_D0 = var_94.Fields.Item("SunCode")
  loc_1991D0F:         Set var_1C8 = Me.LblCap
  loc_1991D15:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC)
  loc_1991D1D:         var_1DC.Tag = Proc_6_38_E68A98(CVar(var_D0))
  loc_1991D5F:         Set var_BC = Me.LblCap
  loc_1991D65:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0)
  loc_1991D6D:         var_D0.Caption = CStr(StrConv("Total", 3, 0))
  loc_1991DE2:         Set var_1C8 = Me.TxtGt
  loc_1991DE8:         Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1991DF0:         var_1DC.Text = 1
  loc_1991E13:       Else
  loc_1991E57:         If (Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunCode")), 1) = MemVar_1F92070 & "NET") Then
  loc_1991E71:           var_D0 = var_94.Fields.Item("SunCode")
  loc_1991E8F:           Set var_1C8 = Me.LblCap
  loc_1991E95:           Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC)
  loc_1991E9D:           var_1DC.Tag = Proc_6_38_E68A98(CVar(var_D0))
  loc_1991EDF:           Set var_BC = Me.LblCap
  loc_1991EE5:           Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0)
  loc_1991EED:           var_D0.Caption = CStr(StrConv("Net Amount", 3, 0))
  loc_1991F62:           Set var_1C8 = Me.TxtGt
  loc_1991F68:           Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1991F70:           var_1DC.Text = 1
  loc_1991F93:         Else
  loc_1991FC8:           Set var_1C8 = Me.LblCap
  loc_1991FCE:           Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC)
  loc_1991FD6:           var_1DC.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunCode")), 1)
  loc_199203E:           Set var_1C8 = Me.LblCap
  loc_1992044:           Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC)
  loc_199204C:           var_1DC.Caption = CStr(StrConv(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_1992081:           var_D0 = var_94.Fields.Item("SunAmt")
  loc_19920C9:           Set var_1C8 = Me.TxtGt
  loc_19920CF:           Call 0.Method_Proc_279_51_19921B40 (var_96, var_1DC, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_D0))), "0.00")))
  loc_19920D7:           var_1DC.Text = 1
  loc_19920F7:         End If
  loc_19920F7:       End If
  loc_1992103:       Set var_BC = Me.LblDummy
  loc_1992109:       Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0, 0)
  loc_1992111:       var_D0.Visible = True
  loc_1992129:       Set var_BC = Me.LblCap
  loc_199212F:       Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0)
  loc_1992137:       var_D0.Visible = True
  loc_199214F:       Set var_BC = Me.TxtGt
  loc_1992155:       Call 0.Method_Proc_279_51_19921B40 (var_96, var_D0)
  loc_199215D:       var_D0.Visible = True
  loc_199216F:       var_96 = (var_96 + 1)
  loc_1992175:       var_94.MoveNext
  loc_199217A:       GoTo loc_1991A81
  loc_199217D:     End If
  loc_199217D:   End If
  loc_1992180: Else
  loc_1992180:   Call Proc_279_50_121FE5C(var_96)
  loc_1992185: End If
  loc_1992185: Call Proc_279_53_E54A5C(var_D0)
  loc_199218F: Set var_88 = Nothing
  loc_1992197: Set var_8C = Nothing
  loc_199219F: Set var_90 = Nothing
  loc_19921A7: Set var_94 = Nothing
  loc_19921AA: Exit Sub
  loc_19921AB: ' Referenced from: 198F32C
  loc_19921AB: Proc_6_60_E62BC4()
  loc_19921B0: Exit Sub
End Sub

Public Sub Proc_279_52_F62910(arg_C) 'F62910
  'Data Table: 5571B0
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  Dim arg_2FFE As Integer
  loc_F627E6: Set var_8C = Me.Txt
  loc_F627EC: Call 0.Method_Proc_279_52_F62910C (var_8E, var_86)
  loc_F627FC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F62812:   Set var_8C = Me.Txt
  loc_F62818:   Call 0.Method_Proc_279_52_F629100 (CInt(var_86), var_98)
  loc_F62820:   var_98.Enabled = arg_C
  loc_F6282F: Next var_92 'Byte
  loc_F62842: Set var_8C = Me.Txt
  loc_F62848: Call 0.Method_Proc_279_52_F629100 (CInt(4), var_98)
  loc_F62850: var_98.Enabled = False
  loc_F62869: Set var_8C = Me.Txt
  loc_F6286F: Call 0.Method_Proc_279_52_F629100 (CInt(5), var_98)
  loc_F62877: var_98.Enabled = False
  loc_F62890: Set var_8C = Me.Txt
  loc_F62896: Call 0.Method_Proc_279_52_F629100 (CInt(3), var_98)
  loc_F6289E: var_98.Enabled = False
  loc_F628B7: Set var_8C = Me.Txt
  loc_F628BD: Call 0.Method_Proc_279_52_F629100 (CInt(7), var_98)
  loc_F628C5: var_98.Enabled = False
  loc_F628DE: Set var_8C = Me.Txt
  loc_F628E4: Call 0.Method_Proc_279_52_F629100 (CInt(&HA), var_98)
  loc_F628EC: var_98.Enabled = False
  loc_F62904: Me.CmdRefreshCategory.Visible = False
  loc_F6290C: Exit Sub
  loc_F6290D: arg_2FFE = 
End Sub

Public Sub Proc_279_53_E54A5C
  'Data Table: 5571B0
  loc_E54A40: If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_E54A52:   Me.DGMemName.Visible = False
  loc_E54A5A: End If
  loc_E54A5A: Exit Sub
End Sub

Public Sub Proc_279_54_14E5B50
  'Data Table: 5571B0
  Dim unk_5571CB As Connection15
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_11C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_120 As Variant
  Dim var_86 As Integer
  Dim var_9C As Recordset15
  Dim var_15C As Variant
  Dim var_14C As Field20
  Dim var_17C As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F0 As Variant
  Dim var_130 As Variant
  loc_14E4D7C: unk_5571CB.Execute "Select Code,RoundOff from RevMast Where (LogSite_Code='" & MemVar_1F92078 & "' Or LogSite_Code='HO') Order By Name", var_DC, -1
  loc_14E4D87: Set var_9C = var_E0
  loc_14E4DBC: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_E4 'Integer
  loc_14E4DC6:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E4DCE:   var_104 = CVar(CLng(9)) 'Long
  loc_14E4DFA:   var_AC = (var_AC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_14E4E0A:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E4E12:   var_104 = CVar(CLng(9)) 'Long
  loc_14E4E3E:   var_B4 = (var_B4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_14E4E4D: Next var_E4 'Integer
  loc_14E4E65: Set var_E0 = Me.LblCap
  loc_14E4E6B: Call 0.Method_Proc_279_54_14E5B500 (1, var_120)
  loc_14E4E73: var_120.Tag = MemVar_1F92070 & "TOT"
  loc_14E4E8E: Set var_E0 = Me.LblCap
  loc_14E4E94: Call 0.Method_Proc_279_54_14E5B500 (1, var_120)
  loc_14E4E9C: var_120.Caption = "Total"
  loc_14E4EDD: Set var_E0 = Me.TxtGt
  loc_14E4EE3: Call 0.Method_Proc_279_54_14E5B500 (1, var_120, CStr(Format(var_AC, "0.00")))
  loc_14E4EEB: var_120.Text = 1
  loc_14E4F03: var_86 = 2
  loc_14E4F06: ' Referenced from: 14E54A9
  loc_14E4F0C: var_132 = var_9C.EOF
  loc_14E4F15: If Not(var_132) Then
  loc_14E4F1B:   var_A4 = vbNullString
  loc_14E4F21:   var_AC = CDbl(0)
  loc_14E4F49:   For var_136 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_8A = var_136 'Integer
  loc_14E4F53:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E4F5B:     var_104 = CVar(CLng(6)) 'Long
  loc_14E4F75:     var_15C = CVar(CStr(Me.FGCat.TextMatrix))) 'String
  loc_14E4F8B:     var_120 = var_9C.Fields
  loc_14E4F9B:     var_130 = var_120.Item("Code").Value
  loc_14E4FAB:     var_17C = CVar(CLng(var_8A)) 'Long
  loc_14E4FBC:     Set var_1B0 = Me.FGCat
  loc_14E4FFF:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_1B0.TextMatrix)))) <> CDbl(0))) Then
  loc_14E5006:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E500E:       var_104 = CVar(CLng(&HA)) 'Long
  loc_14E5036:       var_AC = (var_AC + CDbl(CStr(Me.FGCat.TextMatrix))))
  loc_14E5046:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E504E:       var_104 = CVar(CLng(6)) 'Long
  loc_14E5068:       var_98 = CStr(Me.FGCat.TextMatrix))
  loc_14E5075:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14E507D:       var_104 = CVar(CLng(7)) 'Long
  loc_14E5097:       var_A4 = CStr(Me.FGCat.TextMatrix))
  loc_14E50A0:     End If
  loc_14E50A3:   Next var_136 'Integer
  loc_14E50B0:   If (var_A4 <> vbNullString) Then
  loc_14E50BD:     Set var_E0 = Me.LblDummy
  loc_14E50C3:     Call 0.Method_Proc_279_54_14E5B508 (var_132)
  loc_14E50CF:     If (var_86 > var_132) Then
  loc_14E50DC:       Set var_E0 = Me.LblDummy
  loc_14E50E2:       Call 0.Method_Proc_279_54_14E5B500 (var_86)
  loc_14E50F3:       Me.LblDummy.Load var_120
  loc_14E510B:       Set var_E0 = Me.LblDummy
  loc_14E5111:       Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5119:       var_120.Visible = False
  loc_14E5125:     End If
  loc_14E512F:     Set var_E0 = Me.LblCap
  loc_14E5135:     Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E5141:     If (var_120 > var_132) Then
  loc_14E514E:       Set var_E0 = Me.LblCap
  loc_14E5154:       Call 0.Method_Proc_279_54_14E5B500 (var_86)
  loc_14E5165:       Me.LblCap.Load var_120
  loc_14E517E:       Set var_14C = Me.LblCap
  loc_14E5184:       Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1B0)
  loc_14E51A1:       Set var_E0 = Me.LblCap
  loc_14E51A7:       Call 0.Method_Proc_279_54_14E5B500 ((var_86 - 1), var_120)
  loc_14E51CA:       Set var_1EC = Me.LblCap
  loc_14E51D0:       Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1F0)
  loc_14E51D8:       var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E51EC:     End If
  loc_14E51F6:     Set var_E0 = Me.TxtGt
  loc_14E51FC:     Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E5208:     If (var_120 > var_132) Then
  loc_14E5215:       Set var_E0 = Me.TxtGt
  loc_14E521B:       Call 0.Method_Proc_279_54_14E5B500 (var_86)
  loc_14E522C:       Me.TxtGt.Load var_120
  loc_14E5245:       Set var_14C = Me.TxtGt
  loc_14E524B:       Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1B0)
  loc_14E5268:       Set var_E0 = Me.TxtGt
  loc_14E526E:       Call 0.Method_Proc_279_54_14E5B500 ((var_86 - 1), var_120)
  loc_14E5291:       Set var_1EC = Me.TxtGt
  loc_14E5297:       Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1F0)
  loc_14E529F:       var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E52B3:     End If
  loc_14E52C0:     Set var_E0 = Me.LblCap
  loc_14E52C6:     Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E52CE:     var_120.Tag = var_98
  loc_14E5305:     Set var_E0 = Me.LblCap
  loc_14E530B:     Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5313:     var_120.Caption = CStr(StrConv(var_A4, 3, 0))
  loc_14E533C:     var_120 = var_9C.Fields.Item("RoundOff")
  loc_14E536A:     Proc_6_142_14A55B0(var_AC, CByte(0), "S")
  loc_14E536F:     var_11C = 2
  loc_14E539F:     var_1C0 = (CVar(var_AC) + IIf((Proc_6_38_E68A98(CVar(var_120)) = "Yes"), CVar(var_11C), 0))
  loc_14E53A4:     var_AC = CSng(var_1B0.TextMatrix))
  loc_14E53C9:     var_B4 = (var_B4 + var_AC)
  loc_14E5402:     Set var_E0 = Me.TxtGt
  loc_14E5408:     Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120, CStr(Format(var_AC, "0.00")), 1, 1)
  loc_14E5410:     var_120.Text = var_B4
  loc_14E5432:     Set var_E0 = Me.LblDummy
  loc_14E5438:     Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120, 0)
  loc_14E5440:     var_120.Visible = var_AC
  loc_14E5458:     Set var_E0 = Me.LblCap
  loc_14E545E:     Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120, &HFF)
  loc_14E5466:     var_120.Visible = var_11C
  loc_14E547E:     Set var_E0 = Me.TxtGt
  loc_14E5484:     Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E548C:     var_120.Visible = True
  loc_14E549E:     var_86 = (var_86 + 1)
  loc_14E54A1:   End If
  loc_14E54A4:   var_9C.MoveNext
  loc_14E54A9:   GoTo loc_14E4F06
  loc_14E54AC: End If
  loc_14E54B6: Set var_E0 = Me.LblDummy
  loc_14E54BC: Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E54C8: If (var_86 > var_132) Then
  loc_14E54D5:   Set var_E0 = Me.LblDummy
  loc_14E54DB:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E54EC:   Me.LblDummy.Load var_120
  loc_14E5504:   Set var_E0 = Me.LblDummy
  loc_14E550A:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5512:   var_120.Visible = False
  loc_14E551E: End If
  loc_14E5528: Set var_E0 = Me.LblCap
  loc_14E552E: Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E553A: If (var_120 > var_132) Then
  loc_14E5547:   Set var_E0 = Me.LblCap
  loc_14E554D:   Call 0.Method_Proc_279_54_14E5B500 (var_86)
  loc_14E555E:   Me.LblCap.Load var_120
  loc_14E5577:   Set var_14C = Me.LblCap
  loc_14E557D:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1B0)
  loc_14E559A:   Set var_E0 = Me.LblCap
  loc_14E55A0:   Call 0.Method_Proc_279_54_14E5B500 ((var_86 - 1), var_120)
  loc_14E55C3:   Set var_1EC = Me.LblCap
  loc_14E55C9:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1F0)
  loc_14E55D1:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E55E5: End If
  loc_14E55EF: Set var_E0 = Me.TxtGt
  loc_14E55F5: Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E5601: If (var_120 > var_132) Then
  loc_14E560E:   Set var_E0 = Me.TxtGt
  loc_14E5614:   Call 0.Method_Proc_279_54_14E5B500 (var_86)
  loc_14E5625:   Me.TxtGt.Load var_120
  loc_14E563E:   Set var_14C = Me.TxtGt
  loc_14E5644:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1B0)
  loc_14E5661:   Set var_E0 = Me.TxtGt
  loc_14E5667:   Call 0.Method_Proc_279_54_14E5B500 ((var_86 - 1), var_120)
  loc_14E568A:   Set var_1EC = Me.TxtGt
  loc_14E5690:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1F0)
  loc_14E5698:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E56AC: End If
  loc_14E56C0: Set var_E0 = Me.LblCap
  loc_14E56C6: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E56CE: var_120.Tag = MemVar_1F92070 & "ROFF"
  loc_14E56EA: Set var_E0 = Me.LblCap
  loc_14E56F0: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E56F8: var_120.Caption = "Round Off"
  loc_14E571E: Proc_6_142_14A55B0(var_B4, CByte(0), "S")
  loc_14E5723: var_11C = 2
  loc_14E575B: Set var_E0 = Me.TxtGt
  loc_14E5761: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120, CStr(Format(CVar(var_11C), "0.00")), 1)
  loc_14E5769: var_120.Text = 1
  loc_14E5791: Set var_E0 = Me.LblDummy
  loc_14E5797: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120, 0)
  loc_14E579F: var_120.Visible = var_11C
  loc_14E57B7: Set var_E0 = Me.LblCap
  loc_14E57BD: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E57C5: var_120.Visible = True
  loc_14E57DD: Set var_E0 = Me.TxtGt
  loc_14E57E3: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E57EB: var_120.Visible = True
  loc_14E57FD: var_86 = (var_86 + 1)
  loc_14E580A: Set var_E0 = Me.LblDummy
  loc_14E5810: Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E581C: If (var_86 > var_132) Then
  loc_14E5829:   Set var_E0 = Me.LblDummy
  loc_14E582F:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5840:   Me.LblDummy.Load var_120
  loc_14E5858:   Set var_E0 = Me.LblDummy
  loc_14E585E:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5866:   var_120.Visible = False
  loc_14E5872: End If
  loc_14E587C: Set var_E0 = Me.LblCap
  loc_14E5882: Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E588E: If (var_120 > var_132) Then
  loc_14E589B:   Set var_E0 = Me.LblCap
  loc_14E58A1:   Call 0.Method_Proc_279_54_14E5B500 (var_86)
  loc_14E58B2:   Me.LblCap.Load var_120
  loc_14E58CB:   Set var_14C = Me.LblCap
  loc_14E58D1:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1B0)
  loc_14E58EE:   Set var_E0 = Me.LblCap
  loc_14E58F4:   Call 0.Method_Proc_279_54_14E5B500 ((var_86 - 1), var_120)
  loc_14E5917:   Set var_1EC = Me.LblCap
  loc_14E591D:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1F0)
  loc_14E5925:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E5939: End If
  loc_14E5943: Set var_E0 = Me.TxtGt
  loc_14E5949: Call 0.Method_Proc_279_54_14E5B508 (var_132, var_86)
  loc_14E5955: If (var_120 > var_132) Then
  loc_14E5962:   Set var_E0 = Me.TxtGt
  loc_14E5968:   Call 0.Method_Proc_279_54_14E5B500 (var_86)
  loc_14E5979:   Me.TxtGt.Load var_120
  loc_14E5992:   Set var_14C = Me.TxtGt
  loc_14E5998:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1B0)
  loc_14E59B5:   Set var_E0 = Me.TxtGt
  loc_14E59BB:   Call 0.Method_Proc_279_54_14E5B500 ((var_86 - 1), var_120)
  loc_14E59DE:   Set var_1EC = Me.TxtGt
  loc_14E59E4:   Call 0.Method_Proc_279_54_14E5B500 (var_86, var_1F0)
  loc_14E59EC:   var_1F0.Top = ((var_120.Top + var_1B0.Height) + CDbl(&HF))
  loc_14E5A00: End If
  loc_14E5A14: Set var_E0 = Me.LblCap
  loc_14E5A1A: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5A22: var_120.Tag = MemVar_1F92070 & "NET"
  loc_14E5A3E: Set var_E0 = Me.LblCap
  loc_14E5A44: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5A4C: var_120.Caption = "Net Amount"
  loc_14E5A72: Proc_6_142_14A55B0(var_B4, CByte(0), "S")
  loc_14E5A77: var_11C = 2
  loc_14E5A96: var_DC = CVar((var_B4 + var_11C)) 'Double
  loc_14E5AB3: Set var_E0 = Me.TxtGt
  loc_14E5AB9: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120, CStr(Format(CVar(var_11C), "0.00")), 1)
  loc_14E5AC1: var_120.Text = 1
  loc_14E5AE9: Set var_E0 = Me.LblDummy
  loc_14E5AEF: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120, 0)
  loc_14E5AF7: var_120.Visible = var_11C
  loc_14E5B0F: Set var_E0 = Me.LblCap
  loc_14E5B15: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5B1D: var_120.Visible = True
  loc_14E5B35: Set var_E0 = Me.TxtGt
  loc_14E5B3B: Call 0.Method_Proc_279_54_14E5B500 (var_86, var_120)
  loc_14E5B43: var_120.Visible = True
  loc_14E5B4F: Exit Sub
End Sub

Public Sub Proc_279_55_1844B4C(arg_C, arg_10, arg_14) '1844B4C
  'Data Table: 5571B0
  Dim var_E4 As String
  Dim unk_5571CB As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_130 As Variant
  Dim var_D0 As Double
  Dim var_194 As Double
  Dim var_1A4 As Variant
  Dim var_150 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Variant
  Dim var_264 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_274 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_180 As Double
  Dim var_9C As Double
  loc_18426BC: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_18426CC: unk_5571CB.Execute var_E4 & "'", var_108, -1
  loc_18426D7: Set var_8C = var_10C
  loc_1842767: If (((((((MemVar_1F92078 & "TPRB" = arg_C) Or (MemVar_1F92078 & "TPR1" = arg_C)) Or (MemVar_1F92078 & "TPR2" = arg_C)) Or (MemVar_1F92078 & "TPR3" = arg_C)) Or (MemVar_1F92078 & "TPR4" = arg_C)) Or (MemVar_1F92078 & "TMBA" = arg_C)) Or (MemVar_1F92078 & "TMPA" = arg_C)) Then
  loc_184276C:   var_DA = &HFF
  loc_1842772: Else
  loc_1842774:   var_DA = 0
  loc_1842777: End If
  loc_184277A: var_94 = arg_14
  loc_184277F: var_86 = 1
  loc_1842785: var_A8 = var_94
  loc_184278B: var_B0 = var_94
  loc_1842791: var_B8 = CDbl(0)
  loc_18427A8: If (var_8C.RecordCount > 0) Then
  loc_18427AB:   ' Referenced from: 1844B1E
  loc_18427BA:   If Not(var_8C.EOF) Then
  loc_18427C1:     Set var_12C = Me.FGCat
  loc_18427D8:     If (var_8C.RecordCount > 0) Then
  loc_18427E1:       var_D2 = (var_D2 + 1)
  loc_184281A:       var_160 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nature")), var_D2, var_B8, var_B0, var_A8))) 'Variant
  loc_1842833:       If (var_160 = "On Base Amt") Then
  loc_1842876:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_18428B8:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_18428CB:         Else
  loc_18428ED:           var_140 = var_8C.Fields.Item("Rate").Value
  loc_184292B:           Proc_6_142_14A55B0(((Val(CStr(var_140)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0)
  loc_1842930:           var_194 = var_86
  loc_184295E:           var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1842976:           var_D0 = (((Val(var_E4) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_194)
  loc_1842994:         End If
  loc_18429BA:         Proc_6_39_E7C810(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194)
  loc_18429D4:         If (var_140 > 0) Then
  loc_18429DE:           If (var_D0 <> CDbl(0)) Then
  loc_18429E1:             var_F8 = vbNullString
  loc_1842A0B:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842A13:             var_1A4 = CVar(CLng(0)) 'Long
  loc_1842A1D:             var_140 = CVar(CStr(arg_10)) 'String
  loc_1842A24:             LateIdCallSt
  loc_1842A4F:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842A57:             var_1A4 = CVar(CLng(1)) 'Long
  loc_1842A61:             var_140 = CVar(CStr(var_86)) 'String
  loc_1842A68:             LateIdCallSt
  loc_1842A80:             If (var_DA = 0) Then
  loc_1842A9C:               var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842AD7:               var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_1C4, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_1842ADE:               LateIdCallSt
  loc_1842B11:               var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842B4C:               var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_1C4, var_12C, var_204)) 'String
  loc_1842B53:               LateIdCallSt
  loc_1842B86:               var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842BC1:               var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_1C4, var_12C, var_204)) 'String
  loc_1842BC8:               LateIdCallSt
  loc_1842BE6:               Set var_130 = Me.FGCat
  loc_1842BFB:               var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1842C36:               var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_1C4, var_12C, var_204)) 'String
  loc_1842C3D:               LateIdCallSt
  loc_1842C5A:             Else
  loc_1842C73:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842C8E:               Set var_10C = Me.Txt
  loc_1842C94:               Call 0.Method_Proc_279_55_1844B4C0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_1842C9C:               var_F8 = var_130.Text
  loc_1842CAB:               LateIdCallSt
  loc_1842CDC:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842CF7:               Set var_10C = Me.Txt
  loc_1842CFD:               Call 0.Method_Proc_279_55_1844B4C0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1842D05:               var_12C = var_130.Text
  loc_1842D0D:               var_140 = CVar(var_E4) 'String
  loc_1842D14:               LateIdCallSt
  loc_1842D45:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842D60:               Set var_10C = Me.Txt
  loc_1842D66:               Call 0.Method_Proc_279_55_1844B4C0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1842D6E:               var_140 = var_130.Text
  loc_1842D76:               var_140 = CVar(var_E4) 'String
  loc_1842D7D:               LateIdCallSt
  loc_1842DAE:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842DB6:               var_1A4 = CVar(CLng(5)) 'Long
  loc_1842DC5:               LateIdCallSt
  loc_1842DD3:             End If
  loc_1842DEC:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842DF4:             var_1B4 = CVar(CLng(6)) 'Long
  loc_1842E24:             var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1842E2B:             LateIdCallSt
  loc_1842E5E:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842E66:             var_1B4 = CVar(CLng(7)) 'Long
  loc_1842E96:             var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1842E9D:             LateIdCallSt
  loc_1842ED0:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842ED8:             var_1A4 = CVar(CLng(8)) 'Long
  loc_1842EE6:             var_140 = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_1842EED:             LateIdCallSt
  loc_1842F18:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842F20:             var_1B4 = CVar(CLng(9)) 'Long
  loc_1842F50:             var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1842F57:             LateIdCallSt
  loc_1842FB5:             var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842FBD:             var_1F4 = CVar(CLng(&HA)) 'Long
  loc_1843001:             var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_1843008:             LateIdCallSt
  loc_184302C:           End If
  loc_1843045:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184304D:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1843072:           var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_184309B:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18430A3:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18430BE:           var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_18430C8:           var_94 = (var_94 + var_180)
  loc_18430DF:           var_B0 = (var_B0 + var_D0)
  loc_18430E5:           var_B8 = var_D0
  loc_18430E8:         End If
  loc_18430EB:       Else
  loc_18430F6:         If (var_160 = "On Running Total") Then
  loc_1843139:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1843177:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_184318A:           Else
  loc_18431AC:             var_140 = var_8C.Fields.Item("Rate").Value
  loc_18431E6:             Proc_6_142_14A55B0(((Val(CStr(var_140)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_18431EB:             var_194 = var_94
  loc_1843219:             var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_184322D:             var_D0 = (((Val(var_E4) * var_B0) / CDbl(&H64)) + var_194)
  loc_184324B:           End If
  loc_1843271:           Proc_6_39_E7C810(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194, var_180)
  loc_184328B:           If (var_140 > 0) Then
  loc_1843295:             If (var_D0 <> CDbl(0)) Then
  loc_1843298:               var_F8 = vbNullString
  loc_18432C2:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18432CA:               var_1A4 = CVar(CLng(0)) 'Long
  loc_18432D4:               var_140 = CVar(CStr(arg_10)) 'String
  loc_18432DB:               LateIdCallSt
  loc_1843306:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184330E:               var_1A4 = CVar(CLng(1)) 'Long
  loc_1843318:               var_140 = CVar(CStr(var_86)) 'String
  loc_184331F:               LateIdCallSt
  loc_1843337:               If (var_DA = 0) Then
  loc_1843353:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184338E:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_1843395:                 LateIdCallSt
  loc_18433C8:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843403:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_204)) 'String
  loc_184340A:                 LateIdCallSt
  loc_184343D:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843478:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_204)) 'String
  loc_184347F:                 LateIdCallSt
  loc_184349D:                 Set var_130 = Me.FGCat
  loc_18434B2:                 var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_18434ED:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_204)) 'String
  loc_18434F4:                 LateIdCallSt
  loc_1843511:               Else
  loc_184352A:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843545:                 Set var_10C = Me.Txt
  loc_184354B:                 Call 0.Method_Proc_279_55_1844B4C0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_1843553:                 var_F8 = var_130.Text
  loc_1843562:                 LateIdCallSt
  loc_1843593:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18435AE:                 Set var_10C = Me.Txt
  loc_18435B4:                 Call 0.Method_Proc_279_55_1844B4C0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_18435BC:                 var_12C = var_130.Text
  loc_18435C4:                 var_140 = CVar(var_E4) 'String
  loc_18435CB:                 LateIdCallSt
  loc_18435FC:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843617:                 Set var_10C = Me.Txt
  loc_184361D:                 Call 0.Method_Proc_279_55_1844B4C0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1843625:                 var_140 = var_130.Text
  loc_184362D:                 var_140 = CVar(var_E4) 'String
  loc_1843634:                 LateIdCallSt
  loc_1843665:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184366D:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_184367C:                 LateIdCallSt
  loc_184368A:               End If
  loc_18436A3:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18436AB:               var_1B4 = CVar(CLng(6)) 'Long
  loc_18436DB:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18436E2:               LateIdCallSt
  loc_1843715:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184371D:               var_1B4 = CVar(CLng(7)) 'Long
  loc_184374D:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1843754:               LateIdCallSt
  loc_1843787:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184378F:               var_1A4 = CVar(CLng(8)) 'Long
  loc_1843799:               var_140 = CVar(CStr(var_B0)) 'String
  loc_18437A0:               LateIdCallSt
  loc_18437CB:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18437D3:               var_1B4 = CVar(CLng(9)) 'Long
  loc_1843803:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184380A:               LateIdCallSt
  loc_1843868:               var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843870:               var_1F4 = CVar(CLng(&HA)) 'Long
  loc_18438B4:               var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_18438BB:               LateIdCallSt
  loc_18438DF:             End If
  loc_18438F8:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843900:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1843925:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_184394E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843956:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_184397B:             var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_1843992:             var_B0 = (var_B0 + var_D0)
  loc_1843998:             var_B8 = var_D0
  loc_184399B:           End If
  loc_184399E:         Else
  loc_18439A9:           If (var_160 = "On Prev. Tax Amt") Then
  loc_18439EC:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1843A2A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1843A3D:             Else
  loc_1843A99:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1843ACC:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1843AE0:               var_D0 = (((Val(var_E4) * var_B8) / CDbl(&H64)) + var_94)
  loc_1843AFE:             End If
  loc_1843B05:             If (var_D0 <> CDbl(0)) Then
  loc_1843B08:               var_F8 = vbNullString
  loc_1843B32:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843B3A:               var_1A4 = CVar(CLng(0)) 'Long
  loc_1843B44:               var_140 = CVar(CStr(arg_10)) 'String
  loc_1843B4B:               LateIdCallSt
  loc_1843B76:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843B7E:               var_1A4 = CVar(CLng(1)) 'Long
  loc_1843B88:               var_140 = CVar(CStr(var_86)) 'String
  loc_1843B8F:               LateIdCallSt
  loc_1843BA7:               If (var_DA = 0) Then
  loc_1843BC3:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843BFE:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_1843C05:                 LateIdCallSt
  loc_1843C38:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843C73:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_204)) 'String
  loc_1843C7A:                 LateIdCallSt
  loc_1843CAD:                 var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843CE8:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_204)) 'String
  loc_1843CEF:                 LateIdCallSt
  loc_1843D0D:                 Set var_130 = Me.FGCat
  loc_1843D22:                 var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1843D5D:                 var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_204)) 'String
  loc_1843D64:                 LateIdCallSt
  loc_1843D81:               Else
  loc_1843D9A:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843DB5:                 Set var_10C = Me.Txt
  loc_1843DBB:                 Call 0.Method_Proc_279_55_1844B4C0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_1843DC3:                 var_F8 = var_130.Text
  loc_1843DD2:                 LateIdCallSt
  loc_1843E03:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843E1E:                 Set var_10C = Me.Txt
  loc_1843E24:                 Call 0.Method_Proc_279_55_1844B4C0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1843E2C:                 var_12C = var_130.Text
  loc_1843E34:                 var_140 = CVar(var_E4) 'String
  loc_1843E3B:                 LateIdCallSt
  loc_1843E6C:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843E87:                 Set var_10C = Me.Txt
  loc_1843E8D:                 Call 0.Method_Proc_279_55_1844B4C0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1843E95:                 var_140 = var_130.Text
  loc_1843E9D:                 var_140 = CVar(var_E4) 'String
  loc_1843EA4:                 LateIdCallSt
  loc_1843ED5:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843EDD:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_1843EEC:                 LateIdCallSt
  loc_1843EFA:               End If
  loc_1843F13:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843F1B:               var_1B4 = CVar(CLng(6)) 'Long
  loc_1843F4B:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1843F52:               LateIdCallSt
  loc_1843F85:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843F8D:               var_1B4 = CVar(CLng(7)) 'Long
  loc_1843FBD:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1843FC4:               LateIdCallSt
  loc_1843FF7:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1843FFF:               var_1A4 = CVar(CLng(8)) 'Long
  loc_1844009:               var_140 = CVar(CStr(var_B8)) 'String
  loc_1844010:               LateIdCallSt
  loc_184403B:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844043:               var_1B4 = CVar(CLng(9)) 'Long
  loc_1844073:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184407A:               LateIdCallSt
  loc_18440D4:               var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18440DC:               var_1F4 = CVar(CLng(&HA)) 'Long
  loc_1844120:               var_264 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1844127:               LateIdCallSt
  loc_184414B:             End If
  loc_1844164:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184416C:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1844191:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_18441BA:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18441C2:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18441DD:             var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_18441E7:             var_94 = (var_94 + var_180)
  loc_18441FE:             var_B0 = (var_B0 + var_D0)
  loc_1844204:             var_B8 = var_D0
  loc_184420A:           Else
  loc_184424A:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1844288:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_184429B:             Else
  loc_18442BD:               var_140 = var_8C.Fields.Item("Rate").Value
  loc_18442F7:               Proc_6_142_14A55B0(((Val(CStr(var_140)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_18442FC:               var_194 = var_94
  loc_184432A:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_184433E:               var_D0 = (((Val(var_E4) * var_A8) / CDbl(&H64)) + var_194)
  loc_184435C:             End If
  loc_1844382:             Proc_6_39_E7C810(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194, var_180)
  loc_184439C:             If (var_140 > 0) Then
  loc_18443A6:               If (var_D0 <> CDbl(0)) Then
  loc_18443A9:                 var_F8 = vbNullString
  loc_18443D3:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18443DB:                 var_1A4 = CVar(CLng(0)) 'Long
  loc_18443E5:                 var_140 = CVar(CStr(arg_10)) 'String
  loc_18443EC:                 LateIdCallSt
  loc_1844417:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184441F:                 var_1A4 = CVar(CLng(1)) 'Long
  loc_1844429:                 var_140 = CVar(CStr(var_86)) 'String
  loc_1844430:                 LateIdCallSt
  loc_1844448:                 If (var_DA = 0) Then
  loc_1844464:                   var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184449F:                   var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)))) 'String
  loc_18444A6:                   LateIdCallSt
  loc_18444D9:                   var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844514:                   var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_204)) 'String
  loc_184451B:                   LateIdCallSt
  loc_184454E:                   var_1C4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844589:                   var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_204)) 'String
  loc_1844590:                   LateIdCallSt
  loc_18445AE:                   Set var_130 = Me.FGCat
  loc_18445C3:                   var_1C4 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_18445FE:                   var_204 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_204)) 'String
  loc_1844605:                   LateIdCallSt
  loc_1844622:                 Else
  loc_184463B:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844656:                   Set var_10C = Me.Txt
  loc_184465C:                   Call 0.Method_Proc_279_55_1844B4C0 (CInt(4), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_204)
  loc_1844664:                   var_F8 = var_130.Text
  loc_1844673:                   LateIdCallSt
  loc_18446A4:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18446BF:                   Set var_10C = Me.Txt
  loc_18446C5:                   Call 0.Method_Proc_279_55_1844B4C0 (CInt(5), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_18446CD:                   var_12C = var_130.Text
  loc_18446D5:                   var_140 = CVar(var_E4) 'String
  loc_18446DC:                   LateIdCallSt
  loc_184470D:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844728:                   Set var_10C = Me.Txt
  loc_184472E:                   Call 0.Method_Proc_279_55_1844B4C0 (CInt(6), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1844736:                   var_140 = var_130.Text
  loc_184473E:                   var_140 = CVar(var_E4) 'String
  loc_1844745:                   LateIdCallSt
  loc_1844776:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184477E:                   var_1A4 = CVar(CLng(5)) 'Long
  loc_184478D:                   LateIdCallSt
  loc_184479B:                 End If
  loc_18447B4:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18447BC:                 var_1B4 = CVar(CLng(6)) 'Long
  loc_18447EC:                 var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18447F3:                 LateIdCallSt
  loc_1844826:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184482E:                 var_1B4 = CVar(CLng(7)) 'Long
  loc_184485E:                 var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1844865:                 LateIdCallSt
  loc_1844898:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18448A0:                 var_1A4 = CVar(CLng(8)) 'Long
  loc_18448AA:                 var_140 = CVar(CStr(var_A8)) 'String
  loc_18448B1:                 LateIdCallSt
  loc_18448DC:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18448E4:                 var_1B4 = CVar(CLng(9)) 'Long
  loc_1844914:                 var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184491B:                 LateIdCallSt
  loc_1844979:                 var_1D4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844981:                 var_1F4 = CVar(CLng(&HA)) 'Long
  loc_18449C5:                 var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_18449CC:                 LateIdCallSt
  loc_18449F0:               End If
  loc_1844A09:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844A11:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1844A36:               var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_1844A5F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1844A67:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1844A8C:               var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_1844AA3:               var_B0 = (var_B0 + var_D0)
  loc_1844AA9:               var_B8 = var_D0
  loc_1844AAC:             End If
  loc_1844AAC:           End If
  loc_1844AAC:         End If
  loc_1844AAC:       End If
  loc_1844AAC:     End If
  loc_1844AB2:     var_86 = (var_86 + 1)
  loc_1844AB7:     Set var_12C = Nothing 
  loc_1844AC1:     If (var_DA = 0) Then
  loc_1844AC8:       var_F8 = CVar(CLng(arg_10)) 'Long
  loc_1844AD0:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1844ADA:       var_108 = CVar(CStr(var_9C)) 'String
  loc_1844AE2:       Set var_10C = Me.FGrid
  loc_1844AE8:       LateIdCallSt
  loc_1844AF9:     Else
  loc_1844B0B:       Me.TxtTaxAmt.Text = CStr(var_9C)
  loc_1844B16:     End If
  loc_1844B19:     var_8C.MoveNext
  loc_1844B1E:     GoTo loc_18427AB
  loc_1844B21:   End If
  loc_1844B26:   Set var_8C = Nothing
  loc_1844B2E:   Set var_C4 = Nothing
  loc_1844B36:   Set var_C0 = Nothing
  loc_1844B3E:   Set var_D8 = Nothing
  loc_1844B46:   Set var_E0 = Nothing
  loc_1844B49: End If
  loc_1844B49: Exit Sub
End Sub

Public Sub Proc_279_56_12DB4BC(arg_C) '12DB4BC
  'Data Table: 5571B0
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A8 As String
  Dim var_138 As String
  Dim var_150 As String
  Dim unk_5571CB As Connection15
  Dim var_9C As Variant
  Dim var_88 As Recordset15
  Dim var_96 As Integer
  Dim var_158 As TextBox
  Dim var_164 As Double
  Dim var_A4 As TextBox
  Dim var_15C As TextBox
  loc_12DAE4B: Set var_9C = Me.Txt
  loc_12DAE51: Call 0.Method_Proc_279_56_12DB4BC0 (CInt(8))
  loc_12DAE7A: If (Proc_6_27_EA565C(var_A0, "Member Type") = 0) Then
  loc_12DAE84:   Call Txt_GotFocus(CInt(8))
  loc_12DAE89:   Exit Sub
  loc_12DAE8A: End If
  loc_12DAE95: Set var_9C = Me.Txt
  loc_12DAE9B: Call 0.Method_Proc_279_56_12DB4BC0 (CInt(9), var_A0)
  loc_12DAEC4: If (Proc_6_27_EA565C(var_A0, "For Month") = 0) Then
  loc_12DAECE:   Call Txt_GotFocus(CInt(9))
  loc_12DAED3:   Exit Sub
  loc_12DAED4: End If
  loc_12DAEDF: Set var_9C = Me.Txt
  loc_12DAEE5: Call 0.Method_Proc_279_56_12DB4BC0 (CInt(&HA), var_A0)
  loc_12DAF0E: If (Proc_6_27_EA565C(var_A0, "Bill Date") = 0) Then
  loc_12DAF11:   Exit Sub
  loc_12DAF12: End If
  loc_12DAF20: Set var_9C = Me.Txt
  loc_12DAF26: Call 0.Method_Proc_279_56_12DB4BC0 (CInt(8), var_A0)
  loc_12DAF36: var_8C = var_A0.Tag
  loc_12DAF4B: Set var_9C = Me.Txt
  loc_12DAF51: Call 0.Method_Proc_279_56_12DB4BC0 (CInt(9), var_A0)
  loc_12DAF69: var_90 = CStr(Trim(CVar(var_A0)))
  loc_12DAF81: Set var_9C = Me.Txt
  loc_12DAF87: Call 0.Method_Proc_279_56_12DB4BC0 (CInt(&HA), var_A0)
  loc_12DAF96: var_CC = Trim(CVar(var_A0))
  loc_12DAF9F: var_94 = CStr(var_CC)
  loc_12DAFB5: If (MemVar_1F920EC < CDate(var_94)) Then
  loc_12DAFCB:   var_BC = "Only Previous Months Billing is Possible."
  loc_12DAFD1:   MsgBox(var_BC, &H40, var_CC, var_10C, var_12C)
  loc_12DAFE1:   Exit Sub
  loc_12DAFE2: End If
  loc_12DAFF6: var_A8 = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') And SUBGROUP.COMPANYTYPE='" & var_8C
  loc_12DB00B: var_138 = var_A8 & "' and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' or SUBGROUP.LOGSITE_CODE='HO') And SubGroup.subcode Not In(Select MemCode From MemBill Where (LOGSITE_CODE='"
  loc_12DB035: var_150 = var_138 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (MemCatCode='" & var_8C & "' And MthYear='" & var_90 & "')) Order by subgroup.ConPerson"
  loc_12DB03E: unk_5571CB.Execute var_150, var_BC, -1
  loc_12DB049: Set var_88 = var_9C
  loc_12DB07B: Me.ProgressBar1.Max = CVar(CDbl(1))
  loc_12DB095: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_12DB0B1: If (var_88.RecordCount > 0) Then
  loc_12DB0D2:   Me.ProgressBar1.Max = CVar(CDbl(var_88.RecordCount))
  loc_12DB0E9:   var_96 = CInt(var_88.RecordCount)
  loc_12DB0EF: Else
  loc_12DB0FE:   var_96 = CInt(var_88.RecordCount)
  loc_12DB113:   Me.ProgressBar1.Value = CVar(CDbl(1))
  loc_12DB11B:   ' Referenced from:   12DB45B
  loc_12DB11B: End If
  loc_12DB12A: If Not(var_88.EOF) Then
  loc_12DB13C:   var_9C = var_88.Fields
  loc_12DB163:   Set var_A4 = Me.Txt
  loc_12DB169:   Call 0.Method_Proc_279_56_12DB4BC0 (CInt(0), var_158, Proc_6_38_E68A98(CVar(var_9C.Item("Name")), var_96, var_96))
  loc_12DB171:   var_158.Text = var_9C
  loc_12DB1BB:   Set var_A4 = Me.Txt
  loc_12DB1C1:   Call 0.Method_Proc_279_56_12DB4BC0 (CInt(0), var_158)
  loc_12DB1C9:   var_158.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("subcode")))
  loc_12DB213:   Set var_A4 = Me.Txt
  loc_12DB219:   Call 0.Method_Proc_279_56_12DB4BC0 (CInt(1), var_158)
  loc_12DB221:   var_158.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_12DB24C:   var_A0 = var_88.Fields.Item("CompanyType")
  loc_12DB26B:   Set var_A4 = Me.Txt
  loc_12DB271:   Call 0.Method_Proc_279_56_12DB4BC0 (CInt(1), var_158)
  loc_12DB279:   var_158.Tag = Proc_6_38_E68A98(CVar(var_A0))
  loc_12DB29B:   Set var_9C = Me.Txt
  loc_12DB2A1:   Call 0.Method_Proc_279_56_12DB4BC0 (CInt(2), var_A0)
  loc_12DB2A9:   var_A0.Text = var_90
  loc_12DB2C3:   Set var_9C = Me.Txt
  loc_12DB2C9:   Call 0.Method_Proc_279_56_12DB4BC0 (CInt(3), var_A0)
  loc_12DB2D1:   var_A0.Text = var_94
  loc_12DB2DD:   Call CmdFill_UnknownEvent_9()
  loc_12DB2EA:   If (arg_C = "All") Then
  loc_12DB2ED:     Call TopCtrl1_UnknownEvent_16()
  loc_12DB2F5:   Else
  loc_12DB313:     If (Ucase(MemVar_1F92070) = "VV") Then
  loc_12DB322:       Set var_9C = Me.TxtGt
  loc_12DB328:       Call 0.Method_Proc_279_56_12DB4BC0 (1, var_A0)
  loc_12DB34D:       If Not((CDbl(Val(var_A0.Text)) = CDbl(0))) Then
  loc_12DB350:         Call TopCtrl1_UnknownEvent_16()
  loc_12DB358:       Else
  loc_12DB35E:         var_96 = (var_96 - 1)
  loc_12DB361:       End If
  loc_12DB364:     Else
  loc_12DB3D0:       Set var_158 = Me.TxtGt
  loc_12DB3D6:       Call 0.Method_Proc_279_56_12DB4BC0 (1, var_15C, var_138, ((CDbl((Val(Me.TxtPreBalance.Tag) - Val(Me.TxtCreditAmt.Text))) <= CDbl(0)) And (CDbl(Val(Me.TxtOtherCredit.Text)) = CDbl(0))))
  loc_12DB3DE:       var_164 = var_15C.Text
  loc_12DB40A:       If Not((var_96 And (CDbl(Val(var_138)) = CDbl(0)))) Then
  loc_12DB40D:         Call TopCtrl1_UnknownEvent_16()
  loc_12DB415:       Else
  loc_12DB41B:         var_96 = (var_96 - 1)
  loc_12DB41E:       End If
  loc_12DB41E:     End If
  loc_12DB41E:   End If
  loc_12DB421:   var_88.MoveNext
  loc_12DB43D:   var_DC = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_12DB44C:   Me.ProgressBar1.Value = MemVar_1F92070
  loc_12DB45B:   GoTo loc_12DB11B
  loc_12DB45E: End If
  loc_12DB498: MsgBox(CVar("Process Completed." & vbCrLf & "No. Of Bills " & CStr(var_96) & " generated under this process."), &H40, "Member Auto Billing", var_10C, var_12C)
  loc_12DB4B8: Set var_88 = Nothing
  loc_12DB4BB: Exit Sub
End Sub
