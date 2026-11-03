VERSION 5.00
Begin VB.Form resGroup
  Caption = "Group Reservation"
  BackColor = &HBFEAD0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8430
  ClientHeight = 5115
  Begin MSHFlexGrid MSHFlexGrid1
    Left = 345
    Top = 4905
    Width = 7890
    Height = 2025
    Visible = 0   'False
    TabIndex = 53
  End
  Begin Frame FrmSoftBlock
    Caption = "frBlock"
    BackColor = &HBFEAD0&
    ForeColor = &H80000008&
    Left = 8460
    Top = 5445
    Width = 7920
    Height = 4905
    Visible = 0   'False
    TabIndex = 49
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin CommandButton Command3
      Caption = "Exit/Done"
      Left = 360
      Top = 4275
      Width = 1665
      Height = 420
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
    End
    Begin MSHFlexGrid FGrid1
      Left = 0
      Top = 90
      Width = 7920
      Height = 4155
      TabIndex = 51
    End
    Begin Shape Shape3
      Left = 0
      Top = 4140
      Width = 7920
      Height = 765
    End
  End
  Begin Frame FrmBlock
    Caption = "frBlock"
    BackColor = &HBFEAD0&
    ForeColor = &H80000008&
    Left = 8445
    Top = 480
    Width = 7920
    Height = 4905
    Visible = 0   'False
    TabIndex = 43
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HC0C0C0&
      ForeColor = &H80000012&
      Left = 105
      Top = 525
      Width = 765
      Height = 240
      Visible = 0   'False
      TabIndex = 52
      BorderStyle = 0 'None
      MultiLine = -1  'True
      MaxLength = 150
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdSoftBlock
      Caption = "Soft Blocking"
      Left = 5865
      Top = 4275
      Width = 1665
      Height = 420
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
    End
    Begin CommandButton CmdPrint
      Caption = "Print"
      Left = 3120
      Top = 4275
      Width = 1665
      Height = 420
      TabIndex = 46
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
    Begin CommandButton CmdExit
      Caption = "Exit/Done"
      Left = 360
      Top = 4275
      Width = 1665
      Height = 420
      TabIndex = 45
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
    Begin MSHFlexGrid FGrid
      Left = 0
      Top = 30
      Width = 7920
      Height = 4155
      TabIndex = 44
    End
    Begin Shape Shape2
      Left = 0
      Top = 4140
      Width = 7920
      Height = 765
    End
  End
  Begin CommandButton CmdBlock
    Caption = "Blocking"
    Left = 5850
    Top = 4065
    Width = 1635
    Height = 465
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
  End
  Begin DataGrid DGBusiness
    Left = 1245
    Top = 6720
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGMarketSeg
    Left = 915
    Top = 6525
    Width = 3990
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGTravelAg
    Left = 600
    Top = 6315
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGHelp
    Left = 270
    Top = 5550
    Width = 7815
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    Left = 5730
    Top = 2550
    Width = 1410
    Height = 255
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    Left = 5715
    Top = 2280
    Width = 1425
    Height = 255
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2295
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin DataGrid DGCity
    Left = 2730
    Top = 7365
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2835
    Width = 2295
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3105
    Width = 2295
    Height = 255
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3375
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 4455
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 5
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 4185
    Width = 2295
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3915
    Width = 2295
    Height = 255
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3645
    Width = 2295
    Height = 255
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2565
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 4500
    Top = 2025
    Width = 975
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 7
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 4500
    Top = 1485
    Width = 975
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2025
    Width = 2190
    Height = 255
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 1755
    Width = 2295
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 1485
    Width = 2190
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 1215
    Width = 3180
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 945
    Width = 3180
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 675
    Width = 3180
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8430
    Height = 375
    TabIndex = 0
  End
  Begin MaskEdBox MTxt
    Index = 1
    Left = 7230
    Top = 2280
    Width = 585
    Height = 255
    TabIndex = 19
  End
  Begin MaskEdBox MTxt
    Index = 0
    Left = 7230
    Top = 2550
    Width = 585
    Height = 255
    TabIndex = 21
  End
  Begin Label Lbl
    Caption = "Arr Date"
    Index = 4
    ForeColor = &H0&
    Left = 4635
    Top = 2310
    Width = 735
    Height = 240
    TabIndex = 41
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
  Begin Label Lbl
    Caption = "Dep Date"
    Index = 3
    ForeColor = &H0&
    Left = 4635
    Top = 2580
    Width = 870
    Height = 240
    TabIndex = 40
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
  Begin Shape Shape1
    Left = 390
    Top = 585
    Width = 7890
    Height = 4230
    BorderWidth = 2
  End
  Begin Label Lbl
    Caption = "Comments3"
    Index = 2
    ForeColor = &H0&
    Left = 585
    Top = 3345
    Width = 1065
    Height = 240
    TabIndex = 39
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
  Begin Label Lbl
    Caption = "Comments2"
    Index = 1
    ForeColor = &H0&
    Left = 585
    Top = 3075
    Width = 1065
    Height = 240
    TabIndex = 38
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
  Begin Label Lbl
    Caption = "Comments1"
    Index = 0
    ForeColor = &H0&
    Left = 585
    Top = 2805
    Width = 1065
    Height = 240
    TabIndex = 37
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
  Begin Label Lbl
    Caption = "Group Type"
    Index = 17
    ForeColor = &H0&
    Left = 585
    Top = 4425
    Width = 1080
    Height = 240
    TabIndex = 32
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
  Begin Label Lbl
    Caption = "Business Source"
    Index = 19
    ForeColor = &H0&
    Left = 585
    Top = 4155
    Width = 1515
    Height = 240
    TabIndex = 31
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
  Begin Label Lbl
    Caption = "Market Segments"
    Index = 20
    ForeColor = &H0&
    Left = 585
    Top = 3885
    Width = 1575
    Height = 240
    TabIndex = 30
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
  Begin Label Lbl
    Caption = "Travel Agency"
    Index = 22
    ForeColor = &H0&
    Left = 585
    Top = 3615
    Width = 1320
    Height = 240
    TabIndex = 29
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 9
    ForeColor = &H0&
    Left = 585
    Top = 2265
    Width = 1365
    Height = 240
    TabIndex = 28
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &H0&
    Left = 585
    Top = 2535
    Width = 1125
    Height = 255
    TabIndex = 27
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
  Begin Label Lbl
    Caption = "Country/Type"
    Index = 13
    ForeColor = &H0&
    Left = 585
    Top = 1995
    Width = 1215
    Height = 240
    TabIndex = 26
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
  Begin Label Lbl
    Caption = "State"
    Index = 12
    ForeColor = &H0&
    Left = 585
    Top = 1725
    Width = 465
    Height = 240
    TabIndex = 25
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
  Begin Label Lbl
    Caption = "City/Zip"
    Index = 11
    ForeColor = &H0&
    Left = 585
    Top = 1455
    Width = 675
    Height = 240
    TabIndex = 24
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
  Begin Label Lbl
    Caption = "Address"
    Index = 6
    ForeColor = &H0&
    Left = 585
    Top = 915
    Width = 765
    Height = 240
    TabIndex = 23
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
  Begin Label Lbl
    Caption = "Name"
    Index = 5
    ForeColor = &H0&
    Left = 585
    Top = 645
    Width = 555
    Height = 240
    TabIndex = 22
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
End

Attribute VB_Name = "resGroup"

Private MasterFormExit As Integer

Private Sub CmdSoftBlock_Click() 'EE0B30
  'Data Table: 4EB7A8
  Dim var_88 As Variant
  Dim var_90 As Variant
  loc_EE0A74: Call Proc_67_50_10C67F0()
  loc_EE0A85: Me.FrmSoftBlock.Visible = True
  loc_EE0AAC: Me.FrmSoftBlock.Left = Me.Shape1.Left
  loc_EE0AD1: Set var_90 = Me.FrmSoftBlock
  loc_EE0AD7: var_90.Top = Me.Shape1.Top
  loc_EE0AF1: Set var_88 = Me.Txt
  loc_EE0AF7: Call 0.Method_CmdSoftBlock_Click0 (CInt(&H11), var_90)
  loc_EE0B07: var_A4 = "RoomNo"
  loc_EE0B1B: Call Proc_67_58_143EC94(CDate(var_90.Text), 1)
  loc_EE0B2E: Exit Sub
End Sub

