VERSION 5.00
Begin VB.Form FrmTaxMast
  Caption = "Tax Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFFC0C0&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15120
  ClientHeight = 9045
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 3255
    Width = 4215
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 2940
    Width = 4215
    Height = 285
    TabIndex = 5
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15120
    Height = 450
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 10710
    Top = 2115
    Width = 4230
    Height = 2205
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGSundry
    Left = 10770
    Top = 3390
    Width = 4260
    Height = 2205
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
End
Begin DataGrid DGLedgerAc
  Left = 10725
  Top = 4755
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 7
End
Begin TextBox Txt
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3090
  Top = 2310
  Width = 4215
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
Begin PictureBox Picture3
  Picture = "FrmTaxMast.frx":0
  Left = 13515
  Top = 1005
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 15
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
End
Begin TextBox Txt
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6405
  Top = 1995
  Width = 900
  Height = 285
  Visible = 0   'False
  Text = "No"
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
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3090
  Top = 1995
  Width = 1035
  Height = 285
  TabIndex = 1
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
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3090
  Top = 1680
  Width = 4215
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
  ForeColor = &HC00000&
  Left = 3090
  Top = 2625
  Width = 4215
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
Begin MSFlexGrid FGPoint
  Left = 9765
  Top = 1185
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 18
End
Begin Label LblLedgerAc
  Caption = "(Purchase)"
  Index = 8
  ForeColor = &H80&
  Left = 7335
  Top = 3255
  Width = 1005
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
Begin Label LblLedgerAc
  Caption = "(Purchase)"
  Index = 7
  ForeColor = &H80&
  Left = 7335
  Top = 2940
  Width = 1005
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
Begin Label LblLedgerAc
  Caption = "Unregistered A/C"
  Index = 6
  ForeColor = &HC00000&
  Left = 1380
  Top = 3255
  Width = 1605
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
  Caption = "Payable A/C"
  Index = 5
  ForeColor = &HC00000&
  Left = 1380
  Top = 2940
  Width = 1170
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
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 1935
  Top = 5685
  Width = 2880
  Height = 255
  TabIndex = 21
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
  Left = 5310
  Top = 5685
  Width = 2790
  Height = 285
  TabIndex = 20
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
  Left = -30
  Top = 630
  Width = 180
  Height = 540
  TabIndex = 19
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
Begin Label LblLedgerAc
  Caption = "Sundry Name"
  Index = 4
  ForeColor = &HC00000&
  Left = 1380
  Top = 2310
  Width = 1290
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
Begin Label LblLedgerAc
  Caption = "(Y)es/(N)o"
  Index = 3
  ForeColor = &H80&
  Left = 7350
  Top = 1995
  Width = 885
  Height = 240
  Visible = 0   'False
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
Begin Label LblLedgerAc
  Caption = "Round Off"
  Index = 1
  ForeColor = &HC00000&
  Left = 4845
  Top = 2010
  Width = 945
  Height = 240
  Visible = 0   'False
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
Begin Label LblLedgerAc
  Caption = "Short Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1380
  Top = 1995
  Width = 1125
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
Begin Label LblSysYN
  Caption = "SysYN"
  ForeColor = &H80&
  Left = 7380
  Top = 1680
  Width = 585
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
  Caption = "Tax Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1380
  Top = 1680
  Width = 975
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
Begin Label LblLedgerAc
  Caption = "Ledger A/C"
  Index = 2
  ForeColor = &HC00000&
  Left = 1380
  Top = 2625
  Width = 1065
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

Attribute VB_Name = "FrmTaxMast"


Private Sub FGPoint_UnknownEvent_9 'E86E78
  'Data Table: 493FCC
  loc_E86E24: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86E27:   Call DGHelp_UnknownEvent_9()
  loc_E86E2C: End If
  loc_E86E48: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E86E4B:   Call DGLedgerAc_UnknownEvent_9()
  loc_E86E50: End If
  loc_E86E6C: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_E86E6F:   Call DGSundry_UnknownEvent_9()
  loc_E86E74: End If
  loc_E86E74: Exit Sub
End Sub

