VERSION 5.00
Begin VB.Form FrmItemCatRaw
  Caption = "Category/Charge Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemCatRaw.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 9300
  ClientHeight = 6345
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9300
    Height = 450
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2820
    Top = 2955
    Width = 1935
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin PictureBox Picture4
    Picture = "FrmItemCatRaw.frx":442
    Left = 9870
    Top = 8595
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 28
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "FrmItemCatRaw.frx":790
    Left = 9870
    Top = 8340
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 27
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "FrmItemCatRaw.frx":ADE
    Left = 9870
    Top = 8100
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 26
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture3
    Picture = "FrmItemCatRaw.frx":E2C
    Left = 9870
    Top = 7260
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 25
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGSaleAc
    Left = 7710
    Top = 4995
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4755
    Top = 2010
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin DataGrid DGSaleTax
    Left = 7560
    Top = 4470
    Width = 4230
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 10170
    Top = 795
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 21
    End
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4755
    Top = 2010
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
    Left = 2820
    Top = 2010
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
    Left = 2820
    Top = 1380
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
    Left = 2820
    Top = 2325
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
    Left = 2820
    Top = 2640
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
    Left = 2490
    Top = 8415
    Width = 1290
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 2
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2820
    Top = 1695
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
  Begin MSFlexGrid FGPoint
    Left = 7230
    Top = 1410
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGHelp
    Left = 8055
    Top = 3510
    Width = 4230
    Height = 2655
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGRest
    Left = 8460
    Top = 2835
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4380
    Top = 5175
    Width = 2790
    Height = 285
    TabIndex = 32
    Alignment = 2 'Center
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
    Left = 1005
    Top = 5175
    Width = 2880
    Height = 255
    TabIndex = 31
    Alignment = 2 'Center
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
    TabIndex = 30
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
    Caption = "Type"
    Index = 6
    ForeColor = &HC00000&
    Left = 1170
    Top = 2955
    Width = 465
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
  Begin Label Label2
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4215
    Top = 2010
    Width = 465
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
  Begin Label LblCatType
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4215
    Top = 2010
    Width = 420
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
    Caption = "Category/Charge"
    Index = 5
    ForeColor = &HC00000&
    Left = 1170
    Top = 2010
    Width = 1605
    Height = 240
    TabIndex = 18
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
    Caption = "Department"
    Index = 1
    ForeColor = &HC00000&
    Left = 1170
    Top = 1380
    Width = 1110
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H0&
    Left = 3870
    Top = 8430
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Post in Account"
    Index = 4
    ForeColor = &HC00000&
    Left = 1170
    Top = 2325
    Width = 1470
    Height = 240
    TabIndex = 14
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
    Left = 1170
    Top = 2640
    Width = 1290
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
    Caption = "Round Off"
    Index = 2
    ForeColor = &H0&
    Left = 765
    Top = 8415
    Width = 855
    Height = 240
    Visible = 0   'False
    TabIndex = 12
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
    Index = 0
    ForeColor = &HC00000&
    Left = 1170
    Top = 1695
    Width = 555
    Height = 240
    TabIndex = 9
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

Attribute VB_Name = "FrmItemCatRaw"


Private Sub DGSaleTax_UnknownEvent_9 'F3F7C4
  'Data Table: 4DBD60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F6BB: Me.DGSaleTax.Visible = False
  loc_F3F6DA: If (Me.RecordCount > 0) Then
  loc_F3F719:   Set var_B4 = Me.Txt
  loc_F3F71F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3F727:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3F75A:   var_B0 = Me.Fields.Item("Code")
  loc_F3F779:   Set var_B4 = Me.Txt
  loc_F3F77F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3F787:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3F79D: End If
  loc_F3F7A8: Set var_A8 = Me.Txt
  loc_F3F7AE: Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4))
  loc_F3F7B6: var_B0.SetFocus
  loc_F3F7C2: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_1F 'E70C04
  'Data Table: 4DBD60
  loc_E70BC2: Proc_6_153_E91194(Me.DGSaleTax, arg_14)
  loc_E70BD9: Set var_8C = Me.FGPoint
  loc_E70BF5: Proc_6_138_106D6F8(Me.DGSaleTax, global_64, CInt(4))
  loc_E70C03: Exit Sub
End Sub

