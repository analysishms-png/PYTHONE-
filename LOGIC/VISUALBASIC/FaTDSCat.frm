VERSION 5.00
Begin VB.Form FaTDSCat
  Caption = "T.D.S.Category Entry"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaTDSCat.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8880
  ClientHeight = 4455
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 10
  End
End

Attribute VB_Name = "FaTDSCat"


Private Sub TopCtrl1_UnknownEvent_A 'EB5A98
  'Data Table: 43E818
  Dim var_94 As TextBox
  loc_EB5A08: On Error Goto loc_EB5A6F
  loc_EB5A0B: Call Proc_205_27_E7803C()
  loc_EB5A30: var_88 = "ADD"
  loc_EB5A3E: Call Proc_205_26_E77FA4(Proc_5_1_100CB50(var_88, Me), global_56)
  loc_EB5A54: Set var_8C = var_94(CInt(0))
  loc_EB5A5A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CByte(1))
  loc_EB5A62: var_94.SetFocus
  loc_EB5A6E: Exit Sub
  loc_EB5A6F: ' Referenced from: EB5A08
  loc_EB5A75: Call 0.Method_arg_50 (var_88)
  loc_EB5A7D: var_9C = "TopCtrl1_eAdd"
  loc_EB5A8A: Proc_183_57_104AA84(var_88)
  loc_EB5A96: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EF4F30
  'Data Table: 43E818
  loc_EF4E70: On Error Goto loc_EF4F06
  loc_EF4EAA: If (MsgBox("Are You Sure To Cancel Changes", 4, "Confirmation", var_E4, var_104) = 6) Then
  loc_EF4EC4:   Set var_10C = Me
  loc_EF4ECD:   var_108 = "INI"
  loc_EF4EDB:   Call Proc_205_26_E77FA4(Proc_5_1_100CB50(var_108, var_10C), global_56)
  loc_EF4EE6:   Call Proc_205_28_11DB750(CByte(0))
  loc_EF4EEE: Else
  loc_EF4EF4:   Call 0.Method_arg_1E8 (var_10C)
  loc_EF4EFC:   Call var_10C.SetFocus
  loc_EF4F05: End If
  loc_EF4F05: Exit Sub
  loc_EF4F06: ' Referenced from: EF4E70
  loc_EF4F0C: Call 0.Method_arg_50 (var_108)
  loc_EF4F14: var_118 = "TopCtrl1_eCancel"
  loc_EF4F21: Proc_183_57_104AA84(var_108)
  loc_EF4F2D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FECD78
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim unk_43E829 As Connection15
  Dim var_EC As Variant
  Dim var_118 As String
  loc_FECBA8: var_86 = CByte(0) 'Byte
  loc_FECBAC: On Error Goto loc_FECD38
  loc_FECBB8: var_8C = Me.RecordCount
  loc_FECBC6: If (var_8C > 0) Then
  loc_FECBD7:   If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_FECBDA:     Exit Sub
  loc_FECBDB:   End If
  loc_FECC12:   If (MsgBox("Are You Sure to Delete This Record", 4, "Confirmation", var_EC, var_10C) = 6) Then
  loc_FECC1E:     unk_43E829.BeginTrans var_8C
  loc_FECC27:     var_86 = CByte(1) 'Byte
  loc_FECC73:     var_EC = "Delete From TDSCAT Where code='" & Me.Fields.Item("Code").Value & "'" 
  loc_FECC81:     unk_43E829.Execute CStr(var_EC), var_10C, -1
  loc_FECCA3:     unk_43E829.CommitTrans
  loc_FECCAC:     var_86 = CByte(0) 'Byte
  loc_FECCBB:     Me.Requery -1
  loc_FECCCB:     Me.Requery -1
  loc_FECCE5:     var_118 = "INI"
  loc_FECCF3:     Call Proc_205_26_E77FA4(Proc_5_1_100CB50(var_118, Me), global_56)
  loc_FECCFE:     Call Proc_205_28_11DB750(var_11C)
  loc_FECD03:   End If
  loc_FECD06: Else
  loc_FECD27:   MsgBox("There Is No Record To Delete.", &H40, "Information", var_EC, var_10C)
  loc_FECD37: End If
  loc_FECD37: Exit Sub
  loc_FECD38: ' Referenced from: FECBAC
  loc_FECD41: If (CInt(var_86) = 1) Then
  loc_FECD4A:   unk_43E829.RollbackTrans
  loc_FECD4F: End If
  loc_FECD55: Call 0.Method_arg_50 (var_118)
  loc_FECD5D: var_128 = "TopCtrl1_eDel"
  loc_FECD6A: Proc_183_57_104AA84(var_118)
  loc_FECD76: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F1C928
  'Data Table: 43E818
  Dim Me As Variant
  Dim var_98 As TextBox
  loc_F1C83C: On Error Goto loc_F1C8FE
  loc_F1C856: If (Me.RecordCount > 0) Then
  loc_F1C867:   If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_F1C86A:     Exit Sub
  loc_F1C86B:   End If
  loc_F1C88B:   var_8C = "EDIT"
  loc_F1C899:   Call Proc_205_26_E77FA4(Proc_5_1_100CB50(var_8C, Me), global_56)
  loc_F1C8AF:   Set var_90 = var_98(CInt(0))
  loc_F1C8B5:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CByte(2))
  loc_F1C8BD:   var_98.SetFocus
  loc_F1C8CC: Else
  loc_F1C8ED:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F1C8FD: End If
  loc_F1C8FD: Exit Sub
  loc_F1C8FE: ' Referenced from: F1C83C
  loc_F1C904: Call 0.Method_arg_50 (var_8C)
  loc_F1C90C: var_120 = "TopCtrl1_eEdit"
  loc_F1C919: Proc_183_57_104AA84(var_8C)
  loc_F1C925: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A280
  'Data Table: 43E818
  loc_E1A275: Me.Global.Unload Me
  loc_E1A27D: Exit Sub
  loc_E1A27E: Error
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEDD74
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEDCB4: On Error Goto loc_EEDD4C
  loc_EEDCCE: If (Me.RecordCount <= 0) Then
  loc_EEDCD7:   var_B8 = "Information"
  loc_EEDCF2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEDD02:   Exit Sub
  loc_EEDD03: End If
  loc_EEDD11: MemVar_1F920E4 = "Select code As SearchCode,Name FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name"
  loc_EEDD1E: MemVar_1F92120 = Me
  loc_EEDD25: var_10C = "3500"
  loc_EEDD2B: Proc_183_54_F1DE80(var_10C)
  loc_EEDD46: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEDD4B: Exit Sub
  loc_EEDD4C: ' Referenced from: EEDCB4
  loc_EEDD52: Call 0.Method_arg_50 (var_10C)
  loc_EEDD67: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEDD73: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3B718
  'Data Table: 43E818
  loc_E3B708: Proc_5_0_110649C(&HFF, Me)
  loc_E3B710: Call Proc_205_28_11DB750(global_56)
  loc_E3B715: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36C78
  'Data Table: 43E818
  loc_E36C68: Proc_5_0_110649C(&HFF, Me)
  loc_E36C70: Call Proc_205_28_11DB750(global_56)
  loc_E36C75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36D38
  'Data Table: 43E818
  loc_E36D28: Proc_5_0_110649C(&HFF, Me)
  loc_E36D30: Call Proc_205_28_11DB750(global_56)
  loc_E36D35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B6B8
  'Data Table: 43E818
  loc_E3B6A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B6B0: Call Proc_205_28_11DB750(global_56)
  loc_E3B6B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '100D260
  'Data Table: 43E818
  Dim var_A0 As String
  Dim unk_43E829 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  loc_100D064: On Error Goto loc_100D237
  loc_100D07B: var_A0 = "select * FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_100D08B: unk_43E829.Execute var_A0 & "' OR LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_100D096: Set var_88 = var_C8
  loc_100D0AC: var_CC = var_88.RecordCount
  loc_100D0BA: If (var_CC = 0) Then
  loc_100D0D6:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_100D0E6:   Exit Sub
  loc_100D0E7: End If
  loc_100D0F3: Call 0.Method_arg_128 (var_C8)
  loc_100D0FE: MemVar_1F921E4 = var_C8
  loc_100D116: Call 0.Method_arg_90 (var_C8, var_CC, var_9A)
  loc_100D11E: Call 0.Method_arg_24 (1)
  loc_100D12A: For var_130 =  To CInt(var_CC): var_C8 = var_130 'Integer
  loc_100D143:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_100D14B:   Call 0.Method_arg_20 (var_134)
  loc_100D153:   Call 0.Method_arg_30 (var_A0)
  loc_100D199:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_100D1AF:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_100D1B7:     Call 0.Method_arg_20 (var_134)
  loc_100D1BF:     Call 0.Method_arg_38 ("'T.D.S. Category List'")
  loc_100D1CB:   End If
  loc_100D1CE: Next var_130 'Integer
  loc_100D1EC: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_100D1F4: Call 0.Method_arg_2C (var_DC)
  loc_100D202: Call 0.Method_arg_150 (var_FC)
  loc_100D20D: Call 0.Method_arg_50 (var_A0)
  loc_100D226: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_100D233: Set var_88 = Nothing
  loc_100D236: Exit Sub
  loc_100D237: ' Referenced from: 100D064
  loc_100D23D: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_100D252: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_100D25E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AC34
  'Data Table: 43E818
  Dim Me As Recordset15
  loc_E0AC2B: Me.Requery -1
  loc_E0AC30: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13090AC
  'Data Table: 43E818
  Dim var_A8 As String
  Dim var_B0 As String
  Dim unk_43E829 As Connection15
  Dim var_94 As Recordset15
  Dim var_C0 As Variant
  Dim var_9C As Fields15
  Dim var_D0 As Variant
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim var_98 As Long
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim Me As Variant
  Dim var_120 As TextBox
  Dim var_200 As Double
  Dim var_138 As TextBox
  Dim var_208 As Double
  Dim var_118 As String
  Dim var_12C As String
  Dim var_148 As String
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_124 As String
  Dim var_13C As String
  Dim var_1F4 As Variant
  loc_13089E8: On Error Goto loc_130906C
  loc_13089EF: var_86 = CByte(0) 'Byte
  loc_13089FE: Set var_9C = var_A0(CInt(0))
  loc_1308A04: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1308A0C: var_A8 = "Description"
  loc_1308A2D: If (Proc_183_19_E8DAFC(var_A0) = 0) Then
  loc_1308A37:   Call Txt_GotFocus()
  loc_1308A3C:   Exit Sub
  loc_1308A3D: End If
  loc_1308A48: Set var_9C = var_A0(CInt(1))
  loc_1308A4E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1308A77: If (Proc_183_19_E8DAFC(var_A0, "T.D.S.Limit") = 0) Then
  loc_1308A81:   Call Txt_GotFocus()
  loc_1308A86:   Exit Sub
  loc_1308A87: End If
  loc_1308A92: Set var_9C = var_A0(CInt(2))
  loc_1308A98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1308AC1: If (Proc_183_19_E8DAFC(var_A0, "T.D.S.Percentage") = 0) Then
  loc_1308ACB:   Call Txt_GotFocus()
  loc_1308AD0:   Exit Sub
  loc_1308AD1: End If
  loc_1308ADD: If (CInt(global_52) = 1) Then
  loc_1308AF4:   var_A8 = "Select Max(SubString(Code,3,Len(Code)-2)) As tCode From TDSCAT Where SITE_CODE='" & MemVar_1F92070
  loc_1308AFB:   var_B0 = "T.D.S.Percentage" & "'"
  loc_1308B04:   unk_43E829.Execute var_B0, var_D0, -1
  loc_1308B0F:   Set var_94 = var_9C
  loc_1308B25:   var_D4 = var_94.RecordCount
  loc_1308B33:   If (var_D4 > 0) Then
  loc_1308B65:     If Not(IsNull(CVar(var_94.Fields.Item("TCode")))) Then
  loc_1308B97:       var_F4 = (var_94.Fields.Item("TCode").Value + 1)
  loc_1308B9D:       var_98 = CLng(var_F4)
  loc_1308BB1:     Else
  loc_1308BB6:       var_98 = 1
  loc_1308BB9:     End If
  loc_1308BBC:   Else
  loc_1308BC1:     var_98 = 1
  loc_1308BC4:   End If
  loc_1308BD1:   var_104 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2, var_98, var_98)) 'String
  loc_1308BFC:   var_114 = (1 + Format(var_98, "0000"))
  loc_1308C01:   var_90 = CStr(var_114)
  loc_1308C12: Else
  loc_1308C2F:   var_A0 = Me.Fields.Item("Code")
  loc_1308C37:   var_D0 = var_A0.Value
  loc_1308C40:   var_90 = CStr(var_D0)
  loc_1308C4D: End If
  loc_1308C56: unk_43E829.BeginTrans var_D4
  loc_1308C5F: var_86 = CByte(1) 'Byte
  loc_1308C6F: If (CInt(global_52) = 1) Then
  loc_1308C80:   Set var_9C = var_A0(CInt(0))
  loc_1308C86:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B0, 1, var_104, var_98)
  loc_1308C8E:   var_9C = var_A0.Text
  loc_1308CA1:   Set var_A4 = var_120(CInt(1))
  loc_1308CA7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_124, CInt(2))
  loc_1308CAF:   var_A8 = var_120.Text
  loc_1308CBC:   var_200 = Val(var_124)
  loc_1308CCD:   Set var_134 = var_138(CInt(2))
  loc_1308CD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_13C)
  loc_1308CF6:   Proc_183_7_EB0C44(var_D0, MemVar_1F920EC)
  loc_1308D0F:   var_A8 = "Insert Into TDSCAT (code,name,TDSLimit,TDSPercentage,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values('" & var_90
  loc_1308D16:   var_118 = var_A8 & "','"
  loc_1308D2C:   var_12C = CStr(var_138.Text)
  loc_1308D71:   var_170 = CVar(var_118 & var_B0 & "'," & var_12C & "," & CStr(Val(var_13C)) & ",'" & MemVar_1F920C8 & "',") & var_D0 & ",'A','" & CVar(MemVar_1F92070) 
  loc_1308D9B:   unk_43E829.Execute CStr(var_170 & "','" & CVar(MemVar_1F92078) & "')"), var_1F4, -1
  loc_1308DEA: Else
  loc_1308DF8:   Set var_9C = var_A0(CInt(0))
  loc_1308DFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A8, var_1F8)
  loc_1308E06:   var_208 = var_A0.Text
  loc_1308E19:   Set var_A4 = var_120(CInt(1))
  loc_1308E1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_118)
  loc_1308E27:    = var_120.Text
  loc_1308E34:   var_200 = Val(var_118)
  loc_1308E45:   Set var_134 = var_138(CInt(2))
  loc_1308E4B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_12C)
  loc_1308E60:   var_208 = Val(var_12C)
  loc_1308E66:   var_C0 = MemVar_1F920EC
  loc_1308E6E:   Proc_183_7_EB0C44(var_D0, var_C0)
  loc_1308EBB:   var_148 = "UPDATE TDSCAT SET name='" & var_A8 & "',TDSLimit=" & CStr(var_138.Text) & ",TDSPercentage=" & CStr(var_208) & ",U_name='" & MemVar_1F920C8
  loc_1308EEE:   var_1B0 = CVar(var_148 & "',U_EntDt=") & var_D0 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F92070) & "',LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1308F18:   unk_43E829.Execute CStr(var_1B0 & "' WHERE code='" & CVar(var_90) & "'"), var_248, -1
  loc_1308F64: End If
  loc_1308F6A: unk_43E829.CommitTrans
  loc_1308F73: var_86 = CByte(0) 'Byte
  loc_1308F82: Me.Requery -1
  loc_1308F92: Me.Requery -1
  loc_1308F9B: Set var_9C = var_208(var_1F8)
  loc_1308FD1: Me.Find "code='" & var_90 & "'", 0, 1
  loc_1308FE9: If (CInt(global_52) = 1) Then
  loc_1308FEC:   Call Proc_205_27_E7803C(var_C0)
  loc_1308FF8:   Call Txt_GotFocus()
  loc_1309008:   Set var_9C = var_A0(CInt(0))
  loc_130900E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1309016:   var_A0.SetFocus
  loc_1309025: Else
  loc_130903A:   var_A8 = "INI"
  loc_1309048:   Call Proc_205_26_E77FA4(Proc_5_1_100CB50(var_A8, Me), global_56)
  loc_1309053:   Call Proc_205_28_11DB750(cdialogrepview.DispID_FFFF)
  loc_130905F:   global_52 = CByte(0)
  loc_1309063: End If
  loc_1309068: Set var_94 = Nothing
  loc_130906B: Exit Sub
  loc_130906C: ' Referenced from: 13089E8
  loc_1309075: If (CInt(var_86) = 1) Then
  loc_130907E:   unk_43E829.RollbackTrans
  loc_1309083: End If
  loc_1309089: Call 0.Method_arg_50 (var_A8)
  loc_130909E: Proc_183_57_104AA84(var_A8, "TopCtrl1_eSave")
  loc_13090AA: Exit Sub
