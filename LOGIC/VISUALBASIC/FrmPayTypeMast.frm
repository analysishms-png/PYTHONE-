VERSION 5.00
Begin VB.Form FrmPayTypeMast
  Caption = "Payment Type Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11880
  ClientHeight = 8595
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 17445
    Top = 4140
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 165
      Top = 60
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 19710
    Top = 4080
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 32
  End
  Begin DataGrid DGHelp
    Left = 17790
    Top = 2400
    Width = 4230
    Height = 2655
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
End
Begin DataGrid DGLedgerAc
  Left = 17895
  Top = 1860
  Width = 4230
  Height = 2760
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 5
End
Begin DataGrid DGTaxMast
  Left = 17805
  Top = 1230
  Width = 4230
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 23
End
Begin Frame FrDepart
  Left = 90
  Top = 2790
  Width = 5235
  Height = 630
  TabIndex = 37
  BorderStyle = 0 'None
  Begin BtnEnh ChkOutLet
    Index = 0
    Left = 60
    Top = 60
    Width = 2595
    Height = 480
    TabIndex = 38
  End
  Begin BtnEnh ChkBanq
    Left = 2655
    Top = 60
    Width = 2595
    Height = 480
    Visible = 0   'False
    TabIndex = 39
  End
End
Begin MainCtrl TopCtrl1
  Left = 0
  Top = 0
  Width = 11880
  Height = 450
  TabIndex = 36
End
End

Attribute VB_Name = "FrmPayTypeMast"

Private global_104 As Integer