Private Sub Form_Load() '11B3A50
  'Data Table: 4EB7A8
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C4 As DataGrid
  Dim Me As Recordset15
  loc_11B3614: On Error Goto loc_11B3A48
  loc_11B362F: Proc_6_23_DFBA28(Me, 6120)
  loc_11B3645: Set var_88 = Me.Txt
  loc_11B364B: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_11B366A: Me.DGCity.Left = CVar(var_90.Left)
  loc_11B3686: Set var_B8 = Me.Txt
  loc_11B368C: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_11B3694: var_C0 = var_BC.Height
  loc_11B36A7: Set var_88 = Me.Txt
  loc_11B36AD: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_11B36B5: var_94 = var_90.Top
  loc_11B36C5: var_A4 = CVar(((var_94 + var_C0) + CDbl(&H1E))) 'Single
  loc_11B36CE: Set var_C4 = Me.DGCity
  loc_11B36D4: var_C4.Top = CVar(var_90.Left)
  loc_11B36F0: Set global_64 = New 
  loc_11B3702: Me.var_C4.CursorLocation = 3
  loc_11B372A: Me.Open "Select CITYCODE AS Code,CITYNAME AS Name From CITY Order by CITYName", CVar(MemVar_1F92044), 2
  loc_11B3738: CVarUnk
  loc_11B373D: VerifyVarObj
  loc_11B3743: Set var_88 = Me.DGCity
  loc_11B3749: LateIdStAd
  loc_11B3761: Set global_68 = New 
  loc_11B3773: Me.DGCity.CursorLocation = 3
  loc_11B379B: Me.Open "Select SubCode AS Code,Name From SubGroup Where CompanyType='Travel Agency' Order by Name", CVar(MemVar_1F92044), 2
  loc_11B37A9: CVarUnk
  loc_11B37AE: VerifyVarObj
  loc_11B37B4: Set var_88 = Me.DGTravelAg
  loc_11B37BA: LateIdStAd
  loc_11B37D2: Set global_72 = New 
  loc_11B37E4: Me.DGTravelAg.CursorLocation = 3
  loc_11B380C: Me.Open "Select Code,Name FROM MarketSeg ORDER BY Name", CVar(MemVar_1F92044), 2
  loc_11B381A: CVarUnk
  loc_11B381F: VerifyVarObj
  loc_11B3825: Set var_88 = Me.DGMarketSeg
  loc_11B382B: LateIdStAd
  loc_11B3855: Me.DGMarketSeg.CursorLocation = 3
  loc_11B387D: Me.Open "SELECT Code,Name FROM BussSource ORDER BY Name", CVar(MemVar_1F92044), 2
  loc_11B388B: CVarUnk
  loc_11B3890: VerifyVarObj
  loc_11B3896: Set var_88 = Me.DGBusiness
  loc_11B389C: LateIdStAd
  loc_11B38C6: Me.DGBusiness.CursorLocation = 3
  loc_11B3901: Set var_88 = Me.Txt
  loc_11B3907: Call 0.Method_Form_Load0 (CInt(0), var_90, var_94, 3, -1, var_88, New)
  loc_11B390F: 3 = var_90.Left
  loc_11B3926: Me.DGHelp.Left = CVar(var_94)
  loc_11B3942: Set var_B8 = Me.Txt
  loc_11B3948: Call 0.Method_Form_Load0 (CInt(0), var_BC, var_C0, -1, var_88)
  loc_11B3950: global_72 = var_BC.Height
  loc_11B3963: Set var_88 = Me.Txt
  loc_11B3969: Call 0.Method_Form_Load0 (CInt(0), var_90, var_94)
  loc_11B3971: 3 = var_90.Top
  loc_11B397D: var_A4 = CVar((var_94 + var_C0)) 'Single
  loc_11B3986: Set var_C4 = Me.DGHelp
  loc_11B398C: var_C4.Top = CVar(var_94)
  loc_11B39BA: Me.var_C4.CursorLocation = 3
  loc_11B39E2: ELECT CODE AS SearchCode,GroupProf.* FROM GroupProf ORDER BY NAME", CVar(MemVar_1F92044), 2 "SELECT CODE AS SearchCode,GroupProf.Name,GroupProf.ConName FROM GroupProf ORDER BY NAME", CVar(MemVar_1F92044), 2
  loc_11B39F0: CVarUnk
  loc_11B39F5: VerifyVarObj
  loc_11B39FB: Set var_88 = Me.DGHelp
  loc_11B3A01: LateIdStAd
  loc_11B3A1B: Set var_88 = Me
  loc_11B3A32: Call Proc_67_54_F12A9C(Proc_5_1_100CB50("INI", var_88, New, var_88, New), 3, -1)
  loc_11B3A3D: Call Proc_67_56_EF75D8(-1)
  loc_11B3A42: Call Proc_67_57_144B0D8(var_88)
  loc_11B3A47: Exit Sub
  loc_11B3A48: ' Referenced from: 11B3614
  loc_11B3A48: Proc_6_60_E62BC4()
  loc_11B3A4D: Exit Sub
  loc_11B3A4E: CExtInstUnk
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7AC30
  'Data Table: 4EB7A8
  loc_E7ABD7: Set global_64 = Nothing
  loc_E7ABE9: Set global_76 = Nothing
  loc_E7ABFB: Set global_68 = Nothing
  loc_E7AC0D: Set global_72 = Nothing
  loc_E7AC1F: Set global_60 = Nothing
  loc_E7AC2B: MasterFormExit = 0
  loc_E7AC2E: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E618
  'Data Table: 4EB7A8
  loc_E4E5E8: On Error Goto loc_E4E612
  loc_E4E5EF: Set var_88 = Me.TopCtrl1
  loc_E4E5F5: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E4E60A: If (CLng(CInt()) = &H2D) Then
  loc_E4E60D:   Call TopCtrl1_UnknownEvent_1D()
  loc_E4E612:   ' Referenced from: E4E5E8
  loc_E4E612: End If
  loc_E4E612: Proc_6_60_E62BC4()
  loc_E4E617: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E246D4
  'Data Table: 4EB7A8
  loc_E246B9: If (MasterFormExit = &HFF) Then
  loc_E246C9:   Me.Global.Unload Me
  loc_E246D1: End If
  loc_E246D1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29890
  'Data Table: 4EB7A8
  loc_E29868: On Error Goto loc_E29888
  loc_E2987F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29887: Exit Sub
  loc_E29888: ' Referenced from: E29868
  loc_E29888: Proc_6_60_E62BC4(Shift)
  loc_E2988D: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'F3C0C4
  'Data Table: 4EB7A8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BFBB: Me.DGCity.Visible = False
  loc_F3BFDA: If (Me.RecordCount > 0) Then
  loc_F3C019:   Set var_B4 = Me.Txt
  loc_F3C01F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3C027:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3C05A:   var_B0 = Me.Fields.Item("Name")
  loc_F3C079:   Set var_B4 = Me.Txt
  loc_F3C07F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3C087:   var_B8.Text = CStr(var_B0.Value)
  loc_F3C09D: End If
  loc_F3C0A8: Set var_A8 = Me.Txt
  loc_F3C0AE: Call 0.Method_DGCity_UnknownEvent_90 (CInt(3))
  loc_F3C0B6: var_B0.SetFocus
  loc_F3C0C2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F45284
  'Data Table: 4EB7A8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4517B: Me.DGHelp.Visible = False
  loc_F4519A: If (Me.RecordCount > 0) Then
  loc_F451D9:   Set var_B4 = Me.Txt
  loc_F451DF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F451E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4521A:   var_B0 = Me.Fields.Item("Name")
  loc_F45239:   Set var_B4 = Me.Txt
  loc_F4523F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F45247:   var_B8.Text = CStr(var_B0.Value)
  loc_F4525D: End If
  loc_F45268: Set var_A8 = Me.Txt
  loc_F4526E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HD))
  loc_F45276: var_B0.SetFocus
  loc_F45282: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E3E2F8
  'Data Table: 4EB7A8
  Dim var_8C As TextBox
  loc_E3E2D7: Set var_88 = Me.TxtGrid
  loc_E3E2DD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E3E2E5: var_8C.Visible = False
  loc_E3E2F1: Call Proc_67_56_EF75D8()
  loc_E3E2F6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'DFD428
  'Data Table: 4EB7A8
  loc_DFD424: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF724
  'Data Table: 4EB7A8
  loc_DFF71C: Call Proc_67_52_E31150()
  loc_DFF721: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '101D2F0
  'Data Table: 4EB7A8
  Dim var_98 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim KeyCode As Integer
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_101D0D0: Set var_88 = Me.TopCtrl1
  loc_101D0D6: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_101D126: If CBool(( = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_101D12F:   Call Form_KeyDown(KeyCode, Shift)
  loc_101D134: End If
  loc_101D138: Set var_88 = Me.TopCtrl1
  loc_101D13E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_101D153: If ( = "Browse") Then
  loc_101D156:   Exit Sub
  loc_101D157: End If
  loc_101D1CB: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_101D1D6:   var_DC = "+{Tab}"
  loc_101D1DC:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_101D1E6:   KeyCode = 0
  loc_101D1EC: Else
  loc_101D243:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_101D246:   End If
  loc_101D246: End If
  loc_101D269: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_101D28D: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_101D2A3:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101D2BB:   var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101D2C0:   var_118 = vbNullString
  loc_101D2CA:   Set var_E4 = Me.FGrid
  loc_101D2D0:   LateIdCallSt
  loc_101D2E8: End If
  loc_101D2EA: KeyCode = 0
  loc_101D2ED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E04340
  'Data Table: 4EB7A8
  loc_E04339: Call FGrid_UnknownEvent_C()
  loc_E0433E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'EC71D0
  'Data Table: 4EB7A8
  Dim var_88 As MSHFlexGrid
  loc_EC713C: Set var_88 = Me.TopCtrl1
  loc_EC7142: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_EC7157: If ( = "Browse") Then
  loc_EC715A:   Exit Sub
  loc_EC715B: End If
  loc_EC717A: If (CLng(Me.FGrid.Col) >= 3) Then
  loc_EC71BB:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EC71CD: End If
  loc_EC71CD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104F87C
  'Data Table: 4EB7A8
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_104F620: Set var_90 = Me.TopCtrl1
  loc_104F626: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_104F63B: If ( = "Browse") Then
  loc_104F63E:   Exit Sub
  loc_104F63F: End If
  loc_104F65C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104F65F:   Exit Sub
  loc_104F660: End If
  loc_104F671: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_104F693:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104F6CD:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_104F6EF:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104F705:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104F70E:         Set var_114 = Me.FGrid
  loc_104F729:       Else
  loc_104F73C:         Me.FGrid.Rows = 1
  loc_104F762:         var_B0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_104F76A:         Set var_114 = Me.FGrid
  loc_104F797:         Me.FGrid.FixedRows = 1
  loc_104F79F:       End If
  loc_104F7A3:       Set var_90 = Me.TopCtrl1
  loc_104F7A9:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(FGrid.DispID_10000)
  loc_104F7BE:       If (var_B0 = "Add") Then
  loc_104F7E6:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_104F7F0:           var_A0 = CVar(CLng(var_86)) 'Long
  loc_104F7F8:           var_E0 = CVar(CLng(0)) 'Long
  loc_104F802:           var_B0 = CVar(CStr(var_86)) 'String
  loc_104F80A:           Set var_90 = Me.FGrid
  loc_104F810:           LateIdCallSt
  loc_104F821:         Next var_120 'Integer
  loc_104F826:       End If
  loc_104F826:     End If
  loc_104F829:   Else
  loc_104F84A:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_104F85A:   End If
  loc_104F85E:   Set var_90 = Me.FGrid
  loc_104F86F: End If
  loc_104F874: Set var_8C = Nothing
  loc_104F877: Exit Sub
  loc_104F878: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40CC4
  'Data Table: 4EB7A8
  Dim var_8C As TextBox
  loc_E40C98: Call Proc_67_56_EF75D8()
  loc_E40CA8: Set var_88 = Me.TxtGrid
  loc_E40CAE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40CB6: var_8C.Visible = False
  loc_E40CC2: Exit Sub
End Sub

Private Sub DGBusiness_UnknownEvent_9 'F44D04
  'Data Table: 4EB7A8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44BFB: Me.DGBusiness.Visible = False
  loc_F44C1A: If (Me.RecordCount > 0) Then
  loc_F44C59:   Set var_B4 = Me.Txt
  loc_F44C5F:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F44C67:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F44C9A:   var_B0 = Me.Fields.Item("Name")
  loc_F44CB9:   Set var_B4 = Me.Txt
  loc_F44CBF:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F44CC7:   var_B8.Text = CStr(var_B0.Value)
  loc_F44CDD: End If
  loc_F44CE8: Set var_A8 = Me.Txt
  loc_F44CEE: Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE))
  loc_F44CF6: var_B0.SetFocus
  loc_F44D02: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7ECFC
  'Data Table: 4EB7A8
  Dim var_94 As TextBox
  loc_E7EC98: On Error Goto loc_E7ECF4
  loc_E7ECBE: Call Proc_67_54_F12A9C(Proc_5_1_100CB50("ADD", Me))
  loc_E7ECC9: Call Proc_67_55_E9E698(global_60)
  loc_E7ECD9: Set var_8C = Me.Txt
  loc_E7ECDF: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E7ECE7: var_94.SetFocus
  loc_E7ECF3: Exit Sub
  loc_E7ECF4: ' Referenced from: E7EC98
  loc_E7ECF4: Proc_6_60_E62BC4(var_94)
  loc_E7ECF9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F126EC
  'Data Table: 4EB7A8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F12604: On Error Goto loc_F126A9
  loc_F1261E: If (Me.RecordCount > 0) Then
  loc_F12636:   var_8C = "EDIT"
  loc_F12644:   Call Proc_67_54_F12A9C(Proc_5_1_100CB50(var_8C, Me))
  loc_F1265A:   Set var_90 = Me.Txt
  loc_F12660:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F12668:   var_98.SetFocus
  loc_F12677: Else
  loc_F12698:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F126A8: End If
  loc_F126A8: Exit Sub
  loc_F126A9: ' Referenced from: F12604
  loc_F126B1: Set var_90 = Err()
  loc_F126B7: Call 0.Method_arg_2C (var_8C)
  loc_F126D8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F126EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'FE4374
  'Data Table: 4EB7A8
  Dim var_96 As Integer
  Dim unk_4EB7B5 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_FE41A4: On Error Goto loc_FE431C
  loc_FE41DE: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_FE41E3:   var_96 = 0
  loc_FE41EF:   unk_4EB7B5.BeginTrans var_11C
  loc_FE41F6:   var_96 = &HFF
  loc_FE420A:   var_94 = Me.Bookmark 'Variant
  loc_FE4256:   var_F8 = "Delete From GROUPPROF Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_FE425A:   var_128 = CStr(var_F8)
  loc_FE4264:   unk_4EB7B5.Execute var_128, var_118, -1
  loc_FE4286:   unk_4EB7B5.CommitTrans
  loc_FE428D:   var_96 = 0
  loc_FE429B:   Me.Requery -1
  loc_FE42BB:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FE42C8:     Me.Bookmark = var_94
  loc_FE42D0:   Else
  loc_FE42E4:     If (Me.EOF = 0) Then
  loc_FE42ED:       Me.MoveLast
  loc_FE42F2:     End If
  loc_FE42F2:   End If
  loc_FE42F2:   Call Proc_67_57_144B0D8(var_96, var_12C)
  loc_FE4313:   Proc_5_0_110649C(&HFF, Me, global_60)
  loc_FE431B: End If
  loc_FE431B: Exit Sub
  loc_FE431C: ' Referenced from: FE41A4
  loc_FE4322: If (var_96 = &HFF) Then
  loc_FE432B:   unk_4EB7B5.RollbackTrans
  loc_FE4330: End If
  loc_FE4338: Set var_120 = Err()
  loc_FE433E: Call 0.Method_arg_2C (var_128, 0)
  loc_FE435F: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_FE4372: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E16D10
  'Data Table: 4EB7A8
  loc_E16D05: Me.Global.Unload Me
  loc_E16D0D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E31878
  'Data Table: 4EB7A8
  loc_E31868: Proc_5_0_110649C(&HFF, Me)
  loc_E31870: Call Proc_67_57_144B0D8(global_60)
  loc_E31875: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E31A58
  'Data Table: 4EB7A8
  loc_E31A48: Proc_5_0_110649C(&HFF, Me)
  loc_E31A50: Call Proc_67_57_144B0D8(global_60)
  loc_E31A55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E31998
  'Data Table: 4EB7A8
  loc_E31988: Proc_5_0_110649C(&HFF, Me)
  loc_E31990: Call Proc_67_57_144B0D8(global_60)
  loc_E31995: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E31938
  'Data Table: 4EB7A8
  loc_E31928: Proc_5_0_110649C(&HFF, Me)
  loc_E31930: Call Proc_67_57_144B0D8(global_60)
  loc_E31935: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '139C430
  'Data Table: 4EB7A8
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim unk_4EB7B5 As Connection15
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_94 As Field20
  Dim var_98 As String
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim Me As Recordset15
  Dim var_104 As String
  Dim var_BC As Variant
  Dim var_1B8 As TextBox
  Dim var_420 As TextBox
  Dim var_47C As TextBox
  Dim var_4D8 As TextBox
  Dim var_368 As Variant
  Dim var_5A4 As Variant
  loc_139BCBC: On Error Goto loc_139C3DB
  loc_139BCC3: var_86 = CByte(0) 'Byte
  loc_139BCD2: Set var_8C = Me.Txt
  loc_139BCD8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_139BD01: If (Proc_6_27_EA565C(var_90, "Name1") = 0) Then
  loc_139BD0B:   Call Txt_GotFocus()
  loc_139BD10:   Exit Sub
  loc_139BD11: End If
  loc_139BD15: Set var_8C = Me.TopCtrl1
  loc_139BD1B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CInt(0))
  loc_139BD30: If (var_90 = "Add") Then
  loc_139BD39:   var_DC = 0
  loc_139BD58:   unk_4EB7B5.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,2,7) AS INT)),1)+1 AS MyCode From GROUPPROF", var_BC, -1
  loc_139BD60:   var_8C = var_8C.Fields
  loc_139BD68:   var_DC = var_90.Item(var_90)
  loc_139BD70:   var_94 = var_94.Value
  loc_139BDA3:   var_EC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_139BDC9:   var_CC = Format(CStr(var_CC), "0000000")
  loc_139BDD1:   var_FC = (1 + var_CC)
  loc_139BDDC:   intStaId = CStr(var_FC)
  loc_139BDF1: Else
  loc_139BE0E:   var_90 = Me.Fields.Item("SearchCode")
  loc_139BE16:   var_BC = var_90.Value
  loc_139BE25:   intStaId = CStr(var_BC)
  loc_139BE36: End If
  loc_139BE3F: unk_4EB7B5.BeginTrans var_100
  loc_139BE48: var_86 = CByte(1) 'Byte
  loc_139BE6A: var_104 = "Delete From GroupProf Where Code='" & intStaId & "'"
  loc_139BE73: unk_4EB7B5.Execute var_104, var_BC, -1
  loc_139BE96: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_90, Me.Txt)
  loc_139BEA5: Proc_6_17_EAA2B0(var_CC, CVar(var_90), 1)
  loc_139BEB5: Set var_94 = Me.Txt
  loc_139BEBB: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_118)
  loc_139BECA: Proc_6_17_EAA2B0(var_138, CVar(var_118))
  loc_139BEDA: Set var_15C = Me.Txt
  loc_139BEE0: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_160)
  loc_139BEEF: Proc_6_17_EAA2B0(var_180, CVar(var_160))
  loc_139BF02: Set var_1B4 = Me.Txt
  loc_139BF08: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1B8, var_104)
  loc_139BF10: var_EC = var_1B8.Tag
  loc_139BF1E: Proc_6_17_EAA2B0(var_1D8, CVar(var_104))
  loc_139BF2E: Set var_20C = Me.Txt
  loc_139BF34: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_210)
  loc_139BF43: Proc_6_17_EAA2B0(var_230, CVar(var_210))
  loc_139BF53: Set var_264 = Me.Txt
  loc_139BF59: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_268)
  loc_139BF68: Proc_6_17_EAA2B0(var_288, CVar(var_268))
  loc_139BF78: Set var_2BC = Me.Txt
  loc_139BF7E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_2C0)
  loc_139BF8D: Proc_6_17_EAA2B0(var_2E0, CVar(var_2C0))
  loc_139BF9D: Set var_314 = Me.Txt
  loc_139BFA3: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_318)
  loc_139BFB2: Proc_6_17_EAA2B0(var_338, CVar(var_318))
  loc_139BFC2: Set var_36C = Me.Txt
  loc_139BFC8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_370)
  loc_139BFD7: Proc_6_17_EAA2B0(var_390, CVar(var_370))
  loc_139BFE7: Set var_3C4 = Me.Txt
  loc_139BFED: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_3C8)
  loc_139BFFC: Proc_6_17_EAA2B0(var_3E8, CVar(var_3C8))
  loc_139C00F: Set var_41C = Me.Txt
  loc_139C015: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HD), var_420)
  loc_139C02B: Proc_6_17_EAA2B0(var_444, CVar(var_420.Tag))
  loc_139C03E: Set var_478 = Me.Txt
  loc_139C044: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HF), var_47C)
  loc_139C05A: Proc_6_17_EAA2B0(var_4A0, CVar(var_47C.Tag))
  loc_139C06D: Set var_4D4 = Me.Txt
  loc_139C073: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HE), var_4D8)
  loc_139C089: Proc_6_17_EAA2B0(var_4FC, CVar(var_4D8.Tag))
  loc_139C099: Set var_530 = Me.Txt
  loc_139C09F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H10), var_534)
  loc_139C0AE: Proc_6_17_EAA2B0(var_554, CVar(var_534))
  loc_139C0C1: Proc_6_7_F25D88(var_624, Date)
  loc_139C0CA: Set var_658 = Me.TopCtrl1
  loc_139C0D0: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_139C122: var_98 = "Insert Into GroupProf (Code,Name,Add1,Add2,City,Type,ConName,PhoneNo,Comments1,Comments2,Comments3,TravelAgency,MarketSeg,BusSource,GroupType,Site_Code,U_Name,U_EntDt,U_AE) Values ('" & intStaId
  loc_139C129: var_EC = CVar(var_98 & "',") 'String
  loc_139C12F: var_FC = var_EC & var_CC 
  loc_139C133: var_AC = ","
  loc_139C1A8: var_368 = var_FC & var_AC & var_138 & "," & var_180 & "," & var_1D8 & "," & var_230 & "," & var_288 & "," & var_2E0 & "," & var_338 & "," 
  loc_139C212: var_5A4 = var_368 & var_390 & "," & var_3E8 & "," & var_444 & "," & var_4A0 & "," & var_4FC & "," & var_554 & ",'" & CVar(MemVar_1F92078) 
  loc_139C25C: unk_4EB7B5.Execute CStr(var_5A4 & "','" & CVar(MemVar_1F920C8) & "'," & var_624 & ",'" & IIf((var_678 = "Add"), "A", "E") & "')"), var_73C, -1
  loc_139C32E: unk_4EB7B5.CommitTrans
  loc_139C337: var_86 = CByte(0) 'Byte
  loc_139C346: Me.Requery -1
  loc_139C373: Me.Find "SearchCode='" & intStaId & "'", 0, 1
  loc_139C383: Set var_8C = Me.TopCtrl1
  loc_139C389: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_AC)
  loc_139C39E: If (var_740 = "Add") Then
  loc_139C3A1:   Call TopCtrl1_UnknownEvent_11()
  loc_139C3A6:   Exit Sub
  loc_139C3A7: End If
  loc_139C3BC: var_98 = "INI"
  loc_139C3CA: Call Proc_67_54_F12A9C(Proc_5_1_100CB50(var_98, Me))
  loc_139C3D5: Call Proc_67_57_144B0D8(global_60)
  loc_139C3DA: Exit Sub
  loc_139C3DB: ' Referenced from: 139BCBC
  loc_139C3E4: If (CInt(var_86) = 1) Then
  loc_139C3ED:   unk_4EB7B5.RollbackTrans
  loc_139C3F2: End If
  loc_139C3FA: Set var_8C = Err()
  loc_139C400: Call 0.Method_arg_2C (var_98)
  loc_139C419: MsgBox(CVar(var_98), &H10, var_CC, var_EC, var_FC)
  loc_139C42C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9E8C8
  'Data Table: 4EB7A8
  loc_E9E850: On Error Goto loc_E9E8C1
  loc_E9E88A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9E8B0:   Call Proc_67_54_F12A9C(Proc_5_1_100CB50("INI", Me))
  loc_E9E8BB:   Call Proc_67_57_144B0D8(global_60)
  loc_E9E8C0: End If
  loc_E9E8C0: Exit Sub
  loc_E9E8C1: ' Referenced from: E9E850
  loc_E9E8C1: Proc_6_60_E62BC4()
  loc_E9E8C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB3A4C
  'Data Table: 4EB7A8
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB39BC: On Error Goto loc_EB3A46
  loc_EB39D6: If (Me.RecordCount <= 0) Then
  loc_EB39DF:   var_B8 = "Information"
  loc_EB39FA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3A0A:   Exit Sub
  loc_EB3A0B: End If
  loc_EB3A0E: MemVar_1F920E4 = "Select Code As SearchCode,GROUPPROF.Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GroupProf Left Join City on City.CityCode=GroupProf.City Order by GroupProf.Name"
  loc_EB3A18: MemVar_1F92120 = Me
  loc_EB3A25: Proc_6_126_F1BCC0("3200,2500,2500,2400")
  loc_EB3A40: Call 0.Method_arg_2B0 (1)
  loc_EB3A45: Exit Sub
  loc_EB3A46: ' Referenced from: EB39BC
  loc_EB3A46: Proc_6_60_E62BC4(var_B8)
  loc_EB3A4B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E587B0
  'Data Table: 4EB7A8
  Dim Me As Recordset15
  loc_E58777: Me.Requery -1
  loc_E58787: Me.Requery -1
  loc_E58797: Me.Requery -1
  loc_E587A7: Me.Requery -1
  loc_E587AC: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'EF37CC
  'Data Table: 4EB7A8
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_10C As TextBox
  loc_EF3710: Call Proc_67_56_EF75D8()
  loc_EF3721: If (Index = 0) Then
  loc_EF3740:   Set var_A0 = Me.FGrid
  loc_EF3776:   Set var_108 = Me.TxtGrid
  loc_EF377C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_EF3784:   var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_EF37B1:   Set var_8C = Me.TxtGrid
  loc_EF37B7:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_EF37BF:   var_A0.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_EF37CB: End If
  loc_EF37CB: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F96718
  'Data Table: 4EB7A8
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F965B3: var_86 = KeyCode
  loc_F965BC: If (var_86 = 0) Then
  loc_F965C9:   If (CLng(Shift) = &H1B) Then
  loc_F965D9:     Set var_8C = Me.TxtGrid
  loc_F965DF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F965F9:     Set var_98 = Me.TxtGrid
  loc_F965FF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F96607:     var_9C.Text = var_90.Tag
  loc_F9661A:     Call Proc_67_56_EF75D8(var_86)
  loc_F96623:     Set var_8C = Me.FGrid
  loc_F96640:     Set var_8C = Me.TxtGrid
  loc_F96646:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F9664E:     var_90.Visible = False
  loc_F9665A:     Exit Sub
  loc_F9665B:   End If
  loc_F96691:   If ((CLng(Shift) = &HD) Or ((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28))) Then
  loc_F9669A:     Call Proc_67_53_F73E10(KeyCode, var_9E)
  loc_F966A5:     If (var_9E = &HFF) Then
  loc_F96702:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, 0, CByte(CLng(Me.FGrid.Cols)))
  loc_F96717:     End If
  loc_F96717:   End If
  loc_F96717: End If
  loc_F96717: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E7A894
  'Data Table: 4EB7A8
  Dim arg_10 As Integer
  loc_E7A83F: Proc_6_58_E054C0(arg_10)
  loc_E7A84A: Proc_6_133_E7EF78(var_94)
  loc_E7A863: Set var_98 = Me.TxtGrid
  loc_E7A869: Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_9C)
  loc_E7A884: Proc_6_42_129A86C(var_9C, CInt(var_94), 8)
  loc_E7A890: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22854
  'Data Table: 4EB7A8
  Dim arg_10 As Integer
  loc_E2283C: If (Cancel = 0) Then
  loc_E22845:   Call Proc_67_53_F73E10(Cancel, var_88)
  loc_E2284E:   arg_10 = Not(var_88)
  loc_E22851: End If
  loc_E22851: Exit Sub
  loc_E22852: CExtInstUnk
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1379004
  'Data Table: 4EB7A8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  loc_1378786: Set var_88 = Me.Txt
  loc_137878C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_137879A: Proc_6_74_E226B0(var_8C)
  loc_13787A6: Call Proc_67_56_EF75D8(var_8C)
  loc_13787AE: var_92 = Index
  loc_13787B9: If (var_92 = CInt(0)) Then
  loc_137880A:   Set var_88 = Me.Txt
  loc_1378810:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1378818:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1378830:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1378833:     Exit Sub
  loc_1378834:   End If
  loc_1378841:   Set var_88 = Me.Txt
  loc_1378847:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_137884F:   var_A0 = var_8C.Text
  loc_1378861:   var_B0 = "Name"
  loc_137889C:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13788A5:     Me.MoveFirst
  loc_13788C8:     Set var_88 = Me.Txt
  loc_13788CE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_13788D6:     0 = var_8C.Text
  loc_13788EF:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1378904:   End If
  loc_1378907: Else
  loc_137890F:   If (var_92 = CInt(3)) Then
  loc_1378960:     Set var_88 = Me.Txt
  loc_1378966:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378986:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1378989:       Exit Sub
  loc_137898A:     End If
  loc_1378997:     Set var_88 = Me.Txt
  loc_137899D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13789A5:     var_A0 = var_8C.Text
  loc_13789B7:     var_B0 = "Name"
  loc_13789F2:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13789FB:       Me.MoveFirst
  loc_1378A1E:       Set var_88 = Me.Txt
  loc_1378A24:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1378A2C:       0 = var_8C.Text
  loc_1378A45:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1378A5A:     End If
  loc_1378A5D:   Else
  loc_1378A65:     If (var_92 = CInt(&HD)) Then
  loc_1378A76:       Set var_88 = Me.Txt
  loc_1378A7C:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_1378A91:       var_B0 = CVar((var_8C.Left + CDbl(2500))) 'Single
  loc_1378AA0:       Me.DGTravelAg.Left = var_B0
  loc_1378ABC:       Set var_88 = Me.Txt
  loc_1378AC2:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_1378AD7:       var_B0 = CVar((var_8C.Top - CDbl(1500))) 'Single
  loc_1378AE6:       Me.DGTravelAg.Top = var_B0
  loc_1378B42:       Set var_88 = Me.Txt
  loc_1378B48:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378B68:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1378B6B:         Exit Sub
  loc_1378B6C:       End If
  loc_1378B79:       Set var_88 = Me.Txt
  loc_1378B7F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378B87:       var_A0 = var_8C.Text
  loc_1378B99:       var_B0 = "Name"
  loc_1378BD4:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1378BDD:         Me.MoveFirst
  loc_1378C00:         Set var_88 = Me.Txt
  loc_1378C06:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1378C0E:         0 = var_8C.Text
  loc_1378C27:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1378C3C:       End If
  loc_1378C3F:     Else
  loc_1378C47:       If (var_92 = CInt(&HE)) Then
  loc_1378C58:         Set var_88 = Me.Txt
  loc_1378C5E:         Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_1378C73:         var_B0 = CVar((var_8C.Left + CDbl(2500))) 'Single
  loc_1378C82:         Me.DGBusiness.Left = var_B0
  loc_1378C9E:         Set var_88 = Me.Txt
  loc_1378CA4:         Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_1378CB9:         var_B0 = CVar((var_8C.Top - CDbl(1500))) 'Single
  loc_1378CC8:         Me.DGBusiness.Top = var_B0
  loc_1378D24:         Set var_88 = Me.Txt
  loc_1378D2A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378D4A:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1378D4D:           Exit Sub
  loc_1378D4E:         End If
  loc_1378D5B:         Set var_88 = Me.Txt
  loc_1378D61:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378D69:         var_A0 = var_8C.Text
  loc_1378D7B:         var_B0 = "Name"
  loc_1378DB6:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1378DBF:           Me.MoveFirst
  loc_1378DE2:           Set var_88 = Me.Txt
  loc_1378DE8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1378DF0:           0 = var_8C.Text
  loc_1378E09:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1378E1E:         End If
  loc_1378E21:       Else
  loc_1378E29:         If (var_92 = CInt(&HF)) Then
  loc_1378E3A:           Set var_88 = Me.Txt
  loc_1378E40:           Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_1378E55:           var_B0 = CVar((var_8C.Left + CDbl(2500))) 'Single
  loc_1378E64:           Me.DGMarketSeg.Left = var_B0
  loc_1378E80:           Set var_88 = Me.Txt
  loc_1378E86:           Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_1378E9B:           var_B0 = CVar((var_8C.Top - CDbl(1500))) 'Single
  loc_1378EAA:           Me.DGMarketSeg.Top = var_B0
  loc_1378F06:           Set var_88 = Me.Txt
  loc_1378F0C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378F2C:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1378F2F:             Exit Sub
  loc_1378F30:           End If
  loc_1378F3D:           Set var_88 = Me.Txt
  loc_1378F43:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378F4B:           var_A0 = var_8C.Text
  loc_1378F5D:           var_B0 = "Name"
  loc_1378F98:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1378FA1:             Me.MoveFirst
  loc_1378FC4:             Set var_88 = Me.Txt
  loc_1378FCA:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1378FD2:             0 = var_8C.Text
  loc_1378FEB:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1379000:           End If
  loc_1379000:         End If
  loc_1379000:       End If
  loc_1379000:     End If
  loc_1379000:   End If
  loc_1379000: End If
  loc_1379000: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11669A4
  'Data Table: 4EB7A8
  Dim var_88 As Integer
  Dim var_9C As DataGrid
  Dim var_DC As Variant
  Dim var_A0 As DataGrid
  Dim var_EC As Variant
  loc_1166602: If (CLng(Shift) = &H1B) Then
  loc_1166605:   Call Proc_67_56_EF75D8()
  loc_116660A:   Exit Sub
  loc_116660B: End If
  loc_116660E: var_88 = KeyCode
  loc_1166619: If (var_88 = CInt(0)) Then
  loc_1166634:   Set var_A0 = Nothing
  loc_116663F:   Set var_9C = Nothing
  loc_1166671:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, CInt(0), global_80, Shift, 0)
  loc_1166688: Else
  loc_1166690:   If (var_88 = CInt(3)) Then
  loc_11666AB:     Set var_A0 = Nothing
  loc_11666E8:     Proc_6_69_134A198(Me.DGCity, Me.Txt, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_11666FF:   Else
  loc_1166707:     If (var_88 = CInt(&HD)) Then
  loc_1166722:       Set var_A0 = Nothing
  loc_116675F:       Proc_6_69_134A198(Me.DGTravelAg, Me.Txt, CInt(&HD), global_68, Shift, 0, 1, Nothing)
  loc_1166776:     Else
  loc_116677E:       If (var_88 = CInt(&HE)) Then
  loc_1166799:         Set var_A0 = Nothing
  loc_11667D6:         Proc_6_69_134A198(Me.DGBusiness, Me.Txt, CInt(&HE), global_76, Shift, 0, 1, Nothing)
  loc_11667ED:       Else
  loc_11667F5:         If (var_88 = CInt(&HF)) Then
  loc_1166810:           Set var_A0 = Nothing
  loc_116684D:           Proc_6_69_134A198(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_72, Shift, 0, 1, Nothing)
  loc_1166861:         End If
  loc_1166861:       End If
  loc_1166861:     End If
  loc_1166861:   End If
  loc_1166861: End If
  loc_1166898: var_DC = Me.DGHelp.Visible
  loc_11668A9: Set var_A0 = Me.DGBusiness
  loc_11668AF: var_EC = var_A0.Visible
  loc_11668ED: If (((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGTravelAg.Visible) = 0)) And (CBool(var_DC) = 0)) And (CBool(var_EC) = 0)) And (CBool(Me.DGMarketSeg.Visible) = 0)) Then
  loc_116690E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_1166917:     Call Txt_Validate(KeyCode)
  loc_1166922:     If (var_86 = &HFF) Then
  loc_1166925:       Exit Sub
  loc_1166926:     End If
  loc_116695D:     If (MsgBox("Save Record ?", 4, "Save Data", var_DC, var_EC) = 6) Then
  loc_1166960:       Call TopCtrl1_UnknownEvent_19()
  loc_1166965:     End If
  loc_1166965:     Exit Sub
  loc_1166966:   End If
  loc_116697B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1166984:     Proc_6_75_E527CC(Shift, arg_14, var_86, var_A0, 0, var_A0)
  loc_1166989:   End If
  loc_1166993:   If (CLng(Shift) = &H26) Then
  loc_116699C:     Proc_6_76_E52838(Shift, arg_14, 0, var_A0)
  loc_11669A1:   End If
  loc_11669A1: End If
  loc_11669A1: Exit Sub
  loc_11669A2: 0 = arg_3000
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1018570
  'Data Table: 4EB7A8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_1018347: Proc_6_58_E054C0(arg_10)
  loc_1018352: Proc_6_133_E7EF78(var_94)
  loc_101835B: arg_10 = CInt(var_94)
  loc_1018364: var_96 = KeyAscii
  loc_101836F: If (var_96 = CInt(0)) Then
  loc_101838E:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_10183BB:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_10183CA:   End If
  loc_10183CD: Else
  loc_10183D5:   If (var_96 = CInt(3)) Then
  loc_10183F4:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_1018421:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_1018430:     End If
  loc_1018433:   Else
  loc_101843B:     If (var_96 = CInt(&HD)) Then
  loc_101845A:       If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_101848B:         Proc_6_89_146F1AC(Me.Txt, CInt(&HD), global_68, arg_10, "Name", 0)
  loc_101849A:       End If
  loc_101849D:     Else
  loc_10184A5:       If (var_96 = CInt(&HE)) Then
  loc_10184C4:         If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_10184F5:           Proc_6_89_146F1AC(Me.Txt, CInt(&HE), global_76, arg_10, "Name", 0)
  loc_1018504:         End If
  loc_1018507:       Else
  loc_101850F:         If (var_96 = CInt(&HF)) Then
  loc_101852E:           If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_101855F:             Proc_6_89_146F1AC(Me.Txt, CInt(&HF), global_72, arg_10, "Name", 0)
  loc_101856E:           End If
  loc_101856E:         End If
  loc_101856E:       End If
  loc_101856E:     End If
  loc_101856E:   End If
  loc_101856E: End If
  loc_101856E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '104BAD8
  'Data Table: 4EB7A8
  Dim var_86 As Integer
  loc_104B877: var_86 = KeyCode
  loc_104B882: If (var_86 = CInt(0)) Then
  loc_104B8A1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_104B8B5:     var_A8 = "Name"
  loc_104B8DD:     Proc_6_68_129FB34(Me.DGHelp, Me.Txt, CInt(0), global_80)
  loc_104B8F0:   End If
  loc_104B8F3: Else
  loc_104B8FB:   If (var_86 = CInt(3)) Then
  loc_104B91A:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_104B92E:       var_A8 = "Name"
  loc_104B956:       Proc_6_68_129FB34(Me.DGCity, Me.Txt, CInt(3), global_64, Shift)
  loc_104B969:     End If
  loc_104B96C:   Else
  loc_104B974:     If (var_86 = CInt(&HD)) Then
  loc_104B993:       If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_104B9A7:         var_A8 = "Name"
  loc_104B9CF:         Proc_6_68_129FB34(Me.DGTravelAg, Me.Txt, CInt(&HD), global_68, Shift)
  loc_104B9E2:       End If
  loc_104B9E5:     Else
  loc_104B9ED:       If (var_86 = CInt(&HE)) Then
  loc_104BA0C:         If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_104BA48:           Proc_6_68_129FB34(Me.DGBusiness, Me.Txt, CInt(&HE), global_76, Shift, "Name")
  loc_104BA5B:         End If
  loc_104BA5E:       Else
  loc_104BA66:         If (var_86 = CInt(&HF)) Then
  loc_104BA85:           If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_104BAC1:             Proc_6_68_129FB34(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_72, Shift, "Name")
  loc_104BAD4:           End If
  loc_104BAD4:         End If
  loc_104BAD4:       End If
  loc_104BAD4:     End If
  loc_104BAD4:   End If
  loc_104BAD4: End If
  loc_104BAD4: Exit Sub
  loc_104BAD5: ThisVCallHidden
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49BBC
  'Data Table: 4EB7A8
  loc_E49B9A: Set var_88 = Me.Txt
  loc_E49BA0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49BAE: Proc_6_73_E22704(var_8C)
  loc_E49BBA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1389E78
  'Data Table: 4EB7A8
  Dim var_8A As Integer
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As String
  Dim unk_4EB7B5 As Connection15
  Dim var_12C As Recordset15
  Dim var_130 As Variant
  Dim var_144 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Fields15
  Dim var_180 As String
  Dim var_88 As Recordset15
  loc_13895D3: var_8A = Cancel
  loc_13895DE: If (var_8A = CInt(0)) Then
  loc_138960D:   Set var_90 = Me.Txt
  loc_1389613:   Call 0.Method_Txt_Validate0 (CInt(0), var_94, "Select Count(*) from GroupProf where UPPER(Name)='", var_128, -1, var_12C)
  loc_1389622:   var_B4 = Ucase(CVar(var_94))
  loc_138962D:   var_C4 = Trim(var_B4)
  loc_1389635:   var_E4 = var_130 & var_C4 
  loc_1389642:   var_108 = CStr(var_E4 & "'")
  loc_138964C:   unk_4EB7B5.Execute var_108, 0, var_144
  loc_138965C:    = var_130.Item(var_8A)
  loc_1389664:    = var_144.Value
  loc_1389693:   If (var_12C.Fields > 0) Then
  loc_13896AF:     MsgBox("Duplicate Name ", 0, var_B4, var_C4, var_E4)
  loc_13896C1:     arg_10 = &HFF
  loc_13896C4:     Exit Sub
  loc_13896C5:   End If
  loc_13896C8: Else
  loc_13896D0:   If (var_8A = CInt(3)) Then
  loc_1389721:     Set var_90 = Me.Txt
  loc_1389727:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_108)
  loc_138972F:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_1389747:     If (arg_10 Or (var_108 = vbNullString)) Then
  loc_138974A:       Exit Sub
  loc_138974B:     End If
  loc_1389786:     Set var_12C = Me.Txt
  loc_138978C:     Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1389794:     var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13897C7:     var_94 = Me.Fields.Item("Code")
  loc_13897D8:     var_108 = CStr(var_94.Value)
  loc_13897E5:     Set var_12C = Me.Txt
  loc_13897EB:     Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_13897F3:     var_130.Tag = var_108
  loc_1389826:     Set var_90 = Me.Txt
  loc_138982C:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_108, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_1389834:     var_A4 = var_94.Tag
  loc_138983D:     var_180 = -1 & var_108
  loc_138984D:     unk_4EB7B5.Execute var_180 & "'", var_12C, 
  loc_1389858:     Set var_88 = var_12C
  loc_1389884:     If (var_88.RecordCount > 0) Then
  loc_13898BD:       Set var_12C = Me.Txt
  loc_13898C3:       Call 0.Method_Txt_Validate0 (CInt(3), var_130)
  loc_13898CB:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_1389915:       Set var_12C = Me.Txt
  loc_138991B:       Call 0.Method_Txt_Validate0 (CInt(4), var_130)
  loc_1389923:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Zipcode")))
  loc_138996D:       Set var_12C = Me.Txt
  loc_1389973:       Call 0.Method_Txt_Validate0 (CInt(5), var_130)
  loc_138997B:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")))
  loc_13899C5:       Set var_12C = Me.Txt
  loc_13899CB:       Call 0.Method_Txt_Validate0 (CInt(6), var_130)
  loc_13899D3:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CountryName")))
  loc_13899FE:       var_94 = var_88.Fields.Item("CountryType")
  loc_1389A1D:       Set var_12C = Me.Txt
  loc_1389A23:       Call 0.Method_Txt_Validate0 (CInt(7), var_130)
  loc_1389A2B:       var_130.Text = Proc_6_38_E68A98(CVar(var_94))
  loc_1389A3F:     End If
  loc_1389A42:   Else
  loc_1389A4A:     If (var_8A = CInt(&HD)) Then
  loc_1389A9B:       Set var_90 = Me.Txt
  loc_1389AA1:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1389AC1:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1389AC4:         Exit Sub
  loc_1389AC5:       End If
  loc_1389B00:       Set var_12C = Me.Txt
  loc_1389B06:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1389B0E:       var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1389B41:       var_94 = Me.Fields.Item("Code")
  loc_1389B5F:       Set var_12C = Me.Txt
  loc_1389B65:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1389B6D:       var_130.Tag = CStr(var_94.Value)
  loc_1389B86:     Else
  loc_1389B8E:       If (var_8A = CInt(&HE)) Then
  loc_1389BDF:         Set var_90 = Me.Txt
  loc_1389BE5:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1389C05:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1389C08:           Exit Sub
  loc_1389C09:         End If
  loc_1389C44:         Set var_12C = Me.Txt
  loc_1389C4A:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1389C52:         var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1389C85:         var_94 = Me.Fields.Item("Code")
  loc_1389CA3:         Set var_12C = Me.Txt
  loc_1389CA9:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1389CB1:         var_130.Tag = CStr(var_94.Value)
  loc_1389CCA:       Else
  loc_1389CD2:         If (var_8A = CInt(&HF)) Then
  loc_1389D23:           Set var_90 = Me.Txt
  loc_1389D29:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1389D49:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1389D4C:             Exit Sub
  loc_1389D4D:           End If
  loc_1389D88:           Set var_12C = Me.Txt
  loc_1389D8E:           Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1389D96:           var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1389DC9:           var_94 = Me.Fields.Item("Code")
  loc_1389DE7:           Set var_12C = Me.Txt
  loc_1389DED:           Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1389DF5:           var_130.Tag = CStr(var_94.Value)
  loc_1389E0E:         Else
  loc_1389E16:           If Not (var_8A = CInt(&H11)) Then
  loc_1389E21:             If (var_8A = CInt(&H12)) Then
  loc_1389E24:             End If
  loc_1389E2E:             Set var_90 = Me.Txt
  loc_1389E34:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_1389E54:             Set var_130 = Me.Txt
  loc_1389E5A:             Call 0.Method_Txt_Validate0 (Cancel, var_144)
  loc_1389E62:             var_144.Text = Proc_6_33_1512840(var_94)
  loc_1389E75:           End If
  loc_1389E75:         End If
  loc_1389E75:       End If
  loc_1389E75:     End If
  loc_1389E75:   End If
  loc_1389E75: End If
  loc_1389E75: Exit Sub