Private Sub Form_Load() '10A9A84
  'Data Table: 493FCC
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_493FE1 As Connection15
  Dim var_B4 As Variant
  loc_10A97BC: On Error Goto loc_10A9A3F
  loc_10A97CE: Me.LblUser.Left = CDbl(13500)
  loc_10A97E5: Me.LblUser.Top = CDbl(7800)
  loc_10A97FC: Me.LblLDt.Top = CDbl(8160)
  loc_10A980D: Set var_8C = Me.LblLDt
  loc_10A9813: var_8C.Left = CDbl(13500)
  loc_10A9822: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10A9827: Call Proc_15_38_F8B67C()
  loc_10A9847: var_94 = "SELECT Code,Name FROM REVMAST WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_10A9850: unk_493FE1.Execute var_94, var_B4, -1
  loc_10A987F: CVarUnk
  loc_10A9884: VerifyVarObj
  loc_10A9890: LateIdStAd
  loc_10A98B9: var_94 = "SELECT S.SubCode as Code,S.Name FROM SubGroup S WHERE S.ActiveYN=1 And (S.LOGSITE_CODE='" & MemVar_1F92078 & "' or S.LOGSITE_CODE='HO') ORDER BY S.Name"
  loc_10A98C2: unk_493FE1.Execute var_94, var_B4, -1
  loc_10A98F1: CVarUnk
  loc_10A98F6: VerifyVarObj
  loc_10A9902: LateIdStAd
  loc_10A9934: unk_493FE1.Execute "SELECT Code,Name FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_10A9963: CVarUnk
  loc_10A9968: VerifyVarObj
  loc_10A9974: LateIdStAd
  loc_10A9996: var_90 = "SELECT R.*,R.Code as SearchCode,R.ACCode as LedgerCode,S.Name as LedgerName,R.PayableAc as PayableAcCode,SP.Name as PayableAcName,R.UnregisteredAc as UnregisteredAcCode,SU.Name as UnregisteredAcName,SundryMast.Code as SundryCode,SundryMast.Name as SundryName FROM RevMast R Left join Subgroup S on S.SubCode=R.ACCode Left Join SubGroup SP On SP.SubCode=R.PayableAc Left Join SubGroup SU On SU.SubCode=R.UnregisteredAc Left Join SundryMast on SundryMast.Code=R.Sundry WHERE FIELDTYPE='T'  AND (R.LOGSITE_CODE='" & MemVar_1F92078
  loc_10A99A6: unk_493FE1.Execute var_90 & "' or R.LOGSITE_CODE='HO') order by R.Name", var_B4, -1
  loc_10A99DC: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_10A99EA: Call 0.Method_arg_50 (var_90, Me.TopCtrl1, Me.TopCtrl1, Me.DGLedgerAc, Me.TopCtrl1, Me.TopCtrl1)
  loc_10A99FA: Set var_8C = Me.TopCtrl1
  loc_10A9A00: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(CVar(var_90))
  loc_10A9A20: var_90 = "INI"
  loc_10A9A2E: Call Proc_15_31_E796CC(Proc_5_1_100CB50(var_90, Me, Me.DGSundry, Me.DGHelp), Me, Me)
  loc_10A9A39: Call Proc_15_33_13786F0(Me)
  loc_10A9A3E: Exit Sub
  loc_10A9A3F: ' Referenced from: 10A97BC
  loc_10A9A47: Set var_8C = Err()
  loc_10A9A4D: Call 0.Method_arg_2C (var_90)
  loc_10A9A6E: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_10A9A81: Exit Sub
  loc_10A9A82: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6778
  'Data Table: 493FCC
  Dim var_8C As Label
  loc_ED66D6: Call 0.Method_arg_50 (var_88)
  loc_ED66E8: Me.LblFormCaption.Caption = var_88
  loc_ED6701: Me.LblFormCaption.Left = CDbl(0)
  loc_ED670D: Set var_A0 = Me.TopCtrl1
  loc_ED6713: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED6720: Set var_8C = Me.TopCtrl1
  loc_ED6726: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED6740: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED675B: Call 0.Method_arg_100 (var_B8)
  loc_ED676D: Me.LblFormCaption.Width = var_B8
  loc_ED6775: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E616B8
  'Data Table: 493FCC
  loc_E61677: Set global_52 = Nothing
  loc_E61689: Set global_56 = Nothing
  loc_E6169B: Set global_60 = Nothing
  loc_E616AD: Set global_68 = Nothing
  loc_E616B4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A860
  'Data Table: 493FCC
  loc_E2A838: On Error Goto loc_E2A857
  loc_E2A84F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A857: ' Referenced from: E2A838
  loc_E2A857: Proc_6_60_E62BC4(Shift)
  loc_E2A85C: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4A504
  'Data Table: 493FCC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A3FB: Me.DGHelp.Visible = False
  loc_F4A41A: If (Me.RecordCount > 0) Then
  loc_F4A459:   Set var_B4 = Me.Txt
  loc_F4A45F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4A467:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4A49A:   var_B0 = Me.Fields.Item("Code")
  loc_F4A4B9:   Set var_B4 = Me.Txt
  loc_F4A4BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4A4C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4A4DD: End If
  loc_F4A4E8: Set var_A8 = Me.Txt
  loc_F4A4EE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4A4F6: var_B0.SetFocus
  loc_F4A502: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70C98
  'Data Table: 493FCC
  loc_E70C56: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E70C6D: Set var_8C = Me.FGPoint
  loc_E70C89: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E70C97: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFA8B4
  'Data Table: 493FCC
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EFA7E8: On Error Goto loc_EFA86E
  loc_EFA7EB: Call Proc_15_32_E78334()
  loc_EFA805: var_88 = "ADD"
  loc_EFA813: Call Proc_15_31_E796CC(Proc_5_1_100CB50(var_88, Me))
  loc_EFA829: Set var_8C = Me.Txt
  loc_EFA82F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFA837: var_94.SetFocus
  loc_EFA850: Me.LblUser.Caption = vbNullString
  loc_EFA865: Me.LblLDt.Caption = vbNullString
  loc_EFA86D: Exit Sub
  loc_EFA86E: ' Referenced from: EFA7E8
  loc_EFA876: Set var_8C = Err()
  loc_EFA87C: Call 0.Method_arg_2C (var_88)
  loc_EFA89D: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_EFA8B0: Exit Sub
  loc_EFA8B1: arg_5400 = global_52 'Address Function
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBA0E4
  'Data Table: 493FCC
  loc_EBA050: On Error Goto loc_EBA0DB
  loc_EBA08A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBA099:   Set var_110 = Me
  loc_EBA0B0:   Call Proc_15_31_E796CC(Proc_5_1_100CB50("INI", var_110))
  loc_EBA0BB:   Call Proc_15_33_13786F0(global_52)
  loc_EBA0C3: Else
  loc_EBA0C9:   Call 0.Method_arg_1E8 (var_110)
  loc_EBA0D1:   Call var_110.SetFocus
  loc_EBA0DA: End If
  loc_EBA0DA: Exit Sub
  loc_EBA0DB: ' Referenced from: EBA050
  loc_EBA0DB: Proc_6_60_E62BC4()
  loc_EBA0E0: Exit Sub
  loc_EBA0E1: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11E0438
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim unk_493FE1 As Connection15
  loc_11DFFE8: On Error Goto loc_11E03E9
  loc_11DFFF9: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_11DFFFC:   Exit Sub
  loc_11DFFFD: End If
  loc_11E002F: var_D8 = "Tax Name"
  loc_11E0077: If (Proc_6_108_1010FEC(MemVar_1F92044, "TaxStru", "TaxCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11E007A:   Exit Sub
  loc_11E007B: End If
  loc_11E00BA: var_FC = "select SysYN From REVMAST Where Code='" & Me.Fields.Item("Code").Value 
  loc_11E00C3: var_11C = var_FC & "'" 
  loc_11E00D1: unk_493FE1.Execute CStr(var_11C), var_13C, -1
  loc_11E00DC: Set var_98 = var_140
  loc_11E00FF: var_D4 = Me.Recordset15.RecordCount
  loc_11E010D: If (var_D4 > 0) Then
  loc_11E014F:   If (Me.Recordset15.Fields.Item("SysYN").Value = "Y") Then
  loc_11E016B:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_FC, var_11C, var_13C)
  loc_11E017B:     Exit Sub
  loc_11E017C:   End If
  loc_11E017C: End If
  loc_11E01B3: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_13C) = 6) Then
  loc_11E01BF:   unk_493FE1.BeginTrans var_D4
  loc_11E01D5:   var_94 = Me.Bookmark 'Variant
  loc_11E0221:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_11E022F:   unk_493FE1.Execute CStr(var_11C), var_13C, -1
  loc_11E027A:   var_16C = 0
  loc_11E028D:   var_164 = 0
  loc_11E0298:   var_160 = 0
  loc_11E02AB:   var_158 = 0
  loc_11E02B6:   var_154 = 0
  loc_11E02C9:   var_14C = 0
  loc_11E0309:   var_B8 = "RevMast"
  loc_11E0312:   Proc_154_5_10E33A4(MemVar_1F92044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_11E0340:   unk_493FE1.CommitTrans
  loc_11E0350:   Me.Requery -1
  loc_11E0360:   Me.Requery -1
  loc_11E0380:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11E038D:     Me.Bookmark = var_94
  loc_11E0395:   Else
  loc_11E03A9:     If (Me.EOF = 0) Then
  loc_11E03B2:       Me.MoveLast
  loc_11E03B7:     End If
  loc_11E03B7:   End If
  loc_11E03B7:   Call Proc_15_33_13786F0(var_14C, 0, var_154, var_158)
  loc_11E03D8:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_11E03E0: End If
  loc_11E03E0: Exit Sub
  loc_11E03E6: Set var_98 = Nothing
  loc_11E03E9: ' Referenced from: 11DFFE8
  loc_11E03EF: unk_493FE1.RollbackTrans
  loc_11E03FC: Set var_A0 = Err()
  loc_11E0402: Call 0.Method_arg_2C (var_B8, 0, var_160)
  loc_11E0423: MsgBox(CVar(var_B8), &H30, " Deletion Error ", var_11C, var_13C)
  loc_11E0436: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F638CC
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F637A8: On Error Goto loc_F63889
  loc_F637B9: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F637BC:   Exit Sub
  loc_F637BD: End If
  loc_F637D4: If (Me.RecordCount > 0) Then
  loc_F637EC:   var_8C = "EDIT"
  loc_F637FA:   Call Proc_15_31_E796CC(Proc_5_1_100CB50(var_8C, Me))
  loc_F63810:   Set var_90 = Me.Txt
  loc_F63816:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6381E:   var_98.SetFocus
  loc_F6382D: Else
  loc_F6384E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6385E: End If
  loc_F6386B: Me.LblUser.Caption = vbNullString
  loc_F63880: Me.LblLDt.Caption = vbNullString
  loc_F63888: Exit Sub
  loc_F63889: ' Referenced from: F637A8
  loc_F63891: Set var_90 = Err()
  loc_F63897: Call 0.Method_arg_2C (var_8C)
  loc_F638B8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F638CB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17644
  'Data Table: 493FCC
  loc_E17639: Me.Global.Unload Me
  loc_E17641: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28028
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F27F28: On Error Goto loc_F27FC0
  loc_F27F34: var_88 = Me.RecordCount
  loc_F27F42: If (var_88 <= 0) Then
  loc_F27F4B:   var_B8 = "Information"
  loc_F27F66:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27F76:   Exit Sub
  loc_F27F77: End If
  loc_F27F85: MemVar_1F920E4 = "Select RevMast.Code As SearchCode,RevMast.Name FROM RevMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and FieldType='T' Order by RevMast.Name"
  loc_F27F92: MemVar_1F92120 = Me
  loc_F27F99: var_10C = "3000"
  loc_F27F9F: Proc_6_126_F1BCC0(var_10C)
  loc_F27FBA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27FBF: Exit Sub
  loc_F27FC0: ' Referenced from: F27F28
  loc_F27FC8: Set var_110 = Err()
  loc_F27FCE: Call 0.Method_arg_1C (var_88)
  loc_F27FDF: If (var_88 <> 0) Then
  loc_F27FEA:   Set var_110 = Err()
  loc_F27FF0:   Call 0.Method_arg_2C (var_10C)
  loc_F28011:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28024: End If
  loc_F28024: Exit Sub
  loc_F28025: MemVar_1F920E4 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33918
  'Data Table: 493FCC
  loc_E33908: Proc_5_0_110649C(&HFF, Me)
  loc_E33910: Call Proc_15_33_13786F0(global_52)
  loc_E33915: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33798
  'Data Table: 493FCC
  loc_E33788: Proc_5_0_110649C(&HFF, Me)
  loc_E33790: Call Proc_15_33_13786F0(global_52)
  loc_E33795: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E337F8
  'Data Table: 493FCC
  loc_E337E8: Proc_5_0_110649C(&HFF, Me)
  loc_E337F0: Call Proc_15_33_13786F0(global_52)
  loc_E337F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E338B8
  'Data Table: 493FCC
  loc_E338A8: Proc_5_0_110649C(&HFF, Me)
  loc_E338B0: Call Proc_15_33_13786F0(global_52)
  loc_E338B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1085DF8
  'Data Table: 493FCC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_493FE1 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1085B60: On Error Goto loc_1085DAC
  loc_1085B77: var_A0 = "SELECT R.*,S.SubCode as LedgerCode,S.Name as LedgerName,SM.Name as SundryName FROM RevMast R Left Join SundryMast SM On R.Sundry=SM.Code Left join Subgroup S on S.SubCode=R.ACCode where (R.LOGSITE_CODE='" & MemVar_1F92078
  loc_1085B87: unk_493FE1.Execute var_A0 & "' or R.LOGSITE_CODE='HO') and FieldType='T'", var_C4, -1
  loc_1085B92: Set var_88 = var_C8
  loc_1085BA8: var_CC = var_88.RecordCount
  loc_1085BB6: If (var_CC = 0) Then
  loc_1085BD2:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1085BE2:   Exit Sub
  loc_1085BE3: End If
  loc_1085BF2: var_A4 = MemVar_1F920B4 & "\TaxMast.ttx"
  loc_1085BF9: Set var_C8 = var_88 
  loc_1085C05: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1085C0F: Set var_88 = var_C8
  loc_1085C15: var_B4 = CVar(var_12E) 'Integer
  loc_1085C18: var_98 = var_B4 'Variant
  loc_1085C34: var_A0 = MemVar_1F920B4 & "\TaxMast.RPT"
  loc_1085C3D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1085C48: MemVar_1F921E4 = var_C8
  loc_1085C63: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1085C6B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1085C77: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1085C90:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085C98:   Call 0.Method_arg_20 (var_138)
  loc_1085CA0:   Call 0.Method_arg_30 (var_A0)
  loc_1085CE6:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1085CFC:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085D04:     Call 0.Method_arg_20 (var_138)
  loc_1085D0C:     Call 0.Method_arg_38 ("'Tax Master'")
  loc_1085D18:   End If
  loc_1085D1B: Next var_132 'Integer
  loc_1085D39: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1085D41: Call 0.Method_arg_2C (var_DC)
  loc_1085D4F: Call 0.Method_arg_150 (var_FC)
  loc_1085D5A: Call 0.Method_arg_50 (var_A0)
  loc_1085D64: Set var_138 = Nothing
  loc_1085D7E: Set var_C8 = MemVar_1F921E4 
  loc_1085D8A: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1085D95: MemVar_1F921E4 = var_C8
  loc_1085DA8: Set var_88 = Nothing
  loc_1085DAB: Exit Sub
  loc_1085DAC: ' Referenced from: 1085B60
  loc_1085DB4: Set var_C8 = Err()
  loc_1085DBA: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1085DC5: Call 0.Method_arg_50 (var_A4)
  loc_1085DE1: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1085DF4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3ECC4
  'Data Table: 493FCC
  Dim Me As Variant
  loc_E3EC9B: Me.Requery -1
  loc_E3ECAB: Me.Requery -1
  loc_E3ECBB: Me.Requery -1
  loc_E3ECC0: Exit Sub
  loc_E3ECC1: MeFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '136F8FC
  'Data Table: 493FCC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_493FE1 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_13C As TextBox
  Dim var_158 As String
  Dim var_150 As TextBox
  Dim var_16C As String
  Dim var_184 As TextBox
  Dim var_118 As String
  Dim var_B0 As Variant
  Dim var_224 As TextBox
  Dim var_21C As Variant
  loc_136F12C: On Error Goto loc_136F8AA
  loc_136F133: var_86 = CByte(0) 'Byte
  loc_136F142: Set var_90 = Me.Txt
  loc_136F148: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_136F171: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_136F17B:   Call Txt_GotFocus()
  loc_136F180:   Exit Sub
  loc_136F181: End If
  loc_136F18C: Set var_90 = Me.Txt
  loc_136F192: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_136F1BB: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_136F1C5:   Call Txt_GotFocus()
  loc_136F1CA:   Exit Sub
  loc_136F1CB: End If
  loc_136F1D6: Set var_90 = Me.Txt
  loc_136F1DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, CInt(0))
  loc_136F205: If (Proc_183_19_E8DAFC(var_94, "Ledger A/C") = 0) Then
  loc_136F20F:   Call Txt_GotFocus()
  loc_136F214:   Exit Sub
  loc_136F215: End If
  loc_136F218: Call Proc_15_34_106D408(var_9E, CInt(1))
  loc_136F223: If (var_9E = &HFF) Then
  loc_136F226:   Exit Sub
  loc_136F227: End If
  loc_136F22B: Set var_90 = Me.TopCtrl1
  loc_136F231: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CInt(0))
  loc_136F24A: If (CStr(var_94) = "Add") Then
  loc_136F253:   var_D4 = 0
  loc_136F270:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From RevMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_136F277:   var_B4 = CStr(var_94) & "' AND SYSYN<>'Y'"
  loc_136F280:   unk_493FE1.Execute var_B4, var_B0, -1
  loc_136F288:   var_90 = var_90.Fields
  loc_136F290:   var_D4 = var_94.Item(var_94)
  loc_136F298:   var_98 = var_98.Value
  loc_136F2D1:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_136F2F7:   var_E4 = Format(CStr(var_E4), "0000")
  loc_136F2FF:   var_108 = (1 + var_E4)
  loc_136F30A:   global_72 = CStr(var_108)
  loc_136F31F: Else
  loc_136F33C:   var_94 = Me.Fields.Item("Code")
  loc_136F353:   global_72 = CStr(var_94.Value)
  loc_136F364: End If
  loc_136F36D: unk_493FE1.BeginTrans var_10C
  loc_136F376: var_86 = CByte(1) 'Byte
  loc_136F37E: Set var_90 = Me.TopCtrl1
  loc_136F384: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(1)
  loc_136F39D: If (CStr(var_F8) = "Add") Then
  loc_136F3B7:   var_9C = "Insert Into RevMast(Code,Name,ShortName,ACCode,PayableAc,UnregisteredAc,Site_Code,SysYN,[Type],RoundOff,FieldType,U_Name,U_EntDt,U_AE,Sundry,LogSite_Code) Values('" & global_72
  loc_136F3BE:   var_E8 = var_9C & "','"
  loc_136F3CF:   Set var_90 = Me.Txt
  loc_136F3D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_136F3DD:   var_21C = var_94.Text
  loc_136F3E6:   var_110 = -1 & var_B4
  loc_136F3ED:   var_11C = var_110 & "','"
  loc_136F3FE:   Set var_98 = Me.Txt
  loc_136F404:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_114, var_118)
  loc_136F40C:   var_11C = var_114.Text
  loc_136F41C:   var_130 = var_220 & var_118 & "','"
  loc_136F42D:   Set var_124 = Me.Txt
  loc_136F433:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_128, var_12C)
  loc_136F43B:   var_130 = var_128.Tag
  loc_136F45C:   Set var_138 = Me.Txt
  loc_136F462:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_13C)
  loc_136F48B:   Set var_14C = Me.Txt
  loc_136F491:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_150)
  loc_136F4BE:   var_16C = var_E4 & var_12C & "','" & var_13C.Tag & "','" & var_150.Tag & "','" & MemVar_1F92070 & "','N','Cr','No','T','" & MemVar_1F920C8
  loc_136F4C5:   var_F8 = CVar(var_16C & "',") 'String
  loc_136F4D6:   Proc_6_7_F25D88(var_E4, Date)
  loc_136F4F9:   Set var_180 = Me.Txt
  loc_136F4FF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_136F53C:   unk_493FE1.Execute CStr(var_F8 & var_E4 & ",'A','" & CVar(var_184.Tag) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_136F5A7: Else
  loc_136F5C5:   Set var_90 = Me.Txt
  loc_136F5CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE RevMast SET Type='Cr',Name='")
  loc_136F5D3:   var_238 = var_94.Text
  loc_136F5DC:   var_B4 = -1 & var_9C
  loc_136F5E3:   var_110 = var_B4 & "',ShortName='"
  loc_136F5F4:   Set var_98 = Me.Txt
  loc_136F5FA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_114, var_E8)
  loc_136F602:   var_110 = var_114.Text
  loc_136F631:   Set var_124 = Me.Txt
  loc_136F637:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_128)
  loc_136F660:   Set var_138 = Me.Txt
  loc_136F666:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_13C)
  loc_136F67E:   var_158 = var_23C & var_E8 & "',SITE_CODE='" & MemVar_1F92070 & "',ACCode='" & var_128.Tag & "',PayableAc='" & var_13C.Tag & "',UnregisteredAc='"
  loc_136F68F:   Set var_14C = Me.Txt
  loc_136F695:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_150)
  loc_136F6BB:   Set var_180 = Me.Txt
  loc_136F6C1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_184)
  loc_136F6EB:   var_108 = CVar(var_158 & var_150.Tag & "',roundoff='" & Proc_6_38_E68A98(CVar(var_184)) & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_136F6F1:   var_E4 = Date
  loc_136F6FC:   Proc_6_7_F25D88(var_F8, var_E4)
  loc_136F708:   var_C4 = " ,U_AE='E',Sundry='"
  loc_136F71F:   Set var_220 = Me.Txt
  loc_136F725:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_224)
  loc_136F765:   unk_493FE1.Execute CStr(var_108 & var_F8 & var_C4 & CVar(var_224.Tag) & "' WHERE Code='" & CVar(global_72) & "'"), , 
  loc_136F7D3: End If
  loc_136F7D9: unk_493FE1.CommitTrans
  loc_136F7E2: var_86 = CByte(0) 'Byte
  loc_136F7F1: Me.Requery -1
  loc_136F801: Me.Requery -1
  loc_136F811: Me.Requery -1
  loc_136F83E: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_136F84E: Set var_90 = Me.TopCtrl1
  loc_136F854: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C4)
  loc_136F86D: If (CStr() = "Add") Then
  loc_136F870:   Call TopCtrl1_UnknownEvent_A()
  loc_136F875:   Exit Sub
  loc_136F876: End If
  loc_136F88B: var_9C = "INI"
  loc_136F899: Call Proc_15_31_E796CC(Proc_5_1_100CB50(var_9C, Me))
  loc_136F8A4: Call Proc_15_33_13786F0(global_52)
  loc_136F8A9: Exit Sub
  loc_136F8AA: ' Referenced from: 136F12C
  loc_136F8B3: If (CInt(var_86) = 1) Then
  loc_136F8BC:   unk_493FE1.RollbackTrans
  loc_136F8C1: End If
  loc_136F8C9: Set var_90 = Err()
  loc_136F8CF: Call 0.Method_arg_2C (var_9C)
  loc_136F8E8: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_136F8FB: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'FAFF50
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  Dim arg_5444 As Double
  loc_FAFDD3: Me.DGLedgerAc.Visible = False
  loc_FAFDF2: If (Me.RecordCount > 0) Then
  loc_FAFE4E:   Set var_CC = Me.Txt
  loc_FAFE54:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(Val(CStr(Me.DGLedgerAc.Tag))), var_D0)
  loc_FAFE5C:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FAFE80:   Set var_B4 = Me.DGLedgerAc
  loc_FAFE96:   var_EC = Val(CStr(var_B4.Tag))
  loc_FAFED5:   Set var_CC = Me.Txt
  loc_FAFEDB:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_FAFEE3:   var_D0.Text = var_EC
  loc_FAFF03: End If
  loc_FAFF1D: var_EC = Val(CStr(Me.DGLedgerAc.Tag))
  loc_FAFF2B: Set var_B0 = Me.Txt
  loc_FAFF31: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(var_EC), var_B4)
  loc_FAFF39: var_B4.SetFocus
  loc_FAFF4D: Exit Sub
  loc_FAFF4E: arg_5444 = var_EC
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'EAB188
  'Data Table: 493FCC
  loc_EAB11E: Proc_6_153_E91194(Me.DGLedgerAc, arg_14)
  loc_EAB152: Set var_A8 = Me.FGPoint
  loc_EAB16E: Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, CInt(Val(CStr(Me.DGLedgerAc.Tag))))
  loc_EAB184: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '143BF20
  'Data Table: 493FCC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_143B42A: Set var_88 = Me.Txt
  loc_143B430: Call 0.Method_Txt_GotFocus0 (Index)
  loc_143B43E: Proc_6_74_E226B0(var_8C)
  loc_143B44A: Call Proc_15_36_EF69FC(var_8C)
  loc_143B44F: On Error Goto loc_143BED9
  loc_143B455: var_92 = Index
  loc_143B460: If (var_92 = CInt(0)) Then
  loc_143B47A:   If (Me.RecordCount > 0) Then
  loc_143B488:     Set var_8C = Me.FGPoint
  loc_143B4A0:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_143B4AE:   End If
  loc_143B4FC:   Set var_88 = Me.Txt
  loc_143B502:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143B50A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143B522:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_143B525:     Exit Sub
  loc_143B526:   End If
  loc_143B533:   Set var_88 = Me.Txt
  loc_143B539:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143B541:   var_A0 = var_8C.Text
  loc_143B553:   var_B0 = "Name"
  loc_143B56A:   var_B4 = Me.Fields.Item(var_B0)
  loc_143B58E:   If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_143B597:     Me.MoveFirst
  loc_143B5BA:     Set var_88 = Me.Txt
  loc_143B5C0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143B5C8:     0 = var_8C.Text
  loc_143B5E1:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_143B5F6:   End If
  loc_143B5F9: Else
  loc_143B601:   If (var_92 = CInt(1)) Then
  loc_143B617:     Me.DGLedgerAc.Tag = CVar(CStr(Index))
  loc_143B62F:     Set var_88 = Me.Txt
  loc_143B635:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143B654:     Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_143B66F:     Set var_90 = Me.Txt
  loc_143B675:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_143B68F:     Set var_88 = Me.Txt
  loc_143B695:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143B6AD:     var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_143B6BC:     Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_143B6E5:     If (Me.RecordCount > 0) Then
  loc_143B6F3:       Set var_8C = Me.FGPoint
  loc_143B70B:       Proc_6_137_1193554(Me.DGLedgerAc, global_60)
  loc_143B719:     End If
  loc_143B767:     Set var_88 = Me.Txt
  loc_143B76D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143B775:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143B78D:     If (Index Or (var_A0 = vbNullString)) Then
  loc_143B790:       Exit Sub
  loc_143B791:     End If
  loc_143B79E:     Set var_88 = Me.Txt
  loc_143B7A4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143B7AC:     var_A0 = var_8C.Text
  loc_143B7BE:     var_B0 = "Name"
  loc_143B7D5:     var_B4 = Me.Fields.Item(var_B0)
  loc_143B7F9:     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_143B802:       Me.MoveFirst
  loc_143B825:       Set var_88 = Me.Txt
  loc_143B82B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143B833:       0 = var_8C.Text
  loc_143B84C:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143B861:     End If
  loc_143B864:   Else
  loc_143B86C:     If (var_92 = CInt(5)) Then
  loc_143B882:       Me.DGLedgerAc.Tag = CVar(CStr(Index))
  loc_143B89A:       Set var_88 = Me.Txt
  loc_143B8A0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143B8BF:       Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_143B8DA:       Set var_90 = Me.Txt
  loc_143B8E0:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_143B8FA:       Set var_88 = Me.Txt
  loc_143B900:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143B918:       var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_143B927:       Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_143B950:       If (Me.RecordCount > 0) Then
  loc_143B95E:         Set var_8C = Me.FGPoint
  loc_143B976:         Proc_6_137_1193554(Me.DGLedgerAc, global_60)
  loc_143B984:       End If
  loc_143B9D2:       Set var_88 = Me.Txt
  loc_143B9D8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143B9E0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143B9F8:       If (Index Or (var_A0 = vbNullString)) Then
  loc_143B9FB:         Exit Sub
  loc_143B9FC:       End If
  loc_143BA09:       Set var_88 = Me.Txt
  loc_143BA0F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143BA17:       var_A0 = var_8C.Text
  loc_143BA29:       var_B0 = "Name"
  loc_143BA40:       var_B4 = Me.Fields.Item(var_B0)
  loc_143BA64:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_143BA6D:         Me.MoveFirst
  loc_143BA90:         Set var_88 = Me.Txt
  loc_143BA96:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143BA9E:         0 = var_8C.Text
  loc_143BAB7:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143BACC:       End If
  loc_143BACF:     Else
  loc_143BAD7:       If (var_92 = CInt(6)) Then
  loc_143BAED:         Me.DGLedgerAc.Tag = CVar(CStr(Index))
  loc_143BB05:         Set var_88 = Me.Txt
  loc_143BB0B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143BB2A:         Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_143BB45:         Set var_90 = Me.Txt
  loc_143BB4B:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_143BB65:         Set var_88 = Me.Txt
  loc_143BB6B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143BB83:         var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_143BB92:         Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_143BBBB:         If (Me.RecordCount > 0) Then
  loc_143BBC9:           Set var_8C = Me.FGPoint
  loc_143BBE1:           Proc_6_137_1193554(Me.DGLedgerAc, global_60)
  loc_143BBEF:         End If
  loc_143BC3D:         Set var_88 = Me.Txt
  loc_143BC43:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143BC4B:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143BC63:         If (Index Or (var_A0 = vbNullString)) Then
  loc_143BC66:           Exit Sub
  loc_143BC67:         End If
  loc_143BC74:         Set var_88 = Me.Txt
  loc_143BC7A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143BC82:         var_A0 = var_8C.Text
  loc_143BC94:         var_B0 = "Name"
  loc_143BCCF:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_143BCD8:           Me.MoveFirst
  loc_143BCFB:           Set var_88 = Me.Txt
  loc_143BD01:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143BD09:           0 = var_8C.Text
  loc_143BD22:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143BD37:         End If
  loc_143BD3A:       Else
  loc_143BD42:         If (var_92 = CInt(4)) Then
  loc_143BD5C:           If (Me.RecordCount > 0) Then
  loc_143BD6A:             Set var_8C = Me.FGPoint
  loc_143BD82:             Proc_6_137_1193554(Me.DGSundry, global_68)
  loc_143BD90:           End If
  loc_143BDDE:           Set var_88 = Me.Txt
  loc_143BDE4:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143BDEC:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143BE04:           If (Index Or (var_A0 = vbNullString)) Then
  loc_143BE07:             Exit Sub
  loc_143BE08:           End If
  loc_143BE15:           Set var_88 = Me.Txt
  loc_143BE1B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143BE23:           var_A0 = var_8C.Text
  loc_143BE35:           var_B0 = "Name"
  loc_143BE70:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_143BE79:             Me.MoveFirst
  loc_143BE9C:             Set var_88 = Me.Txt
  loc_143BEA2:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143BEAA:             0 = var_8C.Text
  loc_143BEC3:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143BED8:           End If
  loc_143BED8:         End If
  loc_143BED8:       End If
  loc_143BED8:     End If
  loc_143BED8:   End If
  loc_143BED8: End If
  loc_143BED8: Exit Sub
  loc_143BED9: ' Referenced from: 143B44F
  loc_143BEE1: Set var_88 = Err()
  loc_143BEE7: Call 0.Method_arg_2C (var_A0)
  loc_143BF08: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_143BF1B: Exit Sub
  loc_143BF1C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12BC220
  'Data Table: 493FCC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As Variant
  Dim var_9C As DataGrid
  Dim var_E0 As Variant
  loc_12BBBDE: If (CLng(Shift) = &H1B) Then
  loc_12BBBE1:   Call Proc_15_36_EF69FC()
  loc_12BBBE6:   Exit Sub
  loc_12BBBE7: End If
  loc_12BBBEA: var_86 = KeyCode
  loc_12BBBF5: If (var_86 = CInt(0)) Then
  loc_12BBC10:   Set var_9C = Nothing
  loc_12BBC42:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_12BBCAD:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BBCD3:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_12BBCE1:   End If
  loc_12BBCE4: Else
  loc_12BBCEC:   If (var_86 = CInt(4)) Then
  loc_12BBD12:     Set var_9C = Nothing
  loc_12BBD44:     Proc_6_69_134A198(Me.DGSundry, Me.Txt, CInt(4), global_68, Shift, 0, 1)
  loc_12BBDB1:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BBDB8:       Set var_9C = Me.DGSundry
  loc_12BBDD7:       Proc_6_138_106D6F8(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Nothing)
  loc_12BBDE5:     End If
  loc_12BBDE8:   Else
  loc_12BBDF0:     If (var_86 = CInt(1)) Then
  loc_12BBE44:       Proc_6_69_134A198(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12BBEB1:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BBED7:         Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, Nothing, 0)
  loc_12BBEE5:       End If
  loc_12BBEE8:     Else
  loc_12BBEF0:       If (var_86 = CInt(5)) Then
  loc_12BBF44:         Proc_6_69_134A198(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12BBFB1:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BBFD7:           Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, Nothing, 0)
  loc_12BBFE5:         End If
  loc_12BBFE8:       Else
  loc_12BBFF0:         If (var_86 = CInt(6)) Then
  loc_12BC044:           Proc_6_69_134A198(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12BC0B1:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BC0D7:             Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, Nothing, 0)
  loc_12BC0E5:           End If
  loc_12BC0E5:         End If
  loc_12BC0E5:       End If
  loc_12BC0E5:     End If
  loc_12BC0E5:   End If
  loc_12BC0E5: End If
  loc_12BC0FF: Set var_90 = Me.DGLedgerAc
  loc_12BC116: Set var_9C = Me.DGSundry
  loc_12BC11C: var_E0 = var_9C.Visible
  loc_12BC13B: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_E0) = 0)) Then
  loc_12BC15C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_12BC162:     Call Proc_15_34_106D408(var_92, 0, 1)
  loc_12BC16D:     If (var_92 = &HFF) Then
  loc_12BC17D:       Set var_8C = Me.Txt
  loc_12BC183:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_12BC18B:       var_90.Text = var_9C
  loc_12BC197:       Exit Sub
  loc_12BC198:     End If
  loc_12BC1CF:     If (MsgBox("Save Record ?", 4, "Save Data", var_E0, var_130) = 6) Then
  loc_12BC1D2:       Call TopCtrl1_UnknownEvent_16()
  loc_12BC1D7:     End If
  loc_12BC1D7:     Exit Sub
  loc_12BC1D8:   End If
  loc_12BC1ED:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12BC1F6:     Proc_6_75_E527CC(Shift, arg_14)
  loc_12BC1FB:   End If
  loc_12BC20E:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12BC217:     Proc_6_76_E52838(Shift, arg_14)
  loc_12BC21C:   End If
  loc_12BC21C: End If
  loc_12BC21C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1058DE8
  'Data Table: 493FCC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_1058B76: Proc_6_133_E7EF78(var_94)
  loc_1058B7F: arg_10 = CInt(var_94)
  loc_1058B88: Proc_6_58_E054C0(arg_10, arg_10)
  loc_1058B90: var_96 = KeyAscii
  loc_1058B9B: If (var_96 = CInt(1)) Then
  loc_1058BBA:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_1058BCC:     var_A0 = "Name"
  loc_1058BE7:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_1058BF6:   End If
  loc_1058BF9: Else
  loc_1058C01:   If (var_96 = CInt(5)) Then
  loc_1058C20:     If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_1058C4D:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_1058C5C:     End If
  loc_1058C5F:   Else
  loc_1058C67:     If (var_96 = CInt(6)) Then
  loc_1058C86:       If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_1058CB3:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name", 0)
  loc_1058CC2:       End If
  loc_1058CC5:     Else
  loc_1058CCD:       If (var_96 = CInt(4)) Then
  loc_1058CEC:         If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_1058CF3:           Set var_A8 = Me.Txt
  loc_1058CFE:           var_A0 = "Name"
  loc_1058D19:           Proc_6_89_146F1AC(var_A8, KeyAscii, global_68, arg_10, var_A0, 0)
  loc_1058D28:         End If
  loc_1058D2B:       Else
  loc_1058D33:         If (var_96 = CInt(3)) Then
  loc_1058D5F:           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1058D6F:             Set var_9C = Me.Txt
  loc_1058D75:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_1058D7D:             var_A8.Text = var_A0
  loc_1058D8C:           Else
  loc_1058DB5:             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1058DC5:               Set var_9C = Me.Txt
  loc_1058DCB:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1058DD3:               var_A8.Text = 0
  loc_1058DDF:             End If
  loc_1058DDF:           End If
  loc_1058DE1:           arg_10 = 0
  loc_1058DE4:         End If
  loc_1058DE4:       End If
  loc_1058DE4:     End If
  loc_1058DE4:   End If
  loc_1058DE4: End If
  loc_1058DE4: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10F4C88
  'Data Table: 493FCC
  Dim var_86 As Integer
  loc_10F495B: var_86 = KeyCode
  loc_10F4966: If (var_86 = CInt(0)) Then
  loc_10F4985:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_10F4992:     var_A0 = "Name"
  loc_10F49AD:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_10F49DF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_10F49ED:   End If
  loc_10F49F0: Else
  loc_10F49F8:   If (var_86 = CInt(4)) Then
  loc_10F4A17:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_10F4A2B:       var_A0 = "Name"
  loc_10F4A4F:       Proc_6_68_129FB34(Me.DGSundry, Me.Txt, KeyCode, global_68, Shift)
  loc_10F4A85:       Proc_6_138_106D6F8(Me.DGSundry, global_68, KeyCode, Me.FGPoint)
  loc_10F4A93:     End If
  loc_10F4A96:   Else
  loc_10F4A9E:     If (var_86 = CInt(1)) Then
  loc_10F4ABD:       If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_10F4AF5:         Proc_6_68_129FB34(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift)
  loc_10F4B2B:         Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, "Name")
  loc_10F4B39:       End If
  loc_10F4B3C:     Else
  loc_10F4B44:       If (var_86 = CInt(5)) Then
  loc_10F4B63:         If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_10F4B9B:           Proc_6_68_129FB34(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift)
  loc_10F4BD1:           Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, "Name")
  loc_10F4BDF:         End If
  loc_10F4BE2:       Else
  loc_10F4BEA:         If (var_86 = CInt(6)) Then
  loc_10F4C09:           If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_10F4C41:             Proc_6_68_129FB34(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift)
  loc_10F4C77:             Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, "Name")
  loc_10F4C85:           End If
  loc_10F4C85:         End If
  loc_10F4C85:       End If
  loc_10F4C85:     End If
  loc_10F4C85:   End If
  loc_10F4C85: End If
  loc_10F4C85: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DB84
  'Data Table: 493FCC
  loc_E4DB62: Set var_88 = Me.Txt
  loc_E4DB68: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DB76: Proc_6_73_E22704(var_8C)
  loc_E4DB82: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12BC8D8
  'Data Table: 493FCC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C4 As TextBox
  loc_12BC27B: var_86 = Cancel
  loc_12BC286: If (var_86 = CInt(0)) Then
  loc_12BC28C:   Call Proc_15_34_106D408(var_88)
  loc_12BC297:   If (var_88 = &HFF) Then
  loc_12BC29C:     arg_10 = &HFF
  loc_12BC29F:     Exit Sub
  loc_12BC2A0:   End If
  loc_12BC2A4:   Set var_8C = Me.TopCtrl1
  loc_12BC2AA:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_12BC2B2:   var_A0 = CStr(var_86)
  loc_12BC2C3:   If (var_A0 = "Add") Then
  loc_12BC2D3:     Me.LblSysYN.Caption = "User Defined"
  loc_12BC2DB:   End If
  loc_12BC2DE: Else
  loc_12BC2E6:   If (var_86 = CInt(2)) Then
  loc_12BC2EC:     Call Proc_15_35_106CE60(var_88)
  loc_12BC2F7:     If (var_88 = &HFF) Then
  loc_12BC2FC:       arg_10 = &HFF
  loc_12BC2FF:       Exit Sub
  loc_12BC300:     End If
  loc_12BC303:   Else
  loc_12BC30B:     If (var_86 = CInt(1)) Then
  loc_12BC35C:       Set var_8C = Me.Txt
  loc_12BC362:       Call 0.Method_Txt_Validate0 (Cancel, var_AC, var_A0)
  loc_12BC36A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_12BC382:       If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_12BC385:         Exit Sub
  loc_12BC386:       End If
  loc_12BC3C1:       Set var_C0 = Me.Txt
  loc_12BC3C7:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC3CF:       var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BC402:       var_AC = Me.Fields.Item("Code")
  loc_12BC420:       Set var_C0 = Me.Txt
  loc_12BC426:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC42E:       var_C4.Tag = CStr(var_AC.Value)
  loc_12BC447:     Else
  loc_12BC44F:       If (var_86 = CInt(5)) Then
  loc_12BC4A0:         Set var_8C = Me.Txt
  loc_12BC4A6:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC4C6:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12BC4D6:           Set var_8C = Me.Txt
  loc_12BC4DC:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC4E4:           var_AC.Text = vbNullString
  loc_12BC4FD:           Set var_8C = Me.Txt
  loc_12BC503:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC50B:           var_AC.Tag = vbNullString
  loc_12BC51A:         Else
  loc_12BC555:           Set var_C0 = Me.Txt
  loc_12BC55B:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC563:           var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BC596:           var_AC = Me.Fields.Item("Code")
  loc_12BC5B4:           Set var_C0 = Me.Txt
  loc_12BC5BA:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC5C2:           var_C4.Tag = CStr(var_AC.Value)
  loc_12BC5D8:         End If
  loc_12BC5DB:       Else
  loc_12BC5E3:         If (var_86 = CInt(6)) Then
  loc_12BC634:           Set var_8C = Me.Txt
  loc_12BC63A:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC65A:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12BC66A:             Set var_8C = Me.Txt
  loc_12BC670:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC678:             var_AC.Text = vbNullString
  loc_12BC691:             Set var_8C = Me.Txt
  loc_12BC697:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC69F:             var_AC.Tag = vbNullString
  loc_12BC6AE:           Else
  loc_12BC6E9:             Set var_C0 = Me.Txt
  loc_12BC6EF:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC6F7:             var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BC72A:             var_AC = Me.Fields.Item("Code")
  loc_12BC748:             Set var_C0 = Me.Txt
  loc_12BC74E:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC756:             var_C4.Tag = CStr(var_AC.Value)
  loc_12BC76C:           End If
  loc_12BC76F:         Else
  loc_12BC777:           If (var_86 = CInt(4)) Then
  loc_12BC7C8:             Set var_8C = Me.Txt
  loc_12BC7CE:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC7EE:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12BC7FE:               Set var_8C = Me.Txt
  loc_12BC804:               Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BC80C:               var_AC.Tag = vbNullString
  loc_12BC818:               Exit Sub
  loc_12BC819:             End If
  loc_12BC854:             Set var_C0 = Me.Txt
  loc_12BC85A:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC862:             var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BC8B3:             Set var_C0 = Me.Txt
  loc_12BC8B9:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BC8C1:             var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12BC8D7:           End If
  loc_12BC8D7:         End If
  loc_12BC8D7:       End If
  loc_12BC8D7:     End If
  loc_12BC8D7:   End If
  loc_12BC8D7: End If
  loc_12BC8D7: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 'F43DE4
  'Data Table: 493FCC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F43CDB: Me.DGSundry.Visible = False
  loc_F43CFA: If (Me.RecordCount > 0) Then
  loc_F43D39:   Set var_B4 = Me.Txt
  loc_F43D3F:   Call 0.Method_DGSundry_UnknownEvent_90 (CInt(4), var_B8)
  loc_F43D47:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F43D7A:   var_B0 = Me.Fields.Item("Code")
  loc_F43D99:   Set var_B4 = Me.Txt
  loc_F43D9F:   Call 0.Method_DGSundry_UnknownEvent_90 (CInt(4), var_B8)
  loc_F43DA7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F43DBD: End If
  loc_F43DC8: Set var_A8 = Me.Txt
  loc_F43DCE: Call 0.Method_DGSundry_UnknownEvent_90 (CInt(4))
  loc_F43DD6: var_B0.SetFocus
  loc_F43DE2: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_1F 'E6F4E4
  'Data Table: 493FCC
  loc_E6F4A2: Proc_6_153_E91194(Me.DGSundry, arg_14)
  loc_E6F4B9: Set var_8C = Me.FGPoint
  loc_E6F4D5: Proc_6_138_106D6F8(Me.DGSundry, global_68, CInt(4))
  loc_E6F4E3: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBE4C4
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBE43A: On Error Goto loc_EBE47F
  loc_EBE443: Me.MoveFirst
  loc_EBE45D: var_8C = "code='" & MyValue
  loc_EBE46D: Me.Find var_8C & "'", 0, 1
  loc_EBE479: Call Proc_15_33_13786F0(var_A0)
  loc_EBE47E: Exit Sub
  loc_EBE47F: ' Referenced from: EBE43A
  loc_EBE487: Set var_A4 = Err()
  loc_EBE48D: Call 0.Method_arg_2C (var_8C)
  loc_EBE4AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBE4C1: Exit Sub
  loc_EBE4C2: Exit Sub
