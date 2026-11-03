Private var_98 As New cStringBuilder
Private var_8C As New cStringBuilder
Private var_B4 As New cStringBuilder
Private var_90 As New cStringBuilder

Public Sub Proc_343_0_E05B7C
  'Data Table: 41DFEC
  loc_E05B75: var_88 = Me(0)
  loc_E05B78: Exit Sub
End Sub

Public Sub Proc_343_1_E05BBC
  'Data Table: 41DFEC
  loc_E05BB3: Me(0) = vbNullString
  loc_E05BB8: Exit Sub
End Sub

Public Sub Proc_343_2_EC6BA0(arg_C) 'EC6BA0
  'Data Table: 41DFEC
  Dim var_8C As Long
  loc_EC6B05: var_8C = 1
  loc_EC6B0D: Me(0) = vbNullString
  loc_EC6B14: On Error Resume Next
  loc_EC6B1F: Proc_343_11_F68D6C(arg_C, var_8C)
  loc_EC6B41: var_DC = Mid(arg_C, var_8C, 1) 'Variant
  loc_EC6B55: If (var_DC = "{") Then
  loc_EC6B65:   Set var_88 = Proc_343_3_1068804(arg_C, var_8C)
  loc_EC6B6B: Else
  loc_EC6B78:   If (var_DC = "[") Then
  loc_EC6B88:     Set var_88 = Proc_343_4_107DC94(arg_C, var_8C)
  loc_EC6B8E:   Else
  loc_EC6B95:     Me(0) = "Invalid JSON"
  loc_EC6B9A:   End If
  loc_EC6B9A: End If
  loc_EC6B9E: Exit Sub
End Sub

Public Sub Proc_343_3_1068804(arg_C, arg_10) '1068804
  'Data Table: 41DFEC
  Dim var_BC As Integer
  Dim var_F0 As String
  Dim arg_10 As Long
  loc_106859C: Set var_88 = New 
  loc_10685A7: Proc_343_11_F68D6C(arg_C)
  loc_10685AE: var_BC = 1
  loc_10685D8: If CBool(Mid(arg_C, arg_10, var_BC) <> "{") Then
  loc_10685E6:   var_F0 = Me(0) & "Invalid Object at position "
  loc_1068623:   Me(0) = CStr(CVar(var_F0 & CStr(arg_10) & " : ") & Mid(arg_C, arg_10, var_BC) & vbCrLf)
  loc_1068641:   Exit Sub
  loc_1068642: End If
  loc_106864F: arg_10 = (arg_10 + 1)
  loc_1068654: ' Referenced from: 10687FB
  loc_106865C: Proc_343_11_F68D6C(arg_C, arg_10)
  loc_106868D: If ("}" = Mid(arg_C, arg_10, 1)) Then
  loc_106869B:   arg_10 = (arg_10 + 1)
  loc_10686A0:   GoTo loc_10687FE
  loc_10686A6: Else
  loc_10686D2:   If ("," = Mid(arg_C, arg_10, 1)) Then
  loc_10686E0:     arg_10 = (arg_10 + 1)
  loc_10686EB:     Proc_343_11_F68D6C(arg_C, arg_10, arg_10)
  loc_10686F3:   Else
  loc_10686FD:     If (arg_10 > Len(arg_C)) Then
  loc_106871E:       var_BC = Right(arg_C, &H14)
  loc_1068734:       Me(0) = CStr(CVar(Me(0) & "Missing '}':     ") & var_BC & vbCrLf)
  loc_106874A:     Else
  loc_106874A:     End If
  loc_106874A:   End If
  loc_1068759:   var_8C = Proc_343_10_10263D8(arg_C, arg_10, arg_10)
  loc_106875E:   On Error Resume Next
  loc_106876C:   Proc_343_5_F2D89C(var_BC, arg_C, arg_10)
  loc_106877F:   Call 0.Method_arg_28 (var_8C, var_BC)
  loc_1068791:   Set var_11C = Err()
  loc_1068797:   Call 0.Method_arg_1C (var_120, arg_10)
  loc_10687A8:   If (var_120 <> 0) Then
  loc_10687BA:     Set var_11C = Err()
  loc_10687C0:     Call 0.Method_arg_2C (var_F0, Me(0))
  loc_10687DE:     Me(0) = arg_10 & var_F0 & ":   " & var_8C & vbCrLf
  loc_10687F7:   Else
  loc_10687FB:     GoTo loc_1068654
  loc_10687FE:   End If
  loc_10687FE: End If
  loc_10687FE: ' Referenced from: 10686A0
  loc_1068800: Exit Sub
End Sub

