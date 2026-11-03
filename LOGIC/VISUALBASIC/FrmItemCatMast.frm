VERSION 5.00
Begin VB.Form FrmItemCatMast
  Caption = "Category/Charge Master"
  BackColor = &HFFC0C0&
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
  ClientWidth = 12855
  ClientHeight = 8805
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12855
    Height = 450
    TabIndex = 31
  End
  Begin PictureBox Picture4
    Picture = "FrmItemCatMast.frx":0
    Left = 11565
    Top = 1905
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 26
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "FrmItemCatMast.frx":34E
    Left = 11565
    Top = 1635
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 25
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "FrmItemCatMast.frx":69C
    ForeColor = &HC00000&
    Left = 10470
    Top = 1005
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 24
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture3
    Picture = "FrmItemCatMast.frx":9EA
    Left = 11565
    Top = 555
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 23
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSFlexGrid FGPoint
    Left = 8760
    Top = 2280
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGRest
    Left = 7560
    Top = 4680
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin DataGrid DGSaleTax
    Left = 8040
    Top = 6465
    Width = 4230
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 8010
    Top = 2445
    Width = 5175
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5025
    Top = 2940
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 13
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
  Begin DataGrid DGSaleAc
    Left = 7785
    Top = 3945
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin Frame FrmList
    ForeColor = &HC00000&
    Left = 8160
    Top = 1860
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 120
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 19
    End
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5025
    Top = 2940
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 13
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
    ForeColor = &HC00000&
    Left = 3090
    Top = 2940
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 2310
    Width = 4300
    Height = 285
    TabIndex = 0
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 3255
    Width = 4300
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 3570
    Width = 4300
    Height = 285
    TabIndex = 7
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
    ForeColor = &HC00000&
    Left = 9750
    Top = 1350
    Width = 1290
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 2
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 2625
    Width = 4300
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin Label LblCatType
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4545
    Top = 2970
    Width = 465
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 29
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 5760
    Width = 2790
    Height = 285
    TabIndex = 28
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
    Left = 1065
    Top = 5760
    Width = 2880
    Height = 255
    TabIndex = 27
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
  Begin Label Label2
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4545
    Top = 2985
    Width = 435
    Height = 210
    TabIndex = 21
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
  Begin Label LblName
    Caption = "Category/Charge"
    Index = 5
    ForeColor = &HC00000&
    Left = 1425
    Top = 2940
    Width = 1605
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1425
    Top = 2310
    Width = 1185
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &HC00000&
    Left = 11595
    Top = 1095
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Caption = "Post in Account"
    Index = 4
    ForeColor = &HC00000&
    Left = 1425
    Top = 3255
    Width = 1470
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
    Caption = "Tax Structure"
    Index = 3
    ForeColor = &HC00000&
    Left = 1425
    Top = 3570
    Width = 1290
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
    Caption = "Round Off"
    Index = 2
    ForeColor = &HC00000&
    Left = 8085
    Top = 1350
    Width = 945
    Height = 240
    Visible = 0   'False
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
    Caption = "Category Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1425
    Top = 2625
    Width = 1485
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmItemCatMast"


Private Sub DGSaleTax_UnknownEvent_9 'F4A3A4
  'Data Table: 4E2D94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A29B: Me.DGSaleTax.Visible = False
  loc_F4A2BA: If (Me.RecordCount > 0) Then
  loc_F4A2F9:   Set var_B4 = Me.Txt
  loc_F4A2FF:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4A307:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4A33A:   var_B0 = Me.Fields.Item("Code")
  loc_F4A359:   Set var_B4 = Me.Txt
  loc_F4A35F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4A367:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4A37D: End If
  loc_F4A388: Set var_A8 = Me.Txt
  loc_F4A38E: Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4))
  loc_F4A396: var_B0.SetFocus
  loc_F4A3A2: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_1F 'E6F450
  'Data Table: 4E2D94
  loc_E6F40E: Proc_6_153_E91194(Me.DGSaleTax, arg_14)
  loc_E6F425: Set var_8C = Me.FGPoint
  loc_E6F441: Proc_6_138_106D6F8(Me.DGSaleTax, global_68, CInt(4))
  loc_E6F44F: Exit Sub
End Sub