End Sub

Private Sub DGTravelAg_UnknownEvent_9 'F495E4
  'Data Table: 4EB7A8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F494DB: Me.DGTravelAg.Visible = False
  loc_F494FA: If (Me.RecordCount > 0) Then
  loc_F49539:   Set var_B4 = Me.Txt
  loc_F4953F:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F49547:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4957A:   var_B0 = Me.Fields.Item("Name")
  loc_F49599:   Set var_B4 = Me.Txt
  loc_F4959F:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F495A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F495BD: End If
  loc_F495C8: Set var_A8 = Me.Txt
  loc_F495CE: Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD))
  loc_F495D6: var_B0.SetFocus
  loc_F495E2: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E16934
  'Data Table: 4EB7A8
  loc_E16928: Me.FrmBlock.Visible = False
  loc_E16930: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'FB1218
  'Data Table: 4EB7A8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_114 As String
  loc_FB1097: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FB10AF: var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FB10E6: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_FB10FC:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FB1114:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FB1119:   var_114 = "****"
  loc_FB1123:   Set var_F0 = Me.FGrid1
  loc_FB1129:   LateIdCallSt
  loc_FB1144: Else
  loc_FB1157:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FB116F:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FB11A6:   If (CStr(Me.FGrid1.TextMatrix)) = "****") Then
  loc_FB11BC:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FB11D4:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FB11D9:     var_114 = vbNullString
  loc_FB11E3:     Set var_F0 = Me.FGrid1
  loc_FB11E9:     LateIdCallSt
  loc_FB1201:   End If
  loc_FB1201: End If
  loc_FB1205: Set var_88 = Me.FGrid1
  loc_FB1216: Exit Sub