End Sub

Private Sub Form_Load() '110E140
  'Data Table: 43E818
  Dim var_8C As Label
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim var_C8 As String
  Dim unk_43E829 As Connection15
  Dim var_D0 As Column
  loc_110DDF4: On Error Goto loc_110E116
  loc_110DE06: (CDbl(13500)).Left = 
  loc_110DE1D: (CDbl(7800)).Top = 
  loc_110DE34: (CDbl(8160)).Top = 
  loc_110DE4B: (CDbl(13500)).Left = 
  loc_110DE5A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_110DE69: Set var_8C = Me.TopCtrl1
  loc_110DE6F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_110DE7D: Call 0.Method_arg_50 (var_B0)
  loc_110DE85: var_C0 = CVar(var_B0) 'String
  loc_110DE8D: Set var_8C = Me.TopCtrl1
  loc_110DE93: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_C0)
  loc_110DEAA: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_110DEBB: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_110DECC: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_110DEDD: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_110DEEE: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_110DEFF: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_110DF10: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_110DF21: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_110DF32: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_110DF43: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_110DF5D: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_110DF6B: Set var_8C = MemVar_1F92044
  loc_110DF7A: Call 0.Method_Form_Load8 (var_8C)
  loc_110DF90: Me.TopCtrl1.Clone
  loc_110DFAA: Call 0.Method_arg_50 (var_8C, -1)
  loc_110DFDA: Me.Connection15.Execute "SELECT * FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1
  loc_110E01B: var_C8 = "SELECT Code,name,TDSLimit,TDSPercentage FROM TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY Name"
  loc_110E024: unk_43E829.Execute var_C8, var_C0, -1
  loc_110E05D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_8C(CVar(CDbl(1665))))
  loc_110E071: Set var_8C = Me
  loc_110E07A: var_B0 = "INI"
  loc_110E088: Call Proc_205_26_E77FA4(Proc_5_1_100CB50(var_B0, var_8C), var_8C)
  loc_110E093: Call Proc_205_28_11DB750(var_8C)
  loc_110E0BD: Set var_8C = var_D0(0)
  loc_110E0C3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_69(0)
  loc_110E0D4:  = CByte(0).Item(CByte(0))
  loc_110E0DC: var_D0.Visible = 
  loc_110E0F6: CVarUnk
  loc_110E0FB: VerifyVarObj
  loc_110E101: Set var_8C = (var_8C)
  loc_110E107: LateIdStAd
  loc_110E115: Exit Sub
  loc_110E116: ' Referenced from: 110DDF4
  loc_110E11C: Call 0.Method_arg_50 (var_B0)
  loc_110E131: Proc_183_57_104AA84(var_B0, "Form_Load")
  loc_110E13D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED42E8
  'Data Table: 43E818
  Dim var_8C As Label
  Dim var_B4 As Label
  loc_ED4246: Call 0.Method_arg_50 (var_88)
  loc_ED4258: (var_88).Caption = 
  loc_ED4271: (CDbl(0)).Left = 
  loc_ED427D: Set var_A0 = Me.TopCtrl1
  loc_ED4283: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4290: Set var_8C = Me.TopCtrl1
  loc_ED4296: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED42AA: Set var_B4 = ((CDbl() + CDbl(var_B0)))
  loc_ED42B0: var_B4.Top = 
  loc_ED42CB: Call 0.Method_arg_100 (var_B8)
  loc_ED42DD: (var_B8).Width = 
  loc_ED42E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2AFEC
  'Data Table: 43E818
  loc_E2AFCF: Set global_56 = Nothing
  loc_E2AFE1: Set global_60 = Nothing
  loc_E2AFE8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F6B548
  'Data Table: 43E818
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim KeyCode As Integer
  loc_F6B410: On Error Goto loc_F6B51E
  loc_F6B416: var_86 = KeyCode
  loc_F6B423: If Not (var_86 = CInt(&HD)) Then
  loc_F6B430:   If Not (var_86 = CInt(&H28)) Then
  loc_F6B43D:     If (var_86 = CInt(&H26)) Then
  loc_F6B440:     End If
  loc_F6B440:   End If
  loc_F6B443:   var_88 = KeyCode
  loc_F6B450:   If Not (var_88 = CInt(&H28)) Then
  loc_F6B45D:     If (var_88 = CInt(&H26)) Then
  loc_F6B460:     End If
  loc_F6B464:     Set var_8C = var_86(var_88)
  loc_F6B46A:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_F6B47C:     If (CBool() = &HFF) Then
  loc_F6B47F:       Exit Sub
  loc_F6B480:     End If
  loc_F6B480:   End If
  loc_F6B486:   Call 0.Method_arg_1E8 (var_8C)
  loc_F6B495:   If TypeOf var_8C Is arg_23 Then
  loc_F6B49E:     Call 0.Method_arg_1E8 (var_8C)
  loc_F6B4B9:     Call Txt_Validate(CInt(var_8C.index))
  loc_F6B4C4:   End If
  loc_F6B4E0:   Call 0.Method_arg_58 (Me, KeyCode, Shift)
  loc_F6B4EE:   If (var_9E = &HFF) Then
  loc_F6B4F6:     Call Proc_205_30_EA96F8(0, var_9E)
  loc_F6B4FB:   End If
  loc_F6B4FD:   KeyCode = 0
  loc_F6B503: Else
  loc_F6B515:   Proc_183_40_F30B0C(Me, KeyCode, Shift)
  loc_F6B51D: End If
  loc_F6B51D: Exit Sub
  loc_F6B51E: ' Referenced from: F6B410
  loc_F6B524: Call 0.Method_arg_50 (var_A4, KeyCode)
  loc_F6B539: Proc_183_57_104AA84(var_A4, "Form_KeyDown")
  loc_F6B545: Exit Sub
