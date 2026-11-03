VERSION 5.00
Begin VB.Form FrmFacilityMast
  Caption = "Form1"
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
  ClientWidth = 11895
  ClientHeight = 9090
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1365
    Width = 1815
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11895
    Height = 420
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3525
    Width = 720
    Height = 255
    TabIndex = 11
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3255
    Width = 720
    Height = 255
    TabIndex = 10
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5175
    Top = 2985
    Width = 1155
    Height = 255
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1095
    Width = 1005
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1635
    Width = 1815
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1905
    Width = 1815
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2715
    Width = 3990
    Height = 255
    TabIndex = 7
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
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2445
    Width = 3990
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 50
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
    ForeColor = &HFF0000&
    Left = 2340
    Top = 825
    Width = 3990
    Height = 255
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2985
    Width = 720
    Height = 255
    TabIndex = 8
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
  Begin Frame FrmList
    Left = 2235
    Top = 3840
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 13
    End
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2175
    Width = 1815
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 15
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
  Begin DataGrid DGLedgerAc
    Left = 6510
    Top = 4515
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGHelp
    Left = 6510
    Top = 3975
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin MSFlexGrid FGPoint
    Left = 150
    Top = 4830
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 16
  End
  Begin DataGrid DGTaxStru
    Left = 6510
    Top = 3420
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin Label LblName
    Caption = "SAC Code"
    Index = 11
    ForeColor = &HFF0000&
    Left = 720
    Top = 1365
    Width = 855
    Height = 240
    TabIndex = 36
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 495
    Top = 7020
    Width = 3375
    Height = 285
    TabIndex = 35
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
    Left = 495
    Top = 7305
    Width = 3330
    Height = 255
    TabIndex = 34
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
  Begin Label Label1
    Caption = "(Yes/No)"
    Index = 2
    ForeColor = &HC0&
    Left = 3105
    Top = 3540
    Width = 795
    Height = 210
    TabIndex = 32
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
    Caption = "ActiveYN"
    Index = 10
    ForeColor = &HFF0000&
    Left = 720
    Top = 3525
    Width = 735
    Height = 240
    TabIndex = 31
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
  Begin Label Label1
    Caption = "(Yes/No)"
    Index = 1
    ForeColor = &HC0&
    Left = 3105
    Top = 3000
    Width = 795
    Height = 210
    TabIndex = 30
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
    Caption = "Round Off"
    Index = 9
    ForeColor = &HFF0000&
    Left = 720
    Top = 2985
    Width = 855
    Height = 240
    TabIndex = 29
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
    Caption = "ROff Type"
    Index = 8
    ForeColor = &HFF0000&
    Left = 4215
    Top = 3000
    Width = 855
    Height = 240
    TabIndex = 28
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
  Begin Label Label2
    Caption = "(VoucherType)"
    ForeColor = &HC0&
    Left = 3360
    Top = 1095
    Width = 1335
    Height = 210
    TabIndex = 27
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
    Caption = "Meter Reading"
    Index = 7
    ForeColor = &HFF0000&
    Left = 720
    Top = 3255
    Width = 1245
    Height = 240
    TabIndex = 26
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
    Caption = "Tax Structure"
    Index = 6
    ForeColor = &HFF0000&
    Left = 720
    Top = 2730
    Width = 1170
    Height = 240
    TabIndex = 25
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
    Caption = "A/C Name"
    Index = 5
    ForeColor = &HFF0000&
    Left = 720
    Top = 2475
    Width = 870
    Height = 240
    TabIndex = 24
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
    Caption = "Unit Rate"
    Index = 4
    ForeColor = &HFF0000&
    Left = 720
    Top = 2205
    Width = 780
    Height = 240
    TabIndex = 23
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
    Caption = "Charge Unit"
    Index = 3
    ForeColor = &HFF0000&
    Left = 720
    Top = 1935
    Width = 1005
    Height = 240
    TabIndex = 22
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
    Caption = "Charge Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 720
    Top = 1650
    Width = 1095
    Height = 240
    TabIndex = 21
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
    Caption = "Short Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 720
    Top = 1095
    Width = 1020
    Height = 240
    TabIndex = 20
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
    Caption = "Facility Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 720
    Top = 825
    Width = 1140
    Height = 240
    TabIndex = 19
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
  Begin Label Label1
    Caption = "(Yes/No)"
    Index = 0
    ForeColor = &HC0&
    Left = 3105
    Top = 3270
    Width = 795
    Height = 210
    TabIndex = 18
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
End

Attribute VB_Name = "FrmFacilityMast"


Private Sub FGPoint_UnknownEvent_9 'E849B8
  'Data Table: 4A0CD0
  loc_E84964: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E84967:   Call DGHelp_UnknownEvent_9()
  loc_E8496C: End If
  loc_E84988: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E8498B:   Call DGTaxStru_UnknownEvent_9()
  loc_E84990: End If
  loc_E849AC: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E849AF:   Call DGLedgerAc_UnknownEvent_9()
  loc_E849B4: End If
  loc_E849B4: Exit Sub
End Sub

Private Sub Form_Load() '10A724C
  'Data Table: 4A0CD0
  Dim var_8C As Label
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_B8 As Variant
  loc_10A6F84: On Error Goto loc_10A7207
  loc_10A6F9F: Proc_6_23_DFBA28(Me, 5535)
  loc_10A6FA7: Call Proc_324_38_1007298(7215)
  loc_10A6FB3: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10A6FC7: Me.LblUser.Left = CDbl(13500)
  loc_10A6FDE: Me.LblUser.Top = CDbl(7800)
  loc_10A6FF5: Me.LblLDt.Top = CDbl(8160)
  loc_10A7006: Set var_8C = Me.LblLDt
  loc_10A700C: var_8C.Left = CDbl(13500)
  loc_10A7038: unk_4A0CE4.Execute "SELECT Code,Name FROM FacilityMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_B8, -1
  loc_10A7067: CVarUnk
  loc_10A706C: VerifyVarObj
  loc_10A7078: LateIdStAd
  loc_10A70A1: var_98 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_10A70AA: unk_4A0CE4.Execute var_98, var_B8, -1
  loc_10A70D9: CVarUnk
  loc_10A70DE: VerifyVarObj
  loc_10A70EA: LateIdStAd
  loc_10A711C: unk_4A0CE4.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_10A714B: CVarUnk
  loc_10A7150: VerifyVarObj
  loc_10A715C: LateIdStAd
  loc_10A717E: var_94 = "SELECT distinct F.*,F.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((FacilityMast F Left Join TaxStru T on T.Code=F.TaxStru) Left join Subgroup S on S.SubCode=F.ACCode) where (F.LOGSITE_CODE='" & MemVar_1F92078
  loc_10A718E: unk_4A0CE4.Execute var_94 & "' or F.LOGSITE_CODE='HO')", var_B8, -1
  loc_10A71C0: Set var_8C = Me
  loc_10A71C9: var_94 = "INI"
  loc_10A71D7: Call Proc_324_32_E776BC(Proc_5_1_100CB50(var_94, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGLedgerAc, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_10A71EB: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_10A71F9: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_10A7201: Call Proc_324_34_13C99A0(var_8C)
  loc_10A7206: Exit Sub
  loc_10A7207: ' Referenced from: 10A6F84
  loc_10A720F: Set var_8C = Err()
  loc_10A7215: Call 0.Method_arg_2C (var_94)
  loc_10A7236: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_10A7249: Exit Sub
  loc_10A724A: Exit Sub
End Sub

Private Sub Form_Resize() 'DFB2A4
  'Data Table: 4A0CD0
  loc_DFB2A0: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5EAB8
  'Data Table: 4A0CD0
  loc_E5EA77: Set global_52 = Nothing
  loc_E5EA89: Set global_56 = Nothing
  loc_E5EA9B: Set global_60 = Nothing
  loc_E5EAAD: Set global_64 = Nothing
  loc_E5EAB4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E294F8
  'Data Table: 4A0CD0
  loc_E294D0: On Error Goto loc_E294EF
  loc_E294E7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E294EF: ' Referenced from: E294D0
  loc_E294EF: Proc_6_60_E62BC4(Shift)
  loc_E294F4: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4E444
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E33B: Me.DGHelp.Visible = False
  loc_F4E35A: If (Me.RecordCount > 0) Then
  loc_F4E399:   Set var_B4 = Me.Txt
  loc_F4E39F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4E3A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4E3DA:   var_B0 = Me.Fields.Item("Name")
  loc_F4E3F9:   Set var_B4 = Me.Txt
  loc_F4E3FF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4E407:   var_B8.Text = CStr(var_B0.Value)
  loc_F4E41D: End If
  loc_F4E428: Set var_A8 = Me.Txt
  loc_F4E42E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4E436: var_B0.SetFocus
  loc_F4E442: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA5D40
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  loc_EA5CC0: Set var_88 = Me.DGHelp
  loc_EA5CEA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5CF2: Set var_BC = Me.DGHelp
  loc_EA5D2E: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA5D3C: Exit Sub
  loc_EA5D3D: DGHelp.DispID_1B = var_A8
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F39204
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F390FB: Me.DGTaxStru.Visible = False
  loc_F3911A: If (Me.RecordCount > 0) Then
  loc_F39159:   Set var_B4 = Me.Txt
  loc_F3915F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(6), var_B8)
  loc_F39167:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3919A:   var_B0 = Me.Fields.Item("Name")
  loc_F391B9:   Set var_B4 = Me.Txt
  loc_F391BF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(6), var_B8)
  loc_F391C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F391DD: End If
  loc_F391E8: Set var_A8 = Me.Txt
  loc_F391EE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(6))
  loc_F391F6: var_B0.SetFocus
  loc_F39202: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA6050
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  loc_EA5FD0: Set var_88 = Me.DGTaxStru
  loc_EA5FFA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6002: Set var_BC = Me.DGTaxStru
  loc_EA603E: Proc_6_138_106D6F8(Me.DGTaxStru, global_64, CInt(6), Me.FGPoint)
  loc_EA604C: Exit Sub
  loc_EA604D: BranchFVar -513