End Sub

Private Sub Command3_Click() 'E16A18
  'Data Table: 4EB7A8
  loc_E16A0C: Me.FrmSoftBlock.Visible = False
  loc_E16A14: Exit Sub
End Sub

Private Sub CmdBlock_Click() 'FB0A90
  'Data Table: 4EB7A8
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_FB0912: Set var_88 = Me.Txt
  loc_FB0918: Call 0.Method_CmdBlock_Click0 (CInt(&H11), var_8C)
  loc_FB093B: Set var_94 = Me.Txt
  loc_FB0941: Call 0.Method_CmdBlock_Click0 (CInt(&H12), var_98)
  loc_FB0969: If ((var_8C.Text <> vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_FB0977:   Set var_88 = Me.Txt
  loc_FB097D:   Call 0.Method_CmdBlock_Click0 (CInt(&H11))
  loc_FB098D:   Set var_94 = Me.Txt
  loc_FB0993:   Call 0.Method_CmdBlock_Click0 (CInt(&H12), var_98)
  loc_FB09F4:   Me.FrmBlock.Top = Me.Shape1.Top
  loc_FB0A19:   Set var_8C = Me.FrmBlock
  loc_FB0A1F:   var_8C.Left = Me.Shape1.Left
  loc_FB0A37:   Me.FrmBlock.Visible = True
  loc_FB0A3F:   Call Proc_67_49_10BFE08(CInt(DateDiff("d", CVar(var_8C), CVar(var_98), 1, 1)))
  loc_FB0A52:   Set var_88 = Me.Txt
  loc_FB0A58:   Call 0.Method_CmdBlock_Click0 (CInt(&H11), var_8C)
  loc_FB0A68:   var_9C = "RoomType"
  loc_FB0A7C:   Call Proc_67_51_13698F0(CDate(var_8C.Text), 1)
  loc_FB0A8F: End If
  loc_FB0A8F: Exit Sub
End Sub

Public Function MasterFormExitGet() '4ECA28
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4ECA37
  MasterFormExit = Value
End Sub

Public Function intStaIdGet() '4ECA46
  intStaIdGet = intStaId
End Function

Public Sub intStaIdPut(Value) '4ECA55
  intStaId = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95978
  'Data Table: 4EB7A8
  Dim Me As Recordset15
  Dim arg_2900 As String
  loc_E95906: On Error Goto loc_E9596F
  loc_E9590F: Me.MoveFirst
  loc_E95939: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95961: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E95969: Call Proc_67_57_144B0D8(0)
  loc_E9596E: Exit Sub
  loc_E9596F: ' Referenced from: E95906
  loc_E9596F: Proc_6_60_E62BC4(var_A0)
  loc_E95974: Exit Sub
  loc_E95975: arg_2900 = 
End Sub

Public Sub Proc_67_49_10BFE08
  'Data Table: 4EB7A8
  Dim var_88 As Long
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As String
  loc_10BFB39: var_88 = &H20D
  loc_10BFB40: Set var_90 = Me.FGrid
  loc_10BFB4E: Set var_94 = Me.Txt
  loc_10BFB54: Call 0.Method_Proc_67_49_10BFE080 (CInt(&H11), var_98)
  loc_10BFB64: Set var_9C = Me.Txt
  loc_10BFB6A: Call 0.Method_Proc_67_49_10BFE080 (CInt(&H12), var_A0)
  loc_10BFB9B: var_F0 = (3 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10BFBA4: var_110 = (var_F0 + 1)
  loc_10BFBAA: var_120 = CVar(CLng(var_110)) 'Long
  loc_10BFBCB: var_E0 = 3
  loc_10BFBDF: var_E0 = CVar(CLng(0)) 'Long
  loc_10BFBE4: var_120 = &HFA
  loc_10BFBF0: LateIdCallSt
  loc_10BFBF8: var_E0 = 0
  loc_10BFC04: var_120 = CVar(CLng(0)) 'Long
  loc_10BFC09: var_140 = "SNo"
  loc_10BFC12: LateIdCallSt
  loc_10BFC1D: var_E0 = CVar(CLng(0)) 'Long
  loc_10BFC22: var_120 = 0
  loc_10BFC2E: LateIdCallSt
  loc_10BFC36: var_E0 = 0
  loc_10BFC42: var_120 = CVar(CLng(1)) 'Long
  loc_10BFC47: var_140 = "Room Type"
  loc_10BFC50: LateIdCallSt
  loc_10BFC5B: var_E0 = CVar(CLng(1)) 'Long
  loc_10BFC66: var_120 = CVar(CInt(1)) 'Integer
  loc_10BFC6D: LateIdCallSt
  loc_10BFC78: var_E0 = CVar(CLng(1)) 'Long
  loc_10BFC7D: var_120 = &H640
  loc_10BFC89: LateIdCallSt
  loc_10BFC91: var_E0 = 0
  loc_10BFC9D: var_120 = CVar(CLng(2)) 'Long
  loc_10BFCAB: LateIdCallSt
  loc_10BFCB6: var_E0 = CVar(CLng(2)) 'Long
  loc_10BFCC1: var_120 = CVar(CInt(1)) 'Integer
  loc_10BFCC8: LateIdCallSt
  loc_10BFCD3: var_E0 = CVar(CLng(2)) 'Long
  loc_10BFCD8: var_120 = 0
  loc_10BFCE4: LateIdCallSt
  loc_10BFCFC: Set var_94 = Me.Txt
  loc_10BFD02: Call 0.Method_Proc_67_49_10BFE080 (CInt(&H11), var_98, var_8A, 3, var_90, var_120, var_E0)
  loc_10BFD12: Set var_9C = Me.Txt
  loc_10BFD18: Call 0.Method_Proc_67_49_10BFE080 (CInt(&H12), var_A0, var_90, var_120, var_E0)
  loc_10BFD49: var_F0 = (3 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10BFD61: For var_154 = "Room Type Code" To CByte(var_F0): var_90 = var_154 'Byte
  loc_10BFD67:   var_E0 = 0
  loc_10BFD75:   var_120 = CVar(CLng(var_8A)) 'Long
  loc_10BFD87:   var_B0 = CVar("Day" & CStr(var_8A)) 'String
  loc_10BFD8E:   LateIdCallSt
  loc_10BFDA1:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10BFDAC:   var_120 = CVar(CInt(4)) 'Integer
  loc_10BFDB3:   LateIdCallSt
  loc_10BFDC0:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10BFDCB:   var_120 = CVar(CInt(4)) 'Integer
  loc_10BFDD2:   LateIdCallSt
  loc_10BFDDF:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10BFDEE:   LateIdCallSt
  loc_10BFDF9: Next var_154 'Byte
  loc_10BFE01: Set var_90 = Nothing 
  loc_10BFE05: Exit Sub
End Sub

Public Sub Proc_67_50_10C67F0
  'Data Table: 4EB7A8
  Dim var_88 As Long
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As String
  loc_10C6515: var_88 = &H249
  loc_10C651C: Set var_90 = Me.FGrid1
  loc_10C652A: Set var_94 = Me.Txt
  loc_10C6530: Call 0.Method_Proc_67_50_10C67F00 (CInt(&H11), var_98)
  loc_10C6540: Set var_9C = Me.Txt
  loc_10C6546: Call 0.Method_Proc_67_50_10C67F00 (CInt(&H12), var_A0)
  loc_10C6577: var_F0 = (5 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10C6580: var_110 = (var_F0 + 1)
  loc_10C6586: var_120 = CVar(CLng(var_110)) 'Long
  loc_10C65A7: var_E0 = 0
  loc_10C65B3: var_120 = CVar(CLng(1)) 'Long
  loc_10C65B8: var_140 = "SNo"
  loc_10C65C1: LateIdCallSt
  loc_10C65CC: var_E0 = CVar(CLng(1)) 'Long
  loc_10C65D1: var_120 = 0
  loc_10C65DD: LateIdCallSt
  loc_10C65E5: var_E0 = 0
  loc_10C65F1: var_120 = CVar(CLng(2)) 'Long
  loc_10C65F6: var_140 = "Type"
  loc_10C65FF: LateIdCallSt
  loc_10C660A: var_E0 = CVar(CLng(2)) 'Long
  loc_10C6615: var_120 = CVar(CInt(1)) 'Integer
  loc_10C661C: LateIdCallSt
  loc_10C6627: var_E0 = CVar(CLng(2)) 'Long
  loc_10C6632: var_120 = CVar(CInt(1)) 'Integer
  loc_10C6639: LateIdCallSt
  loc_10C6644: var_E0 = CVar(CLng(2)) 'Long
  loc_10C6649: var_120 = &H3E8
  loc_10C6655: LateIdCallSt
  loc_10C665D: var_E0 = 0
  loc_10C6669: var_120 = CVar(CLng(3)) 'Long
  loc_10C666E: var_140 = "Rate"
  loc_10C6677: LateIdCallSt
  loc_10C6682: var_E0 = CVar(CLng(3)) 'Long
  loc_10C668D: var_120 = CVar(CInt(7)) 'Integer
  loc_10C6694: LateIdCallSt
  loc_10C669F: var_E0 = CVar(CLng(3)) 'Long
  loc_10C66AA: var_120 = CVar(CInt(7)) 'Integer
  loc_10C66B1: LateIdCallSt
  loc_10C66BC: var_E0 = CVar(CLng(3)) 'Long
  loc_10C66C1: var_120 = &H1F4
  loc_10C66CD: LateIdCallSt
  loc_10C66E5: Set var_94 = Me.Txt
  loc_10C66EB: Call 0.Method_Proc_67_50_10C67F00 (CInt(&H11), var_98, var_8A, 5, var_90, var_120, var_E0)
  loc_10C66FB: Set var_9C = Me.Txt
  loc_10C6701: Call 0.Method_Proc_67_50_10C67F00 (CInt(&H12), var_A0, var_90, var_120, var_E0)
  loc_10C6732: var_F0 = (5 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10C674A: For var_154 = var_120 To CByte(var_F0): var_90 = var_154 'Byte
  loc_10C6750:   var_E0 = 0
  loc_10C675E:   var_120 = CVar(CLng(var_8A)) 'Long
  loc_10C6770:   var_B0 = CVar("Day" & CStr(var_8A)) 'String
  loc_10C6777:   LateIdCallSt
  loc_10C678A:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10C6795:   var_120 = CVar(CInt(4)) 'Integer
  loc_10C679C:   LateIdCallSt
  loc_10C67A9:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10C67B4:   var_120 = CVar(CInt(1)) 'Integer
  loc_10C67BB:   LateIdCallSt
  loc_10C67C8:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10C67D7:   LateIdCallSt
  loc_10C67E2: Next var_154 'Byte
  loc_10C67EA: Set var_90 = Nothing 
  loc_10C67EE: Exit Sub
End Sub

Public Sub Proc_67_51_13698F0(arg_C, arg_10, arg_14) '13698F0
  'Data Table: 4EB7A8
  Dim unk_4EB7B5 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_DC As Field20
  Dim var_A0 As Double
  Dim var_AA As Integer
  Dim var_D0 As Variant
  Dim var_118 As Variant
  Dim var_AC As Integer
  Dim var_AE As Integer
  Dim var_A8 As Double
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_108 As Variant
  Dim var_90 As Long
  Dim var_150 As Variant
  Dim var_E0 As TextBox
  Dim Proc_67_51_13698F02 As Variant
  Dim var_E4 As Fields15
  Dim var_E8 As Field20
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  loc_13690B8: If (arg_14 = "RoomType") Then
  loc_13690BE:   var_98 = "Select RC.Code,RC.Name,RC.NoRooms,RL.Rate2 From RoomCat RC Left Join RateList RL on RC.Code=RL.RoomCat Where RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By RC.Name"
  loc_13690D7:   unk_4EB7B5.Execute "Select Sum(NoRooms) As tNoRooms From RoomCat Where InclCount='Y'", var_D0, -1
  loc_13690E2:   Set var_88 = var_D4
  loc_13690FF:   If (var_88.RecordCount > 0) Then
  loc_136911C:     var_DC = var_88.Fields.Item("tNoRooms")
  loc_136912D:     var_A0 = CSng(var_DC.Value)
  loc_136913A:   End If
  loc_136913A:   GoTo loc_136913D
  loc_136913D:   ' Referenced from: 136913A
  loc_136913D: End If
  loc_1369141: Set var_E0 = Me.FGrid
  loc_136914A: If (arg_10 = 1) Then
  loc_136915F:   Set var_D4 = Me.Txt
  loc_1369165:   Call 0.Method_Proc_67_51_13698F00 (CInt(&H11), var_DC, CInt(3))
  loc_1369175:   Set var_E4 = Me.Txt
  loc_136917B:   Call 0.Method_Proc_67_51_13698F00 (CInt(&H12), var_E8)
  loc_13691AC:   var_118 = (3 + DateDiff("d", CVar(var_DC), CVar(var_E8), 1, 1))
  loc_13691B1:   var_AC = CInt(var_118)
  loc_13691C8:   var_AE = 1
  loc_13691CE: Else
  loc_13691D2:   var_AA = CInt(&H20)
  loc_13691D9:   var_AC = CInt(3)
  loc_13691DE:   var_AE = &HFF
  loc_13691E1: End If
  loc_13691F0: For var_120 = CLng(var_AA) To CLng(var_AC) Step CLng(var_AE): var_90 = var_120 'Long
  loc_13691FE:   If (var_90 = CLng(var_AA)) Then
  loc_1369204:     var_A8 = arg_C
  loc_136920A:   Else
  loc_1369226:     var_A8 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_A8)))
  loc_1369230:   End If
  loc_1369230:   var_140 = 0
  loc_1369268:   var_118 = CVar(CStr(Format(CDate(var_A8), "DDD"))) 'String
  loc_136926F:   LateIdCallSt
  loc_1369282:   var_140 = 1
  loc_13692BB:   var_108 = CVar(CStr(Format(var_A8, "dd/MM"))) 'String
  loc_13692C2:   LateIdCallSt
  loc_13692D3:   var_140 = 2
  loc_136930C:   var_108 = CVar(CStr(Format(var_A8, "dd/MM/yy"))) 'String
  loc_1369313:   LateIdCallSt
  loc_1369327: Next var_120 'Long
  loc_136933F: Me.FGrid.Rows = 4
  loc_136934C: var_90 = 3
  loc_1369359: var_130 = CVar(CLng(0)) 'Long
  loc_1369369: var_D0 = CVar(CStr((var_90 - 1))) 'String
  loc_1369370: LateIdCallSt
  loc_1369385: var_130 = CVar(CLng(1)) 'Long
  loc_136938A: var_150 = "<<Total>>"
  loc_1369393: LateIdCallSt
  loc_13693AA: var_150 = vbNullString
  loc_13693B3: LateIdCallSt
  loc_13693CC: Set var_D4 = Me.Txt
  loc_13693D2: Call 0.Method_Proc_67_51_13698F00 (CInt(&H11), var_DC, var_94, CLng(3), var_E0, var_150, CVar(CLng(2)))
  loc_13693E2: Set var_E4 = Me.Txt
  loc_13693E8: Call 0.Method_Proc_67_51_13698F00 (CInt(&H12), var_E8, var_90, var_E0, var_150)
  loc_1369419: var_118 = (3 + DateDiff("d", CVar(var_DC), CVar(var_E8), 1, 1))
  loc_1369431: For var_178 = var_90 To CLng(var_118): var_130 = var_178 'Long
  loc_1369446:   var_C0 = &HE69839
  loc_1369457:   var_C0 = &HFFFF
  loc_1369468:   var_C0 = True
  loc_1369487:   var_D0 = CVar(CStr(var_A0)) 'String
  loc_136948E:   LateIdCallSt
  loc_136949C: Next var_178 'Long
  loc_13694AA: var_90 = (var_90 + 1)
  loc_13694C3: unk_4EB7B5.Execute var_98, var_D0, -1
  loc_13694CE: Set var_88 = var_D4
  loc_13694EB: If (var_88.RecordCount > 0) Then
  loc_13694EE:   ' Referenced from: 1369803
  loc_13694FD:   If Not(var_88.EOF) Then
  loc_1369500:     var_C0 = vbNullString
  loc_1369509:     Proc_67_51_13698F02 = var_E0.Name
  loc_136951B:     var_130 = CVar(CLng(0)) 'Long
  loc_136952B:     var_D0 = CVar(CStr((var_90 - 1))) 'String
  loc_1369532:     LateIdCallSt
  loc_136957E:     var_E8 = var_88.Fields.Item("Rate2")
  loc_13695AC:     var_1A0 = CVar(Proc_6_45_EAD428(CStr(var_88.Fields.Item("Name").Value), &HF, CVar(CLng(1)), var_90, var_E0, var_88.Fields.Item("Name").Value)) 'String
  loc_13695DC:     var_1C0 = CVar(CStr(1 & Format(CVar(CStr(var_E8.Value)), "0.00"))) 'String
  loc_13695E3:     LateIdCallSt
  loc_1369635:     var_DC = var_88.Fields.Item("Code")
  loc_136964D:     LateIdCallSt
  loc_136967A:     Call 0.Method_Proc_67_51_13698F00 (CInt(&H11), var_DC, var_94, CLng(3), var_E0, CVar(CStr(var_DC.Value)), CVar(CLng(2)))
  loc_136968A:     Set var_E4 = Me.Txt
  loc_1369690:     Call 0.Method_Proc_67_51_13698F00 (CInt(&H12), var_E8, var_90, var_E0, var_1C0)
  loc_13696AF:     var_D0 = CVar(var_DC) 'Address
  loc_13696C1:     var_118 = (3 + DateDiff("d", var_D0, CVar(var_E8), 1, 1))
  loc_13696D9:     For var_1D8 = var_1A0 To CLng("0.00"): 1 = var_1D8 'Long
  loc_13696E9:       var_130 = CVar(CLng(2)) 'Long
  loc_1369721:       Proc_6_7_F25D88("0.00", CVar(CStr(Txt.DispID_41)), var_94, 2, Txt.DispID_41)
  loc_1369745:       var_190 = CVar("Select Sum(NoofRooms) As tRoomBusy From Booking Where RoomCat='" & CStr(var_D0) & "' And RoomType='RO' And ") 'String
  loc_1369762:       unk_4EB7B5.Execute CStr(var_190 & "0.00" & " Between ArrDate And DepDate"), var_1C0, -1
  loc_13697A3:       If (Me.Txt.RecordCount > 0) Then
  loc_13697B4:         var_140 = vbNullString
  loc_13697BD:         LateIdCallSt
  loc_13697C8:       Else
  loc_13697D6:         var_140 = vbNullString
  loc_13697DF:         LateIdCallSt
  loc_13697E7:       End If
  loc_13697EA:     Next var_1D8 'Long
  loc_13697F8:     var_90 = (var_90 + 1)
  loc_13697FE:     var_88.MoveNext
  loc_1369803:     GoTo loc_13694EE
  loc_1369806:   End If
  loc_1369819:   Me.FGrid.FixedRows = 4
  loc_1369821: End If
  loc_1369823: Set var_E0 = Nothing 
  loc_1369827: var_C0 = 2
  loc_1369830: var_140 = 0
  loc_136983D: Set var_D4 = Me.FGrid
  loc_1369843: LateIdCallSt
  loc_136985C: Me.FGrid.Redraw = True
  loc_136986D: If (var_90 = 1) Then
  loc_1369883:   Me.FGrid.Rows = 4
  loc_136989E:   Me.FGrid.FixedRows = 4
  loc_13698A6: End If
  loc_13698B9: Me.FGrid.Row = 4
  loc_13698D4: Me.FGrid.Col = 3
  loc_13698E1: Set var_88 = Nothing
  loc_13698E9: Set var_8C = Nothing
  loc_13698EC: Exit Sub
End Sub

Public Sub Proc_67_52_E31150
  'Data Table: 4EB7A8
  loc_E31130: Set var_88 = Me.TopCtrl1
  loc_E31136: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3114B: If ( = "Browse") Then
  loc_E3114E:   Exit Sub
  loc_E3114F: End If
  loc_E3114F: Exit Sub
End Sub

Public Sub Proc_67_53_F73E10(arg_C) 'F73E10
  'Data Table: 4EB7A8
  Dim var_9C As TextBox
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  loc_F73D00: If (arg_C = 0) Then
  loc_F73D0D:   Set var_98 = Me.TxtGrid
  loc_F73D13:   Call 0.Method_Proc_67_53_F73E100 (arg_C, var_9C)
  loc_F73D2B:   If Not(IsNumeric(CVar(var_9C))) Then
  loc_F73D3F:     Set var_98 = Me.TxtGrid
  loc_F73D45:     Call 0.Method_Proc_67_53_F73E100 (arg_C, var_9C)
  loc_F73D4D:     var_9C.Text = CStr(0)
  loc_F73D5C:   End If
  loc_F73D69:   Set var_98 = Me.TxtGrid
  loc_F73D6F:   Call 0.Method_Proc_67_53_F73E100 (arg_C, var_9C)
  loc_F73D8F:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73DA7:   var_138 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F73DD3:   var_158 = CVar(CStr(Format(CVar(var_9C.Text), "0"))) 'String
  loc_F73DDB:   Set var_16C = Me.FGrid
  loc_F73DE1:   LateIdCallSt
  loc_F73E05: End If
  loc_F73E0A: Proc_67_53_F73E10 = &HFF
End Sub

Public Sub Proc_67_54_F12A9C(arg_C) 'F12A9C
  'Data Table: 4EB7A8
  Dim var_98 As TextBox
  loc_F129AE: Set var_8C = Me.Txt
  loc_F129B4: Call 0.Method_Proc_67_54_F12A9CC (var_8E, var_86)
  loc_F129C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F129DA:   Set var_8C = Me.Txt
  loc_F129E0:   Call 0.Method_Proc_67_54_F12A9C0 (CInt(var_86), var_98)
  loc_F129E8:   var_98.Enabled = arg_C
  loc_F129F7: Next var_92 'Byte
  loc_F12A0A: Set var_8C = Me.Txt
  loc_F12A10: Call 0.Method_Proc_67_54_F12A9C0 (CInt(5), var_98)
  loc_F12A18: var_98.Enabled = False
  loc_F12A31: Set var_8C = Me.Txt
  loc_F12A37: Call 0.Method_Proc_67_54_F12A9C0 (CInt(4), var_98)
  loc_F12A3F: var_98.Enabled = False
  loc_F12A58: Set var_8C = Me.Txt
  loc_F12A5E: Call 0.Method_Proc_67_54_F12A9C0 (CInt(6), var_98)
  loc_F12A66: var_98.Enabled = False
  loc_F12A7F: Set var_8C = Me.Txt
  loc_F12A85: Call 0.Method_Proc_67_54_F12A9C0 (CInt(7), var_98)
  loc_F12A8D: var_98.Enabled = False
  loc_F12A99: Exit Sub
End Sub

Public Sub Proc_67_55_E9E698
  'Data Table: 4EB7A8
  Dim var_98 As TextBox
  loc_E9E61E: Set var_8C = Me.Txt
  loc_E9E624: Call 0.Method_Proc_67_55_E9E698C (var_8E, var_86)
  loc_E9E634: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9E64A:   Set var_8C = Me.Txt
  loc_E9E650:   Call 0.Method_Proc_67_55_E9E6980 (CInt(var_86), var_98)
  loc_E9E658:   var_98.Text = vbNullString
  loc_E9E674:   Set var_8C = Me.Txt
  loc_E9E67A:   Call 0.Method_Proc_67_55_E9E6980 (CInt(var_86), var_98)
  loc_E9E682:   var_98.Tag = vbNullString
  loc_E9E691: Next var_92 'Byte
  loc_E9E697: Exit Sub
End Sub

Public Sub Proc_67_56_EF75D8
  'Data Table: 4EB7A8
  loc_EF7518: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EF752A:   Me.DGCity.Visible = False
  loc_EF7532: End If
  loc_EF754E: If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_EF7560:   Me.DGTravelAg.Visible = False
  loc_EF7568: End If
  loc_EF7584: If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_EF7596:   Me.DGBusiness.Visible = False
  loc_EF759E: End If
  loc_EF75BA: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_EF75CC:   Me.DGMarketSeg.Visible = False
  loc_EF75D4: End If
  loc_EF75D4: Exit Sub
End Sub

Public Sub Proc_67_57_144B0D8
  'Data Table: 4EB7A8
  Dim Me As Recordset15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim unk_4EB7B5 As Connection15
  Dim var_88 As Recordset15
  loc_144A58C: On Error Goto loc_144B0CF
  loc_144A5A6: If (Me.RecordCount > 0) Then
  loc_144A5AF:   Set var_90 = global_60 
  loc_144A5EC:   Set var_AC = Me.Txt
  loc_144A5F2:   Call 0.Method_Proc_67_57_144B0D80 (CInt(0), var_B0)
  loc_144A5FA:   var_B0.Tag = CStr(var_90.Fields.Item("Code").Value)
  loc_144A649:   Set var_AC = Me.Txt
  loc_144A64F:   Call 0.Method_Proc_67_57_144B0D80 (CInt(0), var_B0)
  loc_144A657:   var_B0.Text = CStr(var_90.Fields.Item("Name").Value)
  loc_144A6A6:   Set var_AC = Me.Txt
  loc_144A6AC:   Call 0.Method_Proc_67_57_144B0D80 (CInt(1), var_B0)
  loc_144A6B4:   var_B0.Text = CStr(var_90.Fields.Item("Add1").Value)
  loc_144A703:   Set var_AC = Me.Txt
  loc_144A709:   Call 0.Method_Proc_67_57_144B0D80 (CInt(2), var_B0)
  loc_144A711:   var_B0.Text = CStr(var_90.Fields.Item("Add2").Value)
  loc_144A75D:   Set var_AC = Me.Txt
  loc_144A763:   Call 0.Method_Proc_67_57_144B0D80 (CInt(7), var_B0)
  loc_144A76B:   var_B0.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Type")))
  loc_144A7B5:   Set var_AC = Me.Txt
  loc_144A7BB:   Call 0.Method_Proc_67_57_144B0D80 (CInt(9), var_B0)
  loc_144A7C3:   var_B0.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("ConName")))
  loc_144A810:   Set var_AC = Me.Txt
  loc_144A816:   Call 0.Method_Proc_67_57_144B0D80 (CInt(8), var_B0)
  loc_144A81E:   var_B0.Text = CStr(var_90.Fields.Item("PhoneNo").Value)
  loc_144A86D:   Set var_AC = Me.Txt
  loc_144A873:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HA), var_B0)
  loc_144A87B:   var_B0.Text = CStr(var_90.Fields.Item("Comments1").Value)
  loc_144A8CA:   Set var_AC = Me.Txt
  loc_144A8D0:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HB), var_B0)
  loc_144A8D8:   var_B0.Text = CStr(var_90.Fields.Item("Comments2").Value)
  loc_144A927:   Set var_AC = Me.Txt
  loc_144A92D:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HC), var_B0)
  loc_144A935:   var_B0.Text = CStr(var_90.Fields.Item("Comments3").Value)
  loc_144A965:   var_A8 = var_90.Fields.Item("City")
  loc_144A976:   var_C4 = CStr(var_A8.Value)
  loc_144A984:   Set var_AC = Me.Txt
  loc_144A98A:   Call 0.Method_Proc_67_57_144B0D80 (CInt(3), var_B0)
  loc_144A992:   var_B0.Tag = var_C4
  loc_144A9C6:   Set var_94 = Me.Txt
  loc_144A9CC:   Call 0.Method_Proc_67_57_144B0D80 (CInt(3), var_A8, var_C4, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_144A9D4:   var_C0 = var_A8.Tag
  loc_144A9DD:   var_C8 = -1 & var_C4
  loc_144A9ED:   unk_4EB7B5.Execute var_C8 & "'", var_AC, 
  loc_144A9F8:   Set var_88 = var_AC
  loc_144AA24:   If (var_88.RecordCount > 0) Then
  loc_144AA5D:     Set var_AC = Me.Txt
  loc_144AA63:     Call 0.Method_Proc_67_57_144B0D80 (CInt(3), var_B0)
  loc_144AA6B:     var_B0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_144AAB5:     Set var_AC = Me.Txt
  loc_144AABB:     Call 0.Method_Proc_67_57_144B0D80 (CInt(4), var_B0)
  loc_144AAC3:     var_B0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Zipcode")))
  loc_144AB0D:     Set var_AC = Me.Txt
  loc_144AB13:     Call 0.Method_Proc_67_57_144B0D80 (CInt(5), var_B0)
  loc_144AB1B:     var_B0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")))
  loc_144AB46:     var_A8 = var_88.Fields.Item("CountryName")
  loc_144AB65:     Set var_AC = Me.Txt
  loc_144AB6B:     Call 0.Method_Proc_67_57_144B0D80 (CInt(6), var_B0)
  loc_144AB73:     var_B0.Text = Proc_6_38_E68A98(CVar(var_A8))
  loc_144AB8A:   Else
  loc_144AB98:     Set var_94 = Me.Txt
  loc_144AB9E:     Call 0.Method_Proc_67_57_144B0D80 (CInt(3), var_A8)
  loc_144ABA6:     var_A8.Text = vbNullString
  loc_144ABC0:     Set var_94 = Me.Txt
  loc_144ABC6:     Call 0.Method_Proc_67_57_144B0D80 (CInt(4), var_A8)
  loc_144ABCE:     var_A8.Text = vbNullString
  loc_144ABE8:     Set var_94 = Me.Txt
  loc_144ABEE:     Call 0.Method_Proc_67_57_144B0D80 (CInt(5), var_A8)
  loc_144ABF6:     var_A8.Text = vbNullString
  loc_144AC10:     Set var_94 = Me.Txt
  loc_144AC16:     Call 0.Method_Proc_67_57_144B0D80 (CInt(6), var_A8)
  loc_144AC1E:     var_A8.Text = vbNullString
  loc_144AC2A:   End If
  loc_144AC44:   var_A8 = var_90.Fields.Item("TravelAgency")
  loc_144AC55:   var_C4 = CStr(var_A8.Value)
  loc_144AC63:   Set var_AC = Me.Txt
  loc_144AC69:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HD), var_B0)
  loc_144AC71:   var_B0.Tag = var_C4
  loc_144ACA5:   Set var_94 = Me.Txt
  loc_144ACAB:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HD), var_A8, var_C4, "SELECT SubGroup.Name AS TravelAgName FROM SubGroup WHERE SubCode='")
  loc_144ACB3:   var_C0 = var_A8.Tag
  loc_144ACBC:   var_C8 = -1 & var_C4
  loc_144ACCC:   unk_4EB7B5.Execute var_C8 & "'", var_AC, 
  loc_144ACD7:   Set var_88 = var_AC
  loc_144AD03:   If (var_88.RecordCount > 0) Then
  loc_144AD20:     var_A8 = var_88.Fields.Item("TravelAgName")
  loc_144AD3F:     Set var_AC = Me.Txt
  loc_144AD45:     Call 0.Method_Proc_67_57_144B0D80 (CInt(&HD), var_B0)
  loc_144AD4D:     var_B0.Text = CStr(var_A8.Value)
  loc_144AD66:   Else
  loc_144AD74:     Set var_94 = Me.Txt
  loc_144AD7A:     Call 0.Method_Proc_67_57_144B0D80 (CInt(&HD), var_A8)
  loc_144AD82:     var_A8.Text = vbNullString
  loc_144AD8E:   End If
  loc_144ADA8:   var_A8 = var_90.Fields.Item("BusSource")
  loc_144ADB9:   var_C4 = CStr(var_A8.Value)
  loc_144ADC7:   Set var_AC = Me.Txt
  loc_144ADCD:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HE), var_B0)
  loc_144ADD5:   var_B0.Tag = var_C4
  loc_144AE09:   Set var_94 = Me.Txt
  loc_144AE0F:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HE), var_A8, var_C4, "SELECT BussSource.Name AS BussSourceName FROM BussSource WHERE CODE='")
  loc_144AE17:   var_C0 = var_A8.Tag
  loc_144AE20:   var_C8 = -1 & var_C4
  loc_144AE30:   unk_4EB7B5.Execute var_C8 & "'", var_AC, 
  loc_144AE3B:   Set var_88 = var_AC
  loc_144AE67:   If (var_88.RecordCount > 0) Then
  loc_144AE84:     var_A8 = var_88.Fields.Item("BussSourcename")
  loc_144AEA3:     Set var_AC = Me.Txt
  loc_144AEA9:     Call 0.Method_Proc_67_57_144B0D80 (CInt(&HE), var_B0)
  loc_144AEB1:     var_B0.Text = CStr(var_A8.Value)
  loc_144AECA:   Else
  loc_144AED8:     Set var_94 = Me.Txt
  loc_144AEDE:     Call 0.Method_Proc_67_57_144B0D80 (CInt(&HE), var_A8)
  loc_144AEE6:     var_A8.Text = vbNullString
  loc_144AEF2:   End If
  loc_144AF0C:   var_A8 = var_90.Fields.Item("MarketSeg")
  loc_144AF1D:   var_C4 = CStr(var_A8.Value)
  loc_144AF2B:   Set var_AC = Me.Txt
  loc_144AF31:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HF), var_B0)
  loc_144AF39:   var_B0.Tag = var_C4
  loc_144AF6D:   Set var_94 = Me.Txt
  loc_144AF73:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&HF), var_A8, var_C4, "SELECT MarketSeg.Name AS MarketSegName FROM MarketSeg WHERE Code='")
  loc_144AF7B:   var_C0 = var_A8.Tag
  loc_144AF84:   var_C8 = -1 & var_C4
  loc_144AF94:   unk_4EB7B5.Execute var_C8 & "'", var_AC, 
  loc_144AF9F:   Set var_88 = var_AC
  loc_144AFCB:   If (var_88.RecordCount > 0) Then
  loc_144AFE8:     var_A8 = var_88.Fields.Item("MarketSegName")
  loc_144B007:     Set var_AC = Me.Txt
  loc_144B00D:     Call 0.Method_Proc_67_57_144B0D80 (CInt(&HF), var_B0)
  loc_144B015:     var_B0.Text = CStr(var_A8.Value)
  loc_144B02E:   Else
  loc_144B03C:     Set var_94 = Me.Txt
  loc_144B042:     Call 0.Method_Proc_67_57_144B0D80 (CInt(&HF), var_A8)
  loc_144B04A:     var_A8.Text = vbNullString
  loc_144B056:   End If
  loc_144B08F:   Set var_AC = Me.Txt
  loc_144B095:   Call 0.Method_Proc_67_57_144B0D80 (CInt(&H10), var_B0)
  loc_144B09D:   var_B0.Text = CStr(var_90.Fields.Item("GroupType").Value)
  loc_144B0B5:   Set var_90 = Nothing 
  loc_144B0BC: Else
  loc_144B0BC:   Call Proc_67_55_E9E698()
  loc_144B0C1: End If
  loc_144B0C1: Call Proc_67_56_EF75D8()
  loc_144B0CB: Set var_88 = Nothing
  loc_144B0CE: Exit Sub
  loc_144B0CF: ' Referenced from: 144A58C
  loc_144B0CF: Proc_6_60_E62BC4()
  loc_144B0D4: Exit Sub