Private Sub FGrid_UnknownEvent_0 'E5E5B4
  'Data Table: 50F330
  Dim var_AC As TextBox
  loc_E5E579: Set var_A8 = (CVar(CLng("14737632")))
  loc_E5E592: Set var_A8 = var_AC(0)
  loc_E5E598: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E5E5A0: var_AC.Visible = DGRest.DispID_10
  loc_E5E5AC: Call Proc_17_56_F6B3D8()
  loc_E5E5B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E550
  'Data Table: 50F330
  loc_E1E541: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1E54F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E002F4
  'Data Table: 50F330
  loc_E002EC: Call Proc_17_58_E40748()
  loc_E002F1: Exit Sub
  loc_E002F2: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_A '1062E78
  'Data Table: 50F330
  Dim var_9C As String
  Dim KeyCode As Integer
  Dim var_B0 As Variant
  Dim var_EC As Long
  loc_1062BFC: Set var_88 = Me.TopCtrl1
  loc_1062C02: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1062C1B: If (CStr() = "Browse") Then
  loc_1062C1E:   Exit Sub
  loc_1062C1F: End If
  loc_1062C23: Set var_A0 = ()
  loc_1062C29: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_1062C36: Set var_B4 = ()
  loc_1062C3C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_1062C53: Set var_88 = ((CLng(KeyCode) = &H26))
  loc_1062C59: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B()
  loc_1062C93: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_1062CA3:   Set var_88 = (CVar(CLng("16777215")))
  loc_1062CA9:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_26()
  loc_1062CB9:   var_9C = "+{Tab}"
  loc_1062CBF:   Proc_303_0_FB9B68(CStr())
  loc_1062CC9:   KeyCode = 0
  loc_1062CCF: Else
  loc_1062CD3:   Set var_A0 = 0(KeyCode)
  loc_1062CD9:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_1062CF0:   Set var_88 = ((CLng(KeyCode) = &H28))
  loc_1062CF6:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B()
  loc_1062D26:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1062D36:     Set var_88 = (CVar(CLng("16777215")))
  loc_1062D3C:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_26()
  loc_1062D46:     KeyCode = 0
  loc_1062D49:   End If
  loc_1062D49: End If
  loc_1062D4D: Set var_88 = (KeyCode)
  loc_1062D53: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_1062D66: Set var_A0 = (CVar(CStr(CLng())))
  loc_1062D6C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B()
  loc_1062D90: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1062D97:   Set var_88 = ()
  loc_1062D9D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_B()
  loc_1062DA6:   var_EC = CLng()
  loc_1062DB6:   If Not (var_EC = CLng(3)) Then
  loc_1062DC0:     If Not (var_EC = CLng(1)) Then
  loc_1062DCA:       If Not (var_EC = CLng(4)) Then
  loc_1062DD4:         If Not (var_EC = CLng(5)) Then
  loc_1062DDE:           If Not (var_EC = CLng(6)) Then
  loc_1062DE8:             If Not (var_EC = CLng(8)) Then
  loc_1062DF2:               If Not (var_EC = CLng(&HA)) Then
  loc_1062DFC:                 If Not (var_EC = CLng(7)) Then
  loc_1062E06:                   If (var_EC = CLng(9)) Then
  loc_1062E09:                   End If
  loc_1062E09:                 End If
  loc_1062E09:               End If
  loc_1062E09:             End If
  loc_1062E09:           End If
  loc_1062E09:         End If
  loc_1062E09:       End If
  loc_1062E09:     End If
  loc_1062E0D:     Set var_88 = (var_EC)
  loc_1062E13:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_1062E25:     Set var_A0 = (CVar(CLng()))
  loc_1062E2B:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_B()
  loc_1062E43:     Set var_B4 = CVar(CLng())(vbNullString)
  loc_1062E49:     LateIdCallSt
  loc_1062E61:   End If
  loc_1062E61: End If
  loc_1062E67: If (KeyCode = &HD) Then
  loc_1062E6F:   global_104 = 0
  loc_1062E72: End If
  loc_1062E74: KeyCode = 0
  loc_1062E77: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10130
  'Data Table: 50F330
  loc_E10121: Call FGrid_UnknownEvent_C()
  loc_E1012B: global_104 = 0
  loc_E1012E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1116A6C
  'Data Table: 50F330
  Dim var_9C As String
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1116720: Set var_88 = Me.TopCtrl1
  loc_1116726: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_111673F: If (CStr() = "Browse") Then
  loc_1116742:   Exit Sub
  loc_1116743: End If
  loc_1116747: Set var_88 = ()
  loc_111674D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_B()
  loc_1116756: var_A0 = CLng()
  loc_1116766: If Not (var_A0 = CLng(3)) Then
  loc_1116770:   If Not (var_A0 = CLng(5)) Then
  loc_111677A:     If Not (var_A0 = CLng(7)) Then
  loc_1116784:       If (var_A0 = CLng(9)) Then
  loc_1116787:       End If
  loc_1116787:     End If
  loc_1116787:   End If
  loc_111678B:   Set var_C4 = (var_A0)
  loc_11167AF:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11167DC:   Set var_B4 = var_C4
  loc_11167EE:   Proc_6_63_110ABA4(Me, var_B4, (), 0)
  loc_1116816:   Set var_88 = var_B4(0)
  loc_111681C:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_1116824:   0 = var_B4.Text
  loc_111683D:   If (Len(var_9C) <= 1) Then
  loc_111684C:     Set var_88 = var_B4(0)
  loc_1116852:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_111685A:     var_CA = var_B4.Text
  loc_111686B:     Set var_B8 = var_C4(0)
  loc_1116871:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1116879:     var_C4.Text = 
  loc_111688C:   End If
  loc_1116898:   Set var_88 = var_B4(0)
  loc_111689E:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_11168A6:    = var_B4.Text
  loc_11168B8:   Set var_B8 = var_C4(0)
  loc_11168BE:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_9C))
  loc_11168C6:   var_C4.SelStart = 
  loc_11168DC: Else
  loc_11168E3:   If Not (var_A0 = CLng(1)) Then
  loc_11168ED:     If Not (var_A0 = CLng(4)) Then
  loc_11168F7:       If Not (var_A0 = CLng(8)) Then
  loc_1116901:         If (var_A0 = CLng(&HA)) Then
  loc_1116904:         End If
  loc_1116904:       End If
  loc_1116904:     End If
  loc_1116908:     Set var_C4 = ()
  loc_111692C:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1116959:     Set var_B4 = var_C4
  loc_111696B:     Proc_6_63_110ABA4(Me, var_B4, (), 0)
  loc_1116993:     Set var_88 = var_B4(0)
  loc_1116999:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C, &HFF, Asc(var_9C))
  loc_11169A1:     0 = var_B4.Text
  loc_11169BA:     If (Len(var_9C) <= 1) Then
  loc_11169C9:       Set var_88 = var_B4(0)
  loc_11169CF:       Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_11169D7:       var_CA = var_B4.Text
  loc_11169E8:       Set var_B8 = var_C4(0)
  loc_11169EE:       Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_11169F6:       var_C4.Text = 
  loc_1116A09:     End If
  loc_1116A15:     Set var_88 = var_B4(0)
  loc_1116A1B:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1116A23:      = var_B4.Text
  loc_1116A35:     Set var_B8 = var_C4(0)
  loc_1116A3B:     Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_9C))
  loc_1116A43:     var_C4.SelStart = 
  loc_1116A56:   End If
  loc_1116A56: End If
  loc_1116A60: If (CLng(KeyCode) <> &HD) Then
  loc_1116A68:   global_104 = &HFF
  loc_1116A6B: End If
  loc_1116A6B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102D6EC
  'Data Table: 50F330
  Dim var_B4 As Variant
  loc_102D4B8: Set var_90 = Me.TopCtrl1
  loc_102D4BE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_102D4D7: If (CStr() = "Browse") Then
  loc_102D4DA:   Exit Sub
  loc_102D4DB: End If
  loc_102D4DF: Set var_90 = ()
  loc_102D4E5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_D()
  loc_102D4F8: If (CLng() = CLng(0)) Then
  loc_102D4FB:   Exit Sub
  loc_102D4FC: End If
  loc_102D50D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_102D514:   Set var_90 = ()
  loc_102D51A:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_102D52F:   If (CLng() >= 1) Then
  loc_102D569:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102D570:       Set var_90 = ()
  loc_102D576:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_102D58B:       If (CLng() > 2) Then
  loc_102D592:         Set var_90 = ()
  loc_102D598:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_102D5AA:         Set var_118 = (CVar(CLng()))
  loc_102D5B0:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000()
  loc_102D5C5:       Else
  loc_102D5D2:         Set var_90 = (1)
  loc_102D5D8:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_102D5E4:         Set var_90 = ()
  loc_102D5EA:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_102D5FD:         Set var_118 = (CVar(CStr(CLng())))
  loc_102D603:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000()
  loc_102D626:         Set var_90 = (1)
  loc_102D62C:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6()
  loc_102D634:       End If
  loc_102D63D:       Set var_90 = 1(var_86)
  loc_102D643:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_102D659:       For var_11C =  To CInt((CLng() - 1)):  = var_11C 'Integer
  loc_102D663:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102D67D:         Set var_90 = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_102D683:         LateIdCallSt
  loc_102D694:       Next var_11C 'Integer
  loc_102D699:     End If
  loc_102D69C:   Else
  loc_102D6BD:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102D6CD:   End If
  loc_102D6D1:   Set var_90 = ()
  loc_102D6D7:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001()
  loc_102D6E2: End If
  loc_102D6E7: Set var_8C = Nothing
  loc_102D6EA: Exit Sub
  loc_102D6EB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E190
  'Data Table: 50F330
  loc_E1E181: Set var_A8 = (CVar(CLng("14737632")))
  loc_E1E187: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_26()
  loc_E1E18F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E370
  'Data Table: 50F330
  loc_E1E361: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1E367: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_26()
  loc_E1E36F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F93C
  'Data Table: 50F330
  Dim var_8C As TextBox
  loc_E3F910: Call Proc_17_56_F6B3D8()
  loc_E3F920: Set var_88 = var_8C(0)
  loc_E3F926: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E3F92E: var_8C.Visible = 
  loc_E3F93A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFA684
  'Data Table: 50F330
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFA5B8: On Error Goto loc_EFA63E
  loc_EFA5C8: (vbNullString).Caption = 
  loc_EFA5DD: (vbNullString).Caption = 
  loc_EFA5E5: Call Proc_17_52_F919B4()
  loc_EFA5FF: var_8C = "ADD"
  loc_EFA60D: Call Proc_17_51_E8A210(Proc_5_1_100CB50(var_8C, Me))
  loc_EFA623: Set var_88 = var_94(CInt(0))
  loc_EFA629: Call 0.Method_TopCtrl1_UnknownEvent_A0 (global_52)
  loc_EFA631: var_94.SetFocus
  loc_EFA63D: Exit Sub
  loc_EFA63E: ' Referenced from: EFA5B8
  loc_EFA646: Set var_88 = Err()
  loc_EFA64C: Call 0.Method_arg_2C (var_8C)
  loc_EFA66D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFA680: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBEF4C
  'Data Table: 50F330
  loc_EBEEB4: On Error Goto loc_EBEF44
  loc_EBEEEE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBEEF1:   Call Proc_17_56_F6B3D8()
  loc_EBEF02:   Set var_110 = Me
  loc_EBEF19:   Call Proc_17_51_E8A210(Proc_5_1_100CB50("INI", var_110))
  loc_EBEF24:   Call Proc_17_53_14A8A64(global_52)
  loc_EBEF2C: Else
  loc_EBEF32:   Call 0.Method_arg_1E8 (var_110)
  loc_EBEF3A:   Call var_110.SetFocus
  loc_EBEF43: End If
  loc_EBEF43: Exit Sub
  loc_EBEF44: ' Referenced from: EBEEB4
  loc_EBEF44: Proc_6_60_E62BC4()
  loc_EBEF49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1291E88
  'Data Table: 50F330
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_50F33A As Connection15
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  Dim var_4701 As Integer
  loc_12918CC: On Error Goto loc_1291E2F
  loc_12918DD: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_12918E0:   Exit Sub
  loc_12918E1: End If
  loc_1291920: var_E4 = "select SysYN From REVMAST Where Code='" & Me.Fields.Item("Code").Value 
  loc_1291929: var_104 = var_E4 & "'" 
  loc_1291937: unk_50F33A.Execute CStr(var_104), var_128, -1
  loc_1291942: Set var_9C = var_12C
  loc_1291962: var_130 = var_9C.RecordCount
  loc_1291970: If (var_130 > 0) Then
  loc_12919AF:   If (var_9C.Fields.Item("SysYN").Value = "Y") Then
  loc_12919CB:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_E4, var_104, var_128)
  loc_12919DB:     Exit Sub
  loc_12919DC:   End If
  loc_12919DC: End If
  loc_1291A0E: var_13C = "Payment Entry"
  loc_1291A56: If (Proc_6_108_1010FEC(MemVar_1F92044, "PayCharge", "PayCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1291A59:   Exit Sub
  loc_1291A5A: End If
  loc_1291A91: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_104, var_128) = 6) Then
  loc_1291A96:   var_96 = 0
  loc_1291AA2:   unk_50F33A.BeginTrans var_130
  loc_1291AA9:   var_96 = &HFF
  loc_1291ABD:   var_94 = Me.Bookmark 'Variant
  loc_1291B17:   unk_50F33A.Execute CStr("Delete From REVMAST Where Code='" & Me.Fields.Item("Code").Value & "'"), var_128, -1
  loc_1291B62:   var_16C = 0
  loc_1291B75:   var_164 = 0
  loc_1291B80:   var_160 = 0
  loc_1291B93:   var_158 = 0
  loc_1291B9E:   var_154 = 0
  loc_1291BB1:   var_14C = 0
  loc_1291BFA:   Proc_154_5_10E33A4(MemVar_1F921DC, "RevMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1291C6A:   var_104 = "Delete From DepartPay Where PayCode='" & Me.Fields.Item("Code").Value & "'" 
  loc_1291C78:   unk_50F33A.Execute CStr(var_104), var_128, -1
  loc_1291CC3:   var_16C = 0
  loc_1291CD6:   var_164 = 0
  loc_1291CE1:   var_160 = 0
  loc_1291CF4:   var_158 = 0
  loc_1291CFF:   var_154 = 0
  loc_1291D12:   var_14C = 0
  loc_1291D52:   var_108 = "DepartPay"
  loc_1291D5B:   Proc_154_5_10E33A4(MemVar_1F921DC, var_108, "PayCode", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1291D89:   unk_50F33A.CommitTrans
  loc_1291D90:   var_96 = 0
  loc_1291D9E:   Me.Requery -1
  loc_1291DAE:   Me.Requery -1
  loc_1291DCE:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1291DDB:     Me.Bookmark = var_94
  loc_1291DE3:   Else
  loc_1291DF7:     If (Me.EOF = 0) Then
  loc_1291E00:       Me.MoveLast
  loc_1291E05:     End If
  loc_1291E05:   End If
  loc_1291E05:   Call Proc_17_53_14A8A64(var_96, var_14C, 0, var_154, var_158)
  loc_1291E26:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_1291E2E: End If
  loc_1291E2E: Exit Sub
  loc_1291E2F: ' Referenced from: 12918CC
  loc_1291E35: If (var_96 = &HFF) Then
  loc_1291E3E:   unk_50F33A.RollbackTrans
  loc_1291E43: End If
  loc_1291E4B: Set var_A0 = Err()
  loc_1291E51: Call 0.Method_arg_2C (var_108, 0, var_160)
  loc_1291E72: MsgBox(CVar(var_108), &H30, " Deletion Error ", var_104, var_128)
  loc_1291E85: Exit Sub
  loc_1291E86: var_4701 = var_164
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6067C
  'Data Table: 50F330
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F60558: On Error Goto loc_F60639
  loc_F60568: (vbNullString).Caption = 
  loc_F6057D: (vbNullString).Caption = 
  loc_F60593: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F60596:   Exit Sub
  loc_F60597: End If
  loc_F605AE: If (Me.RecordCount > 0) Then
  loc_F605C6:   var_90 = "EDIT"
  loc_F605D4:   Call Proc_17_51_E8A210(Proc_5_1_100CB50(var_90, Me))
  loc_F605EA:   Set var_88 = var_98(CInt(0))
  loc_F605F0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (global_52)
  loc_F605F8:   var_98.SetFocus
  loc_F60607: Else
  loc_F60628:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F60638: End If
  loc_F60638: Exit Sub
  loc_F60639: ' Referenced from: F60558
  loc_F60641: Set var_88 = Err()
  loc_F60647: Call 0.Method_arg_2C (var_90)
  loc_F60668: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F6067B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E170EC
  'Data Table: 50F330
  loc_E170E1: Me.Global.Unload Me
  loc_E170E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F242A8
  'Data Table: 50F330
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F241A8: On Error Goto loc_F24240
  loc_F241B4: var_88 = Me.RecordCount
  loc_F241C2: If (var_88 <= 0) Then
  loc_F241CB:   var_B8 = "Information"
  loc_F241E6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F241F6:   Exit Sub
  loc_F241F7: End If
  loc_F24205: MemVar_1F920E4 = "Select REVMAST.Code As SearchCode,REVMAST.Name FROM REVMAST WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and PayType<>'' AND PayType IS NOT NULL Order by REVMAST.Name"
  loc_F2420F: var_10C = "3000"
  loc_F24215: Proc_6_126_F1BCC0(var_10C)
  loc_F24223: MemVar_1F92120 = Me
  loc_F2423A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2423F: Exit Sub
  loc_F24240: ' Referenced from: F241A8
  loc_F24248: Set var_110 = Err()
  loc_F2424E: Call 0.Method_arg_1C (var_88)
  loc_F2425F: If (var_88 <> 0) Then
  loc_F2426A:   Set var_110 = Err()
  loc_F24270:   Call 0.Method_arg_2C (var_10C)
  loc_F24291:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F242A4: End If
  loc_F242A4: Exit Sub
  loc_F242A5: MemVar_1F920E4 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32A18
  'Data Table: 50F330
  loc_E32A08: Proc_5_0_110649C(&HFF, Me)
  loc_E32A10: Call Proc_17_53_14A8A64(global_52)
  loc_E32A15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E328F8
  'Data Table: 50F330
  loc_E328E8: Proc_5_0_110649C(&HFF, Me)
  loc_E328F0: Call Proc_17_53_14A8A64(global_52)
  loc_E328F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32958
  'Data Table: 50F330
  loc_E32948: Proc_5_0_110649C(&HFF, Me)
  loc_E32950: Call Proc_17_53_14A8A64(global_52)
  loc_E32955: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E329B8
  'Data Table: 50F330
  loc_E329A8: Proc_5_0_110649C(&HFF, Me)
  loc_E329B0: Call Proc_17_53_14A8A64(global_52)
  loc_E329B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108CB3C
  'Data Table: 50F330
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_50F33A As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108C8A4: On Error Goto loc_108CAF0
  loc_108C8BB: var_A0 = "SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE (P.LOGSITE_CODE='" & MemVar_1F92078
  loc_108C8CB: unk_50F33A.Execute var_A0 & "' or P.LOGSITE_CODE='HO') and PayType<>'' AND PayType IS NOT NULL", var_C4, -1
  loc_108C8D6: Set var_88 = var_C8
  loc_108C8EC: var_CC = var_88.RecordCount
  loc_108C8FA: If (var_CC = 0) Then
  loc_108C916:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108C926:   Exit Sub
  loc_108C927: End If
  loc_108C936: var_A4 = MemVar_1F920B4 & "\PayTypeMast.ttx"
  loc_108C93D: Set var_C8 = var_88 
  loc_108C949: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108C953: Set var_88 = var_C8
  loc_108C959: var_B4 = CVar(var_12E) 'Integer
  loc_108C95C: var_98 = var_B4 'Variant
  loc_108C978: var_A0 = MemVar_1F920B4 & "\PayTypeMast.RPT"
  loc_108C981: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108C98C: MemVar_1F921E4 = var_C8
  loc_108C9A7: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108C9AF: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108C9BB: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108C9D4:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108C9DC:   Call 0.Method_arg_20 (var_138)
  loc_108C9E4:   Call 0.Method_arg_30 (var_A0)
  loc_108CA2A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108CA40:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108CA48:     Call 0.Method_arg_20 (var_138)
  loc_108CA50:     Call 0.Method_arg_38 ("'Pay Type Master'")
  loc_108CA5C:   End If
  loc_108CA5F: Next var_132 'Integer
  loc_108CA7D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108CA85: Call 0.Method_arg_2C (var_DC)
  loc_108CA93: Call 0.Method_arg_150 (var_FC)
  loc_108CA9E: Call 0.Method_arg_50 (var_A0)
  loc_108CAA8: Set var_138 = Nothing
  loc_108CAC2: Set var_C8 = MemVar_1F921E4 
  loc_108CACE: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108CAD9: MemVar_1F921E4 = var_C8
  loc_108CAEC: Set var_88 = Nothing
  loc_108CAEF: Exit Sub
  loc_108CAF0: ' Referenced from: 108C8A4
  loc_108CAF8: Set var_C8 = Err()
  loc_108CAFE: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108CB09: Call 0.Method_arg_50 (var_A4)
  loc_108CB25: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108CB38: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E569C8
  'Data Table: 50F330
  Dim Me As Recordset15
  loc_E5698F: Me.Requery -1
  loc_E5699F: Me.Requery -1
  loc_E569AF: Me.Requery -1
  loc_E569BF: Me.Requery -1
  loc_E569C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1547624
  'Data Table: 50F330
  Dim var_98 As Variant
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_AC As String
  Dim unk_50F33A As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_B8 As String
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_140 As TextBox
  Dim var_174 As TextBox
  Dim var_190 As Variant
  Dim var_208 As TextBox
  Dim var_214 As TextBox
  Dim var_248 As Variant
  Dim var_238 As Variant
  Dim var_2C0 As Variant
  Dim var_120 As String
  Dim var_128 As String
  Dim var_288 As Variant
  Dim var_2D0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_340 As Variant
  Dim var_C8 As Variant
  Dim var_364 As Variant
  Dim var_4B0 As Variant
  Dim var_1A0 As Variant
  Dim var_1D0 As Variant
  Dim var_430 As Variant
  Dim var_470 As Variant
  Dim var_4D0 As Variant
  Dim var_124 As String
  Dim var_F8 As Variant
  Dim var_78C As Double
  Dim var_794 As Double
  Dim var_79C As Double
  Dim var_510 As Variant
  loc_1546740: On Error Goto loc_15475D0
  loc_1546747: var_86 = CByte(0) 'Byte
  loc_1546756: Set var_94 = var_98(CInt(0))
  loc_154675C: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546764: var_A0 = "Name"
  loc_1546785: If (Proc_183_19_E8DAFC(var_98) = 0) Then
  loc_154678F:   Call Txt_GotFocus()
  loc_1546794:   Exit Sub
  loc_1546795: End If
  loc_15467A3: Set var_94 = var_98(CInt(3))
  loc_15467A9: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, CInt(0))
  loc_15467CC: Set var_9C = var_A8(CInt(3))
  loc_15467D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AC)
  loc_15467DA: (var_98.Text <> "Company") = var_A8.Text
  loc_15467F6: Set var_B0 = var_B4(CInt(3))
  loc_15467FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8)
  loc_1546804: ( And (var_AC <> "Staff")) = var_B4.Text
  loc_154682A: If ( And (var_B8 <> "Member")) Then
  loc_1546838:   Set var_94 = var_98(CInt(2))
  loc_154683E:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546846:   var_A0 = "Ledger A/C"
  loc_1546867:   If (Proc_183_19_E8DAFC(var_98) = 0) Then
  loc_1546871:     Call Txt_GotFocus()
  loc_1546876:     Exit Sub
  loc_1546877:   End If
  loc_154687A: Else
  loc_1546888:   Set var_94 = var_98(CInt(2))
  loc_154688E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (vbNullString, CInt(2))
  loc_1546896:   var_98.Tag = var_A0
  loc_15468A2: End If
  loc_15468A6: Set var_94 = Me.TopCtrl1
  loc_15468AC: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_15468C5: If (CStr() = "Add") Then
  loc_15468CE:   var_E8 = 0
  loc_15468EB:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From REVMAST WHERE SITE_CODE='" & MemVar_1F92070
  loc_15468F2:   var_AC = CStr() & "' AND  SYSYN<>'Y'"
  loc_15468FB:   unk_50F33A.Execute var_AC, var_C8, -1
  loc_1546903:   var_94 = var_94.Fields
  loc_154690B:   var_E8 = var_98.Item(var_98)
  loc_1546913:   var_9C = var_9C.Value
  loc_154694C:   var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_154697A:   var_118 = (1 + Format(CStr(var_F8), "0000"))
  loc_1546985:   global_100 = CStr(var_118)
  loc_154699A: Else
  loc_15469B7:   var_98 = Me.Fields.Item("Code")
  loc_15469CE:   global_100 = CStr(var_98.Value)
  loc_15469DF: End If
  loc_15469E8: unk_50F33A.BeginTrans var_11C
  loc_15469F1: var_86 = CByte(1) 'Byte
  loc_15469F9: Set var_94 = Me.TopCtrl1
  loc_15469FF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_1546A18: If (CStr(var_108) = "Add") Then
  loc_1546A29:   Set var_94 = var_98(CInt(0))
  loc_1546A2F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AC)
  loc_1546A37:   var_F8 = var_98.Text
  loc_1546A4A:   Set var_9C = var_A8(CInt(1))
  loc_1546A50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_124)
  loc_1546A58:    = var_A8.Text
  loc_1546A6B:   Set var_B0 = var_B4(CInt(2))
  loc_1546A71:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_130)
  loc_1546A79:    = var_B4.Tag
  loc_1546A8C:   Set var_13C = var_140(CInt(3))
  loc_1546A92:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_144)
  loc_1546A9A:    = var_140.Text
  loc_1546AA2:   var_C8 = Date
  loc_1546AAD:   Proc_6_7_F25D88(var_F8)
  loc_1546AC0:   Set var_170 = var_174(CInt(3))
  loc_1546AC6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_178)
  loc_1546ACE:   var_C8 = var_174.Text
  loc_1546ADE:   Set var_17C = var_180(CInt(5))
  loc_1546AE4:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546AEC:   var_190 = CVar(var_180) 'Address
  loc_1546AF3:   Proc_6_39_E7C810(var_1A0)
  loc_1546B22:   Set var_204 = var_208(CInt(3))
  loc_1546B28:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_20C)
  loc_1546B30:   var_190 = var_208.Text
  loc_1546B43:   Set var_210 = var_214(CInt(4))
  loc_1546B49:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_218)
  loc_1546B51:    = var_214.Tag
  loc_1546B94:   Set var_2AC = var_2B0(CInt(6))
  loc_1546B9A:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546BC5:   var_A0 = "Insert Into REVMAST (Code,Name,ShortName,ACCode,PayType,Site_Code,SysYN,FieldType,U_Name,U_EntDt,U_AE,TYPE,BankCommPer,BankCommAc,ACPosting,LogSite_Code) Values ('" & global_100
  loc_1546BCC:   var_B8 = var_A0 & "','"
  loc_1546BD3:   var_120 = var_B8 & var_AC
  loc_1546BDA:   var_128 = var_120 & "','"
  loc_1546C20:   var_108 = CVar(var_128 & var_124 & "','" & var_130 & "','" & var_144 & "','" & MemVar_1F92078 & "','N','P','" & MemVar_1F920C8 & "',") 'String
  loc_1546C46:   var_288 = var_108 & var_F8 & ",'A','Dr'," & IIf((var_178 = "Credit Card"), var_1A0, 0) & ",'" & IIf((var_20C = "Credit Card"), CVar(Proc_6_38_E68A98(CVar(var_218))), vbNullString) 
  loc_1546C56:   var_2D0 = CVar(Proc_6_38_E68A98(CVar(var_2B0))) 'String
  loc_1546C75:   var_340 = var_288 & "','" & var_2D0 & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1546C83:   unk_50F33A.Execute CStr(var_340), var_364, -1
  loc_1546D16: Else
  loc_1546D21:   Set var_94 = var_98(CInt(0))
  loc_1546D27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_368)
  loc_1546D2F:   var_C8 = CVar(var_98) 'Address
  loc_1546D36:   Proc_6_17_EAA2B0(var_F8)
  loc_1546D49:   Set var_9C = var_A8(CInt(2))
  loc_1546D4F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0)
  loc_1546D57:   var_C8 = var_A8.Tag
  loc_1546D6A:   Set var_B0 = var_B4(CInt(3))
  loc_1546D70:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AC)
  loc_1546D78:    = var_B4.Text
  loc_1546D8B:   Set var_13C = var_140(CInt(1))
  loc_1546D91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8)
  loc_1546D99:    = var_140.Text
  loc_1546DA1:   var_2C0 = Date
  loc_1546DAC:   Proc_6_7_F25D88(var_2D0)
  loc_1546DBF:   Set var_170 = var_174(CInt(3))
  loc_1546DC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_120)
  loc_1546DCD:   var_2C0 = var_174.Text
  loc_1546DDD:   Set var_17C = var_180(CInt(5))
  loc_1546DE3:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546DEB:   var_320 = CVar(var_180) 'Address
  loc_1546DF2:   Proc_6_39_E7C810(var_340)
  loc_1546E21:   Set var_204 = var_208(CInt(3))
  loc_1546E27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_124)
  loc_1546E2F:   var_320 = var_208.Text
  loc_1546E42:   Set var_210 = var_214(CInt(4))
  loc_1546E48:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_128)
  loc_1546E50:    = var_214.Tag
  loc_1546E93:   Set var_2AC = var_2B0(CInt(6))
  loc_1546E99:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546EB3:   var_4B0 = global_100
  loc_1546EBB:   Proc_6_17_EAA2B0(var_4C0)
  loc_1546ED5:   var_108 = "UPDATE REVMAST SET Name=" & var_F8 
  loc_1546EF1:   var_190 = var_108 & ",SITE_CODE='" & CVar(MemVar_1F92070) & "',ACCode='" 
  loc_1546F04:   var_1D0 = var_190 & CVar(var_A0) & "',PayType='" 
  loc_1546F1E:   var_248 = CVar(var_B8) 'String
  loc_1546F4D:   var_300 = var_1D0 & CVar(var_AC) & "',ShortName='" & var_248 & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_2D0 & " ,U_AE='E',TYPE='Dr',FieldType='P',BankCommPer=" 
  loc_1546F64:   var_430 = var_300 & IIf((var_120 = "Credit Card"), var_340, 0) & ",BankCOmmAc='" & IIf((var_124 = "Credit Card"), CVar(Proc_6_38_E68A98(CVar(var_128))), vbNullString) 
  loc_1546F74:   var_470 = CVar(Proc_6_38_E68A98(CVar(var_2B0))) 'String
  loc_1546F9E:   unk_50F33A.Execute CStr(var_430 & "',ACposting='" & var_470 & "' WHERE Code=" & var_4C0 & vbNullString), var_510, -1
  loc_154702C: End If
  loc_1547053: unk_50F33A.Execute "Delete from CreditCardhistory where RevCode='" & global_100 & "'", var_C8, -1
  loc_1547076: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4(CByte(1)(var_8E))
  loc_154708D: For var_514 =  To CByte((CLng(var_368) - 1)): var_4B0 = var_514 'Byte
  loc_15470A9:   Set var_94 = CVar(CLng(var_8E))(CVar(CLng(1)))
  loc_15470AF:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41()
  loc_15470D8:   Set var_98 = CVar(CLng(var_8E))(CVar(CLng(1)))
  loc_15470DE:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41((CStr() <> vbNullString))
  loc_1547108:   Set var_9C = CVar(CLng(var_8E))(CVar(CLng(3)))
  loc_154710E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41(( And (CStr() <> vbNullString)))
  loc_1547138:   Set var_A8 = CVar(CLng(var_8E))(CVar(CLng(4)))
  loc_154713E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41(( And (CStr() <> vbNullString)))
  loc_1547168:   Set var_B0 = CVar(CLng(var_8E))(CVar(CLng(5)))
  loc_154716E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41(( And (CStr() <> vbNullString)))
  loc_15471A9:   If ( And (CStr() <> vbNullString)) Then
  loc_15471B1:     var_D8 = CVar(CLng(var_8E)) 'Long
  loc_15471C2:     Set var_94 = var_D8(CVar(CLng(1)))
  loc_15471C8:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41()
  loc_15471D3:     var_F8 = CVar(CStr()) 'String
  loc_15471D9:     Proc_6_7_F25D88(var_108)
  loc_15471EC:     Proc_6_17_EAA2B0(var_190, global_100)
  loc_1547207:     Set var_98 = CVar(CLng(var_8E))(CVar(CLng(2)))
  loc_154720D:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41(var_F8)
  loc_154722F:     Set var_9C = CVar(CLng(var_8E))(CVar(CLng(6)))
  loc_1547235:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41()
  loc_1547257:     Set var_A8 = CVar(CLng(var_8E))(CVar(CLng(4)))
  loc_154725D:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41()
  loc_1547270:     var_78C = Val(CStr())
  loc_1547289:     Set var_B0 = CVar(CLng(var_8E))(CVar(CLng(8)))
  loc_154728F:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41(var_78C)
  loc_15472A2:     var_794 = Val(CStr())
  loc_15472BB:     Set var_B4 = CVar(CLng(var_8E))(CVar(CLng(9)))
  loc_15472C1:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41(var_794)
  loc_15472ED:     Set var_13C = CVar(CLng(var_8E))(CVar(CLng(&HA)))
  loc_15472F3:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_41()
  loc_1547306:     var_79C = Val(CStr())
  loc_1547317:     Proc_6_7_F25D88(var_430, Date)
  loc_1547320:     Set var_140 = Me.TopCtrl1
  loc_1547326:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_79C)
  loc_154736A:     var_238 = "Insert into CreditCardhistory (AppDate,RevCode,TaxStru,CommAc,CommPer,Limit,CompOperator,Limit1,U_EntDt,U_AE,U_Name,Site_Code,LogSite_Code) values("
  loc_1547372:     var_118 = var_238 & var_108 
  loc_15473D2:     var_300 = var_118 & "," & var_190 & ",'" & CVar(CStr(var_1D0)) & "','" & CVar(CStr(var_248)) & "'," & CVar(var_78C) & ",'" & CVar(var_794) 
  loc_1547419:     var_4D0 = var_300 & "','" & CVar(Proc_6_38_E68A98(CVar(CStr()))) & "','" & CVar(var_79C) & "'," & var_430 & ",'" & IIf((CStr(var_470) = "Add"), "A", "E") 
  loc_1547469:     unk_50F33A.Execute CStr(var_4D0 & "','" & CVar(MemVar_1F920C8) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_784, -1
  loc_15474F5:   End If
  loc_15474F8: Next var_514 'Byte
  loc_1547504: Call Proc_17_50_105CD14(global_100)
  loc_154750F: unk_50F33A.CommitTrans
  loc_1547518: var_86 = CByte(0) 'Byte
  loc_1547527: Me.Requery -1
  loc_1547537: Me.Requery -1
  loc_1547564: Me.Find "Code='" & global_100 & "'", 0, 1
  loc_1547574: Set var_94 = Me.TopCtrl1
  loc_154757A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D8)
  loc_1547593: If (CStr() = "Add") Then
  loc_1547596:   Call TopCtrl1_UnknownEvent_A()
  loc_154759B:   Exit Sub
  loc_154759C: End If
  loc_15475B1: var_A0 = "INI"
  loc_15475BF: Call Proc_17_51_E8A210(Proc_5_1_100CB50(var_A0, Me))
  loc_15475CA: Call Proc_17_53_14A8A64(global_52)
  loc_15475CF: Exit Sub
  loc_15475D0: ' Referenced from: 1546740
  loc_15475D9: If (CInt(var_86) = 1) Then
  loc_15475E2:   unk_50F33A.RollbackTrans
  loc_15475E7: End If
  loc_15475EF: Set var_94 = Err()
  loc_15475F5: Call 0.Method_arg_2C (var_A0)
  loc_154760E: MsgBox(CVar(var_A0), &H10, var_F8, var_108, var_118)
  loc_1547621: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12A419C
  'Data Table: 50F330
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Variant
  Dim var_B4 As Variant
  loc_12A3BA6: Set var_88 = var_8C(Index)
  loc_12A3BAC: Call 0.Method_Txt_GotFocus0 ()
  loc_12A3BBA: Proc_6_74_E226B0(var_8C)
  loc_12A3BC6: Call Proc_17_56_F6B3D8()
  loc_12A3BCB: On Error Goto loc_12A4156
  loc_12A3BD1: var_92 = Index
  loc_12A3BDC: If (var_92 = CInt(0)) Then
  loc_12A3BF6:   If (Me.RecordCount > 0) Then
  loc_12A3C04:     Set var_8C = Me.FGPoint
  loc_12A3C1C:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_12A3C2A:   End If
  loc_12A3C78:   Set var_88 = var_8C(Index)
  loc_12A3C7E:   Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12A3C86:   var_8C = var_8C.Text
  loc_12A3C9E:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_12A3CA1:     Exit Sub
  loc_12A3CA2:   End If
  loc_12A3CAF:   Set var_88 = var_8C(Index)
  loc_12A3CB5:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12A3CBD:    = var_8C.Text
  loc_12A3CCF:   var_B0 = "Name"
  loc_12A3D0A:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12A3D13:     Me.MoveFirst
  loc_12A3D36:     Set var_88 = var_8C(Index)
  loc_12A3D3C:     Call 0.Method_Txt_GotFocus0 (var_A0, "Name ='", 0)
  loc_12A3D44:     1 = var_8C.Text
  loc_12A3D5D:     Me.Find var_B0 & var_A0 & "'", , 
  loc_12A3D72:   End If
  loc_12A3D75: Else
  loc_12A3D7D:   If (var_92 = CInt(2)) Then
  loc_12A3D97:     If (Me.RecordCount > 0) Then
  loc_12A3DA5:       Set var_8C = Me.FGPoint
  loc_12A3DBD:       Proc_6_137_1193554(Me.DGLedgerAc, global_60)
  loc_12A3DCB:     End If
  loc_12A3DD4:     var_98 = Me.RecordCount
  loc_12A3E19:     Set var_88 = var_8C(Index)
  loc_12A3E1F:     Call 0.Method_Txt_GotFocus0 (var_A0, ((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12A3E27:     Index = var_8C.Text
  loc_12A3E3F:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12A3E42:       Exit Sub
  loc_12A3E43:     End If
  loc_12A3E50:     Set var_88 = var_8C(Index)
  loc_12A3E56:     Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12A3E5E:      = var_8C.Text
  loc_12A3E70:     var_B0 = "Name"
  loc_12A3EAB:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12A3EB4:       Me.MoveFirst
  loc_12A3ED7:       Set var_88 = var_8C(Index)
  loc_12A3EDD:       Call 0.Method_Txt_GotFocus0 (var_A0, "Name ='", 0)
  loc_12A3EE5:       1 = var_8C.Text
  loc_12A3EFE:       Me.Find var_B0 & var_A0 & "'", , 
  loc_12A3F13:     End If
  loc_12A3F16:   Else
  loc_12A3F1E:     If (var_92 = CInt(3)) Then
  loc_12A3F2E:       ReDim var_F0(0 To &HC)
  loc_12A3F45:       var_F0(0) = "Cash"
  loc_12A3F54:       var_F0(1) = "Cheque"
  loc_12A3F63:       var_F0(2) = "Complementary"
  loc_12A3F72:       var_F0(3) = "Company"
  loc_12A3F81:       var_F0(4) = "Cash Card"
  loc_12A3F90:       var_F0(5) = "Credit Card"
  loc_12A3F9F:       var_F0(6) = "Hold"
  loc_12A3FAE:       var_F0(7) = "Member"
  loc_12A3FBD:       var_F0(8) = "Other"
  loc_12A3FCC:       var_F0(9) = "Room"
  loc_12A3FDB:       var_F0(&HA) = "Staff"
  loc_12A3FEA:       var_F0(&HB) = "UPI"
  loc_12A3FF9:       var_F0(&HC) = "Void"
  loc_12A4010:       global_76 = Array(var_F0)
  loc_12A401B:       Set var_B4 = Me.ListView
  loc_12A4036:       Set var_8C = (global_76)
  loc_12A4050:       Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_12A406E:       Set var_88 = var_8C(Index)
  loc_12A4074:       Call 0.Method_Txt_GotFocus0 (var_A0, global_76)
  loc_12A407C:       &HD = var_8C.Text
  loc_12A408E:       Set var_90 = var_B4(Index)
  loc_12A4094:       Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12A409C:       var_B4.Tag = 
  loc_12A40BD:       Set var_88 = var_8C(CInt(3))
  loc_12A40C3:       Call 0.Method_Txt_GotFocus0 (var_98)
  loc_12A40CB:        = var_8C.Left
  loc_12A40DD:       Me.FrmList.Left = var_98
  loc_12A40F9:       Set var_90 = var_B4(CInt(3))
  loc_12A40FF:       Call 0.Method_Txt_GotFocus0 (var_1B8)
  loc_12A4107:        = var_B4.Height
  loc_12A411A:       Set var_88 = var_8C(CInt(3))
  loc_12A4120:       Call 0.Method_Txt_GotFocus0 (var_98)
  loc_12A4128:        = var_8C.Top
  loc_12A4143:       Me.FrmList.Top = ((var_98 + var_1B8) + CDbl(&H1E))
  loc_12A4155:     End If
  loc_12A4155:   End If
  loc_12A4155: End If
  loc_12A4155: Exit Sub
  loc_12A4156: ' Referenced from: 12A3BCB
  loc_12A415E: Set var_88 = Err()
  loc_12A4164: Call 0.Method_arg_2C (var_A0)
  loc_12A4185: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_1C8)
  loc_12A4198: Exit Sub
  loc_12A4199: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12B4B74
  'Data Table: 50F330
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As Frame
  Dim var_110 As Variant
  loc_12B456E: If (CLng(Shift) = &H1B) Then
  loc_12B4571:   Call Proc_17_56_F6B3D8()
  loc_12B4576:   Exit Sub
  loc_12B4577: End If
  loc_12B457A: var_86 = KeyCode
  loc_12B4585: If (var_86 = CInt(0)) Then
  loc_12B45A0:   Set var_9C = Nothing
  loc_12B45D2:   Proc_6_79_11ACE04(Me.DGHelp, (var_86), CInt(0), global_56, Shift)
  loc_12B463D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12B4663:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_12B4671:   End If
  loc_12B4674: Else
  loc_12B467C:   If (var_86 = CInt(2)) Then
  loc_12B468A:     Set var_B0 = 1(0)
  loc_12B4697:     Set var_A4 = Nothing
  loc_12B46A2:     Set var_9C = Nothing
  loc_12B46D4:     Proc_6_69_134A198(Me.DGLedgerAc, var_B0, CInt(2), global_60, Shift, 0)
  loc_12B46F1:     var_AC = Me.RecordCount
  loc_12B4741:     If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12B4748:       Set var_9C = Me.DGLedgerAc
  loc_12B474F:       Set var_90 = Me.FGPoint
  loc_12B4767:       Proc_6_138_106D6F8(var_9C, global_60, KeyCode, var_90, 1)
  loc_12B4775:     End If
  loc_12B4778:   Else
  loc_12B4780:     If (var_86 = CInt(3)) Then
  loc_12B47A5:       Set var_8C = var_90(KeyCode)
  loc_12B47AB:       Call 0.Method_Txt_KeyDown0 (var_AC, 0)
  loc_12B47B3:       var_9C = var_90.Left
  loc_12B47C5:       Set var_9C = var_A4(KeyCode)
  loc_12B47CB:       Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_12B47D3:       0 = var_A4.Top
  loc_12B47E5:       Set var_A8 = var_B0(KeyCode)
  loc_12B47EB:       Call 0.Method_Txt_KeyDown0 (var_B8)
  loc_12B47F3:        = var_B0.Height
  loc_12B4805:       Set var_BC = var_C0(KeyCode)
  loc_12B480B:       Call 0.Method_Txt_KeyDown0 (var_C4)
  loc_12B4813:        = var_C0.Width
  loc_12B485F:       Proc_6_65_119423C(Me.FrmList, Me.ListView, var_A4(var_9C), KeyCode, Shift)
  loc_12B48BE:       Set var_8C = var_90(KeyCode)
  loc_12B48C4:       Call 0.Method_Txt_KeyDown0 (var_E0, (((((Shift = &HD) Or (CLng(Shift) = &H26)) Or (Shift = &H10)) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = 9)), arg_14, CInt(var_AC))
  loc_12B48CC:       CInt(((var_B4 + var_B8) + CDbl(&H19))) = var_90.Text
  loc_12B48E4:       If (CInt(var_C4) And (var_E0 = "Credit Card")) Then
  loc_12B48F3:         3380(&HFF).Visible = 
  loc_12B48FE:       Else
  loc_12B490A:         (0).Visible = 
  loc_12B4912:       End If
  loc_12B4915:     Else
  loc_12B491D:       If (var_86 = CInt(5)) Then
  loc_12B492A:         Set var_8C = var_90(KeyCode)
  loc_12B4930:         Call 0.Method_Txt_KeyDown0 ()
  loc_12B494B:         Proc_6_41_FA0BA4(var_90, Shift)
  loc_12B4957:       End If
  loc_12B4957:     End If
  loc_12B4957:   End If
  loc_12B4957: End If
  loc_12B4971: Set var_90 = Me.DGLedgerAc
  loc_12B4991: var_92 = Me.FrmList.Visible
  loc_12B49A7: var_110 = 2((((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (var_92 = 0))).Visible
  loc_12B49C8: If (2 And (CBool(var_110) = 0)) Then
  loc_12B49EE:   Set var_8C = var_90(CInt(4))
  loc_12B49F4:   Call 0.Method_Txt_KeyDown0 (var_92)
  loc_12B49FC:   ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) = var_90.Visible
  loc_12B4A18:   If (( And (var_92 = 0)) And (KeyCode = CInt(3))) Then
  loc_12B4A1E:     Call Proc_17_55_10B65E4(var_92)
  loc_12B4A29:     If (var_92 = &HFF) Then
  loc_12B4A39:       Set var_8C = var_90(KeyCode)
  loc_12B4A3F:       Call 0.Method_Txt_KeyDown0 (vbNullString)
  loc_12B4A47:       var_90.Text = 
  loc_12B4A53:       Exit Sub
  loc_12B4A54:     End If
  loc_12B4A8B:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12B4A8E:       Call TopCtrl1_UnknownEvent_16()
  loc_12B4A93:     End If
  loc_12B4A93:     Exit Sub
  loc_12B4A94:   End If
  loc_12B4AB2:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_12B4AB8:     Call Proc_17_55_10B65E4(var_92)
  loc_12B4AC3:     If (var_92 = &HFF) Then
  loc_12B4AD3:       Set var_8C = var_90(KeyCode)
  loc_12B4AD9:       Call 0.Method_Txt_KeyDown0 (vbNullString)
  loc_12B4AE1:       var_90.Text = 
  loc_12B4AED:       Exit Sub
  loc_12B4AEE:     End If
  loc_12B4B25:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12B4B28:       Call TopCtrl1_UnknownEvent_16()
  loc_12B4B2D:     End If
  loc_12B4B2D:     Exit Sub
  loc_12B4B2E:   End If
  loc_12B4B43:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12B4B4C:     Proc_6_75_E527CC(Shift)
  loc_12B4B51:   End If
  loc_12B4B64:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12B4B6D:     Proc_6_76_E52838(Shift, arg_14)
  loc_12B4B72:   End If
  loc_12B4B72: End If
  loc_12B4B72: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FAA2EC
  'Data Table: 50F330
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_FAA16A: Proc_6_133_E7EF78(var_94)
  loc_FAA173: arg_10 = CInt(var_94)
  loc_FAA17C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_FAA184: var_96 = KeyAscii
  loc_FAA18F: If (var_96 = CInt(2)) Then
  loc_FAA1AE:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_FAA1B5:     Set var_A8 = arg_10(var_96)
  loc_FAA1C0:     var_A0 = "Name"
  loc_FAA1DB:     Proc_6_89_146F1AC(var_A8, KeyAscii, global_60)
  loc_FAA1EA:   End If
  loc_FAA1ED: Else
  loc_FAA1F5:   If (var_96 = CInt(5)) Then
  loc_FAA202:     Set var_9C = var_A8(KeyAscii)
  loc_FAA208:     Call 0.Method_Txt_KeyPress0 (arg_10, var_A0)
  loc_FAA223:     Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_FAA232:   Else
  loc_FAA23A:     If (var_96 = CInt(6)) Then
  loc_FAA266:       If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_FAA276:         Set var_9C = var_A8(KeyAscii)
  loc_FAA27C:         Call 0.Method_Txt_KeyPress0 ("Detailed", 2)
  loc_FAA284:         var_A8.Text = 0
  loc_FAA293:       Else
  loc_FAA2BC:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_FAA2CC:           Set var_9C = var_A8(KeyAscii)
  loc_FAA2D2:           Call 0.Method_Txt_KeyPress0 ("Summarize")
  loc_FAA2DA:           var_A8.Text = 
  loc_FAA2E6:         End If
  loc_FAA2E6:       End If
  loc_FAA2E8:       arg_10 = 0
  loc_FAA2EB:     End If
  loc_FAA2EB:   End If
  loc_FAA2EB: End If
  loc_FAA2EB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FBEB78
  'Data Table: 50F330
  Dim var_86 As Integer
  loc_FBE9CF: var_86 = KeyCode
  loc_FBE9DA: If (var_86 = CInt(0)) Then
  loc_FBE9F9:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FBEA06:     var_A4 = "Name"
  loc_FBEA25:     Proc_6_80_FF0AC0((var_86), CInt(0), global_56)
  loc_FBEA3F:     Set var_A8 = Me.FGPoint
  loc_FBEA57:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode)
  loc_FBEA65:   End If
  loc_FBEA68: Else
  loc_FBEA70:   If (var_86 = CInt(2)) Then
  loc_FBEA8F:     If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_FBEAA3:       var_A4 = "Name"
  loc_FBEACB:       Proc_6_68_129FB34(Me.DGLedgerAc, Shift(var_A8), CInt(2), global_60)
  loc_FBEB01:       Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint)
  loc_FBEB0F:     End If
  loc_FBEB12:   Else
  loc_FBEB1A:     If (var_86 = CInt(3)) Then
  loc_FBEB38:       If (Me.FrmList.Visible = &HFF) Then
  loc_FBEB67:         Proc_6_64_F28E58(Me.ListView, var_A4(Shift), KeyCode)
  loc_FBEB77:       End If
  loc_FBEB77:     End If
  loc_FBEB77:   End If
  loc_FBEB77: End If
  loc_FBEB77: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BD0C
  'Data Table: 50F330
  loc_E4BCEA: Set var_88 = var_8C(Index)
  loc_E4BCF0: Call 0.Method_Txt_LostFocus0 ()
  loc_E4BCFE: Proc_6_73_E22704(var_8C)
  loc_E4BD0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '114F250
  'Data Table: 50F330
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C4 As TextBox
  loc_114EEAB: var_86 = Cancel
  loc_114EEB6: If (var_86 = CInt(0)) Then
  loc_114EEBC:   Call Proc_17_55_10B65E4(var_88)
  loc_114EEC7:   If (var_88 = &HFF) Then
  loc_114EECC:     arg_10 = &HFF
  loc_114EECF:     Exit Sub
  loc_114EED0:   End If
  loc_114EED4:   Set var_8C = Me.TopCtrl1
  loc_114EEDA:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_114EEE2:   var_A0 = CStr(var_86)
  loc_114EEF3:   If (var_A0 = "Add") Then
  loc_114EF03:     ("User Defined").Caption = 
  loc_114EF0B:   End If
  loc_114EF0E: Else
  loc_114EF16:   If (var_86 = CInt(2)) Then
  loc_114EF67:     Set var_8C = var_AC(Cancel)
  loc_114EF6D:     Call 0.Method_Txt_Validate0 (var_A0)
  loc_114EF75:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_114EF8D:     If ( Or (var_A0 = vbNullString)) Then
  loc_114EF90:       Exit Sub
  loc_114EF91:     End If
  loc_114EFCC:     Set var_C0 = var_C4(Cancel)
  loc_114EFD2:     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_114EFDA:     var_C4.Text = 
  loc_114F00D:     var_AC = Me.Fields.Item("Code")
  loc_114F01E:     var_A0 = CStr(var_AC.Value)
  loc_114F02B:     Set var_C0 = var_C4(Cancel)
  loc_114F031:     Call 0.Method_Txt_Validate0 (var_A0)
  loc_114F039:     var_C4.Tag = 
  loc_114F052:   Else
  loc_114F05A:     If (var_86 = CInt(4)) Then
  loc_114F07D:       var_88 = Me.EOF
  loc_114F0AB:       Set var_8C = var_AC(Cancel)
  loc_114F0B1:       Call 0.Method_Txt_Validate0 (var_A0)
  loc_114F0B9:       ((Me.RecordCount = 0) Or ((var_88 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_114F0D1:       If ( Or (var_A0 = vbNullString)) Then
  loc_114F0D4:         Exit Sub
  loc_114F0D5:       End If
  loc_114F110:       Set var_C0 = var_C4(Cancel)
  loc_114F116:       Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_114F11E:       var_C4.Text = 
  loc_114F151:       var_AC = Me.Fields.Item("Code")
  loc_114F162:       var_A0 = CStr(var_AC.Value)
  loc_114F16F:       Set var_C0 = var_C4(Cancel)
  loc_114F175:       Call 0.Method_Txt_Validate0 (var_A0)
  loc_114F17D:       var_C4.Tag = 
  loc_114F196:     Else
  loc_114F19E:       If (var_86 = CInt(3)) Then
  loc_114F1AE:         Set var_8C = var_AC(Cancel)
  loc_114F1B4:         Call 0.Method_Txt_Validate0 (var_A0)
  loc_114F1BC:          = var_AC.Text
  loc_114F1D3:         If (var_A0 <> vbNullString) Then
  loc_114F206:           Set var_C0 = var_C4(Cancel)
  loc_114F20C:           Call 0.Method_Txt_Validate0 (Me.ListView.SelectedItem.Text)
  loc_114F214:           var_C4.Text = 
  loc_114F22A:         End If
  loc_114F22D:       Else
  loc_114F235:         If (var_86 = CInt(1)) Then
  loc_114F23B:           Call Proc_17_54_1070178(var_88)
  loc_114F246:           If (var_88 = &HFF) Then
  loc_114F24B:             arg_10 = &HFF
  loc_114F24E:             Exit Sub
  loc_114F24F:           End If
  loc_114F24F:         End If
  loc_114F24F:       End If
  loc_114F24F:     End If
  loc_114F24F:   End If
  loc_114F24F: End If
  loc_114F24F: Exit Sub
End Sub

Private Sub DGBank_UnknownEvent_9 'FE2E10
  'Data Table: 50F330
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As ListView
  Dim var_A4 As Variant
  loc_FE2C4B: (False).Visible = 
  loc_FE2C6A: If (Me.RecordCount > 0) Then
  loc_FE2CA7:   Set var_B4 = var_B8(0)
  loc_FE2CAD:   Call 0.Method_DGBank_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FE2CB5:   var_B8.Text = 
  loc_FE2D27:   LateIdCallSt
  loc_FE2D56:   var_A4 = CVar(CLng(CVar(CLng(().MouseIcon))(CVar(CLng(5))(CVar(CStr(Me.Fields.Item("Name").Value)))).MouseIcon)) 'Long
  loc_FE2D80:   var_B0 = Me.Fields.Item("Code")
  loc_FE2D99:   Set var_B8 = CVar(CLng(6))(CVar(CStr(var_B0.Value)))
  loc_FE2D9F:   LateIdCallSt
  loc_FE2DBB: End If
  loc_FE2DC7: Set var_A8 = var_B0(0)
  loc_FE2DCD: Call 0.Method_DGBank_UnknownEvent_90 (var_12E, var_B8)
  loc_FE2DD5: var_A4 = var_B0.Visible
  loc_FE2DE7: If (var_12E = &HFF) Then
  loc_FE2DF3:   Set var_A8 = var_B0(0)
  loc_FE2DF9:   Call 0.Method_DGBank_UnknownEvent_90 ()
  loc_FE2E01:   var_B0.SetFocus
  loc_FE2E0D: End If
  loc_FE2E0D: Exit Sub
End Sub

Private Sub DGBank_UnknownEvent_1F 'E71010
  'Data Table: 50F330
  loc_E70FCE: Proc_6_153_E91194((), arg_14)
  loc_E70FE5: Set var_8C = Me.FGPoint
  loc_E70FFF: Proc_6_138_106D6F8((arg_18), global_68)
  loc_E7100D: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_9 'FE3034
  'Data Table: 50F330
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As DataGrid
  Dim var_A4 As Variant
  loc_FE2E6F: Me.DGTaxMast.Visible = False
  loc_FE2E8E: If (Me.RecordCount > 0) Then
  loc_FE2ECB:   Set var_B4 = var_B8(0)
  loc_FE2ED1:   Call 0.Method_DGTaxMast_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FE2ED9:   var_B8.Text = 
  loc_FE2EF9:   ().InsertRows , 
  loc_FE2F4B:   LateIdCallSt
  loc_FE2F71:   CVar(CLng())(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_FE2F7A:   var_A4 = CVar(CLng()) 'Long
  loc_FE2FA4:   var_B0 = Me.Fields.Item("Code")
  loc_FE2FBD:   Set var_B8 = CVar(CLng(2))(CVar(CStr(var_B0.Value)))
  loc_FE2FC3:   LateIdCallSt
  loc_FE2FDF: End If
  loc_FE2FEB: Set var_A8 = var_B0(0)
  loc_FE2FF1: Call 0.Method_DGTaxMast_UnknownEvent_90 (var_12E, var_B8)
  loc_FE2FF9: var_A4 = var_B0.Visible
  loc_FE300B: If (var_12E = &HFF) Then
  loc_FE3017:   Set var_A8 = var_B0(0)
  loc_FE301D:   Call 0.Method_DGTaxMast_UnknownEvent_90 ()
  loc_FE3025:   var_B0.SetFocus
  loc_FE3031: End If
  loc_FE3031: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_1F 'E6E0A8
  'Data Table: 50F330
  loc_E6E066: Proc_6_153_E91194(Me.DGTaxMast, arg_14)
  loc_E6E097: Proc_6_138_106D6F8(Me.DGTaxMast, global_72, 0)
  loc_E6E0A5: Exit Sub
  loc_E6E0A6: Get , , arg_18 'get Me.FGPoint bytes
End Sub

Private Sub DGHelp_UnknownEvent_9 'F389C4
  'Data Table: 50F330
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F388BB: Me.DGHelp.Visible = False
  loc_F388DA: If (Me.RecordCount > 0) Then
  loc_F38919:   Set var_B4 = var_B8(CInt(0))
  loc_F3891F:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F38927:   var_B8.Tag = 
  loc_F3895A:   var_B0 = Me.Fields.Item("Name")
  loc_F38979:   Set var_B4 = var_B8(CInt(0))
  loc_F3897F:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F38987:   var_B8.Text = 
  loc_F3899D: End If
  loc_F389A8: Set var_A8 = var_B0(CInt(0))
  loc_F389AE: Call 0.Method_DGHelp_UnknownEvent_90 ()
  loc_F389B6: var_B0.SetFocus
  loc_F389C2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70230
  'Data Table: 50F330
  loc_E701EE: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E70205: Set var_8C = Me.FGPoint
  loc_E70221: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E7022F: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F3C644
  'Data Table: 50F330
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C53B: Me.DGLedgerAc.Visible = False
  loc_F3C55A: If (Me.RecordCount > 0) Then
  loc_F3C599:   Set var_B4 = var_B8(CInt(2))
  loc_F3C59F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F3C5A7:   var_B8.Tag = 
  loc_F3C5DA:   var_B0 = Me.Fields.Item("Name")
  loc_F3C5F9:   Set var_B4 = var_B8(CInt(2))
  loc_F3C5FF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F3C607:   var_B8.Text = 
  loc_F3C61D: End If
  loc_F3C628: Set var_A8 = var_B0(CInt(2))
  loc_F3C62E: Call 0.Method_DGLedgerAc_UnknownEvent_90 ()
  loc_F3C636: var_B0.SetFocus
  loc_F3C642: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'E6E1D0
  'Data Table: 50F330
  loc_E6E18E: Proc_6_153_E91194(Me.DGLedgerAc, arg_14)
  loc_E6E1A5: Set var_8C = Me.FGPoint
  loc_E6E1C1: Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, CInt(2))
  loc_E6E1CF: Exit Sub
End Sub

Private Sub Form_Load() '114BB40
  'Data Table: 50F330
  Dim var_90 As Variant
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_50F33A As Connection15
  Dim var_C8 As Variant
  loc_114B7A8: On Error Goto loc_114BAFC
  loc_114B7BA: (CDbl(13500)).Left = 
  loc_114B7D1: (CDbl(7800)).Top = 
  loc_114B7E8: (CDbl(8160)).Top = 
  loc_114B7FF: (CDbl(13500)).Left = 
  loc_114B80E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_114B821: Me.FrDepart.BackColor = CLng(MemVar_1F921B0)
  loc_114B836: Set var_90 = (CVar(CLng(MemVar_1F921B4)))
  loc_114B84C: Set var_90 = FrDepart.DispID_12(CLng(MemVar_1F921B0))
  loc_114B852: var_90.BackColor = 
  loc_114B85A: Call Proc_17_57_1226DD0()
  loc_114B87A: var_B8 = "SELECT Code,Name FROM REVMAST WHERE PayType<>'' AND PayType IS NOT NULL AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  ORDER BY Name"
  loc_114B883: unk_50F33A.Execute var_B8, var_C8, -1
  loc_114B894: Set global_56 = var_90
  loc_114B8B2: CVarUnk
  loc_114B8B7: VerifyVarObj
  loc_114B8C3: LateIdStAd
  loc_114B8EC: var_B8 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_114B8F5: unk_50F33A.Execute var_B8, var_C8, -1
  loc_114B924: CVarUnk
  loc_114B929: VerifyVarObj
  loc_114B935: LateIdStAd
  loc_114B95E: var_B8 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_114B967: unk_50F33A.Execute var_B8, var_C8, -1
  loc_114B996: CVarUnk
  loc_114B99B: VerifyVarObj
  loc_114B9A7: LateIdStAd
  loc_114B9D9: unk_50F33A.Execute "SELECT Distinct Code,Name FROM taxstru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C8, -1
  loc_114BA08: CVarUnk
  loc_114BA0D: VerifyVarObj
  loc_114BA19: LateIdStAd
  loc_114BA3B: var_B4 = "SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName,PayType AS CCARD FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE PayType<>'' AND PayType IS NOT NULL AND (P.LOGSITE_CODE='" & MemVar_1F92078
  loc_114BA4B: unk_50F33A.Execute var_B4 & "' or P.LOGSITE_CODE='HO') order by P.Name", var_C8, -1
  loc_114BA7D: Set var_90 = Me
  loc_114BA86: var_B4 = "INI"
  loc_114BA94: Call Proc_17_51_E8A210(Proc_5_1_100CB50(var_B4, var_90, Me.DGTaxMast, var_90, var_90, var_90(Me.DGLedgerAc), var_90), var_90, var_90, Me.DGHelp)
  loc_114BAB5: unk_50F33A.Execute "Select [Option] Name,Flag,module_name from MenuHelp Where [Option] ='Banquet' and Flag='N'", var_C8, -1
  loc_114BADD: If (var_90.RecordCount > 0) Then
  loc_114BAE8:   Set var_90 = Me.ChkBanq
  loc_114BAEE:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010007(True)
  loc_114BAF6: End If
  loc_114BAF6: Call Proc_17_53_14A8A64(var_90, var_90, var_90)
  loc_114BAFB: Exit Sub
  loc_114BAFC: ' Referenced from: 114B7A8
  loc_114BB04: Set var_90 = Err()
  loc_114BB0A: Call 0.Method_arg_2C (var_B4, global_56)
  loc_114BB2B: MsgBox(CVar(var_B4), &H40, "Information", var_F4, var_114)
  loc_114BB3E: Exit Sub
  loc_114BB3F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3F28
  'Data Table: 50F330
  Dim var_8C As Label
  Dim var_B4 As Label
  loc_ED3E86: Call 0.Method_arg_50 (var_88)
  loc_ED3E98: (var_88).Caption = 
  loc_ED3EB1: (CDbl(0)).Left = 
  loc_ED3EBD: Set var_A0 = Me.TopCtrl1
  loc_ED3EC3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED3ED0: Set var_8C = Me.TopCtrl1
  loc_ED3ED6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED3EEA: Set var_B4 = ((CDbl() + CDbl(var_B0)))
  loc_ED3EF0: var_B4.Top = 
  loc_ED3F0B: Call 0.Method_arg_100 (var_B8)
  loc_ED3F1D: (var_B8).Width = 
  loc_ED3F25: Exit Sub
  loc_ED3F26: CExtInstUnk
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E530A8
  'Data Table: 50F330
  loc_E5307B: Set global_52 = Nothing
  loc_E5308D: Set global_56 = Nothing
  loc_E5309F: Set global_60 = Nothing
  loc_E530A6: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29A5C
  'Data Table: 50F330
  loc_E29A34: On Error Goto loc_E29A54
  loc_E29A4B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29A53: Exit Sub
  loc_E29A54: ' Referenced from: E29A34
  loc_E29A54: Proc_6_60_E62BC4(Shift)
  loc_E29A59: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '128A8B8
  'Data Table: 50F330
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_104 As TextBox
  loc_128A2F0: Call Proc_17_56_F6B3D8()
  loc_128A302: Set var_A8 = (CVar(CLng("16777215")))
  loc_128A314: Set var_A8 = (FrmList.DispID_26)
  loc_128A32C: Set var_BC = (CVar(CLng(FrmList.DispID_A)))
  loc_128A344: Set var_F0 = (CVar(CLng(FrmList.DispID_B)))
  loc_128A362: Set var_104 = var_108(Index)
  loc_128A368: Call 0.Method_TxtGrid_GotFocus0 (CStr(FrmList.DispID_41))
  loc_128A370: var_108.Tag = 
  loc_128A392: Set var_A8 = ()
  loc_128A3A1: var_110 = CLng(FrmList.DispID_B)
  loc_128A3B1: If (var_110 = CLng(3)) Then
  loc_128A3CB:   If (Me.RecordCount > 0) Then
  loc_128A3D9:     Set var_BC = Me.FGPoint
  loc_128A3F1:     Proc_6_137_1193554(Me.DGTaxMast, global_72, Index)
  loc_128A3FF:   End If
  loc_128A440:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_128A443:     Exit Sub
  loc_128A444:   End If
  loc_128A492:   If (CStr(CVar(CLng(var_110(CVar(CLng(var_110(var_BC).Row))(CVar(CLng(3)))).Row))(CVar(CLng(3))).TextMatrix)) <> vbNullString) Then
  loc_128A49B:     Me.MoveFirst
  loc_128A4C4:     Set var_BC = CVar(CLng(().Row))(CVar(CLng(2)))
  loc_128A4CA:     var_CC = var_BC.TextMatrix)
  loc_128A4FF:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_128A52F:     If (Me.EOF = &HFF) Then
  loc_128A538:       Me.MoveFirst
  loc_128A53D:     End If
  loc_128A53D:   End If
  loc_128A540: Else
  loc_128A547:   If (var_110 = CLng(1)) Then
  loc_128A559:     Set var_A8 = var_BC(Index)
  loc_128A55F:     Call 0.Method_TxtGrid_GotFocus0 (&HB, var_130)
  loc_128A567:     var_BC.MaxLength = var_CC
  loc_128A576:   Else
  loc_128A57D:     If (var_110 = CLng(4)) Then
  loc_128A58F:       Set var_A8 = var_BC(Index)
  loc_128A595:       Call 0.Method_TxtGrid_GotFocus0 (7)
  loc_128A59D:       var_BC.MaxLength = 
  loc_128A5AC:     Else
  loc_128A5B3:       If (var_110 = CLng(5)) Then
  loc_128A5CD:         If (Me.RecordCount > 0) Then
  loc_128A5DB:           Set var_BC = Me.FGPoint
  loc_128A5F3:           Proc_6_137_1193554((), global_68)
  loc_128A601:         End If
  loc_128A642:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_128A645:           Exit Sub
  loc_128A646:         End If
  loc_128A694:         If (CStr(CVar(CLng(CVar(CLng(var_BC(Index).Row))(CVar(CLng(5)))(Index).Row))(CVar(CLng(5))).TextMatrix)) <> vbNullString) Then
  loc_128A69D:           Me.MoveFirst
  loc_128A6C6:           Set var_BC = CVar(CLng(().Row))(CVar(CLng(6)))
  loc_128A6CC:           var_CC = var_BC.TextMatrix)
  loc_128A6ED:           var_10C = CStr(var_CC)
  loc_128A701:           Me.Find "Code ='" & var_10C & "'", 0, 1
  loc_128A731:           If (Me.EOF = &HFF) Then
  loc_128A73A:             Me.MoveFirst
  loc_128A73F:           End If
  loc_128A73F:         End If
  loc_128A742:       Else
  loc_128A749:         If Not (var_110 = CLng(8)) Then
  loc_128A753:           If (var_110 = CLng(&HA)) Then
  loc_128A756:           End If
  loc_128A765:           Set var_A8 = var_BC(Index)
  loc_128A76B:           Call 0.Method_TxtGrid_GotFocus0 (&HA, var_130)
  loc_128A773:           var_BC.MaxLength = var_CC
  loc_128A782:         Else
  loc_128A789:           If (var_110 = CLng(9)) Then
  loc_128A79B:             Set var_A8 = var_BC(Index)
  loc_128A7A1:             Call 0.Method_TxtGrid_GotFocus0 (7)
  loc_128A7A9:             var_BC.MaxLength = 
  loc_128A7C2:             ReDim var_134(0 To 1)
  loc_128A7D9:             var_134(0) = "<="
  loc_128A7E8:             var_134(1) = "Between"
  loc_128A7FF:             global_76 = Array(var_134)
  loc_128A80A:             Set var_104 = Me.ListView
  loc_128A825:             Set var_BC = (global_76)
  loc_128A83F:             Set global_92 = Proc_6_66_EFF8FC(var_104, var_BC, Index)
  loc_128A85D:             Set var_A8 = var_BC(Index)
  loc_128A863:             Call 0.Method_TxtGrid_GotFocus0 (var_10C, global_76)
  loc_128A86B:             2 = var_BC.Text
  loc_128A87D:             Set var_F0 = var_104(Index)
  loc_128A883:             Call 0.Method_TxtGrid_GotFocus0 (var_10C)
  loc_128A88B:             var_104.Tag = 
  loc_128A8AD:             Me.FrmList.Top = CDbl(5000)
  loc_128A8B5:           End If
  loc_128A8B5:         End If
  loc_128A8B5:       End If
  loc_128A8B5:     End If
  loc_128A8B5:   End If
  loc_128A8B5: End If
  loc_128A8B5: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1387A0C
  'Data Table: 50F330
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_88 As Variant
  Dim var_AC As Long
  Dim var_94 As TextBox
  Dim var_C4 As Variant
  Dim var_D8 As TextBox
  Dim var_E0 As Variant
  Dim var_F4 As TextBox
  loc_1387160: On Error Goto loc_1387A06
  loc_138716D: If (CLng(Shift) = &H1B) Then
  loc_138717D:   Set var_88 = var_8C(KeyCode)
  loc_1387183:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_138718B:    = var_8C.Tag
  loc_138719D:   Set var_94 = var_98(KeyCode)
  loc_13871A3:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_13871AB:   var_98.Text = 
  loc_13871C7:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13871CC:   Call Proc_17_56_F6B3D8(arg_14)
  loc_13871D5:   Set var_88 = ()
  loc_13871F2:   Set var_88 = var_8C(KeyCode)
  loc_13871F8:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1387200:   var_8C.Visible = ListView.DispID_8001
  loc_138720C:   Exit Sub
  loc_138720D: End If
  loc_1387230: If (CLng(().MousePointer) = CLng(3)) Then
  loc_138723F:   Set var_8C = var_94(0)
  loc_1387245:   Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_138724D:   var_AC = var_94.Left
  loc_138725F:    = (var_B0).Left
  loc_138726B:   var_C4 = CVar((var_B0 + var_B4)) 'Single
  loc_138727A:   Me.DGTaxMast.Left = var_C4
  loc_1387296:   Set var_8C = var_94(0)
  loc_138729C:   Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_13872A4:    = var_94.Top
  loc_13872B5:   Set var_98 = var_D8(0)
  loc_13872BB:   Call 0.Method_TxtGrid_KeyDown0 (var_DC)
  loc_13872C3:    = var_D8.Height
  loc_13872D5:    = (var_B0).Top
  loc_13872E5:   var_C4 = CVar(((var_B0 + var_B4) + var_DC)) 'Single
  loc_13872F4:   Me.DGTaxMast.Top = var_C4
  loc_138730C:   Set var_D8 = Me.DGTaxMast
  loc_1387330:   Set var_94 = Nothing
  loc_138735E:   Proc_6_69_134A198(var_D8, (), KeyCode, global_72, Shift)
  loc_138737E:   If (CLng(Shift) = &HD) Then
  loc_1387387:     Call Proc_17_59_1354984(KeyCode, var_E2, &HFF, 1)
  loc_1387392:     If (var_E2 = &HFF) Then
  loc_13873CB:       Set var_8C = (0)
  loc_13873DA:       Proc_6_62_1253BC4(Me.FGPoint(Me.FGPoint(var_94)), var_8C, KeyCode, Shift, global_104)
  loc_13873EA:     End If
  loc_13873EA:   End If
  loc_13873ED: Else
  loc_13873F4:   If (var_AC = CLng(1)) Then
  loc_1387406:     Set var_88 = var_8C(KeyCode)
  loc_138740C:     Call 0.Method_TxtGrid_KeyDown0 (&HB, CByte(6), 0)
  loc_1387414:     var_8C.MaxLength = 0
  loc_138742A:     If (CLng(Shift) = &HD) Then
  loc_1387433:       Call Proc_17_59_1354984(KeyCode, var_E2)
  loc_138743E:       If (var_E2 = &HFF) Then
  loc_1387477:         Set var_8C = ()
  loc_1387486:         Proc_6_62_1253BC4((0), var_8C, KeyCode, Shift, global_104)
  loc_1387496:       End If
  loc_1387496:     End If
  loc_1387499:   Else
  loc_13874A0:     If (var_AC = CLng(4)) Then
  loc_13874B2:       Set var_88 = var_8C(KeyCode)
  loc_13874B8:       Call 0.Method_TxtGrid_KeyDown0 (7, CByte(6), 0)
  loc_13874C0:       var_8C.MaxLength = 0
  loc_13874D6:       If (CLng(Shift) = &HD) Then
  loc_13874DF:         Call Proc_17_59_1354984(KeyCode, var_E2)
  loc_13874EA:         If (var_E2 = &HFF) Then
  loc_13874F1:           Set var_94 = (0)
  loc_1387532:           Proc_6_62_1253BC4(var_94, (), KeyCode, Shift, global_104)
  loc_1387542:         End If
  loc_1387542:       End If
  loc_1387545:     Else
  loc_138754C:       If (var_AC = CLng(5)) Then
  loc_138755B:         Set var_8C = var_94(0)
  loc_1387561:         Call 0.Method_TxtGrid_KeyDown0 (var_B4, CByte(6), 0)
  loc_1387569:         0 = var_94.Left
  loc_138757B:          = 0(var_B0).Left
  loc_1387587:         var_C4 = CVar((var_B0 + var_B4)) 'Single
  loc_1387596:         (var_C4).Left = 
  loc_13875B2:         Set var_8C = var_94(0)
  loc_13875B8:         Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_13875C0:          = var_94.Top
  loc_13875D1:         Set var_98 = var_D8(0)
  loc_13875D7:         Call 0.Method_TxtGrid_KeyDown0 (var_DC)
  loc_13875DF:          = var_D8.Height
  loc_13875F1:          = (var_B0).Top
  loc_1387601:         var_C4 = CVar(((var_B0 + var_B4) + var_DC)) 'Single
  loc_1387610:         (var_C4).Top = 
  loc_138762F:         Set var_E0 = ()
  loc_138764C:         Set var_94 = Nothing
  loc_138767A:         Proc_6_69_134A198((), var_E0, KeyCode, global_68, Shift)
  loc_138769A:         If (CLng(Shift) = &HD) Then
  loc_13876A3:           Call Proc_17_59_1354984(KeyCode, var_E2, &HFF, 1)
  loc_13876AE:           If (var_E2 = &HFF) Then
  loc_13876E7:             Set var_8C = (0)
  loc_13876F6:             Proc_6_62_1253BC4(Me.FGPoint(Me.FGPoint(var_94)), var_8C, KeyCode, Shift, global_104)
  loc_1387706:           End If
  loc_1387706:         End If
  loc_1387709:       Else
  loc_1387710:         If (var_AC = CLng(8)) Then
  loc_1387722:           Set var_88 = var_8C(KeyCode)
  loc_1387728:           Call 0.Method_TxtGrid_KeyDown0 (&HA, CByte(6), 0)
  loc_1387730:           var_8C.MaxLength = 0
  loc_1387746:           If (CLng(Shift) = &HD) Then
  loc_138774F:             Call Proc_17_59_1354984(KeyCode, var_E2)
  loc_138775A:             If (var_E2 = &HFF) Then
  loc_1387793:               Set var_8C = ()
  loc_13877A2:               Proc_6_62_1253BC4((0), var_8C, KeyCode, Shift, global_104)
  loc_13877B2:             End If
  loc_13877B2:           End If
  loc_13877B5:         Else
  loc_13877BC:           If (var_AC = CLng(&HA)) Then
  loc_13877CE:             Set var_88 = var_8C(KeyCode)
  loc_13877D4:             Call 0.Method_TxtGrid_KeyDown0 (&HA, CByte(6), 0)
  loc_13877DC:             var_8C.MaxLength = 0
  loc_13877F2:             If (CLng(Shift) = &HD) Then
  loc_13877FB:               Call Proc_17_59_1354984(KeyCode, var_E2)
  loc_1387806:               If (var_E2 = &HFF) Then
  loc_1387814:                 Set var_98 = ()
  loc_138783F:                 Set var_8C = var_98
  loc_138784E:                 Proc_6_62_1253BC4((0), var_8C, KeyCode, Shift, global_104)
  loc_138785E:               End If
  loc_138785E:             End If
  loc_1387861:           Else
  loc_1387868:             If (var_AC = CLng(9)) Then
  loc_138787A:               Set var_88 = var_8C(KeyCode)
  loc_1387880:               Call 0.Method_TxtGrid_KeyDown0 (7, CByte(9), 0)
  loc_1387888:               var_8C.MaxLength = 0
  loc_13878B6:               Set var_88 = var_8C(KeyCode)
  loc_13878BC:               Call 0.Method_TxtGrid_KeyDown0 (var_B0)
  loc_13878C4:                = var_8C.Left
  loc_13878D6:               Set var_94 = var_98(KeyCode)
  loc_13878DC:               Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_13878E4:                = var_98.Top
  loc_13878F6:               Set var_D8 = var_E0(KeyCode)
  loc_13878FC:               Call 0.Method_TxtGrid_KeyDown0 (var_DC)
  loc_1387904:                = var_E0.Height
  loc_1387916:               Set var_EC = var_F4(KeyCode)
  loc_138791C:               Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_1387924:                = var_F4.Width
  loc_138796C:               Proc_6_65_119423C(Me.FrmList, Me.ListView, (0), KeyCode, Shift)
  loc_138799A:               If (CLng(Shift) = &HD) Then
  loc_13879A3:                 Call Proc_17_59_1354984(KeyCode, var_E2, arg_14, CInt(var_B0))
  loc_13879AE:                 If (var_E2 = &HFF) Then
  loc_13879B5:                   Set var_94 = CInt(var_F8)(CInt((var_B4 + var_DC)))
  loc_13879F6:                   Proc_6_62_1253BC4(var_94, (1560), KeyCode, Shift, global_104)
  loc_1387A06:                 End If
  loc_1387A06:               End If
  loc_1387A06:             End If
  loc_1387A06:           End If
  loc_1387A06:         End If
  loc_1387A06:       End If
  loc_1387A06:       ' Referenced from: 1387160
  loc_1387A06:     End If
  loc_1387A06:   End If
  loc_1387A06: End If
  loc_1387A06: Proc_6_60_E62BC4(CByte(9), 0)
  loc_1387A0B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FB4148
  'Data Table: 50F330
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_FB3FA7: Proc_6_58_E054C0(arg_10)
  loc_FB3FAF: var_86 = KeyAscii
  loc_FB3FB8: If (var_86 = 0) Then
  loc_FB3FCE:   var_A0 = CLng((var_86).Col)
  loc_FB3FDE:   If (var_A0 = CLng(3)) Then
  loc_FB3FFD:     If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_FB400F:       var_A4 = "Name"
  loc_FB402A:       Proc_6_89_146F1AC((var_A0), KeyAscii, global_72)
  loc_FB4044:       Set var_AC = Me.FGPoint
  loc_FB405C:       Proc_6_138_106D6F8(Me.DGTaxMast, global_72, KeyAscii, var_AC)
  loc_FB406A:     End If
  loc_FB406D:   Else
  loc_FB4074:     If (var_A0 = CLng(4)) Then
  loc_FB4081:       Set var_8C = var_AC(KeyAscii)
  loc_FB4087:       Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A4)
  loc_FB40A2:       Proc_6_42_129A86C(var_AC, arg_10, 2)
  loc_FB40B1:     Else
  loc_FB40B8:       If (var_A0 = CLng(5)) Then
  loc_FB40D7:         If (CBool(0(4).Visible) = &HFF) Then
  loc_FB4104:           Proc_6_89_146F1AC((), KeyAscii, global_68)
  loc_FB411E:           Set var_AC = Me.FGPoint
  loc_FB4136:           Proc_6_138_106D6F8("Name"(arg_10), global_68, KeyAscii)
  loc_FB4144:         End If
  loc_FB4144:       End If
  loc_FB4144:     End If
  loc_FB4144:   End If
  loc_FB4144: End If
  loc_FB4144: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FCD7F4
  'Data Table: 50F330
  Dim var_9C As Long
  loc_FCD638: On Error Goto loc_FCD7EC
  loc_FCD64E: var_9C = CLng(().MousePointer)
  loc_FCD65E: If (var_9C = CLng(3)) Then
  loc_FCD684:   If ((Shift <> &HD) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_FCD692:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCD6A6:     var_A4 = "Name"
  loc_FCD6C1:     Proc_6_89_146F1AC(var_9C(0), KeyCode, global_72)
  loc_FCD6D0:   End If
  loc_FCD6D3: Else
  loc_FCD6DA:   If (var_9C = CLng(5)) Then
  loc_FCD700:     If (var_A4 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_FCD70E:       Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCD722:       var_A4 = "Name"
  loc_FCD73D:       Proc_6_89_146F1AC(&HFF(0), KeyCode, global_68)
  loc_FCD74C:     End If
  loc_FCD74F:   Else
  loc_FCD756:     If (var_9C = CLng(7)) Then
  loc_FCD77B:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_FCD78C:         Call TxtGrid_KeyDown(KeyCode, global_96)
  loc_FCD791:       End If
  loc_FCD7AC:       If (Me.FrmList.Visible = &HFF) Then
  loc_FCD7DB:         Proc_6_64_F28E58(Me.ListView, Shift(0), KeyCode, Shift)
  loc_FCD7EB:       End If
  loc_FCD7EB:     End If
  loc_FCD7EB:   End If
  loc_FCD7EB: End If
  loc_FCD7EB: Exit Sub
  loc_FCD7EC: ' Referenced from: FCD638
  loc_FCD7EC: Proc_6_60_E62BC4(global_92, var_A4)
  loc_FCD7F1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E59390
  'Data Table: 50F330
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E59353: var_86 = Cancel
  loc_E5935C: If (var_86 = 0) Then
  loc_E59365:   Call Proc_17_59_1354984(Cancel, var_88)
  loc_E5936E:   arg_10 = Not(var_88)
  loc_E59371: End If
  loc_E5938D: Exit Sub
  loc_E5938E: Set var_4800 = CLng(var_86(arg_10).MousePointer)
End Sub

Private Sub ListView_UnknownEvent_13 'F5D35C
  'Data Table: 50F330
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_F5D27E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5D285:   Set var_A8 = Me.ListView
  loc_F5D29B:   var_CC = Val(CStr(var_A8.Tag))
  loc_F5D2CF:   Set var_C0 = var_C4(CInt(var_CC))
  loc_F5D2D5:   Call 0.Method_ListView_UnknownEvent_130 (Me.ListView.SelectedItem.Text)
  loc_F5D2DD:   var_C4.Text = var_CC
  loc_F5D2FD: End If
  loc_F5D309: Me.FrmList.Visible = False
  loc_F5D32B: var_CC = Val(CStr(Me.ListView.Tag))
  loc_F5D339: Set var_9C = var_A8(CInt(var_CC))
  loc_F5D33F: Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_F5D347: var_A8.SetFocus
  loc_F5D35B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EADB68
  'Data Table: 50F330
  loc_EADAF0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EADAF3:   Call DGHelp_UnknownEvent_9()
  loc_EADAF8: End If
  loc_EADB14: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_EADB17:   Call DGLedgerAc_UnknownEvent_9()
  loc_EADB1C: End If
  loc_EADB38: If (CBool(().Visible) = &HFF) Then
  loc_EADB3B:   Call DGBank_UnknownEvent_9()
  loc_EADB40: End If
  loc_EADB5C: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_EADB5F:   Call DGTaxMast_UnknownEvent_9()
  loc_EADB64: End If
  loc_EADB64: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBED84
  'Data Table: 50F330
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBECFA: On Error Goto loc_EBED3F
  loc_EBED03: Me.MoveFirst
  loc_EBED1D: var_8C = "code='" & MyValue
  loc_EBED2D: Me.Find var_8C & "'", 0, 1
  loc_EBED39: Call Proc_17_53_14A8A64(var_A0)
  loc_EBED3E: Exit Sub
  loc_EBED3F: ' Referenced from: EBECFA
  loc_EBED47: Set var_A4 = Err()
  loc_EBED4D: Call 0.Method_arg_2C (var_8C)
  loc_EBED6E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBED81: Exit Sub
  loc_EBED82: Exit Sub
End Sub

Public Sub Proc_17_49_1215260
  'Data Table: 50F330
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_D8 As String
  Dim unk_50F33A As Connection15
  Dim var_86 As Integer
  Dim var_8C As Recordset15
  Dim var_94 As Fields15
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_104 As Frame
  Dim var_90 As Recordset15
  loc_1214DB2: Set var_94 = Me.ChkOutLet
  loc_1214DB8: Call 0.Method_Proc_17_49_12152600 (0, var_98)
  loc_1214DC0: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1214DD6: Set var_94 = Me.ChkBanq
  loc_1214DDC: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69(0)
  loc_1214DF0: Set var_94 = Me.ChkOutLet
  loc_1214DF6: Call 0.Method_Proc_17_49_1215260C (var_BA, var_86)
  loc_1214E04: For var_BE =  To (var_BA - 1): 1 = var_BE 'Integer
  loc_1214E14:   Set var_94 = Me.ChkOutLet
  loc_1214E1A:   Call 0.Method_Proc_17_49_12152600 (var_86)
  loc_1214E2B:   Me.ChkOutLet.Unload var_98
  loc_1214E3A: Next var_BE 'Integer
  loc_1214E5D: Set var_94 = var_98(CInt(0))
  loc_1214E63: Call 0.Method_Proc_17_49_12152600 (var_C8, "Select D.Name,D.Code,Case When IsNull(DP.PayCode,'')<>'' Then 1 Else 0 End Value from Depart D Left Join (Select RestCode,PayCode,LogSite_Code From DepartPay Where PayCode='", var_E8)
  loc_1214E6B: -1 = var_98.Tag
  loc_1214E89: var_D8 = var_C4 & var_C8 & "' And LogSite_Code='" & MemVar_1F92078 & "') DP On D.Code=DP.RestCode And D.LogSite_Code=DP.LogSite_Code Where D.RestType In ('Outlet','FOM','Room Service') order by D.RestType"
  loc_1214E92: unk_50F33A.Execute var_D8, , 
  loc_1214E9D: Set var_8C = var_C4
  loc_1214EBB: var_86 = 0
  loc_1214ED2: If (var_8C.RecordCount > 0) Then
  loc_1214EE2:   Set var_94 = Me.ChkOutLet
  loc_1214EE8:   Call 0.Method_Proc_17_49_12152600 (0, var_98)
  loc_1214EF0:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1214EFC:   ' Referenced from: 121517A
  loc_1214EFC: End If
  loc_1214F0B: If Not(var_8C.EOF) Then
  loc_1214F3C:   Set var_C4 = Me.ChkOutLet
  loc_1214F42:   Call 0.Method_Proc_17_49_12152600 (var_86, var_F0)
  loc_1214F4A:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(var_8C.Fields.Item("Name")))
  loc_1214F86:   var_100 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_1214F94:   Set var_C4 = Me.ChkOutLet
  loc_1214F9A:   Call 0.Method_Proc_17_49_12152600 (var_86, var_F0)
  loc_1214FA2:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_100)
  loc_1214FD0:   var_98 = var_8C.Fields.Item("Value")
  loc_1214FD8:   var_E8 = CVar(var_98) 'Address
  loc_1214FE7:   Set var_C4 = Me.ChkOutLet
  loc_1214FED:   Call 0.Method_Proc_17_49_12152600 (var_86, var_F0)
  loc_1214FF5:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_69(var_E8)
  loc_1215009:   var_8C.MoveNext
  loc_1215014:   var_86 = (var_86 + 1)
  loc_1215028:   If (var_8C.EOF = 0) Then
  loc_1215035:     Set var_94 = Me.ChkOutLet
  loc_121503B:     Call 0.Method_Proc_17_49_12152600 (var_86, var_98)
  loc_121504C:     Me.ChkOutLet.Load var_98
  loc_1215066:     Set var_94 = Me.ChkOutLet
  loc_121506C:     Call 0.Method_Proc_17_49_12152600 (var_86, var_98, True)
  loc_1215074:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_86)
  loc_121508D:     Set var_C4 = Me.ChkOutLet
  loc_1215093:     Call 0.Method_Proc_17_49_12152600 ((var_86 - 1), var_F0)
  loc_121509B:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_86)
  loc_12150B1:     Set var_94 = Me.ChkOutLet
  loc_12150B7:     Call 0.Method_Proc_17_49_12152600 ((var_86 - 1))
  loc_12150BF:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_98)
  loc_12150D2:     var_A8 = CVar(((CDbl() + CDbl(var_100)) + CDbl(&H2D))) 'Single
  loc_12150E1:     Set var_104 = Me.ChkOutLet
  loc_12150E7:     Call 0.Method_Proc_17_49_12152600 (var_86, var_108)
  loc_12150EF:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004(True)
  loc_1215114:     Set var_C4 = Me.ChkOutLet
  loc_121511A:     Call 0.Method_Proc_17_49_12152600 (var_86)
  loc_1215122:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_F0)
  loc_1215135:     Set var_94 = Me.ChkOutLet
  loc_121513B:     Call 0.Method_Proc_17_49_12152600 (var_86)
  loc_1215143:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_98)
  loc_1215161:     Me.FrDepart.Height = ((CDbl() + CDbl(var_100)) + CDbl(&H64))
  loc_121517A:   End If
  loc_121517A:   GoTo loc_1214EFC
  loc_121517D: End If
  loc_121519B: Set var_94 = var_98(CInt(0))
  loc_12151A1: Call 0.Method_Proc_17_49_12152600 (var_C8, "select Restcode,Paycode,Case When IsNull(PayCode,'')<>'' Then 1 Else 0 End Value from DepartPay where restcode='banq'and PayCode='", var_E8)
  loc_12151A9: -1 = var_98.Tag
  loc_12151C2: unk_50F33A.Execute var_C4 & var_C8 & "'", , 
  loc_12151CD: Set var_90 = var_C4
  loc_12151F9: If (var_90.RecordCount > 0) Then
  loc_1215204:   Set var_94 = Me.ChkBanq
  loc_121520A:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010007(True)
  loc_121523A:   Set var_C4 = Me.ChkBanq
  loc_1215240:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69(CVar(var_90.Fields.Item("Value")))
  loc_121524F: End If
  loc_1215254: Set var_8C = Nothing
  loc_121525C: Set var_90 = Nothing
  loc_121525F: Exit Sub
