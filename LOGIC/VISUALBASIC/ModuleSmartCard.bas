
Public Sub Proc_275_0_E0B75C
  'Data Table: 422204
  loc_E0B74B: Me(0) = vbNullString
  loc_E0B755: Me(4) = 0
  loc_E0B75A: Exit Sub
End Sub

Public Sub Proc_275_1_E8E124(arg_C) 'E8E124
  'Data Table: 422204
  Dim var_DC As String
  loc_E8E0C6: For var_94 = 1 To CInt(Len(arg_C)): var_8A = var_94 'Integer
  loc_E8E0FD:   var_DC = Chr$(CLng((Asc(CStr(Mid(arg_C, CLng(var_8A), 1))) - &H1B)))
  loc_E8E101:   var_90 = var_90 & var_DC
  loc_E8E115: Next var_94 'Integer
  loc_E8E11D: var_88 = var_90
  loc_E8E120: Exit Sub
  loc_E8E121: StAryRecMove
End Sub

Public Sub Proc_275_2_E8D414(arg_C) 'E8D414
  'Data Table: 422204
  Dim var_DC As String
  loc_E8D3B6: For var_94 = 1 To CInt(Len(arg_C)): var_8A = var_94 'Integer
  loc_E8D3ED:   var_DC = Chr$(CLng((Asc(CStr(Mid(arg_C, CLng(var_8A), 1))) + &H1B)))
  loc_E8D3F1:   var_90 = var_90 & var_DC
  loc_E8D405: Next var_94 'Integer
  loc_E8D40D: var_88 = var_90
  loc_E8D410: Exit Sub
End Sub

Public Sub Proc_275_3_1210F84(arg_C, arg_10) '1210F84
  'Data Table: 422204
  Dim var_96 As Integer
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_130 As String
  loc_1210AC7: var_8C = arg_C
  loc_1210ACA: On Error Goto loc_1210F40
  loc_1210AD0: arg_20 = vbNullString
  loc_1210ADB: For var_9A = 0 To 7: var_8E = var_9A 'Integer
  loc_1210AF7:   Call 0.Method_arg_1C (var_8E, Me(0), Me(4))
  loc_1210AFF:   var_96 = var_9C
  loc_1210B08:   If (var_96 = 0) Then
  loc_1210B0B:     GoTo loc_1210B16
  loc_1210B0E:   End If
  loc_1210B11: Next var_9A 'Integer
  loc_1210B16: ' Referenced from: 1210B0B
  loc_1210B1C: If (var_96 = &HFF) Then
  loc_1210B38:   MsgBox("Reader Not Connected", &H10, var_DC, var_FC, var_11C)
  loc_1210B53:   Call 0.Method_arg_2C (0)
  loc_1210B58:   Result  End Sub 'Integer
  loc_1210B59: End If
  loc_1210B59: Proc_275_0_E0B75C()
  loc_1210B76: Call 0.Method_arg_28 (var_94, &HFF, Me(0))
  loc_1210B89: If (Me(4) = -3000) Then
  loc_1210B97:   var_DC = "Smart Card Verification"
  loc_1210BA7:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1210BAD:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1210BC8:   Call 0.Method_arg_2C (0, Me(4))
  loc_1210BCD:   Result var_BC End Sub 'Integer
  loc_1210BD1: Else
  loc_1210BDC:   If (Me(4) <> 0) Then
  loc_1210BF7:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1210C10:     Call 0.Method_arg_2C (0)
  loc_1210C15:     Result  End Sub 'Integer
  loc_1210C16:   End If
  loc_1210C16: End If
  loc_1210C16: Proc_275_0_E0B75C()
  loc_1210C52: var_FC = "000000"
  loc_1210C63: var_11C = Format(arg_18, var_FC)
  loc_1210C6B: var_12C = (1 + var_11C)
  loc_1210C9C: Call 0.Method_arg_20 (CStr(0), Proc_275_1_E8E124(CStr(var_12C), 1, Format(arg_10, "0000000.00")), Me(0), Me(4))
  loc_1210CC6: If (Me(4) = -3000) Then
  loc_1210CD4:   var_DC = "Smart Card Verification"
  loc_1210CE4:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1210CEA:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1210D05:   Call 0.Method_arg_2C (0, var_148)
  loc_1210D0A:   Result 1 End Sub 'Integer
  loc_1210D0E: Else
  loc_1210D19:   If (Me(4) <> 0) Then
  loc_1210D34:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1210D4D:     Call 0.Method_arg_2C (0)
  loc_1210D52:     Result 1 End Sub 'Integer
  loc_1210D53:   End If
  loc_1210D53: End If
  loc_1210D8E: Call 0.Method_arg_20 (CStr(1), CStr(Mid(var_8C, 1, 16)), Me(0))
  loc_1210DAE: If (Me(4) = -3000) Then
  loc_1210DBC:   var_DC = "Smart Card Verification"
  loc_1210DCC:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1210DD2:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1210DED:   Call 0.Method_arg_2C (0, Me(4))
  loc_1210DF2:   Result var_FC End Sub 'Integer
  loc_1210DF6: Else
  loc_1210E01:   If (Me(4) <> 0) Then
  loc_1210E1C:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1210E35:     Call 0.Method_arg_2C (0)
  loc_1210E3A:     Result  End Sub 'Integer
  loc_1210E3B:   End If
  loc_1210E3B: End If
  loc_1210E3B: Proc_275_0_E0B75C()
  loc_1210E72: var_130 = CStr(2)
  loc_1210E7B: Call 0.Method_arg_20 (var_130, CStr(Mid(var_8C, &H11, 16)), Me(0))
  loc_1210E9B: If (Me(4) = -3000) Then
  loc_1210EA9:   var_DC = "Smart Card Verification"
  loc_1210EB9:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1210EBF:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1210EDA:   Call 0.Method_arg_2C (0, Me(4))
  loc_1210EDF:   Result var_FC End Sub 'Integer
  loc_1210EE3: Else
  loc_1210EEE:   If (Me(4) <> 0) Then
  loc_1210F09:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1210F22:     Call 0.Method_arg_2C (0)
  loc_1210F27:     Result  End Sub 'Integer
  loc_1210F28:   End If
  loc_1210F28: End If
  loc_1210F2B: arg_20 = var_94
  loc_1210F3A: Call 0.Method_arg_2C (&HFF)
  loc_1210F3F: Result  End Sub 'Integer
  loc_1210F40: ' Referenced from: 1210ACA
  loc_1210F48: Set var_150 = Err()
  loc_1210F4E: Call 0.Method_arg_2C (var_130)
  loc_1210F6F: MsgBox(CVar(var_130), &H40, "Information", var_FC, var_11C)
  loc_1210F82: Result  End Sub 'Integer
  loc_1210F83: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_4_1141FC4(arg_C, arg_10) '1141FC4
  'Data Table: 422204
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim var_120 As String
  loc_1141C3F: var_8C = arg_C
  loc_1141C42: On Error Goto loc_1141F80
  loc_1141C48: arg_10 = vbNullString
  loc_1141C53: For var_9A = 0 To 7: var_8E = var_9A 'Integer
  loc_1141C6F:   Call 0.Method_arg_1C (var_8E, Me(0), Me(4))
  loc_1141C77:   var_96 = var_9C
  loc_1141C80:   If (var_96 = 0) Then
  loc_1141C83:     GoTo loc_1141C8E
  loc_1141C86:   End If
  loc_1141C89: Next var_9A 'Integer
  loc_1141C8E: ' Referenced from: 1141C83
  loc_1141C94: If (var_96 = &HFF) Then
  loc_1141CB0:   MsgBox("Reader Not Connected", &H10, var_DC, var_FC, var_11C)
  loc_1141CCB:   Call 0.Method_arg_2C (0)
  loc_1141CD0:   Result  End Sub 'Integer
  loc_1141CD1: End If
  loc_1141CD1: Proc_275_0_E0B75C()
  loc_1141CEE: Call 0.Method_arg_28 (var_94, &HFF, Me(0))
  loc_1141D01: If (Me(4) = -3000) Then
  loc_1141D0F:   var_DC = "Smart Card Verification"
  loc_1141D1F:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1141D25:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1141D40:   Call 0.Method_arg_2C (0, Me(4))
  loc_1141D45:   Result var_BC End Sub 'Integer
  loc_1141D49: Else
  loc_1141D54:   If (Me(4) <> 0) Then
  loc_1141D6F:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1141D88:     Call 0.Method_arg_2C (0)
  loc_1141D8D:     Result  End Sub 'Integer
  loc_1141D8E:   End If
  loc_1141D8E: End If
  loc_1141D8E: Proc_275_0_E0B75C()
  loc_1141DCE: Call 0.Method_arg_20 (CStr(1), CStr(Mid(var_8C, 1, 16)), Me(0))
  loc_1141DEE: If (Me(4) = -3000) Then
  loc_1141DFC:   var_DC = "Smart Card Verification"
  loc_1141E0C:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1141E12:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1141E2D:   Call 0.Method_arg_2C (0, Me(4))
  loc_1141E32:   Result var_FC End Sub 'Integer
  loc_1141E36: Else
  loc_1141E41:   If (Me(4) <> 0) Then
  loc_1141E5C:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1141E75:     Call 0.Method_arg_2C (0)
  loc_1141E7A:     Result  End Sub 'Integer
  loc_1141E7B:   End If
  loc_1141E7B: End If
  loc_1141E7B: Proc_275_0_E0B75C()
  loc_1141EB2: var_120 = CStr(2)
  loc_1141EBB: Call 0.Method_arg_20 (var_120, CStr(Mid(var_8C, &H11, 16)), Me(0))
  loc_1141EDB: If (Me(4) = -3000) Then
  loc_1141EE9:   var_DC = "Smart Card Verification"
  loc_1141EF9:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1141EFF:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1141F1A:   Call 0.Method_arg_2C (0, Me(4))
  loc_1141F1F:   Result var_FC End Sub 'Integer
  loc_1141F23: Else
  loc_1141F2E:   If (Me(4) <> 0) Then
  loc_1141F49:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1141F62:     Call 0.Method_arg_2C (0)
  loc_1141F67:     Result  End Sub 'Integer
  loc_1141F68:   End If
  loc_1141F68: End If
  loc_1141F6B: arg_10 = var_94
  loc_1141F7A: Call 0.Method_arg_2C (&HFF)
  loc_1141F7F: Result  End Sub 'Integer
  loc_1141F80: ' Referenced from: 1141C42
  loc_1141F88: Set var_128 = Err()
  loc_1141F8E: Call 0.Method_arg_2C (var_120)
  loc_1141FAF: MsgBox(CVar(var_120), &H40, "Information", var_FC, var_11C)
  loc_1141FC2: Result  End Sub 'Integer
  loc_1141FC3: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_5_11FDF70(arg_C) '11FDF70
  'Data Table: 422204
  Dim var_96 As Integer
  Dim var_128 As String
  Dim var_C4 As Variant
  Dim var_104 As Variant
  loc_11FDAC8: On Error Goto loc_11FDF2B
  loc_11FDACE: arg_18 = vbNullString
  loc_11FDAD5: arg_C = vbNullString
  loc_11FDAE0: For var_A0 = 0 To 7: var_98 = var_A0 'Integer
  loc_11FDAFC:   Call 0.Method_arg_1C (var_98, Me(0), Me(4))
  loc_11FDB04:   var_96 = var_A2
  loc_11FDB0D:   If (var_96 = 0) Then
  loc_11FDB10:     GoTo loc_11FDB1B
  loc_11FDB13:   End If
  loc_11FDB16: Next var_A0 'Integer
  loc_11FDB1B: ' Referenced from: 11FDB10
  loc_11FDB21: If (var_96 = &HFF) Then
  loc_11FDB3D:   MsgBox("Reader Not Connected", &H10, var_E4, var_104, var_124)
  loc_11FDB58:   Call 0.Method_arg_2C (0)
  loc_11FDB5D:   Result  End Sub 'Integer
  loc_11FDB5E: End If
  loc_11FDB5E: Proc_275_0_E0B75C()
  loc_11FDB7B: Call 0.Method_arg_28 (var_9C, &HFF, Me(0))
  loc_11FDB8E: If (Me(4) = -3000) Then
  loc_11FDB9C:   var_E4 = "Smart Card Verification"
  loc_11FDBAC:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FDBB2:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FDBCD:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FDBD2:   Result var_C4 End Sub 'Integer
  loc_11FDBD6: Else
  loc_11FDBE1:   If (Me(4) <> 0) Then
  loc_11FDBFC:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FDC15:     Call 0.Method_arg_2C (0)
  loc_11FDC1A:     Result  End Sub 'Integer
  loc_11FDC1B:   End If
  loc_11FDC1B: End If
  loc_11FDC1B: Proc_275_0_E0B75C()
  loc_11FDC3D: Call 0.Method_arg_24 (CStr(0), var_8C, Me(0))
  loc_11FDC53: If (Me(4) = -3000) Then
  loc_11FDC61:   var_E4 = "Smart Card Verification"
  loc_11FDC71:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FDC77:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FDC92:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FDC97:   Result var_C4 End Sub 'Integer
  loc_11FDC9B: Else
  loc_11FDCA6:   If (Me(4) <> 0) Then
  loc_11FDCC1:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FDCDA:     Call 0.Method_arg_2C (0)
  loc_11FDCDF:     Result  End Sub 'Integer
  loc_11FDCE0:   End If
  loc_11FDCE0: End If
  loc_11FDCE0: Proc_275_0_E0B75C()
  loc_11FDD02: Call 0.Method_arg_24 (CStr(1), var_90, Me(0))
  loc_11FDD18: If (Me(4) = -3000) Then
  loc_11FDD26:   var_E4 = "Smart Card Verification"
  loc_11FDD36:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FDD3C:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FDD57:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FDD5C:   Result var_C4 End Sub 'Integer
  loc_11FDD60: Else
  loc_11FDD6B:   If (Me(4) <> 0) Then
  loc_11FDD86:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FDD9F:     Call 0.Method_arg_2C (0)
  loc_11FDDA4:     Result  End Sub 'Integer
  loc_11FDDA5:   End If
  loc_11FDDA5: End If
  loc_11FDDA5: Proc_275_0_E0B75C()
  loc_11FDDC7: Call 0.Method_arg_24 (CStr(2), var_94, Me(0))
  loc_11FDDDD: If (Me(4) = -3000) Then
  loc_11FDDEB:   var_E4 = "Smart Card Verification"
  loc_11FDDFB:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FDE01:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FDE1C:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FDE21:   Result var_C4 End Sub 'Integer
  loc_11FDE25: Else
  loc_11FDE30:   If (Me(4) <> 0) Then
  loc_11FDE4B:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FDE64:     Call 0.Method_arg_2C (0)
  loc_11FDE69:     Result  End Sub 'Integer
  loc_11FDE6A:   End If
  loc_11FDE6A: End If
  loc_11FDE6D: arg_18 = var_9C
  loc_11FDE79: var_8C = Proc_275_2_E8D414(var_8C)
  loc_11FDECC: var_128 = CStr(Mid(var_8C, &HB, 6))
  loc_11FDF08: var_104 = (Trim(var_90) + Trim(var_94))
  loc_11FDF0D: arg_C = CStr(var_104)
  loc_11FDF25: Call 0.Method_arg_2C (&HFF, Val(var_128))
  loc_11FDF2A: Result Val(CStr(Mid(var_8C, 1, 10))) End Sub 'Integer
  loc_11FDF2B: ' Referenced from: 11FDAC8
  loc_11FDF33: Set var_12C = Err()
  loc_11FDF39: Call 0.Method_arg_2C (var_128)
  loc_11FDF5A: MsgBox(CVar(var_128), &H40, "Information", var_104, var_124)
  loc_11FDF6D: Result  End Sub 'Integer
  loc_11FDF6E: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_6_1132B28(arg_C, arg_10) '1132B28
  'Data Table: 422204
  Dim var_92 As Integer
  Dim var_124 As String
  Dim var_100 As Variant
  Dim var_C0 As Variant
  Dim .global_-13236 As Variant
  loc_11327B4: On Error Goto loc_1132AE1
  loc_11327BA: arg_10 = vbNullString
  loc_11327C1: arg_C = vbNullString
  loc_11327CC: For var_9C = 0 To 7: var_94 = var_9C 'Integer
  loc_11327E8:   Call 0.Method_arg_1C (var_94, Me(0), Me(4))
  loc_11327F0:   var_92 = var_9E
  loc_11327F9:   If (var_92 = 0) Then
  loc_11327FC:     GoTo loc_1132807
  loc_11327FF:   End If
  loc_1132802: Next var_9C 'Integer
  loc_1132807: ' Referenced from: 11327FC
  loc_113280D: If (var_92 = &HFF) Then
  loc_1132829:   MsgBox("Reader Not Connected", &H10, var_E0, var_100, var_120)
  loc_1132844:   Call 0.Method_arg_2C (0)
  loc_1132849:   Result  End Sub 'Integer
  loc_113284A: End If
  loc_113284A: Proc_275_0_E0B75C()
  loc_1132867: Call 0.Method_arg_28 (var_98, &HFF, Me(0))
  loc_113287A: If (Me(4) = -3000) Then
  loc_1132888:   var_E0 = "Smart Card Verification"
  loc_1132898:   var_C0 = "PLEASE PUT A CARD ON READER"
  loc_113289E:   MsgBox(var_C0, &H10, var_E0, var_100, var_120)
  loc_11328B9:   Call 0.Method_arg_2C (0, Me(4))
  loc_11328BE:   Result var_C0 End Sub 'Integer
  loc_11328C2: Else
  loc_11328CD:   If (Me(4) <> 0) Then
  loc_11328E8:     MsgBox(Me(0), &H10, var_C0, var_E0, var_100)
  loc_1132901:     Call 0.Method_arg_2C (0)
  loc_1132906:     Result  End Sub 'Integer
  loc_1132907:   End If
  loc_1132907: End If
  loc_1132907: Proc_275_0_E0B75C()
  loc_1132929: Call 0.Method_arg_24 (CStr(1), var_8C, Me(0))
  loc_113293F: If (Me(4) = -3000) Then
  loc_113294D:   var_E0 = "Smart Card Verification"
  loc_113295D:   var_C0 = "PLEASE PUT A CARD ON READER"
  loc_1132963:   MsgBox(var_C0, &H10, var_E0, var_100, var_120)
  loc_113297E:   Call 0.Method_arg_2C (0, Me(4))
  loc_1132983:   Result var_C0 End Sub 'Integer
  loc_1132987: Else
  loc_1132992:   If (Me(4) <> 0) Then
  loc_11329AD:     MsgBox(Me(0), &H10, var_C0, var_E0, var_100)
  loc_11329C6:     Call 0.Method_arg_2C (0)
  loc_11329CB:     Result  End Sub 'Integer
  loc_11329CC:   End If
  loc_11329CC: End If
  loc_11329CC: Proc_275_0_E0B75C()
  loc_11329E5: var_124 = CStr(2)
  loc_11329EE: Call 0.Method_arg_24 (var_124, var_90, Me(0))
  loc_1132A04: If (Me(4) = -3000) Then
  loc_1132A12:   var_E0 = "Smart Card Verification"
  loc_1132A22:   var_C0 = "PLEASE PUT A CARD ON READER"
  loc_1132A28:   MsgBox(var_C0, &H10, var_E0, var_100, var_120)
  loc_1132A43:   Call 0.Method_arg_2C (0, Me(4))
  loc_1132A48:   Result var_C0 End Sub 'Integer
  loc_1132A4C: Else
  loc_1132A57:   If (Me(4) <> 0) Then
  loc_1132A72:     MsgBox(Me(0), &H10, var_C0, var_E0, var_100)
  loc_1132A8B:     Call 0.Method_arg_2C (0)
  loc_1132A90:     Result  End Sub 'Integer
  loc_1132A91:   End If
  loc_1132A91: End If
  loc_1132A94: arg_10 = var_98
  loc_1132ABE: var_100 = (Trim(var_8C) + Trim(var_90))
  loc_1132AC3: arg_C = CStr(var_100)
  loc_1132ADB: Call 0.Method_arg_2C (&HFF)
  loc_1132AE0: Result  End Sub 'Integer
  loc_1132AE1: ' Referenced from: 11327B4
  loc_1132AE9: Set var_128 = Err()
  loc_1132AEF: Call 0.Method_arg_2C (var_124)
  loc_1132B10: MsgBox(CVar(var_124), &H40, "Information", var_100, var_120)
  loc_1132B23: Result  End Sub 'Integer
  loc_1132B24: Result  End Sub 'Integer
  loc_1132B25: .global_-13236 = 
