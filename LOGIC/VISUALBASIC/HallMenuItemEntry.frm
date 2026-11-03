VERSION 5.00
Begin VB.Form HallMenuItemEntry
  Caption = " Menu Item Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11250
  ClientHeight = 7935
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6045
    Top = 1485
    Width = 1485
    Height = 285
    TabIndex = 2
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4950
    Width = 1515
    Height = 285
    TabIndex = 13
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
  Begin DataGrid DGUnit
    Left = 11490
    Top = 5730
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGRest
    Left = 12000
    Top = 5055
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGItemCat
    Left = 12225
    Top = 4170
    Width = 4410
    Height = 2460
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGItemGroup
    Left = 12390
    Top = 3480
    Width = 4665
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGHelp
    Left = 12735
    Top = 2595
    Width = 4230
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11250
    Height = 450
    TabIndex = 46
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4635
    Width = 3855
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 255
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 3375
    Width = 1275
    Height = 285
    TabIndex = 8
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
  Begin DataGrid DGDispCode
    Left = 13350
    Top = 1875
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSFlexGrid FGPoint
    Left = 12915
    Top = 585
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 38
  End
  Begin Frame Frame1
    Left = 4545
    Top = 7455
    Width = 5640
    Height = 1680
    Visible = 0   'False
    TabIndex = 33
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 465
      Width = 3855
      Height = 255
      TabIndex = 34
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin CommandButton Command2
      Caption = "&Cancel"
      Index = 1
      Left = 4065
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 37
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton Command2
      Caption = "&Print"
      Index = 0
      Left = 2775
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 36
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Restaurant"
      Index = 4
      ForeColor = &H0&
      Left = 270
      Top = 465
      Width = 930
      Height = 240
      TabIndex = 35
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin CommandButton Command1z
    Caption = "&Consumption"
    BackColor = &HE0E0E0&
    Left = 9720
    Top = 5865
    Width = 1560
    Height = 1020
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
  End
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    ForeColor = &H80&
    Left = 3660
    Top = 5370
    Width = 3075
    Height = 330
    TabIndex = 31
    Value = 1
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
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1485
    Width = 1275
    Height = 285
    TabIndex = 1
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4005
    Width = 1275
    Height = 285
    TabIndex = 10
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 3690
    Width = 1275
    Height = 285
    TabIndex = 9
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
    ForeColor = &HFF0000&
    Left = 3675
    Top = 2430
    Width = 3855
    Height = 285
    TabIndex = 5
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 2745
    Width = 1275
    Height = 285
    TabIndex = 6
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 3060
    Width = 1275
    Height = 285
    TabIndex = 7
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4320
    Width = 3855
    Height = 285
    TabIndex = 11
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1800
    Width = 3855
    Height = 285
    TabIndex = 3
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
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1170
    Width = 3855
    Height = 285
    TabIndex = 0
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 2115
    Width = 1275
    Height = 285
    TabIndex = 4
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
  Begin BtnEnh Command1
    Left = 4965
    Top = 3930
    Width = 2550
    Height = 375
    TabIndex = 47
  End
  Begin Label LblLedgerAc
    Caption = "HSN Code"
    Index = 8
    ForeColor = &HFF0000&
    Left = 5025
    Top = 1500
    Width = 960
    Height = 240
    TabIndex = 49
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
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4980
    Width = 585
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 150
    Top = 8430
    Width = 2520
    Height = 255
    TabIndex = 45
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
    Left = 135
    Top = 8760
    Width = 2430
    Height = 285
    TabIndex = 44
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 43
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
    Caption = "Specification"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4635
    Width = 1245
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
  Begin Label LblName
    Caption = "Service Charge"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2025
    Top = 3375
    Width = 1470
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
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 5025
    Top = 3390
    Width = 885
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
  Begin Label LblLedgerAc
    Caption = "Disp.Code"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2025
    Top = 1485
    Width = 960
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
  Begin Label LblName
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4005
    Width = 1515
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
  Begin Label LblLedgerAc
    Caption = "Sale Rate"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2025
    Top = 3690
    Width = 930
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
    Caption = "(Y)es/(N)o"
    Index = 0
    ForeColor = &H80&
    Left = 5025
    Top = 3075
    Width = 885
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
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H80&
    Left = 5025
    Top = 2760
    Width = 885
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
  Begin Label LblName
    Caption = "Item Category"
    Index = 12
    ForeColor = &HFF0000&
    Left = 2025
    Top = 2430
    Width = 1335
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
  Begin Label LblLedgerAc
    Caption = "Rate Edit"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2025
    Top = 2745
    Width = 855
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
  Begin Label LblName
    Caption = "Disc Applicable"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2025
    Top = 3060
    Width = 1470
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
  Begin Label LblName
    Caption = "Kitchen"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4320
    Width = 720
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
  Begin Label LblName
    Caption = "Item Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2025
    Top = 1800
    Width = 1035
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
  Begin Label LblLedgerAc
    Caption = "Item Group"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2025
    Top = 1170
    Width = 1065
    Height = 240
    TabIndex = 17
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
  Begin Label LblLedgerAc
    Caption = "Unit"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2025
    Top = 2115
    Width = 375
    Height = 240
    TabIndex = 16
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

Attribute VB_Name = "HallMenuItemEntry"


Private Sub Form_Load() '11E47E4
  'Data Table: 4ECF3C
  Dim var_88 As Variant
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_4ECF42 As Connection15
  Dim var_B8 As Variant
  loc_11E4368: On Error Goto loc_11E47A0
  loc_11E4372: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11E4385: Me.Check1.BackColor = CLng(MemVar_1F921B0)
  loc_11E439C: Me.LblUser.Left = CDbl(13500)
  loc_11E43B3: Me.LblUser.Top = CDbl(7800)
  loc_11E43CA: Me.LblLDt.Top = CDbl(8160)
  loc_11E43DB: Set var_88 = Me.LblLDt
  loc_11E43E1: var_88.Left = CDbl(13500)
  loc_11E43E9: Call Proc_118_46_109F784()
  loc_11E4409: var_90 = "SELECT Code,Name,ItemGroup,RestCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestCode='"
  loc_11E4423: unk_4ECF42.Execute var_90 & global_52 & "' And DispCode<>9999 ORDER BY Name", var_B8, -1
  loc_11E4434: Set global_68 = var_88
  loc_11E4456: CVarUnk
  loc_11E445B: VerifyVarObj
  loc_11E4467: LateIdStAd
  loc_11E4490: var_90 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestType='Kitchen' ORDER BY Name"
  loc_11E4499: unk_4ECF42.Execute var_90, var_B8, -1
  loc_11E44AA: Set global_76 = Me.DGHelp
  loc_11E44C8: CVarUnk
  loc_11E44CD: VerifyVarObj
  loc_11E44D9: LateIdStAd
  loc_11E450B: unk_4ECF42.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_11E453A: CVarUnk
  loc_11E453F: VerifyVarObj
  loc_11E454B: LateIdStAd
  loc_11E4574: var_90 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestCode  ='"
  loc_11E458E: unk_4ECF42.Execute var_90 & global_52 & "' and status='Active' ORDER BY Name", var_B8, -1
  loc_11E45C1: CVarUnk
  loc_11E45C6: VerifyVarObj
  loc_11E45D2: LateIdStAd
  loc_11E45FB: var_90 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestCode  ='"
  loc_11E4615: unk_4ECF42.Execute var_90 & global_52 & "' And status='Active' And (cattype is not NULL and cattype<>'') ORDER BY Name", var_B8, -1
  loc_11E4648: CVarUnk
  loc_11E464D: VerifyVarObj
  loc_11E4659: LateIdStAd
  loc_11E4682: var_90 = "SELECT DispCode as COde,DispCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish')  And DispCode<>9999 and RestCode ='"
  loc_11E469C: unk_4ECF42.Execute var_90 & global_52 & "' ORDER BY DispCode", var_B8, -1
  loc_11E46CF: CVarUnk
  loc_11E46D4: VerifyVarObj
  loc_11E46E0: LateIdStAd
  loc_11E4702: var_8C = "SELECT I.Code,I.Name,I.CommodityCode,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,I.Status,K.Name as KitchenName,I.DiscApp, I.Specification AS Specification,I.SITE_CODE,I.LOGSITE_CODE  FROM (((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_11E4723: unk_4ECF42.Execute var_8C & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & global_52 & "' And DispCode<>9999 ORDER BY I.Name", var_B8, -1
  loc_11E4759: Set var_88 = Me
  loc_11E4762: var_8C = "INI"
  loc_11E4770: Call Proc_118_41_EC109C(Proc_5_1_100CB50(var_8C, var_88, Me.DGDispCode, var_88, var_88, Me.DGItemCat, var_88, var_88), Me.DGItemGroup, var_88, var_88)
  loc_11E4784: Call 0.Method_arg_160 (var_88, Me.DGUnit, var_88)
  loc_11E4792: Call 0.Method_arg_164 (var_88, var_88)
  loc_11E479A: Call Proc_118_43_144F69C(Me.DGRest)
  loc_11E479F: Exit Sub
  loc_11E47A0: ' Referenced from: 11E4368
  loc_11E47A8: Set var_88 = Err()
  loc_11E47AE: Call 0.Method_arg_2C (var_8C)
  loc_11E47CF: MsgBox(CVar(var_8C), &H40, "Information", var_F0, var_110)
  loc_11E47E2: Exit Sub
  loc_11E47E3: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7678
  'Data Table: 4ECF3C
  Dim var_8C As Label
  loc_ED75D6: Call 0.Method_arg_50 (var_88)
  loc_ED75E8: Me.LblFormCaption.Caption = var_88
  loc_ED7601: Me.LblFormCaption.Left = CDbl(0)
  loc_ED760D: Set var_A0 = Me.TopCtrl1
  loc_ED7613: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED7620: Set var_8C = Me.TopCtrl1
  loc_ED7626: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED7640: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED765B: Call 0.Method_arg_100 (var_B8)
  loc_ED766D: Me.LblFormCaption.Width = var_B8
  loc_ED7675: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8288C
  'Data Table: 4ECF3C
  loc_E82827: Set global_64 = Nothing
  loc_E82839: Set global_68 = Nothing
  loc_E8284B: Set global_76 = Nothing
  loc_E8285D: Set global_72 = Nothing
  loc_E8286F: Set global_80 = Nothing
  loc_E82881: Set global_88 = Nothing
  loc_E82888: Exit Sub
End Sub

Private Sub Form_Activate() 'E46688
  'Data Table: 4ECF3C
  loc_E46658: On Error Goto loc_E46682
  loc_E4665F: Set var_88 = Me.TopCtrl1
  loc_E46665: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E4667A: If (CLng(CInt()) = &H2D) Then
  loc_E4667D:   Call TopCtrl1_UnknownEvent_15()
  loc_E46682:   ' Referenced from: E46658
  loc_E46682: End If
  loc_E46682: Proc_6_60_E62BC4()
  loc_E46687: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28470
  'Data Table: 4ECF3C
  loc_E28448: On Error Goto loc_E28467
  loc_E2845F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E28467: ' Referenced from: E28448
  loc_E28467: Proc_6_60_E62BC4(Shift)
  loc_E2846C: Exit Sub
End Sub

Private Sub DGDispCode_UnknownEvent_9 'F3E484
  'Data Table: 4ECF3C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E37B: Me.DGDispCode.Visible = False
  loc_F3E39A: If (Me.RecordCount > 0) Then
  loc_F3E3D9:   Set var_B4 = Me.Txt
  loc_F3E3DF:   Call 0.Method_DGDispCode_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F3E3E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3E41A:   var_B0 = Me.Fields.Item("DispCode")
  loc_F3E439:   Set var_B4 = Me.Txt
  loc_F3E43F:   Call 0.Method_DGDispCode_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F3E447:   var_B8.Text = CStr(var_B0.Value)
  loc_F3E45D: End If
  loc_F3E468: Set var_A8 = Me.Txt
  loc_F3E46E: Call 0.Method_DGDispCode_UnknownEvent_90 (CInt(&HA))
  loc_F3E476: var_B0.SetFocus
  loc_F3E482: Exit Sub
End Sub

