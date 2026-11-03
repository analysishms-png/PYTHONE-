
Public Sub Proc_156_0_1EE1CC6
Error procedure
End Sub

Public Sub Proc_156_1_10007FF
Error procedure
End Sub

Public Sub Proc_156_2_F97D18
  'Data Table: 41C240
  Dim var_FC As Long
  Dim var_8C As Long
  Dim var_D4 As Long
  Dim var_D0 As Long
  Dim var_D8 As Long
  Dim var_F8 As String
  Dim var_11C As Variant
  loc_F97BDD: var_F8 = var_CC
  loc_F97C0E: var_8C = CreateFieldDefFile(0, &H65, var_90, var_9C, var_94)
  loc_F97C1D: If (var_8C <> 0) Then
loc_F97C20: End Sub
  loc_F97C21: End If
  loc_F97C26: var_D4 = 1
  loc_F97C2C: var_D0 = var_90
  loc_F97C2F: ' Referenced from: F97CDE
  loc_F97C36: If (var_D4 <= var_98) Then
  loc_F97C39:   DoEvents()
  loc_F97C49:   CopyMemory(var_C4, var_D0, &H18)
  loc_F97C5B:   lstrcpyW(var_F0(0), var_C0, var_D0, var_D4, StrConv(var_CC, vbUnicode), var_F8)
  loc_F97C66:   var_D8 = 0
  loc_F97C69:   ' Referenced from: F97CA5
  loc_F97C76:   If (CInt(var_F0(var_D8)) <> 0) Then
  loc_F97C8E:     var_C8 = var_C8 & Chr$(CLng(var_F0(var_D8)))
  loc_F97C9D:     var_D8 = (var_D8 + 2)
  loc_F97CA0:     DoEvents()
  loc_F97CA5:     GoTo loc_F97C69
  loc_F97CA8:   End If
  loc_F97CB6:   Proc_156_3_106F058(Me(32), arg_10, var_C8, arg_14, var_D8, var_D8)
  loc_F97CBB:   DoEvents()
  loc_F97CC9:   var_D4 = (var_D4 + 1)
  loc_F97CCF:   var_C8 = vbNullString
  loc_F97CDB:   var_D0 = (var_D0 + &H18)
  loc_F97CDE:   GoTo loc_F97C2F
  loc_F97CE1: End If
  loc_F97CF0: var_8C = NetApiBufferFree(var_90, var_D0, var_D4, var_FC)
  loc_F97D05: var_11C = CVar((CLng(Me.sckControlPanel.RemoteHostIP) - 1)) 'Long
  loc_F97D15: End Sub
End Sub

Public Sub Proc_156_3_106F058
  'Data Table: 41C240
  Dim var_104 As Variant
  Dim var_88 As Long
  Dim var_D0 As Long
  Dim var_CC As Long
  Dim var_D4 As Long
  Dim var_118 As String
  Dim var_114 As Variant
  Dim var_17C As Long
  Dim var_19C As String
  loc_106EE22: var_C8 = CStr(StrConv(arg_14, &H40, 0))
  loc_106EE31: var_118 = var_C8
  loc_106EE62: var_88 = CreateFieldDefFile(0, &H65, var_8C, var_98, var_90)
  loc_106EE71: If (var_88 <> 0) Then
  loc_106EE74:   Exit Sub
  loc_106EE75: End If
  loc_106EE7A: var_D0 = 1
  loc_106EE80: var_CC = var_8C
  loc_106EE83: ' Referenced from: 106F042
  loc_106EE8A: If (var_D0 <= var_94) Then
  loc_106EE8D:   DoEvents()
  loc_106EE9D:   CopyMemory(var_C0, var_CC, &H18)
  loc_106EEAF:   lstrcpyW(var_EC(0), var_BC, var_CC, var_D0, var_88, StrConv(var_C8, vbUnicode))
  loc_106EEBA:   var_D4 = 0
  loc_106EEBD:   ' Referenced from: 106EEF9
  loc_106EECA:   If (CInt(var_EC(var_D4)) <> 0) Then
  loc_106EEE2:     var_C4 = var_C4 & Chr$(CLng(var_EC(var_D4)))
  loc_106EEF1:     var_D4 = (var_D4 + 2)
  loc_106EEF4:     DoEvents()
  loc_106EEF9:     GoTo loc_106EEBD
  loc_106EEFC:   End If
  loc_106EF45:   If CBool(Ucase(Trim(var_C4)) <> Ucase(Trim(arg_18))) Then
  loc_106EF48:     var_104 = 0
  loc_106EF5C:     var_114 = Me.sckControlPanel.RemoteHostIP
  loc_106EF6B:     var_104 = CVar((CLng(var_114) - 1)) 'Long
  loc_106EF73:     Me.var_114.RemoteHost = var_104
  loc_106EF7B:     var_104 = "wingdings"
  loc_106EF8C:     var_104 = CVar(CDbl(&HE)) 'Single
  loc_106EFAB:     var_104 = CVar((CLng(Me.var_114.RemoteHostIP) - 1)) 'Long
  loc_106EFB0:     var_17C = 0
  loc_106EFB9:     var_19C = ":"
  loc_106EFC2:     LateIdCallSt
  loc_106EFDF:     var_104 = CVar((CLng(Me.var_114.RemoteHostIP) - 1)) 'Long
  loc_106EFE4:     var_17C = 1
  loc_106EFF7:     LateIdCallSt
  loc_106F014:     var_104 = CVar((CLng(Me.var_114.RemoteHostIP) + 1)) 'Long
  loc_106F024:   End If
  loc_106F02D:   var_D0 = (var_D0 + 1)
  loc_106F033:   var_C4 = vbNullString
  loc_106F03F:   var_CC = (var_CC + &H18)
  loc_106F042:   GoTo loc_106EE83
  loc_106F045: End If
  loc_106F054: var_88 = NetApiBufferFree(var_8C, var_CC, var_D0, sckControlPanel.DispID_4, var_104, Me, var_C4, var_17C)
  loc_106F057: Exit Sub
