
Public Sub Proc_7_0_F78958(arg_C) 'F78958
  'Data Table: 41C68C
  Dim unk_41C68F As Connection15
  Dim var_88 As Recordset15
  Dim var_A0 As Variant
  Dim Me As TextBox
  Dim var_B4 As Fields15
  Dim var_C8 As String
  Dim var_EC As Variant
  loc_F78840: unk_41C68F.Execute "SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE='" & arg_C & "'", var_B0, -1
  loc_F7886F: If (var_B4.RecordCount > 0) Then
  loc_F7887B:   Me.Tag = "VOUCHERREG"
  loc_F788AA:   var_DC = Me.Me.Fields.Item("NCat").Value 'Variant
  loc_F788B8:   var_A0 = "CNT"
  loc_F788C0:   If Not (var_DC = var_A0) Then
  loc_F788C6:     var_C8 = "JV"
  loc_F788CE:     If Not (var_DC = var_C8) Then
  loc_F788DC:       If Not (var_DC = "PMT") Then
  loc_F788EA:         If (var_DC = "RCT") Then
  loc_F788ED:         End If
  loc_F788ED:       End If
  loc_F788ED:     End If
  loc_F788FB:     Call 0.Method_arg_2B0 (var_A0, var_C8)
  loc_F78909:     Call 0.Method_arg_1C4 (" ")
  loc_F7891A:     var_A0 = CVar(CLng(txt.DispID_A)) 'Long
  loc_F7891F:     var_EC = 7
  loc_F78940:     Call FaVrEnt.FindMove(CStr(txt.DispID_41))
  loc_F7894F:   End If
  loc_F7894F: End If
  loc_F78954: Set var_88 = Nothing
  loc_F78957: Exit Sub
End Sub