Public Sub Proc_343_4_107DC94(arg_C, arg_10) '107DC94
  'Data Table: 41DFEC
  Dim var_B8 As Integer
  Dim var_EC As String
  Dim var_100 As Variant
  Dim var_E8 As Variant
  Dim arg_10 As Long
  Dim var_C8 As Variant
  Dim var_88 As Collection
  loc_107DA08: Set var_88 = New 
  loc_107DA13: Proc_343_11_F68D6C(arg_C)
  loc_107DA44: If CBool(Mid(arg_C, arg_10, 1) <> "[") Then
  loc_107DA52:   var_EC = Me(0) & "Invalid Array at position "
  loc_107DA81:   var_E8 = (" : " + Mid(arg_C, arg_10, 20))
  loc_107DA93:   Me(0) = CStr(CVar(var_EC & CStr(arg_10)) & var_E8 & vbCrLf)
  loc_107DAB1:   Exit Sub
  loc_107DAB2: End If
  loc_107DABF: arg_10 = (arg_10 + 1)
  loc_107DAC4: ' Referenced from: 107DC8B
  loc_107DACC: Proc_343_11_F68D6C(arg_C, arg_10)
  loc_107DAFD: If ("]" = Mid(arg_C, arg_10, 1)) Then
  loc_107DB0B:   arg_10 = (arg_10 + 1)
  loc_107DB10:   GoTo loc_107DC8E
  loc_107DB16: Else
  loc_107DB42:   If ("," = Mid(arg_C, arg_10, 1)) Then
  loc_107DB50:     arg_10 = (arg_10 + 1)
  loc_107DB5B:     Proc_343_11_F68D6C(arg_C, arg_10, arg_10)
  loc_107DB63:   Else
  loc_107DB6D:     If (arg_10 > Len(arg_C)) Then
  loc_107DB7B:       var_C8 = CVar(Me(0) & "Missing ']':     ") 'String
  loc_107DB8E:       var_B8 = Right(arg_C, &H14)
  loc_107DB96:       var_E8 = var_C8 & var_B8 
  loc_107DB9F:       var_100 = var_E8 & vbCrLf 
  loc_107DBA4:       Me(0) = CStr(var_100)
  loc_107DBBA:     Else
  loc_107DBBA:     End If
  loc_107DBBA:   End If
  loc_107DBBE:   On Error Resume Next
  loc_107DBCC:   Proc_343_5_F2D89C(var_B8, arg_C, arg_10)
  loc_107DBE0:   var_88.Add var_B8, var_C8, var_E8, var_100
  loc_107DBFA:   Set var_134 = Err()
  loc_107DC00:   Call 0.Method_arg_1C (var_138, arg_10)
  loc_107DC11:   If (var_138 <> 0) Then
  loc_107DC23:     Set var_134 = Err()
  loc_107DC29:     Call 0.Method_arg_2C (var_EC, Me(0))
  loc_107DC65:     Me(0) = CStr(CVar(arg_10 & var_EC & ":   ") & Mid(arg_C, arg_10, 20) & vbCrLf)
  loc_107DC87:   Else
  loc_107DC8B:     GoTo loc_107DAC4
  loc_107DC8E:   End If
  loc_107DC8E: End If
  loc_107DC8E: ' Referenced from: 107DB10
  loc_107DC90: Exit Sub
End Sub