Private Sub Form_Load() '13081FC
  'Data Table: 4DBD60
  Dim var_88 As Variant
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim unk_4DBD78 As Connection15
  Dim var_D8 As Recordset15
  Dim var_10C As String
  Dim var_110 As String
  loc_1307AE8: On Error Goto loc_13081B5
  loc_1307AFA: Me.LblUser.Left = CDbl(13500)
  loc_1307B11: Me.LblUser.Top = CDbl(7800)
  loc_1307B28: Me.LblLDt.Top = CDbl(8160)
  loc_1307B3F: Me.LblLDt.Left = CDbl(13500)
  loc_1307B4E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1307B61: Set var_88 = Me.Txt
  loc_1307B67: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1307B86: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1307BA2: Set var_B4 = Me.Txt
  loc_1307BA8: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1307BC3: Set var_88 = Me.Txt
  loc_1307BC9: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1307BE1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1307BF0: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1307C0C: Set var_88 = Me.TopCtrl1
  loc_1307C12: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1307C20: Call 0.Method_arg_50 (var_C4)
  loc_1307C28: var_D4 = CVar(var_C4) 'String
  loc_1307C30: Set var_88 = Me.TopCtrl1
  loc_1307C36: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_1307C4F: Set var_88 = Me.Txt
  loc_1307C55: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1307C74: Me.DGRest.Left = CVar(var_8C.Left)
  loc_1307C90: Set var_B4 = Me.Txt
  loc_1307C96: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_1307CB1: Set var_88 = Me.Txt
  loc_1307CB7: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1307CCF: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1307CDE: Me.DGRest.Top = CVar(var_8C.Left)
  loc_1307CFE: Set var_88 = Me.Txt
  loc_1307D04: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1307D23: Me.DGSaleAc.Left = CVar(var_8C.Left)
  loc_1307D3F: Set var_B4 = Me.Txt
  loc_1307D45: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_1307D60: Set var_88 = Me.Txt
  loc_1307D66: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1307D7E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1307D8D: Me.DGSaleAc.Top = CVar(var_8C.Left)
  loc_1307DAD: Set var_88 = Me.Txt
  loc_1307DB3: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1307DD2: Me.DGSaleTax.Left = CVar(var_8C.Left)
  loc_1307DEE: Set var_B4 = Me.Txt
  loc_1307DF4: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_1307E0F: Set var_88 = Me.Txt
  loc_1307E15: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1307E2D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1307E3C: Me.DGSaleTax.Top = CVar(var_8C.Left)
  loc_1307E6B: Proc_6_17_EAA2B0(var_D4, MemVar_1F92078, "Select ShowAllAcInPurcahseCategoryYN From Enviro WHERE LOGSITE_CODE=")
  loc_1307E81: unk_4DBD78.Execute CStr(var_108 & var_D4), -1, var_88
  loc_1307E8C: Set var_D8 = var_88
  loc_1307EB2: If (var_D8.RecordCount > 0) Then
  loc_1307EC4:   var_88 = var_D8.Fields
  loc_1307ED4:   var_D4 = CVar(var_88.Item("ShowAllAcInPurcahseCategoryYN")) 'Address
  loc_1307EEE:   If (Proc_6_38_E68A98(var_D4) = "Yes") Then
  loc_1307F0C:     var_10C = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','250','260','270','280','040') Order by Name"
  loc_1307F15:     unk_4DBD78.Execute var_10C, var_D4, -1
  loc_1307F26:     Set global_60 = var_88
  loc_1307F3E:   Else
  loc_1307F59:     var_10C = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name"
  loc_1307F62:     unk_4DBD78.Execute var_10C, var_D4, -1
  loc_1307F73:     Set global_60 = var_88
  loc_1307F88:   End If
  loc_1307F91:   CVarUnk
  loc_1307F96:   VerifyVarObj
  loc_1307F9C:   Set var_88 = Me.DGSaleAc
  loc_1307FA2:   LateIdStAd
  loc_1307FB0: End If
  loc_1307FD2: var_110 = "SELECT Code,Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestCode='" & MemVar_1F92078
  loc_1307FE2: unk_4DBD78.Execute var_110 & "PURC' ORDER BY Name", var_D4, -1
  loc_1308015: CVarUnk
  loc_130801A: VerifyVarObj
  loc_1308020: Set var_88 = Me.DGHelp
  loc_1308026: LateIdStAd
  loc_1308048: var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.TaxStruType,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code where (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_1308058: unk_4DBD78.Execute var_C4 & "' or IC.LOGSITE_CODE='HO') and resttype='Store' ORDER BY D.Name,IC.Name", var_D4, -1
  loc_1308099: var_10C = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_13080A2: unk_4DBD78.Execute var_10C, var_D4, -1
  loc_13080D1: CVarUnk
  loc_13080D6: VerifyVarObj
  loc_13080E2: LateIdStAd
  loc_130810B: var_10C = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestType='Store' Order by Name"
  loc_1308114: unk_4DBD78.Execute var_10C, var_D4, -1
  loc_1308143: CVarUnk
  loc_1308148: VerifyVarObj
  loc_130814E: Set var_88 = Me.DGRest
  loc_1308154: LateIdStAd
  loc_130816E: Set var_88 = Me
  loc_1308177: var_C4 = "INI"
  loc_1308185: Call Proc_86_34_E779B4(Proc_5_1_100CB50(var_C4, var_88, var_88, var_88, Me.DGSaleTax, var_88, var_88, var_88), var_88, var_88, var_88, var_88)
  loc_1308199: Call 0.Method_arg_160 (var_88, var_88, var_88)
  loc_13081A7: Call 0.Method_arg_164 (var_88, global_60)
  loc_13081AF: Call Proc_86_36_13D2F78(var_88)
  loc_13081B4: Exit Sub
  loc_13081B5: ' Referenced from: 1307AE8
  loc_13081BD: Set var_88 = Err()
  loc_13081C3: Call 0.Method_arg_2C (var_C4)
  loc_13081E4: MsgBox(CVar(var_C4), &H40, "Information", var_108, var_128)
  loc_13081F7: Exit Sub
  loc_13081F8: Exit Sub
End Sub

Private Sub Form_Resize() 'ED81B8
  'Data Table: 4DBD60
  Dim var_8C As Label
  loc_ED8116: Call 0.Method_arg_50 (var_88)
  loc_ED8128: Me.LblFormCaption.Caption = var_88
  loc_ED8141: Me.LblFormCaption.Left = CDbl(0)
  loc_ED814D: Set var_A0 = Me.TopCtrl1
  loc_ED8153: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8160: Set var_8C = Me.TopCtrl1
  loc_ED8166: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8180: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED819B: Call 0.Method_arg_100 (var_B8)
  loc_ED81AD: Me.LblFormCaption.Width = var_B8
  loc_ED81B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6B988
  'Data Table: 4DBD60
  loc_E6B937: Set global_52 = Nothing
  loc_E6B949: Set global_60 = Nothing
  loc_E6B95B: Set global_64 = Nothing
  loc_E6B96D: Set global_68 = Nothing
  loc_E6B97F: Set global_56 = Nothing
  loc_E6B986: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B4D0
  'Data Table: 4DBD60
  loc_E8B46C: On Error Goto loc_E8B48C
  loc_E8B483: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8B48B: Exit Sub
  loc_E8B48C: ' Referenced from: E8B46C
  loc_E8B494: Set var_88 = Err()
  loc_E8B49A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B4BB: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B4CE: Exit Sub
  loc_E8B4CF: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F409A4
  'Data Table: 4DBD60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4089B: Me.DGHelp.Visible = False
  loc_F408BA: If (Me.RecordCount > 0) Then
  loc_F408F9:   Set var_B4 = Me.Txt
  loc_F408FF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F40907:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4093A:   var_B0 = Me.Fields.Item("Code")
  loc_F40959:   Set var_B4 = Me.Txt
  loc_F4095F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F40967:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4097D: End If
  loc_F40988: Set var_A8 = Me.Txt
  loc_F4098E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F40996: var_B0.SetFocus
  loc_F409A2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6F60C
  'Data Table: 4DBD60
  loc_E6F5CA: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6F5E1: Set var_8C = Me.FGPoint
  loc_E6F5FD: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E6F60B: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'F3F504
  'Data Table: 4DBD60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F3FB: Me.DGSaleAc.Visible = False
  loc_F3F41A: If (Me.RecordCount > 0) Then
  loc_F3F459:   Set var_B4 = Me.Txt
  loc_F3F45F:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3F467:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3F49A:   var_B0 = Me.Fields.Item("Code")
  loc_F3F4B9:   Set var_B4 = Me.Txt
  loc_F3F4BF:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3F4C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3F4DD: End If
  loc_F3F4E8: Set var_A8 = Me.Txt
  loc_F3F4EE: Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3))
  loc_F3F4F6: var_B0.SetFocus
  loc_F3F502: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_1F 'E709B4
  'Data Table: 4DBD60
  loc_E70972: Proc_6_153_E91194(Me.DGSaleAc, arg_14)
  loc_E70989: Set var_8C = Me.FGPoint
  loc_E709A5: Proc_6_138_106D6F8(Me.DGSaleAc, global_60, CInt(3))
  loc_E709B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAB4B4
  'Data Table: 4DBD60
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EAB428: On Error Goto loc_EAB4AE
  loc_EAB44E: Call Proc_86_34_E779B4(Proc_5_1_100CB50("ADD", Me))
  loc_EAB459: Call Proc_86_35_EE19FC(global_52)
  loc_EAB469: Set var_8C = Me.Txt
  loc_EAB46F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAB477: var_94.SetFocus
  loc_EAB490: Me.LblUser.Caption = vbNullString
  loc_EAB4A5: Me.LblLDt.Caption = vbNullString
  loc_EAB4AD: Exit Sub
  loc_EAB4AE: ' Referenced from: EAB428
  loc_EAB4AE: Proc_6_60_E62BC4(var_94)
  loc_EAB4B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC0FAC
  'Data Table: 4DBD60
  loc_EC0F14: On Error Goto loc_EC0FA4
  loc_EC0F4E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC0F5D:   Set var_110 = Me
  loc_EC0F74:   Call Proc_86_34_E779B4(Proc_5_1_100CB50("INI", var_110))
  loc_EC0F7F:   Call Proc_86_38_F6C724(global_52)
  loc_EC0F84:   Call Proc_86_36_13D2F78()
  loc_EC0F8C: Else
  loc_EC0F92:   Call 0.Method_arg_1E8 (var_110)
  loc_EC0F9A:   Call var_110.SetFocus
  loc_EC0FA3: End If
  loc_EC0FA3: Exit Sub
  loc_EC0FA4: ' Referenced from: EC0F14
  loc_EC0FA4: Proc_6_60_E62BC4()
  loc_EC0FA9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '128CDC0
  'Data Table: 4DBD60
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim unk_4DBD78 As Connection15
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_128C810: On Error Goto loc_128CD70
  loc_128C821: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_128C824:   Exit Sub
  loc_128C825: End If
  loc_128C833: Set var_9C = Me.Txt
  loc_128C839: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_A0)
  loc_128C858: If (var_A0.Text = "Category") Then
  loc_128C870:   var_9C = Me.Fields
  loc_128C880:   var_C8 = var_9C.Item("Code").Value
  loc_128C88D:   var_D4 = "Item Master"
  loc_128C8D5:   If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "ItemCatCode", CStr(var_C8)) = 0) Then
  loc_128C8D8:     Exit Sub
  loc_128C8D9:   End If
  loc_128C8D9: End If
  loc_128C900: unk_4DBD78.Execute "Select Code From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_128C90B: Set var_98 = var_9C
  loc_128C921: var_D0 = var_98.RecordCount
  loc_128C92F: If (var_D0 > 0) Then
  loc_128C977:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'" 
  loc_128C985:   unk_4DBD78.Execute CStr(var_118), var_138, -1
  loc_128C9E6:   If (var_13C.Fields.Item(0).Value > 0) Then
  loc_128CA0A:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_118, var_138)
  loc_128CA1A:     Exit Sub
  loc_128CA1B:   End If
  loc_128CA1B: End If
  loc_128CA52: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_128CA5E:   unk_4DBD78.BeginTrans var_D0
  loc_128CA74:   var_94 = Me.Bookmark 'Variant
  loc_128CAC0:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_128CACE:   unk_4DBD78.Execute CStr(var_118), var_138, -1
  loc_128CB0F:   var_C8 = Me.Fields.Item("Code").Value
  loc_128CB19:   var_168 = 0
  loc_128CB2C:   var_160 = 0
  loc_128CB37:   var_15C = 0
  loc_128CB4A:   var_154 = 0
  loc_128CB55:   var_150 = 0
  loc_128CB68:   var_148 = 0
  loc_128CBB1:   Proc_154_5_10E33A4(MemVar_1F92044, "ItemCatMast", "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_128CC00:   unk_4DBD78.Execute "Delete From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_128CC17:   var_160 = 0
  loc_128CC2A:   var_15C = 0
  loc_128CC35:   var_154 = 0
  loc_128CC48:   var_150 = 0
  loc_128CC53:   var_148 = 0
  loc_128CC66:   var_144 = 0
  loc_128CCA4:   var_A4 = "RevMast"
  loc_128CCAD:   Proc_154_5_10E33A4(MemVar_1F92044, var_A4, "Name", &HC8, global_72, 0, 0, 0)
  loc_128CCCF:   unk_4DBD78.CommitTrans
  loc_128CCDF:   Me.Requery -1
  loc_128CCEF:   Me.Requery -1
  loc_128CD0F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_128CD1C:     Me.Bookmark = var_94
  loc_128CD24:   Else
  loc_128CD38:     If (Me.EOF = 0) Then
  loc_128CD41:       Me.MoveLast
  loc_128CD46:     End If
  loc_128CD46:   End If
  loc_128CD46:   Call Proc_86_36_13D2F78(var_144, 0, var_148, var_150)
  loc_128CD67:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_128CD6F: End If
  loc_128CD6F: Exit Sub
  loc_128CD70: ' Referenced from: 128C810
  loc_128CD76: unk_4DBD78.RollbackTrans
  loc_128CD83: Set var_9C = Err()
  loc_128CD89: Call 0.Method_arg_2C (var_A4, 0, var_154)
  loc_128CDAA: MsgBox(CVar(var_A4), &H30, " Deletion Error ", var_118, var_138)
  loc_128CDBD: Exit Sub
  loc_128CDBE: GoTo loc_128B10F
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F30DBC
  'Data Table: 4DBD60
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F30CA0: On Error Goto loc_F30DB6
  loc_F30CB1: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F30CB4:   Exit Sub
  loc_F30CB5: End If
  loc_F30CD8: Call Proc_86_34_E779B4(Proc_5_1_100CB50("EDIT", Me))
  loc_F30CF1: Set var_8C = Me.Txt
  loc_F30CF7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F30D0A: global_80 = var_94.Text
  loc_F30D25: Set var_8C = Me.Txt
  loc_F30D2B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F30D33: var_94.Enabled = False
  loc_F30D4C: Set var_8C = Me.Txt
  loc_F30D52: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F30D5A: var_94.Enabled = False
  loc_F30D71: Set var_8C = Me.Txt
  loc_F30D77: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F30D7F: var_94.SetFocus
  loc_F30D98: Me.LblUser.Caption = vbNullString
  loc_F30DAD: Me.LblLDt.Caption = vbNullString
  loc_F30DB5: Exit Sub
  loc_F30DB6: ' Referenced from: F30CA0
  loc_F30DB6: Proc_6_60_E62BC4(global_52)
  loc_F30DBB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19570
  'Data Table: 4DBD60
  loc_E19565: Me.Global.Unload Me
  loc_E1956D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26BA8
  'Data Table: 4DBD60
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F26AA8: On Error Goto loc_F26B40
  loc_F26AB4: var_88 = Me.RecordCount
  loc_F26AC2: If (var_88 <= 0) Then
  loc_F26ACB:   var_B8 = "Information"
  loc_F26AE6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F26AF6:   Exit Sub
  loc_F26AF7: End If
  loc_F26AFE: var_10C = "SELECT distinct IC.Code AS SearchCode,IC.Name AS ItemCategory,IC.Flag,IC.CatType As Type,VS.Name As PurchaseAc,TaxStru.Name As TaxStructure,IC.TaxStruType As Type FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_F26B05: MemVar_1F920E4 = var_10C & "' or IC.LOGSITE_CODE='HO') AND D.RestType='Store' ORDER BY IC.Name"
  loc_F26B12: MemVar_1F92120 = Me
  loc_F26B19: var_10C = "3000,1000,1400,2780,1800,1500"
  loc_F26B1F: Proc_6_126_F1BCC0(var_10C)
  loc_F26B3A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F26B3F: Exit Sub
  loc_F26B40: ' Referenced from: F26AA8
  loc_F26B48: Set var_110 = Err()
  loc_F26B4E: Call 0.Method_arg_1C (var_88)
  loc_F26B5F: If (var_88 <> 0) Then
  loc_F26B6A:   Set var_110 = Err()
  loc_F26B70:   Call 0.Method_arg_2C (var_10C)
  loc_F26B91:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F26BA4: End If
  loc_F26BA4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38778
  'Data Table: 4DBD60
  loc_E38768: Proc_5_0_110649C(&HFF, Me)
  loc_E38770: Call Proc_86_36_13D2F78(global_52)
  loc_E38775: Exit Sub
  loc_E38776: var_1788 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38B98
  'Data Table: 4DBD60
  loc_E38B88: Proc_5_0_110649C(&HFF, Me)
  loc_E38B90: Call Proc_86_36_13D2F78(global_52)
  loc_E38B95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38C58
  'Data Table: 4DBD60
  loc_E38C48: Proc_5_0_110649C(&HFF, Me)
  loc_E38C50: Call Proc_86_36_13D2F78(global_52)
  loc_E38C55: Exit Sub
  loc_E38C56: var_1788 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C1F8
  'Data Table: 4DBD60
  loc_E3C1E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C1F0: Call Proc_86_36_13D2F78(global_52)
  loc_E3C1F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A0394
  'Data Table: 4DBD60
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4DBD78 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_F4 As Variant
  loc_10A00EC: On Error Goto loc_10A034A
  loc_10A0103: var_A0 = "SELECT IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.Flag,IC.CatType As Type,D.Name As Outlet,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name as OutLetName  FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode)Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code WHERE (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_10A0121: unk_4DBD78.Execute var_A0 & "' or IC.LOGSITE_CODE='HO') AND d.code='" & MemVar_1F92078 & "PURC'  ORDER BY IC.Name", var_CC, -1
  loc_10A012C: Set var_88 = var_D0
  loc_10A0146: var_D4 = var_88.RecordCount
  loc_10A0154: If (var_D4 = 0) Then
  loc_10A0170:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_10A0180:   Exit Sub
  loc_10A0181: End If
  loc_10A0190: var_A4 = MemVar_1F920B4 & "\ItemCatMast.ttx"
  loc_10A0197: Set var_D0 = var_88 
  loc_10A01A3: var_136 = CreateFieldDefFile(var_D0, var_A4)
  loc_10A01AD: Set var_88 = var_D0
  loc_10A01B3: var_BC = CVar(var_136) 'Integer
  loc_10A01B6: var_98 = var_BC 'Variant
  loc_10A01D2: var_A0 = MemVar_1F920B4 & "\ItemCatMast.RPT"
  loc_10A01DB: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_10A01E6: MemVar_1F921E4 = var_D0
  loc_10A0201: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_10A0209: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10A0215: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_10A022E:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A0236:   Call 0.Method_arg_20 (var_140)
  loc_10A023E:   Call 0.Method_arg_30 (var_A0)
  loc_10A0284:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A029A:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A02A2:     Call 0.Method_arg_20 (var_140)
  loc_10A02AA:     Call 0.Method_arg_38 ("'Item Category Master'")
  loc_10A02B6:   End If
  loc_10A02B9: Next var_13A 'Integer
  loc_10A02D7: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_10A02DF: Call 0.Method_arg_2C (var_E4)
  loc_10A02ED: Call 0.Method_arg_150 (var_104)
  loc_10A02F8: Call 0.Method_arg_50 (var_A0)
  loc_10A0302: Set var_140 = Nothing
  loc_10A031C: Set var_D0 = MemVar_1F921E4 
  loc_10A0328: Proc_6_99_1483714(var_D0, 0, var_A0)
  loc_10A0333: MemVar_1F921E4 = var_D0
  loc_10A0346: Set var_88 = Nothing
  loc_10A0349: Exit Sub
  loc_10A034A: ' Referenced from: 10A00EC
  loc_10A0352: Set var_D0 = Err()
  loc_10A0358: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A0363: Call 0.Method_arg_50 (var_A4)
  loc_10A037F: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_10A0392: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E57678
  'Data Table: 4DBD60
  Dim Me As Recordset15
  loc_E5763F: Me.Requery -1
  loc_E5764F: Me.Requery -1
  loc_E5765F: Me.Requery -1
  loc_E5766F: Me.Requery -1
  loc_E57674: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15117E8
  'Data Table: 4DBD60
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4DBD78 As Connection15
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
  Dim var_20C As Variant
  Dim var_214 As TextBox
  Dim var_238 As Variant
  Dim var_270 As Variant
  Dim var_290 As Variant
  Dim var_2B8 As TextBox
  Dim var_304 As TextBox
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_3E0 As TextBox
  Dim var_464 As Variant
  Dim var_120 As String
  Dim var_138 As String
  Dim var_218 As String
  Dim var_F4 As Variant
  Dim var_170 As TextBox
  Dim var_190 As Variant
  Dim var_260 As TextBox
  Dim var_280 As Variant
  loc_15109E4: On Error Goto loc_1511794
  loc_15109EB: var_86 = CByte(0) 'Byte
  loc_15109FA: Set var_A0 = Me.Txt
  loc_1510A00: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1510A29: If (Proc_6_27_EA565C(var_A4, "Name") = 0) Then
  loc_1510A33:   Call Txt_GotFocus()
  loc_1510A38:   Exit Sub
  loc_1510A39: End If
  loc_1510A44: Set var_A0 = Me.Txt
  loc_1510A4A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1510A73: If (Proc_6_27_EA565C(var_A4, "Outlet Name") = 0) Then
  loc_1510A7D:   Call Txt_GotFocus()
  loc_1510A82:   Exit Sub
  loc_1510A83: End If
  loc_1510A8E: Set var_A0 = Me.Txt
  loc_1510A94: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, CInt(1))
  loc_1510ABD: If (Proc_6_27_EA565C(var_A4, "Post in A/c") = 0) Then
  loc_1510AC7:   Call Txt_GotFocus()
  loc_1510ACC:   Exit Sub
  loc_1510ACD: End If
  loc_1510AD8: Set var_A0 = Me.Txt
  loc_1510ADE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, CInt(3))
  loc_1510B07: If (Proc_6_27_EA565C(var_A4, "Tax Structure") = 0) Then
  loc_1510B11:   Call Txt_GotFocus()
  loc_1510B16:   Exit Sub
  loc_1510B17: End If
  loc_1510B22: Set var_A0 = Me.Txt
  loc_1510B28: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4, CInt(4))
  loc_1510B51: If (Proc_6_27_EA565C(var_A4, "Type") = 0) Then
  loc_1510B5B:   Call Txt_GotFocus()
  loc_1510B60:   Exit Sub
  loc_1510B61: End If
  loc_1510B64: Call Proc_86_37_1088448(var_AE, CInt(8))
  loc_1510B6F: If (var_AE = &HFF) Then
  loc_1510B72:   Exit Sub
  loc_1510B73: End If
  loc_1510B77: Set var_A0 = Me.TopCtrl1
  loc_1510B7D: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_1510B96: If (CStr(var_A4) = "Add") Then
  loc_1510B9F:   var_E4 = 0
  loc_1510BBC:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4))=1 and U_Name<>'Analysis' and SITE_CODE='" & MemVar_1F92070
  loc_1510BCC:   unk_4DBD78.Execute CStr(var_A4) & "'", var_C0, -1
  loc_1510BD4:   var_A0 = var_A0.Fields
  loc_1510BDC:   var_E4 = var_A4.Item(var_A4)
  loc_1510BE4:   var_A8 = var_A8.Value
  loc_1510C1D:   var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1510C43:   var_F4 = Format(CStr(var_F4), "0000")
  loc_1510C4B:   var_118 = (1 + var_F4)
  loc_1510C56:   global_76 = CStr(var_118)
  loc_1510C6B: Else
  loc_1510C88:   var_A4 = Me.Fields.Item("Code")
  loc_1510C9F:   global_76 = CStr(var_A4.Value)
  loc_1510CB0: End If
  loc_1510CB9: unk_4DBD78.BeginTrans var_11C
  loc_1510CC2: var_86 = CByte(1) 'Byte
  loc_1510CCA: Set var_A0 = Me.TopCtrl1
  loc_1510CD0: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1510CE9: If (CStr(var_108) = "Add") Then
  loc_1510D00:   var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,TaxStruType,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,SITE_CODE,LOGSITE_CODE)"
  loc_1510D07:   var_C4 = var_AC & " Values('"
  loc_1510D11:   var_F8 = var_C4 & global_76
  loc_1510D29:   Set var_A0 = Me.Txt
  loc_1510D2F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_120, CVar(var_F8 & "',"))
  loc_1510D37:   var_4C8 = var_A4.Text
  loc_1510D3F:   var_C0 = CVar(var_120) 'String
  loc_1510D45:   Proc_6_17_EAA2B0(var_F4, var_C0, -1)
  loc_1510D56:   var_130 = var_4CC & var_F4 & ",'" 
  loc_1510D68:   Set var_A8 = Me.Txt
  loc_1510D6E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134, var_138)
  loc_1510D76:   var_130 = var_134.Tag
  loc_1510D99:   Set var_16C = Me.Txt
  loc_1510D9F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_170)
  loc_1510DAE:   Proc_6_17_EAA2B0(var_190, CVar(var_170))
  loc_1510DD1:   Set var_1C4 = Me.Txt
  loc_1510DD7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C8)
  loc_1510E05:   Set var_210 = Me.Txt
  loc_1510E0B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_214)
  loc_1510E3C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_260)
  loc_1510E53:   var_290 = var_F4 & CVar(var_138) & "'," & var_190 & ",'" & CVar(var_1C8.Tag) & "','" & CVar(var_214.Tag) & "','" & Trim(CVar(var_260)) 
  loc_1510E6E:   Set var_2B4 = Me.Txt
  loc_1510E74:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2B8)
  loc_1510EA2:   Set var_300 = Me.Txt
  loc_1510EA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_304)
  loc_1510EE9:   Proc_6_7_F25D88(var_3A8, Date)
  loc_1510EFA:   var_3D8 = var_290 & "','" & CVar(var_2B8.Text) & "','" & CVar(var_304.Text) & "','Y','" & CVar(MemVar_1F920C8) & "'," & var_3A8 & ",'A','" 
  loc_1510F0C:   Set var_3DC = Me.Txt
  loc_1510F12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3E0)
  loc_1510F41:   var_464 = var_3D8 & CVar(var_3E0.Text) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_1510F62:   unk_4DBD78.Execute CStr(var_464 & CVar(MemVar_1F92078) & "')"), , 
  loc_1510FFF:   Set var_A0 = Me.Txt
  loc_1511005:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1511019:   Call Proc_86_40_F65150(var_A4.Text)
  loc_1511042:   var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_F8
  loc_1511056:   var_F8 = global_104 & " - "
  loc_1511067:   Set var_A0 = Me.Txt
  loc_151106D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, var_F8, var_AC & "','")
  loc_1511075:   var_270 = var_A4.Text
  loc_151107E:   var_138 = -1 & var_C4
  loc_15110B6:   var_F4 = CVar(Me.Txt & var_138 & "','" & global_104 & "','Y','Amount','Detail','PUR','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_15110BC:   Proc_6_104_ED5D18(var_C0, var_F4)
  loc_15110DF:   Set var_A8 = Me.Txt
  loc_15110E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_15110F8:   var_148 = var_F8 & var_C0 & ",'A','C','" & CVar(var_134.Tag) 
  loc_1511113:   Set var_16C = Me.Txt
  loc_1511119:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_1511147:   Set var_1C4 = Me.Txt
  loc_151114D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_151117B:   Set var_210 = Me.Txt
  loc_1511181:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_15111A7:   var_238 = var_148 & "','" & CVar(var_170.Tag) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_214.Tag) & "','" & CVar(MemVar_1F92078) 
  loc_15111BE:   unk_4DBD78.Execute CStr(var_238 & "')"), , 
  loc_1511225: Else
  loc_1511242:   Set var_A0 = Me.Txt
  loc_1511248:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, "UPDATE ItemCatMast SET Name=")
  loc_1511250:   var_C0 = CVar(var_A4) 'Address
  loc_1511257:   Proc_6_17_EAA2B0(var_F4, var_C0, var_464)
  loc_151125F:   var_108 = -1 & var_F4 
  loc_1511277:   Set var_A8 = Me.Txt
  loc_151127D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_134)
  loc_151128C:   Proc_6_17_EAA2B0(var_148, CVar(var_134))
  loc_151129D:   var_168 = var_F8 & var_C0 & ",RoundOff=" & var_148 & ",AcName='" 
  loc_15112AF:   Set var_16C = Me.Txt
  loc_15112B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_170, var_AC)
  loc_15112BD:   var_168 = var_170.Tag
  loc_15112E3:   Set var_1C4 = Me.Txt
  loc_15112E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1C8)
  loc_1511314:   Set var_210 = Me.Txt
  loc_151131A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_214)
  loc_1511352:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_260)
  loc_1511365:   var_280 = var_3DC & CVar(var_AC) & "',TaxStru='" & CVar(var_1C8.Tag) & "',TaxStruType='" & Trim(CVar(var_214)) & "',Flag='" & CVar(var_260.Text) 
  loc_151136E:   var_290 = var_280 & "',CatType='" 
  loc_1511380:   Set var_2B4 = Me.Txt
  loc_1511386:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2B8)
  loc_15113B4:   Set var_300 = Me.Txt
  loc_15113BA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_304)
  loc_1511404:   Proc_6_7_F25D88(var_3A8, Date)
  loc_151140C:   var_3B8 = var_290 & CVar(var_2B8.Text) & "',DrCr='" & CVar(var_304.Text) & "'," & " U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_3A8 
  loc_151144C:   unk_4DBD78.Execute CStr(var_3B8 & " ,U_AE='E',SITE_CODE='" & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_76) & "'"), , 
  loc_15114DE:   var_C4 = global_104 & " - "
  loc_15114EF:   Set var_A0 = Me.Txt
  loc_15114F5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_1C8.Tag)
  loc_15114FD:   "Update RevMast Set Name='" = var_A4.Text
  loc_151150A:   var_120 = -1 & var_290 & var_AC
  loc_1511522:   var_218 = var_2B8.Text & "',ShortName='" & global_104 & "',SysYN='Y',AppMode='Amount',FlagAMR='Detail',FlagType='PUR',Site_Code='"
  loc_151153E:   var_F4 = CVar(var_218 & MemVar_1F92070 & "',U_Name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_1511544:   Proc_6_104_ED5D18(var_C0, var_F4)
  loc_151154C:   var_108 = Me.Txt & var_C0 
  loc_1511550:   var_D4 = ",U_AE='E',FieldType='C',DeskCode='"
  loc_1511555:   var_118 = var_108 & var_D4 
  loc_1511567:   Set var_A8 = Me.Txt
  loc_151156D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_151159B:   Set var_16C = Me.Txt
  loc_15115A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_15115CF:   Set var_1C4 = Me.Txt
  loc_15115D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_1511603:   Set var_210 = Me.Txt
  loc_1511609:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_151161C:   var_20C = var_118 & CVar(var_134.Tag) & "',TaxStru='" & CVar(var_170.Tag) & "',Type='" & CVar(var_1C8.Text) & "',AcCode='" & CVar(var_214.Tag) 
  loc_151164E:   var_280 = var_20C & "' Where (LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') AND Name='" & CVar(global_72) & "'" 
  loc_151165C:   unk_4DBD78.Execute CStr(var_280), , 
  loc_15116C0: End If
  loc_15116C6: unk_4DBD78.CommitTrans
  loc_15116CF: var_86 = CByte(0) 'Byte
  loc_15116DE: Me.Requery -1
  loc_15116EE: Me.Requery -1
  loc_151171B: Me.Find "Code='" & global_76 & "'", 0, 1
  loc_151172B: Set var_A0 = Me.TopCtrl1
  loc_1511731: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_151174A: If (CStr() = "Add") Then
  loc_151174D:   Call TopCtrl1_UnknownEvent_A()
  loc_1511752:   Exit Sub
  loc_1511753: End If
  loc_1511768: var_AC = "INI"
  loc_1511776: Call Proc_86_34_E779B4(Proc_5_1_100CB50(var_AC, Me))
  loc_1511781: Call Proc_86_38_F6C724(global_52)
  loc_1511786: Call Proc_86_36_13D2F78()
  loc_1511790: Set var_94 = Nothing
  loc_1511793: Exit Sub
  loc_1511794: ' Referenced from: 15109E4
  loc_151179D: If (CInt(var_86) = 1) Then
  loc_15117A6:   unk_4DBD78.RollbackTrans
  loc_15117AB: End If
  loc_15117B3: Set var_A0 = Err()
  loc_15117B9: Call 0.Method_arg_2C (var_AC)
  loc_15117D2: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_15117E5: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F3EB64
  'Data Table: 4DBD60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EA5B: Me.DGRest.Visible = False
  loc_F3EA7A: If (Me.RecordCount > 0) Then
  loc_F3EAB9:   Set var_B4 = Me.Txt
  loc_F3EABF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3EAC7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3EAFA:   var_B0 = Me.Fields.Item("Code")
  loc_F3EB19:   Set var_B4 = Me.Txt
  loc_F3EB1F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3EB27:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3EB3D: End If
  loc_F3EB48: Set var_A8 = Me.Txt
  loc_F3EB4E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F3EB56: var_B0.SetFocus
  loc_F3EB62: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6FA18
  'Data Table: 4DBD60
  loc_E6F9D6: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E6F9ED: Set var_8C = Me.FGPoint
  loc_E6FA09: Proc_6_138_106D6F8(Me.DGRest, global_68, CInt(1))
  loc_E6FA17: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8787C
  'Data Table: 4DBD60
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F87738: On Error Goto loc_F87816
  loc_F8773F: Set var_A4 = Me.ListView
  loc_F87789: Set var_BC = Me.Txt
  loc_F8778F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F87797: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F877C3: Me.FrmList.Visible = False
  loc_F877DD: var_A0 = CStr(Me.ListView.Tag)
  loc_F877E5: var_C8 = Val(var_A0)
  loc_F877F3: Set var_9C = Me.Txt
  loc_F877F9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F87801: var_A4.SetFocus
  loc_F87815: Exit Sub
  loc_F87816: ' Referenced from: F87738
  loc_F8781E: Set var_88 = Err()
  loc_F87824: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F87835: If (var_CC <> 0) Then
  loc_F87840:   Set var_88 = Err()
  loc_F87846:   Call 0.Method_arg_2C (var_A0)
  loc_F87867:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8787A: End If
  loc_F8787A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14315C0
  'Data Table: 4DBD60
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1430AFA: Set var_88 = Me.Txt
  loc_1430B00: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1430B0E: Proc_6_74_E226B0(var_8C)
  loc_1430B1A: Call Proc_86_38_F6C724(var_8C)
  loc_1430B22: var_92 = Index
  loc_1430B2D: If (var_92 = CInt(1)) Then
  loc_1430B47:   If (Me.RecordCount > 0) Then
  loc_1430B55:     Set var_8C = Me.FGPoint
  loc_1430B6D:     Proc_6_137_1193554(Me.DGRest, global_68, Index)
  loc_1430B7B:   End If
  loc_1430BC9:   Set var_88 = Me.Txt
  loc_1430BCF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1430BD7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1430BEF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1430BFF:     Set var_88 = Me.Txt
  loc_1430C05:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1430C0D:     var_8C.Tag = vbNullString
  loc_1430C19:     Exit Sub
  loc_1430C1A:   End If
  loc_1430C27:   Set var_88 = Me.Txt
  loc_1430C2D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1430C35:   var_A0 = var_8C.Text
  loc_1430C47:   var_B0 = "Name"
  loc_1430C82:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1430C8B:     Me.MoveFirst
  loc_1430CAE:     Set var_88 = Me.Txt
  loc_1430CB4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1430CBC:     0 = var_8C.Text
  loc_1430CD5:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1430CEA:   End If
  loc_1430CED: Else
  loc_1430CF5:   If (var_92 = CInt(3)) Then
  loc_1430D0F:     If (Me.RecordCount > 0) Then
  loc_1430D1D:       Set var_8C = Me.FGPoint
  loc_1430D35:       Proc_6_137_1193554(Me.DGSaleAc, global_60)
  loc_1430D43:     End If
  loc_1430D91:     Set var_88 = Me.Txt
  loc_1430D97:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1430D9F:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1430DB7:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1430DC7:       Set var_88 = Me.Txt
  loc_1430DCD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1430DD5:       var_8C.Tag = vbNullString
  loc_1430DE1:       Exit Sub
  loc_1430DE2:     End If
  loc_1430DEF:     Set var_88 = Me.Txt
  loc_1430DF5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1430DFD:     var_A0 = var_8C.Text
  loc_1430E0F:     var_B0 = "Name"
  loc_1430E4A:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1430E53:       Me.MoveFirst
  loc_1430E76:       Set var_88 = Me.Txt
  loc_1430E7C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1430E84:       0 = var_8C.Text
  loc_1430E9D:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1430EB2:     End If
  loc_1430EB5:   Else
  loc_1430EBD:     If (var_92 = CInt(4)) Then
  loc_1430ED7:       If (Me.RecordCount > 0) Then
  loc_1430EE5:         Set var_8C = Me.FGPoint
  loc_1430EFD:         Proc_6_137_1193554(Me.DGSaleTax, global_64)
  loc_1430F0B:       End If
  loc_1430F59:       Set var_88 = Me.Txt
  loc_1430F5F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1430F67:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1430F7F:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1430F8F:         Set var_88 = Me.Txt
  loc_1430F95:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1430F9D:         var_8C.Tag = vbNullString
  loc_1430FA9:         Exit Sub
  loc_1430FAA:       End If
  loc_1430FB7:       Set var_88 = Me.Txt
  loc_1430FBD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1430FC5:       var_A0 = var_8C.Text
  loc_1430FD7:       var_B0 = "Name"
  loc_1430FEE:       var_B4 = Me.Fields.Item(var_B0)
  loc_1431012:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_143101B:         Me.MoveFirst
  loc_143103E:         Set var_88 = Me.Txt
  loc_1431044:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143104C:         0 = var_8C.Text
  loc_1431065:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143107A:       End If
  loc_143107D:     Else
  loc_1431085:       If (var_92 = CInt(0)) Then
  loc_143109F:         If (Me.RecordCount > 0) Then
  loc_14310AD:           Set var_8C = Me.FGPoint
  loc_14310C5:           Proc_6_137_1193554(Me.DGHelp, global_56)
  loc_14310D3:         End If
  loc_14310D6:       Else
  loc_14310DE:         If (var_92 = CInt(2)) Then
  loc_14310F0:           Set var_88 = Me.Txt
  loc_14310F6:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_14310FE:           var_8C.SelStart = Index
  loc_1431117:           Set var_88 = Me.Txt
  loc_143111D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431138:           Set var_90 = Me.Txt
  loc_143113E:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1431146:           var_B4.SelLength = Len(var_8C.Text)
  loc_1431166:           Set var_88 = Me.Txt
  loc_143116C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431174:           var_A0 = var_8C.Text
  loc_1431186:           Set var_90 = Me.Txt
  loc_143118C:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1431194:           var_B4.Tag = var_A0
  loc_14311AA:         Else
  loc_14311B2:           If (var_92 = CInt(5)) Then
  loc_14311C2:             ReDim var_F0(0 To 1)
  loc_14311D9:             var_F0(0) = "Category"
  loc_14311E8:             var_F0(1) = "Charge"
  loc_14311FF:             global_84 = Array(var_F0)
  loc_143120A:             Set var_B4 = Me.ListView
  loc_1431225:             Set var_8C = Me.Txt
  loc_143123F:             Set global_100 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_84)
  loc_143125D:             Set var_88 = Me.Txt
  loc_1431263:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143126B:             2 = var_8C.Text
  loc_143127D:             Set var_90 = Me.Txt
  loc_1431283:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_143128B:             var_B4.Tag = global_84
  loc_14312A1:           Else
  loc_14312A9:             If (var_92 = CInt(6)) Then
  loc_14312B9:               ReDim var_F0(0 To 5)
  loc_14312D0:               var_F0(0) = "Semi Finish"
  loc_14312DF:               var_F0(1) = "Consumables"
  loc_14312EE:               var_F0(2) = "Others"
  loc_14312FD:               var_F0(3) = "Raw Material"
  loc_143130C:               var_F0(4) = "Store Item"
  loc_143131B:               var_F0(5) = "Expense/Income"
  loc_1431332:               global_84 = Array(var_F0)
  loc_143133D:               Set var_B4 = Me.ListView
  loc_1431358:               Set var_8C = Me.Txt
  loc_1431372:               Set global_100 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_84)
  loc_1431390:               Set var_88 = Me.Txt
  loc_1431396:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143139E:               6 = var_8C.Text
  loc_14313B0:               Set var_90 = Me.Txt
  loc_14313B6:               Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_14313BE:               var_B4.Tag = global_84
  loc_14313D4:             Else
  loc_14313DC:               If (var_92 = CInt(7)) Then
  loc_14313EC:                 ReDim var_F0(0 To 1)
  loc_1431403:                 var_F0(0) = "Dr"
  loc_1431412:                 var_F0(1) = "Cr"
  loc_1431429:                 global_84 = Array(var_F0)
  loc_1431434:                 Set var_B4 = Me.ListView
  loc_143144F:                 Set var_8C = Me.Txt
  loc_1431469:                 Set global_100 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_84)
  loc_1431487:                 Set var_88 = Me.Txt
  loc_143148D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1431495:                 2 = var_8C.Text
  loc_14314A7:                 Set var_90 = Me.Txt
  loc_14314AD:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_14314B5:                 var_B4.Tag = global_84
  loc_14314CB:               Else
  loc_14314D3:                 If (var_92 = CInt(8)) Then
  loc_14314E3:                   ReDim var_F0(0 To 1)
  loc_14314FA:                   var_F0(0) = "Registered"
  loc_1431509:                   var_F0(1) = "Unregistered"
  loc_1431520:                   global_84 = Array(var_F0)
  loc_143152B:                   Set var_B4 = Me.ListView
  loc_1431546:                   Set var_8C = Me.Txt
  loc_1431560:                   Set global_100 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_84)
  loc_143157E:                   Set var_88 = Me.Txt
  loc_1431584:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143158C:                   2 = var_8C.Text
  loc_143159E:                   Set var_90 = Me.Txt
  loc_14315A4:                   Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_14315AC:                   var_B4.Tag = global_84
  loc_14315BF:                 End If
  loc_14315BF:               End If
  loc_14315BF:             End If
  loc_14315BF:           End If
  loc_14315BF:         End If
  loc_14315BF:       End If
  loc_14315BF:     End If
  loc_14315BF:   End If
  loc_14315BF: End If
  loc_14315BF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '143CA64
  'Data Table: 4DBD60
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_143BF8A: If (CLng(Shift) = &H1B) Then
  loc_143BF8D:   Call Proc_86_38_F6C724()
  loc_143BF92:   Exit Sub
  loc_143BF93: End If
  loc_143BF96: var_88 = KeyCode
  loc_143BFA1: If (var_88 = CInt(0)) Then
  loc_143BFC1:   Set var_9C = Me.FGPoint
  loc_143BFF3:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_143C060:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143C086:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_143C094:   End If
  loc_143C097: Else
  loc_143C09F:   If (var_88 = CInt(1)) Then
  loc_143C0CA:     Set var_9C = Nothing
  loc_143C0F8:     Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_68, Shift, 0, 1)
  loc_143C167:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143C16E:       Set var_9C = Me.DGRest
  loc_143C18D:       Proc_6_138_106D6F8(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_143C19B:     End If
  loc_143C19E:   Else
  loc_143C1A6:     If (var_88 = CInt(3)) Then
  loc_143C1FF:       Proc_6_69_134A198(Me.DGSaleAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_143C26E:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143C294:         Proc_6_138_106D6F8(Me.DGSaleAc, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_143C2A2:       End If
  loc_143C2A5:     Else
  loc_143C2AD:       If (var_88 = CInt(4)) Then
  loc_143C2BB:         Set var_AC = Me.Txt
  loc_143C2CD:         Set var_A4 = Me.FGPoint
  loc_143C306:         Proc_6_69_134A198(Me.DGSaleTax, var_AC, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_143C325:         var_B0 = Me.RecordCount
  loc_143C375:         If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143C383:           Set var_90 = Me.FGPoint
  loc_143C39B:           Proc_6_138_106D6F8(Me.DGSaleTax, global_64, KeyCode, var_90, var_A4, 0)
  loc_143C3A9:         End If
  loc_143C3AC:       Else
  loc_143C3B4:         If (var_88 = CInt(6)) Then
  loc_143C3D9:           Set var_8C = Me.Txt
  loc_143C3DF:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_143C3E7:           1 = var_90.Left
  loc_143C3F9:           Set var_9C = Me.Txt
  loc_143C3FF:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143C407:           var_9C = var_A4.Top
  loc_143C419:           Set var_A8 = Me.Txt
  loc_143C41F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143C427:           0 = var_AC.Height
  loc_143C439:           Set var_B4 = Me.Txt
  loc_143C43F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143C447:           var_C4 = var_C0.Width
  loc_143C48F:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143C4B6:         Else
  loc_143C4BE:           If (var_88 = CInt(7)) Then
  loc_143C4E3:             Set var_8C = Me.Txt
  loc_143C4E9:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_143C4F1:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_143C503:             Set var_9C = Me.Txt
  loc_143C509:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143C511:             CInt(var_C4) = var_A4.Top
  loc_143C523:             Set var_A8 = Me.Txt
  loc_143C529:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143C531:             1530 = var_AC.Height
  loc_143C543:             Set var_B4 = Me.Txt
  loc_143C549:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143C551:             var_C4 = var_C0.Width
  loc_143C599:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143C5C0:           Else
  loc_143C5C8:             If (var_88 = CInt(8)) Then
  loc_143C5ED:               Set var_8C = Me.Txt
  loc_143C5F3:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_143C5FB:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_143C60D:               Set var_9C = Me.Txt
  loc_143C613:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143C61B:               CInt(var_C4) = var_A4.Top
  loc_143C62D:               Set var_A8 = Me.Txt
  loc_143C633:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143C63B:               510 = var_AC.Height
  loc_143C64D:               Set var_B4 = Me.Txt
  loc_143C653:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143C65B:               var_C4 = var_C0.Width
  loc_143C6A3:               Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143C6CA:             Else
  loc_143C6D2:               If (var_88 = CInt(5)) Then
  loc_143C6F7:                 Set var_8C = Me.Txt
  loc_143C6FD:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_143C705:                 CInt((var_B8 + var_BC)) = var_90.Left
  loc_143C717:                 Set var_9C = Me.Txt
  loc_143C71D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143C725:                 CInt(var_C4) = var_A4.Top
  loc_143C737:                 Set var_A8 = Me.Txt
  loc_143C73D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143C745:                 510 = var_AC.Height
  loc_143C757:                 Set var_B4 = Me.Txt
  loc_143C75D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143C765:                 var_C4 = var_C0.Width
  loc_143C7AD:                 Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143C7D1:               End If
  loc_143C7D1:             End If
  loc_143C7D1:           End If
  loc_143C7D1:         End If
  loc_143C7D1:       End If
  loc_143C7D1:     End If
  loc_143C7D1:   End If
  loc_143C7D1: End If
  loc_143C85D: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGSaleAc.Visible) = 0)) And (CBool(Me.DGSaleTax.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_143C868:   If (KeyCode = CInt(5)) Then
  loc_143C883:     Set var_90 = Me.ListView.SelectedItem
  loc_143C8A3:     If (var_90.Text = "Category") Then
  loc_143C8B2:       Me.LblCatType.Visible = True
  loc_143C8C7:       Set var_8C = Me.Txt
  loc_143C8CD:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, &HFF, CInt(var_B0))
  loc_143C8D5:       var_90.Visible = CInt((var_B8 + var_BC))
  loc_143C8E4:     Else
  loc_143C8F0:       Me.LblCatType.Visible = False
  loc_143C905:       Set var_8C = Me.Txt
  loc_143C90B:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, 0)
  loc_143C913:       var_90.Visible = CInt(var_C4)
  loc_143C91F:     End If
  loc_143C91F:   End If
  loc_143C927:   If (KeyCode = CInt(5)) Then
  loc_143C942:     Set var_90 = Me.ListView.SelectedItem
  loc_143C962:     If (var_90.Text = "Charge") Then
  loc_143C971:       Me.Label2.Visible = True
  loc_143C986:       Set var_8C = Me.Txt
  loc_143C98C:       Call 0.Method_Txt_KeyDown0 (CInt(7), var_90, &HFF)
  loc_143C994:       var_90.Visible = True
  loc_143C9A3:     Else
  loc_143C9AF:       Me.Label2.Visible = False
  loc_143C9C4:       Set var_8C = Me.Txt
  loc_143C9CA:       Call 0.Method_Txt_KeyDown0 (CInt(7), var_90)
  loc_143C9D2:       var_90.Visible = False
  loc_143C9DE:     End If
  loc_143C9DE:   End If
  loc_143C9F1:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_143C9FA:     Proc_6_76_E52838(Shift, arg_14)
  loc_143C9FF:   End If
  loc_143CA1D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(8))) Then
  loc_143CA26:     Proc_6_75_E527CC(Shift, arg_14)
  loc_143CA2B:   End If
  loc_143CA49:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_143CA54:     Call Txt_Validate(KeyCode)
  loc_143CA5C:     Call Proc_86_39_E92C3C(KeyCode, 0)
  loc_143CA61:   End If
  loc_143CA61: End If
  loc_143CA61: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1093368
  'Data Table: 4DBD60
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_10930BE: Proc_6_133_E7EF78(var_94)
  loc_10930D3: If (CInt(var_94) = &HD) Then
  loc_10930D8:   arg_10 = 0
  loc_10930DB: End If
  loc_10930DE: Proc_6_58_E054C0(arg_10, arg_10)
  loc_10930E6: var_96 = KeyAscii
  loc_10930F1: If (var_96 = CInt(2)) Then
  loc_109311D:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_109312D:     Set var_CC = Me.Txt
  loc_1093133:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_109313B:     var_D0.Text = var_96
  loc_109314A:   Else
  loc_1093173:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1093183:       Set var_CC = Me.Txt
  loc_1093189:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_1093191:       var_D0.Text = arg_10
  loc_109319D:     End If
  loc_109319D:   End If
  loc_109319F:   arg_10 = 0
  loc_10931A5: Else
  loc_10931AD:   If (var_96 = CInt(3)) Then
  loc_10931CC:     If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_10931DE:       var_D4 = "Name"
  loc_10931F9:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_109322B:       Proc_6_138_106D6F8(Me.DGSaleAc, global_60, KeyAscii, Me.FGPoint)
  loc_1093239:     End If
  loc_109323C:   Else
  loc_1093244:     If (var_96 = CInt(1)) Then
  loc_1093263:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1093290:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_10932C2:         Proc_6_138_106D6F8(Me.DGRest, global_68, KeyAscii, Me.FGPoint, 0)
  loc_10932D0:       End If
  loc_10932D3:     Else
  loc_10932DB:       If (var_96 = CInt(4)) Then
  loc_10932FA:         If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_1093327:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_1093359:           Proc_6_138_106D6F8(Me.DGSaleTax, global_64, KeyAscii, Me.FGPoint, 0)
  loc_1093367:         End If
  loc_1093367:       End If
  loc_1093367:     End If
  loc_1093367:   End If
  loc_1093367: End If
  loc_1093367: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F42D64
  'Data Table: 4DBD60
  Dim var_86 As Integer
  loc_F42C4F: var_86 = KeyCode
  loc_F42C5A: If (var_86 = CInt(0)) Then
  loc_F42C79:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F42C86:     var_A4 = "Name"
  loc_F42CA5:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_F42CD7:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F42CE5:   End If
  loc_F42CE8: Else
  loc_F42CF0:   If Not (var_86 = CInt(6)) Then
  loc_F42CFB:     If Not (var_86 = CInt(7)) Then
  loc_F42D06:       If (var_86 = CInt(8)) Then
  loc_F42D09:       End If
  loc_F42D09:     End If
  loc_F42D24:     If (Me.FrmList.Visible = &HFF) Then
  loc_F42D53:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F42D63:     End If
  loc_F42D63:   End If
  loc_F42D63: End If
  loc_F42D63: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4613C
  'Data Table: 4DBD60
  loc_E4611A: Set var_88 = Me.Txt
  loc_E46120: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4612E: Proc_6_73_E22704(var_8C)
  loc_E4613A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1355208
  'Data Table: 4DBD60
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As Variant
  Dim var_B0 As TextBox
  loc_13549E7: var_86 = Cancel
  loc_13549F2: If (var_86 = CInt(0)) Then
  loc_13549F8:   Call Proc_86_37_1088448(var_88)
  loc_1354A03:   If (var_88 = &HFF) Then
  loc_1354A08:     arg_10 = &HFF
  loc_1354A0B:     Exit Sub
  loc_1354A0C:   End If
  loc_1354A0F: Else
  loc_1354A17:   If (var_86 = CInt(1)) Then
  loc_1354A68:     Set var_94 = Me.Txt
  loc_1354A6E:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1354A76:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1354A8E:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1354A9E:       Set var_94 = Me.Txt
  loc_1354AA4:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1354AAC:       var_98.Tag = vbNullString
  loc_1354AB8:       Exit Sub
  loc_1354AB9:     End If
  loc_1354AF4:     Set var_B0 = Me.Txt
  loc_1354AFA:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1354B02:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1354B53:     Set var_B0 = Me.Txt
  loc_1354B59:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1354B61:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1354B94:     var_98 = Me.Fields.Item("ShortName")
  loc_1354BA5:     var_9C = CStr(var_98.Value)
  loc_1354BAB:     global_104 = var_9C
  loc_1354BBF:   Else
  loc_1354BC7:     If (var_86 = CInt(3)) Then
  loc_1354C18:       Set var_94 = Me.Txt
  loc_1354C1E:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1354C26:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1354C3E:       If (var_86 Or (var_9C = vbNullString)) Then
  loc_1354C4E:         Set var_94 = Me.Txt
  loc_1354C54:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1354C5C:         var_98.Tag = vbNullString
  loc_1354C68:         Exit Sub
  loc_1354C69:       End If
  loc_1354CA4:       Set var_B0 = Me.Txt
  loc_1354CAA:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1354CB2:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1354CE5:       var_98 = Me.Fields.Item("Code")
  loc_1354D03:       Set var_B0 = Me.Txt
  loc_1354D09:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1354D11:       var_B4.Tag = CStr(var_98.Value)
  loc_1354D2A:     Else
  loc_1354D32:       If (var_86 = CInt(4)) Then
  loc_1354D83:         Set var_94 = Me.Txt
  loc_1354D89:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1354DA9:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1354DB9:           Set var_94 = Me.Txt
  loc_1354DBF:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1354DC7:           var_98.Tag = vbNullString
  loc_1354DD3:           Exit Sub
  loc_1354DD4:         End If
  loc_1354E0F:         Set var_B0 = Me.Txt
  loc_1354E15:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1354E1D:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1354E50:         var_98 = Me.Fields.Item("Code")
  loc_1354E6E:         Set var_B0 = Me.Txt
  loc_1354E74:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1354E7C:         var_B4.Tag = CStr(var_98.Value)
  loc_1354E95:       Else
  loc_1354E9D:         If (var_86 = CInt(2)) Then
  loc_1354EAA:           Set var_94 = Me.Txt
  loc_1354EB0:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_1354EEB:           If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_1354EFB:             Set var_94 = Me.Txt
  loc_1354F01:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1354F09:             var_98.Text = "Yes"
  loc_1354F18:           Else
  loc_1354F25:             Set var_94 = Me.Txt
  loc_1354F2B:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1354F33:             var_98.Text = "No"
  loc_1354F3F:           End If
  loc_1354F42:         Else
  loc_1354F4A:           If (var_86 = CInt(5)) Then
  loc_1354F5B:             Set var_94 = Me.Txt
  loc_1354F61:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_1354F80:             If (var_98.Text = "Category") Then
  loc_1354F8F:               Me.LblCatType.Visible = True
  loc_1354FA4:               Set var_94 = Me.Txt
  loc_1354FAA:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1354FB2:               var_98.Visible = True
  loc_1354FCA:               Me.Label2.Visible = False
  loc_1354FDF:               Set var_94 = Me.Txt
  loc_1354FE5:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_1354FED:               var_98.Visible = False
  loc_1354FFC:             Else
  loc_1355008:               Me.Label2.Visible = True
  loc_135501D:               Set var_94 = Me.Txt
  loc_1355023:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_135502B:               var_98.Visible = True
  loc_1355043:               Me.LblCatType.Visible = False
  loc_1355058:               Set var_94 = Me.Txt
  loc_135505E:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1355066:               var_98.Visible = False
  loc_1355072:             End If
  loc_1355075:           Else
  loc_135507D:             If (var_86 = CInt(7)) Then
  loc_135508E:               Set var_94 = Me.Txt
  loc_1355094:               Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_13550B3:               If (var_98.Text = "Charge") Then
  loc_13550E7:                 Set var_98 = Me.Txt
  loc_13550ED:                 Call 0.Method_Txt_Validate0 (CInt(7), var_B0)
  loc_13550F5:                 var_B0.Text = Me.ListView.SelectedItem.Default
  loc_135510B:               End If
  loc_135510E:             Else
  loc_1355116:               If (var_86 = CInt(6)) Then
  loc_1355127:                 Set var_94 = Me.Txt
  loc_135512D:                 Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_135514C:                 If (var_98.Text = "Category") Then
  loc_1355180:                   Set var_98 = Me.Txt
  loc_1355186:                   Call 0.Method_Txt_Validate0 (CInt(6), var_B0)
  loc_135518E:                   var_B0.Text = Me.ListView.SelectedItem.Default
  loc_13551A4:                 End If
  loc_13551A7:               Else
  loc_13551AF:                 If (var_86 = CInt(8)) Then
  loc_13551E3:                   Set var_98 = Me.Txt
  loc_13551E9:                   Call 0.Method_Txt_Validate0 (CInt(8), var_B0)
  loc_13551F1:                   var_B0.Text = Me.ListView.SelectedItem.Default
  loc_1355207:                 End If
  loc_1355207:               End If
  loc_1355207:             End If
  loc_1355207:           End If
  loc_1355207:         End If
  loc_1355207:       End If
  loc_1355207:     End If
  loc_1355207:   End If
  loc_1355207: End If
  loc_1355207: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EACF74
  'Data Table: 4DBD60
  loc_EACEFC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EACEFF:   Call DGHelp_UnknownEvent_9()
  loc_EACF04: End If
  loc_EACF20: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_EACF23:   Call DGSaleAc_UnknownEvent_9()
  loc_EACF28: End If
  loc_EACF44: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_EACF47:   Call DGSaleTax_UnknownEvent_9()
  loc_EACF4C: End If
  loc_EACF68: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EACF6B:   Call DGRest_UnknownEvent_9()
  loc_EACF70: End If
  loc_EACF70: Exit Sub
  loc_EACF71: StAryRecMove