Private Sub DGDispCode_UnknownEvent_1F 'E7425C
  'Data Table: 4ECF3C
  loc_E7421A: Proc_6_153_E91194(Me.DGDispCode, arg_14)
  loc_E74231: Set var_8C = Me.FGPoint
  loc_E7424D: Proc_6_138_106D6F8(Me.DGDispCode, global_88, CInt(&HA))
  loc_E7425B: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3A124
  'Data Table: 4ECF3C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A01B: Me.DGHelp.Visible = False
  loc_F3A03A: If (Me.RecordCount > 0) Then
  loc_F3A079:   Set var_B4 = Me.Txt
  loc_F3A07F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3A087:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3A0BA:   var_B0 = Me.Fields.Item("Name")
  loc_F3A0D9:   Set var_B4 = Me.Txt
  loc_F3A0DF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3A0E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3A0FD: End If
  loc_F3A108: Set var_A8 = Me.Txt
  loc_F3A10E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3A116: var_B0.SetFocus
  loc_F3A122: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E74A74
  'Data Table: 4ECF3C
  loc_E74A32: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E74A49: Set var_8C = Me.FGPoint
  loc_E74A65: Proc_6_138_106D6F8(Me.DGHelp, global_68, CInt(0))
  loc_E74A73: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1004448
  'Data Table: 4ECF3C
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_1004244: On Error Goto loc_1004405
  loc_1004247: Call Proc_118_42_F82694()
  loc_1004267: If (Me.Check1.Value = 1) Then
  loc_100426A:   Call Proc_118_43_144F69C()
  loc_100426F: End If
  loc_100427D: Set var_88 = Me.Txt
  loc_1004283: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_90)
  loc_100428B: var_90.Text = vbNullString
  loc_10042A5: Set var_88 = Me.Txt
  loc_10042AB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_10042B3: var_90.Tag = vbNullString
  loc_10042CD: Set var_88 = Me.Txt
  loc_10042D3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_10042DB: var_90.Text = vbNullString
  loc_10042F5: Set var_88 = Me.Txt
  loc_10042FB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_1004303: var_90.Text = vbNullString
  loc_100431D: Set var_88 = Me.Txt
  loc_1004323: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_100432B: var_90.Tag = vbNullString
  loc_1004345: Set var_88 = Me.Txt
  loc_100434B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_1004353: var_90.Text = vbNullString
  loc_100436D: Set var_88 = Me.Txt
  loc_1004373: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_100437B: var_90.Tag = vbNullString
  loc_100439C: var_94 = "ADD"
  loc_10043AA: Call Proc_118_41_EC109C(Proc_5_1_100CB50(var_94, Me))
  loc_10043C0: Set var_88 = Me.Txt
  loc_10043C6: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_10043CE: var_90.SetFocus
  loc_10043E7: Me.LblUser.Caption = vbNullString
  loc_10043FC: Me.LblLDt.Caption = vbNullString
  loc_1004404: Exit Sub
  loc_1004405: ' Referenced from: 1004244
  loc_100440D: Set var_88 = Err()
  loc_1004413: Call 0.Method_arg_2C (var_94)
  loc_1004434: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_104)
  loc_1004447: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBB73C
  'Data Table: 4ECF3C
  loc_EBB6A8: On Error Goto loc_EBB733
  loc_EBB6E2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBB6F1:   Set var_110 = Me
  loc_EBB708:   Call Proc_118_41_EC109C(Proc_5_1_100CB50("INI", var_110))
  loc_EBB713:   Call Proc_118_43_144F69C(global_64)
  loc_EBB71B: Else
  loc_EBB721:   Call 0.Method_arg_1E8 (var_110)
  loc_EBB729:   Call var_110.SetFocus
  loc_EBB732: End If
  loc_EBB732: Exit Sub
  loc_EBB733: ' Referenced from: EBB6A8
  loc_EBB733: Proc_6_60_E62BC4()
  loc_EBB738: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '133AA10
  'Data Table: 4ECF3C
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4ECF42 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_133A264: On Error Goto loc_133A9B7
  loc_133A275: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_133A278:   Exit Sub
  loc_133A279: End If
  loc_133A2AB: var_D4 = "Catalog"
  loc_133A2F3: If (Proc_6_108_1010FEC(MemVar_1F92044, "CATALOGMAST", "ITEMCODE", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_133A2F6:   Exit Sub
  loc_133A2F7: End If
  loc_133A329: var_D4 = "Hall Booking"
  loc_133A371: If (Proc_6_108_1010FEC(MemVar_1F92044, "HallBook1", "ITEM", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_133A374:   Exit Sub
  loc_133A375: End If
  loc_133A3EF: If (Proc_6_108_1010FEC(MemVar_1F92044, "KOT", "ITEM", CStr(Me.Fields.Item("Code").Value), 0, "KOT") = 0) Then
  loc_133A3F2:   Exit Sub
  loc_133A3F3: End If
  loc_133A46D: If (Proc_6_108_1010FEC(MemVar_1F92044, "STOCK", "ITEM", CStr(Me.Fields.Item("Code").Value), 0, "STOCK", 0) = 0) Then
  loc_133A470:   Exit Sub
  loc_133A471: End If
  loc_133A4A8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_133A4AD:   var_96 = 0
  loc_133A4B9:   unk_4ECF42.BeginTrans var_D0
  loc_133A4C0:   var_96 = &HFF
  loc_133A4D4:   var_94 = Me.Bookmark 'Variant
  loc_133A52E:   unk_4ECF42.Execute CStr("Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_133A579:   var_168 = 0
  loc_133A58C:   var_160 = 0
  loc_133A597:   var_15C = 0
  loc_133A5AA:   var_154 = 0
  loc_133A5B5:   var_150 = 0
  loc_133A5C8:   var_148 = 0
  loc_133A611:   Proc_154_5_10E33A4(MemVar_1F92044, "ItemMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_133A68F:   unk_4ECF42.Execute CStr("Delete From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_133A6DA:   var_168 = 0
  loc_133A6ED:   var_160 = 0
  loc_133A6F8:   var_15C = 0
  loc_133A70B:   var_154 = 0
  loc_133A716:   var_150 = 0
  loc_133A729:   var_148 = 0
  loc_133A772:   Proc_154_5_10E33A4(MemVar_1F92044, "ItemRate", "ItemCode", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_133A7E2:   var_118 = "Delete From STOCK Where ITEM='" & Me.Fields.Item("Code").Value & "'" 
  loc_133A7F0:   unk_4ECF42.Execute CStr(var_118), var_138, -1
  loc_133A83B:   var_168 = 0
  loc_133A84E:   var_160 = 0
  loc_133A859:   var_15C = 0
  loc_133A86C:   var_154 = 0
  loc_133A877:   var_150 = 0
  loc_133A88A:   var_148 = 0
  loc_133A8CA:   var_B4 = "STOCK"
  loc_133A8D3:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Item", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_133A901:   unk_4ECF42.CommitTrans
  loc_133A908:   var_96 = 0
  loc_133A916:   Me.Requery -1
  loc_133A926:   Me.Requery -1
  loc_133A936:   Me.Requery -1
  loc_133A956:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_133A963:     Me.Bookmark = var_94
  loc_133A96B:   Else
  loc_133A97F:     If (Me.EOF = 0) Then
  loc_133A988:       Me.MoveLast
  loc_133A98D:     End If
  loc_133A98D:   End If
  loc_133A98D:   Call Proc_118_43_144F69C(var_96, var_148, 0, var_150, var_154)
  loc_133A9AE:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_133A9B6: End If
  loc_133A9B6: Exit Sub
  loc_133A9B7: ' Referenced from: 133A264
  loc_133A9BD: If (var_96 = &HFF) Then
  loc_133A9C6:   unk_4ECF42.RollbackTrans
  loc_133A9CB: End If
  loc_133A9D3: Set var_9C = Err()
  loc_133A9D9: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_133A9FA: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_133AA0D: Exit Sub
  loc_133AA0E: Loop Until var_160 'do at: 1336763
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA6E10
  'Data Table: 4ECF3C
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FA6C8C: On Error Goto loc_FA6DCA
  loc_FA6C9D: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_FA6CA0:   Exit Sub
  loc_FA6CA1: End If
  loc_FA6CB8: If (Me.RecordCount > 0) Then
  loc_FA6CDE:   Call Proc_118_41_EC109C(Proc_5_1_100CB50("EDIT", Me))
  loc_FA6CF7:   Set var_90 = Me.Txt
  loc_FA6CFD:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FA6D05:   var_8C = var_98.Text
  loc_FA6D2A:   Set var_90 = Me.Txt
  loc_FA6D30:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA6D38:   var_98.SetFocus
  loc_FA6D51:   Set var_90 = Me.Txt
  loc_FA6D57:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98, 0)
  loc_FA6D5F:   var_98.Enabled = CInt(var_8C)
  loc_FA6D6E: Else
  loc_FA6D8F:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA6D9F: End If
  loc_FA6DAC: Me.LblUser.Caption = vbNullString
  loc_FA6DC1: Me.LblLDt.Caption = vbNullString
  loc_FA6DC9: Exit Sub
  loc_FA6DCA: ' Referenced from: FA6C8C
  loc_FA6DD2: Set var_90 = Err()
  loc_FA6DD8: Call 0.Method_arg_2C (var_8C)
  loc_FA6DF9: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FA6E0C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A870
  'Data Table: 4ECF3C
  loc_E1A865: Me.Global.Unload Me
  loc_E1A86D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F274A0
  'Data Table: 4ECF3C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F273A0: On Error Goto loc_F2743B
  loc_F273AC: var_88 = Me.RecordCount
  loc_F273BA: If (var_88 <= 0) Then
  loc_F273C3:   var_B8 = "Information"
  loc_F273DE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F273EE:   Exit Sub
  loc_F273EF: End If
  loc_F273F9: var_10C = "SELECT I.Code as SearchCode,I.Name,IsNull(I.CommodityCode,'') HSNCode,I.Unit,IG.Name as ItemGroup,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.TYPE,convert(varchar(8),I.Dispcode,103) as DispCode,convert(varchar(50),I.SaleRate,103) as SaleRate,K.Name as KitchenName FROM (((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)Left Join Depart K on K.Code=I.Kitchen) Where I.RestCode='" & global_52
  loc_F27400: MemVar_1F920E4 = var_10C & "' And I.DispCode<>9999 OR IG.RestCode LIKE 'K0 AND Choose_Limit >= 0 Order by I.Name"
  loc_F2740A: var_10C = "3000,1000,1000,2000,2000,1000,1000,800,1000,1000,2000"
  loc_F27410: Proc_6_126_F1BCC0(var_10C)
  loc_F2741E: MemVar_1F92120 = Me
  loc_F27435: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2743A: Exit Sub
  loc_F2743B: ' Referenced from: F273A0
  loc_F27443: Set var_110 = Err()
  loc_F27449: Call 0.Method_arg_1C (var_88)
  loc_F2745A: If (var_88 <> 0) Then
  loc_F27465:   Set var_110 = Err()
  loc_F2746B:   Call 0.Method_arg_2C (var_10C)
  loc_F2748C:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2749F: End If
  loc_F2749F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D218
  'Data Table: 4ECF3C
  loc_E3D208: Proc_5_0_110649C(&HFF, Me)
  loc_E3D210: Call Proc_118_43_144F69C(global_64)
  loc_E3D215: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D6F8
  'Data Table: 4ECF3C
  loc_E3D6E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3D6F0: Call Proc_118_43_144F69C(global_64)
  loc_E3D6F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DF98
  'Data Table: 4ECF3C
  loc_E3DF88: Proc_5_0_110649C(&HFF, Me)
  loc_E3DF90: Call Proc_118_43_144F69C(global_64)
  loc_E3DF95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3D3F8
  'Data Table: 4ECF3C
  loc_E3D3E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3D3F0: Call Proc_118_43_144F69C(global_64)
  loc_E3D3F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '111F8CC
  'Data Table: 4ECF3C
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4ECF42 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_140 As TextBox
  Dim var_F4 As Variant
  loc_111F58C: On Error Goto loc_111F880
  loc_111F5A3: var_A0 = "SELECT Distinct I.Code,I.Name,I.DISPCODE,I.Unit,I.ItemGroup,ItemRate.Rate as SaleRate,IG.Type,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,ISNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode left Join TaxStru T On IC.TaxStru=T.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_111F5C4: unk_4ECF42.Execute var_A0 & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & global_52 & "' And I.DispCode<>9999 order by I.Name", var_CC, -1
  loc_111F5CF: Set var_88 = var_D0
  loc_111F5E9: var_D4 = var_88.RecordCount
  loc_111F5F7: If (var_D4 = 0) Then
  loc_111F613:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_111F623:   Exit Sub
  loc_111F624: End If
  loc_111F63A: Set var_D0 = var_88 
  loc_111F646: var_136 = CreateFieldDefFile(var_D0, MemVar_1F920B4 & "\HallItem.ttx")
  loc_111F650: Set var_88 = var_D0
  loc_111F656: var_BC = CVar(var_136) 'Integer
  loc_111F659: var_98 = var_BC 'Variant
  loc_111F675: var_A0 = MemVar_1F920B4 & "\HallItem.RPT"
  loc_111F67E: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_111F689: MemVar_1F921E4 = var_D0
  loc_111F6A4: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_111F6AC: Call 0.Method_arg_24 (var_136, &HFF)
  loc_111F6B8: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_111F6D1:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_111F6D9:   Call 0.Method_arg_20 (var_140)
  loc_111F6E1:   Call 0.Method_arg_30 (var_A0)
  loc_111F6F7:   var_150 = Ucase(CVar(var_A0)) 'Variant
  loc_111F727:   If (var_150 = Ucase("Title")) Then
  loc_111F73D:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_111F745:     Call 0.Method_arg_20 (var_140)
  loc_111F74D:     Call 0.Method_arg_38 ("'Menu Item Entry'")
  loc_111F75C:   Else
  loc_111F77E:     If (var_150 = Ucase("RestName")) Then
  loc_111F792:       Set var_D0 = Me.Txt
  loc_111F798:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB), var_140)
  loc_111F7A0:       var_A0 = var_140.Text
  loc_111F7A9:       var_A4 = "'" & var_A0
  loc_111F7C3:       Call 0.Method_arg_90 (var_154, CLng(var_9A))
  loc_111F7CB:       Call 0.Method_arg_20 (var_158)
  loc_111F7D3:       Call 0.Method_arg_38 (var_A4 & "'")
  loc_111F7EC:     End If
  loc_111F7EC:   End If
  loc_111F7EF: Next var_13A 'Integer
  loc_111F80D: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_111F815: Call 0.Method_arg_2C (var_E4)
  loc_111F823: Call 0.Method_arg_150 (var_104)
  loc_111F82E: Call 0.Method_arg_50 (var_A0)
  loc_111F838: Set var_140 = Nothing
  loc_111F852: Set var_D0 = MemVar_1F921E4 
  loc_111F85E: Proc_6_99_1483714(var_D0, 0, var_A0)
  loc_111F869: MemVar_1F921E4 = var_D0
  loc_111F87C: Set var_88 = Nothing
  loc_111F87F: Exit Sub
  loc_111F880: ' Referenced from: 111F58C
  loc_111F888: Set var_D0 = Err()
  loc_111F88E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_111F899: Call 0.Method_arg_50 (var_A4)
  loc_111F8B5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_111F8C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E72C70
  'Data Table: 4ECF3C
  Dim Me As Recordset15
  loc_E72C17: Me.Requery -1
  loc_E72C27: Me.Requery -1
  loc_E72C37: Me.Requery -1
  loc_E72C47: Me.Requery -1
  loc_E72C57: Me.Requery -1
  loc_E72C67: Me.Requery -1
  loc_E72C6C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15C7668
  'Data Table: 4ECF3C
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim unk_4ECF42 As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_100 As Variant
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_94 As Double
  Dim var_168 As TextBox
  Dim var_1B4 As TextBox
  Dim var_200 As TextBox
  Dim var_24C As TextBox
  Dim var_348 As TextBox
  Dim var_4A4 As TextBox
  Dim var_160 As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_260 As Variant
  Dim var_2C8 As Variant
  Dim var_36C As Variant
  Dim var_3AC As Variant
  Dim var_47C As Variant
  Dim var_49C As Variant
  Dim var_5C8 As Variant
  Dim var_658 As Double
  Dim var_16C As String
  Dim var_120 As Fields15
  Dim var_164 As Field20
  Dim var_EC As Variant
  loc_15C6494: On Error Goto loc_15C7614
  loc_15C649B: var_86 = CByte(0) 'Byte
  loc_15C64AA: Set var_98 = Me.Txt
  loc_15C64B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15C64D9: If (Proc_183_19_E8DAFC(var_9C, "Name") = 0) Then
  loc_15C64E3:   Call Txt_GotFocus()
  loc_15C64E8:   Exit Sub
  loc_15C64E9: End If
  loc_15C64F4: Set var_98 = Me.Txt
  loc_15C64FA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_15C6523: If (Proc_183_19_E8DAFC(var_9C, "Unit") = 0) Then
  loc_15C652D:   Call Txt_GotFocus()
  loc_15C6532:   Exit Sub
  loc_15C6533: End If
  loc_15C653E: Set var_98 = Me.Txt
  loc_15C6544: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, CInt(1))
  loc_15C656D: If (Proc_183_19_E8DAFC(var_9C, "Item Group Name") = 0) Then
  loc_15C6577:   Call Txt_GotFocus()
  loc_15C657C:   Exit Sub
  loc_15C657D: End If
  loc_15C6588: Set var_98 = Me.Txt
  loc_15C658E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, CInt(2))
  loc_15C65B7: If (Proc_183_19_E8DAFC(var_9C, "Item Category") = 0) Then
  loc_15C65C1:   Call Txt_GotFocus()
  loc_15C65C6:   Exit Sub
  loc_15C65C7: End If
  loc_15C65D2: Set var_98 = Me.Txt
  loc_15C65D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C, CInt(6))
  loc_15C6601: If (Proc_183_19_E8DAFC(var_9C, "Kitchen") = 0) Then
  loc_15C660B:   Call Txt_GotFocus()
  loc_15C6610:   Exit Sub
  loc_15C6611: End If
  loc_15C661C: Set var_98 = Me.Txt
  loc_15C6622: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_9C, CInt(3))
  loc_15C664B: If (Proc_183_19_E8DAFC(var_9C, "Service Charge") = 0) Then
  loc_15C6655:   Call Txt_GotFocus()
  loc_15C665A:   Exit Sub
  loc_15C665B: End If
  loc_15C665E: Call Proc_118_44_12A8860(var_A6, CInt(8))
  loc_15C6669: If (var_A6 = &HFF) Then
  loc_15C666C:   Exit Sub
  loc_15C666D: End If
  loc_15C6671: Set var_98 = Me.TopCtrl1
  loc_15C6677: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CInt(0))
  loc_15C6690: If (CStr(var_9C) = "Add") Then
  loc_15C6699:   var_DC = 0
  loc_15C66B6:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F92070
  loc_15C66C6:   unk_4ECF42.Execute CStr(var_9C) & "'", var_B8, -1
  loc_15C66CE:   var_98 = var_98.Fields
  loc_15C66D6:   var_DC = var_9C.Item(var_9C)
  loc_15C66DE:   var_A0 = var_A0.Value
  loc_15C6717:   var_100 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_15C6745:   var_110 = (1 + Format(CStr(var_EC), "000000"))
  loc_15C6750:   global_96 = CStr(var_110)
  loc_15C6765: Else
  loc_15C677A:   var_98 = Me.Fields
  loc_15C678A:   var_B8 = var_98.Item("Code").Value
  loc_15C6799:   global_96 = CStr(var_B8)
  loc_15C67AA: End If
  loc_15C67B3: unk_4ECF42.BeginTrans var_114
  loc_15C67BC: var_86 = CByte(1) 'Byte
  loc_15C67D7: var_A4 = "Select Rate,Appdate From ItemRate Where ItemCode='" & global_96
  loc_15C67E8: var_F0 = var_A4 & "' And RestCode='" & global_52
  loc_15C67F8: unk_4ECF42.Execute var_F0 & "' Order By AppDate Desc ", var_B8, -1
  loc_15C6803: Set var_8C = var_98
  loc_15C682B: If (var_8C.RecordCount > 0) Then
  loc_15C6845:   var_9C = var_8C.Fields.Item("Rate")
  loc_15C6872:   var_94 = CSng(Format(CVar(var_9C), "0.00"))
  loc_15C6884: Else
  loc_15C6892:   Set var_98 = Me.Txt
  loc_15C6898:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C, var_A4, var_94, 1)
  loc_15C68A0:   1 = var_9C.Text
  loc_15C68AD:   var_94 = Val(var_A4)
  loc_15C68BA: End If
  loc_15C68C4: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_94)
  loc_15C68DD: If (CStr(Me.TopCtrl1) = "Add") Then
  loc_15C68EE:   Set var_98 = Me.Txt
  loc_15C68F4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_F0)
  loc_15C68FC:   1 = var_9C.Text
  loc_15C690C:   Set var_A0 = Me.Txt
  loc_15C6912:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_120)
  loc_15C6921:   var_EC = Trim(CVar(var_120))
  loc_15C6934:   Set var_164 = Me.Txt
  loc_15C693A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_16C)
  loc_15C6942:   var_100 = var_168.Text
  loc_15C6955:   Set var_1B0 = Me.Txt
  loc_15C695B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_15C6976:   Set var_1FC = Me.Txt
  loc_15C697C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_15C6997:   Set var_248 = Me.Txt
  loc_15C699D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_24C)
  loc_15C69B5:   Set var_294 = Me.Txt
  loc_15C69BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298)
  loc_15C69DF:   Set var_2EC = Me.Txt
  loc_15C69E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2F0)
  loc_15C6A0C:   Set var_344 = Me.Txt
  loc_15C6A12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_348)
  loc_15C6A2D:   Proc_6_7_F25D88(var_42C, Date)
  loc_15C6A40:   Set var_4A0 = Me.Txt
  loc_15C6A46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_4A4)
  loc_15C6A5E:   Set var_52C = Me.Txt
  loc_15C6A64:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_530)
  loc_15C6A88:   Set var_584 = Me.Txt
  loc_15C6A8E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_588)
  loc_15C6ACB:   var_A4 = "Insert Into ItemMast (Code,Name,CommodityCode,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Status,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,Specification,LOGSITE_CODE) " & " Values ('"
  loc_15C6B22:   var_1AC = CVar(var_A4 & global_96 & "','" & var_F0 & "','") & var_EC & "','" & CVar(global_52) & "'," & CVar(var_16C) & ",'" 
  loc_15C6B3F:   var_224 = var_1AC & CVar(var_1B4.Text) & "','" & CVar(var_200.Tag) 
  loc_15C6B85:   var_36C = var_224 & "','" & CVar(var_24C.Tag) & "','" & Left(CVar(var_298), 1) & "','" & Left(CVar(var_2F0), 1) & "','" & CVar(var_348.Text) 
  loc_15C6BD1:   var_47C = var_36C & "', '" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_42C & ",'A','" & CVar(global_56) 
  loc_15C6C18:   var_5C8 = var_47C & "','" & CVar(var_4A4.Tag) & "'," & CVar(var_94) & ",'" & Left(CVar(var_530), 1) & "','" & StrConv(Trim(CVar(var_588)), 3, 0) 
  loc_15C6C42:   unk_4ECF42.Execute CStr(var_5C8 & "','" & CVar(MemVar_1F92078) & "')"), var_64C, -1
  loc_15C6D04:   Set var_98 = Me.Txt
  loc_15C6D0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C, var_A4)
  loc_15C6D12:   var_650 = var_9C.Text
  loc_15C6D29:   If (var_A4 <> vbNullString) Then
  loc_15C6D3A:     Set var_98 = Me.Txt
  loc_15C6D40:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C)
  loc_15C6D63:     Set var_A0 = Me.Txt
  loc_15C6D69:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_120)
  loc_15C6D78:     Proc_6_7_F25D88(var_EC, CVar(var_120))
  loc_15C6D88:     Proc_6_7_F25D88(var_1AC, MemVar_1F920EC)
  loc_15C6DA1:     var_A4 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('"
  loc_15C6DB2:     var_F0 = var_A4 & global_96 & "','"
  loc_15C6E02:     var_17C = CVar(var_F0 & global_52 & "'," & CStr(Val(var_9C.Text)) & ",") & var_EC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_15C6E3C:     unk_4ECF42.Execute CStr(var_17C & "'," & var_1AC & ",'A','" & CVar(MemVar_1F92078) & "')"), var_224, -1
  loc_15C6E82:   End If
  loc_15C6E85: Else
  loc_15C6E93:   Set var_98 = Me.Txt
  loc_15C6E99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_15C6EA1:   var_164 = var_9C.Text
  loc_15C6EB1:   Set var_A0 = Me.Txt
  loc_15C6EB7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_120)
  loc_15C6EC6:   var_EC = Trim(CVar(var_120))
  loc_15C6ED9:   Set var_164 = Me.Txt
  loc_15C6EDF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_F0)
  loc_15C6EE7:   var_658 = var_168.Text
  loc_15C6EFA:   Set var_1B0 = Me.Txt
  loc_15C6F00:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_15C6F1B:   Set var_1FC = Me.Txt
  loc_15C6F21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_15C6F3C:   Set var_248 = Me.Txt
  loc_15C6F42:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_24C)
  loc_15C6F5A:   Set var_294 = Me.Txt
  loc_15C6F60:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298)
  loc_15C6F84:   Set var_2EC = Me.Txt
  loc_15C6F8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2F0)
  loc_15C6FB1:   Set var_344 = Me.Txt
  loc_15C6FB7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_348)
  loc_15C6FD2:   Proc_6_7_F25D88(var_42C, Date)
  loc_15C6FE5:   Set var_4A0 = Me.Txt
  loc_15C6FEB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_4A4)
  loc_15C7003:   Set var_52C = Me.Txt
  loc_15C7009:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_530)
  loc_15C702D:   Set var_584 = Me.Txt
  loc_15C7033:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_588)
  loc_15C709C:   var_160 = CVar("UPDATE ItemMast SET Name='" & var_A4 & "',CommodityCode='") & var_EC & "',RestCode='" & CVar(global_52) & "',DispCode=" 
  loc_15C70AF:   var_1AC = var_160 & CVar(var_F0) & ",Unit='" 
  loc_15C70DC:   var_260 = CVar(var_24C.Tag) 'String
  loc_15C70EF:   var_2C8 = var_1AC & CVar(var_1B4.Text) & "',ItemGroup='" & CVar(var_200.Tag) & "',ItemCatCode='" & var_260 & "',DiscApp='" & Left(CVar(var_298), 1) 
  loc_15C7125:   var_3AC = var_2C8 & "',RateEdit='" & Left(CVar(var_2F0), 1) & "',Status='" & CVar(var_348.Text) & "',SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_15C7167:   var_49C = var_3AC & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_42C & " ,U_AE='E',TYPE='" & CVar(global_56) & "',Kitchen='" 
  loc_15C71A5:   var_5C8 = var_49C & CVar(var_4A4.Tag) & "',SaleRate=" & CVar(var_94) & ",SChrgApp='" & Left(CVar(var_530), 1) & "',Specification='" & StrConv(Trim(CVar(var_588)), 3, 0) 
  loc_15C71D2:   unk_4ECF42.Execute CStr(var_5C8 & "' WHERE Code='" & CVar(global_96) & "'"), var_64C, -1
  loc_15C728E:   Set var_98 = Me.Txt
  loc_15C7294:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C, var_A4)
  loc_15C729C:   var_650 = var_9C.Text
  loc_15C72A9:   var_658 = Val(var_A4)
  loc_15C72B7:   Set var_A0 = Me.Txt
  loc_15C72BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_120)
  loc_15C72C5:   var_B8 = CVar(var_120) 'Address
  loc_15C72CC:   Proc_6_7_F25D88(var_EC, var_B8)
  loc_15C72DC:   Proc_6_7_F25D88(var_1AC, MemVar_1F920EC)
  loc_15C7323:   var_160 = CVar("Update ItemRate Set Rate=" & CStr(var_658) & ",AppDate=") & var_EC & ",Site_Code='" & CVar(MemVar_1F92070) & "',U_name='" 
  loc_15C735C:   var_214 = var_160 & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1AC & ",U_AE='E' Where ItemCode='" & CVar(global_96) & "' And RestCode='" 
  loc_15C7380:   unk_4ECF42.Execute CStr(var_214 & CVar(global_52) & "'"), var_260, -1
  loc_15C73C0: End If
  loc_15C73ED: Set var_98 = Me.Txt
  loc_15C73F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Select Count(*) From UnitMast Where Name='", var_B8, -1, var_A0)
  loc_15C7414: unk_4ECF42.Execute 0 & var_A4 & "'", var_164, var_EC
  loc_15C742C:  = var_A0.Fields.Value
  loc_15C7459: If (var_9C.Text.Item(var_658) <= 0) Then
  loc_15C7481:   Set var_98 = Me.Txt
  loc_15C7487:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('")
  loc_15C748F:   var_160 = var_9C.Text
  loc_15C7498:   var_F0 = -1 & var_A4
  loc_15C74BB:   var_EC = CVar(0 & var_A4 & "'" & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_15C74C1:   var_CC = MemVar_1F920EC
  loc_15C74C9:   Proc_6_7_F25D88(var_B8, var_CC)
  loc_15C74D1:   var_100 = var_EC & var_B8 
  loc_15C74DA:   var_110 = var_100 & ",'A','" 
  loc_15C74FB:   unk_4ECF42.Execute CStr(var_110 & CVar(MemVar_1F92078) & "')"), var_A0, 
  loc_15C752D: End If
  loc_15C7533: unk_4ECF42.CommitTrans
  loc_15C753C: var_86 = CByte(0) 'Byte
  loc_15C754B: Me.Requery -1
  loc_15C755B: Me.Requery -1
  loc_15C756B: Me.Requery -1
  loc_15C757B: Me.Requery -1
  loc_15C75A8: Me.Find "Code='" & global_96 & "'", 0, 1
  loc_15C75B8: Set var_98 = Me.TopCtrl1
  loc_15C75BE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_15C75D7: If (CStr() = "Add") Then
  loc_15C75DA:   Call TopCtrl1_UnknownEvent_A()
  loc_15C75DF:   Exit Sub
  loc_15C75E0: End If
  loc_15C75F5: var_A4 = "INI"
  loc_15C7603: Call Proc_118_41_EC109C(Proc_5_1_100CB50(var_A4, Me))
  loc_15C760E: Call Proc_118_43_144F69C(global_64)
  loc_15C7613: Exit Sub
  loc_15C7614: ' Referenced from: 15C6494
  loc_15C761D: If (CInt(var_86) = 1) Then
  loc_15C7626:   unk_4ECF42.RollbackTrans
  loc_15C762B: End If
  loc_15C7633: Set var_98 = Err()
  loc_15C7639: Call 0.Method_arg_2C (var_A4)
  loc_15C7652: MsgBox(CVar(var_A4), &H10, var_EC, var_100, var_110)
  loc_15C7665: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F3CA64
  'Data Table: 4ECF3C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C95B: Me.DGItemCat.Visible = False
  loc_F3C97A: If (Me.RecordCount > 0) Then
  loc_F3C9B9:   Set var_B4 = Me.Txt
  loc_F3C9BF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3C9C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3C9FA:   var_B0 = Me.Fields.Item("Name")
  loc_F3CA19:   Set var_B4 = Me.Txt
  loc_F3CA1F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3CA27:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CA3D: End If
  loc_F3CA48: Set var_A8 = Me.Txt
  loc_F3CA4E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F3CA56: var_B0.SetFocus
  loc_F3CA62: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E71D5C
  'Data Table: 4ECF3C
  loc_E71D1A: Proc_6_153_E91194(Me.DGItemCat, arg_14)
  loc_E71D31: Set var_8C = Me.FGPoint
  loc_E71D4D: Proc_6_138_106D6F8(Me.DGItemCat, global_80, CInt(6))
  loc_E71D5B: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '1033EEC
  'Data Table: 4ECF3C
  Dim var_9C As String
  Dim unk_4ECF42 As Connection15
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim var_98 As String
  loc_1033CC4: Set var_8C = New FrmConsumMast
  loc_1033CE5: Set var_90 = Me.Frame1
  loc_1033CEB: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, "Select Count(*) From BOM Where FinItem+RestCode='")
  loc_1033CF3: var_C4 = FrmConsumMast.Frame1.Tag
  loc_1033CFC: var_9C = -1 & var_98
  loc_1033D16: unk_4ECF42.Execute var_9C & global_52 & "'", var_C8, 
  loc_1033D55: var_94 = var_C8.Fields.Item(0)
  loc_1033D77: If (var_94.Value > 0) Then
  loc_1033D87:   Me.Global.Load var_8C
  loc_1033D9D:   Set var_90 = Me.Txt
  loc_1033DA3:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94)
  loc_1033DAB:   var_98 = var_94.Tag
  loc_1033DBA:   var_C4 = CVar(var_98 & global_52) 'String
  loc_1033DC1:   Call var_8C.SEARCHBACK
  loc_1033DD7:   Call var_8C.TopCtrl1_eEdit
  loc_1033DE0: Else
  loc_1033DE3:   Call var_8C.TopCtrl1_eAdd
  loc_1033DE9:   var_B4 = 0
  loc_1033DFA:   Set var_90 = Me.Txt
  loc_1033E00:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94)
  loc_1033E08:   var_C4 = CVar(var_94) 'Address
  loc_1033E10:   LateMemCallSt
  loc_1033E2A:   Set var_90 = Me.Txt
  loc_1033E30:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, var_8C)
  loc_1033E38:   var_C4 = var_94.Tag
  loc_1033E40:   var_C4 = CVar(var_98) 'String
  loc_1033E55:   var_8C.Txt.Tag = 0
  loc_1033EC6:   IIf((global_52 = MemVar_1F92078 & "BANQ"), "BANQUET", "OUTDOOR").Tag = CVar(global_52)
  loc_1033ECD:   var_B4 = 0
  loc_1033ED3:   var_F8 = True
  loc_1033EDA:   Call var_8C.Txt_Validate
  loc_1033EE0: End If
  loc_1033EE3: Call var_8C.Show
  loc_1033EE9: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9EC1C
  'Data Table: 4ECF3C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9EABF: Me.DGRest.Visible = False
  loc_F9EADE: If (Me.RecordCount > 0) Then
  loc_F9EB30:   Set var_CC = Me.Txt
  loc_F9EB36:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9EB3E:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9EB96:   Set var_B4 = Me.DGRest
  loc_F9EBAD:   Set var_CC = Me.Txt
  loc_F9EBB3:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9EBBB:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9EBDB: End If
  loc_F9EBF9: Set var_B0 = Me.Txt
  loc_F9EBFF: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9EC07: var_B4.SetFocus
  loc_F9EC1B: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9AF08
  'Data Table: 4ECF3C
  loc_E9AEA6: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E9AED0: Set var_A8 = Me.FGPoint
  loc_E9AEF1: Proc_6_138_106D6F8(Me.DGRest, global_76, CInt(CStr(Me.DGRest.Tag)))
  loc_E9AF07: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '152229C
  'Data Table: 4ECF3C
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_BC As Variant
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_88 As Variant
  Dim var_A8 As String
  Dim var_110 As String
  Dim unk_4ECF42 As Connection15
  loc_1521342: Set var_88 = Me.Txt
  loc_1521348: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1521356: Proc_6_74_E226B0(var_8C)
  loc_1521362: Call Proc_118_45_FB3F6C(var_8C)
  loc_1521367: On Error Goto loc_1522256
  loc_152136D: var_92 = Index
  loc_1521378: If (var_92 = CInt(0)) Then
  loc_152138A:   Me.Filter = 0
  loc_152139A:   Me.Requery -1
  loc_15213B0:   Set var_88 = Me.Txt
  loc_15213B6:   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C, var_A8)
  loc_15213BE:   "ItemGroup='" = var_8C.Tag
  loc_15213D8:   Me.Filter = CVar(var_92 & var_A8 & "'")
  loc_1521405:   If (Me.RecordCount > 0) Then
  loc_1521413:     Set var_8C = Me.FGPoint
  loc_152142B:     Proc_6_137_1193554(Me.DGHelp, global_68)
  loc_1521439:   End If
  loc_152143C: Else
  loc_1521444:   If (var_92 = CInt(2)) Then
  loc_1521456:     Me.Filter = 0
  loc_1521472:     If (Me.RecordCount > 0) Then
  loc_1521480:       Set var_8C = Me.FGPoint
  loc_1521498:       Proc_6_137_1193554(Me.DGItemGroup, global_72, Index)
  loc_15214A6:     End If
  loc_15214F4:     Set var_88 = Me.Txt
  loc_15214FA:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1521502:     var_8C = var_8C.Text
  loc_152151A:     If (Index Or (var_A8 = vbNullString)) Then
  loc_152151D:       Exit Sub
  loc_152151E:     End If
  loc_152152B:     Set var_88 = Me.Txt
  loc_1521531:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521539:     var_A8 = var_8C.Text
  loc_152154B:     var_A4 = "Name"
  loc_1521586:     If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_152158F:       Me.MoveFirst
  loc_15215B2:       Set var_88 = Me.Txt
  loc_15215B8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_15215C0:       0 = var_8C.Text
  loc_15215D9:       Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_15215EE:     End If
  loc_15215F1:   Else
  loc_15215F9:     If (var_92 = CInt(6)) Then
  loc_1521613:       If (Me.RecordCount > 0) Then
  loc_1521621:         Set var_8C = Me.FGPoint
  loc_1521639:         Proc_6_137_1193554(Me.DGItemCat, global_80)
  loc_1521647:       End If
  loc_1521695:       Set var_88 = Me.Txt
  loc_152169B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_15216A3:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15216BB:       If (Index Or (var_A8 = vbNullString)) Then
  loc_15216BE:         Exit Sub
  loc_15216BF:       End If
  loc_15216CC:       Set var_88 = Me.Txt
  loc_15216D2:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15216DA:       var_A8 = var_8C.Text
  loc_15216EC:       var_A4 = "Name"
  loc_1521727:       If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_1521730:         Me.MoveFirst
  loc_1521753:         Set var_88 = Me.Txt
  loc_1521759:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1521761:         0 = var_8C.Text
  loc_152177A:         Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_152178F:       End If
  loc_1521792:     Else
  loc_152179A:       If (var_92 = CInt(1)) Then
  loc_15217B4:         If (Me.RecordCount > 0) Then
  loc_15217C2:           Set var_8C = Me.FGPoint
  loc_15217DA:           Proc_6_137_1193554(Me.DGUnit, global_84)
  loc_15217E8:         End If
  loc_1521836:         Set var_88 = Me.Txt
  loc_152183C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1521844:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_152185C:         If (Index Or (var_A8 = vbNullString)) Then
  loc_152185F:           Exit Sub
  loc_1521860:         End If
  loc_152186D:         Set var_88 = Me.Txt
  loc_1521873:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_152187B:         var_A8 = var_8C.Text
  loc_152188D:         var_A4 = "Name"
  loc_15218A4:         var_C8 = Me.Fields.Item(var_A4)
  loc_15218C8:         If CBool(CVar(var_A8) <> var_C8.Value) Then
  loc_15218D1:           Me.MoveFirst
  loc_15218F4:           Set var_88 = Me.Txt
  loc_15218FA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1521902:           0 = var_8C.Text
  loc_152191B:           Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1521930:         End If
  loc_1521933:       Else
  loc_152193B:         If Not (var_92 = CInt(4)) Then
  loc_1521946:           If Not (var_92 = CInt(5)) Then
  loc_1521951:             If (var_92 = CInt(8)) Then
  loc_1521954:             End If
  loc_1521954:           End If
  loc_1521963:           Set var_88 = Me.Txt
  loc_1521969:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521971:           var_8C.SelStart = 0
  loc_152198A:           Set var_88 = Me.Txt
  loc_1521990:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15219AB:           Set var_90 = Me.Txt
  loc_15219B1:           Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_15219B9:           var_C8.SelLength = Len(var_8C.Text)
  loc_15219D9:           Set var_88 = Me.Txt
  loc_15219DF:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15219F9:           Set var_90 = Me.Txt
  loc_15219FF:           Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1521A07:           var_C8.Tag = var_8C.Text
  loc_1521A1D:         Else
  loc_1521A25:           If (var_92 = CInt(7)) Then
  loc_1521A35:             Set var_88 = Me.Txt
  loc_1521A3B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521A56:             Set var_90 = Me.Txt
  loc_1521A5C:             Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1521A64:             var_C8.SelLength = Len(var_8C.Text)
  loc_1521A84:             Set var_88 = Me.Txt
  loc_1521A8A:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521A92:             var_A8 = var_8C.Text
  loc_1521AA4:             Set var_90 = Me.Txt
  loc_1521AAA:             Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1521AB2:             var_C8.Tag = var_A8
  loc_1521AC8:           Else
  loc_1521AD0:             If (var_92 = CInt(3)) Then
  loc_1521AE1:               Set var_88 = Me.Txt
  loc_1521AE7:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1521B06:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_1521B22:               Set var_90 = Me.Txt
  loc_1521B28:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_C8)
  loc_1521B43:               Set var_88 = Me.Txt
  loc_1521B49:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1521B61:               var_A4 = CVar(((var_8C.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1521B6A:               Set var_104 = Me.DGRest
  loc_1521B70:               var_104.Top = CVar(var_8C.Left)
  loc_1521B91:               Me.Filter = 0
  loc_1521BA2:               Me.Filter = "RestType='Kitchen'"
  loc_1521BBE:               If (Me.RecordCount > 0) Then
  loc_1521BCC:                 Set var_8C = Me.FGPoint
  loc_1521BE4:                 Proc_6_137_1193554(Me.DGRest, global_76)
  loc_1521BF2:               End If
  loc_1521C40:               Set var_88 = Me.Txt
  loc_1521C46:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1521C4E:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1521C66:               If (Index Or (var_A8 = vbNullString)) Then
  loc_1521C69:                 Exit Sub
  loc_1521C6A:               End If
  loc_1521C77:               Set var_88 = Me.Txt
  loc_1521C7D:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521C85:               var_A8 = var_8C.Text
  loc_1521C97:               var_A4 = "Name"
  loc_1521CA6:               var_90 = Me.Fields
  loc_1521CD2:               If CBool(CVar(var_A8) <> var_90.Item(var_A4).Value) Then
  loc_1521CDB:                 Me.MoveFirst
  loc_1521CFE:                 Set var_88 = Me.Txt
  loc_1521D04:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1521D0C:                 0 = var_8C.Text
  loc_1521D25:                 Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1521D3A:               End If
  loc_1521D4D:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_1521D5B:             Else
  loc_1521D63:               If (var_92 = CInt(&HB)) Then
  loc_1521D74:                 Set var_8C = Me.Txt
  loc_1521D7A:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_1521DA0:                 var_A4 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_1521DAF:                 Me.DGRest.Left = var_A4
  loc_1521DCD:                 Set var_8C = Me.Txt
  loc_1521DD3:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_1521DEE:                 Set var_C8 = Me.Txt
  loc_1521DF4:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_104)
  loc_1521E22:                 var_A4 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_1521E31:                 Me.DGRest.Top = var_A4
  loc_1521E54:                 Me.Filter = 0
  loc_1521E65:                 Me.Filter = "RestType='Banquet'"
  loc_1521E81:                 If (Me.RecordCount > 0) Then
  loc_1521E8F:                   Set var_8C = Me.FGPoint
  loc_1521EA7:                   Proc_6_137_1193554(Me.DGRest, global_76)
  loc_1521EB5:                 End If
  loc_1521F03:                 Set var_88 = Me.Txt
  loc_1521F09:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1521F11:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1521F29:                 If (Index Or (var_A8 = vbNullString)) Then
  loc_1521F2C:                   Exit Sub
  loc_1521F2D:                 End If
  loc_1521F3A:                 Set var_88 = Me.Txt
  loc_1521F40:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1521F48:                 var_A8 = var_8C.Text
  loc_1521F5A:                 var_A4 = "Name"
  loc_1521F71:                 var_C8 = Me.Fields.Item(var_A4)
  loc_1521F95:                 If CBool(CVar(var_A8) <> var_C8.Value) Then
  loc_1521F9E:                   Me.MoveFirst
  loc_1521FC1:                   Set var_88 = Me.Txt
  loc_1521FC7:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1521FCF:                   0 = var_8C.Text
  loc_1521FE8:                   Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1521FFD:                 End If
  loc_1522002:                 var_BC = CVar(CStr(Index)) 'String
  loc_1522010:                 Me.DGRest.Tag = var_BC
  loc_152201E:               Else
  loc_1522026:                 If (var_92 = CInt(9)) Then
  loc_1522036:                   Set var_88 = Me.Txt
  loc_152203C:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522057:                   Set var_90 = Me.Txt
  loc_152205D:                   Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1522065:                   var_C8.SelLength = Len(var_8C.Text)
  loc_1522085:                   Set var_88 = Me.Txt
  loc_152208B:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15220A5:                   Set var_90 = Me.Txt
  loc_15220AB:                   Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_15220B3:                   var_C8.Tag = var_8C.Text
  loc_15220C9:                 Else
  loc_15220D1:                   If (var_92 = CInt(&HA)) Then
  loc_15220E2:                     Set var_88 = Me.Txt
  loc_15220E8:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_1522107:                     Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_1522123:                     Set var_90 = Me.Txt
  loc_1522129:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_C8)
  loc_152214A:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_1522162:                     var_A4 = CVar(((var_8C.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1522171:                     Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_1522197:                     var_A8 = "SELECT DispCode as COde,DispCode FROM ItemMast Where Logsite_Code in ('" & MemVar_1F92078
  loc_15221AF:                     var_110 = var_A8 & "','HO') And Type IN ('Finish')  And DispCode<>9999 and RestCode ='" & global_52 & "' ORDER BY DispCode"
  loc_15221B8:                     unk_4ECF42.Execute var_110, var_BC, -1
  loc_15221EB:                     CVarUnk
  loc_15221F0:                     VerifyVarObj
  loc_15221F6:                     Set var_88 = Me.DGDispCode
  loc_15221FC:                     LateIdStAd
  loc_1522221:                     If (Me.RecordCount > 0) Then
  loc_1522247:                       Proc_6_137_1193554(Me.DGDispCode, Me.Txt, Index, Me.FGPoint)
  loc_1522255:                     End If
  loc_1522255:                   End If
  loc_1522255:                 End If
  loc_1522255:               End If
  loc_1522255:             End If
  loc_1522255:           End If
  loc_1522255:         End If
  loc_1522255:       End If
  loc_1522255:     End If
  loc_1522255:   End If
  loc_1522255: End If
  loc_1522255: Exit Sub
  loc_1522256: ' Referenced from: 1521367
  loc_1522264: Call 0.Method_arg_2C (var_A8, Err())
  loc_1522285: MsgBox(CVar(var_A8), &H40, "Information", var_E8, var_130)
  loc_1522298: Exit Sub
  loc_1522299: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13562F4
  'Data Table: 4ECF3C
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  Dim var_9C As DataGrid
  loc_1355AE2: If (CLng(Shift) = &H1B) Then
  loc_1355AE5:   Call Proc_118_45_FB3F6C()
  loc_1355AEA:   Exit Sub
  loc_1355AEB: End If
  loc_1355AEE: var_88 = KeyCode
  loc_1355AF9: If (var_88 = CInt(0)) Then
  loc_1355B1E:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1355B3E:     Set var_9C = Me.FGPoint
  loc_1355B6C:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift)
  loc_1355B80:   End If
  loc_1355BD9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1355BFF:     Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 0)
  loc_1355C0D:   End If
  loc_1355C10: Else
  loc_1355C18:   If (var_88 = CInt(2)) Then
  loc_1355C43:     Set var_9C = Nothing
  loc_1355C75:     Proc_6_69_134A198(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_1355CE4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1355CEB:       Set var_9C = Me.DGItemGroup
  loc_1355D0A:       Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_1355D18:     End If
  loc_1355D1B:   Else
  loc_1355D23:     If (var_88 = CInt(6)) Then
  loc_1355D7C:       Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_1355DEB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1355E11:         Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1355E1F:       End If
  loc_1355E22:     Else
  loc_1355E2A:       If Not (var_88 = CInt(3)) Then
  loc_1355E35:         If (var_88 = CInt(&HB)) Then
  loc_1355E38:         End If
  loc_1355E8E:         Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1355EFD:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1355F0B:           Set var_94 = Me.FGPoint
  loc_1355F23:           Proc_6_138_106D6F8(Me.DGRest, global_76, KeyCode, var_94, Me.FGPoint, 0)
  loc_1355F31:         End If
  loc_1355F34:       Else
  loc_1355F3C:         If (var_88 = CInt(&HA)) Then
  loc_1355F49:           Set var_90 = Me.Txt
  loc_1355F4F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, 1)
  loc_1355F6A:           Proc_6_41_FA0BA4(var_94, Shift, 4, 0)
  loc_1355F98:           If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1355FB8:             Set var_9C = Me.FGPoint
  loc_1355FE6:             Proc_6_79_11ACE04(Me.DGDispCode, Me.Txt, KeyCode, global_88, Shift, 0)
  loc_1355FFA:           End If
  loc_1356053:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1356079:             Proc_6_138_106D6F8(Me.DGDispCode, global_88, KeyCode, Me.FGPoint, 1)
  loc_1356087:           End If
  loc_135608A:         Else
  loc_1356092:           If (var_88 = CInt(1)) Then
  loc_13560B2:             Set var_9C = Me.FGPoint
  loc_13560E0:             Proc_6_79_11ACE04(Me.DGUnit, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_135614D:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1356154:               Set var_9C = Me.DGUnit
  loc_1356173:               Proc_6_138_106D6F8(var_9C, global_84, KeyCode, Me.FGPoint, var_9C, 0)
  loc_1356181:             End If
  loc_1356181:           End If
  loc_1356181:         End If
  loc_1356181:       End If
  loc_1356181:     End If
  loc_1356181:   End If
  loc_1356181: End If
  loc_13561B2: Set var_9C = Me.DGRest
  loc_1356228: If ((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) Then
  loc_1356249:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_1356256:     Call Txt_Validate(CInt(3))
  loc_1356260:     Call Proc_118_47_E81F84(0, var_86, var_9C, 0)
  loc_1356268:   Else
  loc_1356286:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_135628F:       Call Txt_Validate(KeyCode)
  loc_135629A:       If (var_86 = &HFF) Then
  loc_135629D:         Exit Sub
  loc_135629E:       End If
  loc_13562A4:       Proc_6_75_E527CC(Shift, arg_14, var_86)
  loc_13562AC:     Else
  loc_13562C1:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13562CA:         Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_13562D2:       Else
  loc_13562E5:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(2))) Then
  loc_13562EE:           Proc_6_76_E52838(Shift, arg_14)
  loc_13562F3:         End If
  loc_13562F3:       End If
  loc_13562F3:     End If
  loc_13562F3:   End If
  loc_13562F3: End If
  loc_13562F3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '119A14C
  'Data Table: 4ECF3C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_1199D43: Proc_6_58_E054C0(arg_10)
  loc_1199D4E: Proc_6_133_E7EF78(var_94)
  loc_1199D57: arg_10 = CInt(var_94)
  loc_1199D60: var_96 = KeyAscii
  loc_1199D6B: If (var_96 = CInt(&HA)) Then
  loc_1199D78:   Set var_9C = Me.Txt
  loc_1199D7E:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_1199D99:   Proc_6_42_129A86C(var_A0, arg_10, 4)
  loc_1199DA8: Else
  loc_1199DB0:   If (var_96 = CInt(2)) Then
  loc_1199DCF:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_1199DFC:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_1199E2E:       Proc_6_138_106D6F8(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint)
  loc_1199E3C:     End If
  loc_1199E3F:   Else
  loc_1199E47:     If Not (var_96 = CInt(3)) Then
  loc_1199E52:       If (var_96 = CInt(&HB)) Then
  loc_1199E55:       End If
  loc_1199E71:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1199E9E:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_1199ED0:         Proc_6_138_106D6F8(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_1199EDE:       End If
  loc_1199EE1:     Else
  loc_1199EE9:       If (var_96 = CInt(6)) Then
  loc_1199F08:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1199F35:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_1199F4F:           Set var_A0 = Me.FGPoint
  loc_1199F67:           Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_1199F75:         End If
  loc_1199F78:       Else
  loc_1199F80:         If (var_96 = CInt(7)) Then
  loc_1199F8D:           Set var_9C = Me.Txt
  loc_1199F93:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_1199FAE:           Proc_6_42_129A86C(var_A0, arg_10, 8, 2)
  loc_1199FBD:         Else
  loc_1199FC5:           If Not (var_96 = CInt(4)) Then
  loc_1199FD0:             If Not (var_96 = CInt(5)) Then
  loc_1199FDB:               If (var_96 = CInt(8)) Then
  loc_1199FDE:               End If
  loc_1199FDE:             End If
  loc_119A007:             If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_119A017:               Set var_9C = Me.Txt
  loc_119A01D:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_119A025:               var_A0.Text = 0
  loc_119A034:             Else
  loc_119A05D:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_119A06D:                 Set var_9C = Me.Txt
  loc_119A073:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_119A07B:                 var_A0.Text = arg_10
  loc_119A087:               End If
  loc_119A087:             End If
  loc_119A089:             arg_10 = 0
  loc_119A08F:           Else
  loc_119A097:             If (var_96 = CInt(&HD)) Then
  loc_119A0C3:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_119A0D3:                 Set var_9C = Me.Txt
  loc_119A0D9:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Active")
  loc_119A0E1:                 var_A0.Text = arg_10
  loc_119A0F0:               Else
  loc_119A119:                 If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_119A129:                   Set var_9C = Me.Txt
  loc_119A12F:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_119A137:                   var_A0.Text = "Non Active"
  loc_119A143:                 End If
  loc_119A143:               End If
  loc_119A145:               arg_10 = 0
  loc_119A148:             End If
  loc_119A148:           End If
  loc_119A148:         End If
  loc_119A148:       End If
  loc_119A148:     End If
  loc_119A148:   End If
  loc_119A148: End If
  loc_119A148: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1012EFC
  'Data Table: 4ECF3C
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_1012CDF: var_86 = KeyCode
  loc_1012CEA: If (var_86 = CInt(0)) Then
  loc_1012D10:   Set var_A0 = Me.Txt
  loc_1012D16:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_1012D1E:   (CBool(Me.DGHelp.Visible) = &HFF) = var_A4.Text
  loc_1012D3B:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_1012D48:     var_A8 = "Name"
  loc_1012D63:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_68)
  loc_1012D76:     Set var_A4 = Me.DGHelp
  loc_1012D7D:     Set var_A0 = Me.FGPoint
  loc_1012D95:     Proc_6_138_106D6F8(var_A4, global_68, KeyCode)
  loc_1012DA3:   End If
  loc_1012DA6: Else
  loc_1012DAE:   If (var_86 = CInt(&HA)) Then
  loc_1012DD4:     Set var_A0 = Me.Txt
  loc_1012DDA:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGDispCode.Visible) = &HFF))
  loc_1012DE2:     var_A0 = var_A4.Text
  loc_1012DFF:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_1012E0C:       var_A8 = "DispCode"
  loc_1012E27:       Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_88)
  loc_1012E59:       Proc_6_138_106D6F8(Me.DGDispCode, global_88, KeyCode, Me.FGPoint)
  loc_1012E67:     End If
  loc_1012E6A:   Else
  loc_1012E72:     If (var_86 = CInt(1)) Then
  loc_1012E91:       If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_1012E9E:         var_A8 = "Name"
  loc_1012EB9:         Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_84, Shift)
  loc_1012EEB:         Proc_6_138_106D6F8(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_1012EF9:       End If
  loc_1012EF9:     End If
  loc_1012EF9:   End If
  loc_1012EF9: End If
  loc_1012EF9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46344
  'Data Table: 4ECF3C
  loc_E46322: Set var_88 = Me.Txt
  loc_E46328: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46336: Proc_6_73_E22704(var_8C)
  loc_E46342: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1418820
  'Data Table: 4ECF3C
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  loc_1417D94: On Error Goto loc_14187DC
  loc_1417D9A: var_86 = Cancel
  loc_1417DA5: If (var_86 = CInt(9)) Then
  loc_1417DB2:   Set var_8C = Me.Txt
  loc_1417DB8:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1417DD8:   Set var_98 = Me.Txt
  loc_1417DDE:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1417DE6:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1417E07:   Set var_8C = Me.Txt
  loc_1417E0D:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_1417E15:   var_A0 = var_90.Text
  loc_1417E2C:   If (var_A0 = vbNullString) Then
  loc_1417E50:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_1417E62:     arg_10 = &HFF
  loc_1417E70:     Set var_8C = Me.Txt
  loc_1417E76:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_1417E7E:     var_90.SetFocus
  loc_1417E8A:     Exit Sub
  loc_1417E8B:   End If
  loc_1417E99:   Set var_8C = Me.Txt
  loc_1417E9F:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_1417EA7:   arg_10 = var_90.Text
  loc_1417EC2:   Set var_94 = Me.Txt
  loc_1417EC8:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_1417ED0:   (var_A0 <> vbNullString) = var_98.Text
  loc_1417EF0:   If (var_86 And (var_124 = vbNullString)) Then
  loc_1417F14:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_1417F26:     arg_10 = &HFF
  loc_1417F29:     Exit Sub
  loc_1417F2A:   End If
  loc_1417F2D: Else
  loc_1417F35:   If (var_86 = CInt(&HA)) Then
  loc_1417F3B:     Call Proc_118_44_12A8860(var_126)
  loc_1417F46:     If (var_126 = &HFF) Then
  loc_1417F4B:       arg_10 = &HFF
  loc_1417F4E:       Exit Sub
  loc_1417F4F:     End If
  loc_1417F52:   Else
  loc_1417F5A:     If (var_86 = CInt(7)) Then
  loc_1417F67:       Set var_8C = Me.Txt
  loc_1417F6D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1417FA7:       Set var_94 = Me.Txt
  loc_1417FAD:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_1417FB5:       var_98.Text = 1
  loc_1417FD2:     Else
  loc_1417FDA:       If (var_86 = CInt(0)) Then
  loc_1417FE0:         Call Proc_118_44_12A8860(var_126, arg_10)
  loc_1417FEB:         If (var_126 = &HFF) Then
  loc_1417FF0:           arg_10 = &HFF
  loc_1417FF3:           Exit Sub
  loc_1417FF4:         End If
  loc_1417FFF:         Set var_8C = Me.Txt
  loc_1418005:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_141800D:         var_A0 = "Item Name"
  loc_141802E:         If (Proc_6_27_EA565C(var_90, var_A0) = 0) Then
  loc_141803C:           Set var_8C = Me.Txt
  loc_1418042:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_141804A:           var_90.SetFocus
  loc_1418058:           arg_10 = &HFF
  loc_141805B:           Exit Sub
  loc_141805C:         End If
  loc_141805F:       Else
  loc_1418067:         If (var_86 = CInt(2)) Then
  loc_14180B8:           Set var_8C = Me.Txt
  loc_14180BE:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14180C6:           arg_10 = var_90.Text
  loc_14180DE:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14180E1:             Exit Sub
  loc_14180E2:           End If
  loc_141811D:           Set var_94 = Me.Txt
  loc_1418123:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_141812B:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_141817C:           Set var_94 = Me.Txt
  loc_1418182:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_141818A:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14181BA:           var_90 = Me.Fields.Item("Type")
  loc_14181CB:           var_A0 = Proc_6_38_E68A98(CVar(var_90))
  loc_14181D1:           global_56 = var_A0
  loc_14181E1:         Else
  loc_14181E9:           If (var_86 = CInt(6)) Then
  loc_141823A:             Set var_8C = Me.Txt
  loc_1418240:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_1418248:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1418260:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1418263:               Exit Sub
  loc_1418264:             End If
  loc_141829F:             Set var_94 = Me.Txt
  loc_14182A5:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14182AD:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14182E0:             var_90 = Me.Fields.Item("Code")
  loc_14182FE:             Set var_94 = Me.Txt
  loc_1418304:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_141830C:             var_98.Tag = CStr(var_90.Value)
  loc_1418325:           Else
  loc_141832D:             If Not (var_86 = CInt(3)) Then
  loc_1418338:               If (var_86 = CInt(&HB)) Then
  loc_141833B:               End If
  loc_1418389:               Set var_8C = Me.Txt
  loc_141838F:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14183AF:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14183BF:                 Set var_8C = Me.Txt
  loc_14183C5:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14183CD:                 var_90.Text = vbNullString
  loc_14183E6:                 Set var_8C = Me.Txt
  loc_14183EC:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14183F4:                 var_90.Tag = vbNullString
  loc_1418400:                 Exit Sub
  loc_1418401:               End If
  loc_141843C:               Set var_94 = Me.Txt
  loc_1418442:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_141844A:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_141847D:               var_90 = Me.Fields.Item("Code")
  loc_141849B:               Set var_94 = Me.Txt
  loc_14184A1:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14184A9:               var_98.Tag = CStr(var_90.Value)
  loc_14184C2:             Else
  loc_14184CA:               If (var_86 = CInt(1)) Then
  loc_141851B:                 Set var_8C = Me.Txt
  loc_1418521:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1418541:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1418551:                   Set var_8C = Me.Txt
  loc_1418557:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_141855F:                   var_90.Text = vbNullString
  loc_1418578:                   Set var_8C = Me.Txt
  loc_141857E:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1418586:                   var_90.Tag = vbNullString
  loc_1418592:                   Exit Sub
  loc_1418593:                 End If
  loc_14185AA:                 If (Me.AbsolutePosition > 0) Then
  loc_14185E8:                   Set var_94 = Me.Txt
  loc_14185EE:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14185F6:                   var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1418629:                   var_90 = Me.Fields.Item("Code")
  loc_141863A:                   var_A0 = CStr(var_90.Value)
  loc_1418647:                   Set var_94 = Me.Txt
  loc_141864D:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1418655:                   var_98.Tag = var_A0
  loc_141866B:                 End If
  loc_141866E:               Else
  loc_1418676:                 If Not (var_86 = CInt(4)) Then
  loc_1418681:                   If Not (var_86 = CInt(5)) Then
  loc_141868C:                     If (var_86 = CInt(8)) Then
  loc_141868F:                     End If
  loc_141868F:                   End If
  loc_1418699:                   Set var_8C = Me.Txt
  loc_141869F:                   Call 0.Method_Txt_Validate0 (Cancel)
  loc_14186DA:                   If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_14186EA:                     Set var_8C = Me.Txt
  loc_14186F0:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14186F8:                     var_90.Text = "Yes"
  loc_1418707:                   Else
  loc_1418714:                     Set var_8C = Me.Txt
  loc_141871A:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1418722:                     var_90.Text = "No"
  loc_141872E:                   End If
  loc_1418731:                 Else
  loc_1418739:                   If (var_86 = CInt(&HD)) Then
  loc_1418746:                     Set var_8C = Me.Txt
  loc_141874C:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_141876B:                     var_100 = Ucase(Left(CVar(var_90), 1))
  loc_1418787:                     If (var_100 = "Active") Then
  loc_1418797:                       Set var_8C = Me.Txt
  loc_141879D:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14187A5:                       var_90.Text = "Active"
  loc_14187B4:                     Else
  loc_14187C1:                       Set var_8C = Me.Txt
  loc_14187C7:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14187CF:                       var_90.Text = "Non Active"
  loc_14187DB:                     End If
  loc_14187DB:                   End If
  loc_14187DB:                 End If
  loc_14187DB:               End If
  loc_14187DB:             End If
  loc_14187DB:           End If
  loc_14187DB:         End If
  loc_14187DB:       End If
  loc_14187DB:     End If
  loc_14187DB:   End If
  loc_14187DB: End If
  loc_14187DB: Exit Sub
  loc_14187DC: ' Referenced from: 1417D94
  loc_14187E4: Set var_8C = Err()
  loc_14187EA: Call 0.Method_arg_2C (var_A0)
  loc_141880B: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_141881E: Exit Sub
  loc_141881F: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F498A4
  'Data Table: 4ECF3C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4979B: Me.DGItemGroup.Visible = False
  loc_F497BA: If (Me.RecordCount > 0) Then
  loc_F497F9:   Set var_B4 = Me.Txt
  loc_F497FF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F49807:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4983A:   var_B0 = Me.Fields.Item("Name")
  loc_F49859:   Set var_B4 = Me.Txt
  loc_F4985F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F49867:   var_B8.Text = CStr(var_B0.Value)
  loc_F4987D: End If
  loc_F49888: Set var_A8 = Me.Txt
  loc_F4988E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F49896: var_B0.SetFocus
  loc_F498A2: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E71FAC
  'Data Table: 4ECF3C
  loc_E71F6A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E71F81: Set var_8C = Me.FGPoint
  loc_E71F9D: Proc_6_138_106D6F8(Me.DGItemGroup, global_72, CInt(2))
  loc_E71FAB: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'F4A244
  'Data Table: 4ECF3C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A13B: Me.DGUnit.Visible = False
  loc_F4A15A: If (Me.RecordCount > 0) Then
  loc_F4A199:   Set var_B4 = Me.Txt
  loc_F4A19F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4A1A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A1DA:   var_B0 = Me.Fields.Item("Name")
  loc_F4A1F9:   Set var_B4 = Me.Txt
  loc_F4A1FF:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4A207:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A21D: End If
  loc_F4A228: Set var_A8 = Me.Txt
  loc_F4A22E: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F4A236: var_B0.SetFocus
  loc_F4A242: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E7244C
  'Data Table: 4ECF3C
  loc_E7240A: Proc_6_153_E91194(Me.DGUnit, arg_14)
  loc_E72421: Set var_8C = Me.FGPoint
  loc_E7243D: Proc_6_138_106D6F8(Me.DGUnit, global_84, CInt(1))
  loc_E7244B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF6498
  'Data Table: 4ECF3C
  loc_EF63D8: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF63DB:   Call DGUnit_UnknownEvent_9()
  loc_EF63E0: End If
  loc_EF63FC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF63FF:   Call DGHelp_UnknownEvent_9()
  loc_EF6404: End If
  loc_EF6420: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF6423:   Call DGRest_UnknownEvent_9()
  loc_EF6428: End If
  loc_EF6444: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF6447:   Call DGItemCat_UnknownEvent_9()
  loc_EF644C: End If
  loc_EF6468: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF646B:   Call DGItemGroup_UnknownEvent_9()
  loc_EF6470: End If
  loc_EF648C: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_EF648F:   Call DGDispCode_UnknownEvent_9()
  loc_EF6494: End If
  loc_EF6494: Exit Sub
End Sub

Public Function global_52Get() '4EE2B8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4EE2C7
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC06E4
  'Data Table: 4ECF3C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC065A: On Error Goto loc_EC069F
  loc_EC0663: Me.MoveFirst
  loc_EC067D: var_8C = "code='" & MyValue
  loc_EC068D: Me.Find var_8C & "'", 0, 1
  loc_EC0699: Call Proc_118_43_144F69C(var_A0)
  loc_EC069E: Exit Sub
  loc_EC069F: ' Referenced from: EC065A
  loc_EC06A7: Set var_A4 = Err()
  loc_EC06AD: Call 0.Method_arg_2C (var_8C)
  loc_EC06CE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC06E1: Exit Sub
  loc_EC06E2: Exit Sub
End Sub

Public Sub Proc_118_41_EC109C(arg_C) 'EC109C
  'Data Table: 4ECF3C
  Dim var_98 As TextBox
  loc_EC1002: Set var_8C = Me.Txt
  loc_EC1008: Call 0.Method_Proc_118_41_EC109CC (var_8E, var_86)
  loc_EC1018: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC102E:   Set var_8C = Me.Txt
  loc_EC1034:   Call 0.Method_Proc_118_41_EC109C0 (CInt(var_86), var_98)
  loc_EC103C:   var_98.Enabled = arg_C
  loc_EC104B: Next var_92 'Byte
  loc_EC105E: Set var_8C = Me.Command1
  loc_EC1064: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(Not(arg_C))
  loc_EC107E: Set var_8C = Me.Txt
  loc_EC1084: Call 0.Method_Proc_118_41_EC109C0 (CInt(&HB), var_98)
  loc_EC108C: var_98.Enabled = Not(arg_C)
  loc_EC1098: Exit Sub
End Sub

Public Sub Proc_118_42_F82694
  'Data Table: 4ECF3C
  Dim var_94 As TextBox
  loc_F8254A: Set var_90 = Me.Txt
  loc_F82550: Call 0.Method_Proc_118_42_F826940 (CInt(1), var_94)
  loc_F82560: var_8C = var_94.Text
  loc_F82578: Set var_90 = Me.Txt
  loc_F8257E: Call 0.Method_Proc_118_42_F82694C (var_9A, var_86)
  loc_F8258E: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_F825A4:   Set var_90 = Me.Txt
  loc_F825AA:   Call 0.Method_Proc_118_42_F826940 (CInt(var_86), var_94)
  loc_F825B2:   var_94.Text = vbNullString
  loc_F825CE:   Set var_90 = Me.Txt
  loc_F825D4:   Call 0.Method_Proc_118_42_F826940 (CInt(var_86), var_94)
  loc_F825DC:   var_94.Tag = vbNullString
  loc_F825EB: Next var_9E 'Byte
  loc_F825FF: Set var_90 = Me.Txt
  loc_F82605: Call 0.Method_Proc_118_42_F826940 (CInt(4), var_94)
  loc_F8260D: var_94.Text = "No"
  loc_F82627: Set var_90 = Me.Txt
  loc_F8262D: Call 0.Method_Proc_118_42_F826940 (CInt(5), var_94)
  loc_F82635: var_94.Text = "No"
  loc_F8264F: Set var_90 = Me.Txt
  loc_F82655: Call 0.Method_Proc_118_42_F826940 (CInt(&HD), var_94)
  loc_F8265D: var_94.Text = "Active"
  loc_F82677: Set var_90 = Me.Txt
  loc_F8267D: Call 0.Method_Proc_118_42_F826940 (CInt(1), var_94)
  loc_F82685: var_94.Text = var_8C
  loc_F82691: Exit Sub
End Sub

Public Sub Proc_118_43_144F69C
  'Data Table: 4ECF3C
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim unk_4ECF42 As Connection15
  Dim var_8C As Recordset15
  Dim var_120 As Fields15
  Dim var_124 As TextBox
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_144EB7C: On Error Goto loc_144F694
  loc_144EB85: Proc_183_45_E5C118(global_64)
  loc_144EBA1: If (Me.RecordCount <= 0) Then
  loc_144EBA4:   Call Proc_118_42_F82694()
  loc_144EBAC: Else
  loc_144EC02:   unk_4ECF42.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_144EC0D:   Set var_8C = var_120
  loc_144EC61:   var_120 = var_8C.Fields
  loc_144ECCA:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_144ED0F:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name")), var_188)))
  loc_144ED89:   var_124 = var_8C.Fields.Item("U_AE")
  loc_144EDD2:   var_178 = "Created By :   "
  loc_144EDEA:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), var_178, IIf((Proc_6_38_E68A98(CVar(var_124)) = "E"), "Last Update :   ", "entdt :   "))
  loc_144EE2F:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_EntDt")))))
  loc_144EE9B:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_144EEE0:   global_96 = CStr(Me.Fields.Item("Name").Value)
  loc_144EF2D:   Set var_120 = Me.Txt
  loc_144EF33:   Call 0.Method_Proc_118_43_144F69C0 (CInt(0), var_124)
  loc_144EF3B:   var_124.Text = CStr(Me.Fields.Item("Name").Value)
  loc_144EF8D:   Set var_120 = Me.Txt
  loc_144EF93:   Call 0.Method_Proc_118_43_144F69C0 (CInt(&HA), var_124)
  loc_144EF9B:   var_124.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_144EFED:   Set var_120 = Me.Txt
  loc_144EFF3:   Call 0.Method_Proc_118_43_144F69C0 (CInt(0), var_124)
  loc_144EFFB:   var_124.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_144F04A:   Set var_120 = Me.Txt
  loc_144F050:   Call 0.Method_Proc_118_43_144F69C0 (CInt(1), var_124)
  loc_144F058:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_144F0A5:   Set var_120 = Me.Txt
  loc_144F0AB:   Call 0.Method_Proc_118_43_144F69C0 (CInt(&HE), var_124)
  loc_144F0B3:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CommodityCode")))
  loc_144F100:   Set var_120 = Me.Txt
  loc_144F106:   Call 0.Method_Proc_118_43_144F69C0 (CInt(2), var_124)
  loc_144F10E:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGrpName")))
  loc_144F15B:   Set var_120 = Me.Txt
  loc_144F161:   Call 0.Method_Proc_118_43_144F69C0 (CInt(2), var_124)
  loc_144F169:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGroup")))
  loc_144F1B6:   Set var_120 = Me.Txt
  loc_144F1BC:   Call 0.Method_Proc_118_43_144F69C0 (CInt(6), var_124)
  loc_144F1C4:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatCode")))
  loc_144F211:   Set var_120 = Me.Txt
  loc_144F217:   Call 0.Method_Proc_118_43_144F69C0 (CInt(6), var_124)
  loc_144F21F:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCategory")))
  loc_144F26C:   Set var_120 = Me.Txt
  loc_144F272:   Call 0.Method_Proc_118_43_144F69C0 (CInt(4), var_124)
  loc_144F27A:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Disc")))
  loc_144F2C7:   Set var_120 = Me.Txt
  loc_144F2CD:   Call 0.Method_Proc_118_43_144F69C0 (CInt(8), var_124)
  loc_144F2D5:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrApp")))
  loc_144F322:   Set var_120 = Me.Txt
  loc_144F328:   Call 0.Method_Proc_118_43_144F69C0 (CInt(5), var_124)
  loc_144F330:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("REdit")))
  loc_144F37D:   Set var_120 = Me.Txt
  loc_144F383:   Call 0.Method_Proc_118_43_144F69C0 (CInt(3), var_124)
  loc_144F38B:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("KitchenName")))
  loc_144F3D8:   Set var_120 = Me.Txt
  loc_144F3DE:   Call 0.Method_Proc_118_43_144F69C0 (CInt(3), var_124)
  loc_144F3E6:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")))
  loc_144F433:   Set var_120 = Me.Txt
  loc_144F439:   Call 0.Method_Proc_118_43_144F69C0 (CInt(&HC), var_124)
  loc_144F441:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Specification")))
  loc_144F494:   Call 0.Method_Proc_118_43_144F69C0 (CInt(&HD), var_124)
  loc_144F49C:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Status")))
  loc_144F505:   var_11C = "Select Rate,Appdate From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "' And RestCode='" & CVar(global_52) 
  loc_144F51C:   unk_4ECF42.Execute CStr(var_11C & "' Order By AppDate Desc "), var_178, -1
  loc_144F527:   Set var_88 = Me.Txt
  loc_144F559:   If (var_88.RecordCount > 0) Then
  loc_144F5AE:     Set var_120 = Me.Txt
  loc_144F5B4:     Call 0.Method_Proc_118_43_144F69C0 (CInt(7), var_124, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_144F5BC:     var_124.Text = 1
  loc_144F5F0:     var_A8 = var_88.Fields.Item("AppDate")
  loc_144F60F:     Set var_120 = Me.Txt
  loc_144F615:     Call 0.Method_Proc_118_43_144F69C0 (CInt(9), var_124, CStr(var_A8.Value))
  loc_144F61D:     var_124.Text = 1
  loc_144F636:   Else
  loc_144F644:     Set var_94 = Me.Txt
  loc_144F64A:     Call 0.Method_Proc_118_43_144F69C0 (CInt(7), var_A8)
  loc_144F652:     var_A8.Text = vbNullString
  loc_144F66C:     Set var_94 = Me.Txt
  loc_144F672:     Call 0.Method_Proc_118_43_144F69C0 (CInt(9), var_A8)
  loc_144F67A:     var_A8.Text = vbNullString
  loc_144F686:   End If
  loc_144F686: End If
  loc_144F686: Call Proc_118_45_FB3F6C(var_120)
  loc_144F690: Set var_88 = Nothing
  loc_144F693: Exit Sub
  loc_144F694: ' Referenced from: 144EB7C
  loc_144F694: Proc_6_60_E62BC4()
  loc_144F699: Exit Sub
End Sub

Public Sub Proc_118_44_12A8860
  'Data Table: 4ECF3C
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_B0 As TextBox
  Dim unk_4ECF42 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_B4 As String
  Dim var_A0 As Variant
  loc_12A8277: If (Me.RecordCount = 0) Then
  loc_12A827A:   Proc_118_44_12A8860 = 
  loc_12A8280: End If
  loc_12A8284: Set var_90 = Me.TopCtrl1
  loc_12A828A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_12A82A3: If (CStr() = "Add") Then
  loc_12A82DA:   var_AC = "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='" & global_52
  loc_12A82F2:   Set var_90 = Me.Txt
  loc_12A82F8:   Call 0.Method_Proc_118_44_12A88600 (CInt(0), var_B0, var_B4, var_AC & "' and Name='", var_A0, -1)
  loc_12A8319:   unk_4ECF42.Execute var_D8 & var_B4 & "'", 0, var_EC
  loc_12A8329:    = var_D8.Item()
  loc_12A8331:    = var_EC.Value
  loc_12A8366:   If (var_B0.Text.Fields > 0) Then
  loc_12A8384:     var_A0 = "Duplicate Name"
  loc_12A838A:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_12A83A5:     Set var_90 = Me.Txt
  loc_12A83AB:     Call 0.Method_Proc_118_44_12A88600 (CInt(0))
  loc_12A83B3:     var_B0.SetFocus
  loc_12A83C4:     Proc_118_44_12A8860 = &HFF
  loc_12A83CA:   End If
  loc_12A83D8:   Set var_90 = Me.Txt
  loc_12A83DE:   Call 0.Method_Proc_118_44_12A88600 (CInt(&HA), var_B0)
  loc_12A83FD:   If (var_B0.Text <> vbNullString) Then
  loc_12A842A:     var_A8 = "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='"
  loc_12A844C:     Set var_90 = Me.Txt
  loc_12A8452:     Call 0.Method_Proc_118_44_12A88600 (CInt(&HA), var_B0, var_B4, var_A8 & global_52 & "' and DispCode=", var_A0, -1)
  loc_12A8473:     unk_4ECF42.Execute var_D8 & var_B4 & vbNullString, 0, var_EC
  loc_12A8483:      = var_D8.Item(var_B0)
  loc_12A848B:      = var_EC.Value
  loc_12A84C0:     If (var_B0.Text.Fields > 0) Then
  loc_12A84DE:       var_A0 = "Duplicate Disp Code"
  loc_12A84E4:       MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_12A84FF:       Set var_90 = Me.Txt
  loc_12A8505:       Call 0.Method_Proc_118_44_12A88600 (CInt(&HA))
  loc_12A850D:       var_B0.SetFocus
  loc_12A851E:       Proc_118_44_12A8860 = &HFF
  loc_12A8524:     End If
  loc_12A8524:   End If
  loc_12A8527: Else
  loc_12A8562:   Set var_90 = Me.Txt
  loc_12A8568:   Call 0.Method_Proc_118_44_12A88600 (CInt(0), var_B0, var_A8, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_12A859A:   unk_4ECF42.Execute var_D8 & var_A8 & "' And Name<>'" & global_96 & "'", 0, var_EC
  loc_12A85AA:    = var_D8.Item(var_B0)
  loc_12A85B2:    = var_EC.Value
  loc_12A85E7:   If (var_B0.Text.Fields > 0) Then
  loc_12A8605:     var_A0 = "Duplicate Name"
  loc_12A860B:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_12A8626:     Set var_90 = Me.Txt
  loc_12A862C:     Call 0.Method_Proc_118_44_12A88600 (CInt(0))
  loc_12A8634:     var_B0.SetFocus
  loc_12A8645:     Proc_118_44_12A8860 = &HFF
  loc_12A864B:   End If
  loc_12A8659:   Set var_90 = Me.Txt
  loc_12A865F:   Call 0.Method_Proc_118_44_12A88600 (CInt(&HA), var_B0)
  loc_12A867E:   If (var_B0.Text <> vbNullString) Then
  loc_12A86BC:     Set var_90 = Me.Txt
  loc_12A86C2:     Call 0.Method_Proc_118_44_12A88600 (CInt(&HA), var_B0, var_A8, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12A86F9:     unk_4ECF42.Execute var_D8 & var_A8 & " And DispCode<> " & CStr(global_60) & vbNullString, 0, var_EC
  loc_12A8709:      = var_D8.Item(var_B0)
  loc_12A8711:      = var_EC.Value
  loc_12A8748:     If (var_B0.Text.Fields > 0) Then
  loc_12A876C:       MsgBox("Duplicate Disp Code", &H40, "Information", var_11C, var_13C)
  loc_12A8787:       Set var_90 = Me.Txt
  loc_12A878D:       Call 0.Method_Proc_118_44_12A88600 (CInt(&HA))
  loc_12A8795:       var_B0.SetFocus
  loc_12A87A6:       Proc_118_44_12A8860 = &HFF
  loc_12A87AC:     End If
  loc_12A87AC:   End If
  loc_12A87AC: End If
  loc_12A87BA: Set var_90 = Me.Txt
  loc_12A87C0: Call 0.Method_Proc_118_44_12A88600 (CInt(&HA), var_B0)
  loc_12A87DF: If (var_B0.Text = "9999") Then
  loc_12A8810:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_11C, var_13C)
  loc_12A8832:   Set var_90 = Me.Txt
  loc_12A8838:   Call 0.Method_Proc_118_44_12A88600 (CInt(&HA), var_B0)
  loc_12A8840:   var_B0.SetFocus
  loc_12A8851:   Proc_118_44_12A8860 = &HFF
  loc_12A8857: End If
  loc_12A8857: Proc_118_44_12A8860 = var_B0
End Sub

Public Sub Proc_118_45_FB3F6C
  'Data Table: 4ECF3C
  loc_FB3DD8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FB3DEA:   Me.DGHelp.Visible = False
  loc_FB3DF2: End If
  loc_FB3E0E: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_FB3E20:   Me.DGRest.Visible = False
  loc_FB3E28: End If
  loc_FB3E44: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_FB3E56:   Me.DGItemGroup.Visible = False
  loc_FB3E5E: End If
  loc_FB3E7A: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_FB3E8C:   Me.DGItemCat.Visible = False
  loc_FB3E94: End If
  loc_FB3EB0: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_FB3EC2:   Me.DGUnit.Visible = False
  loc_FB3ECA: End If
  loc_FB3EE5: If (Me.Frame1.Visible = &HFF) Then
  loc_FB3EF7:   Me.DGUnit.Visible = False
  loc_FB3EFF: End If
  loc_FB3F1B: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB3F2D:   Me.FGPoint.Visible = False
  loc_FB3F35: End If
  loc_FB3F51: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_FB3F63:   Me.DGDispCode.Visible = False
  loc_FB3F6B: End If
  loc_FB3F6B: Exit Sub
End Sub

Public Sub Proc_118_46_109F784
  'Data Table: 4ECF3C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_109F4BC: On Error Goto loc_109F77C
  loc_109F4CD: Set var_88 = Me.Txt
  loc_109F4D3: Call 0.Method_Proc_118_46_109F7840 (CInt(0), var_8C)
  loc_109F4F2: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_109F50E: Set var_B4 = Me.Txt
  loc_109F514: Call 0.Method_Proc_118_46_109F7840 (CInt(0), var_B8)
  loc_109F52F: Set var_88 = Me.Txt
  loc_109F535: Call 0.Method_Proc_118_46_109F7840 (CInt(0), var_8C)
  loc_109F54D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109F55C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_109F57C: Set var_88 = Me.Txt
  loc_109F582: Call 0.Method_Proc_118_46_109F7840 (CInt(6), var_8C)
  loc_109F5A1: Me.DGItemCat.Left = CVar(var_8C.Left)
  loc_109F5BD: Set var_B4 = Me.Txt
  loc_109F5C3: Call 0.Method_Proc_118_46_109F7840 (CInt(6), var_B8)
  loc_109F5DE: Set var_88 = Me.Txt
  loc_109F5E4: Call 0.Method_Proc_118_46_109F7840 (CInt(6), var_8C)
  loc_109F5FC: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_109F60B: Me.DGItemCat.Top = CVar(var_8C.Left)
  loc_109F62B: Set var_88 = Me.Txt
  loc_109F631: Call 0.Method_Proc_118_46_109F7840 (CInt(2), var_8C)
  loc_109F650: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_109F66C: Set var_B4 = Me.Txt
  loc_109F672: Call 0.Method_Proc_118_46_109F7840 (CInt(2), var_B8)
  loc_109F68D: Set var_88 = Me.Txt
  loc_109F693: Call 0.Method_Proc_118_46_109F7840 (CInt(2), var_8C)
  loc_109F6AB: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109F6BA: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_109F6DA: Set var_88 = Me.Txt
  loc_109F6E0: Call 0.Method_Proc_118_46_109F7840 (CInt(1), var_8C)
  loc_109F6FF: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_109F71B: Set var_B4 = Me.Txt
  loc_109F721: Call 0.Method_Proc_118_46_109F7840 (CInt(1), var_B8)
  loc_109F73C: Set var_88 = Me.Txt
  loc_109F742: Call 0.Method_Proc_118_46_109F7840 (CInt(1), var_8C)
  loc_109F75A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109F769: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_109F77B: Exit Sub
  loc_109F77C: ' Referenced from: 109F4BC
  loc_109F77C: Proc_6_60_E62BC4()
  loc_109F781: Exit Sub
End Sub

Public Sub Proc_118_47_E81F84
  'Data Table: 4ECF3C
  loc_E81F24: Call Proc_118_45_FB3F6C()
  loc_E81F60: If (MsgBox("Save Menu Item ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E81F63:   Call TopCtrl1_UnknownEvent_16()
  loc_E81F6B: Else
  loc_E81F71:   Call 0.Method_arg_1E8 (var_108)
  loc_E81F79:   Call var_108.SetFocus
  loc_E81F82: End If
  loc_E81F82: Exit Sub
End Sub