End Sub

Private Sub Txt_Change(Index As Integer) 'F25EDC
  'Data Table: 43E818
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_BC As TextBox
  Dim var_B0 As TextBox
  loc_F25DE4: If (CInt(global_52) <> 0) Then
  loc_F25DEA:   var_86 = Index
  loc_F25DF5:   If (var_86 = CInt(0)) Then
  loc_F25E00:     Set var_AC = var_86(True)
  loc_F25E06:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_F25E1B:     Set var_B8 = var_BC(Index)
  loc_F25E21:     Call 0.Method_Txt_Change0 (var_C0)
  loc_F25E29:      = var_BC.Height
  loc_F25E3B:     Set var_AC = var_B0(Index)
  loc_F25E41:     Call 0.Method_Txt_Change0 (var_B4)
  loc_F25E49:      = var_B0.Top
  loc_F25E59:     var_98 = CVar(((var_B4 + var_C0) + CDbl(&HA))) 'Single
  loc_F25E62:     Set var_C4 = (True)
  loc_F25E68:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_F25E87:     Set var_AC = var_B0(Index)
  loc_F25E8D:     Call 0.Method_Txt_Change0 (var_B4)
  loc_F25E95:      = var_B0.Left
  loc_F25EA6:     Set var_B8 = (CVar(var_B4))
  loc_F25EAC:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_F25EC4:     Set var_AC = (0)
  loc_F25ECA:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_18001()
  loc_F25ED5:     Call Proc_205_29_EA9F94()
  loc_F25EDA:   End If
  loc_F25EDA: End If
  loc_F25EDA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FC6A90
  'Data Table: 43E818
  Dim var_9C As TextBox
  Dim var_D4 As TextBox
  Dim var_DA As Integer
  Dim Me As Recordset15
  Dim var_E0 As Integer
  loc_FC68EC: On Error Goto loc_FC6A66
  loc_FC6904: Set var_98 = var_9C(Index)
  loc_FC690A: Call 0.Method_Txt_GotFocus0 (CByte(0))
  loc_FC6918: Proc_183_28_E20B20(var_9C)
  loc_FC6928: Set var_98 = ()
  loc_FC692E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FC6940: If (CBool() = &HFF) Then
  loc_FC694C:   Set var_98 = (False)
  loc_FC6952:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FC695A: End If
  loc_FC6960: Proc_183_45_E5C118(global_60)
  loc_FC6972: Set var_98 = var_9C(Index)
  loc_FC6978: Call 0.Method_Txt_GotFocus0 (var_D8)
  loc_FC6980:  = var_9C.Text
  loc_FC6992: Set var_A0 = var_D4(Index)
  loc_FC6998: Call 0.Method_Txt_GotFocus0 (var_D8)
  loc_FC69A0: var_D4.Tag = 
  loc_FC69B6: Call Txt_Click()
  loc_FC69C9: If (Index = CInt(0)) Then
  loc_FC69EF:   If (Me.BOF Or Me.EOF) Then
  loc_FC69F2:     Exit Sub
  loc_FC69F3:   End If
  loc_FC69F3: End If
  loc_FC69F6: var_E0 = Index
  loc_FC6A01: If (var_E0 = CInt(0)) Then
  loc_FC6A23:   Me.Bookmark = Me.Bookmark
  loc_FC6A28: End If
  loc_FC6A35: Set var_98 = var_9C(Index)
  loc_FC6A3B: Call 0.Method_Txt_GotFocus0 (var_D8, var_E0)
  loc_FC6A43: var_DA = var_9C.Text
  loc_FC6A5A: If (var_D8 = vbNullString) Then
  loc_FC6A60:   Call Txt_Change(Index)
  loc_FC6A65: End If
  loc_FC6A65: Exit Sub
  loc_FC6A66: ' Referenced from: FC68EC
  loc_FC6A6C: Call 0.Method_arg_50 (var_D8)
  loc_FC6A81: Proc_183_57_104AA84(var_D8, "Txt_GotFocus")
  loc_FC6A8D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F731FC
  'Data Table: 43E818
  Dim var_AE As Integer
  Dim var_C6 As Integer
  Dim var_C8 As Integer
  loc_F730D4: On Error Goto loc_F731D2
  loc_F730E1: If (CLng(Shift) = &H1B) Then
  loc_F730ED:   Set var_AC = (False)
  loc_F730F3:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_F730FB:   Exit Sub
  loc_F730FC: End If
  loc_F730FF: var_AE = KeyCode
  loc_F7310A: If (var_AE = CInt(0)) Then
  loc_F73141:   Set var_AC = (var_AE)
  loc_F73147:   Proc_183_31_100809C(var_AC, (), CInt(0), global_60)
  loc_F73157: End If
  loc_F7315A: var_C6 = KeyCode
  loc_F73165: If (var_C6 = CInt(2)) Then
  loc_F7316B:   var_C8 = Shift
  loc_F73174:   If (var_C8 = &HD) Then
  loc_F731AE:     If (MsgBox("Save Record?", 4, "Save Entry", var_108, var_128) = 6) Then
  loc_F731B1:       Call TopCtrl1_UnknownEvent_16()
  loc_F731B6:       Exit Sub
  loc_F731BA:     Else
  loc_F731C0:       Call 0.Method_arg_1E8 (var_AC, var_C8, var_C6)
  loc_F731C8:       Call var_AC.SetFocus
  loc_F731D1:     End If
  loc_F731D1:   End If
  loc_F731D1: End If
  loc_F731D1: Exit Sub
  loc_F731D2: ' Referenced from: F730D4
  loc_F731D8: Call 0.Method_arg_50 (var_12C, Shift)
  loc_F731ED: Proc_183_57_104AA84(var_12C, "Txt_KeyDown")
  loc_F731F9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EAE824
  'Data Table: 43E818
  Dim var_86 As Integer
  loc_EAE797: var_86 = KeyAscii
  loc_EAE7A2: If (var_86 = CInt(1)) Then
  loc_EAE7AF:   Set var_8C = var_90(KeyAscii)
  loc_EAE7B5:   Call 0.Method_Txt_KeyPress0 (var_86)
  loc_EAE7D0:   Proc_183_22_129AEBC(var_90, arg_10)
  loc_EAE7DF: Else
  loc_EAE7E7:   If (var_86 = CInt(2)) Then
  loc_EAE7F4:     Set var_8C = var_90(KeyAscii)
  loc_EAE7FA:     Call 0.Method_Txt_KeyPress0 (8)
  loc_EAE815:     Proc_183_22_129AEBC(var_90, arg_10, 2)
  loc_EAE821:   End If
  loc_EAE821: End If
  loc_EAE821: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E89E00
  'Data Table: 43E818
  Dim var_86 As Integer
  loc_E89D97: var_86 = KeyCode
  loc_E89DA2: If (var_86 = CInt(0)) Then
  loc_E89DA9:   Set var_8C = (var_86)
  loc_E89DAF:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_E89DC1:   If (CBool() = &HFF) Then
  loc_E89DCE:     var_A4 = "Name"
  loc_E89DED:     Proc_183_32_FE7F70((), CInt(0), global_60)
  loc_E89DFC:   End If
  loc_E89DFC: End If
  loc_E89DFC: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49744
  'Data Table: 43E818
  loc_E49722: Set var_88 = var_8C(Index)
  loc_E49728: Call 0.Method_Txt_LostFocus0 ()
  loc_E49736: Proc_183_27_E22608(var_8C)
  loc_E49742: Exit Sub