End Sub

Public Sub SEARCHBACK(MyValue) 'EC1164
  'Data Table: 4DBD60
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC10DA: On Error Goto loc_EC111F
  loc_EC10E3: Me.MoveFirst
  loc_EC10FD: var_8C = "code='" & MyValue
  loc_EC110D: Me.Find var_8C & "'", 0, 1
  loc_EC1119: Call Proc_86_36_13D2F78(var_A0)
  loc_EC111E: Exit Sub
  loc_EC111F: ' Referenced from: EC10DA
  loc_EC1127: Set var_A4 = Err()
  loc_EC112D: Call 0.Method_arg_2C (var_8C)
  loc_EC114E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC1161: Exit Sub
  loc_EC1162: Exit Sub
  loc_EC1163:  = 
End Sub

Public Sub Proc_86_34_E779B4(arg_C) 'E779B4
  'Data Table: 4DBD60
  Dim var_98 As TextBox
  loc_E77962: Set var_8C = Me.Txt
  loc_E77968: Call 0.Method_Proc_86_34_E779B4C (var_8E, var_86)
  loc_E77978: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7798E:   Set var_8C = Me.Txt
  loc_E77994:   Call 0.Method_Proc_86_34_E779B40 (CInt(var_86), var_98)
  loc_E7799C:   var_98.Enabled = arg_C
  loc_E779AB: Next var_92 'Byte
  loc_E779B1: Exit Sub
  loc_E779B2:  = 