End Sub

Public Sub Proc_15_31_E796CC(arg_C) 'E796CC
  'Data Table: 493FCC
  Dim var_98 As TextBox
  loc_E7967A: Set var_8C = Me.Txt
  loc_E79680: Call 0.Method_Proc_15_31_E796CCC (var_8E, var_86)
  loc_E79690: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E796A6:   Set var_8C = Me.Txt
  loc_E796AC:   Call 0.Method_Proc_15_31_E796CC0 (CInt(var_86), var_98)
  loc_E796B4:   var_98.Enabled = arg_C
  loc_E796C3: Next var_92 'Byte
  loc_E796C9: Exit Sub
End Sub

Public Sub Proc_15_32_E78334
  'Data Table: 493FCC
  Dim var_98 As TextBox
  loc_E782E2: Set var_8C = Me.Txt
  loc_E782E8: Call 0.Method_Proc_15_32_E78334C (var_8E, var_86)
  loc_E782F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7830E:   Set var_8C = Me.Txt
  loc_E78314:   Call 0.Method_Proc_15_32_E783340 (CInt(var_86), var_98)
  loc_E7831C:   var_98.Text = vbNullString
  loc_E7832B: Next var_92 'Byte
  loc_E78331: Exit Sub
End Sub

Public Sub Proc_15_33_13786F0
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_493FE1 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_11C As TextBox
  loc_1377E9C: On Error Goto loc_13786AB
  loc_1377EF5: unk_493FE1.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1377F00: Set var_88 = var_118
  loc_1377F54: var_118 = var_88.Fields
  loc_1377FBD: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1378002: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_137807C: var_11C = var_88.Fields.Item("U_AE")
  loc_13780DD: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1378122: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1378160: Proc_183_45_E5C118(global_52)
  loc_137817C: If (Me.RecordCount <= 0) Then
  loc_137817F:   Call Proc_15_32_E78334()
  loc_1378187: Else
  loc_13781BB:   global_72 = CStr(Me.Fields.Item("Code").Value)
  loc_1378208:   Set var_118 = Me.Txt
  loc_137820E:   Call 0.Method_Proc_15_33_13786F00 (CInt(0), var_11C)
  loc_1378216:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1378268:   Set var_118 = Me.Txt
  loc_137826E:   Call 0.Method_Proc_15_33_13786F00 (CInt(2), var_11C)
  loc_1378276:   var_11C.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_13782C8:   Set var_118 = Me.Txt
  loc_13782CE:   Call 0.Method_Proc_15_33_13786F00 (CInt(0), var_11C)
  loc_13782D6:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1378325:   Set var_118 = Me.Txt
  loc_137832B:   Call 0.Method_Proc_15_33_13786F00 (CInt(1), var_11C)
  loc_1378333:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerName")))
  loc_1378380:   Set var_118 = Me.Txt
  loc_1378386:   Call 0.Method_Proc_15_33_13786F00 (CInt(1), var_11C)
  loc_137838E:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerCode")))
  loc_13783DB:   Set var_118 = Me.Txt
  loc_13783E1:   Call 0.Method_Proc_15_33_13786F00 (CInt(5), var_11C)
  loc_13783E9:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PayableAcName")))
  loc_1378436:   Set var_118 = Me.Txt
  loc_137843C:   Call 0.Method_Proc_15_33_13786F00 (CInt(5), var_11C)
  loc_1378444:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("PayableAcCode")))
  loc_1378491:   Set var_118 = Me.Txt
  loc_1378497:   Call 0.Method_Proc_15_33_13786F00 (CInt(6), var_11C)
  loc_137849F:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("UnregisteredAcName")))
  loc_13784EC:   Set var_118 = Me.Txt
  loc_13784F2:   Call 0.Method_Proc_15_33_13786F00 (CInt(6), var_11C)
  loc_13784FA:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("UnregisteredAcCode")))
  loc_1378547:   Set var_118 = Me.Txt
  loc_137854D:   Call 0.Method_Proc_15_33_13786F00 (CInt(3), var_11C)
  loc_1378555:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")))
  loc_13785A2:   Set var_118 = Me.Txt
  loc_13785A8:   Call 0.Method_Proc_15_33_13786F00 (CInt(4), var_11C)
  loc_13785B0:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SundryName")))
  loc_13785FD:   Set var_118 = Me.Txt
  loc_1378603:   Call 0.Method_Proc_15_33_13786F00 (CInt(4), var_11C)
  loc_137860B:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("SundryCode")))
  loc_1378659:   var_114 = "System Defined"
  loc_137866C:   var_F0 = (Me.Fields.Item("SysYN").Value = "Y") 'Variant
  loc_137867E:   var_F4 = CStr(IIf(var_F0, var_114, "User Defined"))
  loc_137868C:   Me.LblSysYN.Caption = var_F4
  loc_13786AA: End If
  loc_13786AA: Exit Sub
  loc_13786AB: ' Referenced from: 1377E9C
  loc_13786B3: Set var_8C = Err()
  loc_13786B9: Call 0.Method_arg_2C (var_F4)
  loc_13786DA: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_13786ED: Exit Sub