End Sub

Public Sub Proc_67_58_143EC94(arg_C, arg_10) '143EC94
  'Data Table: 4EB7A8
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_B6 As Integer
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_B8 As Integer
  Dim var_BA As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_140 As String
  Dim unk_4EB7B5 As Connection15
  Dim var_138 As String
  Dim var_EC As Variant
  Dim var_124 As Variant
  Dim var_1C0 As Variant
  Dim var_B4 As Double
  Dim var_1D0 As Variant
  Dim var_258 As Variant
  Dim var_E4 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_1A0 As Variant
  Dim var_238 As Variant
  Dim var_278 As Variant
  Dim var_190 As Variant
  Dim var_C4 As Recordset15
  Dim var_F0 As Variant
  loc_143E1CB: Me.FGrid1.FixedCols = 0
  loc_143E1E6: Me.FGrid1.FixedRows = 1
  loc_143E201: Me.FGrid1.RowHeightMin = &H1F4
  loc_143E218: Me.FGrid1.Redraw = False
  loc_143E226: If (arg_10 = 1) Then
  loc_143E22D:   var_B6 = CInt(5)
  loc_143E23B:   Set var_E8 = Me.Txt
  loc_143E241:   Call 0.Method_Proc_67_58_143EC940 (CInt(&H11), var_EC)
  loc_143E251:   Set var_F0 = Me.Txt
  loc_143E257:   Call 0.Method_Proc_67_58_143EC940 (CInt(&H12), var_F4)
  loc_143E288:   var_134 = (5 + DateDiff("d", CVar(var_EC), CVar(var_F4), 1, 1))
  loc_143E28D:   var_B8 = CInt(var_134)
  loc_143E2B8:   Set var_E8 = Me.Txt
  loc_143E2BE:   Call 0.Method_Proc_67_58_143EC940 (CInt(&H11), var_EC, arg_C)
  loc_143E2CE:   Set var_F0 = Me.Txt
  loc_143E2D4:   Call 0.Method_Proc_67_58_143EC940 (CInt(&H12), var_F4, 1)
  loc_143E2F4:   var_104 = CVar(var_EC) 'Address
  loc_143E306:   var_134 = (CDate(arg_C) + DateDiff("d", var_104, CVar(var_F4), 1, 1))
  loc_143E30C:   var_94 = CDate(var_134)
  loc_143E324: Else
  loc_143E328:   var_B6 = CInt(&H22)
  loc_143E32F:   var_B8 = CInt(5)
  loc_143E334:   var_BA = &HFF
  loc_143E33F:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_143E34A:   var_94 = CDate((arg_C + CDbl(1)))
  loc_143E34D: End If
  loc_143E36B: Call Proc_67_59_FEF02C(CStr(arg_C), var_138, "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.ShortName as Category,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat)Left Join RateList RL on RC.Code=RL.RoomCat Where R.Type='RO' And R.Type='RO' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} APPEND ({SELECT r.Code as RoomNo, ", var_104, -1, var_E8, var_94)
  loc_143E37B: var_140 = arg_C & var_138 & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code)Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOcc RO on RO.Docid=GF.DocId Where R.Type='RO' or r.Type is Null And (RO.Type<>'C') Group By r.Type,B.RoomCat,r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_143E384: unk_4EB7B5.Execute var_140, var_BA, var_B8
  loc_143E3A7: CVarUnk
  loc_143E3AC: VerifyVarObj
  loc_143E3B2: Set var_E8 = Me.FGrid1
  loc_143E3B8: LateIdStAd
  loc_143E3ED: For var_148 = 1 To (CLng(Me.FGrid1.Rows) - 1): var_A0 = var_148 'Long
  loc_143E40C:   Call 0.Method_Proc_67_58_143EC940 (CInt(&H11), var_EC, var_A4, 5, 1, Me.Txt)
  loc_143E41C:   Set var_F0 = Me.Txt
  loc_143E422:   Call 0.Method_Proc_67_58_143EC940 (CInt(&H12), var_F4, Me.Txt, var_B6)
  loc_143E452:   var_134 = (5 + DateDiff("d", CVar(var_EC), CVar(var_F4), 1, 1))
  loc_143E46A:   For var_150 = var_B8 To CLng(var_134): var_94 = var_150 'Long
  loc_143E4B4:     If (InStr(var_A4, CStr(Me.FGrid1.TextMatrix)), "*", 0) <> 0) Then
  loc_143E4C8:       Me.FGrid1.Row = var_A0
  loc_143E4E1:       Me.FGrid1.Col = var_A4
  loc_143E4FC:       Me.FGrid1.CellBackColor = &HFF00
  loc_143E517:       Me.FGrid1.CellForeColor = 0
  loc_143E52F:       Me.FGrid1.CellFontName = "Arial Narrow"
  loc_143E549:       Me.FGrid1.CellFontSize = CVar(CDbl(8))
  loc_143E5B0:       var_134 = CVar((Len(CStr(Me.FGrid1.TextMatrix))) - 1)) 'Long
  loc_143E5CC:       var_1C0 = CVar(CStr(Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, var_134))) 'String
  loc_143E5D4:       Set var_F0 = Me.FGrid1
  loc_143E5DA:       LateIdCallSt
  loc_143E600:     Else
  loc_143E634:       If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_143E648:         Me.FGrid1.Row = var_A0
  loc_143E661:         Me.FGrid1.Col = var_A4
  loc_143E67C:         Me.FGrid1.CellBackColor = &HE69839
  loc_143E697:         Me.FGrid1.CellForeColor = &HFFFFFF
  loc_143E6AF:         Me.FGrid1.CellFontName = "Arial Narrow"
  loc_143E6C9:         Me.FGrid1.CellFontSize = CVar(CDbl(8))
  loc_143E6D1:       End If
  loc_143E6D1:     End If
  loc_143E6D4:   Next var_150 'Long
  loc_143E6DC: Next var_148 'Long
  loc_143E6F0: For var_1D8 = CLng(var_B6) To CLng(var_B8) Step CLng(var_BA): var_A0 = var_1D8 'Long
  loc_143E6FE:   If (var_A0 = CLng(var_B6)) Then
  loc_143E704:     var_B4 = arg_C
  loc_143E70A:   Else
  loc_143E726:     var_B4 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B4)))
  loc_143E730:   End If
  loc_143E730:   var_1D0 = 1
  loc_143E742:   var_258 = CVar((var_A0 - 4)) 'Long
  loc_143E773:   var_134 = (Format(CDate(var_B4), "DDD") + vbCr)
  loc_143E797:   var_1C0 = Format(var_B4, "dd/MM")
  loc_143E79F:   var_1E8 = (1 + var_1C0)
  loc_143E7B3:   var_208 = (var_1E8 + Space(5))
  loc_143E7D7:   var_228 = Format(var_B4, "dd/MM/yy")
  loc_143E7DF:   var_238 = (1 + var_228)
  loc_143E7E4:   var_278 = CVar(CStr(var_238)) 'String
  loc_143E7EC:   Set var_E8 = Me.FGrid1
  loc_143E7F2:   LateIdCallSt
  loc_143E823:   var_D4 = CVar((var_A0 - 4)) 'Long
  loc_143E828:   var_160 = 1
  loc_143E831:   var_180 = &H1F4
  loc_143E83E:   Set var_E8 = Me.FGrid1
  loc_143E844:   LateIdCallSt
  loc_143E852: Next var_1D8 'Long
  loc_143E884: var_1A0 = arg_C
  loc_143E88C: Proc_6_7_F25D88(var_1C0)
  loc_143E89C: Proc_6_7_F25D88(var_208, var_94)
  loc_143E8BF: var_190 = "Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") & ",FromDate,Todate) as Days,Reasons From RoomBlockOut Where Type='O' And FromDate Between " 
  loc_143E8E4: unk_4EB7B5.Execute CStr(var_190 & var_1C0 & " And " & var_208), var_228, -1
  loc_143E8EF: Set var_C4 = var_E8
  loc_143E927: If (var_C4.RecordCount > 0) Then
  loc_143E92A:   ' Referenced from: 143EB9C
  loc_143E939:   If Not(var_C4.EOF) Then
  loc_143E963:     For var_298 = 1 To (CLng(Me.FGrid1.Rows) - 1): var_A0 = var_298 'Long
  loc_143E970:       var_E4 = 0
  loc_143E9D0:       If (CVar(CStr(Me.FGrid1.TextMatrix))) = var_C4.Fields.Item(0).Value) Then
  loc_143EA11:         For var_2A0 = 0 To CLng(var_C4.Fields.Item(2).Value): var_A4 = var_2A0 'Long
  loc_143EA66:           var_124 = (DateDiff("d", arg_C, var_C4.Fields.Item(1).Value, 1, 1) + 1)
  loc_143EA6F:           var_134 = (CVar(CStr(Me.FGrid1.TextMatrix))) + 4)
  loc_143EA7A:           var_190 = ("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") + CVar(var_A4))
  loc_143EA8F:           Me.FGrid1.Col = CVar(CLng(var_190))
  loc_143EABB:           Me.FGrid1.Row = var_A0
  loc_143EAD6:           Me.FGrid1.CellBackColor = &H40C0
  loc_143EAF1:           Me.FGrid1.CellForeColor = &HFFFF
  loc_143EB09:           Me.FGrid1.CellFontName = "Webdings"
  loc_143EB40:           var_114 = ("@  " + var_C4.Fields.Item(3).Value)
  loc_143EB53:           Me.FGrid1.Text = CVar(CStr(DateDiff("d", arg_C, var_C4.Fields.Item(1).Value, 1, 1)))
  loc_143EB7C:           Me.FGrid1.CellFontSize = CVar(CDbl(&H14))
  loc_143EB87:         Next var_2A0 'Long
  loc_143EB8C:       End If
  loc_143EB8F:     Next var_298 'Long
  loc_143EB97:     var_C4.MoveNext
  loc_143EB9C:     GoTo loc_143E92A
  loc_143EB9F:   End If
  loc_143EB9F: End If
  loc_143EB9F: var_D4 = 0
  loc_143EBA8: var_160 = &H1F4
  loc_143EBB5: Set var_E8 = Me.FGrid1
  loc_143EBBB: LateIdCallSt
  loc_143EBC6: var_D4 = 0
  loc_143EBCF: var_160 = 1
  loc_143EBD8: var_180 = 0
  loc_143EBE5: Set var_E8 = Me.FGrid1
  loc_143EBEB: LateIdCallSt
  loc_143EC09: Me.FGrid1.FixedCols = 4
  loc_143EC24: Me.FGrid1.Col = 5
  loc_143EC3F: Me.FGrid1.Row = 1
  loc_143EC47: var_D4 = 0
  loc_143EC50: var_160 = False
  loc_143EC59: Set var_E8 = Me.FGrid1
  loc_143EC5F: LateIdCallSt
  loc_143EC78: Me.FGrid1.Redraw = True
  loc_143EC85: Set var_98 = Nothing
  loc_143EC8D: Set var_9C = Nothing
  loc_143EC90: Exit Sub