Public Sub Proc_7_1_1365344(arg_C) '1365344
  'Data Table: 41C68C
  Dim var_98 As String
  Dim unk_41C68F As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_BC As Fields15
  Dim var_D0 As String
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_41C6A8 As Connection15
  Dim var_90 As Recordset15
  Dim var_13C As Variant
  loc_1364B30: unk_41C68F.Execute "SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE='" & arg_C & "'", var_B8, -1
  loc_1364B5F: If (var_BC.RecordCount > 0) Then
  loc_1364B6B:   Me.Tag = "VOUCHER"
  loc_1364B82:   var_BC = Me.Me.Fields
  loc_1364B92:   var_B8 = var_BC.Item("NCat").Value
  loc_1364B9A:   var_E4 = var_B8 'Variant
  loc_1364BB0:   If Not (var_E4 = "CNT") Then
  loc_1364BB6:     var_D0 = "JV"
  loc_1364BBE:     If Not (var_E4 = var_D0) Then
  loc_1364BCC:       If Not (var_E4 = "PMT") Then
  loc_1364BDA:         If (var_E4 = "RCT") Then
  loc_1364BDD:         End If
  loc_1364BDD:       End If
  loc_1364BDD:     End If
  loc_1364BE0:     MemVar_1F92200 = "fate+0"
  loc_1364C06:     var_108 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_1364C16:     unk_41C6A8.Execute var_108 & "' AND [Option]='Voucher Entry'", var_B8, -1
  loc_1364C21:     Set var_90 = var_BC
  loc_1364C49:     If (var_90.RecordCount > 0) Then
  loc_1364C52:       var_A8 = "UPrivilege"
  loc_1364C5E:       var_BC = var_90.Fields
  loc_1364C6E:       var_B8 = var_BC.Item(var_A8).Value
  loc_1364C77:       MemVar_1F92E80 = CStr(var_B8)
  loc_1364C85:     End If
  loc_1364C8A:     Set var_90 = Nothing
  loc_1364C9B:     Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F92E80)
  loc_1364CA8:     Call 0.Method_arg_9C (2, var_BC)
  loc_1364CB6:     Call 0.Method_arg_1C4 (" ")
  loc_1364CC7:     var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1364CCC:     var_F4 = &HD
  loc_1364CED:     Call FaVrEnt.FindMove(CStr(txt.DispID_41))
  loc_1364CFF:   Else
  loc_1364D0A:     If Not (var_E4 = "PBILL") Then
  loc_1364D10:       var_D0 = "PTRAN"
  loc_1364D18:       If (var_E4 = var_D0) Then
  loc_1364D1B:       End If
  loc_1364D1E:       MemVar_1F92200 = "Purch+5"
  loc_1364D44:       var_108 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_1364D54:       unk_41C6A8.Execute var_108 & "' AND [Option]='Purchase Bill/Return Entry'", var_B8, -1
  loc_1364D5F:       Set var_90 = var_BC
  loc_1364D87:       If (var_90.RecordCount > 0) Then
  loc_1364D9C:         var_BC = var_90.Fields
  loc_1364DAC:         var_B8 = var_BC.Item("UPrivilege").Value
  loc_1364DB5:         MemVar_1F92E80 = CStr(var_B8)
  loc_1364DC3:       End If
  loc_1364DC8:       Set var_90 = Nothing
  loc_1364DD0:       Call var_12C.Show
  loc_1364DE2:       var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1364DE7:       var_F4 = &HD
  loc_1364DFE:       var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_1364E07:       Call var_12C.SEARCHBACK
  loc_1364E19:     Else
  loc_1364E24:       If (var_E4 = "SBILL") Then
  loc_1364E2C:         Call var_15C.Show
  loc_1364E3E:         var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1364E43:         var_F4 = &HD
  loc_1364E5A:         var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_1364E63:         Call var_15C.SEARCHBACK
  loc_1364E75:       Else
  loc_1364E80:         If (var_E4 = "PRET") Then
  loc_1364E88:           Call var_16C.Show
  loc_1364E9A:           var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1364E9F:           var_F4 = &HD
  loc_1364EB6:           var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_1364EBF:           Call var_16C.SEARCHBACK
  loc_1364ED1:         Else
  loc_1364EDC:           If (var_E4 = "SRET") Then
  loc_1364EE4:             Call var_17C.Show
  loc_1364EF6:             var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1364EFB:             var_F4 = &HD
  loc_1364F12:             var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_1364F1B:             Call var_17C.SEARCHBACK
  loc_1364F2D:           Else
  loc_1364F30:             var_A8 = "OPBAL"
  loc_1364F38:             If (var_E4 = var_A8) Then
  loc_1364F49:               Call 0.Method_arg_2B0 (var_A8, var_D0, var_13C, var_F4, var_A8, var_13C, var_F4, var_A8)
  loc_1364F7F:               Call FaSubGroup.SEARCHBACK(CStr(txt.DispID_41))
  loc_1364F96:               Call 0.Method_arg_9C (2, &HC, CVar(CLng(txt.DispID_A)), var_13C, &HC)
  loc_1364F9E:             Else
  loc_1364FA9:               If Not (var_E4 = "PBR") Then
  loc_1364FAF:                 var_D0 = "PBC"
  loc_1364FB7:                 If Not (var_E4 = var_D0) Then
  loc_1364FC5:                   If Not (var_E4 = "PRR") Then
  loc_1364FD3:                     If (var_E4 = "PRC") Then
  loc_1364FD6:                     End If
  loc_1364FD6:                   End If
  loc_1364FD6:                 End If
  loc_1364FD9:                 MemVar_1F92200 = "Purch+5"
  loc_1364FF8:                 var_98 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='"
  loc_136500F:                 unk_41C6A8.Execute var_98 & MemVar_1F92128 & "' AND [Option]='Purchase Bill'", var_B8, -1
  loc_136501A:                 Set var_90 = var_BC
  loc_1365042:                 If (var_90.RecordCount > 0) Then
  loc_136504B:                   var_A8 = "UPrivilege"
  loc_1365057:                   var_BC = var_90.Fields
  loc_1365067:                   var_B8 = var_BC.Item(var_A8).Value
  loc_1365070:                   MemVar_1F92E80 = CStr(var_B8)
  loc_136507E:                 End If
  loc_1365083:                 Set var_90 = Nothing
  loc_136508F:                 pPBill.OpenAs = vbNullString
  loc_13650A2:                 Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F92E80, var_BC, var_A8)
  loc_13650B3:                 var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_13650B8:                 var_F4 = &HD
  loc_13650D8:                 Call pPBill.SEARCHBACK(CStr(txt.DispID_41))
  loc_13650EA:               Else
  loc_13650F5:                 If Not (var_E4 = "EXR") Then
  loc_13650FB:                   var_D0 = "EXC"
  loc_1365103:                   If (var_E4 = var_D0) Then
  loc_1365106:                   End If
  loc_1365109:                   MemVar_1F92200 = "Purch+5"
  loc_1365128:                   var_98 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='"
  loc_136513F:                   unk_41C6A8.Execute var_98 & MemVar_1F92128 & "' AND [Option]='Purchase Bill'", var_B8, -1
  loc_136514A:                   Set var_90 = var_BC
  loc_1365172:                   If (var_90.RecordCount > 0) Then
  loc_136517B:                     var_A8 = "UPrivilege"
  loc_1365187:                     var_BC = var_90.Fields
  loc_1365197:                     var_B8 = var_BC.Item(var_A8).Value
  loc_13651A0:                     MemVar_1F92E80 = CStr(var_B8)
  loc_13651AE:                   End If
  loc_13651B3:                   Set var_90 = Nothing
  loc_13651BF:                   pPBill.OpenAs = "Expense"
  loc_13651D2:                   Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F92E80, var_BC, var_F4)
  loc_13651E3:                   var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_13651E8:                   var_F4 = &HD
  loc_1365208:                   Call pPBill.SEARCHBACK(CStr(txt.DispID_41))
  loc_136521A:                 Else
  loc_1365225:                   If (var_E4 = "MBILL") Then
  loc_136522B:                     MemVar_1F92200 = "Memb+3"
  loc_136524A:                     var_98 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='"
  loc_1365261:                     unk_41C6A8.Execute var_98 & MemVar_1F92128 & "' AND [Option]='Member Facility Billing'", var_B8, -1
  loc_136526C:                     Set var_90 = var_BC
  loc_1365294:                     If (var_90.RecordCount > 0) Then
  loc_136529D:                       var_A8 = "UPrivilege"
  loc_13652A9:                       var_BC = var_90.Fields
  loc_13652C2:                       MemVar_1F92E80 = CStr(var_BC.Item(var_A8).Value)
  loc_13652D0:                     End If
  loc_13652D5:                     Set var_90 = Nothing
  loc_13652E6:                     Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F92E80, var_BC, var_F4, var_A8)
  loc_13652F7:                     var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_13652FC:                     var_F4 = &HD
  loc_136531C:                     Call MemFacilityBilling.SEARCHBACK(CStr(txt.DispID_41))
  loc_136532B:                   End If
  loc_136532B:                 End If
  loc_136532B:               End If
  loc_136532B:             End If
  loc_136532B:           End If
  loc_136532B:         End If
  loc_136532B:       End If
  loc_136532B:     End If
  loc_136532B:   End If
  loc_136532B: End If
  loc_1365330: Set var_88 = Nothing
  loc_1365338: Set var_8C = Nothing
  loc_1365340: Set var_90 = Nothing
  loc_1365343: Exit Sub