End Sub

Public Sub Proc_156_4_EC6E4C
  'Data Table: 41C240
  Dim var_9C As Long
  Dim var_88 As Long
  loc_EC6DB4: var_94 = Me.Global.App
  loc_EC6DE8: var_9C = RegOpenKey(-2147483646, "Software\Microsoft\Windows\CurrentVersion\Run", var_8C)
  loc_EC6E2F: var_88 = RegSetValueEx(var_8C, "AnalysisApp", 0, 1, App.Path & "\NA ControlPanel.EXE", &HFF, var_9C)
  loc_EC6E48: var_88 = RegCloseKey(var_8C)
  loc_EC6E4B: Exit Sub
End Sub

Public Sub Proc_156_5_E28DC8
  'Data Table: 41C240
  loc_E28DA3: Me(36) = vbNullString
  loc_E28DAB: Me(36) = "GetTaskList#"
  loc_E28DB8: EnumWindows(MemVar_41C3E8, 0)
  loc_E28DC3: var_88 = Me(36)
  loc_E28DC6: Exit Sub
End Sub

Public Sub Proc_156_6_F1EC54(arg_C) 'F1EC54
  'Data Table: 41C240
  Dim var_90 As Long
  loc_F1EB5B: var_90 = GetWindowTextLength(arg_C)
  loc_F1EB6D: var_8C = CStr(Space(var_90))
  loc_F1EB89: GetWindowText(arg_C, var_8C, (var_90 + 1))
  loc_F1EBA3: Me(36) = Me(36) & var_8C
  loc_F1EBB3: If (Len(var_8C) > 0) Then
  loc_F1EBC7:   If CBool(IsIconic(arg_C)) Then
  loc_F1EBD3:     Me(36) = Me(36) & "=Minimize#"
  loc_F1EBDC:   Else
  loc_F1EBED:     If CBool(IsZoomed(arg_C)) Then
  loc_F1EBF9:       Me(36) = Me(36) & "=Maximize#"
  loc_F1EC02:     Else
  loc_F1EC13:       If CBool(IsWindowVisible(arg_C)) Then
  loc_F1EC1F:         Me(36) = Me(36) & "=Not Active#"
  loc_F1EC28:       Else
  loc_F1EC39:         If CBool(IsWindowEnabled(arg_C)) Then
  loc_F1EC45:           Me(36) = Me(36) & "=Active#"
  loc_F1EC4B:         End If
  loc_F1EC4B:       End If
  loc_F1EC4B:     End If
  loc_F1EC4B:   End If
  loc_F1EC4B: End If
  loc_F1EC50: End Sub
End Sub

Public Sub Proc_156_7_E5BE3C(arg_C) 'E5BE3C
  'Data Table: 41C240
  loc_E5BE33: PostMessage(FindWindow(0, arg_C), &H10, 0, 0)
  loc_E5BE39: Exit Sub
End Sub

Public Sub Proc_156_8_EA8134(arg_C, arg_10) 'EA8134
  'Data Table: 41C240
  loc_EA80CF: For Each var_88 In Me.Global.Forms
  loc_EA810E:   If (((Form.Name <> arg_C) And (Form.Name <> arg_10)) And Not(TypeOf var_88 Is arg_28)) Then
  loc_EA811E:     Me.Global.Unload var_88
  loc_EA8126:   End If
  loc_EA8129: Next
  loc_EA8131: Exit Sub
End Sub

Public Sub Proc_156_9_F1160C(arg_C) 'F1160C
  'Data Table: 41C240
  Dim var_94 As Long
  Dim var_A4 As Variant
  Dim var_D8 As String
  Dim var_B4 As Variant
  loc_F1152C: On Error Goto loc_F115C9
  loc_F11532: var_90 = arg_C
  loc_F11538: Me.ListBox.Clear
  loc_F1153D: ' Referenced from: F115C5
  loc_F11547: If (Len(var_90) > 0) Then
  loc_F1155C:   var_94 = InStr(1, var_90, "#", 0)
  loc_F11573:   var_B4 = Left(var_90, (var_94 - 1))
  loc_F11591:   var_A4 = var_90
  loc_F11599:   var_D4 = Mid(var_A4, (var_94 + 1), var_B4)
  loc_F115A2:   var_90 = CStr(var_D4)
  loc_F115B7:   var_D8 = "  " & CStr(var_B4)
  loc_F115BD:   Me.ListBox.AddItem var_D8, var_A4
  loc_F115C5:   GoTo loc_F1153D
  loc_F115C8: End If
  loc_F115C8: Exit Sub
  loc_F115C9: ' Referenced from: F1152C
  loc_F115D1: Set var_DC = Err()
  loc_F115D7: Call 0.Method_arg_2C (var_D8)
  loc_F115F8: MsgBox(CVar(var_D8), &H40, "Menu List...", var_EC, var_10C)
  loc_F1160B: Exit Sub
End Sub
