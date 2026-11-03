
Public Sub Proc_6_0_9FF6F0
Error procedure
End Sub

Public Sub Proc_6_1_E5D4F4
  'Data Table: 4B6790
  Dim Me As Recordset15
  Dim arg_58FF As Integer
  loc_E5D4BC: If (Me.Recordset15.RecordCount > 0) Then
  loc_E5D4CD:   If Me.Recordset15.BOF Then
  loc_E5D4D3:     Me.Recordset15.MoveFirst
  loc_E5D4D8:   End If
  loc_E5D4E6:   If Me.EOF Then
  loc_E5D4EC:     Me.Recordset15.MoveLast
  loc_E5D4F1:   End If
  loc_E5D4F1: End If
  loc_E5D4F1: Exit Sub
  loc_E5D4F2: arg_58FF = 
End Sub

Public Sub Proc_6_2_E95E90
  'Data Table: 4B6790
  Dim Me As Recordset15
  Dim var_86 As Integer
  loc_E95E2B: If ((Me.Recordset15.BOF = &HFF) Or (Me.Recordset15.EOF = &HFF)) Then
  loc_E95E42:   If (Me.Recordset15.RecordCount > 0) Then
  loc_E95E53:     If Me.Recordset15.BOF Then
  loc_E95E59:       Me.Recordset15.MoveFirst
  loc_E95E5E:     End If
  loc_E95E6C:     If Me.EOF Then
  loc_E95E72:       Me.Recordset15.MoveLast
  loc_E95E77:     End If
  loc_E95E79:     var_86 = &HFF
  loc_E95E7F:   Else
  loc_E95E81:     var_86 = 0
  loc_E95E84:   End If
  loc_E95E87: Else
  loc_E95E89:   var_86 = &HFF
  loc_E95E8C: End If
  loc_E95E8C: End Sub
End Sub

Public Sub Proc_6_3_F2A6EC
  'Data Table: 4B6790
  Dim var_96 As Integer
  Dim var_94 As Recordset15
  loc_F2A5F0: On Error Goto loc_F2A6B1
  loc_F2A60A: Proc_6_1_E5D4F4(Me.Recordset15.Fields)
  loc_F2A62A: If (Me.Recordset15.RecordCount > 0) Then
  loc_F2A630:   Set var_94 = arg_10 
  loc_F2A637:   var_96 = arg_14
  loc_F2A640:   If (var_96 = 0) Then
  loc_F2A646:     var_94.MoveFirst
  loc_F2A64E:   Else
  loc_F2A654:     If (var_96 = 1) Then
  loc_F2A65A:       var_94.MovePrevious
  loc_F2A662:     Else
  loc_F2A668:       If (var_96 = 2) Then
  loc_F2A66E:         var_94.MoveNext
  loc_F2A676:       Else
  loc_F2A67C:         If (var_96 = 3) Then
  loc_F2A682:           var_94.MoveLast
  loc_F2A687:         End If
  loc_F2A687:       End If
  loc_F2A687:     End If
  loc_F2A687:   End If
  loc_F2A689:   Set var_94 = Nothing 
  loc_F2A6A4:   Proc_6_1_E5D4F4(Me.Recordset15.Fields)
  loc_F2A6B0: End If
  loc_F2A6B0: Exit Sub
  loc_F2A6B1: ' Referenced from: F2A5F0
  loc_F2A6B9: Set var_88 = Err()
  loc_F2A6BF: Call 0.Method_arg_2C (var_9C)
  loc_F2A6D8: MsgBox(CVar(var_9C), &H10, var_CC, var_EC, var_10C)
  loc_F2A6EB: Exit Sub
End Sub

Public Sub Proc_6_4_E8BC38
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_E8BBEC: If (CDbl(Val(CStr(Me.TEXT))) < CDbl(0)) Then
  loc_E8BC10:   MsgBox("Entered value is Negative", &H40, "Validation Error", var_EC, var_10C)
  loc_E8BC23:   Call Me.SetFocus
  loc_E8BC2B:   var_86 = &HFF
  loc_E8BC31: Else
  loc_E8BC33:   var_86 = 0
  loc_E8BC36: End If
  loc_E8BC36: End Sub
End Sub

Public Sub Proc_6_5_E8B2D0
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_E8B284: If (CDbl(Val(CStr(Me.TEXT))) <= CDbl(0)) Then
  loc_E8B2A8:   MsgBox("Entered value should be greater than zero", &H40, "Validation Error", var_EC, var_10C)
  loc_E8B2BB:   Call Me.SetFocus
  loc_E8B2C3:   var_86 = &HFF
  loc_E8B2C9: Else
  loc_E8B2CB:   var_86 = 0
  loc_E8B2CE: End If
  loc_E8B2CE: End Sub
End Sub

Public Sub Proc_6_6_E9C34C(arg_C) 'E9C34C
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_E9C2F7: If (Left(arg_C, 1) = "B") Then
  loc_E9C2FC:   var_86 = 0
  loc_E9C302: Else
  loc_E9C339:   If (MsgBox("Do You Want to Cancel Changes?", &H24, "Confirmation", var_F8, var_118) = 7) Then
  loc_E9C33E:     var_86 = &HFF
  loc_E9C344:   Else
  loc_E9C346:     var_86 = 0
  loc_E9C349:   End If
  loc_E9C349: End If
  loc_E9C349: End Sub
End Sub

Public Sub Proc_6_7_F25D88
  'Data Table: 4B6790
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  loc_F25C90: On Error Goto loc_F25D26
  loc_F25CCA: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = Null)) Then
  loc_F25CD2:   var_94 = "Null" 'Variant
  loc_F25CD9: Else
  loc_F25CD9:   var_F4 = "'"
  loc_F25CED:   var_E4 = "Short Date"
  loc_F25D02:   var_114 = Format(CDate(CDate(arg_10)), var_E4)
  loc_F25D0A:   var_124 = 1 & var_114 
  loc_F25D17:   var_94 = var_124 & "'" 'Variant
  loc_F25D26: End If
  loc_F25D26: ' Referenced from: F25C90
  loc_F25D2E: Set var_138 = Err()
  loc_F25D34: Call 0.Method_arg_1C (var_13C, 1)
  loc_F25D45: If (var_13C > 0) Then
  loc_F25D50:   Set var_138 = Err()
  loc_F25D56:   Call 0.Method_arg_2C (var_140)
  loc_F25D6F:   MsgBox(CVar(var_140), &H10, var_E4, var_114, var_124)
  loc_F25D82: End If
  loc_F25D82: Result = arg_10: Exit Sub
  loc_F25D86: Put , ,  'put var_F4 bytes
End Sub

Public Sub Proc_6_8_EB0DE4
  'Data Table: 4B6790
  Dim var_104 As String
  loc_EB0D81: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_EB0D89:   var_94 = "Null" 'Variant
  loc_EB0D90: Else
  loc_EB0D90:   var_104 = "'"
  loc_EB0DCE:   var_94 = 1 & Format(CDate(CDate(arg_10)), "dd/MMM/yyyy hh:nn:ss") & "'" 'Variant
  loc_EB0DDD: End If
  loc_EB0DDD: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_9_EB0D14
  'Data Table: 4B6790
  Dim var_104 As String
  loc_EB0CB1: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_EB0CB9:   var_94 = "Null" 'Variant
  loc_EB0CC0: Else
  loc_EB0CC0:   var_104 = "'"
  loc_EB0CFE:   var_94 = 1 & Format(CDate(CDate(arg_10)), "hh:nn:ss") & "'" 'Variant
  loc_EB0D0D: End If
  loc_EB0D0D: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_10_E8DF1C
  'Data Table: 4B6790
  loc_E8DED1: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_E8DED9:   var_94 = "Null" 'Variant
  loc_E8DEE0: Else
  loc_E8DF0C:   var_94 = Format(CDate(CDate(arg_10)), "dd/MMM/yyyy hh:nn:ss") 'Variant
  loc_E8DF17: End If
  loc_E8DF17: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_11_F0A84C
  'Data Table: 4B6790
  Dim var_E4 As Variant
  Dim var_124 As Variant
  loc_F0A76C: On Error Goto loc_F0A7EC
  loc_F0A79D: var_124 = IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = Null)
  loc_F0A7A6: If CBool(var_124) Then
  loc_F0A7AE:   var_94 = "Null" 'Variant
  loc_F0A7B5: Else
  loc_F0A7C4:   var_E4 = "Short Date"
  loc_F0A7D9:   var_114 = Format(CDate(CDate(arg_10)), var_E4)
  loc_F0A7E1:   var_94 = var_114 'Variant
  loc_F0A7EC: End If
  loc_F0A7EC: ' Referenced from: F0A76C
  loc_F0A7F4: Set var_128 = Err()
  loc_F0A7FA: Call 0.Method_arg_1C (var_12C, 1)
  loc_F0A80B: If (var_12C > 0) Then
  loc_F0A816:   Set var_128 = Err()
  loc_F0A81C:   Call 0.Method_arg_2C (var_130)
  loc_F0A835:   MsgBox(CVar(var_130), &H10, var_E4, var_114, var_124)
  loc_F0A848: End If
  loc_F0A848: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_12_E8D2BC
  'Data Table: 4B6790
  loc_E8D271: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_E8D279:   var_94 = "Null" 'Variant
  loc_E8D280: Else
  loc_E8D2AC:   var_94 = Format(CDate(CDate(arg_10)), "hh:nn:ss") 'Variant
  loc_E8D2B7: End If
  loc_E8D2B7: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_13_E8BE30
  'Data Table: 4B6790
  Dim var_DC As Variant
  loc_E8BDEA: var_DC = CVar("Printed By : " & MemVar_1F920C8 & " on ") 'String
  loc_E8BE18: var_88 = CStr(1 & Format(CVar(Proc_6_14_EF349C()), "dd/MMM/yyyy hh:nn:ss"))
  loc_E8BE2F: Exit Sub
End Sub

Public Sub Proc_6_14_EF349C
  'Data Table: 4B6790
  Dim var_C0 As Integer
  Dim unk_4B67AE As Connection15
  Dim var_AC As Recordset15
  Dim var_B0 As Fields15
  Dim var_C4 As Field20
  Dim var_A8 As Variant
  loc_EF33E0: On Error Goto loc_EF343C
  loc_EF33E9: var_C0 = 0
  loc_EF3408: unk_4B67AE.Execute "Select Convert(Varchar,GetDate(),120)", var_A8, -1
  loc_EF3410: var_AC = var_AC.Fields
  loc_EF3418: var_C0 = var_B0.Item(var_B0)
  loc_EF3420: var_C4 = var_C4.Value
  loc_EF3429: var_88 = CStr(var_D4)
  loc_EF343C: ' Referenced from: EF33E0
  loc_EF3444: Set var_AC = Err()
  loc_EF344A: Call 0.Method_arg_1C (var_D8)
  loc_EF345B: If (var_D8 > 0) Then
  loc_EF3466:   Set var_AC = Err()
  loc_EF346C:   Call 0.Method_arg_2C (var_DC)
  loc_EF3485:   MsgBox(CVar(var_DC), &H10, var_D4, var_EC, var_10C)
  loc_EF3498: End If
  loc_EF3498: Exit Sub
End Sub

Public Sub Proc_6_15_EF2C1C
  'Data Table: 4B6790
  Dim var_C0 As Integer
  Dim unk_4B67AE As Connection15
  Dim var_AC As Recordset15
  Dim var_B0 As Fields15
  Dim var_C4 As Field20
  Dim var_A8 As Variant
  loc_EF2B60: On Error Goto loc_EF2BBC
  loc_EF2B69: var_C0 = 0
  loc_EF2B88: unk_4B67AE.Execute "Select Substring(Convert(Varchar,GetDate(),120),1,10)", var_A8, -1
  loc_EF2B90: var_AC = var_AC.Fields
  loc_EF2B98: var_C0 = var_B0.Item(var_B0)
  loc_EF2BA0: var_C4 = var_C4.Value
  loc_EF2BA9: var_88 = CStr(var_D4)
  loc_EF2BBC: ' Referenced from: EF2B60
  loc_EF2BC4: Set var_AC = Err()
  loc_EF2BCA: Call 0.Method_arg_1C (var_D8)
  loc_EF2BDB: If (var_D8 > 0) Then
  loc_EF2BE6:   Set var_AC = Err()
  loc_EF2BEC:   Call 0.Method_arg_2C (var_DC)
  loc_EF2C05:   MsgBox(CVar(var_DC), &H10, var_D4, var_EC, var_10C)
  loc_EF2C18: End If
  loc_EF2C18: Exit Sub
End Sub

Public Sub Proc_6_16_EF29FC
  'Data Table: 4B6790
  Dim var_C0 As Integer
  Dim unk_4B67AE As Connection15
  Dim var_AC As Recordset15
  Dim var_B0 As Fields15
  Dim var_C4 As Field20
  Dim var_A8 As Variant
  loc_EF2940: On Error Goto loc_EF299C
  loc_EF2949: var_C0 = 0
  loc_EF2968: unk_4B67AE.Execute "Select Substring(Convert(Varchar,GetDate(),120),12,8)", var_A8, -1
  loc_EF2970: var_AC = var_AC.Fields
  loc_EF2978: var_C0 = var_B0.Item(var_B0)
  loc_EF2980: var_C4 = var_C4.Value
  loc_EF2989: var_88 = CStr(var_D4)
  loc_EF299C: ' Referenced from: EF2940
  loc_EF29A4: Set var_AC = Err()
  loc_EF29AA: Call 0.Method_arg_1C (var_D8)
  loc_EF29BB: If (var_D8 > 0) Then
  loc_EF29C6:   Set var_AC = Err()
  loc_EF29CC:   Call 0.Method_arg_2C (var_DC)
  loc_EF29E5:   MsgBox(CVar(var_DC), &H10, var_D4, var_EC, var_10C)
  loc_EF29F8: End If
  loc_EF29F8: Exit Sub
End Sub

Public Sub Proc_6_17_EAA2B0
  'Data Table: 4B6790
  Dim var_DC As String
  loc_EAA236: var_94 = arg_10 'Variant
  loc_EAA25A: If CBool(IsNull(var_94) Or (var_94 = Null)) Then
  loc_EAA262:   var_94 = "Null" 'Variant
  loc_EAA266:   Result = arg_10: Exit Sub
  loc_EAA26A: End If
  loc_EAA28E: var_DC = Replace(CStr(var_94), "'", "''", 1, -1, 0)
  loc_EAA29C: var_94 = CVar("'" & var_DC & "'") 'Variant
  loc_EAA2A9: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_18_E7DFD0(arg_C) 'E7DFD0
  'Data Table: 4B6790
  loc_E7DFBF: var_88 = CStr(IIf(IsNull(arg_C) Or (arg_C = vbNullString), "Null", arg_C))
  loc_E7DFCD: Exit Sub
End Sub

Public Sub Proc_6_19_E665F0(arg_C) 'E665F0
  'Data Table: 4B6790
  Dim var_8C As Double
  loc_E665A8: var_9C = arg_C
  loc_E665D0: If CBool(IsNull(var_9C) Or (var_9C = vbNullString)) Then
  loc_E665D6:   var_8C = CDbl(0)
  loc_E665DC: Else
  loc_E665E8:   var_8C = Val(CStr(var_9C))
  loc_E665EE: End If
  loc_E665EE: End Sub
End Sub

Public Sub Proc_6_20_E5EE2C(arg_C) 'E5EE2C
  'Data Table: 4B6790
  loc_E5EDEC: var_98 = arg_C
  loc_E5EE14: If CBool(IsNull(var_98) Or (var_98 = vbNullString)) Then
  loc_E5EE1A:   var_88 = vbNullString
  loc_E5EE20: Else
  loc_E5EE25:   var_88 = CStr(var_98)
  loc_E5EE28: End If
  loc_E5EE28: Exit Sub
End Sub

Public Sub Proc_6_21_E5EFAC
  'Data Table: 4B6790
  loc_E5EF80: For Each var_88 In Form.Controls
  loc_E5EF8F:   If TypeOf var_88 Is arg_28 Then
  loc_E5EF9B:     var_88.TEXT = vbNullString
  loc_E5EF9F:   End If
  loc_E5EFA2: Next
  loc_E5EFAA: Exit Sub
End Sub

Public Sub Proc_6_22_E9CDD4
  'Data Table: 4B6790
  Dim arg_10 As Integer
  loc_E9CD66: If (Me.TextBox.Tag = "L") Then
  loc_E9CD8C:   arg_10 = Asc(CStr(LCase(Chr(CLng(arg_10)))))
  loc_E9CD9C: Else
  loc_E9CDBF:   arg_10 = Asc(CStr(Ucase(Chr(CLng(arg_10)))))
  loc_E9CDCC: End If
  loc_E9CDD1: End Sub
End Sub

Public Sub Proc_6_23_DFBA28
  'Data Table: 4B6790
  Dim Proc_6_23_DFBA288FF As Double
  loc_DFBA24: Exit Sub
  loc_DFBA25: Proc_6_23_DFBA288FF = 
End Sub

Public Sub Proc_6_24_E28A30(arg_C) 'E28A30
  'Data Table: 4B6790
  Dim var_8A As Integer
  loc_E28A0B: var_8A = arg_C
  loc_E28A14: If (var_8A = 1) Then
  loc_E28A1A:   var_88 = "Aril"
  loc_E28A20: Else
  loc_E28A26:   If (var_8A = 2) Then
  loc_E28A2C:     var_88 = "Hitarth Hin Jalak"
  loc_E28A2F:   End If
  loc_E28A2F: End If
  loc_E28A2F: Exit Sub
End Sub

Public Sub Proc_6_25_E24050(arg_C) 'E24050
  'Data Table: 4B6790
  Dim var_88 As Integer
  Dim var_86 As Integer
  loc_E2402B: var_88 = arg_C
  loc_E24034: If (var_88 = 1) Then
  loc_E24039:   var_86 = &HC
  loc_E2403F: Else
  loc_E24045:   If (var_88 = 2) Then
  loc_E2404A:     var_86 = &HE
  loc_E2404D:   End If
  loc_E2404D: End If
  loc_E2404D: End Sub
  loc_E2404E: Put , , var_88 'put var_86 bytes
End Sub

Public Sub Proc_6_26_E2807C(arg_C) 'E2807C
  'Data Table: 4B6790
  Dim var_8A As Integer
  loc_E28057: var_8A = arg_C
  loc_E28060: If (var_8A = 1) Then
  loc_E28066:   var_88 = "English"
  loc_E2806C: Else
  loc_E28072:   If (var_8A = 2) Then
  loc_E28078:     var_88 = "Hindi"
  loc_E2807B:   End If
  loc_E2807B: End If
  loc_E2807B: Exit Sub
End Sub

Public Sub Proc_6_27_EA565C
  'Data Table: 4B6790
  Dim var_B8 As Long
  Dim var_86 As Integer
  loc_EA55EB: var_B8 = Len(Trim(Me.TEXT))
  loc_EA55FE: If (var_B8 = 0) Then
  loc_EA5621:   MsgBox(CVar(arg_10 & " is a required field."), &H10, "Validation Error", var_B8, var_D8)
  loc_EA5642:   If (Me.Enabled = True) Then
  loc_EA5648:     Call Me.SetFocus
  loc_EA564E:   End If
  loc_EA5650:   var_86 = 0
  loc_EA5656: Else
  loc_EA5658:   var_86 = &HFF
  loc_EA565B: End If
  loc_EA565B: End Sub
End Sub

Public Sub Proc_6_28_E6FD88(arg_C) 'E6FD88
  'Data Table: 4B6790
  loc_E6FD6F: If (MsgBox("Exit Yes/No", 4, "Close Form", var_E4, var_104) = 6) Then
  loc_E6FD7F:   Me.Global.Unload arg_C
  loc_E6FD87: End If
  loc_E6FD87: Exit Sub
End Sub

Public Sub Proc_6_29_FB33C8(arg_C) 'FB33C8
  'Data Table: 4B6790
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim var_204 As Variant
  loc_FB3281: var_88 = Replace(arg_C, " ", vbNullString, 1, -1, 0)
  loc_FB3289: var_8E = CInt(Len(var_88))
  loc_FB328E: var_90 = 1
  loc_FB3291: ' Referenced from: FB33A7
  loc_FB3297: If (var_8E > 0) Then
  loc_FB32B7:   var_8C = CStr(Mid(var_88, CLng(var_90), 1))
  loc_FB3373:   var_204 = (CVar(var_8C) >= Chr(&H41)) And (CVar(var_8C) <= Chr(&H5A)) Or (CVar(var_8C) >= Chr(&H61)) And (CVar(var_8C) <= Chr(&H7A)) Or (CVar(var_8C) >= Chr(&H30)) And (CVar(var_8C) <= Chr(&H39))
  loc_FB3388:   If CBool(var_204) Then
  loc_FB3392:     var_94 = var_94 & var_8C
  loc_FB3395:   End If
  loc_FB339B:   var_90 = (var_90 + 1)
  loc_FB33A4:   var_8E = (var_8E - 1)
  loc_FB33A7:   GoTo loc_FB3291
  loc_FB33AA: End If
  loc_FB33BE: var_88 = CStr(Ucase(var_94))
  loc_FB33C4: Exit Sub
End Sub

Public Sub Proc_6_30_F1F654(arg_C) 'F1F654
  'Data Table: 4B6790
  loc_F1F59A: If ((Me.TextBox.Text = vbNullString) Or (Me.TextBox.Tag = vbNullString)) Then
loc_F1F59D: End Sub
  loc_F1F59E: End If
  loc_F1F5BB: IStAdFunc
  loc_F1F5DC: IStAdFunc
  loc_F1F652: End Sub
End Sub

Public Sub Proc_6_31_F321E0(arg_C) 'F321E0
  'Data Table: 4B6790
  loc_F320CC: On Error Goto loc_F321B1
  loc_F320D4: var_88 = vbNullString
  loc_F320F1: var_B8 = Weekday(arg_C, 0) 'Variant
  loc_F32102: If (var_B8 = 1) Then
  loc_F3210A:   var_88 = "Sunday"
  loc_F32110: Else
  loc_F3211D:   If (var_B8 = 2) Then
  loc_F32125:     var_88 = "Monday"
  loc_F3212B:   Else
  loc_F32138:     If (var_B8 = 3) Then
  loc_F32140:       var_88 = "Tuesday"
  loc_F32146:     Else
  loc_F32153:       If (var_B8 = 4) Then
  loc_F3215B:         var_88 = "Wednesday"
  loc_F32161:       Else
  loc_F3216E:         If (var_B8 = 5) Then
  loc_F32176:           var_88 = "Thursday"
  loc_F3217C:         Else
  loc_F32189:           If (var_B8 = 6) Then
  loc_F32191:             var_88 = "Friday"
  loc_F32197:           Else
  loc_F321A4:             If (var_B8 = 7) Then
  loc_F321AC:               var_88 = "Saturday"
  loc_F321AF:             End If
  loc_F321AF:           End If
  loc_F321AF:         End If
  loc_F321AF:       End If
  loc_F321AF:     End If
  loc_F321AF:   End If
  loc_F321AF: End If
  loc_F321B1: ' Referenced from: F320CC
  loc_F321BB: Set var_BC = Err()
  loc_F321C1: Call 0.Method_arg_1C (var_C0)
  loc_F321D2: If (var_C0 = 6) Then
  loc_F321D7:   Resume Next
  loc_F321DB: End If
  loc_F321DD: Exit Sub
End Sub

Public Sub Proc_6_32_1560648(arg_C) '1560648
  'Data Table: 4B6790
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Long
  Dim var_E4 As Long
  Dim var_EC As Long
  Dim var_A8 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_1D0 As Variant
  Dim var_110 As Variant
  Dim var_170 As Variant
  loc_155F5FC: On Error Goto loc_1560618
  loc_155F623: If (Len(Trim(arg_C)) = 0) Then
  loc_155F62B:   var_88 = vbNullString
  loc_155F630:   Exit Sub
  loc_155F631: End If
  loc_155F63A: var_DC = 0
  loc_155F642: var_E0 = vbNullString
  loc_155F64C: var_E4 = 0
  loc_155F665: var_E8 = CStr(Trim(arg_C))
  loc_155F68D: If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_155F6A4:   var_EC = InStr(1, var_E8, "-", 0)
  loc_155F6A7: End If
  loc_155F6B2: If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_155F6C9:   var_EC = InStr(1, var_E8, ".", 0)
  loc_155F6CC: End If
  loc_155F6D7: If (var_EC = 0) Then
  loc_155F6F1:   If ((Len(var_E8) = 6) Or (Len(var_E8) = 8)) Then
  loc_155F710:     var_DC = CLng(Left(var_E8, 2))
  loc_155F736:     var_E0 = CStr(Mid(var_E8, 3, 2))
  loc_155F761:     var_E4 = CLng(Mid(var_E8, 5, 4))
  loc_155F770:   Else
  loc_155F772:   End If
  loc_155F77F:   If (var_EC <> 0) Then
  loc_155F78D:     var_A8 = CVar((var_EC - 1)) 'Long
  loc_155F7B5:     If IsNumeric(Mid(var_E8, 1, 4)) Then
  loc_155F7C3:       var_A8 = CVar((var_EC - 1)) 'Long
  loc_155F7E9:       var_DC = CLng(Val(CStr(Mid(var_E8, 1, 4))))
  loc_155F7F9:     Else
  loc_155F806:       var_A8 = CVar((var_EC - 1)) 'Long
  loc_155F823:       var_E0 = CStr(Mid(var_E8, 1, 4))
  loc_155F82D:     End If
  loc_155F82F:   End If
  loc_155F83C:   If (var_EC = 0) Then
  loc_155F84E:     If IsNumeric(var_E8) Then
  loc_155F85C:       var_DC = CLng(Val(var_E8))
  loc_155F862:     Else
  loc_155F869:       var_E0 = var_E8
  loc_155F86C:     End If
  loc_155F873:   Else
  loc_155F87F:     If (var_E0 = vbNullString) Then
  loc_155F89B:       var_B8 = Mid(var_E8, (var_EC + 1), 4)
  loc_155F8A4:       var_E8 = CStr(Mid(var_E8, 1, 4))
  loc_155F8D0:       If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_155F8E7:         var_EC = InStr(1, var_E8, "-", 0)
  loc_155F8EA:       End If
  loc_155F8F5:       If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_155F90C:         var_EC = InStr(1, var_E8, ".", 0)
  loc_155F90F:       End If
  loc_155F91A:       If (var_EC <> 0) Then
  loc_155F928:         var_A8 = CVar((var_EC - 1)) 'Long
  loc_155F945:         var_E0 = CStr(Mid(var_E8, 1, 4))
  loc_155F94F:       End If
  loc_155F95A:       If (var_EC = 0) Then
  loc_155F962:         var_E0 = var_E8
  loc_155F96A:       Else
  loc_155F96C:       End If
  loc_155F987:       var_B8 = Mid(var_E8, (var_EC + 1), 4)
  loc_155F999:       var_E4 = CLng(Val(CStr(Mid(var_E8, 1, 4))))
  loc_155F9A6:     End If
  loc_155F9A6:   End If
  loc_155F9B1:   If (var_E4 = 0) Then
  loc_155F9CE:     var_E4 = CLng(Year(Date))
  loc_155F9D8:   End If
  loc_155F9D8: End If
  loc_155FA00: If (Len(Trim(CVar(CStr(var_E4)))) < 4) Then
  loc_155FA18:   var_C8 = 4
  loc_155FA54:   var_140 = (1 - Len(Trim(Format(CVar(CStr(var_E4)), "000"))))
  loc_155FA6F:   var_170 = Mid(CVar(CStr(Year(Date))), 1, var_140)
  loc_155FAAA:   var_1D0 = (1 + Trim(Format(CVar(CStr(var_E4)), "000")))
  loc_155FAB8:   var_E4 = CLng(Val(CStr(var_1D0)))
  loc_155FAE2: Else
  loc_155FB0A:   If (Len(Trim(CVar(CStr(var_E4)))) > 4) Then
  loc_155FB27:     var_E4 = CLng(Year(Date))
  loc_155FB31:   End If
  loc_155FB31: End If
  loc_155FB3E: If (var_DC < 0) Then
  loc_155FB48:   var_DC = 0
  loc_155FB4B: End If
  loc_155FB95: var_1E0 = Trim(Ucase(CStr(Mid(CStr(Mid(CStr(Mid(CStr(Mid(var_E0, 1, 3)), 1, 3)), 1, 3)), 1, 3)))) 'Variant
  loc_155FBA9: If Not (var_1E0 = "1") Then
  loc_155FBB7:   If Not (var_1E0 = "01") Then
  loc_155FBC5:     If Not (var_1E0 = "J") Then
  loc_155FBD3:       If Not (var_1E0 = "JA") Then
  loc_155FBE1:         If (var_1E0 = "JAN") Then
  loc_155FBE4:         End If
  loc_155FBE4:       End If
  loc_155FBE4:     End If
  loc_155FBE4:   End If
  loc_155FBE9:   var_E0 = "Jan"
  loc_155FBEF: Else
  loc_155FBFC:   If Not (var_1E0 = "2") Then
  loc_155FC0A:     If Not (var_1E0 = "02") Then
  loc_155FC18:       If Not (var_1E0 = "F") Then
  loc_155FC26:         If Not (var_1E0 = "FE") Then
  loc_155FC34:           If (var_1E0 = "FEB") Then
  loc_155FC37:           End If
  loc_155FC37:         End If
  loc_155FC37:       End If
  loc_155FC37:     End If
  loc_155FC3C:     var_E0 = "Feb"
  loc_155FC42:   Else
  loc_155FC4F:     If Not (var_1E0 = "3") Then
  loc_155FC5D:       If Not (var_1E0 = "03") Then
  loc_155FC6B:         If Not (var_1E0 = "M") Then
  loc_155FC79:           If Not (var_1E0 = "MA") Then
  loc_155FC87:             If (var_1E0 = "MAR") Then
  loc_155FC8A:             End If
  loc_155FC8A:           End If
  loc_155FC8A:         End If
  loc_155FC8A:       End If
  loc_155FC8F:       var_E0 = "Mar"
  loc_155FC95:     Else
  loc_155FCA2:       If Not (var_1E0 = "4") Then
  loc_155FCB0:         If Not (var_1E0 = "04") Then
  loc_155FCBE:           If Not (var_1E0 = "A") Then
  loc_155FCCC:             If Not (var_1E0 = "AP") Then
  loc_155FCDA:               If (var_1E0 = "APR") Then
  loc_155FCDD:               End If
  loc_155FCDD:             End If
  loc_155FCDD:           End If
  loc_155FCDD:         End If
  loc_155FCE2:         var_E0 = "Apr"
  loc_155FCE8:       Else
  loc_155FCF5:         If Not (var_1E0 = "5") Then
  loc_155FD03:           If Not (var_1E0 = "05") Then
  loc_155FD11:             If (var_1E0 = "MAY") Then
  loc_155FD14:             End If
  loc_155FD14:           End If
  loc_155FD19:           var_E0 = "May"
  loc_155FD1F:         Else
  loc_155FD2C:           If Not (var_1E0 = "6") Then
  loc_155FD3A:             If Not (var_1E0 = "06") Then
  loc_155FD48:               If Not (var_1E0 = "JU") Then
  loc_155FD56:                 If (var_1E0 = "JUN") Then
  loc_155FD59:                 End If
  loc_155FD59:               End If
  loc_155FD59:             End If
  loc_155FD5E:             var_E0 = "Jun"
  loc_155FD64:           Else
  loc_155FD71:             If Not (var_1E0 = "7") Then
  loc_155FD7F:               If Not (var_1E0 = "07") Then
  loc_155FD8D:                 If (var_1E0 = "JUL") Then
  loc_155FD90:                 End If
  loc_155FD90:               End If
  loc_155FD95:               var_E0 = "Jul"
  loc_155FD9B:             Else
  loc_155FDA8:               If Not (var_1E0 = "8") Then
  loc_155FDB6:                 If Not (var_1E0 = "08") Then
  loc_155FDC4:                   If Not (var_1E0 = "AU") Then
  loc_155FDD2:                     If (var_1E0 = "AUG") Then
  loc_155FDD5:                     End If
  loc_155FDD5:                   End If
  loc_155FDD5:                 End If
  loc_155FDDA:                 var_E0 = "Aug"
  loc_155FDE0:               Else
  loc_155FDED:                 If Not (var_1E0 = "9") Then
  loc_155FDFB:                   If Not (var_1E0 = "09") Then
  loc_155FE09:                     If Not (var_1E0 = "S") Then
  loc_155FE17:                       If Not (var_1E0 = "SE") Then
  loc_155FE25:                         If (var_1E0 = "SEP") Then
  loc_155FE28:                         End If
  loc_155FE28:                       End If
  loc_155FE28:                     End If
  loc_155FE28:                   End If
  loc_155FE2D:                   var_E0 = "Sep"
  loc_155FE33:                 Else
  loc_155FE40:                   If Not (var_1E0 = "10") Then
  loc_155FE4E:                     If Not (var_1E0 = "O") Then
  loc_155FE5C:                       If Not (var_1E0 = "OC") Then
  loc_155FE6A:                         If (var_1E0 = "OCT") Then
  loc_155FE6D:                         End If
  loc_155FE6D:                       End If
  loc_155FE6D:                     End If
  loc_155FE72:                     var_E0 = "Oct"
  loc_155FE78:                   Else
  loc_155FE85:                     If Not (var_1E0 = "11") Then
  loc_155FE93:                       If Not (var_1E0 = "N") Then
  loc_155FEA1:                         If Not (var_1E0 = "NO") Then
  loc_155FEAF:                           If (var_1E0 = "NOV") Then
  loc_155FEB2:                           End If
  loc_155FEB2:                         End If
  loc_155FEB2:                       End If
  loc_155FEB7:                       var_E0 = "Nov"
  loc_155FEBD:                     Else
  loc_155FECA:                       If Not (var_1E0 = "12") Then
  loc_155FED8:                         If Not (var_1E0 = "D") Then
  loc_155FEE6:                           If Not (var_1E0 = "DE") Then
  loc_155FEF4:                             If (var_1E0 = "DEC") Then
  loc_155FEF7:                             End If
  loc_155FEF7:                           End If
  loc_155FEF7:                         End If
  loc_155FEFC:                         var_E0 = "Dec"
  loc_155FF02:                       Else
  loc_155FF32:                         var_E0 = CStr(Format(Date, "MMM"))
  loc_155FF3E:                       End If
  loc_155FF3E:                     End If
  loc_155FF3E:                   End If
  loc_155FF3E:                 End If
  loc_155FF3E:               End If
  loc_155FF3E:             End If
  loc_155FF3E:           End If
  loc_155FF3E:         End If
  loc_155FF3E:       End If
  loc_155FF3E:     End If
  loc_155FF3E:   End If
  loc_155FF3E: End If
  loc_155FF60: var_210 = Trim(Ucase(var_E0)) 'Variant
  loc_155FF74: If Not (var_210 = "1") Then
  loc_155FF82:   If Not (var_210 = "01") Then
  loc_155FF90:     If Not (var_210 = "J") Then
  loc_155FF9E:       If Not (var_210 = "JA") Then
  loc_155FFAC:         If (var_210 = "JAN") Then
  loc_155FFAF:         End If
  loc_155FFAF:       End If
  loc_155FFAF:     End If
  loc_155FFAF:   End If
  loc_155FFBA:   If (var_DC > &H1F) Then
  loc_155FFC4:     var_DC = 0
  loc_155FFC7:   End If
  loc_155FFCA: Else
  loc_155FFD7:   If Not (var_210 = "2") Then
  loc_155FFE5:     If Not (var_210 = "02") Then
  loc_155FFF3:       If Not (var_210 = "F") Then
  loc_1560001:         If Not (var_210 = "FE") Then
  loc_156000F:           If (var_210 = "FEB") Then
  loc_1560012:           End If
  loc_1560012:         End If
  loc_1560012:       End If
  loc_1560012:     End If
  loc_1560051:     If (CVar(var_DC) > IIf(((var_E4 Mod 4) = 0), 29, 28)) Then
  loc_156005B:       var_DC = 0
  loc_156005E:     End If
  loc_1560061:   Else
  loc_156006E:     If Not (var_210 = "3") Then
  loc_156007C:       If Not (var_210 = "03") Then
  loc_156008A:         If Not (var_210 = "M") Then
  loc_1560098:           If Not (var_210 = "MA") Then
  loc_15600A6:             If (var_210 = "MAR") Then
  loc_15600A9:             End If
  loc_15600A9:           End If
  loc_15600A9:         End If
  loc_15600A9:       End If
  loc_15600B4:       If (var_DC > &H1F) Then
  loc_15600BE:         var_DC = 0
  loc_15600C1:       End If
  loc_15600C4:     Else
  loc_15600D1:       If Not (var_210 = "4") Then
  loc_15600DF:         If Not (var_210 = "04") Then
  loc_15600ED:           If Not (var_210 = "A") Then
  loc_15600FB:             If Not (var_210 = "AP") Then
  loc_1560109:               If (var_210 = "APR") Then
  loc_156010C:               End If
  loc_156010C:             End If
  loc_156010C:           End If
  loc_156010C:         End If
  loc_1560117:         If (var_DC > &H1E) Then
  loc_1560121:           var_DC = 0
  loc_1560124:         End If
  loc_1560127:       Else
  loc_1560134:         If Not (var_210 = "5") Then
  loc_1560142:           If Not (var_210 = "05") Then
  loc_1560150:             If (var_210 = "MAY") Then
  loc_1560153:             End If
  loc_1560153:           End If
  loc_156015E:           If (var_DC > &H1F) Then
  loc_1560168:             var_DC = 0
  loc_156016B:           End If
  loc_156016E:         Else
  loc_156017B:           If Not (var_210 = "6") Then
  loc_1560189:             If Not (var_210 = "06") Then
  loc_1560197:               If Not (var_210 = "JU") Then
  loc_15601A5:                 If (var_210 = "JUN") Then
  loc_15601A8:                 End If
  loc_15601A8:               End If
  loc_15601A8:             End If
  loc_15601B3:             If (var_DC > &H1E) Then
  loc_15601BD:               var_DC = 0
  loc_15601C0:             End If
  loc_15601C3:           Else
  loc_15601D0:             If Not (var_210 = "7") Then
  loc_15601DE:               If Not (var_210 = "07") Then
  loc_15601EC:                 If (var_210 = "JUL") Then
  loc_15601EF:                 End If
  loc_15601EF:               End If
  loc_15601FA:               If (var_DC > &H1F) Then
  loc_1560204:                 var_DC = 0
  loc_1560207:               End If
  loc_156020A:             Else
  loc_1560217:               If Not (var_210 = "8") Then
  loc_1560225:                 If Not (var_210 = "08") Then
  loc_1560233:                   If Not (var_210 = "AU") Then
  loc_1560241:                     If (var_210 = "AUG") Then
  loc_1560244:                     End If
  loc_1560244:                   End If
  loc_1560244:                 End If
  loc_156024F:                 If (var_DC > &H1F) Then
  loc_1560259:                   var_DC = 0
  loc_156025C:                 End If
  loc_156025F:               Else
  loc_156026C:                 If Not (var_210 = "9") Then
  loc_156027A:                   If Not (var_210 = "09") Then
  loc_1560288:                     If Not (var_210 = "S") Then
  loc_1560296:                       If Not (var_210 = "SE") Then
  loc_15602A4:                         If (var_210 = "SEP") Then
  loc_15602A7:                         End If
  loc_15602A7:                       End If
  loc_15602A7:                     End If
  loc_15602A7:                   End If
  loc_15602B2:                   If (var_DC > &H1E) Then
  loc_15602BC:                     var_DC = 0
  loc_15602BF:                   End If
  loc_15602C2:                 Else
  loc_15602CF:                   If Not (var_210 = "10") Then
  loc_15602DD:                     If Not (var_210 = "O") Then
  loc_15602EB:                       If Not (var_210 = "OC") Then
  loc_15602F9:                         If (var_210 = "OCT") Then
  loc_15602FC:                         End If
  loc_15602FC:                       End If
  loc_15602FC:                     End If
  loc_1560307:                     If (var_DC > &H1F) Then
  loc_1560311:                       var_DC = 0
  loc_1560314:                     End If
  loc_1560317:                   Else
  loc_1560324:                     If Not (var_210 = "11") Then
  loc_1560332:                       If Not (var_210 = "N") Then
  loc_1560340:                         If Not (var_210 = "NO") Then
  loc_156034E:                           If (var_210 = "NOV") Then
  loc_1560351:                           End If
  loc_1560351:                         End If
  loc_1560351:                       End If
  loc_156035C:                       If (var_DC > &H1E) Then
  loc_1560366:                         var_DC = 0
  loc_1560369:                       End If
  loc_156036C:                     Else
  loc_1560379:                       If Not (var_210 = "12") Then
  loc_1560387:                         If Not (var_210 = "D") Then
  loc_1560395:                           If Not (var_210 = "DE") Then
  loc_15603A3:                             If (var_210 = "DEC") Then
  loc_15603A6:                             End If
  loc_15603A6:                           End If
  loc_15603A6:                         End If
  loc_15603B1:                         If (var_DC > &H1F) Then
  loc_15603BB:                           var_DC = 0
  loc_15603BE:                         End If
  loc_15603C1:                       Else
  loc_15603CA:                         var_DC = 0
  loc_15603CD:                       End If
  loc_15603CD:                     End If
  loc_15603CD:                   End If
  loc_15603CD:                 End If
  loc_15603CD:               End If
  loc_15603CD:             End If
  loc_15603CD:           End If
  loc_15603CD:         End If
  loc_15603CD:       End If
  loc_15603CD:     End If
  loc_15603CD:   End If
  loc_15603CD: End If
  loc_15603DA: If (var_DC = 0) Then
  loc_15603F7:   var_DC = CLng(Day(Now))
  loc_1560401: End If
  loc_156040C: If (MemVar_1F920F4 <> CDate("12:00:00 AM")) Then
  loc_156042F:   var_220 = Trim(Ucase(var_E0)) 'Variant
  loc_1560443:   If Not (var_220 = "APR") Then
  loc_1560451:     If Not (var_220 = "MAY") Then
  loc_156045F:       If Not (var_220 = "JUN") Then
  loc_156046D:         If Not (var_220 = "JUL") Then
  loc_156047B:           If Not (var_220 = "AUG") Then
  loc_1560489:             If Not (var_220 = "SEP") Then
  loc_1560497:               If Not (var_220 = "OCT") Then
  loc_15604A5:                 If Not (var_220 = "NOV") Then
  loc_15604B3:                   If (var_220 = "DEC") Then
  loc_15604B6:                   End If
  loc_15604B6:                 End If
  loc_15604B6:               End If
  loc_15604B6:             End If
  loc_15604B6:           End If
  loc_15604B6:         End If
  loc_15604B6:       End If
  loc_15604B6:     End If
  loc_15604D8:     If CBool(CVar(var_E4) <> Year(MemVar_1F920F4)) Then
  loc_15604F2:       var_E4 = CLng(Year(MemVar_1F920F4))
  loc_15604F8:     End If
  loc_15604FB:   Else
  loc_1560508:     If Not (var_220 = "JAN") Then
  loc_1560516:       If Not (var_220 = "FEB") Then
  loc_1560524:         If (var_220 = "MAR") Then
  loc_1560527:         End If
  loc_1560527:       End If
  loc_1560549:       If CBool(CVar(var_E4) <> Year(MemVar_1F920FC)) Then
  loc_1560563:         var_E4 = CLng(Year(MemVar_1F920FC))
  loc_1560569:       End If
  loc_1560569:     End If
  loc_1560569:   End If
  loc_156056B: End If
  loc_15605B2: var_110 = (Format(Trim(Str(var_DC)), "00") + "/")
  loc_15605C9: var_130 = (Format(CVar(CStr(var_E4)), "000") + Trim(var_E0))
  loc_15605D2: var_140 = (Len(Trim(Format(CVar(CStr(var_E4)), "000"))) + "/")
  loc_15605F4: var_170 = (var_140 + Trim(Str(var_E4)))
  loc_15605F9: var_88 = CStr(var_170)
  loc_1560617: Exit Sub
  loc_1560618: ' Referenced from: 155F5FC
  loc_1560622: Set var_264 = Err()
  loc_1560628: Call 0.Method_arg_1C (var_268, 1, 1, var_E4, var_E4, var_DC, var_DC)
  loc_1560639: If (var_268 = 6) Then
  loc_156063E:   Resume Next
  loc_1560642: End If
  loc_1560644: Exit Sub
End Sub

Public Sub Proc_6_33_1512840(arg_C) '1512840
  'Data Table: 4B6790
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Long
  Dim var_E4 As Long
  Dim var_EC As Long
  Dim var_A8 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_1D0 As Variant
  Dim var_110 As Variant
  Dim var_170 As Variant
  loc_1511960: On Error Goto loc_1512810
  loc_1511987: If (Len(Trim(arg_C)) = 0) Then
  loc_151198F:   var_88 = vbNullString
  loc_1511994:   Exit Sub
  loc_1511995: End If
  loc_151199E: var_DC = 0
  loc_15119A6: var_E0 = vbNullString
  loc_15119B0: var_E4 = 0
  loc_15119C9: var_E8 = CStr(Trim(arg_C))
  loc_15119F1: If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_1511A08:   var_EC = InStr(1, var_E8, "-", 0)
  loc_1511A0B: End If
  loc_1511A16: If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_1511A2D:   var_EC = InStr(1, var_E8, ".", 0)
  loc_1511A30: End If
  loc_1511A3B: If (var_EC = 0) Then
  loc_1511A55:   If ((Len(var_E8) = 6) Or (Len(var_E8) = 8)) Then
  loc_1511A74:     var_DC = CLng(Left(var_E8, 2))
  loc_1511A9A:     var_E0 = CStr(Mid(var_E8, 3, 2))
  loc_1511AC5:     var_E4 = CLng(Mid(var_E8, 5, 4))
  loc_1511AD4:   Else
  loc_1511AD6:   End If
  loc_1511AE3:   If (var_EC <> 0) Then
  loc_1511AF1:     var_A8 = CVar((var_EC - 1)) 'Long
  loc_1511B19:     If IsNumeric(Mid(var_E8, 1, 4)) Then
  loc_1511B27:       var_A8 = CVar((var_EC - 1)) 'Long
  loc_1511B4D:       var_DC = CLng(Val(CStr(Mid(var_E8, 1, 4))))
  loc_1511B5D:     Else
  loc_1511B6A:       var_A8 = CVar((var_EC - 1)) 'Long
  loc_1511B87:       var_E0 = CStr(Mid(var_E8, 1, 4))
  loc_1511B91:     End If
  loc_1511B93:   End If
  loc_1511BA0:   If (var_EC = 0) Then
  loc_1511BB2:     If IsNumeric(var_E8) Then
  loc_1511BC0:       var_DC = CLng(Val(var_E8))
  loc_1511BC6:     Else
  loc_1511BCD:       var_E0 = var_E8
  loc_1511BD0:     End If
  loc_1511BD7:   Else
  loc_1511BE3:     If (var_E0 = vbNullString) Then
  loc_1511BFF:       var_B8 = Mid(var_E8, (var_EC + 1), 4)
  loc_1511C08:       var_E8 = CStr(Mid(var_E8, 1, 4))
  loc_1511C34:       If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_1511C4B:         var_EC = InStr(1, var_E8, "-", 0)
  loc_1511C4E:       End If
  loc_1511C59:       If (InStr(1, var_E8, "/", 0) = 0) Then
  loc_1511C70:         var_EC = InStr(1, var_E8, ".", 0)
  loc_1511C73:       End If
  loc_1511C7E:       If (var_EC <> 0) Then
  loc_1511C8C:         var_A8 = CVar((var_EC - 1)) 'Long
  loc_1511CA9:         var_E0 = CStr(Mid(var_E8, 1, 4))
  loc_1511CB3:       End If
  loc_1511CBE:       If (var_EC = 0) Then
  loc_1511CC6:         var_E0 = var_E8
  loc_1511CCE:       Else
  loc_1511CD0:       End If
  loc_1511CEB:       var_B8 = Mid(var_E8, (var_EC + 1), 4)
  loc_1511CFD:       var_E4 = CLng(Val(CStr(Mid(var_E8, 1, 4))))
  loc_1511D0A:     End If
  loc_1511D0A:   End If
  loc_1511D15:   If (var_E4 = 0) Then
  loc_1511D32:     var_E4 = CLng(Year(Date))
  loc_1511D3C:   End If
  loc_1511D3C: End If
  loc_1511D64: If (Len(Trim(CVar(CStr(var_E4)))) < 4) Then
  loc_1511D7C:   var_C8 = 4
  loc_1511DB8:   var_140 = (1 - Len(Trim(Format(CVar(CStr(var_E4)), "000"))))
  loc_1511DD3:   var_170 = Mid(CVar(CStr(Year(Date))), 1, var_140)
  loc_1511E0E:   var_1D0 = (1 + Trim(Format(CVar(CStr(var_E4)), "000")))
  loc_1511E1C:   var_E4 = CLng(Val(CStr(var_1D0)))
  loc_1511E46: Else
  loc_1511E6E:   If (Len(Trim(CVar(CStr(var_E4)))) > 4) Then
  loc_1511E8B:     var_E4 = CLng(Year(Date))
  loc_1511E95:   End If
  loc_1511E95: End If
  loc_1511EA2: If (var_DC < 0) Then
  loc_1511EAC:   var_DC = 0
  loc_1511EAF: End If
  loc_1511EF9: var_1E0 = Trim(Ucase(CStr(Mid(CStr(Mid(CStr(Mid(CStr(Mid(var_E0, 1, 3)), 1, 3)), 1, 3)), 1, 3)))) 'Variant
  loc_1511F0D: If Not (var_1E0 = "1") Then
  loc_1511F1B:   If Not (var_1E0 = "01") Then
  loc_1511F29:     If Not (var_1E0 = "J") Then
  loc_1511F37:       If Not (var_1E0 = "JA") Then
  loc_1511F45:         If (var_1E0 = "JAN") Then
  loc_1511F48:         End If
  loc_1511F48:       End If
  loc_1511F48:     End If
  loc_1511F48:   End If
  loc_1511F4D:   var_E0 = "Jan"
  loc_1511F53: Else
  loc_1511F60:   If Not (var_1E0 = "2") Then
  loc_1511F6E:     If Not (var_1E0 = "02") Then
  loc_1511F7C:       If Not (var_1E0 = "F") Then
  loc_1511F8A:         If Not (var_1E0 = "FE") Then
  loc_1511F98:           If (var_1E0 = "FEB") Then
  loc_1511F9B:           End If
  loc_1511F9B:         End If
  loc_1511F9B:       End If
  loc_1511F9B:     End If
  loc_1511FA0:     var_E0 = "Feb"
  loc_1511FA6:   Else
  loc_1511FB3:     If Not (var_1E0 = "3") Then
  loc_1511FC1:       If Not (var_1E0 = "03") Then
  loc_1511FCF:         If Not (var_1E0 = "M") Then
  loc_1511FDD:           If Not (var_1E0 = "MA") Then
  loc_1511FEB:             If (var_1E0 = "MAR") Then
  loc_1511FEE:             End If
  loc_1511FEE:           End If
  loc_1511FEE:         End If
  loc_1511FEE:       End If
  loc_1511FF3:       var_E0 = "Mar"
  loc_1511FF9:     Else
  loc_1512006:       If Not (var_1E0 = "4") Then
  loc_1512014:         If Not (var_1E0 = "04") Then
  loc_1512022:           If Not (var_1E0 = "A") Then
  loc_1512030:             If Not (var_1E0 = "AP") Then
  loc_151203E:               If (var_1E0 = "APR") Then
  loc_1512041:               End If
  loc_1512041:             End If
  loc_1512041:           End If
  loc_1512041:         End If
  loc_1512046:         var_E0 = "Apr"
  loc_151204C:       Else
  loc_1512059:         If Not (var_1E0 = "5") Then
  loc_1512067:           If Not (var_1E0 = "05") Then
  loc_1512075:             If (var_1E0 = "MAY") Then
  loc_1512078:             End If
  loc_1512078:           End If
  loc_151207D:           var_E0 = "May"
  loc_1512083:         Else
  loc_1512090:           If Not (var_1E0 = "6") Then
  loc_151209E:             If Not (var_1E0 = "06") Then
  loc_15120AC:               If Not (var_1E0 = "JU") Then
  loc_15120BA:                 If (var_1E0 = "JUN") Then
  loc_15120BD:                 End If
  loc_15120BD:               End If
  loc_15120BD:             End If
  loc_15120C2:             var_E0 = "Jun"
  loc_15120C8:           Else
  loc_15120D5:             If Not (var_1E0 = "7") Then
  loc_15120E3:               If Not (var_1E0 = "07") Then
  loc_15120F1:                 If (var_1E0 = "JUL") Then
  loc_15120F4:                 End If
  loc_15120F4:               End If
  loc_15120F9:               var_E0 = "Jul"
  loc_15120FF:             Else
  loc_151210C:               If Not (var_1E0 = "8") Then
  loc_151211A:                 If Not (var_1E0 = "08") Then
  loc_1512128:                   If Not (var_1E0 = "AU") Then
  loc_1512136:                     If (var_1E0 = "AUG") Then
  loc_1512139:                     End If
  loc_1512139:                   End If
  loc_1512139:                 End If
  loc_151213E:                 var_E0 = "Aug"
  loc_1512144:               Else
  loc_1512151:                 If Not (var_1E0 = "9") Then
  loc_151215F:                   If Not (var_1E0 = "09") Then
  loc_151216D:                     If Not (var_1E0 = "S") Then
  loc_151217B:                       If Not (var_1E0 = "SE") Then
  loc_1512189:                         If (var_1E0 = "SEP") Then
  loc_151218C:                         End If
  loc_151218C:                       End If
  loc_151218C:                     End If
  loc_151218C:                   End If
  loc_1512191:                   var_E0 = "Sep"
  loc_1512197:                 Else
  loc_15121A4:                   If Not (var_1E0 = "10") Then
  loc_15121B2:                     If Not (var_1E0 = "O") Then
  loc_15121C0:                       If Not (var_1E0 = "OC") Then
  loc_15121CE:                         If (var_1E0 = "OCT") Then
  loc_15121D1:                         End If
  loc_15121D1:                       End If
  loc_15121D1:                     End If
  loc_15121D6:                     var_E0 = "Oct"
  loc_15121DC:                   Else
  loc_15121E9:                     If Not (var_1E0 = "11") Then
  loc_15121F7:                       If Not (var_1E0 = "N") Then
  loc_1512205:                         If Not (var_1E0 = "NO") Then
  loc_1512213:                           If (var_1E0 = "NOV") Then
  loc_1512216:                           End If
  loc_1512216:                         End If
  loc_1512216:                       End If
  loc_151221B:                       var_E0 = "Nov"
  loc_1512221:                     Else
  loc_151222E:                       If Not (var_1E0 = "12") Then
  loc_151223C:                         If Not (var_1E0 = "D") Then
  loc_151224A:                           If Not (var_1E0 = "DE") Then
  loc_1512258:                             If (var_1E0 = "DEC") Then
  loc_151225B:                             End If
  loc_151225B:                           End If
  loc_151225B:                         End If
  loc_1512260:                         var_E0 = "Dec"
  loc_1512266:                       Else
  loc_1512296:                         var_E0 = CStr(Format(Date, "MMM"))
  loc_15122A2:                       End If
  loc_15122A2:                     End If
  loc_15122A2:                   End If
  loc_15122A2:                 End If
  loc_15122A2:               End If
  loc_15122A2:             End If
  loc_15122A2:           End If
  loc_15122A2:         End If
  loc_15122A2:       End If
  loc_15122A2:     End If
  loc_15122A2:   End If
  loc_15122A2: End If
  loc_15122C4: var_210 = Trim(Ucase(var_E0)) 'Variant
  loc_15122D8: If Not (var_210 = "1") Then
  loc_15122E6:   If Not (var_210 = "01") Then
  loc_15122F4:     If Not (var_210 = "J") Then
  loc_1512302:       If Not (var_210 = "JA") Then
  loc_1512310:         If (var_210 = "JAN") Then
  loc_1512313:         End If
  loc_1512313:       End If
  loc_1512313:     End If
  loc_1512313:   End If
  loc_151231E:   If (var_DC > &H1F) Then
  loc_1512328:     var_DC = 0
  loc_151232B:   End If
  loc_151232E: Else
  loc_151233B:   If Not (var_210 = "2") Then
  loc_1512349:     If Not (var_210 = "02") Then
  loc_1512357:       If Not (var_210 = "F") Then
  loc_1512365:         If Not (var_210 = "FE") Then
  loc_1512373:           If (var_210 = "FEB") Then
  loc_1512376:           End If
  loc_1512376:         End If
  loc_1512376:       End If
  loc_1512376:     End If
  loc_15123B5:     If (CVar(var_DC) > IIf(((var_E4 Mod 4) = 0), 29, 28)) Then
  loc_15123BF:       var_DC = 0
  loc_15123C2:     End If
  loc_15123C5:   Else
  loc_15123D2:     If Not (var_210 = "3") Then
  loc_15123E0:       If Not (var_210 = "03") Then
  loc_15123EE:         If Not (var_210 = "M") Then
  loc_15123FC:           If Not (var_210 = "MA") Then
  loc_151240A:             If (var_210 = "MAR") Then
  loc_151240D:             End If
  loc_151240D:           End If
  loc_151240D:         End If
  loc_151240D:       End If
  loc_1512418:       If (var_DC > &H1F) Then
  loc_1512422:         var_DC = 0
  loc_1512425:       End If
  loc_1512428:     Else
  loc_1512435:       If Not (var_210 = "4") Then
  loc_1512443:         If Not (var_210 = "04") Then
  loc_1512451:           If Not (var_210 = "A") Then
  loc_151245F:             If Not (var_210 = "AP") Then
  loc_151246D:               If (var_210 = "APR") Then
  loc_1512470:               End If
  loc_1512470:             End If
  loc_1512470:           End If
  loc_1512470:         End If
  loc_151247B:         If (var_DC > &H1E) Then
  loc_1512485:           var_DC = 0
  loc_1512488:         End If
  loc_151248B:       Else
  loc_1512498:         If Not (var_210 = "5") Then
  loc_15124A6:           If Not (var_210 = "05") Then
  loc_15124B4:             If (var_210 = "MAY") Then
  loc_15124B7:             End If
  loc_15124B7:           End If
  loc_15124C2:           If (var_DC > &H1F) Then
  loc_15124CC:             var_DC = 0
  loc_15124CF:           End If
  loc_15124D2:         Else
  loc_15124DF:           If Not (var_210 = "6") Then
  loc_15124ED:             If Not (var_210 = "06") Then
  loc_15124FB:               If Not (var_210 = "JU") Then
  loc_1512509:                 If (var_210 = "JUN") Then
  loc_151250C:                 End If
  loc_151250C:               End If
  loc_151250C:             End If
  loc_1512517:             If (var_DC > &H1E) Then
  loc_1512521:               var_DC = 0
  loc_1512524:             End If
  loc_1512527:           Else
  loc_1512534:             If Not (var_210 = "7") Then
  loc_1512542:               If Not (var_210 = "07") Then
  loc_1512550:                 If (var_210 = "JUL") Then
  loc_1512553:                 End If
  loc_1512553:               End If
  loc_151255E:               If (var_DC > &H1F) Then
  loc_1512568:                 var_DC = 0
  loc_151256B:               End If
  loc_151256E:             Else
  loc_151257B:               If Not (var_210 = "8") Then
  loc_1512589:                 If Not (var_210 = "08") Then
  loc_1512597:                   If Not (var_210 = "AU") Then
  loc_15125A5:                     If (var_210 = "AUG") Then
  loc_15125A8:                     End If
  loc_15125A8:                   End If
  loc_15125A8:                 End If
  loc_15125B3:                 If (var_DC > &H1F) Then
  loc_15125BD:                   var_DC = 0
  loc_15125C0:                 End If
  loc_15125C3:               Else
  loc_15125D0:                 If Not (var_210 = "9") Then
  loc_15125DE:                   If Not (var_210 = "09") Then
  loc_15125EC:                     If Not (var_210 = "S") Then
  loc_15125FA:                       If Not (var_210 = "SE") Then
  loc_1512608:                         If (var_210 = "SEP") Then
  loc_151260B:                         End If
  loc_151260B:                       End If
  loc_151260B:                     End If
  loc_151260B:                   End If
  loc_1512616:                   If (var_DC > &H1E) Then
  loc_1512620:                     var_DC = 0
  loc_1512623:                   End If
  loc_1512626:                 Else
  loc_1512633:                   If Not (var_210 = "10") Then
  loc_1512641:                     If Not (var_210 = "O") Then
  loc_151264F:                       If Not (var_210 = "OC") Then
  loc_151265D:                         If (var_210 = "OCT") Then
  loc_1512660:                         End If
  loc_1512660:                       End If
  loc_1512660:                     End If
  loc_151266B:                     If (var_DC > &H1F) Then
  loc_1512675:                       var_DC = 0
  loc_1512678:                     End If
  loc_151267B:                   Else
  loc_1512688:                     If Not (var_210 = "11") Then
  loc_1512696:                       If Not (var_210 = "N") Then
  loc_15126A4:                         If Not (var_210 = "NO") Then
  loc_15126B2:                           If (var_210 = "NOV") Then
  loc_15126B5:                           End If
  loc_15126B5:                         End If
  loc_15126B5:                       End If
  loc_15126C0:                       If (var_DC > &H1E) Then
  loc_15126CA:                         var_DC = 0
  loc_15126CD:                       End If
  loc_15126D0:                     Else
  loc_15126DD:                       If Not (var_210 = "12") Then
  loc_15126EB:                         If Not (var_210 = "D") Then
  loc_15126F9:                           If Not (var_210 = "DE") Then
  loc_1512707:                             If (var_210 = "DEC") Then
  loc_151270A:                             End If
  loc_151270A:                           End If
  loc_151270A:                         End If
  loc_1512715:                         If (var_DC > &H1F) Then
  loc_151271F:                           var_DC = 0
  loc_1512722:                         End If
  loc_1512725:                       Else
  loc_151272E:                         var_DC = 0
  loc_1512731:                       End If
  loc_1512731:                     End If
  loc_1512731:                   End If
  loc_1512731:                 End If
  loc_1512731:               End If
  loc_1512731:             End If
  loc_1512731:           End If
  loc_1512731:         End If
  loc_1512731:       End If
  loc_1512731:     End If
  loc_1512731:   End If
  loc_1512731: End If
  loc_151273E: If (var_DC = 0) Then
  loc_151275B:   var_DC = CLng(Day(Now))
  loc_1512765: End If
  loc_15127AA: var_110 = (Format(Trim(Str(var_DC)), "00") + "/")
  loc_15127C1: var_130 = (Format(CVar(CStr(var_E4)), "000") + Trim(var_E0))
  loc_15127CA: var_140 = (Len(Trim(Format(CVar(CStr(var_E4)), "000"))) + "/")
  loc_15127EC: var_170 = (var_140 + Trim(Str(var_E4)))
  loc_15127F1: var_88 = CStr(var_170)
  loc_151280F: Exit Sub
  loc_1512810: ' Referenced from: 1511960
  loc_151281A: Set var_224 = Err()
  loc_1512820: Call 0.Method_arg_1C (var_228, 1, 1, var_DC, var_DC, var_DC, var_DC)
  loc_1512831: If (var_228 = 6) Then
  loc_1512836:   Resume Next
  loc_151283A: End If
  loc_151283C: Exit Sub
End Sub

Public Sub Proc_6_34_14ECF20(arg_C) '14ECF20
  'Data Table: 4B6790
  Dim var_8C As Long
  Dim var_94 As Long
  Dim var_9C As Long
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_1D0 As Variant
  Dim var_DC As Integer
  Dim var_110 As Variant
  Dim var_170 As Variant
  loc_14EC11C: On Error Goto loc_14ECEF0
  loc_14EC126: var_8C = 0
  loc_14EC12E: var_90 = vbNullString
  loc_14EC138: var_94 = 0
  loc_14EC151: var_98 = CStr(Trim(arg_C))
  loc_14EC179: If (InStr(1, var_98, "/", 0) = 0) Then
  loc_14EC190:   var_9C = InStr(1, var_98, "-", 0)
  loc_14EC193: End If
  loc_14EC19E: If (InStr(1, var_98, "/", 0) = 0) Then
  loc_14EC1B5:   var_9C = InStr(1, var_98, ".", 0)
  loc_14EC1B8: End If
  loc_14EC1C3: If (var_9C <> 0) Then
  loc_14EC1D1:   var_BC = CVar((var_9C - 1)) 'Long
  loc_14EC1F9:   If IsNumeric(Mid(var_98, 1, Trim(arg_C))) Then
  loc_14EC207:     var_BC = CVar((var_9C - 1)) 'Long
  loc_14EC22D:     var_8C = CLng(Val(CStr(Mid(var_98, 1, Trim(arg_C)))))
  loc_14EC23D:   Else
  loc_14EC24A:     var_BC = CVar((var_9C - 1)) 'Long
  loc_14EC267:     var_90 = CStr(Mid(var_98, 1, Trim(arg_C)))
  loc_14EC271:   End If
  loc_14EC273: End If
  loc_14EC280: If (var_9C = 0) Then
  loc_14EC292:   If IsNumeric(var_98) Then
  loc_14EC2A0:     var_8C = CLng(Val(var_98))
  loc_14EC2A6:   Else
  loc_14EC2AD:     var_90 = var_98
  loc_14EC2B0:   End If
  loc_14EC2B7: Else
  loc_14EC2C3:   If (var_90 = vbNullString) Then
  loc_14EC2DF:     var_DC = Mid(var_98, (var_9C + 1), Trim(arg_C))
  loc_14EC2E8:     var_98 = CStr(Mid(var_98, 1, Trim(arg_C)))
  loc_14EC314:     If (InStr(1, var_98, "/", 0) = 0) Then
  loc_14EC32B:       var_9C = InStr(1, var_98, "-", 0)
  loc_14EC32E:     End If
  loc_14EC339:     If (InStr(1, var_98, "/", 0) = 0) Then
  loc_14EC350:       var_9C = InStr(1, var_98, ".", 0)
  loc_14EC353:     End If
  loc_14EC35E:     If (var_9C <> 0) Then
  loc_14EC36C:       var_BC = CVar((var_9C - 1)) 'Long
  loc_14EC389:       var_90 = CStr(Mid(var_98, 1, Trim(arg_C)))
  loc_14EC393:     End If
  loc_14EC39E:     If (var_9C = 0) Then
  loc_14EC3A6:       var_90 = var_98
  loc_14EC3AE:     Else
  loc_14EC3B0:     End If
  loc_14EC3CB:     var_DC = Mid(var_98, (var_9C + 1), Trim(arg_C))
  loc_14EC3DD:     var_94 = CLng(Val(CStr(Mid(var_98, 1, Trim(arg_C)))))
  loc_14EC3EA:   End If
  loc_14EC3EA: End If
  loc_14EC3F5: If (var_94 = 0) Then
  loc_14EC412:   var_94 = CLng(Year(Date))
  loc_14EC41C: End If
  loc_14EC444: If (Len(Trim(CVar(CStr(var_94)))) < 4) Then
  loc_14EC45C:   var_CC = 4
  loc_14EC498:   var_140 = (1 - Len(Trim(Format(CVar(CStr(var_94)), "000"))))
  loc_14EC4B3:   var_170 = Mid(CVar(CStr(Year(Date))), 1, var_140)
  loc_14EC4EE:   var_1D0 = (1 + Trim(Format(CVar(CStr(var_94)), "000")))
  loc_14EC4FC:   var_94 = CLng(Val(CStr(var_1D0)))
  loc_14EC526: Else
  loc_14EC54E:   If (Len(Trim(CVar(CStr(var_94)))) > 4) Then
  loc_14EC56B:     var_94 = CLng(Year(Date))
  loc_14EC575:   End If
  loc_14EC575: End If
  loc_14EC582: If (var_8C < 0) Then
  loc_14EC58C:   var_8C = 0
  loc_14EC58F: End If
  loc_14EC5D9: var_1E0 = Trim(Ucase(CStr(Mid(CStr(Mid(CStr(Mid(CStr(Mid(var_90, 1, 3)), 1, 3)), 1, 3)), 1, 3)))) 'Variant
  loc_14EC5ED: If Not (var_1E0 = "1") Then
  loc_14EC5FB:   If Not (var_1E0 = "01") Then
  loc_14EC609:     If Not (var_1E0 = "J") Then
  loc_14EC617:       If Not (var_1E0 = "JA") Then
  loc_14EC625:         If (var_1E0 = "JAN") Then
  loc_14EC628:         End If
  loc_14EC628:       End If
  loc_14EC628:     End If
  loc_14EC628:   End If
  loc_14EC62D:   var_90 = "Jan"
  loc_14EC633: Else
  loc_14EC640:   If Not (var_1E0 = "2") Then
  loc_14EC64E:     If Not (var_1E0 = "02") Then
  loc_14EC65C:       If Not (var_1E0 = "F") Then
  loc_14EC66A:         If Not (var_1E0 = "FE") Then
  loc_14EC678:           If (var_1E0 = "FEB") Then
  loc_14EC67B:           End If
  loc_14EC67B:         End If
  loc_14EC67B:       End If
  loc_14EC67B:     End If
  loc_14EC680:     var_90 = "Feb"
  loc_14EC686:   Else
  loc_14EC693:     If Not (var_1E0 = "3") Then
  loc_14EC6A1:       If Not (var_1E0 = "03") Then
  loc_14EC6AF:         If Not (var_1E0 = "M") Then
  loc_14EC6BD:           If Not (var_1E0 = "MA") Then
  loc_14EC6CB:             If (var_1E0 = "MAR") Then
  loc_14EC6CE:             End If
  loc_14EC6CE:           End If
  loc_14EC6CE:         End If
  loc_14EC6CE:       End If
  loc_14EC6D3:       var_90 = "Mar"
  loc_14EC6D9:     Else
  loc_14EC6E6:       If Not (var_1E0 = "4") Then
  loc_14EC6F4:         If Not (var_1E0 = "04") Then
  loc_14EC702:           If Not (var_1E0 = "A") Then
  loc_14EC710:             If Not (var_1E0 = "AP") Then
  loc_14EC71E:               If (var_1E0 = "APR") Then
  loc_14EC721:               End If
  loc_14EC721:             End If
  loc_14EC721:           End If
  loc_14EC721:         End If
  loc_14EC726:         var_90 = "Apr"
  loc_14EC72C:       Else
  loc_14EC739:         If Not (var_1E0 = "5") Then
  loc_14EC747:           If Not (var_1E0 = "05") Then
  loc_14EC755:             If (var_1E0 = "MAY") Then
  loc_14EC758:             End If
  loc_14EC758:           End If
  loc_14EC75D:           var_90 = "May"
  loc_14EC763:         Else
  loc_14EC770:           If Not (var_1E0 = "6") Then
  loc_14EC77E:             If Not (var_1E0 = "06") Then
  loc_14EC78C:               If Not (var_1E0 = "JU") Then
  loc_14EC79A:                 If (var_1E0 = "JUN") Then
  loc_14EC79D:                 End If
  loc_14EC79D:               End If
  loc_14EC79D:             End If
  loc_14EC7A2:             var_90 = "Jun"
  loc_14EC7A8:           Else
  loc_14EC7B5:             If Not (var_1E0 = "7") Then
  loc_14EC7C3:               If Not (var_1E0 = "07") Then
  loc_14EC7D1:                 If (var_1E0 = "JUL") Then
  loc_14EC7D4:                 End If
  loc_14EC7D4:               End If
  loc_14EC7D9:               var_90 = "Jul"
  loc_14EC7DF:             Else
  loc_14EC7EC:               If Not (var_1E0 = "8") Then
  loc_14EC7FA:                 If Not (var_1E0 = "08") Then
  loc_14EC808:                   If Not (var_1E0 = "AU") Then
  loc_14EC816:                     If (var_1E0 = "AUG") Then
  loc_14EC819:                     End If
  loc_14EC819:                   End If
  loc_14EC819:                 End If
  loc_14EC81E:                 var_90 = "Aug"
  loc_14EC824:               Else
  loc_14EC831:                 If Not (var_1E0 = "9") Then
  loc_14EC83F:                   If Not (var_1E0 = "09") Then
  loc_14EC84D:                     If Not (var_1E0 = "S") Then
  loc_14EC85B:                       If Not (var_1E0 = "SE") Then
  loc_14EC869:                         If (var_1E0 = "SEP") Then
  loc_14EC86C:                         End If
  loc_14EC86C:                       End If
  loc_14EC86C:                     End If
  loc_14EC86C:                   End If
  loc_14EC871:                   var_90 = "Sep"
  loc_14EC877:                 Else
  loc_14EC884:                   If Not (var_1E0 = "10") Then
  loc_14EC892:                     If Not (var_1E0 = "O") Then
  loc_14EC8A0:                       If Not (var_1E0 = "OC") Then
  loc_14EC8AE:                         If (var_1E0 = "OCT") Then
  loc_14EC8B1:                         End If
  loc_14EC8B1:                       End If
  loc_14EC8B1:                     End If
  loc_14EC8B6:                     var_90 = "Oct"
  loc_14EC8BC:                   Else
  loc_14EC8C9:                     If Not (var_1E0 = "11") Then
  loc_14EC8D7:                       If Not (var_1E0 = "N") Then
  loc_14EC8E5:                         If Not (var_1E0 = "NO") Then
  loc_14EC8F3:                           If (var_1E0 = "NOV") Then
  loc_14EC8F6:                           End If
  loc_14EC8F6:                         End If
  loc_14EC8F6:                       End If
  loc_14EC8FB:                       var_90 = "Nov"
  loc_14EC901:                     Else
  loc_14EC90E:                       If Not (var_1E0 = "12") Then
  loc_14EC91C:                         If Not (var_1E0 = "D") Then
  loc_14EC92A:                           If Not (var_1E0 = "DE") Then
  loc_14EC938:                             If (var_1E0 = "DEC") Then
  loc_14EC93B:                             End If
  loc_14EC93B:                           End If
  loc_14EC93B:                         End If
  loc_14EC940:                         var_90 = "Dec"
  loc_14EC946:                       Else
  loc_14EC976:                         var_90 = CStr(Format(Date, "MMM"))
  loc_14EC982:                       End If
  loc_14EC982:                     End If
  loc_14EC982:                   End If
  loc_14EC982:                 End If
  loc_14EC982:               End If
  loc_14EC982:             End If
  loc_14EC982:           End If
  loc_14EC982:         End If
  loc_14EC982:       End If
  loc_14EC982:     End If
  loc_14EC982:   End If
  loc_14EC982: End If
  loc_14EC9A4: var_210 = Trim(Ucase(var_90)) 'Variant
  loc_14EC9B8: If Not (var_210 = "1") Then
  loc_14EC9C6:   If Not (var_210 = "01") Then
  loc_14EC9D4:     If Not (var_210 = "J") Then
  loc_14EC9E2:       If Not (var_210 = "JA") Then
  loc_14EC9F0:         If (var_210 = "JAN") Then
  loc_14EC9F3:         End If
  loc_14EC9F3:       End If
  loc_14EC9F3:     End If
  loc_14EC9F3:   End If
  loc_14EC9FE:   If (var_8C > &H1F) Then
  loc_14ECA08:     var_8C = 0
  loc_14ECA0B:   End If
  loc_14ECA0E: Else
  loc_14ECA1B:   If Not (var_210 = "2") Then
  loc_14ECA29:     If Not (var_210 = "02") Then
  loc_14ECA37:       If Not (var_210 = "F") Then
  loc_14ECA45:         If Not (var_210 = "FE") Then
  loc_14ECA53:           If (var_210 = "FEB") Then
  loc_14ECA56:           End If
  loc_14ECA56:         End If
  loc_14ECA56:       End If
  loc_14ECA56:     End If
  loc_14ECA95:     If (CVar(var_8C) > IIf(((var_94 Mod 4) = 0), 29, 28)) Then
  loc_14ECA9F:       var_8C = 0
  loc_14ECAA2:     End If
  loc_14ECAA5:   Else
  loc_14ECAB2:     If Not (var_210 = "3") Then
  loc_14ECAC0:       If Not (var_210 = "03") Then
  loc_14ECACE:         If Not (var_210 = "M") Then
  loc_14ECADC:           If Not (var_210 = "MA") Then
  loc_14ECAEA:             If (var_210 = "MAR") Then
  loc_14ECAED:             End If
  loc_14ECAED:           End If
  loc_14ECAED:         End If
  loc_14ECAED:       End If
  loc_14ECAF8:       If (var_8C > &H1F) Then
  loc_14ECB02:         var_8C = 0
  loc_14ECB05:       End If
  loc_14ECB08:     Else
  loc_14ECB15:       If Not (var_210 = "4") Then
  loc_14ECB23:         If Not (var_210 = "04") Then
  loc_14ECB31:           If Not (var_210 = "A") Then
  loc_14ECB3F:             If Not (var_210 = "AP") Then
  loc_14ECB4D:               If (var_210 = "APR") Then
  loc_14ECB50:               End If
  loc_14ECB50:             End If
  loc_14ECB50:           End If
  loc_14ECB50:         End If
  loc_14ECB5B:         If (var_8C > &H1E) Then
  loc_14ECB65:           var_8C = 0
  loc_14ECB68:         End If
  loc_14ECB6B:       Else
  loc_14ECB78:         If Not (var_210 = "5") Then
  loc_14ECB86:           If Not (var_210 = "05") Then
  loc_14ECB94:             If (var_210 = "MAY") Then
  loc_14ECB97:             End If
  loc_14ECB97:           End If
  loc_14ECBA2:           If (var_8C > &H1F) Then
  loc_14ECBAC:             var_8C = 0
  loc_14ECBAF:           End If
  loc_14ECBB2:         Else
  loc_14ECBBF:           If Not (var_210 = "6") Then
  loc_14ECBCD:             If Not (var_210 = "06") Then
  loc_14ECBDB:               If Not (var_210 = "JU") Then
  loc_14ECBE9:                 If (var_210 = "JUN") Then
  loc_14ECBEC:                 End If
  loc_14ECBEC:               End If
  loc_14ECBEC:             End If
  loc_14ECBF7:             If (var_8C > &H1E) Then
  loc_14ECC01:               var_8C = 0
  loc_14ECC04:             End If
  loc_14ECC07:           Else
  loc_14ECC14:             If Not (var_210 = "7") Then
  loc_14ECC22:               If Not (var_210 = "07") Then
  loc_14ECC30:                 If (var_210 = "JUL") Then
  loc_14ECC33:                 End If
  loc_14ECC33:               End If
  loc_14ECC3E:               If (var_8C > &H1F) Then
  loc_14ECC48:                 var_8C = 0
  loc_14ECC4B:               End If
  loc_14ECC4E:             Else
  loc_14ECC5B:               If Not (var_210 = "8") Then
  loc_14ECC69:                 If Not (var_210 = "08") Then
  loc_14ECC77:                   If Not (var_210 = "AU") Then
  loc_14ECC85:                     If (var_210 = "AUG") Then
  loc_14ECC88:                     End If
  loc_14ECC88:                   End If
  loc_14ECC88:                 End If
  loc_14ECC93:                 If (var_8C > &H1F) Then
  loc_14ECC9D:                   var_8C = 0
  loc_14ECCA0:                 End If
  loc_14ECCA3:               Else
  loc_14ECCB0:                 If Not (var_210 = "9") Then
  loc_14ECCBE:                   If Not (var_210 = "09") Then
  loc_14ECCCC:                     If Not (var_210 = "S") Then
  loc_14ECCDA:                       If Not (var_210 = "SE") Then
  loc_14ECCE8:                         If (var_210 = "SEP") Then
  loc_14ECCEB:                         End If
  loc_14ECCEB:                       End If
  loc_14ECCEB:                     End If
  loc_14ECCEB:                   End If
  loc_14ECCF6:                   If (var_8C > &H1E) Then
  loc_14ECD00:                     var_8C = 0
  loc_14ECD03:                   End If
  loc_14ECD06:                 Else
  loc_14ECD13:                   If Not (var_210 = "10") Then
  loc_14ECD21:                     If Not (var_210 = "O") Then
  loc_14ECD2F:                       If Not (var_210 = "OC") Then
  loc_14ECD3D:                         If (var_210 = "OCT") Then
  loc_14ECD40:                         End If
  loc_14ECD40:                       End If
  loc_14ECD40:                     End If
  loc_14ECD4B:                     If (var_8C > &H1F) Then
  loc_14ECD55:                       var_8C = 0
  loc_14ECD58:                     End If
  loc_14ECD5B:                   Else
  loc_14ECD68:                     If Not (var_210 = "11") Then
  loc_14ECD76:                       If Not (var_210 = "N") Then
  loc_14ECD84:                         If Not (var_210 = "NO") Then
  loc_14ECD92:                           If (var_210 = "NOV") Then
  loc_14ECD95:                           End If
  loc_14ECD95:                         End If
  loc_14ECD95:                       End If
  loc_14ECDA0:                       If (var_8C > &H1E) Then
  loc_14ECDAA:                         var_8C = 0
  loc_14ECDAD:                       End If
  loc_14ECDB0:                     Else
  loc_14ECDBD:                       If Not (var_210 = "12") Then
  loc_14ECDCB:                         If Not (var_210 = "D") Then
  loc_14ECDD9:                           If Not (var_210 = "DE") Then
  loc_14ECDE7:                             If (var_210 = "DEC") Then
  loc_14ECDEA:                             End If
  loc_14ECDEA:                           End If
  loc_14ECDEA:                         End If
  loc_14ECDF5:                         If (var_8C > &H1F) Then
  loc_14ECDFF:                           var_8C = 0
  loc_14ECE02:                         End If
  loc_14ECE05:                       Else
  loc_14ECE0E:                         var_8C = 0
  loc_14ECE11:                       End If
  loc_14ECE11:                     End If
  loc_14ECE11:                   End If
  loc_14ECE11:                 End If
  loc_14ECE11:               End If
  loc_14ECE11:             End If
  loc_14ECE11:           End If
  loc_14ECE11:         End If
  loc_14ECE11:       End If
  loc_14ECE11:     End If
  loc_14ECE11:   End If
  loc_14ECE11: End If
  loc_14ECE1E: If (var_8C = 0) Then
  loc_14ECE3B:   var_8C = CLng(Day(Now))
  loc_14ECE45: End If
  loc_14ECE8A: var_110 = (Format(Trim(Str(var_8C)), "00") + "/")
  loc_14ECEA1: var_130 = (Format(CVar(CStr(var_94)), "000") + Trim(var_90))
  loc_14ECEAA: var_140 = (Len(Trim(Format(CVar(CStr(var_94)), "000"))) + "/")
  loc_14ECECC: var_170 = (var_140 + Trim(Str(var_94)))
  loc_14ECED1: var_88 = CStr(var_170)
  loc_14ECEEF: Exit Sub
  loc_14ECEF0: ' Referenced from: 14EC11C
  loc_14ECEFA: Set var_224 = Err()
  loc_14ECF00: Call 0.Method_arg_1C (var_228, 1, 1, var_8C, var_8C, var_8C, var_8C)
  loc_14ECF11: If (var_228 = 6) Then
  loc_14ECF16:   Resume Next
  loc_14ECF1A: End If
  loc_14ECF1C: Exit Sub
End Sub

Public Sub Proc_6_35_F31B34(arg_C) 'F31B34
  'Data Table: 4B6790
  loc_F31A24: arg_C = CStr(Ucase(arg_C))
  loc_F31A33: If (arg_C = "JAN") Then
  loc_F31A3A:   var_86 = CByte(1) 'Byte
  loc_F31A41: Else
  loc_F31A49:   If (arg_C = "FEB") Then
  loc_F31A50:     var_86 = CByte(2) 'Byte
  loc_F31A57:   Else
  loc_F31A5F:     If (arg_C = "MAR") Then
  loc_F31A66:       var_86 = CByte(3) 'Byte
  loc_F31A6D:     Else
  loc_F31A75:       If (arg_C = "APR") Then
  loc_F31A7C:         var_86 = CByte(4) 'Byte
  loc_F31A83:       Else
  loc_F31A8B:         If (arg_C = "MAY") Then
  loc_F31A92:           var_86 = CByte(5) 'Byte
  loc_F31A99:         Else
  loc_F31AA1:           If (arg_C = "JUN") Then
  loc_F31AA8:             var_86 = CByte(6) 'Byte
  loc_F31AAF:           Else
  loc_F31AB7:             If (arg_C = "JUL") Then
  loc_F31ABE:               var_86 = CByte(7) 'Byte
  loc_F31AC5:             Else
  loc_F31ACD:               If (arg_C = "AUG") Then
  loc_F31AD4:                 var_86 = CByte(8) 'Byte
  loc_F31ADB:               Else
  loc_F31AE3:                 If (arg_C = "SEP") Then
  loc_F31AEA:                   var_86 = CByte(9) 'Byte
  loc_F31AF1:                 Else
  loc_F31AF9:                   If (arg_C = "OCT") Then
  loc_F31B00:                     var_86 = CByte(&HA) 'Byte
  loc_F31B07:                   Else
  loc_F31B0F:                     If (arg_C = "NOV") Then
  loc_F31B16:                       var_86 = CByte(&HB) 'Byte
  loc_F31B1D:                     Else
  loc_F31B25:                       If (arg_C = "DEC") Then
  loc_F31B2C:                         var_86 = CByte(&HC) 'Byte
  loc_F31B30:                       End If
  loc_F31B30:                     End If
  loc_F31B30:                   End If
  loc_F31B30:                 End If
  loc_F31B30:               End If
  loc_F31B30:             End If
  loc_F31B30:           End If
  loc_F31B30:         End If
  loc_F31B30:       End If
  loc_F31B30:     End If
  loc_F31B30:   End If
  loc_F31B30: End If
  loc_F31B30: Result =  Exit Sub 'Byte
End Sub

Public Sub Proc_6_36_11C2EAC(arg_C, arg_10, arg_14) '11C2EAC
  'Data Table: 4B6790
  Dim var_B0 As Variant
  Dim var_86 As Integer
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  loc_11C2A79: var_8C = CStr(Ucase(Trim(arg_C)))
  loc_11C2AA2: var_90 = CStr(Ucase(Trim(arg_10)))
  loc_11C2ACB: var_94 = CStr(Ucase(Trim(arg_14)))
  loc_11C2AD7: var_86 = 0
  loc_11C2AE2: If (var_94 = "ANNUAL") Then
  loc_11C2AED:   If (var_8C = var_90) Then
  loc_11C2AF2:     var_86 = &HFF
  loc_11C2AF5:   End If
  loc_11C2AF8: Else
  loc_11C2B00:   If (var_94 = "HALF YEARLY") Then
  loc_11C2B0C:     var_96 = Proc_6_35_F31B34(var_8C, var_86) 'Byte
  loc_11C2B19:     var_D0 = CVar((CInt(var_96) + 6)) 'Integer
  loc_11C2B28:     var_C0 = CVar(((CInt(var_96) + 6) - &HC)) 'Integer
  loc_11C2B37:     var_B0 = ((CInt(var_96) + 6) > &HC)
  loc_11C2B74:     If ( Or ((var_86 = Proc_6_35_F31B34(var_90, var_96)) = Proc_6_35_F31B34(var_90, CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14))))))) Then
  loc_11C2B79:       var_86 = &HFF
  loc_11C2B7C:     End If
  loc_11C2B7F:   Else
  loc_11C2B87:     If (var_94 = "QUARTERLY") Then
  loc_11C2B93:       var_96 = Proc_6_35_F31B34(var_8C) 'Byte
  loc_11C2BA0:       var_D0 = CVar((CInt(var_96) + 3)) 'Integer
  loc_11C2BAF:       var_C0 = CVar(((CInt(var_96) + 3) - &HC)) 'Integer
  loc_11C2BBE:       var_B0 = ((CInt(var_96) + 3) > &HC)
  loc_11C2BCF:       var_98 = CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14)))) 'Byte
  loc_11C2BE7:       var_D0 = CVar((CInt(var_98) + 3)) 'Integer
  loc_11C2BF6:       var_C0 = CVar(((CInt(var_98) + 3) - &HC)) 'Integer
  loc_11C2C05:       var_B0 = ((CInt(var_98) + 3) > &HC)
  loc_11C2C16:       var_9A = CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14)))) 'Byte
  loc_11C2C2E:       var_D0 = CVar((CInt(var_9A) + 3)) 'Integer
  loc_11C2C3D:       var_C0 = CVar(((CInt(var_9A) + 3) - &HC)) 'Integer
  loc_11C2C4C:       var_B0 = ((CInt(var_9A) + 3) > &HC)
  loc_11C2CA7:       If ( Or (( Or (( Or ((var_86 = Proc_6_35_F31B34(var_90, var_96)) = Proc_6_35_F31B34(var_90, var_98))) = Proc_6_35_F31B34(var_90, var_9A))) = Proc_6_35_F31B34(var_90, CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14))))))) Then
  loc_11C2CAC:         var_86 = &HFF
  loc_11C2CAF:       End If
  loc_11C2CB2:     Else
  loc_11C2CBA:       If (var_94 = "BI MONTHLY") Then
  loc_11C2CC6:         var_96 = Proc_6_35_F31B34(var_8C) 'Byte
  loc_11C2CD3:         var_D0 = CVar((CInt(var_96) + 2)) 'Integer
  loc_11C2CE2:         var_C0 = CVar(((CInt(var_96) + 2) - &HC)) 'Integer
  loc_11C2CF1:         var_B0 = ((CInt(var_96) + 2) > &HC)
  loc_11C2D02:         var_98 = CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14)))) 'Byte
  loc_11C2D1A:         var_D0 = CVar((CInt(var_98) + 2)) 'Integer
  loc_11C2D29:         var_C0 = CVar(((CInt(var_98) + 2) - &HC)) 'Integer
  loc_11C2D38:         var_B0 = ((CInt(var_98) + 2) > &HC)
  loc_11C2D49:         var_9A = CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14)))) 'Byte
  loc_11C2D61:         var_D0 = CVar((CInt(var_9A) + 2)) 'Integer
  loc_11C2D70:         var_C0 = CVar(((CInt(var_9A) + 2) - &HC)) 'Integer
  loc_11C2D7F:         var_B0 = ((CInt(var_9A) + 2) > &HC)
  loc_11C2D90:         var_9C = CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14)))) 'Byte
  loc_11C2DA8:         var_D0 = CVar((CInt(var_9C) + 2)) 'Integer
  loc_11C2DB7:         var_C0 = CVar(((CInt(var_9C) + 2) - &HC)) 'Integer
  loc_11C2DC6:         var_B0 = ((CInt(var_9C) + 2) > &HC)
  loc_11C2DD7:         var_9E = CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14)))) 'Byte
  loc_11C2DEF:         var_D0 = CVar((CInt(var_9E) + 2)) 'Integer
  loc_11C2DFE:         var_C0 = CVar(((CInt(var_9E) + 2) - &HC)) 'Integer
  loc_11C2E0D:         var_B0 = ((CInt(var_9E) + 2) > &HC)
  loc_11C2E86:         If ( Or (( Or (( Or (( Or (( Or ((var_86 = Proc_6_35_F31B34(var_90, var_96)) = Proc_6_35_F31B34(var_90, var_98))) = Proc_6_35_F31B34(var_90, var_9A))) = Proc_6_35_F31B34(var_90, var_9C))) = Proc_6_35_F31B34(var_90, var_9E))) = Proc_6_35_F31B34(var_90, CByte(IIf(arg_14, Trim(arg_14), Ucase(Trim(arg_14))))))) Then
  loc_11C2E8B:           var_86 = &HFF
  loc_11C2E8E:         End If
  loc_11C2E91:       Else
  loc_11C2EA2:         If ((var_94 = "MONTHLY") Or (var_94 = "OTHER")) Then
  loc_11C2EA7:           var_86 = &HFF
  loc_11C2EAA:         End If
  loc_11C2EAA:       End If
  loc_11C2EAA:     End If
  loc_11C2EAA:   End If
  loc_11C2EAA: End If
  loc_11C2EAA: End Sub
End Sub

Public Sub Proc_6_37_F76F28
  'Data Table: 4B6790
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_104 As Variant
  loc_F76DE4: On Error Resume Next
  loc_F76DF1: var_B4 = Me.Fgrid1.rows
  loc_F76E06: If (var_B4 >= 1) Then
  loc_F76E3A:   If (MsgBox("Are you sure to Delete this ?", &H124, var_B4, var_C4, var_104) = 6) Then
  loc_F76E5C:     If (Me.Fgrid1.rows = 2) Then
  loc_F76E6F:       Me.Fgrid1.rows = 1
  loc_F76E78:       var_A4 = vbNullString
  loc_F76E88:       Call Me.Fgrid1.AddItem
  loc_F76E94:     Else
  loc_F76EA0:       var_B4 = Me.Fgrid1.Row
  loc_F76EAA:       var_104 = Me.Fgrid1
  loc_F76EB1:       Call var_104.RemoveItem
  loc_F76EC0:     End If
  loc_F76ED2:     Me.Fgrid1.Col = 1
  loc_F76EE9:     Me.Fgrid1.Sort = 0
  loc_F76EF0:   End If
  loc_F76EF5: Else
  loc_F76F12:   MsgBox("No Entries To Delete", &H10, var_B4, var_C4, var_104)
  loc_F76F22: End If
  loc_F76F26: Exit Sub
End Sub

Public Sub Proc_6_38_E68A98(arg_C) 'E68A98
  'Data Table: 4B6790
  loc_E68A87: var_88 = CStr(Trim(IIf(IsNull(arg_C), vbNullString, arg_C)))
  loc_E68A95: Exit Sub
End Sub

Public Sub Proc_6_39_E7C810
  'Data Table: 4B6790
  loc_E7C7BC: If IsNull(arg_10) Then
  loc_E7C7C4:   var_94 = 0 'Variant
  loc_E7C7CB: Else
  loc_E7C7F0:   If (Trim(CVar(CStr(arg_10))) = vbNullString) Then
  loc_E7C7F8:     var_94 = 0 'Variant
  loc_E7C7FF:   Else
  loc_E7C805:     var_94 = arg_10 'Variant
  loc_E7C809:   End If
  loc_E7C809: End If
  loc_E7C809: Result = arg_10: Exit Sub
loc_E7C80D: End Sub
End Sub

Public Sub Proc_6_40_EA50F0(arg_C) 'EA50F0
  'Data Table: 4B6790
  loc_EA50ED: End Sub
End Sub

Public Sub Proc_6_41_FA0BA4(arg_C, arg_10, arg_14, arg_18) 'FA0BA4
  'Data Table: 4B6790
  Dim var_F4 As Variant
  Dim var_94 As String
  Dim var_104 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim arg_10 As Integer
  loc_FA0A4E: If (arg_10 = &H2E) Then
  loc_FA0A54:   var_F4 = Me.SelStart
  loc_FA0A67:   var_94 = "-"
  loc_FA0A8C:   var_104 = (var_F4 + 1)
  loc_FA0AB6:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE7C
  loc_FA0AC6:   var_1B4 = (Len((InStr(1, CVar(arg_C), var_94, 0) <> 0) And (Mid(arg_C, CLng(var_104), 1) = ".")) - 1)
  loc_FA0AD0:   var_1D4 = (var_1B4 - CVar(arg_18))
  loc_FA0AF4:   If CBool(var_F4 And (var_1D4 >= CVar(arg_14))) Then
  loc_FA0AF9:     arg_10 = 0
  loc_FA0AFF:   Else
  loc_FA0B02:     var_F4 = Me.SelStart
  loc_FA0B15:     var_94 = "-"
  loc_FA0B3A:     var_104 = (var_F4 + 1)
  loc_FA0B64:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE7C
  loc_FA0B75:     var_1B4 = (Len((InStr(1, CVar(arg_C), var_94, 0) = 0) And (Mid(arg_C, CLng(var_104), 1) = ".")) - CVar(arg_18))
  loc_FA0B99:     If CBool(var_F4 And (var_1B4 >= CVar(arg_14))) Then
  loc_FA0B9E:       arg_10 = 0
  loc_FA0BA1:     End If
  loc_FA0BA1:   End If
  loc_FA0BA1: End If
  loc_FA0BA1: Exit Sub
End Sub

Public Sub Proc_6_42_129A86C(arg_C, arg_10, arg_14, arg_18) '129A86C
  'Data Table: 4B6790
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim arg_10 As Integer
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim Me As TextBox
  Dim var_178 As Variant
  Dim var_1A8 As Variant
  Dim var_218 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  loc_129A2A4: On Error Resume Next
  loc_129A2AF: If (arg_18 = 0) Then
  loc_129A2B4:   var_98 = "0123456789-"
  loc_129A2C6:   var_88 = CStr(var_98 & Me.Tag)
  loc_129A2D3: Else
  loc_129A2D5:   var_98 = "0123456789.-"
  loc_129A2E7:   var_88 = CStr(var_98 & Me.Tag)
  loc_129A2F1: End If
  loc_129A2F9: If (arg_10 > &H1A) Then
  loc_129A330:   If (InStr(1, CVar(var_88), Chr(CLng(arg_10)), 0) = 0) Then
  loc_129A337:     arg_10 = 0
  loc_129A33A:   End If
  loc_129A348:   var_98 = "-"
  loc_129A377:   If CBool((InStr(1, CVar(arg_C), CVar(var_88), 0) <> 0) And (arg_10 = &H2D)) Then
  loc_129A37E:     arg_10 = 0
  loc_129A381:   End If
  loc_129A3A8:   If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129A3B3:     If (arg_10 = &H2E) Then
  loc_129A3BA:       arg_10 = 0
  loc_129A3BD:     End If
  loc_129A3CB:     var_98 = "-"
  loc_129A3E4:     If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129A408:       var_B8 = (InStr(1, CVar(arg_C), ".", 0) - 1)
  loc_129A44C:       If CBool((InStr(1, CVar(var_88), Chr(CLng(arg_10)), 0) > CVar(arg_14)) And (Me.SelStart < InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129A453:         arg_10 = 0
  loc_129A459:       Else
  loc_129A45E:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129A489:         var_128 = (InStr(1, CVar(arg_C), ".", 0) + CVar(arg_18))
  loc_129A4CA:         If CBool((Len(arg_10) >= InStr(1, CVar(arg_C), ".", 0)) And (Me.SelStart >= InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129A4D1:           arg_10 = 0
  loc_129A4D4:         End If
  loc_129A4D4:       End If
  loc_129A4D9:     Else
  loc_129A537:       If CBool((InStr(1, CVar(arg_C), ".", 0) > CVar(arg_14)) And (Me.SelStart < InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129A53E:         arg_10 = 0
  loc_129A544:       Else
  loc_129A549:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129A574:         var_128 = (InStr(1, CVar(arg_C), ".", 0) + CVar(arg_18))
  loc_129A5B5:         If CBool((Len(arg_10) >= Me.SelStart) And (Me.SelStart >= InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129A5BC:           arg_10 = 0
  loc_129A5BF:         End If
  loc_129A5BF:       End If
  loc_129A5C1:     End If
  loc_129A5C6:   Else
  loc_129A5D0:     If (arg_10 = &H2E) Then
  loc_129A5D5:       Exit Sub
  loc_129A5D6:     End If
  loc_129A5E4:     var_98 = "-"
  loc_129A5FD:     If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129A605:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129A615:       var_D8 = (Len(arg_10) - 1)
  loc_129A625:       If (InStr(1, CVar(arg_C), ".", 0) >= CVar(arg_14)) Then
  loc_129A62C:         arg_10 = 0
  loc_129A62F:       End If
  loc_129A632:     Else
  loc_129A639:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129A666:       If CBool((Len(arg_10) >= CVar(arg_14)) And (arg_10 <> &H2D)) Then
  loc_129A66D:         arg_10 = 0
  loc_129A670:       End If
  loc_129A670:     End If
  loc_129A672:   End If
  loc_129A677: Else
  loc_129A686:   var_178 = Me.SelStart
  loc_129A6A3:   var_98 = "-"
  loc_129A6F7:   var_1A8 = (var_178 + 1)
  loc_129A71A:   var_218 = (arg_10 = 8) And (InStr(1, CVar(arg_C), CVar(arg_14), 0) <> 0) And (Mid(arg_C, CLng(Me.SelStart), 1) = ".") And (Mid(arg_C, CLng(var_1A8), 1) <> vbNullString)
  loc_129A721:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDD8
  loc_129A731:   var_258 = (Len(var_218) - 1)
  loc_129A73B:   var_278 = (var_258 - CVar(arg_18))
  loc_129A767:   If CBool(var_178 And (var_278 >= CVar(arg_14))) Then
  loc_129A76E:     arg_10 = 0
  loc_129A774:   Else
  loc_129A783:     var_178 = Me.SelStart
  loc_129A7A0:     var_98 = "-"
  loc_129A7F4:     var_1A8 = (var_178 + 1)
  loc_129A817:     var_218 = (arg_10 = 8) And (InStr(1, CVar(arg_C), CVar(arg_14), 0) = 0) And (Mid(arg_C, CLng(Me.SelStart), 1) = ".") And (Mid(arg_C, CLng(var_1A8), 1) <> vbNullString)
  loc_129A81E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDD8
  loc_129A82F:     var_258 = (Len(var_218) - CVar(arg_18))
  loc_129A85B:     If CBool(var_178 And (var_258 >= CVar(arg_14))) Then
  loc_129A862:       arg_10 = 0
  loc_129A865:     End If
  loc_129A865:   End If
  loc_129A865: End If
  loc_129A869: Exit Sub
End Sub

Public Sub Proc_6_43_10041F4(arg_C, arg_10, arg_14) '10041F4
  'Data Table: 4B6790
  Dim var_9C As Long
  Dim var_94 As Long
  Dim var_8C As Long
  Dim var_90 As Long
  Dim var_DC As Variant
  Dim var_EC As Variant
  loc_1003FFD: Me(52) = "One  Two  ThreeFour Five Six  Seveneightnine "
  loc_1004008: Me(68) = "Eleven   Twelve   Thirteen Fourteen Fifteen  Sixteen  SeventeenEighteen Nineteen "
  loc_1004013: Me(84) = "Ten    Twenty Thirty Fourty Fifty  Sixty  SeventyEighty Ninty  "
  loc_100401C: Me(116) = "Hundred ThousandLacs    Crore   "
  loc_1004026: var_9C = &H989680
  loc_100402F: Me(100) = CVar(arg_10)
  loc_10040E6: var_8C = CLng(((Val(CStr(Format(arg_C, "0.00"))) - Int(Val(CStr(Format(arg_C, "0.00"))))) * CDbl(&H64)))
  loc_1004102: For var_140 = 1 To 5: var_96 = var_140 'Integer
  loc_1004114:   var_90 = CLng(Int((CDbl(CLng(Int(Val(CStr(Format(arg_C, "0.00")))))) / CDbl(var_9C))))
  loc_1004122:   var_94 = (var_94 - (var_90 * var_9C))
  loc_100412B:   If (var_96 <> 3) Then
  loc_1004137:     var_9C = CLng((CDbl(var_9C) / CDbl(&H64)))
  loc_100413D:   Else
  loc_1004146:     var_9C = CLng((CDbl(var_9C) / CDbl(&HA)))
  loc_1004149:   End If
  loc_1004152:   If (var_90 > 0) Then
  loc_1004164:     var_AC = Proc_6_44_108EEE8(var_90, var_96, var_9C, var_9C, CLng(Int(Val(CStr(Format(arg_C, "0.00"))))), var_90, 1, var_8C) 'Variant
  loc_1004168:   End If
  loc_100416B: Next var_140 'Integer
  loc_1004179: If (var_8C > 0) Then
  loc_1004187:   var_DC = (Me(100) + CVar(arg_14))
  loc_1004190:   var_EC = ("0.00" + " ")
  loc_1004194:   Me(100) = Format(arg_C, "0.00")
  loc_100419D: End If
  loc_10041A6: If (var_8C > 0) Then
  loc_10041B8:   var_AC = Proc_6_44_108EEE8(var_8C) 'Variant
  loc_10041BF: Else
  loc_10041C9:   var_DC = (Me(100) + vbNullString)
  loc_10041CD:   Me(100) = "0.00"
  loc_10041D3: End If
  loc_10041DD: var_DC = (Me(100) + " Only")
  loc_10041E1: Me(100) = "0.00"
  loc_10041EE: var_88 = CStr(Me(100))
  loc_10041F1: Exit Sub
End Sub

Public Sub Proc_6_44_108EEE8(arg_C, arg_10) '108EEE8
  'Data Table: 4B6790
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  loc_108EC47: If ((arg_C Mod &HA) = 0) Then
  loc_108EC5F:   var_A8 = (Me(100) + Space(1))
  loc_108EC8B:   var_D8 = Mid(Me(84), ((((arg_C / &HA) - 1) * 7) + 1), 7)
  loc_108EC9E:   var_F8 = (var_A8 + RTrim(var_D8))
  loc_108ECA2:   Me(100) = var_F8
  loc_108ECB8: Else
  loc_108ECC1:   If (arg_C < &HA) Then
  loc_108ECD9:     var_A8 = (Me(100) + Space(1))
  loc_108ECFF:     var_D8 = Mid(Me(52), (((arg_C - 1) * 5) + 1), 5)
  loc_108ED12:     var_F8 = (var_A8 + RTrim(var_D8))
  loc_108ED16:     Me(100) = var_F8
  loc_108ED2C:   Else
  loc_108ED35:     If (arg_C < &H14) Then
  loc_108ED4D:       var_A8 = (Me(100) + Space(1))
  loc_108ED79:       var_D8 = Mid(Me(68), ((((arg_C - &HA) - 1) * 9) + 1), 9)
  loc_108ED8C:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108ED90:       Me(100) = var_F8
  loc_108EDA6:     Else
  loc_108EDBB:       var_A8 = (Me(100) + Space(1))
  loc_108EDE7:       var_D8 = Mid(Me(84), ((((arg_C / &HA) - 1) * 7) + 1), 7)
  loc_108EDFA:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108EDFE:       Me(100) = var_F8
  loc_108EE26:       var_A8 = (Me(100) + Space(1))
  loc_108EE52:       var_D8 = Mid(Me(52), ((((arg_C Mod &HA) - 1) * 5) + 1), 5)
  loc_108EE65:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108EE69:       Me(100) = var_F8
  loc_108EE7C:     End If
  loc_108EE7C:   End If
  loc_108EE7C: End If
  loc_108EE82: If (arg_10 < 5) Then
  loc_108EE9A:   var_A8 = (Me(100) + Space(1))
  loc_108EEBD:   var_D8 = Mid(Me(116), CLng((((4 - arg_10) * 8) + 1)), 8)
  loc_108EED0:   var_F8 = (var_A8 + RTrim(var_D8))
  loc_108EED4:   Me(100) = var_F8
  loc_108EEE7: End If
loc_108EEE7: End Sub
End Sub

Public Sub Proc_6_45_EAD428(arg_C, arg_10) 'EAD428
  'Data Table: 4B6790
  Dim var_F8 As Variant
  Dim var_118 As Variant
  loc_EAD3C9: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAD400: var_F8 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_EAD411: var_118 = (Trim(arg_C) + Space(CLng(var_F8)))
  loc_EAD416: var_88 = CStr(var_118)
  loc_EAD424: Exit Sub
End Sub

Public Sub Proc_6_46_F8A434(arg_C, arg_10) 'F8A434
  'Data Table: 4B6790
  Dim var_D8 As Variant
  Dim var_148 As Variant
  Dim var_198 As Variant
  Dim var_208 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  loc_F8A339: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_F8A349: If (Len(arg_C) = CLng(arg_10)) Then
  loc_F8A34F:   var_88 = arg_C
  loc_F8A355: Else
  loc_F8A372:   var_D8 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_F8A3A3:   var_148 = (Space(CLng(Fix((var_D8 / 2)))) + Trim(arg_C))
  loc_F8A3CA:   var_198 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_F8A3FB:   var_208 = (Space(CLng(Fix((var_198 / 2)))) + Trim(arg_C))
  loc_F8A403:   var_238 = (CVar(arg_10) - Len(var_208))
  loc_F8A414:   var_258 = (var_148 + Space(CLng(var_238)))
  loc_F8A419:   var_88 = CStr(var_258)
  loc_F8A433: End If
  loc_F8A433: Exit Sub
End Sub

Public Sub Proc_6_47_EF59D0
  'Data Table: 4B6790
  loc_EF5949: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = 0)) Then
  loc_EF5951:   var_94 = vbNullString 'Variant
  loc_EF5958: Else
  loc_EF59B8:   var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0.00") 'Variant
  loc_EF59C9: End If
  loc_EF59C9: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_48_EF4270
  'Data Table: 4B6790
  loc_EF41E9: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = 0)) Then
  loc_EF41F1:   var_94 = vbNullString 'Variant
  loc_EF41F8: Else
  loc_EF4258:   var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0") 'Variant
  loc_EF4269: End If
  loc_EF4269: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_49_EF5480
  'Data Table: 4B6790
  loc_EF53F9: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = 0)) Then
  loc_EF5401:   var_94 = "0" 'Variant
  loc_EF5408: Else
  loc_EF5468:   var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0") 'Variant
  loc_EF5479: End If
  loc_EF5479: Result = arg_10: Exit Sub
  loc_EF547D: 1 = 1
End Sub

Public Sub Proc_6_50_EF5590
  'Data Table: 4B6790
  loc_EF5509: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = 0)) Then
  loc_EF5511:   var_94 = "0.00" 'Variant
  loc_EF5518: Else
  loc_EF5578:   var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0.00") 'Variant
  loc_EF5589: End If
  loc_EF5589: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_51_EF39F0
  'Data Table: 4B6790
  loc_EF3969: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = 0)) Then
  loc_EF3971:   var_94 = vbNullString 'Variant
  loc_EF3978: Else
  loc_EF39D8:   var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0.000") 'Variant
  loc_EF39E9: End If
  loc_EF39E9: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_52_EAD4F4(arg_C, arg_10) 'EAD4F4
  'Data Table: 4B6790
  Dim var_D8 As Variant
  Dim var_118 As Variant
  loc_EAD495: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAD4B9: var_D8 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_EAD4DD: var_118 = (Space(CLng(var_D8)) + Trim(arg_C))
  loc_EAD4E2: var_88 = CStr(var_118)
  loc_EAD4F0: Exit Sub
End Sub

Public Sub Proc_6_53_14F6118(arg_C, arg_10, arg_14, arg_18) '14F6118
  'Data Table: 4B6790
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_134 As Variant
  Dim var_194 As Variant
  Dim var_32C As Variant
  Dim var_330 As Variant
  Dim var_344 As Variant
  Dim var_9C As Recordset15
  Dim var_E4 As Variant
  Dim var_A0 As Recordset15
  Dim var_328 As Variant
  Dim var_408 As Variant
  loc_14F5378: On Error Goto loc_14F610E
  loc_14F537F: var_86 = CByte(0) 'Byte
  loc_14F538B: CRefVarAry
  loc_14F5393: For var_A4 = 1 To CInt(UBound(arg_C, 1)): var_88 = var_A4 'Integer
  loc_14F53AA:   VarIndexLdRfVar
  loc_14F53B0:   VarLateMemLdRfVar
  loc_14F53B9:   Proc_6_39_E7C810(var_E4, arg_C, var_88)
  loc_14F53C1:   var_104 = (CVar(var_90) + var_E4)
  loc_14F53C6:   var_90 = CSng(var_104)
  loc_14F53E5:   VarIndexLdRfVar
  loc_14F53EB:   VarLateMemLdRfVar
  loc_14F53F4:   Proc_6_39_E7C810(var_E4, arg_C, var_88)
  loc_14F53FC:   var_104 = (CVar(var_98) + var_E4)
  loc_14F5401:   var_98 = CSng(var_104)
  loc_14F5412: Next var_A4 'Integer
  loc_14F541E: If (var_90 <> var_98) Then
  loc_14F5425:   var_86 = CByte(4) 'Byte
  loc_14F5429:   Result =  Exit Sub 'Byte
  loc_14F542B: End If
  loc_14F5433: If (arg_18 = "A") Then
  loc_14F5460:   VarIndexLdRfVar
  loc_14F5466:   VarLateMemLdRfVar
  loc_14F546F:   Proc_6_17_EAA2B0(var_E4, arg_C, 1, "SELECT COUNT(*) FROM LEDGERM WHERE Comp_Code=", var_328, -1)
  loc_14F548D:   VarIndexLdRfVar
  loc_14F5493:   VarLateMemLdRfVar
  loc_14F549C:   Proc_6_17_EAA2B0(var_184, arg_C, 1, var_32C & var_E4 & " AND V_Type=")
  loc_14F54BA:   VarIndexLdRfVar
  loc_14F54C0:   VarLateMemLdRfVar
  loc_14F54C9:   Proc_6_17_EAA2B0(var_204, arg_C, 1, var_330 & var_184 & " AND v_Prefix=")
  loc_14F54E7:   VarIndexLdRfVar
  loc_14F5509:   VarIndexLdRfVar
  loc_14F550F:   VarLateMemLdRfVar
  loc_14F5518:   Proc_6_17_EAA2B0(var_2F4, arg_C, 1, 1 & arg_C.V_NO & " AND Site_Code=")
  loc_14F552B:   Me.Connection15.Execute CStr(0 & var_204 & " AND V_No=" & var_2F4), var_344, var_354
  loc_14F5533:    = var_32C.Fields
  loc_14F553B:    = var_330.Item()
  loc_14F5543:    = var_344.Value
  loc_14F5594:   If (var_354 > 0) Then
  loc_14F559B:     var_86 = CByte(2) 'Byte
  loc_14F559F:     Result =  Exit Sub 'Byte
  loc_14F55A1:   End If
  loc_14F55A1: End If
  loc_14F55B2: If ((arg_18 = "E") Or (arg_18 = "D")) Then
  loc_14F55D1:   VarIndexLdRfVar
  loc_14F55D7:   VarLateMemLdRfVar
  loc_14F55E0:   Proc_6_17_EAA2B0(var_E4, arg_C, var_88, "SELECT * FROM LEDGER WHERE Comp_Code =")
  loc_14F55E8:   var_104 = var_328 & var_E4 
  loc_14F55FF:   VarIndexLdRfVar
  loc_14F5605:   VarLateMemLdRfVar
  loc_14F560E:   Proc_6_17_EAA2B0(var_184, arg_C, var_88)
  loc_14F562D:   VarIndexLdRfVar
  loc_14F5633:   VarLateMemLdRfVar
  loc_14F563C:   Proc_6_17_EAA2B0(var_204, arg_C, var_88)
  loc_14F565B:   VarIndexLdRfVar
  loc_14F567E:   VarIndexLdRfVar
  loc_14F5684:   VarLateMemLdRfVar
  loc_14F568D:   Proc_6_17_EAA2B0(var_2F4, arg_C, var_88, var_88 & arg_C.V_NO & " AND Site_Code =")
  loc_14F56A0:   Me.Connection15.Execute CStr(var_104 & " AND V_Type =" & var_184 & " AND v_Prefix =" & var_204 & " AND V_No =" & var_2F4), -1, var_32C
  loc_14F56AB:   Set var_9C = var_32C
  loc_14F56E7:   ' Referenced from: 14F5842
  loc_14F56F6:   If Not(var_9C.EOF) Then
  loc_14F5706:     var_F4 = "SELECT SubGroup.GroupID,AcGroup.MainGrCode FROM SubGroup LEFT JOIN AcGroup ON SubGroup.GroupID = AcGroup.ID WHERE SUBGROUP.ACCODE="
  loc_14F5731:     Proc_6_17_EAA2B0(var_D4, CVar(var_9C.Fields.Item("Ac_Code")), var_F4)
  loc_14F5744:     Me.Connection15.Execute CStr(var_104 & var_D4), -1, var_344
  loc_14F574F:     Set var_A0 = var_344
  loc_14F577B:     If (var_A0.RecordCount > 0) Then
  loc_14F5790:       var_32C = var_A0.Fields
  loc_14F57F6:       var_394 = "-"
  loc_14F5802:       var_E4 = (var_9C.Fields.Item("AmtDr").Value - var_9C.Fields.Item("AmtCr").Value)
  loc_14F5816:       Proc_6_54_F6B820(arg_10, CStr(var_32C.Item("MainGrCode").Value))
  loc_14F583A:     End If
  loc_14F583D:     var_9C.MoveNext
  loc_14F5842:     GoTo loc_14F56E7
  loc_14F5845:   End If
  loc_14F5861:   VarIndexLdRfVar
  loc_14F5867:   VarLateMemLdRfVar
  loc_14F5870:   Proc_6_17_EAA2B0(var_32C.Item("MainGrCode").Value & var_9C.Fields.Item("AmtDr").Value, arg_C, var_88, "DELETE FROM LEDGER    WHERE Comp_Code =", var_328)
  loc_14F5878:   var_104 = -1 & var_104 & var_9C.Fields.Item("AmtDr").Value 
  loc_14F588F:   VarIndexLdRfVar
  loc_14F5895:   VarLateMemLdRfVar
  loc_14F589E:   Proc_6_17_EAA2B0(var_184, arg_C, var_88, var_32C.Item("MainGrCode").Value & " AND V_Type =")
  loc_14F58BD:   VarIndexLdRfVar
  loc_14F58C3:   VarLateMemLdRfVar
  loc_14F58CC:   Proc_6_17_EAA2B0(var_204, arg_C, var_88)
  loc_14F58EB:   VarIndexLdRfVar
  loc_14F590E:   VarIndexLdRfVar
  loc_14F5914:   VarLateMemLdRfVar
  loc_14F591D:   Proc_6_17_EAA2B0(var_2F4, arg_C, var_88, var_88 & arg_C.V_NO & " AND Site_Code =")
  loc_14F5930:   Me.Connection15.Execute CStr(var_32C & var_184 & " AND v_Prefix =" & var_204 & " AND V_No =" & var_2F4), CSng(var_32C.Item("MainGrCode").Value & var_9C.Fields.Item("AmtDr").Value), var_394
  loc_14F598A:   VarIndexLdRfVar
  loc_14F5990:   VarLateMemLdRfVar
  loc_14F5999:   Proc_6_17_EAA2B0(var_32C.Item("MainGrCode").Value & var_9C.Fields.Item("AmtDr").Value, arg_C, var_88, "DELETE FROM LedgerAdj WHERE Comp_Code =")
  loc_14F59B8:   VarIndexLdRfVar
  loc_14F59BE:   VarLateMemLdRfVar
  loc_14F59C7:   Proc_6_17_EAA2B0(var_184, arg_C, var_88)
  loc_14F59CF:   var_194 = var_328 & var_328 & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value & " AND V_Type =" & var_184 
  loc_14F59E6:   VarIndexLdRfVar
  loc_14F59EC:   VarLateMemLdRfVar
  loc_14F59F5:   Proc_6_17_EAA2B0(var_204, arg_C, var_88)
  loc_14F5A14:   VarIndexLdRfVar
  loc_14F5A37:   VarIndexLdRfVar
  loc_14F5A3D:   VarLateMemLdRfVar
  loc_14F5A46:   Proc_6_17_EAA2B0(var_2F4, arg_C, var_88, var_88 & arg_C.V_NO & " AND Site_Code =")
  loc_14F5A59:   Me.Connection15.Execute CStr(var_194 & " AND v_Prefix =" & var_204 & " AND V_No =" & var_2F4), -1, var_32C
  loc_14F5AB3:   VarIndexLdRfVar
  loc_14F5AB9:   VarLateMemLdRfVar
  loc_14F5AC2:   Proc_6_17_EAA2B0(var_328 & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value, arg_C, var_88, "DELETE FROM LedgerAdj WHERE Comp_Code2=")
  loc_14F5AE1:   VarIndexLdRfVar
  loc_14F5AE7:   VarLateMemLdRfVar
  loc_14F5AF0:   Proc_6_17_EAA2B0(var_184, arg_C, var_88)
  loc_14F5AF8:   var_194 = var_328 & var_328 & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value & " AND V_Type2=" & var_184 
  loc_14F5B0F:   VarIndexLdRfVar
  loc_14F5B15:   VarLateMemLdRfVar
  loc_14F5B1E:   Proc_6_17_EAA2B0(var_204, arg_C, var_88)
  loc_14F5B3D:   VarIndexLdRfVar
  loc_14F5B60:   VarIndexLdRfVar
  loc_14F5B66:   VarLateMemLdRfVar
  loc_14F5B6F:   Proc_6_17_EAA2B0(var_2F4, arg_C, var_88, var_88 & arg_C.V_NO & " AND Site_Code2=")
  loc_14F5B82:   Me.Connection15.Execute CStr(var_194 & " AND v_Prefix2=" & var_204 & " AND V_No2=" & var_2F4), -1, var_32C
  loc_14F5BDC:   VarIndexLdRfVar
  loc_14F5BE2:   VarLateMemLdRfVar
  loc_14F5BEB:   Proc_6_17_EAA2B0(var_328 & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value, arg_C, var_88, "DELETE FROM LEDGERM   WHERE Comp_Code =")
  loc_14F5BFC:   var_134 = var_328 & var_104 & var_9C.Fields.Item("AmtDr").Value & " AND V_Type =" 
  loc_14F5C0A:   VarIndexLdRfVar
  loc_14F5C10:   VarLateMemLdRfVar
  loc_14F5C19:   Proc_6_17_EAA2B0(var_184, arg_C, var_88)
  loc_14F5C38:   VarIndexLdRfVar
  loc_14F5C3E:   VarLateMemLdRfVar
  loc_14F5C47:   Proc_6_17_EAA2B0(var_204, arg_C, var_88)
  loc_14F5C66:   VarIndexLdRfVar
  loc_14F5C89:   VarIndexLdRfVar
  loc_14F5C8F:   VarLateMemLdRfVar
  loc_14F5C98:   Proc_6_17_EAA2B0(var_2F4, arg_C, var_88, var_88 & arg_C.V_NO & " AND Site_Code =")
  loc_14F5CAB:   Me.Connection15.Execute CStr(var_134 & var_184 & " AND v_Prefix =" & var_204 & " AND V_No =" & var_2F4), -1, var_32C
  loc_14F5CE9: End If
  loc_14F5CFA: If ((arg_18 = "A") Or (arg_18 = "E")) Then
  loc_14F5D05:   CRefVarAry
  loc_14F5D0D:   For var_398 = 1 To CInt(UBound(arg_C, 1)): var_88 = var_398 'Integer
  loc_14F5D16:     var_F4 = CVar(arg_10) 'Address
  loc_14F5D25:     VarIndexLdRfVar
  loc_14F5D2B:     VarLateMemStAd
  loc_14F5D41:     var_F4 = "UPDATE SUBGROUP SET Curr_Bal=CURR_BAL + VNULL(XX(I).AmtDr) - VNULL(XX(I).AmtCr) WHERE AcCode="
  loc_14F5D50:     VarIndexLdRfVar
  loc_14F5D56:     VarLateMemLdRfVar
  loc_14F5D5F:     Proc_6_17_EAA2B0(var_328 & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value, arg_C, var_88, var_F4, var_134, -1)
  loc_14F5D72:     Me.Connection15.Execute CStr(var_32C & var_32C & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value), arg_C, var_88
  loc_14F5D97:     var_F4 = "SELECT SubGroup.GroupID,AcGroup.MainGrCode FROM SubGroup LEFT JOIN AcGroup ON SubGroup.GroupID = AcGroup.ID WHERE SUBGROUP.ACCODE="
  loc_14F5DA6:     VarIndexLdRfVar
  loc_14F5DAC:     VarLateMemLdRfVar
  loc_14F5DB5:     Proc_6_17_EAA2B0(var_32C & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value, arg_C, var_88, var_F4, var_134)
  loc_14F5DBD:     var_104 = -1 & var_104 & var_9C.Fields.Item("AmtDr").Value 
  loc_14F5DC8:     Me.Connection15.Execute CStr(var_32C & var_32C & var_104 & var_9C.Fields.Item("AmtDr").Value & var_9C.Fields.Item("AmtDr").Value), var_32C, var_F4
  loc_14F5DD3:     Set var_A0 = var_32C
  loc_14F5DFD:     If (var_A0.RecordCount > 0) Then
  loc_14F5E12:       var_32C = var_A0.Fields
  loc_14F5E31:       VarIndexLdRfVar
  loc_14F5E37:       var_E4 = arg_C.AmtDr
  loc_14F5E49:       VarIndexLdRfVar
  loc_14F5E4F:       var_104 = arg_C.AmtCr
  loc_14F5E5A:       var_394 = "+"
  loc_14F5E66:       var_134 = (var_E4 - var_104)
  loc_14F5E7A:       Proc_6_54_F6B820(arg_10, CStr(var_32C.Item("MainGrCode").Value), CSng(var_134), var_394, var_104)
  loc_14F5E9A:     End If
  loc_14F5E9D:   Next var_398 'Integer
  loc_14F5EBD:   VarIndexLdRfVar
  loc_14F5EC3:   VarLateMemLdRfVar
  loc_14F5ECC:   Proc_6_17_EAA2B0(var_E4, arg_C, 1, "INSERT INTO LedgerM (Comp_Code,V_Type,v_Prefix,V_No,Site_Code,V_Date,Narration,U_Name,U_EntDt,U_AE,Trf_Date) VALUES (")
  loc_14F5EEA:   VarIndexLdRfVar
  loc_14F5EF0:   VarLateMemLdRfVar
  loc_14F5EF9:   Proc_6_17_EAA2B0(var_184, arg_C, 1)
  loc_14F5F17:   VarIndexLdRfVar
  loc_14F5F1D:   VarLateMemLdRfVar
  loc_14F5F26:   Proc_6_17_EAA2B0(var_204, arg_C, 1)
  loc_14F5F44:   VarIndexLdRfVar
  loc_14F5F66:   VarIndexLdRfVar
  loc_14F5F6C:   VarLateMemLdRfVar
  loc_14F5F75:   Proc_6_17_EAA2B0(var_2F4, arg_C, 1, 1 & arg_C.V_NO & ",")
  loc_14F5F93:   VarIndexLdRfVar
  loc_14F5F99:   VarLateMemLdRfVar
  loc_14F5FA2:   Proc_6_7_F25D88(var_3A8, arg_C, 1)
  loc_14F5FC2:   Proc_6_17_EAA2B0(var_3F8, arg_14, var_608 & var_E4 & "," & var_184 & "," & var_204 & "," & var_2F4 & "," & var_3A8 & ",")
  loc_14F5FCA:   var_408 = -1 & var_3F8 
  loc_14F5FE1:   VarIndexLdRfVar
  loc_14F5FE7:   VarLateMemLdRfVar
  loc_14F5FF0:   Proc_6_17_EAA2B0(var_468, arg_C, var_88)
  loc_14F600F:   VarIndexLdRfVar
  loc_14F6015:   VarLateMemLdRfVar
  loc_14F601E:   Proc_6_7_F25D88(var_4D8, arg_C, var_88)
  loc_14F603D:   VarIndexLdRfVar
  loc_14F6043:   VarLateMemLdRfVar
  loc_14F604C:   Proc_6_17_EAA2B0(var_548, arg_C, var_88)
  loc_14F606B:   VarIndexLdRfVar
  loc_14F6071:   VarLateMemLdRfVar
  loc_14F607A:   Proc_6_7_F25D88(var_5B8, arg_C, var_88)
  loc_14F6096:   Me.Connection15.Execute CStr(var_408 & "," & var_468 & "," & var_4D8 & "," & var_548 & "," & var_5B8 & ")"), var_32C, 
  loc_14F610E:   ' Referenced from: 14F5378
  loc_14F610E: End If
  loc_14F6112: var_86 = CByte(1) 'Byte
  loc_14F6116: Result =  Exit Sub 'Byte
End Sub

Public Sub Proc_6_54_F6B820
  'Data Table: 4B6790
  Dim var_8C As Integer
  loc_F6B719: var_8C = CInt((Len(arg_10) - 3))
  loc_F6B726: For var_90 = var_8C To 3 Step &HFD: var_8A = var_90 'Integer
  loc_F6B734:   If (vbNullString = vbNullString) Then
  loc_F6B761:     var_88 = CStr("'" & Left(arg_10, CLng(var_8A)) & "'")
  loc_F6B770:   Else
  loc_F6B789:     var_B0 = Left(arg_10, CLng(var_8A))
  loc_F6B79F:     var_88 = CStr(CVar(var_88 & ",'") & var_B0 & "'")
  loc_F6B7AD:   End If
  loc_F6B7B0: Next var_90 'Integer
  loc_F6B7BD: If (var_88 <> vbNullString) Then
  loc_F6B802:   Me.Connection15.Execute "Update AcGroup Set CurrentBalance=CurrentBalance " & arg_18 & " " & CStr(arg_14) & " Where MainGrCode In(" & var_88 & ")", var_B0, -1
  loc_F6B81E: End If
  loc_F6B81E: Exit Sub
End Sub

Public Sub Proc_6_55_E24158(arg_C) 'E24158
  'Data Table: 4B6790
  Dim var_88 As Long
  loc_E24133: Me(120) = arg_C
  loc_E2414A: var_88 = SetWindowLong(Me(120), -4, MemVar_4B7624)
  loc_E24151: Me(0) = var_88
  loc_E24156: Exit Sub
End Sub

Public Sub Proc_6_56_E1FB84
  'Data Table: 4B6790
  Dim var_8C As Long
  Dim var_88 As Long
  loc_E1FB78: var_8C = SetWindowLong(Me(120), -4, Me(0))
  loc_E1FB82: Exit Sub
  loc_E1FB83: var_88(var_8C) = 
End Sub

Public Sub Proc_6_57_E49E38(arg_C, arg_10, arg_14, arg_18) 'E49E38
  'Data Table: 4B6790
  Dim var_88 As Long
  loc_E49E0F: If (arg_10 = &H205) Then
  loc_E49E12:   GoTo loc_E49E35
  loc_E49E15: End If
  loc_E49E32: var_88 = CallWindowProc(Me(0), arg_C, arg_10, arg_14, arg_18)
  loc_E49E35: ' Referenced from: E49E12
  loc_E49E35: Exit Sub
End Sub

Public Sub Proc_6_58_E054C0(arg_C) 'E054C0
  'Data Table: 4B6790
  Dim arg_C As Integer
  loc_E054B6: If (arg_C = &HD) Then
  loc_E054BB:   arg_C = 0
  loc_E054BE: End If
  loc_E054BE: Exit Sub
End Sub

Public Sub Proc_6_59_E5D478
  'Data Table: 4B6790
  Dim var_98 As Integer
  loc_E5D43D: If (Form.Visible = &HFF) Then
  loc_E5D445:   Form.WindowState = 2
  loc_E5D44A:   var_98 = 0
  loc_E5D453:   Form.ZOrder var_98
  loc_E5D45B: Else
  loc_E5D466:   Form.Show var_98, var_A8
  loc_E5D470:   IStAdFunc
  loc_E5D474: End If
  loc_E5D474: Exit Sub
End Sub

Public Sub Proc_6_60_E62BC4
  'Data Table: 4B6790
  loc_E62B84: Set var_88 = Err()
  loc_E62B8A: Call 0.Method_arg_1C (var_8C)
  loc_E62B9B: If (var_8C <> 0) Then
  loc_E62BA3:   var_94 = 0
  loc_E62BB4:   Proc_6_152_1077F50(0)
  loc_E62BC0: End If
  loc_E62BC0: Exit Sub
End Sub

Public Sub Proc_6_61_1077428
  'Data Table: 4B6790
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_CA As Integer
  Dim var_CC As Integer
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_10C As Variant
  loc_107718C: On Error Goto loc_1077420
  loc_1077195: If (arg_20 = 0) Then
  loc_10771B5:   If (Me.TopCtrl1.TopText2 = "Browse") Then
  loc_10771B8:     Exit Sub
  loc_10771B9:   End If
  loc_10771B9: End If
  loc_10771C2: var_CA = CInt(Me.Row)
  loc_10771D1: var_CC = CInt(Me.Col)
  loc_10771EA: If (Me.CellHeight < 0) Then
  loc_10771ED:   Exit Sub
  loc_10771EE: End If
  loc_10771FB: var_B8 = (Me.CellHeight - 10)
  loc_1077214: ).height = arg_18
  loc_107722C: var_B8 = (Me.CellWidth - 10)
  loc_1077245: ).width = arg_18
  loc_1077260: var_C8 = (Me.CellLeft + Me.left)
  loc_1077279: ).left = arg_18
  loc_1077298: var_C8 = (Me.CellTop + Me.top)
  loc_10772B1: ).top = arg_18
  loc_10772E4: If CBool(Me.TextMatrix <> vbNullString) Then
  loc_10772F8:   var_98 = Me.TextMatrix
  loc_1077315:   ).TEXT = arg_18
  loc_1077323: Else
  loc_107732B:   If (arg_1C = "T") Then
  loc_107732E:     var_DC = "00:00"
  loc_1077348:     ).TEXT = arg_18
  loc_1077352:   Else
  loc_1077352:     var_DC = vbNullString
  loc_107736C:     ).TEXT = arg_18
  loc_1077373:   End If
  loc_1077373: End If
  loc_1077373: var_DC = True
  loc_107738B: ).Visible = arg_18
  loc_1077392: var_DC = 0
  loc_10773AE: Call ).ZOrder
  loc_10773D9: var_10C = CVar(Val(CStr(Me.TextMatrix))) 'Double
  loc_10773F2: ).Tag = arg_18
  loc_1077416: Call ).SetFocus
  loc_107741F: Exit Sub
  loc_1077420: ' Referenced from: 107718C
  loc_1077420: Proc_6_60_E62BC4(arg_18, var_10C, var_CC, var_CA, arg_18, var_DC, var_DC, var_DC)
  loc_1077425: Exit Sub
End Sub

Public Sub Proc_6_62_1253BC4
  'Data Table: 4B6790
  Dim var_A8 As Variant
  Dim var_CA As Integer
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_12C As Variant
  loc_125368F: If ((((CLng(arg_18) = &H27) Or (CLng(arg_18) = &H25)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Then
  loc_1253698:   If (arg_1C = &HFF) Then
  loc_125369B:     var_A8 = False
  loc_12536B4:     ).Visible = arg_14
  loc_12536BE:     var_CA = arg_18
  loc_12536CB:     If (var_CA = CInt(&H26)) Then
  loc_12536E1:       If (Me.Row > 1) Then
  loc_12536F1:         var_DC = (Me.Row - 1)
  loc_12536F9:         Me.Row = var_DC
  loc_1253703:         Call Me.SetFocus
  loc_125370C:       Else
  loc_125370F:         Call Me.SetFocus
  loc_1253715:       End If
  loc_1253718:     Else
  loc_1253722:       If (var_CA = CInt(&H28)) Then
  loc_125373A:         var_DC = (Me.rows - 1)
  loc_1253747:         If (Me.Row < var_DC) Then
  loc_1253757:           var_DC = (Me.Row + 1)
  loc_125375F:           Me.Row = var_DC
  loc_125376D:           Call Me.SetFocus
  loc_1253776:         Else
  loc_1253779:           Call Me.SetFocus
  loc_125377F:         End If
  loc_1253782:       Else
  loc_125378C:         If (var_CA = CInt(&H25)) Then
  loc_12537A2:           If (Me.Col > 1) Then
  loc_12537B2:             var_DC = (Me.Col - 1)
  loc_12537BA:             Me.Col = var_DC
  loc_12537C4:             Call Me.SetFocus
  loc_12537CD:           Else
  loc_12537D0:             Call Me.SetFocus
  loc_12537D6:           End If
  loc_12537D9:         Else
  loc_12537E3:           If (var_CA = CInt(&H27)) Then
  loc_12537FC:             If (Me.Col < CVar(arg_20)) Then
  loc_125380C:               var_DC = (Me.Col + 1)
  loc_1253814:               Me.Col = var_DC
  loc_1253822:               Call Me.SetFocus
  loc_125382B:             Else
  loc_125382E:               Call Me.SetFocus
  loc_1253834:             End If
  loc_1253834:           End If
  loc_1253834:         End If
  loc_1253834:       End If
  loc_1253834:     End If
  loc_1253834:   End If
  loc_1253837: Else
  loc_1253841:   If (CLng(arg_18) = &HD) Then
  loc_125385B:     If (IsMissing(arg_28) Or (CInt(arg_28) = 0)) Then
  loc_125387B:       var_DC = (Me.Col + 1)
  loc_125389E:       var_12C = (var_DC + IIf(IsMissing(arg_24), 0, arg_24))
  loc_12538BC:       If (var_12C < CVar(arg_20)) Then
  loc_12538DC:         var_DC = (Me.Col + 1)
  loc_12538FF:         var_12C = (var_DC + IIf(IsMissing(arg_24), 0, arg_24))
  loc_1253907:         Me.Col = var_12C
  loc_125391D:         var_C8 = Me.Col
  loc_125395C:         If CBool((Me.ColWidth <= 0) And (Me.Col < CVar(arg_20))) Then
  loc_125396C:           var_DC = (Me.Col + 1)
  loc_1253974:           Me.Col = Me.ColWidth
  loc_125397F:         End If
  loc_1253982:         Call Me.SetFocus
  loc_125398B:       Else
  loc_125398E:         var_EC = Me.Row
  loc_12539A0:         var_DC = (Me.rows - 1)
  loc_12539AB:         var_12C = Me.Row
  loc_12539E2:         If CBool(Me.Col And (Me.TextMatrix = vbNullString)) Then
  loc_12539E5:           Exit Sub
  loc_12539E6:         End If
  loc_1253A09:         If (IsMissing(arg_2C) Or (Not(IsMissing(arg_2C)) And (arg_2C = 0))) Then
  loc_1253A21:           var_DC = (Me.rows - 1)
  loc_1253A2E:           If (Me.Row = Me.ColWidth) Then
  loc_1253A34:             var_C8 = Me.rows
  loc_1253A3D:             Call Me.AddItem
  loc_1253A46:           End If
  loc_1253A49:         Else
  loc_1253A5E:           var_DC = (Me.rows - 1)
  loc_1253A6B:           If (Me.Row = Me.ColWidth) Then
  loc_1253A71:             Call Me.AddItem
  loc_1253A77:           End If
  loc_1253A77:         End If
  loc_1253A84:         var_DC = (Me.Row + 1)
  loc_1253A8C:         Me.Row = Me.ColWidth
  loc_1253AAB:         var_DC = (Me.Cols - 1)
  loc_1253AB4:         For var_184 = CByte(1) To CByte(Me.ColWidth):     var_86 = var_184 'Byte
  loc_1253AD7:           If CBool(Me.ColWidth <> 0) Then
  loc_1253ADA:             GoTo loc_1253AE6
  loc_1253ADD:           End If
  loc_1253AE0:         Next var_184 'Byte
  loc_1253AE6:         ' Referenced from:     1253ADA
  loc_1253AF2:         Me.Col = CVar(var_86)
  loc_1253AF9:         Call Me.SetFocus
  loc_1253AFF:       End If
  loc_1253B02:     Else
  loc_1253B1F:       If (Me.ColWidth = 0) Then
  loc_1253B36:         var_DC = (Me.Cols - 1)
  loc_1253B3F:         For var_188 = arg_28 To CByte(Me.ColWidth):     var_86 = var_188 'Byte
  loc_1253B62:           If CBool(Me.ColWidth <> 0) Then
  loc_1253B65:             GoTo loc_1253B71
  loc_1253B68:           End If
  loc_1253B6B:         Next var_188 'Byte
  loc_1253B71:         ' Referenced from:     1253B65
  loc_1253B71:       End If
  loc_1253B7D:       Me.Col = CVar(arg_28)
  loc_1253B84:       Call Me.SetFocus
  loc_1253B8A:     End If
  loc_1253B8A:   End If
  loc_1253B8A: End If
  loc_1253B9A: var_EC = (Me.left + Me.CellLeft)
  loc_1253BB3: ).left = arg_14
  loc_1253BC2: Exit Sub
End Sub

Public Sub Proc_6_63_110ABA4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '110ABA4
  'Data Table: 4B6790
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_CE As Integer
  Dim var_D0 As Integer
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  loc_110A85E: If (arg_1C = &HFF) Then
  loc_110A861:   var_A8 = 1
  loc_110A87B:   ).Alignment = arg_18
  loc_110A885: Else
  loc_110A885:   var_A8 = 0
  loc_110A89F:   ).Alignment = arg_18
  loc_110A8A6: End If
  loc_110A8B0: If (CLng(arg_20) = &HD) Then
  loc_110A8BB:   var_CC = 0
  loc_110A8CD:   Proc_6_61_1077428(arg_C, arg_10, arg_14, arg_18)
  loc_110A8D8: Else
  loc_110A91D:   If ((((((((arg_20 >= &H61) And (arg_20 <= &H7A)) Or ((arg_20 >= &H30) And (arg_20 <= &H39))) Or ((arg_20 >= &H41) And (arg_20 <= &H5A))) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Or (arg_20 = 8)) Then
  loc_110A929:     var_CE = CInt(Me.Row)
  loc_110A938:     var_D0 = CInt(Me.Col)
  loc_110A94B:     var_E0 = (Me.CellHeight - 10)
  loc_110A964:     ).height = arg_18
  loc_110A97C:     var_E0 = (Me.CellWidth - 10)
  loc_110A995:     ).width = arg_18
  loc_110A9B0:     var_F0 = (Me.CellLeft + Me.left)
  loc_110A9C9:     ).left = arg_18
  loc_110A9E8:     var_F0 = (Me.CellTop + Me.top)
  loc_110AA01:     ).top = arg_18
  loc_110AA10:     var_A8 = vbNullString
  loc_110AA2A:     ).TEXT = arg_18
  loc_110AA31:     var_A8 = True
  loc_110AA49:     ).Visible = arg_18
  loc_110AA50:     var_A8 = 0
  loc_110AA6C:     Call ).ZOrder
  loc_110AA78:     var_C8 = Me.Col
  loc_110AA92:     ).Tag = arg_18
  loc_110AAB3:     Call ).SetFocus
  loc_110AAC2:     If (arg_1C = &HFF) Then
  loc_110AAE7:       If (((((arg_20 >= &H30) And (arg_20 <= &H39)) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Then
  loc_110AAF1:         var_C8 = Chr(CLng(arg_20))
  loc_110AB0E:         ).TEXT = arg_18
  loc_110AB19:       End If
  loc_110AB1C:     Else
  loc_110AB26:       If (CLng(arg_20) = 8) Then
  loc_110AB29:         var_A8 = vbNullString
  loc_110AB43:         ).TEXT = arg_18
  loc_110AB4D:       Else
  loc_110AB54:         var_C8 = Chr(CLng(arg_20))
  loc_110AB71:         ).TEXT = arg_18
  loc_110AB7C:       End If
  loc_110AB7C:     End If
  loc_110AB7C:     var_A8 = 1
  loc_110AB96:     ).SelStart = arg_18
  loc_110AB9D:   End If
  loc_110AB9D: End If
  loc_110AB9D: Exit Sub
  loc_110AB9E: Proc_6_60_E62BC4(var_A8, var_C8, var_A8, var_C8, arg_18, var_C8, arg_18)
  loc_110ABA3: Exit Sub
End Sub

Public Sub Proc_6_64_F28E58
  'Data Table: 4B6790
  Dim Me As TextBox
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_AC As Variant
  Dim var_11C As Integer
  loc_F28D85: If ((((((arg_18 = &HD) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_F28D88:   Exit Sub
  loc_F28D89: End If
  loc_F28D9D: var_BC = ).SelStart
  loc_F28DC2: VarLateMemLdRfVar
  loc_F28DE6: var_88 = CStr(Mid(var_BC, 1, CInt(var_BC)))
  loc_F28E03: If (Me.Visible = True) Then
  loc_F28E0D:   var_CC = 0
  loc_F28E17:   var_11C = 1
  loc_F28E20:   var_AC = Me.FindItem
  loc_F28E2C:   IStAdFunc
  loc_F28E3A:   If (arg_1C Is Nothing) Then
  loc_F28E3D:     Exit Sub
  loc_F28E41:   Else
  loc_F28E47:     Me.EnsureVisible var_12E
  loc_F28E51:     Me.Selected = True
  loc_F28E56:   End If
  loc_F28E56: End If
  loc_F28E56: Exit Sub
End Sub

Public Sub Proc_6_65_119423C
  'Data Table: 4B6790
  Dim var_C4 As Variant
  Dim Me As TextBox
  Dim var_94 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  loc_1193E43: If (arg_1C = 144) Then
  loc_1193E46:   Exit Sub
  loc_1193E47: End If
  loc_1193E51: If (CLng(arg_1C) = &HD) Then
  loc_1193E7D:   If CBool().TEXT <> vbNullString) Then
  loc_1193E88:     var_C4 = Me.SelectedItem.TEXT
  loc_1193EA3:     ).TEXT = arg_18
  loc_1193EB3:   Else
  loc_1193EDC:     If ().TEXT = vbNullString) Then
  loc_1193EE7:       var_C4 = Me.SelectedItem.TEXT
  loc_1193F02:       ).TEXT = arg_18
  loc_1193F0F:     End If
  loc_1193F0F:   End If
  loc_1193F17:   Me.Visible = False
  loc_1193F1B:   Exit Sub
  loc_1193F1C: End If
  loc_1193F4E: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1193F63:   If (Me.Visible = False) Then
  loc_1193F66:     Exit Sub
  loc_1193F67:   End If
  loc_1193F6A: Else
  loc_1193F7C:   If (Me.Visible = False) Then
  loc_1193F89:     Me.left = CVar(arg_24)
  loc_1193F97:     Me.top = CVar(arg_28)
  loc_1193FA5:     Me.width = CVar(arg_2C)
  loc_1193FB3:     Me.height = CVar(arg_30)
  loc_1193FC0:     Me.left = 0
  loc_1193FCD:     Me.top = 0
  loc_1193FDB:     Me.width = CVar(arg_2C)
  loc_1193FE9:     Me.height = CVar(arg_30)
  loc_1193FF0:     var_E4 = CVar(arg_2C) 'Integer
  loc_1194005:     Me.ColumnHeaders.width = 1
  loc_1194016:     Me.Tag = CVar(arg_18)
  loc_1194021:     Me.Visible = True
  loc_1194025:     var_94 = 0
  loc_119402E:     Call Me.ZOrder
  loc_1194034:   End If
  loc_1194034: End If
  loc_1194045: If (Me.Visible = True) Then
  loc_1194073:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1194080:     Me.Tag = CVar(arg_18)
  loc_11940B9:     If CBool((CLng(arg_1C) = &H26) And (Me.SelectedItem.index > 1)) Then
  loc_11940BC:       var_E4 = True
  loc_11940D3:       var_D4 = (Me.SelectedItem.index - 1)
  loc_11940E3:       Me.ListItems.Selected = (Me.SelectedItem.index > 1)
  loc_11940F8:       var_C4 = Me.SelectedItem.TEXT
  loc_1194113:       ).TEXT = arg_18
  loc_1194123:     Else
  loc_1194164:       If CBool((CLng(arg_1C) = &H28) And (Me.SelectedItem.index < Me.ListItems.Count)) Then
  loc_1194167:         var_E4 = True
  loc_119417E:         var_D4 = (Me.SelectedItem.index + 1)
  loc_119418E:         Me.ListItems.Selected = Me.SelectedItem.index
  loc_11941A5:         var_C4 = Me.SelectedItem.TEXT
  loc_11941C0:         ).TEXT = arg_18
  loc_11941D0:       Else
  loc_1194205:         If CBool((CLng(arg_1C) = &H28) And (Me.ListItems.Count = 1)) Then
  loc_1194210:           var_C4 = Me.SelectedItem.TEXT
  loc_119422B:           ).TEXT = arg_18
  loc_1194238:         End If
  loc_1194238:       End If
  loc_1194238:     End If
  loc_1194238:   End If
  loc_1194238: End If
  loc_1194238: Exit Sub
End Sub

Public Sub Proc_6_66_EFF8FC
  'Data Table: 4B6790
  Dim var_D4 As Variant
  Dim var_E4 As Integer
  Dim var_134 As Integer
  Dim var_8C As ListItem
  loc_EFF82E: Call Me.ListItems.Clear
  loc_EFF842: For var_B4 = 0 To (arg_1C - 1): var_8E = var_B4 'Integer
  loc_EFF84E:   var_D4 = CVar((var_8E + 1)) 'Integer
  loc_EFF860:   VarIndexLdRfVar
  loc_EFF87E:   Set var_8C = Me.ListItems.add
  loc_EFF88D: Next var_B4 'Integer
  loc_EFF8A7: var_E4 = 0
  loc_EFF8B1: var_134 = 1
  loc_EFF8C6: Set var_8C = Me.FindItem
  loc_EFF8D7: If (var_8C Is Nothing) Then
  loc_EFF8DA:   Exit Sub
  loc_EFF8DE: Else
  loc_EFF8E4:   var_8C.EnsureVisible var_146
  loc_EFF8EE:   var_8C.Selected = True
  loc_EFF8F3: End If
  loc_EFF8F6: Set var_88 = var_8C 
  loc_EFF8FA: Exit Sub
End Sub

Public Sub Proc_6_67_F8A608
  'Data Table: 4B6790
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_F0 As Integer
  Dim var_144 As Integer
  loc_F8A4C2: Call Me.ListItems.Clear
  loc_F8A4DF: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F8A4E2:   Exit Sub
  loc_F8A4E3:   ' Referenced from: F8A59C
  loc_F8A4E3: End If
  loc_F8A4E9: var_B6 = Me.EOF
  loc_F8A4F2: If Not(var_B6) Then
  loc_F8A51F:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_F8A579:   var_134 = CStr(Me.Recordset15.Fields.Item("code").Value)
  loc_F8A582:   Me.ListItems.add.SubItems = 1
  loc_F8A597:   Me.Recordset15.MoveNext
  loc_F8A59C:   GoTo loc_F8A4E3
  loc_F8A59F: End If
  loc_F8A5B4: var_F0 = 0
  loc_F8A5BE: var_144 = 1
  loc_F8A5D3: Set var_8C = Me.FindItem
  loc_F8A5E4: If (var_8C Is Nothing) Then
  loc_F8A5E7:   Exit Sub
  loc_F8A5EB: Else
  loc_F8A5F1:   var_8C.EnsureVisible var_B6
  loc_F8A5FB:   var_8C.Selected = True
  loc_F8A600: End If
  loc_F8A603: Set var_88 = var_8C 
  loc_F8A607: Exit Sub
End Sub

Public Sub Proc_6_68_129FB34
  'Data Table: 4B6790
  Dim var_B0 As Variant
  Dim Me As TextBox
  Dim var_E0 As Variant
  Dim var_114 As Variant
  loc_129F54C: If (Me.Recordset15.RecordCount <= 0) Then
  loc_129F54F:   var_B0 = vbNullString
  loc_129F569:   ).TEXT = arg_14
  loc_129F570:   Exit Sub
  loc_129F571: End If
  loc_129F5AA: If ((((((arg_1C = &HD) Or (arg_1C = &H10)) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_129F5AD:   Exit Sub
  loc_129F5AE: End If
  loc_129F5CA: var_8A = CByte().SelStart) 'Byte
  loc_129F5F0: var_88 = CStr().TEXT)
  loc_129F5FD: Me.Recordset15.MoveFirst
  loc_129F63A: If (Me.Recordset15.Fields.Item(CVar(arg_20)).Type = 3) Then
  loc_129F67D:   Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_129F6A3:   If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_129F6BB:     var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_129F6D8:     var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_129F6E0:     var_114 = (var_D0 + ).TEXT)
  loc_129F6E5:     var_88 = CStr(var_114)
  loc_129F6F4:     Me.Recordset15.MoveFirst
  loc_129F739:     Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_129F74E:     var_B0 = CVar(var_88) 'String
  loc_129F766:     ).TEXT = arg_14
  loc_129F770:   Else
  loc_129F7E7:     If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_129F7FF:       var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_129F81C:       var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_129F824:       var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_88)))
  loc_129F829:       var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_88))))
  loc_129F838:       Me.Recordset15.MoveFirst
  loc_129F87D:       Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_129F892:       var_B0 = CVar(var_88) 'String
  loc_129F8AA:       ).TEXT = arg_14
  loc_129F8B1:     End If
  loc_129F8B1:   End If
  loc_129F8B4: Else
  loc_129F8E4:   Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_88 & "'", 0, 1
  loc_129F908:   If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_129F920:     var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_129F93D:     var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_129F945:     var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_88)))
  loc_129F94A:     var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_88))))
  loc_129F959:     Me.Recordset15.MoveFirst
  loc_129F98E:     Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_88 & "'", 0, 1
  loc_129F9A1:     var_B0 = CVar(var_88) 'String
  loc_129F9B9:     ).TEXT = arg_14
  loc_129F9C3:   Else
  loc_129FA3A:     If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_129FA52:       var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_129FA6F:       var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_129FA77:       var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_88)))
  loc_129FA7C:       var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_88))))
  loc_129FA8B:       Me.Recordset15.MoveFirst
  loc_129FAC0:       Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_88 & "'", 0, 1
  loc_129FAD3:       var_B0 = CVar(var_88) 'String
  loc_129FAEB:       ).TEXT = arg_14
  loc_129FAF2:     End If
  loc_129FAF2:   End If
  loc_129FAF2: End If
  loc_129FB0C: var_114 = Len().TEXT)
  loc_129FB25: ).SelStart = arg_14
  loc_129FB32: Exit Sub
End Sub

Public Sub Proc_6_69_134A198
  'Data Table: 4B6790
  Dim var_A4 As Variant
  Dim arg_24 As Integer
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim Me As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim arg_1C As Integer
  Dim var_136 As Integer
  Dim var_120 As Variant
  loc_134999F: If (Proc_6_81_E63494(arg_1C) = &HFF) Then
  loc_13499A2:   Exit Sub
  loc_13499A3: End If
  loc_13499B0: If IsMissing(arg_24) Then
  loc_13499B5:   arg_24 = 1
  loc_13499B8: End If
  loc_13499C9: If ((CLng(arg_1C) = &HD) And (arg_30 = 0)) Then
  loc_13499F5:   If CBool().TEXT <> vbNullString) Then
  loc_1349A1B:     If ((Me.Recordset15.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_1349A24:       If (arg_20 = &HFF) Then
  loc_1349A4A:         var_B4 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1349A67:         ).TEXT = arg_14
  loc_1349A7C:       Else
  loc_1349A9F:         var_B4 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1349ABC:         ).TEXT = arg_14
  loc_1349AF0:         var_B4 = Me.Recordset15.Fields.Item(0).Value
  loc_1349B0D:         ).Tag = arg_14
  loc_1349B1F:       End If
  loc_1349B1F:     End If
  loc_1349B22:   Else
  loc_1349B65:     If CBool(().TEXT = vbNullString) And (Me.Visible = True)) Then
  loc_1349B8B:       If ((Me.Recordset15.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_1349B94:         If (arg_20 = &HFF) Then
  loc_1349BBA:           var_B4 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1349BD7:           ).TEXT = arg_14
  loc_1349BEC:         Else
  loc_1349C0F:           var_B4 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1349C2C:           ).TEXT = arg_14
  loc_1349C60:           var_B4 = Me.Recordset15.Fields.Item(0).Value
  loc_1349C7D:           ).Tag = arg_14
  loc_1349C8F:         End If
  loc_1349C8F:       End If
  loc_1349C8F:     End If
  loc_1349C8F:   End If
  loc_1349C97:   Me.Visible = False
  loc_1349CA3:   If Not((arg_2C Is Nothing)) Then
  loc_1349CAE:     Me.Visible = False
  loc_1349CB3:   End If
  loc_1349CB3:   Exit Sub
  loc_1349CB4: End If
  loc_1349CE6: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1349CFB:   If (Me.Visible = False) Then
  loc_1349CFE:     Exit Sub
  loc_1349CFF:   End If
  loc_1349D02: Else
  loc_1349D38:   If (((((CLng(arg_1C) = 8) Or (CLng(arg_1C) = &H25)) Or (CLng(arg_1C) = &H27)) Or (CLng(arg_1C) = &H24)) Or (CLng(arg_1C) = &H23)) Then
  loc_1349D55:     var_E4 = Len().TEXT)
  loc_1349D6E:     ).SelStart = arg_14
  loc_1349D8D:     If (Me.Visible = False) Then
  loc_1349D97:       Me.Visible = True
  loc_1349D9B:       var_A4 = 0
  loc_1349DA4:       Call Me.ZOrder
  loc_1349DAA:     End If
  loc_1349DB4:     If (CLng(arg_1C) <> 8) Then
  loc_1349DB9:       arg_1C = 0
  loc_1349DBC:     End If
  loc_1349DBF:   Else
  loc_1349DC9:     If (CLng(arg_1C) = &H2E) Then
  loc_1349DCC:       var_C4 = vbNullString
  loc_1349DE6:       ).TEXT = arg_14
  loc_1349DF0:     Else
  loc_1349E02:       If (Me.Visible = False) Then
  loc_1349E1F:         var_E4 = Len().TEXT)
  loc_1349E38:         ).SelStart = arg_14
  loc_1349E4C:         Me.Visible = True
  loc_1349E50:         var_A4 = 0
  loc_1349E59:         Call Me.ZOrder
  loc_1349E5F:       End If
  loc_1349E5F:     End If
  loc_1349E5F:   End If
  loc_1349E5F: End If
  loc_1349E70: If (Me.Visible = True) Then
  loc_1349E87:   If (Me.Recordset15.RecordCount = 0) Then
  loc_1349E8A:     Exit Sub
  loc_1349E8B:   End If
  loc_1349EB6:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1349EBC:     var_136 = arg_1C
  loc_1349EC9:     If (var_136 = CInt(&H26)) Then
  loc_1349EE0:       If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_1349EE6:         Me.Recordset15.MovePrevious
  loc_1349EEE:       Else
  loc_1349EF0:         arg_1C = 0
  loc_1349EF3:       End If
  loc_1349EF6:     Else
  loc_1349F00:       If (var_136 = CInt(&H28)) Then
  loc_1349F32:         If ((Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) And (Me.Recordset15.EOF = 0)) Then
  loc_1349F38:           Me.Recordset15.MoveNext
  loc_1349F3D:         End If
  loc_1349F40:       Else
  loc_1349F4A:         If (var_136 = CInt(&H21)) Then
  loc_1349F6F:           var_120 = (Int((Me.height / Me.RowHeight)) - 2)
  loc_1349F7B:           For var_140 = 1 To CInt(var_120):     var_8A = var_140 'Integer
  loc_1349F95:             If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_1349F9B:               Me.Recordset15.MovePrevious
  loc_1349FA0:             End If
  loc_1349FA3:           Next var_140 'Integer
  loc_1349FAB:         Else
  loc_1349FB5:           If (var_136 = CInt(&H22)) Then
  loc_1349FDA:             var_120 = (Int((Me.height / Me.RowHeight)) - 2)
  loc_1349FE6:             For var_144 = 1 To CInt(var_120):       var_8A = var_144 'Integer
  loc_134A01B:               If ((Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) And (Me.Recordset15.EOF = 0)) Then
  loc_134A021:                 Me.Recordset15.MoveNext
  loc_134A026:               End If
  loc_134A029:             Next var_144 'Integer
  loc_134A02E:           End If
  loc_134A02E:         End If
  loc_134A02E:       End If
  loc_134A02E:     End If
  loc_134A051:     If ((Me.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_134A05A:       If (arg_20 = &HFF) Then
  loc_134A080:         var_B4 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_134A09D:         ).TEXT = arg_14
  loc_134A0B2:       Else
  loc_134A0E2:         var_D4 = CVar(Proc_6_38_E68A98(Me.Recordset15.Fields.Item(CVar(arg_24)).Value)) 'String
  loc_134A0FA:         ).TEXT = arg_14
  loc_134A130:         var_B4 = Me.Recordset15.Fields.Item(0).Value
  loc_134A14D:         ).Tag = arg_14
  loc_134A15F:       End If
  loc_134A173:       var_D4 = Len())
  loc_134A18C:       ).SelStart = arg_14
  loc_134A197:     End If
  loc_134A197:   End If
  loc_134A197: End If
  loc_134A197: Exit Sub
End Sub

Public Sub Proc_6_70_EE4EC8
  'Data Table: 4B6790
  Dim var_98 As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim arg_58CC As String
  loc_EE4E04: var_98 = 0
  loc_EE4E18: var_B8 = CVar("CompName = '" & MemVar_1F92130 & "'") 'String
  loc_EE4E1F: var_D8 = Me.CrysReport1
  loc_EE4E24: VarLateMemCallSt
  loc_EE4E34: var_98 = 1
  loc_EE4E48: var_B8 = CVar("CompAdd ='" & MemVar_1F92134 & "'") 'String
  loc_EE4E4F: var_D8 = Me.CrysReport1
  loc_EE4E54: VarLateMemCallSt
  loc_EE4E64: var_98 = 2
  loc_EE4E78: var_B8 = CVar("CompCity  = '" & MemVar_1F9213C & "'") 'String
  loc_EE4E7F: var_D8 = Me.CrysReport1
  loc_EE4E84: VarLateMemCallSt
  loc_EE4E94: var_98 = 3
  loc_EE4EA8: var_B8 = CVar("reptitle ='" & arg_10 & "'") 'String
  loc_EE4EB4: VarLateMemCallSt
  loc_EE4EC4: Exit Sub
  loc_EE4EC5: arg_58CC = CStr(Me.CrysReport1)
End Sub

Public Sub Proc_6_71_EE4DC8
  'Data Table: 4B6790
  Dim var_98 As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  loc_EE4D04: var_98 = 4
  loc_EE4D18: var_B8 = CVar("CompPhone  = '" & MemVar_1F92140 & "'") 'String
  loc_EE4D1F: var_D8 = Me.CrysReport1
  loc_EE4D24: VarLateMemCallSt
  loc_EE4D34: var_98 = 5
  loc_EE4D48: var_B8 = CVar("CompFax  = '" & MemVar_1F92144 & "'") 'String
  loc_EE4D4F: var_D8 = Me.CrysReport1
  loc_EE4D54: VarLateMemCallSt
  loc_EE4D64: var_98 = 6
  loc_EE4D78: var_B8 = CVar("CompUPTT  = '" & MemVar_1F92148 & "'") 'String
  loc_EE4D7F: var_D8 = Me.CrysReport1
  loc_EE4D84: VarLateMemCallSt
  loc_EE4D94: var_98 = 7
  loc_EE4DA8: var_B8 = CVar("CompCst  = '" & MemVar_1F9214C & "'") 'String
  loc_EE4DAF: var_D8 = Me.CrysReport1
  loc_EE4DB4: VarLateMemCallSt
  loc_EE4DC4: Exit Sub
End Sub

Public Sub Proc_6_72_E865E0
  'Data Table: 4B6790
  loc_E86588: Set var_88 = Err()
  loc_E8658E: Call 0.Method_arg_1C (var_8C)
  loc_E8659F: If (var_8C <> 0) Then
  loc_E865AA:   Set var_88 = Err()
  loc_E865B0:   Call 0.Method_arg_2C (var_90)
  loc_E865C9:   MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_E865DC: End If
  loc_E865DC: Exit Sub
End Sub

Public Sub Proc_6_73_E22704
  'Data Table: 4B6790
  Dim var_94 As Long
  Dim arg_112 As Variant
  loc_E226E0: var_94 = -2147483643
  loc_E226EC: Me.BackColor = var_94
  loc_E226FC: Me.ForeColor = &HC00000
  loc_E22700: Exit Sub
  loc_E22701: arg_112 = CVar() 'Integer
End Sub

Public Sub Proc_6_74_E226B0
  'Data Table: 4B6790
  loc_E22698: Me.BackColor = &HE0E0E0
  loc_E226A8: Me.ForeColor = &HC00000
  loc_E226AC: Exit Sub
End Sub

Public Sub Proc_6_75_E527CC(arg_C) 'E527CC
  'Data Table: 4B6790
  Dim arg_C As Integer
  loc_E5279B: If (arg_C = 144) Then
  loc_E5279E:   Exit Sub
  loc_E5279F: End If
  loc_E527AC: If ((arg_C = &HD) Or (arg_C = &H28)) Then
  loc_E527BD:   Proc_303_0_FB9B68("	")
  loc_E527C7:   arg_C = 0
  loc_E527CA: End If
  loc_E527CA: Exit Sub
End Sub

Public Sub Proc_6_76_E52838(arg_C, arg_10) 'E52838
  'Data Table: 4B6790
  Dim arg_C As Integer
  Dim arg_10 As Integer
  loc_E52807: If (arg_C = 144) Then
  loc_E5280A:   Exit Sub
  loc_E5280B: End If
  loc_E52811: If (arg_C = &H26) Then
  loc_E5281C:   var_88 = "+{Tab}"
  loc_E52822:   Proc_303_0_FB9B68(var_88)
  loc_E5282C:   arg_C = 0
  loc_E52831:   arg_10 = 0
  loc_E52834: End If
  loc_E52834: Exit Sub
End Sub

Public Sub Proc_6_77_EF3E34
  'Data Table: 4B6790
  loc_EF3D7C: var_8C = Me.Global.App
  loc_EF3D8F: If App.PrevInstance Then
  loc_EF3D9E:   var_8C = Me.Global.App
  loc_EF3DC7:   var_B4 = "This program is already in the air...."
  loc_EF3DCD:   MsgBox(var_B4, 0, var_D4, var_F4, var_114)
  loc_EF3DE9:   var_8C = Me.Global.App
  loc_EF3DF1:   App.Title = vbNullString
  loc_EF3E02:   Me.CAPTION = vbNullString
  loc_EF3E11:   AppActivate(App.Title, var_B4)
  loc_EF3E27:   Proc_303_0_FB9B68("ENTER}")
  loc_EF3E2F:   End
  loc_EF3E31: End If
  loc_EF3E31: Exit Sub
End Sub

Public Sub Proc_6_78_E596E0
  'Data Table: 4B6790
  loc_E596A3: var_8A = Me.ListBox.ListCount
  loc_E596AE: For var_8E = 0 To (var_8A - 1): var_88 = var_8E 'Integer
  loc_E596BD:   var_88 = Me.ListBox.Selected
  loc_E596C8:   If (var_8A = &HFF) Then
loc_E596D0: End Sub
  loc_E596D1:   End If
  loc_E596D4: Next var_8E 'Integer
  loc_E596DE: End Sub
End Sub

Public Sub Proc_6_79_11ACE04
  'Data Table: 4B6790
  Dim var_98 As Variant
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_CA As Integer
  Dim arg_1C As Integer
  Dim var_C8 As Long
  loc_11AC9CC: On Error Goto loc_11ACDFE
  loc_11AC9DA: If (Proc_6_81_E63494(arg_1C) = &HFF) Then
  loc_11AC9DD:   Exit Sub
  loc_11AC9DE: End If
  loc_11AC9EF: If ((CLng(arg_1C) = &HD) And (arg_2C = 0)) Then
  loc_11AC9FA:   Me.Visible = False
  loc_11ACA06:   If Not((arg_28 Is Nothing)) Then
  loc_11ACA11:     Me.Visible = False
  loc_11ACA16:   End If
  loc_11ACA16:   Exit Sub
  loc_11ACA17: End If
  loc_11ACA49: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11ACA5E:   If (Me.Visible = False) Then
  loc_11ACA61:     Exit Sub
  loc_11ACA62:   End If
  loc_11ACA65: Else
  loc_11ACA77:   If (Me.Visible = False) Then
  loc_11ACA81:     Me.Visible = True
  loc_11ACA85:     var_98 = 0
  loc_11ACA8E:     Call Me.ZOrder
  loc_11ACA94:   End If
  loc_11ACA94: End If
  loc_11ACAA5: If (Me.Visible = True) Then
  loc_11ACAD3:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11ACAD9:     var_CA = arg_1C
  loc_11ACAE6:     If (var_CA = CInt(&H26)) Then
  loc_11ACAFD:       If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_11ACB23:         If ((Me.Recordset15.EOF = 0) And (Me.Recordset15.BOF = 0)) Then
  loc_11ACB29:           Me.Recordset15.MovePrevious
  loc_11ACB31:         Else
  loc_11ACB34:           Me.MoveFirst
  loc_11ACB39:         End If
  loc_11ACB3C:       Else
  loc_11ACB3E:         arg_1C = 0
  loc_11ACB41:       End If
  loc_11ACB44:     Else
  loc_11ACB4E:       If (var_CA = CInt(&H28)) Then
  loc_11ACB6E:         If (Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) Then
  loc_11ACB94:           If ((Me.Recordset15.EOF = 0) And (Me.Recordset15.BOF = 0)) Then
  loc_11ACB9A:             Me.Recordset15.MoveNext
  loc_11ACBA2:           Else
  loc_11ACBA5:             Me.MoveLast
  loc_11ACBAA:           End If
  loc_11ACBAA:         End If
  loc_11ACBAD:       Else
  loc_11ACBB7:         If (var_CA = CInt(&H21)) Then
  loc_11ACBC1:           For var_DC = 1 To &HA:     var_86 = var_DC 'Integer
  loc_11ACBDB:             If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_11ACC01:               If ((Me.Recordset15.EOF = 0) And (Me.Recordset15.BOF = 0)) Then
  loc_11ACC07:                 Me.Recordset15.MovePrevious
  loc_11ACC0F:               Else
  loc_11ACC12:                 Me.MoveFirst
  loc_11ACC17:               End If
  loc_11ACC17:             End If
  loc_11ACC1A:           Next var_DC 'Integer
  loc_11ACC22:         Else
  loc_11ACC2C:           If (var_CA = CInt(&H22)) Then
  loc_11ACC36:             For var_E0 = 1 To &HA:       var_86 = var_E0 'Integer
  loc_11ACC59:               If (Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) Then
  loc_11ACC7F:                 If ((Me.Recordset15.EOF = 0) And (Me.Recordset15.BOF = 0)) Then
  loc_11ACC85:                   Me.Recordset15.MoveNext
  loc_11ACC8D:                 Else
  loc_11ACC90:                   Me.MoveLast
  loc_11ACC95:                 End If
  loc_11ACC95:               End If
  loc_11ACC98:             Next var_E0 'Integer
  loc_11ACC9D:           End If
  loc_11ACC9D:         End If
  loc_11ACC9D:       End If
  loc_11ACC9D:     End If
  loc_11ACCC0:     If ((Me.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_11ACCC9:       If (arg_20 = &HFF) Then
  loc_11ACCEF:         var_B8 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_11ACD0C:         ).TEXT = arg_14
  loc_11ACD21:       Else
  loc_11ACD44:         var_B8 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_11ACD61:         ).TEXT = arg_14
  loc_11ACD95:         var_B8 = Me.Recordset15.Fields.Item(0).Value
  loc_11ACDB2:         ).Tag = arg_14
  loc_11ACDC4:       End If
  loc_11ACDD8:       var_C8 = Len())
  loc_11ACDF1:       ).SelStart = arg_14
  loc_11ACDFC:     End If
  loc_11ACDFC:   End If
  loc_11ACDFC:   Exit Sub
  loc_11ACDFD: End If
  loc_11ACDFD: Exit Sub
  loc_11ACDFE: ' Referenced from: 11AC9CC
  loc_11ACDFE: Proc_6_60_E62BC4(var_C8, arg_14, var_B8)
  loc_11ACE03: Exit Sub
End Sub

Public Sub Proc_6_80_FF0AC0
  'Data Table: 4B6790
  Dim Me As Variant
  Dim var_C0 As Variant
  loc_FF08FC: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF08FF:   Exit Sub
  loc_FF0900: End If
  loc_FF094F: If ((((((((arg_18 = &HD) Or (CLng(arg_18) = &H27)) Or (CLng(arg_18) = &H25)) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_FF0952:   Exit Sub
  loc_FF0953: End If
  loc_FF0967: var_C0 = ).SelStart
  loc_FF098E: VarLateMemLdRfVar
  loc_FF09B2: var_88 = CStr(Mid(var_C0, 1, CByte(var_C0)))
  loc_FF09C1: Me..txt.MoveFirst
  loc_FF09FE: If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_FF0A41:   Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_FF0A56: Else
  loc_FF0A5E:   If (var_88 <> vbNullString) Then
  loc_FF0A91:     Me.Recordset15.Find vbNullString & arg_1C & " >='" & var_88 & "'", 0, 1
  loc_FF0AA1:   End If
  loc_FF0AA1: End If
  loc_FF0AB2: If (Me.EOF = &HFF) Then
  loc_FF0AB8:   Me.Recordset15.MoveFirst
  loc_FF0ABD: End If
  loc_FF0ABD: Exit Sub
End Sub

Public Sub Proc_6_81_E63494(arg_C) 'E63494
  'Data Table: 4B6790
  loc_E63484: If (((((((CLng(arg_C) = &H11) Or (CLng(arg_C) = &H10)) Or (CLng(arg_C) = &H90)) Or (CLng(arg_C) = &H14)) Or (CLng(arg_C) = &H91)) Or (arg_C = &H12)) Or (arg_C = &H5B)) Then
loc_E6348C: End Sub
  loc_E6348D: End If
  loc_E63492: End Sub
End Sub

Public Sub Proc_6_82_FE0390
  'Data Table: 4B6790
  Dim var_B8 As Variant
  Dim var_96 As Integer
  Dim var_108 As Variant
  loc_FE01C2: var_94 = arg_10 'Variant
  loc_FE01E6: If CBool(IsNull(var_94) Or (var_94 = Null)) Then
  loc_FE01EE:   var_94 = "Null" 'Variant
  loc_FE01F2:   Result = arg_10: Exit Sub
  loc_FE01F6: End If
  loc_FE0219: If CBool(IsNull(arg_10) Or (arg_10 = Null)) Then
  loc_FE0221:   var_94 = "Null" 'Variant
  loc_FE0225:   Result = arg_10: Exit Sub
  loc_FE0229: End If
  loc_FE0240: var_96 = CInt(InStr(1, var_94, "'", 1))
  loc_FE0246: ' Referenced from: FE02D7
  loc_FE024C: If (var_96 <> 0) Then
  loc_FE0255:   If (var_96 <= 0) Then
  loc_FE025E:     var_94 = arg_10 'Variant
  loc_FE0265:   Else
  loc_FE0272:     var_B8 = Left(var_94, CLng((var_96 - 1)))
  loc_FE0290:     var_108 = (Len(var_94) - CVar(var_96))
  loc_FE02A8:     var_94 = InStr(1, var_94, "'", 1) & " & Right(var_94, CLng(var_108)) 'Variant
  loc_FE02B5:   End If
  loc_FE02CC:   var_B8 = InStr(CLng((1 + var_96)), arg_10, "'", 1)
  loc_FE02D1:   var_96 = CInt(InStr(1, var_94, "'", 1))
  loc_FE02D7:   GoTo loc_FE0246
  loc_FE02DA: End If
  loc_FE02F1: var_96 = CInt(InStr(1, var_94, "|", 1))
  loc_FE02F7: ' Referenced from: FE0388
  loc_FE02FD: If (var_96 <> 0) Then
  loc_FE0306:   If (var_96 <= 0) Then
  loc_FE030F:     var_94 = arg_10 'Variant
  loc_FE0316:   Else
  loc_FE0323:     var_B8 = Left(var_94, CLng((var_96 - 1)))
  loc_FE0341:     var_108 = (Len(var_94) - CVar(var_96))
  loc_FE0359:     var_94 = InStr(1, var_94, "|", 1) & " & Right(var_94, CLng(var_108)) 'Variant
  loc_FE0366:   End If
  loc_FE037D:   var_B8 = InStr(CLng((1 + var_96)), arg_10, "|", 1)
  loc_FE0382:   var_96 = CInt(InStr(1, var_94, "|", 1))
  loc_FE0388:   GoTo loc_FE02F7
  loc_FE038B: End If
  loc_FE038B: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_83_F2F6F8(arg_C) 'F2F6F8
  'Data Table: 4B6790
  Dim var_E0 As Integer
  Dim var_A4 As String
  Dim unk_4B67AE As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_8C As Double
  loc_F2F5FD: If (arg_C <= 0) Then
loc_F2F600: End Sub
  loc_F2F601: End If
  loc_F2F607: var_E0 = 0
  loc_F2F629: var_A4 = "SELECT iif(isnull(sum(stock.qty)),0,sum(stock.qty)) AS OpRec FROM Stock where left(stock.v_type,1) ='X' and stock.prod_code=" & CStr(arg_C)
  loc_F2F639: unk_4B67AE.Execute var_A4 & vbNullString, var_C8, -1
  loc_F2F641: var_CC = var_CC.Fields
  loc_F2F649: var_E0 = var_D0.Item(var_D0)
  loc_F2F651: var_E4 = var_E4.Value
  loc_F2F67C: var_E0 = 0
  loc_F2F69E: var_A4 = "SELECT iif(isnull(sum(stock.qty)),0,sum(stock.qty)) AS OpIss FROM Stock where left(stock.v_type,1) ='Y' and stock.prod_code=" & CStr(arg_C)
  loc_F2F6AE: unk_4B67AE.Execute var_A4 & vbNullString, var_C8, -1
  loc_F2F6B6: var_CC = var_CC.Fields
  loc_F2F6BE: var_E0 = var_D0.Item(var_D0)
  loc_F2F6C6: var_E4 = var_E4.Value
  loc_F2F6F2: var_8C = (CSng(var_F4) - CSng(var_F4))
  loc_F2F6F5: End Sub
End Sub

Public Sub Proc_6_84_FB0C5C(arg_C, arg_10) 'FB0C5C
  'Data Table: 4B6790
  Dim var_D8 As Variant
  Dim unk_4B67AE As Connection15
  Dim var_C4 As Recordset15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_98 As Double
  Dim var_90 As Double
  Dim var_C0 As Variant
  Dim var_11C As Variant
  Dim var_12C As Boolean
  Dim var_18C As Variant
  loc_FB0AEE: If (Len(arg_C) <= 0) Then
  loc_FB0AF1:   Exit Sub
  loc_FB0AF2: End If
  loc_FB0AF8: var_D8 = 0
  loc_FB0B25: unk_4B67AE.Execute "SELECT iif(isnull(sum(ledger.Amtcr)),0,sum(ledger.Amtcr)) AS OpRec FROM ledger where subcode='" & arg_C & "'", var_C0, -1
  loc_FB0B2D: var_C4 = var_C4.Fields
  loc_FB0B35: var_D8 = var_C8.Item(var_C8)
  loc_FB0B3D: var_DC = var_DC.Value
  loc_FB0B46: var_98 = CSng(var_EC)
  loc_FB0B66: var_D8 = 0
  loc_FB0B93: unk_4B67AE.Execute "SELECT iif(isnull(sum(ledger.Amtdr)),0,sum(ledger.Amtdr)) AS OpIss FROM ledger where subcode='" & arg_C & "'", var_C0, -1
  loc_FB0B9B: var_C4 = var_C4.Fields
  loc_FB0BA3: var_D8 = var_C8.Item(var_C8)
  loc_FB0BAB: var_DC = var_DC.Value
  loc_FB0BB4: var_90 = CSng(var_EC)
  loc_FB0BEF: var_C0 = CVar(Abs(((var_90 - var_98) + arg_10))) 'Double
  loc_FB0C03: var_11C = (Format(var_C0, "0.00") + " ")
  loc_FB0C2D: var_12C = (CDbl(((var_90 - var_98) + arg_10)) > CDbl(0))
  loc_FB0C3C: var_18C = (var_11C + IIf(var_12C, "Dr", "Cr"))
  loc_FB0C41: var_88 = CStr(var_18C)
  loc_FB0C59: Exit Sub
End Sub

Public Sub Proc_6_85_1261068(arg_C, arg_10, arg_14) '1261068
  'Data Table: 4B6790
  Dim var_8C As Double
  Dim var_BC As Variant
  Dim var_9C As Double
  Dim var_EC As Variant
  Dim var_120 As Variant
  Dim var_1C0 As Variant
  Dim var_150 As Variant
  loc_1260B17: var_90 = arg_14
  loc_1260B1E: var_92 = arg_10 'Byte
  loc_1260B2B: If (CInt(var_92) = 4) Then
loc_1260B34: End Sub
  loc_1260B35: End If
  loc_1260B53: var_BC = CVar((arg_C - Int(arg_C))) 'Double
  loc_1260B63: var_9C = CSng(Format(var_BC, "0.00"))
  loc_1260B73: var_EE = var_92 'Byte
  loc_1260B80: If (var_EE = CByte(0)) Then
  loc_1260BCC:   var_EC = (CVar(arg_C) - Round(arg_C, 0))
  loc_1260BFC:   var_1C0 = CVar((Int(arg_C) + CDbl(1))) 'Double
  loc_1260C3A:   var_210 = IIf((var_90 = "L"), CVar(Int(arg_C)), IIf((Format(CVar(CDbl(Format(Round(arg_C, 0), "0.00"))), "0.00") <= 0), Round(arg_C, 0), var_1C0))
  loc_1260C5D:   var_8C = CSng(IIf((var_90 = "S"), Round(arg_C, 0), var_210))
  loc_1260C82: Else
  loc_1260C8B:   If (var_EE = CByte(1)) Then
  loc_1260C91:     var_234 = var_90
  loc_1260C9C:     If (var_234 = "S") Then
  loc_1260CAC:       If (var_9C < 0.5) Then
  loc_1260CCA:         var_BC = CVar(CDbl(-var_9C)) 'Double
  loc_1260CDA:         var_8C = CSng(Format(Round(arg_C, 0), "0.0"))
  loc_1260CE9:       Else
  loc_1260D07:         var_BC = CVar(CDbl((CDbl(1) - var_9C))) 'Double
  loc_1260D17:         var_8C = CSng(Format(Round(arg_C, 0), "0.0"))
  loc_1260D23:       End If
  loc_1260D26:     Else
  loc_1260D2E:       If (var_234 = "L") Then
  loc_1260D4C:         var_BC = CVar(CDbl(-var_9C)) 'Double
  loc_1260D5C:         var_8C = CSng(Format(Round(arg_C, 0), "0.0"))
  loc_1260D6B:       Else
  loc_1260D73:         If (var_234 = "U") Then
  loc_1260D94:           var_BC = CVar(CDbl((CDbl(1) - var_9C))) 'Double
  loc_1260DA4:           var_8C = CSng(Format(Round(arg_C, 0), "0.0"))
  loc_1260DB0:         End If
  loc_1260DB0:       End If
  loc_1260DB0:     End If
  loc_1260DB3:   Else
  loc_1260DBC:     If (var_EE = CByte(2)) Then
  loc_1260DC2:       var_238 = var_90
  loc_1260DCD:       If (var_238 = "S") Then
  loc_1260DDD:         If (var_9C < 0.5) Then
  loc_1260DFB:           var_BC = CVar(CDbl(-var_9C)) 'Double
  loc_1260E0B:           var_8C = CSng(Format(Round(arg_C, 0), "0.00"))
  loc_1260E1A:         Else
  loc_1260E38:           var_BC = CVar(CDbl((CDbl(1) - var_9C))) 'Double
  loc_1260E48:           var_8C = CSng(Format(Round(arg_C, 0), "0.00"))
  loc_1260E54:         End If
  loc_1260E57:       Else
  loc_1260E5F:         If (var_238 = "L") Then
  loc_1260E7D:           var_BC = CVar(CDbl(-var_9C)) 'Double
  loc_1260E8D:           var_8C = CSng(Format(Round(arg_C, 0), "0.00"))
  loc_1260E9C:         Else
  loc_1260EA4:           If (var_238 = "U") Then
  loc_1260EC5:             var_BC = CVar(CDbl((CDbl(1) - var_9C))) 'Double
  loc_1260ED5:             var_8C = CSng(Format(Round(arg_C, 0), "0.00"))
  loc_1260EE1:           End If
  loc_1260EE1:         End If
  loc_1260EE1:       End If
  loc_1260EE4:     Else
  loc_1260EED:       If (var_EE = CByte(3)) Then
  loc_1260EF3:         var_23C = var_90
  loc_1260EFE:         If (var_23C = "S") Then
  loc_1260F66:           var_150 = (CVar(Int(arg_C)) + IIf((var_9C <= 0.24), 0, IIf(((var_9C >= 0.25) And (var_9C <= 0.74)), 0.5, 1)))
  loc_1260F6B:           var_8C = CSng(Format(CVar(CDbl(Format(Round(arg_C, 0), "0.00"))), "0.00"))
  loc_1260F84:         Else
  loc_1260F8C:           If (var_23C = "L") Then
  loc_1260FC5:             var_120 = (CVar(Int(arg_C)) + IIf((var_9C <= 0.49), 0, 0.5))
  loc_1260FCA:             var_8C = CSng(0)
  loc_1260FDD:           Else
  loc_1260FE5:             If (var_23C = "U") Then
  loc_1261039:               var_150 = (CVar(Int(arg_C)) + IIf((var_9C = CDbl(0)), 0, IIf((var_9C <= 0.5), 0.5, 1)))
  loc_126103E:               var_8C = CSng(Format(CVar(CDbl(Format(Round(arg_C, 0), "0.00"))), "0.00"))
  loc_1261054:             End If
  loc_1261054:           End If
  loc_1261054:         End If
  loc_1261054:       End If
  loc_1261054:     End If
  loc_1261054:   End If
  loc_1261054: End If
  loc_126105B: If (var_9C <= CDbl(0)) Then
  loc_1261061:   var_8C = var_9C
  loc_1261064: End If
  loc_1261064: Result var_8C End Sub 'Double
End Sub

Public Sub Proc_6_86_12EDF28(arg_C, arg_10) '12EDF28
  'Data Table: 4B6790
  Dim var_BC As Variant
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_94 As Recordset15
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_CC As Variant
  Dim arg_18 As Integer
  Dim var_98 As Long
  Dim MemVar_1F920E4 As String
  Dim unk_4B67AE As Connection15
  Dim var_14C As Variant
  Dim var_198 As Variant
  Dim var_178 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  loc_12ED89B: var_8C = arg_C
  loc_12ED8A8: Set var_94 = New 
  loc_12ED8B3: Me.Recordset15.CursorLocation = 3
  loc_12ED8BB: var_BC = arg_10
  loc_12ED8C3: Proc_6_7_F25D88(var_CC)
  loc_12ED8E6: var_9C = "Select VT.Number_Method,VT.SerialNo_From_Table,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_12ED909: var_DC = CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<=") 'String
  loc_12ED90F: var_EC = var_DC & var_CC 
  loc_12ED918: var_10C = var_EC & " Order By VP.Date_From DESC" 
  loc_12ED920: var_94.Open var_10C, CVar(MemVar_1F92044), 2
  loc_12ED951: If (var_94.RecordCount <= 0) Then
  loc_12ED96D:   MsgBox("Please Define Document Numbering System", &H40, var_DC, var_EC, var_10C)
  loc_12ED980:   var_88 = vbNullString
  loc_12ED983:   GoTo loc_12EDF1E
  loc_12ED989: Else
  loc_12ED9C5:   If (var_94.Fields.Item("Number_Method").Value = "Manual") Then
  loc_12ED9E4:     If (CDbl(Val(CStr(Me.TEXT))) = CDbl(0)) Then
  loc_12EDA00:       MsgBox("Please enter Document No.", &H40, var_DC, var_EC, var_10C)
  loc_12EDA13:       var_88 = vbNullString
  loc_12EDA19:     Else
  loc_12EDA25:       Me.Enabled = True
  loc_12EDA2C:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF34
  loc_12EDA3D:       var_98 = CLng(Val(CStr(&HFF)))
  loc_12EDA49:     Else
  loc_12EDA4B:       arg_18 = 0
  loc_12EDA56:       Me.Enabled = False
  loc_12EDA80:       var_DC = Ucase(CVar(Me.Recordset15.Fields.Item("SerialNo_From_Table")))
  loc_12EDA88:       var_148 = var_DC 'Variant
  loc_12EDA9D:       If (var_148 = "DIVISION") Then
  loc_12EDADC:         If (var_94.Fields.Item("V_Type").Value = "W_JC") Then
  loc_12EDAE6:           var_9C = "select JobCard_SrlNo+1 from Division where Div_code='" & MemVar_1F9206C
  loc_12EDAED:           MemVar_1F920E4 = CStr(&HFF) & "'"
  loc_12EDAF7:         Else
  loc_12EDB33:           If (var_94.Fields.Item("V_Type").Value = "W_RG") Then
  loc_12EDB3D:             var_9C = "select IPO_Gen_SrlNo+1 from Division where Div_code='" & MemVar_1F9206C
  loc_12EDB44:             MemVar_1F920E4 = CStr(&HFF) & "'"
  loc_12EDB4E:           Else
  loc_12EDB68:             var_138 = var_94.Fields.Item("V_Type")
  loc_12EDB70:             var_CC = var_138.Value
  loc_12EDB8A:             If (var_CC = "W_RW") Then
  loc_12EDB94:               var_9C = "select IPO_War_SrlNo+1 from Division where Div_code='" & MemVar_1F9206C
  loc_12EDB9B:               MemVar_1F920E4 = CStr(&HFF) & "'"
  loc_12EDBA2:             End If
  loc_12EDBA2:           End If
  loc_12EDBA2:         End If
  loc_12EDBA8:         var_FC = 0
  loc_12EDBC7:         unk_4B67AE.Execute MemVar_1F920E4, var_CC, -1
  loc_12EDBCF:         var_134 = var_134.Fields
  loc_12EDBD7:         var_FC = var_138.Item(var_138)
  loc_12EDBDF:         var_14C = var_14C.Value
  loc_12EDBE9:         var_98 = CLng(var_DC)
  loc_12EDBFF:       Else
  loc_12EDC0A:         If (var_148 = "SP_ORDCOUN") Then
  loc_12EDC11:           Set var_94 = New 
  loc_12EDC1C:           Me.Recordset15.CursorLocation = 3
  loc_12EDC4D:           var_94.Open CVar("select START_NO as start_srl_no,eND_NO from Sp_ordcoun where ord_type='" & var_8C & "'"), CVar(MemVar_1F92044), 2
  loc_12EDCAE:           var_EC = var_94.Fields.Item("start_srl_no").Value
  loc_12EDCBB:           var_10C = (var_EC + 1)
  loc_12EDD0D:           If CBool((var_94.Fields.Item("end_no").Value > 0) And (var_10C > var_94.Fields.Item("end_no").Value)) Then
  loc_12EDD31:             MsgBox("Alloted Serials for this Order Type is Complete", &H40, "Validation", var_EC, var_10C)
  loc_12EDD44:           Else
  loc_12EDD73:             var_DC = (var_94.Fields.Item("start_srl_no").Value + 1)
  loc_12EDD79:             var_98 = CLng("Validation")
  loc_12EDD8D:           Else
  loc_12EDDBC:             var_DC = (var_94.Fields.Item("start_srl_no").Value + 1)
  loc_12EDDC2:             var_98 = CLng("Validation")
  loc_12EDDD3:           End If
  loc_12EDDD3:         End If
  loc_12EDDD3:       End If
  loc_12EDDD3:     End If
  loc_12EDDFA:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_12EDE10:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_12EDE29:     var_A0 = -1 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C, CVar(var_98), CVar(var_94.Fields.Item("Prefix")), var_98, var_98, 3)
  loc_12EDE30:     var_DC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C, CVar(var_98), CVar(var_94.Fields.Item("Prefix")), var_98, var_98, 3) & "' AND VP.LOGSITE_CODE='" & var_8C) 'String
  loc_12EDE40:     var_CC = Space((5 - Len(var_8C)))
  loc_12EDE48:     var_EC = (var_DC + CVar(var_94.Fields.Item("Prefix")))
  loc_12EDE76:     var_178 = (var_EC + var_94.Fields.Item("Prefix").Value)
  loc_12EDEB3:     var_198 = Space((5 - Len(CStr(var_94.Fields.Item("Prefix").Value))))
  loc_12EDEBB:     var_1AC = (var_94.Fields.Item("end_no").Value + (var_94.Fields.Item("end_no").Value > 0) And (var_94.Fields.Item("Prefix").Value > var_94.Fields.Item("end_no").Value))
  loc_12EDED1:     var_1BC = Space((8 - Len(CStr(var_98))))
  loc_12EDED9:     var_1CC = (var_1AC + var_1BC)
  loc_12EDEE5:     var_1EC = (var_1CC + CVar(CStr(var_98)))
  loc_12EDEEA:     var_88 = CStr(var_1EC)
  loc_12EDF1E:   End If
  loc_12EDF1E: End If
  loc_12EDF1E: ' Referenced from: 12ED983
  loc_12EDF23: Set var_94 = Nothing
  loc_12EDF26: Exit Sub
End Sub

Public Sub Proc_6_87_F69A7C
  'Data Table: 4B6790
  loc_F69980: For var_90 = CInt(Len(arg_10)) To 3 Step &HFD: var_8A = var_90 'Integer
  loc_F6998E:   If (vbNullString = vbNullString) Then
  loc_F699BB:     var_88 = CStr("'" & Left(arg_10, CLng(var_8A)) & "'")
  loc_F699CA:   Else
  loc_F699E3:     var_B0 = Left(arg_10, CLng(var_8A))
  loc_F699F9:     var_88 = CStr(CVar(var_88 & ",'") & var_B0 & "'")
  loc_F69A07:   End If
  loc_F69A0A: Next var_90 'Integer
  loc_F69A17: If (var_88 <> vbNullString) Then
  loc_F69A5C:   Me.Connection15.Execute "Update AcGroup Set CurrentBalance=CurrentBalance " & arg_18 & " " & CStr(arg_14) & " Where MainGrCode In(" & var_88 & ")", var_B0, -1
  loc_F69A78: End If
  loc_F69A78: Exit Sub
End Sub

Public Sub Proc_6_88_FE81B4(arg_C, arg_10, arg_14, arg_18) 'FE81B4
  'Data Table: 4B6790
  Dim arg_10 As Integer
  Dim arg_14 As Integer
  loc_FE7FD6: If (CLng(arg_10) = &H7B) Then
  loc_FE7FDF:   arg_10 = CInt(&H53)
  loc_FE7FE4:   arg_14 = 2
  loc_FE7FE7: End If
  loc_FE808A: If (((((((((((((CLng(arg_10) = &H71) Or (CLng(arg_10) = &H72)) Or (CLng(arg_10) = &H73)) Or ((CLng(arg_10) = &H46) And (arg_14 = 2))) Or ((CLng(arg_10) = &H50) And (arg_14 = 2))) Or ((CLng(arg_10) = &H53) And (arg_14 = 2))) Or (CLng(arg_10) = &H1B)) Or (CLng(arg_10) = &H74)) Or (CLng(arg_10) = &H79)) Or (CLng(arg_10) = &H24)) Or (CLng(arg_10) = &H21)) Or (CLng(arg_10) = &H22)) Or (CLng(arg_10) = &H23)) Then
  loc_FE80A5:   Call Me.TopCtrl1.TopKey_Down
  loc_FE80BF:   If ((CLng(arg_10) = &H53) And (arg_14 = 2)) Then
  loc_FE80C4:     arg_10 = 0
  loc_FE80C9:     arg_14 = 0
  loc_FE80CC:   End If
  loc_FE80CC: End If
  loc_FE80D6: If (CLng(arg_10) <> &H79) Then
  loc_FE80F9:   If (Me.TopCtrl1.PrvKeyCode = &H1B) Then
  loc_FE810A:     Me.TopCtrl1.PrvKeyCode = 0
  loc_FE8114:   Else
  loc_FE8123:     Me.TopCtrl1.PrvKeyCode = CVar(arg_10)
  loc_FE8138:     If Not(IsMissing(arg_18)) Then
  loc_FE8141:       If (arg_18 <> 0) Then
  loc_FE8155:         If ((arg_14 = 2) And (CLng(arg_10) = &H53)) Then
  loc_FE8170:           Call Me.TopCtrl1.TopKey_Down
  loc_FE8186:           Me.Global.Unload arg_C
  loc_FE8191:         Else
  loc_FE819B:           If (CLng(arg_10) = &H1B) Then
  loc_FE81AB:             Me.Global.Unload arg_C
  loc_FE81B3:           End If
  loc_FE81B3:         End If
  loc_FE81B3:       End If
  loc_FE81B3:     End If
  loc_FE81B3:   End If
  loc_FE81B3: End If
  loc_FE81B3: Exit Sub
End Sub

Public Sub Proc_6_89_146F1AC
  'Data Table: 4B6790
  Dim var_B0 As Variant
  Dim arg_18 As Integer
  Dim var_E0 As Variant
  Dim Me As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  loc_146E5C4: If (Me.Recordset15.RecordCount <= 0) Then
  loc_146E5C7:   var_B0 = vbNullString
  loc_146E5E1:   ).TEXT = arg_10
  loc_146E5E8:   Exit Sub
  loc_146E5E9: End If
  loc_146E646: If ((((((((((arg_18 = &HD) Or (arg_18 = 8)) Or (arg_18 = 0)) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H25)) Or (CLng(arg_18) = &H27)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_146E649:   Exit Sub
  loc_146E64A: End If
  loc_146E650: If (arg_18 = &H27) Then
  loc_146E656:   arg_18 = 146
  loc_146E659: End If
  loc_146E66D: If (IsMissing(arg_20) Or (arg_20 = 0)) Then
  loc_146E699:   If ().TEXT = vbNullString) Then
  loc_146E6AC:     var_88 = CStr(Chr(CLng(arg_18)))
  loc_146E6B5:   Else
  loc_146E6C9:     var_F0 = ).TEXT
  loc_146E6D6:     var_E0 = Chr(CLng(arg_18))
  loc_146E6DE:     var_100 = (var_F0 + var_E0)
  loc_146E6E3:     var_88 = CStr(var_100)
  loc_146E6F1:   End If
  loc_146E70B:   If (((var_88 = vbNullString) Or (var_88 = "*")) Or (var_88 = "_")) Then
  loc_146E710:     arg_18 = 0
  loc_146E713:     Exit Sub
  loc_146E714:   End If
  loc_146E717:   Me.MoveFirst
  loc_146E754:   If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_146E770:     MsgBox("Please convert to String Search", 0, var_E0, var_F0, var_100)
  loc_146E7C0:     Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_146E7E6:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_146E804:       var_88 = CStr().TEXT)
  loc_146E811:       Me.Recordset15.MoveFirst
  loc_146E856:       Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_146E86B:     Else
  loc_146E8E2:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_146E900:         var_88 = CStr().TEXT)
  loc_146E90D:         Me.Recordset15.MoveFirst
  loc_146E952:         Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_146E964:       End If
  loc_146E964:     End If
  loc_146E967:   Else
  loc_146E96A:     Me.MoveFirst
  loc_146E99F:     Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_146E9C3:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_146E9E1:       var_88 = CStr().TEXT)
  loc_146E9EE:       Me.Recordset15.MoveFirst
  loc_146E9FB:       If (var_88 <> vbNullString) Then
  loc_146EA2E:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_146EA3E:       End If
  loc_146EA41:     Else
  loc_146EAB8:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_146EAD6:         var_88 = CStr().TEXT)
  loc_146EAE3:         Me.Recordset15.MoveFirst
  loc_146EB18:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_146EB28:       End If
  loc_146EB28:     End If
  loc_146EB28:   End If
  loc_146EB2B:   var_B0 = CVar(var_88) 'String
  loc_146EB58:   var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_146EB69:   If (arg_10 = Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))) Then
  loc_146EB95:     var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_146EBAE:     ).TEXT = arg_10
  loc_146EBBF:   End If
  loc_146EBC1:   arg_18 = 0
  loc_146EBC7: Else
  loc_146EBE3:   var_8A = CByte().SelStart) 'Byte
  loc_146EC09:   var_88 = CStr().TEXT)
  loc_146EC16:   Me.Recordset15.MoveFirst
  loc_146EC53:   If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_146EC96:     Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_146ECBC:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_146ECD4:       var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_146ECF1:       var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_146ECF9:       var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + ).TEXT)
  loc_146ECFE:       var_88 = CStr().TEXT)
  loc_146ED0D:       Me.Recordset15.MoveFirst
  loc_146ED52:       Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_146ED67:       var_B0 = CVar(var_88) 'String
  loc_146ED7F:       ).TEXT = arg_10
  loc_146ED89:     Else
  loc_146EE00:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_146EE18:         var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_146EE35:         var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_146EE3D:         var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_146EE42:         var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_146EE51:         Me.Recordset15.MoveFirst
  loc_146EE96:         Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_146EEAB:         var_B0 = CVar(var_88) 'String
  loc_146EEC3:         ).TEXT = arg_10
  loc_146EECA:       End If
  loc_146EECA:     End If
  loc_146EECD:   Else
  loc_146EED5:     If (var_88 <> vbNullString) Then
  loc_146EF08:       Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_146EF18:     End If
  loc_146EF2C:     If (Me.AbsolutePosition = -3) Then
  loc_146EF44:       var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_146EF61:       var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_146EF69:       var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_146EF6E:       var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_146EF7D:       Me.Recordset15.MoveFirst
  loc_146EF8A:       If (var_88 <> vbNullString) Then
  loc_146EFBD:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_146EFCD:       End If
  loc_146EFD0:       var_B0 = CVar(var_88) 'String
  loc_146EFE8:       ).TEXT = arg_10
  loc_146EFF2:     Else
  loc_146F069:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_146F081:         var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_146F09E:         var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_146F0A6:         var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_146F0AB:         var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_146F0BA:         Me.Recordset15.MoveFirst
  loc_146F0C7:         If (var_88 <> vbNullString) Then
  loc_146F0FA:           Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_146F10A:         End If
  loc_146F10D:         var_B0 = CVar(var_88) 'String
  loc_146F125:         ).TEXT = arg_10
  loc_146F12C:       End If
  loc_146F12C:     End If
  loc_146F12C:   End If
  loc_146F146:   var_F0 = Len().TEXT)
  loc_146F15F:   ).SelStart = arg_10
  loc_146F16E:   arg_18 = 0
  loc_146F171: End If
  loc_146F185: var_E0 = Len())
  loc_146F19E: ).SelStart = arg_10
  loc_146F1A9: Exit Sub
End Sub

Public Sub Proc_6_90_F7F6F0(arg_C, arg_10) 'F7F6F0
  'Data Table: 4B6790
  Dim var_90 As Long
  loc_F7F59F: var_8C = arg_C
  loc_F7F5A5: var_90 = arg_10
  loc_F7F5B1: If (var_90 = 1) Then
  loc_F7F5D2:   var_88 = CStr(Mid(var_8C, 1, 1))
  loc_F7F5DF: Else
  loc_F7F5E8:   If (var_90 = 2) Then
  loc_F7F609:     var_88 = CStr(Mid(var_8C, 2, 1))
  loc_F7F616:   Else
  loc_F7F61F:     If (var_90 = 3) Then
  loc_F7F640:       var_88 = CStr(Mid(var_8C, 3, 1))
  loc_F7F64D:     Else
  loc_F7F656:       If (var_90 = 4) Then
  loc_F7F677:         var_88 = CStr(Mid(var_8C, 4, 5))
  loc_F7F684:       Else
  loc_F7F68D:         If (var_90 = 5) Then
  loc_F7F6AE:           var_88 = CStr(Mid(var_8C, 9, 5))
  loc_F7F6BB:         Else
  loc_F7F6C4:           If (var_90 = 6) Then
  loc_F7F6E5:             var_88 = CStr(Mid(var_8C, &HE, 8))
  loc_F7F6EF:           End If
  loc_F7F6EF:         End If
  loc_F7F6EF:       End If
  loc_F7F6EF:     End If
  loc_F7F6EF:   End If
  loc_F7F6EF: End If
  loc_F7F6EF: Exit Sub
End Sub

Public Sub Proc_6_91_EF2D40(arg_C) 'EF2D40
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_EF2C7D: If IsNull(arg_C) Then
  loc_EF2C82:   var_86 = 0
  loc_EF2C88: Else
  loc_EF2CA8:   var_C8 = Format(arg_C, "dd/MMM/yyyy")
  loc_EF2CC5:   var_F8 = "dd/MMM/yyyy"
  loc_EF2CD6:   var_108 = Format(arg_C, var_F8)
  loc_EF2CF4:   If (1 Or (CDate(var_108) > MemVar_1F920FC)) Then
  loc_EF2CF9:     var_86 = 0
  loc_EF2CFF:   Else
  loc_EF2D01:     var_86 = &HFF
  loc_EF2D04:   End If
  loc_EF2D04: End If
  loc_EF2D0A: If (var_86 = 0) Then
  loc_EF2D2E:   MsgBox("Not a Valid Date", &H40, "Validation", var_F8, var_108)
  loc_EF2D3E: End If
  loc_EF2D3E: End Sub
End Sub

Public Sub Proc_6_92_EF7064(arg_C) 'EF7064
  'Data Table: 4B6790
  Dim unk_4B68EF As Connection15
  Dim Me As TextBox
  Dim var_A4 As Variant
  loc_EF6F98: On Error Goto loc_EF7006
  loc_EF6FB1: unk_4B68EF.Execute arg_C, var_A4, -1
  loc_EF6FBC: CVarUnk
  loc_EF6FC1: VerifyVarObj
  loc_EF6FC6: LateIdStAd
  loc_EF7000: Me.Tag = arg_C
  loc_EF7005: Exit Sub
  loc_EF7006: ' Referenced from: EF6F98
  loc_EF700E: Set var_A8 = Err()
  loc_EF7014: Call 0.Method_arg_1C (var_CC, txt.DispID_3, arg_18, txt.DispID_1)
  loc_EF7025: If (var_CC > 0) Then
  loc_EF7030:   Set var_A8 = Err()
  loc_EF7036:   Call 0.Method_arg_2C (var_D0, arg_14, Me)
  loc_EF704F:   MsgBox(CVar(var_D0), &H40, var_B8, var_E0, var_100)
  loc_EF7062: End If
  loc_EF7062: Exit Sub
End Sub

Public Sub Proc_6_93_EAC124(arg_C) 'EAC124
  'Data Table: 4B6790
  Dim var_B4 As Variant
  Dim Me As TextBox
  Dim var_A4 As Variant
  loc_EAC0B3: var_B4 = CVar(CStr(txt.DispID_2)) 'String
  loc_EAC0F7: Proc_6_92_EF7064(CStr(Me.Tag), arg_C, CStr(var_B4))
  loc_EAC113: var_A4 = CVar(CStr(var_B4)) 'String
  loc_EAC122: Exit Sub
End Sub

Public Sub Proc_6_94_F04C34
  'Data Table: 4B6790
  Dim var_86 As Integer
  Dim var_B4 As Variant
  loc_F04B56: var_86 = 1
  loc_F04B83: If (Proc_6_95_EF4E30(CDate(Me.TXTS_DATE), "Starting Date") = 0) Then
loc_F04B8B: End Sub
  loc_F04B8C: End If
  loc_F04BB6: If (Proc_6_95_EF4E30(CDate(Me.TXTE_DATE), "Ending Date", Me.TXTE_DATE) = 0) Then
loc_F04BBE: End Sub
  loc_F04BBF: End If
  loc_F04BCC: var_B4 = Me.TXTE_DATE
  loc_F04BE9: var_C4 = DateDiff("d", Me.TXTS_DATE, var_B4, 1, 1)
  loc_F04C02: If (var_C4 < 0) Then
  loc_F04C1E:   MsgBox(" Ending Date Less than Starting Date ", &H10, var_B4, var_C4, var_E4)
  loc_F04C30:   var_86 = 0
  loc_F04C33: End If
  loc_F04C33: End Sub
End Sub

Public Sub Proc_6_95_EF4E30(arg_C, arg_10) 'EF4E30
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_EF4D62: var_86 = &HFF
  loc_EF4D98: If (DateDiff("D", MemVar_1F920F4, arg_C, 1, 1) < 0) Then
  loc_EF4DB3:   MsgBox(CVar(arg_10 & " is Before Financial Year "), &H10, var_D8, var_E8, var_F8)
  loc_EF4DC5:   var_86 = 0
  loc_EF4DCB: Else
  loc_EF4DFE:   If (DateDiff("D", arg_C, MemVar_1F920FC, 1, 1) < 0) Then
  loc_EF4E19:     MsgBox(CVar(arg_10 & " is After Financial Year "), &H10, var_D8, var_E8, var_F8)
  loc_EF4E2B:     var_86 = 0
  loc_EF4E2E:   End If
  loc_EF4E2E: End If
  loc_EF4E2E: End Sub
End Sub

Public Sub Proc_6_96_106B524(arg_C) '106B524
  'Data Table: 4B6790
  loc_106B29A: If (arg_C = &HFF) Then
  loc_106B2CF:   If CBool(InStr(1, Me.TopBar1.Tag, "A", 0) <> 0) Then
  loc_106B2E2:     Me.TopBar1.tAdd = arg_C
  loc_106B2F0:   Else
  loc_106B301:     Me.TopBar1.tAdd = Not(arg_C)
  loc_106B30C:   End If
  loc_106B33E:   If CBool(InStr(1, Me.TopBar1.Tag, "E", 0) <> 0) Then
  loc_106B351:     Me.TopBar1.tEdit = arg_C
  loc_106B35F:   Else
  loc_106B370:     Me.TopBar1.tEdit = Not(arg_C)
  loc_106B37B:   End If
  loc_106B3AD:   If CBool(InStr(1, Me.TopBar1.Tag, "D", 0) <> 0) Then
  loc_106B3C0:     Me.TopBar1.tDel = arg_C
  loc_106B3CE:   Else
  loc_106B3DF:     Me.TopBar1.tDel = Not(arg_C)
  loc_106B3EA:   End If
  loc_106B41C:   If CBool(InStr(1, Me.TopBar1.Tag, "P", 0) <> 0) Then
  loc_106B42F:     Me.TopBar1.tPrn = arg_C
  loc_106B43D:   Else
  loc_106B44E:     Me.TopBar1.tPrn = Not(arg_C)
  loc_106B459:   End If
  loc_106B45C: Else
  loc_106B46C:   Me.TopBar1.tAdd = arg_C
  loc_106B487:   Me.TopBar1.tEdit = arg_C
  loc_106B4A2:   Me.TopBar1.tDel = arg_C
  loc_106B4BD:   Me.TopBar1.tPrn = arg_C
  loc_106B4C8: End If
  loc_106B4D8: Me.TopBar1.tFind = arg_C
  loc_106B4F4: Me.TopBar1.tSave = Not(arg_C)
  loc_106B510: Me.TopBar1.tCancel = Not(arg_C)
  loc_106B520: End Sub
End Sub

Public Sub Proc_6_97_FD2174
  'Data Table: 4B6790
  Dim var_88 As Recordset
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_90 As TableDef
  Dim var_94 As Field
  loc_FD1FD8: Me.Database.OpenRecordset "select * from " & arg_10, var_A8, var_B8, var_C8
  loc_FD1FE0: Set var_88 = var_CC
  loc_FD200A: For var_D2 = 0 To (var_88.Fields.Count - 1): var_8A = var_D2 'Integer
  loc_FD204C:   var_B8 = arg_14
  loc_FD206E:   If (Ucase(CVar(var_88.Fields.Item(CVar(var_8A)).Name)) = Ucase(var_B8)) Then
  loc_FD2071:     GoTo loc_FD216A
  loc_FD2074:   End If
  loc_FD2077: Next var_D2 'Integer
  loc_FD2081: Set var_88 = Nothing
  loc_FD2094: var_CC = Me.Database.TableDefs
  loc_FD20A4: Set var_90 = var_CC.Item(CVar(arg_10))
  loc_FD20BF: var_90.CreateField CVar(arg_14), var_B8, var_C8
  loc_FD20C7: Set var_94 = var_CC
  loc_FD20D4: var_94.Type = CInt(arg_18)
  loc_FD20E7: If (arg_18 = 10) Then
  loc_FD20F1:   var_94.Size = CLng(arg_1C)
  loc_FD2104:   If Not(IsMissing(arg_24)) Then
  loc_FD210D:     var_94.AllowZeroLength = arg_24
  loc_FD2112:   End If
  loc_FD2112: End If
  loc_FD211B: If Not(IsMissing(arg_28)) Then
  loc_FD2128:   var_94.DefaultValue = arg_28
  loc_FD212D: End If
  loc_FD213B: If Not(IsMissing(arg_20)) Then
  loc_FD2144:   var_94.Required = arg_20
  loc_FD2149: End If
  loc_FD215E: var_90.Fields.Append var_94
  loc_FD216A: ' Referenced from: FD2071
  loc_FD216F: Set var_88 = Nothing
  loc_FD2172: Exit Sub
  loc_FD2173: var_CC = 
End Sub

Public Sub Proc_6_98_11AC4E4(arg_C, arg_10, arg_14) '11AC4E4
  'Data Table: 4B6790
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_100 As Variant
  loc_11AC0D7: var_88 = vbNullString
  loc_11AC0EE: arg_C = CStr(Trim(arg_C))
  loc_11AC0FA: var_8A = CInt(Len(arg_C))
  loc_11AC100: var_C0 = arg_10
  loc_11AC10B: If (var_C0 = "A") Then
  loc_11AC12A:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_11AC12E:   var_9C = arg_C 'Variant
  loc_11AC184:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_11AC198:   var_110 = (0 + Chr(&H1B))
  loc_11AC1A1:   var_120 = (var_110 + "G")
  loc_11AC1B5:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_11AC1BF:   var_150 = (var_140 + CVar(arg_C))
  loc_11AC1D3:   var_170 = (var_150 + Chr(&H1B))
  loc_11AC1DC:   var_190 = (var_170 + "H")
  loc_11AC1E1:   var_88 = CStr(var_190)
  loc_11AC202: Else
  loc_11AC20A:   If (var_C0 = "B") Then
  loc_11AC21B:     arg_14 = CInt(Int((CDbl((arg_14 * 5)) / CDbl(6))))
  loc_11AC22C:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_11AC230:     var_9C = "G" 'Variant
  loc_11AC286:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_11AC29A:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_11AC2A4:     var_120 = (var_110 + CVar(arg_C))
  loc_11AC2B8:     var_140 = (var_120 + Chr(&H12))
  loc_11AC2BD:     var_88 = CStr(var_140)
  loc_11AC2D6:   Else
  loc_11AC2DE:     If (var_C0 = "C") Then
  loc_11AC2EF:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_11AC2F3:       var_9C = CVar(arg_C) 'Variant
  loc_11AC349:       var_F0 = (Chr(&H12) + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_11AC353:       var_100 = (0 + CVar(arg_C))
  loc_11AC358:       var_88 = CStr(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))
  loc_11AC369:     Else
  loc_11AC371:       If (var_C0 = "D") Then
  loc_11AC37F:         arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_11AC390:         var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_11AC394:         var_9C = CVar(arg_C) 'Variant
  loc_11AC3EA:         var_F0 = (Chr(&HE) + Chr(&HF))
  loc_11AC3FE:         var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_11AC408:         var_120 = (var_110 + CVar(arg_C))
  loc_11AC40D:         var_88 = CStr(var_120)
  loc_11AC422:       Else
  loc_11AC42A:         If (var_C0 = "E") Then
  loc_11AC43B:           var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_11AC43F:           var_9C = CVar(arg_C) 'Variant
  loc_11AC495:           var_F0 = (Chr(&H12) + Chr(&HF))
  loc_11AC4A9:           var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_11AC4B3:           var_120 = (var_110 + CVar(arg_C))
  loc_11AC4C7:           var_140 = (var_120 + Chr(&H12))
  loc_11AC4CC:           var_88 = CStr(var_140)
  loc_11AC4E2:         End If
  loc_11AC4E2:       End If
  loc_11AC4E2:     End If
  loc_11AC4E2:   End If
  loc_11AC4E2: End If
  loc_11AC4E2: Exit Sub
End Sub

Public Sub Proc_6_99_1483714(arg_C, arg_10, arg_14, arg_18, arg_1C) '1483714
  'Data Table: 4B6790
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_138 As Variant
  Dim var_A8 As String
  Dim var_118 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_2D0 As Variant
  Dim var_2F0 As Variant
  Dim var_310 As Variant
  Dim var_350 As Variant
  Dim var_198 As String
  Dim var_190 As Variant
  loc_1482B28: On Error Goto loc_14836D8
  loc_1482B31: If (arg_10 = 1) Then
  loc_1482B3D:   var_F8 = arg_C.PaperSize 'Variant
  loc_1482B4C:   If (var_F8 = 268) Then
  loc_1482B70:     MsgBox("Please Set 132 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_138, var_158)
  loc_1482B83:   Else
  loc_1482B8E:     If (var_F8 = 263) Then
  loc_1482BB2:       MsgBox("Please Set 80 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_138, var_158)
  loc_1482BC5:     Else
  loc_1482BD0:       If (var_F8 = 9) Then
  loc_1482BF4:         MsgBox("Please Set A4 Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_138, var_158)
  loc_1482C07:       Else
  loc_1482C0A:         VarLateMemLdRfVar
  loc_1482C13:         var_118 = Str(arg_C)
  loc_1482C23:         var_158 = "Paper Setting"
  loc_1482C36:         var_138 = ("Paper Size No. is " + var_118)
  loc_1482C3A:         MsgBox(var_138, &H40, var_158, var_168, var_188)
  loc_1482C4E:       End If
  loc_1482C4E:     End If
  loc_1482C4E:   End If
  loc_1482C52:   var_BE = CByte(0) 'Byte
  loc_1482C5E:   If (MemVar_1F923B8 = "Y") Then
  loc_1482C6D:     Call 0.Method_Proc_6_99_14837144 ("C:\REPTMP\REPPRINT.PIF")
  loc_1482C78:     If (var_18A = 0) Then
  loc_1482C94:       MsgBox("PIF File Not Exist", 0, var_118, var_138, var_158)
  loc_1482CA4:       Exit Sub
  loc_1482CA5:     End If
  loc_1482CA8:   Else
  loc_1482CB4:     Call 0.Method_Proc_6_99_14837144 ("C:\REPTMP\REPPRINT.BAT", var_18A)
  loc_1482CBF:     If (var_18A = 0) Then
  loc_1482CDB:       MsgBox("BAT File Not Exist", 0, var_118, var_138, var_158)
  loc_1482CEB:       Exit Sub
  loc_1482CEC:     End If
  loc_1482CEC:   End If
  loc_1482CF8:   Call 0.Method_Proc_6_99_14837148 ("C:\REPTMP", var_18A)
  loc_1482D03:   If (var_18A = 0) Then
  loc_1482D12:     Call 0.Method_arg_74 ("C:\REPTMP", var_190)
  loc_1482D1A:     ' Referenced from: 1482EC1
  loc_1482D1A:   End If
  loc_1482D1C:   If &HFF Then
  loc_1482D28:     If (CInt(var_BE) >= &H64) Then
  loc_1482D36:       For var_194 = CByte(1) To CByte(&H64): var_BE = var_194 'Byte
  loc_1482D5F:         var_138 = ("C:\REPTMP\REP" + Trim(Str(var_BE)))
  loc_1482D94:         var_A8 = var_198
  loc_1482D9F:         var_118 = (Trim(CStr(var_138)) + ".TXT")
  loc_1482DAD:         Call 0.Method_Proc_6_99_14837144 (CStr(Trim(Str(var_BE))), var_18A, var_A8)
  loc_1482DC3:         If var_18A Then
  loc_1482DE5:           var_A8 = var_198
  loc_1482DF0:           var_118 = (Trim(var_A8) + ".TXT")
  loc_1482DFE:           Call 0.Method_arg_5C (CStr(Trim(Str(var_BE))), 0)
  loc_1482E11:         End If
  loc_1482E14:       Next var_194 'Byte
  loc_1482E1E:       var_BE = CByte(1) 'Byte
  loc_1482E22:     End If
  loc_1482E45:     var_138 = ("C:\REPTMP\REP" + Trim(Str(var_BE)))
  loc_1482E7A:     var_A8 = var_198
  loc_1482E85:     var_118 = (Trim(CStr(var_138)) + ".TXT")
  loc_1482E93:     Call 0.Method_Proc_6_99_14837144 (CStr(Trim(Str(var_BE))), var_18A)
  loc_1482EA9:     If var_18A Then
  loc_1482EB7:       var_BE = CByte((CInt(var_BE) + 1)) 'Byte
  loc_1482EBE:     Else
  loc_1482EC1:     Else
  loc_1482EC1:       GoTo loc_1482D1A
  loc_1482EC4:     End If
  loc_1482EC4:   End If
  loc_1482EE1:   var_A8 = var_198
  loc_1482EEC:   var_118 = (Trim(var_A8) + ".TXT")
  loc_1482EF4:   VarLateMemLdRfVar
  loc_1482EFA:   arg_C.DiskFileName = Trim(Str(var_BE))
  loc_1482F10:   If (arg_18 = &HFF) Then
  loc_1482F1C:     VarLateMemLdRfVar
  loc_1482F22:     arg_C.FormatType = 10
  loc_1482F2C:   Else
  loc_1482F35:     VarLateMemLdRfVar
  loc_1482F3B:     arg_C.FormatType = 8
  loc_1482F42:   End If
  loc_1482F4B:   VarLateMemLdRfVar
  loc_1482F51:   arg_C.NumberOfLinesPerPage = 60
  loc_1482F61:   VarLateMemLdRfVar
  loc_1482F67:   arg_C.DestinationType = 1
  loc_1482F76:   VarLateMemLdRfVar
  loc_1482F8A:   For var_1A0 = 1 To CInt(arg_C.Count): var_C6 = var_1A0 'Integer
  loc_1482F9A:     VarLateMemCallLdRfVar
  loc_1482FA2:     VarLateMemLdRfVar
  loc_1482FB3:     var_1B0 = Ucase(arg_C) 'Variant
  loc_1482FE0:     If (var_1B0 = Ucase("comp_name")) Then
  loc_1482FFD:       var_118 = (Chr(&H1B) + "W1")
  loc_1483011:       var_158 = (Ucase("comp_name") + Chr(&H1B))
  loc_148301A:       var_168 = (var_158 + "W1")
  loc_148302E:       var_1C0 = (var_168 + Chr(&H1B))
  loc_1483037:       var_1D0 = (var_1C0 + "E")
  loc_148304B:       var_1F0 = (var_1D0 + Chr(&H1B))
  loc_1483054:       var_200 = (var_1F0 + "G")
  loc_148305E:       var_210 = (var_200 + CVar(MemVar_1F92130))
  loc_1483072:       var_230 = (var_210 + Chr(&H1B))
  loc_148307B:       var_250 = (var_230 + "H")
  loc_148308F:       var_270 = (var_250 + Chr(&H1B))
  loc_1483098:       var_290 = (var_270 + "F")
  loc_14830AC:       var_2B0 = (var_290 + Chr(&H1B))
  loc_14830B5:       var_2D0 = (var_2B0 + "W0")
  loc_14830C9:       var_2F0 = (var_2D0 + Chr(&H1B))
  loc_14830D2:       var_310 = (var_2F0 + "W0")
  loc_14830DF:       var_350 = "'" & var_310 & "'" 
  loc_14830EE:       VarLateMemCallLdRfVar
  loc_14830F6:       arg_C.TEXT = var_C6
  loc_1483136:     Else
  loc_1483158:       If (var_1B0 = Ucase("comp_add1")) Then
  loc_1483169:         var_E8 = CVar("'" & MemVar_1F92134 & "'") 'String
  loc_1483177:         VarLateMemCallLdRfVar
  loc_148317F:         arg_C.TEXT = var_C6
  loc_1483190:       Else
  loc_14831B2:         If (var_1B0 = Ucase("comp_pin")) Then
  loc_14831C3:           var_E8 = CVar("'" & MemVar_1F9213C & "'") 'String
  loc_14831D1:           VarLateMemCallLdRfVar
  loc_14831D9:           arg_C.TEXT = var_C6
  loc_14831EA:         Else
  loc_148320C:           If (var_1B0 = Ucase("comp_GSTIN")) Then
  loc_148321D:             var_E8 = CVar("'" & MemVar_1F92154 & "'") 'String
  loc_148322B:             VarLateMemCallLdRfVar
  loc_1483233:             arg_C.TEXT = var_C6
  loc_1483244:           Else
  loc_1483266:             If (var_1B0 = Ucase("comp_FinYear")) Then
  loc_1483270:               var_198 = "'" & MemVar_1F92168
  loc_1483277:               var_E8 = CVar(var_198 & "'") 'String
  loc_1483285:               VarLateMemCallLdRfVar
  loc_148328D:               arg_C.TEXT = var_C6
  loc_148329B:             End If
  loc_148329B:           End If
  loc_148329B:         End If
  loc_148329B:       End If
  loc_148329B:     End If
  loc_148329E:   Next var_1A0 'Integer
  loc_14832A3:   var_D8 = False
  loc_14832B0:   Call arg_C.Export
  loc_14832ED:   var_118 = (Trim(var_198) + ".TXT")
  loc_14832FB:   Call 0.Method_arg_7C (CStr(Ucase("comp_FinYear")), 8, 0)
  loc_1483306:   Set var_C4 = var_190
  loc_148332A:   var_198 = CStr(Chr(&HC))
  loc_1483331:   Call 0.Method_arg_38 (var_198, 0)
  loc_148333F:   Call 0.Method_Proc_6_99_1483714C (var_190)
  loc_148334C:   If (MemVar_1F923B8 = "Y") Then
  loc_148336C:     var_A8 = var_198
  loc_148337C:     var_118 = ("C:\REPTMP\REPPRINT.PIF " + Trim(var_198))
  loc_1483385:     var_138 = (Ucase("comp_FinYear") + ".TXT")
  loc_1483392:     var_B8 = CVar(Shell(Chr(&H1B), 0)) 'Variant
  loc_14833A5:   Else
  loc_14833C2:     var_A8 = var_198
  loc_14833D2:     var_118 = ("C:\REPTMP\REPPRINT.BAT " + Trim(var_A8))
  loc_14833DB:     var_138 = (Ucase("comp_FinYear") + ".TXT")
  loc_14833E8:     var_B8 = CVar(Shell(Chr(&H1B), 0)) 'Variant
  loc_14833F8:   End If
  loc_14833FB: Else
  loc_1483401:   If (arg_10 = 2) Then
  loc_148340C:     Call arg_C.PrintOut
  loc_1483415:   Else
  loc_1483422:     REPVIEW.ParentFormRef = arg_1C
  loc_1483433:     REPVIEW.RepTitle = arg_14
  loc_148344A:     Proc_6_102_F012C4("* " & arg_14 & " * ")
  loc_148346D:     Call 0.Method_arg_54 ("* " & arg_14 & " *")
  loc_1483481:     VarLateMemLdRfVar
  loc_1483495:     For var_394 = 1 To CInt(arg_C.Count):     var_C6 = var_394 'Integer
  loc_14834A5:       VarLateMemCallLdRfVar
  loc_14834AD:       VarLateMemLdRfVar
  loc_14834B6:       var_138 = Ucase(arg_C)
  loc_14834BE:       var_3A4 = var_138 'Variant
  loc_14834EB:       If (var_3A4 = Ucase("comp_name")) Then
  loc_14834FC:         var_E8 = CVar("'" & MemVar_1F92130 & "'") 'String
  loc_148350A:         VarLateMemCallLdRfVar
  loc_1483512:         arg_C.TEXT = var_C6
  loc_1483523:       Else
  loc_1483545:         If (var_3A4 = Ucase("comp_add1")) Then
  loc_1483556:           var_E8 = CVar("'" & MemVar_1F92134 & "'") 'String
  loc_1483564:           VarLateMemCallLdRfVar
  loc_148356C:           arg_C.TEXT = var_C6
  loc_148357D:         Else
  loc_148359F:           If (var_3A4 = Ucase("comp_pin")) Then
  loc_14835B0:             var_E8 = CVar("'" & MemVar_1F9213C & "'") 'String
  loc_14835BE:             VarLateMemCallLdRfVar
  loc_14835C6:             arg_C.TEXT = var_C6
  loc_14835D7:           Else
  loc_14835F9:             If (var_3A4 = Ucase("comp_GSTIN")) Then
  loc_148360A:               var_E8 = CVar("'" & MemVar_1F92154 & "'") 'String
  loc_1483618:               VarLateMemCallLdRfVar
  loc_1483620:               arg_C.TEXT = var_C6
  loc_1483631:             Else
  loc_1483642:               var_118 = Ucase("comp_FinYear")
  loc_1483653:               If (var_3A4 = var_118) Then
  loc_148365D:                 var_198 = "'" & MemVar_1F92168
  loc_1483664:                 var_E8 = CVar(var_198 & "'") 'String
  loc_1483672:                 VarLateMemCallLdRfVar
  loc_148367A:                 arg_C.TEXT = var_C6
  loc_1483688:               End If
  loc_1483688:             End If
  loc_1483688:           End If
  loc_1483688:         End If
  loc_1483688:       End If
  loc_148368B:     Next var_394 'Integer
  loc_14836A2:     REPVIEW.Rep_Set = arg_C
  loc_14836B6:     Call 0.Method_arg_2AC (0)
  loc_14836BB:   End If
  loc_14836BB: End If
  loc_14836C0: Set var_88 = Nothing
  loc_14836C5: IStDargAd
  loc_14836CB: var_B8 = Nothing 'Address
  loc_14836D4: Set var_BC = Nothing
  loc_14836D7: Exit Sub
  loc_14836D8: ' Referenced from: 1482B28
  loc_14836E0: Set var_190 = Err()
  loc_14836E6: Call 0.Method_arg_2C (var_198)
  loc_14836FF: MsgBox(CVar(var_198), &H10, var_118, var_138, var_158)
  loc_1483712: Exit Sub
End Sub

Public Sub Proc_6_100_E9FAC4(arg_C) 'E9FAC4
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_E9FA56: If (arg_C = &HFF) Then
  loc_E9FAA3:   var_86 = CBool(IIf((MsgBox("** Entry Not Saved, Do You Want to Save it **", &H124, "Save Validation", var_E8, var_108) = 6), True, False))
  loc_E9FABC: Else
  loc_E9FABE:   var_86 = 0
  loc_E9FAC1: End If
  loc_E9FAC1: End Sub
End Sub

Public Sub Proc_6_101_DFED4C
  'Data Table: 4B6790
  loc_DFED49: End Sub
End Sub

Public Sub Proc_6_102_F012C4(arg_C) 'F012C4
  'Data Table: 4B6790
  Dim var_BC As Variant
  Dim var_8C As TextBox
  loc_F01212: var_BC = (Me.Global.Forms.Count - 1)
  loc_F0121E: For var_C0 = CByte(0) To CByte(var_BC): var_86 = var_C0 'Byte
  loc_F01234:   var_8C = Me.Global.Forms
  loc_F01246:   VarLateMemLdRfVar
  loc_F0127A:   If (Ucase()) = Ucase(arg_C)) Then
  loc_F012AB:     Me.Me.var_8C.Forms.Unload )
  loc_F012BA:   End If
  loc_F012BD: Next var_C0 'Byte
  loc_F012C3: Exit Sub
End Sub

Public Sub Proc_6_103_F58070
  'Data Table: 4B6790
  Dim var_98 As TextBox
  Dim var_CC As Variant
  loc_F57F54: On Error Resume Next
  loc_F57F73: For var_94 = 0 To CLng((Form.Count - 1)): var_88 = var_94 'Long
  loc_F57F9A:   CheckTypeVar
  loc_F57FBD:   CheckTypeVar
  loc_F57FE1:   CheckTypeVar
  loc_F57FF8:   If (var_88 Or )) Then
  loc_F58000:     var_CC = CVar(arg_10) 'String
  loc_F58011:     var_98 = Me.Me.Me.Form.Controls.Controls.Controls.Controls
  loc_F58023:     ).BackColor = var_88
  loc_F58032:     var_CC = CVar(arg_14) 'String
  loc_F58043:     var_98 = Form.Controls
  loc_F58055:     ).ForeColor = var_88
  loc_F5805F:   End If
  loc_F58066: Next var_94 'Long
  loc_F5806D: Exit Sub
End Sub

Public Sub Proc_6_104_ED5D18
  'Data Table: 4B6790
  Dim var_CC As Integer
  Dim unk_4B67AE As Connection15
  Dim var_B8 As Recordset15
  Dim var_BC As Fields15
  Dim var_D0 As Field20
  Dim var_120 As String
  loc_ED5C86: var_CC = 0
  loc_ED5CA5: unk_4B67AE.Execute "select getdate()", var_B4, -1
  loc_ED5CAD: var_B8 = var_B8.Fields
  loc_ED5CB5: var_CC = var_BC.Item(var_BC)
  loc_ED5CBD: var_D0 = var_D0.Value
  loc_ED5CC2: var_120 = "'"
  loc_ED5CF7: var_94 = 1 & Format(var_E0, "dd/MMM/yyyy") & "'" 'Variant
  loc_ED5D11: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_105_10FAA40
  'Data Table: 4B6790
  Dim var_92 As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Variant
  Dim arg_5800 As Variant
  loc_10FA728: If (CDbl(Val(CStr(Me.Tag))) <> CDbl(0)) Then
  loc_10FA73D:   var_92 = CInt(Val(CStr(Me.Tag)))
  loc_10FA746:   var_B8 = 0
  loc_10FA768:   var_B8 = 0
  loc_10FA78A:   var_B8 = 0
  loc_10FA7BE:   var_D8 = Me.Columns.width
  loc_10FA7D6:   Me.Columns.width = 0
  loc_10FA7F5:   var_D8 = Me.Columns.CAPTION
  loc_10FA80D:   Me.Columns.CAPTION = 0
  loc_10FA82C:   var_D8 = Me.Columns.DataField
  loc_10FA844:   Me.Columns.DataField = 0
  loc_10FA854:   var_C8 = CVar(CInt(Me.Columns.width)) 'Integer
  loc_10FA86A:   Me.Columns.width = var_92
  loc_10FA874:   var_C8 = CVar(CStr(Me.Columns.CAPTION)) 'String
  loc_10FA88A:   Me.Columns.CAPTION = var_92
  loc_10FA894:   var_C8 = CVar(CStr(Me.Columns.DataField)) 'String
  loc_10FA8AA:   Me.Columns.DataField = var_92
  loc_10FA8B4:   Call Me.ReBind
  loc_10FA8BA: End If
  loc_10FA8BA: var_B8 = 0
  loc_10FA8DC: var_B8 = 0
  loc_10FA8FE: var_B8 = 0
  loc_10FA932: var_D8 = Me.Columns.width
  loc_10FA94A: Me.Columns.width = 0
  loc_10FA969: var_D8 = Me.Columns.CAPTION
  loc_10FA981: Me.Columns.CAPTION = 0
  loc_10FA9B8: Me.Columns.DataField = 0
  loc_10FA9C8: var_C8 = CVar(CInt(Me.Columns.width)) 'Integer
  loc_10FA9DE: Me.Columns.width = arg_10
  loc_10FA9E8: var_C8 = CVar(CStr(Me.Columns.CAPTION)) 'String
  loc_10FA9FE: Me.Columns.CAPTION = arg_10
  loc_10FAA1E: Me.Columns.DataField = arg_10
  loc_10FAA28: Call Me.ReBind
  loc_10FAA38: Me.Tag = CVar(arg_10)
  loc_10FAA3C: Exit Sub
  loc_10FAA3D: arg_5800 = InStr(Me.Columns.DataField, CVar(CStr(Me.Columns.DataField)), CVar(CStr(Me.Columns.DataField)), CVar(CStr(Me.Columns.DataField)))
End Sub

Public Sub Proc_6_106_10BB81C(arg_C, arg_10) '10BB81C
  'Data Table: 4B6790
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_8C As Integer
  Dim var_90 As TextBox
  Dim var_94 As TextBox
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_88 As Integer
  loc_10BB552: var_86 = 0
  loc_10BB5C0: If ((((TypeOf Form.ActiveControl Is arg_1B7 Or TypeOf Form.ActiveControl Is arg_28) Or TypeOf Form.ActiveControl Is arg_1B1) Or TypeOf Form.ActiveControl Is arg_1B2) Or TypeOf Form.ActiveControl Is arg_1B8) Then
  loc_10BB5C6:   var_A2 = arg_10
  loc_10BB5D3:   If Not (var_A2 = CInt(&HD)) Then
  loc_10BB5E0:     If (var_A2 = CInt(&H28)) Then
  loc_10BB5E3:     End If
  loc_10BB5FE:     For var_A8 = 0 To (Form.Count - 1): var_8A = var_A8 'Integer
  loc_10BB623:       CheckTypeVar
  loc_10BB646:       CheckTypeVar
  loc_10BB66A:       CheckTypeVar
  loc_10BB68E:       CheckTypeVar
  loc_10BB6B2:       CheckTypeVar
  loc_10BB6D1:       If (var_8A Or )) Then
  loc_10BB6E1:         var_90 = Me.Me.Me.Me.Me.Form.Controls.Controls.Controls.Controls.Controls.Controls
  loc_10BB6F3:         var_E8 = ).Enabled
  loc_10BB6F9:         var_D8 = True
  loc_10BB70E:         var_94 = Form.Controls
  loc_10BB746:         If CBool(var_8A And ().Visible = True)) Then
  loc_10BB756:           var_90 = Form.Controls
  loc_10BB781:           If ().TabIndex > CVar(0)) Then
  loc_10BB791:             var_90 = Form.Controls
  loc_10BB7AA:             var_8C = CInt().TabIndex)
  loc_10BB7B7:           End If
  loc_10BB7B7:         End If
  loc_10BB7B7:       End If
  loc_10BB7BA:     Next var_A8 'Integer
  loc_10BB7E1:     If (Form.ActiveControl.TabIndex = CVar(var_8C)) Then
  loc_10BB7E9:       Result &HFF End Sub 'Integer
  loc_10BB7EA:     End If
  loc_10BB7EA:   End If
  loc_10BB811:   var_88 = Proc_6_107_10FD77C(arg_C, CInt(Form.ActiveControl.TabIndex))
  loc_10BB81A: End If
  loc_10BB81A: Result var_88 End Sub 'Integer
End Sub

Public Sub Proc_6_107_10FD77C
  'Data Table: 4B6790
  Dim var_88 As Integer
  Dim var_86 As Integer
  Dim var_8C As Integer
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_A0 As Boolean
  Dim var_F8 As TextBox
  Dim var_FC As TextBox
  Dim var_100 As TextBox
  Dim var_B0 As Variant
  Dim var_17C As Variant
  loc_10FD472: var_88 = 0
  loc_10FD478: var_86 = arg_10
  loc_10FD47B: ' Referenced from: 10FD776
  loc_10FD47D: If &HFF Then
  loc_10FD483:   var_8C = arg_14
  loc_10FD490:   If Not (var_8C = CInt(&HD)) Then
  loc_10FD49D:     If (var_8C = CInt(&H28)) Then
  loc_10FD4A0:     End If
  loc_10FD4B1:     var_E0 = CVar((var_86 + 1)) 'Integer
  loc_10FD4C3:     var_A0 = (var_86 = (Form.Count - 1))
  loc_10FD4D3:     var_86 = CInt(IIf(var_A0, 0, var_E0))
  loc_10FD4E4:   Else
  loc_10FD4EE:     If (var_8C = CInt(&H26)) Then
  loc_10FD502:       var_E0 = CVar((var_86 - 1)) 'Integer
  loc_10FD50B:       var_C0 = CVar((Form.Count - 1)) 'Integer
  loc_10FD524:       var_86 = CInt(IIf((var_86 = 0), 0, var_E0))
  loc_10FD532:     End If
  loc_10FD532:   End If
  loc_10FD548:   For var_F4 = 0 To (Form.Count - 1): var_8A = var_F4 'Integer
  loc_10FD56D:     CheckTypeVar
  loc_10FD590:     CheckTypeVar
  loc_10FD5B4:     CheckTypeVar
  loc_10FD5D8:     CheckTypeVar
  loc_10FD5FC:     CheckTypeVar
  loc_10FD620:     CheckTypeVar
  loc_10FD643:     If (var_8A Or )) Then
  loc_10FD653:       var_F8 = Me.Me.Me.Me.Me.Me.Form.Controls.Controls.Controls.Controls.Controls.Controls.Controls
  loc_10FD67E:       If ().TabIndex = CVar(var_86)) Then
  loc_10FD68E:         var_F8 = Form.Controls
  loc_10FD6A0:         var_E0 = ).TabStop
  loc_10FD6A6:         var_B0 = True
  loc_10FD6BB:         var_FC = Form.Controls
  loc_10FD6DB:         var_17C = var_8A And ().Enabled = True)
  loc_10FD6EC:         var_100 = Form.Controls
  loc_10FD72A:         If CBool(var_8A And ().Visible = True)) Then
  loc_10FD73A:           var_F8 = Form.Controls
  loc_10FD74E:           Call ).SetFocus
  loc_10FD75C:           var_88 = &HFF
  loc_10FD75F:           Exit For
  loc_10FD762:         End If
  loc_10FD762:       End If
  loc_10FD762:     End If
  loc_10FD765:   Next var_F4 'Integer
  loc_10FD76A:   ' Referenced from: 10FD75F
  loc_10FD770:   If (var_88 = &HFF) Then
  loc_10FD773:     GoTo loc_10FD779
  loc_10FD776:   End If
  loc_10FD776:   GoTo loc_10FD47B
  loc_10FD779:   ' Referenced from: 10FD773
  loc_10FD779: End If
  loc_10FD779: Result  End Sub 'Integer
End Sub

Public Sub Proc_6_108_1010FEC
  'Data Table: 4B6790
  Dim var_E0 As Integer
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_86 As Integer
  Dim var_C8 As Variant
  loc_1010E01: If (arg_1C = 0) Then
  loc_1010E3C:   var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = '" & arg_18 & "'"
  loc_1010E53: Else
  loc_1010E5C:   If (arg_1C = 1) Then
  loc_1010E97:     var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = " & arg_18 & vbNullString
  loc_1010EAE:   Else
  loc_1010EB7:     If (arg_1C = 2) Then
  loc_1010EF2:       var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = #" & arg_18 & "#"
  loc_1010F06:     End If
  loc_1010F06:   End If
  loc_1010F06: End If
  loc_1010F0C: var_E0 = 0
  loc_1010F28: Me.Connection15.Execute var_8C, var_C8, -1
  loc_1010F30: var_CC = var_CC.Fields
  loc_1010F38: var_E0 = var_D0.Item(var_D0)
  loc_1010F40: var_E4 = var_E4.Value
  loc_1010F60: If (var_F4 > 0) Then
  loc_1010F6E:   If (arg_24 = 0) Then
  loc_1010F98:     MsgBox(CVar("Related Record Exist in " & arg_20 & ", Entry Can't Be Deleted"), &H40, "Validation Check", var_114, var_124)
loc_1010FAB: End Sub
  loc_1010FAF:   Else
  loc_1010FBA:     var_F4 = "Validation Check"
  loc_1010FCF:     MsgBox(CVar("Related Record Exist in " & arg_20), &H40, var_F4, var_114, var_124)
loc_1010FDF: End Sub
  loc_1010FE0:   End If
  loc_1010FE3: Else
  loc_1010FE5:   var_86 = &HFF
  loc_1010FE8: End If
  loc_1010FE8: End Sub
End Sub

Public Sub Proc_6_109_F51CE4
  'Data Table: 4B6790
  Dim var_B0 As Variant
  Dim var_D4 As Variant
  Dim var_128 As String
  Dim var_E4 As Integer
  Dim var_138 As Integer
  Dim var_8C As ListItem
  Dim arg_5800 As Variant
  loc_F51BD2: Call Me.ListItems.Clear
  loc_F51BE6: For var_B4 = 0 To (arg_1C - 1): var_8E = var_B4 'Integer
  loc_F51BF2:   var_D4 = CVar((var_8E + 1)) 'Integer
  loc_F51C04:   VarIndexLdRfVar
  loc_F51C11:   var_B0 = Me.ListItems
  loc_F51C22:   Set var_8C = var_B0.add
  loc_F51C49:   If CBool(arg_20(var_8E) <> vbNullString) Then
  loc_F51C5C:     var_128 = CStr(arg_20(var_8E))
  loc_F51C65:     var_B0.ListItem.SubItems = 1
  loc_F51C70:   End If
  loc_F51C73: Next var_B4 'Integer
  loc_F51C8D: var_E4 = 0
  loc_F51C97: var_138 = 1
  loc_F51CAC: Set var_8C = Me.FindItem
  loc_F51CBD: If (var_8C Is Nothing) Then
  loc_F51CC0:   Exit Sub
  loc_F51CC4: Else
  loc_F51CCA:   var_8C.EnsureVisible var_14A
  loc_F51CD4:   var_8C.Selected = True
  loc_F51CD9: End If
  loc_F51CDC: Set var_88 = var_8C 
  loc_F51CE0: Exit Sub
  loc_F51CE1: arg_5800 = StrComp(var_E4, var_104, var_138)
End Sub

Public Sub Proc_6_110_F219E8
  'Data Table: 4B6790
  loc_F218E4: If IsNumeric(arg_10) Then
  loc_F218F5:   If (arg_10 = 0) Then
  loc_F218FD:     var_94 = "NA" 'Variant
  loc_F21904:   Else
  loc_F21912:     If (arg_10 = 1) Then
  loc_F2191A:       var_94 = "Issue" 'Variant
  loc_F21921:     Else
  loc_F2192F:       If (arg_10 = 2) Then
  loc_F21937:         var_94 = "Receipt" 'Variant
  loc_F2193E:       Else
  loc_F2194C:         If (arg_10 = 3) Then
  loc_F21954:           var_94 = "Both" 'Variant
  loc_F2195B:         Else
  loc_F21960:           var_94 = "InValid" 'Variant
  loc_F21964:         End If
  loc_F21964:       End If
  loc_F21964:     End If
  loc_F21964:   End If
  loc_F21967: Else
  loc_F21975:   If (arg_10 = "NA") Then
  loc_F2197D:     var_94 = 0 'Variant
  loc_F21984:   Else
  loc_F21992:     If (arg_10 = "Issue") Then
  loc_F2199A:       var_94 = 1 'Variant
  loc_F219A1:     Else
  loc_F219AF:       If (arg_10 = "Receipt") Then
  loc_F219B7:         var_94 = 2 'Variant
  loc_F219BE:       Else
  loc_F219CC:         If (arg_10 = "Both") Then
  loc_F219D4:           var_94 = 3 'Variant
  loc_F219DB:         Else
  loc_F219E0:           var_94 = 4 'Variant
  loc_F219E4:         End If
  loc_F219E4:       End If
  loc_F219E4:     End If
  loc_F219E4:   End If
  loc_F219E4: End If
  loc_F219E4: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_111_ED5964
  'Data Table: 4B6790
  Dim var_A4 As Variant
  loc_ED58CE: VarLateMemLdRfVar
  loc_ED58D4: Me.TopCtrl1.Alignment = 1
  loc_ED590F: var_A4 = (Me.Recordset15.AbsolutePosition = -1)
  loc_ED594A: Me.TopCtrl1.TopText1 = "# " & IIf(1, 0, CVar(Me.Recordset15.AbsolutePosition)) & "/" & CVar(Me.Recordset15.RecordCount)
  loc_ED5961: Exit Sub
End Sub

Public Sub Proc_6_112_1128580
  'Data Table: 4B6790
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim arg_18 As Integer
  loc_1128235: If (CLng(txt.DispID_4) < 1) Then
  loc_1128238:   Exit Sub
  loc_1128239: End If
  loc_112824D: If (Me.RecordCount <= 0) Then
  loc_1128259:   Me.TEXT = vbNullString
  loc_112825D:   Exit Sub
  loc_112825E: End If
  loc_112827E: If (((CLng(arg_18) = &H1B) Or (CLng(arg_18) = &HD)) Or (CLng(arg_18) = &HD)) Then
  loc_1128281:   Exit Sub
  loc_1128282: End If
  loc_112828C: If (CLng(arg_18) = 8) Then
  loc_11282A6:   If (Len(Me.SelText) > 1) Then
  loc_11282BA:     var_E0 = (Len(Me.SelText) - 1)
  loc_11282C2:     Me.SelLength = var_E0
  loc_11282D2:     var_88 = CStr(Me.SelText)
  loc_11282DB:   Else
  loc_11282E4:     Me.TEXT = vbNullString
  loc_11282FB:     Me.Visible = False
  loc_11282FF:     Exit Sub
  loc_1128300:   End If
  loc_1128303: Else
  loc_112831A:   var_E0 = (Me.SelText + Chr(CLng(arg_18)))
  loc_112831F:   var_88 = CStr(var_E0)
  loc_112832B: End If
  loc_112832E: Me.Recordset15.MoveFirst
  loc_112836B: If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_11283AE:   Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11283C3: Else
  loc_11283F3:   Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_1128403: End If
  loc_1128405: arg_18 = 0
  loc_1128431: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_1128442:   var_B0 = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_112847E:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(arg_1C)).Value
  loc_1128498:   Me.SelLength = CVar(Len(var_88))
  loc_11284B6:   var_B0 = CVar((CDbl(CLng(txt.DispID_1D)) + CDbl(Me.Left))) 'Double
  loc_11284BE:   Me.left = CVar(Len(var_88))
  loc_11284E3:   var_B0 = CVar((CDbl(CLng(txt.DispID_1E)) + CDbl(Me.Top))) 'Double
  loc_11284EB:   Me.top = CVar(Len(var_88))
  loc_1128508:   If (Me.Visible = False) Then
  loc_1128512:     Me.Visible = True
  loc_1128516:     var_B0 = 0
  loc_112851F:     Call Me.ZOrder
  loc_1128528:     Call Me.SetFocus
  loc_1128542:     Me.ForeColor = CVar(CLng(txt.DispID_27))
  loc_112855D:     Me.width = CVar(CLng(txt.DispID_1F))
  loc_1128578:     Me.height = CVar(CLng(txt.DispID_20))
  loc_112857F:   End If
  loc_112857F: End If
  loc_112857F: Exit Sub
End Sub

Public Sub Proc_6_113_E6CF7C(arg_C) 'E6CF7C
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_E6CF73: If ((((((((CLng(arg_C) = &H21) Or (CLng(arg_C) = &H22)) Or (CLng(arg_C) = &H24)) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H26)) Or (CLng(arg_C) = &H28)) Or (CLng(arg_C) = &H25)) Or (CLng(arg_C) = &H27)) Then
  loc_E6CF78:   var_86 = &HFF
  loc_E6CF7B: End If
  loc_E6CF7B: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_6_114_11A290C
  'Data Table: 4B6790
  Dim var_C4 As Variant
  Dim var_94 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_11A24F3: If (Proc_6_81_E63494(arg_1C) = &HFF) Then
  loc_11A24F6:   Exit Sub
  loc_11A24F7: End If
  loc_11A2501: If (CLng(arg_1C) = &HD) Then
  loc_11A252D:   If CBool().TEXT <> vbNullString) Then
  loc_11A2538:     var_C4 = Me.SelectedItem.TEXT
  loc_11A2553:     ).TEXT = arg_18
  loc_11A2560:   End If
  loc_11A2568:   Me.Visible = False
  loc_11A256C:   Exit Sub
  loc_11A256D: End If
  loc_11A259F: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11A25B4:   If (Me.Visible = False) Then
  loc_11A25B7:     Exit Sub
  loc_11A25B8:   End If
  loc_11A25BB: Else
  loc_11A25CD:   If (Me.Visible = False) Then
  loc_11A25DA:     Me.left = CVar(arg_24)
  loc_11A25E8:     Me.top = CVar(arg_28)
  loc_11A25F6:     Me.width = CVar(arg_2C)
  loc_11A260E:     If (IsMissing(arg_30) Or (arg_30 = 0)) Then
  loc_11A262C:       Me.height = (Me.ListItems.Count * 270)
  loc_11A263A:     Else
  loc_11A2644:       Me.height = CVar(arg_30)
  loc_11A2648:     End If
  loc_11A2651:     Me.left = 0
  loc_11A265E:     Me.top = 0
  loc_11A266C:     Me.width = CVar(arg_2C)
  loc_11A2684:     If (IsMissing(arg_30) Or (arg_30 = 0)) Then
  loc_11A26A2:       Me.height = (Me.ListItems.Count * 270)
  loc_11A26B0:     Else
  loc_11A26BA:       Me.height = CVar(arg_30)
  loc_11A26BE:     End If
  loc_11A26C1:     var_E4 = CVar(arg_2C) 'Integer
  loc_11A26D6:     Me.ColumnHeaders.width = 1
  loc_11A26E7:     Me.Tag = CVar(arg_18)
  loc_11A26F2:     Me.Visible = True
  loc_11A26F6:     var_94 = 0
  loc_11A26FF:     Call Me.ZOrder
  loc_11A2705:   End If
  loc_11A2705: End If
  loc_11A2716: If (Me.Visible = True) Then
  loc_11A2744:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11A2751:     Me.Tag = CVar(arg_18)
  loc_11A278A:     If CBool((CLng(arg_1C) = &H26) And (Me.SelectedItem.index > 1)) Then
  loc_11A278D:       var_E4 = True
  loc_11A27A4:       var_D4 = (Me.SelectedItem.index - 1)
  loc_11A27B4:       Me.ListItems.Selected = (Me.SelectedItem.index > 1)
  loc_11A27C9:       var_C4 = Me.SelectedItem.TEXT
  loc_11A27E4:       ).TEXT = arg_18
  loc_11A27F4:     Else
  loc_11A2835:       If CBool((CLng(arg_1C) = &H28) And (Me.SelectedItem.index < Me.ListItems.Count)) Then
  loc_11A2838:         var_E4 = True
  loc_11A284F:         var_D4 = (Me.SelectedItem.index + 1)
  loc_11A285F:         Me.ListItems.Selected = Me.SelectedItem.index
  loc_11A2876:         var_C4 = Me.SelectedItem.TEXT
  loc_11A2891:         ).TEXT = arg_18
  loc_11A28A1:       Else
  loc_11A28D6:         If CBool((CLng(arg_1C) = &H28) And (Me.ListItems.Count = 1)) Then
  loc_11A28E1:           var_C4 = Me.SelectedItem.TEXT
  loc_11A28FC:           ).TEXT = arg_18
  loc_11A2909:         End If
  loc_11A2909:       End If
  loc_11A2909:     End If
  loc_11A2909:   End If
  loc_11A2909: End If
  loc_11A2909: Exit Sub
End Sub

Public Sub Proc_6_115_10438B4
  'Data Table: 4B6790
  Dim var_A8 As Variant
  Dim var_94 As String
  Dim var_98 As String
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim var_88 As Recordset15
  Dim var_100 As Fields15
  Dim var_B8 As Variant
  Dim var_FC As Variant
  loc_104367B: var_A8 = arg_10
  loc_1043683: Proc_6_17_EAA2B0(var_B8)
  loc_10436A1: var_94 = CStr((arg_18 - arg_14))
  loc_10436A5: var_98 = "Update SubGroup Set Curr_Bal=Curr_Bal+" & var_94
  loc_10436B2: var_D8 = CVar(var_98 & " Where SubCode=") & var_B8 
  loc_10436BD: Me.Connection15.Execute CStr(var_D8), var_FC, -1
  loc_10436E6: var_EC = "SELECT SubGroup.GroupCode,AcGroup.MainGrCode FROM SubGroup LEFT JOIN AcGroup ON SubGroup.GroupCode=AcGroup.GROUPCODE WHERE SUBGROUP.SUBCODE="
  loc_10436F6: Proc_6_17_EAA2B0(var_B8, arg_10, var_EC, var_D8)
  loc_10436FE: var_C8 = -1 & var_B8 
  loc_1043709: Me.Connection15.Execute CStr(CVar(var_98 & " Where SubCode=")), var_100, var_100
  loc_1043714: Set var_88 = var_100
  loc_104373A: If (var_88.RecordCount > 0) Then
  loc_1043789:   For var_11C = CInt(Len(var_88.Fields.Item("MainGrCode").Value)) To 3 Step &HFD: var_8E = var_11C 'Integer
  loc_1043797:     If (vbNullString = vbNullString) Then
  loc_10437DF:       var_8C = CStr("'" & Left(CVar(var_88.Fields.Item("MainGrCode")), CLng(var_8E)) & "'")
  loc_10437F3:     Else
  loc_1043820:       var_B8 = CVar(var_88.Fields.Item("MainGrCode")) 'Address
  loc_104383D:       var_8C = CStr(CVar(var_8C & ",'") & Left(var_B8, CLng(var_8E)) & "'")
  loc_1043850:     End If
  loc_1043853:   Next var_11C 'Integer
  loc_1043860:   If (var_8C <> vbNullString) Then
  loc_104387C:     var_94 = CStr((arg_18 - arg_14))
  loc_1043880:     var_98 = "Update AcGroup Set CurrentBalance=CurrentBalance +" & CStr(CVar(var_98 & " Where SubCode="))
  loc_104389B:     Me.Connection15.Execute var_98 & " Where MainGrCode In(" & var_8C & ")", var_B8, -1
  loc_10438B3:   End If
  loc_10438B3: End If
  loc_10438B3: Exit Sub
End Sub

Public Sub Proc_6_116_1043610
  'Data Table: 4B6790
  Dim var_A8 As Variant
  Dim var_94 As String
  Dim var_98 As String
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim var_88 As Recordset15
  Dim var_100 As Fields15
  Dim var_B8 As Variant
  Dim var_FC As Variant
  loc_10433D7: var_A8 = arg_10
  loc_10433DF: Proc_6_17_EAA2B0(var_B8)
  loc_10433FD: var_94 = CStr((arg_18 - arg_14))
  loc_1043401: var_98 = "Update SubGroup Set Curr_Bal=Curr_Bal+" & var_94
  loc_104340E: var_D8 = CVar(var_98 & " Where SubCode=") & var_B8 
  loc_1043419: Me.Connection15.Execute CStr(var_D8), var_FC, -1
  loc_1043442: var_EC = "SELECT SubGroup.GroupCode,AcGroup.MainGrCode FROM SubGroup LEFT JOIN AcGroup ON SubGroup.GroupCode=AcGroup.GROUPCODE WHERE SUBGROUP.SUBCODE="
  loc_1043452: Proc_6_17_EAA2B0(var_B8, arg_10, var_EC, var_D8)
  loc_104345A: var_C8 = -1 & var_B8 
  loc_1043465: Me.Connection15.Execute CStr(CVar(var_98 & " Where SubCode=")), var_100, var_100
  loc_1043470: Set var_88 = var_100
  loc_1043496: If (var_88.RecordCount > 0) Then
  loc_10434E5:   For var_11C = CInt(Len(var_88.Fields.Item("MainGrCode").Value)) To 3 Step &HFD: var_8E = var_11C 'Integer
  loc_10434F3:     If (vbNullString = vbNullString) Then
  loc_104353B:       var_8C = CStr("'" & Left(CVar(var_88.Fields.Item("MainGrCode")), CLng(var_8E)) & "'")
  loc_104354F:     Else
  loc_104357C:       var_B8 = CVar(var_88.Fields.Item("MainGrCode")) 'Address
  loc_1043599:       var_8C = CStr(CVar(var_8C & ",'") & Left(var_B8, CLng(var_8E)) & "'")
  loc_10435AC:     End If
  loc_10435AF:   Next var_11C 'Integer
  loc_10435BC:   If (var_8C <> vbNullString) Then
  loc_10435D8:     var_94 = CStr((arg_18 - arg_14))
  loc_10435DC:     var_98 = "Update AcGroup Set CurrentBalance=CurrentBalance +" & CStr(CVar(var_98 & " Where SubCode="))
  loc_10435F7:     Me.Connection15.Execute var_98 & " Where MainGrCode In(" & var_8C & ")", var_B8, -1
  loc_104360F:   End If
  loc_104360F: End If
  loc_104360F: Exit Sub
End Sub

Public Sub Proc_6_117_EA4B8C
  'Data Table: 4B6790
  Dim var_B0 As Variant
  Dim var_9C As String
  Dim var_A0 As String
  loc_EA4B23: var_B0 = arg_10
  loc_EA4B2B: Proc_6_17_EAA2B0(var_C0)
  loc_EA4B49: var_9C = CStr((arg_18 - arg_14))
  loc_EA4B4D: var_A0 = "Update SubGroup Set Curr_Bal=iif(ISNULL(Curr_Bal),0,Curr_Bal)+" & var_9C
  loc_EA4B65: Me.Connection15.Execute CStr(CVar(var_A0 & " Where SubCode=") & var_C0), var_104, -1
  loc_EA4B86: Set var_88 = Nothing
  loc_EA4B89: Exit Sub
End Sub

Public Sub Proc_6_118_E82694
  'Data Table: 4B6790
  loc_E82636: Proc_6_39_E7C810(var_A4)
  loc_E82649: If (var_A4 = 0) Then
  loc_E82650:   var_94 = Null 'Variant
  loc_E82657: Else
  loc_E8265D:   Proc_6_39_E7C810(var_A4, arg_10)
  loc_E82685:   var_94 = Format(var_A4, "0.00") 'Variant
  loc_E82690: End If
  loc_E82690: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_119_F7508C(arg_C) 'F7508C
  'Data Table: 4B6790
  Dim var_8A As Integer
  loc_F74F44: On Error Goto loc_F7505E
  loc_F74F4C: var_88 = vbNullString
  loc_F74F54: var_8A = arg_C
  loc_F74F5F: If (var_8A = 1) Then
  loc_F74F67:   var_88 = "January"
  loc_F74F6D: Else
  loc_F74F75:   If (var_8A = 2) Then
  loc_F74F7D:     var_88 = "February"
  loc_F74F83:   Else
  loc_F74F8B:     If (var_8A = 3) Then
  loc_F74F93:       var_88 = "March"
  loc_F74F99:     Else
  loc_F74FA1:       If (var_8A = 4) Then
  loc_F74FA9:         var_88 = "April"
  loc_F74FAF:       Else
  loc_F74FB7:         If (var_8A = 5) Then
  loc_F74FBF:           var_88 = "May"
  loc_F74FC5:         Else
  loc_F74FCD:           If (var_8A = 6) Then
  loc_F74FD5:             var_88 = "June"
  loc_F74FDB:           Else
  loc_F74FE3:             If (var_8A = 7) Then
  loc_F74FEB:               var_88 = "July"
  loc_F74FF1:             Else
  loc_F74FF9:               If (var_8A = 8) Then
  loc_F75001:                 var_88 = "August"
  loc_F75007:               Else
  loc_F7500F:                 If (var_8A = 9) Then
  loc_F75017:                   var_88 = "September"
  loc_F7501D:                 Else
  loc_F75025:                   If (var_8A = &HA) Then
  loc_F7502D:                     var_88 = "October"
  loc_F75033:                   Else
  loc_F7503B:                     If (var_8A = &HB) Then
  loc_F75043:                       var_88 = "November"
  loc_F75049:                     Else
  loc_F75051:                       If (var_8A = &HC) Then
  loc_F75059:                         var_88 = "December"
  loc_F7505C:                       End If
  loc_F7505C:                     End If
  loc_F7505C:                   End If
  loc_F7505C:                 End If
  loc_F7505C:               End If
  loc_F7505C:             End If
  loc_F7505C:           End If
  loc_F7505C:         End If
  loc_F7505C:       End If
  loc_F7505C:     End If
  loc_F7505C:   End If
  loc_F7505C: End If
  loc_F7505E: ' Referenced from: F74F44
  loc_F75068: Set var_90 = Err()
  loc_F7506E: Call 0.Method_arg_1C (var_94)
  loc_F7507F: If (var_94 = 6) Then
  loc_F75084:   Resume Next
  loc_F75088: End If
  loc_F7508A: Exit Sub
End Sub

Public Sub Proc_6_120_133A1D8(arg_C) '133A1D8
  'Data Table: 4B6790
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_E0 As Long
  Dim var_E8 As Long
  Dim var_A8 As Variant
  Dim var_13C As Variant
  Dim var_1CC As Variant
  Dim var_10C As Variant
  loc_1339A44: On Error Goto loc_133A1A8
  loc_1339A6B: If (Len(Trim(arg_C)) = 0) Then
  loc_1339A73:   var_88 = vbNullString
  loc_1339A78:   Exit Sub
  loc_1339A79: End If
  loc_1339A8A: var_E0 = 0
  loc_1339AA3: var_E4 = CStr(Trim(arg_C))
  loc_1339AB3: If (vbNullString = vbNullString) Then
  loc_1339AD8:   If (InStr(1, var_E4, "/", 0) = 0) Then
  loc_1339AEF:     var_E8 = InStr(1, var_E4, "-", 0)
  loc_1339AF2:   End If
  loc_1339AFD:   If (InStr(1, var_E4, "/", 0) = 0) Then
  loc_1339B14:     var_E8 = InStr(1, var_E4, ".", 0)
  loc_1339B17:   End If
  loc_1339B22:   If (var_E8 <> 0) Then
  loc_1339B30:     var_A8 = CVar((var_E8 - 1)) 'Long
  loc_1339B4D:     var_DC = CStr(Mid(var_E4, 1, Trim(arg_C)))
  loc_1339B57:   End If
  loc_1339B62:   If (var_E8 = 0) Then
  loc_1339B6A:     var_DC = var_E4
  loc_1339B72:   Else
  loc_1339B74:   End If
  loc_1339B8F:   var_B8 = Mid(var_E4, (var_E8 + 1), Trim(arg_C))
  loc_1339BA1:   var_E0 = CLng(Val(CStr(Mid(var_E4, 1, Trim(arg_C)))))
  loc_1339BAE: End If
  loc_1339BB9: If (var_E0 = 0) Then
  loc_1339BD6:   var_E0 = CLng(Year(Date))
  loc_1339BE0: End If
  loc_1339C08: If (Len(Trim(CVar(CStr(var_E0)))) < 4) Then
  loc_1339C20:   var_C8 = 4
  loc_1339C5C:   var_13C = (1 - Len(Trim(Format(CVar(CStr(var_E0)), "000"))))
  loc_1339C77:   var_16C = Mid(CVar(CStr(Year(Date))), 1, var_13C)
  loc_1339CB2:   var_1CC = (1 + Trim(Format(CVar(CStr(var_E0)), "000")))
  loc_1339CC0:   var_E0 = CLng(Val(CStr(var_1CC)))
  loc_1339CEA: Else
  loc_1339D12:   If (Len(Trim(CVar(CStr(var_E0)))) > 4) Then
  loc_1339D2F:     var_E0 = CLng(Year(Date))
  loc_1339D39:   End If
  loc_1339D39: End If
  loc_1339D85: var_1DC = Trim(Ucase(CStr(Mid(CStr(Mid(CStr(Mid(CStr(Mid(var_DC, 1, 3)), 1, 3)), 1, 3)), 1, 3)))) 'Variant
  loc_1339D99: If Not (var_1DC = "1") Then
  loc_1339DA7:   If Not (var_1DC = "01") Then
  loc_1339DB5:     If Not (var_1DC = "J") Then
  loc_1339DC3:       If Not (var_1DC = "JA") Then
  loc_1339DD1:         If (var_1DC = "JAN") Then
  loc_1339DD4:         End If
  loc_1339DD4:       End If
  loc_1339DD4:     End If
  loc_1339DD4:   End If
  loc_1339DD9:   var_DC = "Jan"
  loc_1339DDF: Else
  loc_1339DEC:   If Not (var_1DC = "2") Then
  loc_1339DFA:     If Not (var_1DC = "02") Then
  loc_1339E08:       If Not (var_1DC = "F") Then
  loc_1339E16:         If Not (var_1DC = "FE") Then
  loc_1339E24:           If (var_1DC = "FEB") Then
  loc_1339E27:           End If
  loc_1339E27:         End If
  loc_1339E27:       End If
  loc_1339E27:     End If
  loc_1339E2C:     var_DC = "Feb"
  loc_1339E32:   Else
  loc_1339E3F:     If Not (var_1DC = "3") Then
  loc_1339E4D:       If Not (var_1DC = "03") Then
  loc_1339E5B:         If Not (var_1DC = "M") Then
  loc_1339E69:           If Not (var_1DC = "MA") Then
  loc_1339E77:             If (var_1DC = "MAR") Then
  loc_1339E7A:             End If
  loc_1339E7A:           End If
  loc_1339E7A:         End If
  loc_1339E7A:       End If
  loc_1339E7F:       var_DC = "Mar"
  loc_1339E85:     Else
  loc_1339E92:       If Not (var_1DC = "4") Then
  loc_1339EA0:         If Not (var_1DC = "04") Then
  loc_1339EAE:           If Not (var_1DC = "A") Then
  loc_1339EBC:             If Not (var_1DC = "AP") Then
  loc_1339ECA:               If (var_1DC = "APR") Then
  loc_1339ECD:               End If
  loc_1339ECD:             End If
  loc_1339ECD:           End If
  loc_1339ECD:         End If
  loc_1339ED2:         var_DC = "Apr"
  loc_1339ED8:       Else
  loc_1339EE5:         If Not (var_1DC = "5") Then
  loc_1339EF3:           If Not (var_1DC = "05") Then
  loc_1339F01:             If (var_1DC = "MAY") Then
  loc_1339F04:             End If
  loc_1339F04:           End If
  loc_1339F09:           var_DC = "May"
  loc_1339F0F:         Else
  loc_1339F1C:           If Not (var_1DC = "6") Then
  loc_1339F2A:             If Not (var_1DC = "06") Then
  loc_1339F38:               If Not (var_1DC = "JU") Then
  loc_1339F46:                 If (var_1DC = "JUN") Then
  loc_1339F49:                 End If
  loc_1339F49:               End If
  loc_1339F49:             End If
  loc_1339F4E:             var_DC = "Jun"
  loc_1339F54:           Else
  loc_1339F61:             If Not (var_1DC = "7") Then
  loc_1339F6F:               If Not (var_1DC = "07") Then
  loc_1339F7D:                 If (var_1DC = "JUL") Then
  loc_1339F80:                 End If
  loc_1339F80:               End If
  loc_1339F85:               var_DC = "Jul"
  loc_1339F8B:             Else
  loc_1339F98:               If Not (var_1DC = "8") Then
  loc_1339FA6:                 If Not (var_1DC = "08") Then
  loc_1339FB4:                   If Not (var_1DC = "AU") Then
  loc_1339FC2:                     If (var_1DC = "AUG") Then
  loc_1339FC5:                     End If
  loc_1339FC5:                   End If
  loc_1339FC5:                 End If
  loc_1339FCA:                 var_DC = "Aug"
  loc_1339FD0:               Else
  loc_1339FDD:                 If Not (var_1DC = "9") Then
  loc_1339FEB:                   If Not (var_1DC = "09") Then
  loc_1339FF9:                     If Not (var_1DC = "S") Then
  loc_133A007:                       If Not (var_1DC = "SE") Then
  loc_133A015:                         If (var_1DC = "SEP") Then
  loc_133A018:                         End If
  loc_133A018:                       End If
  loc_133A018:                     End If
  loc_133A018:                   End If
  loc_133A01D:                   var_DC = "Sep"
  loc_133A023:                 Else
  loc_133A030:                   If Not (var_1DC = "10") Then
  loc_133A03E:                     If Not (var_1DC = "O") Then
  loc_133A04C:                       If Not (var_1DC = "OC") Then
  loc_133A05A:                         If (var_1DC = "OCT") Then
  loc_133A05D:                         End If
  loc_133A05D:                       End If
  loc_133A05D:                     End If
  loc_133A062:                     var_DC = "Oct"
  loc_133A068:                   Else
  loc_133A075:                     If Not (var_1DC = "11") Then
  loc_133A083:                       If Not (var_1DC = "N") Then
  loc_133A091:                         If Not (var_1DC = "NO") Then
  loc_133A09F:                           If (var_1DC = "NOV") Then
  loc_133A0A2:                           End If
  loc_133A0A2:                         End If
  loc_133A0A2:                       End If
  loc_133A0A7:                       var_DC = "Nov"
  loc_133A0AD:                     Else
  loc_133A0BA:                       If Not (var_1DC = "12") Then
  loc_133A0C8:                         If Not (var_1DC = "D") Then
  loc_133A0D6:                           If Not (var_1DC = "DE") Then
  loc_133A0E4:                             If (var_1DC = "DEC") Then
  loc_133A0E7:                             End If
  loc_133A0E7:                           End If
  loc_133A0E7:                         End If
  loc_133A0EC:                         var_DC = "Dec"
  loc_133A0F2:                       Else
  loc_133A122:                         var_DC = CStr(Format(Date, "MMM"))
  loc_133A12E:                       End If
  loc_133A12E:                     End If
  loc_133A12E:                   End If
  loc_133A12E:                 End If
  loc_133A12E:               End If
  loc_133A12E:             End If
  loc_133A12E:           End If
  loc_133A12E:         End If
  loc_133A12E:       End If
  loc_133A12E:     End If
  loc_133A12E:   End If
  loc_133A12E: End If
  loc_133A17A: var_B8 = (Trim(var_DC) + "/")
  loc_133A181: var_10C = ("MMM" + Trim(Str(var_E0)))
  loc_133A191: var_88 = CStr(Format(Format(CVar(CStr(var_E0)), "000"), "MMM/yyyy"))
  loc_133A1A7: Exit Sub
  loc_133A1A8: ' Referenced from: 1339A44
  loc_133A1B2: Set var_200 = Err()
  loc_133A1B8: Call 0.Method_arg_1C (var_204, 1, 1, 1, 1, var_E0, var_E0)
  loc_133A1C9: If (var_204 = 6) Then
  loc_133A1CE:   Resume Next
  loc_133A1D2: End If
  loc_133A1D4: Exit Sub
End Sub

Public Sub Proc_6_121_1428EEC(arg_C, arg_10, arg_14, arg_18, arg_1C) '1428EEC
  'Data Table: 4B6790
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim unk_4B67AE As Connection15
  Dim var_8C As Recordset15
  Dim var_104 As Fields15
  Dim var_BC As Variant
  Dim var_100 As Variant
  Dim var_17C As Variant
  Dim var_368 As Double
  Dim var_370 As Double
  Dim var_378 As Double
  Dim arg_14 As Double
  Dim var_3A2 As Integer
  Dim var_124 As Variant
  Dim var_150 As Variant
  loc_1428501: Proc_6_17_EAA2B0(var_BC, MemVar_1F92070, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_1428517: unk_4B67AE.Execute CStr(var_100 & var_BC), -1, var_104
  loc_1428522: Set var_8C = var_104
  loc_1428537: var_94 = vbNullString
  loc_142854E: If (var_8C.RecordCount > 0) Then
  loc_1428599:   If (Proc_6_38_E68A98(Trim(CVar(var_8C.Fields.Item("CheckOut")))) = "Other") Then
  loc_14288F0:     If (((arg_C = arg_18) And (CDbl(((Val(CStr(Left(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Left(CVar(var_8C.Fields.Item("VariationBefore")), 2)))) + ((Val(CStr(Right(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Right(CVar(var_8C.Fields.Item("VariationBefore")), 2)))) / CDbl(&H3C)))) <= CDbl((Val(CStr(Left(Trim(arg_10), 2))) + (Val(CStr(Right(Trim(arg_10), 2))) / CDbl(&H3C)))))) And (CDbl(((Val(CStr(Left(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) + Val(CStr(Left(CVar(var_8C.Fields.Item("variation")), 2)))) + ((Val(CStr(Right(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) + Val(CStr(Right(CVar(var_8C.Fields.Item("variation")), 2)))) / CDbl(&H3C)))) >= CDbl((Val(CStr(Left(Trim(arg_1C), 2))) + (Val(CStr(Right(Trim(arg_1C), 2))) / CDbl(&H3C)))))) Then
  loc_14288FA:       arg_14 = (arg_14 - CDbl(1))
  loc_1428900:     Else
  loc_1428AAA:       If (CDbl(((Val(CStr(Left(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Left(CVar(var_8C.Fields.Item("VariationBefore")), 2)))) + ((Val(CStr(Right(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Right(CVar(var_8C.Fields.Item("VariationBefore")), 2)))) / CDbl(&H3C)))) > CDbl((Val(CStr(Left(Trim(arg_10), 2))) + (Val(CStr(Right(Trim(arg_10), 2))) / CDbl(&H3C))))) Then
  loc_1428AB4:         arg_14 = (arg_14 - CDbl(1))
  loc_1428AB7:       End If
  loc_1428AB7:     End If
  loc_1428B8D:     var_368 = Val(CStr(Right(CVar(var_8C.Fields.Item("variation")), 2)))
  loc_1428BBC:     var_370 = Val(CStr(Left(Trim(arg_1C), 2)))
  loc_1428BEB:     var_378 = Val(CStr(Right(Trim(arg_1C), 2)))
  loc_1428C61:     If (CDbl(((Val(CStr(Left(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) + Val(CStr(Left(CVar(var_8C.Fields.Item("variation")), 2)))) + ((Val(CStr(Right(CVar(var_8C.Fields.Item("CheckoutVar")), 2))) + var_368) / CDbl(&H3C)))) < CDbl((var_370 + (var_378 / CDbl(&H3C))))) Then
  loc_1428C6B:       arg_14 = (arg_14 - CDbl(1))
  loc_1428C6E:     End If
  loc_1428C91:     var_3A2 = IsDate(arg_1C)
  loc_1428CBC:     var_124 = (Format(DateAdd("d", arg_14, arg_C), "dd/MMM/yyyy") + ",")
  loc_1428CFD:     var_17C = (Left(CVar(var_8C.Fields.Item("variation")), 2) + IIf(var_3A2, arg_1C, CVar(var_8C.Fields.Item("CheckoutVar"))))
  loc_1428D02:     var_94 = CStr(CVar(var_8C.Fields.Item("variation")))
  loc_1428D1E:   Else
  loc_1428D57:     If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CheckOut")), 1, 1, var_3A2, arg_14, var_378) = "24 Hrs") Then
  loc_1428D75:       If (IsDate(arg_18) And IsDate(arg_1C)) Then
  loc_1428D84:         Proc_6_122_14E77A8(arg_C, arg_10, arg_18, arg_1C, var_370)
  loc_1428DA2:         var_BC = DateAdd("d", (arg_14 - var_368), arg_18)
  loc_1428DCF:         var_124 = (Format(CVar(var_8C.Fields.Item("CheckOut")), "dd/MMM/yyyy") + ",")
  loc_1428DE6:         var_150 = (Left(CVar(var_8C.Fields.Item("variation")), 2) + Trim(arg_1C))
  loc_1428DEB:         var_94 = CStr(IIf(var_3A2, arg_1C, CVar(var_8C.Fields.Item("CheckoutVar"))))
  loc_1428E00:       Else
  loc_1428E35:         var_DC = "dd/MMM/yyyy"
  loc_1428E41:         var_100 = Format(DateAdd("d", arg_14, arg_C), var_DC)
  loc_1428E4E:         var_124 = (var_100 + ",")
  loc_1428E74:         var_150 = (Left(CVar(var_8C.Fields.Item("variation")), 2) + IIf(IsDate(arg_1C), arg_1C, arg_10))
  loc_1428E79:         var_94 = CStr(IIf(IsDate(arg_1C), arg_1C, CVar(var_8C.Fields.Item("CheckoutVar"))))
  loc_1428E8D:       End If
  loc_1428E90:     Else
  loc_1428EA9:       MsgBox("Select valid CheckOut Type in Environment Settings", &H40, var_DC, var_100, Left(CVar(var_8C.Fields.Item("variation")), 2))
  loc_1428EB9:     End If
  loc_1428EB9:   End If
  loc_1428EBC: Else
  loc_1428ECA:   var_AC = "Select Check-Out In Environment Settings"
  loc_1428ED5:   MsgBox("Select valid CheckOut Type in Environment Settings", &H40, var_DC, var_100, Left(CVar(var_8C.Fields.Item("variation")), 2))
  loc_1428EE5: End If
  loc_1428EE8: var_88 = var_94
  loc_1428EEB: Exit Sub
End Sub

Public Sub Proc_6_122_14E77A8(arg_C, arg_10, arg_14, arg_18) '14E77A8
  'Data Table: 4B6790
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim unk_4B67AE As Connection15
  Dim var_9C As Double
  Dim var_90 As Recordset15
  Dim var_104 As Fields15
  Dim var_BC As Variant
  Dim var_100 As Variant
  Dim var_358 As Double
  Dim var_360 As Double
  Dim var_368 As Double
  Dim var_370 As Double
  Dim var_378 As Double
  loc_14E6A55: Proc_6_17_EAA2B0(var_BC, MemVar_1F92078, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_14E6A6B: unk_4B67AE.Execute CStr(var_100 & var_BC), -1, var_104
  loc_14E6A76: Set var_90 = var_104
  loc_14E6A8B: var_9C = CDbl(0)
  loc_14E6AA2: If (var_90.RecordCount > 0) Then
  loc_14E6AED:   If (Proc_6_38_E68A98(Trim(CVar(var_90.Fields.Item("CheckOut")))) = "Other") Then
  loc_14E6E44:     If (((arg_C = arg_14) And (CDbl(((Val(CStr(Left(CVar(var_90.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Left(CVar(var_90.Fields.Item("VariationBefore")), 2)))) + ((Val(CStr(Right(CVar(var_90.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Right(CVar(var_90.Fields.Item("VariationBefore")), 2)))) / CDbl(&H3C)))) <= CDbl((Val(CStr(Left(Trim(arg_10), 2))) + (Val(CStr(Right(Trim(arg_10), 2))) / CDbl(&H3C)))))) And (CDbl(((Val(CStr(Left(CVar(var_90.Fields.Item("CheckoutVar")), 2))) + Val(CStr(Left(CVar(var_90.Fields.Item("variation")), 2)))) + ((Val(CStr(Right(CVar(var_90.Fields.Item("CheckoutVar")), 2))) + Val(CStr(Right(CVar(var_90.Fields.Item("variation")), 2)))) / CDbl(&H3C)))) >= CDbl((Val(CStr(Left(Trim(arg_18), 2))) + (Val(CStr(Right(Trim(arg_18), 2))) / CDbl(&H3C)))))) Then
  loc_14E6E74:       var_DC = (1 + DateDiff("d", arg_C, arg_14, 1, 1))
  loc_14E6E79:       var_9C = CSng(Left(CVar(var_90.Fields.Item("CheckoutVar")), 2))
  loc_14E6E86:     Else
  loc_14E7030:       If (CDbl(((Val(CStr(Left(CVar(var_90.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Left(CVar(var_90.Fields.Item("VariationBefore")), 2)))) + ((Val(CStr(Right(CVar(var_90.Fields.Item("CheckoutVar")), 2))) - Val(CStr(Right(CVar(var_90.Fields.Item("VariationBefore")), 2)))) / CDbl(&H3C)))) > CDbl((Val(CStr(Left(Trim(arg_10), 2))) + (Val(CStr(Right(Trim(arg_10), 2))) / CDbl(&H3C))))) Then
  loc_14E7060:         var_DC = (1 + DateDiff("d", arg_C, arg_14, 1, 1))
  loc_14E7065:         var_9C = CSng(Left(CVar(var_90.Fields.Item("CheckoutVar")), 2))
  loc_14E7072:       Else
  loc_14E709B:         var_9C = CSng(DateDiff("d", arg_C, arg_14, 1, 1))
  loc_14E70A1:       End If
  loc_14E70A1:     End If
  loc_14E70F9:     var_358 = Val(CStr(Left(CVar(var_90.Fields.Item("variation")), 2)))
  loc_14E7138:     var_360 = Val(CStr(Right(CVar(var_90.Fields.Item("CheckoutVar")), 2)))
  loc_14E7177:     var_368 = Val(CStr(Right(CVar(var_90.Fields.Item("variation")), 2)))
  loc_14E71A6:     var_370 = Val(CStr(Left(Trim(arg_18), 2)))
  loc_14E71D5:     var_378 = Val(CStr(Right(Trim(arg_18), 2)))
  loc_14E724B:     If (CDbl(((Val(CStr(Left(CVar(var_90.Fields.Item("CheckoutVar")), 2))) + var_358) + ((var_360 + var_368) / CDbl(&H3C)))) < CDbl((var_370 + (var_378 / CDbl(&H3C))))) Then
  loc_14E7255:       var_9C = (CDbl(1) + var_9C)
  loc_14E7258:     End If
  loc_14E725B:   Else
  loc_14E7294:     If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("CheckOut")), var_9C, var_378, var_370, var_368, var_360, var_358) = "24 Hrs") Then
  loc_14E750D:       If (((arg_C = arg_14) And (CDbl((Val(CStr(Left(Trim(arg_18), 2))) + (Val(CStr(Right(Trim(arg_18), 2))) / CDbl(&H3C)))) > CDbl((Val(CStr(Left(Trim(arg_10), 2))) + (Val(CStr(Right(Trim(arg_10), 2))) / CDbl(&H3C)))))) And (CDbl((Val(CStr(Left(Trim(arg_18), 2))) + (Val(CStr(Right(Trim(arg_18), 2))) / CDbl(&H3C)))) <= CDbl(((Val(CStr(Left(Trim(arg_10), 2))) + Val(CStr(Left(CVar(var_90.Fields.Item("variation")), 2)))) + ((Val(CStr(Right(Trim(arg_10), 2))) + Val(CStr(Right(CVar(var_90.Fields.Item("variation")), 2)))) / CDbl(&H3C)))))) Then
  loc_14E753D:         var_DC = (1 + DateDiff("d", arg_C, arg_14, 1, 1))
  loc_14E7542:         var_9C = CSng(Left(Trim(arg_18), 2))
  loc_14E754F:       Else
  loc_14E756A:         var_100 = Trim(arg_18)
  loc_14E757A:         var_124 = Right(var_100, 2)
  loc_14E76D5:         If (CDbl((Val(CStr(Left(Trim(arg_18), 2))) + (Val(CStr(var_124)) / CDbl(&H3C)))) > CDbl(((Val(CStr(Left(Trim(arg_10), 2))) + Val(CStr(Left(CVar(var_90.Fields.Item("variation")), 2)))) + ((Val(CStr(Right(Trim(arg_10), 2))) + Val(CStr(Right(CVar(var_90.Fields.Item("variation")), 2)))) / CDbl(&H3C))))) Then
  loc_14E7705:           var_DC = (1 + DateDiff("d", arg_C, arg_14, 1, 1))
  loc_14E770A:           var_9C = CSng(Left(Trim(arg_18), 2))
  loc_14E7717:         Else
  loc_14E7740:           var_9C = CSng(DateDiff("d", arg_C, arg_14, 1, 1))
  loc_14E7746:         End If
  loc_14E7746:       End If
  loc_14E7749:     Else
  loc_14E7762:       MsgBox("Select valid CheckOut Type in Environment Settings", &H40, Left(Trim(arg_18), 2), var_100, var_124)
  loc_14E7772:     End If
  loc_14E7772:   End If
  loc_14E7775: Else
  loc_14E7783:   var_AC = "Select Check-Out In Environment Settings"
  loc_14E778E:   MsgBox("Select valid CheckOut Type in Environment Settings", &H40, Left(Trim(arg_18), 2), var_100, var_124)
  loc_14E779E: End If
  loc_14E77A4: End Sub
End Sub

Public Sub Proc_6_123_E26F3C
  'Data Table: 4B6790
  loc_E26F14: On Error Goto loc_E26F36
  loc_E26F2A: Call 0.Method_arg_2B0 (1)
  loc_E26F32: var_88 = MemVar_1F9202C
  loc_E26F35: Exit Sub
  loc_E26F36: ' Referenced from: E26F14
  loc_E26F36: Proc_6_60_E62BC4(var_A8)
  loc_E26F3B: Exit Sub
End Sub

Public Sub Proc_6_124_FB3020(arg_C, arg_10) 'FB3020
  'Data Table: 4B6790
  Dim var_90 As String
  Dim unk_4B67AE As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Fields15
  Dim var_E8 As String
  Dim var_B4 As Variant
  Dim var_86 As Integer
  loc_FB2E9C: On Error Goto loc_FB2FDE
  loc_FB2EC3: unk_4B67AE.Execute "Select Sum(Cr) from LedgerAdj where DocID2='" & arg_10 & "'", var_B4, -1
  loc_FB2ECE: Set var_8C = var_B8
  loc_FB2EF2: If (var_8C.RecordCount > 0) Then
  loc_FB2F33:   If (CVar(arg_C) < var_8C.Fields.Item(0).Value) Then
  loc_FB2F41:     var_E0 = "Adjustment Validation"
  loc_FB2F68:     var_E8 = "Entries found in Adjustment For this Bill" & vbCrLf & "But saving this will Mismanage them" & vbCrLf & "So entres will delete after Saving"
  loc_FB2F76:     var_B4 = CVar(var_E8 & vbCrLf & "Proceed.............") 'String
  loc_FB2F9C:     If (MsgBox(var_B4, &H44, var_E0, var_FC, var_11C) = 6) Then
  loc_FB2FB3:       var_90 = "Delete From LedgerAdj Where DocID2='" & arg_10
  loc_FB2FC3:       unk_4B67AE.Execute var_90 & "'", var_B4, -1
  loc_FB2FD8:     Else
  loc_FB2FDA:       var_86 = &HFF
  loc_FB2FDD:     End If
  loc_FB2FDD:   End If
  loc_FB2FDD: End If
  loc_FB2FDD: End Sub
  loc_FB2FDE: ' Referenced from: FB2E9C
  loc_FB2FFA: Call 0.Method_arg_2C (var_90, 0, var_E0, var_FC)
  loc_FB3005: MsgBox(CVar(var_90), var_11C, Err(), Err(), )
  loc_FB301D: End Sub
End Sub

Public Sub Proc_6_125_FB37B0(arg_C, arg_10) 'FB37B0
  'Data Table: 4B6790
  Dim var_90 As String
  Dim unk_4B67AE As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Fields15
  Dim var_E8 As String
  Dim var_B4 As Variant
  Dim var_86 As Integer
  loc_FB362C: On Error Goto loc_FB376E
  loc_FB3653: unk_4B67AE.Execute "Select Sum(Cr) from LedgerAdj where DocID1='" & arg_10 & "'", var_B4, -1
  loc_FB365E: Set var_8C = var_B8
  loc_FB3682: If (var_8C.RecordCount > 0) Then
  loc_FB36C3:   If (CVar(arg_C) < var_8C.Fields.Item(0).Value) Then
  loc_FB36D1:     var_E0 = "Adjustment Validation"
  loc_FB36F8:     var_E8 = "Entries found in Adjustment For this Bill" & vbCrLf & "But saving this will Mismanage them" & vbCrLf & "So entres will delete after Saving"
  loc_FB3706:     var_B4 = CVar(var_E8 & vbCrLf & "Proceed.............") 'String
  loc_FB372C:     If (MsgBox(var_B4, &H44, var_E0, var_FC, var_11C) = 6) Then
  loc_FB3743:       var_90 = "Delete From LedgerAdj Where DocID1='" & arg_10
  loc_FB3753:       unk_4B67AE.Execute var_90 & "'", var_B4, -1
  loc_FB3768:     Else
  loc_FB376A:       var_86 = &HFF
  loc_FB376D:     End If
  loc_FB376D:   End If
  loc_FB376D: End If
  loc_FB376D: End Sub
  loc_FB376E: ' Referenced from: FB362C
  loc_FB378A: Call 0.Method_arg_2C (var_90, 0, var_E0, var_FC)
  loc_FB3795: MsgBox(CVar(var_90), var_11C, Err(), Err(), )
  loc_FB37AD: End Sub
End Sub

Public Sub Proc_6_126_F1BCC0(arg_C) 'F1BCC0
  'Data Table: 4B6790
  Dim var_90 As Long
  Dim var_C8 As Variant
  loc_F1BBC1: var_90 = 1
  loc_F1BBD0: For var_98 = 1 To Len(arg_C): var_88 = var_98 'Long
  loc_F1BBEE:   If (InStr(1, arg_C, ",", 0) <> 0) Then
  loc_F1BC09:     var_C8 = CVar((InStr(1, arg_C, ",", 0) - 1)) 'Long
  loc_F1BC56:     var_D8 = Mid(arg_C, (InStr(1, arg_C, ",", 0) + 1), var_C8)
  loc_F1BC5F:     arg_C = CStr(Mid(arg_C, 1, var_C8))
  loc_F1BC75:     ReDim Preserve MemVar_1F92008(0 To var_90)
  loc_F1BC89:     MemVar_1F92008(var_90) = CLng(CStr(Mid(arg_C, 1, var_C8)))
  loc_F1BC93:     var_90 = (var_90 + 1)
  loc_F1BC96:   End If
  loc_F1BC99: Next var_98 'Long
  loc_F1BCA9: ReDim Preserve MemVar_1F92008(0 To var_90)
  loc_F1BCBD: MemVar_1F92008(var_90) = CLng(arg_C)
  loc_F1BCBE: Exit Sub
End Sub

Public Sub Proc_6_127_F24F80
  'Data Table: 4B6790
  Dim var_BC As Variant
  Dim var_8C As Integer
  Dim var_108 As Variant
  Dim var_86 As Integer
  loc_F24E8A: var_BC = (Me.rows - 1)
  loc_F24E92: For var_C0 = 1 To CInt(var_BC): var_88 = var_C0 'Integer
  loc_F24EAB:   var_BC = (Me.rows - 1)
  loc_F24EB3:   For var_C4 = var_88 To CInt(var_BC): var_8A = var_C4 'Integer
  loc_F24EDC:     var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F24F07:     var_108 = CVar(Val(CStr(Me.TextMatrix))) 'Double
  loc_F24F31:     If (arg_10 > Me.TextMatrix) Then
  loc_F24F57:       var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F24F60:       Exit For
  loc_F24F63:     End If
  loc_F24F66:   Next var_C4 'Integer
  loc_F24F6B:   ' Referenced from: F24F60
  loc_F24F6E: Next var_C0 'Integer
  loc_F24F79: var_86 = (var_8C + 1)
  loc_F24F7C: End Sub
End Sub

Public Sub Proc_6_128_10272A8(arg_C, arg_10, arg_14) '10272A8
  'Data Table: 4B6790
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_F0 As Variant
  Dim var_D0 As Variant
  loc_10270A3: var_88 = vbNullString
  loc_10270BA: arg_C = CStr(Trim(arg_C))
  loc_10270C6: var_8A = CInt(Len(arg_C))
  loc_10270CC: var_C0 = arg_10
  loc_10270D7: If (var_C0 = "A") Then
  loc_102710C:   var_E0 = (Chr(&H12) + Chr(&HE))
  loc_1027120:   var_100 = (var_E0 + Chr(&H1B))
  loc_1027129:   var_110 = (var_100 + "G")
  loc_1027136:   var_130 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_1027150:   var_170 = (var_110 + Space(CLng((var_130 / 2))))
  loc_102715A:   var_190 = (var_170 + CVar(arg_C))
  loc_102716E:   var_1B0 = (var_190 + Chr(&H1B))
  loc_1027177:   var_1D0 = (var_1B0 + "H")
  loc_102717C:   var_88 = CStr(var_1D0)
  loc_102719D: Else
  loc_10271A5:   If (var_C0 = "B") Then
  loc_10271DD:     var_E0 = (Chr(&HE) + Chr(&HF))
  loc_10271EA:     var_F0 = (CVar(Int((CDbl((arg_14 * 5)) / CDbl(6)))) - CVar(var_8A))
  loc_1027204:     var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_102720E:     var_150 = (var_130 + CVar(arg_C))
  loc_1027222:     var_170 = ((var_130 / 2) + Chr(&H12))
  loc_1027227:     var_88 = CStr(var_170)
  loc_1027240:   Else
  loc_1027248:     If (var_C0 = "C") Then
  loc_102726E:       var_D0 = (CVar(arg_14) - CVar(var_8A))
  loc_1027288:       var_100 = (Chr(&H12) + Space(CLng((Chr(&HF) / 2))))
  loc_1027292:       var_110 = ((Chr(&H1B) / 2) + CVar(arg_C))
  loc_1027297:       var_88 = CStr(Space(CLng((Chr(&H1B) / 2))))
  loc_10272A5:     End If
  loc_10272A5:   End If
  loc_10272A5: End If
  loc_10272A5: Exit Sub
End Sub

Public Sub Proc_6_129_12B6C1C(arg_C, arg_10, arg_14) '12B6C1C
  'Data Table: 4B6790
  Dim var_E0 As String
  Dim var_134 As Variant
  Dim var_114 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_264 As Variant
  Dim var_DC As Variant
  Dim var_194 As Variant
  Dim var_244 As Variant
  Dim var_184 As Variant
  Dim arg_10 As Integer
  loc_12B662D: var_90 = vbNullString
  loc_12B6633: var_94 = vbNullString
  loc_12B6639: var_98 = vbNullString
  loc_12B663F: var_9C = vbNullString
  loc_12B664A: If (MemVar_1F923C0 = "Y") Then
  loc_12B6654:   var_E0 = vbNullString & "DATE "
  loc_12B6685:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_12B6698: End If
  loc_12B66A0: If (MemVar_1F923C4 = "Y") Then
  loc_12B6704:   var_164 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, "dd/MM/yy")))), 0))
  loc_12B672B:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12B6733:   var_1D4 = (var_164 - Len(var_1B4))
  loc_12B6744:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_12B674D:   var_224 = (var_204 + " PAGE NO ")
  loc_12B676F:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_12B6774:   var_8C = CStr(var_264)
  loc_12B67A1: End If
  loc_12B67A4: var_268 = MemVar_1F923C8
  loc_12B67AF: If (var_268 = "L") Then
  loc_12B67BC:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_12B67D5:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_12B67E9:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_12B67FD:     var_164 = (0 + Chr(&H1B))
  loc_12B6811:     var_194 = (var_164 + Chr(&H45))
  loc_12B681B:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_12B682F:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_12B6843:     var_204 = (var_1D4 + Chr(&H46))
  loc_12B6857:     var_244 = (var_204 + Chr(&HE))
  loc_12B685C:     var_90 = CStr(Str(arg_C))
  loc_12B6883:   Else
  loc_12B6899:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_12B68AD:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_12B68C1:     var_164 = (0 + Chr(&HF))
  loc_12B68CB:     var_184 = (var_164 + CVar(MemVar_1F92130))
  loc_12B68DF:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_12B68E4:     var_90 = CStr(var_1B4)
  loc_12B68FC:   End If
  loc_12B6906:   If (Len(MemVar_1F92134) > 0) Then
  loc_12B6929:     var_114 = (Chr(&HE) + Chr(&HF))
  loc_12B6933:     var_134 = (Chr(&HE) + CVar(MemVar_1F92134))
  loc_12B6947:     var_164 = (0 + Chr(&H12))
  loc_12B694C:     var_94 = CStr(var_164)
  loc_12B695E:   End If
  loc_12B6968:   If (Len(MemVar_1F92138) > 0) Then
  loc_12B698B:     var_114 = (Chr(&HE) + Chr(&HF))
  loc_12B6995:     var_134 = (Chr(&HE) + CVar(MemVar_1F92138))
  loc_12B69A9:     var_164 = (0 + Chr(&H12))
  loc_12B69AE:     var_98 = CStr(var_164)
  loc_12B69C0:   End If
  loc_12B69CA:   If (Len(MemVar_1F9213C) > 0) Then
  loc_12B69ED:     var_114 = (Chr(&HE) + Chr(&HF))
  loc_12B69F7:     var_134 = (Chr(&HE) + CVar(MemVar_1F9213C))
  loc_12B6A0B:     var_164 = (0 + Chr(&H12))
  loc_12B6A10:     var_9C = CStr(var_164)
  loc_12B6A22:   End If
  loc_12B6A25: Else
  loc_12B6A2D:   If (var_268 = "M") Then
  loc_12B6A3A:     If (Len(MemVar_1F92130) <= &H28) Then
  loc_12B6A66:       var_90 = 1 & Proc_6_128_10272A8(MemVar_1F92130, "A", CInt(Val(CStr(arg_14))), var_90)
  loc_12B6A75:     Else
  loc_12B6A9E:       var_90 = 1 & Proc_6_128_10272A8(MemVar_1F92130, "B", CInt(Val(CStr(arg_14))), var_90)
  loc_12B6AAA:     End If
  loc_12B6AB4:     If (Len(MemVar_1F92134) > 0) Then
  loc_12B6AE0:       var_94 = var_94 & Proc_6_128_10272A8(MemVar_1F92134, "B", CInt(Val(CStr(arg_14))))
  loc_12B6AEC:     End If
  loc_12B6AF6:     If (Len(MemVar_1F92138) > 0) Then
  loc_12B6B22:       var_98 = var_98 & Proc_6_128_10272A8(MemVar_1F92138, "B", CInt(Val(CStr(arg_14))))
  loc_12B6B2E:     End If
  loc_12B6B38:     If (Len(MemVar_1F9213C) > 0) Then
  loc_12B6B64:       var_9C = var_9C & Proc_6_128_10272A8(MemVar_1F9213C, "B", CInt(Val(CStr(arg_14))))
  loc_12B6B70:     End If
  loc_12B6B70:   End If
  loc_12B6B70: End If
  loc_12B6B7A: If (Len(var_8C) > 0) Then
  loc_12B6B82:   Print 1, var_8C
  loc_12B6B8E:   arg_10 = (arg_10 + 1)
  loc_12B6B91: End If
  loc_12B6B9B: If (Len(var_90) > 0) Then
  loc_12B6BA3:   Print 1, var_90
  loc_12B6BAF:   arg_10 = (arg_10 + 1)
  loc_12B6BB2: End If
  loc_12B6BBC: If (Len(var_94) > 0) Then
  loc_12B6BC4:   Print 1, var_94
  loc_12B6BD0:   arg_10 = (arg_10 + 1)
  loc_12B6BD3: End If
  loc_12B6BDD: If (Len(var_98) > 0) Then
  loc_12B6BE5:   Print 1, var_98
  loc_12B6BF1:   arg_10 = (arg_10 + 1)
  loc_12B6BF4: End If
  loc_12B6BFE: If (Len(var_9C) > 0) Then
  loc_12B6C06:   Print 1, var_9C
  loc_12B6C12:   arg_10 = (arg_10 + 1)
  loc_12B6C15: End If
  loc_12B6C1B: End Sub
End Sub

Public Sub Proc_6_130_E243C0(arg_C) 'E243C0
  'Data Table: 4B6790
  Dim var_94 As Double
  loc_E243AC: If (CDbl(0) < CDbl((arg_C - CDbl(CInt(arg_C))))) Then
  loc_E243B6:   var_94 = (var_94 + CDbl(1))
  loc_E243B9: End If
  loc_E243BF: End Sub
End Sub

Public Sub Proc_6_131_FAD2A0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) 'FAD2A0
  'Data Table: 4B6790
  Dim var_C4 As Integer
  Dim unk_4B67AE As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  loc_FAD126: var_C4 = 0
  loc_FAD153: unk_4B67AE.Execute "Select Count(*) From Depart Where Code='" & arg_34 & "' And RestType='Production'", var_AC, -1
  loc_FAD15B: var_B0 = var_B0.Fields
  loc_FAD163: var_C4 = var_B4.Item(var_B4)
  loc_FAD16B: var_C8 = var_C8.Value
  loc_FAD192: If (var_D8 > 0) Then
  loc_FAD1AE:   MsgBox("Operation is not allowed for Perticular Department", &H10, var_D8, var_F8, var_118)
  loc_FAD1BE:   Exit Sub
  loc_FAD1BF: End If
  loc_FAD1C3: Set var_11C = New rsAdvanceDepDialog
  loc_FAD1D1: var_11C.OpenMode = CVar(arg_C)
  loc_FAD1E0: var_11C.OpenType = CVar(arg_10)
  loc_FAD1EE: var_11C.AdvType = CVar(arg_14)
  loc_FAD1FC: var_11C.IdNo = CVar(arg_18)
  loc_FAD20A: var_11C.pDocId = CVar(arg_1C)
  loc_FAD218: var_11C.PersonCode = CVar(arg_20)
  loc_FAD226: var_11C.PTableOrRoomNo = CVar(arg_24)
  loc_FAD234: var_11C.PRoomtype = CVar(arg_2C)
  loc_FAD242: var_11C.PRoomCat = CVar(arg_28)
  loc_FAD251: var_11C.PBillAmt = CVar(arg_30)
  loc_FAD25F: var_11C.LocalRestCode = CVar(arg_34)
  loc_FAD26D: var_11C.PSettlementMode = CVar(arg_38)
  loc_FAD27B: var_11C.PCardType = CVar(arg_3C)
  loc_FAD289: var_11C.PCardCode = CVar(Proc_6_131_FAD2A00)
  loc_FAD296: Call var_11C.Show
  loc_FAD29C: Exit Sub
  loc_FAD29D: var_234 = 1
End Sub

Public Sub Proc_6_132_ECC4B4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) 'ECC4B4
  'Data Table: 4B6790
  Dim var_98 As Variant
  loc_ECC404: Set var_88 = New rsTouchScreenAdvanceDepDialog
  loc_ECC412: var_88.OpenMode = CVar(arg_C)
  loc_ECC421: var_88.OpenType = CVar(arg_10)
  loc_ECC42F: var_88.AdvType = CVar(arg_14)
  loc_ECC43D: var_88.IdNo = CVar(arg_18)
  loc_ECC44B: var_88.pDocId = CVar(arg_1C)
  loc_ECC459: var_88.PersonCode = CVar(arg_20)
  loc_ECC467: var_88.PTableOrRoomNo = CVar(arg_24)
  loc_ECC475: var_88.PRoomtype = CVar(arg_2C)
  loc_ECC483: var_88.PRoomCat = CVar(arg_28)
  loc_ECC492: var_88.PBillAmt = CVar(arg_30)
  loc_ECC4A0: var_88.LocalRestCode = CVar(arg_34)
  loc_ECC4A4: var_98 = 1
  loc_ECC4AD: Call var_88.Show
  loc_ECC4B3: Exit Sub
End Sub

Public Sub Proc_6_133_E7EF78
  'Data Table: 4B6790
  loc_E7EF1E: var_94 = CVar(arg_10) 'Variant
  loc_E7EF3D: If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_E7EF66:   var_94 = CVar(Asc(CStr(Ucase(Chr(CLng(arg_10)))))) 'Variant
  loc_E7EF74: End If
  loc_E7EF74: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_134_112AEB4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '112AEB4
  'Data Table: 4B6790
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_EC As String
  Dim var_FE As Integer
  Dim var_100 As Integer
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_112AB59: If (Me.TopCtrl1.TopText2 = "Browse") Then
  loc_112AB5C:   Exit Sub
  loc_112AB5D: End If
  loc_112AB67: If (CLng(arg_20) = &HD) Then
  loc_112AB7E:   Proc_6_61_1077428(arg_C, arg_10, arg_14)
  loc_112AB86: Else
  loc_112AB90:   If (CLng(arg_20) = &H2E) Then
  loc_112AB96:     var_98 = Me.Row
  loc_112AB9F:     var_B8 = Me.Col
  loc_112ABA5:     var_EC = vbNullString
  loc_112ABAE:     LateMemCallSt
  loc_112ABBE:   Else
  loc_112AC03:     If ((((((((arg_20 >= &H61) And (arg_20 <= &H7A)) Or ((arg_20 >= &H30) And (arg_20 <= &H39))) Or ((arg_20 >= &H41) And (arg_20 <= &H5A))) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Or (arg_20 = 8)) Then
  loc_112AC0F:       var_FE = CInt(Me.Row)
  loc_112AC1E:       var_100 = CInt(Me.Col)
  loc_112AC31:       var_B8 = (Me.CellHeight - 10)
  loc_112AC4A:       ).height = arg_18
  loc_112AC62:       var_B8 = (Me.CellWidth - 10)
  loc_112AC7B:       ).width = arg_18
  loc_112AC96:       var_C8 = (Me.CellLeft + Me.left)
  loc_112ACAF:       ).left = arg_18
  loc_112ACCE:       var_C8 = (Me.CellTop + Me.top)
  loc_112ACE7:       ).top = arg_18
  loc_112ACF6:       var_DC = "00:00"
  loc_112AD10:       ).TEXT = arg_18
  loc_112AD17:       var_DC = True
  loc_112AD2F:       ).Visible = arg_18
  loc_112AD36:       var_DC = 0
  loc_112AD52:       Call ).ZOrder
  loc_112AD5E:       var_98 = Me.Col
  loc_112AD78:       ).Tag = arg_18
  loc_112AD99:       Call ).SetFocus
  loc_112ADA8:       If (arg_1C = &HFF) Then
  loc_112ADCD:         If (((((arg_20 >= &H30) And (arg_20 <= &H39)) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Then
  loc_112ADD7:           var_98 = Chr(CLng(arg_20))
  loc_112ADF4:           ).TEXT = arg_18
  loc_112ADFF:         End If
  loc_112AE02:       Else
  loc_112AE0C:         If (CLng(arg_20) = 8) Then
  loc_112AE12:           var_98 = Time
  loc_112AE2F:           ).TEXT = arg_18
  loc_112AE3D:         Else
  loc_112AE44:           var_98 = Chr(CLng(arg_20))
  loc_112AE5E:           var_B8 = CVar(CStr(Val(CStr(var_98))) & "0:00") 'String
  loc_112AE76:           ).TEXT = arg_18
  loc_112AE8A:         End If
  loc_112AE8A:       End If
  loc_112AE8A:       var_DC = 1
  loc_112AEA4:       ).SelStart = arg_18
  loc_112AEAB:     End If
  loc_112AEAB:   End If
  loc_112AEAB: End If
  loc_112AEAB: Exit Sub
  loc_112AEAC: Proc_6_60_E62BC4(var_DC, var_B8, var_98, var_98, arg_18, var_98, arg_18)
  loc_112AEB1: Exit Sub
End Sub

Public Sub Proc_6_135_12A9B7C
  'Data Table: 4B6790
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_268 As Variant
  Dim var_2AC As Double
  loc_12A95C1: Form.AutoRedraw = True
  loc_12A95CF: If (CInt(arg_20) = 0) Then
  loc_12A95D7:   Form.ScaleMode = 3
  loc_12A95DF: Else
  loc_12A95E4:   Form.ScaleMode = 2
  loc_12A95E9: End If
  loc_12A95F2: Proc_6_136_F15258(var_198)
  loc_12A95FF: var_A4 = Me(4) 'Variant
  loc_12A9608: var_B4 = Me(20) 'Variant
  loc_12A9611: var_C4 = Me(36) 'Variant
  loc_12A961E: Proc_6_136_F15258(var_198, arg_1C)
  loc_12A9647: var_198 = (Me(4) - var_A4)
  loc_12A964B: var_104 = var_198 'Variant
  loc_12A9655: var_198 = (Me(20) - var_B4)
  loc_12A9659: var_114 = var_198 'Variant
  loc_12A9663: var_198 = (Me(36) - var_C4)
  loc_12A9667: var_124 = var_198 'Variant
  loc_12A967E: var_1B8 = Ucase(arg_14) 'Variant
  loc_12A968D: If (var_1B8 = "C") Then
  loc_12A96A6:   var_154 = CVar((Form.ScaleWidth / CDbl(2))) 'Variant
  loc_12A96C0:   var_164 = CVar((Form.ScaleHeight / CDbl(2))) 'Variant
  loc_12A96CC:   If (var_154 > var_164) Then
  loc_12A96D2:     var_184 = var_164 'Variant
  loc_12A96D9:   Else
  loc_12A96DC:     var_184 = var_154 'Variant
  loc_12A96E0:   End If
  loc_12A96EB:   For var_1E8 = 0 To var_184: var_174 = var_1E8 'Variant
  loc_12A972C:     Form.Circle (CDbl(var_154), CDbl(var_164)), CDbl(var_174), RGB(CInt(var_A4), CInt(var_B4), CInt(var_C4)), CDbl(0), CDbl(2), CDbl(0)
  loc_12A9734:   Next var_1E8 'Variant
  loc_12A973D: Else
  loc_12A9748:   If (var_1B8 = "B") Then
  loc_12A9761:     var_154 = CVar((Form.ScaleWidth / CDbl(2))) 'Variant
  loc_12A977B:     var_164 = CVar((Form.ScaleHeight / CDbl(2))) 'Variant
  loc_12A9784:     Form.DrawWidth = &HA
  loc_12A9796:     var_1A8 = -1
  loc_12A979B:     For var_258 = 50 To 0 Step CVar((Form.ScaleHeight / CDbl(2))):   var_228 = var_258 'Variant
  loc_12A97B0:       var_268 = (var_A4 + (var_104 / 50))
  loc_12A97C3:       If (var_268 < 0) Then
  loc_12A97CB:         var_A4 = 0 'Variant
  loc_12A97CF:       End If
  loc_12A97DE:       var_268 = (var_B4 + (var_114 / 50))
  loc_12A97F1:       If (var_268 < 0) Then
  loc_12A97F9:         var_B4 = 0 'Variant
  loc_12A97FD:       End If
  loc_12A980C:       var_268 = (var_C4 + (var_124 / 50))
  loc_12A981F:       If (var_268 < 0) Then
  loc_12A9827:         var_C4 = 0 'Variant
  loc_12A982B:       End If
  loc_12A9837:       var_1F8 = (var_228 / 50) 'Variant
  loc_12A9843:       var_198 = (1 - var_1F8)
  loc_12A9847:       var_208 = (var_228 / 50) 'Variant
  loc_12A9853:       var_198 = (1 + var_1F8)
  loc_12A9857:       var_218 = (var_228 / 50) 'Variant
  loc_12A98A5:       Form.Line (CDbl((var_154 * var_208)), CDbl((var_164 * var_208)))-(CDbl((var_154 * var_218)), CDbl((var_164 * var_218))), RGB(CInt(var_A4), CInt(var_B4), CInt(var_C4))
  loc_12A98AD:     Next var_258 'Variant
  loc_12A98B6:   Else
  loc_12A98C9:     var_298 = Ucase(arg_14) 'Variant
  loc_12A98D8:     If (var_298 = "H") Then
  loc_12A98ED:       var_134 = CVar(Form.ScaleHeight) 'Variant
  loc_12A98F4:     Else
  loc_12A98FF:       If (var_298 = "V") Then
  loc_12A9914:         var_134 = CVar(Form.ScaleWidth) 'Variant
  loc_12A991B:       Else
  loc_12A9926:         If Not (var_298 = "DU") Then
  loc_12A9934:           If (var_298 = "DD") Then
  loc_12A9937:           End If
  loc_12A9978:           var_2AC = Sqr(((Form.ScaleWidth * Form.ScaleWidth) + (Form.ScaleHeight * Form.ScaleHeight)))
  loc_12A998C:           var_134 = CVar((Sqr(CDbl(2)) * var_2AC)) 'Variant
  loc_12A9990:         End If
  loc_12A9990:       End If
  loc_12A9990:     End If
  loc_12A999B:     For var_2CC = 0 To var_134:     var_144 = var_2CC 'Variant
  loc_12A99AE:       var_268 = (var_A4 + (var_104 / var_134))
  loc_12A99C1:       If ((var_164 * var_208) < 0) Then
  loc_12A99C9:         var_A4 = 0 'Variant
  loc_12A99CD:       End If
  loc_12A99DA:       var_268 = (var_B4 + (var_114 / var_134))
  loc_12A99ED:       If ((var_164 * var_208) < 0) Then
  loc_12A99F5:         var_B4 = 0 'Variant
  loc_12A99F9:       End If
  loc_12A9A06:       var_268 = (var_C4 + (var_124 / var_134))
  loc_12A9A19:       If ((var_164 * var_208) < 0) Then
  loc_12A9A21:         var_C4 = 0 'Variant
  loc_12A9A25:       End If
  loc_12A9A38:       var_2DC = Ucase(arg_14) 'Variant
  loc_12A9A47:       If (var_2DC = "H") Then
  loc_12A9A7E:         Form.Line (CDbl(0), CDbl(var_144))-(Form.ScaleWidth, CDbl(var_144)), RGB(CInt(var_A4), CInt(var_B4), CInt(var_C4))
  loc_12A9A86:       Else
  loc_12A9A91:         If (var_2DC = "V") Then
  loc_12A9AC8:           Form.Line (CDbl(var_144), CDbl(0))-(CDbl(var_144), Form.ScaleHeight), RGB(CInt(var_A4), CInt(var_B4), CInt(var_C4))
  loc_12A9AD0:         Else
  loc_12A9ADB:           If (var_2DC = "DU") Then
  loc_12A9B08:             Form.Line (CDbl(var_144), CDbl(0))-(CDbl(0), CDbl(var_144)), RGB(CInt(var_A4), CInt(var_B4), CInt(var_C4))
  loc_12A9B10:           Else
  loc_12A9B1B:             If (var_2DC = "DD") Then
  loc_12A9B5C:               var_198 = (CVar(Form.ScaleWidth) - var_144)
  loc_12A9B68:               Form.Line (CDbl(Ucase(arg_14)), CDbl(0))-(Form.ScaleWidth, CDbl(var_144)), RGB(CInt(var_A4), CInt(var_B4), CInt(var_C4))
  loc_12A9B6D:             End If
  loc_12A9B6D:           End If
  loc_12A9B6D:         End If
  loc_12A9B6D:       End If
  loc_12A9B70:     Next var_2CC 'Variant
  loc_12A9B76:   End If
  loc_12A9B76: End If
  loc_12A9B76: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_136_F15258
  'Data Table: 4B6790
  Dim var_B8 As Long
  Dim arg_10 As Long
  loc_F15165: var_A4 = 1 'Variant
  loc_F1516E: var_B4 = 256 'Variant
  loc_F15177: var_B8 = &H10000
  loc_F1518B: Me(36) = CVar((arg_10 / var_B8))
  loc_F15198: arg_10 = (arg_10 Mod var_B8)
  loc_F151A8: If (Me(36) < 0) Then
  loc_F151B0:   Me(36) = 0
  loc_F151B6: End If
  loc_F151D0: Me(20) = CVar(CLng((CVar(arg_10) / var_B4)))
  loc_F151E6: arg_10 = CLng((CVar(arg_10) Mod var_B4))
  loc_F151F6: If (Me(20) < 0) Then
  loc_F151FE:   Me(20) = 0
  loc_F15204: End If
  loc_F1521E: Me(4) = CVar(CLng((CVar(arg_10) / var_A4)))
  loc_F15234: arg_10 = CLng((CVar(arg_10) Mod var_A4))
  loc_F15244: If (Me(4) < 0) Then
  loc_F1524C:   Me(4) = 0
  loc_F15252: End If
  loc_F15252: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_137_1193554
  'Data Table: 4B6790
  Dim var_A4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As Variant
  Dim var_108 As Variant
  Dim var_F4 As Variant
  Dim Me As TextBox
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_90 As Double
  loc_1193175: If (Me.Recordset15.EOF = 0) Then
  loc_1193180:   If Not((arg_18 Is Nothing)) Then
  loc_1193191:     Me.Font.Name = "ARIAL"
  loc_11931A6:     Me.HeadFont.Name = "ARIAL"
  loc_11931C2:     Me.Font.Size = 9.75
  loc_11931DE:     Me.HeadFont.Size = 9.75
  loc_11931F5:     Me.HeadLines = 1.5
  loc_1193209:     Me.RowHeight = &H10E
  loc_1193220:     var_E4 = (Me.Columns.Count + 1)
  loc_1193226:     var_B4 = CVar(CLng(var_E4)) 'Long
  loc_1193254:     var_E4 = (Me.Columns.Count - 1)
  loc_1193260:     For var_F8 = 0 To CInt(var_E4): var_86 = var_F8 'Integer
  loc_119326A:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1193289:       var_108 = CVar(CLng(Me.Columns.width)) 'Long
  loc_1193291:       LateIdCallSt
  loc_11932A0:       var_B4 = 0
  loc_11932AD:       var_108 = CVar(CLng(var_86)) 'Long
  loc_11932CB:       var_E4 = CVar(CStr(Me.Columns.TEXT)) 'String
  loc_11932D2:       LateIdCallSt
  loc_119330A:       If (Me.Columns.Alignment = 0) Then
  loc_1193311:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_119331C:         var_F4 = CVar(CInt(1)) 'Integer
  loc_1193323:         LateIdCallSt
  loc_119332E:       Else
  loc_1193332:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_119333D:         var_F4 = CVar(CInt(7)) 'Integer
  loc_1193344:         LateIdCallSt
  loc_119334C:       End If
  loc_119334F:     Next var_F8 'Integer
  loc_1193366:     Me.Height = CVar(CDbl(Me.RowHeight))
  loc_119336E:     var_A4 = 0
  loc_1193381:     var_F4 = CVar(CLng(Me.RowHeight)) 'Long
  loc_1193389:     LateIdCallSt
  loc_11933A9:     var_D4 = (Me.Row - 1)
  loc_11933B9:     var_158 = (Me.top + (Me.Columns.Alignment * Me.RowHeight))
  loc_11933C5:     var_178 = (var_158 + Me.RowHeight)
  loc_11933CE:     var_188 = (var_178 + 260)
  loc_11933DC:     Me.Top = CVar(CDbl(var_188))
  loc_11933FF:     var_D4 = (Me.left + 310)
  loc_119340D:     Me.Left = CVar(CDbl(Me.Columns.Alignment))
  loc_1193421:     var_E4 = Me.Font.Size
  loc_1193436:     Set var_18C = txt.DispID_FFFFFE00
  loc_1193455:     var_E4 = Me.Font.Name
  loc_119346A:     Set var_18C = txt.DispID_FFFFFE00
  loc_1193470:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1193489:     var_E4 = Me.Font.Bold
  loc_119349E:     Set var_18C = txt.DispID_FFFFFE00
  loc_11934CD:     var_E4 = (Me.Columns.Count - 1)
  loc_11934D9:     For var_190 = 0 To CInt(var_E4): var_86 = var_190 'Integer
  loc_1193504:       If (Me.Columns.Visible = True) Then
  loc_119350A:         var_B4 = CVar(var_90) 'Double
  loc_1193526:         var_E4 = (var_86 + Me.Columns.width)
  loc_119352B:         var_90 = CSng(var_E4)
  loc_1193537:       End If
  loc_119353A:     Next var_190 'Integer
  loc_1193546:     var_A4 = CVar((var_90 - CDbl(&H14))) 'Single
  loc_119354E:     Me.Width = 1
  loc_1193553:   End If
  loc_1193553: End If
  loc_1193553: Exit Sub
End Sub

Public Sub Proc_6_138_106D6F8
  'Data Table: 4B6790
  Dim Me As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_108 As Variant
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_90 As Double
  loc_106D47C: On Error Resume Next
  loc_106D495: If (Me.RecordCount > 0) Then
  loc_106D4AB:   If (Me.Visible = True) Then
  loc_106D4B8:     If Not((arg_18 Is Nothing)) Then
  loc_106D4C9:       Me.Tag = CVar(CStr(arg_14))
  loc_106D4DA:       Me.Visible = True
  loc_106D4F9:       var_E4 = (Me.Columns.Count - 1)
  loc_106D505:       For var_E8 = 0 To CInt(var_E4): var_86 = var_E8 'Integer
  loc_106D50D:         var_D4 = 0
  loc_106D51A:         var_108 = CVar(CLng(var_86)) 'Long
  loc_106D538:         var_E4 = CVar(CStr(Me.Columns.TEXT)) 'String
  loc_106D53F:         LateIdCallSt
  loc_106D555:       Next var_E8 'Integer
  loc_106D569:       var_C4 = (Me.RowHeight + 10)
  loc_106D577:       Me.Height = CVar(CDbl(Me.Columns.TEXT))
  loc_106D585:       var_A4 = 0
  loc_106D598:       var_F8 = CVar(CLng(Me.RowHeight)) 'Long
  loc_106D5A0:       LateIdCallSt
  loc_106D5C2:       var_C4 = (Me.Row - 1)
  loc_106D5D2:       var_158 = (Me.top + (Me.Columns.TEXT * Me.RowHeight))
  loc_106D5DE:       var_178 = (var_158 + Me.RowHeight)
  loc_106D5E7:       var_188 = (var_178 + 350)
  loc_106D5F5:       Me.Top = CVar(CDbl(var_188))
  loc_106D61A:       var_C4 = (Me.left + 310)
  loc_106D628:       Me.Left = CVar(CDbl(Me.Columns.TEXT))
  loc_106D64E:       var_E4 = (Me.Columns.Count - 1)
  loc_106D65A:       For var_18C = 0 To CInt(Me.RowHeight): var_86 = var_18C 'Integer
  loc_106D687:         If (Me.Columns.Visible = True) Then
  loc_106D68F:           var_D4 = CVar(var_90) 'Double
  loc_106D6AB:           var_E4 = (var_86 + Me.Columns.width)
  loc_106D6B0:           var_90 = CSng(Me.RowHeight)
  loc_106D6BC:         End If
  loc_106D6C1:       Next var_18C 'Integer
  loc_106D6CF:       var_A4 = CVar((var_90 - CDbl(&H14))) 'Single
  loc_106D6D7:       Me.Width = 1
  loc_106D6DE:       var_A4 = 0
  loc_106D6EF:     End If
  loc_106D6F1:   End If
  loc_106D6F3: End If
  loc_106D6F7: Exit Sub
End Sub

Public Sub Proc_6_139_EF950C(arg_C) 'EF950C
  'Data Table: 4B6790
  Dim unk_4B67AE As Connection15
  Dim Me As TextBox
  Dim var_A4 As Variant
  loc_EF9440: On Error Goto loc_EF94AE
  loc_EF9459: unk_4B67AE.Execute arg_C, var_A4, -1
  loc_EF9464: CVarUnk
  loc_EF9469: VerifyVarObj
  loc_EF946E: LateIdStAd
  loc_EF94A8: Me.Tag = arg_C
  loc_EF94AD: Exit Sub
  loc_EF94AE: ' Referenced from: EF9440
  loc_EF94B6: Set var_A8 = Err()
  loc_EF94BC: Call 0.Method_arg_1C (var_CC, txt.DispID_3, arg_18, txt.DispID_1)
  loc_EF94CD: If (var_CC > 0) Then
  loc_EF94D8:   Set var_A8 = Err()
  loc_EF94DE:   Call 0.Method_arg_2C (var_D0, arg_14, Me)
  loc_EF94F7:   MsgBox(CVar(var_D0), &H40, var_B8, var_E0, var_100)
  loc_EF950A: End If
  loc_EF950A: Exit Sub
End Sub

Public Sub Proc_6_140_12D90F4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '12D90F4
  'Data Table: 4B6790
  Dim unk_4B68EF As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C0 As String
  Dim var_D4 As String
  Dim var_E0 As String
  Dim var_114 As Variant
  Dim var_164 As Variant
  Dim var_284 As Variant
  Dim var_2C4 As Variant
  Dim var_438 As Variant
  Dim var_458 As Variant
  loc_12D8B44: unk_4B68EF.Execute "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & arg_2C & "'", var_B0, -1
  loc_12D8B4F: Set var_88 = var_B4
  loc_12D8B73: If (var_88.RecordCount > 0) Then
  loc_12D8B81:   Proc_6_7_F25D88(var_B0, arg_28)
  loc_12D8B91:   Proc_6_7_F25D88(var_304, arg_50)
  loc_12D8BA1:   Proc_183_8_EB0AA4(var_394, Proc_6_140_12D90F44)
  loc_12D8C1D:   var_C0 = "Insert Into " & arg_54 & "Ledger(" & "DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code," & "V_Date,SubCode,ContraSub,AmtDr,AmtCr,"
  loc_12D8C40:   var_D4 = var_C0 & "Narration,Chq_No,Chq_Date,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) " & "Values(" & "'" & arg_10 & "',"
  loc_12D8C97:   var_114 = CVar(var_D4 & CStr(arg_14) & ",'" & arg_18 & "'," & CStr(arg_1C) & ",'" & arg_20 & "','" & arg_24 & "'," & vbNullString) 'String
  loc_12D8D07:   var_284 = var_114 & var_B0 & ",'" & CVar(arg_2C) & "','" & CVar(arg_38) & "'," & CVar(arg_30) & "," & CVar(arg_34) & "," & "'" & CVar(arg_3C) 
  loc_12D8D70:   var_438 = var_284 & "','" & CVar(Proc_6_140_12D90F4C) & "'," & var_304 & ",'" & CVar(Proc_6_140_12D90F40) & "'," & var_394 & ",'" & CVar(Proc_6_140_12D90F48) & "','" & var_88.Fields.Item("GroupCode").Value 
  loc_12D8D79:   var_458 = var_438 & "','" 
  loc_12D8DA7:   Me.Connection15.Execute CStr(var_458 & var_88.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_514, -1
  loc_12D8E55:   var_B0 = var_88.Fields.Item("GroupCode").Value
  loc_12D8E77:   Proc_183_0_1279094(arg_C, arg_2C, arg_30, arg_34)
  loc_12D8E8C: Else
  loc_12D8E97:   Proc_6_7_F25D88(var_B0, arg_28, CStr(var_B0))
  loc_12D8EA7:   Proc_6_7_F25D88(var_304, arg_50, CDate(arg_28))
  loc_12D8EB7:   Proc_183_8_EB0AA4(var_394, Proc_6_140_12D90F44)
  loc_12D8EE5:   var_C0 = "Insert Into " & arg_54 & "Ledger(" & "DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code," & "V_Date,SubCode,ContraSub,AmtDr,AmtCr,"
  loc_12D8F1B:   var_E0 = var_C0 & "Narration,Chq_No,Chq_Date,U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'" & arg_10 & "'," & CStr(arg_14) & ",'"
  loc_12D8F78:   var_164 = CVar(var_E0 & arg_18 & "'," & CStr(arg_1C) & ",'" & arg_20 & "','" & arg_24 & "'," & vbNullString) & var_B0 & ",'" & CVar(arg_2C) 
  loc_12D8FE2:   var_2C4 = var_164 & "','" & CVar(arg_38) & "'," & CVar(arg_30) & "," & CVar(arg_34) & "," & "'" & CVar(arg_3C) & "','" & CVar(Proc_6_140_12D90F4C) 
  loc_12D9044:   var_438 = var_2C4 & "'," & var_304 & ",'" & CVar(Proc_6_140_12D90F40) & "'," & var_394 & ",'" & CVar(Proc_6_140_12D90F48) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_12D904F:   Me.Connection15.Execute CStr(var_438), var_458, -1
  loc_12D90E3:   Proc_183_0_1279094(arg_C, arg_2C, arg_30, arg_34, vbNullString)
  loc_12D90EB: End If
  loc_12D90F0: Set var_88 = Nothing
  loc_12D90F3: Exit Sub
End Sub

Public Sub Proc_6_141_12E1E18(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '12E1E18
  'Data Table: 4B6790
  Dim unk_4B68EF As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C0 As String
  Dim var_D4 As String
  Dim var_E0 As String
  Dim var_114 As Variant
  Dim var_164 As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_2F4 As Variant
  Dim var_384 As Variant
  Dim var_448 As Variant
  Dim var_314 As Variant
  Dim var_3A4 As Variant
  Dim var_438 As Variant
  loc_12E185C: unk_4B68EF.Execute "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & arg_2C & "'", var_B0, -1
  loc_12E1867: Set var_88 = var_B4
  loc_12E188B: If (var_88.RecordCount > 0) Then
  loc_12E1899:   Proc_6_7_F25D88(var_B0, arg_28)
  loc_12E18B9:   Proc_6_7_F25D88(var_314, arg_50)
  loc_12E18C9:   Proc_183_8_EB0AA4(var_3A4, Proc_6_141_12E1E184)
  loc_12E1945:   var_C0 = "Insert Into " & arg_54 & "Ledger(" & "DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code," & "V_Date,SubCode,ContraSub,AmtCr,AmtDr,"
  loc_12E1968:   var_D4 = var_C0 & "Narration,Chq_No,Chq_Date,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) " & "Values(" & "'" & arg_10 & "',"
  loc_12E19BF:   var_114 = CVar(var_D4 & CStr(arg_14) & ",'" & arg_18 & "'," & CStr(arg_1C) & ",'" & arg_20 & "','" & arg_24 & "'," & vbNullString) 'String
  loc_12E1A2C:   var_294 = var_114 & var_B0 & ",'" & CVar(arg_2C) & "','" & CVar(arg_38) & "'," & CVar(arg_30) & "," & CVar(arg_34) & "," & "'" & Trim(arg_3C) 
  loc_12E1A48:   var_2F4 = var_294 & "','" & CVar(Proc_6_141_12E1E18C) & "'," 
  loc_12E1A6B:   var_384 = var_2F4 & var_314 & ",'" & CVar(Proc_6_141_12E1E180) & "'," 
  loc_12E1A95:   var_448 = var_384 & var_3A4 & ",'" & CVar(Proc_6_141_12E1E188) & "','" & var_88.Fields.Item("GroupCode").Value 
  loc_12E1ACC:   Me.Connection15.Execute CStr(var_448 & "','" & var_88.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_524, -1
  loc_12E1B7C:   var_B0 = var_88.Fields.Item("GroupCode").Value
  loc_12E1B9C:   Proc_183_0_1279094(arg_C, arg_2C, arg_34, arg_30)
  loc_12E1BB1: Else
  loc_12E1BBC:   Proc_6_7_F25D88(var_B0, arg_28, CStr(var_B0))
  loc_12E1BCC:   Proc_6_7_F25D88(var_2F4, arg_50, arg_28)
  loc_12E1BDC:   Proc_183_8_EB0AA4(var_384, Proc_6_141_12E1E184)
  loc_12E1C0A:   var_C0 = "Insert Into " & arg_54 & "Ledger(" & "DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code," & "V_Date,SubCode,ContraSub,AmtCr,AmtDr,"
  loc_12E1C40:   var_E0 = var_C0 & "Narration,Chq_No,Chq_Date,U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'" & arg_10 & "'," & CStr(arg_14) & ",'"
  loc_12E1C9D:   var_164 = CVar(var_E0 & arg_18 & "'," & CStr(arg_1C) & ",'" & arg_20 & "','" & arg_24 & "'," & vbNullString) & var_B0 & ",'" & CVar(arg_2C) 
  loc_12E1D07:   var_2B4 = var_164 & "','" & CVar(arg_38) & "'," & CVar(arg_30) & "," & CVar(arg_34) & "," & "'" & CVar(arg_3C) & "','" & CVar(Proc_6_141_12E1E18C) 
  loc_12E1D69:   var_438 = var_2B4 & "'," & var_2F4 & ",'" & CVar(Proc_6_141_12E1E180) & "'," & var_384 & ",'" & CVar(Proc_6_141_12E1E188) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_12E1D74:   Me.Connection15.Execute CStr(var_438), var_448, -1
  loc_12E1E06:   Proc_183_0_1279094(arg_C, arg_2C, arg_34, arg_30, vbNullString)
  loc_12E1E0E: End If
  loc_12E1E13: Set var_88 = Nothing
  loc_12E1E16: Exit Sub
End Sub

Public Sub Proc_6_142_14A55B0(arg_C, arg_10, arg_14, arg_18) '14A55B0
  'Data Table: 4B6790
  Dim var_8C As Double
  Dim var_BC As Variant
  Dim var_9C As Double
  Dim var_EC As Variant
  Dim var_120 As Variant
  Dim var_1C0 As Variant
  Dim var_170 As Variant
  Dim var_150 As Variant
  Dim var_190 As Variant
  Dim var_364 As Variant
  loc_14A4927: var_90 = arg_14
  loc_14A492E: var_92 = arg_10 'Byte
  loc_14A493B: If (CInt(var_92) = 4) Then
loc_14A4944: End Sub
  loc_14A4945: End If
  loc_14A4963: var_BC = CVar((arg_C - Int(arg_C))) 'Double
  loc_14A4973: var_9C = CSng(Format(var_BC, "0.00"))
  loc_14A4983: var_EE = var_92 'Byte
  loc_14A4990: If (var_EE = CByte(0)) Then
  loc_14A49DC:   var_EC = (CVar(arg_C) - Round(arg_C, 0))
  loc_14A4A0C:   var_1C0 = CVar((Int(arg_C) + CDbl(1))) 'Double
  loc_14A4A4A:   var_210 = IIf((var_90 = "L"), CVar(Int(arg_C)), IIf((Format(CVar(CDbl(Format(Round(arg_C, 0), "0.00"))), "0.00") <= 0), Round(arg_C, 0), var_1C0))
  loc_14A4A6D:   var_8C = CSng(IIf((var_90 = "S"), Round(arg_C, 0), var_210))
  loc_14A4A92: Else
  loc_14A4A9B:   If (var_EE = CByte(1)) Then
  loc_14A4AA1:     var_234 = var_90
  loc_14A4AAC:     If (var_234 = "S") Then
  loc_14A4AC8:       var_8C = CSng(Round(arg_C, 1))
  loc_14A4AD1:     Else
  loc_14A4AD9:       If (var_234 = "L") Then
  loc_14A4B84:         var_170 = IIf(((var_9C >= 0.7) And (var_9C <= 0.79)), 0.7, IIf(((var_9C > 0.8) And (var_9C <= 0.89)), 0.8, IIf(((var_9C > 0.9) And (var_9C <= 0.99)), 0.9, 1)))
  loc_14A4C26:         var_210 = IIf(((var_9C >= 0.4) And (var_9C <= 0.49)), 0.4, IIf(((var_9C >= 0.5) And (var_9C <= 0.59)), 0.5, IIf(((var_9C >= 0.6) And (var_9C <= 0.69)), 0.6, var_170)))
  loc_14A4CC8:         var_304 = IIf(((var_9C >= 0.1) And (var_9C <= 0.19)), 0.1, IIf(((var_9C >= 0.2) And (var_9C <= 0.29)), 0.2, IIf(((var_9C >= 0.3) And (var_9C <= 0.39)), 0.3, var_210)))
  loc_14A4CFF:         var_364 = (CVar(Int(arg_C)) + IIf(((var_9C >= 0) And (var_9C <= 0.09)), 0, var_304))
  loc_14A4D04:         var_8C = CSng(var_364)
  loc_14A4D4D:       Else
  loc_14A4D55:         If (var_234 = "U") Then
  loc_14A4E00:           var_170 = IIf(((var_9C >= 0.61) And (var_9C <= 0.7)), 0.7, IIf(((var_9C >= 0.71) And (var_9C <= 0.8)), 0.8, IIf(((var_9C > 0.81) And (var_9C <= 0.9)), 0.9, 1)))
  loc_14A4EA2:           var_210 = IIf(((var_9C >= 0.31) And (var_9C <= 0.4)), 0.4, IIf(((var_9C >= 0.41) And (var_9C <= 0.5)), 0.5, IIf(((var_9C >= 0.51) And (var_9C <= 0.6)), 0.6, var_170)))
  loc_14A4F44:           var_304 = IIf(((var_9C >= 0.01) And (var_9C <= 0.1)), 0.1, IIf(((var_9C >= 0.11) And (var_9C <= 0.2)), 0.2, IIf(((var_9C >= 0.21) And (var_9C <= 0.3)), 0.3, var_210)))
  loc_14A4F67:           var_364 = (CVar(Int(arg_C)) + IIf((var_9C = CDbl(0)), 0, var_304))
  loc_14A4F6C:           var_8C = CSng(var_364)
  loc_14A4FB2:         End If
  loc_14A4FB2:       End If
  loc_14A4FB2:     End If
  loc_14A4FB5:   Else
  loc_14A4FBE:     If (var_EE = CByte(2)) Then
  loc_14A4FC4:       var_368 = var_90
  loc_14A4FCF:       If (var_368 = "S") Then
  loc_14A507A:         var_170 = IIf(((var_9C > 0.12) And (var_9C <= 0.37)), 0.25, IIf(((var_9C > 0.37) And (var_9C <= 0.62)), 0.5, IIf(((var_9C > 0.62) And (var_9C <= 0.87)), 0.75, 1)))
  loc_14A50A3:         var_1C0 = (CVar(Int(arg_C)) + IIf((var_9C <= 0.12), 0, var_170))
  loc_14A50A8:         var_8C = CSng(0.5)
  loc_14A50CD:       Else
  loc_14A50D5:         If (var_368 = "L") Then
  loc_14A5172:           var_170 = IIf((var_9C <= 0.24), 0, IIf(((var_9C > 0.24) And (var_9C <= 0.49)), 0.25, IIf(((var_9C > 0.49) And (var_9C <= 0.74)), 0.5, 0.75)))
  loc_14A517A:           var_190 = (CVar(Int(arg_C)) + var_170)
  loc_14A517F:           var_8C = CSng(0)
  loc_14A519E:         Else
  loc_14A51A6:           If (var_368 = "U") Then
  loc_14A5243:             var_170 = IIf((var_9C <= 0.25), 0.25, IIf(((var_9C > 0.25) And (var_9C <= 0.5)), 0.5, IIf(((var_9C > 0.5) And (var_9C <= 0.75)), 0.75, 1)))
  loc_14A5266:             var_1C0 = (CVar(Int(arg_C)) + IIf((var_9C = CDbl(0)), 0, var_170))
  loc_14A526B:             var_8C = CSng(0.5)
  loc_14A528D:           End If
  loc_14A528D:         End If
  loc_14A528D:       End If
  loc_14A5290:     Else
  loc_14A5299:       If (var_EE = CByte(3)) Then
  loc_14A529F:         var_36C = var_90
  loc_14A52AA:         If (var_36C = "S") Then
  loc_14A5312:           var_150 = (CVar(Int(arg_C)) + IIf((var_9C <= 0.24), 0, IIf(((var_9C >= 0.25) And (var_9C <= 0.74)), 0.5, 1)))
  loc_14A5317:           var_8C = CSng(0.25)
  loc_14A5330:         Else
  loc_14A5338:           If (var_36C = "L") Then
  loc_14A5371:             var_120 = (CVar(Int(arg_C)) + IIf((var_9C <= 0.49), 0, 0.5))
  loc_14A5376:             var_8C = CSng(0)
  loc_14A5389:           Else
  loc_14A5391:             If (var_36C = "U") Then
  loc_14A53E5:               var_150 = (CVar(Int(arg_C)) + IIf((var_9C = CDbl(0)), 0, IIf((var_9C <= 0.5), 0.5, 1)))
  loc_14A53EA:               var_8C = CSng(0.25)
  loc_14A5400:             End If
  loc_14A5400:           End If
  loc_14A5400:         End If
  loc_14A5400:       End If
  loc_14A5400:     End If
  loc_14A5400:   End If
  loc_14A5400: End If
  loc_14A5404: var_36E = arg_18 'Byte
  loc_14A5411: If (var_36E = CByte(0)) Then
  loc_14A5432:   var_BC = CVar(CDbl((var_8C - arg_C))) 'Double
  loc_14A5442:   var_8C = CSng(Format(0.5, "0"))
  loc_14A5451: Else
  loc_14A545A:   If (var_36E = CByte(1)) Then
  loc_14A547B:     var_BC = CVar(CDbl((var_8C - arg_C))) 'Double
  loc_14A548B:     var_8C = CSng(Format(0.5, "0.0"))
  loc_14A549A:   Else
  loc_14A54A3:     If (var_36E = CByte(2)) Then
  loc_14A54C4:       var_BC = CVar(CDbl((var_8C - arg_C))) 'Double
  loc_14A54D4:       var_8C = CSng(Format(0.5, "0.00"))
  loc_14A54E3:     Else
  loc_14A54EC:       If (var_36E = CByte(3)) Then
  loc_14A550D:         var_BC = CVar(CDbl((var_8C - arg_C))) 'Double
  loc_14A551D:         var_8C = CSng(Format(0.5, "0.000"))
  loc_14A552C:       Else
  loc_14A5535:         If (var_36E = CByte(4)) Then
  loc_14A5556:           var_BC = CVar(CDbl((var_8C - arg_C))) 'Double
  loc_14A5566:           var_8C = CSng(Format(0.5, "0.0000"))
  loc_14A5575:         Else
  loc_14A5593:           var_BC = CVar(CDbl((var_8C - arg_C))) 'Double
  loc_14A55A3:           var_8C = CSng(Format(0.5, "0.00"))
  loc_14A55AF:         End If
  loc_14A55AF:       End If
  loc_14A55AF:     End If
  loc_14A55AF:   End If
  loc_14A55AF: End If
  loc_14A55AF: End Sub
End Sub

Public Sub Proc_6_143_F1355C(arg_C) 'F1355C
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_F13474: On Error Goto loc_F1351E
  loc_F13479: var_86 = 0
  loc_F1348D: Call 0.Method_Me0 (var_8C, var_90, var_88)
  loc_F13495: Call 0.Method_arg_38 (1)
  loc_F134A1: For var_94 =  To CInt(var_90): var_86 = var_94 'Integer
  loc_F134C1:   Call 0.Method_Me0 (var_8C, CVar(var_88), var_B4)
  loc_F134C9:   Call 0.Method_arg_30 (var_B8)
  loc_F134D1:   Call 0.Method_arg_34 (var_BC)
  loc_F134DF:   var_DC = Ucase(CVar(var_BC))
  loc_F134F2:   var_FC = Ucase(arg_C)
  loc_F1350C:   If (var_DC = var_FC) Then
loc_F13514: End Sub
  loc_F13515:   End If
  loc_F13518: Next var_94 'Integer
loc_F1351D: End Sub
  loc_F1351E: ' Referenced from: F13474
  loc_F13534: Set var_8C = Err()
  loc_F1353A: Call 0.Method_arg_2C (var_BC, 0, var_DC)
  loc_F13545: MsgBox(CVar(var_BC), var_FC, var_10C, , )
loc_F13558: End Sub
End Sub

Public Sub Proc_6_144_10122FC
  'Data Table: 4B6790
  Dim var_B4 As String
  loc_10120F8: On Error Goto loc_10122B8
  loc_1012103: Set var_9C = Proc_6_145_E6B860(arg_10)
  loc_1012118: If (Proc_6_150_EE8D38(arg_14) = 0) Then
  loc_1012124:   Call 0.Method_arg_38 (arg_14)
  loc_1012132:   Call 0.Method_arg_58 (arg_18)
  loc_1012140:   Call 0.Method_arg_7C (arg_28)
  loc_1012153:   If Not(IsMissing(arg_1C)) Then
  loc_101215F:     Call 0.Method_arg_64 (arg_1C)
  loc_1012164:   End If
  loc_1012172:   If Not(IsMissing(arg_2C)) Then
  loc_1012180:     Call 0.Method_arg_90 (CLng(arg_2C))
  loc_1012185:   End If
  loc_1012193:   If Not(IsMissing(arg_30)) Then
  loc_10121A1:     Call 0.Method_arg_98 (CLng(arg_30))
  loc_10121A6:   End If
  loc_10121AF:   If Not(IsMissing(arg_24)) Then
  loc_10121B8:     var_B4 = CStr(arg_24)
  loc_10121C5:     Call 0.Method_Proc_6_144_10122FCC (var_B0, var_B4)
  loc_10121CD:     Call 0.Method_Proc_6_144_10122FC0 (var_9C)
  loc_10121D8:   End If
  loc_10121E1:   Call 0.Method_arg_34 (var_B4)
  loc_10121F8:   If (Proc_6_149_EEB51C(var_B4) = 0) Then
  loc_101220E:     Call 0.Method_arg_3C (var_B0)
  loc_1012216:     Call 0.Method_Proc_6_144_10122FC0 (var_98)
  loc_1012225:   Else
  loc_101222B:     Call 0.Method_arg_7C ()
  loc_1012243:     Call 0.Method_arg_3C (var_B0)
  loc_101224B:     Call 0.Method_Proc_6_144_10122FC0 (var_98)
  loc_101225D:     Call 0.Method_Me0 ()
  loc_1012262:   End If
  loc_1012262: End If
  loc_101226B: Call 0.Method_arg_34 (var_B4)
  loc_1012282: If (Proc_6_149_EEB51C(var_B4) = 0) Then
  loc_1012298:   Call 0.Method_arg_3C (var_B0)
  loc_10122A0:   Call 0.Method_Proc_6_144_10122FC0 (var_9C)
  loc_10122AC: End If
  loc_10122B1: Set var_98 = Nothing
  loc_10122B4: Result = arg_10: Exit Sub
  loc_10122B8: ' Referenced from: 10120F8
  loc_10122DE: MsgBox(CVar("Error in Adding Field " & arg_14 & " in Table " & arg_10), 0, var_DC, var_FC, var_11C)
  loc_10122F5: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_6_145_E6B860(arg_C) 'E6B860
  'Data Table: 4B6790
  loc_E6B817: If (Proc_6_149_EEB51C(arg_C) = &HFF) Then
  loc_E6B831:   Call 0.Method_arg_3C (var_8C, CVar(arg_C))
  loc_E6B839:   Call 0.Method_arg_30 (var_AC)
  loc_E6B841:   Set var_88 = var_B0
  loc_E6B84A: Else
  loc_E6B84E:   Set var_88 = New 
  loc_E6B857:   Call 0.Method_arg_38 (arg_C)
  loc_E6B85C: End If
  loc_E6B85C: Exit Sub
End Sub

Public Sub Proc_6_146_113D68C(arg_C, arg_10, arg_14) '113D68C
  'Data Table: 4B6790
  Dim var_C0 As String
  loc_113D32C: On Error Resume Next
  loc_113D33F: If (Proc_6_151_F71538(arg_C) = 0) Then
  loc_113D34D:   Call 0.Method_arg_38 (arg_C)
  loc_113D35C:   Call 0.Method_Proc_6_146_113D68C0 (&HFF)
  loc_113D36C:   Call 0.Method_arg_60 (arg_14)
  loc_113D37C:   Call 0.Method_Proc_6_146_113D68CC (var_90)
  loc_113D384:   Set var_8C = var_90
  loc_113D38F:   Call 0.Method_arg_3C (arg_20)
  loc_113D3B4:   If CBool(Trim(arg_24) <> vbNullString) Then
  loc_113D3BF:     Call 0.Method_arg_3C (arg_24)
  loc_113D3C4:   End If
  loc_113D3E4:   If CBool(Trim(arg_28) <> vbNullString) Then
  loc_113D3EF:     Call 0.Method_arg_3C (arg_28)
  loc_113D3F4:   End If
  loc_113D414:   If CBool(Trim(arg_2C) <> vbNullString) Then
  loc_113D41F:     Call 0.Method_arg_3C (arg_2C)
  loc_113D424:   End If
  loc_113D444:   If CBool(Trim(arg_30) <> vbNullString) Then
  loc_113D44F:     Call 0.Method_arg_3C (arg_30)
  loc_113D454:   End If
  loc_113D474:   If CBool(Trim(arg_34) <> vbNullString) Then
  loc_113D47F:     Call 0.Method_arg_3C (arg_34)
  loc_113D484:   End If
  loc_113D4A4:   If CBool(Trim(arg_38) <> vbNullString) Then
  loc_113D4AF:     Call 0.Method_arg_3C (arg_38)
  loc_113D4B4:   End If
  loc_113D4D4:   If CBool(Trim(arg_3C) <> vbNullString) Then
  loc_113D4DF:     Call 0.Method_arg_3C (arg_3C)
  loc_113D4E4:   End If
  loc_113D504:   If CBool(Trim(Proc_6_146_113D68C0) <> vbNullString) Then
  loc_113D50F:     Call 0.Method_arg_3C (Proc_6_146_113D68C0)
  loc_113D514:   End If
  loc_113D529:   var_C0 = vbNullString
  loc_113D534:   If CBool(Trim(Proc_6_146_113D68C4) <> var_C0) Then
  loc_113D53F:     Call 0.Method_arg_3C (Proc_6_146_113D68C4)
  loc_113D544:   End If
  loc_113D55D:   Call 0.Method_arg_3C (var_90, CVar(arg_10), var_C0)
  loc_113D565:   Call 0.Method_arg_30 (var_D4)
  loc_113D56D:   Call 0.Method_arg_7C (arg_10)
  loc_113D59F:   Call 0.Method_arg_3C (var_90, CVar(arg_10), var_C0)
  loc_113D5A7:   Call 0.Method_arg_30 (var_D4, var_D8)
  loc_113D5AF:   Call 0.Method_Proc_6_146_113D68CC (var_88)
  loc_113D5B7:   Call 0.Method_arg_3C ()
  loc_113D5E0:   Call 0.Method_arg_3C (var_90, CVar(arg_10))
  loc_113D5E8:   Call 0.Method_arg_30 (var_C0)
  loc_113D5F0:   Call 0.Method_Me0 (var_D4)
  loc_113D5FC: End If
  loc_113D605: Set var_88 = Nothing
  loc_113D60F: Set var_8C = Nothing
  loc_113D614: Exit Sub
  loc_113D653: Set var_90 = Err()
  loc_113D659: Call 0.Method_arg_2C (var_F0, "Error in Creating Index " & arg_C & " in Table " & arg_10 & " Due to " & vbCrLf, 0)
  loc_113D665: MsgBox(CVar(var_D0 & var_F0), var_104, var_124, , )
  loc_113D689: Exit Sub
End Sub

Public Sub Proc_6_147_1121640(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '1121640
  'Data Table: 4B6790
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_11212FA: If (Proc_6_151_F71538(arg_C) = 0) Then
  loc_1121306:   Call 0.Method_arg_38 (arg_C)
  loc_1121314:   Call 0.Method_Proc_6_147_11216408 (arg_14)
  loc_112134F:   If CBool(Trim(arg_1C) <> vbNullString) Then
  loc_112135A:     var_AC = (CVar("[" & arg_18 & "]") + ",[")
  loc_1121364:     var_DC = (Trim(arg_1C) + CVar(arg_1C))
  loc_112136D:     var_FC = (var_DC + "]")
  loc_1121371:     var_98 = var_FC 'Variant
  loc_112137C:   End If
  loc_112139A:   If CBool(Trim(arg_20) <> vbNullString) Then
  loc_11213A5:     var_AC = (var_98 + ",[")
  loc_11213AF:     var_DC = (Trim(arg_20) + CVar(arg_20))
  loc_11213B8:     var_FC = (var_DC + "]")
  loc_11213BC:     var_98 = var_FC 'Variant
  loc_11213C7:   End If
  loc_11213E5:   If CBool(Trim(arg_24) <> vbNullString) Then
  loc_11213F0:     var_AC = (var_98 + ",[")
  loc_11213FA:     var_DC = (Trim(arg_24) + CVar(arg_24))
  loc_1121403:     var_FC = (var_DC + "]")
  loc_1121407:     var_98 = var_FC 'Variant
  loc_1121412:   End If
  loc_1121430:   If CBool(Trim(arg_28) <> vbNullString) Then
  loc_112143B:     var_AC = (var_98 + ",[")
  loc_1121445:     var_DC = (Trim(arg_28) + CVar(arg_28))
  loc_112144E:     var_FC = (var_DC + "]")
  loc_1121452:     var_98 = var_FC 'Variant
  loc_112145D:   End If
  loc_112147B:   If CBool(Trim(arg_2C) <> vbNullString) Then
  loc_1121486:     var_AC = (var_98 + ",[")
  loc_1121490:     var_DC = (Trim(arg_2C) + CVar(arg_2C))
  loc_1121499:     var_FC = (var_DC + "]")
  loc_112149D:     var_98 = var_FC 'Variant
  loc_11214A8:   End If
  loc_11214C6:   If CBool(Trim(arg_30) <> vbNullString) Then
  loc_11214D1:     var_AC = (var_98 + ",[")
  loc_11214DB:     var_DC = (Trim(arg_30) + CVar(arg_30))
  loc_11214E4:     var_FC = (var_DC + "]")
  loc_11214E8:     var_98 = var_FC 'Variant
  loc_11214F3:   End If
  loc_1121511:   If CBool(Trim(arg_34) <> vbNullString) Then
  loc_112151C:     var_AC = (var_98 + ",[")
  loc_1121526:     var_DC = (Trim(arg_34) + CVar(arg_34))
  loc_112152F:     var_FC = (var_DC + "]")
  loc_1121533:     var_98 = var_FC 'Variant
  loc_112153E:   End If
  loc_112155C:   If CBool(Trim(arg_38) <> vbNullString) Then
  loc_1121567:     var_AC = (var_98 + ",[")
  loc_1121571:     var_DC = (Trim(arg_38) + CVar(arg_38))
  loc_112157A:     var_FC = (var_DC + "]")
  loc_112157E:     var_98 = var_FC 'Variant
  loc_1121589:   End If
  loc_11215A7:   If CBool(Trim(arg_3C) <> vbNullString) Then
  loc_11215B2:     var_AC = (var_98 + ",[")
  loc_11215B9:     var_CC = CVar(arg_3C) 'String
  loc_11215BC:     var_DC = (Trim(arg_3C) + var_CC)
  loc_11215C5:     var_FC = (var_DC + "]")
  loc_11215C9:     var_98 = var_FC 'Variant
  loc_11215D4:   End If
  loc_11215E1:   Call 0.Method_arg_3C (CStr(var_98))
  loc_112160D:   Call 0.Method_arg_3C (var_100, CVar(arg_10), var_CC, var_104)
  loc_1121615:   Call 0.Method_arg_30 (var_108, var_88)
  loc_112161D:   Call 0.Method_arg_64 (arg_10)
  loc_1121625:   Call 0.Method_Proc_6_147_11216400 ()
  loc_1121635: End If
  loc_112163A: Set var_88 = Nothing
  loc_112163D: Exit Sub
End Sub

Public Sub Proc_6_148_EB428C(arg_C, arg_10) 'EB428C
  'Data Table: 4B6790
  loc_EB4204: On Error Goto loc_EB4261
  loc_EB4212: If (Proc_6_143_F1355C(arg_C) = 0) Then
  loc_EB421E:   Call 0.Method_arg_38 (arg_C)
  loc_EB422C:   Call 0.Method_arg_50 (arg_10)
  loc_EB4244:   Call 0.Method_Me0 (var_8C)
  loc_EB424C:   Call 0.Method_Proc_6_148_EB428C0 (var_88)
  loc_EB4258: End If
  loc_EB425D: Set var_88 = Nothing
  loc_EB4260: Exit Sub
  loc_EB4261: ' Referenced from: EB4204
  loc_EB4279: MsgBox(CVar("Error in Creating View " & arg_C), 0, var_C0, var_E0, var_100)
  loc_EB4289: Exit Sub
End Sub

Public Sub Proc_6_149_EEB51C(arg_C) 'EEB51C
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_EEB468: On Error Goto loc_EEB4DE
  loc_EEB46D: var_86 = 0
  loc_EEB479: Call 0.Method_arg_3C (var_90)
  loc_EEB487: For Each var_8C In var_90
  loc_EEB495:   Call 0.Method_arg_34 (var_9C)
  loc_EEB4A3:   var_BC = Ucase(CVar(var_9C))
  loc_EEB4B6:   var_DC = Ucase(arg_C)
  loc_EEB4C9:   If (var_BC = var_DC) Then
loc_EEB4D1: End Sub
  loc_EEB4D2:   End If
  loc_EEB4D5: Next
loc_EEB4DD: End Sub
  loc_EEB4DE: ' Referenced from: EEB468
  loc_EEB4F4: Set var_90 = Err()
  loc_EEB4FA: Call 0.Method_arg_2C (var_9C, 0, var_BC)
  loc_EEB505: MsgBox(CVar(var_9C), var_DC, var_EC, , )
loc_EEB518: End Sub
End Sub

Public Sub Proc_6_150_EE8D38(arg_C) 'EE8D38
  'Data Table: 4B6790
  Dim var_86 As Integer
  loc_EE8C88: On Error Goto loc_EE8CFB
  loc_EE8C8D: var_86 = 0
  loc_EE8C96: Call 0.Method_arg_3C (var_90)
  loc_EE8CA4: For Each var_8C In var_90
  loc_EE8CB2:   Call 0.Method_arg_34 (var_9C)
  loc_EE8CC0:   var_BC = Ucase(CVar(var_9C))
  loc_EE8CD3:   var_DC = Ucase(arg_C)
  loc_EE8CE6:   If (var_BC = var_DC) Then
loc_EE8CEE: End Sub
  loc_EE8CEF:   End If
  loc_EE8CF2: Next
loc_EE8CFA: End Sub
  loc_EE8CFB: ' Referenced from: EE8C88
  loc_EE8D11: Set var_90 = Err()
  loc_EE8D17: Call 0.Method_arg_2C (var_9C, 0, var_BC)
  loc_EE8D22: MsgBox(CVar(var_9C), var_DC, var_EC, , )
loc_EE8D35: End Sub
  loc_EE8D36: Exit Sub
End Sub

Public Sub Proc_6_151_F71538(arg_C, arg_10) 'F71538
  'Data Table: 4B6790
  loc_F71408: On Error Goto loc_F714FA
  loc_F71432: Call 0.Method_arg_3C (var_8C, CVar(arg_10), var_AC, var_B0, var_B4)
  loc_F7143A: Call 0.Method_arg_30 (var_B8, var_88)
  loc_F71442: Call 0.Method_arg_64 (1)
  loc_F7144A: Call 0.Method_arg_38 (0)
  loc_F7145C: For var_BC =  To CInt(var_B8):  = var_BC 'Integer
  loc_F71489:   Call 0.Method_arg_3C (var_8C, CVar(arg_10), var_AC, var_B0)
  loc_F71491:   Call 0.Method_arg_30 (var_B4, CVar(var_88))
  loc_F71499:   Call 0.Method_arg_64 (var_D0)
  loc_F714A1:   Call 0.Method_arg_30 (var_D4)
  loc_F714A9:   Call 0.Method_arg_34 ()
  loc_F714B7:   var_F4 = Ucase(CVar(var_D4))
  loc_F714CA:   var_114 = Ucase(arg_C)
  loc_F714E8:   If (var_F4 = var_114) Then
loc_F714F0: End Sub
  loc_F714F1:   End If
  loc_F714F4: Next var_BC 'Integer
loc_F714F9: End Sub
  loc_F714FA: ' Referenced from: F71408
  loc_F71510: Set var_8C = Err()
  loc_F71516: Call 0.Method_arg_2C (var_D4, 0, var_F4)
  loc_F71521: MsgBox(CVar(var_D4), var_114, var_124, , )
loc_F71534: End Sub
End Sub

Public Sub Proc_6_152_1077F50(arg_C, arg_10) '1077F50
  'Data Table: 4B6790
  Dim var_9C As String
  Dim var_232 As Integer
  Dim var_234 As Integer
  Dim var_98 As String
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  loc_1077D14: Set var_90 = Err()
  loc_1077D1A: Call 0.Method_arg_1C (var_94)
  loc_1077D2B: If (var_94 <> 0) Then
  loc_1077D3A:   var_90 = Me.Global.App
  loc_1077D5D:   var_9C = App.Path & "\"
  loc_1077D6D:   Call 0.Method_arg_7C (var_9C & "ErrorLog.Log", 8, &HFF)
  loc_1077D78:   Set var_8C = var_A4
  loc_1077D98:   var_232 = IsMissing(arg_C)
  loc_1077DA8:   var_234 = IsMissing(arg_10)
  loc_1077DB8:   var_98 = CStr(Now)
  loc_1077DCA:   Set var_90 = Err()
  loc_1077DD0:   Call 0.Method_arg_2C (var_9C, var_98 & " | ", var_234)
  loc_1077DF1:   Call 0.Method_arg_1C (var_94, var_232 & var_9C & " | ")
  loc_1077E11:   Set var_C8 = Err()
  loc_1077E17:   Call 0.Method_arg_24 (var_CC, 0 & CStr(var_94) & " | ")
  loc_1077E27:   var_144 = CVar(Err() & var_CC & " | ") 'String
  loc_1077E48:   var_134 = IIf(Not(var_232), arg_C, vbNullString)
  loc_1077E50:   var_154 = (var_144 + var_134)
  loc_1077E59:   var_174 = (var_154 + " | ")
  loc_1077E83:   var_1E4 = (var_174 + IIf(Not(var_234), arg_10, vbNullString))
  loc_1077E8C:   var_204 = (var_1E4 + "|")
  loc_1077E98:   Set var_208 = Err()
  loc_1077E9E:   Call 0.Method_Proc_6_152_1077F50C (var_20C)
  loc_1077EB5:   Call 0.Method_arg_3C (CStr(var_204 & CVar(var_20C)))
  loc_1077F00:   Call 0.Method_Proc_6_152_1077F50C ()
  loc_1077F0A:   Set var_88 = Nothing
  loc_1077F15:   Set var_90 = Err()
  loc_1077F1B:   Call 0.Method_arg_2C (var_98)
  loc_1077F3C:   MsgBox(CVar(var_98), &H40, "Validation", var_134, var_144)
  loc_1077F4F: End If
  loc_1077F4F: Exit Sub
End Sub

Public Sub Proc_6_153_E91194
  'Data Table: 4B6790
  Dim var_B4 As Variant
  loc_E9111C: On Error Resume Next
  loc_E91158: If (CDbl(Fix(((arg_14 - CDbl(285)) / (CDbl(txt.DispID_1D) + &HF)))) < CDbl(CLng(txt.DispID_8))) Then
  loc_E9117F:   var_B4 = CVar(CInt(Fix(((arg_14 - CDbl(285)) / (CDbl(txt.DispID_1D) + &HF))))) 'Integer
  loc_E9118E: End If
  loc_E91192: Exit Sub
End Sub

Public Sub Proc_6_154_EE76D0
  'Data Table: 4B6790
  Dim var_FC As String
  Dim var_D8 As Integer
  Dim unk_4B67AE As Connection15
  Dim var_C4 As Recordset15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_10C As Variant
  loc_EE7630: var_FC = "Help : "
  loc_EE763B: var_D8 = 0
  loc_EE7686: unk_4B67AE.Execute "Select isnull(Max(HelpDesc),'') From Help where FName='" & Form.Name & "' and CtrlIndex='" & CStr(arg_10) & "'", var_C0, -1
  loc_EE768E: var_C4 = var_C4.Fields
  loc_EE7696: var_D8 = var_C8.Item(var_C8)
  loc_EE769E: var_DC = var_DC.Value
  loc_EE76A6: var_10C = (var_EC + var_EC)
  loc_EE76AB: var_88 = CStr(var_10C)
  loc_EE76CF: Exit Sub
End Sub
