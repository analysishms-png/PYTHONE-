
Public Sub Proc_303_0_FB9B68(arg_C, arg_10) 'FB9B68
  'Data Table: 41D3E8
  Dim var_19C As Long
  Dim var_234 As Long
  Dim var_244 As Long
  loc_FB99ED: var_19C = &H94
  loc_FB99F6: var_230 = Record Of arg_0 'Copy battery of vars to single variable
  loc_FB99FC: GetVersionEx(var_230)
  loc_FB9A08: var_19C = arg_0
  loc_FB9A14: If (var_18C = 1) Then
  loc_FB9A2A:   If ((var_198 = 4) And (var_194 < &HA)) Then
  loc_FB9A33:     Proc_303_0_FB9B68(arg_C, arg_10, var_230)
  loc_FB9A38:     Exit Sub
  loc_FB9A39:   End If
  loc_FB9A39: End If
  loc_FB9A42: If (Me(16) Is Nothing) Then
  loc_FB9A45:   Proc_303_16_11B912C(var_19C)
  loc_FB9A4A: End If
  loc_FB9A54: var_234 = GetKeyboardLayoutName(0)
  loc_FB9A5B: Me(28) = var_234
  loc_FB9A6F: ReDim Me(8)(0 To &H1FF)
  loc_FB9A7E: Me(12) = 0
  loc_FB9A88: Me(4) = 0
  loc_FB9A90: Me(0) = arg_C
  loc_FB9A95: ' Referenced from: FB9AE8
  loc_FB9A9F: If (Me(4) < Len(arg_C)) Then
  loc_FB9AA2:   Proc_303_1_E926AC(var_234)
  loc_FB9ABC:   If (Me(12) >= (UBound(Me(8), 1) - &H18)) Then
  loc_FB9ADE:     ReDim Preserve Me(8)(0 To ((UBound(Me(8), 1) + &H200) - 1))
  loc_FB9AE8:   End If
  loc_FB9AE8:   GoTo loc_FB9A95
  loc_FB9AEB: End If
  loc_FB9AF6: If (Me(12) > 0) Then
  loc_FB9B0C:   For var_23C = 0 To (Me(12) - 1): var_88 = var_23C 'Long
  loc_FB9B26:     var_244(0) = 1
  loc_FB9B30:     var_244 = 0
  loc_FB9B39:   Next var_23C 'Long
  loc_FB9B56:   SendInput(Me(12), Me(8)(0))
  loc_FB9B5F: End If
  loc_FB9B65: Exit Sub
End Sub