End Sub

Public Sub Proc_17_50_105CD14(arg_C) '105CD14
  'Data Table: 50F330
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_50F33A As Connection15
  Dim var_D8 As String
  Dim var_108 As Variant
  Dim var_E8 As Variant
  Dim var_168 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As Variant
  loc_105CB06: unk_50F33A.Execute "Delete From DepartPay Where PayCode='" & arg_C & "' And LogSite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_105CB2E: Call 0.Method_Proc_17_50_105CD148 (var_BE, var_86)
  loc_105CB39: For var_C2 = Me.ChkOutLet To var_BE: 0 = var_C2 'Integer
  loc_105CB4F:   Call 0.Method_Proc_17_50_105CD140 (var_86, var_C8)
  loc_105CB57:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_69(Me.ChkOutLet)
  loc_105CB6C:   If (CInt() = 1) Then
  loc_105CB89:     Set var_BC = Me.ChkOutLet
  loc_105CB8F:     Call 0.Method_Proc_17_50_105CD140 (var_86, var_C8, "Insert Into DepartPay(RestCode,PayCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('")
  loc_105CB97:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_18C)
  loc_105CB9F:     var_8C = CStr(-1)
  loc_105CBCD:     var_D8 = var_190 & "Delete From DepartPay Where PayCode='" & arg_C & "','" & arg_C & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_105CBDC:     var_E8 = CVar(Proc_6_14_EF349C(CVar(var_D8 & "',"))) 'String
  loc_105CBE2:     Proc_183_8_EB0AA4(var_F8)
  loc_105CC06:     var_168 = var_E8 & var_F8 & ",'A','" & CVar(MemVar_1F92078) & "')" 
  loc_105CC14:     unk_50F33A.Execute CStr(var_168), , 
  loc_105CC4C:   End If
  loc_105CC4F: Next var_C2 'Integer
  loc_105CC5E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69()
  loc_105CC6F: If (CInt() = 1) Then
  loc_105CC94:   var_94 = "Insert Into DepartPay(RestCode,PayCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('BANQ','" & arg_C & "','" & MemVar_1F92070
  loc_105CCB7:   Proc_183_8_EB0AA4(var_E8, CVar(Proc_6_14_EF349C(CVar(var_94 & "','" & MemVar_1F920C8 & "',"), var_168)))
  loc_105CCBF:   var_108 = -1 & var_E8 
  loc_105CCE9:   unk_50F33A.Execute CStr(CVar(var_D8 & "',") & ",'A','" & CVar(MemVar_1F92078) & "')"), Me.ChkBanq, 
  loc_105CD13: End If
  loc_105CD13: Exit Sub