End Sub

Public Sub Proc_15_34_106D408
  'Data Table: 493FCC
  Dim var_A4 As TextBox
  Dim unk_493FE1 As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  loc_106D1A8: Set var_8C = Me.TopCtrl1
  loc_106D1AE: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_106D1C7: If (CStr() = "Add") Then
  loc_106D205:   Set var_8C = Me.Txt
  loc_106D20B:   Call 0.Method_Proc_15_34_106D4080 (CInt(0), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_9C, -1)
  loc_106D22C:   unk_493FE1.Execute var_CC & var_A8 & "'", 0, var_E0
  loc_106D23C:    = var_CC.Item()
  loc_106D244:    = var_E0.Value
  loc_106D275:   If (var_A4.Text.Fields > 0) Then
  loc_106D293:     var_9C = "Duplicate Name"
  loc_106D299:     MsgBox(var_9C, &H40, "Information", var_110, var_130)
  loc_106D2B4:     Set var_8C = Me.Txt
  loc_106D2BA:     Call 0.Method_Proc_15_34_106D4080 (CInt(0))
  loc_106D2C2:     var_A4.SetFocus
  loc_106D2D3:     Proc_15_34_106D408 = &HFF
  loc_106D2D9:   End If
  loc_106D2DC: Else
  loc_106D317:   Set var_8C = Me.Txt
  loc_106D31D:   Call 0.Method_Proc_15_34_106D4080 (CInt(0), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_9C, -1)
  loc_106D34F:   unk_493FE1.Execute var_CC & var_A8 & "' And Code<>'" & global_72 & "'", 0, var_E0
  loc_106D35F:    = var_CC.Item(var_A4)
  loc_106D367:    = var_E0.Value
  loc_106D39C:   If (var_A4.Text.Fields > 0) Then
  loc_106D3C0:     MsgBox("Duplicate Name", &H40, "Information", var_110, var_130)
  loc_106D3DB:     Set var_8C = Me.Txt
  loc_106D3E1:     Call 0.Method_Proc_15_34_106D4080 (CInt(0))
  loc_106D3E9:     var_A4.SetFocus
  loc_106D3FA:     Proc_15_34_106D408 = &HFF
  loc_106D400:   End If
  loc_106D400: End If
  loc_106D400: Proc_15_34_106D408 = var_A4