End Sub

Public Sub Proc_7_2_FF1E88
  'Data Table: 41C68C
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_18C As String
  Dim var_94 As Recordset15
  Dim var_1BA As Integer
  loc_FF1CBC: On Error Goto loc_FF1E43
  loc_FF1CCC: var_E8 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGERM.DocId,LEDGERM.v_Prefix,LEDGER.U_NAME UserName FROM ((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)  WHERE LEDGER.V_TYPE='"
  loc_FF1CE8: var_108 = 0 & Me.TxtVtYpe.Tag 
  loc_FF1CF1: var_128 = var_108 & "' AND LEDGER.V_NO=" 
  loc_FF1D1D: Me.Connection15.Execute CStr(0 & Me.TxtVno & " order by ledger.v_no,LEDGER.V_SNo"), var_128, var_E8
  loc_FF1D28: Set var_94 = var_1B0
  loc_FF1D58: If (var_94.RecordCount = 0) Then
  loc_FF1D5E:   var_F8 = Me.CAPTION
  loc_FF1D7E:   MsgBox("No record found to Print", &H40, var_F8, var_108, var_128)
  loc_FF1D8E:   Exit Sub
  loc_FF1D8F: End If
  loc_FF1D98: var_18C = MemVar_1F923B0 & "\FaRect.TTX"
  loc_FF1DA5: Set var_1B0 = var_94 
  loc_FF1DB1: var_1BA = CreateFieldDefFile(var_1B0, var_18C, &HFF, var_F8)
  loc_FF1DC4: var_A8 = CVar(var_1BA) 'Variant
  loc_FF1DF5: Call 0.Method_arg_64 (var_1B0, CVar(var_1B0), var_C8, var_E8)
  loc_FF1DFD: Call 0.Method_arg_2C (var_1BA, var_1AC)
  loc_FF1E0B: Call 0.Method_arg_150 (-1)
  loc_FF1E2F: Proc_183_10_14991A4(arg_10, 0, CStr(Me.CAPTION))
  loc_FF1E3F: Set var_94 = Nothing
  loc_FF1E42: Exit Sub
  loc_FF1E43: ' Referenced from: FF1CBC
  loc_FF1E4B: Set var_1B0 = Err()
  loc_FF1E51: Call 0.Method_arg_2C (var_18C, &HFF)
  loc_FF1E74: MsgBox(CVar(var_18C), &H10, Me.CAPTION, var_108, var_128)
  loc_FF1E87: Exit Sub
End Sub

Public Sub Proc_7_3_F61A94(arg_C) 'F61A94
  'Data Table: 41C68C
  Dim unk_41C68F As Connection15
  Dim var_F0 As Recordset15
  Dim var_F4 As Fields15
  Dim var_108 As Field20
  loc_F619A9: Proc_6_17_EAA2B0(var_A8, arg_C, "SELECT COUNT(*) FROM Ledger WHERE V_Type=", var_EC, -1, var_F0)
  loc_F619BF: unk_41C68F.Execute CStr(var_F4 & var_A8), 0, var_108
  loc_F619C7: var_118 = var_F0.Fields
  loc_F619CF:  = var_F4.Item(0)
  loc_F619D7:  = var_108.Value
  loc_F619FE: If (var_118 > 0) Then
loc_F61A06: End Sub
  loc_F61A07: End If
  loc_F61A33: Proc_6_17_EAA2B0(var_A8, arg_C, "SELECT COUNT(*) FROM LedgerM WHERE V_Type=", var_EC, -1)
  loc_F61A49: unk_41C68F.Execute CStr(var_F0 & var_A8), var_F4, 0
  loc_F61A59:  = var_F4.Item(var_118)
  loc_F61A61:  = var_F0.Fields.Value
  loc_F61A88: If (var_118 > 0) Then
loc_F61A90: End Sub
  loc_F61A91: End If
loc_F61A91: End Sub
End Sub

Public Sub Proc_7_4_11ABBE0
  'Data Table: 41C68C
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_120 As Variant
  Dim var_C8 As Integer
  Dim var_140 As Variant
  Dim var_1A0 As Variant
  Dim var_94 As Recordset15
  Dim var_1FA As Integer
  loc_11AB7DC: On Error Goto loc_11ABB98
  loc_11AB7DF: var_B8 = 1
  loc_11AB803: If (Me.Opt2.Value = True) Then
  loc_11AB806:   var_B8 = 0
  loc_11AB80F:   var_D8 = Me.DataCombo2
  loc_11AB83F:   If (Proc_6_27_EA565C(var_D8, "From Voucher No. ", var_D8) = 0) Then
  loc_11AB842:     Exit Sub
  loc_11AB843:   End If
  loc_11AB843:   var_B8 = 1
  loc_11AB84C:   var_D8 = Me.DataCombo2
  loc_11AB864:   Set var_10C = var_D8 
  loc_11AB87C:   If (Proc_6_27_EA565C(var_10C, "To Voucher No. ", var_D8) = 0) Then
  loc_11AB87F:     Exit Sub
  loc_11AB880:   End If
  loc_11AB894:   var_110 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID)  WHERE LEDGER.V_PREFIX=" & MemVar_1F9212C
  loc_11AB8B9:   var_C8 = 0
  loc_11AB8C2:   var_140 = Me.DataCombo2
  loc_11AB8E0:   var_1A0 = Me.DataCombo2
  loc_11AB8FF:   Me.Connection15.Execute CStr(1 & var_1A0 & " order by ledger.v_no,LEDGER.V_SNo"), var_C8 & var_140 & " AND ", CVar(var_110 & " And LEDGER.V_TYPE='") & Me.DataCombo3.BoundText & "' AND LEDGER.V_NO BETWEEN "
  loc_11AB90A:   Set var_94 = var_10C
  loc_11AB935: Else
  loc_11AB946:   var_F8 = Me.Opt2.Value
  loc_11AB959:   If (var_F8 = True) Then
  loc_11AB95F:     var_D8 = Me.Text2
  loc_11AB974:     Set var_10C = var_D8 
  loc_11AB98C:     If (Proc_6_27_EA565C(var_10C, "For Date ", var_D8, 2, var_1F4) = 0) Then
  loc_11AB98F:       Exit Sub
  loc_11AB990:     End If
  loc_11AB9A4:     var_110 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix FROM,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID) WHERE LEDGER.V_PREFIX=" & MemVar_1F9212C
  loc_11AB9B9:     Proc_183_7_EB0C44(var_F8, Me.Text2, CVar(var_110 & " And VOUCHER_TYPE.Category='FA' AND LEDGER.V_date="), var_140, -1, var_10C)
  loc_11AB9C1:     var_120 = -1 & var_F8 
  loc_11AB9C5:     var_B8 = " order by ledger.v_type,ledger.v_no,LEDGER.V_SNo"
  loc_11AB9D8:     Me.Connection15.Execute CStr(CVar(var_110 & " And LEDGER.V_TYPE='") & Me.DataCombo3.BoundText & var_B8), var_10C, var_B8
  loc_11AB9E3:     Set var_94 = var_10C
  loc_11ABA02:   Else
  loc_11ABA16:     var_110 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID) WHERE LEDGER.V_PREFIX=" & MemVar_1F9212C
  loc_11ABA31:     var_108 = Me.TxtVtYpe.Tag
  loc_11ABA37:     var_120 = 0 & var_108 
  loc_11ABA3B:     var_E8 = "' AND LEDGER.V_NO="
  loc_11ABA6C:     Me.Connection15.Execute CStr(0 & Me.TxtVno & " order by ledger.v_no,LEDGER.V_SNo"), var_120 & var_E8, CVar(var_110 & " And LEDGER.V_TYPE='")
  loc_11ABA77:     Set var_94 = var_10C
  loc_11ABA99:   End If
  loc_11ABA99: End If
  loc_11ABAAD: If (var_94.RecordCount = 0) Then
  loc_11ABAB3:   var_F8 = Me.CAPTION
  loc_11ABAD3:   MsgBox("No record found to Print", &H40, var_F8, var_108, var_120)
  loc_11ABAE3:   Exit Sub
  loc_11ABAE4: End If
  loc_11ABAED: var_110 = MemVar_1F923B0 & "\FaJVCHR.TTX"
  loc_11ABAFA: Set var_10C = var_94 
  loc_11ABB06: var_1FA = CreateFieldDefFile(var_10C, var_110, &HFF, var_F8, var_1A0)
  loc_11ABB19: var_A8 = CVar(var_1FA) 'Variant
  loc_11ABB3C: var_B8 = CVar(var_10C) 'Address
  loc_11ABB4A: Call 0.Method_arg_64 (var_10C, var_B8, var_C8, var_E8, var_1FA)
  loc_11ABB52: Call 0.Method_arg_2C (-1, var_10C)
  loc_11ABB60: Call 0.Method_arg_150 (var_B8)
  loc_11ABB84: Proc_183_10_14991A4(arg_10, 0, CStr(Me.CAPTION))
  loc_11ABB94: Set var_94 = Nothing
  loc_11ABB97: Exit Sub
  loc_11ABB98: ' Referenced from: 11AB7DC
  loc_11ABBA0: Set var_10C = Err()
  loc_11ABBA6: Call 0.Method_arg_2C (var_110, &HFF)
  loc_11ABBC9: MsgBox(CVar(var_110), &H10, Me.CAPTION, var_108, var_120)
  loc_11ABBDC: Exit Sub
  loc_11ABBDD: VCallUI1