End Sub

Private Sub Txt_Click(Index As Integer) 'E6B50C
  'Data Table: 43E818
  Dim var_8C As TextBox
  loc_E6B4C7: Set var_88 = var_8C(Index)
  loc_E6B4CD: Call 0.Method_Txt_Click0 (&HC00000)
  loc_E6B4D5: var_8C.ForeColor = 
  loc_E6B4F0: Set var_88 = var_8C(Index)
  loc_E6B4F6: Call 0.Method_Txt_Click0 (&HE0E0E0)
  loc_E6B4FE: var_8C.BackColor = 
  loc_E6B50A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '105BC8C
  'Data Table: 43E818
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim unk_43E829 As Connection15
  Dim var_C0 As Variant
  Dim var_D8 As Variant
  Dim arg_10 As Integer
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_140 As Field20
  loc_105BA3C: On Error Goto loc_105BC62
  loc_105BA4D: If (Cancel = CInt(0)) Then
  loc_105BA5C:   If (CInt(global_52) = 1) Then
  loc_105BA8C:     Set var_8C = var_90(CInt(0))
  loc_105BA92:     Call 0.Method_Txt_Validate0 (var_94, "Select COUNT(*) From TDSCAT Where name='", var_BC, -1, var_C0)
  loc_105BAB3:     unk_43E829.Execute 0 & var_94 & "'", var_D8, var_E8
  loc_105BABB:     var_86 = var_C0.Fields
  loc_105BAC3:      = var_90.Text.Item()
  loc_105BACB:      = var_D8.Value
  loc_105BAF8:     If (var_E8 > 0) Then
  loc_105BB1C:       MsgBox("Name Already Exists", &H40, "Validation", var_108, var_128)
  loc_105BB2E:       arg_10 = &HFF
  loc_105BB31:       Exit Sub
  loc_105BB32:     End If
  loc_105BB35:   Else
  loc_105BB41:     If (CInt(global_52) = 2) Then
  loc_105BB71:       Set var_8C = var_90(CInt(0))
  loc_105BB77:       Call 0.Method_Txt_Validate0 (var_94, "Select COUNT(*) From TDSCAT Where name='", var_138, -1, var_D8)
  loc_105BBBF:       var_108 = CVar(0 & var_94 & "' AND CODE<>'") & Me.Fields.Item("Code").Value 
  loc_105BBC8:       var_128 = var_108 & "'" 
  loc_105BBD6:       unk_43E829.Execute CStr(var_128), var_140, var_150
  loc_105BBDE:       arg_10 = var_D8.Fields
  loc_105BBE6:        = var_90.Text.Item()
  loc_105BBEE:        = var_140.Value
  loc_105BC27:       If (var_150 > 0) Then
  loc_105BC4B:         MsgBox("Name Already Exists", &H40, "Validation", var_108, var_128)
  loc_105BC5D:         arg_10 = &HFF
  loc_105BC60:         Exit Sub
  loc_105BC61:       End If
  loc_105BC61:     End If
  loc_105BC61:   End If
  loc_105BC61: End If
  loc_105BC61: Exit Sub
  loc_105BC62: ' Referenced from: 105BA3C
  loc_105BC68: Call 0.Method_arg_50 (var_94)
  loc_105BC7D: Proc_183_57_104AA84(var_94, "Txt_Validate")
  loc_105BC89: Exit Sub
  loc_105BC8A: DOC