Private Sub Form_Load() '13241A0
  'Data Table: 4E2D94
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_4E2DAE As Connection15
  loc_1323A1C: On Error Goto loc_132415A
  loc_1323A2E: Me.LblUser.Left = CDbl(13500)
  loc_1323A45: Me.LblUser.Top = CDbl(7800)
  loc_1323A5C: Me.LblLDt.Top = CDbl(8160)
  loc_1323A73: Me.LblLDt.Left = CDbl(13500)
  loc_1323A82: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1323A95: Set var_88 = Me.Txt
  loc_1323A9B: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1323ABA: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1323AD6: Set var_B4 = Me.Txt
  loc_1323ADC: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1323AF7: Set var_88 = Me.Txt
  loc_1323AFD: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1323B15: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1323B24: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1323B40: Set var_88 = Me.TopCtrl1
  loc_1323B46: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1323B54: Call 0.Method_arg_50 (var_C4)
  loc_1323B5C: var_D4 = CVar(var_C4) 'String
  loc_1323B64: Set var_88 = Me.TopCtrl1
  loc_1323B6A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_1323B83: Set var_88 = Me.Txt
  loc_1323B89: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1323BA8: Me.DGRest.Left = CVar(var_8C.Left)
  loc_1323BC4: Set var_B4 = Me.Txt
  loc_1323BCA: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_1323BE5: Set var_88 = Me.Txt
  loc_1323BEB: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1323C03: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1323C12: Me.DGRest.Top = CVar(var_8C.Left)
  loc_1323C32: Set var_88 = Me.Txt
  loc_1323C38: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1323C57: Me.DGSaleAc.Left = CVar(var_8C.Left)
  loc_1323C73: Set var_B4 = Me.Txt
  loc_1323C79: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_1323C94: Set var_88 = Me.Txt
  loc_1323C9A: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1323CB2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1323CC1: Me.DGSaleAc.Top = CVar(var_8C.Left)
  loc_1323CE1: Set var_88 = Me.Txt
  loc_1323CE7: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1323D06: Me.DGSaleTax.Left = CVar(var_8C.Left)
  loc_1323D22: Set var_B4 = Me.Txt
  loc_1323D28: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_1323D49: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1323D61: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1323D70: Me.DGSaleTax.Top = CVar(var_8C.Left)
  loc_1323D8D: If (global_52 = "Banquet") Then
  loc_1323DAB:   var_D8 = "SELECT ItemCatMast.Code, ItemCatMast.Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  AND ItemCatMast.RestCode='"
  loc_1323DC2:   unk_4E2DAE.Execute var_D8 & MemVar_1F92078 & "BANQ' ORDER BY ItemCatMast.Name", var_D4, -1
  loc_1323DD3:   Set global_60 = Me.Txt
  loc_1323DF5:   CVarUnk
  loc_1323DFA:   VerifyVarObj
  loc_1323E00:   Set var_88 = Me.DGHelp
  loc_1323E06:   LateIdStAd
  loc_1323E17: Else
  loc_1323E2B:   var_C4 = "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as DepartmentName FROM ItemCatMast LEFT JOIN Depart ON ItemCatMast.RestCode = Depart.Code WHERE (ItemcatMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1323E3B:   unk_4E2DAE.Execute var_C4 & "' or ItemCatMast.LOGSITE_CODE='HO') ORDER BY ItemCatMast.Name", var_D4, -1
  loc_1323E4C:   Set global_60 = var_88
  loc_1323E6A:   CVarUnk
  loc_1323E6F:   VerifyVarObj
  loc_1323E75:   Set var_88 = Me.DGHelp
  loc_1323E7B:   LateIdStAd
  loc_1323E89: End If
  loc_1323E94: If (global_52 = "Banquet") Then
  loc_1323EAB:   var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_1323EBB:   unk_4E2DAE.Execute var_C4 & "' or IC.LOGSITE_CODE='HO')  and RestType in ('Banquet') and D.OutletYN='Y' ORDER BY D.Name,IC.Name", var_D4, -1
  loc_1323ECC:   Set global_56 = var_88
  loc_1323EE4: Else
  loc_1323EF8:   var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_1323F08:   unk_4E2DAE.Execute var_C4 & "' or IC.LOGSITE_CODE='HO') AND RestType not in ('Banquet') and D.OutletYN='Y' ORDER BY D.Name,IC.Name", var_D4, -1
  loc_1323F19:   Set global_56 = var_88
  loc_1323F2E: End If
  loc_1323F49: var_D8 = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and  (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Left(MainGrCodeS,3) IN ('230','240','250','260','270','280') Order by Name"
  loc_1323F52: unk_4E2DAE.Execute var_D8, var_D4, -1
  loc_1323F63: Set global_64 = var_88
  loc_1323F81: CVarUnk
  loc_1323F86: VerifyVarObj
  loc_1323F92: LateIdStAd
  loc_1323FBB: var_D8 = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_1323FC4: unk_4E2DAE.Execute var_D8, var_D4, -1
  loc_1323FD5: Set global_68 = Me.DGSaleAc
  loc_1323FF3: CVarUnk
  loc_1323FF8: VerifyVarObj
  loc_1324004: LateIdStAd
  loc_132401D: If (global_52 = "Banquet") Then
  loc_132403B:   var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Depart.RestType='Banquet' and OutletYN='Y' Order by Name"
  loc_1324044:   unk_4E2DAE.Execute var_D8, var_D4, -1
  loc_1324055:   Set global_72 = Me.DGSaleTax
  loc_1324073:   CVarUnk
  loc_1324078:   VerifyVarObj
  loc_132407E:   Set var_88 = Me.DGRest
  loc_1324084:   LateIdStAd
  loc_1324095: Else
  loc_13240B0:   var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  AND RestType<>'Banquet' and OutletYN='Y' Order by Name"
  loc_13240B9:   unk_4E2DAE.Execute var_D8, var_D4, -1
  loc_13240CA:   Set global_72 = var_88
  loc_13240E8:   CVarUnk
  loc_13240ED:   VerifyVarObj
  loc_13240F3:   Set var_88 = Me.DGRest
  loc_13240F9:   LateIdStAd
  loc_1324107: End If
  loc_1324113: Set var_88 = Me
  loc_132411C: var_C4 = "INI"
  loc_132412A: Call Proc_51_36_E7A17C(Proc_5_1_100CB50(var_C4, var_88, global_56, var_88, global_72, var_88, var_88, global_72), var_88, var_88, global_68, var_88)
  loc_132413E: Call 0.Method_arg_160 (var_88, var_88, global_64)
  loc_132414C: Call 0.Method_arg_164 (var_88, var_88)
  loc_1324154: Call Proc_51_38_1401A14(var_88)
  loc_1324159: Exit Sub
  loc_132415A: ' Referenced from: 1323A1C
  loc_1324162: Set var_88 = Err()
  loc_1324168: Call 0.Method_arg_2C (var_C4)
  loc_1324189: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_132419C: Exit Sub
  loc_132419D: Exit Sub
End Sub

Private Sub Form_Resize() 'F155F8
  'Data Table: 4E2D94
  Dim var_8C As Label
  Dim var_A0 As TextBox
  loc_F1550E: Call 0.Method_arg_50 (var_88)
  loc_F15520: Me.LblFormCaption.Caption = var_88
  loc_F15539: Me.LblFormCaption.Left = CDbl(0)
  loc_F15545: Set var_A0 = Me.TopCtrl1
  loc_F1554B: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_F15558: Set var_8C = Me.TopCtrl1
  loc_F1555E: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_F15578: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_F15593: Call 0.Method_arg_100 (var_B8)
  loc_F155A5: Me.LblFormCaption.Width = var_B8
  loc_F155B8: If (global_52 = "Banquet") Then
  loc_F155BB:   Exit Sub
  loc_F155BC: End If
  loc_F155CA: Set var_8C = Me.Txt
  loc_F155D0: Call 0.Method_Form_Resize0 (CInt(5), var_A0)
  loc_F155EF: If (var_A0.Text = "Category") Then
  loc_F155F2:   GoTo loc_F155F5
  loc_F155F5:   ' Referenced from: F155F2
  loc_F155F5: End If
  loc_F155F5: Exit Sub
  loc_F155F6: arg_1C5C = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C678
  'Data Table: 4E2D94
  loc_E6C627: Set global_56 = Nothing
  loc_E6C639: Set global_64 = Nothing
  loc_E6C64B: Set global_68 = Nothing
  loc_E6C65D: Set global_72 = Nothing
  loc_E6C66F: Set global_60 = Nothing
  loc_E6C676: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AF70
  'Data Table: 4E2D94
  loc_E8AF0C: On Error Goto loc_E8AF2C
  loc_E8AF23: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8AF2B: Exit Sub
  loc_E8AF2C: ' Referenced from: E8AF0C
  loc_E8AF34: Set var_88 = Err()
  loc_E8AF3A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AF5B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AF6E: Exit Sub
  loc_E8AF6F: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3E744
  'Data Table: 4E2D94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E63B: Me.DGHelp.Visible = False
  loc_F3E65A: If (Me.RecordCount > 0) Then
  loc_F3E699:   Set var_B4 = Me.Txt
  loc_F3E69F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E6A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3E6DA:   var_B0 = Me.Fields.Item("Code")
  loc_F3E6F9:   Set var_B4 = Me.Txt
  loc_F3E6FF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E707:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E71D: End If
  loc_F3E728: Set var_A8 = Me.Txt
  loc_F3E72E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3E736: var_B0.SetFocus
  loc_F3E742: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6F16C
  'Data Table: 4E2D94
  loc_E6F12A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6F141: Set var_8C = Me.FGPoint
  loc_E6F15D: Proc_6_138_106D6F8(Me.DGHelp, global_60, CInt(0))
  loc_E6F16B: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'F4BDC4
  'Data Table: 4E2D94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BCBB: Me.DGSaleAc.Visible = False
  loc_F4BCDA: If (Me.RecordCount > 0) Then
  loc_F4BD19:   Set var_B4 = Me.Txt
  loc_F4BD1F:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4BD27:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4BD5A:   var_B0 = Me.Fields.Item("Code")
  loc_F4BD79:   Set var_B4 = Me.Txt
  loc_F4BD7F:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4BD87:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4BD9D: End If
  loc_F4BDA8: Set var_A8 = Me.Txt
  loc_F4BDAE: Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3))
  loc_F4BDB6: var_B0.SetFocus
  loc_F4BDC2: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_1F 'E6F328
  'Data Table: 4E2D94
  loc_E6F2E6: Proc_6_153_E91194(Me.DGSaleAc, arg_14)
  loc_E6F2FD: Set var_8C = Me.FGPoint
  loc_E6F319: Proc_6_138_106D6F8(Me.DGSaleAc, global_64, CInt(3))
  loc_E6F327: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAA44C
  'Data Table: 4E2D94
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAA3C0: On Error Goto loc_EAA446
  loc_EAA3D0: Me.LblUser.Caption = vbNullString
  loc_EAA3E5: Me.LblLDt.Caption = vbNullString
  loc_EAA410: Call Proc_51_36_E7A17C(Proc_5_1_100CB50("ADD", Me))
  loc_EAA41B: Call Proc_51_37_EE1FE4(global_56)
  loc_EAA42B: Set var_88 = Me.Txt
  loc_EAA431: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAA439: var_94.SetFocus
  loc_EAA445: Exit Sub
  loc_EAA446: ' Referenced from: EAA3C0
  loc_EAA446: Proc_6_60_E62BC4(var_94)
  loc_EAA44B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC3D2C
  'Data Table: 4E2D94
  loc_EC3C94: On Error Goto loc_EC3D24
  loc_EC3CCE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC3CDD:   Set var_110 = Me
  loc_EC3CF4:   Call Proc_51_36_E7A17C(Proc_5_1_100CB50("INI", var_110))
  loc_EC3CFF:   Call Proc_51_40_F6BCC0(global_56)
  loc_EC3D04:   Call Proc_51_38_1401A14()
  loc_EC3D0C: Else
  loc_EC3D12:   Call 0.Method_arg_1E8 (var_110)
  loc_EC3D1A:   Call var_110.SetFocus
  loc_EC3D23: End If
  loc_EC3D23: Exit Sub
  loc_EC3D24: ' Referenced from: EC3C94
  loc_EC3D24: Proc_6_60_E62BC4()
  loc_EC3D29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '128C160
  'Data Table: 4E2D94
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim unk_4E2DAE As Connection15
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_128BBB0: On Error Goto loc_128C110
  loc_128BBC1: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_128BBC4:   Exit Sub
  loc_128BBC5: End If
  loc_128BBD3: Set var_9C = Me.Txt
  loc_128BBD9: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_A0)
  loc_128BBF8: If (var_A0.Text = "Category") Then
  loc_128BC10:   var_9C = Me.Fields
  loc_128BC20:   var_C8 = var_9C.Item("Code").Value
  loc_128BC2D:   var_D4 = "Item Master"
  loc_128BC75:   If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "ItemCatCode", CStr(var_C8)) = 0) Then
  loc_128BC78:     Exit Sub
  loc_128BC79:   End If
  loc_128BC79: End If
  loc_128BCA0: unk_4E2DAE.Execute "Select Code From RevMast Where Name='" & global_76 & "'", var_C8, -1
  loc_128BCAB: Set var_98 = var_9C
  loc_128BCC1: var_D0 = var_98.RecordCount
  loc_128BCCF: If (var_D0 > 0) Then
  loc_128BD17:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'" 
  loc_128BD25:   unk_4E2DAE.Execute CStr(var_118), var_138, -1
  loc_128BD86:   If (var_13C.Fields.Item(0).Value > 0) Then
  loc_128BDAA:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_118, var_138)
  loc_128BDBA:     Exit Sub
  loc_128BDBB:   End If
  loc_128BDBB: End If
  loc_128BDF2: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_128BDFE:   unk_4E2DAE.BeginTrans var_D0
  loc_128BE14:   var_94 = Me.Bookmark 'Variant
  loc_128BE60:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_128BE6E:   unk_4E2DAE.Execute CStr(var_118), var_138, -1
  loc_128BEAF:   var_C8 = Me.Fields.Item("Code").Value
  loc_128BEB9:   var_168 = 0
  loc_128BECC:   var_160 = 0
  loc_128BED7:   var_15C = 0
  loc_128BEEA:   var_154 = 0
  loc_128BEF5:   var_150 = 0
  loc_128BF08:   var_148 = 0
  loc_128BF51:   Proc_154_5_10E33A4(MemVar_1F92044, "ItemCatMast", "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_128BFA0:   unk_4E2DAE.Execute "Delete From RevMast Where Name='" & global_76 & "'", var_C8, -1
  loc_128BFB7:   var_160 = 0
  loc_128BFCA:   var_15C = 0
  loc_128BFD5:   var_154 = 0
  loc_128BFE8:   var_150 = 0
  loc_128BFF3:   var_148 = 0
  loc_128C006:   var_144 = 0
  loc_128C044:   var_A4 = "RevMast"
  loc_128C04D:   Proc_154_5_10E33A4(MemVar_1F92044, var_A4, "Name", &HC8, global_76, 0, 0, 0)
  loc_128C06F:   unk_4E2DAE.CommitTrans
  loc_128C07F:   Me.Requery -1
  loc_128C08F:   Me.Requery -1
  loc_128C0AF:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_128C0BC:     Me.Bookmark = var_94
  loc_128C0C4:   Else
  loc_128C0D8:     If (Me.EOF = 0) Then
  loc_128C0E1:       Me.MoveLast
  loc_128C0E6:     End If
  loc_128C0E6:   End If
  loc_128C0E6:   Call Proc_51_38_1401A14(var_144, 0, var_148, var_150)
  loc_128C107:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_128C10F: End If
  loc_128C10F: Exit Sub
  loc_128C110: ' Referenced from: 128BBB0
  loc_128C116: unk_4E2DAE.RollbackTrans
  loc_128C123: Set var_9C = Err()
  loc_128C129: Call 0.Method_arg_2C (var_A4, 0, var_154)
  loc_128C14A: MsgBox(CVar(var_A4), &H30, " Deletion Error ", var_118, var_138)
  loc_128C15D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F325EC
  'Data Table: 4E2D94
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F324D0: On Error Goto loc_F325E6
  loc_F324E1: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_F324E4:   Exit Sub
  loc_F324E5: End If
  loc_F32508: Call Proc_51_36_E7A17C(Proc_5_1_100CB50("EDIT", Me))
  loc_F32521: Set var_8C = Me.Txt
  loc_F32527: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F3253A: global_100 = var_94.Text
  loc_F32555: Set var_8C = Me.Txt
  loc_F3255B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F32563: var_94.Enabled = False
  loc_F3257C: Set var_8C = Me.Txt
  loc_F32582: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F3258A: var_94.Enabled = False
  loc_F325A1: Set var_8C = Me.Txt
  loc_F325A7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F325AF: var_94.SetFocus
  loc_F325C8: Me.LblUser.Caption = vbNullString
  loc_F325DD: Me.LblLDt.Caption = vbNullString
  loc_F325E5: Exit Sub
  loc_F325E6: ' Referenced from: F324D0
  loc_F325E6: Proc_6_60_E62BC4(global_56)
  loc_F325EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E198B4
  'Data Table: 4E2D94
  loc_E198A9: Me.Global.Unload Me
  loc_E198B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5EFAC
  'Data Table: 4E2D94
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F5EE88: On Error Goto loc_F5EF46
  loc_F5EE94: var_88 = Me.RecordCount
  loc_F5EEA2: If (var_88 <= 0) Then
  loc_F5EEAB:   var_B8 = "Information"
  loc_F5EEC6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F5EED6:   Exit Sub
  loc_F5EED7: End If
  loc_F5EEE2: If (global_52 = "Banquet") Then
  loc_F5EEEC:   var_10C = "SELECT distinct IC.Code AS SearchCode,'Banquet' As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Where IC.RestCode='" & MemVar_1F92078
  loc_F5EEF3:   MemVar_1F920E4 = var_10C & "BANQ' ORDER BY IC.Name"
  loc_F5EEFD: Else
  loc_F5EF04:   var_10C = "SELECT distinct IC.Code AS SearchCode,D.Name As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure FROM ((ItemCatMast IC Inner Join ViewSubGroup VS On IC.AcName=VS.SubCode) Inner Join TaxStru On IC.TaxStru=TaxStru.Code) Inner Join Depart D On IC.RestCode=D.Code Where (IC.LogSite_Code='" & MemVar_1F92078
  loc_F5EF0B:   MemVar_1F920E4 = var_10C & "' OR IC.LogSite_Code='HO') and  RestType not in ('Banquet') and D.OutletYN='Y' ORDER BY IC.Name"
  loc_F5EF12: End If
  loc_F5EF18: MemVar_1F92120 = Me
  loc_F5EF1F: var_10C = "2000,3000,1200,550,1000,2500,2500"
  loc_F5EF25: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_F5EF40: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5EF45: Exit Sub
  loc_F5EF46: ' Referenced from: F5EE88
  loc_F5EF4E: Set var_110 = Err()
  loc_F5EF54: Call 0.Method_arg_1C (var_88)
  loc_F5EF65: If (var_88 <> 0) Then
  loc_F5EF70:   Set var_110 = Err()
  loc_F5EF76:   Call 0.Method_arg_2C (var_10C)
  loc_F5EF97:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F5EFAA: End If
  loc_F5EFAA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E344B8
  'Data Table: 4E2D94
  loc_E344A8: Proc_5_0_110649C(&HFF, Me)
  loc_E344B0: Call Proc_51_38_1401A14(global_56)
  loc_E344B5: Exit Sub
  loc_E344B6: arg_1C78 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E342D8
  'Data Table: 4E2D94
  loc_E342C8: Proc_5_0_110649C(&HFF, Me)
  loc_E342D0: Call Proc_51_38_1401A14(global_56)
  loc_E342D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34338
  'Data Table: 4E2D94
  loc_E34328: Proc_5_0_110649C(&HFF, Me)
  loc_E34330: Call Proc_51_38_1401A14(global_56)
  loc_E34335: Exit Sub
  loc_E34336: arg_1C78 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34398
  'Data Table: 4E2D94
  loc_E34388: Proc_5_0_110649C(&HFF, Me)
  loc_E34390: Call Proc_51_38_1401A14(global_56)
  loc_E34395: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1074630
  'Data Table: 4E2D94
  Dim unk_4E2DAE As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10743B0: On Error Goto loc_10745E7
  loc_10743C9: unk_4E2DAE.Execute "SELECT IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.Flag,IC.CatType As Type,D.Name As Outlet,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name as OutLetName  FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode)Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code ORDER BY IC.Name", var_BC, -1
  loc_10743D4: Set var_88 = var_C0
  loc_10743E3: var_C4 = var_88.RecordCount
  loc_10743F1: If (var_C4 = 0) Then
  loc_107440D:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_107441D:   Exit Sub
  loc_107441E: End If
  loc_107442D: var_12C = MemVar_1F920B4 & "\ItemCatMast.ttx"
  loc_1074434: Set var_C0 = var_88 
  loc_1074440: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_107444A: Set var_88 = var_C0
  loc_1074450: var_AC = CVar(var_12E) 'Integer
  loc_1074453: var_98 = var_AC 'Variant
  loc_107446F: var_128 = MemVar_1F920B4 & "\ItemCatMast.RPT"
  loc_1074478: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1074483: MemVar_1F921E4 = var_C0
  loc_107449E: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10744A6: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10744B2: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10744CB:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10744D3:   Call 0.Method_arg_20 (var_138)
  loc_10744DB:   Call 0.Method_arg_30 (var_128)
  loc_1074521:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1074537:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107453F:     Call 0.Method_arg_20 (var_138)
  loc_1074547:     Call 0.Method_arg_38 ("'Item Category Master'")
  loc_1074553:   End If
  loc_1074556: Next var_132 'Integer
  loc_1074574: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_107457C: Call 0.Method_arg_2C (var_D4)
  loc_107458A: Call 0.Method_arg_150 (var_F4)
  loc_1074595: Call 0.Method_arg_50 (var_128)
  loc_107459F: Set var_138 = Nothing
  loc_10745B9: Set var_C0 = MemVar_1F921E4 
  loc_10745C5: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_10745D0: MemVar_1F921E4 = var_C0
  loc_10745E3: Set var_88 = Nothing
  loc_10745E6: Exit Sub
  loc_10745E7: ' Referenced from: 10743B0
  loc_10745EF: Set var_C0 = Err()
  loc_10745F5: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1074600: Call 0.Method_arg_50 (var_12C)
  loc_107461C: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_107462F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E55904
  'Data Table: 4E2D94
  Dim Me As Recordset15
  loc_E558CB: Me.Requery -1
  loc_E558DB: Me.Requery -1
  loc_E558EB: Me.Requery -1
  loc_E558FB: Me.Requery -1
  loc_E55900: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1589AB0
  'Data Table: 4E2D94
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4E2DAE As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_130 As Variant
  Dim var_134 As TextBox
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_1C8 As TextBox
  Dim var_1EC As Variant
  Dim var_214 As TextBox
  Dim var_228 As Variant
  Dim var_258 As Variant
  Dim var_260 As TextBox
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_2AC As TextBox
  Dim var_380 As Variant
  Dim var_388 As TextBox
  Dim var_3CC As Variant
  Dim var_44C As Variant
  Dim var_120 As String
  Dim var_138 As String
  Dim var_1CC As String
  Dim var_218 As String
  Dim var_4B8 As String
  Dim var_170 As TextBox
  Dim var_190 As Variant
  loc_1588A44: On Error Goto loc_1589A5E
  loc_1588A4B: var_86 = CByte(0) 'Byte
  loc_1588A5A: Set var_A0 = Me.Txt
  loc_1588A60: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1588A89: If (Proc_6_27_EA565C(var_A4, "Name") = 0) Then
  loc_1588A93:   Call Txt_GotFocus()
  loc_1588A98:   Exit Sub
  loc_1588A99: End If
  loc_1588AA4: Set var_A0 = Me.Txt
  loc_1588AAA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1588AD3: If (Proc_6_27_EA565C(var_A4, "Outlet Name") = 0) Then
  loc_1588ADD:   Call Txt_GotFocus()
  loc_1588AE2:   Exit Sub
  loc_1588AE3: End If
  loc_1588AEE: Set var_A0 = Me.Txt
  loc_1588AF4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, CInt(1))
  loc_1588B1D: If (Proc_6_27_EA565C(var_A4, "Post in A/c") = 0) Then
  loc_1588B27:   Call Txt_GotFocus()
  loc_1588B2C:   Exit Sub
  loc_1588B2D: End If
  loc_1588B38: Set var_A0 = Me.Txt
  loc_1588B3E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, CInt(1))
  loc_1588B67: If (Proc_6_27_EA565C(var_A4, "Tax Structure") = 0) Then
  loc_1588B71:   Call Txt_GotFocus()
  loc_1588B76:   Exit Sub
  loc_1588B77: End If
  loc_1588B7A: Call Proc_51_39_10F6EFC(var_AE, CInt(1))
  loc_1588B85: If (var_AE = &HFF) Then
  loc_1588B88:   Exit Sub
  loc_1588B89: End If
  loc_1588B8D: Set var_A0 = Me.TopCtrl1
  loc_1588B93: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_1588BAC: If (CStr(var_A4) = "Add") Then
  loc_1588BB5:   var_E4 = 0
  loc_1588BD2:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4) )=1 and SITE_CODE='" & MemVar_1F92070
  loc_1588BE2:   unk_4E2DAE.Execute CStr(var_A4) & "'", var_C0, -1
  loc_1588BEA:   var_A0 = var_A0.Fields
  loc_1588BF2:   var_E4 = var_A4.Item(var_A4)
  loc_1588BFA:   var_A8 = var_A8.Value
  loc_1588C33:   var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1588C59:   var_F4 = Format(CStr(var_F4), "0000")
  loc_1588C61:   var_118 = (1 + var_F4)
  loc_1588C6C:   global_96 = CStr(var_118)
  loc_1588C81: Else
  loc_1588C9E:   var_A4 = Me.Fields.Item("Code")
  loc_1588CB5:   global_96 = CStr(var_A4.Value)
  loc_1588CC6: End If
  loc_1588CCF: unk_4E2DAE.BeginTrans var_11C
  loc_1588CD8: var_86 = CByte(1) 'Byte
  loc_1588CE0: Set var_A0 = Me.TopCtrl1
  loc_1588CE6: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1588CEE: var_AC = CStr(var_108)
  loc_1588CFF: If (var_AC = "Add") Then
  loc_1588D13:   Set var_A0 = Me.Txt
  loc_1588D19:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_1588D2D:   Call Proc_51_42_F716AC(var_AC)
  loc_1588D35:   var_9C = var_A4.Text
  loc_1588D56:   var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)"
  loc_1588D5D:   var_C4 = var_AC & " Values('"
  loc_1588D7F:   Set var_A0 = Me.Txt
  loc_1588D85:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_120, CVar(var_C4 & global_96 & "',"))
  loc_1588D8D:   var_4B0 = var_A4.Text
  loc_1588D9B:   Proc_6_17_EAA2B0(var_F4, CVar(var_120), -1)
  loc_1588DAC:   var_130 = var_4B4 & var_F4 & ",'" 
  loc_1588DBE:   Set var_A8 = Me.Txt
  loc_1588DC4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134, var_138)
  loc_1588DCC:   var_130 = var_134.Tag
  loc_1588DEF:   Set var_16C = Me.Txt
  loc_1588DF5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_170)
  loc_1588E04:   Proc_6_17_EAA2B0(var_190, CVar(var_170))
  loc_1588E27:   Set var_1C4 = Me.Txt
  loc_1588E2D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C8)
  loc_1588E5B:   Set var_210 = Me.Txt
  loc_1588E61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_214)
  loc_1588E95:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_260)
  loc_1588EA8:   var_284 = var_F4 & CVar(var_138) & "'," & var_190 & ",'" & CVar(var_1C8.Tag) & "','" & CVar(var_214.Tag) & "','" & CVar(var_260.Text) 
  loc_1588EC3:   Set var_2A8 = Me.Txt
  loc_1588EC9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2AC)
  loc_1588F0A:   Proc_6_7_F25D88(var_350, Date)
  loc_1588F2D:   Set var_384 = Me.Txt
  loc_1588F33:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_388)
  loc_1588F4F:   var_3CC = var_284 & "','" & CVar(var_2AC.Text) & "','Y','" & CVar(MemVar_1F920C8) & "'," & var_350 & ",'A','" & CVar(var_388.Text) & "','" 
  loc_1588F75:   var_44C = var_3CC & CVar(var_9C) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_1588F96:   unk_4E2DAE.Execute CStr(var_44C & CVar(MemVar_1F92078) & "')"), , 
  loc_1589030:   var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_9C
  loc_1589037:   var_120 = var_AC & "','"
  loc_1589044:   var_F8 = global_124 & " - "
  loc_1589055:   Set var_A0 = Me.Txt
  loc_158905B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, var_C4 & global_96)
  loc_1589063:   var_120 = var_A4.Text
  loc_1589070:   var_1CC = -1 & var_284 & var_C4
  loc_15890A4:   var_108 = CVar(var_1C8.Tag & "','" & global_124 & "','Y','Amount','Detail','POS','" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") 'String
  loc_15890B5:   Proc_6_7_F25D88(var_F4, Date)
  loc_15890C6:   var_130 = var_108 & var_F4 & ",'A','C','" 
  loc_15890D8:   Set var_A8 = Me.Txt
  loc_15890DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134, var_4BC)
  loc_15890E6:   var_130 = var_134.Tag
  loc_15890EE:   var_148 = CVar(var_4BC) 'String
  loc_158910C:   Set var_16C = Me.Txt
  loc_1589112:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_1589140:   Set var_1C4 = Me.Txt
  loc_1589146:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_1589174:   Set var_210 = Me.Txt
  loc_158917A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_15891A0:   var_258 = Me.Txt & var_148 & "','" & CVar(var_170.Tag) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_214.Tag) & "','" & CVar(MemVar_1F92078) 
  loc_15891B7:   unk_4E2DAE.Execute CStr(var_258 & "')"), , 
  loc_1589220: Else
  loc_158923D:   Set var_A0 = Me.Txt
  loc_1589243:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, "UPDATE ItemCatMast SET Name=")
  loc_158924B:   var_C0 = CVar(var_A4) 'Address
  loc_1589252:   Proc_6_17_EAA2B0(var_F4, var_C0, var_44C)
  loc_158925A:   var_108 = -1 & var_F4 
  loc_1589272:   Set var_A8 = Me.Txt
  loc_1589278:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_134)
  loc_1589287:   Proc_6_17_EAA2B0(var_148, CVar(var_134))
  loc_1589298:   var_168 = var_108 & ",RoundOff=" & var_148 & ",AcName='" 
  loc_15892AA:   Set var_16C = Me.Txt
  loc_15892B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_170, var_AC)
  loc_15892B8:   var_168 = var_170.Tag
  loc_15892DE:   Set var_1C4 = Me.Txt
  loc_15892E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1C8)
  loc_1589312:   Set var_210 = Me.Txt
  loc_1589318:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_214)
  loc_1589346:   Set var_25C = Me.Txt
  loc_158934C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_260)
  loc_158935F:   var_274 = var_384 & CVar(var_AC) & "',TaxStru='" & CVar(var_1C8.Tag) & "',Flag='" & CVar(var_214.Text) & "',CatType='" & CVar(var_260.Text) 
  loc_158937A:   Set var_2A8 = Me.Txt
  loc_1589380:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2AC)
  loc_15893CA:   Proc_6_7_F25D88(var_350, Date)
  loc_15893DB:   var_380 = var_274 & "',DrCr='" & CVar(var_2AC.Text) & "'," & " U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_350 & " ,U_AE='E',RevCode='" 
  loc_1589425:   unk_4E2DAE.Execute CStr(var_380 & global_80 & "',SITE_CODE='" & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_96) & "'"), , 
  loc_158949D:   var_E4 = 0
  loc_15894BD:   var_AC = "Select Count(*) From RevMast Where Name='" & global_76
  loc_15894CD:   unk_4E2DAE.Execute var_AC & "'", var_C0, -1
  loc_15894D5:   var_A0 = var_A0.Fields
  loc_15894DD:   var_E4 = var_A4.Item(var_A4)
  loc_15894E5:   var_A8 = var_A8.Value
  loc_158950C:   If (var_F4 = 0) Then
  loc_1589520:     Set var_A0 = Me.Txt
  loc_1589526:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_158953A:     Call Proc_51_42_F716AC(var_AC)
  loc_1589542:     var_9C = var_A4.Text
  loc_158956A:     var_C4 = "Update ItemCatMast SET RevCode='" & var_9C & "' Where Code='"
  loc_1589584:     unk_4E2DAE.Execute var_C4 & global_96 & "'", var_C0, -1
  loc_15895AE:     var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_9C
  loc_15895C2:     var_F8 = global_124 & " - "
  loc_15895D9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, var_C4 & global_96, var_AC & "','")
  loc_15895E1:     var_284 = var_A4.Text
  loc_15895EA:     var_138 = -1 & var_C4
  loc_158961B:     var_4B8 = var_25C & var_2AC.Text & "','" & global_124 & "','Y','Amount','Detail','POS','" & MemVar_1F92078 & "','" & MemVar_1F920C8
  loc_1589630:     Proc_6_7_F25D88(var_F4, CVar(Proc_6_14_EF349C(CVar(var_4B8 & "',"), Me.Txt)))
  loc_1589653:     Set var_A8 = Me.Txt
  loc_1589659:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_1589687:     Set var_16C = Me.Txt
  loc_158968D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_15896BB:     Set var_1C4 = Me.Txt
  loc_15896C1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_15896EF:     Set var_210 = Me.Txt
  loc_15896F5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_1589708:     var_228 = var_F4 & var_F4 & ",'A','C','" & CVar(var_134.Tag) & "','" & CVar(var_170.Tag) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_214.Tag) 
  loc_1589732:     unk_4E2DAE.Execute CStr(var_228 & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_158979B:   Else
  loc_15897B5:     var_C4 = global_124 & " - "
  loc_15897C6:     Set var_A0 = Me.Txt
  loc_15897CC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_C4)
  loc_15897D4:     "Update RevMast Set Name='" = var_A4.Text
  loc_15897E1:     var_120 = -1 & var_284 & var_AC
  loc_15897F9:     var_218 = var_AC & "','" & "',ShortName='" & global_124 & "',SysYN='Y',AppMode='Amount',FlagAMR='Detail',FlagType='POS',Site_Code='"
  loc_1589815:     var_108 = CVar(var_218 & MemVar_1F92070 & "',U_Name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_1589823:     Proc_6_7_F25D88(var_F4, CVar(Proc_6_14_EF349C(var_108)))
  loc_158982B:     var_118 = var_25C & var_F4 
  loc_158982F:     var_D4 = ",U_AE='E',FieldType='C',DeskCode='"
  loc_1589846:     Set var_A8 = Me.Txt
  loc_158984C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_158987A:     Set var_16C = Me.Txt
  loc_1589880:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_15898AE:     Set var_1C4 = Me.Txt
  loc_15898B4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_15898D0:     var_1EC = var_118 & var_D4 & CVar(var_134.Tag) & "',TaxStru='" & CVar(var_170.Tag) & "',Type='" & CVar(var_1C8.Text) & "',AcCode='" 
  loc_15898E2:     Set var_210 = Me.Txt
  loc_15898E8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_1589928:     unk_4E2DAE.Execute CStr(var_1EC & CVar(var_214.Tag) & "' Where Name='" & CVar(global_76) & "'"), , 
  loc_158998A:   End If
  loc_158998A: End If
  loc_1589990: unk_4E2DAE.CommitTrans
  loc_1589999: var_86 = CByte(0) 'Byte
  loc_15899A8: Me.Requery -1
  loc_15899B8: Me.Requery -1
  loc_15899E5: Me.Find "Code='" & global_96 & "'", 0, 1
  loc_15899F5: Set var_A0 = Me.TopCtrl1
  loc_15899FB: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_1589A14: If (CStr() = "Add") Then
  loc_1589A17:   Call TopCtrl1_UnknownEvent_A()
  loc_1589A1C:   Exit Sub
  loc_1589A1D: End If
  loc_1589A32: var_AC = "INI"
  loc_1589A40: Call Proc_51_36_E7A17C(Proc_5_1_100CB50(var_AC, Me))
  loc_1589A4B: Call Proc_51_40_F6BCC0(global_56)
  loc_1589A50: Call Proc_51_38_1401A14()
  loc_1589A5A: Set var_94 = Nothing
  loc_1589A5D: Exit Sub
  loc_1589A5E: ' Referenced from: 1588A44
  loc_1589A67: If (CInt(var_86) = 1) Then
  loc_1589A70:   unk_4E2DAE.RollbackTrans
  loc_1589A75: End If
  loc_1589A7D: Set var_A0 = Err()
  loc_1589A83: Call 0.Method_arg_2C (var_AC)
  loc_1589A9C: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_1589AAF: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F4D524
  'Data Table: 4E2D94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D41B: Me.DGRest.Visible = False
  loc_F4D43A: If (Me.RecordCount > 0) Then
  loc_F4D479:   Set var_B4 = Me.Txt
  loc_F4D47F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4D487:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4D4BA:   var_B0 = Me.Fields.Item("Code")
  loc_F4D4D9:   Set var_B4 = Me.Txt
  loc_F4D4DF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4D4E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4D4FD: End If
  loc_F4D508: Set var_A8 = Me.Txt
  loc_F4D50E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F4D516: var_B0.SetFocus
  loc_F4D522: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6F200
  'Data Table: 4E2D94
  loc_E6F1BE: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E6F1D5: Set var_8C = Me.FGPoint
  loc_E6F1F1: Proc_6_138_106D6F8(Me.DGRest, global_72, CInt(1))
  loc_E6F1FF: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5C6B4
  'Data Table: 4E2D94
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5C5D6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5C5DD:   Set var_A8 = Me.ListView
  loc_F5C627:   Set var_C0 = Me.Txt
  loc_F5C62D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5C635:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5C655: End If
  loc_F5C661: Me.FrmList.Visible = False
  loc_F5C691: Set var_9C = Me.Txt
  loc_F5C697: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5C69F: var_A8.SetFocus
  loc_F5C6B3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '144998C
  'Data Table: 4E2D94
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1448E66: Set var_88 = Me.Txt
  loc_1448E6C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1448E7A: Proc_6_74_E226B0(var_8C)
  loc_1448E86: Call Proc_51_40_F6BCC0(var_8C)
  loc_1448E8E: var_92 = Index
  loc_1448E99: If (var_92 = CInt(0)) Then
  loc_1448EB3:   If (Me.RecordCount > 0) Then
  loc_1448EC1:     Set var_8C = Me.FGPoint
  loc_1448ED9:     Proc_6_137_1193554(Me.DGHelp, global_60, Index)
  loc_1448EE7:   End If
  loc_1448EEA: Else
  loc_1448EF2:   If (var_92 = CInt(1)) Then
  loc_1448F0C:     If (Me.RecordCount > 0) Then
  loc_1448F1A:       Set var_8C = Me.FGPoint
  loc_1448F32:       Proc_6_137_1193554(Me.DGRest, global_72, Index)
  loc_1448F40:     End If
  loc_1448F8E:     Set var_88 = Me.Txt
  loc_1448F94:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1448F9C:     var_8C = var_8C.Text
  loc_1448FB4:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1448FC4:       Set var_88 = Me.Txt
  loc_1448FCA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1448FD2:       var_8C.Tag = vbNullString
  loc_1448FDE:       Exit Sub
  loc_1448FDF:     End If
  loc_1448FEC:     Set var_88 = Me.Txt
  loc_1448FF2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1448FFA:     var_A0 = var_8C.Text
  loc_144900C:     var_B0 = "Name"
  loc_1449047:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1449050:       Me.MoveFirst
  loc_1449073:       Set var_88 = Me.Txt
  loc_1449079:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1449081:       0 = var_8C.Text
  loc_144909A:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_14490AF:     End If
  loc_14490B2:   Else
  loc_14490BA:     If (var_92 = CInt(3)) Then
  loc_14490D4:       If (Me.RecordCount > 0) Then
  loc_14490E2:         Set var_8C = Me.FGPoint
  loc_14490FA:         Proc_6_137_1193554(Me.DGSaleAc, global_64)
  loc_1449108:       End If
  loc_1449156:       Set var_88 = Me.Txt
  loc_144915C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1449164:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_144917C:       If (Index Or (var_A0 = vbNullString)) Then
  loc_144918C:         Set var_88 = Me.Txt
  loc_1449192:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144919A:         var_8C.Tag = vbNullString
  loc_14491A6:         Exit Sub
  loc_14491A7:       End If
  loc_14491B4:       Set var_88 = Me.Txt
  loc_14491BA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14491C2:       var_A0 = var_8C.Text
  loc_14491D4:       var_B0 = "Name"
  loc_144920F:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1449218:         Me.MoveFirst
  loc_144923B:         Set var_88 = Me.Txt
  loc_1449241:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1449249:         0 = var_8C.Text
  loc_1449262:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1449277:       End If
  loc_144927A:     Else
  loc_1449282:       If (var_92 = CInt(4)) Then
  loc_144929C:         If (Me.RecordCount > 0) Then
  loc_14492AA:           Set var_8C = Me.FGPoint
  loc_14492C2:           Proc_6_137_1193554(Me.DGSaleTax, global_68)
  loc_14492D0:         End If
  loc_144931E:         Set var_88 = Me.Txt
  loc_1449324:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_144932C:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1449344:         If (Index Or (var_A0 = vbNullString)) Then
  loc_1449354:           Set var_88 = Me.Txt
  loc_144935A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1449362:           var_8C.Tag = vbNullString
  loc_144936E:           Exit Sub
  loc_144936F:         End If
  loc_144937C:         Set var_88 = Me.Txt
  loc_1449382:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144938A:         var_A0 = var_8C.Text
  loc_144939C:         var_B0 = "Name"
  loc_14493B3:         var_B4 = Me.Fields.Item(var_B0)
  loc_14493D7:         If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_14493E0:           Me.MoveFirst
  loc_1449403:           Set var_88 = Me.Txt
  loc_1449409:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1449411:           0 = var_8C.Text
  loc_144942A:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_144943F:         End If
  loc_1449442:       Else
  loc_144944A:         If (var_92 = CInt(2)) Then
  loc_144945C:           Set var_88 = Me.Txt
  loc_1449462:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144946A:           var_8C.SelStart = 0
  loc_1449483:           Set var_88 = Me.Txt
  loc_1449489:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14494A4:           Set var_90 = Me.Txt
  loc_14494AA:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_14494B2:           var_B4.SelLength = Len(var_8C.Text)
  loc_14494D2:           Set var_88 = Me.Txt
  loc_14494D8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14494E0:           var_A0 = var_8C.Text
  loc_14494F2:           Set var_90 = Me.Txt
  loc_14494F8:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1449500:           var_B4.Tag = var_A0
  loc_1449516:         Else
  loc_144951E:           If (var_92 = CInt(5)) Then
  loc_144952E:             ReDim var_F0(0 To 1)
  loc_1449545:             var_F0(0) = "Category"
  loc_1449554:             var_F0(1) = "Charge"
  loc_144956B:             global_104 = Array(var_F0)
  loc_1449576:             Set var_B4 = Me.ListView
  loc_1449591:             Set var_8C = Me.Txt
  loc_14495AB:             Set global_120 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_14495C9:             Set var_88 = Me.Txt
  loc_14495CF:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14495D7:             global_104 = var_8C.Text
  loc_14495E9:             Set var_90 = Me.Txt
  loc_14495EF:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_14495F7:             var_B4.Tag = 2
  loc_144960D:           Else
  loc_1449615:             If (var_92 = CInt(6)) Then
  loc_1449623:               If (global_52 = "Banquet") Then
  loc_1449633:                 ReDim var_F0(0 To 7)
  loc_144964A:                 var_F0(0) = "Food"
  loc_1449659:                 var_F0(1) = "Liquor"
  loc_1449668:                 var_F0(2) = "Confectionary"
  loc_1449677:                 var_F0(3) = "Beverage"
  loc_1449686:                 var_F0(4) = "Miscellaneous"
  loc_1449695:                 var_F0(5) = "Tobacco"
  loc_14496A4:                 var_F0(6) = "Other Items  (Non Eatable)"
  loc_14496B3:                 var_F0(7) = "Hall Rent"
  loc_14496CA:                 global_104 = Array(var_F0)
  loc_14496D5:                 Set var_B4 = Me.ListView
  loc_14496F0:                 Set var_8C = Me.Txt
  loc_144970A:                 Set global_120 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_104)
  loc_1449728:                 Set var_88 = Me.Txt
  loc_144972E:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1449736:                 8 = var_8C.Text
  loc_1449748:                 Set var_90 = Me.Txt
  loc_144974E:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1449756:                 var_B4.Tag = global_104
  loc_144976C:               Else
  loc_1449779:                 ReDim var_F0(0 To 5)
  loc_1449790:                 var_F0(0) = "Food"
  loc_144979F:                 var_F0(1) = "Liquor"
  loc_14497AE:                 var_F0(2) = "Confectionary"
  loc_14497BD:                 var_F0(3) = "Beverage"
  loc_14497CC:                 var_F0(4) = "Miscellaneous"
  loc_14497DB:                 var_F0(5) = "Tobacco"
  loc_14497F2:                 global_104 = Array(var_F0)
  loc_14497FD:                 Set var_B4 = Me.ListView
  loc_1449818:                 Set var_8C = Me.Txt
  loc_1449832:                 Set global_120 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_104)
  loc_1449850:                 Set var_88 = Me.Txt
  loc_1449856:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_144985E:                 6 = var_8C.Text
  loc_1449870:                 Set var_90 = Me.Txt
  loc_1449876:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_144987E:                 var_B4.Tag = global_104
  loc_1449891:               End If
  loc_1449894:             Else
  loc_144989C:               If (var_92 = CInt(7)) Then
  loc_14498AC:                 ReDim var_F0(0 To 1)
  loc_14498C3:                 var_F0(0) = "Dr"
  loc_14498D2:                 var_F0(1) = "Cr"
  loc_14498E9:                 global_104 = Array(var_F0)
  loc_14498F4:                 Set var_B4 = Me.ListView
  loc_144990F:                 Set var_8C = Me.Txt
  loc_1449929:                 Set global_120 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_104)
  loc_1449947:                 Set var_88 = Me.Txt
  loc_144994D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1449955:                 2 = var_8C.Text
  loc_1449967:                 Set var_90 = Me.Txt
  loc_144996D:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1449975:                 var_B4.Tag = global_104
  loc_1449988:               End If
  loc_1449988:             End If
  loc_1449988:           End If
  loc_1449988:         End If
  loc_1449988:       End If
  loc_1449988:     End If
  loc_1449988:   End If
  loc_1449988: End If
  loc_1449988: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1404F48
  'Data Table: 4E2D94
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_140452A: If (CLng(Shift) = &H1B) Then
  loc_140452D:   Call Proc_51_40_F6BCC0()
  loc_1404532:   Exit Sub
  loc_1404533: End If
  loc_1404536: var_88 = KeyCode
  loc_1404541: If (var_88 = CInt(0)) Then
  loc_1404561:   Set var_9C = Me.FGPoint
  loc_1404593:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_60, Shift)
  loc_1404600:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1404626:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_1404634:   End If
  loc_1404637: Else
  loc_140463F:   If (var_88 = CInt(1)) Then
  loc_140466A:     Set var_9C = Nothing
  loc_1404698:     Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_72, Shift, 0, 1)
  loc_1404707:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_140470E:       Set var_9C = Me.DGRest
  loc_140472D:       Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_140473B:     End If
  loc_140473E:   Else
  loc_1404746:     If (var_88 = CInt(3)) Then
  loc_140479F:       Proc_6_69_134A198(Me.DGSaleAc, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_140480E:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1404834:         Proc_6_138_106D6F8(Me.DGSaleAc, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1404842:       End If
  loc_1404845:     Else
  loc_140484D:       If (var_88 = CInt(4)) Then
  loc_140485B:         Set var_AC = Me.Txt
  loc_140486D:         Set var_A4 = Me.FGPoint
  loc_14048A6:         Proc_6_69_134A198(Me.DGSaleTax, var_AC, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_14048C5:         var_B0 = Me.RecordCount
  loc_1404915:         If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1404923:           Set var_90 = Me.FGPoint
  loc_140493B:           Proc_6_138_106D6F8(Me.DGSaleTax, global_68, KeyCode, var_90, var_A4, 0)
  loc_1404949:         End If
  loc_140494C:       Else
  loc_1404954:         If (var_88 = CInt(6)) Then
  loc_1404962:           If (global_52 = "Banquet") Then
  loc_1404987:             Set var_8C = Me.Txt
  loc_140498D:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_1404995:             1 = var_90.Left
  loc_14049A7:             Set var_9C = Me.Txt
  loc_14049AD:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_14049B5:             var_9C = var_A4.Top
  loc_14049C7:             Set var_A8 = Me.Txt
  loc_14049CD:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_14049D5:             0 = var_AC.Height
  loc_14049E7:             Set var_B4 = Me.Txt
  loc_14049ED:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_14049F5:             var_C4 = var_C0.Width
  loc_1404A3D:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1404A64:           Else
  loc_1404A86:             Set var_8C = Me.Txt
  loc_1404A8C:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_1404A94:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_1404AA6:             Set var_9C = Me.Txt
  loc_1404AAC:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_1404AB4:             CInt(var_C4) = var_A4.Top
  loc_1404AC6:             Set var_A8 = Me.Txt
  loc_1404ACC:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_1404AD4:             2160 = var_AC.Height
  loc_1404AE6:             Set var_B4 = Me.Txt
  loc_1404AEC:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1404AF4:             var_C4 = var_C0.Width
  loc_1404B3C:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1404B60:           End If
  loc_1404B63:         Else
  loc_1404B6B:           If (var_88 = CInt(7)) Then
  loc_1404B90:             Set var_8C = Me.Txt
  loc_1404B96:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_1404B9E:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_1404BB0:             Set var_9C = Me.Txt
  loc_1404BB6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_1404BBE:             CInt(var_C4) = var_A4.Top
  loc_1404BD0:             Set var_A8 = Me.Txt
  loc_1404BD6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_1404BDE:             1620 = var_AC.Height
  loc_1404BF0:             Set var_B4 = Me.Txt
  loc_1404BF6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1404BFE:             var_C4 = var_C0.Width
  loc_1404C46:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1404C6D:           Else
  loc_1404C75:             If (var_88 = CInt(5)) Then
  loc_1404C9A:               Set var_8C = Me.Txt
  loc_1404CA0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_1404CA8:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_1404CBA:               Set var_9C = Me.Txt
  loc_1404CC0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_1404CC8:               CInt(var_C4) = var_A4.Top
  loc_1404CDA:               Set var_A8 = Me.Txt
  loc_1404CE0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_1404CE8:               680 = var_AC.Height
  loc_1404CFA:               Set var_B4 = Me.Txt
  loc_1404D00:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1404D08:               var_C4 = var_C0.Width
  loc_1404D50:               Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1404D74:             End If
  loc_1404D74:           End If
  loc_1404D74:         End If
  loc_1404D74:       End If
  loc_1404D74:     End If
  loc_1404D74:   End If
  loc_1404D74: End If
  loc_1404E00: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGSaleAc.Visible) = 0)) And (CBool(Me.DGSaleTax.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_1404E0B:   If (KeyCode = CInt(5)) Then
  loc_1404E26:     Set var_90 = Me.ListView.SelectedItem
  loc_1404E46:     If (var_90.Text = "Category") Then
  loc_1404E55:       Me.LblCatType.Visible = True
  loc_1404E6A:       Set var_8C = Me.Txt
  loc_1404E70:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, &HFF, CInt(var_B0))
  loc_1404E78:       var_90.Visible = CInt((var_B8 + var_BC))
  loc_1404E87:     Else
  loc_1404E93:       Me.LblCatType.Visible = False
  loc_1404EA8:       Set var_8C = Me.Txt
  loc_1404EAE:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, 0)
  loc_1404EB6:       var_90.Visible = CInt(var_C4)
  loc_1404EC2:     End If
  loc_1404EC2:   End If
  loc_1404ED5:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_1404EDE:     Proc_6_76_E52838(Shift, arg_14)
  loc_1404EE3:   End If
  loc_1404F01:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_1404F0A:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1404F0F:   End If
  loc_1404F2D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_1404F38:     Call Txt_Validate(KeyCode)
  loc_1404F40:     Call Proc_51_41_E90374(KeyCode, 0)
  loc_1404F45:   End If
  loc_1404F45: End If
  loc_1404F45: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '109306C
  'Data Table: 4E2D94
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_1092DC2: Proc_6_133_E7EF78(var_94)
  loc_1092DD7: If (CInt(var_94) = &HD) Then
  loc_1092DDC:   arg_10 = 0
  loc_1092DDF: End If
  loc_1092DE2: Proc_6_58_E054C0(arg_10, arg_10)
  loc_1092DEA: var_96 = KeyAscii
  loc_1092DF5: If (var_96 = CInt(2)) Then
  loc_1092E21:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1092E31:     Set var_CC = Me.Txt
  loc_1092E37:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_1092E3F:     var_D0.Text = var_96
  loc_1092E4E:   Else
  loc_1092E77:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1092E87:       Set var_CC = Me.Txt
  loc_1092E8D:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_1092E95:       var_D0.Text = arg_10
  loc_1092EA1:     End If
  loc_1092EA1:   End If
  loc_1092EA3:   arg_10 = 0
  loc_1092EA9: Else
  loc_1092EB1:   If (var_96 = CInt(3)) Then
  loc_1092ED0:     If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_1092EE2:       var_D4 = "Name"
  loc_1092EFD:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10)
  loc_1092F2F:       Proc_6_138_106D6F8(Me.DGSaleAc, global_64, KeyAscii, Me.FGPoint)
  loc_1092F3D:     End If
  loc_1092F40:   Else
  loc_1092F48:     If (var_96 = CInt(1)) Then
  loc_1092F67:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1092F94:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_1092FC6:         Proc_6_138_106D6F8(Me.DGRest, global_72, KeyAscii, Me.FGPoint, 0)
  loc_1092FD4:       End If
  loc_1092FD7:     Else
  loc_1092FDF:       If (var_96 = CInt(4)) Then
  loc_1092FFE:         If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_109302B:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_109305D:           Proc_6_138_106D6F8(Me.DGSaleTax, global_68, KeyAscii, Me.FGPoint, 0)
  loc_109306B:         End If
  loc_109306B:       End If
  loc_109306B:     End If
  loc_109306B:   End If
  loc_109306B: End If
  loc_109306B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC1F70
  'Data Table: 4E2D94
  loc_EC1EE2: If (KeyCode = CInt(0)) Then
  loc_EC1F01:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC1F0E:     var_A4 = "Name"
  loc_EC1F2D:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_60)
  loc_EC1F5F:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_EC1F6D:   End If
  loc_EC1F6D: End If
  loc_EC1F6D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B554
  'Data Table: 4E2D94
  loc_E4B532: Set var_88 = Me.Txt
  loc_E4B538: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B546: Proc_6_73_E22704(var_8C)
  loc_E4B552: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '131F2E8
  'Data Table: 4E2D94
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim unk_4E2DAE As Connection15
  Dim var_C4 As Variant
  loc_131EB73: var_86 = Cancel
  loc_131EB7E: If (var_86 = CInt(0)) Then
  loc_131EB84:   Call Proc_51_39_10F6EFC(var_88)
  loc_131EB8F:   If (var_88 = &HFF) Then
  loc_131EB94:     arg_10 = &HFF
  loc_131EB97:     Exit Sub
  loc_131EB98:   End If
  loc_131EB9B: Else
  loc_131EBA3:   If (var_86 = CInt(1)) Then
  loc_131EBF4:     Set var_94 = Me.Txt
  loc_131EBFA:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_131EC02:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_131EC1A:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_131EC2A:       Set var_94 = Me.Txt
  loc_131EC30:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_131EC38:       var_98.Tag = vbNullString
  loc_131EC44:       Exit Sub
  loc_131EC45:     End If
  loc_131EC80:     Set var_B0 = Me.Txt
  loc_131EC86:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_131EC8E:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_131ECDF:     Set var_B0 = Me.Txt
  loc_131ECE5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_131ECED:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_131ED20:     var_98 = Me.Fields.Item("ShortName")
  loc_131ED31:     var_9C = CStr(var_98.Value)
  loc_131ED37:     global_124 = var_9C
  loc_131ED65:     Set var_94 = Me.Txt
  loc_131ED6B:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as DepartmentName FROM ItemCatMast LEFT JOIN Depart ON ItemCatMast.RestCode = Depart.Code WHERE DEPART.CODE='")
  loc_131ED73:     var_C4 = var_98.Tag
  loc_131ED7C:     var_C8 = -1 & var_9C
  loc_131ED8C:     unk_4E2DAE.Execute var_C8 & "' ORDER BY ItemCatMast.Name", var_B0, var_86
  loc_131ED9D:     Set global_60 = var_B0
  loc_131EDC1:     CVarUnk
  loc_131EDC6:     VerifyVarObj
  loc_131EDCC:     Set var_94 = Me.DGHelp
  loc_131EDD2:     LateIdStAd
  loc_131EDE3:   Else
  loc_131EDEB:     If (var_86 = CInt(3)) Then
  loc_131EE42:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_131EE4A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_131EE62:       If (Me.Txt Or (var_9C = vbNullString)) Then
  loc_131EE72:         Set var_94 = Me.Txt
  loc_131EE78:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_131EE80:         var_98.Tag = vbNullString
  loc_131EE8C:         Exit Sub
  loc_131EE8D:       End If
  loc_131EEC8:       Set var_B0 = Me.Txt
  loc_131EECE:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_131EED6:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_131EF09:       var_98 = Me.Fields.Item("Code")
  loc_131EF1A:       var_9C = CStr(var_98.Value)
  loc_131EF27:       Set var_B0 = Me.Txt
  loc_131EF2D:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_131EF35:       var_B4.Tag = var_9C
  loc_131EF4E:     Else
  loc_131EF56:       If (var_86 = CInt(4)) Then
  loc_131EFA7:         Set var_94 = Me.Txt
  loc_131EFAD:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_131EFB5:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_131EFCD:         If (global_60 Or (var_9C = vbNullString)) Then
  loc_131EFDD:           Set var_94 = Me.Txt
  loc_131EFE3:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_131EFEB:           var_98.Tag = vbNullString
  loc_131EFF7:           Exit Sub
  loc_131EFF8:         End If
  loc_131F033:         Set var_B0 = Me.Txt
  loc_131F039:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_131F041:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_131F074:         var_98 = Me.Fields.Item("Code")
  loc_131F092:         Set var_B0 = Me.Txt
  loc_131F098:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_131F0A0:         var_B4.Tag = CStr(var_98.Value)
  loc_131F0B9:       Else
  loc_131F0C1:         If (var_86 = CInt(2)) Then
  loc_131F0CE:           Set var_94 = Me.Txt
  loc_131F0D4:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_131F10F:           If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_131F11F:             Set var_94 = Me.Txt
  loc_131F125:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_131F12D:             var_98.Text = "Yes"
  loc_131F13C:           Else
  loc_131F149:             Set var_94 = Me.Txt
  loc_131F14F:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_131F157:             var_98.Text = "No"
  loc_131F163:           End If
  loc_131F166:         Else
  loc_131F16E:           If (var_86 = CInt(5)) Then
  loc_131F17F:             Set var_94 = Me.Txt
  loc_131F185:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_131F1A4:             If (var_98.Text = "Category") Then
  loc_131F1B3:               Me.LblCatType.Visible = True
  loc_131F1C8:               Set var_94 = Me.Txt
  loc_131F1CE:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_131F1D6:               var_98.Visible = True
  loc_131F1EE:               Me.Label2.Visible = False
  loc_131F203:               Set var_94 = Me.Txt
  loc_131F209:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_131F211:               var_98.Visible = False
  loc_131F22B:               Set var_94 = Me.Txt
  loc_131F231:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_131F239:               var_98.Text = "Cr"
  loc_131F248:             Else
  loc_131F254:               Me.Label2.Visible = True
  loc_131F269:               Set var_94 = Me.Txt
  loc_131F26F:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_131F277:               var_98.Visible = True
  loc_131F28F:               Me.LblCatType.Visible = False
  loc_131F2A4:               Set var_94 = Me.Txt
  loc_131F2AA:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_131F2B2:               var_98.Visible = False
  loc_131F2CC:               Set var_94 = Me.Txt
  loc_131F2D2:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_131F2DA:               var_98.Text = "Cr"
  loc_131F2E6:             End If
  loc_131F2E6:           End If
  loc_131F2E6:         End If
  loc_131F2E6:       End If
  loc_131F2E6:     End If
  loc_131F2E6:   End If
  loc_131F2E6: End If
  loc_131F2E6: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAE0FC
  'Data Table: 4E2D94
  loc_EAE084: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EAE087:   Call DGRest_UnknownEvent_9()
  loc_EAE08C: End If
  loc_EAE0A8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EAE0AB:   Call DGHelp_UnknownEvent_9()
  loc_EAE0B0: End If
  loc_EAE0CC: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_EAE0CF:   Call DGSaleAc_UnknownEvent_9()
  loc_EAE0D4: End If
  loc_EAE0F0: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_EAE0F3:   Call DGSaleTax_UnknownEvent_9()
  loc_EAE0F8: End If
  loc_EAE0F8: Exit Sub
  loc_EAE0F9: StAryRecMove