End Sub

Public Sub Proc_86_35_EE19FC
  'Data Table: 4DBD60
  Dim var_98 As TextBox
  loc_EE193E: global_80 = vbNullString
  loc_EE1948: global_104 = vbNullString
  loc_EE195A: Set var_8C = Me.Txt
  loc_EE1960: Call 0.Method_Proc_86_35_EE19FCC (var_8E, var_86)
  loc_EE1970: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE1986:   Set var_8C = Me.Txt
  loc_EE198C:   Call 0.Method_Proc_86_35_EE19FC0 (CInt(var_86), var_98)
  loc_EE1994:   var_98.Text = vbNullString
  loc_EE19B0:   Set var_8C = Me.Txt
  loc_EE19B6:   Call 0.Method_Proc_86_35_EE19FC0 (CInt(var_86), var_98)
  loc_EE19BE:   var_98.Tag = vbNullString
  loc_EE19CD: Next var_92 'Byte
  loc_EE19E1: Set var_8C = Me.Txt
  loc_EE19E7: Call 0.Method_Proc_86_35_EE19FC0 (CInt(7), var_98)
  loc_EE19EF: var_98.Text = "Cr"
  loc_EE19FB: Exit Sub
End Sub

Public Sub Proc_86_36_13D2F78
  'Data Table: 4DBD60
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4DBD78 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_120 As String
  Dim var_11C As TextBox
  loc_13D25E8: On Error Goto loc_13D2F33
  loc_13D25F1: Proc_183_45_E5C118(global_52)
  loc_13D264C: unk_4DBD78.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemCatMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_13D2657: Set var_88 = var_118
  loc_13D26AB: var_118 = var_88.Fields
  loc_13D2714: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13D2759: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_13D27D3: var_11C = var_88.Fields.Item("U_AE")
  loc_13D27EC: var_114 = "entdt : "
  loc_13D27F7: var_F0 = "Last Update : "
  loc_13D2834: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_13D2879: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_13D28C8: If (Me.RecordCount <= 0) Then
  loc_13D28CB:   Call Proc_86_35_EE19FC()
  loc_13D28D3: Else
  loc_13D290F:   Set var_118 = Me.Txt
  loc_13D2915:   Call 0.Method_Proc_86_36_13D2F780 (CInt(0), var_11C)
  loc_13D291D:   var_11C.Text = CStr(Me.Fields.Item("ItemCat").Value)
  loc_13D296F:   Set var_118 = Me.Txt
  loc_13D2975:   Call 0.Method_Proc_86_36_13D2F780 (CInt(0), var_11C)
  loc_13D297D:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13D29CC:   Set var_118 = Me.Txt
  loc_13D29D2:   Call 0.Method_Proc_86_36_13D2F780 (CInt(1), var_11C)
  loc_13D29DA:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_13D2A27:   Set var_118 = Me.Txt
  loc_13D2A2D:   Call 0.Method_Proc_86_36_13D2F780 (CInt(1), var_11C)
  loc_13D2A35:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_13D2A82:   Set var_118 = Me.Txt
  loc_13D2A88:   Call 0.Method_Proc_86_36_13D2F780 (CInt(2), var_11C)
  loc_13D2A90:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")))
  loc_13D2ADD:   Set var_118 = Me.Txt
  loc_13D2AE3:   Call 0.Method_Proc_86_36_13D2F780 (CInt(3), var_11C)
  loc_13D2AEB:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAc")))
  loc_13D2B38:   Set var_118 = Me.Txt
  loc_13D2B3E:   Call 0.Method_Proc_86_36_13D2F780 (CInt(3), var_11C)
  loc_13D2B46:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("AcName")))
  loc_13D2B93:   Set var_118 = Me.Txt
  loc_13D2B99:   Call 0.Method_Proc_86_36_13D2F780 (CInt(4), var_11C)
  loc_13D2BA1:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStructure")))
  loc_13D2BEE:   Set var_118 = Me.Txt
  loc_13D2BF4:   Call 0.Method_Proc_86_36_13D2F780 (CInt(4), var_11C)
  loc_13D2BFC:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruCode")))
  loc_13D2C49:   Set var_118 = Me.Txt
  loc_13D2C4F:   Call 0.Method_Proc_86_36_13D2F780 (CInt(8), var_11C)
  loc_13D2C57:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruType")))
  loc_13D2CA4:   Set var_118 = Me.Txt
  loc_13D2CAA:   Call 0.Method_Proc_86_36_13D2F780 (CInt(5), var_11C)
  loc_13D2CB2:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Flag")))
  loc_13D2CFF:   Set var_118 = Me.Txt
  loc_13D2D05:   Call 0.Method_Proc_86_36_13D2F780 (CInt(6), var_11C)
  loc_13D2D0D:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")))
  loc_13D2D5A:   Set var_118 = Me.Txt
  loc_13D2D60:   Call 0.Method_Proc_86_36_13D2F780 (CInt(7), var_11C)
  loc_13D2D68:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DrCr")))
  loc_13D2D99:   var_A0 = Me.Fields.Item("ShortName")
  loc_13D2DCB:   var_120 = CStr(var_A0.Value) & " - "
  loc_13D2DDC:   Set var_8C = Me.Txt
  loc_13D2DE2:   Call 0.Method_Proc_86_36_13D2F780 (CInt(0), var_A0)
  loc_13D2DF9:   global_72 = Proc_6_38_E68A98(CVar(var_11C)) & var_A0.Text
  loc_13D2E1B:   Set var_8C = Me.Txt
  loc_13D2E21:   Call 0.Method_Proc_86_36_13D2F780 (CInt(5), var_A0)
  loc_13D2E29:   var_F4 = var_A0.Text
  loc_13D2E40:   If (var_F4 = "Category") Then
  loc_13D2E4F:     Me.LblCatType.Visible = True
  loc_13D2E64:     Set var_8C = Me.Txt
  loc_13D2E6A:     Call 0.Method_Proc_86_36_13D2F780 (CInt(6), var_A0)
  loc_13D2E72:     var_A0.Visible = True
  loc_13D2E8A:     Me.Label2.Visible = False
  loc_13D2E9F:     Set var_8C = Me.Txt
  loc_13D2EA5:     Call 0.Method_Proc_86_36_13D2F780 (CInt(7), var_A0)
  loc_13D2EAD:     var_A0.Visible = False
  loc_13D2EBC:   Else
  loc_13D2EC8:     Me.Label2.Visible = True
  loc_13D2EDD:     Set var_8C = Me.Txt
  loc_13D2EE3:     Call 0.Method_Proc_86_36_13D2F780 (CInt(7), var_A0)
  loc_13D2EEB:     var_A0.Visible = True
  loc_13D2F03:     Me.LblCatType.Visible = False
  loc_13D2F18:     Set var_8C = Me.Txt
  loc_13D2F1E:     Call 0.Method_Proc_86_36_13D2F780 (CInt(6), var_A0)
  loc_13D2F26:     var_A0.Visible = False
  loc_13D2F32:   End If
  loc_13D2F32: End If
  loc_13D2F32: Exit Sub
  loc_13D2F33: ' Referenced from: 13D25E8
  loc_13D2F3B: Set var_8C = Err()
  loc_13D2F41: Call 0.Method_arg_2C (var_F4)
  loc_13D2F62: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_13D2F75: Exit Sub