End Sub

Public Sub Proc_15_35_106CE60
  'Data Table: 493FCC
  Dim var_A4 As TextBox
  Dim unk_493FE1 As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  Dim arg_54FF As Double
  loc_106CC00: Set var_8C = Me.TopCtrl1
  loc_106CC06: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_106CC1F: If (CStr() = "Add") Then
  loc_106CC5D:   Set var_8C = Me.Txt
  loc_106CC63:   Call 0.Method_Proc_15_35_106CE600 (CInt(2), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106CC84:   unk_493FE1.Execute var_CC & var_A8 & "'", 0, var_E0
  loc_106CC94:    = var_CC.Item()
  loc_106CC9C:    = var_E0.Value
  loc_106CCCD:   If (var_A4.Text.Fields > 0) Then
  loc_106CCEB:     var_9C = "Duplicate Short Name"
  loc_106CCF1:     MsgBox(var_9C, &H40, "Information", var_110, var_130)
  loc_106CD0C:     Set var_8C = Me.Txt
  loc_106CD12:     Call 0.Method_Proc_15_35_106CE600 (CInt(2))
  loc_106CD1A:     var_A4.SetFocus
  loc_106CD2B:     Proc_15_35_106CE60 = &HFF
  loc_106CD31:   End If
  loc_106CD34: Else
  loc_106CD6F:   Set var_8C = Me.Txt
  loc_106CD75:   Call 0.Method_Proc_15_35_106CE600 (CInt(2), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106CDA7:   unk_493FE1.Execute var_CC & var_A8 & "' And Code<>'" & global_72 & "'", 0, var_E0
  loc_106CDB7:    = var_CC.Item(var_A4)
  loc_106CDBF:    = var_E0.Value
  loc_106CDF4:   If (var_A4.Text.Fields > 0) Then
  loc_106CE18:     MsgBox("Duplicate Short Name", &H40, "Information", var_110, var_130)
  loc_106CE33:     Set var_8C = Me.Txt
  loc_106CE39:     Call 0.Method_Proc_15_35_106CE600 (CInt(2))
  loc_106CE41:     var_A4.SetFocus
  loc_106CE52:     Proc_15_35_106CE60 = &HFF
  loc_106CE58:   End If
  loc_106CE58: End If
  loc_106CE58: Proc_15_35_106CE60 = var_A4
  loc_106CE5E: arg_54FF = 
End Sub

Public Sub Proc_15_36_EF69FC
  'Data Table: 493FCC
  loc_EF693C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF694E:   Me.DGHelp.Visible = False
  loc_EF6956: End If
  loc_EF6972: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_EF6984:   Me.DGLedgerAc.Visible = False
  loc_EF698C: End If
  loc_EF69A8: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EF69BA:   Me.DGSundry.Visible = False
  loc_EF69C2: End If
  loc_EF69DE: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF69F0:   Me.FGPoint.Visible = False
  loc_EF69F8: End If
  loc_EF69F8: Exit Sub
End Sub

Public Sub Proc_15_37_F170C0(arg_C) 'F170C0
  'Data Table: 493FCC
  Dim var_8C As TextBox
  loc_F16FD8: Call Proc_15_36_EF69FC()
  loc_F16FE8: Set var_88 = Me.Txt
  loc_F16FEE: Call 0.Method_Proc_15_37_F170C00 (CInt(0))
  loc_F17017: If (Proc_6_27_EA565C(var_8C, "Tax Name") = 0) Then
  loc_F1701A:   Exit Sub
  loc_F1701B: End If
  loc_F17026: Set var_88 = Me.Txt
  loc_F1702C: Call 0.Method_Proc_15_37_F170C00 (CInt(1), var_8C)
  loc_F17055: If (Proc_6_27_EA565C(var_8C, "Ledger A/C") = 0) Then
  loc_F17058:   Exit Sub
  loc_F17059: End If
  loc_F17090: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F17093:   Call TopCtrl1_UnknownEvent_16()
  loc_F1709B: Else
  loc_F170A5:   Set var_88 = Me.Txt
  loc_F170AB:   Call 0.Method_Proc_15_37_F170C00 (arg_C, var_8C)
  loc_F170B3:   var_8C.SetFocus
  loc_F170BF: End If
  loc_F170BF: Exit Sub
End Sub

Public Sub Proc_15_38_F8B67C
  'Data Table: 493FCC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8B52A: Set var_88 = Me.Txt
  loc_F8B530: Call 0.Method_Proc_15_38_F8B67C0 (CInt(0), var_8C)
  loc_F8B54F: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_F8B56B: Set var_B4 = Me.Txt
  loc_F8B571: Call 0.Method_Proc_15_38_F8B67C0 (CInt(0), var_B8)
  loc_F8B58C: Set var_88 = Me.Txt
  loc_F8B592: Call 0.Method_Proc_15_38_F8B67C0 (CInt(0), var_8C)
  loc_F8B5AA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8B5B9: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_F8B5D9: Set var_88 = Me.Txt
  loc_F8B5DF: Call 0.Method_Proc_15_38_F8B67C0 (CInt(4), var_8C)
  loc_F8B5FE: Me.DGSundry.Left = CVar(var_8C.Left)
  loc_F8B61A: Set var_B4 = Me.Txt
  loc_F8B620: Call 0.Method_Proc_15_38_F8B67C0 (CInt(4), var_B8)
  loc_F8B63B: Set var_88 = Me.Txt
  loc_F8B641: Call 0.Method_Proc_15_38_F8B67C0 (CInt(4), var_8C)
  loc_F8B659: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8B668: Me.DGSundry.Top = CVar(var_8C.Left)
  loc_F8B67A: Exit Sub
End Sub