End Sub

Private Sub ListView_UnknownEvent_13 'F2E45C
  'Data Table: 4A0CD0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F2E392: If (Me.ListView.ListItems.Count > 0) Then
  loc_F2E3C2:   Set var_A8 = Me.ListView
  loc_F2E3D9:   Set var_C0 = Me.Txt
  loc_F2E3DF:   Call 0.Method_ListView_UnknownEvent_130 (CInt(CStr(var_A8.Tag)), var_C4)
  loc_F2E3E7:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F2E407: End If
  loc_F2E413: Me.FrmList.Visible = False
  loc_F2E439: Set var_9C = Me.Txt
  loc_F2E43F: Call 0.Method_ListView_UnknownEvent_130 (CInt(CStr(Me.ListView.Tag)))
  loc_F2E447: var_A8.SetFocus
  loc_F2E45B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EF74B0
  'Data Table: 4A0CD0
  Dim var_94 As TextBox
  loc_EF73E8: On Error Goto loc_EF746C
  loc_EF73EB: Call Proc_324_33_E77754()
  loc_EF7405: var_88 = "ADD"
  loc_EF7413: Call Proc_324_32_E776BC(Proc_5_1_100CB50(var_88, Me))
  loc_EF742C: Set var_8C = Me.Txt
  loc_EF7432: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_EF743A: var_94.Text = "Yes"
  loc_EF7451: Set var_8C = Me.Txt
  loc_EF7457: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EF745F: var_94.SetFocus
  loc_EF746B: Exit Sub
  loc_EF746C: ' Referenced from: EF73E8
  loc_EF7474: Set var_8C = Err()
  loc_EF747A: Call 0.Method_arg_2C (var_88)
  loc_EF749B: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_EF74AE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBD2BC
  'Data Table: 4A0CD0
  loc_EBD228: On Error Goto loc_EBD2B3
  loc_EBD262: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBD271:   Set var_110 = Me
  loc_EBD288:   Call Proc_324_32_E776BC(Proc_5_1_100CB50("INI", var_110))
  loc_EBD293:   Call Proc_324_34_13C99A0(global_52)
  loc_EBD29B: Else
  loc_EBD2A1:   Call 0.Method_arg_1E8 (var_110)
  loc_EBD2A9:   Call var_110.SetFocus
  loc_EBD2B2: End If
  loc_EBD2B2: Exit Sub
  loc_EBD2B3: ' Referenced from: EBD228
  loc_EBD2B3: Proc_6_60_E62BC4()
  loc_EBD2B8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12BA778
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4A0CE4 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_12BA158: On Error Goto loc_12BA721
  loc_12BA169: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_12BA16C:   Exit Sub
  loc_12BA16D: End If
  loc_12BA19F: var_D4 = "Location Facilities"
  loc_12BA1E7: If (Proc_6_108_1010FEC(MemVar_1F92044, "LocationFacility", "FcCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_12BA1EA:   Exit Sub
  loc_12BA1EB: End If
  loc_12BA222: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_12BA227:   var_96 = 0
  loc_12BA233:   unk_4A0CE4.BeginTrans var_D0
  loc_12BA23A:   var_96 = &HFF
  loc_12BA24E:   var_94 = Me.Bookmark 'Variant
  loc_12BA2A8:   unk_4A0CE4.Execute CStr("Delete From FacilityMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_12BA2F3:   var_168 = 0
  loc_12BA306:   var_160 = 0
  loc_12BA311:   var_15C = 0
  loc_12BA324:   var_154 = 0
  loc_12BA32F:   var_150 = 0
  loc_12BA342:   var_148 = 0
  loc_12BA38B:   Proc_154_5_10E33A4(MemVar_1F92044, "FacilityMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_12BA409:   unk_4A0CE4.Execute CStr("Delete From Voucher_Type Where V_Type='" & Me.Fields.Item("ShortName").Value & "'"), var_138, -1
  loc_12BA454:   var_168 = 0
  loc_12BA467:   var_160 = 0
  loc_12BA472:   var_15C = 0
  loc_12BA485:   var_154 = 0
  loc_12BA490:   var_150 = 0
  loc_12BA4A3:   var_148 = 0
  loc_12BA4EC:   Proc_154_5_10E33A4(MemVar_1F92044, "Voucher_Type", "V_Type", &HC8, CStr(Me.Fields.Item("ShortName").Value), 0, 0, 0)
  loc_12BA55C:   var_118 = "Delete From Voucher_Prefix Where V_Type='" & Me.Fields.Item("ShortName").Value & "'" 
  loc_12BA56A:   unk_4A0CE4.Execute CStr(var_118), var_138, -1
  loc_12BA5B5:   var_168 = 0
  loc_12BA5C8:   var_160 = 0
  loc_12BA5D3:   var_15C = 0
  loc_12BA5E6:   var_154 = 0
  loc_12BA5F1:   var_150 = 0
  loc_12BA604:   var_148 = 0
  loc_12BA644:   var_B4 = "Voucher_Prefix"
  loc_12BA64D:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "V_Type", &HC8, CStr(Me.Fields.Item("ShortName").Value), 0, 0, 0)
  loc_12BA67B:   unk_4A0CE4.CommitTrans
  loc_12BA682:   var_96 = 0
  loc_12BA690:   Me.Requery -1
  loc_12BA6A0:   Me.Requery -1
  loc_12BA6C0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12BA6CD:     Me.Bookmark = var_94
  loc_12BA6D5:   Else
  loc_12BA6E9:     If (Me.EOF = 0) Then
  loc_12BA6F2:       Me.MoveLast
  loc_12BA6F7:     End If
  loc_12BA6F7:   End If
  loc_12BA6F7:   Call Proc_324_34_13C99A0(var_96, var_148, 0, var_150, var_154)
  loc_12BA718:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_12BA720: End If
  loc_12BA720: Exit Sub
  loc_12BA721: ' Referenced from: 12BA158
  loc_12BA727: If (var_96 = &HFF) Then
  loc_12BA730:   unk_4A0CE4.RollbackTrans
  loc_12BA735: End If
  loc_12BA73D: Set var_9C = Err()
  loc_12BA743: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_12BA764: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_12BA777: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F61C0C
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F61AE8: On Error Goto loc_F61BC6
  loc_F61AF9: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F61AFC:   Exit Sub
  loc_F61AFD: End If
  loc_F61B14: If (Me.RecordCount > 0) Then
  loc_F61B2C:   var_8C = "EDIT"
  loc_F61B3A:   Call Proc_324_32_E776BC(Proc_5_1_100CB50(var_8C, Me))
  loc_F61B52:   Set var_90 = Me.Txt
  loc_F61B58:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F61B60:   var_98.Enabled = False
  loc_F61B77:   Set var_90 = Me.Txt
  loc_F61B7D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F61B85:   var_98.SetFocus
  loc_F61B94: Else
  loc_F61BB5:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F61BC5: End If
  loc_F61BC5: Exit Sub
  loc_F61BC6: ' Referenced from: F61AE8
  loc_F61BCE: Set var_90 = Err()
  loc_F61BD4: Call 0.Method_arg_2C (var_8C)
  loc_F61BF5: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F61C08: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15680
  'Data Table: 4A0CD0
  loc_E15675: Me.Global.Unload Me
  loc_E1567D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23348
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  Dim arg_DFF As Integer
  loc_F23248: On Error Goto loc_F232E0
  loc_F23254: var_88 = Me.RecordCount
  loc_F23262: If (var_88 <= 0) Then
  loc_F2326B:   var_B8 = "Information"
  loc_F23286:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23296:   Exit Sub
  loc_F23297: End If
  loc_F232A5: MemVar_1F920E4 = "Select F.Code As SearchCode,F.Name,F.ChargeType,F.UnitRate FROM FacilityMast F WHERE (F.LOGSITE_CODE='" & MemVar_1F92078 & "' or F.LOGSITE_CODE='HO') Order by F.Name"
  loc_F232AF: var_10C = "3000,1500,1500"
  loc_F232B5: Proc_6_126_F1BCC0(var_10C)
  loc_F232C3: MemVar_1F92120 = Me
  loc_F232DA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F232DF: Exit Sub
  loc_F232E0: ' Referenced from: F23248
  loc_F232E8: Set var_110 = Err()
  loc_F232EE: Call 0.Method_arg_1C (var_88)
  loc_F232FF: If (var_88 <> 0) Then
  loc_F2330A:   Set var_110 = Err()
  loc_F23310:   Call 0.Method_arg_2C (var_10C)
  loc_F23331:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F23344: End If
  loc_F23344: Exit Sub
  loc_F23345: arg_DFF = MemVar_1F920E4
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30978
  'Data Table: 4A0CD0
  loc_E30968: Proc_5_0_110649C(&HFF, Me)
  loc_E30970: Call Proc_324_34_13C99A0(global_52)
  loc_E30975: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E306D8
  'Data Table: 4A0CD0
  loc_E306C8: Proc_5_0_110649C(&HFF, Me)
  loc_E306D0: Call Proc_324_34_13C99A0(global_52)
  loc_E306D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30738
  'Data Table: 4A0CD0
  loc_E30728: Proc_5_0_110649C(&HFF, Me)
  loc_E30730: Call Proc_324_34_13C99A0(global_52)
  loc_E30735: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E308B8
  'Data Table: 4A0CD0
  loc_E308A8: Proc_5_0_110649C(&HFF, Me)
  loc_E308B0: Call Proc_324_34_13C99A0(global_52)
  loc_E308B5: Exit Sub
  loc_E308B6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107F0FC
  'Data Table: 4A0CD0
  Dim var_A0 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  loc_107EE74: On Error Goto loc_107F0D2
  loc_107EE8B: var_A0 = "SELECT distinct F.*,F.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((FacilityMast F Left Join TaxStru T on T.Code=F.TaxStru) Left join Subgroup S on S.SubCode=F.ACCode) where (F.LOGSITE_CODE='" & MemVar_1F92078
  loc_107EEA9: unk_4A0CE4.Execute var_A0 & "' or F.LOGSITE_CODE='" & MemVar_1F92070 & "') Order by F.Name", var_CC, -1
  loc_107EEB4: Set var_88 = var_D0
  loc_107EECE: var_D4 = var_88.RecordCount
  loc_107EEDC: If (var_D4 = 0) Then
  loc_107EEF8:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_107EF08:   Exit Sub
  loc_107EF09: End If
  loc_107EF1F: Set var_D0 = var_88 
  loc_107EF2B: var_136 = CreateFieldDefFile(var_D0, MemVar_1F920B4 & "\FacilityMast.ttx")
  loc_107EF35: Set var_88 = var_D0
  loc_107EF3B: var_BC = CVar(var_136) 'Integer
  loc_107EF3E: var_98 = var_BC 'Variant
  loc_107EF5A: var_A0 = MemVar_1F920B4 & "\FacilityMast.RPT"
  loc_107EF63: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_107EF6E: MemVar_1F921E4 = var_D0
  loc_107EF89: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_107EF91: Call 0.Method_arg_24 (var_136, &HFF)
  loc_107EF9D: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_107EFB6:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107EFBE:   Call 0.Method_arg_20 (var_140)
  loc_107EFC6:   Call 0.Method_arg_30 (var_A0)
  loc_107F00C:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_107F022:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107F02A:     Call 0.Method_arg_20 (var_140)
  loc_107F032:     Call 0.Method_arg_38 ("'Facility Master'")
  loc_107F03E:   End If
  loc_107F041: Next var_13A 'Integer
  loc_107F05F: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_107F067: Call 0.Method_arg_2C (var_E4)
  loc_107F075: Call 0.Method_arg_150 (var_104)
  loc_107F080: Call 0.Method_arg_50 (var_A0)
  loc_107F08A: Set var_140 = Nothing
  loc_107F0A4: Set var_D0 = MemVar_1F921E4 
  loc_107F0B0: Proc_6_99_1483714(var_D0, 0, var_A0)
  loc_107F0BB: MemVar_1F921E4 = var_D0
  loc_107F0CE: Set var_88 = Nothing
  loc_107F0D1: Exit Sub
  loc_107F0D2: ' Referenced from: 107EE74
  loc_107F0D8: Call 0.Method_arg_50 (var_A0, &HFF)
  loc_107F0ED: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_107F0F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E41FF0
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  loc_E41FC7: Me.Requery -1
  loc_E41FD7: Me.Requery -1
  loc_E41FE7: Me.Requery -1
  loc_E41FEC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '160142C
  'Data Table: 4A0CD0
  Dim var_A0 As String
  Dim var_98 As Variant
  Dim var_E8 As Variant
  Dim var_B8 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_11C As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_168 As TextBox
  Dim var_4B0 As Double
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1F4 As TextBox
  Dim var_240 As TextBox
  Dim var_2DC As TextBox
  Dim var_3C0 As Variant
  Dim var_138 As String
  Dim var_178 As String
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_218 As Variant
  Dim var_390 As Variant
  Dim var_3E0 As Variant
  Dim var_440 As Variant
  Dim var_B4 As Variant
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim var_3D0 As Variant
  Dim var_4A4 As Variant
  Dim var_4D0 As Variant
  Dim var_500 As Variant
  Dim var_C8 As String
  loc_160010C: On Error Goto loc_16013D9
  loc_1600113: var_86 = CByte(0) 'Byte
  loc_1600122: Set var_94 = Me.Txt
  loc_1600128: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1600151: If (Proc_183_19_E8DAFC(var_98, "Name") = 0) Then
  loc_160015B:   Call Txt_GotFocus()
  loc_1600160:   Exit Sub
  loc_1600161: End If
  loc_160016C: Set var_94 = Me.Txt
  loc_1600172: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_160019B: If (Proc_183_19_E8DAFC(var_98, "Short Name") = 0) Then
  loc_16001A5:   Call Txt_GotFocus()
  loc_16001AA:   Exit Sub
  loc_16001AB: End If
  loc_16001AF: Set var_94 = Me.TopCtrl1
  loc_16001B5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(1))
  loc_16001CE: If (CStr(CInt(0)) = "Add") Then
  loc_16001DF:   Set var_94 = Me.Txt
  loc_16001E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_16001FA:   var_C8 = "Voucher_Type (Short Name)"
  loc_160023E:   If (Proc_6_108_1010FEC(MemVar_1F92044, "Voucher_Type", "V_Type", var_98.Text) = 0) Then
  loc_1600241:     Exit Sub
  loc_1600242:   End If
  loc_1600242: End If
  loc_160024D: Set var_94 = Me.Txt
  loc_1600253: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, 0)
  loc_160025B: var_A0 = "Charge Type"
  loc_160027C: If (Proc_183_19_E8DAFC(var_98, var_A0, var_C8) = 0) Then
  loc_1600286:   Call Txt_GotFocus()
  loc_160028B:   Exit Sub
  loc_160028C: End If
  loc_160029A: Set var_94 = Me.Txt
  loc_16002A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_A0)
  loc_16002A8: CInt(2) = var_98.Text
  loc_16002BF: If (var_A0 <> "Fixed Charge") Then
  loc_16002CD:   Set var_94 = Me.Txt
  loc_16002D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_16002FC:   If (Proc_183_19_E8DAFC(var_98, "Charge Unit") = 0) Then
  loc_1600306:     Call Txt_GotFocus()
  loc_160030B:     Exit Sub
  loc_160030C:   End If
  loc_160030F: Else
  loc_160031D:   Set var_94 = Me.Txt
  loc_1600323:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, vbNullString)
  loc_160032B:   var_98.Text = CInt(3)
  loc_1600337: End If
  loc_1600342: Set var_94 = Me.Txt
  loc_1600348: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_1600371: If (Proc_183_19_E8DAFC(var_98, "Unit Rate") = 0) Then
  loc_160037B:   Call Txt_GotFocus()
  loc_1600380:   Exit Sub
  loc_1600381: End If
  loc_160038C: Set var_94 = Me.Txt
  loc_1600392: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98, CInt(4))
  loc_16003BB: If (Proc_183_19_E8DAFC(var_98, "A/C Name") = 0) Then
  loc_16003C5:   Call Txt_GotFocus()
  loc_16003CA:   Exit Sub
  loc_16003CB: End If
  loc_16003D6: Set var_94 = Me.Txt
  loc_16003DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98, CInt(5))
  loc_1600405: If (Proc_183_19_E8DAFC(var_98, "Tax Sructure") = 0) Then
  loc_160040F:   Call Txt_GotFocus()
  loc_1600414:   Exit Sub
  loc_1600415: End If
  loc_1600420: Set var_94 = Me.Txt
  loc_1600426: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98, CInt(6))
  loc_160042E: var_A0 = "RoundOff"
  loc_160044F: If (Proc_183_19_E8DAFC(var_98, var_A0) = 0) Then
  loc_1600459:   Call Txt_GotFocus()
  loc_160045E:   Exit Sub
  loc_160045F: End If
  loc_160046D: Set var_94 = Me.Txt
  loc_1600473: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98, var_A0)
  loc_160047B: CInt(7) = var_98.Text
  loc_1600492: If (var_A0 = "Yes") Then
  loc_16004A0:   Set var_94 = Me.Txt
  loc_16004A6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98)
  loc_16004CF:   If (Proc_183_19_E8DAFC(var_98, "ROff Type") = 0) Then
  loc_16004D9:     Call Txt_GotFocus()
  loc_16004DE:     Exit Sub
  loc_16004DF:   End If
  loc_16004E2: Else
  loc_16004F0:   Set var_94 = Me.Txt
  loc_16004F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98, vbNullString)
  loc_16004FE:   var_98.Text = CInt(8)
  loc_160050A: End If
  loc_1600515: Set var_94 = Me.Txt
  loc_160051B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_1600544: If (Proc_183_19_E8DAFC(var_98, "Meter Reading") = 0) Then
  loc_160054E:   Call Txt_GotFocus()
  loc_1600553:   Exit Sub
  loc_1600554: End If
  loc_160055F: Set var_94 = Me.Txt
  loc_1600565: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, CInt(9))
  loc_160058E: If (Proc_183_19_E8DAFC(var_98, "ActiveYN") = 0) Then
  loc_1600598:   Call Txt_GotFocus()
  loc_160059D:   Exit Sub
  loc_160059E: End If
  loc_16005A2: Set var_94 = Me.TopCtrl1
  loc_16005A8: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(&HA))
  loc_16005C1: If (CStr(1) = "Add") Then
  loc_16005CC:   If (MemVar_1F923AC = "A") Then
  loc_16005D5:     var_E8 = 0
  loc_16005F2:     var_A0 = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From FacilityMast Where SITE_CODE='" & MemVar_1F92070
  loc_1600602:     unk_4A0CE4.Execute CStr(1) & "'", var_B4, -1
  loc_160060A:     var_94 = var_94.Fields
  loc_1600612:     var_E8 = var_98.Item(var_98)
  loc_160061A:     var_9C = var_9C.Value
  loc_1600629:     global_72 = CStr(var_F8)
  loc_1600649:   Else
  loc_1600651:     If (MemVar_1F923AC = "S") Then
  loc_160065A:       var_E8 = 0
  loc_1600677:       var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From FacilityMast Where SITE_CODE='" & MemVar_1F92070
  loc_160067E:       var_B8 = CStr(1) & "'"
  loc_1600687:       unk_4A0CE4.Execute var_B8, var_B4, -1
  loc_160068F:       var_94 = var_94.Fields
  loc_1600697:       var_E8 = var_98.Item(var_98)
  loc_160069F:       var_9C = var_9C.Value
  loc_16006AE:       global_72 = CStr(var_F8)
  loc_16006CB:     End If
  loc_16006CB:   End If
  loc_16006D8:   var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, var_F8)) 'String
  loc_1600706:   var_118 = (1 + Format(global_72, "0000"))
  loc_1600711:   global_72 = CStr(var_118)
  loc_1600726: Else
  loc_1600743:   var_98 = Me.Fields.Item("Code")
  loc_160075A:   global_72 = CStr(var_98.Value)
  loc_160076B: End If
  loc_1600774: unk_4A0CE4.BeginTrans var_C4
  loc_160077D: var_86 = CByte(1) 'Byte
  loc_1600785: Set var_94 = Me.TopCtrl1
  loc_160078B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_16007A4: If (CStr(var_108) = "Add") Then
  loc_16007B5:   Set var_94 = Me.Txt
  loc_16007BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8)
  loc_16007C3:   var_F8 = var_98.Text
  loc_16007D6:   Set var_9C = Me.Txt
  loc_16007DC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_11C)
  loc_16007F7:   Set var_128 = Me.Txt
  loc_16007FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_12C)
  loc_1600818:   Set var_13C = Me.Txt
  loc_160081E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140)
  loc_1600839:   Set var_150 = Me.Txt
  loc_160083F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_154)
  loc_160085A:   Set var_164 = Me.Txt
  loc_1600860:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_168)
  loc_1600875:   var_4B0 = Val(var_168.Text)
  loc_160088C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_180, var_184)
  loc_16008A7:   Set var_190 = Me.Txt
  loc_16008AD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_194)
  loc_16008C8:   Set var_1A4 = Me.Txt
  loc_16008CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A8)
  loc_1600913:   Set var_1F0 = Me.Txt
  loc_1600919:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1F4)
  loc_1600934:   Set var_23C = Me.Txt
  loc_160093A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_240)
  loc_160097F:   Set var_2D8 = Me.Txt
  loc_1600985:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2DC)
  loc_16009C1:   var_3C0 = CVar(Proc_6_14_EF349C(var_98)) 'String
  loc_16009C7:   Proc_6_8_EB0DE4(var_3D0)
  loc_16009E3:   var_A0 = "Insert Into FacilityMast(Code,Name,ShortName,SACCode,ChargeType,ChargeUnit,UnitRate,AcCode,TaxStru,RoundOff,ROffType,MeterReading,ActiveYN,U_AE,U_Name,U_EntDt,Site_Code,logSite_Code) Values('" & global_72
  loc_1600A3C:   var_178 = var_A0 & "','" & var_B8 & "','" & var_11C.Text & "','" & var_12C.Text & "','" & var_140.Text & "','" & var_154.Text & "'," & CStr(var_180.Tag)
  loc_1600A78:   var_218 = CVar(var_178 & ",'" & var_184 & "','" & var_194.Tag & "','") & IIf((var_1A8.Text = "Yes"), "Y", "N") & "','" & CVar(var_1F4.Text) 
  loc_1600AAB:   var_390 = var_218 & "','" & IIf((var_240.Text = "Yes"), "Y", "N") & "','" & IIf((var_2DC.Text = "Yes"), "Y", "N") & "','A','" & CVar(MemVar_1F920C8) 
  loc_1600AD7:   var_440 = var_390 & "'," & var_3D0 & ",'" & CVar(MemVar_1F92078) & "','" 
  loc_1600AF8:   unk_4A0CE4.Execute CStr(var_440 & CVar(MemVar_1F92078) & "')"), var_4A4, -1
  loc_1600BC3:   var_D8 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('"
  loc_1600BD3:   Set var_94 = Me.Txt
  loc_1600BD9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_D8, var_550)
  loc_1600BF0:   var_108 = -1 & Trim(CVar(var_98)) 
  loc_1600C0E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_11C, IIf((var_1A8.Text = "Yes"), "Y", "N") & "','")
  loc_1600C16:   var_1CC = CVar(var_11C) 'Address
  loc_1600C2E:   var_218 = Me.Txt & Trim(var_1CC) & "','" 
  loc_1600C3D:   Set var_128 = Me.Txt
  loc_1600C43:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C, var_218)
  loc_1600C72:   Set var_13C = Me.Txt
  loc_1600C78:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_1600C94:   var_310 = (Trim(CVar(var_140)) + " Bill")
  loc_1600CA1:   var_340 = var_4A8 & Trim(CVar(var_12C)) & "','','" & "Y" & "','" 
  loc_1600CB0:   Set var_150 = Me.Txt
  loc_1600CB6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_154)
  loc_1600CD2:   var_390 = (Trim(CVar(var_154)) + " Bill")
  loc_1600CDF:   var_3C0 = var_340 & var_390 & "','" 
  loc_1600CEE:   Set var_164 = Me.Txt
  loc_1600CF4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_1600D1B:   Proc_6_104_ED5D18(var_440, var_3C0 & Trim(CVar(var_168)) & "','','','Automatic',")
  loc_1600D4E:   Proc_6_8_EB0DE4(var_4E0)
  loc_1600D5F:   var_500 = CVar(Proc_6_14_EF349C(var_3C0 & var_440 & ",'','','','','','','','','','','" & CVar(MemVar_1F920C8) & "',")) & var_4E0 & ",'','','','',0,'','" 
  loc_1600D93:   unk_4A0CE4.Execute CStr(var_500 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1600E0C:   var_D8 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('"
  loc_1600E1C:   Set var_94 = Me.Txt
  loc_1600E22:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_D8)
  loc_1600E31:   var_F8 = Trim(CVar(var_98))
  loc_1600E51:   Proc_6_7_F25D88(var_1CC, MemVar_1F920F4, var_3C0 & var_F8 & "',")
  loc_1600E59:   var_1EC = -1 & var_1CC 
  loc_1600E71:   Proc_6_7_F25D88(var_218, MemVar_1F920FC)
  loc_1600EBE:   var_330 = CVar(Proc_6_14_EF349C(Trim(var_1CC) & "," & var_218 & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "',")) 'String
  loc_1600EC4:   Proc_6_8_EB0DE4(var_340, var_330)
  loc_1600EF6:   unk_4A0CE4.Execute CStr(Me.Txt & var_340 & ",'" & CVar(MemVar_1F92078) & "' )"), , 
  loc_1600F37: Else
  loc_1600F45:   Set var_94 = Me.Txt
  loc_1600F4B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_1600F66:   Set var_9C = Me.Txt
  loc_1600F6C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_11C)
  loc_1600F87:   Set var_128 = Me.Txt
  loc_1600F8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_1600FA8:   Set var_13C = Me.Txt
  loc_1600FAE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_1600FC9:   Set var_150 = Me.Txt
  loc_1600FCF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_154)
  loc_1600FEB:   Proc_6_39_E7C810(var_F8)
  loc_1600FFE:   Set var_164 = Me.Txt
  loc_1601004:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_168)
  loc_160101F:   Set var_17C = Me.Txt
  loc_1601025:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_180)
  loc_1601040:   Set var_190 = Me.Txt
  loc_1601046:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_194)
  loc_160108B:   Set var_1A4 = Me.Txt
  loc_1601091:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1A8)
  loc_16010AC:   Set var_1F0 = Me.Txt
  loc_16010B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F4)
  loc_16010F7:   Set var_23C = Me.Txt
  loc_16010FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_240)
  loc_1601139:   var_4D0 = CVar(Proc_6_14_EF349C(CVar(Val(var_154.Text)))) 'String
  loc_160113F:   Proc_6_8_EB0DE4(var_4E0)
  loc_160117B:   var_138 = "UPDATE FacilityMast SET Name='" & var_98.Text & "',SACCode='" & var_11C.Text & "',ChargeType='" & var_12C.Text & "',ChargeUnit='"
  loc_1601189:   var_108 = CVar(var_138 & var_140.Text & "',UnitRate=") 'String
  loc_160118F:   var_118 = var_108 & var_F8 
  loc_16011C5:   var_310 = var_118 & ",ACCode='" & CVar(var_168.Tag) & "',TaxStru='" & CVar(var_180.Tag) & "',RoundOff='" & IIf((var_194.Text = "Yes"), "Y", "N") 
  loc_16011F1:   var_3E0 = var_310 & "',ROffType='" & CVar(var_1A8.Text) & "',MeterReading='" & IIf((var_1F4.Text = "Yes"), "Y", "N") & "',ActiveYN='" 
  loc_1601224:   var_500 = var_3E0 & IIf((var_240.Text = "Yes"), "Y", "N") & "',U_AE='E',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_4E0 & ",Site_Code='" 
  loc_160125B:   unk_4A0CE4.Execute CStr(var_500 & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_72) & "'"), var_550, -1
  loc_160130D: End If
  loc_1601313: unk_4A0CE4.CommitTrans
  loc_160131C: var_86 = CByte(0) 'Byte
  loc_1601320: Call Proc_324_37_F1F534(var_2D8)
  loc_1601330: Me.Requery -1
  loc_1601340: Me.Requery -1
  loc_160136D: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_160137D: Set var_94 = Me.TopCtrl1
  loc_1601383: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D8)
  loc_160139C: If (CStr(var_4D0) = "Add") Then
  loc_160139F:   Call TopCtrl1_UnknownEvent_A()
  loc_16013A4:   Exit Sub
  loc_16013A5: End If
  loc_16013BA: var_A0 = "INI"
  loc_16013C8: Call Proc_324_32_E776BC(Proc_5_1_100CB50(var_A0, Me))
  loc_16013D3: Call Proc_324_34_13C99A0(global_52)
  loc_16013D8: Exit Sub
  loc_16013D9: ' Referenced from: 160010C
  loc_16013E2: If (CInt(var_86) = 1) Then
  loc_16013EB:   unk_4A0CE4.RollbackTrans
  loc_16013F0: End If
  loc_16013F8: Set var_94 = Err()
  loc_16013FE: Call 0.Method_arg_2C (var_A0)
  loc_1601417: MsgBox(CVar(var_A0), &H10, var_F8, var_108, var_118)
  loc_160142A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1307300
  'Data Table: 4A0CD0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1306BFE: Set var_88 = Me.Txt
  loc_1306C04: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1306C12: Proc_6_74_E226B0(var_8C)
  loc_1306C1E: Call Proc_324_37_F1F534(var_8C)
  loc_1306C23: On Error Goto loc_13072B9
  loc_1306C29: var_92 = Index
  loc_1306C34: If (var_92 = CInt(0)) Then
  loc_1306C4E:   If (Me.RecordCount > 0) Then
  loc_1306C5C:     Set var_8C = Me.FGPoint
  loc_1306C74:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_1306C82:   End If
  loc_1306C85: Else
  loc_1306C8D:   If (var_92 = CInt(5)) Then
  loc_1306CA7:     If (Me.RecordCount > 0) Then
  loc_1306CB5:       Set var_8C = Me.FGPoint
  loc_1306CCD:       Proc_6_137_1193554(Me.DGLedgerAc, global_60, Index)
  loc_1306CDB:     End If
  loc_1306D29:     Set var_88 = Me.Txt
  loc_1306D2F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1306D37:     var_8C = var_8C.Text
  loc_1306D4F:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1306D52:       Exit Sub
  loc_1306D53:     End If
  loc_1306D60:     Set var_88 = Me.Txt
  loc_1306D66:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1306D6E:     var_A0 = var_8C.Text
  loc_1306D80:     var_B0 = "Name"
  loc_1306DBB:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1306DC4:       Me.MoveFirst
  loc_1306DE7:       Set var_88 = Me.Txt
  loc_1306DED:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1306DF5:       0 = var_8C.Text
  loc_1306E0E:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1306E23:     End If
  loc_1306E26:   Else
  loc_1306E2E:     If (var_92 = CInt(6)) Then
  loc_1306E48:       If (Me.RecordCount > 0) Then
  loc_1306E56:         Set var_8C = Me.FGPoint
  loc_1306E6E:         Proc_6_137_1193554(Me.DGTaxStru, global_64)
  loc_1306E7C:       End If
  loc_1306ECA:       Set var_88 = Me.Txt
  loc_1306ED0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1306ED8:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1306EF0:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1306EF3:         Exit Sub
  loc_1306EF4:       End If
  loc_1306F01:       Set var_88 = Me.Txt
  loc_1306F07:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1306F0F:       var_A0 = var_8C.Text
  loc_1306F21:       var_B0 = "Name"
  loc_1306F5C:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1306F65:         Me.MoveFirst
  loc_1306F88:         Set var_88 = Me.Txt
  loc_1306F8E:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1306F96:         0 = var_8C.Text
  loc_1306FAF:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1306FC4:       End If
  loc_1306FC7:     Else
  loc_1306FCF:       If (var_92 = CInt(2)) Then
  loc_1306FDF:         ReDim var_F0(0 To 1)
  loc_1306FF6:         var_F0(0) = "Calculated"
  loc_1307005:         var_F0(1) = "Fixed Charge"
  loc_130701C:         global_76 = Array(var_F0)
  loc_1307027:         Set var_B4 = Me.ListView
  loc_1307042:         Set var_8C = Me.Txt
  loc_130705C:         Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_130707A:         Set var_88 = Me.Txt
  loc_1307080:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1307088:         global_76 = var_8C.Text
  loc_130709A:         Set var_90 = Me.Txt
  loc_13070A0:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_13070A8:         var_B4.Tag = 2
  loc_13070BE:       Else
  loc_13070C6:         If (var_92 = CInt(3)) Then
  loc_13070D6:           ReDim var_F0(0 To 1)
  loc_13070ED:           var_F0(0) = "Sq Feet"
  loc_13070FC:           var_F0(1) = "Per Unit"
  loc_1307113:           global_76 = Array(var_F0)
  loc_130711E:           Set var_B4 = Me.ListView
  loc_1307139:           Set var_8C = Me.Txt
  loc_1307153:           Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_76)
  loc_1307171:           Set var_88 = Me.Txt
  loc_1307177:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130717F:           2 = var_8C.Text
  loc_1307191:           Set var_90 = Me.Txt
  loc_1307197:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_130719F:           var_B4.Tag = global_76
  loc_13071B5:         Else
  loc_13071BD:           If (var_92 = CInt(8)) Then
  loc_13071CD:             ReDim var_F0(0 To 2)
  loc_13071E4:             var_F0(0) = "Lower"
  loc_13071F3:             var_F0(1) = "Upper"
  loc_1307202:             var_F0(2) = "Standard"
  loc_1307219:             global_76 = Array(var_F0)
  loc_1307224:             Set var_B4 = Me.ListView
  loc_130723F:             Set var_8C = Me.Txt
  loc_1307259:             Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_76)
  loc_1307277:             Set var_88 = Me.Txt
  loc_130727D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1307285:             3 = var_8C.Text
  loc_1307297:             Set var_90 = Me.Txt
  loc_130729D:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_13072A5:             var_B4.Tag = global_76
  loc_13072B8:           End If
  loc_13072B8:         End If
  loc_13072B8:       End If
  loc_13072B8:     End If
  loc_13072B8:   End If
  loc_13072B8: End If
  loc_13072B8: Exit Sub
  loc_13072B9: ' Referenced from: 1306C23
  loc_13072C1: Set var_88 = Err()
  loc_13072C7: Call 0.Method_arg_2C (var_A0)
  loc_13072E8: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_13072FB: Exit Sub
  loc_13072FC: Exit Sub
  loc_13072FD: ThisVCallI2
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13AC4D0
  'Data Table: 4A0CD0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_110 As Variant
  loc_13ABBC2: If (CLng(Shift) = &H1B) Then
  loc_13ABBC5:   Call Proc_324_37_F1F534()
  loc_13ABBCA:   Exit Sub
  loc_13ABBCB: End If
  loc_13ABBCE: var_86 = KeyCode
  loc_13ABBD9: If (var_86 = CInt(0)) Then
  loc_13ABBF9:   Set var_98 = Me.FGPoint
  loc_13ABC27:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_13ABC94:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13ABCBA:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_13ABCC8:   End If
  loc_13ABCCB: Else
  loc_13ABCD3:   If (var_86 = CInt(5)) Then
  loc_13ABCFE:     Set var_98 = Nothing
  loc_13ABD30:     Proc_6_69_134A198(Me.DGLedgerAc, Me.Txt, CInt(5), global_60, Shift, 0, 1)
  loc_13ABD9F:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13ABDA6:       Set var_98 = Me.DGLedgerAc
  loc_13ABDC5:       Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_13ABDD3:     End If
  loc_13ABDD6:   Else
  loc_13ABDDE:     If (var_86 = CInt(6)) Then
  loc_13ABDEC:       Set var_A8 = Me.Txt
  loc_13ABDFE:       Set var_A0 = Me.FGPoint
  loc_13ABE3B:       Proc_6_69_134A198(Me.DGTaxStru, var_A8, CInt(6), global_64, Shift, 0, 1, Nothing)
  loc_13ABE5A:       var_AC = Me.RecordCount
  loc_13ABEAA:       If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13ABEB8:         Set var_90 = Me.FGPoint
  loc_13ABED0:         Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyCode, var_90, var_A0, 0)
  loc_13ABEDE:       End If
  loc_13ABEE1:     Else
  loc_13ABEE9:       If (var_86 = CInt(2)) Then
  loc_13ABF0E:         Set var_8C = Me.Txt
  loc_13ABF14:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_13ABF1C:         1 = var_90.Left
  loc_13ABF2E:         Set var_98 = Me.Txt
  loc_13ABF34:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_13ABF3C:         var_98 = var_A0.Top
  loc_13ABF4E:         Set var_A4 = Me.Txt
  loc_13ABF54:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_13ABF5C:         0 = var_A8.Height
  loc_13ABF6E:         Set var_B4 = Me.Txt
  loc_13ABF74:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13ABFC4:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13ABFF5:         Set var_8C = Me.Txt
  loc_13ABFFB:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_AC))
  loc_13AC003:         CInt((var_B8 + var_BC)) = var_90.Text
  loc_13AC01A:         If (var_E0 = "Fixed Charge") Then
  loc_13AC02A:           Set var_8C = Me.Txt
  loc_13AC030:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90, 0)
  loc_13AC038:           var_90.Enabled = CInt(var_C0.Width)
  loc_13AC052:           Set var_8C = Me.Txt
  loc_13AC058:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90, "No")
  loc_13AC060:           var_90.Text = 520
  loc_13AC079:           Set var_8C = Me.Txt
  loc_13AC07F:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90)
  loc_13AC087:           var_90.Enabled = False
  loc_13AC096:         Else
  loc_13AC0A3:           Set var_8C = Me.Txt
  loc_13AC0A9:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90)
  loc_13AC0B1:           var_90.Enabled = True
  loc_13AC0CB:           Set var_8C = Me.Txt
  loc_13AC0D1:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90)
  loc_13AC0D9:           var_90.Text = vbNullString
  loc_13AC0F2:           Set var_8C = Me.Txt
  loc_13AC0F8:           Call 0.Method_Txt_KeyDown0 (CInt(9), var_90)
  loc_13AC100:           var_90.Enabled = True
  loc_13AC10C:         End If
  loc_13AC10F:       Else
  loc_13AC117:         If (var_86 = CInt(7)) Then
  loc_13AC127:           Set var_8C = Me.Txt
  loc_13AC12D:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_13AC14C:           If (var_90.Text = "Yes") Then
  loc_13AC15C:             Set var_8C = Me.Txt
  loc_13AC162:             Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_13AC16A:             var_90.Enabled = True
  loc_13AC179:           Else
  loc_13AC186:             Set var_8C = Me.Txt
  loc_13AC18C:             Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_13AC194:             var_90.Enabled = False
  loc_13AC1A0:           End If
  loc_13AC1A3:         Else
  loc_13AC1AB:           If (var_86 = CInt(3)) Then
  loc_13AC1D0:             Set var_8C = Me.Txt
  loc_13AC1D6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_13AC1DE:             var_AC = var_90.Left
  loc_13AC1F0:             Set var_98 = Me.Txt
  loc_13AC1F6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_13AC1FE:             var_B8 = var_A0.Top
  loc_13AC210:             Set var_A4 = Me.Txt
  loc_13AC216:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_13AC21E:             var_BC = var_A8.Height
  loc_13AC230:             Set var_B4 = Me.Txt
  loc_13AC236:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13AC23E:             var_C4 = var_C0.Width
  loc_13AC286:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13AC2AD:           Else
  loc_13AC2B5:             If (var_86 = CInt(8)) Then
  loc_13AC2DA:               Set var_8C = Me.Txt
  loc_13AC2E0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13AC2E8:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_13AC2FA:               Set var_98 = Me.Txt
  loc_13AC300:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_13AC308:               CInt(var_C4) = var_A0.Top
  loc_13AC31A:               Set var_A4 = Me.Txt
  loc_13AC320:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_13AC328:               520 = var_A8.Height
  loc_13AC33A:               Set var_B4 = Me.Txt
  loc_13AC340:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13AC348:               var_C4 = var_C0.Width
  loc_13AC390:               Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13AC3B4:             End If
  loc_13AC3B4:           End If
  loc_13AC3B4:         End If
  loc_13AC3B4:       End If
  loc_13AC3B4:     End If
  loc_13AC3B4:   End If
  loc_13AC3B4: End If
  loc_13AC3EB: var_110 = Me.DGTaxStru.Visible
  loc_13AC425: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_110) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_13AC446:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_13AC480:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_13AC483:       Call TopCtrl1_UnknownEvent_16()
  loc_13AC488:     End If
  loc_13AC488:     Exit Sub
  loc_13AC489:   End If
  loc_13AC49E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13AC4A7:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_AC), CInt((var_B8 + var_BC)))
  loc_13AC4AC:   End If
  loc_13AC4BF:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_13AC4C8:     Proc_6_76_E52838(Shift, arg_14, CInt(var_C4))
  loc_13AC4CD:   End If
  loc_13AC4CD: End If
  loc_13AC4CD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1051B8C
  'Data Table: 4A0CD0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_105192A: Proc_6_133_E7EF78(var_94)
  loc_1051933: arg_10 = CInt(var_94)
  loc_105193C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_1051944: var_96 = KeyAscii
  loc_105194F: If (var_96 = CInt(5)) Then
  loc_105196E:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_1051980:     var_A0 = "Name"
  loc_105199B:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_10519CD:     Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyAscii, Me.FGPoint)
  loc_10519DB:   End If
  loc_10519DE: Else
  loc_10519E6:   If (var_96 = CInt(6)) Then
  loc_1051A05:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1051A17:       var_A0 = "Name"
  loc_1051A32:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_1051A4C:       Set var_A8 = Me.FGPoint
  loc_1051A64:       Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyAscii, var_A8, 0)
  loc_1051A72:     End If
  loc_1051A75:   Else
  loc_1051A7D:     If (var_96 = CInt(4)) Then
  loc_1051A8A:       Set var_9C = Me.Txt
  loc_1051A90:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_1051AAB:       Proc_6_42_129A86C(var_A8, arg_10, 8, 2)
  loc_1051ABA:     Else
  loc_1051AC2:       If Not (var_96 = CInt(7)) Then
  loc_1051ACD:         If Not (var_96 = CInt(9)) Then
  loc_1051AD8:           If (var_96 = CInt(&HA)) Then
  loc_1051ADB:           End If
  loc_1051ADB:         End If
  loc_1051B04:         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1051B14:           Set var_9C = Me.Txt
  loc_1051B1A:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1051B22:           var_A8.Text = 0
  loc_1051B31:         Else
  loc_1051B5A:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1051B6A:             Set var_9C = Me.Txt
  loc_1051B70:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1051B78:             var_A8.Text = var_96
  loc_1051B84:           End If
  loc_1051B84:         End If
  loc_1051B86:         arg_10 = 0
  loc_1051B89:       End If
  loc_1051B89:     End If
  loc_1051B89:   End If
  loc_1051B89: End If
  loc_1051B89: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F32CA0
  'Data Table: 4A0CD0
  Dim var_86 As Integer
  loc_F32B8F: var_86 = KeyCode
  loc_F32B9A: If (var_86 = CInt(0)) Then
  loc_F32BB9:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F32BC6:     var_A0 = "Name"
  loc_F32BE1:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_F32C13:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F32C21:   End If
  loc_F32C24: Else
  loc_F32C2C:   If Not (var_86 = CInt(2)) Then
  loc_F32C37:     If Not (var_86 = CInt(3)) Then
  loc_F32C42:       If (var_86 = CInt(8)) Then
  loc_F32C45:       End If
  loc_F32C45:     End If
  loc_F32C60:     If (Me.FrmList.Visible = &HFF) Then
  loc_F32C8F:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F32C9F:     End If
  loc_F32C9F:   End If
  loc_F32C9F: End If
  loc_F32C9F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FB34
  'Data Table: 4A0CD0
  loc_E4FB12: Set var_88 = Me.Txt
  loc_E4FB18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FB26: Proc_6_73_E22704(var_8C)
  loc_E4FB32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '123EB50
  'Data Table: 4A0CD0
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_123E61C: On Error Goto loc_123EB0C
  loc_123E622: var_86 = Cancel
  loc_123E62D: If (var_86 = CInt(0)) Then
  loc_123E633:   Call Proc_324_35_1089018(var_88)
  loc_123E63E:   If (var_88 = &HFF) Then
  loc_123E643:     arg_10 = &HFF
  loc_123E646:     Exit Sub
  loc_123E647:   End If
  loc_123E64A: Else
  loc_123E652:   If (var_86 = CInt(1)) Then
  loc_123E658:     Call Proc_324_36_10AFAF4(var_88, arg_10)
  loc_123E663:     If (var_88 = &HFF) Then
  loc_123E668:       arg_10 = &HFF
  loc_123E66B:       Exit Sub
  loc_123E66C:     End If
  loc_123E66F:   Else
  loc_123E677:     If (var_86 = CInt(5)) Then
  loc_123E6C8:       Set var_94 = Me.Txt
  loc_123E6CE:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_123E6D6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_123E6EE:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_123E6F1:         Exit Sub
  loc_123E6F2:       End If
  loc_123E72D:       Set var_B0 = Me.Txt
  loc_123E733:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123E73B:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_123E76E:       var_98 = Me.Fields.Item("Code")
  loc_123E77F:       var_9C = CStr(var_98.Value)
  loc_123E78C:       Set var_B0 = Me.Txt
  loc_123E792:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123E79A:       var_B4.Tag = var_9C
  loc_123E7B3:     Else
  loc_123E7BB:       If (var_86 = CInt(6)) Then
  loc_123E80C:         Set var_94 = Me.Txt
  loc_123E812:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_123E81A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_123E832:         If (var_86 Or (var_9C = vbNullString)) Then
  loc_123E842:           Set var_94 = Me.Txt
  loc_123E848:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123E850:           var_98.Tag = vbNullString
  loc_123E85C:           Exit Sub
  loc_123E85D:         End If
  loc_123E898:         Set var_B0 = Me.Txt
  loc_123E89E:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123E8A6:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_123E8D9:         var_98 = Me.Fields.Item("Code")
  loc_123E8F7:         Set var_B0 = Me.Txt
  loc_123E8FD:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123E905:         var_B4.Tag = CStr(var_98.Value)
  loc_123E91E:       Else
  loc_123E926:         If (var_86 = CInt(4)) Then
  loc_123E933:           Set var_94 = Me.Txt
  loc_123E939:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_123E965:           var_9C = CStr(Format(CVar(var_98), "0.00"))
  loc_123E973:           Set var_B0 = Me.Txt
  loc_123E979:           Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_9C)
  loc_123E981:           var_B4.Text = 1
  loc_123E99E:         Else
  loc_123E9A6:           If Not (var_86 = CInt(2)) Then
  loc_123E9B1:             If Not (var_86 = CInt(3)) Then
  loc_123E9BC:               If (var_86 = CInt(8)) Then
  loc_123E9BF:               End If
  loc_123E9BF:             End If
  loc_123E9CC:             Set var_94 = Me.Txt
  loc_123E9D2:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_123E9DA:             1 = var_98.Text
  loc_123E9F1:             If (var_9C <> vbNullString) Then
  loc_123EA0C:               Set var_98 = Me.ListView.SelectedItem
  loc_123EA12:               var_9C = var_98.Text
  loc_123EA24:               Set var_B0 = Me.Txt
  loc_123EA2A:               Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_123EA32:               var_B4.Text = var_9C
  loc_123EA48:             End If
  loc_123EA4B:           Else
  loc_123EA53:             If Not (var_86 = CInt(&HA)) Then
  loc_123EA5E:               If Not (var_86 = CInt(7)) Then
  loc_123EA69:                 If (var_86 = CInt(9)) Then
  loc_123EA6C:                 End If
  loc_123EA6C:               End If
  loc_123EA76:               Set var_94 = Me.Txt
  loc_123EA7C:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123EA9B:               var_E4 = Ucase(Left(CVar(var_98), 1))
  loc_123EAB7:               If (var_E4 = "Y") Then
  loc_123EAC7:                 Set var_94 = Me.Txt
  loc_123EACD:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123EAD5:                 var_98.Text = "Yes"
  loc_123EAE4:               Else
  loc_123EAF1:                 Set var_94 = Me.Txt
  loc_123EAF7:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_123EAFF:                 var_98.Text = "No"
  loc_123EB0B:               End If
  loc_123EB0B:             End If
  loc_123EB0B:           End If
  loc_123EB0B:         End If
  loc_123EB0B:       End If
  loc_123EB0B:     End If
  loc_123EB0B:   End If
  loc_123EB0B: End If
  loc_123EB0B: Exit Sub
  loc_123EB0C: ' Referenced from: 123E61C
  loc_123EB14: Set var_94 = Err()
  loc_123EB1A: Call 0.Method_arg_2C (var_9C)
  loc_123EB3B: MsgBox(CVar(var_9C), &H40, "Information", var_E4, var_F4)
  loc_123EB4E: Exit Sub
  loc_123EB4F: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F359A4
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3589B: Me.DGLedgerAc.Visible = False
  loc_F358BA: If (Me.RecordCount > 0) Then
  loc_F358F9:   Set var_B4 = Me.Txt
  loc_F358FF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F35907:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3593A:   var_B0 = Me.Fields.Item("Name")
  loc_F35959:   Set var_B4 = Me.Txt
  loc_F3595F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F35967:   var_B8.Text = CStr(var_B0.Value)
  loc_F3597D: End If
  loc_F35988: Set var_A8 = Me.Txt
  loc_F3598E: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5))
  loc_F35996: var_B0.SetFocus
  loc_F359A2: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'EA5F8C
  'Data Table: 4A0CD0
  Dim var_A8 As Variant
  loc_EA5F0C: Set var_88 = Me.DGLedgerAc
  loc_EA5F36: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5F3E: Set var_BC = Me.DGLedgerAc
  loc_EA5F7A: Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, CInt(5), Me.FGPoint)
  loc_EA5F88: Exit Sub
  loc_EA5F89: DGLedgerAc.DispID_1B = var_A8
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5684
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC55FA: On Error Goto loc_EC563F
  loc_EC5603: Me.MoveFirst
  loc_EC561D: var_8C = "code='" & MyValue
  loc_EC562D: Me.Find var_8C & "'", 0, 1
  loc_EC5639: Call Proc_324_34_13C99A0(var_A0)
  loc_EC563E: Exit Sub
  loc_EC563F: ' Referenced from: EC55FA
  loc_EC5647: Set var_A4 = Err()
  loc_EC564D: Call 0.Method_arg_2C (var_8C)
  loc_EC566E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5681: Exit Sub
  loc_EC5682: Exit Sub
