Private var_154 As New CGZipFiles

Public Sub Proc_165_0_14CCEC0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '14CCEC0
  'Data Table: 4E88A0
  Dim var_90 As Integer
  Dim var_A4 As String
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim unk_4E88A6 As Connection15
  Dim var_A0 As Recordset15
  Dim var_D4 As Variant
  Dim var_158 As Variant
  Dim var_15C As Recordset15
  Dim var_1A4 As Fields15
  Dim var_1B8 As Field20
  Dim var_1EC As String
  Dim var_92 As Integer
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim var_94 As Integer
  Dim var_200 As String
  Dim var_204 As String
  Dim var_96 As Integer
  Dim var_9C As Long
  Dim var_1E8 As Variant
  Dim var_348 As Variant
  Dim var_2A8 As Variant
  Dim var_3E0 As Variant
  loc_14CC1F4: On Error Resume Next
  loc_14CC1FD: var_90 = CInt(arg_10)
  loc_14CC20B: If (arg_28 = 0) Then
  loc_14CC244:   Proc_6_17_EAA2B0(var_D4, Trim(arg_C), CVar("Select * from UserModule where  OutletCode='" & arg_2C & "' and [OPtion]="), var_158)
  loc_14CC24C:   var_F4 = -1 & var_D4 
  loc_14CC26D:   unk_4E88A6.Execute CStr(var_F4 & " and OPT1=" & CVar(var_90)), var_15C, var_90
  loc_14CC278:   Set var_A0 = var_15C
  loc_14CC299: Else
  loc_14CC2BA:   var_C4 = Trim(arg_C)
  loc_14CC2C5:   Proc_6_17_EAA2B0(var_D4, var_C4, "Select * from UserModule where[OPtion]=")
  loc_14CC2E9:   var_134 = var_158 & var_D4 & " and OPT1=" & CVar(var_90) & " and Flag<>'N'" 
  loc_14CC2F7:   unk_4E88A6.Execute CStr(var_134), -1, var_15C
  loc_14CC302:   Set var_A0 = var_15C
  loc_14CC31C: End If
  loc_14CC334: If (var_A0.RecordCount > 0) Then
  loc_14CC340:   Result 0 End Sub 'Integer
  loc_14CC341: End If
  loc_14CC371: Proc_6_17_EAA2B0(var_C4, arg_2C, "Select Count(opt1) from UserModule Where OutletCode=", var_1A0, -1)
  loc_14CC379: var_D4 = var_15C & var_C4 
  loc_14CC3A4: Proc_6_17_EAA2B0(var_134, arg_C, var_D4 & " And OPT1=" & CVar(var_90) & " And [Option]=", var_1A4)
  loc_14CC3BA: unk_4E88A6.Execute CStr(0 & var_134), var_1B8, var_1C8
  loc_14CC3C2:  = var_15C.Fields
  loc_14CC3CA:  = var_1A4.Item()
  loc_14CC3D2:  = var_1B8.Value
  loc_14CC403: If (var_1C8 > 0) Then
  loc_14CC40F:   Result 0 End Sub 'Integer
  loc_14CC410: End If
  loc_14CC430: If CBool(Trim(arg_18) <> vbNullString) Then
  loc_14CC453:   If CBool(Trim(arg_1C) <> vbNullString) Then
  loc_14CC49D:     Proc_6_17_EAA2B0(var_D4, Trim(arg_18), CVar("Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & " And [Option]="), var_134, -1)
  loc_14CC4BC:     unk_4E88A6.Execute CStr(var_15C & var_D4 & vbNullString), var_1A4, 0
  loc_14CC4C4:     var_1B8 = var_15C.Fields
  loc_14CC4CC:      = var_1A4.Item()
  loc_14CC4DB:     Proc_6_39_E7C810(var_1A0)
  loc_14CC54B:     var_E4 = CVar("Select Max(opt3) from UserModule where OPT2=" & CStr(CInt(var_1A0)) & " And OPT1=" & CStr(var_90) & " And [Option]=") 'String
  loc_14CC559:     var_C4 = Trim(arg_1C)
  loc_14CC564:     Proc_6_17_EAA2B0(var_D4, var_C4, var_E4, var_134, -1, var_15C)
  loc_14CC583:     unk_4E88A6.Execute CStr(var_1A4 & var_D4 & vbNullString), 0, var_1B8
  loc_14CC593:      = var_1A4.Item(CVar(var_1B8))
  loc_14CC59B:     var_158 = CVar(var_1B8) 'Address
  loc_14CC5A2:     Proc_6_39_E7C810(var_1A0)
  loc_14CC5AB:     var_94 = CInt(var_1A0)
  loc_14CC5DC:     var_104 = 0
  loc_14CC624:     var_200 = "Select Max(opt4) from UserModule where OPT3=" & CStr(var_94) & " And OPT2=" & CStr(var_15C.Fields) & " And OPT1=" & CStr(var_90)
  loc_14CC634:     unk_4E88A6.Execute var_200 & vbNullString, var_C4, -1
  loc_14CC63C:     var_15C = var_15C.Fields
  loc_14CC644:     var_104 = var_1A4.Item(var_1A4)
  loc_14CC653:     Proc_6_39_E7C810(var_E4, CVar(var_1B8), var_1B8)
  loc_14CC660:     var_F4 = (var_E4 + 1)
  loc_14CC665:     var_96 = CInt(var_1A4 & CVar(var_1B8))
  loc_14CC692:   Else
  loc_14CC69F:     If (arg_14 = 3) Then
  loc_14CC6A7:       var_104 = 0
  loc_14CC6D2:       unk_4E88A6.Execute "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90), var_C4, -1
  loc_14CC6DA:       var_15C = var_15C.Fields
  loc_14CC6E2:       var_104 = var_1A4.Item(var_1A4)
  loc_14CC6EA:       var_D4 = CVar(var_1B8) 'Address
  loc_14CC6F1:       Proc_6_39_E7C810(var_E4, var_D4, var_1B8)
  loc_14CC6FE:       var_F4 = (var_E4 + 1)
  loc_14CC703:       var_92 = CInt(var_1A4 & var_D4)
  loc_14CC722:     Else
  loc_14CC752:       var_E4 = CVar("Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & " And [Option]=") 'String
  loc_14CC760:       var_C4 = Trim(arg_18)
  loc_14CC76B:       Proc_6_17_EAA2B0(var_D4, var_C4, var_E4, var_134, -1, var_15C, var_1A4)
  loc_14CC78A:       unk_4E88A6.Execute CStr(0 & var_D4 & vbNullString), var_1B8, var_92
  loc_14CC792:       var_96 = var_15C.Fields
  loc_14CC79A:       var_158 = var_1A4.Item(var_94)
  loc_14CC7A2:       var_158 = CVar(var_1B8) 'Address
  loc_14CC7A9:       Proc_6_39_E7C810(var_1A0)
  loc_14CC7DD:       var_104 = 0
  loc_14CC81B:       unk_4E88A6.Execute "Select Max(opt3) from UserModule where OPT2=" & CStr(CInt(var_1A0)) & " And OPT1=" & CStr(var_90), var_C4, -1
  loc_14CC823:       var_15C = var_15C.Fields
  loc_14CC82B:       var_104 = var_1A4.Item(var_1A4)
  loc_14CC83A:       Proc_6_39_E7C810(var_E4, CVar(var_1B8), var_1B8)
  loc_14CC847:       var_F4 = (var_E4 + 1)
  loc_14CC84C:       var_94 = CInt(0 & CVar(var_1B8))
  loc_14CC86E:     End If
  loc_14CC870:   End If
  loc_14CC875: Else
  loc_14CC882:   If (arg_14 = 4) Then
  loc_14CC889:     var_92 = 0
  loc_14CC88F:   Else
  loc_14CC896:     var_104 = 0
  loc_14CC8C8:     unk_4E88A6.Execute "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & vbNullString, var_C4, -1
  loc_14CC8D0:     var_15C = var_15C.Fields
  loc_14CC8D8:     var_104 = var_1A4.Item(var_1A4)
  loc_14CC8E7:     Proc_6_39_E7C810(var_E4, CVar(var_1B8), var_1B8, var_92)
  loc_14CC8F4:     var_F4 = (var_E4 + 1)
  loc_14CC8F9:     var_92 = CInt(0 & CVar(var_1B8))
  loc_14CC917:   End If
  loc_14CC919: End If
  loc_14CC923: If (var_92 = 1) Then
  loc_14CC92A:   var_92 = &HB
  loc_14CC92D: End If
  loc_14CC935: If (var_94 = 1) Then
  loc_14CC93C:   var_94 = &HB
  loc_14CC93F: End If
  loc_14CC947: If (var_96 = 1) Then
  loc_14CC94E:   var_96 = &HB
  loc_14CC951: End If
  loc_14CC956: var_104 = 0
  loc_14CC97F: var_1EC = "Select Cast(" & CStr(var_90) & "*1000000+"
  loc_14CC992: var_1F8 = "Select Max(opt2) from UserModule where OPT1=" & CStr(var_90) & vbNullString & CStr(var_92) & "*10000+"
  loc_14CC99E: var_200 = "Select Max(opt4) from UserModule where OPT3=" & CStr(var_94) & " And OPT2=" & CStr(var_15C.Fields) & " And OPT1=" & CStr(var_94)
  loc_14CC9A5: var_204 = var_200 & "*100+"
  loc_14CC9C1: unk_4E88A6.Execute var_200 & vbNullString & CStr(var_96) & " As Int)", var_C4, -1
  loc_14CC9C9: var_15C = var_15C.Fields
  loc_14CC9D1: var_104 = var_1A4.Item(var_1A4)
  loc_14CC9E0: Proc_6_39_E7C810(var_E4, CVar(var_1B8), var_1B8, var_96, var_94)
  loc_14CC9EA: var_9C = CLng(var_E4)
  loc_14CCA25: Proc_6_17_EAA2B0(var_C4, arg_C, var_9C, var_92)
  loc_14CCB3F: var_1F4 = "Insert Into UserModule (OPT1,OPT2,OPT3,OPT4,Code,[OPTION],PARAM_STR,flag,OutletCode) Values(" & CStr(var_90) & "," & CStr(var_92)
  loc_14CCB95: var_1E8 = CVar(var_1F4 & "," & CStr(var_94) & "," & CStr(var_96) & "," & CStr(var_9C) & ",") & var_C4 & ",'" & IIf((arg_14 = 0), "AEDP", IIf((arg_14 = 1), "***P", vbNullString)) 
  loc_14CCBA5: var_348 = var_1E8 & "','" & IIf((arg_14 = 0), "E", IIf((arg_14 = 1), "R", IIf((arg_14 = 3), "N", IIf(((arg_14 = 4) And (var_90 <= &H2D)), "N", "V")))) 
  loc_14CCBCF: unk_4E88A6.Execute CStr(var_348 & "','" & CVar(arg_2C) & "')"), var_3CC, -1
  loc_14CCC46: Proc_6_17_EAA2B0(var_C4, arg_C, var_15C, var_92)
  loc_14CCD58: var_A4 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,[OPTION],Menu_Index,PARAM_STR,Module_Name,flag,ShowInlist,OutletCode) Values('" & MemVar_1F92128
  loc_14CCDBE: var_D4 = CVar(var_A4 & "','SA'," & CStr(var_90) & "," & CStr(var_92) & "," & CStr(var_94) & "," & CStr(var_96) & "," & CStr(var_9C) & ",") 'String
  loc_14CCDF7: var_2A8 = var_D4 & var_C4 & "," & CVar(arg_20) & ",'" & IIf((arg_14 = 0), "AEDP", IIf((arg_14 = 1), "***P", vbNullString)) & "','" & Trim(arg_24) 
  loc_14CCE07: var_3E0 = var_2A8 & "','" & IIf((arg_14 = 0), "E", IIf((arg_14 = 1), "R", IIf((arg_14 = 3), "N", IIf(((arg_14 = 4) And (var_90 <= &H2D)), "N", "V")))) 
  loc_14CCE31: unk_4E88A6.Execute CStr(var_3E0 & "','N','" & CVar(arg_2C) & "')"), var_464, -1
  loc_14CCEB7: Set var_A0 = Nothing
  loc_14CCEBC: Result &HFF End Sub 'Integer
  loc_14CCEBF: Result var_15C End Sub 'Integer
End Sub

Public Sub Proc_165_1_1EF78BC
  'Data Table: 4E88A0
  Dim var_BC As Integer
  Dim MemVar_1F92224 As Integer
  Dim var_100 As String
  Dim var_124 As String
  Dim unk_4E88A6 As Connection15
  Dim var_12C As Fields15
  loc_1EEAB7A: If (Len(MemVar_1F92228) = 1) Then
  loc_1EEAB7D:   Exit Sub
  loc_1EEAB7E: End If
  loc_1EEABA6: var_EC = Ucase(Mid(MemVar_1F92228, 1, 1)) 'Variant
  loc_1EEABBC: If (var_EC = "A") Then
  loc_1EEABC1:   MemVar_1F92224 = 1
  loc_1EEABC7: Else
  loc_1EEABD2:   If (var_EC = "B") Then
  loc_1EEABD7:     MemVar_1F92224 = 4
  loc_1EEABDD:   Else
  loc_1EEABE8:     If (var_EC = "C") Then
  loc_1EEABED:       MemVar_1F92224 = 6
  loc_1EEABF3:     Else
  loc_1EEABFE:       If (var_EC = "D") Then
  loc_1EEAC03:         MemVar_1F92224 = 2
  loc_1EEAC09:       Else
  loc_1EEAC14:         If (var_EC = "E") Then
  loc_1EEAC19:           MemVar_1F92224 = 9
  loc_1EEAC1F:         Else
  loc_1EEAC2A:           If (var_EC = "F") Then
  loc_1EEAC2F:             MemVar_1F92224 = 5
  loc_1EEAC35:           Else
  loc_1EEAC40:             If (var_EC = "G") Then
  loc_1EEAC45:               MemVar_1F92224 = 8
  loc_1EEAC4B:             Else
  loc_1EEAC56:               If (var_EC = "H") Then
  loc_1EEAC5B:                 MemVar_1F92224 = 3
  loc_1EEAC61:               Else
  loc_1EEAC6C:                 If (var_EC = "I") Then
  loc_1EEAC71:                   MemVar_1F92224 = &HA
  loc_1EEAC77:                 Else
  loc_1EEAC82:                   If (var_EC = "J") Then
  loc_1EEAC87:                     MemVar_1F92224 = 7
  loc_1EEAC8D:                   Else
  loc_1EEAC8F:                     MemVar_1F92224 = 0
  loc_1EEAC92:                   End If
  loc_1EEAC92:                 End If
  loc_1EEAC92:               End If
  loc_1EEAC92:             End If
  loc_1EEAC92:           End If
  loc_1EEAC92:         End If
  loc_1EEAC92:       End If
  loc_1EEAC92:     End If
  loc_1EEAC92:   End If
  loc_1EEAC92: End If
  loc_1EEAC9C: For var_F0 = 2 To CInt(Len(MemVar_1F92228)): var_8A = var_F0 'Integer
  loc_1EEACA7:   var_100 = "XW+GB*Q!JI#L$"
  loc_1EEACAC:   var_BC = 1
  loc_1EEACE2:   If CBool(InStr(1, var_100, Mid(MemVar_1F92228, CLng(var_8A), var_BC), 0) <> 0) Then
  loc_1EEACE5:     GoTo loc_1EEACF1
  loc_1EEACE8:   End If
  loc_1EEACEB: Next var_F0 'Integer
  loc_1EEACF0: Exit Sub
  loc_1EEACF1: ' Referenced from: 1EEACE5
  loc_1EEAD15: unk_4E88A6.Execute "Delete From MenuHelp Where CompCode='" & MemVar_1F92128 & "' And UserName='SA'", var_BC, -1
  loc_1EEAD3D: unk_4E88A6.Execute "Delete From UserModule", var_BC, -1
  loc_1EEAD60: If (InStr(2, MemVar_1F92228, "$", 0) <> 0) Then
  loc_1EEAD68:   var_148 = 0
  loc_1EEAD79:   var_140 = "FA"
  loc_1EEADAF:   Proc_165_0_14CCEC0("Financial Setup", &HB, 4, vbNullString, vbNullString, 0)
  loc_1EEADC6:   var_148 = 0
  loc_1EEAE0D:   Proc_165_0_14CCEC0("Transaction", &HB, 3, vbNullString, vbNullString, &HFF, "FAT")
  loc_1EEAE24:   var_148 = 0
  loc_1EEAE6B:   Proc_165_0_14CCEC0("Voucher Entry", &HB, 0, "Transaction", vbNullString, 0, "fate", 1)
  loc_1EEAE82:   var_148 = 0
  loc_1EEAEC9:   Proc_165_0_14CCEC0("Adjustment Entry", &HB, 0, "Transaction", vbNullString, 1, "fate", 1)
  loc_1EEAEE0:   var_148 = 0
  loc_1EEAF27:   Proc_165_0_14CCEC0("Delete Adjustment Entry", &HB, 0, "Transaction", vbNullString, 2, "fate", 1)
  loc_1EEAF3E:   var_148 = 0
  loc_1EEAF85:   Proc_165_0_14CCEC0("Bank Reconciliation", &HB, 0, "Transaction", vbNullString, 3, "fate", 1)
  loc_1EEAF9C:   var_148 = 0
  loc_1EEAFE3:   Proc_165_0_14CCEC0("T.D.S. Challan Entry", &HB, 0, "Transaction", vbNullString, 4, "fate", 1)
  loc_1EEAFFA:   var_148 = 0
  loc_1EEB041:   Proc_165_0_14CCEC0("T.D.S. Certificate Entry", &HB, 0, "Transaction", vbNullString, 5, "fate", 1)
  loc_1EEB058:   var_148 = 0
  loc_1EEB09F:   Proc_165_0_14CCEC0("Expense Voucher", &HB, 0, "Transaction", vbNullString, 6, "fate", 1)
  loc_1EEB0B6:   var_148 = 0
  loc_1EEB0FD:   Proc_165_0_14CCEC0("Reports", &HB, 3, vbNullString, vbNullString, &HFF, "farp", 1)
  loc_1EEB114:   var_148 = 0
  loc_1EEB15B:   Proc_165_0_14CCEC0("Day Book", &HB, 1, "Reports", vbNullString, 0, "FAREPORT", 1)
  loc_1EEB172:   var_148 = 0
  loc_1EEB1B9:   Proc_165_0_14CCEC0("Trial Balance", &HB, 1, "Reports", vbNullString, 1, "FAREPORT", 1)
  loc_1EEB1D0:   var_148 = 0
  loc_1EEB217:   Proc_165_0_14CCEC0("Ledger", &HB, 1, "Reports", vbNullString, 3, "FAREPORT", 1)
  loc_1EEB22E:   var_148 = 0
  loc_1EEB275:   Proc_165_0_14CCEC0("Interest Ledger", &HB, 1, "Reports", vbNullString, 4, "FAREPORT", 1)
  loc_1EEB28C:   var_148 = 0
  loc_1EEB2D3:   Proc_165_0_14CCEC0("Cash Book", &HB, 1, "Reports", vbNullString, 5, "FAREPORT", 1)
  loc_1EEB2EA:   var_148 = 0
  loc_1EEB331:   Proc_165_0_14CCEC0("Bank Book", &HB, 1, "Reports", vbNullString, 6, "FAREPORT", 1)
  loc_1EEB348:   var_148 = 0
  loc_1EEB38F:   Proc_165_0_14CCEC0("Journal Books", &HB, 1, "Reports", vbNullString, 7, "FAREPORT", 1)
  loc_1EEB3A6:   var_148 = 0
  loc_1EEB3ED:   Proc_165_0_14CCEC0("Annexure", &HB, 1, "Reports", vbNullString, &HA, "FAREPORT", 1)
  loc_1EEB404:   var_148 = 0
  loc_1EEB44B:   Proc_165_0_14CCEC0("Bank Register", &HB, 1, "Reports", vbNullString, &HD, "FAREPORT", 1)
  loc_1EEB462:   var_148 = 0
  loc_1EEB4A9:   Proc_165_0_14CCEC0("Ageing Analysis for Debtors", &HB, 1, "Reports", vbNullString, &HE, "FAREPORT", 1)
  loc_1EEB4C0:   var_148 = 0
  loc_1EEB507:   Proc_165_0_14CCEC0("Ageing Analysis for Creditors", &HB, 1, "Reports", vbNullString, &HF, "FAREPORT", 1)
  loc_1EEB51E:   var_148 = 0
  loc_1EEB565:   Proc_165_0_14CCEC0("Cheque Cleared Register", &HB, 1, "Reports", vbNullString, &H17, "FAREPORT", 1)
  loc_1EEB57C:   var_148 = 0
  loc_1EEB5C3:   Proc_165_0_14CCEC0("Cheque Not Cleared Register", &HB, 1, "Reports", vbNullString, &H18, "FAREPORT", 1)
  loc_1EEB5DA:   var_148 = 0
  loc_1EEB621:   Proc_165_0_14CCEC0("Detailed Trial Ledger", &HB, 1, "Reports", vbNullString, &H1F, "FAREPORT", 1)
  loc_1EEB638:   var_148 = 0
  loc_1EEB67F:   Proc_165_0_14CCEC0("Bill Wise Outstanding Report For Debtors", &HB, 1, "Reports", vbNullString, &H21, "FAREPORT", 1)
  loc_1EEB696:   var_148 = 0
  loc_1EEB6DD:   Proc_165_0_14CCEC0("Day  Book", &HB, 1, "Reports", vbNullString, &H23, "FAREPORT", 1)
  loc_1EEB6EF: End If
  loc_1EEB6F4: var_148 = 0
  loc_1EEB73B: Proc_165_0_14CCEC0("Main Setup", &HC, 4, vbNullString, vbNullString, 0, "Mast", 1)
  loc_1EEB752: var_148 = 0
  loc_1EEB799: Proc_165_0_14CCEC0("General Setup", &HC, 3, vbNullString, vbNullString, &HFF, "GEN", 1)
  loc_1EEB7B0: var_148 = 0
  loc_1EEB7F7: Proc_165_0_14CCEC0("Tax Master", &HC, 0, "General Setup", vbNullString, 0, "GENMas", 1)
  loc_1EEB80E: var_148 = 0
  loc_1EEB855: Proc_165_0_14CCEC0("Tax Structure", &HC, 0, "General Setup", vbNullString, 1, "GENMas", 1)
  loc_1EEB86C: var_148 = 0
  loc_1EEB8B3: Proc_165_0_14CCEC0("Payment Type", &HC, 0, "General Setup", vbNullString, 2, "GENMas", 1)
  loc_1EEB8CA: var_148 = 0
  loc_1EEB911: Proc_165_0_14CCEC0("Parameter", &HC, 0, "General Setup", vbNullString, 3, "GENMas", 1)
  loc_1EEB928: var_148 = 0
  loc_1EEB96F: Proc_165_0_14CCEC0("Revenue Group Setting", &HC, 0, "General Setup", vbNullString, 4, "GENMas", 1)
  loc_1EEB986: var_148 = 0
  loc_1EEB9CD: Proc_165_0_14CCEC0("Printing Parameters", &HC, 0, "General Setup", vbNullString, 5, "GENMas", 1)
  loc_1EEB9E4: var_148 = 0
  loc_1EEBA2B: Proc_165_0_14CCEC0("Printing Setup", &HC, 0, "General Setup", vbNullString, 6, "GENMas", 1)
  loc_1EEBA42: var_148 = 0
  loc_1EEBA89: Proc_165_0_14CCEC0("Revenue Wise Budget Entry", &HC, 2, "General Setup", vbNullString, 7, "GENMas", 1)
  loc_1EEBACC: If ((InStr(2, MemVar_1F92228, "L", 0) <> 0) Or (InStr(2, MemVar_1F92228, "#", 0) <> 0)) Then
  loc_1EEBAD4:   var_148 = 0
  loc_1EEBB1B:   Proc_165_0_14CCEC0("Front Office Setup", &HC, 3, vbNullString, vbNullString, &HFF, "FO", 1)
  loc_1EEBB32:   var_148 = 0
  loc_1EEBB79:   Proc_165_0_14CCEC0("Country Master", &HC, 0, "Front Office Setup", vbNullString, 0, "Mas", 1)
  loc_1EEBB90:   var_148 = 0
  loc_1EEBBD7:   Proc_165_0_14CCEC0("State Master", &HC, 0, "Front Office Setup", vbNullString, 1, "Mas", 1)
  loc_1EEBBEE:   var_148 = 0
  loc_1EEBC35:   Proc_165_0_14CCEC0("City Master", &HC, 0, "Front Office Setup", vbNullString, 2, "Mas", 1)
  loc_1EEBC4C:   var_148 = 0
  loc_1EEBC93:   Proc_165_0_14CCEC0("Market Segment", &HC, 0, "Front Office Setup", vbNullString, 4, "Mas", 1)
  loc_1EEBCAA:   var_148 = 0
  loc_1EEBCF1:   Proc_165_0_14CCEC0("Business Source", &HC, 0, "Front Office Setup", vbNullString, 5, "Mas", 1)
  loc_1EEBD08:   var_148 = 0
  loc_1EEBD4F:   Proc_165_0_14CCEC0("Guest Status", &HC, 0, "Front Office Setup", vbNullString, 6, "Mas", 1)
  loc_1EEBD66:   var_148 = 0
  loc_1EEBDAD:   Proc_165_0_14CCEC0("Charge Master", &HC, 0, "Front Office Setup", vbNullString, 7, "Mas", 1)
  loc_1EEBDC4:   var_148 = 0
  loc_1EEBE0B:   Proc_165_0_14CCEC0("Fixed Charge", &HC, 0, "Front Office Setup", vbNullString, 8, "Mas", 1)
  loc_1EEBE22:   var_148 = 0
  loc_1EEBE69:   Proc_165_0_14CCEC0("Package Master", &HC, 0, "Front Office Setup", vbNullString, 9, "Mas", 1)
  loc_1EEBE80:   var_148 = 0
  loc_1EEBEC7:   Proc_165_0_14CCEC0("Plan Master", &HC, 0, "Front Office Setup", vbNullString, &HC, "Mas", 1)
  loc_1EEBEDE:   var_148 = 0
  loc_1EEBF25:   Proc_165_0_14CCEC0("Season Master", &HC, 0, "Front Office Setup", vbNullString, &HD, "Mas", 1)
  loc_1EEBF3C:   var_148 = 0
  loc_1EEBF83:   Proc_165_0_14CCEC0("Room Features", &HC, 0, "Front Office Setup", vbNullString, &HE, "Mas", 1)
  loc_1EEBF9A:   var_148 = 0
  loc_1EEBFE1:   Proc_165_0_14CCEC0("Room Category", &HC, 0, "Front Office Setup", vbNullString, &HF, "Mas", 1)
  loc_1EEBFF8:   var_148 = 0
  loc_1EEC03F:   Proc_165_0_14CCEC0("Room Master", &HC, 0, "Front Office Setup", vbNullString, &H10, "Mas", 1)
  loc_1EEC056:   var_148 = 0
  loc_1EEC09D:   Proc_165_0_14CCEC0("Company Master", &HC, 0, "Front Office Setup", vbNullString, &H11, "Mas", 1)
  loc_1EEC0B4:   var_148 = 0
  loc_1EEC0FB:   Proc_165_0_14CCEC0("Forex Master", &HC, 0, "Front Office Setup", vbNullString, &H14, "Mas", 1)
  loc_1EEC112:   var_148 = 0
  loc_1EEC159:   Proc_165_0_14CCEC0("Guest History", &HC, 0, "Front Office Setup", vbNullString, &H15, "Mas", 1)
  loc_1EEC170:   var_148 = 0
  loc_1EEC1B7:   Proc_165_0_14CCEC0("Room Display", &HC, 0, "Front Office Setup", vbNullString, &H17, "Mas", 1)
  loc_1EEC1C9: End If
  loc_1EEC1E1: If (InStr(2, MemVar_1F92228, "!", 0) <> 0) Then
  loc_1EEC1E9:   var_148 = 0
  loc_1EEC230:   Proc_165_0_14CCEC0("Point of Sale Setup", &HC, 3, vbNullString, vbNullString, &HFF, "POS", 1)
  loc_1EEC247:   var_148 = 0
  loc_1EEC28E:   Proc_165_0_14CCEC0("Item List", &HC, 0, "Point of Sale Setup", vbNullString, 2, "POSMas", 1)
  loc_1EEC2A5:   var_148 = 0
  loc_1EEC2EC:   Proc_165_0_14CCEC0("Scheme Master", &HC, 0, "Point of Sale Setup", vbNullString, 3, "POSMas", 1)
  loc_1EEC303:   var_148 = 0
  loc_1EEC34A:   Proc_165_0_14CCEC0("Server Master", &HC, 0, "Point of Sale Setup", vbNullString, 4, "POSMas", 1)
  loc_1EEC361:   var_148 = 0
  loc_1EEC3A8:   Proc_165_0_14CCEC0("Setup Outlet", &HC, 0, "Point of Sale Setup", vbNullString, 6, "POSMas", 1)
  loc_1EEC3BF:   var_148 = 0
  loc_1EEC406:   Proc_165_0_14CCEC0("Table Master", &HC, 0, "Point of Sale Setup", vbNullString, 7, "POSMas", 1)
  loc_1EEC41D:   var_148 = 0
  loc_1EEC464:   Proc_165_0_14CCEC0("Menu Group", &HC, 0, "Point of Sale Setup", vbNullString, 8, "POSMas", 1)
  loc_1EEC47B:   var_148 = 0
  loc_1EEC4C2:   Proc_165_0_14CCEC0("Menu Category", &HC, 0, "Point of Sale Setup", vbNullString, 9, "POSMas", 1)
  loc_1EEC4D9:   var_148 = 0
  loc_1EEC520:   Proc_165_0_14CCEC0("Menu Item", &HC, 0, "Point of Sale Setup", vbNullString, &HA, "POSMas", 1)
  loc_1EEC537:   var_148 = 0
  loc_1EEC57E:   Proc_165_0_14CCEC0("Outlet Bill Sundry Setting", &HC, 0, "Point of Sale Setup", vbNullString, &HB, "POSMas", 1)
  loc_1EEC595:   var_148 = 0
  loc_1EEC5DC:   Proc_165_0_14CCEC0("Menu Item Rate", &HC, 0, "Point of Sale Setup", vbNullString, &HC, "POSMas", 1)
  loc_1EEC5F3:   var_148 = 0
  loc_1EEC63A:   Proc_165_0_14CCEC0("Session Master", &HC, 0, "Point of Sale Setup", vbNullString, &HD, "POSMas", 1)
  loc_1EEC651:   var_148 = 0
  loc_1EEC698:   Proc_165_0_14CCEC0("Open Item Consumption", &HC, 0, "Point of Sale Setup", vbNullString, &HE, "POSMas", 1)
  loc_1EEC6AF:   var_148 = 0
  loc_1EEC6F6:   Proc_165_0_14CCEC0("Happy Hours", &HC, 0, "Point of Sale Setup", vbNullString, &HF, "POSMas", 1)
  loc_1EEC70D:   var_148 = 0
  loc_1EEC754:   Proc_165_0_14CCEC0("Happy Hours [ Fee Items ]", &HC, 0, "Point of Sale Setup", vbNullString, &H10, "POSMas", 1)
  loc_1EEC76B:   var_148 = 0
  loc_1EEC7B2:   Proc_165_0_14CCEC0("Combo Pack", &HC, 0, "Point of Sale Setup", vbNullString, &H11, "POSMas", 1)
  loc_1EEC7C9:   var_148 = 0
  loc_1EEC810:   Proc_165_0_14CCEC0("NC Type", &HC, 0, "Point of Sale Setup", vbNullString, &H12, "POSMas", 1)
  loc_1EEC827:   var_148 = 0
  loc_1EEC86E:   Proc_165_0_14CCEC0("Customer History", &HC, 0, "Point of Sale Setup", vbNullString, &H13, "POSMas", 1)
  loc_1EEC880: End If
  loc_1EEC898: If (InStr(2, MemVar_1F92228, "Q", 0) <> 0) Then
  loc_1EEC8A0:   var_148 = 0
  loc_1EEC8E7:   Proc_165_0_14CCEC0("Banquet", &HC, 3, vbNullString, vbNullString, &HFF, "HL", 1)
  loc_1EEC8FC:   var_148 = "BANQ"
  loc_1EEC943:   Proc_165_0_14CCEC0("Events", &HC, 0, "Indoor Catering", vbNullString, 0, "HallM", 1)
  loc_1EEC958:   var_148 = "BANQ"
  loc_1EEC99F:   Proc_165_0_14CCEC0("Venue Features", &HC, 0, "Indoor Catering", vbNullString, 1, "HallM", 1)
  loc_1EEC9B4:   var_148 = "BANQ"
  loc_1EEC9FB:   Proc_165_0_14CCEC0("Venue Master", &HC, 0, "Indoor Catering", vbNullString, 2, "HallM", 1)
  loc_1EECA10:   var_148 = "BANQ"
  loc_1EECA57:   Proc_165_0_14CCEC0("Menu Category", &HC, 0, "Indoor Catering", vbNullString, 3, "HallM", 1)
  loc_1EECA6C:   var_148 = "BANQ"
  loc_1EECAB3:   Proc_165_0_14CCEC0("Item Group", &HC, 0, "Indoor Catering", vbNullString, 4, "HallM", 1)
  loc_1EECAC8:   var_148 = "BANQ"
  loc_1EECB0F:   Proc_165_0_14CCEC0("Menu Item", &HC, 0, "Indoor Catering", vbNullString, 5, "HallM", 1)
  loc_1EECB24:   var_148 = "BANQ"
  loc_1EECB6B:   Proc_165_0_14CCEC0("Catalog Master", &HC, 0, "Indoor Catering", vbNullString, 6, "HallM", 1)
  loc_1EECB80:   var_148 = "BANQ"
  loc_1EECBC7:   Proc_165_0_14CCEC0("Banquet Bill Sundry Setting", &HC, 0, "Indoor Catering", vbNullString, 7, "HallM", 1)
  loc_1EECBD9: End If
  loc_1EECBF1: If (InStr(2, MemVar_1F92228, "G", 0) <> 0) Then
  loc_1EECBF9:   var_148 = 0
  loc_1EECC40:   Proc_165_0_14CCEC0("Members Mgmt Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "Mem", 1)
  loc_1EECC57:   var_148 = 0
  loc_1EECC9E:   Proc_165_0_14CCEC0("Category Master", &HC, 0, "Members Mgmt Setup", vbNullString, 0, "MemMas", 1)
  loc_1EECCB5:   var_148 = 0
  loc_1EECCFC:   Proc_165_0_14CCEC0("Member Master", &HC, 0, "Members Mgmt Setup", vbNullString, 1, "MemMas", 1)
  loc_1EECD13:   var_148 = 0
  loc_1EECD5A:   Proc_165_0_14CCEC0("Corporate Member Master", &HC, 0, "Members Mgmt Setup", vbNullString, 2, "MemMas", 1)
  loc_1EECD71:   var_148 = 0
  loc_1EECDB8:   Proc_165_0_14CCEC0("Revenue Master", &HC, 0, "Members Mgmt Setup", vbNullString, 3, "MemMas", 1)
  loc_1EECDCF:   var_148 = 0
  loc_1EECE16:   Proc_165_0_14CCEC0("Facility Master", &HC, 0, "Members Mgmt Setup", vbNullString, 4, "MemMas", 1)
  loc_1EECE2D:   var_148 = 0
  loc_1EECE74:   Proc_165_0_14CCEC0("Category wise Revenue", &HC, 0, "Members Mgmt Setup", vbNullString, 5, "MemMas", 1)
  loc_1EECE8B:   var_148 = 0
  loc_1EECED2:   Proc_165_0_14CCEC0("Category wise Facility", &HC, 0, "Members Mgmt Setup", vbNullString, 6, "MemMas", 1)
  loc_1EECEE9:   var_148 = 0
  loc_1EECF30:   Proc_165_0_14CCEC0("Member Bill Sundry Setting", &HC, 2, "Members Mgmt Setup", vbNullString, 7, "MemMas", 1)
  loc_1EECF47:   var_148 = 0
  loc_1EECF8E:   Proc_165_0_14CCEC0("Environment Settings", &HC, 0, "Members Mgmt Setup", vbNullString, 8, "MemMas", 1)
  loc_1EECFA5:   var_148 = 0
  loc_1EECFEC:   Proc_165_0_14CCEC0("Member Age Wise Revenue", &HC, 0, "Members Mgmt Setup", vbNullString, 9, "MemMas", 1)
  loc_1EECFFE: End If
  loc_1EED016: If (InStr(2, MemVar_1F92228, "J", 0) <> 0) Then
  loc_1EED01E:   var_148 = 0
  loc_1EED065:   Proc_165_0_14CCEC0("Material Mgmt Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "CCenter", 1)
  loc_1EED07C:   var_148 = 0
  loc_1EED0C3:   Proc_165_0_14CCEC0("Party Master", &HC, 0, "Material Mgmt Setup", vbNullString, 0, "CCenterMas", 1)
  loc_1EED0DA:   var_148 = 0
  loc_1EED121:   Proc_165_0_14CCEC0("Department", &HC, 0, "Material Mgmt Setup", vbNullString, 1, "CCenterMas", 1)
  loc_1EED138:   var_148 = 0
  loc_1EED17F:   Proc_165_0_14CCEC0("Item Group", &HC, 0, "Material Mgmt Setup", vbNullString, 2, "CCenterMas", 1)
  loc_1EED196:   var_148 = 0
  loc_1EED1DD:   Proc_165_0_14CCEC0("Item Category", &HC, 0, "Material Mgmt Setup", vbNullString, 3, "CCenterMas", 1)
  loc_1EED1F4:   var_148 = 0
  loc_1EED23B:   Proc_165_0_14CCEC0("Item Entry", &HC, 0, "Material Mgmt Setup", vbNullString, 4, "CCenterMas", 1)
  loc_1EED252:   var_148 = 0
  loc_1EED299:   Proc_165_0_14CCEC0("Consumption Master", &HC, 2, "Material Mgmt Setup", vbNullString, 5, "CCenterMas", 1)
  loc_1EED2B0:   var_148 = 0
  loc_1EED2F7:   Proc_165_0_14CCEC0("Purchase Sundry Setting", &HC, 0, "Material Mgmt Setup", vbNullString, 6, "CCenterMas", 1)
  loc_1EED30E:   var_148 = 0
  loc_1EED355:   Proc_165_0_14CCEC0("Opening Stock", &HC, 0, "Material Mgmt Setup", vbNullString, 8, "CCenterMas", 1)
  loc_1EED36C:   var_148 = 0
  loc_1EED3B3:   Proc_165_0_14CCEC0("Item  List", &HC, 0, "Material Mgmt Setup", vbNullString, 9, "CCenterMas", 1)
  loc_1EED3CA:   var_148 = 0
  loc_1EED411:   Proc_165_0_14CCEC0("Enviro Inventry", &HC, 0, "Material Mgmt Setup", vbNullString, &HB, "CCenterMas", 1)
  loc_1EED423: End If
  loc_1EED43B: If (InStr(2, MemVar_1F92228, "*", 0) <> 0) Then
  loc_1EED443:   var_148 = 0
  loc_1EED48A:   Proc_165_0_14CCEC0("PayRoll Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "PR", 1)
  loc_1EED4A1:   var_148 = 0
  loc_1EED4E8:   Proc_165_0_14CCEC0("Designation Master", &HC, 0, "PayRoll Setup", vbNullString, 0, "PRM", 1)
  loc_1EED4FF:   var_148 = 0
  loc_1EED546:   Proc_165_0_14CCEC0("Category Master", &HC, 0, "PayRoll Setup", vbNullString, 1, "PRM", 1)
  loc_1EED55D:   var_148 = 0
  loc_1EED5A4:   Proc_165_0_14CCEC0("Holiday Master", &HC, 0, "PayRoll Setup", vbNullString, 2, "PRM", 1)
  loc_1EED5BB:   var_148 = 0
  loc_1EED602:   Proc_165_0_14CCEC0("Employee Master", &HC, 0, "PayRoll Setup", vbNullString, 3, "PRM", 1)
  loc_1EED614: End If
  loc_1EED62C: If (InStr(2, MemVar_1F92228, "B", 0) <> 0) Then
  loc_1EED634:   var_148 = 0
  loc_1EED67B:   Proc_165_0_14CCEC0("EPABX Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "Tel", 1)
  loc_1EED692:   var_148 = 0
  loc_1EED6D9:   Proc_165_0_14CCEC0("Call Type Master", &HC, 0, "EPABX Setup", vbNullString, 1, "TelMaast", 1)
  loc_1EED6F0:   var_148 = 0
  loc_1EED737:   Proc_165_0_14CCEC0("Extension Master", &HC, 0, "EPABX Setup", vbNullString, 2, "TelMaast", 1)
  loc_1EED74E:   var_148 = 0
  loc_1EED795:   Proc_165_0_14CCEC0("Call Codes Master", &HC, 0, "EPABX Setup", vbNullString, 3, "TelMaast", 1)
  loc_1EED7A7: End If
  loc_1EED7BF: If (InStr(2, MemVar_1F92228, "$", 0) <> 0) Then
  loc_1EED7C7:   var_148 = 0
  loc_1EED80E:   Proc_165_0_14CCEC0("Financial Setup", &HC, 3, "Main Setup", vbNullString, &HFF, "fae", 1)
  loc_1EED825:   var_148 = 0
  loc_1EED86C:   Proc_165_0_14CCEC0("Group Accounts", &HC, 0, "Financial Setup", vbNullString, 0, "fame", 1)
  loc_1EED883:   var_148 = 0
  loc_1EED8CA:   Proc_165_0_14CCEC0("Ledger Accounts", &HC, 0, "Financial Setup", vbNullString, 1, "fame", 1)
  loc_1EED8E1:   var_148 = 0
  loc_1EED928:   Proc_165_0_14CCEC0("Narration Master", &HC, 0, "Financial Setup", vbNullString, 2, "fame", 1)
  loc_1EED93F:   var_148 = 0
  loc_1EED986:   Proc_165_0_14CCEC0("T.D.S. Category", &HC, 0, "Financial Setup", vbNullString, 3, "fame", 1)
  loc_1EED99D:   var_148 = 0
  loc_1EED9E4:   Proc_165_0_14CCEC0("FA Environment", &HC, 0, "Financial Setup", vbNullString, 4, "fame", 1)
  loc_1EED9FB:   var_148 = 0
  loc_1EEDA42:   Proc_165_0_14CCEC0("Voucher Environment", &HC, 0, "Financial Setup", vbNullString, 5, "fame", 1)
  loc_1EEDA59:   var_148 = 0
  loc_1EEDAA0:   Proc_165_0_14CCEC0("Year End Updation", &HC, 0, "Financial Setup", vbNullString, 7, "fame", 1)
  loc_1EEDAB7:   var_148 = 0
  loc_1EEDAFE:   Proc_165_0_14CCEC0("Current Balance Updation", &HC, 0, "Financial Setup", vbNullString, 8, "fame", 1)
  loc_1EEDB15:   var_148 = 0
  loc_1EEDB5C:   Proc_165_0_14CCEC0("Country Master", &HC, 0, "Financial Setup", vbNullString, 9, "fame", 1)
  loc_1EEDB73:   var_148 = 0
  loc_1EEDBBA:   Proc_165_0_14CCEC0("State Master", &HC, 0, "Financial Setup", vbNullString, &HA, "fame", 1)
  loc_1EEDBD1:   var_148 = 0
  loc_1EEDC18:   Proc_165_0_14CCEC0("City Master", &HC, 0, "Financial Setup", vbNullString, &HB, "fame", 1)
  loc_1EEDC2F:   var_148 = 0
  loc_1EEDC76:   Proc_165_0_14CCEC0("Delete Message", &HC, 0, "Financial Setup", vbNullString, &HC, "fame", 1)
  loc_1EEDC8D:   var_148 = 0
  loc_1EEDCD4:   Proc_165_0_14CCEC0("Account Merging", &HC, 0, "Financial Setup", vbNullString, &HD, "fame", 1)
  loc_1EEDCEB:   var_148 = 0
  loc_1EEDD32:   Proc_165_0_14CCEC0("Voucher Serialisation", &HC, 0, "Financial Setup", vbNullString, &HE, "fame", 1)
  loc_1EEDD44: End If
  loc_1EEDD49: var_148 = 0
  loc_1EEDD90: Proc_165_0_14CCEC0("Utility", &HC, 3, "Main Setup", vbNullString, &HFF, "Util", 1)
  loc_1EEDDA7: var_148 = 0
  loc_1EEDDEE: Proc_165_0_14CCEC0("User Master", &HC, 0, "Utility", vbNullString, 0, "UTL", 1)
  loc_1EEDE05: var_148 = 0
  loc_1EEDE4C: Proc_165_0_14CCEC0("Permissions", &HC, 0, "Utility", vbNullString, 1, "UTL", 1)
  loc_1EEDE63: var_148 = 0
  loc_1EEDEAA: Proc_165_0_14CCEC0("Backup Data", &HC, 0, "Utility", vbNullString, 8, "UTL", 1)
  loc_1EEDEC1: var_148 = 0
  loc_1EEDF08: Proc_165_0_14CCEC0("Sundry Master", &HC, 0, "Utility", vbNullString, &HC, "UTL", 1)
  loc_1EEDF1F: var_148 = 0
  loc_1EEDF66: Proc_165_0_14CCEC0("Inconsistency Check", &HC, 0, "Utility", vbNullString, &H10, "UTL", 1)
  loc_1EEDF7D: var_148 = 0
  loc_1EEDFC4: Proc_165_0_14CCEC0("Year End Updation", &HC, 0, "Utility", vbNullString, &H11, "UTL", 1)
  loc_1EEDFDB: var_148 = 0
  loc_1EEE022: Proc_165_0_14CCEC0("Data Transfer", &HC, 2, "Utility", vbNullString, &H12, "UTL", 1)
  loc_1EEE039: var_148 = 0
  loc_1EEE080: Proc_165_0_14CCEC0("Menu Item Copy", &HC, 0, "Utility", vbNullString, &H14, "UTL", 1)
  loc_1EEE097: var_148 = 0
  loc_1EEE0DE: Proc_165_0_14CCEC0("POS Bill Deletion", &HC, 2, "Utility", vbNullString, &H15, "UTL", 1)
  loc_1EEE0F5: var_148 = 0
  loc_1EEE13C: Proc_165_0_14CCEC0("Guest B'Day/Anniversary LookUp", &HC, 0, "Utility", vbNullString, &H16, "UTL", 1)
  loc_1EEE180: If Not(((InStr(2, MemVar_1F92228, "L", 0) <> 0) Or (InStr(2, MemVar_1F92228, "#", 0) <> 0))) Then
  loc_1EEE188:   var_148 = 0
  loc_1EEE1CF:   Proc_165_0_14CCEC0("Country Master", &HC, 0, "Utility", vbNullString, &H17, "UTL", 1)
  loc_1EEE1E6:   var_148 = 0
  loc_1EEE22D:   Proc_165_0_14CCEC0("State Master", &HC, 0, "Utility", vbNullString, &H18, "UTL", 1)
  loc_1EEE244:   var_148 = 0
  loc_1EEE28B:   Proc_165_0_14CCEC0("City Master", &HC, 0, "Utility", vbNullString, &H19, "UTL", 1)
  loc_1EEE2A2:   var_148 = 0
  loc_1EEE2E9:   Proc_165_0_14CCEC0("Company Master", &HC, 0, "Utility", vbNullString, &H1A, "UTL", 1)
  loc_1EEE2FB: End If
  loc_1EEE314: If Not((InStr(2, MemVar_1F92228, "J", 0) <> 0)) Then
  loc_1EEE31C:   var_148 = 0
  loc_1EEE363:   Proc_165_0_14CCEC0("Department", &HC, 0, "Utility", vbNullString, &H1B, "UTL", 1)
  loc_1EEE375: End If
  loc_1EEE38E: If Not((InStr(2, MemVar_1F92228, "$", 0) <> 0)) Then
  loc_1EEE396:   var_148 = 0
  loc_1EEE3DD:   Proc_165_0_14CCEC0("Ledger Accounts", &HC, 0, "Utility", vbNullString, &H1C, "UTL", 1)
  loc_1EEE3EF: End If
  loc_1EEE3F4: var_148 = 0
  loc_1EEE43B: Proc_165_0_14CCEC0("Data Transfer (POS)", &HC, 2, "Utility", vbNullString, &H1D, "UTL", 1)
  loc_1EEE452: var_148 = 0
  loc_1EEE499: Proc_165_0_14CCEC0("PLU File (W.Scale)", &HC, 2, "Utility", vbNullString, &H1E, "UTL", 1)
  loc_1EEE4B0: var_148 = 0
  loc_1EEE4F7: Proc_165_0_14CCEC0("POS Recycle", &HC, 2, "Utility", vbNullString, &H20, "UTL", 1)
  loc_1EEE50E: var_148 = 0
  loc_1EEE555: Proc_165_0_14CCEC0("Unit Master", &HC, 0, "Utility", vbNullString, &H21, "UTL", 1)
  loc_1EEE57F: If (InStr(2, MemVar_1F92228, "L", 0) <> 0) Then
  loc_1EEE587:   var_148 = 0
  loc_1EEE5CE:   Proc_165_0_14CCEC0("Reservation", &HD, 4, vbNullString, vbNullString, 0, "Reserv", 1)
  loc_1EEE5E5:   var_148 = 0
  loc_1EEE62C:   Proc_165_0_14CCEC0("Reservation Operations", &HD, 3, vbNullString, vbNullString, &HFF, "ResOpEnt", 1)
  loc_1EEE643:   var_148 = 0
  loc_1EEE68A:   Proc_165_0_14CCEC0("Reservation/Cancellation", &HD, 0, "Reservation Operations", vbNullString, 0, "ResOpEnt", 1)
  loc_1EEE6A1:   var_148 = 0
  loc_1EEE6E8:   Proc_165_0_14CCEC0("Look Up Room types", &HD, 0, "Reservation Operations", vbNullString, 2, "ResOpEnt", 1)
  loc_1EEE6FF:   var_148 = 0
  loc_1EEE746:   Proc_165_0_14CCEC0("Look Up Rooms", &HD, 0, "Reservation Operations", vbNullString, 3, "ResOpEnt", 1)
  loc_1EEE75D:   var_148 = 0
  loc_1EEE7A4:   Proc_165_0_14CCEC0("Reservation with History", &HD, 0, "Reservation Operations", vbNullString, 4, "ResOpEnt", 1)
  loc_1EEE7BB:   var_148 = 0
  loc_1EEE802:   Proc_165_0_14CCEC0("Advance Deposit", &HD, 0, "Reservation Operations", vbNullString, 5, "ResOpEnt", 1)
  loc_1EEE819:   var_148 = 0
  loc_1EEE860:   Proc_165_0_14CCEC0("Confirmation Letters", &HD, 0, "Reservation Operations", vbNullString, 6, "ResOpEnt", 1)
  loc_1EEE877:   var_148 = 0
  loc_1EEE8BE:   Proc_165_0_14CCEC0("Cancellation Letters", &HD, 0, "Reservation Operations", vbNullString, 7, "ResOpEnt", 1)
  loc_1EEE8D5:   var_148 = 0
  loc_1EEE91C:   Proc_165_0_14CCEC0("Registration Card", &HD, 0, "Reservation Operations", vbNullString, 8, "ResOpEnt", 1)
  loc_1EEE933:   var_148 = 0
  loc_1EEE97A:   Proc_165_0_14CCEC0("Reservation Status Screen", &HD, 0, "Reservation Operations", vbNullString, 9, "ResOpEnt", 1)
  loc_1EEE991:   var_148 = 0
  loc_1EEE9D8:   Proc_165_0_14CCEC0("Reservation Status Report", &HD, 3, vbNullString, vbNullString, &HFF, "ReservationEnt", 1)
  loc_1EEE9EF:   var_148 = 0
  loc_1EEEA36:   Proc_165_0_14CCEC0("Reservation Status", &HD, 1, "Reservation Status Report", vbNullString, 0, "ResStatusRpt", 1)
  loc_1EEEA4D:   var_148 = 0
  loc_1EEEA94:   Proc_165_0_14CCEC0("Reservation Status Arrival", &HD, 1, "Reservation Status Report", vbNullString, 1, "ResStatusRpt", 1)
  loc_1EEEAAB:   var_148 = 0
  loc_1EEEAEC:   var_124 = "Reservation Status In-House"
  loc_1EEEAF2:   Proc_165_0_14CCEC0("Reservation Status Arrival", &HD, 1, "Reservation Status Report", vbNullString, 2, "ResStatusRpt", 1)
  loc_1EEEB09:   var_148 = 0
  loc_1EEEB50:   Proc_165_0_14CCEC0("Arrival List", &HD, 1, "Reservation Status Report", vbNullString, 5, "ResStatusRpt", 1)
  loc_1EEEB67:   var_148 = 0
  loc_1EEEBAE:   Proc_165_0_14CCEC0("Advance Recd. Report", &HD, 3, vbNullString, vbNullString, &HFF, "ReservationEnt", 1)
  loc_1EEEBC5:   var_148 = 0
  loc_1EEEC0C:   Proc_165_0_14CCEC0("Advance Recd.", &HD, 1, "Advance Recd. Report", vbNullString, 0, "AdvRecdRpt", 1)
  loc_1EEEC23:   var_148 = 0
  loc_1EEEC6A:   Proc_165_0_14CCEC0("Advance Recd. Arrival", &HD, 1, "Advance Recd. Report", vbNullString, 1, "AdvRecdRpt", 1)
  loc_1EEEC81:   var_148 = 0
  loc_1EEECC2:   var_124 = "Advance Recd. In-House"
  loc_1EEECC8:   Proc_165_0_14CCEC0("Advance Recd. Arrival", &HD, 1, "Advance Recd. Report", vbNullString, 2, "AdvRecdRpt", 1)
  loc_1EEECDF:   var_148 = 0
  loc_1EEED26:   Proc_165_0_14CCEC0("M.I.S.", &HD, 3, vbNullString, vbNullString, &HFF, "ReservationEnt", 1)
  loc_1EEED3D:   var_148 = 0
  loc_1EEED7E:   var_124 = "7-730 Days Forecast"
  loc_1EEED84:   Proc_165_0_14CCEC0("M.I.S.", &HD, 0, "M.I.S.", vbNullString, 0, "ReservationMIS", 1)
  loc_1EEED9B:   var_148 = 0
  loc_1EEEDE2:   Proc_165_0_14CCEC0("23 Day Room Availability Forecast", &HD, 0, "M.I.S.", vbNullString, 1, "ReservationMIS", 1)
  loc_1EEEDF9:   var_148 = 0
  loc_1EEEE40:   Proc_165_0_14CCEC0("23 Day Room Type Availability Forecast", &HD, 0, "M.I.S.", vbNullString, 2, "ReservationMIS", 1)
  loc_1EEEE57:   var_148 = 0
  loc_1EEEE9E:   Proc_165_0_14CCEC0("Package Forecast", &HD, 0, "M.I.S.", vbNullString, 3, "ReservationMIS", 1)
  loc_1EEEEB0: End If
  loc_1EEEEC8: If (InStr(2, MemVar_1F92228, "#", 0) <> 0) Then
  loc_1EEEED0:   var_148 = 0
  loc_1EEEF17:   Proc_165_0_14CCEC0("Front Desk", &HE, 4, vbNullString, vbNullString, 0, "FrontDesk", 1)
  loc_1EEEF2E:   var_148 = 0
  loc_1EEEF75:   Proc_165_0_14CCEC0("Front Desk Operations", &HE, 3, vbNullString, vbNullString, &HFF, "FDO", 1)
  loc_1EEEF8C:   var_148 = 0
  loc_1EEEFD3:   Proc_165_0_14CCEC0("WalkIn CheckIn", &HE, 0, "Front Desk Operations", vbNullString, 0, "FDOMenu", 1)
  loc_1EEEFEA:   var_148 = 0
  loc_1EEF031:   Proc_165_0_14CCEC0("Room Status", &HE, 0, "Front Desk Operations", vbNullString, 2, "FDOMenu", 1)
  loc_1EEF048:   var_148 = 0
  loc_1EEF08F:   Proc_165_0_14CCEC0("Expense Entry", &HE, 0, "Front Desk Operations", vbNullString, 8, "FDOMenu", 1)
  loc_1EEF0A6:   var_148 = 0
  loc_1EEF0ED:   Proc_165_0_14CCEC0("Forex Receive Entry", &HE, 0, "Front Desk Operations", vbNullString, &HD, "FDOMenu", 1)
  loc_1EEF104:   var_148 = 0
  loc_1EEF14B:   Proc_165_0_14CCEC0("Display Rack", &HE, 0, "Front Desk Operations", vbNullString, &H10, "FDOMenu", 1)
  loc_1EEF162:   var_148 = 0
  loc_1EEF1A9:   Proc_165_0_14CCEC0("House Keeping Screen", &HE, 0, "Front Desk Operations", vbNullString, &H11, "FDOMenu", 1)
  loc_1EEF1C0:   var_148 = 0
  loc_1EEF207:   Proc_165_0_14CCEC0("Travel Agency Posting", &HE, 0, "Front Desk Operations", vbNullString, &H12, "FDOMenu", 1)
  loc_1EEF21E:   var_148 = 0
  loc_1EEF265:   Proc_165_0_14CCEC0("Bill Reprint", &HE, 0, "Front Desk Operations", vbNullString, &H13, "FDOMenu", 1)
  loc_1EEF27C:   var_148 = 0
  loc_1EEF2C3:   Proc_165_0_14CCEC0("Reverse Check Out", &HE, 0, "Front Desk Operations", vbNullString, &H14, "FDOMenu", 1)
  loc_1EEF2DA:   var_148 = 0
  loc_1EEF321:   Proc_165_0_14CCEC0("Merge Room", &HE, 0, "Front Desk Operations", vbNullString, &H15, "FDOMenu", 1)
  loc_1EEF338:   var_148 = 0
  loc_1EEF379:   var_124 = "Bill Re-Settlement"
  loc_1EEF37F:   Proc_165_0_14CCEC0("Merge Room", &HE, 0, "Front Desk Operations", vbNullString, &H16, "FDOMenu", 1)
  loc_1EEF396:   var_148 = 0
  loc_1EEF3DD:   Proc_165_0_14CCEC0("Reverse Room Merge", &HE, 0, "Front Desk Operations", vbNullString, &H17, "FDOMenu", 1)
  loc_1EEF3F4:   var_148 = 0
  loc_1EEF43B:   Proc_165_0_14CCEC0("Reports", &HE, 3, vbNullString, vbNullString, &HFF, "FDOReports", 1)
  loc_1EEF452:   var_148 = 0
  loc_1EEF499:   Proc_165_0_14CCEC0("Instant House Count", &HE, 1, "Reports", vbNullString, 2, "FDORep", 1)
  loc_1EEF4B0:   var_148 = 0
  loc_1EEF4F7:   Proc_165_0_14CCEC0("Room Inventory", &HE, 1, "Reports", vbNullString, 3, "FDORep", 1)
  loc_1EEF50E:   var_148 = 0
  loc_1EEF555:   Proc_165_0_14CCEC0("Guest In House", &HE, 1, "Reports", vbNullString, 4, "FDORep", 1)
  loc_1EEF56C:   var_148 = 0
  loc_1EEF5B3:   Proc_165_0_14CCEC0("House Keeping Report", &HE, 1, "Reports", vbNullString, 5, "FDORep", 1)
  loc_1EEF5CA:   var_148 = 0
  loc_1EEF611:   Proc_165_0_14CCEC0("Arrival & Departure List", &HE, 2, "Reports", vbNullString, 6, "FDORep", 1)
  loc_1EEF628:   var_148 = 0
  loc_1EEF66F:   Proc_165_0_14CCEC0("Charge Payment Detail", &HE, 1, "Reports", vbNullString, 7, "FDORep", 1)
  loc_1EEF686:   var_148 = 0
  loc_1EEF6CD:   Proc_165_0_14CCEC0("Payments By Cashier", &HE, 1, "Reports", vbNullString, 8, "FDORep", 1)
  loc_1EEF6E4:   var_148 = 0
  loc_1EEF72B:   Proc_165_0_14CCEC0("Cashier Report", &HE, 1, "Reports", vbNullString, 9, "FDORep", 1)
  loc_1EEF742:   var_148 = 0
  loc_1EEF789:   Proc_165_0_14CCEC0("Settlement Report", &HE, 1, "Reports", vbNullString, &HA, "FDORep", 1)
  loc_1EEF7A0:   var_148 = 0
  loc_1EEF7E7:   Proc_165_0_14CCEC0("Cancel Bill Details", &HE, 1, "Reports", vbNullString, &HB, "FDORep", 1)
  loc_1EEF7FE:   var_148 = 0
  loc_1EEF845:   Proc_165_0_14CCEC0("Room Change History", &HE, 1, "Reports", vbNullString, &HC, "FDORep", 1)
  loc_1EEF85C:   var_148 = 0
  loc_1EEF8A3:   Proc_165_0_14CCEC0("Arrival And Departure Register", &HE, 1, "Reports", vbNullString, &HD, "FDORep", 1)
  loc_1EEF8BA:   var_148 = 0
  loc_1EEF901:   Proc_165_0_14CCEC0("FOM Sales Register", &HE, 1, "Reports", vbNullString, &HE, "FDORep", 1)
  loc_1EEF918:   var_148 = 0
  loc_1EEF95F:   Proc_165_0_14CCEC0("Room Wise Plan Detail", &HE, 1, "Reports", vbNullString, &HF, "FDORep", 1)
  loc_1EEF976:   var_148 = 0
  loc_1EEF9BD:   Proc_165_0_14CCEC0("Expected Plan/Package F&B Details", &HE, 1, "Reports", vbNullString, &H10, "FDORep", 1)
  loc_1EEF9D4:   var_148 = 0
  loc_1EEFA1B:   Proc_165_0_14CCEC0("Occupancy Report", &HE, 1, "Reports", vbNullString, &H11, "FDORep", 1)
  loc_1EEFA32:   var_148 = 0
  loc_1EEFA79:   Proc_165_0_14CCEC0("Company wise Nights", &HE, 1, "Reports", vbNullString, &H12, "FDORep", 1)
  loc_1EEFA90:   var_148 = 0
  loc_1EEFAD7:   Proc_165_0_14CCEC0("Revenue During the stay", &HE, 1, "Reports", vbNullString, &H13, "FDORep", 1)
  loc_1EEFAEE:   var_148 = 0
  loc_1EEFB35:   Proc_165_0_14CCEC0("Bill Change Report", &HE, 1, "Reports", vbNullString, &H14, "FDORep", 1)
  loc_1EEFB4C:   var_148 = 0
  loc_1EEFB93:   Proc_165_0_14CCEC0("Check In Register", &HE, 1, "Reports", vbNullString, &H16, "FDORep", 1)
  loc_1EEFBAA:   var_148 = 0
  loc_1EEFBF1:   Proc_165_0_14CCEC0("Expected Check Out", &HE, 1, "Reports", vbNullString, &H17, "FDORep", 1)
  loc_1EEFC08:   var_148 = 0
  loc_1EEFC4F:   Proc_165_0_14CCEC0("GRC Printing", &HE, 1, "Reports", vbNullString, &H18, "FDORep", 1)
  loc_1EEFC66:   var_148 = 0
  loc_1EEFCAD:   Proc_165_0_14CCEC0("Check Out Register", &HE, 1, "Reports", vbNullString, &H19, "FDORep", 1)
  loc_1EEFCC4:   var_148 = 0
  loc_1EEFD0B:   Proc_165_0_14CCEC0("Extra Charges During Stay", &HE, 1, "Reports", vbNullString, &H1A, "FDORep", 1)
  loc_1EEFD22:   var_148 = 0
  loc_1EEFD69:   Proc_165_0_14CCEC0("Plan Meal Tokens", &HE, 1, "Reports", vbNullString, &H1B, "FDORep", 1)
  loc_1EEFD80:   var_148 = 0
  loc_1EEFDC7:   Proc_165_0_14CCEC0("FOM Tax Detail", &HE, 1, "Reports", vbNullString, &H1C, "FDORep", 1)
  loc_1EEFDDE:   var_148 = 0
  loc_1EEFE25:   Proc_165_0_14CCEC0("Checked In Guest Detail", &HE, 1, "Reports", vbNullString, &H1D, "FDORep", 1)
  loc_1EEFE3C:   var_148 = 0
  loc_1EEFE83:   Proc_165_0_14CCEC0("Room Rent Audit Report", &HE, 1, "Reports", vbNullString, &H1E, "FDORep", 1)
  loc_1EEFE9A:   var_148 = 0
  loc_1EEFEE1:   Proc_165_0_14CCEC0("Sales Report", &HE, 1, "Reports", vbNullString, &H1F, "FDORep", 1)
  loc_1EEFEF8:   var_148 = 0
  loc_1EEFF3F:   Proc_165_0_14CCEC0("Tax Wise Charge Detail", &HE, 1, "Reports", vbNullString, &H20, "FDORep", 1)
  loc_1EEFF56:   var_148 = 0
  loc_1EEFF9D:   Proc_165_0_14CCEC0("Tourism Forms", &HE, 3, vbNullString, vbNullString, &HFF, "TFDOForms", 1)
  loc_1EEFFB4:   var_148 = 0
  loc_1EEFFC5:   var_140 = "FDOForms"
  loc_1EEFFD3:   ' Referenced from: 1EFFE18
  loc_1EEFFFB:   Proc_165_0_14CCEC0("Form  C", &HE, 1, "Tourism Forms", vbNullString, 0, var_140, 1)
  loc_1EF0012:   var_148 = 0
  loc_1EF0059:   Proc_165_0_14CCEC0("Tourism Form 1", &HE, 1, "Tourism Forms", vbNullString, 1, "FDOForms", 1)
  loc_1EF0070:   var_148 = 0
  loc_1EF00B7:   Proc_165_0_14CCEC0("Tourism Form 2", &HE, 1, "Tourism Forms", vbNullString, 2, "FDOForms", 1)
  loc_1EF00CE:   var_148 = 0
  loc_1EF0115:   Proc_165_0_14CCEC0("Tourism Form 5", &HE, 1, "Tourism Forms", vbNullString, 3, "FDOForms", 1)
  loc_1EF012C:   var_148 = 0
  loc_1EF0140:   Do 'loop at: 1F0013C
  loc_1EF016D:   var_124 = "Form -3 (Luxury Tax Register)"
  loc_1EF0173:   Proc_165_0_14CCEC0("Tourism Form 5", &HE, 1, "Tourism Forms", vbNullString, 4, "FDOForms", 1)
  loc_1EF018A:   var_148 = 0
  loc_1EF01D1:   Proc_165_0_14CCEC0("Tourism Form 6", &HE, 1, "Tourism Forms", vbNullString, 5, "FDOForms", 1)
  loc_1EF01E8:   var_148 = 0
  loc_1EF022F:   Proc_165_0_14CCEC0("Tourism Form 4", &HE, 1, "Tourism Forms", vbNullString, 6, "FDOForms", 1)
  loc_1EF0246:   var_148 = 0
  loc_1EF028D:   Proc_165_0_14CCEC0("Luxury Tax Report", &HE, 1, "Tourism Forms", vbNullString, 7, "FDOForms", 1)
  loc_1EF02A4:   var_148 = 0
  loc_1EF02EB:   Proc_165_0_14CCEC0("Monthly Return", &HE, 2, "Tourism Forms", vbNullString, 8, "FDOForms", 1)
  loc_1EF0302:   var_148 = 0
  loc_1EF0349:   Proc_165_0_14CCEC0("M.I.S.", &HE, 3, vbNullString, vbNullString, &HFF, "FDOMIS", 1)
  loc_1EF0360:   var_148 = 0
  loc_1EF03A7:   Proc_165_0_14CCEC0("Occupancy Display", &HE, 1, "M.I.S.", vbNullString, 0, "FDOMISRep", 1)
  loc_1EF03BE:   var_148 = 0
  loc_1EF0405:   Proc_165_0_14CCEC0("Guest wise Analysis", &HE, 1, "M.I.S.", vbNullString, 1, "FDOMISRep", 1)
  loc_1EF041C:   var_148 = 0
  loc_1EF0463:   Proc_165_0_14CCEC0("Company wise Analysis", &HE, 1, "M.I.S.", vbNullString, 2, "FDOMISRep", 1)
  loc_1EF047A:   var_148 = 0
  loc_1EF04C1:   Proc_165_0_14CCEC0("Revenue During the stay", &HE, 1, "M.I.S.", vbNullString, 3, "FDOMISRep", 1)
  loc_1EF04D8:   var_148 = 0
  loc_1EF051F:   Proc_165_0_14CCEC0("Room Occupancy", &HE, 1, "M.I.S.", vbNullString, 4, "FDOMISRep", 1)
  loc_1EF0536:   var_148 = 0
  loc_1EF057D:   Proc_165_0_14CCEC0("Room Type Occupancy", &HE, 1, "M.I.S.", vbNullString, 5, "FDOMISRep", 1)
  loc_1EF0594:   var_148 = 0
  loc_1EF05DB:   Proc_165_0_14CCEC0("Room Wise Room Revenue", &HE, 1, "M.I.S.", vbNullString, 6, "FDOMISRep", 1)
  loc_1EF05ED: End If
  loc_1EF0605: If (InStr(2, MemVar_1F92228, "I", 0) <> 0) Then
  loc_1EF060D:   var_148 = 0
  loc_1EF0654:   Proc_165_0_14CCEC0("House Keeping", &HF, 4, vbNullString, vbNullString, 0, "HouseKeeping", 1)
  loc_1EF066B:   var_148 = 0
  loc_1EF06B2:   Proc_165_0_14CCEC0("Transactions", &HF, 3, vbNullString, vbNullString, &HFF, "SetHK", 1)
  loc_1EF06C9:   var_148 = 0
  loc_1EF0710:   Proc_165_0_14CCEC0("Block Master", &HF, 0, "Setup", vbNullString, 0, "HouseSet", 1)
  loc_1EF0727:   var_148 = 0
  loc_1EF076E:   Proc_165_0_14CCEC0("Transactions", &HF, 3, vbNullString, vbNullString, &HFF, "TransHK", 1)
  loc_1EF0785:   var_148 = 0
  loc_1EF07CC:   Proc_165_0_14CCEC0("Complaint Master", &HF, 0, "Transactions", vbNullString, 0, "HouseEnt", 1)
  loc_1EF07E3:   var_148 = 0
  loc_1EF082A:   Proc_165_0_14CCEC0("Complaint Clearance", &HF, 0, "Transactions", vbNullString, 1, "HouseEnt", 1)
  loc_1EF0841:   var_148 = 0
  loc_1EF0888:   Proc_165_0_14CCEC0("Lost / Found Entry", &HF, 0, "Transactions", vbNullString, 2, "HouseEnt", 1)
  loc_1EF089F:   var_148 = 0
  loc_1EF08E6:   Proc_165_0_14CCEC0("Claim Entry", &HF, 0, "Transactions", vbNullString, 3, "HouseEnt", 1)
  loc_1EF08FD:   var_148 = 0
  loc_1EF0944:   Proc_165_0_14CCEC0("House Keeping Op.Stock Entry", &HF, 2, "Transactions", vbNullString, 4, "HouseEnt", 1)
  loc_1EF095B:   var_148 = 0
  loc_1EF09A2:   Proc_165_0_14CCEC0("Issue/Recd. Entry", &HF, 0, "Transactions", vbNullString, 5, "HouseEnt", 1)
  loc_1EF09B9:   var_148 = 0
  loc_1EF0A00:   Proc_165_0_14CCEC0("House Keeping Screen", &HF, 0, "Transactions", vbNullString, 6, "HouseEnt", 1)
  loc_1EF0A17:   var_148 = 0
  loc_1EF0A5E:   Proc_165_0_14CCEC0("Item Issued On Cleaning", &HF, 0, "Transactions", vbNullString, 7, "HouseEnt", 1)
  loc_1EF0A75:   var_148 = 0
  loc_1EF0ABC:   Proc_165_0_14CCEC0("Check Out Clearance Screen", &HF, 0, "Transactions", vbNullString, 8, "HouseEnt", 1)
  loc_1EF0AD3:   var_148 = 0
  loc_1EF0B1A:   Proc_165_0_14CCEC0("Room Block", &HF, 0, "Transactions", vbNullString, 9, "HouseEnt", 1)
  loc_1EF0B31:   var_148 = 0
  loc_1EF0B78:   Proc_165_0_14CCEC0("Reports", &HF, 3, vbNullString, vbNullString, &HFF, "ReportsHK", 1)
  loc_1EF0B8F:   var_148 = 0
  loc_1EF0BD6:   Proc_165_0_14CCEC0("Room Status Report", &HF, 1, "Reports", vbNullString, 3, "HouseREP", 1)
  loc_1EF0BED:   var_148 = 0
  loc_1EF0C34:   Proc_165_0_14CCEC0("Complaint Detail", &HF, 1, "Reports", vbNullString, 4, "HouseREP", 1)
  loc_1EF0C46: End If
  loc_1EF0C5E: If (InStr(2, MemVar_1F92228, "J", 0) <> 0) Then
  loc_1EF0C66:   var_148 = 0
  loc_1EF0CAD:   Proc_165_0_14CCEC0("Material Mgmt", &H10, 4, vbNullString, vbNullString, 0, "Purchase", 1)
  loc_1EF0CC4:   var_148 = 0
  loc_1EF0D0B:   Proc_165_0_14CCEC0("Transactions", &H10, 3, vbNullString, vbNullString, &HFF, "TransPurch", 1)
  loc_1EF0D22:   var_148 = 0
  loc_1EF0D69:   Proc_165_0_14CCEC0("Gravy Item Entry", &H10, 0, "Transactions", vbNullString, 0, "Purch", 1)
  loc_1EF0D80:   var_148 = 0
  loc_1EF0DC7:   Proc_165_0_14CCEC0("Indent", &H10, 0, "Transactions", vbNullString, 1, "Purch", 1)
  loc_1EF0DDE:   var_148 = 0
  loc_1EF0E03:   Do 'loop at: 1F00DB4
  loc_1EF0E25:   Proc_165_0_14CCEC0("Purchase Order", &H10, 0, "Transactions", vbNullString, 2, "Purch", 1)
  loc_1EF0E3C:   var_148 = 0
  loc_1EF0E83:   Proc_165_0_14CCEC0("M.R. Entry", &H10, 0, "Transactions", vbNullString, 3, "Purch", 1)
  loc_1EF0E9A:   var_148 = 0
  loc_1EF0EE1:   Proc_165_0_14CCEC0("Purchase Bill", &H10, 0, "Transactions", vbNullString, 4, "Purch", 1)
  loc_1EF0EF8:   var_148 = 0
  loc_1EF0F3F:   Proc_165_0_14CCEC0("Requisition Slip", &H10, 0, "Transactions", vbNullString, 5, "Purch", 1)
  loc_1EF0F56:   var_148 = 0
  loc_1EF0F9D:   Proc_165_0_14CCEC0("Stock Issue on Requisition", &H10, 0, "Transactions", vbNullString, 6, "Purch", 1)
  loc_1EF0FB4:   var_148 = 0
  loc_1EF0FFB:   Proc_165_0_14CCEC0("Kitchen Closing Stock", &H10, 0, "Transactions", vbNullString, 7, "Purch", 1)
  loc_1EF1012:   var_148 = 0
  loc_1EF1059:   Proc_165_0_14CCEC0("Stock Transfer", &H10, 0, "Transactions", vbNullString, 8, "Purch", 1)
  loc_1EF1070:   var_148 = 0
  loc_1EF10B7:   Proc_165_0_14CCEC0("Finish Material Receive Entry", &H10, 0, "Transactions", vbNullString, 9, "Purch", 1)
  loc_1EF10CE:   var_148 = 0
  loc_1EF1115:   Proc_165_0_14CCEC0("Excise Invoice Cum Gate Pass", &H10, 0, "Transactions", vbNullString, &HA, "Purch", 1)
  loc_1EF112C:   var_148 = 0
  loc_1EF1173:   Proc_165_0_14CCEC0("Reports", &H10, 3, vbNullString, vbNullString, &HFF, "MatReports", 1)
  loc_1EF118A:   var_148 = 0
  loc_1EF11D1:   Proc_165_0_14CCEC0("Kitchen Stock Report I/R Basis", &H10, 1, "Reports", vbNullString, &H15, "Purch", 1)
  loc_1EF11E8:   var_148 = 0
  loc_1EF122F:   Proc_165_0_14CCEC0("Purchase Register", &H10, 1, "Reports", vbNullString, &H16, "Purch", 1)
  loc_1EF1246:   var_148 = 0
  loc_1EF128D:   Proc_165_0_14CCEC0("Purchase Summary", &H10, 1, "Reports", vbNullString, &H17, "Purch", 1)
  loc_1EF12A4:   var_148 = 0
  loc_1EF12EB:   Proc_165_0_14CCEC0("Cash/Credit Purchase", &H10, 1, "Reports", vbNullString, &H18, "Purch", 1)
  loc_1EF1302:   var_148 = 0
  loc_1EF1349:   Proc_165_0_14CCEC0("Stock Register", &H10, 1, "Reports", vbNullString, &H19, "Purch", 1)
  loc_1EF1360:   var_148 = 0
  loc_1EF13A7:   Proc_165_0_14CCEC0("Stock Summary", &H10, 1, "Reports", vbNullString, &H1A, "Purch", 1)
  loc_1EF13BE:   var_148 = 0
  loc_1EF1405:   Proc_165_0_14CCEC0("Stock In Hand", &H10, 1, "Reports", vbNullString, &H1B, "Purch", 1)
  loc_1EF141C:   var_148 = 0
  loc_1EF1463:   Proc_165_0_14CCEC0("Excess Consumption Report", &H10, 1, "Reports", vbNullString, &H1C, "Purch", 1)
  loc_1EF147A:   var_148 = 0
  loc_1EF14C1:   Proc_165_0_14CCEC0("Store Issue Register", &H10, 1, "Reports", vbNullString, &H1E, "Purch", 1)
  loc_1EF14D8:   var_148 = 0
  loc_1EF151F:   Proc_165_0_14CCEC0("Indent Register", &H10, 1, "Reports", vbNullString, &H20, "Purch", 1)
  loc_1EF1536:   var_148 = 0
  loc_1EF157D:   Proc_165_0_14CCEC0("Purchase Order Register", &H10, 1, "Reports", vbNullString, &H21, "Purch", 1)
  loc_1EF1594:   var_148 = 0
  loc_1EF15DB:   Proc_165_0_14CCEC0("Daily Store Issue Reports", &H10, 1, "Reports", vbNullString, &H22, "Purch", 1)
  loc_1EF15F2:   var_148 = 0
  loc_1EF1639:   Proc_165_0_14CCEC0("VAT Register", &H10, 1, "Reports", vbNullString, &H23, "Purch", 1)
  loc_1EF1650:   var_148 = 0
  loc_1EF1697:   Proc_165_0_14CCEC0("Purchase Ledger", &H10, 1, "Reports", vbNullString, &H24, "Purch", 1)
  loc_1EF16AE:   var_148 = 0
  loc_1EF16F5:   Proc_165_0_14CCEC0("Issue CheckList", &H10, 1, "Reports", vbNullString, &H25, "Purch", 1)
  loc_1EF170C:   var_148 = 0
  loc_1EF1753:   Proc_165_0_14CCEC0("M.R. Register", &H10, 1, "Reports", vbNullString, &H26, "Purch", 1)
  loc_1EF176A:   var_148 = 0
  loc_1EF17B1:   Proc_165_0_14CCEC0("Stock Summary P/S Basis", &H10, 1, "Reports", vbNullString, &H27, "Purch", 1)
  loc_1EF17C8:   var_148 = 0
  loc_1EF17DC:   Do 'loop at: 1F0173E
  loc_1EF180F:   Proc_165_0_14CCEC0("ABC Analysis", &H10, 1, "Reports", vbNullString, &H28, "Purch", 1)
  loc_1EF1826:   var_148 = 0
  loc_1EF186D:   Proc_165_0_14CCEC0("Production Report I/R Basis", &H10, 1, "Reports", vbNullString, 1, "MatRep", 1)
  loc_1EF1884:   var_148 = 0
  loc_1EF18CB:   Proc_165_0_14CCEC0("VAT Register II", &H10, 1, "Reports", vbNullString, &HA, "MatRep", 1)
  loc_1EF18E2:   var_148 = 0
  loc_1EF1929:   Proc_165_0_14CCEC0("VAT Register III", &H10, 1, "Reports", vbNullString, &HB, "MatRep", 1)
  loc_1EF1940:   var_148 = 0
  loc_1EF1981:   var_124 = "Form24 Annexure-A"
  loc_1EF1987:   Proc_165_0_14CCEC0("VAT Register III", &H10, 1, "Reports", vbNullString, &HC, "MatRep", 1)
  loc_1EF199E:   var_148 = 0
  loc_1EF19A9:   Do 'loop at: 1F0195A
  loc_1EF19E5:   Proc_165_0_14CCEC0("Form III", &H10, 1, "Reports", vbNullString, &HF, "MatRep", 1)
  loc_1EF19FC:   var_148 = 0
  loc_1EF1A15:   Do 'loop at: 1F019CB
  loc_1EF1A43:   Proc_165_0_14CCEC0("UPVAT XXIV", &H10, 1, "Reports", vbNullString, &H10, "MatRep", 1)
  loc_1EF1A55: End If
  loc_1EF1A6D: Loop Until (InStr(2, MemVar_1F92228, "!", 0) <> 0) 'do at: 1EE3CDA
  loc_1EF1A75: var_148 = 0
  loc_1EF1AB3: Do 'loop at: 1F01A37
  loc_1EF1ABC: Proc_165_0_14CCEC0("Point Of Sale", &H11, 4, vbNullString, vbNullString, 0, "Restaurant", 1)
  loc_1EF1AD3: var_148 = 0
  loc_1EF1B1A: Proc_165_0_14CCEC0("Restaurant Change", &H11, 2, vbNullString, vbNullString, &H1E, "Rest", 1)
  loc_1EF1B31: var_148 = 0
  loc_1EF1B78: Proc_165_0_14CCEC0("POS Status", &H11, 0, vbNullString, vbNullString, &H1F, "Rest", 1)
  loc_1EF1B8F: var_148 = 0
  loc_1EF1BD6: Proc_165_0_14CCEC0("POS Operations", &H11, 2, vbNullString, vbNullString, &HFF, "POSOperations", 1)
  loc_1EF1BED: var_148 = 0
  loc_1EF1C34: Proc_165_0_14CCEC0("KOT Entry", &H11, 2, "POS Operations", vbNullString, 0, "POSEnt", 1)
  loc_1EF1C4B: var_148 = 0
  loc_1EF1C92: Proc_165_0_14CCEC0("Table Change Entry", &H11, 2, "POS Operations", vbNullString, 1, "POSEnt", 1)
  loc_1EF1CA9: var_148 = 0
  loc_1EF1CF0: Proc_165_0_14CCEC0("Sale Bill Entry", &H11, 2, "POS Operations", vbNullString, 2, "POSEnt", 1)
  loc_1EF1D07: var_148 = 0
  loc_1EF1D4E: Proc_165_0_14CCEC0("Settlement Entry", &H11, 2, "POS Operations", vbNullString, 3, "POSEnt", 1)
  loc_1EF1D65: var_148 = 0
  loc_1EF1DAC: Proc_165_0_14CCEC0("POS Bill Reprint", &H11, 2, "POS Operations", vbNullString, 4, "POSEnt", 1)
  loc_1EF1DC3: var_148 = 0
  loc_1EF1E0A: Proc_165_0_14CCEC0("Split Sale Bill", &H11, 2, "POS Operations", vbNullString, 5, "POSEnt", 1)
  loc_1EF1E21: var_148 = 0
  loc_1EF1E68: Proc_165_0_14CCEC0("Display Table", &H11, 2, "POS Operations", vbNullString, 6, "POSEnt", 1)
  loc_1EF1E7F: var_148 = 0
  loc_1EF1EC6: Proc_165_0_14CCEC0("Order Booking", &H11, 2, "POS Operations", vbNullString, 7, "POSEnt", 1)
  loc_1EF1EDD: var_148 = 0
  loc_1EF1F24: Proc_165_0_14CCEC0("Bill Lookup", &H11, 2, "POS Operations", vbNullString, 8, "POSEnt", 1)
  loc_1EF1F3B: var_148 = 0
  loc_1EF1F82: Proc_165_0_14CCEC0("Order Booking Advance", &H11, 2, "POS Operations", vbNullString, 9, "POSEnt", 1)
  loc_1EF1F99: var_148 = 0
  loc_1EF1FE0: Proc_165_0_14CCEC0("KOT Transfer", &H11, 2, "POS Operations", vbNullString, &HA, "POSEnt", 1)
  loc_1EF1FF7: var_148 = 0
  loc_1EF203E: Proc_165_0_14CCEC0("Token Entry", &H11, 2, "POS Operations", vbNullString, &HB, "POSEnt", 1)
  loc_1EF2055: var_148 = 0
  loc_1EF209C: Proc_165_0_14CCEC0("POS Reports", &H11, 3, vbNullString, vbNullString, &HFF, "POSReports", 1)
  loc_1EF20B3: Do 'loop at: 1F02055
  loc_1EF20B3: var_148 = 0
  loc_1EF20FA: Proc_165_0_14CCEC0("Sales Register", &H11, 1, "POS Reports", vbNullString, 0, "POSRep", 1)
  loc_1EF2111: var_148 = 0
  loc_1EF2133: Do 'loop at: 1F020D5
  loc_1EF2158: Proc_165_0_14CCEC0("Stewardwise Sale", &H11, 1, "POS Reports", vbNullString, 1, "POSRep", 1)
  loc_1EF216F: var_148 = 0
  loc_1EF21B3: Do 'loop at: 1F02155
  loc_1EF21B6: Proc_165_0_14CCEC0("Tablewise Sales", &H11, 1, "POS Reports", vbNullString, 2, "POSRep", 1)
  loc_1EF21CD: var_148 = 0
  loc_1EF2214: Proc_165_0_14CCEC0("Settlement Summary", &H11, 1, "POS Reports", vbNullString, 3, "POSRep", 1)
  loc_1EF222B: var_148 = 0
  loc_1EF2239: Do 'loop at: 1F021D5
  loc_1EF2272: Proc_165_0_14CCEC0("Tax Report", &H11, 1, "POS Reports", vbNullString, 4, "POSRep", 1)
  loc_1EF2289: var_148 = 0
  loc_1EF22BF: Do 'loop at: 1F0225B
  loc_1EF22D0: Proc_165_0_14CCEC0("KOT Wise Details", &H11, 1, "POS Reports", vbNullString, 5, "POSRep", 1)
  loc_1EF22E7: var_148 = 0
  loc_1EF232E: Proc_165_0_14CCEC0("Discount Register", &H11, 1, "POS Reports", vbNullString, 6, "POSRep", 1)
  loc_1EF2345: Do 'loop at: 1F022E1
  loc_1EF2345: var_148 = 0
  loc_1EF238C: Proc_165_0_14CCEC0("Cover Analysis", &H11, 1, "POS Reports", vbNullString, 7, "POSRep", 1)
  loc_1EF23A3: var_148 = 0
  loc_1EF23CB: Do 'loop at: 1F02367
  loc_1EF23EA: Proc_165_0_14CCEC0("Pending KOT", &H11, 1, "POS Reports", vbNullString, 8, "POSRep", 1)
  loc_1EF2401: var_148 = 0
  loc_1EF2448: Proc_165_0_14CCEC0("Item wise Sale", &H11, 1, "POS Reports", vbNullString, 9, "POSRep", 1)
  loc_1EF245F: var_148 = 0
  loc_1EF24A6: Proc_165_0_14CCEC0("Deleted Unsettled Bill", &H11, 1, "POS Reports", vbNullString, &HA, "POSRep", 1)
  loc_1EF24BD: var_148 = 0
  loc_1EF2504: Proc_165_0_14CCEC0("NC KOT Detail", &H11, 1, "POS Reports", vbNullString, &HB, "POSRep", 1)
  loc_1EF251B: var_148 = 0
  loc_1EF2562: Proc_165_0_14CCEC0("Sales Day Book", &H11, 1, "POS Reports", vbNullString, &HC, "POSRep", 1)
  loc_1EF2579: var_148 = 0
  loc_1EF25C0: Proc_165_0_14CCEC0("Tax Register", &H11, 1, "POS Reports", vbNullString, &HD, "POSRep", 1)
  loc_1EF25D7: var_148 = 0
  loc_1EF261E: Proc_165_0_14CCEC0("Order Detail Report", &H11, 1, "POS Reports", vbNullString, &HE, "POSRep", 1)
  loc_1EF2635: var_148 = 0
  loc_1EF267C: Proc_165_0_14CCEC0("Taxwise Details", &H11, 1, "POS Reports", vbNullString, &HF, "POSRep", 1)
  loc_1EF2693: var_148 = 0
  loc_1EF26DA: Proc_165_0_14CCEC0("NC KOT Summary", &H11, 1, "POS Reports", vbNullString, &H10, "POSRep", 1)
  loc_1EF26F1: var_148 = 0
  loc_1EF2738: Proc_165_0_14CCEC0("Discount Register (PartyWise)", &H11, 1, "POS Reports", vbNullString, &H12, "POSRep", 1)
  loc_1EF274F: var_148 = 0
  loc_1EF2796: Proc_165_0_14CCEC0("Not Delivered Order", &H11, 1, "POS Reports", vbNullString, &H13, "POSRep", 1)
  loc_1EF27AD: var_148 = 0
  loc_1EF27F4: Proc_165_0_14CCEC0("Group Wise Sale", &H11, 1, "POS Reports", vbNullString, &H14, "POSRep", 1)
  loc_1EF280B: var_148 = 0
  loc_1EF2852: Proc_165_0_14CCEC0("Customer Detail", &H11, 1, "POS Reports", vbNullString, &H15, "POSRep", 0)
  loc_1EF2869: Do 'loop at: 1F0280B
  loc_1EF2869: var_148 = 0
  loc_1EF28B0: Proc_165_0_14CCEC0("Denomination Detail", &H11, 0, "POS Reports", vbNullString, &H29, "POSRep", 0)
  loc_1EF28C7: var_148 = 0
  loc_1EF28E9: Do 'loop at: 1F0288B
  loc_1EF290E: Proc_165_0_14CCEC0("POS M.I.S.", &H11, 3, vbNullString, vbNullString, &HFF, "POSMIS", 1)
  loc_1EF2925: var_148 = 0
  loc_1EF2969: Do 'loop at: 1F0290B
  loc_1EF296C: Proc_165_0_14CCEC0("Collection Summary", &H11, 1, "POS M.I.S.", vbNullString, 0, "MISREP", 1)
  loc_1EF2983: var_148 = 0
  loc_1EF29CA: Proc_165_0_14CCEC0("Open Item Sales", &H11, 1, "POS M.I.S.", vbNullString, 1, "MISREP", 1)
  loc_1EF29E1: var_148 = 0
  loc_1EF2A28: Proc_165_0_14CCEC0("Void Bills", &H11, 1, "POS M.I.S.", vbNullString, 2, "MISREP", 1)
  loc_1EF2A3F: var_148 = 0
  loc_1EF2A86: Proc_165_0_14CCEC0("KOT Change Report", &H11, 1, "POS M.I.S.", vbNullString, 3, "MISREP", 1)
  loc_1EF2A9D: var_148 = 0
  loc_1EF2AE4: Proc_165_0_14CCEC0("Tax Summary", &H11, 1, "POS M.I.S.", vbNullString, 4, "MISREP", 1)
  loc_1EF2AE9: Do 'loop at: 1F02A8B
  loc_1EF2AE9: 
  loc_1EF2AE9:
  loc_1EF2AFB: var_148 = 0
  loc_1EF2B42: Proc_165_0_14CCEC0("Discount Summary", &H11, 1, "POS M.I.S.", vbNullString, 5, "MISREP", 1)
  loc_1EF2B59: var_148 = 0
  loc_1EF2BA0: Proc_165_0_14CCEC0("Monthwise Sales", &H11, 1, "POS M.I.S.", vbNullString, 6, "MISREP", 1)
  loc_1EF2BB7: var_148 = 0
  loc_1EF2BFE: Proc_165_0_14CCEC0("ABC  Analysis", &H11, 1, "POS M.I.S.", vbNullString, 7, "MISREP", 1)
  loc_1EF2C15: var_148 = 0
  loc_1EF2C5C: Proc_165_0_14CCEC0("Sale Summary", &H11, 1, "POS M.I.S.", vbNullString, 8, "MISREP", 1)
  loc_1EF2C73: var_148 = 0
  loc_1EF2CBA: Proc_165_0_14CCEC0("Tax Invoice Detail", &H11, 1, "POS M.I.S.", vbNullString, 9, "MISREP", 1)
  loc_1EF2CD1: var_148 = 0
  loc_1EF2D18: Proc_165_0_14CCEC0("Edited Bills", &H11, 1, "POS M.I.S.", vbNullString, &HA, "MISREP", 1)
  loc_1EF2D4E: unk_4E88A6.Execute "Select Code,Name,KOTYN,Order_Booking from depart where OutletYN='Y' And LogSite_Code='" & MemVar_1F92078 & "'", var_BC, -1
  loc_1EF2D59: Set var_88 = var_12C
  loc_1EF2D7B: Do 'loop at: 1F02D0B
  loc_1EF2D7B: Loop Until Not(Me.Recordset15.EOF) 'do at: 1EE3CDA
  loc_1EF2DCD: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF2E1A: Proc_165_0_14CCEC0(CStr(Me.Recordset15.Fields.Item("Name").Value), &H11, 3, vbNullString, vbNullString, &HFF, vbNullString, 0)
  loc_1EF2E7D: Loop Until (Me.Recordset15.Fields.Item("KotYN").Value = "Y") 'do at: 1EE3183
  loc_1EF2ECF: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF2EFB: Do 'loop at: 1F02E9D
  loc_1EF2F1C: Proc_165_0_14CCEC0("KOT Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 0, vbNullString, 0)
  loc_1EF2F8F: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF2FDC: Proc_165_0_14CCEC0("Table Change Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 1, vbNullString, 0)
  loc_1EF304F: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF307B: Do 'loop at: 1F0301D
  loc_1EF309C: Proc_165_0_14CCEC0("KOT Transfer", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HA, vbNullString, 0)
  loc_1EF310F: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF315C: Proc_165_0_14CCEC0("Token Entry", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HB, vbNullString, 0)
  loc_1EF3180: GoTo loc_1EE34C5
  loc_1EF31C2: Loop Until (Me.Recordset15.Fields.Item("KotYN").Value = "N") 'do at: 1EE34C5
  loc_1EF31FB: Do 'loop at: 1F0319D
  loc_1EF3214: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3261: Proc_165_0_14CCEC0("KOT Entry", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 0, vbNullString, 0)
  loc_1EF32D4: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3321: Proc_165_0_14CCEC0("Table Change Entry", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 1, vbNullString, 0)
  loc_1EF337B: Do 'loop at: 1F0331D
  loc_1EF3394: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF33E1: Proc_165_0_14CCEC0("KOT Transfer", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HA, vbNullString, 0)
  loc_1EF3454: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF34A1: Proc_165_0_14CCEC0("Token Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, &HB, vbNullString, 0)
  loc_1EF3514: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3561: Proc_165_0_14CCEC0("Sale Bill Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 2, vbNullString, 0)
  loc_1EF35D4: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3621: Proc_165_0_14CCEC0("Settlement Entry", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 3, vbNullString, 0)
  loc_1EF3694: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF36E1: Proc_165_0_14CCEC0("POS Bill Reprint", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 4, vbNullString, 0)
  loc_1EF3754: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF37A1: Proc_165_0_14CCEC0("Split Sale Bill", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 5, vbNullString, 0)
  loc_1EF3814: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3861: Proc_165_0_14CCEC0("Display Table", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 6, vbNullString, 0)
  loc_1EF38C4: Loop Until (Me.Recordset15.Fields.Item("Order_Booking").Value = "Y") 'do at: 1EE3A4A
  loc_1EF3916: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3963: Proc_165_0_14CCEC0("Order Booking", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 7, vbNullString, 0)
  loc_1EF39CE: Do 'loop at: 1F03970
  loc_1EF39D6: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3A23: Proc_165_0_14CCEC0("Order Booking Advance", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 9, vbNullString, 0)
  loc_1EF3A47: GoTo loc_1EE3C0C
  loc_1EF3A89: Loop Until (Me.Recordset15.Fields.Item("Order_Booking").Value = "N") 'do at: 1EE3C0C
  loc_1EF3ADB: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3B28: Proc_165_0_14CCEC0("Order Booking", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 7, vbNullString, 0)
  loc_1EF3B9B: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3BE8: Proc_165_0_14CCEC0("Order Booking Advance", &H11, 2, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 9, vbNullString, 0)
  loc_1EF3C5B: var_CC = Me.Recordset15.Fields.Item("Code").Value
  loc_1EF3CA8: Proc_165_0_14CCEC0("Bill Lookup", &H11, 0, CStr(Me.Recordset15.Fields.Item("Name").Value), vbNullString, 8, vbNullString, 0)
  loc_1EF3CD2: Me.Recordset15.MoveNext
  loc_1EF3CD7: GoTo loc_1EE2D69
  loc_1EF3CF2: Loop Until (InStr(2, MemVar_1F92228, "Q", 0) <> 0) 'do at: 1EE5455
  loc_1EF3CFA: var_148 = 0
  loc_1EF3D41: Proc_165_0_14CCEC0("Banquet", &H12, 4, vbNullString, vbNullString, 0, "Banquet", 1)
  loc_1EF3D56: var_148 = "BANQ"
  loc_1EF3D9D: Proc_165_0_14CCEC0("Banquet Operation", &H12, 0, "Indoor Catering", vbNullString, &HFF, "oper", 0)
  loc_1EF3DB2: var_148 = "BANQ"
  loc_1EF3DCE: Do 'loop at: 1F03D70
  loc_1EF3DF9: Proc_165_0_14CCEC0("Booking Inquiry", &H12, 0, "Indoor Catering", vbNullString, 0, "Hallop", 0)
  loc_1EF3E0E: var_148 = "BANQ"
  loc_1EF3E49: Do 'loop at: 1F03DF0
  loc_1EF3E55: Proc_165_0_14CCEC0("Banquet Booking", &H12, 0, "Indoor Catering", vbNullString, 1, "Hallop", 0)
  loc_1EF3E6A: var_148 = "BANQ"
  loc_1EF3EB1: Proc_165_0_14CCEC0("Catalog Selection", &H12, 0, "Indoor Catering", vbNullString, 2, "Hallop", 0)
  loc_1EF3EC6: var_148 = "BANQ"
  loc_1EF3F07: var_124 = "Chef Pre-Costing"
  loc_1EF3F0D: Proc_165_0_14CCEC0("Catalog Selection", &H12, 0, "Indoor Catering", vbNullString, 3, "Hallop", 0)
  loc_1EF3F22: var_148 = "BANQ"
  loc_1EF3F69: Proc_165_0_14CCEC0("Banquet Billing", &H12, 0, "Indoor Catering", vbNullString, 4, "Hallop", 0)
  loc_1EF3F7E: var_148 = "BANQ"
  loc_1EF3FBF: Do 'loop at: 1F03F61
  loc_1EF3FC5: Proc_165_0_14CCEC0("Banquet Settlement", &H12, 2, "Indoor Catering", vbNullString, 5, "Hallop", 0)
  loc_1EF3FDA: var_148 = "BANQ"
  loc_1EF4021: Proc_165_0_14CCEC0("Venue Availability", &H12, 0, "Indoor Catering", vbNullString, 6, "Hallop", 0)
  loc_1EF4036: var_148 = "BANQ"
  loc_1EF407D: Proc_165_0_14CCEC0("Guest Comments", &H12, 0, "Indoor Catering", vbNullString, 7, "Hallop", 0)
  loc_1EF4092: var_148 = "BANQ"
  loc_1EF40D9: Proc_165_0_14CCEC0("Banquet Estimate Billing", &H12, 0, "Indoor Catering", vbNullString, 8, "Hallop", 0)
  loc_1EF40EE: var_148 = "BANQ"
  loc_1EF4135: Proc_165_0_14CCEC0("Banquet Booking Advance", &H12, 0, "Indoor Catering", vbNullString, 9, "Hallop", 0)
  loc_1EF414A: var_148 = "BANQ"
  loc_1EF4191: Proc_165_0_14CCEC0("Reports", &H12, 0, "Indoor Catering", vbNullString, &HFF, "HallReport", 0)
  loc_1EF41A6: var_148 = "BANQ"
  loc_1EF41BF: Do 'loop at: 1F04161
  loc_1EF41ED: Proc_165_0_14CCEC0("Sales Register", &H12, 1, "Indoor Catering", "Banquet Reports", 0, "BanqRep", 0)
  loc_1EF4202: var_148 = "BANQ"
  loc_1EF4249: Proc_165_0_14CCEC0("OutStanding Report", &H12, 1, "Indoor Catering", "Banquet Reports", 1, "BanqRep", 0)
  loc_1EF425E: var_148 = "BANQ"
  loc_1EF42A5: Proc_165_0_14CCEC0("Party wise OutStanding", &H12, 1, "Indoor Catering", "Banquet Reports", 2, "BanqRep", 0)
  loc_1EF42BA: var_148 = "BANQ"
  loc_1EF4301: Proc_165_0_14CCEC0("Cashier  Report", &H12, 1, "Indoor Catering", "Banquet Reports", 3, "BanqRep", 0)
  loc_1EF4316: var_148 = "BANQ"
  loc_1EF435D: Proc_165_0_14CCEC0("Booking Inquiry Detail", &H12, 1, "Indoor Catering", "Banquet Reports", 4, "BanqRep", 0)
  loc_1EF4372: var_148 = "BANQ"
  loc_1EF43B9: Proc_165_0_14CCEC0("Settlement  Report", &H12, 1, "Indoor Catering", "Banquet Reports", 5, "BanqRep", 0)
  loc_1EF43CE: var_148 = "BANQ"
  loc_1EF4415: Proc_165_0_14CCEC0("Daily Function Sheet", &H12, 1, "Indoor Catering", "Banquet Reports", 6, "BanqRep", 0)
  loc_1EF442A: var_148 = "BANQ"
  loc_1EF4471: Proc_165_0_14CCEC0("Item Wise Sales Report", &H12, 1, "Indoor Catering", "Banquet Reports", 7, "BanqRep", 0)
  loc_1EF4486: var_148 = "BANQ"
  loc_1EF44CD: Proc_165_0_14CCEC0("Company Wise Sale Report", &H12, 1, "Indoor Catering", "Banquet Reports", 8, "BanqRep", 0)
  loc_1EF44E2: var_148 = "BANQ"
  loc_1EF4504: Do 'loop at: 1EF82E7
  loc_1EF4529: Proc_165_0_14CCEC0("Function Wise Item Detail", &H12, 1, "Indoor Catering", "Banquet Reports", 9, "BanqRep", 0)
  loc_1EF453E: var_148 = "BANQ"
  loc_1EF4585: Proc_165_0_14CCEC0("Banquet Reports (MIS)", &H12, 0, "Indoor Catering", vbNullString, &HFF, "HallMIS", 0)
  loc_1EF459A: var_148 = "BANQ"
  loc_1EF45E1: Proc_165_0_14CCEC0("Cover Analysis", &H12, 1, "Indoor Catering", "Banquet Reports (MIS)", 0, "BanqRepMIS", 0)
  loc_1EF45F6: var_148 = "BANQ"
  loc_1EF463D: Proc_165_0_14CCEC0("Collection Summary", &H12, 1, "Indoor Catering", "Banquet Reports (MIS)", 1, "BanqRepMIS", 0)
  loc_1EF4652: var_148 = "BANQ"
  loc_1EF4699: Proc_165_0_14CCEC0("Banquet Tax Reports", &H12, 0, "Indoor Catering", vbNullString, &HFF, "HallTax", 0)
  loc_1EF46AE: var_148 = "BANQ"
  loc_1EF46F5: Proc_165_0_14CCEC0("Tax Report", &H12, 1, "Indoor Catering", "Banquet Tax Reports", 0, "HallTaxP", 0)
  loc_1EF470A: var_148 = "BANQ"
  loc_1EF4751: Proc_165_0_14CCEC0("Tax Summary", &H12, 1, "Indoor Catering", "Banquet Tax Reports", 1, "HallTaxP", 0)
  loc_1EF4766: var_148 = "BANQ"
  loc_1EF47AD: Proc_165_0_14CCEC0("Banquet Taxwise Details", &H12, 1, "Indoor Catering", "Banquet Tax Reports", 2, "HallTaxP", 0)
  loc_1EF47C4: var_148 = 0
  loc_1EF480B: Proc_165_0_14CCEC0("OutDoor Catering", &H12, 3, vbNullString, vbNullString, &HFF, "Banq1", 1)
  loc_1EF4820: var_148 = "ODC"
  loc_1EF4867: Proc_165_0_14CCEC0("Venue Master", &H12, 0, "OutDoor Catering", vbNullString, 2, "OdcEnt1", 0)
  loc_1EF487C: var_148 = "ODC"
  loc_1EF48C3: Proc_165_0_14CCEC0("Menu Category", &H12, 0, "OutDoor Catering", vbNullString, 3, "OdcEnt1", 0)
  loc_1EF48D8: var_148 = "ODC"
  loc_1EF491F: Proc_165_0_14CCEC0("Item Group", &H12, 0, "OutDoor Catering", vbNullString, 4, "OdcEnt1", 0)
  loc_1EF4934: var_148 = "ODC"
  loc_1EF497B: Proc_165_0_14CCEC0("Menu Item", &H12, 0, "OutDoor Catering", vbNullString, 5, "OdcEnt1", 0)
  loc_1EF4990: var_148 = "ODC"
  loc_1EF49D7: Proc_165_0_14CCEC0("Banquet Bill Sundry Setting", &H12, 0, "OutDoor Catering", vbNullString, 7, "OdcEnt1", 0)
  loc_1EF49EC: var_148 = "ODC"
  loc_1EF4A33: Proc_165_0_14CCEC0("Operation", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcOPer", 0)
  loc_1EF4A48: var_148 = "ODC"
  loc_1EF4A8F: Proc_165_0_14CCEC0("Booking Inquiry", &H12, 0, "OutDoor Catering", vbNullString, 0, "OdcOP", 0)
  loc_1EF4AA4: var_148 = "ODC"
  loc_1EF4AEB: Proc_165_0_14CCEC0("Banquet Booking", &H12, 0, "OutDoor Catering", vbNullString, 1, "OdcOP", 0)
  loc_1EF4B00: var_148 = "ODC"
  loc_1EF4B47: Proc_165_0_14CCEC0("Catalog Selection", &H12, 0, "OutDoor Catering", vbNullString, 2, "OdcOP", 0)
  loc_1EF4B5C: var_148 = "ODC"
  loc_1EF4B9D: var_124 = "Chef Pre-Costing"
  loc_1EF4BA3: Proc_165_0_14CCEC0("Catalog Selection", &H12, 0, "OutDoor Catering", vbNullString, 3, "OdcOP", 0)
  loc_1EF4BB8: var_148 = "ODC"
  loc_1EF4BFF: Proc_165_0_14CCEC0("Banquet Billing", &H12, 0, "OutDoor Catering", vbNullString, 4, "OdcOP", 0)
  loc_1EF4C14: var_148 = "ODC"
  loc_1EF4C5B: Proc_165_0_14CCEC0("Banquet Settlement", &H12, 2, "OutDoor Catering", vbNullString, 5, "OdcOP", 0)
  loc_1EF4C70: var_148 = "ODC"
  loc_1EF4CB7: Proc_165_0_14CCEC0("Venue Availability", &H12, 0, "OutDoor Catering", vbNullString, 6, "OdcOP", 0)
  loc_1EF4CCC: var_148 = "ODC"
  loc_1EF4D13: Proc_165_0_14CCEC0("Guest Comments", &H12, 0, "OutDoor Catering", vbNullString, 7, "OdcOP", 0)
  loc_1EF4D28: var_148 = "ODC"
  loc_1EF4D6F: Proc_165_0_14CCEC0("Banquet Estimate Billing", &H12, 0, "OutDoor Catering", vbNullString, 8, "OdcOP", 0)
  loc_1EF4D84: var_148 = "ODC"
  loc_1EF4DCB: Proc_165_0_14CCEC0("Banquet Booking Advance", &H12, 0, "OutDoor Catering", vbNullString, 9, "OdcOP", 0)
  loc_1EF4DE0: var_148 = "ODC"
  loc_1EF4E27: Proc_165_0_14CCEC0("Reports", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcRepo", 0)
  loc_1EF4E3C: var_148 = "ODC"
  loc_1EF4E83: Proc_165_0_14CCEC0("Sales Register", &H12, 1, "OutDoor Catering", "Banquet Reports", 0, "OdcRep", 0)
  loc_1EF4E98: var_148 = "ODC"
  loc_1EF4EDF: Proc_165_0_14CCEC0("OutStanding Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 1, "OdcRep", 0)
  loc_1EF4EF4: var_148 = "ODC"
  loc_1EF4F3B: Proc_165_0_14CCEC0("Party wise OutStanding", &H12, 1, "OutDoor Catering", "Banquet Reports", 2, "OdcRep", 0)
  loc_1EF4F50: var_148 = "ODC"
  loc_1EF4F97: Proc_165_0_14CCEC0("Cashier  Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 3, "OdcRep", 0)
  loc_1EF4FAC: var_148 = "ODC"
  loc_1EF4FF3: Proc_165_0_14CCEC0("Booking Inquiry Detail", &H12, 1, "OutDoor Catering", "Banquet Reports", 4, "OdcRep", 0)
  loc_1EF5008: var_148 = "ODC"
  loc_1EF504F: Proc_165_0_14CCEC0("Settlement  Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 5, "OdcRep", 0)
  loc_1EF5064: var_148 = "ODC"
  loc_1EF50AB: Proc_165_0_14CCEC0("Daily Function Sheet", &H12, 1, "OutDoor Catering", "Banquet Reports", 7, "OdcRep", 0)
  loc_1EF50C0: var_148 = "ODC"
  loc_1EF5107: Proc_165_0_14CCEC0("Item Wise Sales Report", &H12, 1, "OutDoor Catering", "Banquet Reports", 9, "OdcRep", 0)
  loc_1EF511C: var_148 = "ODC"
  loc_1EF5163: Proc_165_0_14CCEC0("Company Wise Sale Report", &H12, 1, "OutDoor Catering", "Banquet Reports", &HA, "OdcRep", 0)
  loc_1EF5178: var_148 = "ODC"
  loc_1EF51BF: Proc_165_0_14CCEC0("Function Wise Item Detail", &H12, 1, "OutDoor Catering", "Banquet Reports", &HB, "OdcRep", 0)
  loc_1EF51D4: var_148 = "ODC"
  loc_1EF521B: Proc_165_0_14CCEC0("Banquet Reports (MIS)", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcMisR", 0)
  loc_1EF5230: var_148 = "ODC"
  loc_1EF5277: Proc_165_0_14CCEC0("Cover Analysis", &H12, 1, "OutDoor Catering", "Banquet Reports (MIS)", 0, "OdcRep", 0)
  loc_1EF528C: var_148 = "ODC"
  loc_1EF52D3: Proc_165_0_14CCEC0("Collection Summary", &H12, 1, "OutDoor Catering", "Banquet Reports (MIS)", 1, "OdcMis", 0)
  loc_1EF52E8: var_148 = "ODC"
  loc_1EF532F: Proc_165_0_14CCEC0("Banquet Tax Reports", &H12, 0, "OutDoor Catering", vbNullString, &HFF, "OdcTax", 0)
  loc_1EF5344: var_148 = "ODC"
  loc_1EF538B: Proc_165_0_14CCEC0("Tax Report", &H12, 1, "OutDoor Catering", "Banquet Tax Reports", 0, "OdcTaxR", 0)
  loc_1EF53A0: var_148 = "ODC"
  loc_1EF53E7: Proc_165_0_14CCEC0("Tax Summary", &H12, 1, "OutDoor Catering", "Banquet Tax Reports", 1, "OdcTaxR", 0)
  loc_1EF53FC: var_148 = "ODC"
  loc_1EF5443: Proc_165_0_14CCEC0("Banquet Taxwise Details", &H12, 1, "OutDoor Catering", "Banquet Tax Reports", 2, "OdcTaxR", 0)
  loc_1EF545A: var_148 = 0
  loc_1EF54A1: Proc_165_0_14CCEC0("Night Audit", &H13, 4, vbNullString, vbNullString, 0, "NightAudit", 1)
  loc_1EF54B8: var_148 = 0
  loc_1EF54FF: Proc_165_0_14CCEC0("Night Audit Process", &H13, 0, vbNullString, vbNullString, 2, "NightAuditMenu", 1)
  loc_1EF5516: var_148 = 0
  loc_1EF555D: Proc_165_0_14CCEC0("Reverse Night Audit", &H13, 0, vbNullString, vbNullString, &HD, "NightAuditMenu", 1)
  loc_1EF5574: var_148 = 0
  loc_1EF55BB: Proc_165_0_14CCEC0("Daily Report", &H13, 1, vbNullString, vbNullString, 6, "NightAuditMenu", 1)
  loc_1EF55E5: Loop Until (InStr(2, MemVar_1F92228, "#", 0) <> 0) 'do at: 1EE5B0C
  loc_1EF55ED: var_148 = 0
  loc_1EF562E: var_124 = "Daily Report-II"
  loc_1EF5634: Proc_165_0_14CCEC0("Daily Report", &H13, 1, vbNullString, vbNullString, 5, "NightAuditMenu", 1)
  loc_1EF564B: var_148 = 0
  loc_1EF5692: Proc_165_0_14CCEC0("Charges Posting", &H13, 0, vbNullString, vbNullString, 1, "NightAuditMenu", 1)
  loc_1EF56A9: var_148 = 0
  loc_1EF56F0: Proc_165_0_14CCEC0("Room Inventory", &H13, 1, vbNullString, vbNullString, 0, "NightAuditMenu", 1)
  loc_1EF5707: var_148 = 0
  loc_1EF574E: Proc_165_0_14CCEC0("Charge Payment Detail", &H13, 1, vbNullString, vbNullString, 3, "NightAuditMenu", 1)
  loc_1EF5765: var_148 = 0
  loc_1EF57AC: Proc_165_0_14CCEC0("Guest Trail", &H13, 1, vbNullString, vbNullString, 4, "NightAuditMenu", 1)
  loc_1EF57C3: var_148 = 0
  loc_1EF580A: Proc_165_0_14CCEC0("Occupancy Analysis", &H13, 1, vbNullString, vbNullString, 7, "NightAuditMenu", 1)
  loc_1EF5821: var_148 = 0
  loc_1EF5868: Proc_165_0_14CCEC0("Market Segment Analysis", &H13, 1, vbNullString, vbNullString, 8, "NightAuditMenu", 1)
  loc_1EF587F: var_148 = 0
  loc_1EF58C6: Proc_165_0_14CCEC0("Business Source Analysis", &H13, 1, vbNullString, vbNullString, 9, "NightAuditMenu", 1)
  loc_1EF58DD: var_148 = 0
  loc_1EF5924: Proc_165_0_14CCEC0("Company Analysis", &H13, 1, vbNullString, vbNullString, &HA, "NightAuditMenu", 1)
  loc_1EF593B: var_148 = 0
  loc_1EF5982: Proc_165_0_14CCEC0("Travel Agent Analysis", &H13, 1, vbNullString, vbNullString, &HB, "NightAuditMenu", 1)
  loc_1EF5999: var_148 = 0
  loc_1EF59E0: Proc_165_0_14CCEC0("Guest Audit Ledger", &H13, 1, vbNullString, vbNullString, &H14, "NightAuditMenu", 1)
  loc_1EF59F7: var_148 = 0
  loc_1EF5A3E: Proc_165_0_14CCEC0("Charges Remove Log", &H13, 1, vbNullString, vbNullString, &H16, "NightAuditMenu", 1)
  loc_1EF5A55: var_148 = 0
  loc_1EF5A9C: Proc_165_0_14CCEC0("FOCC Report", &H13, 1, vbNullString, vbNullString, &H10, "NightAuditMenu", 1)
  loc_1EF5AB3: var_148 = 0
  loc_1EF5AFA: Proc_165_0_14CCEC0("Checkout Analysis", &H13, 1, vbNullString, vbNullString, &H15, "NightAuditMenu", 1)
  loc_1EF5B11: var_148 = 0
  loc_1EF5B58: Proc_165_0_14CCEC0("Account Posting", &H13, 0, vbNullString, vbNullString, &HC, "NightAuditMenu", 1)
  loc_1EF5B6F: var_148 = 0
  loc_1EF5BB6: Proc_165_0_14CCEC0("Food Costing Report", &H13, 1, vbNullString, vbNullString, &HE, "NightAuditMenu", 1)
  loc_1EF5BCD: var_148 = 0
  loc_1EF5C14: Proc_165_0_14CCEC0("Revenue Analysis", &H13, 1, vbNullString, vbNullString, &HF, "NightAuditMenu", 1)
  loc_1EF5C2B: var_148 = 0
  loc_1EF5C72: Proc_165_0_14CCEC0("F&&B Cost Statement", &H13, 1, vbNullString, vbNullString, &H11, "NightAuditMenu", 1)
  loc_1EF5C89: var_148 = 0
  loc_1EF5CD0: Proc_165_0_14CCEC0("Budget Analysis", &H13, 1, vbNullString, vbNullString, &H12, "NightAuditMenu", 1)
  loc_1EF5CE7: var_148 = 0
  loc_1EF5D2E: Proc_165_0_14CCEC0("Night Audit Log", &H13, 1, vbNullString, vbNullString, &H13, "NightAuditMenu", 1)
  loc_1EF5D45: var_148 = 0
  loc_1EF5D8C: Proc_165_0_14CCEC0("Ageing Analysis (Debtors)", &H13, 1, vbNullString, vbNullString, &H29, "NightAuditMenu", 1)
  loc_1EF5DA3: var_148 = 0
  loc_1EF5DEA: Proc_165_0_14CCEC0("Ageing Analysis (Creditors)", &H13, 1, vbNullString, vbNullString, &H2A, "NightAuditMenu", 1)
  loc_1EF5E14: Loop Until (InStr(2, MemVar_1F92228, "*", 0) <> 0) 'do at: 1EE63F7
  loc_1EF5E1C: var_148 = 0
  loc_1EF5E63: Proc_165_0_14CCEC0("PayRoll", &H14, 4, vbNullString, vbNullString, 0, "PayRoll", 1)
  loc_1EF5E7A: var_148 = 0
  loc_1EF5EC1: Proc_165_0_14CCEC0("Leave Entry", &H14, 0, vbNullString, vbNullString, 4, "Pay", 1)
  loc_1EF5ED8: var_148 = 0
  loc_1EF5F1F: Proc_165_0_14CCEC0("Loan/Advance Entry", &H14, 0, vbNullString, vbNullString, 6, "Pay", 1)
  loc_1EF5F36: var_148 = 0
  loc_1EF5F7D: Proc_165_0_14CCEC0("Salary Creation", &H14, 0, vbNullString, vbNullString, 7, "Pay", 1)
  loc_1EF5F94: var_148 = 0
  loc_1EF5FDB: Proc_165_0_14CCEC0("Leave Encashment", &H14, 0, vbNullString, vbNullString, 8, "Pay", 1)
  loc_1EF5FF2: var_148 = 0
  loc_1EF6039: Proc_165_0_14CCEC0("Over Time Entry", &H14, 0, vbNullString, vbNullString, 9, "Pay", 1)
  loc_1EF6050: var_148 = 0
  loc_1EF6091: var_124 = "-"
  loc_1EF6097: Proc_165_0_14CCEC0("Over Time Entry", &H14, 0, vbNullString, vbNullString, &HA, "Pay", 1)
  loc_1EF60AE: var_148 = 0
  loc_1EF60F5: Proc_165_0_14CCEC0("Attendence Report", &H14, 1, vbNullString, vbNullString, &HB, "Pay", 1)
  loc_1EF610C: var_148 = 0
  loc_1EF6153: Proc_165_0_14CCEC0("Pay Slip", &H14, 1, vbNullString, vbNullString, &HC, "Pay", 1)
  loc_1EF616A: var_148 = 0
  loc_1EF61B1: Proc_165_0_14CCEC0("Loan Register", &H14, 1, vbNullString, vbNullString, &HD, "Pay", 1)
  loc_1EF61C8: var_148 = 0
  loc_1EF620F: Proc_165_0_14CCEC0("Loan Advance Summary", &H14, 1, vbNullString, vbNullString, &HE, "Pay", 1)
  loc_1EF6226: var_148 = 0
  loc_1EF626D: Proc_165_0_14CCEC0("Payroll Register", &H14, 1, vbNullString, vbNullString, &HF, "Pay", 1)
  loc_1EF6284: var_148 = 0
  loc_1EF62CB: Proc_165_0_14CCEC0("PF Statement", &H14, 1, vbNullString, vbNullString, &H10, "Pay", 1)
  loc_1EF62E2: var_148 = 0
  loc_1EF6329: Proc_165_0_14CCEC0("Loan/Advance Ledger", &H14, 1, vbNullString, vbNullString, &H11, "Pay", 1)
  loc_1EF6340: var_148 = 0
  loc_1EF6387: Proc_165_0_14CCEC0("Form C", &H14, 1, vbNullString, vbNullString, &H12, "Pay", 1)
  loc_1EF639E: var_148 = 0
  loc_1EF63E5: Proc_165_0_14CCEC0("Gratuity Report", &H14, 1, vbNullString, vbNullString, &H13, "Pay", 1)
  loc_1EF640F: Loop Until (InStr(2, MemVar_1F92228, "B", 0) <> 0) 'do at: 1EE64CE
  loc_1EF6417: var_148 = 0
  loc_1EF645E: Proc_165_0_14CCEC0("EPABX", &H15, 4, vbNullString, vbNullString, 0, "Telephone", 1)
  loc_1EF6475: var_148 = 0
  loc_1EF64BC: Proc_165_0_14CCEC0("EPBAX Call Report", &H15, 1, vbNullString, vbNullString, 0, "mnuTelRep", 1)
  loc_1EF64D3: var_148 = 0
  loc_1EF651A: Proc_165_0_14CCEC0("Messaging", &H16, 4, vbNullString, vbNullString, 0, "Message", 1)
  loc_1EF6531: var_148 = 0
  loc_1EF6578: Proc_165_0_14CCEC0("InBox", &H16, 0, vbNullString, vbNullString, 0, "mnuMSG", 1)
  loc_1EF658F: var_148 = 0
  loc_1EF65D6: Proc_165_0_14CCEC0("OutBox", &H16, 0, vbNullString, vbNullString, 1, "mnuMSG", 1)
  loc_1EF6600: Loop Until (InStr(2, MemVar_1F92228, "G", 0) <> 0) 'do at: 1EE6E75
  loc_1EF6608: var_148 = 0
  loc_1EF664F: Proc_165_0_14CCEC0("Members Mgmt", &H17, 4, vbNullString, vbNullString, 0, "Member", 1)
  loc_1EF6666: var_148 = 0
  loc_1EF66AD: Proc_165_0_14CCEC0("Operations", &H17, 3, vbNullString, vbNullString, &HFF, "MembOpr", 1)
  loc_1EF66C4: var_148 = 0
  loc_1EF670B: Proc_165_0_14CCEC0("Member Visit Entry", &H17, 0, "Operations", vbNullString, 0, "MemOpr", 1)
  loc_1EF6722: var_148 = 0
  loc_1EF6769: Proc_165_0_14CCEC0("Member Renewal Entry", &H17, 2, "Operations", vbNullString, 1, "MemOpr", 1)
  loc_1EF6780: var_148 = 0
  loc_1EF67C7: Proc_165_0_14CCEC0("Member Used Facility Entry", &H17, 0, "Operations", vbNullString, 2, "MemOpr", 1)
  loc_1EF67DE: var_148 = 0
  loc_1EF6825: Proc_165_0_14CCEC0("Member Facility Billing", &H17, 0, "Operations", vbNullString, 3, "MemOpr", 1)
  loc_1EF683C: var_148 = 0
  loc_1EF6883: Proc_165_0_14CCEC0("Member Bill Printing", &H17, 0, "Operations", vbNullString, 4, "MemOpr", 1)
  loc_1EF689A: var_148 = 0
  loc_1EF68E1: Proc_165_0_14CCEC0("Member Assistant", &H17, 0, "Operations", vbNullString, 5, "MemOpr", 1)
  loc_1EF68F8: var_148 = 0
  loc_1EF693F: Proc_165_0_14CCEC0("Outstation Member Entry", &H17, 0, "Operations", vbNullString, 6, "MemOpr", 1)
  loc_1EF6956: var_148 = 0
  loc_1EF699D: Proc_165_0_14CCEC0("Member Category Change Entry", &H17, 0, "Operations", vbNullString, 7, "MemOpr", 1)
  loc_1EF69B4: var_148 = 0
  loc_1EF69FB: Proc_165_0_14CCEC0("Payment Receive Entry", &H17, 0, "Operations", vbNullString, 8, "MemOpr", 1)
  loc_1EF6A12: var_148 = 0
  loc_1EF6A59: Proc_165_0_14CCEC0("Revenue Change Entry", &H17, 0, "Operations", vbNullString, 9, "MemOpr", 1)
  loc_1EF6A70: var_148 = 0
  loc_1EF6AB7: Proc_165_0_14CCEC0("Payment Due Letter Entry", &H17, 0, "Operations", vbNullString, &HA, "MemOpr", 1)
  loc_1EF6ACE: var_148 = 0
  loc_1EF6B15: Proc_165_0_14CCEC0("Member Category Change (Conditional)", &H17, 0, "Operations", vbNullString, &HB, "MemOpr", 1)
  loc_1EF6B2C: var_148 = 0
  loc_1EF6B73: Proc_165_0_14CCEC0("Reports", &H17, 3, vbNullString, vbNullString, &HFF, "MembRpt", 1)
  loc_1EF6B8A: var_148 = 0
  loc_1EF6BD1: Proc_165_0_14CCEC0("Member Visit Details", &H17, 1, "Reports", vbNullString, 0, "MemRpt", 1)
  loc_1EF6BE8: var_148 = 0
  loc_1EF6C2F: Proc_165_0_14CCEC0("Member Mailing Labels", &H17, 1, "Reports", vbNullString, 1, "MemRpt", 1)
  loc_1EF6C46: var_148 = 0
  loc_1EF6C8D: Proc_165_0_14CCEC0("Member Bill Missing Report", &H17, 1, "Reports", vbNullString, 2, "MemRpt", 1)
  loc_1EF6CA4: var_148 = 0
  loc_1EF6CEB: Proc_165_0_14CCEC0("Member Sales Register", &H17, 1, "Reports", vbNullString, 3, "MemRpt", 1)
  loc_1EF6D02: var_148 = 0
  loc_1EF6D49: Proc_165_0_14CCEC0("Member Ledger", &H17, 1, "Reports", vbNullString, 4, "MemRpt", 1)
  loc_1EF6D60: var_148 = 0
  loc_1EF6DA7: Proc_165_0_14CCEC0("Member Tax Report", &H17, 1, "Reports", vbNullString, 5, "MemRpt", 1)
  loc_1EF6DBE: var_148 = 0
  loc_1EF6E05: Proc_165_0_14CCEC0("Payment Due Letter Report", &H17, 1, "Reports", vbNullString, 6, "MemRpt", 1)
  loc_1EF6E1C: var_148 = 0
  loc_1EF6E63: Proc_165_0_14CCEC0("Member Birthday/Anniversary Details", &H17, 1, "Reports", vbNullString, 7, "MemRpt", 1)
  loc_1EF6E8D: Loop Until (InStr(2, MemVar_1F92228, "+", 0) <> 0) 'do at: 1EE70C4
  loc_1EF6E95: var_148 = 0
  loc_1EF6EDC: Proc_165_0_14CCEC0("SMS", &H18, 4, vbNullString, vbNullString, 0, "SMS", 1)
  loc_1EF6EF3: var_148 = 0
  loc_1EF6F3A: Proc_165_0_14CCEC0("General Setup", &H18, 3, vbNullString, vbNullString, &HFF, "SMSG", 1)
  loc_1EF6F51: var_148 = 0
  loc_1EF6F98: Proc_165_0_14CCEC0("SMS Center Settings", &H18, 0, "General Setup", vbNullString, 1, "SMSGEN", 1)
  loc_1EF6FAF: var_148 = 0
  loc_1EF6FF6: Proc_165_0_14CCEC0("SMS Environment Settings", &H18, 0, "General Setup", vbNullString, 2, "SMSGEN", 1)
  loc_1EF700D: var_148 = 0
  loc_1EF7054: Proc_165_0_14CCEC0("Send SMS", &H18, 3, vbNullString, vbNullString, &HFF, "SMSSD", 1)
  loc_1EF706B: var_148 = 0
  loc_1EF70B2: Proc_165_0_14CCEC0("Multiple SMS Type", &H18, 0, "Send SMS", vbNullString, 1, "SMSSEND", 1)
  loc_1EF70DC: Loop Until (InStr(2, MemVar_1F92228, "W", 0) <> 0) 'do at: 1EE74E9
  loc_1EF70E4: var_148 = 0
  loc_1EF712B: Proc_165_0_14CCEC0("Mall Management", &H19, 4, vbNullString, vbNullString, 0, "MallManage", 1)
  loc_1EF7142: var_148 = 0
  loc_1EF7189: Proc_165_0_14CCEC0("Operations", &H19, 3, vbNullString, vbNullString, &HFF, "MallOpr", 1)
  loc_1EF71A0: var_148 = 0
  loc_1EF71E1: var_124 = "Location-Master"
  loc_1EF71E7: Proc_165_0_14CCEC0("Operations", &H19, 0, "Operations", vbNullString, 0, "MallMgmt", 1)
  loc_1EF71FE: var_148 = 0
  loc_1EF7245: Proc_165_0_14CCEC0("Facility Master", &H19, 0, "Operations", vbNullString, 1, "MallMgmt", 1)
  loc_1EF725C: var_148 = 0
  loc_1EF72A3: Proc_165_0_14CCEC0("Location Facilities", &H19, 0, "Operations", vbNullString, 2, "MallMgmt", 1)
  loc_1EF72BA: var_148 = 0
  loc_1EF7301: Proc_165_0_14CCEC0("Party Locations", &H19, 0, "Operations", vbNullString, 3, "MallMgmt", 1)
  loc_1EF7318: var_148 = 0
  loc_1EF735F: Proc_165_0_14CCEC0("Meter Reading", &H19, 0, "Operations", vbNullString, 4, "MallMgmt", 1)
  loc_1EF7376: var_148 = 0
  loc_1EF73BD: Proc_165_0_14CCEC0("Facility Billing", &H19, 0, "Operations", vbNullString, 5, "MallMgmt", 1)
  loc_1EF73D4: var_148 = 0
  loc_1EF741B: Proc_165_0_14CCEC0("Facility Sundry Setting", &H19, 2, "Operations", vbNullString, 6, "MallMgmt", 1)
  loc_1EF7432: var_148 = 0
  loc_1EF7479: Proc_165_0_14CCEC0("Reports", &H19, 3, vbNullString, vbNullString, &HFF, "MallMgmtRpt", 1)
  loc_1EF7490: var_148 = 0
  loc_1EF74D7: Proc_165_0_14CCEC0("Facility Bill Register", &H19, 1, "Reports", vbNullString, 0, "MallRep", 1)
  loc_1EF7501: Loop Until (InStr(2, MemVar_1F92228, "X", 0) <> 0) 'do at: 1EE7796
  loc_1EF7509: var_148 = 0
  loc_1EF7550: Proc_165_0_14CCEC0("Smart Card", &H1A, 4, vbNullString, vbNullString, 0, "SCard", 1)
  loc_1EF7567: var_148 = 0
  loc_1EF75AE: Proc_165_0_14CCEC0("Registration Entry", &H1A, 0, vbNullString, vbNullString, 1, "SCRD", 1)
  loc_1EF75C5: var_148 = 0
  loc_1EF760C: Proc_165_0_14CCEC0("Recharge/Refund Entry", &H1A, 0, vbNullString, vbNullString, 2, "SCRD", 1)
  loc_1EF7623: var_148 = 0
  loc_1EF7664: var_124 = "-"
  loc_1EF766A: Proc_165_0_14CCEC0("Recharge/Refund Entry", &H1A, 0, vbNullString, vbNullString, &H28, "SCRD", 0)
  loc_1EF7681: var_148 = 0
  loc_1EF76C8: Proc_165_0_14CCEC0("Cash Card Transaction Report", &H1A, 1, vbNullString, vbNullString, &H29, "SCRD", 1)
  loc_1EF76DF: var_148 = 0
  loc_1EF7726: Proc_165_0_14CCEC0("Cash Card Collection Summary", &H1A, 1, vbNullString, vbNullString, &H2A, "SCRD", 1)
  loc_1EF773D: var_148 = 0
  loc_1EF7784: Proc_165_0_14CCEC0("Card Status Report", &H1A, 1, vbNullString, vbNullString, &H2B, "SCRD", 1)
  loc_1EF779B: var_148 = 0
  loc_1EF77E2: Proc_165_0_14CCEC0("Windows", &H2E, 2, vbNullString, vbNullString, 0, "mnuWindow", 1)
  loc_1EF77F9: var_148 = 0
  loc_1EF7840: Proc_165_0_14CCEC0("Exit", &H2F, 2, vbNullString, vbNullString, 0, "mnuExit", 1)
  loc_1EF7857: var_148 = 0
  loc_1EF789E: Proc_165_0_14CCEC0("MDI", &H32, 2, vbNullString, vbNullString, 0, "mnuMdI", 1)
  loc_1EF78B5: Set var_88 = Nothing
  loc_1EF78B8: Exit Sub
End Sub

Public Sub Proc_165_2_1E4B100(arg_C, arg_10) '1E4B100
  'Data Table: 4E88A0
  Dim unk_4E8B11 As Connection15
  Dim var_F0 As Variant
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4E88A6 As Connection15
  Dim var_B8 As Recordset15
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim MemVar_1F9220C As String
  Dim var_130 As Long
  Dim var_114 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_174 As String
  Dim var_178 As String
  Dim var_88 As Recordset15
  Dim var_B0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_124 As Variant
  Dim MemVar_1F921A4 As String
  loc_1E415A8: On Error Resume Next
  loc_1E415C3: unk_4E8B11.Execute "Select * from Enviro", var_DC, -1
  loc_1E415CE: Set var_B8 = var_E0
  loc_1E415F6: Proc_6_17_EAA2B0(var_DC, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_124)
  loc_1E415FE: var_100 = -1 & var_DC 
  loc_1E4160C: unk_4E88A6.Execute CStr(var_100), var_E0, var_E0
  loc_1E41617: Set var_BC = var_E0
  loc_1E4163F: If (var_B8.RecordCount > 0) Then
  loc_1E41653:   var_E0 = var_B8.Fields
  loc_1E4166C:   MemVar_1F9220C = Proc_6_38_E68A98(CVar(var_E0.Item("TouchScreen")))
  loc_1E41676: End If
  loc_1E4167A: Close 1
  loc_1E41685: Open "C:\moduleFILE.TXT" For Append As 1 Len = &HFF
  loc_1E4168E: var_130 = arg_C
  loc_1E4169C: If (var_130 = 0) Then
  loc_1E4169F:   GoTo loc_1E3B0D5
  loc_1E416A2: End If
  loc_1E416BD: var_94 = CStr(Trim(CVar(Proc_165_3_EF13CC(arg_C, var_130))))
  loc_1E416D4: var_100 = " > "
  loc_1E416DF: var_DC = vbNullString
  loc_1E416F4: var_124 = IIf((arg_10 = vbNullString), var_DC, var_100)
  loc_1E416FC: var_150 = (CVar(arg_10) + var_124)
  loc_1E41706: var_170 = (var_150 + CVar(var_94))
  loc_1E4170B: arg_10 = CStr(var_170)
  loc_1E41742: var_178 = "SELECT Param_Str AS UPrivilege,Module_Name,OutletCode FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_1E4175E: unk_4E88A6.Execute var_178 & "' AND Code=" & CStr(arg_C), var_DC, -1
  loc_1E41769: Set var_88 = var_E0
  loc_1E41797: If (var_88.RecordCount > 0) Then
  loc_1E417FF:   var_A8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Module_name")), CStr(var_88.Fields.Item("UPrivilege").Value))
  loc_1E41819:   var_E0 = var_88.Fields
  loc_1E41832:   var_AC = Proc_6_38_E68A98(CVar(var_E0.Item("OutletCode")), var_E0)
  loc_1E4183B: End If
  loc_1E41844: Set var_88 = Nothing
  loc_1E4184C: var_188 = var_94
  loc_1E41859: If (var_188 = "Exit") Then
  loc_1E4185E:   End
  loc_1E41860:   GoTo loc_1E3B0CD
  loc_1E41863: End If
  loc_1E4186D: If (var_188 = "Sales Day Book") Then
  loc_1E41876:   Set var_90 = New rPOSRepView
  loc_1E41884:   var_90.GRepFormName = "SalesDayBook"
  loc_1E41894:   var_90.CAPTION = CVar(arg_10)
  loc_1E4189D:   Call var_90.Show
  loc_1E418A3:   GoTo loc_1E3B0CD
  loc_1E418A6: End If
  loc_1E418B0: If (var_188 = "Daily Report-II") Then
  loc_1E418B9:   Set var_90 = New rFomRepView
  loc_1E418BE:   var_CC = "Daily Report-II"
  loc_1E418C7:   var_90.GRepFormName = CVar(arg_10)
  loc_1E418D7:   var_90.CAPTION = CVar(arg_10)
  loc_1E418E0:   Call var_90.Show
  loc_1E418E6:   GoTo loc_1E3B0CD
  loc_1E418E9: End If
  loc_1E418F3: If (var_188 = "Night Audit Control Panel") Then
  loc_1E418FC:   Set var_90 = New FrmControlPanel
  loc_1E4190B:   var_90.CAPTION = CVar(arg_10)
  loc_1E41914:   Call var_90.Show
  loc_1E4191A:   GoTo loc_1E3B0CD
  loc_1E4191D: End If
  loc_1E41927: If Not (var_188 = "Food Costing") Then
  loc_1E41932:   If (var_188 = "Food Costing Report") Then
  loc_1E41935:   End If
  loc_1E4193B:   Set var_90 = New rFomRepView
  loc_1E41949:   var_90.GRepFormName = "FoodCost"
  loc_1E41959:   var_90.CAPTION = CVar(arg_10)
  loc_1E41962:   Call var_90.Show
  loc_1E41968:   GoTo loc_1E3B0CD
  loc_1E4196B: End If
  loc_1E41975: If (var_188 = "Revenue Analysis") Then
  loc_1E4197E:   Set var_90 = New rFomRepView
  loc_1E4198C:   var_90.GRepFormName = "RevAnalysis"
  loc_1E4199C:   var_90.CAPTION = CVar(arg_10)
  loc_1E419A5:   Call var_90.Show
  loc_1E419AB:   GoTo loc_1E3B0CD
  loc_1E419AE: End If
  loc_1E419B8: If (var_188 = "FOCC Report") Then
  loc_1E419C1:   Set var_90 = New rFomRepView
  loc_1E419CF:   var_90.GRepFormName = "FOCC Report"
  loc_1E419DF:   var_90.CAPTION = CVar(arg_10)
  loc_1E419E8:   Call var_90.Show
  loc_1E419EE:   GoTo loc_1E3B0CD
  loc_1E419F1: End If
  loc_1E419FB: If (var_188 = "Budget Analysis") Then
  loc_1E41A04:   Set var_90 = New rFomRepView
  loc_1E41A12:   var_90.GRepFormName = "BudgetAnalysis"
  loc_1E41A22:   var_90.CAPTION = CVar(arg_10)
  loc_1E41A2B:   Call var_90.Show
  loc_1E41A31:   GoTo loc_1E3B0CD
  loc_1E41A34: End If
  loc_1E41A3E: If (var_188 = "Night Audit Log") Then
  loc_1E41A47:   Set var_90 = New rFomRepView
  loc_1E41A55:   var_90.GRepFormName = "NightAuditReport"
  loc_1E41A65:   var_90.CAPTION = CVar(arg_10)
  loc_1E41A6E:   Call var_90.Show
  loc_1E41A74:   GoTo loc_1E3B0CD
  loc_1E41A77: End If
  loc_1E41A81: If (var_188 = "Guest Audit Ledger") Then
  loc_1E41A8A:   Set var_90 = New rFomRepView
  loc_1E41A98:   var_90.GRepFormName = "GuestLedger"
  loc_1E41AA8:   var_90.CAPTION = CVar(arg_10)
  loc_1E41AB1:   Call var_90.Show
  loc_1E41AB7:   GoTo loc_1E3B0CD
  loc_1E41ABA: End If
  loc_1E41AC4: If (var_188 = "Checkout Analysis") Then
  loc_1E41ACD:   Set var_90 = New rFomRepView
  loc_1E41ADB:   var_90.GRepFormName = "NightAuditReportI"
  loc_1E41AEB:   var_90.CAPTION = CVar(arg_10)
  loc_1E41AF4:   Call var_90.Show
  loc_1E41AFA:   GoTo loc_1E3B0CD
  loc_1E41AFD: End If
  loc_1E41B07: If (var_188 = "Charges Remove Log") Then
  loc_1E41B10:   Set var_90 = New rFomRepView
  loc_1E41B1E:   var_90.GRepFormName = "GuestChgJournalLog"
  loc_1E41B2E:   var_90.CAPTION = CVar(arg_10)
  loc_1E41B37:   Call var_90.Show
  loc_1E41B3D:   GoTo loc_1E3B0CD
  loc_1E41B40: End If
  loc_1E41B4A: If (var_188 = "Ageing Analysis (Debtors)") Then
  loc_1E41B53:   Set var_90 = New FaReports
  loc_1E41B61:   var_90.GRepFormName = "AgingRepDr"
  loc_1E41B71:   var_90.CAPTION = CVar(arg_10)
  loc_1E41B77:   var_114 = False
  loc_1E41B8D:   var_90.BTNPRINT.Visible = 1
  loc_1E41B99:   Call var_90.Show
  loc_1E41B9F:   GoTo loc_1E3B0CD
  loc_1E41BA2: End If
  loc_1E41BAC: If (var_188 = "Ageing Analysis (Creditors)") Then
  loc_1E41BB5:   Set var_90 = New FaReports
  loc_1E41BC3:   var_90.GRepFormName = "AgingRepCr"
  loc_1E41BD3:   var_90.CAPTION = CVar(arg_10)
  loc_1E41BD9:   var_114 = False
  loc_1E41BE7:   var_DC = var_90.BTNPRINT
  loc_1E41BEF:   var_DC.Visible = 1
  loc_1E41BFB:   Call var_90.Show
  loc_1E41C01:   GoTo loc_1E3B0CD
  loc_1E41C04: End If
  loc_1E41C0E: If Not (var_188 = "F&&B Cost Statement") Then
  loc_1E41C19:   If (var_188 = "FB Cost Statement") Then
  loc_1E41C1C:   End If
  loc_1E41C22:   Set var_90 = New rFomRepView
  loc_1E41C30:   var_90.GRepFormName = "FBCostStatement"
  loc_1E41C40:   var_90.CAPTION = CVar(arg_10)
  loc_1E41C49:   Call var_90.Show
  loc_1E41C4F:   GoTo loc_1E3B0CD
  loc_1E41C52: End If
  loc_1E41C5C: If (var_188 = "Tally POS Report") Then
  loc_1E41C65:   Set var_90 = New rFomRepView
  loc_1E41C73:   var_90.GRepFormName = "TallyPOSReport"
  loc_1E41C83:   var_90.CAPTION = CVar(arg_10)
  loc_1E41C8C:   Call var_90.Show
  loc_1E41C92:   GoTo loc_1E3B0CD
  loc_1E41C95: End If
  loc_1E41C9F: If (var_188 = "GSTR-1") Then
  loc_1E41CA8:   Set var_90 = New rFomRepView
  loc_1E41CB6:   var_90.GRepFormName = "GSTR1"
  loc_1E41CC6:   var_90.CAPTION = CVar(arg_10)
  loc_1E41CCF:   Call var_90.Show
  loc_1E41CD5:   GoTo loc_1E3B0CD
  loc_1E41CD8: End If
  loc_1E41CE2: If (var_188 = "GSTR-2(3)") Then
  loc_1E41CEB:   Set var_90 = New rFomRepView
  loc_1E41CF9:   var_90.GRepFormName = "GSTR2(3)"
  loc_1E41D09:   var_90.CAPTION = CVar(arg_10)
  loc_1E41D12:   Call var_90.Show
  loc_1E41D18:   GoTo loc_1E3B0CD
  loc_1E41D1B: End If
  loc_1E41D25: If (var_188 = "GSTR-2(4A)") Then
  loc_1E41D2E:   Set var_90 = New rFomRepView
  loc_1E41D3C:   var_90.GRepFormName = "GSTR2(4A)"
  loc_1E41D4C:   var_90.CAPTION = CVar(arg_10)
  loc_1E41D55:   Call var_90.Show
  loc_1E41D5B:   GoTo loc_1E3B0CD
  loc_1E41D5E: End If
  loc_1E41D68: If (var_188 = "GSTR-2(4B)") Then
  loc_1E41D71:   Set var_90 = New rFomRepView
  loc_1E41D7F:   var_90.GRepFormName = "GSTR2(4B)"
  loc_1E41D8F:   var_90.CAPTION = CVar(arg_10)
  loc_1E41D98:   Call var_90.Show
  loc_1E41D9E:   GoTo loc_1E3B0CD
  loc_1E41DA1: End If
  loc_1E41DAB: If (var_188 = "Reconciliation (GSTR-2A)") Then
  loc_1E41DB4:   Set var_90 = New rFomRepView
  loc_1E41DC2:   var_90.GRepFormName = "Reconciliation(R2A)"
  loc_1E41DD2:   var_90.CAPTION = CVar(arg_10)
  loc_1E41DDB:   Call var_90.Show
  loc_1E41DE1:   GoTo loc_1E3B0CD
  loc_1E41DE4: End If
  loc_1E41DEE: If (var_188 = "Upload Process") Then
  loc_1E41DF7:   Set var_90 = New FrmUploadProcess
  loc_1E41E06:   var_90.CAPTION = CVar(arg_10)
  loc_1E41E0F:   Call var_90.Show
  loc_1E41E15:   GoTo loc_1E3B0CD
  loc_1E41E18: End If
  loc_1E41E22: If (var_188 = "Package Master") Then
  loc_1E41E2B:   Set var_90 = New FrmPackageMast
  loc_1E41E39:   var_90.MyType = "Package"
  loc_1E41E49:   var_90.CAPTION = CVar(arg_10)
  loc_1E41E52:   Call var_90.Show
  loc_1E41E58:   GoTo loc_1E3B0CD
  loc_1E41E5B: End If
  loc_1E41E65: If Not (var_188 = "Year End Updation ") Then
  loc_1E41E70:   If (var_188 = "Year End Updation") Then
  loc_1E41E73:   End If
  loc_1E41E79:   Set var_90 = New frmYearEnd
  loc_1E41E88:   var_90.CAPTION = CVar(arg_10)
  loc_1E41E91:   Call var_90.Show
  loc_1E41E97:   GoTo loc_1E3B0CD
  loc_1E41E9A: End If
  loc_1E41EA4: If (var_188 = "Plan Master") Then
  loc_1E41ECD:   unk_4E88A6.Execute "Select PlanMastType from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_DC, -1
  loc_1E41F26:   If (var_E0.Fields.Fields.Item("PlanMastType").Value = "Advanced") Then
  loc_1E41F2F:     Set var_90 = New FrmPackageMast
  loc_1E41F3D:     var_90.MyType = "Plan"
  loc_1E41F4D:     var_90.CAPTION = CVar(arg_10)
  loc_1E41F56:     Call var_90.Show
  loc_1E41F5F:   Else
  loc_1E41F67:     Set var_90 = New FrmPlanPackMast
  loc_1E41F76:     var_90.CAPTION = CVar(arg_10)
  loc_1E41F7F:     Call var_90.Show
  loc_1E41F85:   End If
  loc_1E41F87:   GoTo loc_1E3B0CD
  loc_1E41F8A: End If
  loc_1E41F94: If (var_188 = "Account Posting") Then
  loc_1E41F9D:   Set var_90 = New fdNDAcPostChrg
  loc_1E41FAC:   var_90.CAPTION = CVar(arg_10)
  loc_1E41FB5:   Call var_90.Show
  loc_1E41FBB:   GoTo loc_1E3B0CD
  loc_1E41FBE: End If
  loc_1E41FC8: If (var_188 = "Voucher Entry") Then
  loc_1E41FD1:   Set var_90 = New FaVrEnt
  loc_1E41FE0:   var_90.CAPTION = CVar(arg_10)
  loc_1E41FE9:   Call var_90.Show
  loc_1E41FFA:   var_90.WindowState = 2
  loc_1E41FFE:   GoTo loc_1E3B0CD
  loc_1E42001: End If
  loc_1E4200B: If (var_188 = "Adjustment Entry") Then
  loc_1E42014:   Set var_90 = New FaAdjust
  loc_1E42023:   var_90.CAPTION = CVar(arg_10)
  loc_1E4202C:   Call var_90.Show
  loc_1E4203D:   var_90.WindowState = 2
  loc_1E42041:   GoTo loc_1E3B0CD
  loc_1E42044: End If
  loc_1E4204E: If (var_188 = "Delete Adjustment Entry") Then
  loc_1E42057:   Set var_90 = New FaAdjustDel
  loc_1E42066:   var_90.CAPTION = CVar(arg_10)
  loc_1E4206F:   Call var_90.Show
  loc_1E42080:   var_90.WindowState = 2
  loc_1E42084:   GoTo loc_1E3B0CD
  loc_1E42087: End If
  loc_1E42091: If (var_188 = "Bank Reconciliation") Then
  loc_1E4209A:   Set var_90 = New FaChqClear
  loc_1E420A9:   var_90.CAPTION = CVar(arg_10)
  loc_1E420B2:   Call var_90.Show
  loc_1E420C3:   var_90.WindowState = 2
  loc_1E420C7:   GoTo loc_1E3B0CD
  loc_1E420CA: End If
  loc_1E420D4: If (var_188 = "T.D.S. Challan Entry") Then
  loc_1E420DD:   Set var_90 = New FaTDSChal
  loc_1E420EC:   var_90.CAPTION = CVar(arg_10)
  loc_1E420F5:   Call var_90.Show
  loc_1E42106:   var_90.WindowState = 2
  loc_1E4210A:   GoTo loc_1E3B0CD
  loc_1E4210D: End If
  loc_1E42117: If (var_188 = "T.D.S. Certificate Entry") Then
  loc_1E42120:   Set var_90 = New FaTDSCertificate
  loc_1E4212F:   var_90.CAPTION = CVar(arg_10)
  loc_1E42138:   Call var_90.Show
  loc_1E42149:   var_90.WindowState = 2
  loc_1E4214D:   GoTo loc_1E3B0CD
  loc_1E42150: End If
  loc_1E4215A: If (var_188 = "Balance Sheet") Then
  loc_1E42162:   var_A0 = "BALSHEET"
  loc_1E4216F:   If (var_A0 <> vbNullString) Then
  loc_1E42178:     Set var_90 = New FaMagic
  loc_1E42184:     var_90.ShowSiteWise = True
  loc_1E42194:     var_90.OpenType = CVar(var_A0)
  loc_1E421A4:     var_90.CAPTION = CVar(arg_10)
  loc_1E421AD:     Call var_90.Show
  loc_1E421BE:     var_90.WindowState = 2
  loc_1E421C2:   End If
  loc_1E421C4:   GoTo loc_1E3B0CD
  loc_1E421C7: End If
  loc_1E421D1: If (var_188 = "Profit And Loss Account") Then
  loc_1E421D9:   var_A0 = "PROFLOSS"
  loc_1E421E6:   If (var_A0 <> vbNullString) Then
  loc_1E421EF:     Set var_90 = New FaMagic
  loc_1E421FB:     var_90.ShowSiteWise = True
  loc_1E4220B:     var_90.OpenType = CVar(var_A0)
  loc_1E4221B:     var_90.CAPTION = CVar(arg_10)
  loc_1E42224:     Call var_90.Show
  loc_1E42235:     var_90.WindowState = 2
  loc_1E42239:   End If
  loc_1E4223B:   GoTo loc_1E3B0CD
  loc_1E4223E: End If
  loc_1E42248: If (var_188 = "Trial Balance (Group)") Then
  loc_1E42250:   var_A0 = "GROUPTRIAL"
  loc_1E4225D:   If (var_A0 <> vbNullString) Then
  loc_1E42266:     Set var_90 = New FaMagic
  loc_1E42272:     var_90.ShowSiteWise = True
  loc_1E42282:     var_90.OpenType = CVar(var_A0)
  loc_1E42292:     var_90.CAPTION = CVar(arg_10)
  loc_1E4229B:     Call var_90.Show
  loc_1E422AC:     var_90.WindowState = 2
  loc_1E422B0:   End If
  loc_1E422B2:   GoTo loc_1E3B0CD
  loc_1E422B5: End If
  loc_1E422BF: If (var_188 = "Trial Balance") Then
  loc_1E422C7:   var_A0 = "LEDTRIAL"
  loc_1E422D4:   If (var_A0 <> vbNullString) Then
  loc_1E422DD:     Set var_90 = New FaMagic
  loc_1E422E9:     var_90.ShowSiteWise = True
  loc_1E422F9:     var_90.OpenType = CVar(var_A0)
  loc_1E42309:     var_90.CAPTION = CVar(arg_10)
  loc_1E42312:     Call var_90.Show
  loc_1E42323:     var_90.WindowState = 2
  loc_1E42327:   End If
  loc_1E42329:   GoTo loc_1E3B0CD
  loc_1E4232C: End If
  loc_1E42336: If (var_188 = "Cash Flow") Then
  loc_1E4233E:   var_A0 = "CASHFLOW"
  loc_1E4234B:   If (var_A0 <> vbNullString) Then
  loc_1E42354:     Set var_90 = New FaMagic
  loc_1E42360:     var_90.ShowSiteWise = True
  loc_1E42370:     var_90.OpenType = CVar(var_A0)
  loc_1E42380:     var_90.CAPTION = CVar(arg_10)
  loc_1E42389:     Call var_90.Show
  loc_1E4239A:     var_90.WindowState = 2
  loc_1E4239E:   End If
  loc_1E423A0:   GoTo loc_1E3B0CD
  loc_1E423A3: End If
  loc_1E423AD: If (var_188 = "Fund Flow") Then
  loc_1E423B5:   var_A0 = "FUNDFLOW"
  loc_1E423C2:   If (var_A0 <> vbNullString) Then
  loc_1E423CB:     Set var_90 = New FaMagic
  loc_1E423D7:     var_90.ShowSiteWise = True
  loc_1E423E7:     var_90.OpenType = CVar(var_A0)
  loc_1E423F7:     var_90.CAPTION = CVar(arg_10)
  loc_1E42400:     Call var_90.Show
  loc_1E42411:     var_90.WindowState = 2
  loc_1E42415:   End If
  loc_1E42417:   GoTo loc_1E3B0CD
  loc_1E4241A: End If
  loc_1E42424: If (var_188 = "Cash And Bank Books") Then
  loc_1E4242C:   var_A0 = "CASHBANKSUM"
  loc_1E42439:   If (var_A0 <> vbNullString) Then
  loc_1E42442:     Set var_90 = New FaMagic
  loc_1E4244E:     var_90.ShowSiteWise = True
  loc_1E4245E:     var_90.OpenType = CVar(var_A0)
  loc_1E4246E:     var_90.CAPTION = CVar(arg_10)
  loc_1E42477:     Call var_90.Show
  loc_1E42488:     var_90.WindowState = 2
  loc_1E4248C:   End If
  loc_1E4248E:   GoTo loc_1E3B0CD
  loc_1E42491: End If
  loc_1E4249B: If (var_188 = "Day Book") Then
  loc_1E424A4:   Set var_90 = New FaReports
  loc_1E424B2:   var_90.GRepFormName = "DayBook"
  loc_1E424C2:   var_90.CAPTION = CVar(arg_10)
  loc_1E424CB:   Call var_90.Show
  loc_1E424D1:   GoTo loc_1E3B0CD
  loc_1E424D4: End If
  loc_1E424DE: If (var_188 = "Ledger") Then
  loc_1E424E7:   Set var_90 = New FaReports
  loc_1E424F5:   var_90.GRepFormName = "Led"
  loc_1E42507:   var_90.BtnParam.Visible = True
  loc_1E4251A:   var_90.CAPTION = CVar(arg_10)
  loc_1E42523:   Call var_90.Show
  loc_1E42529:   GoTo loc_1E3B0CD
  loc_1E4252C: End If
  loc_1E42536: If (var_188 = "Interest Ledger") Then
  loc_1E4253F:   Set var_90 = New FaReports
  loc_1E4254D:   var_90.GRepFormName = "LedInt"
  loc_1E42553:   var_114 = False
  loc_1E42569:   var_90.BTNPRINT.Visible = 1
  loc_1E4257E:   var_90.BtnParam.Visible = True
  loc_1E42591:   var_90.CAPTION = CVar(arg_10)
  loc_1E4259A:   Call var_90.Show
  loc_1E425A0:   GoTo loc_1E3B0CD
  loc_1E425A3: End If
  loc_1E425AD: If (var_188 = "Cash Book") Then
  loc_1E425B6:   Set var_90 = New FaReports
  loc_1E425C4:   var_90.GRepFormName = "CashBook"
  loc_1E425D4:   var_90.CAPTION = CVar(arg_10)
  loc_1E425DD:   Call var_90.Show
  loc_1E425E3:   GoTo loc_1E3B0CD
  loc_1E425E6: End If
  loc_1E425F0: If (var_188 = "Bank Book") Then
  loc_1E425F9:   Set var_90 = New FaReports
  loc_1E42607:   var_90.GRepFormName = "BankBook"
  loc_1E42617:   var_90.CAPTION = CVar(arg_10)
  loc_1E42620:   Call var_90.Show
  loc_1E42626:   GoTo loc_1E3B0CD
  loc_1E42629: End If
  loc_1E42633: If (var_188 = "Journal Books") Then
  loc_1E4263C:   Set var_90 = New FaReports
  loc_1E4264A:   var_90.GRepFormName = "JournalBook"
  loc_1E4265A:   var_90.CAPTION = CVar(arg_10)
  loc_1E42663:   Call var_90.Show
  loc_1E42669:   GoTo loc_1E3B0CD
  loc_1E4266C: End If
  loc_1E42676: If (var_188 = "Annexure") Then
  loc_1E4267F:   Set var_90 = New FaReports
  loc_1E4268D:   var_90.GRepFormName = "Annexure"
  loc_1E4269D:   var_90.CAPTION = CVar(arg_10)
  loc_1E426A6:   Call var_90.Show
  loc_1E426AC:   GoTo loc_1E3B0CD
  loc_1E426AF: End If
  loc_1E426B9: If (var_188 = "Bank Register") Then
  loc_1E426C2:   Set var_90 = New FaReports
  loc_1E426D0:   var_90.GRepFormName = "BankReg"
  loc_1E426E0:   var_90.CAPTION = CVar(arg_10)
  loc_1E426E6:   var_114 = False
  loc_1E426FC:   var_90.BTNPRINT.Visible = 1
  loc_1E42708:   Call var_90.Show
  loc_1E4270E:   GoTo loc_1E3B0CD
  loc_1E42711: End If
  loc_1E4271B: If (var_188 = "Ageing Analysis for Debtors") Then
  loc_1E42724:   Set var_90 = New FaReports
  loc_1E42732:   var_90.GRepFormName = "AgingDr"
  loc_1E42742:   var_90.CAPTION = CVar(arg_10)
  loc_1E42748:   var_114 = False
  loc_1E4275E:   var_90.BTNPRINT.Visible = 1
  loc_1E4276A:   Call var_90.Show
  loc_1E42770:   GoTo loc_1E3B0CD
  loc_1E42773: End If
  loc_1E4277D: If (var_188 = "Ageing Analysis for Creditors") Then
  loc_1E42786:   Set var_90 = New FaReports
  loc_1E42794:   var_90.GRepFormName = "AgingCr"
  loc_1E427A4:   var_90.CAPTION = CVar(arg_10)
  loc_1E427AA:   var_114 = False
  loc_1E427C0:   var_90.BTNPRINT.Visible = 1
  loc_1E427CC:   Call var_90.Show
  loc_1E427D2:   GoTo loc_1E3B0CD
  loc_1E427D5: End If
  loc_1E427DF: If (var_188 = "Cheque Cleared Register") Then
  loc_1E427E8:   Set var_90 = New FaReports
  loc_1E427F6:   var_90.GRepFormName = "Clg"
  loc_1E42806:   var_90.CAPTION = CVar(arg_10)
  loc_1E4280C:   var_114 = False
  loc_1E42822:   var_90.BTNPRINT.Visible = 1
  loc_1E4282E:   Call var_90.Show
  loc_1E42834:   GoTo loc_1E3B0CD
  loc_1E42837: End If
  loc_1E42841: If (var_188 = "Cheque Not Cleared Register") Then
  loc_1E4284A:   Set var_90 = New FaReports
  loc_1E42858:   var_90.GRepFormName = "ClgNot"
  loc_1E42868:   var_90.CAPTION = CVar(arg_10)
  loc_1E4286E:   var_114 = False
  loc_1E42884:   var_90.BTNPRINT.Visible = 1
  loc_1E42890:   Call var_90.Show
  loc_1E42896:   GoTo loc_1E3B0CD
  loc_1E42899: End If
  loc_1E428A3: If (var_188 = "Outstanding Report For Debtors") Then
  loc_1E428AC:   Set var_90 = New FaReports
  loc_1E428BA:   var_90.GRepFormName = "LedDeb"
  loc_1E428C0:   var_114 = "Letter"
  loc_1E428D7:   var_90.BTNPRINT.CAPTION = 1
  loc_1E428E0:   var_114 = True
  loc_1E428F5:   var_90.BTNPRINT.Visible = 1
  loc_1E42908:   var_90.CAPTION = CVar(arg_10)
  loc_1E4291A:   var_90.BtnParam.Visible = True
  loc_1E42926:   Call var_90.Show
  loc_1E4292C:   GoTo loc_1E3B0CD
  loc_1E4292F: End If
  loc_1E42939: If (var_188 = "Outstanding Report For Creditors") Then
  loc_1E42942:   Set var_90 = New FaReports
  loc_1E42950:   var_90.GRepFormName = "LedCred"
  loc_1E42960:   var_90.CAPTION = CVar(arg_10)
  loc_1E42966:   var_114 = False
  loc_1E4297C:   var_90.BTNPRINT.Visible = 1
  loc_1E42991:   var_90.BtnParam.Visible = True
  loc_1E4299D:   Call var_90.Show
  loc_1E429A3:   GoTo loc_1E3B0CD
  loc_1E429A6: End If
  loc_1E429B0: If (var_188 = "Daily Transaction Summary") Then
  loc_1E429B9:   Set var_90 = New FaReports
  loc_1E429C7:   var_90.GRepFormName = "DailySumm"
  loc_1E429D7:   var_90.CAPTION = CVar(arg_10)
  loc_1E429E0:   Call var_90.Show
  loc_1E429E6:   GoTo loc_1E3B0CD
  loc_1E429E9: End If
  loc_1E429F3: If (var_188 = "Non Transaction Report") Then
  loc_1E429FC:   Set var_90 = New FaReports
  loc_1E42A0A:   var_90.GRepFormName = "NonTrans"
  loc_1E42A1A:   var_90.CAPTION = CVar(arg_10)
  loc_1E42A20:   var_114 = False
  loc_1E42A36:   var_90.BTNPRINT.Visible = 1
  loc_1E42A42:   Call var_90.Show
  loc_1E42A48:   GoTo loc_1E3B0CD
  loc_1E42A4B: End If
  loc_1E42A55: If (var_188 = "Reference Report") Then
  loc_1E42A5E:   Set var_90 = New FaReports
  loc_1E42A6C:   var_90.GRepFormName = "RefReport"
  loc_1E42A7C:   var_90.CAPTION = CVar(arg_10)
  loc_1E42A82:   var_114 = False
  loc_1E42A98:   var_90.BTNPRINT.Visible = 1
  loc_1E42AA4:   Call var_90.Show
  loc_1E42AAA:   GoTo loc_1E3B0CD
  loc_1E42AAD: End If
  loc_1E42AB7: If (var_188 = "Detailed Trial Ledger") Then
  loc_1E42AC0:   Set var_90 = New FaReports
  loc_1E42ACE:   var_90.GRepFormName = "DetailedTrial"
  loc_1E42ADE:   var_90.CAPTION = CVar(arg_10)
  loc_1E42AE4:   var_114 = False
  loc_1E42AFA:   var_90.BTNPRINT.Visible = 1
  loc_1E42B06:   Call var_90.Show
  loc_1E42B0C:   GoTo loc_1E3B0CD
  loc_1E42B0F: End If
  loc_1E42B19: If (var_188 = "A/c Check List") Then
  loc_1E42B22:   Set var_90 = New FaReports
  loc_1E42B30:   var_90.GRepFormName = "AcCheckList"
  loc_1E42B40:   var_90.CAPTION = CVar(arg_10)
  loc_1E42B52:   var_90.BtnParam.Visible = True
  loc_1E42B5E:   Call var_90.Show
  loc_1E42B64:   GoTo loc_1E3B0CD
  loc_1E42B67: End If
  loc_1E42B71: If (var_188 = "Bill Wise Outstanding Report For Debtors") Then
  loc_1E42B7A:   Set var_90 = New FaReports
  loc_1E42B88:   var_90.GRepFormName = "DUELIST"
  loc_1E42B98:   var_90.CAPTION = CVar(arg_10)
  loc_1E42BA1:   Call var_90.Show
  loc_1E42BA7:   GoTo loc_1E3B0CD
  loc_1E42BAA: End If
  loc_1E42BB4: If (var_188 = "Control Ledger") Then
  loc_1E42BBD:   Set var_90 = New FaReports
  loc_1E42BCB:   var_90.GRepFormName = "CONTROLLED"
  loc_1E42BDB:   var_90.CAPTION = CVar(arg_10)
  loc_1E42BE4:   Call var_90.Show
  loc_1E42BEA:   GoTo loc_1E3B0CD
  loc_1E42BED: End If
  loc_1E42BF7: If (var_188 = "Day  Book") Then
  loc_1E42C00:   Set var_90 = New FaReports
  loc_1E42C0E:   var_90.GRepFormName = "RozNamcha"
  loc_1E42C1E:   var_90.CAPTION = CVar(arg_10)
  loc_1E42C27:   Call var_90.Show
  loc_1E42C2D:   GoTo loc_1E3B0CD
  loc_1E42C30: End If
  loc_1E42C3A: If (var_188 = "Journal Books Log") Then
  loc_1E42C43:   Set var_90 = New FaReports
  loc_1E42C51:   var_90.GRepFormName = "JournalBookLog"
  loc_1E42C61:   var_90.CAPTION = CVar(arg_10)
  loc_1E42C6A:   Call var_90.Show
  loc_1E42C70:   GoTo loc_1E3B0CD
  loc_1E42C73: End If
  loc_1E42C7D: If (var_188 = "Tax Master") Then
  loc_1E42C86:   Set var_90 = New FrmTaxMast
  loc_1E42C95:   var_90.CAPTION = CVar(arg_10)
  loc_1E42C9E:   Call var_90.Show
  loc_1E42CA4:   GoTo loc_1E3B0CD
  loc_1E42CA7: End If
  loc_1E42CB1: If (var_188 = "Tax Structure") Then
  loc_1E42CBA:   Set var_90 = New FrmTaxStruMast
  loc_1E42CC9:   var_90.CAPTION = CVar(arg_10)
  loc_1E42CD2:   Call var_90.Show
  loc_1E42CD8:   GoTo loc_1E3B0CD
  loc_1E42CDB: End If
  loc_1E42CE5: If (var_188 = "Payment Type") Then
  loc_1E42CEE:   Set var_90 = New FrmPayTypeMast
  loc_1E42CFD:   var_90.CAPTION = CVar(arg_10)
  loc_1E42D06:   Call var_90.Show
  loc_1E42D0C:   GoTo loc_1E3B0CD
  loc_1E42D0F: End If
  loc_1E42D19: If (var_188 = "Parameter") Then
  loc_1E42D22:   Set var_90 = New frmEnviro
  loc_1E42D31:   var_90.CAPTION = CVar(arg_10)
  loc_1E42D3A:   Call var_90.Show
  loc_1E42D40:   GoTo loc_1E3B0CD
  loc_1E42D43: End If
  loc_1E42D4D: If (var_188 = "Revenue Group Setting") Then
  loc_1E42D56:   Set var_90 = New frmRevGroup
  loc_1E42D65:   var_90.CAPTION = CVar(arg_10)
  loc_1E42D6E:   Call var_90.Show
  loc_1E42D74:   GoTo loc_1E3B0CD
  loc_1E42D77: End If
  loc_1E42D81: If (var_188 = "Country Master") Then
  loc_1E42D8A:   Set var_90 = New FaCountryMast
  loc_1E42D99:   var_90.CAPTION = CVar(arg_10)
  loc_1E42DA2:   Call var_90.Show
  loc_1E42DA8:   GoTo loc_1E3B0CD
  loc_1E42DAB: End If
  loc_1E42DB5: If (var_188 = "State Master") Then
  loc_1E42DBE:   Set var_90 = New FaStateMast
  loc_1E42DCD:   var_90.CAPTION = CVar(arg_10)
  loc_1E42DD6:   Call var_90.Show
  loc_1E42DDC:   GoTo loc_1E3B0CD
  loc_1E42DDF: End If
  loc_1E42DE9: If (var_188 = "City Master") Then
  loc_1E42DF2:   Set var_90 = New FaCityMast
  loc_1E42E01:   var_90.CAPTION = CVar(arg_10)
  loc_1E42E0A:   Call var_90.Show
  loc_1E42E10:   GoTo loc_1E3B0CD
  loc_1E42E13: End If
  loc_1E42E1D: If (var_188 = "Market Segment") Then
  loc_1E42E26:   Set var_90 = New FrmMarketSeg
  loc_1E42E35:   var_90.CAPTION = CVar(arg_10)
  loc_1E42E3E:   Call var_90.Show
  loc_1E42E44:   GoTo loc_1E3B0CD
  loc_1E42E47: End If
  loc_1E42E51: If (var_188 = "Business Source") Then
  loc_1E42E5A:   Set var_90 = New FrmBusinessSrc
  loc_1E42E69:   var_90.CAPTION = CVar(arg_10)
  loc_1E42E72:   Call var_90.Show
  loc_1E42E78:   GoTo loc_1E3B0CD
  loc_1E42E7B: End If
  loc_1E42E85: If (var_188 = "Guest Status") Then
  loc_1E42E8E:   Set var_90 = New FrmGuestStat
  loc_1E42E9D:   var_90.CAPTION = CVar(arg_10)
  loc_1E42EA6:   Call var_90.Show
  loc_1E42EAC:   GoTo loc_1E3B0CD
  loc_1E42EAF: End If
  loc_1E42EB9: If (var_188 = "Charge Master") Then
  loc_1E42EC2:   Set var_90 = New FrmChargeMast
  loc_1E42ED1:   var_90.CAPTION = CVar(arg_10)
  loc_1E42EDA:   Call var_90.Show
  loc_1E42EE0:   GoTo loc_1E3B0CD
  loc_1E42EE3: End If
  loc_1E42EED: If (var_188 = "Plan/Package Master") Then
  loc_1E42EF6:   Set var_90 = New FrmPlanPackMast
  loc_1E42F05:   var_90.CAPTION = CVar(arg_10)
  loc_1E42F0E:   Call var_90.Show
  loc_1E42F14:   GoTo loc_1E3B0CD
  loc_1E42F17: End If
  loc_1E42F21: If (var_188 = "Season Master") Then
  loc_1E42F2A:   Set var_90 = New frmSeasonMast
  loc_1E42F39:   var_90.CAPTION = CVar(arg_10)
  loc_1E42F42:   Call var_90.Show
  loc_1E42F48:   GoTo loc_1E3B0CD
  loc_1E42F4B: End If
  loc_1E42F55: If (var_188 = "Room Features") Then
  loc_1E42F5E:   Set var_90 = New FrmRoomFeatureMast
  loc_1E42F6D:   var_90.CAPTION = CVar(arg_10)
  loc_1E42F76:   Call var_90.Show
  loc_1E42F7C:   GoTo loc_1E3B0CD
  loc_1E42F7F: End If
  loc_1E42F89: If (var_188 = "Room Category") Then
  loc_1E42F92:   Set var_90 = New FrmRoomCatMast
  loc_1E42FA1:   var_90.CAPTION = CVar(arg_10)
  loc_1E42FAA:   Call var_90.Show
  loc_1E42FB0:   GoTo loc_1E3B0CD
  loc_1E42FB3: End If
  loc_1E42FBD: If (var_188 = "Room Master") Then
  loc_1E42FC6:   Set var_90 = New FrmRoomMast
  loc_1E42FD5:   var_90.CAPTION = CVar(arg_10)
  loc_1E42FDE:   Call var_90.Show
  loc_1E42FE4:   GoTo loc_1E3B0CD
  loc_1E42FE7: End If
  loc_1E42FF1: If (var_188 = "Company Master") Then
  loc_1E42FFA:   Set var_90 = New CompMast
  loc_1E43009:   var_90.CAPTION = CVar(arg_10)
  loc_1E43012:   Call var_90.Show
  loc_1E43018:   GoTo loc_1E3B0CD
  loc_1E4301B: End If
  loc_1E43025: If (var_188 = "Forex Master") Then
  loc_1E4302E:   Set var_90 = New FrmForeignExMast
  loc_1E4303D:   var_90.CAPTION = CVar(arg_10)
  loc_1E43046:   Call var_90.Show
  loc_1E4304C:   GoTo loc_1E3B0CD
  loc_1E4304F: End If
  loc_1E43059: If (var_188 = "Guest Profile") Then
  loc_1E43062:   Set var_90 = New GuestProfile
  loc_1E43071:   var_90.CAPTION = CVar(arg_10)
  loc_1E4307A:   Call var_90.Show
  loc_1E43080:   GoTo loc_1E3B0CD
  loc_1E43083: End If
  loc_1E4308D: If (var_188 = "Group Profile") Then
  loc_1E43096:   Set var_90 = New GroupProfile
  loc_1E430A5:   var_90.CAPTION = CVar(arg_10)
  loc_1E430AE:   Call var_90.Show
  loc_1E430B4:   GoTo loc_1E3B0CD
  loc_1E430B7: End If
  loc_1E430C1: If Not (var_188 = "Item List") Then
  loc_1E430CC:   If (var_188 = "Item  List") Then
  loc_1E430CF:   End If
  loc_1E430D5:   Set var_90 = New FrmItemMast
  loc_1E430E4:   var_90.CAPTION = CVar(arg_10)
  loc_1E430ED:   Call var_90.Show
  loc_1E430F3:   GoTo loc_1E3B0CD
  loc_1E430F6: End If
  loc_1E43100: If (var_188 = "Scheme Master") Then
  loc_1E43109:   Set var_90 = New SchemeMast
  loc_1E43118:   var_90.CAPTION = CVar(arg_10)
  loc_1E43121:   Call var_90.Show
  loc_1E43127:   GoTo loc_1E3B0CD
  loc_1E4312A: End If
  loc_1E43134: If (var_188 = "Server Master") Then
  loc_1E4313D:   Set var_90 = New FrmWaiterMast
  loc_1E4314C:   var_90.CAPTION = CVar(arg_10)
  loc_1E43155:   Call var_90.Show
  loc_1E4315B:   GoTo loc_1E3B0CD
  loc_1E4315E: End If
  loc_1E43168: If (var_188 = "Rate Group Master") Then
  loc_1E43177:   var_90.CAPTION = CVar(arg_10)
  loc_1E4317B:   GoTo loc_1E3B0CD
  loc_1E4317E: End If
  loc_1E43188: If (var_188 = "Fixed Charge") Then
  loc_1E43191:   Set var_90 = New frmFixedChargeMast
  loc_1E431A0:   var_90.CAPTION = CVar(arg_10)
  loc_1E431A9:   Call var_90.Show
  loc_1E431AF:   GoTo loc_1E3B0CD
  loc_1E431B2: End If
  loc_1E431BC: If (var_188 = "Guest History") Then
  loc_1E431C5:   Set var_90 = New GuestProfile
  loc_1E431D4:   var_90.CAPTION = CVar(arg_10)
  loc_1E431DD:   Call var_90.Show
  loc_1E431E3:   GoTo loc_1E3B0CD
  loc_1E431E6: End If
  loc_1E431F0: If (var_188 = "Room Display") Then
  loc_1E431F9:   Set var_90 = New FdRoomDisplay
  loc_1E43208:   var_90.CAPTION = CVar(arg_10)
  loc_1E43211:   Call var_90.Show
  loc_1E43217:   GoTo loc_1E3B0CD
  loc_1E4321A: End If
  loc_1E43224: If (var_188 = "Open Item Consumption") Then
  loc_1E4322D:   Set var_90 = New FrmConsumMast9999
  loc_1E4323C:   var_90.CAPTION = CVar(arg_10)
  loc_1E43245:   Call var_90.Show
  loc_1E4324B:   GoTo loc_1E3B0CD
  loc_1E4324E: End If
  loc_1E43258: If (var_188 = "Member Master") Then
  loc_1E43261:   Set var_90 = New MembershipMast
  loc_1E43270:   var_90.CAPTION = CVar(arg_10)
  loc_1E43279:   Call var_90.Show
  loc_1E4327F:   GoTo loc_1E3B0CD
  loc_1E43282: End If
  loc_1E4328C: If (var_188 = "Purchase Sundry Setting") Then
  loc_1E43295:   Set var_90 = New DepartSundry
  loc_1E432A4:   var_90.CAPTION = CVar(arg_10)
  loc_1E432AD:   Call var_90.Show
  loc_1E432B3:   GoTo loc_1E3B0CD
  loc_1E432B6: End If
  loc_1E432C0: If (var_188 = "Location Master") Then
  loc_1E432C9:   Set var_90 = New Godown
  loc_1E432D8:   var_90.CAPTION = CVar(arg_10)
  loc_1E432E1:   Call var_90.Show
  loc_1E432E7:   GoTo loc_1E3B0CD
  loc_1E432EA: End If
  loc_1E432F4: If (var_188 = "Opening Stock") Then
  loc_1E432FD:   Set var_90 = New FrmOPStock
  loc_1E4330C:   var_90.CAPTION = CVar(arg_10)
  loc_1E43315:   Call var_90.Show
  loc_1E4331B:   GoTo loc_1E3B0CD
  loc_1E4331E: End If
  loc_1E43328: If (var_188 = "Delete Message") Then
  loc_1E43331:   Set var_90 = New EmptyInbox
  loc_1E43340:   var_90.CAPTION = CVar(arg_10)
  loc_1E43349:   Call var_90.Show
  loc_1E4334F:   GoTo loc_1E3B0CD
  loc_1E43352: End If
  loc_1E4335C: If (var_188 = "Inconsistency Check") Then
  loc_1E43365:   Set var_90 = New FrmInc
  loc_1E43374:   var_90.CAPTION = CVar(arg_10)
  loc_1E4337D:   Call var_90.Show
  loc_1E43383:   GoTo loc_1E3B0CD
  loc_1E43386: End If
  loc_1E43390: If (var_188 = "Advance Deposit") Then
  loc_1E4339B:   Set var_90 = MemVar_1F9354C 
  loc_1E433AD:   var_90.OpenType = 1
  loc_1E433BF:   var_90.OpenMode = 2
  loc_1E433CE:   var_90.AdvType = "ADRES"
  loc_1E433DE:   var_90.CAPTION = CVar(arg_10)
  loc_1E433E7:   Call var_90.Show
  loc_1E433ED:   GoTo loc_1E3B0CD
  loc_1E433F0: End If
  loc_1E433FA: If (var_188 = "WalkIn CheckIn") Then
  loc_1E43403:   Set var_90 = New fdWalkInEntry
  loc_1E43412:   var_90.CAPTION = CVar(arg_10)
  loc_1E4341B:   Call var_90.Show
  loc_1E43421:   GoTo loc_1E3B0CD
  loc_1E43424: End If
  loc_1E4342E: If (var_188 = "Reverse Check Out") Then
  loc_1E43437:   Set var_90 = New FdRevCheckOut
  loc_1E43446:   var_90.CAPTION = CVar(arg_10)
  loc_1E4344F:   Call var_90.Show
  loc_1E43455:   GoTo loc_1E3B0CD
  loc_1E43458: End If
  loc_1E43462: If (var_188 = "Merge Room") Then
  loc_1E4346B:   Set var_90 = New FrmMergeCharge
  loc_1E4347A:   var_90.CAPTION = CVar(arg_10)
  loc_1E43483:   Call var_90.Show
  loc_1E43489:   GoTo loc_1E3B0CD
  loc_1E4348C: End If
  loc_1E43496: If (var_188 = "Bill Re-Settlement") Then
  loc_1E4349F:   Set var_90 = New FdReSetlement
  loc_1E434AD:   var_90.ParentForm = "Check Out"
  loc_1E434BD:   var_90.CAPTION = CVar(arg_10)
  loc_1E434C6:   Call var_90.Show
  loc_1E434CC:   GoTo loc_1E3B0CD
  loc_1E434CF: End If
  loc_1E434D4: ' Referenced from: 1E53321
  loc_1E434D4: Do 'loop at: 1E53377
  loc_1E434D9: If (var_188 = "Reverse Room Merge") Then
  loc_1E434DC:   ' Referenced from: 1E53168
  loc_1E434E2:   Set var_90 = New FrmRevMergeCharge
  loc_1E434E7:   Do 'loop at: 1E5260E
  loc_1E434F1:   var_90.CAPTION = CVar(arg_10)
  loc_1E434FA:   Call var_90.Show
  loc_1E43500:   GoTo loc_1E3B0CD
  loc_1E43503: End If
  loc_1E4350D: If (var_188 = "Setup Outlet") Then
  loc_1E43516:   Set var_90 = New OutLetMast
  loc_1E43525:   var_90.CAPTION = CVar(arg_10)
  loc_1E4352E:   Call var_90.Show
  loc_1E43534:   GoTo loc_1E3B0CD
  loc_1E43537: End If
  loc_1E43541: If (var_188 = "Table Master") Then
  loc_1E4354A:   Set var_90 = New RsTableMast
  loc_1E43559:   var_90.CAPTION = CVar(arg_10)
  loc_1E43562:   Call var_90.Show
  loc_1E43568:   GoTo loc_1E3B0CD
  loc_1E4356B: End If
  loc_1E43575: If (var_188 = "Menu Category") Then
  loc_1E4358B:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E43594:     Set var_90 = New FrmHallItemCatMast
  loc_1E435B2:     var_90.MDIRestCode = CVar(var_114 & Proc_165_4_102F29C(arg_C, MemVar_1F92078, var_114, var_114, var_114, var_114, var_114, var_114))
  loc_1E435C1:     Call var_90.Show
  loc_1E435CA:   Else
  loc_1E435D2:     Set var_90 = New FrmItemCatMast
  loc_1E435E1:     var_90.CAPTION = CVar(arg_10)
  loc_1E435EA:     Call var_90.Show
  loc_1E435F0:   End If
  loc_1E435F2:   GoTo loc_1E3B0CD
  loc_1E435F5: End If
  loc_1E435FF: If (var_188 = "Menu Group") Then
  loc_1E43608:   Set var_90 = New FrmItemGroupMast
  loc_1E43616:   var_90.RestType = "='Finish'"
  loc_1E4361C:   var_114 = False
  loc_1E43632:   var_90.Txt.Visible = 3
  loc_1E4363B:   var_114 = False
  loc_1E43651:   var_90.Label1.Visible = 1
  loc_1E4365A:   var_114 = True
  loc_1E4366F:   var_90.Txt.Visible = 1
  loc_1E43678:   var_114 = True
  loc_1E4368D:   var_90.LblName.Visible = 1
  loc_1E4369D:   Do 'loop at: 1E53653
  loc_1E436A0:   var_90.CAPTION = CVar(arg_10)
  loc_1E436A9:   Call var_90.Show
  loc_1E436AF:   GoTo loc_1E3B0CD
  loc_1E436B2: End If
  loc_1E436BC: If (var_188 = "Menu Item") Then
  loc_1E436DF:   If (Trim(var_AC) = "BANQ") Then
  loc_1E436E8:     Set var_90 = New HallMenuItemEntry
  loc_1E43706:     var_90.MDIRestCode = CVar(var_114 & Proc_165_4_102F29C(arg_C, MemVar_1F92078, var_114, var_114, var_114, var_114))
  loc_1E4371C:     var_90.CAPTION = CVar(arg_10)
  loc_1E43725:     Call var_90.Show
  loc_1E4372E:   Else
  loc_1E4374E:     If (Trim(var_AC) = "ODC") Then
  loc_1E43757:       Set var_90 = New HallMenuItemEntry
  loc_1E43775:       var_90.MDIRestCode = CVar(var_114 & Proc_165_4_102F29C(arg_C, MemVar_1F92078, var_114, var_114))
  loc_1E4378B:       var_90.CAPTION = CVar(arg_10)
  loc_1E43794:       Call var_90.Show
  loc_1E4379D:     Else
  loc_1E437A5:       Set var_90 = New RsMenuItemEntry
  loc_1E437B4:       var_90.CAPTION = CVar(arg_10)
  loc_1E437BD:       Call var_90.Show
  loc_1E437C3:     End If
  loc_1E437C3:   End If
  loc_1E437C5:   GoTo loc_1E3B0CD
  loc_1E437C8: End If
  loc_1E437D2: If (var_188 = "Outlet Sundry Setting") Then
  loc_1E437DB:   Set var_90 = New OutLetSundry
  loc_1E437EA:   var_90.CAPTION = CVar(arg_10)
  loc_1E437F3:   Call var_90.Show
  loc_1E437F9:   GoTo loc_1E3B0CD
  loc_1E437FC: End If
  loc_1E43806: If (var_188 = "Menu Item Rate") Then
  loc_1E4380F:   Set var_90 = New FrmMenuRate
  loc_1E4381B:   Do 'loop at: 1E537B4
  loc_1E4381E:   var_90.CAPTION = CVar(arg_10)
  loc_1E43827:   Call var_90.Show
  loc_1E4382D:   GoTo loc_1E3B0CD
  loc_1E43830: End If
  loc_1E4383A: If (var_188 = "Session Master") Then
  loc_1E43843:   Set var_90 = New frmSessionMast
  loc_1E43852:   var_90.CAPTION = CVar(arg_10)
  loc_1E4385B:   Call var_90.Show
  loc_1E43861:   GoTo loc_1E3B0CD
  loc_1E43864: End If
  loc_1E4386E: If (var_188 = "NC Type") Then
  loc_1E43877:   Set var_90 = New FrmNCType
  loc_1E43886:   var_90.CAPTION = CVar(arg_10)
  loc_1E4388F:   Call var_90.Show
  loc_1E43895:   GoTo loc_1E3B0CD
  loc_1E43898: End If
  loc_1E438A2: If (var_188 = "Customer History") Then
  loc_1E438AB:   Set var_90 = New frmGuestInfo
  loc_1E438BA:   var_90.CAPTION = CVar(arg_10)
  loc_1E438C3:   Call var_90.Show
  loc_1E438C9:   GoTo loc_1E3B0CD
  loc_1E438CC: End If
  loc_1E438D6: If (var_188 = "Delivery Boy") Then
  loc_1E438DF:   Set var_90 = New FrmDeliveryBoyMast
  loc_1E438EE:   var_90.CAPTION = CVar(arg_10)
  loc_1E438F7:   Call var_90.Show
  loc_1E438FD:   GoTo loc_1E3B0CD
  loc_1E43900: End If
  loc_1E4390A: If (var_188 = "Reward Points Parameter I") Then
  loc_1E43913:   Set var_90 = New RewardPointParam1
  loc_1E43922:   var_90.CAPTION = CVar(arg_10)
  loc_1E4392B:   Call var_90.Show
  loc_1E43931:   GoTo loc_1E3B0CD
  loc_1E43934: End If
  loc_1E4393E: If (var_188 = "Party Master") Then
  loc_1E43947:   Set var_90 = New FrmParty
  loc_1E43956:   var_90.CAPTION = CVar(arg_10)
  loc_1E4395F:   Call var_90.Show
  loc_1E43965:   GoTo loc_1E3B0CD
  loc_1E43968: End If
  loc_1E43972: If (var_188 = "Department") Then
  loc_1E4397B:   Set var_90 = New DepartMast
  loc_1E4398A:   var_90.CAPTION = CVar(arg_10)
  loc_1E43993:   Call var_90.Show
  loc_1E43999:   GoTo loc_1E3B0CD
  loc_1E4399C: End If
  loc_1E439A6: If (var_188 = "Item Group") Then
  loc_1E439B6:   Do 'loop at: 1E5394F
  loc_1E439BC:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E439C5:     Set var_90 = New HallItemGroupMast
  loc_1E439E3:     var_90.MDIRestCode = CVar(var_114 & Proc_165_4_102F29C(arg_C, MemVar_1F92078))
  loc_1E439F2:     Call var_90.Show
  loc_1E439FB:   Else
  loc_1E43A03:     Set var_90 = New FrmItemGroupMastRaw
  loc_1E43A11:     var_90.RestType = "<>'Finish'"
  loc_1E43A21:     var_90.CAPTION = CVar(arg_10)
  loc_1E43A2A:     Call var_90.Show
  loc_1E43A30:   End If
  loc_1E43A32:   GoTo loc_1E3B0CD
  loc_1E43A35: End If
  loc_1E43A3F: Do 'loop at: 1E539D8
  loc_1E43A3F: If (var_188 = "Item Category") Then
  loc_1E43A48:   Set var_90 = New FrmItemCatRaw
  loc_1E43A57:   var_90.CAPTION = CVar(arg_10)
  loc_1E43A60:   Call var_90.Show
  loc_1E43A66:   GoTo loc_1E3B0CD
  loc_1E43A69: End If
  loc_1E43A73: If Not (var_188 = "Item Entry") Then
  loc_1E43A7E:   If (var_188 = "Item Entry ") Then
  loc_1E43A81:   End If
  loc_1E43A87:   Set var_90 = New FrmItemMastRaw
  loc_1E43A96:   var_90.CAPTION = CVar(arg_10)
  loc_1E43A9F:   Call var_90.Show
  loc_1E43AA5:   GoTo loc_1E3B0CD
  loc_1E43AA8: End If
  loc_1E43AB2: If (var_188 = "Consumption Master") Then
  loc_1E43ABB:   Set var_90 = New FrmConsumMast
  loc_1E43ACA:   var_90.CAPTION = CVar(arg_10)
  loc_1E43AD3:   Call var_90.Show
  loc_1E43AD9:   GoTo loc_1E3B0CD
  loc_1E43ADC: End If
  loc_1E43AE6: If (var_188 = "Enviro Inventry") Then
  loc_1E43AEF:   Set var_90 = New frmPurEnviro
  loc_1E43AFE:   var_90.CAPTION = CVar(arg_10)
  loc_1E43B07:   Call var_90.Show
  loc_1E43B0D:   GoTo loc_1E3B0CD
  loc_1E43B10: End If
  loc_1E43B1A: If (var_188 = "FOM Bill Deletion") Then
  loc_1E43B23:   Set var_90 = New FrmFomBillDeletion
  loc_1E43B32:   var_90.CAPTION = CVar(arg_10)
  loc_1E43B3B:   Call var_90.Show
  loc_1E43B41:   GoTo loc_1E3B0CD
  loc_1E43B44: End If
  loc_1E43B4E: If (var_188 = "Designation Master") Then
  loc_1E43B57:   Set var_90 = New PrDesigMast
  loc_1E43B66:   var_90.CAPTION = CVar(arg_10)
  loc_1E43B6F:   Call var_90.Show
  loc_1E43B75:   GoTo loc_1E3B0CD
  loc_1E43B78: End If
  loc_1E43B82: If (var_188 = "Category  Master") Then
  loc_1E43B8B:   Set var_90 = New PrCategoryMast
  loc_1E43B9A:   var_90.CAPTION = CVar(arg_10)
  loc_1E43BA3:   Call var_90.Show
  loc_1E43BA9:   GoTo loc_1E3B0CD
  loc_1E43BAC: End If
  loc_1E43BB6: If (var_188 = "Holiday Master") Then
  loc_1E43BBF:   Set var_90 = New prHoliday
  loc_1E43BCE:   var_90.CAPTION = CVar(arg_10)
  loc_1E43BD7:   Call var_90.Show
  loc_1E43BDD:   GoTo loc_1E3B0CD
  loc_1E43BE0: End If
  loc_1E43BEA: If (var_188 = "Employee Master") Then
  loc_1E43BF3:   Set var_90 = New PrEmployee
  loc_1E43C02:   var_90.CAPTION = CVar(arg_10)
  loc_1E43C0B:   Call var_90.Show
  loc_1E43C11:   GoTo loc_1E3B0CD
  loc_1E43C14: End If
  loc_1E43C1E: If (var_188 = "Call Type Master") Then
  loc_1E43C29:   Set var_90 = MemVar_1F9336C 
  loc_1E43C39:   var_90.CAPTION = CVar(arg_10)
  loc_1E43C42:   Call var_90.Show
  loc_1E43C48:   GoTo loc_1E3B0CD
  loc_1E43C4B: End If
  loc_1E43C55: If (var_188 = "Extension Master") Then
  loc_1E43C5A:   Do 'loop at: 1E53BF3
  loc_1E43C60:   Set var_90 = MemVar_1F93380 
  loc_1E43C70:   var_90.CAPTION = CVar(arg_10)
  loc_1E43C79:   Call var_90.Show
  loc_1E43C7F:   GoTo loc_1E3B0CD
  loc_1E43C82: End If
  loc_1E43C8C: If (var_188 = "Call Codes Master") Then
  loc_1E43C97:   Set var_90 = MemVar_1F93394 
  loc_1E43CA7:   var_90.CAPTION = CVar(arg_10)
  loc_1E43CB0:   Call var_90.Show
  loc_1E43CB6:   GoTo loc_1E3B0CD
  loc_1E43CB9: End If
  loc_1E43CC3: If (var_188 = "Call Control Master") Then
  loc_1E43CCE:   Set var_90 = MemVar_1F933A8 
  loc_1E43CDE:   var_90.CAPTION = CVar(arg_10)
  loc_1E43CE7:   Call var_90.Show
  loc_1E43CED:   GoTo loc_1E3B0CD
  loc_1E43CF0: End If
  loc_1E43CFA: If (var_188 = "Group Accounts") Then
  loc_1E43D03:   Set var_90 = New FaGrEnt
  loc_1E43D12:   var_90.CAPTION = CVar(arg_10)
  loc_1E43D1B:   Call var_90.Show
  loc_1E43D2C:   var_90.WindowState = 2
  loc_1E43D30:   GoTo loc_1E3B0CD
  loc_1E43D33: End If
  loc_1E43D3D: If (var_188 = "Ledger Accounts") Then
  loc_1E43D46:   Set var_90 = New FaSubGroup
  loc_1E43D55:   var_90.CAPTION = CVar(arg_10)
  loc_1E43D5E:   Call var_90.Show
  loc_1E43D6C:   Do 'loop at: 1E53D05
  loc_1E43D6F:   var_90.WindowState = 2
  loc_1E43D73:   GoTo loc_1E3B0CD
  loc_1E43D76: End If
  loc_1E43D80: If (var_188 = "Data Transfer (POS)") Then
  loc_1E43D89:   Set var_90 = New FrmPOSSaleDataTransfer
  loc_1E43D98:   var_90.CAPTION = CVar(arg_10)
  loc_1E43DA1:   Call var_90.Show
  loc_1E43DA7:   GoTo loc_1E3B0CD
  loc_1E43DAA: End If
  loc_1E43DB4: If (var_188 = "PLU File (W.Scale)") Then
  loc_1E43DBD:   Set var_90 = New rPOSRepView
  loc_1E43DCB:   var_90.GRepFormName = "PLUFile"
  loc_1E43DDB:   var_90.CAPTION = CVar(arg_10)
  loc_1E43DEE:   Me.Global.Unload var_90
  loc_1E43DF6:   GoTo loc_1E3B0CD
  loc_1E43DF9: End If
  loc_1E43E03: If (var_188 = "POS Recycle") Then
  loc_1E43E0E:   If (MemVar_1F920B8 = 1) Then
  loc_1E43E17:     Set var_90 = New FrmPOSRecycleData
  loc_1E43E26:     var_90.CAPTION = CVar(arg_10)
  loc_1E43E2F:     Call var_90.Show
  loc_1E43E38:   Else
  loc_1E43E5A:     MsgBox("Only Supervisor is Authorised.", &H10, var_94, var_100, var_124)
  loc_1E43E68:   End If
  loc_1E43E6A:   GoTo loc_1E3B0CD
  loc_1E43E6D: End If
  loc_1E43E77: If (var_188 = "Card Initialization") Then
  loc_1E43E82:   Set var_90 = MemVar_1F92330 
  loc_1E43E94:   var_90.CAPTION = CVar(New SmartCardMast)
  loc_1E43EA0:   Call var_90.Show
  loc_1E43EA6:   GoTo loc_1E3B0CD
  loc_1E43EA9: End If
  loc_1E43EB3: If (var_188 = "Guest Registration") Then
  loc_1E43EBE:   Set var_90 = MemVar_1F92344 
  loc_1E43ECD:   var_90.SmartCardApplicable = "No"
  loc_1E43EDF:   var_90.CAPTION = CVar(New SmartCardRegistration)
  loc_1E43EEB:   Call var_90.Show
  loc_1E43EF1:   GoTo loc_1E3B0CD
  loc_1E43EF4: End If
  loc_1E43EFE: If (var_188 = "Card Registration") Then
  loc_1E43F12:   var_E0 = var_BC.Fields
  loc_1E43F36:   var_F0 = "CashCardCreditAc"
  loc_1E43F52:   var_100 = CVar(var_BC.Fields.Item(var_F0)) 'Address
  loc_1E43F83:   var_124 = CVar(var_BC.Fields.Item("CashCardSecurityAc")) 'Address
  loc_1E43FB0:   If ((var_E0 Or (Proc_6_38_E68A98(var_100, (Proc_6_38_E68A98(CVar(var_E0.Item("CashCardDebitAc"))) = vbNullString)) = vbNullString)) Or (Proc_6_38_E68A98(var_124) = vbNullString)) Then
  loc_1E43FCE:     MsgBox("Parameter Settings are not set.", &H40, var_100, var_124, var_150)
  loc_1E43FE1:   Else
  loc_1E43FEB:     Set var_90 = MemVar_1F92344 
  loc_1E43FFA:     var_90.SmartCardApplicable = "Yes"
  loc_1E4400C:     var_90.CAPTION = CVar(New SmartCardRegistration)
  loc_1E44010:     Do 'loop at:   1E53FAC
  loc_1E44018:     Call var_90.Show
  loc_1E4401E:   End If
  loc_1E44020:   GoTo loc_1E3B0CD
  loc_1E44023: End If
  loc_1E4402D: If (var_188 = "Card Recharge") Then
  loc_1E44038:   Set var_90 = MemVar_1F92358 
  loc_1E4404A:   var_90.CAPTION = CVar(New SmartCardRecharge)
  loc_1E44056:   Call var_90.Show
  loc_1E4405C:   GoTo loc_1E3B0CD
  loc_1E4405F: End If
  loc_1E44069: If (var_188 = "Card Refund") Then
  loc_1E44074:   Set var_90 = MemVar_1F9236C 
  loc_1E44086:   var_90.CAPTION = CVar(New SmartCardRefund)
  loc_1E44092:   Call var_90.Show
  loc_1E44098:   GoTo loc_1E3B0CD
  loc_1E4409B: End If
  loc_1E440A5: If (var_188 = "Card Re-Issue") Then
  loc_1E440B0:   Set var_90 = MemVar_1F92380 
  loc_1E440C2:   var_90.CAPTION = CVar(New SmartCardLostReIssue)
  loc_1E440CE:   Call var_90.Show
  loc_1E440D4:   GoTo loc_1E3B0CD
  loc_1E440D7: End If
  loc_1E440E1: If (var_188 = "User Collection") Then
  loc_1E440EC:   Set var_90 = MemVar_1F92394 
  loc_1E440FE:   var_90.CAPTION = CVar(New FrmUserPaymentCollection)
  loc_1E4410A:   Call var_90.Show
  loc_1E44110:   GoTo loc_1E3B0CD
  loc_1E44113: End If
  loc_1E4411D: If (var_188 = "Card Statement (MINI)") Then
  loc_1E44125:   Proc_275_18_150145C(MemVar_1F923B4)
  loc_1E4412A:   GoTo loc_1E3B0CD
  loc_1E4412D: End If
  loc_1E44137: If (var_188 = "Card Statement (FULL)") Then
  loc_1E4413C:   Proc_275_22_10E4F40()
  loc_1E44141:   GoTo loc_1E3B0CD
  loc_1E44144: End If
  loc_1E4414E: If (var_188 = "Card Transaction Report") Then
  loc_1E44157:   Set var_90 = New rPOSRepView
  loc_1E44165:   var_90.GRepFormName = "CashCardTransRep"
  loc_1E44175:   var_90.CAPTION = CVar(arg_10)
  loc_1E4417E:   Call var_90.Show
  loc_1E44184:   GoTo loc_1E3B0CD
  loc_1E44187: End If
  loc_1E44191: If (var_188 = "Card Collection Summary") Then
  loc_1E4419A:   Set var_90 = New rPOSRepView
  loc_1E441A8:   var_90.GRepFormName = "CashCardCollectSumm"
  loc_1E441B8:   var_90.CAPTION = CVar(arg_10)
  loc_1E441C1:   Call var_90.Show
  loc_1E441C7:   GoTo loc_1E3B0CD
  loc_1E441CA: End If
  loc_1E441D4: If (var_188 = "Card Status Report") Then
  loc_1E441DD:   Set var_90 = New rPOSRepView
  loc_1E441EB:   var_90.GRepFormName = "CardStatusReport"
  loc_1E441FB:   var_90.CAPTION = CVar(arg_10)
  loc_1E44204:   Call var_90.Show
  loc_1E4420A:   GoTo loc_1E3B0CD
  loc_1E4420D: End If
  loc_1E44217: If (var_188 = "Narration Master") Then
  loc_1E44220:   Set var_90 = New FaNarrMast
  loc_1E44228:   Do 'loop at: 1E541C4
  loc_1E4422F:   var_90.CAPTION = CVar(arg_10)
  loc_1E44238:   Call var_90.Show
  loc_1E44249:   var_90.WindowState = 2
  loc_1E4424D:   GoTo loc_1E3B0CD
  loc_1E44250: End If
  loc_1E4425A: If (var_188 = "T.D.S. Category") Then
  loc_1E44263:   Set var_90 = New FaTDSCat
  loc_1E44272:   var_90.CAPTION = CVar(arg_10)
  loc_1E4427B:   Call var_90.Show
  loc_1E44283:   var_CC = 2
  loc_1E4428C:   var_90.WindowState = var_CC
  loc_1E44290:   GoTo loc_1E3B0CD
  loc_1E44293: End If
  loc_1E4429D: If (var_188 = "FA Environment") Then
  loc_1E442AB:   Call 0.Method_arg_54 (var_94)
  loc_1E442C0:   Call 0.Method_arg_2B0 (var_CC)
  loc_1E442CC:   MemVar_1F92818 = Nothing
  loc_1E442D0:   GoTo loc_1E3B0CD
  loc_1E442D3: End If
  loc_1E442DD: If (var_188 = "Voucher Environment") Then
  loc_1E442EB:   Call 0.Method_arg_54 (var_94)
  loc_1E44300:   Call 0.Method_arg_2B0 (var_CC, var_F0)
  loc_1E4430C:   MemVar_1F9282C = Nothing
  loc_1E44310:   GoTo loc_1E3B0CD
  loc_1E44313: End If
  loc_1E4431D: If (var_188 = "Opening Balance Updation") Then
  loc_1E44320:   GoTo loc_1E3B0CD
  loc_1E44323: End If
  loc_1E4432D: If (var_188 = "Year End Updation") Then
  loc_1E44330:   GoTo loc_1E3B0CD
  loc_1E44333: End If
  loc_1E4433D: If (var_188 = "Account Merging") Then
  loc_1E44346:   Set var_90 = New AccountMerg
  loc_1E44354:   var_90.ParentForm = "Check Out"
  loc_1E44364:   var_90.CAPTION = CVar(arg_10)
  loc_1E4436D:   Call var_90.Show
  loc_1E44373:   GoTo loc_1E3B0CD
  loc_1E44376: End If
  loc_1E44380: If (var_188 = "Voucher Serialisation") Then
  loc_1E44389:   Set var_90 = New FrmSerialiseVr
  loc_1E44398:   var_90.CAPTION = CVar(arg_10)
  loc_1E4439E:   var_CC = 1
  loc_1E443AA:   Call var_90.Show
  loc_1E443B0:   GoTo loc_1E3B0CD
  loc_1E443B3: End If
  loc_1E443BD: Do 'loop at: 1E54356
  loc_1E443BD: If (var_188 = "User Master") Then
  loc_1E443C6:   Set var_90 = New UserMast
  loc_1E443D5:   var_90.CAPTION = CVar(arg_10)
  loc_1E443DE:   Call var_90.Show
  loc_1E443E4:   GoTo loc_1E3B0CD
  loc_1E443E7: End If
  loc_1E443F1: If (var_188 = "Permissions") Then
  loc_1E443FA:   Set var_90 = New UserPermission
  loc_1E44402:   var_CC = CVar(arg_10) 'String
  loc_1E44409:   var_90.CAPTION = var_CC
  loc_1E44412:   Call var_90.Show
  loc_1E44418:   GoTo loc_1E3B0CD
  loc_1E4441B: End If
  loc_1E44425: If (var_188 = "Update Database Nulls") Then
  loc_1E44428:   GoTo loc_1E3B0CD
  loc_1E4442B: End If
  loc_1E44435: If (var_188 = "Backup Data") Then
  loc_1E4443A:   Proc_165_6_134DBC4(var_CC)
  loc_1E4443F:   GoTo loc_1E3B0CD
  loc_1E44442: End If
  loc_1E4444C: If (var_188 = "Account Merging") Then
  loc_1E4444F:   GoTo loc_1E3B0CD
  loc_1E44452: End If
  loc_1E4445C: If (var_188 = "Guest Parameters Setting") Then
  loc_1E44465:   Set var_90 = New frmGuestParamMast
  loc_1E44474:   var_90.CAPTION = CVar(arg_10)
  loc_1E44483:   var_90.Tag = "11"
  loc_1E44493:   var_90.CAPTION = CVar(arg_10)
  loc_1E4449C:   Call var_90.Show
  loc_1E444A2:   GoTo loc_1E3B0CD
  loc_1E444A5: End If
  loc_1E444AF: If (var_188 = "Sundry Master") Then
  loc_1E444B8:   Set var_90 = New SundryMast
  loc_1E444C7:   var_90.CAPTION = CVar(arg_10)
  loc_1E444D0:   Call var_90.Show
  loc_1E444D6:   GoTo loc_1E3B0CD
  loc_1E444D9: End If
  loc_1E444E3: If (var_188 = "Voucher Wise Sundry Entry") Then
  loc_1E444EC:   Set var_90 = New VoucherSundrySetting
  loc_1E444FB:   var_90.CAPTION = CVar(arg_10)
  loc_1E44504:   Call var_90.Show
  loc_1E4450A:   GoTo loc_1E3B0CD
  loc_1E4450D: End If
  loc_1E44517: If (var_188 = "Guest BirthDates/Anniversary") Then
  loc_1E44520:   Set var_90 = New frmWelcome
  loc_1E4452F:   var_90.CAPTION = CVar(arg_10)
  loc_1E44538:   Call var_90.Show
  loc_1E4453E:   GoTo loc_1E3B0CD
  loc_1E44541: End If
  loc_1E4454B: If (var_188 = "WalkIn CheckIn") Then
  loc_1E44554:   Set var_90 = New fdWalkInEntry
  loc_1E44563:   var_90.CAPTION = CVar(arg_10)
  loc_1E4456C:   Call var_90.Show
  loc_1E44572:   GoTo loc_1E3B0CD
  loc_1E44575: End If
  loc_1E4457F: If (var_188 = "Check In Entry") Then
  loc_1E44588:   Set var_90 = New fdCheckIn
  loc_1E44597:   var_90.CAPTION = CVar(arg_10)
  loc_1E445A0:   Call var_90.Show
  loc_1E445A6:   GoTo loc_1E3B0CD
  loc_1E445A9: End If
  loc_1E445B3: If (var_188 = "Check In Group With Reservation") Then
  loc_1E445C2:   var_90.CAPTION = CVar(arg_10)
  loc_1E445C6:   GoTo loc_1E3B0CD
  loc_1E445C9: End If
  loc_1E445D3: If (var_188 = "Check In With Walk In History") Then
  loc_1E445DC:   Set var_90 = New HWIHistory
  loc_1E445EB:   var_90.CAPTION = CVar(arg_10)
  loc_1E445F4:   Call var_90.Show
  loc_1E445FA:   GoTo loc_1E3B0CD
  loc_1E445FD: End If
  loc_1E44607: If (var_188 = "Duplicate Last Guest Check In") Then
  loc_1E44610:   Set var_90 = New fdWalkInEntry
  loc_1E4461F:   var_90.CAPTION = CVar(arg_10)
  loc_1E4462E:   var_90.FrmOpenType = "Last Guest"
  loc_1E44637:   Call var_90.Show
  loc_1E4463D:   GoTo loc_1E3B0CD
  loc_1E44640: End If
  loc_1E4464A: If (var_188 = "Look-up Room") Then
  loc_1E44653:   Set var_90 = New FdLookUpRoom
  loc_1E44658:   Do 'loop at: 1E545F1
  loc_1E44662:   var_90.CAPTION = CVar(arg_10)
  loc_1E4466B:   Call var_90.Show
  loc_1E44671:   GoTo loc_1E3B0CD
  loc_1E44674: End If
  loc_1E4467E: If (var_188 = "Look-up Guest by Name or Room") Then
  loc_1E446AD:   var_9C = InputBox("Inter Full or Partial name of the Guest", "Guest Name", var_124, var_150, var_170, var_1B8, var_1D8)
  loc_1E446CB:   If (var_9C = vbNullString) Then
  loc_1E446E4:     var_100 = "Room No."
  loc_1E446FA:     var_A4 = InputBox("Inter Room No. of the Guest", var_100, var_124, var_150, var_170, var_1B8, var_1D8)
  loc_1E4470E:   End If
  loc_1E44714:   Set var_90 = New InHouseGuestFolio
  loc_1E44723:   var_90.PGuestName = CVar(var_9C)
  loc_1E44733:   var_90.PRoomNo = CVar(var_A4)
  loc_1E44743:   var_90.CAPTION = CVar(arg_10)
  loc_1E4474C:   Call var_90.Show
  loc_1E44752:   GoTo loc_1E3B0CD
  loc_1E44755: End If
  loc_1E4475F: If (var_188 = "Change Guest Information") Then
  loc_1E4476E:   var_90.CAPTION = CVar(arg_10)
  loc_1E44772:   GoTo loc_1E3B0CD
  loc_1E44775: End If
  loc_1E4477F: If (var_188 = "Post Charges/Payments") Then
  loc_1E44788:   Set var_90 = New fdPaymentCharge
  loc_1E44797:   var_90.CAPTION = CVar(arg_10)
  loc_1E447A0:   Call var_90.Show
  loc_1E447A6:   GoTo loc_1E3B0CD
  loc_1E447A9: End If
  loc_1E447B3: If (var_188 = "Display Folio") Then
  loc_1E447BC:   Set var_90 = New fdDisplayFolio
  loc_1E447CB:   var_90.CAPTION = CVar(arg_10)
  loc_1E447D4:   Call var_90.Show
  loc_1E447DA:   GoTo loc_1E3B0CD
  loc_1E447DD: End If
  loc_1E447E7: If (var_188 = "Room Change Entry") Then
  loc_1E447F0:   Set var_90 = New fdRoomChange
  loc_1E447FF:   var_90.CAPTION = CVar(arg_10)
  loc_1E44808:   Call var_90.Show
  loc_1E4480E:   GoTo loc_1E3B0CD
  loc_1E44811: End If
  loc_1E4481B: If (var_188 = "Amend Stay") Then
  loc_1E44824:   Set var_90 = New fdAmendEntry
  loc_1E44833:   var_90.CAPTION = CVar(arg_10)
  loc_1E4483C:   Call var_90.Show
  loc_1E44842:   GoTo loc_1E3B0CD
  loc_1E44845: End If
  loc_1E4484F: If (var_188 = "Expense Entry") Then
  loc_1E44858:   Set var_90 = New FrmExpense
  loc_1E44867:   var_90.CAPTION = CVar(arg_10)
  loc_1E44870:   Call var_90.Show
  loc_1E44876:   GoTo loc_1E3B0CD
  loc_1E44879: End If
  loc_1E44883: If (var_188 = "Blank GRC") Then
  loc_1E4488C:   Set var_90 = New FrmGrcBlank
  loc_1E4489B:   var_90.CAPTION = CVar(arg_10)
  loc_1E448A4:   Call var_90.Show
  loc_1E448AA:   GoTo loc_1E3B0CD
  loc_1E448AD: End If
  loc_1E448B7: If (var_188 = "In House Guest Message") Then
  loc_1E448C0:   Set var_90 = New FrmHouGuestMsg
  loc_1E448CF:   var_90.CAPTION = CVar(arg_10)
  loc_1E448D8:   Call var_90.Show
  loc_1E448DE:   GoTo loc_1E3B0CD
  loc_1E448E1: End If
  loc_1E448EB: If (var_188 = "Register Wake up Calls") Then
  loc_1E448F4:   Set var_90 = New FrmGuestWakeUp
  loc_1E44903:   var_90.CAPTION = CVar(arg_10)
  loc_1E4490C:   Call var_90.Show
  loc_1E44912:   GoTo loc_1E3B0CD
  loc_1E44915: End If
  loc_1E4491F: If (var_188 = "Forex Receive Entry") Then
  loc_1E44928:   Set var_90 = New FrmForExRec
  loc_1E44937:   var_90.CAPTION = CVar(arg_10)
  loc_1E44940:   Call var_90.Show
  loc_1E44946:   GoTo loc_1E3B0CD
  loc_1E44949: End If
  loc_1E44953: If (var_188 = "Check-out/reverse check-out") Then
  loc_1E4495C:   Set var_90 = New FdCheckOut
  loc_1E4496B:   var_90.CAPTION = CVar(arg_10)
  loc_1E44974:   Call var_90.Show
  loc_1E4497A:   GoTo loc_1E3B0CD
  loc_1E4497D: End If
  loc_1E44987: If (var_188 = "Cashier Report") Then
  loc_1E44990:   Set var_90 = New rFomRepView
  loc_1E4499E:   var_90.GRepFormName = "HtCashierSumm"
  loc_1E449AE:   var_90.CAPTION = CVar(arg_10)
  loc_1E449B7:   Call var_90.Show
  loc_1E449BD:   GoTo loc_1E3B0CD
  loc_1E449C0: End If
  loc_1E449CA: If (var_188 = "Settlement Report") Then
  loc_1E449D3:   Set var_90 = New rFomRepView
  loc_1E449E1:   var_90.GRepFormName = "SettleRep"
  loc_1E449F1:   var_90.CAPTION = CVar(arg_10)
  loc_1E449FA:   Call var_90.Show
  loc_1E44A00:   GoTo loc_1E3B0CD
  loc_1E44A03: End If
  loc_1E44A0D: If (var_188 = "Cancel Bill Details") Then
  loc_1E44A16:   Set var_90 = New rFomRepView
  loc_1E44A24:   var_90.GRepFormName = "CancelBillDetails"
  loc_1E44A34:   var_90.CAPTION = CVar(arg_10)
  loc_1E44A3D:   Call var_90.Show
  loc_1E44A43:   GoTo loc_1E3B0CD
  loc_1E44A46: End If
  loc_1E44A50: If (var_188 = "FOM Sales Register") Then
  loc_1E44A59:   Set var_90 = New rFomRepView
  loc_1E44A67:   var_90.GRepFormName = "SaleRegister"
  loc_1E44A77:   var_90.CAPTION = CVar(arg_10)
  loc_1E44A80:   Call var_90.Show
  loc_1E44A86:   GoTo loc_1E3B0CD
  loc_1E44A89: End If
  loc_1E44A93: If (var_188 = "Room Wise Plan Detail") Then
  loc_1E44A9C:   Set var_90 = New rFomRepView
  loc_1E44AAA:   var_90.GRepFormName = "PlanPackSchedule"
  loc_1E44ABA:   var_90.CAPTION = CVar(arg_10)
  loc_1E44AC3:   Call var_90.Show
  loc_1E44AC9:   GoTo loc_1E3B0CD
  loc_1E44ACC: End If
  loc_1E44AD6: If (var_188 = "Expected Plan/Package F&B Details") Then
  loc_1E44ADF:   Set var_90 = New rFomRepView
  loc_1E44AED:   var_90.GRepFormName = "PlanPackService"
  loc_1E44AFD:   var_90.CAPTION = CVar(arg_10)
  loc_1E44B06:   Call var_90.Show
  loc_1E44B0C:   GoTo loc_1E3B0CD
  loc_1E44B0F: End If
  loc_1E44B19: If (var_188 = "Occupancy Report") Then
  loc_1E44B22:   Set var_90 = New rFomRepView
  loc_1E44B30:   var_90.GRepFormName = "OccupancyReport"
  loc_1E44B40:   var_90.CAPTION = CVar(arg_10)
  loc_1E44B49:   Call var_90.Show
  loc_1E44B4F:   GoTo loc_1E3B0CD
  loc_1E44B52: End If
  loc_1E44B5C: If (var_188 = "Company wise Nights") Then
  loc_1E44B65:   Set var_90 = New rFomRepView
  loc_1E44B73:   var_90.GRepFormName = "RoomNights"
  loc_1E44B83:   var_90.CAPTION = CVar(arg_10)
  loc_1E44B8C:   Call var_90.Show
  loc_1E44B92:   GoTo loc_1E3B0CD
  loc_1E44B95: End If
  loc_1E44B9F: If (var_188 = "Revenue During the stay") Then
  loc_1E44BA8:   Set var_90 = New rFomRepView
  loc_1E44BB6:   var_90.GRepFormName = "GuestwiseRevenue"
  loc_1E44BC6:   var_90.CAPTION = CVar(arg_10)
  loc_1E44BCF:   Call var_90.Show
  loc_1E44BD5:   GoTo loc_1E3B0CD
  loc_1E44BD8: End If
  loc_1E44BE2: If (var_188 = "EPBAX Call Report") Then
  loc_1E44BEB:   Set var_90 = New rRepTelPreview
  loc_1E44BF9:   var_90.GRepFormName = "EpabxCallRep"
  loc_1E44C09:   var_90.CAPTION = CVar(arg_10)
  loc_1E44C12:   Call var_90.Show
  loc_1E44C18:   GoTo loc_1E3B0CD
  loc_1E44C1B: End If
  loc_1E44C25: If Not (var_188 = "Instant House Count") Then
  loc_1E44C30:   If (var_188 = "Instant House Count ") Then
  loc_1E44C33:   End If
  loc_1E44C39:   Set var_90 = New rFomRepView
  loc_1E44C47:   var_90.GRepFormName = "InsHouseCount"
  loc_1E44C57:   var_90.CAPTION = CVar(arg_10)
  loc_1E44C60:   Call var_90.Show
  loc_1E44C66:   GoTo loc_1E3B0CD
  loc_1E44C69: End If
  loc_1E44C73: If (var_188 = "Cancel Bill Details") Then
  loc_1E44C7C:   Set var_90 = New rFomRepView
  loc_1E44C8A:   var_90.GRepFormName = "cancelBillDetails"
  loc_1E44C9A:   var_90.CAPTION = CVar(arg_10)
  loc_1E44CA3:   Do 'loop at: 1E54C3C
  loc_1E44CA3:   Call var_90.Show
  loc_1E44CA9:   GoTo loc_1E3B0CD
  loc_1E44CAC: End If
  loc_1E44CB6: If (var_188 = "Room Change History") Then
  loc_1E44CBF:   Set var_90 = New rFomRepView
  loc_1E44CCD:   var_90.GRepFormName = "RoomChangeHistory"
  loc_1E44CDD:   var_90.CAPTION = CVar(arg_10)
  loc_1E44CE6:   Call var_90.Show
  loc_1E44CEC:   GoTo loc_1E3B0CD
  loc_1E44CEF: End If
  loc_1E44CF9: If (var_188 = "Arrival And Departure Register") Then
  loc_1E44D02:   Set var_90 = New rFomRepView
  loc_1E44D10:   var_90.GRepFormName = "ArrDepReg"
  loc_1E44D20:   var_90.CAPTION = CVar(arg_10)
  loc_1E44D29:   Call var_90.Show
  loc_1E44D2F:   GoTo loc_1E3B0CD
  loc_1E44D32: End If
  loc_1E44D3C: If (var_188 = "FOM Sales Register") Then
  loc_1E44D45:   Set var_90 = New rFomRepView
  loc_1E44D53:   var_90.GRepFormName = "SalesRegister"
  loc_1E44D63:   var_90.CAPTION = CVar(arg_10)
  loc_1E44D6C:   Call var_90.Show
  loc_1E44D72:   GoTo loc_1E3B0CD
  loc_1E44D75: End If
  loc_1E44D7F: If (var_188 = "Occupancy Display") Then
  loc_1E44D88:   Set var_90 = New rFomRepView
  loc_1E44D96:   var_90.GRepFormName = "RoomOccDisp"
  loc_1E44DA6:   var_90.CAPTION = CVar(arg_10)
  loc_1E44DAF:   Call var_90.Show
  loc_1E44DB5:   Do 'loop at: 1E54D4E
  loc_1E44DB5:   GoTo loc_1E3B0CD
  loc_1E44DB8: End If
  loc_1E44DC2: If (var_188 = "Guest wise Analysis") Then
  loc_1E44DCB:   Set var_90 = New rFomRepView
  loc_1E44DD9:   var_90.GRepFormName = "GuestWiseAnalysis"
  loc_1E44DE9:   var_90.CAPTION = CVar(arg_10)
  loc_1E44DF2:   Call var_90.Show
  loc_1E44DF8:   GoTo loc_1E3B0CD
  loc_1E44DFB: End If
  loc_1E44E05: If (var_188 = "Company wise Analysis") Then
  loc_1E44E0E:   Set var_90 = New rFomRepView
  loc_1E44E1C:   var_90.GRepFormName = "CompanySumm"
  loc_1E44E2C:   var_90.CAPTION = CVar(arg_10)
  loc_1E44E35:   Do 'loop at: 1E54DD7
  loc_1E44E35:   Call var_90.Show
  loc_1E44E3B:   GoTo loc_1E3B0CD
  loc_1E44E3E: End If
  loc_1E44E48: If (var_188 = "Guestwise Charges Detail") Then
  loc_1E44E51:   Set var_90 = New rFomRepView
  loc_1E44E5F:   var_90.GRepFormName = "GuestChargesMIS"
  loc_1E44E6F:   var_90.CAPTION = CVar(arg_10)
  loc_1E44E78:   Call var_90.Show
  loc_1E44E7E:   GoTo loc_1E3B0CD
  loc_1E44E81: End If
  loc_1E44E8B: If (var_188 = "Room Occupancy") Then
  loc_1E44E94:   Set var_90 = New rFomRepView
  loc_1E44EA2:   var_90.GRepFormName = "RoomOccupancyReportSummary"
  loc_1E44EB2:   var_90.CAPTION = CVar(arg_10)
  loc_1E44EBB:   Call var_90.Show
  loc_1E44EC1:   GoTo loc_1E3B0CD
  loc_1E44EC4: End If
  loc_1E44ECE: If (var_188 = "Room Type Occupancy") Then
  loc_1E44ED7:   Set var_90 = New rFomRepView
  loc_1E44EE5:   var_90.GRepFormName = "RoomTypeOccupancyReport"
  loc_1E44EF5:   var_90.CAPTION = CVar(arg_10)
  loc_1E44EFE:   Call var_90.Show
  loc_1E44F04:   GoTo loc_1E3B0CD
  loc_1E44F07: End If
  loc_1E44F11: If (var_188 = "Room Wise Room Revenue") Then
  loc_1E44F1A:   Set var_90 = New rFomRepView
  loc_1E44F28:   var_90.GRepFormName = "RoomWiseRoomRevenueReport"
  loc_1E44F35:   Do 'loop at: 1E54ED7
  loc_1E44F38:   var_90.CAPTION = CVar(arg_10)
  loc_1E44F41:   Call var_90.Show
  loc_1E44F47:   GoTo loc_1E3B0CD
  loc_1E44F4A: End If
  loc_1E44F54: If (var_188 = "Occupancy Analysis") Then
  loc_1E44F5D:   Set var_90 = New rFomRepView
  loc_1E44F6B:   var_90.GRepFormName = "RoomOccupancyAnalysisReport"
  loc_1E44F7B:   var_90.CAPTION = CVar(arg_10)
  loc_1E44F84:   Call var_90.Show
  loc_1E44F8A:   GoTo loc_1E3B0CD
  loc_1E44F8D: End If
  loc_1E44F97: If (var_188 = "Room Status Report") Then
  loc_1E44FA0:   Set var_90 = New rRepHousePreview
  loc_1E44FAE:   var_90.GRepFormName = "RoomStatus"
  loc_1E44FBE:   Do 'loop at: 1E54F57
  loc_1E44FBE:   var_90.CAPTION = CVar(arg_10)
  loc_1E44FC7:   Call var_90.Show
  loc_1E44FCD:   GoTo loc_1E3B0CD
  loc_1E44FD0: End If
  loc_1E44FDA: If (var_188 = "Complaint Detail") Then
  loc_1E44FE3:   Set var_90 = New rRepHousePreview
  loc_1E44FF1:   var_90.GRepFormName = "ComplaintList"
  loc_1E45001:   var_90.CAPTION = CVar(arg_10)
  loc_1E4500A:   Call var_90.Show
  loc_1E45010:   GoTo loc_1E3B0CD
  loc_1E45013: End If
  loc_1E4501D: If Not (var_188 = "Stock Register") Then
  loc_1E45028:   If (var_188 = "Stock Register ") Then
  loc_1E4502B:   End If
  loc_1E45031:   Set var_90 = New rInventRepView
  loc_1E4503F:   var_90.GRepFormName = "StockRegStore"
  loc_1E4504F:   var_90.CAPTION = CVar(arg_10)
  loc_1E45058:   Call var_90.Show
  loc_1E4505E:   GoTo loc_1E3B0CD
  loc_1E45061: End If
  loc_1E4506B: If Not (var_188 = "Stock Summary") Then
  loc_1E45076:   If (var_188 = "Stock Summary ") Then
  loc_1E45079:   End If
  loc_1E4507F:   Set var_90 = New rInventRepView
  loc_1E4508D:   var_90.GRepFormName = "StockSummStore"
  loc_1E4509D:   var_90.CAPTION = CVar(arg_10)
  loc_1E450A6:   Call var_90.Show
  loc_1E450AC:   GoTo loc_1E3B0CD
  loc_1E450AF: End If
  loc_1E450B9: If (var_188 = "VAT Register") Then
  loc_1E450C2:   Set var_90 = New rInventRepView
  loc_1E450D0:   Do 'loop at: 1E55069
  loc_1E450D0:   var_90.GRepFormName = "VATRegister"
  loc_1E450E0:   var_90.CAPTION = CVar(arg_10)
  loc_1E450E9:   Call var_90.Show
  loc_1E450EF:   GoTo loc_1E3B0CD
  loc_1E450F2: End If
  loc_1E450FC: If (var_188 = "Purchase Ledger") Then
  loc_1E45105:   Set var_90 = New rInventRepView
  loc_1E45113:   var_90.GRepFormName = "PurchaseLedger"
  loc_1E45123:   var_90.CAPTION = CVar(arg_10)
  loc_1E4512C:   Call var_90.Show
  loc_1E45132:   GoTo loc_1E3B0CD
  loc_1E45135: End If
  loc_1E4513F: If Not (var_188 = "Issue Checklist") Then
  loc_1E4514A:   If (var_188 = "Issue CheckList") Then
  loc_1E4514D:   End If
  loc_1E45153:   Set var_90 = New rInventRepView
  loc_1E45161:   var_90.GRepFormName = "IssueReg"
  loc_1E45171:   var_90.CAPTION = CVar(arg_10)
  loc_1E4517A:   Call var_90.Show
  loc_1E45180:   GoTo loc_1E3B0CD
  loc_1E45183: End If
  loc_1E4518D: If (var_188 = "Store Issue Report") Then
  loc_1E45196:   Set var_90 = New rInventRepView
  loc_1E451A4:   var_90.GRepFormName = "StoreIssueReport"
  loc_1E451B4:   var_90.CAPTION = CVar(arg_10)
  loc_1E451BD:   Call var_90.Show
  loc_1E451C3:   GoTo loc_1E3B0CD
  loc_1E451C6: End If
  loc_1E451D0: If (var_188 = "Pending M.R.") Then
  loc_1E451D9:   Do 'loop at: 1E5517B
  loc_1E451D9:   Set var_90 = New rInventRepView
  loc_1E451E7:   var_90.GRepFormName = "PurchBill"
  loc_1E451F7:   var_90.CAPTION = CVar(arg_10)
  loc_1E45200:   Call var_90.Show
  loc_1E45206:   GoTo loc_1E3B0CD
  loc_1E45209: End If
  loc_1E45213: If (var_188 = "Stock Summary P/S Basis") Then
  loc_1E4521C:   Set var_90 = New rInventRepView
  loc_1E4522A:   var_90.GRepFormName = "StockSummaryP/SBasis"
  loc_1E4523A:   var_90.CAPTION = CVar(arg_10)
  loc_1E45243:   Call var_90.Show
  loc_1E45249:   GoTo loc_1E3B0CD
  loc_1E4524C: End If
  loc_1E45256: If (var_188 = "ABC Analysis") Then
  loc_1E4525F:   ' Referenced from: 1E551D6
  loc_1E4525F:   ' Referenced from: 1E55156
  loc_1E4525F:   ' Referenced from: 1E550CD
  loc_1E4525F:   ' Referenced from: 1E55044
  loc_1E4525F:   ' Referenced from: 1E54FBB
  loc_1E4525F:   ' Referenced from: 1E54F32
  loc_1E4525F:   ' Referenced from: 1E54EB2
  loc_1E4525F:   ' Referenced from: 1E54E32
  loc_1E4525F:   ' Referenced from: 1E54DB2
  loc_1E4525F:   ' Referenced from: 1E54D29
  loc_1E4525F:   ' Referenced from: 1E54CA0
  loc_1E4525F:   ' Referenced from: 1E54C17
  loc_1E4525F:   ' Referenced from: 1E54B8E
  loc_1E4525F:   ' Referenced from: 1E54B05
  loc_1E4525F:   ' Referenced from: 1E54A7C
  loc_1E4525F:   ' Referenced from: 1E549F3
  loc_1E4525F:   ' Referenced from: 1E54967
  loc_1E4525F:   ' Referenced from: 1E548E7
  loc_1E4525F:   ' Referenced from: 1E54867
  loc_1E4525F:   ' Referenced from: 1E547DE
  loc_1E4525F:   ' Referenced from: 1E5475E
  loc_1E4525F:   ' Referenced from: 1E546D5
  loc_1E4525F:   ' Referenced from: 1E54655
  loc_1E4525F:   ' Referenced from: 1E545CC
  loc_1E4525F:   ' Referenced from: 1E5454C
  loc_1E4525F:   ' Referenced from: 1E544CC
  loc_1E4525F:   ' Referenced from: 1E54443
  loc_1E4525F:   ' Referenced from: 1E543BA
  loc_1E4525F:   ' Referenced from: 1E54331
  loc_1E4525F:   ' Referenced from: 1E542AB
  loc_1E4525F:   ' Referenced from: 1E54225
  loc_1E4525F:   ' Referenced from: 1E5419F
  loc_1E4525F:   ' Referenced from: 1E54119
  loc_1E4525F:   ' Referenced from: 1E54093
  loc_1E4525F:   ' Referenced from: 1E5400D
  loc_1E4525F:   ' Referenced from: 1E53F87
  loc_1E4525F:   ' Referenced from: 1E53F01
  loc_1E4525F:   ' Referenced from: 1E53E7B
  loc_1E4525F:   ' Referenced from: 1E53DF2
  loc_1E4525F:   ' Referenced from: 1E53D69
  loc_1E4525F:   ' Referenced from: 1E53CE0
  loc_1E4525F:   ' Referenced from: 1E53C57
  loc_1E4525F:   ' Referenced from: 1E53BCE
  loc_1E4525F:   ' Referenced from: 1E53B45
  loc_1E4525F:   ' Referenced from: 1E53ABC
  loc_1E4525F:   ' Referenced from: 1E53A3C
  loc_1E4525F:   ' Referenced from: 1E539B3
  loc_1E4525F:   ' Referenced from: 1E5392A
  loc_1E4525F:   ' Referenced from: 1E538A1
  loc_1E4525F:   ' Referenced from: 1E53818
  loc_1E4525F:   ' Referenced from: 1E5378F
  loc_1E4525F:   ' Referenced from: 1E53706
  loc_1E4525F:   ' Referenced from: 1E5369A
  loc_1E4525F:   ' Referenced from: 1E5362E
  loc_1E4525F:   ' Referenced from: 1E535C2
  loc_1E4525F:   Do 'loop at: 1E551FB
  loc_1E4525F:   Set var_90 = New rInventRepView
  loc_1E4526D:   var_90.GRepFormName = "ABCAnalysis"
  loc_1E4527D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45286:   Call var_90.Show
  loc_1E4528C:   GoTo loc_1E3B0CD
  loc_1E4528F: End If
  loc_1E45299: If (var_188 = "Production Report I/R Basis") Then
  loc_1E452A2:   Set var_90 = New rInventRepView
  loc_1E452B0:   var_90.GRepFormName = "ProductionReport"
  loc_1E452C0:   var_90.CAPTION = CVar(arg_10)
  loc_1E452C9:   Call var_90.Show
  loc_1E452CF:   GoTo loc_1E3B0CD
  loc_1E452D2: End If
  loc_1E452DC: If (var_188 = "VAT Register II") Then
  loc_1E452E5:   Set var_90 = New rInventRepView
  loc_1E452EA:   Do 'loop at: 1E552A7
  loc_1E452F3:   var_90.GRepFormName = "VATRegisterII"
  loc_1E45303:   var_90.CAPTION = CVar(arg_10)
  loc_1E4530C:   Call var_90.Show
  loc_1E45312:   GoTo loc_1E3B0CD
  loc_1E45315: End If
  loc_1E4531F: If (var_188 = "VAT Register III") Then
  loc_1E45328:   Set var_90 = New rInventRepView
  loc_1E45336:   var_90.GRepFormName = "VATRegisterIII"
  loc_1E4533F:   ' Referenced from: 1E552E7
  loc_1E45346:   var_90.CAPTION = CVar(arg_10)
  loc_1E4534F:   Call var_90.Show
  loc_1E45355:   GoTo loc_1E3B0CD
  loc_1E45358:   Do 'loop at: 1E4BD66
  loc_1E45358: End If
  loc_1E45362: If (var_188 = "Form24 Annexure-A") Then
  loc_1E4536B:   Set var_90 = New rInventRepView
  loc_1E45379:   var_90.GRepFormName = "Form24AnnexureA"
  loc_1E45389:   var_90.CAPTION = CVar(arg_10)
  loc_1E45392:   Call var_90.Show
  loc_1E45398:   GoTo loc_1E3B0CD
  loc_1E4539B: End If
  loc_1E453A5: If (var_188 = "Form III") Then
  loc_1E453AE:   Set var_90 = New rInventRepView
  loc_1E453BC:   var_90.GRepFormName = "FormIII"
  loc_1E453CC:   var_90.CAPTION = CVar(arg_10)
  loc_1E453D5:   Call var_90.Show
  loc_1E453DB:   GoTo loc_1E3B0CD
  loc_1E453DE: End If
  loc_1E453E8: If (var_188 = "UPVAT XXIV") Then
  loc_1E453F1:   Set var_90 = New rInventRepView
  loc_1E453FF:   var_90.GRepFormName = "UPVATXXIV"
  loc_1E4540F:   var_90.CAPTION = CVar(arg_10)
  loc_1E45418:   Call var_90.Show
  loc_1E4541E:   GoTo loc_1E3B0CD
  loc_1E45421: End If
  loc_1E4542B: If (var_188 = "Pending Indent") Then
  loc_1E45434:   Set var_90 = New rInventRepView
  loc_1E45442:   var_90.GRepFormName = "IndentReg"
  loc_1E45452:   var_90.CAPTION = CVar(arg_10)
  loc_1E4545B:   Call var_90.Show
  loc_1E45461:   GoTo loc_1E3B0CD
  loc_1E45464: End If
  loc_1E4546E: If (var_188 = "KOT Wise Details") Then
  loc_1E45477:   Set var_90 = New rPOSRepView
  loc_1E45485:   var_90.GRepFormName = "KOTWiseDetails"
  loc_1E45495:   var_90.CAPTION = CVar(arg_10)
  loc_1E4549E:   Call var_90.Show
  loc_1E454A4:   GoTo loc_1E3B0CD
  loc_1E454A7: End If
  loc_1E454B1: If (var_188 = "Deleted Unsettled Bill") Then
  loc_1E454BA:   Set var_90 = New rPOSRepView
  loc_1E454C8:   var_90.GRepFormName = "DelBillUnsetBill"
  loc_1E454D8:   var_90.CAPTION = CVar(arg_10)
  loc_1E454E1:   Call var_90.Show
  loc_1E454E7:   GoTo loc_1E3B0CD
  loc_1E454EA: End If
  loc_1E454F4: If (var_188 = "Requisition Slip") Then
  loc_1E454FD:   Set var_90 = New pReqSlip
  loc_1E4550C:   var_90.CAPTION = CVar(arg_10)
  loc_1E45515:   Call var_90.Show
  loc_1E4551B:   GoTo loc_1E3B0CD
  loc_1E4551E: End If
  loc_1E45528: If (var_188 = "Stock Transfer") Then
  loc_1E45531:   Set var_90 = New RsKitchenStk
  loc_1E45540:   var_90.CAPTION = CVar(arg_10)
  loc_1E45549:   Call var_90.Show
  loc_1E4554F:   GoTo loc_1E3B0CD
  loc_1E45552: End If
  loc_1E4555C: If (var_188 = "Finish Material Receive Entry") Then
  loc_1E45565:   Set var_90 = New RsStoreRecEntry
  loc_1E45574:   var_90.CAPTION = CVar(arg_10)
  loc_1E4557D:   Call var_90.Show
  loc_1E45583:   GoTo loc_1E3B0CD
  loc_1E45586: End If
  loc_1E45590: If (var_188 = "Excise Invoice Cum Gate Pass") Then
  loc_1E45599:   Set var_90 = New RsKitchenMaterial
  loc_1E455A8:   var_90.CAPTION = CVar(arg_10)
  loc_1E455B1:   Call var_90.Show
  loc_1E455B7:   GoTo loc_1E3B0CD
  loc_1E455BA: End If
  loc_1E455C4: If (var_188 = "Block Master") Then
  loc_1E455CD:   Set var_90 = New frmBlockMast
  loc_1E455DC:   var_90.CAPTION = CVar(arg_10)
  loc_1E455E5:   Call var_90.Show
  loc_1E455EB:   GoTo loc_1E3B0CD
  loc_1E455EE: End If
  loc_1E455F8: If (var_188 = "Complaint Master") Then
  loc_1E45601:   Set var_90 = New FrmComplaintMast
  loc_1E45610:   var_90.CAPTION = CVar(arg_10)
  loc_1E45619:   Call var_90.Show
  loc_1E4561F:   GoTo loc_1E3B0CD
  loc_1E45622: End If
  loc_1E4562C: If (var_188 = "Complaint Clearance") Then
  loc_1E45635:   Set var_90 = New FrmComplaintClearing
  loc_1E45644:   var_90.CAPTION = CVar(arg_10)
  loc_1E4564D:   Call var_90.Show
  loc_1E45653:   GoTo loc_1E3B0CD
  loc_1E45656: End If
  loc_1E45660: If (var_188 = "Lost / Found Entry") Then
  loc_1E45669:   Set var_90 = New FrmLostFound
  loc_1E45678:   var_90.CAPTION = CVar(arg_10)
  loc_1E45681:   Call var_90.Show
  loc_1E45687:   GoTo loc_1E3B0CD
  loc_1E4568A: End If
  loc_1E45694: If (var_188 = "Claim Entry") Then
  loc_1E4569D:   Set var_90 = New FrmClaimEntry
  loc_1E456AC:   var_90.CAPTION = CVar(arg_10)
  loc_1E456B5:   Call var_90.Show
  loc_1E456BB:   GoTo loc_1E3B0CD
  loc_1E456BE: End If
  loc_1E456C8: If (var_188 = "Display Rack") Then
  loc_1E456D1:   Set var_90 = New FdLookUpRoomNo
  loc_1E456E0:   var_90.CAPTION = CVar(arg_10)
  loc_1E456E9:   Call var_90.Show
  loc_1E456EF:   GoTo loc_1E3B0CD
  loc_1E456F2: End If
  loc_1E456FC: If (var_188 = "House Keeping Screen") Then
  loc_1E45705:   Set var_90 = New HHouseKeeping
  loc_1E45714:   var_90.CAPTION = CVar(arg_10)
  loc_1E4571D:   Call var_90.Show
  loc_1E45723:   GoTo loc_1E3B0CD
  loc_1E45726: End If
  loc_1E45730: If (var_188 = "Check Out Clearance Screen") Then
  loc_1E45739:   Set var_90 = New HRoomCheckOutClearance
  loc_1E45748:   var_90.CAPTION = CVar(arg_10)
  loc_1E45751:   Call var_90.Show
  loc_1E45757:   GoTo loc_1E3B0CD
  loc_1E4575A: End If
  loc_1E45764: If (var_188 = "Room Block") Then
  loc_1E4576D:   Set var_90 = New HKRoomBlock
  loc_1E4577C:   var_90.CAPTION = CVar(arg_10)
  loc_1E45785:   Call var_90.Show
  loc_1E4578B:   GoTo loc_1E3B0CD
  loc_1E4578E: End If
  loc_1E45798: If (var_188 = "Travel Agency Posting") Then
  loc_1E457A1:   Set var_90 = New TravelAgencyPost
  loc_1E457B0:   var_90.CAPTION = CVar(arg_10)
  loc_1E457B9:   Call var_90.Show
  loc_1E457BF:   GoTo loc_1E3B0CD
  loc_1E457C2: End If
  loc_1E457CC: If (var_188 = "Instant House Count") Then
  loc_1E457D5:   Set var_90 = New rFomRepView
  loc_1E457E3:   var_90.GRepFormName = "InsHouseCount"
  loc_1E457F3:   var_90.CAPTION = CVar(arg_10)
  loc_1E457FC:   Call var_90.Show
  loc_1E45802:   GoTo loc_1E3B0CD
  loc_1E45805: End If
  loc_1E4580F: If (var_188 = "Room Inventory") Then
  loc_1E45818:   Set var_90 = New rFomRepView
  loc_1E45826:   var_90.GRepFormName = "RoomInventory"
  loc_1E45836:   var_90.CAPTION = CVar(arg_10)
  loc_1E4583F:   Call var_90.Show
  loc_1E45845:   GoTo loc_1E3B0CD
  loc_1E45848: End If
  loc_1E45852: If (var_188 = "Guest In House") Then
  loc_1E4585B:   Set var_90 = New rFomRepView
  loc_1E45869:   var_90.GRepFormName = "GuestInHouse"
  loc_1E45879:   var_90.CAPTION = CVar(arg_10)
  loc_1E45882:   Call var_90.Show
  loc_1E45888:   GoTo loc_1E3B0CD
  loc_1E4588B: End If
  loc_1E45895: If (var_188 = "House Keeping Report") Then
  loc_1E4589E:   Set var_90 = New rFomRepView
  loc_1E458AC:   var_90.GRepFormName = "HouseKeeping"
  loc_1E458BC:   var_90.CAPTION = CVar(arg_10)
  loc_1E458C5:   Call var_90.Show
  loc_1E458CB:   GoTo loc_1E3B0CD
  loc_1E458CE: End If
  loc_1E458D8: If (var_188 = "Arrival & Departure List") Then
  loc_1E458E1:   Set var_90 = New rFomRepView
  loc_1E458EF:   var_90.GRepFormName = "ArrivalDepList"
  loc_1E458FF:   var_90.CAPTION = CVar(arg_10)
  loc_1E45908:   Call var_90.Show
  loc_1E4590E:   GoTo loc_1E3B0CD
  loc_1E45911: End If
  loc_1E4591B: If (var_188 = "Charge Payment Detail") Then
  loc_1E45924:   Set var_90 = New rFomRepView
  loc_1E45932:   var_90.GRepFormName = "GuestChgJournal"
  loc_1E45942:   var_90.CAPTION = CVar(arg_10)
  loc_1E4594B:   Call var_90.Show
  loc_1E45951:   GoTo loc_1E3B0CD
  loc_1E45954: End If
  loc_1E4595E: If (var_188 = "Payments By Cashier") Then
  loc_1E45967:   Set var_90 = New rFomRepView
  loc_1E45975:   var_90.GRepFormName = "PmtByCashier"
  loc_1E45985:   var_90.CAPTION = CVar(arg_10)
  loc_1E4598E:   Call var_90.Show
  loc_1E45994:   GoTo loc_1E3B0CD
  loc_1E45997: End If
  loc_1E459A1: If (var_188 = "Form  C") Then
  loc_1E459AA:   Set var_90 = New rRepReserv
  loc_1E459B8:   var_90.GRepFormName = "FormCReport"
  loc_1E459C8:   var_90.CAPTION = CVar(arg_10)
  loc_1E459D1:   Call var_90.Show
  loc_1E459D7:   GoTo loc_1E3B0CD
  loc_1E459DA: End If
  loc_1E459E4: If (var_188 = "Tourism Form 1") Then
  loc_1E459ED:   Set var_90 = New rRepReserv
  loc_1E459FB:   var_90.GRepFormName = "Form1TourismReport"
  loc_1E45A0B:   var_90.CAPTION = CVar(arg_10)
  loc_1E45A14:   Call var_90.Show
  loc_1E45A1A:   GoTo loc_1E3B0CD
  loc_1E45A1D: End If
  loc_1E45A27: If (var_188 = "Tourism Form 2") Then
  loc_1E45A30:   Set var_90 = New rRepReserv
  loc_1E45A3E:   var_90.GRepFormName = "Form2TourismReport"
  loc_1E45A4E:   var_90.CAPTION = CVar(arg_10)
  loc_1E45A57:   Call var_90.Show
  loc_1E45A5D:   GoTo loc_1E3B0CD
  loc_1E45A60: End If
  loc_1E45A6A: If (var_188 = "Tourism Form 5") Then
  loc_1E45A73:   Set var_90 = New rRepReserv
  loc_1E45A81:   var_90.GRepFormName = "Form5TourismReport"
  loc_1E45A91:   var_90.CAPTION = CVar(arg_10)
  loc_1E45A9A:   Call var_90.Show
  loc_1E45AA0:   GoTo loc_1E3B0CD
  loc_1E45AA3: End If
  loc_1E45AAD: If (var_188 = "Form -3 (Luxury Tax Register)") Then
  loc_1E45AB6:   Set var_90 = New rRepReserv
  loc_1E45AC4:   var_90.GRepFormName = "LuxuryTaxRegister"
  loc_1E45AD4:   var_90.CAPTION = CVar(arg_10)
  loc_1E45ADD:   Call var_90.Show
  loc_1E45AE3:   GoTo loc_1E3B0CD
  loc_1E45AE6: End If
  loc_1E45AF0: If (var_188 = "Tourism Form 6") Then
  loc_1E45AF9:   Set var_90 = New rRepReserv
  loc_1E45B07:   var_90.GRepFormName = "Form6TourismReport"
  loc_1E45B17:   var_90.CAPTION = CVar(arg_10)
  loc_1E45B20:   Call var_90.Show
  loc_1E45B26:   GoTo loc_1E3B0CD
  loc_1E45B29: End If
  loc_1E45B33: If (var_188 = "Tourism Form 4") Then
  loc_1E45B3C:   Set var_90 = New rRepReserv
  loc_1E45B4A:   var_90.GRepFormName = "Form4TourismReport"
  loc_1E45B5A:   var_90.CAPTION = CVar(arg_10)
  loc_1E45B63:   Call var_90.Show
  loc_1E45B69:   GoTo loc_1E3B0CD
  loc_1E45B6C: End If
  loc_1E45B76: If (var_188 = "Luxury Tax Report") Then
  loc_1E45B7F:   Set var_90 = New rRepReserv
  loc_1E45B8D:   var_90.GRepFormName = "LuxuryTaxRegisterI"
  loc_1E45B9D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45BA6:   Call var_90.Show
  loc_1E45BAC:   GoTo loc_1E3B0CD
  loc_1E45BAF: End If
  loc_1E45BB9: If (var_188 = "Monthly Return") Then
  loc_1E45BC2:   Set var_90 = New rRepReserv
  loc_1E45BD0:   var_90.GRepFormName = "MonthlyStatisticalReturn"
  loc_1E45BE0:   var_90.CAPTION = CVar(arg_10)
  loc_1E45BE9:   Call var_90.Show
  loc_1E45BEF:   GoTo loc_1E3B0CD
  loc_1E45BF2: End If
  loc_1E45BFC: If (var_188 = "L.T. FORM II") Then
  loc_1E45C05:   Set var_90 = New rRepReserv
  loc_1E45C13:   var_90.GRepFormName = "LTFORMII"
  loc_1E45C23:   var_90.CAPTION = CVar(arg_10)
  loc_1E45C2C:   Call var_90.Show
  loc_1E45C32:   GoTo loc_1E3B0CD
  loc_1E45C35: End If
  loc_1E45C3F: If (var_188 = "L.T. FORM IV") Then
  loc_1E45C48:   Set var_90 = New rRepReserv
  loc_1E45C56:   var_90.GRepFormName = "LTFORMIV"
  loc_1E45C66:   var_90.CAPTION = CVar(arg_10)
  loc_1E45C6F:   Call var_90.Show
  loc_1E45C75:   GoTo loc_1E3B0CD
  loc_1E45C78: End If
  loc_1E45C82: If (var_188 = "Reservation/Cancellation") Then
  loc_1E45C8D:   Set var_90 = MemVar_1F934E8 
  loc_1E45C9D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45CA6:   Call var_90.Show
  loc_1E45CAC:   GoTo loc_1E3B0CD
  loc_1E45CAF: End If
  loc_1E45CB9: If (var_188 = "Reservation Status Screen") Then
  loc_1E45CC2:   Set var_90 = New FrmReservationStatus
  loc_1E45CD1:   var_90.CAPTION = CVar(arg_10)
  loc_1E45CDA:   Call var_90.Show
  loc_1E45CE0:   GoTo loc_1E3B0CD
  loc_1E45CE3: End If
  loc_1E45CED: If (var_188 = "Add/Edit/Delete Group With Reservation") Then
  loc_1E45CF8:   Set var_90 = MemVar_1F934FC 
  loc_1E45D08:   var_90.CAPTION = CVar(arg_10)
  loc_1E45D11:   Call var_90.Show
  loc_1E45D17:   GoTo loc_1E3B0CD
  loc_1E45D1A: End If
  loc_1E45D24: If (var_188 = "Look Up Room types") Then
  loc_1E45D2F:   Set var_90 = MemVar_1F93510 
  loc_1E45D3F:   var_90.CAPTION = CVar(arg_10)
  loc_1E45D48:   Call var_90.Show
  loc_1E45D4E:   GoTo loc_1E3B0CD
  loc_1E45D51: End If
  loc_1E45D5B: If (var_188 = "Look Up Rooms") Then
  loc_1E45D66:   Set var_90 = MemVar_1F93524 
  loc_1E45D76:   var_90.CAPTION = CVar(arg_10)
  loc_1E45D7F:   Call var_90.Show
  loc_1E45D85:   GoTo loc_1E3B0CD
  loc_1E45D88: End If
  loc_1E45D92: If (var_188 = "Reservation With History") Then
  loc_1E45D9D:   Set var_90 = MemVar_1F93538 
  loc_1E45DAD:   var_90.CAPTION = CVar(arg_10)
  loc_1E45DB6:   Call var_90.Show
  loc_1E45DBC:   GoTo loc_1E3B0CD
  loc_1E45DBF: End If
  loc_1E45DC9: If (var_188 = "Advance Deposite") Then
  loc_1E45DD4:   Set var_90 = MemVar_1F9354C 
  loc_1E45DE6:   var_90.OpenType = 1
  loc_1E45DF8:   var_90.OpenMode = 2
  loc_1E45E07:   var_90.AdvType = "ADRES"
  loc_1E45E17:   var_90.CAPTION = CVar(arg_10)
  loc_1E45E20:   Call var_90.Show
  loc_1E45E26:   GoTo loc_1E3B0CD
  loc_1E45E29: End If
  loc_1E45E33: If (var_188 = "Confirmation Letters") Then
  loc_1E45E3C:   Set var_90 = New rRepReserv
  loc_1E45E4A:   var_90.GRepFormName = "ConfirmLetter"
  loc_1E45E5A:   var_90.CAPTION = CVar(arg_10)
  loc_1E45E63:   Call var_90.Show
  loc_1E45E69:   GoTo loc_1E3B0CD
  loc_1E45E6C: End If
  loc_1E45E76: If (var_188 = "Cancellation Letters") Then
  loc_1E45E7F:   Set var_90 = New rRepReserv
  loc_1E45E8D:   var_90.GRepFormName = "CancellLetter"
  loc_1E45E9D:   var_90.CAPTION = CVar(arg_10)
  loc_1E45EA6:   Call var_90.Show
  loc_1E45EAC:   GoTo loc_1E3B0CD
  loc_1E45EAF: End If
  loc_1E45EB9: If (var_188 = "Registration Card") Then
  loc_1E45EC2:   Set var_90 = New rRepReserv
  loc_1E45ED0:   var_90.GRepFormName = "RegistrationCard"
  loc_1E45EE0:   var_90.CAPTION = CVar(arg_10)
  loc_1E45EE9:   Call var_90.Show
  loc_1E45EEF:   GoTo loc_1E3B0CD
  loc_1E45EF2: End If
  loc_1E45EFC: If (var_188 = "Reservation Status") Then
  loc_1E45F05:   Set var_90 = New rFomRepView
  loc_1E45F13:   var_90.GRepFormName = "ReservationStatus"
  loc_1E45F23:   var_90.CAPTION = CVar(arg_10)
  loc_1E45F2C:   Call var_90.Show
  loc_1E45F32:   GoTo loc_1E3B0CD
  loc_1E45F35: End If
  loc_1E45F3F: If (var_188 = "Reservation Status Arrival") Then
  loc_1E45F48:   Set var_90 = New rFomRepView
  loc_1E45F56:   var_90.GRepFormName = "ReservStatusArrival"
  loc_1E45F66:   var_90.CAPTION = CVar(arg_10)
  loc_1E45F6F:   Call var_90.Show
  loc_1E45F75:   GoTo loc_1E3B0CD
  loc_1E45F78: End If
  loc_1E45F82: If (var_188 = "Reservation Status In-House") Then
  loc_1E45F8B:   Set var_90 = New rFomRepView
  loc_1E45F99:   var_90.GRepFormName = "ReservStatusInHouse"
  loc_1E45FA9:   var_90.CAPTION = CVar(arg_10)
  loc_1E45FB2:   Call var_90.Show
  loc_1E45FB8:   GoTo loc_1E3B0CD
  loc_1E45FBB: End If
  loc_1E45FC5: If (var_188 = "Group Pickup Report") Then
  loc_1E45FC8:   GoTo loc_1E3B0CD
  loc_1E45FCB: End If
  loc_1E45FD5: If (var_188 = "Group Arrival Report") Then
  loc_1E45FD8:   GoTo loc_1E3B0CD
  loc_1E45FDB: End If
  loc_1E45FE5: If (var_188 = "Movement List") Then
  loc_1E45FEE:   Set var_90 = New rFomRepView
  loc_1E45FFC:   var_90.GRepFormName = "MovementList"
  loc_1E4600C:   var_90.CAPTION = CVar(arg_10)
  loc_1E46015:   Call var_90.Show
  loc_1E4601B:   GoTo loc_1E3B0CD
  loc_1E4601E: End If
  loc_1E46028: If (var_188 = "Arrival List") Then
  loc_1E46031:   Set var_90 = New rFomRepView
  loc_1E4603F:   var_90.GRepFormName = "MovementList"
  loc_1E4604F:   var_90.CAPTION = CVar(arg_10)
  loc_1E46058:   Call var_90.Show
  loc_1E4605E:   GoTo loc_1E3B0CD
  loc_1E46061: End If
  loc_1E4606B: If (var_188 = "Bill Change Report") Then
  loc_1E46074:   Set var_90 = New rFomRepView
  loc_1E46082:   var_90.GRepFormName = "FOMBillChangeReport"
  loc_1E46092:   var_90.CAPTION = CVar(arg_10)
  loc_1E4609B:   Call var_90.Show
  loc_1E460A1:   GoTo loc_1E3B0CD
  loc_1E460A4: End If
  loc_1E460AE: If (var_188 = "Check In Register") Then
  loc_1E460B7:   Set var_90 = New rFomRepView
  loc_1E460C5:   var_90.GRepFormName = "ChkInRegister"
  loc_1E460D5:   var_90.CAPTION = CVar(arg_10)
  loc_1E460DE:   Call var_90.Show
  loc_1E460E4:   GoTo loc_1E3B0CD
  loc_1E460E7: End If
  loc_1E460F1: If (var_188 = "Expected Check Out") Then
  loc_1E460FA:   Set var_90 = New rFomRepView
  loc_1E46108:   var_90.GRepFormName = "ExpectedDeparture"
  loc_1E46118:   var_90.CAPTION = CVar(arg_10)
  loc_1E46121:   Call var_90.Show
  loc_1E46127:   GoTo loc_1E3B0CD
  loc_1E4612A: End If
  loc_1E46134: If (var_188 = "Advance Recd.") Then
  loc_1E4613D:   Set var_90 = New rFomRepView
  loc_1E4614B:   var_90.GRepFormName = "ResvAdvRecd"
  loc_1E4615B:   var_90.CAPTION = CVar(arg_10)
  loc_1E46164:   Call var_90.Show
  loc_1E4616A:   GoTo loc_1E3B0CD
  loc_1E4616D: End If
  loc_1E46177: If (var_188 = "Advance Recd. Arrival") Then
  loc_1E46180:   Set var_90 = New rFomRepView
  loc_1E4618E:   var_90.GRepFormName = "ResvAdvRecdArr"
  loc_1E4619E:   var_90.CAPTION = CVar(arg_10)
  loc_1E461A7:   Call var_90.Show
  loc_1E461AD:   GoTo loc_1E3B0CD
  loc_1E461B0: End If
  loc_1E461BA: If (var_188 = "Advance Recd. In-House") Then
  loc_1E461C3:   Set var_90 = New rFomRepView
  loc_1E461D1:   var_90.GRepFormName = "ResvAdvRecdInHouse"
  loc_1E461E1:   var_90.CAPTION = CVar(arg_10)
  loc_1E461EA:   Call var_90.Show
  loc_1E461F0:   GoTo loc_1E3B0CD
  loc_1E461F3: End If
  loc_1E461FD: If (var_188 = "7-730 Days Forecast") Then
  loc_1E46206:   Set var_90 = New rFomRepView
  loc_1E46214:   var_90.GRepFormName = "DaysForecastRep"
  loc_1E46224:   var_90.CAPTION = CVar(arg_10)
  loc_1E4622D:   Call var_90.Show
  loc_1E46233:   GoTo loc_1E3B0CD
  loc_1E46236: End If
  loc_1E46240: If (var_188 = "23 Day Room Availability Forecast") Then
  loc_1E46249:   Set var_90 = New resRoomNo
  loc_1E46258:   var_90.CAPTION = CVar(arg_10)
  loc_1E4626A:   var_90.Frame2.Visible = True
  loc_1E46271:   GoTo loc_1E3B0CD
  loc_1E46274: End If
  loc_1E4627E: If (var_188 = "23 Day Room Type Availability Forecast") Then
  loc_1E46287:   Set var_90 = New resRoomType
  loc_1E46296:   var_90.CAPTION = CVar(arg_10)
  loc_1E462A8:   var_90.Frame2.Visible = True
  loc_1E462AF:   GoTo loc_1E3B0CD
  loc_1E462B2: End If
  loc_1E462BC: If Not (var_188 = "Package Forecast") Then
  loc_1E462C7:   If (var_188 = "Package Forecast ") Then
  loc_1E462CA:   End If
  loc_1E462D0:   Set var_90 = New rFomRepView
  loc_1E462DE:   var_90.GRepFormName = "PackageForecast"
  loc_1E462EE:   var_90.CAPTION = CVar(arg_10)
  loc_1E462F7:   Call var_90.Show
  loc_1E462FD:   GoTo loc_1E3B0CD
  loc_1E46300: End If
  loc_1E4630A: If (var_188 = "Rooms Op.Stock Entry") Then
  loc_1E46317:   If (MemVar_1F921B8 = vbNullString) Then
  loc_1E46320:     Set var_90 = New FrmChangeDepart
  loc_1E46325:     var_CC = 1
  loc_1E4632E:     Call var_90.Show
  loc_1E46336:     var_CC = 0
  loc_1E4633F:     Call var_90.ZOrder
  loc_1E46345:   End If
  loc_1E4634D:   Set var_90 = New HKRoomOpStk
  loc_1E4635C:   var_90.CAPTION = CVar(arg_10)
  loc_1E46365:   Call var_90.Show
  loc_1E4636B:   GoTo loc_1E3B0CD
  loc_1E4636E: End If
  loc_1E46378: If (var_188 = "House Keeping Op.Stock Entry") Then
  loc_1E46385:   If (MemVar_1F921B8 = vbNullString) Then
  loc_1E4638E:     Set var_90 = New FrmChangeDepart
  loc_1E46393:     var_CC = 1
  loc_1E4639C:     Call var_90.Show
  loc_1E463A4:     var_CC = 0
  loc_1E463AD:     Call var_90.ZOrder
  loc_1E463B3:   End If
  loc_1E463BB:   Set var_90 = New HKHouseOpStk
  loc_1E463CA:   var_90.CAPTION = CVar(arg_10)
  loc_1E463D3:   Call var_90.Show
  loc_1E463D9:   GoTo loc_1E3B0CD
  loc_1E463DC: End If
  loc_1E463E6: If (var_188 = "Issue/Recd. Entry") Then
  loc_1E463EF:   Set var_90 = New FrmStockTransfer
  loc_1E463FE:   var_90.CAPTION = CVar(arg_10)
  loc_1E46407:   Call var_90.Show
  loc_1E4640D:   GoTo loc_1E3B0CD
  loc_1E46410: End If
  loc_1E4641A: If (var_188 = "House Keeping Screen") Then
  loc_1E46423:   Set var_90 = New HHouseKeeping
  loc_1E46432:   var_90.CAPTION = CVar(arg_10)
  loc_1E4643B:   Call var_90.Show
  loc_1E46441:   GoTo loc_1E3B0CD
  loc_1E46444: End If
  loc_1E4644E: If (var_188 = "Issue Register") Then
  loc_1E46457:   Set var_90 = New rRepHousePreview
  loc_1E46465:   var_90.GRepFormName = "IssueRegister"
  loc_1E46475:   var_90.CAPTION = CVar(arg_10)
  loc_1E4647E:   Call var_90.Show
  loc_1E46484:   GoTo loc_1E3B0CD
  loc_1E46487: End If
  loc_1E46491: If (var_188 = "Changes Department") Then
  loc_1E4649A:   Set var_90 = New FrmChangeDepart
  loc_1E464A9:   var_90.CAPTION = CVar(arg_10)
  loc_1E464B2:   Call var_90.Show
  loc_1E464B8:   GoTo loc_1E3B0CD
  loc_1E464BB: End If
  loc_1E464C5: If (var_188 = "Godown Master") Then
  loc_1E464CE:   Set var_90 = New Godown
  loc_1E464DD:   var_90.CAPTION = CVar(arg_10)
  loc_1E464E6:   Call var_90.Show
  loc_1E464EC:   GoTo loc_1E3B0CD
  loc_1E464EF: End If
  loc_1E464F9: If (var_188 = "Gravy Item Entry") Then
  loc_1E46502:   Set var_90 = New RsGravyItemEntry
  loc_1E46511:   var_90.CAPTION = CVar(arg_10)
  loc_1E4651A:   Call var_90.Show
  loc_1E46520:   GoTo loc_1E3B0CD
  loc_1E46523: End If
  loc_1E4652D: If (var_188 = "Indent") Then
  loc_1E46536:   Set var_90 = New PIndent
  loc_1E46545:   var_90.CAPTION = CVar(arg_10)
  loc_1E4654E:   Call var_90.Show
  loc_1E46554:   GoTo loc_1E3B0CD
  loc_1E46557: End If
  loc_1E46561: If (var_188 = "Purchase Order") Then
  loc_1E4656A:   Set var_90 = New pPOrder
  loc_1E46579:   var_90.CAPTION = CVar(arg_10)
  loc_1E46582:   Call var_90.Show
  loc_1E46588:   GoTo loc_1E3B0CD
  loc_1E4658B: End If
  loc_1E46595: If (var_188 = "M.R. Entry") Then
  loc_1E4659E:   Set var_90 = New pMREntry
  loc_1E465AD:   var_90.CAPTION = CVar(arg_10)
  loc_1E465B6:   Call var_90.Show
  loc_1E465BC:   GoTo loc_1E3B0CD
  loc_1E465BF: End If
  loc_1E465C9: If (var_188 = "Purchase Bill") Then
  loc_1E465D2:   Set var_90 = New pPBill
  loc_1E465E1:   var_90.CAPTION = CVar(arg_10)
  loc_1E465EA:   Call var_90.Show
  loc_1E465F0:   GoTo loc_1E3B0CD
  loc_1E465F3: End If
  loc_1E465FD: If (var_188 = "Expense Voucher") Then
  loc_1E46606:   Set var_90 = New FaTaxVoucher
  loc_1E46614:   var_90.OpenAs = "Expense"
  loc_1E46624:   var_90.CAPTION = CVar(arg_10)
  loc_1E4662D:   Call var_90.Show
  loc_1E46633:   GoTo loc_1E3B0CD
  loc_1E46636: End If
  loc_1E46640: If (var_188 = "Requistion Slip Entry") Then
  loc_1E46649:   Set var_90 = New pReqSlip
  loc_1E46658:   var_90.CAPTION = CVar(arg_10)
  loc_1E46661:   Call var_90.Show
  loc_1E46667:   GoTo loc_1E3B0CD
  loc_1E4666A: End If
  loc_1E46674: If (var_188 = "Stock Issue on Requisition") Then
  loc_1E4667D:   Set var_90 = New pGIss
  loc_1E4668C:   var_90.CAPTION = CVar(arg_10)
  loc_1E46695:   Call var_90.Show
  loc_1E4669B:   GoTo loc_1E3B0CD
  loc_1E4669E: End If
  loc_1E466A8: If (var_188 = "Kitchen Closing Stock") Then
  loc_1E466B1:   Set var_90 = New kClStk
  loc_1E466C0:   var_90.CAPTION = CVar(arg_10)
  loc_1E466C9:   Call var_90.Show
  loc_1E466CF:   GoTo loc_1E3B0CD
  loc_1E466D2: End If
  loc_1E466DC: If (var_188 = "Kitchen stock Transfer") Then
  loc_1E466E5:   Set var_90 = New RsKitchenStk
  loc_1E466F4:   var_90.CAPTION = CVar(arg_10)
  loc_1E466FD:   Call var_90.Show
  loc_1E46703:   GoTo loc_1E3B0CD
  loc_1E46706: End If
  loc_1E46710: If (var_188 = "Kitchen Stock Report I/R Basis") Then
  loc_1E46719:   Set var_90 = New rInventRepView
  loc_1E46727:   var_90.GRepFormName = "KitchenStkRep"
  loc_1E46737:   var_90.CAPTION = CVar(arg_10)
  loc_1E46740:   Call var_90.Show
  loc_1E46746:   GoTo loc_1E3B0CD
  loc_1E46749: End If
  loc_1E46753: If Not (var_188 = "Purchase Register") Then
  loc_1E4675E:   If (var_188 = "Purchase Register ") Then
  loc_1E46761:   End If
  loc_1E46767:   Set var_90 = New rInventRepView
  loc_1E46775:   var_90.GRepFormName = "PurchaseReg"
  loc_1E46785:   var_90.CAPTION = CVar(arg_10)
  loc_1E4678E:   Call var_90.Show
  loc_1E46794:   GoTo loc_1E3B0CD
  loc_1E46797: End If
  loc_1E467A1: If Not (var_188 = "Purchase Summary") Then
  loc_1E467AC:   If (var_188 = "Purchase Summary ") Then
  loc_1E467AF:   End If
  loc_1E467B5:   Set var_90 = New rInventRepView
  loc_1E467C3:   var_90.GRepFormName = "PurchaseSumm"
  loc_1E467D3:   var_90.CAPTION = CVar(arg_10)
  loc_1E467DC:   Call var_90.Show
  loc_1E467E2:   GoTo loc_1E3B0CD
  loc_1E467E5: End If
  loc_1E467EF: If (var_188 = "Pending Purchase Order") Then
  loc_1E467F8:   Set var_90 = New rInventRepView
  loc_1E46806:   var_90.GRepFormName = "PurchOrder"
  loc_1E46816:   var_90.CAPTION = CVar(arg_10)
  loc_1E4681F:   Call var_90.Show
  loc_1E46825:   GoTo loc_1E3B0CD
  loc_1E46828: End If
  loc_1E46832: If (var_188 = "Cash/Credit Purchase") Then
  loc_1E4683B:   Set var_90 = New rInventRepView
  loc_1E46849:   var_90.GRepFormName = "CashCreditPurch"
  loc_1E46859:   var_90.CAPTION = CVar(arg_10)
  loc_1E46862:   Call var_90.Show
  loc_1E46868:   GoTo loc_1E3B0CD
  loc_1E4686B: End If
  loc_1E46875: If Not (var_188 = "Stock Register") Then
  loc_1E46880:   If Not (var_188 = "Stock Register  ") Then
  loc_1E4688B:     If (var_188 = "Stock Register ") Then
  loc_1E4688E:     End If
  loc_1E4688E:   End If
  loc_1E46894:   Set var_90 = New rInventRepView
  loc_1E468A2:   var_90.GRepFormName = "StockRegStore"
  loc_1E468B2:   var_90.CAPTION = CVar(arg_10)
  loc_1E468BB:   Call var_90.Show
  loc_1E468C1:   GoTo loc_1E3B0CD
  loc_1E468C4: End If
  loc_1E468CE: If Not (var_188 = "Stock Summary") Then
  loc_1E468D9:   If (var_188 = "Stock Summary  ") Then
  loc_1E468DC:   End If
  loc_1E468E2:   Set var_90 = New rInventRepView
  loc_1E468F0:   var_90.GRepFormName = "StockSummStore"
  loc_1E46900:   var_90.CAPTION = CVar(arg_10)
  loc_1E46909:   Call var_90.Show
  loc_1E4690F:   GoTo loc_1E3B0CD
  loc_1E46912: End If
  loc_1E4691C: If (var_188 = "Daily Store Issue Reports") Then
  loc_1E46925:   Set var_90 = New rInventRepView
  loc_1E46933:   var_90.GRepFormName = "DailyStoreIssRpt"
  loc_1E46943:   var_90.CAPTION = CVar(arg_10)
  loc_1E4694C:   Call var_90.Show
  loc_1E46952:   GoTo loc_1E3B0CD
  loc_1E46955: End If
  loc_1E4695F: If Not (var_188 = "Stock In Hand") Then
  loc_1E4696A:   If (var_188 = "Stock In Hand ") Then
  loc_1E4696D:   End If
  loc_1E46973:   Set var_90 = New rInventRepView
  loc_1E46981:   var_90.GRepFormName = "StockINHand"
  loc_1E46991:   var_90.CAPTION = CVar(arg_10)
  loc_1E4699A:   Call var_90.Show
  loc_1E469A0:   GoTo loc_1E3B0CD
  loc_1E469A3: End If
  loc_1E469AD: If (var_188 = "Excess Consumption Report") Then
  loc_1E469B6:   Set var_90 = New rInventRepView
  loc_1E469C4:   var_90.GRepFormName = "ExcessConsumption"
  loc_1E469D4:   var_90.CAPTION = CVar(arg_10)
  loc_1E469DD:   Call var_90.Show
  loc_1E469E3:   GoTo loc_1E3B0CD
  loc_1E469E6: End If
  loc_1E469F0: If (var_188 = "Restaurant Issue Report") Then
  loc_1E469F9:   Set var_90 = New rInventRepView
  loc_1E46A07:   var_90.GRepFormName = "RestIssue"
  loc_1E46A17:   var_90.CAPTION = CVar(arg_10)
  loc_1E46A20:   Call var_90.Show
  loc_1E46A26:   GoTo loc_1E3B0CD
  loc_1E46A29: End If
  loc_1E46A33: If (var_188 = "Store Issue Register") Then
  loc_1E46A3C:   Set var_90 = New rInventRepView
  loc_1E46A4A:   var_90.GRepFormName = "StoreIssReg"
  loc_1E46A5A:   var_90.CAPTION = CVar(arg_10)
  loc_1E46A63:   Call var_90.Show
  loc_1E46A69:   GoTo loc_1E3B0CD
  loc_1E46A6C: End If
  loc_1E46A76: If (var_188 = "Liquor Sale Report") Then
  loc_1E46A7F:   Set var_90 = New rInventRepView
  loc_1E46A8D:   var_90.GRepFormName = "LiquorSaleRep"
  loc_1E46A9D:   var_90.CAPTION = CVar(arg_10)
  loc_1E46AA6:   Call var_90.Show
  loc_1E46AAC:   GoTo loc_1E3B0CD
  loc_1E46AAF: End If
  loc_1E46AB9: If (var_188 = "Change Kitchen/Store") Then
  loc_1E46AC2:   Set var_90 = New FrmChangeKitch
  loc_1E46ACA:   var_CC = CVar(arg_10) 'String
  loc_1E46AD1:   var_90.CAPTION = var_CC
  loc_1E46ADA:   Call var_90.Show
  loc_1E46AE0:   GoTo loc_1E3B0CD
  loc_1E46AE3: End If
  loc_1E46AED: If Not (var_188 = "KOT Entry") Then
  loc_1E46AF8:   If (var_188 = "LOT Entry") Then
  loc_1E46AFB:   End If
  loc_1E46B01:   Set var_90 = New RsKOTEntry
  loc_1E46B2A:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, var_CC, var_CC)))
  loc_1E46B36:   var_CC = CVar(arg_10) 'String
  loc_1E46B3D:   var_90.CAPTION = var_CC
  loc_1E46B46:   Call var_90.Show
  loc_1E46B4C:   GoTo loc_1E3B0CD
  loc_1E46B4F: End If
  loc_1E46B59: If (var_188 = "Table Change Entry") Then
  loc_1E46B62:   Set var_90 = New RsTbChange
  loc_1E46B8B:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4, var_CC)))
  loc_1E46B9E:   var_90.CAPTION = CVar(arg_10)
  loc_1E46BA7:   Call var_90.Show
  loc_1E46BAD:   GoTo loc_1E3B0CD
  loc_1E46BB0: End If
  loc_1E46BBA: If Not (var_188 = "Sale Bill Entry") Then
  loc_1E46BC5:   If (var_188 = "Laundry Memo") Then
  loc_1E46BC8:   End If
  loc_1E46BCE:   Set var_90 = New RSSaleBill
  loc_1E46BF7:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E46C0A:   var_90.CAPTION = CVar(arg_10)
  loc_1E46C13:   Call var_90.Show
  loc_1E46C19:   GoTo loc_1E3B0CD
  loc_1E46C1C: End If
  loc_1E46C26: If (var_188 = "Split Sale Bill") Then
  loc_1E46C2F:   Set var_90 = New RsSaleBillSplit
  loc_1E46C58:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E46C6B:   var_90.CAPTION = CVar(arg_10)
  loc_1E46C74:   Call var_90.Show
  loc_1E46C7A:   GoTo loc_1E3B0CD
  loc_1E46C7D: End If
  loc_1E46C87: If Not (var_188 = "POS Bill Reprint") Then
  loc_1E46C92:   If (var_188 = "Memo Reprint") Then
  loc_1E46C95:   End If
  loc_1E46C9B:   Set var_90 = New POSBillReprint
  loc_1E46CC4:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E46CD7:   var_90.CAPTION = CVar(arg_10)
  loc_1E46CE0:   Call var_90.Show
  loc_1E46CE6:   GoTo loc_1E3B0CD
  loc_1E46CE9: End If
  loc_1E46CF3: If (var_188 = "Display Table") Then
  loc_1E46D00:   If (MemVar_1F9220C = "Yes") Then
  loc_1E46D09:     Set var_90 = New RsTouchDisplayTB
  loc_1E46D32:     MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E46D45:     var_90.CAPTION = CVar(arg_10)
  loc_1E46D4E:     Call var_90.Show
  loc_1E46D57:   Else
  loc_1E46D5F:     Set var_90 = New RsPOSDisplay
  loc_1E46D88:     MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E46D9D:     var_90.OpenMode = 2
  loc_1E46DA6:     Call var_90.Show
  loc_1E46DAC:   End If
  loc_1E46DBD:   If CBool(var_90.ptabpos) Then
  loc_1E46DDB:     MsgBox("Tables are not defined in this Outlet", &H40, var_100, var_124, var_150)
  loc_1E46DF0:     var_E0 = var_90
  loc_1E46DFA:     Me.Global.Unload var_E0
  loc_1E46E04:     Exit Sub
  loc_1E46E05:   End If
  loc_1E46E07:   GoTo loc_1E3B0CD
  loc_1E46E0A: End If
  loc_1E46E14: If (var_188 = "Order Booking") Then
  loc_1E46E1D:   Set var_90 = New RsBookingEntry
  loc_1E46E34:   var_90.LocalRestCode = CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4))
  loc_1E46E46:   MemVar_1F921A4 = CStr(var_90.LocalRestCode)
  loc_1E46E5B:   var_90.OpenMode = 2
  loc_1E46E7B:   var_100 = "Select * from Voucher_Type Where Ncat='ORDER' and  RestCode='" & var_90.LocalRestCode 
  loc_1E46E84:   var_124 = var_100 & "'" 
  loc_1E46E92:   var_90.Connection15.Execute CStr(var_124), var_150, -1
  loc_1E46E9D:   Set var_8C = var_E0
  loc_1E46ECA:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1E46EE1:     var_E0 = Me.Recordset15.Fields
  loc_1E46EF9:     var_90.oVType = CVar(var_E0.Item("V_Type"))
  loc_1E46F06:   Else
  loc_1E46F23:     MsgBox("Contact to your S/w vendor", &H40, var_100, var_124, var_150)
  loc_1E46F35:     Exit Sub
  loc_1E46F36:   End If
  loc_1E46F44:   var_90.CAPTION = CVar(arg_10)
  loc_1E46F4D:   Call var_90.Show
  loc_1E46F53:   GoTo loc_1E3B0CD
  loc_1E46F56: End If
  loc_1E46F60: If (var_188 = "Bill Lookup") Then
  loc_1E46F69:   Set var_90 = New RSSaleBillDisplay
  loc_1E46F80:   var_90.LocalRestCode = CVar(Proc_165_4_102F29C(arg_C, var_E0, MemVar_1F921A4))
  loc_1E46F92:   MemVar_1F921A4 = CStr(var_90.LocalRestCode)
  loc_1E46FA5:   var_90.CAPTION = CVar(arg_10)
  loc_1E46FAE:   Call var_90.Show
  loc_1E46FB4:   GoTo loc_1E3B0CD
  loc_1E46FB7: End If
  loc_1E46FC1: If (var_188 = "Order Booking Advance") Then
  loc_1E46FCA:   Set var_90 = New POSAdvanceDepDialog
  loc_1E46FE1:   var_90.MDIRestCode = CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4))
  loc_1E46FF6:   var_90.OpenMode = 2
  loc_1E47005:   var_90.OpenType = 5
  loc_1E47025:   var_100 = "Select V_Type from Voucher_Type Where Ncat='PADV' And RestCode='" & var_90.LocalRestCode 
  loc_1E47029:   var_F0 = "'"
  loc_1E4702E:   var_124 = var_100 & var_F0 
  loc_1E4703C:   var_90.Connection15.Execute CStr(var_124), var_150, -1
  loc_1E47047:   Set var_8C = var_E0
  loc_1E47074:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1E4708B:     var_E0 = Me.Recordset15.Fields
  loc_1E470A3:     var_90.oVType = CVar(var_E0.Item("V_Type"))
  loc_1E470B0:   Else
  loc_1E470CD:     MsgBox("Contact to your S/w vendor", &H40, var_100, var_124, var_150)
  loc_1E470DF:     Exit Sub
  loc_1E470E0:   End If
  loc_1E470EE:   var_90.CAPTION = CVar(arg_10)
  loc_1E470F7:   Call var_90.Show
  loc_1E470FD:   GoTo loc_1E3B0CD
  loc_1E47100: End If
  loc_1E4710A: If Not (var_188 = "KOT Transfer") Then
  loc_1E47115:   If (var_188 = "LOT Transfer") Then
  loc_1E47118:   End If
  loc_1E4711E:   Set var_90 = New RsKOTTransfer
  loc_1E47147:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, var_E0)))
  loc_1E4715A:   var_90.CAPTION = CVar(arg_10)
  loc_1E47163:   Call var_90.Show
  loc_1E47169:   GoTo loc_1E3B0CD
  loc_1E4716C: End If
  loc_1E47176: If (var_188 = "Token Entry") Then
  loc_1E47183:   If (MemVar_1F9220C = "Yes") Then
  loc_1E4718C:     Set var_90 = New RsTouchScreenTOKENEntry
  loc_1E47192:   Else
  loc_1E4719A:     Set var_90 = New RsTokenEntry
  loc_1E4719D:   End If
  loc_1E471C5:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E471D8:   var_90.CAPTION = CVar(arg_10)
  loc_1E471E1:   Call var_90.Show
  loc_1E471E7:   GoTo loc_1E3B0CD
  loc_1E471EA: End If
  loc_1E471F4: If (var_188 = "Assign Delivery") Then
  loc_1E471FD:   Set var_90 = New RsAssignDelivery
  loc_1E47226:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47239:   var_90.CAPTION = CVar(arg_10)
  loc_1E47242:   Call var_90.Show
  loc_1E47248:   GoTo loc_1E3B0CD
  loc_1E4724B: End If
  loc_1E47255: If (var_188 = "Payment Receive") Then
  loc_1E4725E:   Set var_90 = New RsPaymentReceice
  loc_1E47287:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E4729A:   var_90.CAPTION = CVar(arg_10)
  loc_1E472A3:   Call var_90.Show
  loc_1E472A9:   GoTo loc_1E3B0CD
  loc_1E472AC: End If
  loc_1E472B6: If (var_188 = "Stewardwise Sale") Then
  loc_1E472BF:   Set var_90 = New rPOSRepView
  loc_1E472CD:   var_90.GRepFormName = "WaiterWiseSale"
  loc_1E472F7:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E4730A:   var_90.CAPTION = CVar(arg_10)
  loc_1E47313:   Call var_90.Show
  loc_1E47319:   GoTo loc_1E3B0CD
  loc_1E4731C: End If
  loc_1E47326: If (var_188 = "Table wise Sale") Then
  loc_1E4732F:   Set var_90 = New rPOSRepView
  loc_1E4733D:   var_90.GRepFormName = "TableWiseSale"
  loc_1E47367:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E4737A:   var_90.CAPTION = CVar(arg_10)
  loc_1E47383:   Call var_90.Show
  loc_1E47389:   GoTo loc_1E3B0CD
  loc_1E4738C: End If
  loc_1E47396: If (var_188 = "Payment Receive Entry (POS)") Then
  loc_1E4739F:   Set var_90 = New RsPaymentReceice
  loc_1E473AE:   var_90.CAPTION = CVar(arg_10)
  loc_1E473B7:   Call var_90.Show
  loc_1E473BD:   GoTo loc_1E3B0CD
  loc_1E473C0: End If
  loc_1E473CA: If (var_188 = "Settlement Summary") Then
  loc_1E473D3:   Set var_90 = New rPOSRepView
  loc_1E473E1:   var_90.GRepFormName = "CashierSettlement"
  loc_1E4740B:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E4741E:   var_90.CAPTION = CVar(arg_10)
  loc_1E47427:   Call var_90.Show
  loc_1E4742D:   GoTo loc_1E3B0CD
  loc_1E47430: End If
  loc_1E4743A: If (var_188 = "Tax Register") Then
  loc_1E47443:   Set var_90 = New rPOSRepView
  loc_1E47451:   var_90.GRepFormName = "TaxRegister"
  loc_1E4745A:   var_CC = CVar(arg_10) 'String
  loc_1E47461:   var_90.CAPTION = var_CC
  loc_1E4746A:   Call var_90.Show
  loc_1E47470:   GoTo loc_1E3B0CD
  loc_1E47473: End If
  loc_1E4747D: If (var_188 = "Tax Report") Then
  loc_1E47493:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E474B3:     Call 0.Method_arg_1C4 (var_CC & Proc_165_4_102F29C(arg_C, MemVar_1F92078, MemVar_1F921A4))
  loc_1E474C5:     Set var_90 = New rHallRepView
  loc_1E474D3:     var_90.GRepFormName = "TaxReportHall"
  loc_1E474E3:     var_90.CAPTION = CVar(arg_10)
  loc_1E474EC:     Call var_90.Show
  loc_1E474F5:   Else
  loc_1E474FD:     Set var_90 = New rPOSRepView
  loc_1E4750B:     var_90.GRepFormName = "TaxReport"
  loc_1E47535:     MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C)))
  loc_1E47548:     var_90.CAPTION = CVar(arg_10)
  loc_1E47551:     Call var_90.Show
  loc_1E47557:   End If
  loc_1E47559:   GoTo loc_1E3B0CD
  loc_1E4755C: End If
  loc_1E47566: If Not (var_188 = "Taxwise Details") Then
  loc_1E47571:   If (var_188 = "Taxwise  Details") Then
  loc_1E47574:   End If
  loc_1E4757A:   Set var_90 = New rPOSRepView
  loc_1E47588:   var_90.GRepFormName = "TaxDetails"
  loc_1E47598:   var_90.CAPTION = CVar(arg_10)
  loc_1E475A1:   Call var_90.Show
  loc_1E475A7:   GoTo loc_1E3B0CD
  loc_1E475AA: End If
  loc_1E475B4: If (var_188 = "NC KOT Summary") Then
  loc_1E475BD:   Set var_90 = New rPOSRepView
  loc_1E475CB:   var_90.GRepFormName = "NCKOTSummary"
  loc_1E475DB:   var_90.CAPTION = CVar(arg_10)
  loc_1E475E4:   Call var_90.Show
  loc_1E475EA:   GoTo loc_1E3B0CD
  loc_1E475ED: End If
  loc_1E475F7: If (var_188 = "Daily DIET Report") Then
  loc_1E47600:   Set var_90 = New rPOSRepView
  loc_1E4760E:   var_90.GRepFormName = "DailyDiet"
  loc_1E4761E:   var_90.CAPTION = CVar(arg_10)
  loc_1E47627:   Call var_90.Show
  loc_1E4762D:   GoTo loc_1E3B0CD
  loc_1E47630: End If
  loc_1E4763A: If (var_188 = "KOT Wise Details") Then
  loc_1E47643:   Set var_90 = New rPOSRepView
  loc_1E47651:   var_90.GRepFormName = "KOTWiseDetails"
  loc_1E4767B:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E4768E:   var_90.CAPTION = CVar(arg_10)
  loc_1E47697:   Call var_90.Show
  loc_1E4769D:   GoTo loc_1E3B0CD
  loc_1E476A0: End If
  loc_1E476AA: If (var_188 = "Discount Register") Then
  loc_1E476B3:   Set var_90 = New rPOSRepView
  loc_1E476C1:   var_90.GRepFormName = "DiscountReg"
  loc_1E476EB:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E476FE:   var_90.CAPTION = CVar(arg_10)
  loc_1E47707:   Call var_90.Show
  loc_1E4770D:   GoTo loc_1E3B0CD
  loc_1E47710: End If
  loc_1E4771A: If (var_188 = "Not Delivered Order") Then
  loc_1E47723:   Set var_90 = New FrmDeliveredItemDetail
  loc_1E47732:   var_90.CAPTION = CVar(arg_10)
  loc_1E4773B:   Call var_90.Show
  loc_1E47741:   GoTo loc_1E3B0CD
  loc_1E47744: End If
  loc_1E4774E: If (var_188 = "Group Wise Sale") Then
  loc_1E47757:   Set var_90 = New rPOSRepView
  loc_1E47765:   var_90.GRepFormName = "ItemWiseGroupWiseSaleReport"
  loc_1E4777D:   var_90.LocalRestCode = CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4))
  loc_1E4778F:   MemVar_1F921A4 = CStr(var_90.LocalRestCode)
  loc_1E477A2:   var_90.CAPTION = CVar(arg_10)
  loc_1E477AB:   Call var_90.Show
  loc_1E477B1:   GoTo loc_1E3B0CD
  loc_1E477B4: End If
  loc_1E477BE: If (var_188 = "Customer Detail") Then
  loc_1E477C7:   Set var_90 = New rPOSRepView
  loc_1E477D5:   var_90.GRepFormName = "CustomerDetail"
  loc_1E477E5:   var_90.CAPTION = CVar(arg_10)
  loc_1E477EE:   Call var_90.Show
  loc_1E477F4:   GoTo loc_1E3B0CD
  loc_1E477F7: End If
  loc_1E47801: If (var_188 = "Registered Guest Detail") Then
  loc_1E4780A:   Set var_90 = New rPOSRepView
  loc_1E47818:   var_90.GRepFormName = "RegisteredGuestDetail"
  loc_1E47828:   var_90.CAPTION = CVar(arg_10)
  loc_1E47831:   Call var_90.Show
  loc_1E47837:   GoTo loc_1E3B0CD
  loc_1E4783A: End If
  loc_1E47844: If (var_188 = "Delivery Status") Then
  loc_1E4784D:   Set var_90 = New rPOSRepView
  loc_1E4785B:   var_90.GRepFormName = "DeliveryStatus"
  loc_1E4786A:   MemVar_1F921A4 = CStr(var_90.LocalRestCode)
  loc_1E4787D:   var_90.CAPTION = CVar(arg_10)
  loc_1E47886:   Call var_90.Show
  loc_1E4788C:   GoTo loc_1E3B0CD
  loc_1E4788F: End If
  loc_1E47899: If (var_188 = "Denomination Detail") Then
  loc_1E478A2:   Set var_90 = New FrmDenomination
  loc_1E478B1:   var_90.CAPTION = CVar(arg_10)
  loc_1E478BA:   Call var_90.Show
  loc_1E478C0:   GoTo loc_1E3B0CD
  loc_1E478C3: End If
  loc_1E478CD: If (var_188 = "Bill Wise Adjustment Report") Then
  loc_1E478D6:   Set var_90 = New rPOSRepView
  loc_1E478E4:   var_90.GRepFormName = "BillWiseAdjustmentReport"
  loc_1E478F4:   var_90.CAPTION = CVar(arg_10)
  loc_1E478FD:   Call var_90.Show
  loc_1E47903:   GoTo loc_1E3B0CD
  loc_1E47906: End If
  loc_1E47910: If (var_188 = "Monthwise Sales") Then
  loc_1E47919:   Set var_90 = New rPOSRepView
  loc_1E47927:   var_90.GRepFormName = "MonthOutletWiseSale"
  loc_1E47937:   var_90.CAPTION = CVar(arg_10)
  loc_1E47940:   Call var_90.Show
  loc_1E47946:   GoTo loc_1E3B0CD
  loc_1E47949: End If
  loc_1E47953: If (var_188 = "ABC  Analysis") Then
  loc_1E4795C:   Set var_90 = New rPOSRepView
  loc_1E4796A:   var_90.GRepFormName = "ABCAnalysisSale"
  loc_1E4797A:   var_90.CAPTION = CVar(arg_10)
  loc_1E47983:   Call var_90.Show
  loc_1E47989:   GoTo loc_1E3B0CD
  loc_1E4798C: End If
  loc_1E47996: If (var_188 = "Sale Summary") Then
  loc_1E4799F:   Set var_90 = New rPOSRepView
  loc_1E479AD:   var_90.GRepFormName = "SaleSumm"
  loc_1E479BD:   var_90.CAPTION = CVar(arg_10)
  loc_1E479C6:   Call var_90.Show
  loc_1E479CC:   GoTo loc_1E3B0CD
  loc_1E479CF: End If
  loc_1E479D9: If (var_188 = "Edited Bills") Then
  loc_1E479E2:   Set var_90 = New rPOSRepView
  loc_1E479F0:   var_90.GRepFormName = "EditedBills"
  loc_1E47A00:   var_90.CAPTION = CVar(arg_10)
  loc_1E47A09:   Call var_90.Show
  loc_1E47A0F:   GoTo loc_1E3B0CD
  loc_1E47A12: End If
  loc_1E47A1C: If (var_188 = "Cover Analysis") Then
  loc_1E47A32:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E47A52:     Call 0.Method_arg_1C4 (MemVar_1F921A4 & Proc_165_4_102F29C(arg_C, MemVar_1F92078, MemVar_1F921A4))
  loc_1E47A64:     Set var_90 = New rHallRepView
  loc_1E47A72:     var_90.GRepFormName = "CoverAnalysis"
  loc_1E47A82:     var_90.CAPTION = CVar(arg_10)
  loc_1E47A8B:     Call var_90.Show
  loc_1E47A94:   Else
  loc_1E47A9C:     Set var_90 = New rPOSRepView
  loc_1E47AAA:     var_90.GRepFormName = "CoverAnalysis"
  loc_1E47AD4:     MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C)))
  loc_1E47AE7:     var_90.CAPTION = CVar(arg_10)
  loc_1E47AF0:     Call var_90.Show
  loc_1E47AF6:   End If
  loc_1E47AF8:   GoTo loc_1E3B0CD
  loc_1E47AFB: End If
  loc_1E47B05: If (var_188 = "Pending KOT") Then
  loc_1E47B0E:   Set var_90 = New rPOSRepView
  loc_1E47B1C:   var_90.GRepFormName = "PendingKot"
  loc_1E47B46:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47B59:   var_90.CAPTION = CVar(arg_10)
  loc_1E47B62:   Call var_90.Show
  loc_1E47B68:   GoTo loc_1E3B0CD
  loc_1E47B6B: End If
  loc_1E47B75: If (var_188 = "Item wise Sale") Then
  loc_1E47B7E:   Set var_90 = New rPOSRepView
  loc_1E47B8C:   var_90.GRepFormName = "ItemWiseSale"
  loc_1E47BB6:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47BC9:   var_90.CAPTION = CVar(arg_10)
  loc_1E47BD2:   Call var_90.Show
  loc_1E47BD8:   GoTo loc_1E3B0CD
  loc_1E47BDB: End If
  loc_1E47BE5: If (var_188 = "Deleted Unsettled Bill") Then
  loc_1E47BEE:   Set var_90 = New rPOSRepView
  loc_1E47BFC:   var_90.GRepFormName = "DelBillUnsetBill"
  loc_1E47C26:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47C39:   var_90.CAPTION = CVar(arg_10)
  loc_1E47C42:   Call var_90.Show
  loc_1E47C48:   GoTo loc_1E3B0CD
  loc_1E47C4B: End If
  loc_1E47C55: If (var_188 = "NC KOT Detail") Then
  loc_1E47C5E:   Set var_90 = New rPOSRepView
  loc_1E47C6C:   var_90.GRepFormName = "NCKOTWiseDetails"
  loc_1E47C96:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47CA9:   var_90.CAPTION = CVar(arg_10)
  loc_1E47CB2:   Call var_90.Show
  loc_1E47CB8:   GoTo loc_1E3B0CD
  loc_1E47CBB: End If
  loc_1E47CC5: If (var_188 = "Order Detail Report") Then
  loc_1E47CCE:   Set var_90 = New rPOSRepView
  loc_1E47CDC:   var_90.GRepFormName = "OrderDetailReport"
  loc_1E47CEC:   var_90.CAPTION = CVar(arg_10)
  loc_1E47CF5:   Call var_90.Show
  loc_1E47CFB:   GoTo loc_1E3B0CD
  loc_1E47CFE: End If
  loc_1E47D08: If (var_188 = "Discount Register (PartyWise)") Then
  loc_1E47D11:   Set var_90 = New rPOSRepView
  loc_1E47D1F:   var_90.GRepFormName = "DiscountPartyWiseReg"
  loc_1E47D2F:   var_90.CAPTION = CVar(arg_10)
  loc_1E47D38:   Call var_90.Show
  loc_1E47D3E:   GoTo loc_1E3B0CD
  loc_1E47D41: End If
  loc_1E47D4B: If (var_188 = "Collection Summary") Then
  loc_1E47D61:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E47D81:     Call 0.Method_arg_1C4 (MemVar_1F921A4 & Proc_165_4_102F29C(arg_C, MemVar_1F92078))
  loc_1E47D93:     Set var_90 = New rHallRepView
  loc_1E47DA1:     var_90.GRepFormName = "CashierCollection"
  loc_1E47DB1:     var_90.CAPTION = CVar(arg_10)
  loc_1E47DBA:     Call var_90.Show
  loc_1E47DC3:   Else
  loc_1E47DCB:     Set var_90 = New rPOSRepView
  loc_1E47DD9:     var_90.GRepFormName = "CashierCollection"
  loc_1E47E03:     MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C)))
  loc_1E47E16:     var_90.CAPTION = CVar(arg_10)
  loc_1E47E1F:     Call var_90.Show
  loc_1E47E25:   End If
  loc_1E47E27:   GoTo loc_1E3B0CD
  loc_1E47E2A: End If
  loc_1E47E34: If (var_188 = "Open Item Sales") Then
  loc_1E47E3D:   Set var_90 = New rPOSRepView
  loc_1E47E4B:   var_90.GRepFormName = "OpenItemSale"
  loc_1E47E75:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47E88:   var_90.CAPTION = CVar(arg_10)
  loc_1E47E91:   Call var_90.Show
  loc_1E47E97:   GoTo loc_1E3B0CD
  loc_1E47E9A: End If
  loc_1E47EA4: If (var_188 = "Void Bills") Then
  loc_1E47EAD:   Set var_90 = New rPOSRepView
  loc_1E47EBB:   var_90.GRepFormName = "VoidBills"
  loc_1E47EE5:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47EF8:   var_90.CAPTION = CVar(arg_10)
  loc_1E47F01:   Call var_90.Show
  loc_1E47F07:   GoTo loc_1E3B0CD
  loc_1E47F0A: End If
  loc_1E47F14: If Not (var_188 = "KOT Rate Change Report") Then
  loc_1E47F1F:   If (var_188 = "KOT Change Report") Then
  loc_1E47F22:   End If
  loc_1E47F28:   Set var_90 = New rPOSRepView
  loc_1E47F36:   var_90.GRepFormName = "KOTRateChange"
  loc_1E47F60:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E47F73:   var_90.CAPTION = CVar(arg_10)
  loc_1E47F7C:   Call var_90.Show
  loc_1E47F82:   GoTo loc_1E3B0CD
  loc_1E47F85: End If
  loc_1E47F8F: If (var_188 = "Tax Summary") Then
  loc_1E47FA5:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E47FC5:     Call 0.Method_arg_1C4 (MemVar_1F921A4 & Proc_165_4_102F29C(arg_C, MemVar_1F92078))
  loc_1E47FD7:     Set var_90 = New rHallRepView
  loc_1E47FE5:     var_90.GRepFormName = "TaxSummaryHall"
  loc_1E47FF5:     var_90.CAPTION = CVar(arg_10)
  loc_1E47FFE:     Call var_90.Show
  loc_1E48007:   Else
  loc_1E4800F:     Set var_90 = New rPOSRepView
  loc_1E4801D:     var_90.GRepFormName = "TaxSumm"
  loc_1E48047:     MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C)))
  loc_1E4805A:     var_90.CAPTION = CVar(arg_10)
  loc_1E48063:     Call var_90.Show
  loc_1E48069:   End If
  loc_1E4806B:   GoTo loc_1E3B0CD
  loc_1E4806E: End If
  loc_1E48078: If (var_188 = "Discount Summary") Then
  loc_1E48081:   Set var_90 = New rPOSRepView
  loc_1E4808F:   var_90.GRepFormName = "DiscountSumm"
  loc_1E480B9:   MemVar_1F921A4 = CStr(CVar(Proc_165_4_102F29C(arg_C, MemVar_1F921A4)))
  loc_1E480CC:   var_90.CAPTION = CVar(arg_10)
  loc_1E480D5:   Call var_90.Show
  loc_1E480DB:   GoTo loc_1E3B0CD
  loc_1E480DE: End If
  loc_1E480E8: If (var_188 = "Events") Then
  loc_1E480F1:   Set var_90 = New FrmEventMast
  loc_1E48100:   var_90.CAPTION = CVar(arg_10)
  loc_1E48109:   Call var_90.Show
  loc_1E4810F:   GoTo loc_1E3B0CD
  loc_1E48112: End If
  loc_1E4811C: If (var_188 = "Venue Features") Then
  loc_1E48125:   Set var_90 = New FrmVenueFeat
  loc_1E48134:   var_90.CAPTION = CVar(arg_10)
  loc_1E4813D:   Call var_90.Show
  loc_1E48143:   GoTo loc_1E3B0CD
  loc_1E48146: End If
  loc_1E48150: If (var_188 = "Venue Master") Then
  loc_1E48159:   Set var_90 = New FrmVenueMast
  loc_1E48177:   var_90.MDIRestCode = CVar(MemVar_1F921A4 & Proc_165_4_102F29C(arg_C, MemVar_1F92078))
  loc_1E4818D:   var_90.CAPTION = CVar(arg_10)
  loc_1E48196:   Call var_90.Show
  loc_1E4819C:   GoTo loc_1E3B0CD
  loc_1E4819F: End If
  loc_1E481A9: If (var_188 = "Catalog Master") Then
  loc_1E481B2:   Set var_90 = New HallMenuCatalog
  loc_1E481D0:   var_90.MDIRestCode = CVar(var_F0 & Proc_165_4_102F29C(arg_C, MemVar_1F92078))
  loc_1E481E6:   var_90.CAPTION = CVar(arg_10)
  loc_1E481EF:   Call var_90.Show
  loc_1E481F5:   GoTo loc_1E3B0CD
  loc_1E481F8: End If
  loc_1E48202: If (var_188 = "Banquet Bill Sundry Setting") Then
  loc_1E4820B:   Set var_90 = New HallSundry
  loc_1E48229:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E4823F:   var_90.CAPTION = CVar(arg_10)
  loc_1E48248:   Call var_90.Show
  loc_1E4824E:   GoTo loc_1E3B0CD
  loc_1E48251: End If
  loc_1E4825B: If (var_188 = "Booking Inquiry") Then
  loc_1E48264:   Set var_90 = New FrmBookingInquiry
  loc_1E48282:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48298:   var_90.CAPTION = CVar(arg_10)
  loc_1E482A1:   Call var_90.Show
  loc_1E482A7:   GoTo loc_1E3B0CD
  loc_1E482AA: End If
  loc_1E482B4: If (var_188 = "Banquet Booking") Then
  loc_1E482BD:   Set var_90 = New HallBooking
  loc_1E482DB:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E482F3:   var_90.OpenMode = 2
  loc_1E48303:   var_90.CAPTION = CVar(arg_10)
  loc_1E4830C:   Call var_90.Show
  loc_1E48312:   GoTo loc_1E3B0CD
  loc_1E48315: End If
  loc_1E4831F: If (var_188 = "Catalog Selection") Then
  loc_1E48328:   Set var_90 = New CateringBooking
  loc_1E48346:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E4835C:   var_90.CAPTION = CVar(arg_10)
  loc_1E48365:   Call var_90.Show
  loc_1E4836B:   GoTo loc_1E3B0CD
  loc_1E4836E: End If
  loc_1E48378: If (var_188 = "Chef Pre-Costing") Then
  loc_1E48381:   Set var_90 = New HallChefPreCosting
  loc_1E4839F:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E483B5:   var_90.CAPTION = CVar(arg_10)
  loc_1E483BE:   Call var_90.Show
  loc_1E483C4:   GoTo loc_1E3B0CD
  loc_1E483C7: End If
  loc_1E483D1: If (var_188 = "Banquet Billing") Then
  loc_1E483DA:   Set var_90 = New HallBill
  loc_1E483F8:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E4840E:   var_90.CAPTION = CVar(arg_10)
  loc_1E48417:   Call var_90.Show
  loc_1E4841D:   GoTo loc_1E3B0CD
  loc_1E48420: End If
  loc_1E4842A: If (var_188 = "Banquet Settlement") Then
  loc_1E48433:   Set var_90 = New HallAdvanceDepDialog
  loc_1E48451:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48467:   var_90.CAPTION = CVar(arg_10)
  loc_1E48470:   Call var_90.Show
  loc_1E48476:   GoTo loc_1E3B0CD
  loc_1E48479: End If
  loc_1E48483: If (var_188 = "Booking Chart") Then
  loc_1E48486:   GoTo loc_1E3B0CD
  loc_1E48489: End If
  loc_1E48493: If (var_188 = "Venue Availability") Then
  loc_1E4849C:   Set var_90 = New BanqAvailability
  loc_1E484BA:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E484D0:   var_90.CAPTION = CVar(arg_10)
  loc_1E484D9:   Call var_90.Show
  loc_1E484DF:   GoTo loc_1E3B0CD
  loc_1E484E2: End If
  loc_1E484EC: If (var_188 = "Guest Comments") Then
  loc_1E484F5:   Set var_90 = New frmGuestComments
  loc_1E48513:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48529:   var_90.CAPTION = CVar(arg_10)
  loc_1E48532:   Call var_90.Show
  loc_1E48538:   GoTo loc_1E3B0CD
  loc_1E4853B: End If
  loc_1E48545: If (var_188 = "Banquet Estimate Billing") Then
  loc_1E4854E:   Set var_90 = New HallBillEstimate
  loc_1E4856C:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48582:   var_90.CAPTION = CVar(arg_10)
  loc_1E4858B:   Call var_90.Show
  loc_1E48591:   GoTo loc_1E3B0CD
  loc_1E48594: End If
  loc_1E4859E: If (var_188 = "Banquet Booking Advance") Then
  loc_1E485A7:   Set var_90 = New HallAdvanceDepDialog
  loc_1E485B5:   var_90.AdvType = "AD"
  loc_1E485C7:   var_90.OpenMode = 2
  loc_1E485D9:   var_90.OpenType = 6
  loc_1E485F8:   var_90.MDIRestCode = CVar(MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E4860E:   var_90.CAPTION = CVar(arg_10)
  loc_1E48614:   var_CC = 1
  loc_1E48620:   Call var_90.Show
  loc_1E48626:   GoTo loc_1E3B0CD
  loc_1E48629: End If
  loc_1E48633: If (var_188 = "Sales Register") Then
  loc_1E48649:   If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
  loc_1E48669:     Call 0.Method_arg_1C4 (var_CC & Proc_165_4_102F29C(arg_C, MemVar_1F92078))
  loc_1E4867B:     Set var_90 = New rHallRepView
  loc_1E48689:     var_90.GRepFormName = "SalesRegister"
  loc_1E48699:     var_90.CAPTION = CVar(arg_10)
  loc_1E486A2:     Call var_90.Show
  loc_1E486AB:   Else
  loc_1E486B3:     Set var_90 = New rPOSRepView
  loc_1E486C1:     var_90.GRepFormName = "SalesRegister"
  loc_1E486D1:     var_90.CAPTION = CVar(arg_10)
  loc_1E486DA:     Call var_90.Show
  loc_1E486E0:   End If
  loc_1E486E2:   GoTo loc_1E3B0CD
  loc_1E486E5: End If
  loc_1E486EF: If (var_188 = "OutStanding Report") Then
  loc_1E4870F:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48721:   Set var_90 = New rHallRepView
  loc_1E4872F:   var_90.GRepFormName = "PartyOutStanding"
  loc_1E4873F:   var_90.CAPTION = CVar(arg_10)
  loc_1E48748:   Call var_90.Show
  loc_1E4874E:   GoTo loc_1E3B0CD
  loc_1E48751: End If
  loc_1E4875B: If (var_188 = "Party wise OutStanding") Then
  loc_1E4877B:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E4878D:   Set var_90 = New rHallRepView
  loc_1E4879B:   var_90.GRepFormName = "PartyWiseOutStanding"
  loc_1E487AB:   var_90.CAPTION = CVar(arg_10)
  loc_1E487B4:   Call var_90.Show
  loc_1E487BA:   GoTo loc_1E3B0CD
  loc_1E487BD: End If
  loc_1E487C7: If (var_188 = "Cashier  Report") Then
  loc_1E487E7:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E487F9:   Set var_90 = New rHallRepView
  loc_1E48807:   var_90.GRepFormName = "CashierCollection"
  loc_1E48817:   var_90.CAPTION = CVar(arg_10)
  loc_1E48820:   Call var_90.Show
  loc_1E48826:   GoTo loc_1E3B0CD
  loc_1E48829: End If
  loc_1E48833: If (var_188 = "Booking Inquiry Detail") Then
  loc_1E48853:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48865:   Set var_90 = New rHallRepView
  loc_1E48873:   var_90.GRepFormName = "BookingDetail"
  loc_1E48883:   var_90.CAPTION = CVar(arg_10)
  loc_1E4888C:   Call var_90.Show
  loc_1E48892:   GoTo loc_1E3B0CD
  loc_1E48895: End If
  loc_1E4889F: If Not (var_188 = "Settlement  Report") Then
  loc_1E488AA:   If (var_188 = "Banquet Settlement Report") Then
  loc_1E488AD:   End If
  loc_1E488CA:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E488DC:   Set var_90 = New rHallRepView
  loc_1E488EA:   var_90.GRepFormName = "SettleRepHall"
  loc_1E488FA:   var_90.CAPTION = CVar(arg_10)
  loc_1E48903:   Call var_90.Show
  loc_1E48909:   GoTo loc_1E3B0CD
  loc_1E4890C: End If
  loc_1E48916: If (var_188 = "Daily Function Sheet") Then
  loc_1E48936:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48948:   Set var_90 = New rHallRepView
  loc_1E48956:   var_90.GRepFormName = "DailyFuncSheet"
  loc_1E48966:   var_90.CAPTION = CVar(arg_10)
  loc_1E4896F:   Call var_90.Show
  loc_1E48975:   GoTo loc_1E3B0CD
  loc_1E48978: End If
  loc_1E48982: If (var_188 = "Item Wise Sales Report") Then
  loc_1E489A2:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E489B4:   Set var_90 = New rHallRepView
  loc_1E489C2:   var_90.GRepFormName = "ItemWiseSaleHall"
  loc_1E489D2:   var_90.CAPTION = CVar(arg_10)
  loc_1E489DB:   Call var_90.Show
  loc_1E489E1:   GoTo loc_1E3B0CD
  loc_1E489E4: End If
  loc_1E489EE: If (var_188 = "Company Wise Sale Report") Then
  loc_1E48A0E:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48A20:   Set var_90 = New rHallRepView
  loc_1E48A2E:   var_90.GRepFormName = "CompanyWiseSaleHall"
  loc_1E48A3E:   var_90.CAPTION = CVar(arg_10)
  loc_1E48A47:   Call var_90.Show
  loc_1E48A4D:   GoTo loc_1E3B0CD
  loc_1E48A50: End If
  loc_1E48A5A: If (var_188 = "Function Wise Item Detail") Then
  loc_1E48A7A:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48A8C:   Set var_90 = New rHallRepView
  loc_1E48A9A:   var_90.GRepFormName = "FunctionWiseItemDetail"
  loc_1E48AAA:   var_90.CAPTION = CVar(arg_10)
  loc_1E48AB3:   Call var_90.Show
  loc_1E48AB9:   GoTo loc_1E3B0CD
  loc_1E48ABC: End If
  loc_1E48AC6: If (var_188 = "Banquet Taxwise Details") Then
  loc_1E48AE6:   Call 0.Method_arg_1C4 (MemVar_1F92078 & Proc_165_4_102F29C(arg_C))
  loc_1E48AF8:   Set var_90 = New rHallRepView
  loc_1E48B06:   var_90.GRepFormName = "TaxwiseDetailReportHall"
  loc_1E48B16:   var_90.CAPTION = CVar(arg_10)
  loc_1E48B1F:   Call var_90.Show
  loc_1E48B25:   GoTo loc_1E3B0CD
  loc_1E48B28: End If
  loc_1E48B32: If (var_188 = "Telephone Call Entry") Then
  loc_1E48B3B:   Set var_90 = New TelCallEntry
  loc_1E48B4A:   var_90.CAPTION = CVar(arg_10)
  loc_1E48B53:   Call var_90.Show
  loc_1E48B59:   GoTo loc_1E3B0CD
  loc_1E48B5C: End If
  loc_1E48B66: If (var_188 = "EPBAX Call Report") Then
  loc_1E48B6F:   Set var_90 = New rHallRepView
  loc_1E48B7D:   var_90.GRepFormName = "EpabxCallRep"
  loc_1E48B8D:   var_90.CAPTION = CVar(arg_10)
  loc_1E48B96:   Call var_90.Show
  loc_1E48B9C:   GoTo loc_1E3B0CD
  loc_1E48B9F: End If
  loc_1E48BA9: If (var_188 = "Settlement Entry") Then
  loc_1E48BB4:   Set var_90 = MemVar_1F92F64 
  loc_1E48BC5:   var_DC = CVar(Proc_165_5_104CD60(arg_C)) 'String
  loc_1E48BCC:   var_90.LocalRestCode = var_DC
  loc_1E48BDE:   var_90.OpenType = 5
  loc_1E48BF0:   var_90.OpenMode = 2
  loc_1E48C11:   var_104 = Proc_165_5_104CD60(arg_C, "Select 'B'+ShortName as Adv_Type From Depart Where Code='", var_DC)
  loc_1E48C15:   var_174 = -1 & Proc_165_4_102F29C(arg_C)
  loc_1E48C25:   var_90.Connection15.Execute MemVar_1F92078 & Proc_165_4_102F29C(arg_C) & "'", var_E0, 
  loc_1E48C30:   Set var_B0 = var_E0
  loc_1E48C58:   If (var_B0.RecordCount > 0) Then
  loc_1E48C6C:     var_E0 = var_B0.Fields
  loc_1E48C84:     var_90.AdvType = CVar(var_E0.Item("Adv_type"))
  loc_1E48C91:   Else
  loc_1E48CA8:     var_DC = "Voucher Type for this Department not Found"
  loc_1E48CAE:     MsgBox(var_DC, &H10, var_100, var_124, var_150)
  loc_1E48CC0:     Exit Sub
  loc_1E48CC1:   End If
  loc_1E48CCF:   var_90.CAPTION = CVar(arg_10)
  loc_1E48CD8:   Call var_90.Show
  loc_1E48CDE:   GoTo loc_1E3B0CD
  loc_1E48CE1: End If
  loc_1E48CEB: If (var_188 = "Sale Summary") Then
  loc_1E48CF8:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E48D01:     Set var_90 = New FrmChangeRest
  loc_1E48D06:     var_CC = 1
  loc_1E48D0F:     Call var_90.Show
  loc_1E48D17:     var_CC = 0
  loc_1E48D20:     Call var_90.ZOrder
  loc_1E48D26:   End If
  loc_1E48D2E:   Set var_90 = New rPOSRepView
  loc_1E48D3C:   var_90.GRepFormName = "SalesSummary"
  loc_1E48D4C:   var_90.CAPTION = CVar(arg_10)
  loc_1E48D55:   Call var_90.Show
  loc_1E48D5B:   GoTo loc_1E3B0CD
  loc_1E48D5E: End If
  loc_1E48D68: If (var_188 = "Sale Summary Consolidated") Then
  loc_1E48D75:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E48D7E:     Set var_90 = New FrmChangeRest
  loc_1E48D83:     var_CC = 1
  loc_1E48D8C:     Call var_90.Show
  loc_1E48D94:     var_CC = 0
  loc_1E48D9D:     Call var_90.ZOrder
  loc_1E48DA3:   End If
  loc_1E48DAB:   Set var_90 = New rPOSRepView
  loc_1E48DB9:   var_90.GRepFormName = "SaleSummConsolidated"
  loc_1E48DC9:   var_90.CAPTION = CVar(arg_10)
  loc_1E48DD2:   Call var_90.Show
  loc_1E48DD8:   GoTo loc_1E3B0CD
  loc_1E48DDB: End If
  loc_1E48DE5: If (var_188 = "Taxwise Sale Report") Then
  loc_1E48DF2:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E48DFB:     Set var_90 = New FrmChangeRest
  loc_1E48E00:     var_CC = 1
  loc_1E48E09:     Call var_90.Show
  loc_1E48E11:     var_CC = 0
  loc_1E48E1A:     Call var_90.ZOrder
  loc_1E48E20:   End If
  loc_1E48E28:   Set var_90 = New rPOSRepView
  loc_1E48E36:   var_90.GRepFormName = "TaxWiseSale"
  loc_1E48E46:   var_90.CAPTION = CVar(arg_10)
  loc_1E48E4F:   Call var_90.Show
  loc_1E48E55:   GoTo loc_1E3B0CD
  loc_1E48E58: End If
  loc_1E48E62: If (var_188 = "KOT Edit/Delete Report") Then
  loc_1E48E6F:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E48E78:     Set var_90 = New FrmChangeRest
  loc_1E48E7D:     var_CC = 1
  loc_1E48E86:     Call var_90.Show
  loc_1E48E8E:     var_CC = 0
  loc_1E48E97:     Call var_90.ZOrder
  loc_1E48E9D:   End If
  loc_1E48EA5:   Set var_90 = New rPOSRepView
  loc_1E48EB3:   var_90.GRepFormName = "KotEditDelete"
  loc_1E48EC3:   var_90.CAPTION = CVar(arg_10)
  loc_1E48ECC:   Call var_90.Show
  loc_1E48ED2:   GoTo loc_1E3B0CD
  loc_1E48ED5: End If
  loc_1E48EDF: If (var_188 = "Pending KOT") Then
  loc_1E48EEC:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E48EF5:     Set var_90 = New FrmChangeRest
  loc_1E48EFA:     var_CC = 1
  loc_1E48F03:     Call var_90.Show
  loc_1E48F0B:     var_CC = 0
  loc_1E48F14:     Call var_90.ZOrder
  loc_1E48F1A:   End If
  loc_1E48F22:   Set var_90 = New rPOSRepView
  loc_1E48F30:   var_90.GRepFormName = "PendingKot"
  loc_1E48F40:   var_90.CAPTION = CVar(arg_10)
  loc_1E48F49:   Call var_90.Show
  loc_1E48F4F:   GoTo loc_1E3B0CD
  loc_1E48F52: End If
  loc_1E48F5C: If (var_188 = "Cashier Summary") Then
  loc_1E48F69:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E48F72:     Set var_90 = New FrmChangeRest
  loc_1E48F77:     var_CC = 1
  loc_1E48F80:     Call var_90.Show
  loc_1E48F88:     var_CC = 0
  loc_1E48F91:     Call var_90.ZOrder
  loc_1E48F97:   End If
  loc_1E48F9F:   Set var_90 = New rPOSRepView
  loc_1E48FAD:   var_90.GRepFormName = "CashierSummary"
  loc_1E48FBD:   var_90.CAPTION = CVar(arg_10)
  loc_1E48FC6:   Call var_90.Show
  loc_1E48FCC:   GoTo loc_1E3B0CD
  loc_1E48FCF: End If
  loc_1E48FD9: If (var_188 = "Cashier Sale") Then
  loc_1E48FE6:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E48FEF:     Set var_90 = New FrmChangeRest
  loc_1E48FF4:     var_CC = 1
  loc_1E48FFD:     Call var_90.Show
  loc_1E49005:     var_CC = 0
  loc_1E4900E:     Call var_90.ZOrder
  loc_1E49014:   End If
  loc_1E4901C:   Set var_90 = New rPOSRepView
  loc_1E4902A:   var_90.GRepFormName = "CashierSale"
  loc_1E4903A:   var_90.CAPTION = CVar(arg_10)
  loc_1E49043:   Call var_90.Show
  loc_1E49049:   GoTo loc_1E3B0CD
  loc_1E4904C: End If
  loc_1E49056: If (var_188 = "Item wise Sale") Then
  loc_1E49063:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E4906C:     Set var_90 = New FrmChangeRest
  loc_1E49071:     var_CC = 1
  loc_1E4907A:     Call var_90.Show
  loc_1E49082:     var_CC = 0
  loc_1E4908B:     Call var_90.ZOrder
  loc_1E49091:   End If
  loc_1E49099:   Set var_90 = New rPOSRepView
  loc_1E490A7:   var_90.GRepFormName = "ItemWiseSale"
  loc_1E490B7:   var_90.CAPTION = CVar(arg_10)
  loc_1E490C0:   Call var_90.Show
  loc_1E490C6:   GoTo loc_1E3B0CD
  loc_1E490C9: End If
  loc_1E490D3: If (var_188 = "Sales Register per cover") Then
  loc_1E490E0:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E490E9:     Set var_90 = New FrmChangeRest
  loc_1E490EE:     var_CC = 1
  loc_1E490F7:     Call var_90.Show
  loc_1E490FF:     var_CC = 0
  loc_1E49108:     Call var_90.ZOrder
  loc_1E4910E:   End If
  loc_1E49116:   Set var_90 = New rPOSRepView
  loc_1E49124:   var_90.GRepFormName = "SalRegPerCover"
  loc_1E49134:   var_90.CAPTION = CVar(arg_10)
  loc_1E4913D:   Call var_90.Show
  loc_1E49143:   GoTo loc_1E3B0CD
  loc_1E49146: End If
  loc_1E49150: If (var_188 = "Tablewise Sales") Then
  loc_1E4915D:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E49166:     Set var_90 = New FrmChangeRest
  loc_1E4916B:     var_CC = 1
  loc_1E49174:     Call var_90.Show
  loc_1E4917C:     var_CC = 0
  loc_1E49185:     Call var_90.ZOrder
  loc_1E4918B:   End If
  loc_1E49193:   Set var_90 = New rPOSRepView
  loc_1E491A1:   var_90.GRepFormName = "TableWiseSale"
  loc_1E491B1:   var_90.CAPTION = CVar(arg_10)
  loc_1E491BA:   Call var_90.Show
  loc_1E491C0:   GoTo loc_1E3B0CD
  loc_1E491C3: End If
  loc_1E491CD: If (var_188 = "Stewardwise Sale") Then
  loc_1E491DA:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E491E3:     Set var_90 = New FrmChangeRest
  loc_1E491E8:     var_CC = 1
  loc_1E491F1:     Call var_90.Show
  loc_1E491F9:     var_CC = 0
  loc_1E49202:     Call var_90.ZOrder
  loc_1E49208:   End If
  loc_1E49210:   Set var_90 = New rPOSRepView
  loc_1E4921E:   var_90.GRepFormName = "WaiterWiseSale"
  loc_1E4922E:   var_90.CAPTION = CVar(arg_10)
  loc_1E49237:   Call var_90.Show
  loc_1E4923D:   GoTo loc_1E3B0CD
  loc_1E49240: End If
  loc_1E4924A: If (var_188 = "Cost Analysis") Then
  loc_1E49257:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E49260:     Set var_90 = New FrmChangeRest
  loc_1E49265:     var_CC = 1
  loc_1E4926E:     Call var_90.Show
  loc_1E49276:     var_CC = 0
  loc_1E4927F:     Call var_90.ZOrder
  loc_1E49285:   End If
  loc_1E4928D:   Set var_90 = New rPOSRepView
  loc_1E4929B:   var_90.GRepFormName = "CostAnalysis"
  loc_1E492AB:   var_90.CAPTION = CVar(arg_10)
  loc_1E492B4:   Call var_90.Show
  loc_1E492BA:   GoTo loc_1E3B0CD
  loc_1E492BD: End If
  loc_1E492C7: If (var_188 = "Stock Register") Then
  loc_1E492D4:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E492DD:     Set var_90 = New FrmChangeRest
  loc_1E492E2:     var_CC = 1
  loc_1E492EB:     Call var_90.Show
  loc_1E492F3:     var_CC = 0
  loc_1E492FC:     Call var_90.ZOrder
  loc_1E49302:   End If
  loc_1E4930A:   Set var_90 = New rPOSRepView
  loc_1E49318:   var_90.GRepFormName = "RStockRegister"
  loc_1E49328:   var_90.CAPTION = CVar(arg_10)
  loc_1E49331:   Call var_90.Show
  loc_1E49337:   GoTo loc_1E3B0CD
  loc_1E4933A: End If
  loc_1E49344: If (var_188 = "Stock Summary") Then
  loc_1E49351:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E4935A:     Set var_90 = New FrmChangeRest
  loc_1E4935F:     var_CC = 1
  loc_1E49368:     Call var_90.Show
  loc_1E49370:     var_CC = 0
  loc_1E49379:     Call var_90.ZOrder
  loc_1E4937F:   End If
  loc_1E49387:   Set var_90 = New rPOSRepView
  loc_1E49395:   var_90.GRepFormName = "RStockSummary"
  loc_1E493A5:   var_90.CAPTION = CVar(arg_10)
  loc_1E493AE:   Call var_90.Show
  loc_1E493B4:   GoTo loc_1E3B0CD
  loc_1E493B7: End If
  loc_1E493C1: If (var_188 = "Deletion of Cash Bill") Then
  loc_1E493C4:   GoTo loc_1E3B0CD
  loc_1E493C7: End If
  loc_1E493D1: If (var_188 = "Kitchen Stock Summary") Then
  loc_1E493DE:   If (MemVar_1F921A4 = vbNullString) Then
  loc_1E493E7:     Set var_90 = New FrmChangeRest
  loc_1E493EC:     var_CC = 1
  loc_1E493F5:     Call var_90.Show
  loc_1E493FD:     var_CC = 0
  loc_1E49406:     Call var_90.ZOrder
  loc_1E4940C:   End If
  loc_1E49414:   Set var_90 = New rPOSRepView
  loc_1E49422:   var_90.GRepFormName = "KitchenStkSumm"
  loc_1E49432:   var_90.CAPTION = CVar(arg_10)
  loc_1E4943B:   Call var_90.Show
  loc_1E49441:   GoTo loc_1E3B0CD
  loc_1E49444: End If
  loc_1E4944E: If (var_188 = "Restaurant Change") Then
  loc_1E4945F:   Call New FrmChangeRest.Show
  loc_1E49465:   GoTo loc_1E3B0CD
  loc_1E49468: End If
  loc_1E49472: If (var_188 = "POS Status") Then
  loc_1E49483:   Call New RsStatusScreen.Show
  loc_1E49489:   GoTo loc_1E3B0CD
  loc_1E4948C: End If
  loc_1E49496: If (var_188 = "Item Sale Report") Then
  loc_1E4949F:   Set var_90 = New rHallRepView
  loc_1E494AD:   var_90.GRepFormName = "ItemSale"
  loc_1E494BD:   var_90.CAPTION = CVar(arg_10)
  loc_1E494C6:   Call var_90.Show
  loc_1E494CC:   GoTo loc_1E3B0CD
  loc_1E494CF: End If
  loc_1E494D9: If (var_188 = "Account Posting") Then
  loc_1E494DC:   GoTo loc_1E3B0CD
  loc_1E494DF: End If
  loc_1E494E9: If (var_188 = "Birthday/Marriage Report") Then
  loc_1E494F2:   Set var_90 = New rHallRepView
  loc_1E49500:   var_90.GRepFormName = "BirthMarrRep"
  loc_1E49510:   var_90.CAPTION = CVar(arg_10)
  loc_1E49519:   Call var_90.Show
  loc_1E4951F:   GoTo loc_1E3B0CD
  loc_1E49522: End If
  loc_1E4952C: If (var_188 = "Guest Observation Report") Then
  loc_1E49535:   Set var_90 = New rHallRepView
  loc_1E49543:   var_90.GRepFormName = "GuestObservRep"
  loc_1E49553:   var_90.CAPTION = CVar(arg_10)
  loc_1E4955C:   Call var_90.Show
  loc_1E49562:   GoTo loc_1E3B0CD
  loc_1E49565: End If
  loc_1E4956F: Loop Until (var_188 = "Room Inventory") 'do at: 1E395A8
  loc_1E49578: Set var_90 = New rFomRepView
  loc_1E49586: var_90.GRepFormName = "RoomInventory"
  loc_1E49596: var_90.CAPTION = CVar(arg_10)
  loc_1E4959F: Call var_90.Show
  loc_1E495A5: GoTo loc_1E3B0CD
  loc_1E495B2: Loop Until (var_188 = "Charges Posting") 'do at: 1E395DC
  loc_1E495BB: Set var_90 = New fdPostChrg
  loc_1E495CA: var_90.CAPTION = CVar(arg_10)
  loc_1E495D3: Call var_90.Show
  loc_1E495D9: GoTo loc_1E3B0CD
  loc_1E495E6: Loop Until (var_188 = "Charge Payment Detail") 'do at: 1E3961F
  loc_1E495EF: Set var_90 = New rFomRepView
  loc_1E495FD: var_90.GRepFormName = "GuestChgJournal"
  loc_1E4960D: var_90.CAPTION = CVar(arg_10)
  loc_1E49616: Call var_90.Show
  loc_1E4961C: GoTo loc_1E3B0CD
  loc_1E49629: Loop Until (var_188 = "Guest Trail") 'do at: 1E39662
  loc_1E49632: Set var_90 = New rFomRepView
  loc_1E49640: var_90.GRepFormName = "GuestTrialBalance"
  loc_1E49650: var_90.CAPTION = CVar(arg_10)
  loc_1E49659: Call var_90.Show
  loc_1E4965F: GoTo loc_1E3B0CD
  loc_1E4966C: Loop Until (var_188 = "Occupancy Analysis") 'do at: 1E396A5
  loc_1E49675: Set var_90 = New rFomRepView
  loc_1E49683: var_90.GRepFormName = "OccAnalysis"
  loc_1E49693: var_90.CAPTION = CVar(arg_10)
  loc_1E4969C: Call var_90.Show
  loc_1E496A2: GoTo loc_1E3B0CD
  loc_1E496AF: Loop Until (var_188 = "Market Segment Analysis") 'do at: 1E396E8
  loc_1E496B8: Set var_90 = New rFomRepView
  loc_1E496C6: var_90.GRepFormName = "MarketSegAnalysis"
  loc_1E496D6: var_90.CAPTION = CVar(arg_10)
  loc_1E496DF: Call var_90.Show
  loc_1E496E5: GoTo loc_1E3B0CD
  loc_1E496F2: Loop Until (var_188 = "Business Source Analysis") 'do at: 1E3972B
  loc_1E496FB: Set var_90 = New rFomRepView
  loc_1E49709: var_90.GRepFormName = "BusinessAnalysis"
  loc_1E49719: var_90.CAPTION = CVar(arg_10)
  loc_1E49722: Call var_90.Show
  loc_1E49728: GoTo loc_1E3B0CD
  loc_1E49735: Loop Until (var_188 = "Company Analysis") 'do at: 1E3976E
  loc_1E4973E: Set var_90 = New rFomRepView
  loc_1E4974C: var_90.GRepFormName = "CompanyAnalysis"
  loc_1E4975C: var_90.CAPTION = CVar(arg_10)
  loc_1E49765: Call var_90.Show
  loc_1E4976B: GoTo loc_1E3B0CD
  loc_1E49778: Loop Until (var_188 = "Travel Agent Analysis") 'do at: 1E397B1
  loc_1E49781: Set var_90 = New rFomRepView
  loc_1E4978F: var_90.GRepFormName = "TravelAgentAnalysis"
  loc_1E4979F: var_90.CAPTION = CVar(arg_10)
  loc_1E497A8: Call var_90.Show
  loc_1E497AE: GoTo loc_1E3B0CD
  loc_1E497BB: Loop Until (var_188 = "Night Audit Report") 'do at: 1E397C1
  loc_1E497BE: GoTo loc_1E3B0CD
  loc_1E497CB: Loop Until (var_188 = "A/C Posting") 'do at: 1E397F5
  loc_1E497D4: Set var_90 = New fdAcPostChrg
  loc_1E497E3: var_90.CAPTION = CVar(arg_10)
  loc_1E497EC: Call var_90.Show
  loc_1E497F2: GoTo loc_1E3B0CD
  loc_1E497FF: Loop Until (var_188 = "Automated Morning Report (A.M.R.)") 'do at: 1E39838
  loc_1E49808: Set var_90 = New rFomRepView
  loc_1E49816: var_90.GRepFormName = "AMRMorningReport"
  loc_1E49826: var_90.CAPTION = CVar(arg_10)
  loc_1E4982F: Call var_90.Show
  loc_1E49835: GoTo loc_1E3B0CD
  loc_1E49842: Loop Until Not (var_188 = "Daily Report") 'do at: 1E39850
  loc_1E4984D: Loop Until (var_188 = "Daily Report ") 'do at: 1E39886
  loc_1E49856: Set var_90 = New rFomRepView
  loc_1E49864: var_90.GRepFormName = "DailyReport"
  loc_1E49874: var_90.CAPTION = CVar(arg_10)
  loc_1E4987D: Call var_90.Show
  loc_1E49883: GoTo loc_1E3B0CD
  loc_1E49890: Loop Until (var_188 = "Leave") 'do at: 1E398BA
  loc_1E49899: Set var_90 = New prAttend
  loc_1E498A8: var_90.CAPTION = CVar(arg_10)
  loc_1E498B1: Call var_90.Show
  loc_1E498B7: GoTo loc_1E3B0CD
  loc_1E498C4: Loop Until (var_188 = "Attendance") 'do at: 1E398EE
  loc_1E498CD: Set var_90 = New PrAttend1
  loc_1E498DC: var_90.CAPTION = CVar(arg_10)
  loc_1E498E5: Call var_90.Show
  loc_1E498EB: GoTo loc_1E3B0CD
  loc_1E498F8: Loop Until (var_188 = "Loan/Advance") 'do at: 1E39922
  loc_1E49901: Set var_90 = New PrLoan
  loc_1E49910: var_90.CAPTION = CVar(arg_10)
  loc_1E49919: Call var_90.Show
  loc_1E4991F: GoTo loc_1E3B0CD
  loc_1E4992C: Loop Until (var_188 = "Salary Creation") 'do at: 1E39956
  loc_1E49935: Set var_90 = New prSalCreate
  loc_1E49944: var_90.CAPTION = CVar(arg_10)
  loc_1E4994D: Call var_90.Show
  loc_1E49953: GoTo loc_1E3B0CD
  loc_1E49960: Loop Until (var_188 = "Leave Encashment") 'do at: 1E3998A
  loc_1E49969: Set var_90 = New PrLeavench
  loc_1E49978: var_90.CAPTION = CVar(arg_10)
  loc_1E49981: Call var_90.Show
  loc_1E49987: GoTo loc_1E3B0CD
  loc_1E49994: Loop Until (var_188 = "Over Time") 'do at: 1E399BE
  loc_1E4999D: Set var_90 = New prOverTime
  loc_1E499AC: var_90.CAPTION = CVar(arg_10)
  loc_1E499B5: Call var_90.Show
  loc_1E499BB: GoTo loc_1E3B0CD
  loc_1E499C8: Loop Until (var_188 = "Attendence Report") 'do at: 1E39A01
  loc_1E499D1: Set var_90 = New rRepPayRoll
  loc_1E499DF: var_90.GRepFormName = "AttendanceRep"
  loc_1E499EF: var_90.CAPTION = CVar(arg_10)
  loc_1E499F8: Call var_90.Show
  loc_1E499FE: GoTo loc_1E3B0CD
  loc_1E49A0B: Loop Until (var_188 = "Pay Slip") 'do at: 1E39A44
  loc_1E49A14: Set var_90 = New rRepPayRoll
  loc_1E49A22: var_90.GRepFormName = "PaySlip"
  loc_1E49A32: var_90.CAPTION = CVar(arg_10)
  loc_1E49A3B: Call var_90.Show
  loc_1E49A41: GoTo loc_1E3B0CD
  loc_1E49A4E: Loop Until (var_188 = "Loan Register") 'do at: 1E39A87
  loc_1E49A57: Set var_90 = New rRepPayRoll
  loc_1E49A65: var_90.GRepFormName = "LoanReg"
  loc_1E49A75: var_90.CAPTION = CVar(arg_10)
  loc_1E49A7E: Call var_90.Show
  loc_1E49A84: GoTo loc_1E3B0CD
  loc_1E49A91: Loop Until (var_188 = "Loan/Advance Summary") 'do at: 1E39ACA
  loc_1E49A9A: Set var_90 = New rRepPayRoll
  loc_1E49AA8: var_90.GRepFormName = "LoanAdvSumm"
  loc_1E49AB8: var_90.CAPTION = CVar(arg_10)
  loc_1E49AC1: Call var_90.Show
  loc_1E49AC7: GoTo loc_1E3B0CD
  loc_1E49AD4: Loop Until (var_188 = "Payroll Register") 'do at: 1E39B0D
  loc_1E49ADD: Set var_90 = New rRepPayRoll
  loc_1E49AEB: var_90.GRepFormName = "PayrollReg"
  loc_1E49AFB: var_90.CAPTION = CVar(arg_10)
  loc_1E49B04: Call var_90.Show
  loc_1E49B0A: GoTo loc_1E3B0CD
  loc_1E49B17: Loop Until (var_188 = "PF Statement") 'do at: 1E39B50
  loc_1E49B20: Set var_90 = New rRepPayRoll
  loc_1E49B2E: var_90.GRepFormName = "PFStatement"
  loc_1E49B3E: var_90.CAPTION = CVar(arg_10)
  loc_1E49B47: Call var_90.Show
  loc_1E49B4D: GoTo loc_1E3B0CD
  loc_1E49B5A: Loop Until (var_188 = "Loan/Advance Ledger") 'do at: 1E39B93
  loc_1E49B63: Set var_90 = New rRepPayRoll
  loc_1E49B71: var_90.GRepFormName = "LoanLedg"
  loc_1E49B81: var_90.CAPTION = CVar(arg_10)
  loc_1E49B8A: Call var_90.Show
  loc_1E49B90: GoTo loc_1E3B0CD
  loc_1E49B9D: Loop Until (var_188 = "Form C") 'do at: 1E39BD6
  loc_1E49BA6: Set var_90 = New rRepPayRoll
  loc_1E49BB4: var_90.GRepFormName = "FormC"
  loc_1E49BC4: var_90.CAPTION = CVar(arg_10)
  loc_1E49BCD: Call var_90.Show
  loc_1E49BD3: GoTo loc_1E3B0CD
  loc_1E49BE0: Loop Until (var_188 = "Gratuity Report") 'do at: 1E39C19
  loc_1E49BE9: Set var_90 = New rRepPayRoll
  loc_1E49BF7: var_90.GRepFormName = "GratuityReport"
  loc_1E49C07: var_90.CAPTION = CVar(arg_10)
  loc_1E49C10: Call var_90.Show
  loc_1E49C16: GoTo loc_1E3B0CD
  loc_1E49C23: Loop Until (var_188 = "Telephone") 'do at: 1E39C29
  loc_1E49C26: GoTo loc_1E3B0CD
  loc_1E49C33: Loop Until (var_188 = "Printing Parameters") 'do at: 1E39C5D
  loc_1E49C3C: Set var_90 = New frmPrintModule
  loc_1E49C4B: var_90.CAPTION = CVar(arg_10)
  loc_1E49C54: Call var_90.Show
  loc_1E49C5A: GoTo loc_1E3B0CD
  loc_1E49C67: Loop Until (var_188 = "Printing Setup") 'do at: 1E39C91
  loc_1E49C70: Set var_90 = New frmMod_Print
  loc_1E49C7F: var_90.CAPTION = CVar(arg_10)
  loc_1E49C88: Call var_90.Show
  loc_1E49C8E: GoTo loc_1E3B0CD
  loc_1E49C9B: Loop Until (var_188 = "Revenue Wise Budget Entry") 'do at: 1E39CC5
  loc_1E49CA4: Set var_90 = New FrmRevenueWiseBudget
  loc_1E49CB3: var_90.CAPTION = CVar(arg_10)
  loc_1E49CBC: Call var_90.Show
  loc_1E49CC2: GoTo loc_1E3B0CD
  loc_1E49CCF: Loop Until (var_188 = "Outlet Bill Sundry Setting") 'do at: 1E39CF9
  loc_1E49CD8: Set var_90 = New OutLetSundry
  loc_1E49CE7: var_90.CAPTION = CVar(arg_10)
  loc_1E49CF0: Call var_90.Show
  loc_1E49CF6: GoTo loc_1E3B0CD
  loc_1E49D03: Loop Until (var_188 = "Room Status") 'do at: 1E39D4D
  loc_1E49D0C: Set var_90 = New InHouseGuestFolio
  loc_1E49D1B: var_90.CAPTION = CVar(arg_10)
  loc_1E49D2B: var_90.PGuestName = CVar(var_9C)
  loc_1E49D3B: var_90.PRoomNo = CVar(var_A4)
  loc_1E49D44: Call var_90.Show
  loc_1E49D4A: GoTo loc_1E3B0CD
  loc_1E49D57: Loop Until (var_188 = "Bill Reprint") 'do at: 1E39D81
  loc_1E49D60: Set var_90 = New frmFomB
  loc_1E49D6F: var_90.CAPTION = CVar(arg_10)
  loc_1E49D78: Call var_90.Show
  loc_1E49D7E: GoTo loc_1E3B0CD
  loc_1E49D8B: Loop Until (var_188 = "Reverse check-out") 'do at: 1E39DB5
  loc_1E49D94: Set var_90 = New FdRevCheckOut
  loc_1E49DA3: var_90.CAPTION = CVar(arg_10)
  loc_1E49DAC: Call var_90.Show
  loc_1E49DB2: GoTo loc_1E3B0CD
  loc_1E49DBF: Loop Until (var_188 = "Settelment Report") 'do at: 1E39DF8
  loc_1E49DC8: Set var_90 = New rFomRepView
  loc_1E49DD6: var_90.GRepFormName = "SettleRep"
  loc_1E49DE6: var_90.CAPTION = CVar(arg_10)
  loc_1E49DEF: Call var_90.Show
  loc_1E49DF5: GoTo loc_1E3B0CD
  loc_1E49E02: Loop Until (var_188 = "Night Audit Process") 'do at: 1E39F48
  loc_1E49E2B: var_90.Connection15.Execute "Select KOTAtNightAudit,POSBillAtNightAudit from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_DC, -1
  loc_1E49E36: Set var_B0 = var_E0
  loc_1E49E5C: Loop Until (var_B0.RecordCount > 0) 'do at: 1E39F07
  loc_1E49E64: var_CC = "KOTAtNightAudit"
  loc_1E49E70: var_E0 = var_B0.Fields
  loc_1E49E9A: Loop Until (Proc_6_38_E68A98(CVar(var_E0.Item(var_CC)), var_E0, var_CC, var_CC, var_CC, var_CC, var_CC) = "Yes") 'do at: 1E39EB1
  loc_1E49EA7: Loop Until (Proc_96_47_101DC9C(var_CC, var_CC, var_CC) = 0) 'do at: 1E39EB1
  loc_1E49EB8: var_CC = "POSBillAtNightAudit"
  loc_1E49EEE: Loop Until (Proc_6_38_E68A98(CVar(var_B0.Fields.Item(var_CC)), &HFF, var_CC) = "Yes") 'do at: 1E39F05
  loc_1E49EFB: Loop Until (Proc_96_46_110BD38(var_CC) = 0) 'do at: 1E39F05
  loc_1E49F11: Loop Until (&HFF = &HFF) 'do at: 1E39F21
  loc_1E49F1B: Set var_B0 = Nothing
  loc_1E49F20: Exit Sub
  loc_1E49F27: Set var_90 = New fdAcPostChrg
  loc_1E49F36: var_90.CAPTION = CVar(arg_10)
  loc_1E49F3F: Call var_90.Show
  loc_1E49F45: GoTo loc_1E3B0CD
  loc_1E49F52: Loop Until (var_188 = "Reverse Night Audit") 'do at: 1E39F7C
  loc_1E49F5B: Set var_90 = New frmReNightAudit
  loc_1E49F6A: var_90.CAPTION = CVar(arg_10)
  loc_1E49F73: Call var_90.Show
  loc_1E49F79: GoTo loc_1E3B0CD
  loc_1E49F86: Loop Until (var_188 = "Data Transfer") 'do at: 1E39FBD
  loc_1E49F91: Loop Until (MemVar_1F920B8 >= 1) 'do at: 1E39FB8
  loc_1E49F9A: Set var_90 = New Transfer
  loc_1E49FA9: var_90.CAPTION = CVar(arg_10)
  loc_1E49FB2: Call var_90.Show
  loc_1E49FBA: GoTo loc_1E3B0CD
  loc_1E49FC7: Loop Until (var_188 = "Transfer (Offline)") 'do at: 1E3A010
  loc_1E49FD2: Loop Until (MemVar_1F920B8 >= 1) 'do at: 1E3A00B
  loc_1E49FDB: Set var_90 = New Transfer
  loc_1E49FEC: var_90.OpenMode = 2
  loc_1E49FFC: var_90.CAPTION = CVar(var_94)
  loc_1E4A005: Call var_90.Show
  loc_1E4A00D: GoTo loc_1E3B0CD
  loc_1E4A01A: Loop Until (var_188 = "Transfer (Online)") 'do at: 1E3A063
  loc_1E4A025: Loop Until (MemVar_1F920B8 >= 1) 'do at: 1E3A05E
  loc_1E4A02E: Set var_90 = New Transfer
  loc_1E4A03F: var_90.OpenMode = 1
  loc_1E4A04F: var_90.CAPTION = CVar(var_94)
  loc_1E4A058: Call var_90.Show
  loc_1E4A060: GoTo loc_1E3B0CD
  loc_1E4A06D: Loop Until (var_188 = "Tally Export(XML)") 'do at: 1E3A09C
  loc_1E4A078: Loop Until (MemVar_1F920B8 >= 1) 'do at: 1E3A097
  loc_1E4A089: Call New frmTallyExport.Show
  loc_1E4A093: Set var_90 = Nothing 
  loc_1E4A099: GoTo loc_1E3B0CD
  loc_1E4A0A6: Loop Until (var_188 = "Godrej Locks") 'do at: 1E3A0D1
  loc_1E4A0B4: var_CC = 1
  loc_1E4A0C0: Call New frmGodrejLockSettings.Show
  loc_1E4A0CA: Set var_90 = Nothing 
  loc_1E4A0CE: GoTo loc_1E3B0CD
  loc_1E4A0DB: Loop Until (var_188 = "Current Balance Updation") 'do at: 1E3A105
  loc_1E4A0E4: Set var_90 = New FaCurrBalUpdate
  loc_1E4A0F3: var_90.CAPTION = CVar(arg_10)
  loc_1E4A0FC: Call var_90.Show
  loc_1E4A102: GoTo loc_1E3B0CD
  loc_1E4A10F: Loop Until (var_188 = "Menu Item Copy") 'do at: 1E3A139
  loc_1E4A118: Set var_90 = New frmMenuItemCopy
  loc_1E4A127: var_90.CAPTION = CVar(arg_10)
  loc_1E4A130: Call var_90.Show
  loc_1E4A136: GoTo loc_1E3B0CD
  loc_1E4A143: Loop Until (var_188 = "Unit Master") 'do at: 1E3A16D
  loc_1E4A14C: Set var_90 = New frmUnitMast
  loc_1E4A15B: var_90.CAPTION = CVar(arg_10)
  loc_1E4A164: Call var_90.Show
  loc_1E4A16A: GoTo loc_1E3B0CD
  loc_1E4A177: Loop Until (var_188 = "Task Scheduler") 'do at: 1E3A1A1
  loc_1E4A180: Set var_90 = New FrmJobScheduler
  loc_1E4A18F: var_90.CAPTION = CVar(arg_10)
  loc_1E4A198: Call var_90.Show
  loc_1E4A19E: GoTo loc_1E3B0CD
  loc_1E4A1AB: Loop Until (var_188 = "POS Bill Deletion") 'do at: 1E3A1D5
  loc_1E4A1B4: Set var_90 = New FrmPOSBillDeletion
  loc_1E4A1C3: var_90.CAPTION = CVar(arg_10)
  loc_1E4A1CC: Call var_90.Show
  loc_1E4A1D2: GoTo loc_1E3B0CD
  loc_1E4A1DF: Loop Until (var_188 = "Category Master") 'do at: 1E3A209
  loc_1E4A1E8: Set var_90 = New MemCatMast
  loc_1E4A1F7: var_90.CAPTION = CVar(arg_10)
  loc_1E4A200: Call var_90.Show
  loc_1E4A206: GoTo loc_1E3B0CD
  loc_1E4A213: Loop Until (var_188 = "Member Master") 'do at: 1E3A23D
  loc_1E4A21C: Set var_90 = New MemCatMast
  loc_1E4A22B: var_90.CAPTION = CVar(arg_10)
  loc_1E4A234: Call var_90.Show
  loc_1E4A23A: GoTo loc_1E3B0CD
  loc_1E4A247: Loop Until (var_188 = "Revenue Master") 'do at: 1E3A271
  loc_1E4A250: Set var_90 = New MemberShipRevenueMast
  loc_1E4A25F: var_90.CAPTION = CVar(arg_10)
  loc_1E4A268: Call var_90.Show
  loc_1E4A26E: GoTo loc_1E3B0CD
  loc_1E4A27B: Loop Until (var_188 = "Facility Master") 'do at: 1E3A2CD
  loc_1E4A288: Loop Until (var_A8 = "MemMas") 'do at: 1E3A297
  loc_1E4A291: Set var_90 = New memFacilityMast
  loc_1E4A294: GoTo loc_1E3A2AD
  loc_1E4A2A1: Loop Until (var_A8 = "MallMgmt") 'do at: 1E3A2AD
  loc_1E4A2AA: Set var_90 = New FrmFacilityMast
  loc_1E4A2BB: var_90.CAPTION = CVar(arg_10)
  loc_1E4A2C4: Call var_90.Show
  loc_1E4A2CA: GoTo loc_1E3B0CD
  loc_1E4A2D7: Loop Until (var_188 = "Category wise Revenue") 'do at: 1E3A301
  loc_1E4A2E0: Set var_90 = New memCatRevMast
  loc_1E4A2EF: var_90.CAPTION = CVar(arg_10)
  loc_1E4A2F8: Call var_90.Show
  loc_1E4A2FE: GoTo loc_1E3B0CD
  loc_1E4A30B: Loop Until (var_188 = "Category wise Facility") 'do at: 1E3A335
  loc_1E4A314: Set var_90 = New memCategoryFacilities
  loc_1E4A323: var_90.CAPTION = CVar(arg_10)
  loc_1E4A32C: Call var_90.Show
  loc_1E4A332: GoTo loc_1E3B0CD
  loc_1E4A33F: Loop Until (var_188 = "Member Age Wise Revenue") 'do at: 1E3A369
  loc_1E4A348: Set var_90 = New memAgeRevMast
  loc_1E4A357: var_90.CAPTION = CVar(arg_10)
  loc_1E4A360: Call var_90.Show
  loc_1E4A366: GoTo loc_1E3B0CD
  loc_1E4A373: Loop Until (var_188 = "Member Select Category") 'do at: 1E3A39D
  loc_1E4A37C: Set var_90 = New MemSelectCategory
  loc_1E4A38B: var_90.CAPTION = CVar(arg_10)
  loc_1E4A394: Call var_90.Show
  loc_1E4A39A: GoTo loc_1E3B0CD
  loc_1E4A3A7: Loop Until (var_188 = "Environment Settings") 'do at: 1E3A3D1
  loc_1E4A3B0: Set var_90 = New MemberEnviro
  loc_1E4A3BF: var_90.CAPTION = CVar(arg_10)
  loc_1E4A3C8: Call var_90.Show
  loc_1E4A3CE: GoTo loc_1E3B0CD
  loc_1E4A3DB: Loop Until (var_188 = "Member Visit Entry") 'do at: 1E3A405
  loc_1E4A3E4: Set var_90 = New MemVisitEntry
  loc_1E4A3F3: var_90.CAPTION = CVar(arg_10)
  loc_1E4A3FC: Call var_90.Show
  loc_1E4A402: GoTo loc_1E3B0CD
  loc_1E4A40F: Loop Until (var_188 = "Member Renewal Entry") 'do at: 1E3A439
  loc_1E4A418: Set var_90 = New MemRenewalEntry
  loc_1E4A427: var_90.CAPTION = CVar(arg_10)
  loc_1E4A430: Call var_90.Show
  loc_1E4A436: GoTo loc_1E3B0CD
  loc_1E4A443: Loop Until (var_188 = "Member Used Facility Entry") 'do at: 1E3A46D
  loc_1E4A44C: Set var_90 = New MemFacilityEntry
  loc_1E4A45B: var_90.CAPTION = CVar(arg_10)
  loc_1E4A464: Call var_90.Show
  loc_1E4A46A: GoTo loc_1E3B0CD
  loc_1E4A477: Loop Until (var_188 = "Member Facility Billing") 'do at: 1E3A4A1
  loc_1E4A480: Set var_90 = New MemFacilityBilling
  loc_1E4A48F: var_90.CAPTION = CVar(arg_10)
  loc_1E4A498: Call var_90.Show
  loc_1E4A49E: GoTo loc_1E3B0CD
  loc_1E4A4AB: Loop Until (var_188 = "Member Bill Printing") 'do at: 1E3A4D5
  loc_1E4A4B4: Set var_90 = New MemBillPrintingModule
  loc_1E4A4C3: var_90.CAPTION = CVar(arg_10)
  loc_1E4A4CC: Call var_90.Show
  loc_1E4A4D2: GoTo loc_1E3B0CD
  loc_1E4A4DF: Loop Until (var_188 = "Member Assistant") 'do at: 1E3A509
  loc_1E4A4E8: Set var_90 = New MemAssistant
  loc_1E4A4F7: var_90.CAPTION = CVar(arg_10)
  loc_1E4A500: Call var_90.Show
  loc_1E4A506: GoTo loc_1E3B0CD
  loc_1E4A513: Loop Until (var_188 = "Outstation Member Entry") 'do at: 1E3A53D
  loc_1E4A51C: Set var_90 = New memOutStationEntry
  loc_1E4A52B: var_90.CAPTION = CVar(arg_10)
  loc_1E4A534: Call var_90.Show
  loc_1E4A53A: GoTo loc_1E3B0CD
  loc_1E4A547: Loop Until (var_188 = "Member Category Change Entry") 'do at: 1E3A571
  loc_1E4A550: Set var_90 = New memCatChngEntry
  loc_1E4A55F: var_90.CAPTION = CVar(arg_10)
  loc_1E4A568: Call var_90.Show
  loc_1E4A56E: GoTo loc_1E3B0CD
  loc_1E4A57B: Loop Until (var_188 = "Payment Receive Entry") 'do at: 1E3A5A5
  loc_1E4A584: Set var_90 = New MemPaymentReceive
  loc_1E4A593: var_90.CAPTION = CVar(arg_10)
  loc_1E4A59C: Call var_90.Show
  loc_1E4A5A2: GoTo loc_1E3B0CD
  loc_1E4A5AF: Loop Until (var_188 = "Auto Settle Card Balance") 'do at: 1E3A5D9
  loc_1E4A5B8: Set var_90 = New MemAutoSettleCardBalance
  loc_1E4A5C7: var_90.CAPTION = CVar(arg_10)
  loc_1E4A5D0: Call var_90.Show
  loc_1E4A5D6: GoTo loc_1E3B0CD
  loc_1E4A5E3: Loop Until (var_188 = "Payment Due Letter Entry") 'do at: 1E3A60D
  loc_1E4A5EC: Set var_90 = New MemTagadaLetter
  loc_1E4A5FB: var_90.CAPTION = CVar(arg_10)
  loc_1E4A604: Call var_90.Show
  loc_1E4A60A: GoTo loc_1E3B0CD
  loc_1E4A617: Loop Until (var_188 = "Member Category Change (Conditional)") 'do at: 1E3A641
  loc_1E4A620: Set var_90 = New memCatChngCond
  loc_1E4A62F: var_90.CAPTION = CVar(arg_10)
  loc_1E4A638: Call var_90.Show
  loc_1E4A63E: GoTo loc_1E3B0CD
  loc_1E4A64B: Loop Until Not (var_188 = "Member Visit Details") 'do at: 1E3A659
  loc_1E4A656: Loop Until (var_188 = "Member Visit Detail") 'do at: 1E3A68F
  loc_1E4A65F: Set var_90 = New rMemberRepView
  loc_1E4A66D: var_90.GRepFormName = "MemVisitDetail"
  loc_1E4A67D: var_90.CAPTION = CVar(arg_10)
  loc_1E4A686: Call var_90.Show
  loc_1E4A68C: GoTo loc_1E3B0CD
  loc_1E4A699: Loop Until (var_188 = "Member Mailing Labels") 'do at: 1E3A6D2
  loc_1E4A6A2: Set var_90 = New rMemberRepView
  loc_1E4A6B0: var_90.GRepFormName = "MemMalingLabels"
  loc_1E4A6C0: var_90.CAPTION = CVar(arg_10)
  loc_1E4A6C9: Call var_90.Show
  loc_1E4A6CF: GoTo loc_1E3B0CD
  loc_1E4A6DC: Loop Until (var_188 = "Member Bill Missing Report") 'do at: 1E3A715
  loc_1E4A6E5: Set var_90 = New rMemberRepView
  loc_1E4A6F3: var_90.GRepFormName = "MemBillMissingReport"
  loc_1E4A703: var_90.CAPTION = CVar(arg_10)
  loc_1E4A70C: Call var_90.Show
  loc_1E4A712: GoTo loc_1E3B0CD
  loc_1E4A71F: Loop Until (var_188 = "Member Sales Register") 'do at: 1E3A758
  loc_1E4A728: Set var_90 = New rMemberRepView
  loc_1E4A736: var_90.GRepFormName = "MemSalesRegister"
  loc_1E4A746: var_90.CAPTION = CVar(arg_10)
  loc_1E4A74F: Call var_90.Show
  loc_1E4A755: GoTo loc_1E3B0CD
  loc_1E4A762: Loop Until (var_188 = "Member Ledger") 'do at: 1E3A7B0
  loc_1E4A76B: Set var_90 = New FaReports
  loc_1E4A779: var_90.GRepFormName = "MemLed"
  loc_1E4A78B: var_90.BtnParam.Visible = True
  loc_1E4A79E: var_90.CAPTION = CVar(arg_10)
  loc_1E4A7A7: Call var_90.Show
  loc_1E4A7AD: GoTo loc_1E3B0CD
  loc_1E4A7BA: Loop Until (var_188 = "Member Tax Report") 'do at: 1E3A7F3
  loc_1E4A7C3: Set var_90 = New rMemberRepView
  loc_1E4A7D1: var_90.GRepFormName = "MemTaxReport"
  loc_1E4A7E1: var_90.CAPTION = CVar(arg_10)
  loc_1E4A7EA: Call var_90.Show
  loc_1E4A7F0: GoTo loc_1E3B0CD
  loc_1E4A7FD: Loop Until (var_188 = "Payment Due Letter Report") 'do at: 1E3A836
  loc_1E4A806: Set var_90 = New rMemberRepView
  loc_1E4A814: var_90.GRepFormName = "PaymentDueLetterReport"
  loc_1E4A824: var_90.CAPTION = CVar(arg_10)
  loc_1E4A82D: Call var_90.Show
  loc_1E4A833: GoTo loc_1E3B0CD
  loc_1E4A840: Loop Until (var_188 = "Member Birthday/Anniversary Details") 'do at: 1E3A879
  loc_1E4A849: Set var_90 = New rMemberRepView
  loc_1E4A857: var_90.GRepFormName = "MemBirthAnnvDtls"
  loc_1E4A867: var_90.CAPTION = CVar(arg_10)
  loc_1E4A870: Call var_90.Show
  loc_1E4A876: GoTo loc_1E3B0CD
  loc_1E4A883: Loop Until (var_188 = "SMS Center Settings") 'do at: 1E3A8B0
  loc_1E4A88E: Set var_90 = MemVar_1F92464 
  loc_1E4A89E: var_90.CAPTION = CVar(arg_10)
  loc_1E4A8A7: Call var_90.Show
  loc_1E4A8AD: GoTo loc_1E3B0CD
  loc_1E4A8BA: Loop Until (var_188 = "SMS Environment Settings") 'do at: 1E3A8E7
  loc_1E4A8C5: Set var_90 = MemVar_1F9243C 
  loc_1E4A8D5: var_90.CAPTION = CVar(arg_10)
  loc_1E4A8DE: Call var_90.Show
  loc_1E4A8E4: GoTo loc_1E3B0CD
  loc_1E4A8F1: Loop Until (var_188 = "Multiple SMS Type") 'do at: 1E3A91E
  loc_1E4A8FC: Set var_90 = MemVar_1F92450 
  loc_1E4A90C: var_90.CAPTION = CVar(arg_10)
  loc_1E4A915: Call var_90.Show
  loc_1E4A91B: GoTo loc_1E3B0CD
  loc_1E4A928: Loop Until (var_188 = "GRC Printing") 'do at: 1E3A961
  loc_1E4A931: Set var_90 = New rRepReserv
  loc_1E4A93F: var_90.GRepFormName = "GRC"
  loc_1E4A94F: var_90.CAPTION = CVar(arg_10)
  loc_1E4A958: Call var_90.Show
  loc_1E4A95E: GoTo loc_1E3B0CD
  loc_1E4A96B: Loop Until (var_188 = "Check Out Register") 'do at: 1E3A9A4
  loc_1E4A974: Set var_90 = New rFomRepView
  loc_1E4A982: var_90.GRepFormName = "GuestBillDetails"
  loc_1E4A992: var_90.CAPTION = CVar(arg_10)
  loc_1E4A99B: Call var_90.Show
  loc_1E4A9A1: GoTo loc_1E3B0CD
  loc_1E4A9AE: Loop Until (var_188 = "Credit Report") 'do at: 1E3A9E7
  loc_1E4A9B7: Set var_90 = New rFomRepView
  loc_1E4A9C5: var_90.GRepFormName = "CreditReport"
  loc_1E4A9D5: var_90.CAPTION = CVar(arg_10)
  loc_1E4A9DE: Call var_90.Show
  loc_1E4A9E4: GoTo loc_1E3B0CD
  loc_1E4A9F1: Loop Until (var_188 = "EInvoice Report") 'do at: 1E3AA2A
  loc_1E4A9FA: Set var_90 = New rFomRepView
  loc_1E4AA08: var_90.GRepFormName = "EInvoiceReport"
  loc_1E4AA18: var_90.CAPTION = CVar(arg_10)
  loc_1E4AA21: Call var_90.Show
  loc_1E4AA27: GoTo loc_1E3B0CD
  loc_1E4AA34: Loop Until (var_188 = "TDS Report") 'do at: 1E3AA6D
  loc_1E4AA3D: Set var_90 = New rFomRepView
  loc_1E4AA4B: var_90.GRepFormName = "TDSReport"
  loc_1E4AA5B: var_90.CAPTION = CVar(arg_10)
  loc_1E4AA64: Call var_90.Show
  loc_1E4AA6A: GoTo loc_1E3B0CD
  loc_1E4AA77: Loop Until (var_188 = "Guest Extra Charges") 'do at: 1E3AAB0
  loc_1E4AA80: Set var_90 = New rFomRepView
  loc_1E4AA8E: var_90.GRepFormName = "ExtraChargesDuringStay"
  loc_1E4AA9E: var_90.CAPTION = CVar(arg_10)
  loc_1E4AAA7: Call var_90.Show
  loc_1E4AAAD: GoTo loc_1E3B0CD
  loc_1E4AABA: Loop Until (var_188 = "Room Type Occupancy Analysis") 'do at: 1E3AAF3
  loc_1E4AAC3: Set var_90 = New rFomRepView
  loc_1E4AAD1: var_90.GRepFormName = "RoomTypeOccupancyAnalysis"
  loc_1E4AAE1: var_90.CAPTION = CVar(arg_10)
  loc_1E4AAEA: Call var_90.Show
  loc_1E4AAF0: GoTo loc_1E3B0CD
  loc_1E4AAFD: Loop Until (var_188 = "Plan Report") 'do at: 1E3AB36
  loc_1E4AB06: Set var_90 = New rFomRepView
  loc_1E4AB14: var_90.GRepFormName = "PlanReport"
  loc_1E4AB24: var_90.CAPTION = CVar(arg_10)
  loc_1E4AB2D: Call var_90.Show
  loc_1E4AB33: GoTo loc_1E3B0CD
  loc_1E4AB40: Loop Until (var_188 = "Business Source Occupancy Report") 'do at: 1E3AB79
  loc_1E4AB49: Set var_90 = New rFomRepView
  loc_1E4AB57: var_90.GRepFormName = "BussSourceOccupancyReport"
  loc_1E4AB67: var_90.CAPTION = CVar(arg_10)
  loc_1E4AB70: Call var_90.Show
  loc_1E4AB76: GoTo loc_1E3B0CD
  loc_1E4AB83: Loop Until (var_188 = "Plan Meal Tokens") 'do at: 1E3ABB1
  loc_1E4AB8C: Set var_90 = New rFomRepView
  loc_1E4AB9A: var_90.GRepFormName = "PlanMealTokens"
  loc_1E4ABAA: var_90.CAPTION = CVar(arg_10)
  loc_1E4ABAE: GoTo loc_1E3B0CD
  loc_1E4ABBB: Loop Until (var_188 = "FOM Tax Detail") 'do at: 1E3ABF4
  loc_1E4ABC4: Set var_90 = New rFomRepView
  loc_1E4ABD2: var_90.GRepFormName = "FOMTaxDetail"
  loc_1E4ABE2: var_90.CAPTION = CVar(arg_10)
  loc_1E4ABEB: Call var_90.Show
  loc_1E4ABF1: GoTo loc_1E3B0CD
  loc_1E4ABFE: Loop Until (var_188 = "Checked In Guest Detail") 'do at: 1E3AC37
  loc_1E4AC07: Set var_90 = New rRepReserv
  loc_1E4AC15: var_90.GRepFormName = "CheckedInGuestDtl"
  loc_1E4AC25: var_90.CAPTION = CVar(arg_10)
  loc_1E4AC2E: Call var_90.Show
  loc_1E4AC34: GoTo loc_1E3B0CD
  loc_1E4AC41: Loop Until (var_188 = "Room Rent Audit Report") 'do at: 1E3AC7A
  loc_1E4AC4A: Set var_90 = New rFomRepView
  loc_1E4AC58: var_90.GRepFormName = "RoomRentAuditRpt"
  loc_1E4AC68: var_90.CAPTION = CVar(arg_10)
  loc_1E4AC71: Call var_90.Show
  loc_1E4AC77: GoTo loc_1E3B0CD
  loc_1E4AC84: Loop Until (var_188 = "Sales Report") 'do at: 1E3ACBD
  loc_1E4AC8D: Set var_90 = New rFomRepView
  loc_1E4AC9B: var_90.GRepFormName = "SaleRegisterI"
  loc_1E4ACAB: var_90.CAPTION = CVar(arg_10)
  loc_1E4ACB4: Call var_90.Show
  loc_1E4ACBA: GoTo loc_1E3B0CD
  loc_1E4ACC7: Loop Until (var_188 = "Guest Payments") 'do at: 1E3AD00
  loc_1E4ACD0: Set var_90 = New rFomRepView
  loc_1E4ACDE: var_90.GRepFormName = "GuestPayments"
  loc_1E4ACEE: var_90.CAPTION = CVar(arg_10)
  loc_1E4ACF7: Call var_90.Show
  loc_1E4ACFD: GoTo loc_1E3B0CD
  loc_1E4AD0A: Loop Until (var_188 = "Tax Wise Charge Detail") 'do at: 1E3AD43
  loc_1E4AD13: Set var_90 = New rFomRepView
  loc_1E4AD21: var_90.GRepFormName = "FOMTaxWiseChargeDetail"
  loc_1E4AD31: var_90.CAPTION = CVar(arg_10)
  loc_1E4AD3A: Call var_90.Show
  loc_1E4AD40: GoTo loc_1E3B0CD
  loc_1E4AD4D: Loop Until (var_188 = "Company Profile") 'do at: 1E3AD86
  loc_1E4AD56: Set var_90 = New salmarCompProfile
  loc_1E4AD65: var_90.CAPTION = CVar(arg_10)
  loc_1E4AD6E: Call var_90.Show
  loc_1E4AD7F: var_90.WindowState = 2
  loc_1E4AD83: GoTo loc_1E3B0CD
  loc_1E4AD90: Loop Until (var_188 = "Happy Hours") 'do at: 1E3ADBA
  loc_1E4AD99: Set var_90 = New pHappyHours
  loc_1E4ADA8: var_90.CAPTION = CVar(arg_10)
  loc_1E4ADB1: Call var_90.Show
  loc_1E4ADB7: GoTo loc_1E3B0CD
  loc_1E4ADC4: Loop Until Not (var_188 = "Happy Hours [ Fee Items ]") 'do at: 1E3ADD2
  loc_1E4ADCF: Loop Until (var_188 = "Happy Hours [ Free Items ]") 'do at: 1E3ADF9
  loc_1E4ADD8: Set var_90 = New NewHappyHours
  loc_1E4ADE7: var_90.CAPTION = CVar(arg_10)
  loc_1E4ADF0: Call var_90.Show
  loc_1E4ADF6: GoTo loc_1E3B0CD
  loc_1E4AE03: Loop Until (var_188 = "Combo Pack") 'do at: 1E3AE2D
  loc_1E4AE0C: Set var_90 = New frmComboMast
  loc_1E4AE1B: var_90.CAPTION = CVar(arg_10)
  loc_1E4AE24: Call var_90.Show
  loc_1E4AE2A: GoTo loc_1E3B0CD
  loc_1E4AE37: Loop Until (var_188 = "Guest LookUp") 'do at: 1E3AE6A
  loc_1E4AE40: Set var_90 = New FrmBdayLookup
  loc_1E4AE4F: var_90.CAPTION = CVar(arg_10)
  loc_1E4AE55: var_CC = 1
  loc_1E4AE61: Call var_90.Show
  loc_1E4AE67: GoTo loc_1E3B0CD
  loc_1E4AE74: Loop Until (var_188 = "SMS (API)") 'do at: 1E3AEA1
  loc_1E4AE7F: Set var_90 = MemVar_1F92464 
  loc_1E4AE8F: var_90.CAPTION = CVar(arg_10)
  loc_1E4AE98: Call var_90.Show
  loc_1E4AE9E: GoTo loc_1E3B0CD
  loc_1E4AEAB: Loop Until (var_188 = "SMS (Scheduled)") 'do at: 1E3AED8
  loc_1E4AEB6: Set var_90 = MemVar_1F9243C 
  loc_1E4AEC6: var_90.CAPTION = CVar(arg_10)
  loc_1E4AECF: Call var_90.Show
  loc_1E4AED5: GoTo loc_1E3B0CD
  loc_1E4AEE2: Loop Until (var_188 = "SMS (Conditional)") 'do at: 1E3AF0F
  loc_1E4AEED: Set var_90 = MemVar_1F92450 
  loc_1E4AEFD: var_90.CAPTION = CVar(arg_10)
  loc_1E4AF06: Call var_90.Show
  loc_1E4AF0C: GoTo loc_1E3B0CD
  loc_1E4AF19: Loop Until (var_188 = "Location-Master") 'do at: 1E3AF43
  loc_1E4AF22: Set var_90 = New FrmLocationMast
  loc_1E4AF31: var_90.CAPTION = CVar(arg_10)
  loc_1E4AF3A: Call var_90.Show
  loc_1E4AF40: GoTo loc_1E3B0CD
  loc_1E4AF4D: Loop Until (var_188 = "Facility Master") 'do at: 1E3AF77
  loc_1E4AF56: Set var_90 = New FrmFacilityMast
  loc_1E4AF65: var_90.CAPTION = CVar(arg_10)
  loc_1E4AF6E: Call var_90.Show
  loc_1E4AF74: GoTo loc_1E3B0CD
  loc_1E4AF81: Loop Until (var_188 = "Location Facilities") 'do at: 1E3AFAB
  loc_1E4AF8A: Set var_90 = New FrmLocationFacilities
  loc_1E4AF99: var_90.CAPTION = CVar(arg_10)
  loc_1E4AFA2: Call var_90.Show
  loc_1E4AFA8: GoTo loc_1E3B0CD
  loc_1E4AFB5: Loop Until (var_188 = "Party Locations") 'do at: 1E3AFDF
  loc_1E4AFBE: Set var_90 = New FrmPartyLocations
  loc_1E4AFCD: var_90.CAPTION = CVar(arg_10)
  loc_1E4AFD6: Call var_90.Show
  loc_1E4AFDC: GoTo loc_1E3B0CD
  loc_1E4AFE9: Loop Until (var_188 = "Meter Reading") 'do at: 1E3B013
  loc_1E4AFF2: Set var_90 = New FrmMeterReading
  loc_1E4B001: var_90.CAPTION = CVar(arg_10)
  loc_1E4B00A: Call var_90.Show
  loc_1E4B010: GoTo loc_1E3B0CD
  loc_1E4B01D: Loop Until (var_188 = "Facility Billing") 'do at: 1E3B047
  loc_1E4B026: Set var_90 = New frmFacilityBillAdv
  loc_1E4B035: var_90.CAPTION = CVar(arg_10)
  loc_1E4B03E: Call var_90.Show
  loc_1E4B044: GoTo loc_1E3B0CD
  loc_1E4B051: Loop Until (var_188 = "Facility Sundry Setting") 'do at: 1E3B07B
  loc_1E4B05A: Set var_90 = New FacilitySundry
  loc_1E4B069: var_90.CAPTION = CVar(arg_10)
  loc_1E4B072: Call var_90.Show
  loc_1E4B078: GoTo loc_1E3B0CD
  loc_1E4B085: Loop Until (var_188 = "Facility Bill Register") 'do at: 1E3B0BE
  loc_1E4B08E: Set var_90 = New rFomRepView
  loc_1E4B09C: var_90.GRepFormName = "FacilityBillReg"
  loc_1E4B0AC: var_90.CAPTION = CVar(arg_10)
  loc_1E4B0B5: Call var_90.Show
  loc_1E4B0BB: GoTo loc_1E3B0CD
  loc_1E4B0C7: Print 1, var_94
  loc_1E4B0D3: Close 1
  loc_1E4B0DB: Set var_90 = Nothing 
  loc_1E4B0E6: Set var_B0 = Nothing
  loc_1E4B0F0: Set var_B8 = Nothing
  loc_1E4B0FA: Set var_BC = Nothing
  loc_1E4B0FF: Exit Sub
End Sub

Public Sub Proc_165_3_EF13CC(arg_C) 'EF13CC
  'Data Table: 4E88A0
  Dim var_DC As Integer
  Dim var_A0 As String
  Dim unk_4E88A6 As Connection15
  Dim var_C8 As Recordset15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  loc_EF1328: On Error Resume Next
  loc_EF1333: var_DC = 0
  loc_EF1371: var_A0 = "Select [Option] From MenuHelp Where Code=" & CStr(arg_C) & " AND UserName='" & MemVar_1F920C8 & "' and compcode='" & MemVar_1F92128
  loc_EF1381: unk_4E88A6.Execute var_A0 & "'", var_C4, -1
  loc_EF1389: var_C8 = var_C8.Fields
  loc_EF1391: var_DC = var_CC.Item(var_CC)
  loc_EF1399: var_E0 = var_E0.Value
  loc_EF13A2: var_88 = CStr(var_F0)
  loc_EF13C8: Exit Sub
End Sub

Public Sub Proc_165_4_102F29C(arg_C) '102F29C
  'Data Table: 4E88A0
  Dim var_A8 As String
  Dim unk_4E88A6 As Connection15
  Dim var_90 As Recordset15
  Dim var_D0 As Fields15
  Dim MemVar_1F921A8 As String
  Dim MemVar_1F921AC As String
  loc_102F090: On Error Resume Next
  loc_102F0CA: var_A8 = "Select OutletCode From MenuHelp Where Code=" & CStr(arg_C) & " AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_102F0DA: unk_4E88A6.Execute var_A8 & "'", var_CC, -1
  loc_102F0E5: Set var_90 = var_D0
  loc_102F115: If (var_90.RecordCount > 0) Then
  loc_102F150:   var_88 = CStr(Trim(var_90.Fields.Item(0).Value))
  loc_102F1C1:   unk_4E88A6.Execute CStr("Select RestType,BackColor From Depart Where Code='" & Trim(var_90.Fields.Item(0).Value) & "'"), var_148, -1
  loc_102F1CC:   Set var_90 = var_14C
  loc_102F1FE:   If (var_90.RecordCount > 0) Then
  loc_102F22E:     MemVar_1F921A8 = CStr(var_90.Fields.Item(0).Value)
  loc_102F269:     MemVar_1F921AC = CStr(var_90.Fields.Item(1).Value)
  loc_102F277:   End If
  loc_102F27B:   DoEvents()
  loc_102F280: End If
  loc_102F289: Set var_90 = Nothing
  loc_102F293: Set var_8C = Nothing
  loc_102F298: Exit Sub
End Sub

Public Sub Proc_165_5_104CD60(arg_C) '104CD60
  'Data Table: 4E88A0
  Dim var_F8 As Variant
  Dim unk_4E88A6 As Connection15
  Dim var_8C As Recordset15
  Dim var_170 As Fields15
  Dim var_90 As Recordset15
  Dim MemVar_1F921A8 As String
  Dim MemVar_1F921AC As String
  loc_104CB2C: On Error Resume Next
  loc_104CB70: var_F8 = CVar("Select OutletCode From MenuHelp Where Code=" & CStr(arg_C) & " AND cOMPcODE='") & Trim(MemVar_1F92128) & "' AND UserName='" 
  loc_104CB9E: unk_4E88A6.Execute CStr(var_F8 & Trim(MemVar_1F920C8) & "'"), var_16C, -1
  loc_104CBA9: Set var_8C = var_170
  loc_104CBE1: If (var_8C.RecordCount > 0) Then
  loc_104CC11:   var_88 = CStr(var_8C.Fields.Item(0).Value)
  loc_104CC73:   unk_4E88A6.Execute CStr("Select RestType,BackColor From Depart Where Code='" & var_8C.Fields.Item(0).Value & "'"), var_F8, -1
  loc_104CC7E:   Set var_90 = var_17C
  loc_104CCAE:   If (var_90.RecordCount > 0) Then
  loc_104CCE9:     MemVar_1F921A8 = CStr(Trim(var_90.Fields.Item(0).Value))
  loc_104CD33:     MemVar_1F921AC = CStr(Trim(var_90.Fields.Item(1).Value))
  loc_104CD45:   End If
  loc_104CD47: End If
  loc_104CD50: Set var_8C = Nothing
  loc_104CD5A: Set var_90 = Nothing
  loc_104CD5F: Exit Sub
End Sub

Public Sub Proc_165_6_134DBC4
  'Data Table: 4E88A0
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_13C As String
  Dim unk_4E88A6 As Connection15
  Dim var_F4 As Variant
  Dim var_138 As Recordset15
  Dim var_144 As Fields15
  Dim var_148 As Field20
  Dim var_114 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1D4 As Variant
  Dim var_234 As Variant
  Dim var_134 As Variant
  loc_134D418: On Error Resume Next
  loc_134D433: var_B4 = "Creating the ZIP at '" & MemVar_1F9209C 
  loc_134D458: If (MsgBox(var_B4 & " '", 4, var_F4, var_114, var_134) = 6) Then
  loc_134D471:   Set var_138 = MemVar_1F92244.Picture3
  loc_134D477:   MDIForm1.Picture3.Visible = True
  loc_134D489:   Call 0.Method_arg_94 (0)
  loc_134D49C:   Set var_138 = MemVar_1F92244.Label1
  loc_134D4A2:   MDIForm1.Label1.Caption = vbNullString
  loc_134D4B5:   Set var_138 = MemVar_1F92244.Label1
  loc_134D4BB:   MDIForm1.Label1.Refresh
  loc_134D4CC:   var_13C = "Backing Up Database [DATA] From Sql-Server " & vbCrLf
  loc_134D4D8:   Set var_138 = MemVar_1F92244.Label1
  loc_134D4DE:   MDIForm1.Label1.Caption = var_13C
  loc_134D4FE:   Set var_138 = MemVar_1F92244.Label1
  loc_134D504:   MDIForm1.Label1.Caption = "Please Wait..............." & vbCrLf
  loc_134D51A:   Set var_138 = MemVar_1F92244.Label1
  loc_134D520:   MDIForm1.Label1.Refresh
  loc_134D540:   unk_4E88A6.Execute "sp_dropdevice  'HOTELBKUP'", var_B4, -1
  loc_134D567:   var_B4 = (MemVar_1F9209C + "\HOTELBKUP")
  loc_134D56B:   var_D4 = "sp_addumpdevice  'Disk' , 'HOTELBKUP' ,'" & var_B4 
  loc_134D582:   unk_4E88A6.Execute CStr(var_D4 & "',2"), var_114, -1
  loc_134D5B2:   var_C4 = 0
  loc_134D5DF:   unk_4E88A6.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128 & "'", var_B4, -1
  loc_134D5E7:   var_138 = var_138.Fields
  loc_134D5EF:   var_C4 = var_144.Item(var_144)
  loc_134D5F7:   var_148 = var_148.Value
  loc_134D616:   unk_4E88A6.Execute CStr(var_D4 & var_D4 & " to HOTELBKUP"), "Backup Database ", var_134
  loc_134D641:   Set var_154 = New CGZipFiles 
  loc_134D668:   var_184 = Date
  loc_134D6A8:   var_164 = CVar("DATA-" & MemVar_1F92128) 'String
  loc_134D6CE:   var_174 = (1 + Format(Str(Year(Date)), "0000"))
  loc_134D6F5:   var_1D4 = (1 + Format(Str(Month(var_184)), "00"))
  loc_134D71C:   var_234 = (1 + Format(Str(Day(Date)), "00"))
  loc_134D721:   var_90 = CStr(var_234)
  loc_134D788:   var_154.ZipFileName = CStr(MemVar_1F9209C & "\" & CVar(MemVar_1F92130) & "(" & CVar(var_90) & ").ZIP")
  loc_134D7A4:   var_154.UpdatingZip = 0
  loc_134D7C5:   var_F4 = "Creating " & MemVar_1F9209C & "\" & "(" 
  loc_134D7CF:   var_114 = var_F4 & CVar(var_90) 
  loc_134D7DD:   var_164 = var_114 & CVar(").ZIP" & vbCrLf) 
  loc_134D7EE:   Set var_138 = MemVar_1F92244.Label1
  loc_134D7F4:   MDIForm1.Label1.Caption = CStr(var_164)
  loc_134D819:   Set var_138 = MemVar_1F92244.Label1
  loc_134D81F:   MDIForm1.Label1.Refresh
  loc_134D864:   If (var_154.MakeZipFile() <> 0) Then
  loc_134D888:     MsgBox(CVar(var_154.GetLastMessage()), 0, var_154.AddFile(CStr(MemVar_1F9209C & "\HOTELBKUP")), var_F4, var_114)
  loc_134D89B:   Else
  loc_134D8A9:     var_B4 = (MemVar_1F9209C + "\HOTELBKUP")
  loc_134D8B7:     Call 0.Method_arg_5C (CStr(CVar(var_154.GetLastMessage())), 0, 1, var_1D4, 1, var_174)
  loc_134D8DA:     var_B4 = MemVar_1F9209C & "\" 
  loc_134D8E4:     var_D4 = var_B4 & CVar(MemVar_1F92130) 
  loc_134D900:     var_134 = var_D4 & "(" & CVar(var_90) & ").ZIP Created Successfully" 
  loc_134D904:     MsgBox(var_134, 0, var_164, var_174, var_184)
  loc_134D91C:   End If
  loc_134D922:   Set var_154 = Nothing 
  loc_134D92D:   Set var_88 = Nothing
  loc_134D936:   Set var_88 = New CGZipFiles
  loc_134D947:   Set var_138 = MemVar_1F92244.Label1
  loc_134D94D:   MDIForm1.Label1.Caption = vbNullString
  loc_134D960:   Set var_138 = MemVar_1F92244.Label1
  loc_134D966:   MDIForm1.Label1.Refresh
  loc_134D971: Else
  loc_134D973: End If
  loc_134D98F: var_C4 = 0
  loc_134D9BC: unk_4E88A6.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128 & "'", var_B4, -1
  loc_134D9C4: var_138 = var_138.Fields
  loc_134D9CC: var_C4 = var_144.Item(var_144)
  loc_134D9D4: var_148 = var_148.Value
  loc_134D9F3: unk_4E88A6.Execute CStr(var_D4 & var_D4 & " WITH TRUNCATE_ONLY"), "BACKUP LOG ", var_134
  loc_134DA33: var_C4 = 0
  loc_134DA60: unk_4E88A6.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128 & "'", var_B4, -1
  loc_134DA68: var_138 = var_138.Fields
  loc_134DA70: var_C4 = var_144.Item(var_144)
  loc_134DA78: var_148 = var_148.Value
  loc_134DA97: unk_4E88A6.Execute CStr(var_D4 & var_D4 & " WITH NO_LOG"), "BACKUP LOG ", var_134
  loc_134DAD7: var_C4 = 0
  loc_134DB04: unk_4E88A6.Execute "SELECT CENTRALDATA_PATH FROM COMPANY WHERE COMP_CODE='" & MemVar_1F92128 & "'", var_B4, -1
  loc_134DB0C: var_138 = var_138.Fields
  loc_134DB14: var_C4 = var_144.Item(var_144)
  loc_134DB1C: var_148 = var_148.Value
  loc_134DB3B: unk_4E88A6.Execute CStr(var_D4 & var_D4 & " , 0, TRUNCATEONLY)"), "DBCC SHRINKDATABASE( ", var_134
  loc_134DB6E: Set var_138 = MemVar_1F92244.Picture3
  loc_134DB74: MDIForm1.Picture3.Visible = False
  loc_134DB86: Call 0.Method_arg_94 (&HFF, -1, var_150)
  loc_134DB8D: Exit Sub
  loc_134DB90: Proc_6_60_E62BC4(-1, var_150)
  loc_134DBA2: Set var_138 = MemVar_1F92244.Picture3
  loc_134DBA8: MDIForm1.Picture3.Visible = False
  loc_134DBBA: Call 0.Method_arg_94 (&HFF)
  loc_134DBC1: Exit Sub
End Sub