End Sub

Public Sub Proc_17_51_E8A210(arg_C) 'E8A210
  'Data Table: 50F330
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E8A1AA: Set var_8C = var_86(var_8E)
  loc_E8A1B0: Call 0.Method_Proc_17_51_E8A210C (CByte(0))
  loc_E8A1C0: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E8A1D6:   Set var_8C = var_98(CInt(var_86))
  loc_E8A1DC:   Call 0.Method_Proc_17_51_E8A2100 (arg_C)
  loc_E8A1E4:   var_98.Enabled = 
  loc_E8A1F3: Next var_92 'Byte
  loc_E8A206: Me.FrDepart.Enabled = arg_C
  loc_E8A20E: Exit Sub
End Sub

Public Sub Proc_17_52_F919B4
  'Data Table: 50F330
  Dim var_98 As TextBox
  loc_F91856: Set var_8C = var_86(var_8E)
  loc_F9185C: Call 0.Method_Proc_17_52_F919B4C (CByte(0))
  loc_F9186C: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F91882:   Set var_8C = var_98(CInt(var_86))
  loc_F91888:   Call 0.Method_Proc_17_52_F919B40 (vbNullString)
  loc_F91890:   var_98.Text = 
  loc_F918AC:   Set var_8C = var_98(CInt(var_86))
  loc_F918B2:   Call 0.Method_Proc_17_52_F919B40 (vbNullString)
  loc_F918BA:   var_98.Tag = 
  loc_F918C9: Next var_92 'Byte
  loc_F918DC: Set var_8C = (1)
  loc_F918E2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_F918EE: Set var_8C = ()
  loc_F918F4: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_F9190D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000()
  loc_F91930: Set var_8C = (1)
  loc_F91936: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6()
  loc_F9194C: Set var_8C = Me.ChkOutLet
  loc_F91952: Call 0.Method_Proc_17_52_F919B48 (var_8E, var_86)
  loc_F9195F: For var_DC =  To CByte(var_8E): CByte(0) = var_DC 'Byte
  loc_F91978:   Set var_8C = Me.ChkOutLet
  loc_F9197E:   Call 0.Method_Proc_17_52_F919B40 (CInt(var_86), (CVar(CStr(CLng()))))
  loc_F91986:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_69(0)
  loc_F91995: Next var_DC 'Byte
  loc_F919A5: Set var_8C = Me.ChkBanq
  loc_F919AB: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69(0)
  loc_F919B3: Exit Sub