End Sub

Public Sub Proc_7_5_DFCA68
  'Data Table: 41C68C
  loc_DFCA64: Exit Sub
End Sub

Public Sub Proc_7_6_DFC4EC
  'Data Table: 41C68C
  loc_DFC4E8: Exit Sub
End Sub

Public Sub Proc_7_7_F2F5A4(arg_C) 'F2F5A4
  'Data Table: 41C68C
  Dim unk_41C68F As Connection15
  Dim var_88 As Recordset15
  Dim var_A0 As Variant
  Dim Me As TextBox
  Dim var_B4 As Fields15
  Dim var_EC As Long
  loc_F2F4C4: unk_41C68F.Execute "SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE='" & arg_C & "'", var_B0, -1
  loc_F2F4F3: If (var_B4.RecordCount > 0) Then
  loc_F2F4FF:   Me.Tag = "OPDIFF"
  loc_F2F53C:   var_A0 = "OPBAL"
  loc_F2F544:   If (Me.Me.Fields.Item("NCat").Value = var_A0) Then
  loc_F2F555:     Call 0.Method_arg_2B0 (var_A0, var_C8)
  loc_F2F566:     var_A0 = CVar(CLng(txt.DispID_A)) 'Long
  loc_F2F56B:     var_EC = &HC
  loc_F2F58B:     Call FaSubGroup.SEARCHBACK(CStr(txt.DispID_41))
  loc_F2F59A:   End If
  loc_F2F59A: End If
  loc_F2F59F: Set var_88 = Nothing
  loc_F2F5A2: Exit Sub
End Sub