End Sub

Public Function global_52Get() '4E405C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4E406B
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3B64
  'Data Table: 4E2D94
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC3ADA: On Error Goto loc_EC3B1F
  loc_EC3AE3: Me.MoveFirst
  loc_EC3AFD: var_8C = "code='" & MyValue
  loc_EC3B0D: Me.Find var_8C & "'", 0, 1
  loc_EC3B19: Call Proc_51_38_1401A14(var_A0)
  loc_EC3B1E: Exit Sub
  loc_EC3B1F: ' Referenced from: EC3ADA
  loc_EC3B27: Set var_A4 = Err()
  loc_EC3B2D: Call 0.Method_arg_2C (var_8C)
  loc_EC3B4E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3B61: Exit Sub
  loc_EC3B62: Exit Sub
End Sub

Public Sub Proc_51_36_E7A17C(arg_C) 'E7A17C
  'Data Table: 4E2D94
  Dim var_98 As TextBox
  loc_E7A12A: Set var_8C = Me.Txt
  loc_E7A130: Call 0.Method_Proc_51_36_E7A17CC (var_8E, var_86)
  loc_E7A140: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A156:   Set var_8C = Me.Txt
  loc_E7A15C:   Call 0.Method_Proc_51_36_E7A17C0 (CInt(var_86), var_98)
  loc_E7A164:   var_98.Enabled = arg_C
  loc_E7A173: Next var_92 'Byte
  loc_E7A179: Exit Sub