End Sub

Public Sub Proc_86_37_1088448
  'Data Table: 4DBD60
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4DBD78 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10881DB: If (Me.RecordCount = 0) Then
  loc_10881DE:   Proc_86_37_1088448 = 
  loc_10881E4: End If
  loc_10881E8: Set var_90 = Me.TopCtrl1
  loc_10881EE: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1088207: If (CStr() = "Add") Then
  loc_1088245:   Set var_90 = Me.Txt
  loc_108824B:   Call 0.Method_Proc_86_37_10884480 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108826C:   unk_4DBD78.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108827C:    = var_D0.Item()
  loc_1088284:    = var_E4.Value
  loc_10882B5:   If (var_A8.Text.Fields > 0) Then
  loc_10882D3:     var_A0 = "Duplicate Name"
  loc_10882D9:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10882F4:     Set var_90 = Me.Txt
  loc_10882FA:     Call 0.Method_Proc_86_37_10884480 (CInt(0))
  loc_1088302:     var_A8.SetFocus
  loc_1088313:     Proc_86_37_1088448 = &HFF
  loc_1088319:   End If
  loc_108831C: Else
  loc_1088357:   Set var_90 = Me.Txt
  loc_108835D:   Call 0.Method_Proc_86_37_10884480 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108838F:   unk_4DBD78.Execute var_D0 & var_AC & "' And Name<>'" & global_80 & "'", 0, var_E4
  loc_108839F:    = var_D0.Item(var_A8)
  loc_10883A7:    = var_E4.Value
  loc_10883DC:   If (var_A8.Text.Fields > 0) Then
  loc_1088400:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108841B:     Set var_90 = Me.Txt
  loc_1088421:     Call 0.Method_Proc_86_37_10884480 (CInt(0))
  loc_1088429:     var_A8.SetFocus
  loc_108843A:     Proc_86_37_1088448 = &HFF
  loc_1088440:   End If
  loc_1088440: End If
  loc_1088440: Proc_86_37_1088448 = var_A8