End Sub

Public Sub Proc_324_32_E776BC(arg_C) 'E776BC
  'Data Table: 4A0CD0
  Dim var_98 As TextBox
  loc_E7766A: Set var_8C = Me.Txt
  loc_E77670: Call 0.Method_Proc_324_32_E776BCC (var_8E, var_86)
  loc_E77680: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E77696:   Set var_8C = Me.Txt
  loc_E7769C:   Call 0.Method_Proc_324_32_E776BC0 (CInt(var_86), var_98)
  loc_E776A4:   var_98.Enabled = arg_C
  loc_E776B3: Next var_92 'Byte
  loc_E776B9: Exit Sub
  loc_E776BA: Set arg_5800 = 
End Sub

Public Sub Proc_324_33_E77754
  'Data Table: 4A0CD0
  Dim var_98 As TextBox
  loc_E77702: Set var_8C = Me.Txt
  loc_E77708: Call 0.Method_Proc_324_33_E77754C (var_8E, var_86)
  loc_E77718: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7772E:   Set var_8C = Me.Txt
  loc_E77734:   Call 0.Method_Proc_324_33_E777540 (CInt(var_86), var_98)
  loc_E7773C:   var_98.Text = vbNullString
  loc_E7774B: Next var_92 'Byte
  loc_E77751: Exit Sub
  loc_E77752: Set arg_5800 = 