Public Sub Proc_343_5_F2D89C
  'Data Table: 41DFEC
  Dim var_C4 As Variant
  loc_F2D792: Proc_343_11_F68D6C(arg_10)
  loc_F2D7B2: var_E4 = Mid(arg_10, arg_14, 1) 'Variant
  loc_F2D7C4: If (var_E4 = "{") Then
  loc_F2D7D2:   var_94 = Proc_343_3_1068804(arg_10, arg_14) 'Address Function
  loc_F2D7D9: Else
  loc_F2D7E4:   If (var_E4 = "[") Then
  loc_F2D7F2:     var_94 = Proc_343_4_107DC94(arg_10, arg_14) 'Address Function
  loc_F2D7F9:   Else
  loc_F2D804:     If Not (var_E4 = """") Then
  loc_F2D812:       If (var_E4 = "'") Then
  loc_F2D815:       End If
  loc_F2D820:       var_C4 = CVar(Proc_343_6_10D6170(arg_10, arg_14)) 'String
  loc_F2D823:       var_94 = var_C4 'Variant
  loc_F2D82A:     Else
  loc_F2D835:       If Not (var_E4 = "t") Then
  loc_F2D843:         If (var_E4 = "f") Then
  loc_F2D846:         End If
  loc_F2D855:         var_94 = Proc_343_8_F1BF2C(arg_10, arg_14) 'Variant
  loc_F2D85C:       Else
  loc_F2D867:         If (var_E4 = "n") Then
  loc_F2D873:           Proc_343_9_EEF368(var_C4, arg_10)
  loc_F2D87B:           var_94 = var_C4 'Variant
  loc_F2D882:         Else
  loc_F2D88B:           Proc_343_7_EBE080(var_C4, arg_10, arg_14)
  loc_F2D893:           var_94 = var_C4 'Variant
  loc_F2D897:         End If
  loc_F2D897:       End If
  loc_F2D897:     End If
  loc_F2D897:   End If
  loc_F2D897: End If
  loc_F2D897: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_343_6_10D6170(arg_C, arg_10) '10D6170
  'Data Table: 41DFEC
  Dim arg_10 As Long
  loc_10D5E82: Proc_343_11_F68D6C(arg_C)
  loc_10D5EA3: var_8C = CStr(Mid(arg_C, arg_10, 1))
  loc_10D5EB6: arg_10 = (arg_10 + 1)
  loc_10D5EB9: ' Referenced from: 10D614D
  loc_10D5ECB: If ((arg_10 > 0) And (arg_10 <= Len(arg_C))) Then
  loc_10D5EF7:   var_DC = CStr(Mid(arg_C, arg_10, 1))
  loc_10D5F02:   If (var_DC = "\") Then
  loc_10D5F0E:     arg_10 = (arg_10 + 1)
  loc_10D5F2D:     var_90 = CStr(Mid(arg_C, arg_10, 1))
  loc_10D5F3A:     var_E0 = var_90
  loc_10D5F45:     If Not (var_E0 = """") Then
  loc_10D5F50:       If Not (var_E0 = "\") Then
  loc_10D5F5B:         If Not (var_E0 = "/") Then
  loc_10D5F66:           If (var_E0 = "'") Then
  loc_10D5F69:           End If
  loc_10D5F69:         End If
  loc_10D5F69:       End If
  loc_10D5F72:       Call var_98.Append(var_90)
  loc_10D5F80:       arg_10 = (arg_10 + 1)
  loc_10D5F86:     Else
  loc_10D5F8E:       If (var_E0 = "b") Then
  loc_10D5FA0:         Call var_98.Append("")
  loc_10D5FB1:         arg_10 = (arg_10 + 1)
  loc_10D5FB7:       Else
  loc_10D5FBF:         If (var_E0 = "f") Then
  loc_10D5FD1:           Call var_98.Append("")
  loc_10D5FE2:           arg_10 = (arg_10 + 1)
  loc_10D5FE8:         Else
  loc_10D5FF0:           If (var_E0 = "n") Then
  loc_10D6002:             Call var_98.Append(vbLf)
  loc_10D6013:             arg_10 = (arg_10 + 1)
  loc_10D6019:           Else
  loc_10D6021:             If (var_E0 = "r") Then
  loc_10D6033:               Call var_98.Append(vbCr)
  loc_10D6044:               arg_10 = (arg_10 + 1)
  loc_10D604A:             Else
  loc_10D6052:               If (var_E0 = "t") Then
  loc_10D6064:                 Call var_98.Append("	")
  loc_10D6075:                 arg_10 = (arg_10 + 1)
  loc_10D607B:               Else
  loc_10D6083:                 If (var_E0 = "u") Then
  loc_10D608F:                   arg_10 = (arg_10 + 1)
  loc_10D60DE:                   Call var_98.Append(CStr(ChrW(CLng(Val("&h" & CStr(Mid(arg_C, arg_10, 4)))))))
  loc_10D60F6:                   arg_10 = (arg_10 + 4)
  loc_10D60F9:                 End If
  loc_10D60F9:               End If
  loc_10D60F9:             End If
  loc_10D60F9:           End If
  loc_10D60F9:         End If
  loc_10D60F9:       End If
  loc_10D60F9:     End If
  loc_10D60FC:   Else
  loc_10D6104:     If (var_DC = var_8C) Then
  loc_10D6110:       arg_10 = (arg_10 + 1)
  loc_10D6124:       var_88 = var_98.toString
  loc_10D612C:       Set var_98 = Nothing
  loc_10D612F:       Exit Sub
  loc_10D6133:     Else
  loc_10D613C:       Call var_98.Append(var_90)
  loc_10D614A:       arg_10 = (arg_10 + 1)
  loc_10D614D:     End If
  loc_10D614D:   End If
  loc_10D614D:   GoTo loc_10D5EB9
  loc_10D6150: End If
  loc_10D6161: var_88 = var_98.toString
  loc_10D6169: Set var_98 = Nothing
  loc_10D616C: Exit Sub
End Sub

Public Sub Proc_343_7_EBE080
  'Data Table: 41DFEC
  Dim var_CC As Integer
  Dim arg_14 As Long
  loc_EBDFEE: Proc_343_11_F68D6C(arg_10)
  loc_EBDFF3: ' Referenced from: EBE079
  loc_EBE005: If ((arg_14 > 0) And (arg_14 <= Len(arg_10))) Then
  loc_EBE024:   var_9C = CStr(Mid(arg_10, arg_14, 1))
  loc_EBE042:   If CBool(InStr(1, "+-0123456789.eE", var_9C, 0)) Then
  loc_EBE04C:     var_98 = var_98 & var_9C
  loc_EBE058:     arg_14 = (arg_14 + 1)
  loc_EBE05E:   Else
  loc_EBE069:     Call var_CC = CDec(var_98)
  loc_EBE071:     var_94 = 1 'Variant
  loc_EBE075:     Result = arg_10:   Exit Sub
  loc_EBE079:   End If
  loc_EBE079:   GoTo loc_EBDFF3
  loc_EBE07C: End If
  loc_EBE07C: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_343_8_F1BF2C(arg_C, arg_10) 'F1BF2C
  'Data Table: 41DFEC
  Dim var_B8 As Integer
  Dim var_86 As Integer
  Dim arg_10 As Long
  loc_F1BE42: Proc_343_11_F68D6C(arg_C)
  loc_F1BE71: If (Mid(arg_C, arg_10, 4) = "true") Then
  loc_F1BE76:   var_86 = &HFF
  loc_F1BE82:   arg_10 = (arg_10 + 4)
  loc_F1BE88: Else
  loc_F1BE88:   var_B8 = 5
  loc_F1BEB2:   If (Mid(arg_C, arg_10, var_B8) = "false") Then
  loc_F1BEB7:     var_86 = 0
  loc_F1BEC3:     arg_10 = (arg_10 + 5)
  loc_F1BEC9:   Else
  loc_F1BF0F:     Me(0) = CStr(CVar(Me(0) & "Invalid Boolean at position " & CStr(arg_10) & " :     ") & Mid(arg_C, arg_10, var_B8) & vbCrLf)
  loc_F1BF2B:   End If
  loc_F1BF2B: End If
  loc_F1BF2B: End Sub
End Sub

Public Sub Proc_343_9_EEF368
  'Data Table: 41DFEC
  Dim var_C4 As Integer
  Dim arg_14 As Long
  loc_EEF2B6: Proc_343_11_F68D6C(arg_10)
  loc_EEF2BB: var_C4 = 4
  loc_EEF2E5: If (Mid(arg_10, arg_14, var_C4) = "null") Then
  loc_EEF2EC:   var_94 = Null 'Variant
  loc_EEF2F9:   arg_14 = (arg_14 + 4)
  loc_EEF2FF: Else
  loc_EEF345:   Me(0) = CStr(CVar(Me(0) & "Invalid null value at position " & CStr(arg_14) & " :   ") & Mid(arg_10, arg_14, var_C4) & vbCrLf)
  loc_EEF361: End If
  loc_EEF361: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_343_10_10263D8(arg_C, arg_10) '10263D8
  'Data Table: 41DFEC
  Dim var_8A As Integer
  Dim arg_10 As Long
  Dim var_8C As Integer
  loc_10261BE: Proc_343_11_F68D6C(arg_C)
  loc_10261C3: ' Referenced from: 10263D1
  loc_10261D5: If ((arg_10 > 0) And (arg_10 <= Len(arg_C))) Then
  loc_10261F4:   var_90 = CStr(Mid(arg_C, arg_10, 1))
  loc_1026201:   var_D4 = var_90
  loc_102620C:   If (var_D4 = """") Then
  loc_1026213:     var_8A = Not(var_8A)
  loc_102621F:     arg_10 = (arg_10 + 1)
  loc_1026226:     If Not(var_8A) Then
  loc_102622F:       Proc_343_11_F68D6C(arg_C, arg_10, arg_10)
  loc_102625E:       If CBool(Mid(arg_C, arg_10, 1) <> ":") Then
  loc_102628B:         Me(0) = Me(0) & "Invalid Key at position " & CStr(arg_10) & " : " & var_88 & vbCrLf
  loc_10262A1:       Else
  loc_10262A1:       End If
  loc_10262A4:     Else
  loc_10262AC:       If (var_D4 = "'") Then
  loc_10262B3:         var_8C = Not(var_8C)
  loc_10262BF:         arg_10 = (arg_10 + 1)
  loc_10262C6:         If Not(var_8C) Then
  loc_10262CF:           Proc_343_11_F68D6C(arg_C, arg_10, arg_10)
  loc_10262FE:           If CBool(Mid(arg_C, arg_10, 1) <> ":") Then
  loc_102632B:             Me(0) = Me(0) & "Invalid Key at position " & CStr(arg_10) & " :     " & var_88 & vbCrLf
  loc_1026341:           Else
  loc_1026341:           End If
  loc_1026344:         Else
  loc_102634C:           If (var_D4 = ":") Then
  loc_1026358:             arg_10 = (arg_10 + 1)
  loc_1026364:             If (Not(var_8A) And Not(var_8C)) Then
  loc_1026367:               GoTo loc_10263D4
  loc_102636D:             Else
  loc_1026374:               var_88 = var_88 & var_90
  loc_1026377:             End If
  loc_102637A:           Else
  loc_10263B5:             If CBool(InStr(1, vbCrLf & vbCr & vbLf & "	" & " ", var_90, 0)) Then
  loc_10263B8:               GoTo loc_10263C5
  loc_10263BB:             End If
  loc_10263C2:             var_88 = var_88 & var_90
  loc_10263C5:             ' Referenced from:           10263B8
  loc_10263CE:             arg_10 = (arg_10 + 1)
  loc_10263D1:           End If
  loc_10263D1:         End If
  loc_10263D1:       End If
  loc_10263D1:       GoTo loc_10261C3
  loc_10263D4:       ' Referenced from:     1026367
  loc_10263D4:     End If
  loc_10263D4:   End If
  loc_10263D4: End If
  loc_10263D4: Exit Sub
End Sub

Public Sub Proc_343_11_F68D6C(arg_C, arg_10) 'F68D6C
  'Data Table: 41DFEC
  Dim var_88 As Integer
  Dim var_86 As Integer
  Dim var_8A As Integer
  Dim arg_10 As Long
  loc_F68C30: ' Referenced from: F68D68
  loc_F68C42: If ((arg_10 > 0) And (arg_10 <= Len(arg_C))) Then
  loc_F68C60:   var_DC = Mid(arg_C, arg_10, 1) 'Variant
  loc_F68C72:   If Not (var_DC = vbCr) Then
  loc_F68C80:     If (var_DC = vbLf) Then
  loc_F68C83:     End If
  loc_F68C87:     If Not(var_8A) Then
  loc_F68C8C:       var_88 = 0
  loc_F68C91:       var_86 = 0
  loc_F68C94:     End If
  loc_F68C97:   Else
  loc_F68CA2:     If Not (var_DC = "	") Then
  loc_F68CB0:       If Not (var_DC = " ") Then
  loc_F68CBE:         If Not (var_DC = "(") Then
  loc_F68CCC:           If (var_DC = ")") Then
  loc_F68CCF:           End If
  loc_F68CCF:         End If
  loc_F68CCF:       End If
  loc_F68CD2:     Else
  loc_F68CDD:       If (var_DC = "/") Then
  loc_F68CE4:         If Not(var_8A) Then
  loc_F68CEA:           If var_88 Then
  loc_F68CEF:             var_88 = 0
  loc_F68CF4:             var_86 = &HFF
  loc_F68CFA:           Else
  loc_F68CFC:             var_88 = &HFF
  loc_F68D01:             var_86 = 0
  loc_F68D06:             var_8A = 0
  loc_F68D09:           End If
  loc_F68D0C:         Else
  loc_F68D0F:           If var_88 Then
  loc_F68D14:             var_8A = 0
  loc_F68D19:             var_88 = 0
  loc_F68D1E:             var_86 = 0
  loc_F68D21:           End If
  loc_F68D21:         End If
  loc_F68D24:       Else
  loc_F68D2F:         If (var_DC = "*") Then
  loc_F68D35:           If var_88 Then
  loc_F68D3A:             var_88 = 0
  loc_F68D3F:             var_86 = &HFF
  loc_F68D44:             var_8A = &HFF
  loc_F68D4A:           Else
  loc_F68D4C:             var_88 = &HFF
  loc_F68D4F:           End If
  loc_F68D52:         Else
  loc_F68D56:           If Not(var_86) Then
  loc_F68D59:             GoTo loc_F68D6B
  loc_F68D5C:           End If
  loc_F68D5C:         End If
  loc_F68D5C:       End If
  loc_F68D5C:     End If
  loc_F68D5C:   End If
  loc_F68D65:   arg_10 = (arg_10 + 1)
  loc_F68D68:   GoTo loc_F68C30
  loc_F68D6B:   ' Referenced from: F68D59
  loc_F68D6B: End If
  loc_F68D6B: Exit Sub
End Sub

Public Sub Proc_343_12_1146160(arg_C) '1146160
  'Data Table: 41DFEC
  Dim var_90 As Long
  Dim var_AE As Integer
  Dim var_F4 As Variant
  loc_1145DF8: var_90 = VarType(arg_C)
  loc_1145E04: If (var_90 = 1) Then
  loc_1145E16:   Call var_8C.Append("null")
  loc_1145E1E:   GoTo loc_1146140
  loc_1145E21: End If
  loc_1145E2A: If (var_90 = 7) Then
  loc_1145E4D:   Call var_8C.Append("""" & CStr(arg_C) & """")
  loc_1145E5B:   GoTo loc_1146140
  loc_1145E5E: End If
  loc_1145E67: If (var_90 = 8) Then
  loc_1145E8A:   Call var_8C.Append(var_90 & Proc_343_13_1107630(arg_C, """") & """")
  loc_1145E98:   GoTo loc_1146140
  loc_1145E9B: End If
  loc_1145EA4: If (var_90 = 9) Then
  loc_1145EBF:   If (TypeName(arg_C) = "Dictionary") Then
  loc_1145ED1:     Call var_8C.Append("{")
  loc_1145EE2:     var_C4 = arg_C.keys 'Variant
  loc_1145EFC:     var_F4 = (arg_C.Count - 1)
  loc_1145F05:     For var_FC = 0 To CLng(var_F4): var_B4 = var_FC 'Long
  loc_1145F0E:       If &HFF Then
  loc_1145F13:         var_AE = 0
  loc_1145F19:       Else
  loc_1145F28:         Call var_8C.Append(",")
  loc_1145F30:       End If
  loc_1145F40:       var_10C = var_C4(var_B4) 'Variant
  loc_1145F63:       VarLateMemCallLdRfVar
  loc_1145F82:       Call var_8C.Append(CStr(var_AE & CVar(Proc_343_12_1146160(arg_C, var_10C, """" & var_10C & """:"))))
  loc_1145F9A:     Next var_FC 'Long
  loc_1145FAE:     Call var_8C.Append("}")
  loc_1145FB6:     GoTo loc_1146054
  loc_1145FB9:   End If
  loc_1145FCC:   If (TypeName(arg_C) = "Collection") Then
  loc_1145FDE:     Call var_8C.Append("[")
  loc_1145FEF:     For Each var_16C In arg_C
  loc_1145FF8:       If var_AE Then
  loc_1145FFD:         var_AE = 0
  loc_1146003:       Else
  loc_1146012:         Call var_8C.Append(",")
  loc_114601A:       End If
  loc_114602C:       Call var_8C.Append(Proc_343_12_1146160(var_16C))
  loc_1146037:     Next
  loc_114604C:     Call var_8C.Append("]")
  loc_1146054:     ' Referenced from: 1145FB6
  loc_1146054:   End If
  loc_1146057: Else
  loc_1146060:   If (var_90 = &HB) Then
  loc_114606B:     If CBool(arg_C) Then
  loc_114607D:       Call var_8C.Append("true")
  loc_1146088:     Else
  loc_1146097:       Call var_8C.Append("false")
  loc_114609F:     End If
  loc_11460A2:   Else
  loc_11460AB:     If Not (var_90 = &HC) Then
  loc_11460B7:       If Not (var_90 = &H2000) Then
  loc_11460C3:         If (var_90 = &H200C) Then
  loc_11460C6:         End If
  loc_11460C6:       End If
  loc_11460CE:       var_F4 = vbNullString
  loc_11460DF:       Proc_343_14_103D244(var_13C, arg_C, 1)
  loc_11460F2:       Call var_8C.Append(CStr(var_13C))
  loc_1146106:     Else
  loc_1146134:       Call var_8C.Append(Replace(CStr(arg_C), ",", ".", 1, -1, 0))
  loc_1146140:     End If
  loc_1146140:   End If
  loc_1146140: End If
  loc_1146140: ' Referenced from: 1145E98
  loc_1146140: ' Referenced from: 1145E5B
  loc_1146140: ' Referenced from: 1145E1E
  loc_1146151: var_88 = var_8C.toString
  loc_1146159: Set var_8C = Nothing
  loc_114615C: Exit Sub
End Sub

Public Sub Proc_343_13_1107630(arg_C) '1107630
  'Data Table: 41DFEC
  Dim var_D0 As Variant
  Dim var_BA As Integer
  Dim var_180 As Variant
  loc_1107329: ReDim var_C0(0 To 7)
  loc_1107340: var_C0(0) = 34
  loc_110734E: var_C0(1) = 92
  loc_110735C: var_C0(2) = 47
  loc_110736A: var_C0(3) = 8
  loc_1107378: var_C0(4) = 12
  loc_1107386: var_C0(5) = 10
  loc_1107394: var_C0(6) = 13
  loc_11073A2: var_C0(7) = 9
  loc_11073C6: ReDim var_C0(0 To 7)
  loc_11073DD: var_C0(0) = 34
  loc_11073EB: var_C0(1) = 92
  loc_11073F9: var_C0(2) = 47
  loc_1107407: var_C0(3) = 98
  loc_1107415: var_C0(4) = 102
  loc_1107423: var_C0(5) = 110
  loc_1107431: var_C0(6) = 114
  loc_110743F: var_C0(7) = 116
  loc_110746A: For var_158 = 1 To CLng(Len(arg_C)): var_90 = var_158 'Long
  loc_1107472:   var_BA = &HFF
  loc_110748C:   var_B8 = CStr(Mid(arg_C, var_90, 1))
  loc_11074A3:   For var_170 = 0 To 7: var_94 = var_170 'Long
  loc_11074D6:     If (CVar(var_B8) = Chr(CLng(Array(var_C0)(var_94)))) Then
  loc_110750A:       Call var_8C.Append(CStr("\" & Chr(CLng(Array(var_C0)(var_94)))))
  loc_110751D:       var_BA = 0
  loc_1107520:       Exit For
  loc_1107523:     End If
  loc_1107526:   Next var_170 'Long
  loc_110752B:   ' Referenced from: 1107520
  loc_110752E:   If var_BA Then
  loc_110753C:     var_194 = CVar(AscW(var_B8)) 'Variant
  loc_1107560:     If CBool((var_194 > 31) And (var_194 < 127)) Then
  loc_110756C:       Call var_8C.Append(var_B8)
  loc_1107574:     Else
  loc_1107577:       var_D0 = -1
  loc_1107597:       If CBool((var_194 > 31) Or (var_194 < &HFFFF)) Then
  loc_11075C1:         var_180 = (4 - Len(Hex(var_194)))
  loc_11075F3:         Call var_8C.Append(CStr("\u" & String(CLng((var_194 > 31) Or (var_194 < &HFFFF)), "0") & Hex(var_194)))
  loc_110760A:       End If
  loc_110760A:     End If
  loc_110760A:   End If
  loc_110760D: Next var_158 'Long
  loc_1107623: var_88 = var_8C.toString
  loc_110762B: Set var_8C = Nothing
  loc_110762E: Exit Sub
End Sub

Public Sub Proc_343_14_103D244
  'Data Table: 41DFEC
  Dim var_9C As Long
  Dim var_98 As Long
  Dim var_FC As Variant
  Dim var_148 As Variant
  loc_103D008: On Error Resume Next
  loc_103D010: CRefVarAry
  loc_103D01B: var_9C = LBound(arg_10, CInt(arg_14))
  loc_103D023: CRefVarAry
  loc_103D02F: var_98 = UBound(arg_10, CInt(arg_14))
  loc_103D03C: Set var_D8 = Err()
  loc_103D042: Call 0.Method_arg_1C (var_DC, var_98)
  loc_103D053: If (var_DC = 9) Then
  loc_103D068:   var_C4 = arg_1C & arg_18 'Variant
  loc_103D07F:   For var_104 = 1 To CLng(Len(var_C4)): var_A0 = var_104 'Long
  loc_103D090:     If (var_A0 <> 1) Then
  loc_103D0A1:       var_D4 = var_D4 & "," 'Variant
  loc_103D0A5:     End If
  loc_103D0B8:     var_114 = Mid(var_C4, var_A0, 1)
  loc_103D0C4:     var_D4 = var_D4 & var_114 'Variant
  loc_103D0D4:   Next var_104 'Long
  loc_103D105:   Call var_B4.Append(Proc_343_12_1146160(arg_10(var_D4)))
  loc_103D113: Else
  loc_103D127:   arg_1C = arg_1C & arg_18
  loc_103D13B:   Call var_B4.Append("[")
  loc_103D14E:   For var_138 = var_9C To var_98:   var_A0 = var_138 'Long
  loc_103D15C:     var_148 = var_A0
  loc_103D16C:     var_FC = (arg_14 + 1)
  loc_103D176:     Proc_343_14_103D244(var_114, arg_10, arg_1C & arg_18)
  loc_103D189:     Call var_B4.Append(CStr(var_114))
  loc_103D1A1:     If (var_A0 < var_98) Then
  loc_103D1B5:       Call var_B4.Append(",")
  loc_103D1BD:     End If
  loc_103D1C2:   Next var_138 'Long
  loc_103D1D8:   Call var_B4.Append("]")
  loc_103D1ED:   var_FC = (arg_14 - 2)
  loc_103D201:   arg_1C = Left(arg_1C, CLng(arg_1C & arg_18))
  loc_103D204: End If
  loc_103D20D: Set var_D8 = Err()
  loc_103D213: VCallFPR8
  loc_103D22F: var_94 = CVar(var_B4.toString) 'Variant
  loc_103D23A: Set var_B4 = Nothing
  loc_103D23F: Result = arg_10: Exit Sub
  loc_103D243: Exit Sub
End Sub

Public Sub Proc_343_15_10B171C(arg_C) '10B171C
  'Data Table: 41DFEC
  Dim var_94 As Long
  Dim var_1CC As Variant
  Dim var_21C As Variant
  Dim var_D8 As Variant
  loc_10B1495: var_94 = 0
  loc_10B14A0: If (arg_C = vbNullString) Then
  loc_10B14A6:   var_88 = "null"
  loc_10B14A9:   GoTo loc_10B171B
  loc_10B14AC: End If
  loc_10B14BB: var_D8 = "|"
  loc_10B14C7: var_E8 = Split(arg_C, var_D8, -1, 0)
  loc_10B14CF: var_B8 = var_E8 'Variant
  loc_10B14D9: CRefVarAry
  loc_10B14E5: CRefVarAry
  loc_10B14EC: For var_F0 = LBound(var_B8, 1) To UBound(var_B8, 1): var_94 = var_F0 'Long
  loc_10B14F5:   var_8C = vbNullString
  loc_10B1529:   var_114 = Split(CStr(var_D8), "~", -1, 0)
  loc_10B1531:   var_A8 = var_114 'Variant
  loc_10B1542:   CRefVarAry
  loc_10B154E:   CRefVarAry
  loc_10B155A:   For var_11C = LBound(var_A8, 1) To UBound(var_A8, 1) Step 2: var_98 = var_11C 'Long
  loc_10B15C6:     var_1CC = CVar((var_98 + 1)) 'Long
  loc_10B15E7:     var_21C = CVar(Proc_343_17_1054994(CStr(var_A8(var_1CC) & vbNullString), CVar(var_8C) & IIf((var_8C <> vbNullString), ",", vbNullString) & """" & var_A8(var_98) & """:""", LBound(var_A8, 1))) 'String
  loc_10B15F8:     var_8C = CStr(var_B8(var_94) & var_21C & """")
  loc_10B1620:   Next var_11C 'Long
  loc_10B169C:   Call var_90.Append(CStr(IIf((Trim(CVar(var_90.toString)) <> vbNullString), CVar("," & vbCrLf), vbNullString) & "{" & CVar(var_8C) & "}"))
  loc_10B16BC: Next var_F0 'Long
  loc_10B1705: var_88 = "( {""Records"": [" & vbCrLf & var_90.toString & vbCrLf & "], " & """RecordCount"":""" & CStr(var_94) & """ } )"
  loc_10B171B: ' Referenced from: 10B14A9
  loc_10B171B: Exit Sub
End Sub

Public Sub Proc_343_16_1096C00
  'Data Table: 41DFEC
  Dim var_94 As Long
  Dim ���L� As Recordset15
  Dim var_98 As Field20
  Dim var_1D4 As Variant
  loc_10969A0: On Error Goto loc_1096BFE
  loc_10969A8: var_94 = 0
  loc_10969BF: If (���L�.Recordset15.State = 0) Then
  loc_10969C5:   var_88 = "null"
  loc_10969C8:   GoTo loc_1096BFD
  loc_10969CB: End If
  loc_10969E8: If (���L�.EOF Or ���L�.Recordset15.BOF) Then
  loc_10969EE:   var_88 = "null"
  loc_10969F1:   GoTo loc_1096BFD
  loc_10969F4:   ' Referenced from: 1096BA0
  loc_10969F4: End If
  loc_1096A13: If (Not(���L�.EOF) And Not(���L�.Recordset15.BOF)) Then
  loc_1096A1F:   var_94 = (var_94 + 1)
  loc_1096A25:   var_8C = vbNullString
  loc_1096A3C:   For Each var_98 In ���L�.Recordset15.Fields
  loc_1096AC3:     var_1D4 = CVar(Proc_343_17_1054994(CStr(var_98.Value & vbNullString), CVar(var_8C) & IIf((var_8C <> vbNullString), ",", vbNullString) & """" & CVar(var_98.Name) & """:""")) 'String
  loc_1096AD4:     var_8C = CStr(var_94 & var_1D4 & """")
  loc_1096AFC:   Next
  loc_1096B7B:   Call var_90.Append(CStr(IIf((Trim(CVar(var_90.toString)) <> vbNullString), CVar("," & vbCrLf), vbNullString) & "{" & CVar(var_8C) & "}"))
  loc_1096B9B:   ���L�.Recordset15.MoveNext
  loc_1096BA0:   GoTo loc_10969F4
  loc_1096BA3: End If
  loc_1096BE7: var_88 = "( {""Records"": [" & vbCrLf & var_90.toString & vbCrLf & "], " & """RecordCount"":""" & CStr(var_94) & """ } )"
  loc_1096BFD: ' Referenced from: 10969F1
  loc_1096BFD: ' Referenced from: 10969C8
  loc_1096BFD: Exit Sub
  loc_1096BFE: ' Referenced from: 10969A0
  loc_1096BFE: Exit Sub
End Sub

Public Sub Proc_343_17_1054994(arg_C) '1054994
  'Data Table: 41DFEC
  Dim var_92 As Integer
  Dim var_E2 As Integer
  loc_1054734: For var_9C = 1 To Len(arg_C): var_8C = var_9C 'Long
  loc_105475E:   var_92 = Asc(CStr(Mid(arg_C, var_8C, 1)))
  loc_105476E:   var_E2 = var_92
  loc_1054777:   If (var_E2 = 8) Then
  loc_1054789:     Call var_90.Append("\b")
  loc_1054794:   Else
  loc_105479A:     If (var_E2 = 9) Then
  loc_10547AC:       Call var_90.Append("\t")
  loc_10547B7:     Else
  loc_10547BD:       If (var_E2 = &HA) Then
  loc_10547CF:         Call var_90.Append("\n")
  loc_10547DA:       Else
  loc_10547E0:         If (var_E2 = &HC) Then
  loc_10547F2:           Call var_90.Append("\f")
  loc_10547FD:         Else
  loc_1054803:           If (var_E2 = &HD) Then
  loc_1054815:             Call var_90.Append("\r")
  loc_1054820:           Else
  loc_1054826:             If (var_E2 = &H22) Then
  loc_1054838:               Call var_90.Append("\""")
  loc_1054843:             Else
  loc_1054849:               If (var_E2 = &H27) Then
  loc_105485B:                 Call var_90.Append("\'")
  loc_1054866:               Else
  loc_105486C:                 If (var_E2 = &H5C) Then
  loc_105487E:                   Call var_90.Append("\\")
  loc_1054889:                 Else
  loc_105488F:                   If Not (var_E2 = &H7B) Then
  loc_1054898:                     If (var_E2 = &H7D) Then
  loc_105489B:                     End If
  loc_10548DB:                     Call var_90.Append(CStr("\u" & Right("0000" & Hex(var_92), 4)))
  loc_10548F1:                   Else
  loc_10548F7:                     If Not (var_E2 < &H20) Then
  loc_1054900:                       If (var_E2 > &H7F) Then
  loc_1054903:                       End If
  loc_1054943:                       Call var_90.Append(CStr("\u" & Right("0000" & Hex(var_92), 4)))
  loc_1054959:                     Else
  loc_105496C:                       Call var_90.Append(Chr$(CLng(var_92)))
  loc_1054974:                     End If
  loc_1054974:                   End If
  loc_1054974:                 End If
  loc_1054974:               End If
  loc_1054974:             End If
  loc_1054974:           End If
  loc_1054974:         End If
  loc_1054974:       End If
  loc_1054974:     End If
  loc_1054974:   End If
  loc_1054977: Next var_9C 'Long
  loc_105498D: var_88 = var_90.toString
  loc_1054990: Exit Sub
  loc_1054991: Exit Sub
End Sub

Public Sub Proc_343_18_E01FB8
  'Data Table: 41DFEC
  loc_E01FAF: Me(0) = vbNullString
  loc_E01FB4: Exit Sub
End Sub