End Sub

Public Sub Proc_86_38_F6C724
  'Data Table: 4DBD60
  loc_F6C5FC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6C60E:   Me.DGHelp.Visible = False
  loc_F6C616: End If
  loc_F6C632: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_F6C644:   Me.DGSaleAc.Visible = False
  loc_F6C64C: End If
  loc_F6C668: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_F6C67A:   Me.DGSaleTax.Visible = False
  loc_F6C682: End If
  loc_F6C69E: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6C6B0:   Me.DGRest.Visible = False
  loc_F6C6B8: End If
  loc_F6C6D3: If (Me.FrmList.Visible = &HFF) Then
  loc_F6C6E2:   Me.FrmList.Visible = False
  loc_F6C6EA: End If
  loc_F6C706: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6C718:   Me.FGPoint.Visible = False
  loc_F6C720: End If
  loc_F6C720: Exit Sub
End Sub

Public Sub Proc_86_39_E92C3C(arg_C) 'E92C3C
  'Data Table: 4DBD60
  Dim var_10C As TextBox
  loc_E92BD0: Call Proc_86_38_F6C724()
  loc_E92C0C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92C0F:   Call TopCtrl1_UnknownEvent_16()
  loc_E92C17: Else
  loc_E92C21:   Set var_108 = Me.Txt
  loc_E92C27:   Call 0.Method_Proc_86_39_E92C3C0 (arg_C)
  loc_E92C2F:   var_10C.SetFocus
  loc_E92C3B: End If
  loc_E92C3B: Exit Sub
End Sub

Public Sub Proc_86_40_F65150(arg_C) 'F65150
  'Data Table: 4DBD60
  Dim var_128 As Integer
  Dim var_8C As String
  Dim var_CC As Variant
  Dim unk_4DBD78 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  Dim var_13C As Variant
  loc_F65059: var_128 = 0
  loc_F65076: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),1)+1 AS MyCode From RevMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_F6509A: unk_4DBD78.Execute CStr(CVar(var_8C & "' AND isnumeric(SUBSTRING(Code,4,1))=1 and SUBSTRING(Code,3,1) ='") & Left(arg_C, 1) & "'"), var_110, -1
  loc_F650A2: var_114 = var_114.Fields
  loc_F650AA: var_128 = var_118.Item(var_118)
  loc_F650B2: var_12C = var_12C.Value
  loc_F65105: var_CC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) + Left(arg_C, 1))
  loc_F65131: var_13C = (1 + Format(CStr(var_13C), "000"))
  loc_F65136: var_88 = CStr(var_13C)
  loc_F65148: Proc_86_40_F65150 = 1
End Sub