End Sub

Public Sub Proc_324_34_13C99A0
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_B8 As Fields15
  Dim var_1C8 As Variant
  loc_13C9040: On Error Goto loc_13C995B
  loc_13C9049: Proc_183_45_E5C118(global_52)
  loc_13C9065: If (Me.RecordCount <= 0) Then
  loc_13C9068:   Call Proc_324_33_E77754()
  loc_13C9070: Else
  loc_13C90A4:   global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_13C90F1:   Set var_B8 = Me.Txt
  loc_13C90F7:   Call 0.Method_Proc_324_34_13C99A00 (CInt(0), var_BC)
  loc_13C90FF:   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C9151:   Set var_B8 = Me.Txt
  loc_13C9157:   Call 0.Method_Proc_324_34_13C99A00 (CInt(0), var_BC)
  loc_13C915F:   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13C91B1:   Set var_B8 = Me.Txt
  loc_13C91B7:   Call 0.Method_Proc_324_34_13C99A00 (CInt(1), var_BC)
  loc_13C91BF:   var_BC.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_13C920E:   Set var_B8 = Me.Txt
  loc_13C9214:   Call 0.Method_Proc_324_34_13C99A00 (CInt(&HB), var_BC)
  loc_13C921C:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SACCode")))
  loc_13C926C:   Set var_B8 = Me.Txt
  loc_13C9272:   Call 0.Method_Proc_324_34_13C99A00 (CInt(2), var_BC)
  loc_13C927A:   var_BC.Text = CStr(Me.Fields.Item("ChargeType").Value)
  loc_13C92CC:   Set var_B8 = Me.Txt
  loc_13C92D2:   Call 0.Method_Proc_324_34_13C99A00 (CInt(3), var_BC)
  loc_13C92DA:   var_BC.Text = CStr(Me.Fields.Item("ChargeUnit").Value)
  loc_13C9345:   Set var_B8 = Me.Txt
  loc_13C934B:   Call 0.Method_Proc_324_34_13C99A00 (CInt(4), var_BC, CStr(Format(CVar(Me.Fields.Item("UnitRate")), "0.00")))
  loc_13C9353:   var_BC.Text = 1
  loc_13C93A6:   Set var_B8 = Me.Txt
  loc_13C93AC:   Call 0.Method_Proc_324_34_13C99A00 (CInt(5), var_BC)
  loc_13C93B4:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerName")))
  loc_13C9401:   Set var_B8 = Me.Txt
  loc_13C9407:   Call 0.Method_Proc_324_34_13C99A00 (CInt(5), var_BC)
  loc_13C940F:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerCode")))
  loc_13C945C:   Set var_B8 = Me.Txt
  loc_13C9462:   Call 0.Method_Proc_324_34_13C99A00 (CInt(6), var_BC)
  loc_13C946A:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxName")))
  loc_13C94B7:   Set var_B8 = Me.Txt
  loc_13C94BD:   Call 0.Method_Proc_324_34_13C99A00 (CInt(6), var_BC)
  loc_13C94C5:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxCode")))
  loc_13C9547:   Set var_B8 = Me.Txt
  loc_13C954D:   Call 0.Method_Proc_324_34_13C99A00 (CInt(7), var_BC)
  loc_13C9555:   var_BC.Text = CStr(IIf((Me.Fields.Item("RoundOff").Value = "Y"), "Yes", "No"))
  loc_13C95AE:   Set var_B8 = Me.Txt
  loc_13C95B4:   Call 0.Method_Proc_324_34_13C99A00 (CInt(8), var_BC)
  loc_13C95BC:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ROffType")))
  loc_13C963E:   Set var_B8 = Me.Txt
  loc_13C9644:   Call 0.Method_Proc_324_34_13C99A00 (CInt(9), var_BC)
  loc_13C964C:   var_BC.Text = CStr(IIf((Me.Fields.Item("MeterReading").Value = "Y"), "Yes", "No"))
  loc_13C96DA:   Set var_B8 = Me.Txt
  loc_13C96E0:   Call 0.Method_Proc_324_34_13C99A00 (CInt(&HA), var_BC)
  loc_13C96E8:   var_BC.Text = CStr(IIf((Me.Fields.Item("ActiveYN").Value = "Y"), "Yes", "No"))
  loc_13C97B1:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_13C97F9:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")), var_180)))
  loc_13C9892:   var_10C = "entdt :   "
  loc_13C989D:   var_EC = "Last Update :   "
  loc_13C98CB:   var_B4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE")))
  loc_13C9910:   var_1C8 = IIf((var_B4 = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), var_EC, var_10C)) & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))) 
  loc_13C9922:   Me.LblLDt.Caption = CStr(var_1C8)
  loc_13C995A: End If
  loc_13C995A: Exit Sub
  loc_13C995B: ' Referenced from: 13C9040
  loc_13C9963: Set var_8C = Err()
  loc_13C9969: Call 0.Method_arg_2C (var_B4)
  loc_13C998A: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_13C999D: Exit Sub