End Sub

Public Sub Proc_275_7_10CC664(arg_C) '10CC664
  'Data Table: 422204
  Dim var_8E As Integer
  Dim var_124 As Variant
  Dim var_B4 As Variant
  loc_10CC37C: On Error Goto loc_10CC61D
  loc_10CC38D: For var_92 = 0 To 7: var_88 = var_92 'Integer
  loc_10CC3A9:   Call 0.Method_vbNullString (var_88, Me(0), Me(4))
  loc_10CC3B1:   var_8E = var_94
  loc_10CC3BA:   If (var_8E = 0) Then
  loc_10CC3BD:     GoTo loc_10CC3C8
  loc_10CC3C0:   End If
  loc_10CC3C3: Next var_92 'Integer
  loc_10CC3C8: ' Referenced from: 10CC3BD
  loc_10CC3CE: If (var_8E = &HFF) Then
  loc_10CC3EA:   MsgBox("Reader Not Connected", &H10, var_D4, var_F4, var_114)
  loc_10CC405:   Call 0.Method_arg_2C (0)
  loc_10CC40A:   Result  End Sub 'Integer
  loc_10CC40B: End If
  loc_10CC40B: Proc_275_0_E0B75C()
  loc_10CC428: Call 0.Method_arg_28 (var_8C, &HFF, Me(0))
  loc_10CC43B: If (Me(4) = -3000) Then
  loc_10CC449:   var_D4 = "Smart Card Verification"
  loc_10CC459:   var_B4 = "PLEASE PUT A CARD ON READER"
  loc_10CC45F:   MsgBox(var_B4, &H10, var_D4, var_F4, var_114)
  loc_10CC47A:   Call 0.Method_arg_2C (0, Me(4))
  loc_10CC47F:   Result var_B4 End Sub 'Integer
  loc_10CC483: Else
  loc_10CC48E:   If (Me(4) <> 0) Then
  loc_10CC4A9:     MsgBox(Me(0), &H10, var_B4, var_D4, var_F4)
  loc_10CC4C2:     Call 0.Method_arg_2C (0)
  loc_10CC4C7:     Result  End Sub 'Integer
  loc_10CC4C8:   End If
  loc_10CC4C8: End If
  loc_10CC4C8: Proc_275_0_E0B75C()
  loc_10CC504: var_F4 = "000000"
  loc_10CC515: var_114 = Format(arg_14, var_F4)
  loc_10CC51D: var_124 = (1 + var_114)
  loc_10CC54E: Call 0.Method_arg_20 (CStr(0), Proc_275_1_E8E124(CStr(var_124), 1, Format(arg_C, "0000000.00")), Me(0), Me(4))
  loc_10CC578: If (Me(4) = -3000) Then
  loc_10CC586:   var_D4 = "Smart Card Verification"
  loc_10CC596:   var_B4 = "PLEASE PUT A CARD ON READER"
  loc_10CC59C:   MsgBox(var_B4, &H10, var_D4, var_F4, var_114)
  loc_10CC5B7:   Call 0.Method_arg_2C (0, var_140)
  loc_10CC5BC:   Result 1 End Sub 'Integer
  loc_10CC5C0: Else
  loc_10CC5CB:   If (Me(4) <> 0) Then
  loc_10CC5E6:     MsgBox(Me(0), &H10, var_B4, var_D4, var_F4)
  loc_10CC5FF:     Call 0.Method_arg_2C (0)
  loc_10CC604:     Result 1 End Sub 'Integer
  loc_10CC605:   End If
  loc_10CC605: End If
  loc_10CC608: arg_1C = var_8C
  loc_10CC617: Call 0.Method_arg_2C (&HFF)
  loc_10CC61C: Result  End Sub 'Integer
  loc_10CC61D: ' Referenced from: 10CC37C
  loc_10CC625: Set var_148 = Err()
  loc_10CC62B: Call 0.Method_arg_2C (var_128)
  loc_10CC64C: MsgBox(CVar(var_128), &H40, "Information", var_F4, var_114)
  loc_10CC65F: Result  End Sub 'Integer
  loc_10CC660: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_8_10BE7C4
  'Data Table: 422204
  Dim var_8E As Integer
  Dim var_120 As String
  Dim var_BC As Variant
  loc_10BE4E4: On Error Goto loc_10BE77E
  loc_10BE4EA: arg_14 = vbNullString
  loc_10BE4F5: For var_98 = 0 To 7: var_90 = var_98 'Integer
  loc_10BE511:   Call 0.Method_arg_1C (var_90, Me(0), Me(4))
  loc_10BE519:   var_8E = var_9A
  loc_10BE522:   If (var_8E = 0) Then
  loc_10BE525:     GoTo loc_10BE530
  loc_10BE528:   End If
  loc_10BE52B: Next var_98 'Integer
  loc_10BE530: ' Referenced from: 10BE525
  loc_10BE536: If (var_8E = &HFF) Then
  loc_10BE552:   MsgBox("Reader Not Connected", &H10, var_DC, var_FC, var_11C)
  loc_10BE56D:   Call 0.Method_arg_2C (0)
  loc_10BE572:   Result  End Sub 'Integer
  loc_10BE573: End If
  loc_10BE573: Proc_275_0_E0B75C()
  loc_10BE590: Call 0.Method_arg_28 (var_94, &HFF, Me(0))
  loc_10BE5A3: If (Me(4) = -3000) Then
  loc_10BE5B1:   var_DC = "Smart Card Verification"
  loc_10BE5C1:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_10BE5C7:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_10BE5E2:   Call 0.Method_arg_2C (0, Me(4))
  loc_10BE5E7:   Result var_BC End Sub 'Integer
  loc_10BE5EB: Else
  loc_10BE5F6:   If (Me(4) <> 0) Then
  loc_10BE611:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_10BE62A:     Call 0.Method_arg_2C (0)
  loc_10BE62F:     Result  End Sub 'Integer
  loc_10BE630:   End If
  loc_10BE630: End If
  loc_10BE630: Proc_275_0_E0B75C()
  loc_10BE652: Call 0.Method_arg_24 (CStr(0), var_8C, Me(0))
  loc_10BE668: If (Me(4) = -3000) Then
  loc_10BE676:   var_DC = "Smart Card Verification"
  loc_10BE686:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_10BE68C:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_10BE6A7:   Call 0.Method_arg_2C (0, Me(4))
  loc_10BE6AC:   Result var_BC End Sub 'Integer
  loc_10BE6B0: Else
  loc_10BE6BB:   If (Me(4) <> 0) Then
  loc_10BE6D6:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_10BE6EF:     Call 0.Method_arg_2C (0)
  loc_10BE6F4:     Result  End Sub 'Integer
  loc_10BE6F5:   End If
  loc_10BE6F5: End If
  loc_10BE6F8: arg_14 = var_94
  loc_10BE704: var_8C = Proc_275_2_E8D414(var_8C)
  loc_10BE757: var_120 = CStr(Mid(var_8C, &HB, 6))
  loc_10BE778: Call 0.Method_arg_2C (&HFF, Val(var_120))
  loc_10BE77D: Result Val(CStr(Mid(var_8C, 1, 10))) End Sub 'Integer
  loc_10BE77E: ' Referenced from: 10BE4E4
  loc_10BE786: Set var_124 = Err()
  loc_10BE78C: Call 0.Method_arg_2C (var_120)
  loc_10BE7AD: MsgBox(CVar(var_120), &H40, "Information", var_FC, var_11C)
  loc_10BE7C0: Result  End Sub 'Integer
  loc_10BE7C1: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_9_1190660
  'Data Table: 422204
  Dim var_8E As Integer
  Dim var_12C As String
  Dim var_C8 As Variant
  loc_119026C: On Error Goto loc_119061A
  loc_1190274: var_A0 = vbNullString 'Variant
  loc_119027F: For var_B4 = 0 To 7: var_88 = var_B4 'Integer
  loc_119029B:   Call 0.Method_arg_1C (var_88, Me(0), Me(4))
  loc_11902A3:   var_8E = var_B6
  loc_11902AC:   If (var_8E = 0) Then
  loc_11902AF:     GoTo loc_11902BA
  loc_11902B2:   End If
  loc_11902B5: Next var_B4 'Integer
  loc_11902BA: ' Referenced from: 11902AF
  loc_11902C0: If (var_8E = &HFF) Then
  loc_11902DC:   MsgBox("Reader Not Connected", &H10, var_E8, var_108, var_128)
  loc_11902F7:   Call 0.Method_arg_2C (0)
  loc_11902FC:   Result  End Sub 'Integer
  loc_11902FD: End If
  loc_11902FD: Proc_275_0_E0B75C()
  loc_119031A: Call 0.Method_arg_28 (var_8C, &HFF, Me(0))
  loc_119032D: If (Me(4) = -3000) Then
  loc_119033B:   var_E8 = "Smart Card Verification"
  loc_119034B:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_1190351:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_119036C:   Call 0.Method_arg_2C (0, Me(4))
  loc_1190371:   Result var_C8 End Sub 'Integer
  loc_1190375: Else
  loc_1190380:   If (Me(4) <> 0) Then
  loc_119039B:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_11903B4:     Call 0.Method_arg_2C (0)
  loc_11903B9:     Result  End Sub 'Integer
  loc_11903BA:   End If
  loc_11903BA: End If
  loc_11903BA: Proc_275_0_E0B75C()
  loc_11903DC: Call 0.Method_arg_20 (CStr(0), vbNullString, Me(0))
  loc_11903F2: If (Me(4) = -3000) Then
  loc_1190400:   var_E8 = "Smart Card Verification"
  loc_1190410:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_1190416:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_1190431:   Call 0.Method_arg_2C (0, Me(4))
  loc_1190436:   Result var_C8 End Sub 'Integer
  loc_119043A: Else
  loc_1190445:   If (Me(4) <> 0) Then
  loc_1190460:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_1190479:     Call 0.Method_arg_2C (0)
  loc_119047E:     Result  End Sub 'Integer
  loc_119047F:   End If
  loc_119047F: End If
  loc_119047F: Proc_275_0_E0B75C()
  loc_11904A1: Call 0.Method_arg_20 (CStr(1), vbNullString, Me(0))
  loc_11904B7: If (Me(4) = -3000) Then
  loc_11904C5:   var_E8 = "Smart Card Verification"
  loc_11904D5:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_11904DB:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_11904F6:   Call 0.Method_arg_2C (0, Me(4))
  loc_11904FB:   Result var_C8 End Sub 'Integer
  loc_11904FF: Else
  loc_119050A:   If (Me(4) <> 0) Then
  loc_1190525:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_119053E:     Call 0.Method_arg_2C (0)
  loc_1190543:     Result  End Sub 'Integer
  loc_1190544:   End If
  loc_1190544: End If
  loc_1190544: Proc_275_0_E0B75C()
  loc_119055D: var_12C = CStr(2)
  loc_1190566: Call 0.Method_arg_20 (var_12C, vbNullString, Me(0))
  loc_119057C: If (Me(4) = -3000) Then
  loc_119058A:   var_E8 = "Smart Card Verification"
  loc_119059A:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_11905A0:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_11905BB:   Call 0.Method_arg_2C (0, Me(4))
  loc_11905C0:   Result var_C8 End Sub 'Integer
  loc_11905C4: Else
  loc_11905CF:   If (Me(4) <> 0) Then
  loc_11905EA:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_1190603:     Call 0.Method_arg_2C (0)
  loc_1190608:     Result  End Sub 'Integer
  loc_1190609:   End If
  loc_1190609: End If
  loc_1190614: Call 0.Method_arg_2C (&HFF)
  loc_1190619: Result  End Sub 'Integer
  loc_119061A: ' Referenced from: 119026C
  loc_1190622: Set var_130 = Err()
  loc_1190628: Call 0.Method_arg_2C (var_12C)
  loc_1190649: MsgBox(CVar(var_12C), &H40, "Information", var_108, var_128)
  loc_119065C: Result  End Sub 'Integer
  loc_119065D: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_10_10A3DAC(arg_C) '10A3DAC
  'Data Table: 422204
  Dim var_D0 As Variant
  Dim var_94 As String
  Dim unk_42221E As Connection15
  Dim var_BC As Variant
  Dim var_C0 As Fields15
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_E4 As Variant
  loc_10A3B1C: On Error Goto loc_10A3D66
  loc_10A3B2D: If (Proc_275_6_1132B28(var_90) = 0) Then
  loc_10A3B35:   Result 0 End Sub 'Integer
  loc_10A3B36: End If
  loc_10A3B3C: var_D0 = 0
  loc_10A3B69: unk_42221E.Execute "Select Count(*) From SmartCardMaster Where HW_Id='" & arg_C & "'", var_B8, -1
  loc_10A3B79: var_D0 = var_C0.Item(var_C0)
  loc_10A3B81: var_D4 = var_D4.Value
  loc_10A3BA8: If (var_E4 > 0) Then
  loc_10A3BEC:   var_114 = CVar("Select Code,Name,CardNo From SmartCardRegistration Where SerialNo='" & arg_C & "' And Code='") & Trim(Left(var_90, &HC)) 
  loc_10A3BF5:   var_124 = var_114 & "'" 
  loc_10A3C03:   unk_42221E.Execute CStr(var_124), var_134, -1
  loc_10A3C0E:   Set var_8C = var_BC.Fields
  loc_10A3C3E:   If (var_8C.RecordCount > 0) Then
  loc_10A3C50:     var_BC = var_8C.Fields
  loc_10A3CA2:     var_114 = "Smart Card Verification"
  loc_10A3CB4:     var_94 = "Hardware Id Already Asigned to.." & vbCrLf
  loc_10A3CDD:     var_104 = CVar(var_94 & "Name    : " & Proc_6_38_E68A98(CVar(var_BC.Item("Name")), var_BC) & vbCrLf & "Card ID : " & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")), CVar(var_8C.Fields.Item("CardNo")))) 'String
  loc_10A3CE0:     MsgBox(var_104, &H40, var_114, var_124, var_134)
  loc_10A3D15:     Set var_8C = Nothing
  loc_10A3D1D:     Result 0 End Sub 'Integer
  loc_10A3D21:   Else
  loc_10A3D42:     MsgBox("Hardware Id Already Registered.", &H10, "Smart Card Verification", var_104, var_114)
  loc_10A3D57:     Result 0 End Sub 'Integer
  loc_10A3D58:   End If
  loc_10A3D58: End If
  loc_10A3D5D: Set var_8C = Nothing
  loc_10A3D65: Result &HFF End Sub 'Integer
  loc_10A3D66: ' Referenced from: 10A3B1C
  loc_10A3D6E: Set var_BC = Err()
  loc_10A3D74: Call 0.Method_arg_2C (var_94)
  loc_10A3D95: MsgBox(CVar(var_94), &H40, "Information", var_104, var_114)
  loc_10A3DA8: Result arg_C End Sub 'Integer
  loc_10A3DA9: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_11_10CD018(arg_C, arg_10, arg_14) '10CD018
  'Data Table: 422204
  Dim var_94 As String
  Dim var_A8 As String
  Dim unk_42221E As Connection15
  Dim var_8C As Recordset15
  Dim var_DC As Fields15
  Dim var_D8 As Variant
  Dim var_11C As String
  Dim var_130 As Variant
  loc_10CCD54: On Error Goto loc_10CCFD1
  loc_10CCD76: var_A8 = 0
  loc_10CCDBB: If (Proc_275_12_130A7A4(0, arg_14, arg_C, arg_10, 0) = 0) Then
  loc_10CCDC3:   Result 0 End Sub 'Integer
  loc_10CCDC4: End If
  loc_10CCDDF: var_A8 = "Select Code,SerialNo,Name,CardNo,CardType From SmartCardRegistration Where SerialNo='" & arg_14 & "'"
  loc_10CCDE8: unk_42221E.Execute var_A8, var_D8, -1
  loc_10CCDF3: Set var_8C = var_DC
  loc_10CCE17: If (var_8C.RecordCount > 0) Then
  loc_10CCE29:   var_DC = var_8C.Fields
  loc_10CCE42:   arg_10 = Proc_6_38_E68A98(CVar(var_DC.Item("CardType")), var_DC, 0, 0)
  loc_10CCE54:   If (arg_10 = "Member") Then
  loc_10CCEB8:     var_150 = "Smart Card Verification"
  loc_10CCECA:     var_94 = "Member Card is Already Registered." & vbCrLf
  loc_10CCEE9:     var_11C = var_94 & "Name    : " & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")), var_94 & "Name    : ") & vbCrLf & "Card ID : "
  loc_10CCEF3:     var_130 = CVar(var_11C & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")), 0)) 'String
  loc_10CCEF6:     MsgBox(var_130, &H40, var_150, var_170, var_190)
  loc_10CCF2B:     Set var_8C = Nothing
  loc_10CCF33:     Result 0 End Sub 'Integer
  loc_10CCF37:   Else
  loc_10CCF3F:     If (arg_10 = "Cash Card") Then
  loc_10CCF63:       MsgBox("Cash Card is Already Registered.", &H40, "Smart Card Verification", var_130, var_150)
  loc_10CCF78:       Set var_8C = Nothing
  loc_10CCF80:       Result 0 End Sub 'Integer
  loc_10CCF84:     Else
  loc_10CCFA5:       MsgBox("Smart Card is Already Registered.", &H40, "Smart Card Verification", var_130, var_150)
  loc_10CCFBA:       Set var_8C = Nothing
  loc_10CCFC2:       Result 0 End Sub 'Integer
  loc_10CCFC3:     End If
  loc_10CCFC3:   End If
  loc_10CCFC3: End If
  loc_10CCFC8: Set var_8C = Nothing
  loc_10CCFD0: Result &HFF End Sub 'Integer
  loc_10CCFD1: ' Referenced from: 10CCD54
  loc_10CCFD9: Set var_DC = Err()
  loc_10CCFDF: Call 0.Method_arg_2C (var_94)
  loc_10CD000: MsgBox(CVar(var_94), &H40, "Information", var_130, var_150)
  loc_10CD013: Result 0 End Sub 'Integer
  loc_10CD014: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_12_130A7A4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '130A7A4
  'Data Table: 422204
  Dim var_C4 As Variant
  Dim var_118 As String
  Dim var_11C As String
  Dim unk_42221E As Connection15
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_128 As Field20
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim arg_2C As Double
  Dim var_F4 As Variant
  Dim var_90 As Recordset15
  loc_130A07C: On Error Goto loc_130A75D
  loc_130A093: If (Proc_275_5_11FDF70(var_94, arg_20) = 0) Then
  loc_130A09B:   Result 0 End Sub 'Integer
  loc_130A09C: End If
  loc_130A0A7: If (Proc_275_14_E82170(var_94, arg_24) = 0) Then
  loc_130A0AF:   Result 0 End Sub 'Integer
  loc_130A0B0: End If
  loc_130A0B6: If (arg_C < 0) Then
  loc_130A0D2:   MsgBox("Invalid Check Level", &H10, var_D4, var_F4, var_114)
  loc_130A0E2:   Result arg_10 End Sub 'Integer
  loc_130A0E3: End If
  loc_130A107: arg_14 = CStr(Trim(Left(var_94, &HC)))
  loc_130A122: var_B4 = Right(var_94, &H14)
  loc_130A12D: var_D4 = Trim(var_B4)
  loc_130A136: arg_1C = CStr(var_D4)
  loc_130A147: If (arg_C >= 0) Then
  loc_130A150:   var_C4 = 0
  loc_130A17D:   unk_42221E.Execute "Select Count(*) From SmartCardMaster Where HW_Id='" & arg_10 & "'", var_B4, -1
  loc_130A185:   var_120 = var_120.Fields
  loc_130A18D:   var_C4 = var_124.Item(var_124)
  loc_130A195:   var_128 = var_128.Value
  loc_130A1BC:   If (var_D4 = 0) Then
  loc_130A1DA:     var_B4 = "Hardware Id Not Registered."
  loc_130A1E0:     MsgBox(var_B4, &H10, "Smart Card Verification", var_F4, var_114)
  loc_130A1F5:     Result 0 End Sub 'Integer
  loc_130A1F6:   End If
  loc_130A1F6: End If
  loc_130A1FC: If (arg_C > 0) Then
  loc_130A213:   var_118 = "Select Code,CardType,CardNo,SerialNo,ValidUpTo,BlockedYN,MemberCode,CurrBal,SecurBal From SmartCardRegistration Where code='" & arg_14
  loc_130A223:   unk_42221E.Execute var_118 & "'", var_B4, -1
  loc_130A252:   If (var_120.RecordCount = 0) Then
  loc_130A260:     var_D4 = "Smart Card Verification"
  loc_130A276:     MsgBox("This Smart Card is Not Registered!", &H10, var_D4, var_F4, var_114)
  loc_130A28B:     Set var_8C = Nothing
  loc_130A293:     Result 0 End Sub 'Integer
  loc_130A294:   End If
  loc_130A2A8:   If (var_8C.RecordCount > 0) Then
  loc_130A2BA:     var_120 = var_8C.Fields
  loc_130A2D3:     arg_18 = Proc_6_38_E68A98(CVar(var_120.Item("CardType")), var_120)
  loc_130A305:     arg_1C = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")))
  loc_130A337:     arg_28 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MemberCode")))
  loc_130A367:     Proc_6_39_E7C810(var_D4, CVar(var_8C.Fields.Item("CurrBal")))
  loc_130A370:     arg_2C = CSng(var_D4)
  loc_130A3A3:     Proc_6_39_E7C810(var_D4, CVar(var_8C.Fields.Item("SecurBal")))
  loc_130A3E1:     var_F4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SerialNo")), CSng(var_D4))) 'String
  loc_130A406:     If CBool(var_F4 <> Trim(arg_10)) Then
  loc_130A42A:       MsgBox("InValid Smart Card", &H10, "Smart Card Verification", var_F4, var_114)
  loc_130A43F:       Set var_8C = Nothing
  loc_130A447:       Result 0 End Sub 'Integer
  loc_130A448:     End If
  loc_130A448:   End If
  loc_130A448: End If
  loc_130A44E: If (arg_C > 1) Then
  loc_130A465:   If (var_8C.RecordCount > 0) Then
  loc_130A4A1:     If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BlockedYN")), arg_2C) = "Y") Then
  loc_130A4AF:       var_D4 = "Smart Card Verification"
  loc_130A4C5:       MsgBox("Smart Card is Blocked By Administrator.", &H10, var_D4, var_F4, var_114)
  loc_130A4DA:       Set var_8C = Nothing
  loc_130A4E2:       Result 0 End Sub 'Integer
  loc_130A4E3:     End If
  loc_130A4E3:   End If
  loc_130A4F7:   If (var_8C.RecordCount > 0) Then
  loc_130A542:     If (CDate(CDate(Proc_6_15_EF2C1C(var_D4))) > var_8C.Fields.Item("ValidUpto").Value) Then
  loc_130A550:       var_D4 = "Smart Card Verification"
  loc_130A566:       MsgBox("Validity Of Smart Card is Expired", &H10, var_D4, var_F4, var_114)
  loc_130A57B:       Set var_8C = Nothing
  loc_130A583:       Result 0 End Sub 'Integer
  loc_130A584:     End If
  loc_130A584:   End If
  loc_130A5BD:   If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardType"))) = "Member") Then
  loc_130A5F8:     var_118 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MemberCode")), "Select ActiveYN,BlackListed From SubGroup Where Subcode='", var_D4)
  loc_130A5FC:     var_11C = -1 & var_118
  loc_130A60C:     unk_42221E.Execute var_118 & "'" & "'", var_128, 
  loc_130A617:     Set var_90 = var_128
  loc_130A645:     If (var_90.RecordCount > 0) Then
  loc_130A682:       If (CDbl(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ActiveYN")))) <> CDbl(1)) Then
  loc_130A6A6:         MsgBox("Member is Currently Not Active.", &H10, "Member Verification", var_F4, var_114)
  loc_130A6BB:         Set var_8C = Nothing
  loc_130A6C3:         Set var_90 = Nothing
  loc_130A6CB:         Result 0 End Sub 'Integer
  loc_130A6CC:       End If
  loc_130A6F4:       var_118 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("BlackListed")))
  loc_130A705:       If (var_118 = "Y") Then
  loc_130A729:         MsgBox("Member is Not Authorized.", &H10, "Member Verification", var_F4, var_114)
  loc_130A73E:         Set var_8C = Nothing
  loc_130A746:         Set var_90 = Nothing
  loc_130A74E:         Result 0 End Sub 'Integer
  loc_130A74F:       End If
  loc_130A74F:     End If
  loc_130A74F:   End If
  loc_130A74F: End If
  loc_130A754: Set var_8C = Nothing
  loc_130A75C: Result &HFF End Sub 'Integer
  loc_130A75D: ' Referenced from: 130A07C
  loc_130A765: Set var_120 = Err()
  loc_130A76B: Call 0.Method_arg_2C (var_118)
  loc_130A78C: MsgBox(CVar(var_118), &H40, "Information", var_F4, var_114)
  loc_130A79F: Result  End Sub 'Integer
  loc_130A7A0: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_13_F2E708
  'Data Table: 422204
  Dim var_86 As Integer
  loc_F2E604: On Error Goto loc_F2E6C3
  loc_F2E618: If (Proc_275_8_10BE7C4(var_90, var_98) = &HFF) Then
  loc_F2E62A:   If ((var_90 <> CDbl(0)) Or (var_98 <> CDbl(0))) Then
  loc_F2E64E:     MsgBox("This Card Is Not Initialised.", &H40, "Smart Card Verification", var_100, var_120)
  loc_F2E663:     Result 0 End Sub 'Integer
  loc_F2E667:   Else
  loc_F2E675:     If (Proc_275_6_1132B28(var_A0, var_9C) = &HFF) Then
  loc_F2E680:       If (var_A0 <> vbNullString) Then
  loc_F2E6A4:         MsgBox("This Card Is Not Initialised.", &H40, "Smart Card Verification", var_100, var_120)
  loc_F2E6B9:         Result 0 End Sub 'Integer
  loc_F2E6BD:       Else
  loc_F2E6BF:         var_86 = &HFF
  loc_F2E6C2:       End If
  loc_F2E6C2:     End If
  loc_F2E6C2:   End If
  loc_F2E6C2: End If
  loc_F2E6C2: End Sub
  loc_F2E6C3: ' Referenced from: F2E604
  loc_F2E6CB: Set var_124 = Err()
  loc_F2E6D1: Call 0.Method_arg_2C (var_128)
  loc_F2E6F2: MsgBox(CVar(var_128), &H40, "Information", var_100, var_120)
  loc_F2E705: Result var_9C End Sub 'Integer
  loc_F2E706: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_14_E82170(arg_C) 'E82170
  'Data Table: 422204
  Dim var_86 As Integer
  loc_E82112: var_86 = &HFF
  loc_E8211F: If (Len(arg_C) > 0) Then
  loc_E8212D:   If (Asc(arg_C) = 0) Then
  loc_E82157:     MsgBox(CVar("This is Fresh Smart Card." & vbCrLf & "Please Initialised First."), &H40, "Smart Card", var_DC, var_FC)
  loc_E8216C:     var_86 = 0
  loc_E8216F:   End If
  loc_E8216F: End If
  loc_E8216F: End Sub
End Sub

Public Sub Proc_275_15_1118398
  'Data Table: 422204
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim var_90 As Recordset15
  Dim var_130 As Fields15
  Dim arg_20 As Long
  Dim var_12C As Variant
  Dim var_160 As Variant
  Dim unk_42221E As Connection15
  Dim var_150 As Variant
  Dim var_184 As Variant
  Dim var_1AC As Variant
  loc_111808F: var_8C = arg_10
  loc_11180A6: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11180D7: Proc_6_7_F25D88(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<="))
  loc_11180F3: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_11180FE: Set var_90 = var_130
  loc_1118134: If (var_90.RecordCount > 0) Then
  loc_1118173:   If (var_90.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1118176:     GoTo loc_11182DE
  loc_1118179:   End If
  loc_11181A4:   arg_1C = CStr(var_90.Fields.Item("Prefix").Value)
  loc_11181E1:   var_D8 = (var_90.Fields.Item("start_srl_no").Value + 1)
  loc_11181E7:   arg_20 = CLng(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<="))
  loc_111822D:   var_10C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(arg_20) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1118294:   Proc_6_7_F25D88(var_150, CVar(var_90.Fields.Item("Date_From")), CVar(var_10C & "') and V_Type='") & var_90.Fields.Item("V_Type").Value & "' and Date_From=", var_184)
  loc_111829C:   var_160 = -1 & var_150 
  loc_11182AA:   unk_42221E.Execute CStr(var_160), var_188, arg_20
  loc_11182DE:   ' Referenced from: 1118176
  loc_11182DE: End If
  loc_1118309: var_C8 = Space((5 - Len(var_8C)))
  loc_1118311: var_E8 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_8C) + var_90.Fields.Item("V_Type").Value)
  loc_111831B: var_108 = (CVar(var_10C & "') and V_Type='") & var_90.Fields.Item("V_Type").Value + CVar(arg_1C))
  loc_111832C: var_12C = Space((5 - Len(arg_1C)))
  loc_1118334: var_150 = (CVar(var_10C & "') and V_Type='") & var_90.Fields.Item("V_Type").Value & "' and Date_From=" + CVar(var_90.Fields.Item("Date_From")))
  loc_111834A: var_160 = Space((8 - Len(CStr(arg_20))))
  loc_1118352: var_184 = (var_150 + var_160)
  loc_111835E: var_1AC = (var_184 + CVar(CStr(arg_20)))
  loc_1118389: var_88 = CStr(var_1AC)
  loc_1118391: Set var_90 = Nothing
  loc_1118394: Exit Sub
End Sub

Public Sub Proc_275_16_10AF42C
  'Data Table: 422204
  Dim var_E8 As Variant
  Dim var_90 As String
  Dim var_CC As String
  Dim var_1D8 As Variant
  Dim var_378 As Variant
  loc_10AF20B: var_E8 = arg_28
  loc_10AF213: Proc_6_7_F25D88(var_F8)
  loc_10AF233: Proc_183_8_EB0AA4(var_308, Proc_275_16_10AF42C4)
  loc_10AF25A: var_90 = "Insert Into SmartCardLedger(" & "DocId,VSNo,VType,VNo,VPrefix,Type,Site_Code," & "VDate,Code,HW_Id,AmtCr,AmtDr," & "Narration,U_Name,U_EntDt,U_AE,LogSite_Code,PreBalance) "
  loc_10AF2BF: var_CC = var_90 & "Values(" & "'" & arg_10 & "'," & CStr(arg_14) & ",'" & arg_18 & "'," & CStr(arg_1C) & ",'" & arg_20 & "','" & Proc_275_16_10AF42CC
  loc_10AF31B: var_1D8 = CVar(var_CC & "','" & arg_24 & "'," & vbNullString) & var_F8 & ",'" & CVar(arg_2C) & "','" & CVar(arg_30) & "'," & CVar(arg_34) 
  loc_10AF387: var_378 = var_1D8 & "," & CVar(arg_38) & "," & "'" & Trim(arg_3C) & "','" & CVar(Proc_275_16_10AF42C0) & "'," & var_308 & ",'" & CVar(Proc_275_16_10AF42C8) & "','" 
  loc_10AF3B9: Me.Connection15.Execute CStr(var_378 & CVar(MemVar_1F92078) & "'," & CVar(arg_50) & ")"), var_41C, -1
  loc_10AF42B: Exit Sub
End Sub

Public Sub Proc_275_17_1185D08(arg_C, arg_10, arg_14, arg_18) '1185D08
  'Data Table: 422204
  Dim var_BA As Integer
  loc_118593B: var_88 = arg_C
  loc_1185941: var_8C = arg_10
  loc_118594D: var_94 = arg_30
  loc_1185953: var_98 = arg_34
  loc_1185959: var_9C = Proc_275_17_1185D080
  loc_118595F: var_A4 = "RCARD"
  loc_118596A: var_C0 = arg_14
  loc_1185975: If (var_C0 = "Recharge") Then
  loc_118598C:   var_A0 = Proc_275_15_1118398(MemVar_1F92044, var_A4, arg_18)
  loc_1185992:   Proc_275_17_1185D084 = var_A0
  loc_11859A1:   Proc_6_39_E7C810(var_E0, arg_20, var_B0)
  loc_11859B4:   If (var_E0 > 0) Then
  loc_11859BA:     var_B8 = "RCARDC"
  loc_11859F7:     Proc_275_16_10AF42C(MemVar_1F92044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F92070, arg_18)
  loc_1185A02:     var_BA = (var_BA + 1)
  loc_1185A05:   End If
  loc_1185A10:   Proc_6_39_E7C810(var_E0, arg_28, 1, var_88, var_8C, arg_20)
  loc_1185A23:   If (var_E0 > 0) Then
  loc_1185A29:     var_B8 = "RCARDS"
  loc_1185A66:     Proc_275_16_10AF42C(MemVar_1F92044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F92070, arg_18)
  loc_1185A71:     var_BA = (var_BA + 1)
  loc_1185A74:   End If
  loc_1185A77: Else
  loc_1185A7F:   If (var_C0 = "Refund") Then
  loc_1185A96:     var_A0 = Proc_275_15_1118398(MemVar_1F92044, var_A4, arg_18, var_B0, var_B4, 1, var_88)
  loc_1185A9C:     Proc_275_17_1185D084 = var_A0
  loc_1185AAB:     Proc_6_39_E7C810(var_E0, arg_20, var_8C, arg_28, CDbl(0))
  loc_1185ABE:     If (var_E0 > 0) Then
  loc_1185AC4:       var_B8 = "RCARDC"
  loc_1185B01:       Proc_275_16_10AF42C(MemVar_1F92044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F92070, arg_18)
  loc_1185B0C:       var_BA = (var_BA + 1)
  loc_1185B0F:     End If
  loc_1185B1A:     Proc_6_39_E7C810(var_E0, arg_28, 1, var_88, var_8C, CDbl(0))
  loc_1185B2D:     If (var_E0 > 0) Then
  loc_1185B33:       var_B8 = "RCARDS"
  loc_1185B70:       Proc_275_16_10AF42C(MemVar_1F92044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F92070, arg_18)
  loc_1185B7B:       var_BA = (var_BA + 1)
  loc_1185B7E:     End If
  loc_1185B81:   Else
  loc_1185B89:     If (var_C0 = "Waive-off") Then
  loc_1185BA0:       var_A0 = Proc_275_15_1118398(MemVar_1F92044, var_A4, arg_18, var_B0, var_B4, 1, var_88)
  loc_1185BA6:       Proc_275_17_1185D084 = var_A0
  loc_1185BB5:       Proc_6_39_E7C810(var_E0, arg_20, var_8C, CDbl(0), arg_28)
  loc_1185BC8:       If (var_E0 > 0) Then
  loc_1185BCE:         var_B8 = "WCARDC"
  loc_1185C0B:         Proc_275_16_10AF42C(MemVar_1F92044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F92070, arg_18)
  loc_1185C16:         var_BA = (var_BA + 1)
  loc_1185C19:       End If
  loc_1185C24:       Proc_6_39_E7C810(var_E0, arg_28, 1, var_88, var_8C, CDbl(0))
  loc_1185C37:       If (var_E0 > 0) Then
  loc_1185C3D:         var_B8 = "WCARDS"
  loc_1185C7A:         Proc_275_16_10AF42C(MemVar_1F92044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F92070, arg_18)
  loc_1185C85:         var_BA = (var_BA + 1)
  loc_1185C88:       End If
  loc_1185C8B:     Else
  loc_1185C93:       If (var_C0 = "Reward") Then
  loc_1185CA1:         Proc_6_39_E7C810(var_E0, arg_20, 1, var_88, var_8C, CDbl(0))
  loc_1185CB4:         If (var_E0 > 0) Then
  loc_1185CBA:           var_B8 = "REWARD"
  loc_1185CF7:           Proc_275_16_10AF42C(MemVar_1F92044, Proc_275_17_1185D084, 1, var_A4, var_B4, var_B0, MemVar_1F92070, arg_18)
  loc_1185D02:           var_BA = (var_BA + 1)
  loc_1185D05:         End If
  loc_1185D05:       End If
  loc_1185D05:     End If
  loc_1185D05:   End If
  loc_1185D05: End If
  loc_1185D05: Exit Sub
End Sub

Public Sub Proc_275_18_150145C(arg_C) '150145C
  'Data Table: 422204
  Dim var_BC As String
  Dim var_D0 As String
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E8 As String
  Dim unk_42221E As Connection15
  Dim var_88 As Recordset15
  Dim var_20C As Fields15
  Dim var_F4 As Variant
  Dim var_208 As Variant
  Dim var_24C As Variant
  Dim var_174 As Variant
  Dim var_23C As Variant
  Dim var_26C As Variant
  Dim var_2D4 As Variant
  Dim var_2F4 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  loc_1500657: var_D0 = 0
  loc_150069C: If (Proc_275_12_130A7A4(1, var_98, var_90, var_94, 0) = 0) Then
  loc_150069F:   Exit Sub
  loc_15006A0: End If
  loc_15006B4: var_BC = "Select SCR.CardType,SCR.CardNo,MF.Relationship,SG.Name As Member,SCR.Name," & "convert(Varchar(11),SCL.Vdate,103) As Vdate,SCL.VType,SCL.VNo,SCL.Narration,SCL.AmtCr,SCL.AmtDr,SCL.U_EntDt,SCL.PreBalance From "
  loc_15006BB: var_D0 = var_BC & "SmartCardLedger SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code "
  loc_15006C9: var_104 = CVar(var_D0 & "Left Join MemberFamily MF On SCL.Code=MF.CardRegId Left Join SubGroup SG " & "On MF.Subcode=SG.Subcode Where SCL.Code=") 'String
  loc_15006D7: Proc_6_17_EAA2B0(var_F4, var_90, var_104, var_208, -1, var_20C)
  loc_1500700: Proc_6_7_F25D88(var_174, MemVar_1F920EC, 0 & var_F4 & " And SCL.Type In ('RCARDC','RCARDS','CARDEXP') And " & "SCL.Vdate=", 0)
  loc_1500732: unk_42221E.Execute CStr(var_D0 & var_174 & " And SCL.LogSite_Code='" & CVar(MemVar_1F92078) & "' Order By SCL.U_EntDt"), var_B0, var_B8
  loc_150073D: Set var_88 = var_20C
  loc_150077B: If (var_88.RecordCount > 0) Then
  loc_1500781:   var_88.MoveFirst
  loc_15007B4:   var_8C = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_15007BF:   Close 1
  loc_15007C8:   Open "C:\reptmp\STATEMENT.TXT" For Output As 1 Len = &HFF
  loc_1500805:   If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardType"))) = "Member") Then
  loc_1500841:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("RelationShip"))) <> "Member") Then
  loc_15008F0:       var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardType"))) = "Member"), CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "Guest    : ")
  loc_1500947:       var_1A4 = (Chr(&HF) + var_184)
  loc_1500951:       var_208 = (var_D0 & "Guest    : " & " And SCL.LogSite_Code='" + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name"))), &H1C)))
  loc_1500958:       var_24C = (var_208 + Chr(&H12))
  loc_150095E:       Print 1, var_24C
  loc_150099F:     End If
  loc_1500A00:     var_104 = (Chr(&HF) + "Member   : ")
  loc_1500A0A:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Member"))), &H1C)))
  loc_1500A11:     var_184 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1500A17:     Print 1, var_184
  loc_1500A9B:     var_104 = (Chr(&HF) + "Member Id: ")
  loc_1500AA5:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo"))), &H1C)))
  loc_1500AAC:     var_184 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1500AB2:     Print 1, var_184
  loc_1500AD8:   Else
  loc_1500B39:     var_104 = (Chr(&HF) + "Guest    :   ")
  loc_1500B43:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Member"))), &H1C)))
  loc_1500B4A:     var_184 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1500B50:     Print 1, var_184
  loc_1500BD4:     var_104 = (Chr(&HF) + "Card Id  :   ")
  loc_1500BDE:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo"))), &H1C)))
  loc_1500BE5:     var_184 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1500BEB:     Print 1, var_184
  loc_1500C0E:   End If
  loc_1500C6C:   var_104 = (Chr(&HF) + "Dated    : ")
  loc_1500C76:   var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EAD428(CStr(var_88.Fields.Item("VDate").Value), &H1C)))
  loc_1500C7D:   var_184 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1500C83:   Print 1, var_184
  loc_1500CF1:   Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), CVar(var_88.Fields.Item("PreBalance")))
  loc_1500D28:   var_1E8 = Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00")), 9, 1)
  loc_1500D41:   var_114 = (Chr(&HF) + CVar(Proc_6_45_EAD428("OPENING BALANCE:", &H14)))
  loc_1500D4B:   var_1C4 = (var_88.Fields.Item("VDate").Value + CVar(var_1E8))
  loc_1500D52:   var_208 = (CVar(var_88.Fields.Item("Name")) + Chr(&H12))
  loc_1500D58:   Print 1, var_208
  loc_1500DA8:   var_104 = (Chr(&HF) + CVar(var_8C))
  loc_1500DAF:   var_134 = (CVar(Proc_6_45_EAD428("OPENING BALANCE:", &H14)) + Chr(&H12))
  loc_1500DB5:   Print 1, CVar(var_88.Fields.Item("PreBalance"))
  loc_1500E22:   var_114 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("AMT DR", &H1D)))
  loc_1500E29:   var_154 = (Chr(&H12) + Space(1))
  loc_1500E33:   var_184 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + CVar(Proc_6_52_EAD4F4("AMT CR", 9)))
  loc_1500E3A:   var_1C4 = (Format(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00") + Chr(&H12))
  loc_1500E40:   Print 1, CVar(var_88.Fields.Item("Name"))
  loc_1500E89:   var_104 = (Chr(&HF) + CVar(var_8C))
  loc_1500E90:   var_134 = (CVar(Proc_6_52_EAD4F4("AMT DR", &H1D)) + Chr(&H12))
  loc_1500E96:   Print 1, Space(1)
  loc_1500EA7:   ' Referenced from: 15011A0
  loc_1500EB6:   If Not(var_88.EOF) Then
  loc_1500F18:     var_134 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_88.Fields.Item("Narration").Value), &H27)))
  loc_1500F1F:     var_174 = (Space(1) + Chr(&H12))
  loc_1500F25:     Print 1, CVar(Proc_6_52_EAD4F4("AMT CR", 9))
  loc_1500FFD:     var_1C4 = (var_88.Fields.Item("vType").Value + "/")
  loc_1501009:     var_23C = (CVar(var_88.Fields.Item("Name")) + CVar(CStr(var_88.Fields.Item("VNo").Value)))
  loc_1501040:     Proc_6_39_E7C810(var_294, CVar(var_88.Fields.Item("AmtDr")), 1)
  loc_15010AD:     Proc_6_39_E7C810(var_31C, CVar(var_88.Fields.Item("AmtCr")), 1)
  loc_15010FA:     var_154 = (Chr(&HF) + Format(CVar(var_88.Fields.Item("U_EntDt")), "hh:nn"))
  loc_1501101:     var_184 = (Chr(&H12) + Space(2))
  loc_150110B:     var_26C = (Format(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00") + CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HD, 1)))
  loc_1501115:     var_2D4 = (var_26C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_294, "0.00")), 9, 1)))
  loc_150111C:     var_2F4 = (var_2D4 + Space(1))
  loc_1501126:     var_370 = (var_2F4 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_31C, "0.00")), 9, 1)))
  loc_150112D:     var_390 = (var_370 + Chr(&H12))
  loc_1501133:     Print 1, var_390
  loc_150119B:     var_88.MoveNext
  loc_15011A0:     GoTo loc_1500EA7
  loc_15011A3:   End If
  loc_15011C6:   var_104 = (Chr(&HF) + CVar(var_8C))
  loc_15011CD:   var_134 = (CVar(var_88.Fields.Item("U_EntDt")) + Chr(&H12))
  loc_15011D3:   Print 1, Format(CVar(var_88.Fields.Item("U_EntDt")), "hh:nn")
  loc_1501257:   var_114 = (Chr(&HF) + CVar(Proc_6_45_EAD428("CURRENT BALANCE:", &H14, 1)))
  loc_1501261:   var_184 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_B0, "0.00")), 9, 1)))
  loc_1501268:   var_1C4 = (Format(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00") + Chr(&H12))
  loc_150126E:   Print 1, CVar(var_88.Fields.Item("Name"))
  loc_15012B6:   var_104 = (Chr(&HF) + vbNullString)
  loc_15012BD:   var_134 = (CVar(Proc_6_45_EAD428("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_15012C3:   Print 1, "0.00"
  loc_15012F6:   var_104 = (Chr(&HF) + vbNullString)
  loc_15012FD:   var_134 = (CVar(Proc_6_45_EAD428("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_1501303:   Print 1, "0.00"
  loc_1501336:   var_104 = (Chr(&HF) + vbNullString)
  loc_150133D:   var_134 = (CVar(Proc_6_45_EAD428("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_1501343:   Print 1, "0.00"
  loc_1501376:   var_104 = (Chr(&HF) + vbNullString)
  loc_150137D:   var_134 = (CVar(Proc_6_45_EAD428("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_1501383:   Print 1, "0.00"
  loc_15013B6:   var_104 = (Chr(&HF) + vbNullString)
  loc_15013BD:   var_134 = (CVar(Proc_6_45_EAD428("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_15013C3:   Print 1, "0.00"
  loc_15013F4:   var_114 = (Chr(&H1B) + Chr(&H6D))
  loc_15013FA:   Print 1, Chr(&H12)
  loc_150140B:   Close 1
  loc_1501414:   Open "C:\reptmp\STATEMENT.BAT" For Output As 1 Len = &HFF
  loc_1501424:   Print 1, "TYPE C:\reptmp\STATEMENT.TXT>" & arg_C
  loc_150142F:   Close 1
  loc_150144A:   var_A8 = CVar(Shell("C:\reptmp\STATEMENT.BAT", 0)) 'Variant
  loc_1501451: End If
  loc_1501456: Set var_88 = Nothing
  loc_1501459: Exit Sub
End Sub

Public Sub Proc_275_19_166EDB0(arg_C, arg_10) '166EDB0
  'Data Table: 422204
  Dim var_D4 As String
  Dim var_E8 As String
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As String
  Dim var_18C As Variant
  Dim var_190 As String
  Dim unk_42221E As Connection15
  Dim var_98 As Recordset15
  Dim var_1B4 As Fields15
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_1BC As Field20
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_1B0 As Variant
  Dim var_1A0 As String
  Dim var_284 As Variant
  Dim var_2E4 As Variant
  Dim var_414 As Variant
  loc_166D703: var_88 = arg_C
  loc_166D70E: If (Proc_275_20_1365BE0() = 0) Then
  loc_166D711:   Exit Sub
  loc_166D712: End If
  loc_166D71D: var_E8 = 0
  loc_166D762: If (Proc_275_12_130A7A4(1, var_A8, var_A0, var_A4, 0) = 0) Then
  loc_166D765:   Exit Sub
  loc_166D766: End If
  loc_166D77A: var_D4 = "Select SCR.CardType,SCR.CardNo,MF.Relationship,SG.Name As Member,SCR.Name," & "convert(Varchar(11),SCL.Vdate,103) As Vdate,SCL.Type,SCL.VNo,SCL.Narration,SCL.AmtCr,SCL.AmtDr,SCL.U_EntDt,SCL.U_Name,SCL.PreBalance From "
  loc_166D781: var_E8 = var_D4 & "SmartCardLedger SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code "
  loc_166D78F: var_11C = CVar(var_E8 & "Left Join MemberFamily MF On SCL.Code=MF.CardRegId Left Join SubGroup SG " & "On MF.Subcode=SG.Subcode Where SCL.VType='RCARD' And SCL.Docid=") 'String
  loc_166D79D: Proc_6_17_EAA2B0(var_10C, var_88, var_11C, var_1B0, -1, var_1B4)
  loc_166D7A5: var_12C = 0 & var_10C 
  loc_166D7B5: var_15C = CVar(MemVar_1F92078) 'String
  loc_166D7CF: unk_42221E.Execute CStr(var_12C & " And SCL.LogSite_Code='" & var_15C & "'"), 0, var_E8
  loc_166D7DA: Set var_8C = var_1B4
  loc_166D819: Proc_6_17_EAA2B0(var_10C, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_12C)
  loc_166D821: var_11C = -1 & var_10C 
  loc_166D82F: unk_42221E.Execute CStr(var_11C), var_1B4, var_C8
  loc_166D83A: Set var_98 = var_1B4
  loc_166D860: If (var_98.RecordCount > 0) Then
  loc_166D88B:   var_9C = Proc_6_38_E68A98(CVar(var_98.Fields.Item("SMARTCARDRECIEPTPrintingDW")))
  loc_166D894: End If
  loc_166D89C: If (var_9C = "W") Then
  loc_166D8A5:   var_1B8 = var_8C.RecordCount
  loc_166D8B3:   If (var_1B8 > 0) Then
  loc_166D8B9:     var_8C.MoveFirst
  loc_166D8BE:     ' Referenced from: 166D936
  loc_166D8CD:     If Not(var_8C.EOF) Then
  loc_166D8E7:       var_1BC = var_8C.Fields.Item("AmtCr")
  loc_166D8F6:       Proc_6_39_E7C810(var_11C, CVar(var_1BC))
  loc_166D8FE:       var_13C = 0
  loc_166D910:       If (var_11C > var_13C) Then
  loc_166D916:         var_AC = "RECEIPT"
  loc_166D91C:         var_B0 = "Received with thanks against.."
  loc_166D922:       Else
  loc_166D925:         var_AC = "REFUND SLIP"
  loc_166D92B:         var_B0 = "Refund with thanks against.."
  loc_166D92E:       End If
  loc_166D931:       var_8C.MoveNext
  loc_166D936:       GoTo loc_166D8BE
  loc_166D939:     End If
  loc_166D93E:     var_1D0 = "CASHCARDRECIEPT" 'Variant
  loc_166D96C:     Set var_1B4 = var_8C 
  loc_166D973:     CreateFieldDefFile(var_1B4, CStr(CVar(MemVar_1F920B4 & "\") & var_1D0 & ".ttx"))
  loc_166D97F:     Set var_8C = var_1B4
  loc_166D9B6:     var_D4 = CStr(CVar(MemVar_1F920B4 & "\") & var_1D0 & ".RPT")
  loc_166D9C0:     Call 0.Method_arg_1C (var_D4, var_13C, var_1B4)
  loc_166D9CB:     MemVar_1F921E4 = var_1B4
  loc_166D9F7:     Call 0.Method_arg_64 (var_1B4, CVar(var_8C), var_13C)
  loc_166D9FF:     Call 0.Method_arg_2C (var_15C, &HFF)
  loc_166DA0D:     Call 0.Method_arg_150 (var_D0)
  loc_166DA12:     var_15C = 1
  loc_166DA26:     Call 0.Method_arg_90 (var_1B4, var_1B8)
  loc_166DA2E:     Call 0.Method_arg_24 (var_1E0)
  loc_166DA3D:     For var_200 =  To CVar(var_1B8): var_15C = var_200 'Variant
  loc_166DA57:       Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DA5F:       Call 0.Method_arg_20 (var_1BC)
  loc_166DA67:       Call 0.Method_arg_30 (var_D4)
  loc_166DA7D:       var_210 = Ucase(CVar(var_D4)) 'Variant
  loc_166DAAD:       If (var_210 = Ucase("comp_name")) Then
  loc_166DAD2:         Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DADA:         Call 0.Method_arg_20 (var_1BC)
  loc_166DAE2:         Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_166DAF8:       Else
  loc_166DB1A:         If (var_210 = Ucase("comp_add1")) Then
  loc_166DB3F:           Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DB47:           Call 0.Method_arg_20 (var_1BC)
  loc_166DB4F:           Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_166DB65:         Else
  loc_166DB87:           If (var_210 = Ucase("comp_pin")) Then
  loc_166DBAC:             Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DBB4:             Call 0.Method_arg_20 (var_1BC)
  loc_166DBBC:             Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_166DBD2:           Else
  loc_166DBF4:             If (var_210 = Ucase("comp_GSTIN")) Then
  loc_166DC19:               Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DC21:               Call 0.Method_arg_20 (var_1BC)
  loc_166DC29:               Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_166DC3F:             Else
  loc_166DC61:               If (var_210 = Ucase("Title")) Then
  loc_166DC86:                 Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DC8E:                 Call 0.Method_arg_20 (var_1BC)
  loc_166DC96:                 Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_166DCAC:               Else
  loc_166DCCE:                 If (var_210 = Ucase("Narration")) Then
  loc_166DD00:                   Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DD08:                   Call 0.Method_arg_20 (var_1BC)
  loc_166DD10:                   Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(var_B0) & "'")
  loc_166DD28:                 Else
  loc_166DD4A:                   If (var_210 = Ucase("CurrBal")) Then
  loc_166DD74:                     Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166DD7C:                     Call 0.Method_arg_20 (var_1BC)
  loc_166DD84:                     Call 0.Method_arg_38 ("'" & CStr(var_C8) & "'")
  loc_166DD99:                   End If
  loc_166DD99:                 End If
  loc_166DD99:               End If
  loc_166DD99:             End If
  loc_166DD99:           End If
  loc_166DD99:         End If
  loc_166DD99:       End If
  loc_166DD9C:     Next var_200 'Variant
  loc_166DDC2:     var_15C = arg_10
  loc_166DDD2:     var_17C = "0"
  loc_166DDE9:     If CBool((Ucase(arg_10) <> "PRN") And (Ucase(var_15C) <> var_17C)) Then
  loc_166DDEF:       Proc_96_98_F0F978(arg_10)
  loc_166DDF4:     End If
  loc_166DDFC:     If (arg_10 = "0") Then
  loc_166DE04:       Set var_1BC = Nothing
  loc_166DE20:       Set var_1B4 = MemVar_1F921E4 
  loc_166DE2C:       Proc_6_99_1483714(var_1B4, 0, "RECIEPT")
  loc_166DE37:       MemVar_1F921E4 = var_1B4
  loc_166DE48:     Else
  loc_166DE65:       Call 0.Method_Me8 (False, 1, var_15C, var_17C)
  loc_166DE6A:     End If
  loc_166DE6A:   End If
  loc_166DE6D: Else
  loc_166DE81:   If (var_8C.RecordCount > 0) Then
  loc_166DE87:     var_8C.MoveFirst
  loc_166DEBA:     var_90 = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_166DEC5:     Close 1
  loc_166DECE:     Open "C:\reptmp\RECIEPT.TXT" For Output As 1 Len = &HFF
  loc_166DF0D:     Print 1, Proc_6_98_11AC4E4(CStr(Left(MemVar_1F92130, &H27)), "D", &H27)
  loc_166DF44:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166DF4B:     var_14C = (Ucase("CurrBal") + Chr(&H12))
  loc_166DF51:     Print 1, Chr(&H12) & " And SCL.LogSite_Code='"
  loc_166DF88:     Proc_6_39_E7C810(Ucase("CurrBal"), CVar(var_8C.Fields.Item("AmtCr")), var_1A0)
  loc_166DFA2:     If (Ucase("CurrBal") > 0) Then
  loc_166DFCC:       Print 1, Proc_6_98_11AC4E4("RECEIPT", "D", &H27)
  loc_166DFE0:     Else
  loc_166E007:       Print 1, Proc_6_98_11AC4E4("REFUND SLIP", "D", &H27)
  loc_166E018:     End If
  loc_166E03B:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166E042:     var_14C = (Ucase("CurrBal") + Chr(&H12))
  loc_166E048:     Print 1, Chr(&H12) & " And SCL.LogSite_Code='"
  loc_166E0F4:     var_11C = (Chr(&HF) + "Receipt No.:")
  loc_166E0FE:     var_16C = (Ucase("CurrBal") + CVar(Proc_6_52_EAD4F4(CStr(var_8C.Fields.Item("VNo").Value), 8)))
  loc_166E107:     var_18C = ((Ucase(arg_10) <> "PRN") And (Ucase(" Date :   ") <> "VDate") + " Date :   ")
  loc_166E111:     var_23C = (var_8C.Fields.Item("VNo").Value & " And SCL.LogSite_Code='" & " Date :   " & "'" + CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("VDate").Value), &HB)))
  loc_166E118:     var_25C = (var_23C + Chr(&H12))
  loc_166E11E:     Print 1, var_25C
  loc_166E18C:     If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardType")), &HFF) = "Member") Then
  loc_166E1F0:       var_11C = (Chr(&HF) + "Member   :   ")
  loc_166E1FA:       var_16C = (Ucase("CurrBal") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Member"))), &H1C)))
  loc_166E201:       var_1B0 = ((Ucase(arg_10) <> "PRN") And (Ucase(" Date :   ") <> "VDate") + Chr(&H12))
  loc_166E207:       Print 1, var_8C.Fields.Item("VDate").Value
  loc_166E28B:       var_11C = (Chr(&HF) + "Member Id:   ")
  loc_166E295:       var_16C = (Ucase("CurrBal") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo"))), &H1C)))
  loc_166E29C:       var_1B0 = ((Ucase(arg_10) <> "PRN") And (Ucase(" Date :   ") <> "VDate") + Chr(&H12))
  loc_166E2A2:       Print 1, var_8C.Fields.Item("VDate").Value
  loc_166E2FE:       If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RelationShip"))) <> "Member") Then
  loc_166E3AD:         var_1B0 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardType"))) = "Member"), CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "Guest    :   ")
  loc_166E404:         var_22C = (Chr(&HF) + var_1B0)
  loc_166E40E:         var_25C = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("VDate").Value), &HB)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name"))), &H1C)))
  loc_166E415:         var_284 = (var_25C + Chr(&H12))
  loc_166E41B:         Print 1, var_284
  loc_166E45C:       End If
  loc_166E45F:     Else
  loc_166E4C0:       var_11C = (Chr(&HF) + "Guest    :     ")
  loc_166E4CA:       var_16C = (CVar(var_8C.Fields.Item("CardType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Member"))), &H1C)))
  loc_166E4D1:       var_1B0 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   ") + Chr(&H12))
  loc_166E4D7:       Print 1, var_1B0
  loc_166E55B:       var_11C = (Chr(&HF) + "Card Id  :     ")
  loc_166E565:       var_16C = (CVar(var_8C.Fields.Item("CardType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo"))), &H1C)))
  loc_166E56C:       var_1B0 = (CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   ") + Chr(&H12))
  loc_166E572:       Print 1, var_1B0
  loc_166E595:     End If
  loc_166E5BD:     var_94 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name")))
  loc_166E60F:     Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), CVar(var_8C.Fields.Item("PreBalance")))
  loc_166E646:     var_190 = Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "0.00")), 9, 1)
  loc_166E65F:     var_12C = (Chr(&HF) + CVar(Proc_6_45_EAD428("PREVIOUS BALANCE:", &H14)))
  loc_166E669:     var_23C = (CVar(var_8C.Fields.Item("CardNo")) + CVar(var_190))
  loc_166E670:     var_25C = (CVar(var_8C.Fields.Item("Name")) + Chr(&H12))
  loc_166E676:     Print 1, var_25C
  loc_166E6C6:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166E6CD:     var_14C = (CVar(Proc_6_45_EAD428("PREVIOUS BALANCE:", &H14)) + Chr(&H12))
  loc_166E6D3:     Print 1, CVar(var_8C.Fields.Item("PreBalance"))
  loc_166E70A:     Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("PREVIOUS BALANCE:", &H14)), CVar(var_8C.Fields.Item("AmtCr")))
  loc_166E724:     If (CVar(Proc_6_45_EAD428("PREVIOUS BALANCE:", &H14)) > 0) Then
  loc_166E749:       var_11C = (Chr(&HF) + "Received with thanks against..")
  loc_166E750:       var_14C = (CVar(Proc_6_45_EAD428("PREVIOUS BALANCE:", &H14)) + Chr(&H12))
  loc_166E756:       Print 1, CVar(var_8C.Fields.Item("PreBalance"))
  loc_166E76A:     Else
  loc_166E78C:       var_11C = (Chr(&HF) + "Refund with thanks against..")
  loc_166E793:       var_14C = (CVar(Proc_6_45_EAD428("PREVIOUS BALANCE:", &H14)) + Chr(&H12))
  loc_166E799:       Print 1, CVar(var_8C.Fields.Item("PreBalance"))
  loc_166E7AA:       ' Referenced from:     166E9EE
  loc_166E7AA:     End If
  loc_166E7B9:     If Not(var_8C.EOF) Then
  loc_166E87B:       var_2C4 = IIf((var_8C.Fields.Item("Type").Value = "RCARDC"), "Amount", IIf((var_8C.Fields.Item("Type").Value = "RCARDS"), "Security", vbNullString))
  loc_166E8BB:       Proc_6_39_E7C810(var_314, CVar(var_8C.Fields.Item("AmtDr")))
  loc_166E8E6:       Proc_6_39_E7C810(var_36C, CVar(var_8C.Fields.Item("AmtDr")))
  loc_166E911:       Proc_6_39_E7C810(var_3A4, CVar(var_8C.Fields.Item("AmtCr")))
  loc_166E973:       var_12C = (Chr(&HF) + Space(&H14))
  loc_166E97D:       var_2E4 = (Chr(&H12) + CVar(Proc_6_45_EAD428(CStr(var_2C4), &HA)))
  loc_166E987:       var_414 = (var_2E4 + CVar(Proc_6_52_EAD4F4(CStr(Format(IIf((var_314 > 0), var_36C, var_3A4), "0.00")), 9, 1)))
  loc_166E98D:       Print 1, var_414
  loc_166E9E9:       var_8C.MoveNext
  loc_166E9EE:       GoTo loc_166E7AA
  loc_166E9F1:     End If
  loc_166EA14:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166EA1B:     var_14C = (Space(&H14) + Chr(&H12))
  loc_166EA21:     Print 1, var_8C.Fields.Item("Type").Value
  loc_166EAA5:     var_12C = (Chr(&HF) + CVar(Proc_6_45_EAD428("CURRENT BALANCE:", &H14, 1)))
  loc_166EAAF:     var_1B0 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_C8, "0.00")), 9, 1)))
  loc_166EAB6:     var_23C = (Format(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "0.00") + Chr(&H12))
  loc_166EABC:     Print 1, "Security"
  loc_166EB2B:     var_12C = (Chr(&HF) + CVar(Proc_6_45_EAD428("Cashier :", &HA, 1)))
  loc_166EB35:     var_16C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_94, &HA)))
  loc_166EB3C:     var_1B0 = (Format(var_C8, "0.00") + Chr(&H12))
  loc_166EB42:     Print 1, Format(CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "0.00")
  loc_166EBAF:     var_11C = (Chr(&HF) + "Printed On ")
  loc_166EBB6:     var_18C = (CVar(Proc_6_45_EAD428("Cashier :", &HA, 1)) + Format(CVar(Proc_6_14_EF349C(1)), "dd/MMM/yyyy hh:nn:ss"))
  loc_166EBBD:     var_22C = (Chr(&H12) + Chr(&H12))
  loc_166EBC3:     Print 1, Chr(&H12)
  loc_166EC01:     var_11C = (Chr(&HF) + vbNullString)
  loc_166EC08:     var_14C = (CVar(Proc_6_45_EAD428("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166EC0E:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166EC41:     var_11C = (Chr(&HF) + vbNullString)
  loc_166EC48:     var_14C = (CVar(Proc_6_45_EAD428("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166EC4E:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166EC81:     var_11C = (Chr(&HF) + vbNullString)
  loc_166EC88:     var_14C = (CVar(Proc_6_45_EAD428("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166EC8E:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166ECC1:     var_11C = (Chr(&HF) + vbNullString)
  loc_166ECC8:     var_14C = (CVar(Proc_6_45_EAD428("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166ECCE:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166ED01:     var_11C = (Chr(&HF) + vbNullString)
  loc_166ED08:     var_14C = (CVar(Proc_6_45_EAD428("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166ED0E:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166ED3F:     var_12C = (Chr(&H1B) + Chr(&H6D))
  loc_166ED45:     Print 1, Chr(&H12)
  loc_166ED56:     Close 1
  loc_166ED5F:     Open "C:\reptmp\RECIEPT.BAT" For Output As 1 Len = &HFF
  loc_166ED6F:     Print 1, "TYPE C:\reptmp\RECIEPT.TXT>" & arg_10
  loc_166ED7A:     Close 1
  loc_166ED95:     var_C0 = CVar(Shell("C:\reptmp\RECIEPT.BAT", 0)) 'Variant
  loc_166ED9C:   End If
  loc_166ED9C: End If
  loc_166EDA1: Set var_8C = Nothing
  loc_166EDA9: Set var_98 = Nothing
  loc_166EDAC: Exit Sub
End Sub

Public Sub Proc_275_20_1365BE0
  'Data Table: 422204
  Dim var_86 As Integer
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_D4 As String
  Dim unk_42221E As Connection15
  Dim var_C4 As Recordset15
  Dim var_1B0 As Fields15
  Dim var_B0 As Double
  Dim var_BE As Integer
  Dim var_D8 As String
  Dim var_1AC As Variant
  Dim var_DC As String
  Dim var_A0 As Double
  Dim var_10C As Variant
  loc_13653B8: On Error Goto loc_1365B6C
  loc_13653BD: var_86 = 0
  loc_13653DF: var_DC = 0
  loc_136541A: If (Proc_275_12_130A7A4(2, var_90, var_8C, 0, 0, var_98) = 0) Then
  loc_136541D:   GoTo loc_1365B6C
  loc_1365420: End If
  loc_136542D: var_11C = "Select Round(IsNull(CurrBal,0),2) CurrBal,Round(IsNull(SecurBal,0),2) SecurBal From SmartCardRegistration Where IsNull(CurrBalDiffChecked,0)=0 And Code="
  loc_136543D: Proc_6_17_EAA2B0(var_10C, var_8C, var_11C, var_1AC, -1, var_1B0)
  loc_136546F: unk_42221E.Execute CStr(var_A0 & var_10C & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_DC, 0
  loc_136547A: Set var_C4 = var_1B0
  loc_1365496: var_CE = CByte(0) 'Byte
  loc_13654A0: var_1B4 = var_C4.RecordCount
  loc_13654AE: If (var_1B4 > 0) Then
  loc_13654BA:   unk_42221E.BeginTrans var_1B4
  loc_13654C3:   var_CE = CByte(1) 'Byte
  loc_1365505:   If (CVar(var_98) > var_C4.Fields.Item("CurrBal").Value) Then
  loc_136550D:     var_B0 = CDate("31/Mar/2012")
  loc_1365513:     var_A8 = "ECARD"
  loc_1365535:     var_BC = "CARDADJC"
  loc_136553B:     var_CC = "Smart Card Charge Amt Diff. Adjustment..."
  loc_1365560:     var_10C = var_C4.Fields.Item("CurrBal").Value
  loc_1365574:     var_12C = (CVar(var_98) - var_10C)
  loc_13655A9:     var_18C = var_C4.Fields.Item("CurrBal").Value
  loc_13655BC:     var_D4 = "A"
  loc_13655F8:     Proc_275_16_10AF42C(MemVar_1F92044, Proc_275_15_1118398(MemVar_1F92044, var_A8, var_B0, var_B4, var_B8), 1, var_A8, var_B8, var_B4, MemVar_1F92070, var_B0)
  loc_1365621:     Proc_6_17_EAA2B0(var_10C, var_8C, var_8C, var_90, CSng(Round(var_A0 & var_10C, 2)))
  loc_136565F:     var_18C = CVar("Update SmartCardRegistration Set CurrBal=" & CStr(var_98) & " Where Code=") & var_10C & " And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_1365676:     unk_42221E.Execute CStr(var_18C & "'"), var_1D8, -1
  loc_136569B:   Else
  loc_13656D9:     If (CVar(var_98) < var_C4.Fields.Item("CurrBal").Value) Then
  loc_13656DF:       var_A8 = "ECARD"
  loc_13656E4:       var_BE = 1
  loc_1365701:       var_BC = "CARDERRC"
  loc_136571C:       var_1B0 = var_C4.Fields
  loc_136572C:       var_10C = var_1B0.Item("CurrBal").Value
  loc_1365742:       var_D8 = "A"
  loc_136574B:       var_D4 = Proc_6_14_EF349C(var_1B0, CDbl(0), "Transaction Err... Update Current Balance")
  loc_1365764:       var_12C = (var_10C - CVar(var_98))
  loc_1365792:       Proc_275_16_10AF42C(MemVar_1F92044, Proc_275_15_1118398(MemVar_1F92044, var_A8, MemVar_1F920EC, var_B4, var_B8, var_BE), var_BE, var_A8, var_B8, var_B4, MemVar_1F92070, MemVar_1F920EC)
  loc_13657B5:       Proc_6_17_EAA2B0(var_10C, var_8C, var_8C, var_90, CDbl(0))
  loc_13657DA:       var_12C = CVar("Update SmartCardRegistration Set CurrBal=" & CStr(var_98) & " Where Code=") 'String
  loc_136580A:       unk_42221E.Execute CStr(var_12C & var_10C & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_1D8, -1
  loc_136582C:     End If
  loc_136582C:   End If
  loc_1365846:   var_1B0 = var_C4.Fields
  loc_136586A:   If (CVar(var_A0) > var_1B0.Item("SecurBal").Value) Then
  loc_1365870:     var_A8 = "ECARD"
  loc_1365875:     var_BE = 1
  loc_1365892:     var_BC = "CARDERRS"
  loc_13658AC:     var_D8 = "A"
  loc_13658B5:     var_D4 = Proc_6_14_EF349C(var_1B0, CSng(var_12C), "Transaction Err... Update Card Security Balance")
  loc_13658F0:     Proc_275_16_10AF42C(MemVar_1F92044, Proc_275_15_1118398(MemVar_1F92044, var_A8, MemVar_1F920EC, var_B4, var_B8, var_BE), var_BE, var_A8, var_B8, var_B4, MemVar_1F92070, MemVar_1F920EC)
  loc_1365929:     var_A0 = CSng(var_C4.Fields.Item("SecurBal").Value)
  loc_1365947:     If (Proc_275_7_10CC664(var_98, var_A0, var_C8, var_A0, var_8C, var_90) = 0) Then
  loc_136594A:       GoTo loc_1365B6C
  loc_136594D:     End If
  loc_1365950:   Else
  loc_136598E:     If (CVar(var_A0) < var_C4.Fields.Item("SecurBal").Value) Then
  loc_1365994:       var_A8 = "ECARD"
  loc_1365999:       var_BE = 1
  loc_13659B6:       var_BC = "CARDERRS"
  loc_13659BC:       var_CC = "Transaction Err... Update Security Balance"
  loc_13659D1:       var_1B0 = var_C4.Fields
  loc_13659E1:       var_10C = var_1B0.Item("SecurBal").Value
  loc_13659F7:       var_D8 = "A"
  loc_1365A00:       var_D4 = Proc_6_14_EF349C(CDbl(0), CDbl(0), var_CC)
  loc_1365A19:       var_12C = (var_10C - CVar(var_A0))
  loc_1365A47:       Proc_275_16_10AF42C(MemVar_1F92044, Proc_275_15_1118398(MemVar_1F92044, var_A8, MemVar_1F920EC, var_B4, var_B8, var_BE), var_BE, var_A8, var_B8, var_B4, MemVar_1F92070, MemVar_1F920EC)
  loc_1365A6A:       Proc_6_17_EAA2B0(var_10C, var_8C, var_8C, var_90, CDbl(0))
  loc_1365A88:       var_D8 = "Update SmartCardRegistration Set SecurBal=" & CStr(var_A0)
  loc_1365AB1:       var_1AC = CVar(var_D8 & " Where Code=") & var_10C & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'" 
  loc_1365ABF:       unk_42221E.Execute CStr(var_1AC), var_1D8, -1
  loc_1365AE1:     End If
  loc_1365AE1:   End If
  loc_1365AFE:   Proc_6_17_EAA2B0(var_10C, var_8C, "Update SmartCardRegistration Set CurrBalDiffChecked=1 Where Code=", var_1AC, -1, var_1B0)
  loc_1365B06:   var_12C = var_1B0 & var_10C 
  loc_1365B0F:   var_14C = var_12C & " And LogSite_Code='" 
  loc_1365B19:   var_16C = var_14C & CVar(MemVar_1F92078) 
  loc_1365B26:   var_D4 = CStr(var_16C & "'")
  loc_1365B30:   unk_42221E.Execute var_D4, CSng(var_12C), var_CC
  loc_1365B50:   unk_42221E.CommitTrans
  loc_1365B59:   var_CE = CByte(0) 'Byte
  loc_1365B5D: End If
  loc_1365B62: Set var_C4 = Nothing
  loc_1365B6A: Result &HFF End Sub 'Integer
  loc_1365B6B: Result MemVar_1F920C8 End Sub 'Integer
  loc_1365B6C: ' Referenced from: 136594A
  loc_1365B6C: ' Referenced from: 136541D
  loc_1365B6C: ' Referenced from: 13653B8
  loc_1365B75: If (CInt(var_CE) = 1) Then
  loc_1365B7E:   unk_42221E.RollbackTrans
  loc_1365B83: End If
  loc_1365B8B: Set var_1B0 = Err()
  loc_1365B91: Call 0.Method_arg_1C (var_1B4, CDate(var_D4))
  loc_1365BA2: If (var_1B4 <> 0) Then
  loc_1365BAD:   Set var_1B0 = Err()
  loc_1365BB3:   Call 0.Method_arg_2C (var_D4)
  loc_1365BCC:   MsgBox(CVar(var_D4), &H10, var_12C, var_14C, var_16C)
  loc_1365BDF: End If
  loc_1365BDF: Result var_D8 End Sub 'Integer
End Sub

Public Sub Proc_275_21_11281A4
  'Data Table: 422204
  Dim var_94 As Double
  Dim var_B0 As String
  Dim unk_42221E As Connection15
  Dim var_A8 As Recordset15
  Dim var_A2 As Integer
  Dim var_D8 As Fields15
  Dim var_124 As Variant
  loc_1127E69: var_94 = CDate("31/Mar/2012")
  loc_1127E6F: var_8C = "ECARD"
  loc_1127E86: var_B0 = "Select IsNull(Code,'') RegId,IsNull(SerialNo,'') SerialNo,IsNull(CurrBal,0) CurrBal from SmartCardRegistration Where IsNull(CurrBal,0)<0 And LogSite_Code='" & MemVar_1F92078
  loc_1127E96: unk_42221E.Execute var_B0 & "' Order By IsNull(Code,'')", var_D4, -1
  loc_1127EA1: Set var_A8 = var_D8
  loc_1127EC5: If (var_A8.RecordCount > 0) Then
  loc_1127EC8:   ' Referenced from: 1128002
  loc_1127ED7:   If Not(var_A8.EOF) Then
  loc_1127EF9:     var_A0 = "CARDADJC"
  loc_1127EFF:     var_AC = "Smart Card Charge Amt Diff. Adjustment..."
  loc_1127F14:     var_D8 = var_A8.Fields
  loc_1127F24:     var_134 = var_D8.Item("RegId").Value
  loc_1127F4B:     var_144 = var_A8.Fields.Item("SerialNo").Value
  loc_1127F72:     var_D4 = var_A8.Fields.Item("CurrBal").Value
  loc_1127F8A:     var_158 = "A"
  loc_1127FA3:     var_124 = Abs(var_D4)
  loc_1127FD4:     Proc_275_16_10AF42C(MemVar_1F92044, Proc_275_15_1118398(MemVar_1F92044, var_8C, var_94, var_98), 1, var_8C, var_9C, var_98, MemVar_1F92070, var_94)
  loc_1127FFD:     var_A8.MoveNext
  loc_1128002:     GoTo loc_1127EC8
  loc_1128005:   End If
  loc_1128005: End If
  loc_1128019: var_B0 = "Select IsNull(Code,'') RegId,IsNull(SerialNo,'') SerialNo,IsNull(SecurBal,0) SecurBal from SmartCardRegistration Where IsNull(SecurBal,0)<0 And LogSite_Code='" & MemVar_1F92078
  loc_1128029: unk_42221E.Execute var_B0 & "' Order By IsNull(Code,'')", var_D4, -1
  loc_1128034: Set var_A8 = var_D8
  loc_1128058: If (var_A8.RecordCount > 0) Then
  loc_112805B:   ' Referenced from: 1128195
  loc_112806A:   If Not(var_A8.EOF) Then
  loc_112806F:     var_A2 = 1
  loc_112808C:     var_A0 = "CARDADJS"
  loc_1128092:     var_AC = "Smart Card Security Amt Diff. Adjustment..."
  loc_11280B7:     var_134 = var_A8.Fields.Item("RegId").Value
  loc_11280DE:     var_144 = var_A8.Fields.Item("SerialNo").Value
  loc_112811D:     var_158 = "A"
  loc_1128136:     var_124 = Abs(var_A8.Fields.Item("SecurBal").Value)
  loc_1128167:     Proc_275_16_10AF42C(MemVar_1F92044, Proc_275_15_1118398(MemVar_1F92044, var_8C, var_94, var_98, var_9C, var_A2, var_A8.Fields, CStr(var_134)), var_A2, var_8C, var_9C, var_98, MemVar_1F92070, var_94)
  loc_1128190:     var_A8.MoveNext
  loc_1128195:     GoTo loc_112805B
  loc_1128198:   End If
  loc_1128198: End If
  loc_112819D: Set var_A8 = Nothing
  loc_11281A0: Exit Sub
End Sub

Public Sub Proc_275_22_10E4F40
  'Data Table: 422204
  Dim var_F8 As String
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_118 As String
  Dim var_128 As Variant
  Dim var_8C As String
  Dim unk_42221E As Connection15
  Dim var_BC As Recordset15
  Dim var_E8 As Variant
  loc_10E4C67: var_A8 = 0
  loc_10E4CC0: If (Proc_275_12_130A7A4(2, 0, var_88, 0, 0) = 0) Then
  loc_10E4CC3:   Exit Sub
  loc_10E4CC4: End If
  loc_10E4CD1: var_F8 = "Select SCR.CardType,SCR.Name,SCR.CardNo,convert(Varchar(11),SCL.Vdate,106) As Vdate,SCL.VType,SCL.VNo,SCL.Narration,SCL.AmtCr,SCL.AmtDr From SmartCardLedger SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code Where SCL.Code="
  loc_10E4CE1: Proc_6_17_EAA2B0(var_E8, var_88, var_F8, var_148, -1, var_14C)
  loc_10E4CE9: var_108 = 0 & var_E8 
  loc_10E4CED: var_118 = " Order By SCL.U_EntDt"
  loc_10E4CF2: var_128 = var_108 & var_118 
  loc_10E4D00: unk_42221E.Execute CStr(var_128), 0, var_A8
  loc_10E4D0B: Set var_BC = var_14C
  loc_10E4D25: var_150 = var_BC.RecordCount
  loc_10E4D33: If (var_150 <= 0) Then
  loc_10E4D44:   var_D8 = "No Records Found."
  loc_10E4D4F:   MsgBox(var_D8, &H40, var_108, var_128, var_148)
  loc_10E4D5F:   Exit Sub
  loc_10E4D60: End If
  loc_10E4D63: var_C0 = "MemberCardStatement"
  loc_10E4D69: var_C4 = "Member Card Statement"
  loc_10E4D90: Set var_14C = var_BC 
  loc_10E4D97: CreateFieldDefFile(var_14C, MemVar_1F920B4 & "\" & var_C0 & ".ttx", &HFF)
  loc_10E4DC2: var_8C = MemVar_1F920B4 & "\"
  loc_10E4DD9: Call 0.Method_arg_1C (var_8C & var_C0 & ".RPT", var_D8, var_14C)
  loc_10E4DE4: MemVar_1F921E4 = var_14C
  loc_10E4E0D: Call 0.Method_arg_64 (var_14C, CVar(var_14C), var_F8)
  loc_10E4E15: Call 0.Method_arg_2C (var_118, 0)
  loc_10E4E23: Call 0.Method_arg_150 (0)
  loc_10E4E39: Call 0.Method_arg_90 (var_14C, var_150)
  loc_10E4E41: Call 0.Method_arg_24 (var_C6)
  loc_10E4E4D: For var_154 =  To CInt(var_150): 1 = var_154 'Integer
  loc_10E4E66:   Call 0.Method_arg_90 (var_14C, CLng(var_C6))
  loc_10E4E6E:   Call 0.Method_arg_20 (var_158)
  loc_10E4E76:   Call 0.Method_arg_30 (var_8C)
  loc_10E4E7E:   var_E8 = CVar(var_8C) 'String
  loc_10E4EA5:   If (Ucase(var_E8) = "TITLE") Then
  loc_10E4EB3:     Proc_6_17_EAA2B0(var_E8)
  loc_10E4ECF:     Call 0.Method_arg_90 (var_14C, CLng(var_C6), var_158)
  loc_10E4ED7:     Call 0.Method_arg_20 (CStr(var_E8))
  loc_10E4EDF:     Call 0.Method_arg_38 (var_C4)
  loc_10E4EF1:   End If
  loc_10E4EF4: Next var_154 'Integer
  loc_10E4EFE: Set var_158 = Nothing
  loc_10E4F14: Set var_14C = MemVar_1F921E4 
  loc_10E4F20: Proc_6_99_1483714(var_14C, 0, var_C4)
  loc_10E4F2B: MemVar_1F921E4 = var_14C
  loc_10E4F3B: Set var_BC = Nothing
  loc_10E4F3E: Exit Sub
End Sub