End Sub

Public Sub Proc_17_53_14A8A64
  'Data Table: 50F330
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_50F33A As Connection15
  Dim var_8C As Recordset15
  Dim var_120 As Variant
  Dim var_138 As Variant
  Dim var_10C As Variant
  Dim var_124 As TextBox
  loc_14A7DC4: On Error Goto loc_14A8A20
  loc_14A7DCD: Proc_183_45_E5C118(global_52)
  loc_14A7DE9: If (Me.RecordCount > 0) Then
  loc_14A7E42:   unk_50F33A.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_14A7E4D:   Set var_8C = var_120
  loc_14A7EA1:   var_120 = var_8C.Fields
  loc_14A7F0A:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14A7F4F:   (CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name")), var_188)))).Caption = 
  loc_14A7FC9:   var_124 = var_8C.Fields.Item("U_AE")
  loc_14A802A:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124)) = "E"), "Last Update : ", "entdt : "))
  loc_14A806F:   (CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_EntDt")))))).Caption = 
  loc_14A80A7: End If
  loc_14A80BE: If (Me.RecordCount <= 0) Then
  loc_14A80C1:   Call Proc_17_52_F919B4()
  loc_14A80C9: Else
  loc_14A80FD:   global_100 = CStr(Me.Fields.Item("Name").Value)
  loc_14A814A:   Set var_120 = var_124(CInt(0))
  loc_14A8150:   Call 0.Method_Proc_17_53_14A8A640 (CStr(Me.Fields.Item("Name").Value))
  loc_14A8158:   var_124.Text = 
  loc_14A81AA:   Set var_120 = var_124(CInt(0))
  loc_14A81B0:   Call 0.Method_Proc_17_53_14A8A640 (CStr(Me.Fields.Item("Code").Value))
  loc_14A81B8:   var_124.Tag = 
  loc_14A820A:   Set var_120 = var_124(CInt(1))
  loc_14A8210:   Call 0.Method_Proc_17_53_14A8A640 (CStr(Me.Fields.Item("ShortName").Value))
  loc_14A8218:   var_124.Text = 
  loc_14A8267:   Set var_120 = var_124(CInt(2))
  loc_14A826D:   Call 0.Method_Proc_17_53_14A8A640 (Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerName"))))
  loc_14A8275:   var_124.Text = 
  loc_14A82C2:   Set var_120 = var_124(CInt(2))
  loc_14A82C8:   Call 0.Method_Proc_17_53_14A8A640 (Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerCode"))))
  loc_14A82D0:   var_124.Tag = 
  loc_14A831D:   Set var_120 = var_124(CInt(3))
  loc_14A8323:   Call 0.Method_Proc_17_53_14A8A640 (Proc_6_38_E68A98(CVar(Me.Fields.Item("CCARD"))))
  loc_14A832B:   var_124.Text = 
  loc_14A8359:   var_A8 = Me.Fields.Item("ACPosting")
  loc_14A836A:   var_FC = Proc_6_38_E68A98(CVar(var_A8))
  loc_14A8378:   Set var_120 = var_124(CInt(6))
  loc_14A837E:   Call 0.Method_Proc_17_53_14A8A640 (var_FC)
  loc_14A8386:   var_124.Text = 
  loc_14A83A8:   Set var_94 = var_A8(CInt(3))
  loc_14A83AE:   Call 0.Method_Proc_17_53_14A8A640 (var_FC)
  loc_14A83B6:    = var_A8.Text
  loc_14A83CD:   If (var_FC = "Credit Card") Then
  loc_14A83DC:     (&HFF).Visible = 
  loc_14A83E7:   Else
  loc_14A83F3:     (0).Visible = 
  loc_14A83FB:   End If
  loc_14A8435:   var_11C = "System Defined"
  loc_14A8462:   Set var_120 = (CStr(IIf((Me.Fields.Item("SysYN").Value = "Y"), var_11C, "User Defined")))
  loc_14A8468:   var_120.Caption = 
  loc_14A8493:   Set var_94 = (1)
  loc_14A8499:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_14A84A5:   Set var_94 = ()
  loc_14A84AB:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_14A84BE:   Set var_A8 = (CVar(CStr(CLng())))
  loc_14A84C4:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000()
  loc_14A84E7:   Set var_94 = (1)
  loc_14A84ED:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6()
  loc_14A8502:   Set var_94 = (1)
  loc_14A8508:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_14A851D:   var_C8 = "Select SubGroup.Name,TaxStru.Name as Tstru,TaxStru,CommAc,CommPer,AppDate,CreditCardHistory.Limit,CreditCardHistory.CompOperator,CreditCardHistory.Limit1 from (CreditCardHistory inner join SubGroup on SubGroup.SubCode=CreditCardHistory.CommAc) inner join TaxStru on Taxstru.Code=CreditCardHistory.TaxStru  where Sno=1 and Revcode='"
  loc_14A855C:   var_FC = CStr(var_C8 & Me.Fields.Item("Code").Value & "'")
  loc_14A8566:   unk_50F33A.Execute var_FC, var_11C, -1
  loc_14A8571:   Set var_88 = var_120
  loc_14A85A2:   If (Me.Recordset15.RecordCount > 0) Then
  loc_14A85A5:     ' Referenced from:   14A8A0F
  loc_14A85B7:     If Not(Me.Recordset15.EOF) Then
  loc_14A85BE:       Set var_1E8 = (var_120)
  loc_14A85C4:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_14A85DE:       Set var_94 = CVar(CLng())(CVar(CLng(0)))
  loc_14A85E4:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_14A85F6:       LateIdCallSt
  loc_14A860D:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A8616:       var_C8 = CVar(CLng(CVar(CStr(CLng())))) 'Long
  loc_14A861E:       var_10C = CVar(CLng(1)) 'Long
  loc_14A8658:       LateIdCallSt
  loc_14A8673:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A867C:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("AppDate").Value)))) 'Long
  loc_14A8684:       var_10C = CVar(CLng(3)) 'Long
  loc_14A86BE:       LateIdCallSt
  loc_14A86D9:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A86E2:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("TStru").Value)))) 'Long
  loc_14A86EA:       var_10C = CVar(CLng(4)) 'Long
  loc_14A8724:       LateIdCallSt
  loc_14A873F:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A8748:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("CommPer").Value)))) 'Long
  loc_14A8750:       var_10C = CVar(CLng(2)) 'Long
  loc_14A878A:       LateIdCallSt
  loc_14A87A5:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A87AE:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("TaxStru").Value)))) 'Long
  loc_14A87B6:       var_10C = CVar(CLng(6)) 'Long
  loc_14A87F0:       LateIdCallSt
  loc_14A880B:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A8814:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("CommAc").Value)))) 'Long
  loc_14A881C:       var_10C = CVar(CLng(5)) 'Long
  loc_14A8856:       LateIdCallSt
  loc_14A8890:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A88D5:       LateIdCallSt
  loc_14A88F0:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A8901:       var_10C = CVar(CLng(9)) 'Long
  loc_14A8931:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompOperator")), var_10C, CVar(CLng(CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("Limit")), "0.00"))))), 1, 1, CVar(CLng(8)), CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))))) 'String
  loc_14A8938:       LateIdCallSt
  loc_14A896E:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A8977:       var_E8 = CVar(CLng(var_F8)) 'Long
  loc_14A897F:       var_138 = CVar(CLng(&HA)) 'Long
  loc_14A898E:       var_C8 = "0.00"
  loc_14A89A3:       var_F8 = Format(CVar(Me.Recordset15.Fields.Item("Limit1")), var_C8)
  loc_14A89B3:       LateIdCallSt
  loc_14A89D4:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000(vbNullString)
  loc_14A89DF:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14A89EE:       var_A4 = CVar((CLng(CVar(CStr(var_F8))) + 1)) 'Long
  loc_14A89F6:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(vbNullString)
  loc_14A8A00:       Set var_1E8 = Nothing 
  loc_14A8A0A:       Me.Recordset15.MoveNext
  loc_14A8A0F:       GoTo loc_14A85A5
  loc_14A8A12:     End If
  loc_14A8A12:   End If
  loc_14A8A12: End If
  loc_14A8A17: Set var_88 = Nothing
  loc_14A8A1A: Call Proc_17_49_1215260(1, 1, var_138, var_E8, var_10C)
  loc_14A8A1F: Exit Sub
  loc_14A8A20: ' Referenced from: 14A7DC4
  loc_14A8A28: Set var_94 = Err()
  loc_14A8A2E: Call 0.Method_arg_2C (var_FC, var_C8, var_10C)
  loc_14A8A4F: MsgBox(CVar(var_FC), &H40, "Information", var_F8, var_11C)
  loc_14A8A62: Exit Sub