End Sub

Public Sub SEARCHBACK(MyValue) 'E91AB0
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E91A42: On Error Goto loc_E91A87
  loc_E91A4B: Me.MoveFirst
  loc_E91A65: var_8C = "Code='" & MyValue
  loc_E91A75: Me.Find var_8C & "'", 0, 1
  loc_E91A81: Call Proc_205_28_11DB750(var_A0)
  loc_E91A86: Exit Sub
  loc_E91A87: ' Referenced from: E91A42
  loc_E91A8D: Call 0.Method_arg_50 (var_8C)
  loc_E91A95: var_A4 = "SEARCHBACK"
  loc_E91AA2: Proc_183_57_104AA84(var_8C)
  loc_E91AAE: Exit Sub
End Sub

Public Sub Proc_205_26_E77FA4(arg_C) 'E77FA4
  'Data Table: 43E818
  Dim var_98 As TextBox
  loc_E77F52: Set var_8C = var_86(var_8E)
  loc_E77F58: Call 0.Method_Proc_205_26_E77FA4C (CByte(0))
  loc_E77F68: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E77F7E:   Set var_8C = var_98(CInt(var_86))
  loc_E77F84:   Call 0.Method_Proc_205_26_E77FA40 (arg_C)
  loc_E77F8C:   var_98.Enabled = 
  loc_E77F9B: Next var_92 'Byte
  loc_E77FA1: Exit Sub