End Sub

Public Sub Proc_51_37_EE1FE4
  'Data Table: 4E2D94
  Dim var_98 As TextBox
  loc_EE1F26: global_100 = vbNullString
  loc_EE1F30: global_124 = vbNullString
  loc_EE1F42: Set var_8C = Me.Txt
  loc_EE1F48: Call 0.Method_Proc_51_37_EE1FE4C (var_8E, var_86)
  loc_EE1F58: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE1F6E:   Set var_8C = Me.Txt
  loc_EE1F74:   Call 0.Method_Proc_51_37_EE1FE40 (CInt(var_86), var_98)
  loc_EE1F7C:   var_98.Text = vbNullString
  loc_EE1F98:   Set var_8C = Me.Txt
  loc_EE1F9E:   Call 0.Method_Proc_51_37_EE1FE40 (CInt(var_86), var_98)
  loc_EE1FA6:   var_98.Tag = vbNullString
  loc_EE1FB5: Next var_92 'Byte
  loc_EE1FC9: Set var_8C = Me.Txt
  loc_EE1FCF: Call 0.Method_Proc_51_37_EE1FE40 (CInt(7), var_98)
  loc_EE1FD7: var_98.Text = "Dr"
  loc_EE1FE3: Exit Sub
End Sub

Public Sub Proc_51_38_1401A14
  'Data Table: 4E2D94
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_4E2DAE As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_120 As Fields15
  Dim var_128 As String
  Dim var_124 As TextBox
  Dim var_88 As Recordset15
  loc_1401008: On Error Goto loc_14019D0
  loc_1401011: Proc_183_45_E5C118(global_56)
  loc_140102D: If (Me.RecordCount > 0) Then
  loc_1401086:   unk_4E2DAE.Execute CStr("Select U_Name,U_AE,U_EntDt From itemcatmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_1401091:   Set var_8C = var_120
  loc_14010E5:   var_120 = var_8C.Fields
  loc_140114E:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1401193:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name")), var_188)))
  loc_140120D:   var_124 = var_8C.Fields.Item("U_AE")
  loc_1401226:   var_11C = "entdt : "
  loc_1401231:   var_F8 = "Last Update : "
  loc_140126E:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124)) = "E"), var_F8, var_11C))
  loc_14012B3:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_EntDt")))))
  loc_14012EB: End If
  loc_1401302: If (Me.RecordCount <= 0) Then
  loc_1401305:   Call Proc_51_37_EE1FE4()
  loc_140130D: Else
  loc_1401349:   Set var_120 = Me.Txt
  loc_140134F:   Call 0.Method_Proc_51_38_1401A140 (CInt(0), var_124)
  loc_1401357:   var_124.Text = CStr(Me.Fields.Item("ItemCat").Value)
  loc_14013A9:   Set var_120 = Me.Txt
  loc_14013AF:   Call 0.Method_Proc_51_38_1401A140 (CInt(0), var_124)
  loc_14013B7:   var_124.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1401406:   Set var_120 = Me.Txt
  loc_140140C:   Call 0.Method_Proc_51_38_1401A140 (CInt(1), var_124)
  loc_1401414:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1401461:   Set var_120 = Me.Txt
  loc_1401467:   Call 0.Method_Proc_51_38_1401A140 (CInt(1), var_124)
  loc_140146F:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_14014BC:   Set var_120 = Me.Txt
  loc_14014C2:   Call 0.Method_Proc_51_38_1401A140 (CInt(2), var_124)
  loc_14014CA:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")))
  loc_1401517:   Set var_120 = Me.Txt
  loc_140151D:   Call 0.Method_Proc_51_38_1401A140 (CInt(3), var_124)
  loc_1401525:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAc")))
  loc_1401572:   Set var_120 = Me.Txt
  loc_1401578:   Call 0.Method_Proc_51_38_1401A140 (CInt(3), var_124)
  loc_1401580:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("AcName")))
  loc_14015CD:   Set var_120 = Me.Txt
  loc_14015D3:   Call 0.Method_Proc_51_38_1401A140 (CInt(4), var_124)
  loc_14015DB:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStructure")))
  loc_1401628:   Set var_120 = Me.Txt
  loc_140162E:   Call 0.Method_Proc_51_38_1401A140 (CInt(4), var_124)
  loc_1401636:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruCode")))
  loc_1401683:   Set var_120 = Me.Txt
  loc_1401689:   Call 0.Method_Proc_51_38_1401A140 (CInt(5), var_124)
  loc_1401691:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Flag")))
  loc_14016DE:   Set var_120 = Me.Txt
  loc_14016E4:   Call 0.Method_Proc_51_38_1401A140 (CInt(6), var_124)
  loc_14016EC:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")))
  loc_1401739:   Set var_120 = Me.Txt
  loc_140173F:   Call 0.Method_Proc_51_38_1401A140 (CInt(7), var_124)
  loc_1401747:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DrCr")))
  loc_1401778:   var_A8 = Me.Fields.Item("ShortName")
  loc_1401780:   var_B8 = var_A8.Value
  loc_14017AA:   var_128 = CStr(var_B8) & " - "
  loc_14017C1:   Call 0.Method_Proc_51_38_1401A140 (CInt(0), var_A8)
  loc_1401803:   var_FC = "Select Code from Revmast where Name ='" & Proc_6_38_E68A98(CVar(var_124)) & var_A8.Text
  loc_1401821:   unk_4E2DAE.Execute var_FC & "' and site_code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_140182C:   Set var_88 = Me.Txt
  loc_1401854:   If (var_88.RecordCount > 0) Then
  loc_140186E:     var_A8 = var_88.Fields.Item("Code")
  loc_1401885:     global_80 = CVar(Proc_6_38_E68A98(CVar(var_A8)))
  loc_1401896:   Else
  loc_140189E:     global_80 = vbNullString
  loc_14018A2:   End If
  loc_14018A7:   Set var_88 = Nothing
  loc_14018B8:   Set var_94 = Me.Txt
  loc_14018BE:   Call 0.Method_Proc_51_38_1401A140 (CInt(5), var_A8, var_FC)
  loc_14018C6:   global_80 = var_A8.Text
  loc_14018DD:   If (var_FC = "Category") Then
  loc_14018EC:     Me.LblCatType.Visible = True
  loc_1401901:     Set var_94 = Me.Txt
  loc_1401907:     Call 0.Method_Proc_51_38_1401A140 (CInt(6), var_A8)
  loc_140190F:     var_A8.Visible = True
  loc_1401927:     Me.Label2.Visible = False
  loc_140193C:     Set var_94 = Me.Txt
  loc_1401942:     Call 0.Method_Proc_51_38_1401A140 (CInt(7), var_A8)
  loc_140194A:     var_A8.Visible = False
  loc_1401959:   Else
  loc_1401965:     Me.Label2.Visible = True
  loc_140197A:     Set var_94 = Me.Txt
  loc_1401980:     Call 0.Method_Proc_51_38_1401A140 (CInt(7), var_A8)
  loc_1401988:     var_A8.Visible = True
  loc_14019A0:     Me.LblCatType.Visible = False
  loc_14019B5:     Set var_94 = Me.Txt
  loc_14019BB:     Call 0.Method_Proc_51_38_1401A140 (CInt(6), var_A8)
  loc_14019C3:     var_A8.Visible = False
  loc_14019CF:   End If
  loc_14019CF: End If
  loc_14019CF: Exit Sub
  loc_14019D0: ' Referenced from: 1401008
  loc_14019D8: Set var_94 = Err()
  loc_14019DE: Call 0.Method_arg_2C (var_FC)
  loc_14019FF: MsgBox(CVar(var_FC), &H40, "Information", var_F8, var_11C)
  loc_1401A12: Exit Sub