End Sub

Public Sub Proc_324_35_1089018
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4A0CE4 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1088DAB: If (Me.RecordCount = 0) Then
  loc_1088DAE:   Proc_324_35_1089018 = 
  loc_1088DB4: End If
  loc_1088DB8: Set var_90 = Me.TopCtrl1
  loc_1088DBE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1088DD7: If (CStr() = "Add") Then
  loc_1088E15:   Set var_90 = Me.Txt
  loc_1088E1B:   Call 0.Method_Proc_324_35_10890180 (CInt(0), var_A8, var_AC, "Select Count(*) From FacilityMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1088E3C:   unk_4A0CE4.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1088E4C:    = var_D0.Item()
  loc_1088E54:    = var_E4.Value
  loc_1088E85:   If (var_A8.Text.Fields > 0) Then
  loc_1088EA3:     var_A0 = "Duplicate Name"
  loc_1088EA9:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1088EC4:     Set var_90 = Me.Txt
  loc_1088ECA:     Call 0.Method_Proc_324_35_10890180 (CInt(0))
  loc_1088ED2:     var_A8.SetFocus
  loc_1088EE3:     Proc_324_35_1089018 = &HFF
  loc_1088EE9:   End If
  loc_1088EEC: Else
  loc_1088F27:   Set var_90 = Me.Txt
  loc_1088F2D:   Call 0.Method_Proc_324_35_10890180 (CInt(0), var_A8, var_AC, "Select Count(*) From FacilityMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1088F5F:   unk_4A0CE4.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_1088F6F:    = var_D0.Item(var_A8)
  loc_1088F77:    = var_E4.Value
  loc_1088FAC:   If (var_A8.Text.Fields > 0) Then
  loc_1088FD0:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1088FEB:     Set var_90 = Me.Txt
  loc_1088FF1:     Call 0.Method_Proc_324_35_10890180 (CInt(0))
  loc_1088FF9:     var_A8.SetFocus
  loc_108900A:     Proc_324_35_1089018 = &HFF
  loc_1089010:   End If
  loc_1089010: End If
  loc_1089010: Proc_324_35_1089018 = var_A8
End Sub

Public Sub Proc_324_36_10AFAF4
  'Data Table: 4A0CD0
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_4A0CE4 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10AF863: If (Me.RecordCount = 0) Then
  loc_10AF866:   Proc_324_36_10AFAF4 = 
  loc_10AF86C: End If
  loc_10AF870: Set var_90 = Me.TopCtrl1
  loc_10AF876: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10AF88F: If (CStr() = "Add") Then
  loc_10AF8CD:   Set var_90 = Me.Txt
  loc_10AF8D3:   Call 0.Method_Proc_324_36_10AFAF40 (CInt(1), var_A8, var_AC, "Select Count(*) From FacilityMast Where LogSite_Code='" & MemVar_1F92078 & "' and ShortName='", var_A0, -1)
  loc_10AF8EB:   var_B8 = var_D0 & var_AC & "'"
  loc_10AF8F4:   unk_4A0CE4.Execute var_B8, 0, var_E4
  loc_10AF904:    = var_D0.Item()
  loc_10AF90C:    = var_E4.Value
  loc_10AF93D:   If (var_A8.Text.Fields > 0) Then
  loc_10AF94B:     var_F4 = "Information"
  loc_10AF95B:     var_A0 = "Duplicate Short Name"
  loc_10AF961:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10AF97C:     Set var_90 = Me.Txt
  loc_10AF982:     Call 0.Method_Proc_324_36_10AFAF40 (CInt(1))
  loc_10AF98A:     var_A8.SetFocus
  loc_10AF99B:     Proc_324_36_10AFAF4 = &HFF
  loc_10AF9A1:   End If
  loc_10AF9A4: Else
  loc_10AF9AA:   var_E0 = 0
  loc_10AF9DF:   Set var_90 = Me.Txt
  loc_10AF9E5:   Call 0.Method_Proc_324_36_10AFAF40 (CInt(1), var_A8, var_AC, "Select Count(*) From FacilityMast Where LogSite_Code='" & MemVar_1F92078 & "' and ShortName='", var_A0, -1)
  loc_10AFA0E:   Set var_CC = Me.Txt
  loc_10AFA14:   Call 0.Method_Proc_324_36_10AFAF40 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And Code<>'")
  loc_10AFA1C:   var_E0 = var_D0.Tag
  loc_10AFA35:   unk_4A0CE4.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10AFA3D:    = var_A8.Text.Fields
  loc_10AFA45:    = var_144.Item()
  loc_10AFA4D:    = var_148.Value
  loc_10AFA88:   If (var_F4 > 0) Then
  loc_10AFAAC:     MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_10AFAC7:     Set var_90 = Me.Txt
  loc_10AFACD:     Call 0.Method_Proc_324_36_10AFAF40 (CInt(1))
  loc_10AFAD5:     var_A8.SetFocus
  loc_10AFAE6:     Proc_324_36_10AFAF4 = &HFF
  loc_10AFAEC:   End If
  loc_10AFAEC: End If
  loc_10AFAEC: Proc_324_36_10AFAF4 = var_A8
End Sub

Public Sub Proc_324_37_F1F534
  'Data Table: 4A0CD0
  loc_F1F444: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1F456:   Me.DGHelp.Visible = False
  loc_F1F45E: End If
  loc_F1F47A: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F1F48C:   Me.DGLedgerAc.Visible = False
  loc_F1F494: End If
  loc_F1F4B0: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F1F4C2:   Me.DGTaxStru.Visible = False
  loc_F1F4CA: End If
  loc_F1F4E5: If (Me.FrmList.Visible = &HFF) Then
  loc_F1F4F4:   Me.FrmList.Visible = False
  loc_F1F4FC: End If
  loc_F1F518: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1F52A:   Me.FGPoint.Visible = False
  loc_F1F532: End If
  loc_F1F532: Exit Sub
End Sub

Public Sub Proc_324_38_1007298
  'Data Table: 4A0CD0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1007096: Set var_88 = Me.Txt
  loc_100709C: Call 0.Method_Proc_324_38_10072980 (CInt(0), var_8C)
  loc_10070BB: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10070D7: Set var_B4 = Me.Txt
  loc_10070DD: Call 0.Method_Proc_324_38_10072980 (CInt(0), var_B8)
  loc_10070F8: Set var_88 = Me.Txt
  loc_10070FE: Call 0.Method_Proc_324_38_10072980 (CInt(0), var_8C)
  loc_1007116: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1007125: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1007145: Set var_88 = Me.Txt
  loc_100714B: Call 0.Method_Proc_324_38_10072980 (CInt(5), var_8C)
  loc_100716A: Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_1007186: Set var_B4 = Me.Txt
  loc_100718C: Call 0.Method_Proc_324_38_10072980 (CInt(5), var_B8)
  loc_10071A7: Set var_88 = Me.Txt
  loc_10071AD: Call 0.Method_Proc_324_38_10072980 (CInt(5), var_8C)
  loc_10071C5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_10071D4: Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_10071F4: Set var_88 = Me.Txt
  loc_10071FA: Call 0.Method_Proc_324_38_10072980 (CInt(6), var_8C)
  loc_1007219: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_1007235: Set var_B4 = Me.Txt
  loc_100723B: Call 0.Method_Proc_324_38_10072980 (CInt(6), var_B8)
  loc_1007256: Set var_88 = Me.Txt
  loc_100725C: Call 0.Method_Proc_324_38_10072980 (CInt(6), var_8C)
  loc_1007274: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1007283: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_1007295: Exit Sub
End Sub