End Sub

Public Sub Proc_17_54_1070178
  'Data Table: 50F330
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim var_AC As String
  Dim unk_50F33A As Connection15
  Dim var_C0 As Recordset15
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  loc_106FF18: Set var_8C = Me.TopCtrl1
  loc_106FF1E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_106FF26: var_A0 = CStr()
  loc_106FF37: If (var_A0 = "Add") Then
  loc_106FF67:   Set var_8C = var_A4(CInt(1))
  loc_106FF6D:   Call 0.Method_Proc_17_54_10701780 (var_A0, "Select Count(*) From RevMast Where ShortName='", var_9C, -1, var_C0)
  loc_106FF75:   var_C4 = var_A4.Text
  loc_106FF85:   var_AC = 0 & var_A0 & "'"
  loc_106FF8E:   unk_50F33A.Execute var_AC, var_D8, var_E8
  loc_106FF96:    = var_C0.Fields
  loc_106FF9E:    = var_C4.Item()
  loc_106FFA6:    = var_D8.Value
  loc_106FFD3:   If (var_E8 > 0) Then
  loc_106FFE1:     var_E8 = "Information"
  loc_106FFF1:     var_9C = "Duplicate Short Name"
  loc_106FFF7:     MsgBox(var_9C, &H40, var_E8, var_108, var_128)
  loc_1070012:     Set var_8C = var_A4(CInt(1))
  loc_1070018:     Call 0.Method_Proc_17_54_10701780 ()
  loc_1070020:     var_A4.SetFocus
  loc_1070031:     Proc_17_54_1070178 = &HFF
  loc_1070037:   End If
  loc_107003A: Else
  loc_1070067:   Set var_8C = var_A4(CInt(1))
  loc_107006D:   Call 0.Method_Proc_17_54_10701780 (var_A0, "Select Count(*) From RevMast Where ShortName='", var_9C, -1, var_D8)
  loc_1070096:   Set var_C0 = var_C4(CInt(0))
  loc_107009C:   Call 0.Method_Proc_17_54_10701780 (var_AC, 0 & var_A0 & "' And Code<>'")
  loc_10700BD:   unk_50F33A.Execute var_E8 & var_AC & "'", , 
  loc_10700C5:    = var_D8.Fields
  loc_10700CD:    = var_A4.Text.Item()
  loc_10700D5:    = var_C4.Tag.Value
  loc_107010C:   If (var_E8 > 0) Then
  loc_1070130:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_107014B:     Set var_8C = var_A4(CInt(1))
  loc_1070151:     Call 0.Method_Proc_17_54_10701780 ()
  loc_1070159:     var_A4.SetFocus
  loc_107016A:     Proc_17_54_1070178 = &HFF
  loc_1070170:   End If
  loc_1070170: End If
  loc_1070170: Proc_17_54_1070178 = 