End Sub

Public Sub Proc_67_59_FEF02C(arg_C) 'FEF02C
  'Data Table: 4EB7A8
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_104 As String
  Dim var_134 As Date
  Dim var_174 As Variant
  Dim var_194 As Date
  Dim var_1C4 As String
  Dim var_1F4 As Date
  Dim var_21C As String
  loc_FEEEA6: Set var_94 = Me.Txt
  loc_FEEEAC: Call 0.Method_Proc_67_59_FEF02C0 (CInt(&H11), var_98)
  loc_FEEEBC: Set var_9C = Me.Txt
  loc_FEEEC2: Call 0.Method_Proc_67_59_FEF02C0 (CInt(&H12), var_A0)
  loc_FEEED4: var_C0 = CVar(var_A0) 'Address
  loc_FEEEFE: For var_D4 = 0 To CInt(DateDiff("d", CVar(var_98), var_C0, 1, 1)): var_8A = var_D4 'Integer
  loc_FEEF19:   var_B0 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FEEF20:   Proc_6_7_F25D88(var_C0, CVar(var_98))
  loc_FEEF2C:   var_104 = " and B.ArrDate+B.NoDays-1>="
  loc_FEEF40:   var_134 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FEEF47:   Proc_6_7_F25D88(var_144, var_134)
  loc_FEEF58:   var_174 = CVar(var_88 & "Max(Case When RO.ChkInDate is null Then Case When B.ArrDate<=") & var_C0 & var_104 & var_144 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDate<=" 
  loc_FEEF67:   var_194 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FEEF6E:   Proc_6_7_F25D88(var_1A4, var_194)
  loc_FEEF7A:   var_1C4 = " and RO.DEPDATE-1>="
  loc_FEEF8E:   var_1F4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FEEF95:   Proc_6_7_F25D88(var_204, var_1F4)
  loc_FEEFAD:   var_21C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_FEEFBC:   var_88 = CStr(var_174 & var_1A4 & var_1C4 & var_204 & CVar(var_21C & ","))
  loc_FEEFF0: Next var_D4 'Integer
  loc_FEEFFF: var_B0 = CVar((Len(var_88) - 1)) 'Long
  loc_FEF01C: var_88 = CStr(Mid(var_88, 1, CVar(var_98)))
  loc_FEF026: Proc_67_59_FEF02C = 
End Sub