Public Sub Proc_303_1_E926AC
  'Data Table: 41D3E8
  loc_E9263B: Me(4) = (Me(4) + 1)
  loc_E92654: var_88 = Mid$(Me(0), Me(4), 1)
  loc_E9266E: If CBool(InStr(1, "+^, var_88, 0)) 'Long Then
  loc_E92674:   Proc_303_5_F8C88C(var_88)
  loc_E9267C: Else
  loc_E92684:   If (var_88 = "(") Then
  loc_E92687:     Proc_303_3_E95FF8()
  loc_E9268F:   Else
  loc_E92697:     If (var_88 = "{") Then
  loc_E9269A:       Proc_303_4_FA6170()
  loc_E926A2:     Else
  loc_E926A5:       Proc_303_2_EFA23C(var_88)
  loc_E926AA:     End If
  loc_E926AA:   End If
  loc_E926AA: End If
  loc_E926AA: Exit Sub
End Sub

Public Sub Proc_303_2_EFA23C(arg_C) 'EFA23C
  'Data Table: 41D3E8
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8E As Integer
  Dim var_8A As Integer
  Dim var_8C As Integer
  loc_EFA160: var_86 = AscW(arg_C)
  loc_EFA171: If ((var_86 >= 0) And (var_86 < 256)) Then
  loc_EFA17C:   If (arg_C = "~") Then
  loc_EFA185:     var_88 = CInt(&HD)
  loc_EFA18B:   Else
  loc_EFA19A:     var_8E = VkKeyScan(CByte(Asc(arg_C)))
  loc_EFA1A1:     var_88 = var_8E
  loc_EFA1A4:   End If
  loc_EFA1AA:   If (var_88 = &HFF) Then
  loc_EFA1B0:     Proc_303_7_EA8390(var_86, var_88, var_8E)
  loc_EFA1B8:   Else
  loc_EFA1D0:     If Proc_303_17_E19C48(CBool((CInt(Proc_303_9_E3ED8C(var_88, var_88)) And 1))) Then
  loc_EFA1D6:       var_94 = arg_C
  loc_EFA1E4:       If Not ("Z" > var_94 > "A") Then
  loc_EFA1F2:         If ("z" > var_94 > "a") Then
  loc_EFA1F5:         End If
  loc_EFA1F9:         var_8A = Not(var_8A)
  loc_EFA1FC:       End If
  loc_EFA1FC:     End If
  loc_EFA20C:     var_8C = CBool((CInt(Proc_303_9_E3ED8C(var_88, var_8A)) And 6))
  loc_EFA22B:     Proc_303_6_F6E69C(CInt(Proc_303_10_E05AC0(var_88, var_8C)), var_8A, 0)
  loc_EFA230:   End If
  loc_EFA233: Else
  loc_EFA236:   Proc_303_7_EA8390(var_86, var_8C)
  loc_EFA23B: End If
  loc_EFA23B: Exit Sub
End Sub

Public Sub Proc_303_3_E95FF8
  'Data Table: 41D3E8
  Dim var_88 As Long
  loc_E95F8C: var_88 = InStr(Me(4), Me(0), ")", 0)
  loc_E95F9E: If (var_88 > (Me(4) + 1)) Then
  loc_E95FB8:   For var_98 = 1 To ((var_88 - Me(4)) - 1): var_90 = var_98 'Long
  loc_E95FD6:     var_8C = Mid$(Me(0), (Me(4) + var_90), 1)
  loc_E95FDF:     Proc_303_2_EFA23C(var_8C, 1)
  loc_E95FE7:   Next var_98 'Long
  loc_E95FEF:   Me(4) = var_88
  loc_E95FF4: End If
  loc_E95FF4: Exit Sub
  loc_E95FF5: StAryRecCopy
End Sub

Public Sub Proc_303_4_FA6170
  'Data Table: 41D3E8
  Dim var_88 As Long
  Dim var_CC As Variant
  Dim var_A0 As Long
  Dim var_A2 As Integer
  Dim var_A6 As Integer
  Dim var_F2 As Integer
  Dim var_A4 As Integer
  Dim var_A8 As Integer
  loc_FA6002: var_88 = InStr((Me(4) + 2), Me(0), "}", 0)
  loc_FA6014: If (var_88 > (Me(4) + 1)) Then
  loc_FA6026:   var_CC = CVar(((var_88 - Me(4)) - 1)) 'Long
  loc_FA603F:   var_8C = Mid$(Me(0), (Me(4) + 1), var_CC)
  loc_FA6060:   var_DC = Split(var_8C, " ", -1, 0)
  loc_FA6068:   var_9C = var_DC 'Variant
  loc_FA6072:   CRefVarAry
  loc_FA607F:   If (UBound(var_9C, 1) > 0) Then
  loc_FA609B:     var_A0 = CLng(Val(CStr(var_9C(1))))
  loc_FA60A4:   End If
  loc_FA60AD:   If (var_A0 < 1) Then
  loc_FA60B5:     var_A0 = 1
  loc_FA60B8:   End If
  loc_FA60D2:   var_A2 = Proc_303_13_E5489C(CStr(var_9C(0)), var_A0)
  loc_FA60DE:   If var_A2 Then
  loc_FA60E9:     var_A6 = Proc_303_14_E5D188(var_8C, var_A2)
  loc_FA60EF:   Else
  loc_FA60FE:     var_F2 = VkKeyScan(CByte(Asc(var_8C)))
  loc_FA6105:     var_A2 = var_F2
  loc_FA6118:     var_A4 = CBool((CInt(Proc_303_9_E3ED8C(var_A2, var_A2, var_F2)) And 1))
  loc_FA612B:     var_A8 = CBool((CInt(Proc_303_9_E3ED8C(var_A2, var_A4, var_A6)) And 6))
  loc_FA6139:     var_A2 = CInt(Proc_303_10_E05AC0(var_A2, var_A8))
  loc_FA613C:   End If
  loc_FA6147:   For var_FC = 1 To var_A0: var_AC = var_FC 'Long
  loc_FA6159:     Proc_303_6_F6E69C(var_A2, var_A4, var_A6, var_A8)
  loc_FA6161:   Next var_FC 'Long
  loc_FA6169:   Me(4) = var_88
  loc_FA616E: End If
  loc_FA616E: Exit Sub
End Sub

Public Sub Proc_303_5_F8C88C(arg_C) 'F8C88C
  'Data Table: 41D3E8
  Dim var_8C As Long
  Dim var_98 As Long
  loc_F8C736: var_8C = Me(8)(Me(12))
  loc_F8C73C: var_90 = arg_C
  loc_F8C747: If (var_90 = "+") Then
  loc_F8C750:   var_8C(4) = CInt(&H10)
  loc_F8C760:   Me(24) = (Me(24) Or 1)
  loc_F8C768: Else
  loc_F8C770:   If (var_90 = "^") Then
  loc_F8C779:     var_8C(4) = CInt(&H11)
  loc_F8C789:     Me(24) = (Me(24) Or 2)
  loc_F8C791:   Else
  loc_F8C799:     If (var_90 = ") 'String Then
  loc_F8C7A2:       var_8C(4) = CInt(&H12)
  loc_F8C7B2:       Me(24) = (Me(24) Or 4)
  loc_F8C7B7:     End If
  loc_F8C7B7:   End If
  loc_F8C7B7: End If
  loc_F8C7CD: Me(12) = (Me(12) + 1)
  loc_F8C7D2: Proc_303_1_E926AC(0)
  loc_F8C7E5: var_98 = Me(8)(Me(12))
  loc_F8C7EB: var_9C = arg_C
  loc_F8C7F6: If (var_9C = "+") Then
  loc_F8C7FF:   var_98(4) = CInt(&H10)
  loc_F8C80F:   Me(24) = (Me(24) And -2)
  loc_F8C817: Else
  loc_F8C81F:   If (var_9C = "^") Then
  loc_F8C828:     var_98(4) = CInt(&H11)
  loc_F8C838:     Me(24) = (Me(24) And -3)
  loc_F8C840:   Else
  loc_F8C848:     If (var_9C = ") 'String Then
  loc_F8C851:       var_98(4) = CInt(&H12)
  loc_F8C861:       Me(24) = (Me(24) And -5)
  loc_F8C866:     End If
  loc_F8C866:   End If
  loc_F8C866: End If
  loc_F8C86B: var_98(8) = 2
  loc_F8C875: var_98 = 0
  loc_F8C886: Me(12) = (Me(12) + 1)
  loc_F8C88B: Exit Sub
End Sub

Public Sub Proc_303_6_F6E69C(arg_C, arg_10, arg_14, arg_18) 'F6E69C
  'Data Table: 41D3E8
  Dim var_90 As Long
  Dim var_98 As Long
  Dim var_9C As Long
  loc_F6E564: If (CBool((Me(24) And 1)) = 0) Then
  loc_F6E56A:   If arg_10 Then
  loc_F6E578:     Proc_303_8_E5C668(CInt(&H10))
  loc_F6E57D:   End If
  loc_F6E57D: End If
  loc_F6E580: If arg_18 Then
  loc_F6E58E:   Proc_303_8_E5C668(CInt(&H11), &HFF)
  loc_F6E59E:   Proc_303_8_E5C668(CInt(&H12), &HFF)
  loc_F6E5A3: End If
  loc_F6E5B1: var_90 = Me(8)(Me(12))
  loc_F6E5B7: var_90(4) = arg_C
  loc_F6E5BF: If arg_14 Then
  loc_F6E5C7:   var_90(8) = 1
  loc_F6E5CC: End If
  loc_F6E5D1: var_90 = 0
  loc_F6E5E2: Me(12) = (Me(12) + 1)
  loc_F6E5F5: var_98 = Me(8)(Me(12))
  loc_F6E5FB: var_98(4) = arg_C
  loc_F6E613: var_9C = MapVirtualKeyEx(CLng(arg_C), 0, Me(28))
  loc_F6E61B: var_98(6) = CInt(var_9C)
  loc_F6E62B: var_98(8) = (var_98(8) Or 2)
  loc_F6E635: var_98 = 0
  loc_F6E646: Me(12) = (Me(12) + 1)
  loc_F6E64E: If arg_18 Then
  loc_F6E65C:   Proc_303_8_E5C668(CInt(&H11), 0, var_98, var_9C)
  loc_F6E66C:   Proc_303_8_E5C668(CInt(&H12), 0, var_98)
  loc_F6E671: End If
  loc_F6E681: If (CBool((Me(24) And 1)) = 0) Then
  loc_F6E687:   If arg_10 Then
  loc_F6E695:     Proc_303_8_E5C668(CInt(&H10), 0, var_90)
  loc_F6E69A:   End If
  loc_F6E69A: End If
  loc_F6E69A: Exit Sub
End Sub

Public Sub Proc_303_7_EA8390(arg_C) 'EA8390
  'Data Table: 41D3E8
  Dim var_8C As Long
  Dim var_94 As Long
  loc_EA8312: var_8C = Me(8)(Me(12))
  loc_EA8317: var_8C(4) = 0
  loc_EA831F: var_8C(6) = arg_C
  loc_EA8329: var_8C(8) = 4
  loc_EA8333: var_8C = 0
  loc_EA8344: Me(12) = (Me(12) + 1)
  loc_EA8357: var_94 = Me(8)(Me(12))
  loc_EA835C: var_94(4) = 0
  loc_EA8364: var_94(6) = arg_C
  loc_EA836E: var_94(8) = 6
  loc_EA8378: var_94 = 0
  loc_EA8389: Me(12) = (Me(12) + 1)
  loc_EA838E: Exit Sub
End Sub

Public Sub Proc_303_8_E5C668(arg_C, arg_10) 'E5C668
  'Data Table: 41D3E8
  Dim var_8C As Long
  loc_E5C62E: var_8C = Me(8)(Me(12))
  loc_E5C634: var_8C(4) = arg_C
  loc_E5C63D: If Not(arg_10) Then
  loc_E5C645:   var_8C(8) = 2
  loc_E5C64A: End If
  loc_E5C64F: var_8C = 0
  loc_E5C660: Me(12) = (Me(12) + 1)
  loc_E5C665: Exit Sub
End Sub

Public Sub Proc_303_9_E3ED8C(arg_C) 'E3ED8C
  'Data Table: 41D3E8
  loc_E3ED5E: If (arg_C < 0) Then
  loc_E3ED73:   var_86 = CByte(((CLng(arg_C) + &H10000) / &H100)) 'Byte
  loc_E3ED7A: Else
  loc_E3ED83:   var_86 = CByte((arg_C / 256)) 'Byte
  loc_E3ED87: End If
  loc_E3ED87: Result =  Exit Sub 'Byte
End Sub

Public Sub Proc_303_10_E05AC0(arg_C) 'E05AC0
  'Data Table: 41D3E8
  loc_E05AB9: var_86 = CByte((arg_C And 255)) 'Byte
  loc_E05ABD: Result =  Exit Sub 'Byte
End Sub

Public Sub Proc_303_11_E0A98C(arg_C) 'E0A98C
  'Data Table: 41D3E8
  Dim var_86 As Integer
  loc_E0A988: var_86 = CInt(((arg_C And -65536) / &H10000))
  loc_E0A98B: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_303_12_E4C058(arg_C) 'E4C058
  'Data Table: 41D3E8
  Dim var_86 As Integer
  loc_E4C02F: If ((arg_C And &HFFFF) > &H7FFF) Then
  loc_E4C042:   var_86 = CInt(((arg_C And &HFFFF) - &H10000))
  loc_E4C048: Else
  loc_E4C052:   var_86 = CInt((arg_C And &HFFFF))
  loc_E4C055: End If
  loc_E4C055: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_303_13_E5489C(arg_C) 'E5489C
  'Data Table: 41D3E8
  Dim MemVar_918904 As Collection
  loc_E54868: On Error Resume Next
  loc_E54895: On Error GoTo 0
  loc_E5489A: Result CInt(MemVar_918904.Item(CVar(UCase$(arg_C)))) End Sub 'Integer
End Sub

Public Sub Proc_303_14_E5D188(arg_C) 'E5D188
  'Data Table: 41D3E8
  Dim MemVar_918904 As Collection
  loc_E5D148: On Error Resume Next
  loc_E5D175: On Error GoTo 0
  loc_E5D185: Result (CInt(MemVar_918904.Item(CVar(UCase$(arg_C)))) <> 0) End Sub 'Integer
End Sub

Public Sub Proc_303_15_E6C944(arg_C, arg_10, arg_14) 'E6C944
  'Data Table: 41D3E8
  loc_E6C916: If arg_14 Then
  loc_E6C934:   g_C, arg_10, var_C4, var_E4 arg_C, arg_10, var_C4, var_E4
  loc_E6C940: End If
  loc_E6C940: Exit Sub
End Sub

Public Sub Proc_303_16_11B912C
  'Data Table: 41D3E8
  loc_11B8CC8: Me(16) = New 
  loc_11B8CD2: Me(20) = New 
  loc_11B8CE8: Proc_303_15_E6C944(8, "BACKSPACE")
  loc_11B8D00: Proc_303_15_E6C944(8, "BS")
  loc_11B8D18: Proc_303_15_E6C944(8, "BKSP", 0)
  loc_11B8D30: Proc_303_15_E6C944(&H13, "BREAK", &HFF)
  loc_11B8D48: Proc_303_15_E6C944(&H14, "CAPSLOCK", 0)
  loc_11B8D60: Proc_303_15_E6C944(&H2E, "DELETE", &HFF)
  loc_11B8D78: Proc_303_15_E6C944(&H2E, "DEL", &HFF)
  loc_11B8D90: Proc_303_15_E6C944(&H28, "DOWN", &HFF)
  loc_11B8DA8: Proc_303_15_E6C944(&H23, "END", &HFF)
  loc_11B8DC0: Proc_303_15_E6C944(&HD, "ENTER", 0)
  loc_11B8DD8: Proc_303_15_E6C944(&H1B, "ESC", 0)
  loc_11B8DF0: Proc_303_15_E6C944(&H2F, "HELP", 0)
  loc_11B8E08: Proc_303_15_E6C944(&H24, "HOME", &HFF)
  loc_11B8E20: Proc_303_15_E6C944(&H2D, "INS", &HFF)
  loc_11B8E38: Proc_303_15_E6C944(&H2D, "INSERT", &HFF)
  loc_11B8E50: Proc_303_15_E6C944(&H25, "LEFT", &HFF)
  loc_11B8E68: Proc_303_15_E6C944(&H90, "NUMLOCK", &HFF)
  loc_11B8E80: Proc_303_15_E6C944(&H22, "PGDN", &HFF)
  loc_11B8E98: Proc_303_15_E6C944(&H21, "PGUP", &HFF)
  loc_11B8EB0: Proc_303_15_E6C944(&H13, "PAUSE", 0)
  loc_11B8EC8: Proc_303_15_E6C944(&H2A, "PRINT", &HFF)
  loc_11B8EE0: Proc_303_15_E6C944(&H2C, "PRTSC", &HFF)
  loc_11B8EF8: Proc_303_15_E6C944(&H2C, "PRTSCN", &HFF)
  loc_11B8F10: Proc_303_15_E6C944(&H2C, "PRINTSCRN", &HFF)
  loc_11B8F28: Proc_303_15_E6C944(&H2C, "PRINTSCREEN", &HFF)
  loc_11B8F40: Proc_303_15_E6C944(&H27, "RIGHT", &HFF)
  loc_11B8F58: Proc_303_15_E6C944(&H91, "SCROLLLOCK", 0)
  loc_11B8F70: Proc_303_15_E6C944(&H29, "SELECT", 0)
  loc_11B8F88: Proc_303_15_E6C944(9, "TAB", 0)
  loc_11B8FA0: Proc_303_15_E6C944(&H26, "UP", &HFF)
  loc_11B8FB8: Proc_303_15_E6C944(&H70, "F1", 0)
  loc_11B8FD0: Proc_303_15_E6C944(&H71, "F2", 0)
  loc_11B8FE8: Proc_303_15_E6C944(&H72, "F3", 0)
  loc_11B9000: Proc_303_15_E6C944(&H73, "F4", 0)
  loc_11B9018: Proc_303_15_E6C944(&H74, "F5", 0)
  loc_11B9030: Proc_303_15_E6C944(&H75, "F6", 0)
  loc_11B9048: Proc_303_15_E6C944(&H76, "F7", 0)
  loc_11B9060: Proc_303_15_E6C944(&H77, "F8", 0)
  loc_11B9078: Proc_303_15_E6C944(&H78, "F9", 0)
  loc_11B9090: Proc_303_15_E6C944(&H79, "F10", 0)
  loc_11B90A8: Proc_303_15_E6C944(&H7A, "F11", 0)
  loc_11B90C0: Proc_303_15_E6C944(&H7B, "F12", 0)
  loc_11B90D8: Proc_303_15_E6C944(&H7C, "F13", 0)
  loc_11B90F0: Proc_303_15_E6C944(&H7D, "F14", 0)
  loc_11B9108: Proc_303_15_E6C944(&H7E, "F15", 0)
  loc_11B9120: Proc_303_15_E6C944(&H7F, "F16", 0)
  loc_11B9128: Exit Sub
End Sub

Public Sub Proc_303_17_E19C48
  'Data Table: 41D3E8
  loc_E19C45: Result CBool((GetKeyState(&H14) And 1)) End Sub 'Integer
  loc_E19C46: Exit Sub
End Sub