End Sub

Public Sub Proc_205_27_E7803C
  'Data Table: 43E818
  Dim var_98 As TextBox
  loc_E77FEA: Set var_8C = var_86(var_8E)
  loc_E77FF0: Call 0.Method_Proc_205_27_E7803CC (CByte(0))
  loc_E78000: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E78016:   Set var_8C = var_98(CInt(var_86))
  loc_E7801C:   Call 0.Method_Proc_205_27_E7803C0 (vbNullString)
  loc_E78024:   var_98.Text = 
  loc_E78033: Next var_92 'Byte
  loc_E78039: Exit Sub
End Sub

Public Sub Proc_205_28_11DB750
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_F4 As String
  Dim unk_43E82B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_11DB310: On Error Goto loc_11DB728
  loc_11DB369: unk_43E82B.Execute CStr("Select U_Name,U_AE,U_EntDt From TDSCAT where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_11DB374: Set var_88 = var_118
  loc_11DB3C8: var_118 = var_88.Fields
  loc_11DB431: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11DB476: (CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))).Caption = 
  loc_11DB4F0: var_11C = var_88.Fields.Item("U_AE")
  loc_11DB4F8: var_D0 = CVar(var_11C) 'Address
  loc_11DB551: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_D0) = "E"), "Last Update : ", "entdt : "))
  loc_11DB596: (CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))).Caption = 
  loc_11DB5D4: Proc_183_45_E5C118(global_56)
  loc_11DB5F0: If (Me.RecordCount <= 0) Then
  loc_11DB5F3:   Call Proc_205_27_E7803C()
  loc_11DB5FB: Else
  loc_11DB637:   Set var_118 = var_11C(CInt(0))
  loc_11DB63D:   Call 0.Method_Proc_205_28_11DB7500 (CStr(Me.Fields.Item("Name").Value))
  loc_11DB645:   var_11C.Text = 
  loc_11DB684:   Proc_183_3_E7D1C8(var_D0)
  loc_11DB69B:   Set var_118 = var_11C(CInt(1))
  loc_11DB6A1:   Call 0.Method_Proc_205_28_11DB7500 (CStr(var_D0))
  loc_11DB6A9:   var_11C.Text = CVar(Me.Fields.Item("TDSLimit"))
  loc_11DB6EA:   Proc_183_3_E7D1C8(var_D0)
  loc_11DB6F2:   var_F4 = CStr(var_D0)
  loc_11DB701:   Set var_118 = var_11C(CInt(2))
  loc_11DB707:   Call 0.Method_Proc_205_28_11DB7500 (var_F4)
  loc_11DB70F:   var_11C.Text = CVar(Me.Fields.Item("TDSPercentage"))
  loc_11DB727: End If
  loc_11DB727: Exit Sub
  loc_11DB728: ' Referenced from: 11DB310
  loc_11DB72E: Call 0.Method_arg_50 (var_F4)
  loc_11DB736: var_1CC = "MoveRec"
  loc_11DB743: Proc_183_57_104AA84(var_F4)
  loc_11DB74F: Exit Sub