End Sub

Public Sub Proc_17_55_10B65E4
  'Data Table: 50F330
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_50F33A As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_114 As Variant
  Dim var_A0 As Variant
  Dim var_134 As Variant
  Dim var_AC As String
  loc_10B6357: If (Me.RecordCount = 0) Then
  loc_10B635A:   Proc_17_55_10B65E4 = 
  loc_10B6360: End If
  loc_10B6364: Set var_90 = Me.TopCtrl1
  loc_10B636A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10B6383: If (CStr() = "Add") Then
  loc_10B63C1:   Set var_90 = var_A8(CInt(0))
  loc_10B63C7:   Call 0.Method_Proc_17_55_10B65E40 (var_AC, "Select Count(*) From REVMAST Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1, var_CC)
  loc_10B63CF:   var_D0 = var_A8.Text
  loc_10B63E8:   unk_50F33A.Execute 0 & var_AC & "'", var_E4, var_F4
  loc_10B63F0:    = var_CC.Fields
  loc_10B63F8:    = var_D0.Item()
  loc_10B6400:    = var_E4.Value
  loc_10B6431:   If (var_F4 > 0) Then
  loc_10B643F:     var_F4 = "Information"
  loc_10B6455:     MsgBox("Duplicate  Name", &H40, var_F4, var_114, var_134)
  loc_10B6470:     Set var_90 = var_A8(CInt(0))
  loc_10B6476:     Call 0.Method_Proc_17_55_10B65E40 ()
  loc_10B647E:     var_A8.SetFocus
  loc_10B648F:     Proc_17_55_10B65E4 = &HFF
  loc_10B6495:   End If
  loc_10B6498: Else
  loc_10B64C2:   var_114 = CVar("Select Count(*) From REVMAST Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name=") 'String
  loc_10B64D0:   Set var_90 = var_A8(CInt(0))
  loc_10B64D6:   Call 0.Method_Proc_17_55_10B65E40 (var_114, var_184, -1, var_CC)
  loc_10B64E5:   Proc_6_17_EAA2B0(var_F4, CVar(var_A8), var_D0)
  loc_10B64ED:   var_134 = 0 & var_F4 
  loc_10B6508:   Proc_6_17_EAA2B0(var_154, global_100, var_134 & "And Name <>")
  loc_10B6527:   unk_50F33A.Execute CStr(var_E4 & var_154 & vbNullString), var_1A4, 
  loc_10B652F:    = var_CC.Fields
  loc_10B6537:    = var_D0.Item()
  loc_10B653F:    = var_E4.Value
  loc_10B6578:   If (var_1A4 > 0) Then
  loc_10B659C:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10B65B7:     Set var_90 = var_A8(CInt(0))
  loc_10B65BD:     Call 0.Method_Proc_17_55_10B65E40 ()
  loc_10B65C5:     var_A8.SetFocus
  loc_10B65D6:     Proc_17_55_10B65E4 = &HFF
  loc_10B65DC:   End If
  loc_10B65DC: End If
  loc_10B65DC: Proc_17_55_10B65E4 = 
End Sub

Public Sub Proc_17_56_F6B3D8
  'Data Table: 50F330
  loc_F6B2B0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6B2C2:   Me.DGHelp.Visible = False
  loc_F6B2CA: End If
  loc_F6B2E6: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F6B2F8:   Me.DGLedgerAc.Visible = False
  loc_F6B300: End If
  loc_F6B31C: If (CBool(().Visible) = &HFF) Then
  loc_F6B32E:   (False).Visible = 
  loc_F6B336: End If
  loc_F6B352: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_F6B364:   Me.DGTaxMast.Visible = False
  loc_F6B36C: End If
  loc_F6B387: If (Me.FrmList.Visible = &HFF) Then
  loc_F6B396:   Me.FrmList.Visible = False
  loc_F6B39E: End If
  loc_F6B3BA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6B3CC:   Me.FGPoint.Visible = False
  loc_F6B3D4: End If
  loc_F6B3D4: Exit Sub
End Sub

Public Sub Proc_17_57_1226DD0
  'Data Table: 50F330
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_12268D2: Set var_88 = var_8C(CInt(0))
  loc_12268D8: Call 0.Method_Proc_17_57_1226DD00 (var_90)
  loc_12268E0:  = var_8C.Left
  loc_12268F7: Me.DGHelp.Left = CVar(var_90)
  loc_1226913: Set var_B4 = var_B8(CInt(0))
  loc_1226919: Call 0.Method_Proc_17_57_1226DD00 (var_BC)
  loc_1226921:  = var_B8.Height
  loc_1226934: Set var_88 = var_8C(CInt(0))
  loc_122693A: Call 0.Method_Proc_17_57_1226DD00 (var_90)
  loc_1226942:  = var_8C.Top
  loc_1226952: var_A0 = CVar(((var_90 + var_BC) + CDbl(&H1E))) 'Single
  loc_1226961: Me.DGHelp.Top = CVar(var_90)
  loc_1226981: Set var_88 = var_8C(CInt(2))
  loc_1226987: Call 0.Method_Proc_17_57_1226DD00 (var_90)
  loc_122698F:  = var_8C.Left
  loc_12269A6: Me.DGLedgerAc.Left = CVar(var_90)
  loc_12269C2: Set var_B4 = var_B8(CInt(2))
  loc_12269C8: Call 0.Method_Proc_17_57_1226DD00 (var_BC)
  loc_12269D0:  = var_B8.Height
  loc_12269E3: Set var_88 = var_8C(CInt(2))
  loc_12269E9: Call 0.Method_Proc_17_57_1226DD00 (var_90)
  loc_12269F1:  = var_8C.Top
  loc_1226A01: var_A0 = CVar(((var_90 + var_BC) + CDbl(&H1E))) 'Single
  loc_1226A10: Me.DGLedgerAc.Top = CVar(var_90)
  loc_1226A26: Set var_C4 = ()
  loc_1226A29: var_A0 = &HB
  loc_1226A3D: var_A0 = CVar(CLng(0)) 'Long
  loc_1226A42: var_D4 = &H226
  loc_1226A4E: LateIdCallSt
  loc_1226A56: var_A0 = 0
  loc_1226A62: var_D4 = CVar(CLng(0)) 'Long
  loc_1226A67: var_F4 = "S.No"
  loc_1226A70: LateIdCallSt
  loc_1226A7B: var_A0 = CVar(CLng(2)) 'Long
  loc_1226A80: var_D4 = 0
  loc_1226A8C: LateIdCallSt
  loc_1226A97: var_A0 = CVar(CLng(3)) 'Long
  loc_1226A9C: var_D4 = &H802
  loc_1226AA8: LateIdCallSt
  loc_1226AB0: var_A0 = 0
  loc_1226ABC: var_D4 = CVar(CLng(3)) 'Long
  loc_1226AC1: var_F4 = "Tax Structure"
  loc_1226ACA: LateIdCallSt
  loc_1226AD5: var_A0 = CVar(CLng(3)) 'Long
  loc_1226AE0: var_D4 = CVar(CInt(1)) 'Integer
  loc_1226AE7: LateIdCallSt
  loc_1226AF2: var_A0 = CVar(CLng(1)) 'Long
  loc_1226AF7: var_D4 = &H4B0
  loc_1226B03: LateIdCallSt
  loc_1226B0B: var_A0 = 0
  loc_1226B17: var_D4 = CVar(CLng(1)) 'Long
  loc_1226B1C: var_F4 = "App Date"
  loc_1226B25: LateIdCallSt
  loc_1226B30: var_A0 = CVar(CLng(1)) 'Long
  loc_1226B3B: var_D4 = CVar(CInt(1)) 'Integer
  loc_1226B42: LateIdCallSt
  loc_1226B4D: var_A0 = CVar(CLng(4)) 'Long
  loc_1226B52: var_D4 = &H3E8
  loc_1226B5E: LateIdCallSt
  loc_1226B69: var_A0 = CVar(CLng(4)) 'Long
  loc_1226B74: var_D4 = CVar(CInt(7)) 'Integer
  loc_1226B7B: LateIdCallSt
  loc_1226B83: var_A0 = 0
  loc_1226B8F: var_D4 = CVar(CLng(4)) 'Long
  loc_1226B94: var_F4 = "Comm %"
  loc_1226B9D: LateIdCallSt
  loc_1226BA8: var_A0 = CVar(CLng(5)) 'Long
  loc_1226BAD: var_D4 = &H79E
  loc_1226BB9: LateIdCallSt
  loc_1226BC4: var_A0 = CVar(CLng(5)) 'Long
  loc_1226BCF: var_D4 = CVar(CInt(7)) 'Integer
  loc_1226BD6: LateIdCallSt
  loc_1226BDE: var_A0 = 0
  loc_1226BEA: var_D4 = CVar(CLng(5)) 'Long
  loc_1226BEF: var_F4 = "Bank Comm A/C"
  loc_1226BF8: LateIdCallSt
  loc_1226C03: var_A0 = CVar(CLng(7)) 'Long
  loc_1226C08: var_D4 = 0
  loc_1226C14: LateIdCallSt
  loc_1226C1C: var_A0 = 0
  loc_1226C28: var_D4 = CVar(CLng(7)) 'Long
  loc_1226C2D: var_F4 = "Apply On"
  loc_1226C36: LateIdCallSt
  loc_1226C41: var_A0 = CVar(CLng(7)) 'Long
  loc_1226C4C: var_D4 = CVar(CInt(1)) 'Integer
  loc_1226C53: LateIdCallSt
  loc_1226C5E: var_A0 = CVar(CLng(8)) 'Long
  loc_1226C63: var_D4 = &H320
  loc_1226C6F: LateIdCallSt
  loc_1226C7A: var_A0 = CVar(CLng(8)) 'Long
  loc_1226C85: var_D4 = CVar(CInt(7)) 'Integer
  loc_1226C8C: LateIdCallSt
  loc_1226C94: var_A0 = 0
  loc_1226CA0: var_D4 = CVar(CLng(8)) 'Long
  loc_1226CA5: var_F4 = "L. Limit"
  loc_1226CAE: LateIdCallSt
  loc_1226CB9: var_A0 = CVar(CLng(9)) 'Long
  loc_1226CBE: var_D4 = &H4C4
  loc_1226CCA: LateIdCallSt
  loc_1226CD5: var_A0 = CVar(CLng(9)) 'Long
  loc_1226CE0: var_D4 = CVar(CInt(1)) 'Integer
  loc_1226CE7: LateIdCallSt
  loc_1226CEF: var_A0 = 0
  loc_1226CFB: var_D4 = CVar(CLng(9)) 'Long
  loc_1226D00: var_F4 = "Comparison Operator"
  loc_1226D09: LateIdCallSt
  loc_1226D14: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1226D19: var_D4 = &H352
  loc_1226D25: LateIdCallSt
  loc_1226D30: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1226D3B: var_D4 = CVar(CInt(7)) 'Integer
  loc_1226D42: LateIdCallSt
  loc_1226D4A: var_A0 = 0
  loc_1226D56: var_D4 = CVar(CLng(&HA)) 'Long
  loc_1226D5B: var_F4 = "U. Limit"
  loc_1226D64: LateIdCallSt
  loc_1226D6F: var_A0 = CVar(CLng(6)) 'Long
  loc_1226D74: var_D4 = 0
  loc_1226D80: LateIdCallSt
  loc_1226D8B: var_A0 = CVar(CLng(6)) 'Long
  loc_1226D96: var_D4 = CVar(CInt(1)) 'Integer
  loc_1226D9D: LateIdCallSt
  loc_1226DA5: var_A0 = 0
  loc_1226DB1: var_D4 = CVar(CLng(6)) 'Long
  loc_1226DB6: var_F4 = "Condition"
  loc_1226DBF: LateIdCallSt
  loc_1226DC9: Set var_C4 = Nothing 
  loc_1226DCD: Exit Sub
End Sub

Public Sub Proc_17_58_E40748
  'Data Table: 50F330
  loc_E40724: Set var_88 = Me.TopCtrl1
  loc_E4072A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E40743: If (CStr() = "Browse") Then
  loc_E40746:   Exit Sub
  loc_E40747: End If
  loc_E40747: Exit Sub
End Sub

Public Sub Proc_17_59_1354984(arg_C) '1354984
  'Data Table: 50F330
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As ListView
  Dim var_D0 As Variant
  Dim var_138 As Variant
  Dim var_174 As Double
  loc_1354193: If (CLng(().MousePointer) = CLng(3)) Then
  loc_13541E4:   Set var_8C = var_AC(arg_C)
  loc_13541EA:   Call 0.Method_Proc_17_59_13549840 (var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_13541F2:   var_A0 = var_AC.Text
  loc_135420A:   If ( Or (var_B0 = vbNullString)) Then
  loc_135423D:     LateIdCallSt
  loc_1354262:     var_C0 = CVar(CLng(CVar(CLng(().MouseIcon))(CVar(CLng(3))(vbNullString)).MouseIcon)) 'Long
  loc_1354279:     Set var_AC = CVar(CLng(2))(vbNullString)
  loc_135427F:     LateIdCallSt
  loc_1354294:   Else
  loc_13542F0:     LateIdCallSt
  loc_1354316:     var_9C = CVar(CLng("Name"(Me.Fields.Item("Name")).MouseIcon))(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("Name").Value)))).MouseIcon
  loc_135431F:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1354349:     var_AC = Me.Fields.Item("Code")
  loc_1354362:     Set var_138 = CVar(CLng(2))(CVar(CStr(var_AC.Value)))
  loc_1354368:     LateIdCallSt
  loc_1354384:   End If
  loc_1354387: Else
  loc_135438E:   If (var_A0 = CLng(1)) Then
  loc_13543BA:     Set var_8C = var_AC(0)
  loc_13543C0:     Call 0.Method_Proc_17_59_13549840 (CVar(CLng(1)))
  loc_13543DB:     Set var_13C = CVar(CLng(var_D0(var_D0(var_138)).MouseIcon))(CVar(Proc_6_33_1512840(var_AC)))
  loc_13543E1:     LateIdCallSt
  loc_13543FE:   Else
  loc_1354405:     If (var_A0 = CLng(4)) Then
  loc_1354414:       Set var_8C = var_AC(0)
  loc_135441A:       Call 0.Method_Proc_17_59_13549840 (var_B0)
  loc_1354422:       var_13C = var_AC.Text
  loc_135442F:       var_174 = Val(var_B0)
  loc_1354445:       var_E0 = CVar(CLng((var_174).MouseIcon)) 'Long
  loc_135444D:       var_100 = CVar(CLng(4)) 'Long
  loc_1354482:       Set var_138 = 1(CVar(CStr(Format(CVar(var_174), "0.0000"))))
  loc_1354488:       LateIdCallSt
  loc_13544AE:     Else
  loc_13544B5:       If (var_A0 = CLng(5)) Then
  loc_1354506:         Set var_8C = var_AC(arg_C)
  loc_135450C:         Call 0.Method_Proc_17_59_13549840 (var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_138)
  loc_1354514:         1 = var_AC.Text
  loc_135452C:         If (var_100 Or (var_B0 = vbNullString)) Then
  loc_135455F:           LateIdCallSt
  loc_1354584:           var_C0 = CVar(CLng(CVar(CLng((CVar(CLng(5))).MouseIcon))(CVar(CLng(5))(vbNullString)).MouseIcon)) 'Long
  loc_135459B:           Set var_AC = CVar(CLng(6))(vbNullString)
  loc_13545A1:           LateIdCallSt
  loc_13545B6:         Else
  loc_1354612:           LateIdCallSt
  loc_1354632:           Set var_114 = CVar(CLng("Name"(Me.Fields.Item("Name")).MouseIcon))(CVar(CLng(5))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_1354641:           var_D0 = CVar(CLng(var_114.MouseIcon)) 'Long
  loc_135466B:           var_AC = Me.Fields.Item("Code")
  loc_1354684:           Set var_138 = CVar(CLng(6))(CVar(CStr(var_AC.Value)))
  loc_135468A:           LateIdCallSt
  loc_13546A6:         End If
  loc_13546A9:       Else
  loc_13546B0:         If Not (var_A0 = CLng(8)) Then
  loc_13546BA:           If (var_A0 = CLng(&HA)) Then
  loc_13546BD:           End If
  loc_13546C9:           Set var_8C = var_AC(0)
  loc_13546CF:           Call 0.Method_Proc_17_59_13549840 (var_B0, var_138)
  loc_13546D7:           var_D0 = var_AC.Text
  loc_13546E4:           var_174 = Val(var_B0)
  loc_1354703:           Set var_138 = (CVar(CLng((var_174).MouseIcon)))
  loc_1354712:           var_100 = CVar(CLng(var_138.MousePointer)) 'Long
  loc_1354747:           Set var_13C = 1(CVar(CStr(Format(CVar(var_174), "0.00"))))
  loc_135474D:           LateIdCallSt
  loc_1354777:         Else
  loc_135477E:           If (var_A0 = CLng(7)) Then
  loc_135478E:             Set var_8C = var_AC(arg_C)
  loc_1354794:             Call 0.Method_Proc_17_59_13549840 (var_B0, var_13C)
  loc_135479C:             1 = var_AC.Text
  loc_13547B3:             If (var_B0 <> vbNullString) Then
  loc_13547CE:               Set var_AC = Me.ListView.SelectedItem
  loc_13547D4:               var_B0 = var_AC.Text
  loc_13547E6:               Set var_114 = var_138(arg_C)
  loc_13547EC:               Call 0.Method_Proc_17_59_13549840 (var_B0)
  loc_13547F4:               var_138.Text = var_100
  loc_135480A:             End If
  loc_135481D:             var_C0 = CVar(CLng(().MouseIcon)) 'Long
  loc_1354837:             Set var_8C = var_AC(arg_C)
  loc_135483D:             Call 0.Method_Proc_17_59_13549840 (var_B0, CVar(CLng(7)))
  loc_1354845:             var_C0 = var_AC.Text
  loc_1354855:             Set var_138 = (CVar(var_B0))
  loc_135485B:             LateIdCallSt
  loc_1354878:           Else
  loc_135487F:             If (var_A0 = CLng(9)) Then
  loc_135488F:               Set var_8C = var_AC(arg_C)
  loc_1354895:               Call 0.Method_Proc_17_59_13549840 (var_B0)
  loc_135489D:               var_138 = var_AC.Text
  loc_13548B4:               If (var_B0 <> vbNullString) Then
  loc_13548CF:                 Set var_AC = Me.ListView.SelectedItem
  loc_13548D5:                 var_B0 = var_AC.Text
  loc_13548E7:                 Set var_114 = var_138(arg_C)
  loc_13548ED:                 Call 0.Method_Proc_17_59_13549840 (var_B0)
  loc_13548F5:                 var_138.Text = 
  loc_135490B:               End If
  loc_135491E:               var_C0 = CVar(CLng(().MouseIcon)) 'Long
  loc_1354938:               Set var_8C = var_AC(arg_C)
  loc_135493E:               Call 0.Method_Proc_17_59_13549840 (var_B0, CVar(CLng(9)))
  loc_1354946:               var_C0 = var_AC.Text
  loc_1354956:               Set var_138 = (CVar(var_B0))
  loc_135495C:               LateIdCallSt
  loc_1354976:             End If
  loc_1354976:           End If
  loc_1354976:         End If
  loc_1354976:       End If
  loc_1354976:     End If
  loc_1354976:   End If
  loc_1354976: End If
  loc_135497B: Proc_17_59_1354984 = &HFF
End Sub