End Sub

Public Sub Proc_51_39_10F6EFC
  'Data Table: 4E2D94
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_4E2DAE As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10F6C1F: If (Me.RecordCount = 0) Then
  loc_10F6C22:   Proc_51_39_10F6EFC = 
  loc_10F6C28: End If
  loc_10F6C2C: Set var_90 = Me.TopCtrl1
  loc_10F6C32: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F6C4B: If (CStr() = "Add") Then
  loc_10F6C54:   var_F4 = 0
  loc_10F6C89:   Set var_90 = Me.Txt
  loc_10F6C8F:   Call 0.Method_Proc_51_39_10F6EFC0 (CInt(1), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_10F6CB8:   Set var_B8 = Me.Txt
  loc_10F6CBE:   Call 0.Method_Proc_51_39_10F6EFC0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F6CC6:   var_F4 = var_BC.Text
  loc_10F6CDF:   unk_4E2DAE.Execute var_F8 & var_C0 & "'", var_108, 
  loc_10F6CE7:    = var_A8.Tag.Fields
  loc_10F6CEF:    = var_E4.Item()
  loc_10F6CF7:    = var_F8.Value
  loc_10F6D32:   If (var_108 > 0) Then
  loc_10F6D40:     var_108 = "Information"
  loc_10F6D50:     var_A0 = "Duplicate Name"
  loc_10F6D56:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F6D71:     Set var_90 = Me.Txt
  loc_10F6D77:     Call 0.Method_Proc_51_39_10F6EFC0 (CInt(0))
  loc_10F6D7F:     var_A8.SetFocus
  loc_10F6D90:     Proc_51_39_10F6EFC = &HFF
  loc_10F6D96:   End If
  loc_10F6D99: Else
  loc_10F6D9F:   var_F4 = 0
  loc_10F6DD4:   Set var_90 = Me.Txt
  loc_10F6DDA:   Call 0.Method_Proc_51_39_10F6EFC0 (CInt(1), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_10F6E03:   Set var_B8 = Me.Txt
  loc_10F6E09:   Call 0.Method_Proc_51_39_10F6EFC0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F6E11:   var_F4 = var_BC.Text
  loc_10F6E3B:   unk_4E2DAE.Execute var_F8 & var_C0 & "' And Name<>'" & global_100 & "'", var_108, var_A8
  loc_10F6E43:    = var_A8.Tag.Fields
  loc_10F6E4B:    = var_E4.Item()
  loc_10F6E53:    = var_F8.Value
  loc_10F6E92:   If (var_108 > 0) Then
  loc_10F6EB6:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F6ED1:     Set var_90 = Me.Txt
  loc_10F6ED7:     Call 0.Method_Proc_51_39_10F6EFC0 (CInt(0))
  loc_10F6EDF:     var_A8.SetFocus
  loc_10F6EF0:     Proc_51_39_10F6EFC = &HFF
  loc_10F6EF6:   End If
  loc_10F6EF6: End If
  loc_10F6EF6: Proc_51_39_10F6EFC = var_A8
End Sub

Public Sub Proc_51_40_F6BCC0
  'Data Table: 4E2D94
  loc_F6BB98: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6BBAA:   Me.DGHelp.Visible = False
  loc_F6BBB2: End If
  loc_F6BBCE: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_F6BBE0:   Me.DGSaleAc.Visible = False
  loc_F6BBE8: End If
  loc_F6BC04: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_F6BC16:   Me.DGSaleTax.Visible = False
  loc_F6BC1E: End If
  loc_F6BC3A: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6BC4C:   Me.DGRest.Visible = False
  loc_F6BC54: End If
  loc_F6BC6F: If (Me.FrmList.Visible = &HFF) Then
  loc_F6BC7E:   Me.FrmList.Visible = False
  loc_F6BC86: End If
  loc_F6BCA2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6BCB4:   Me.FGPoint.Visible = False
  loc_F6BCBC: End If
  loc_F6BCBC: Exit Sub
End Sub

Public Sub Proc_51_41_E90374(arg_C) 'E90374
  'Data Table: 4E2D94
  Dim var_10C As TextBox
  loc_E90308: Call Proc_51_40_F6BCC0()
  loc_E90344: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90347:   Call TopCtrl1_UnknownEvent_16()
  loc_E9034F: Else
  loc_E90359:   Set var_108 = Me.Txt
  loc_E9035F:   Call 0.Method_Proc_51_41_E903740 (arg_C)
  loc_E90367:   var_10C.SetFocus
  loc_E90373: End If
  loc_E90373: Exit Sub
End Sub

Public Sub Proc_51_42_F716AC(arg_C) 'F716AC
  'Data Table: 4E2D94
  Dim var_148 As Integer
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim unk_4E2DAE As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  Dim var_130 As Variant
  loc_F715A9: var_148 = 0
  loc_F715C6: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F92070
  loc_F715D9: var_CC = (CVar(MemVar_1F92070) + Left(arg_C, 1))
  loc_F715F4: unk_4E2DAE.Execute CStr(CVar(var_8C & "' and isnumeric(SUBSTRING(Code,4,3))=1 and SUBSTRING(Code,1,3) ='") & var_CC & "'"), var_130, -1
  loc_F715FC: var_134 = var_134.Fields
  loc_F71604: var_148 = var_138.Item(var_138)
  loc_F7160C: var_14C = var_14C.Value
  loc_F71661: var_DC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) + Left(arg_C, 1))
  loc_F7168D: var_130 = (1 + Format(CStr(var_15C), "000"))
  loc_F71692: var_88 = CStr(var_130)
  loc_F716A4: Proc_51_42_F716AC = 1
End Sub