End Sub

Public Sub Proc_205_29_EA9F94
  'Data Table: 43E818
  Dim Me As Recordset15
  Dim var_90 As TextBox
  loc_EA9F27: If (Me.RecordCount <= 0) Then
  loc_EA9F2A:   Exit Sub
  loc_EA9F2B: End If
  loc_EA9F31: Me.MoveFirst
  loc_EA9F55: Set var_8C = var_90(CInt(0))
  loc_EA9F5B: Call 0.Method_Proc_205_29_EA9F940 (var_94, "name>='", 0)
  loc_EA9F63: 1 = var_90.Text
  loc_EA9F7C: Me.Find var_AC & var_94 & "'", , 
  loc_EA9F91: Exit Sub
End Sub

Public Sub Proc_205_30_EA96F8(arg_C) 'EA96F8
  'Data Table: 43E818
  Dim var_10C As TextBox
  loc_EA9681: Set var_A8 = (False)
  loc_EA9687: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_EA96C6: If (MsgBox("Save Record ?", 4, "Save Data", var_E8, var_108) = 6) Then
  loc_EA96C9:   Call TopCtrl1_UnknownEvent_16()
  loc_EA96D1: Else
  loc_EA96DB:   Set var_A8 = var_10C(arg_C)
  loc_EA96E1:   Call 0.Method_Proc_205_30_EA96F80 ()
  loc_EA96E9:   var_10C.SetFocus
  loc_EA96F5: End If
  loc_EA96F5: Exit Sub
End Sub
