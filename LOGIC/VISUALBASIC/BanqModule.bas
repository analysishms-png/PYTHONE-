
Public Sub Proc_263_0_F72D90(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) 'F72D90
  'Data Table: 41BAC0
  loc_F72C50: If (arg_2C = "S") Then
  loc_F72C5C:   hAdvanceDepDialogSecondry.OpenMode = arg_C
  loc_F72C6A:   hAdvanceDepDialogSecondry.OpenType = arg_10
  loc_F72C78:   hAdvanceDepDialogSecondry.AdvType = arg_14
  loc_F72C86:   hAdvanceDepDialogSecondry.IdNo = arg_18
  loc_F72C94:   Call hAdvanceDepDialogSecondry.global_52Put(arg_34)
  loc_F72CA2:   hAdvanceDepDialogSecondry.pDocId = arg_1C
  loc_F72CB0:   hAdvanceDepDialogSecondry.PersonCode = arg_20
  loc_F72CBE:   hAdvanceDepDialogSecondry.PTableOrRoomNo = arg_24
  loc_F72CD1:   hAdvanceDepDialogSecondry.PBillAmt = CStr(arg_28)
  loc_F72CE9:   Call 0.Method_arg_2B0 (1)
  loc_F72CF1: Else
  loc_F72CFA:   hAdvanceDepDialog.OpenMode = arg_C
  loc_F72D08:   hAdvanceDepDialog.OpenType = arg_10
  loc_F72D16:   hAdvanceDepDialog.AdvType = arg_14
  loc_F72D24:   hAdvanceDepDialog.IdNo = arg_18
  loc_F72D32:   Call hAdvanceDepDialog.global_52Put(arg_34)
  loc_F72D40:   hAdvanceDepDialog.pDocId = arg_1C
  loc_F72D4E:   hAdvanceDepDialog.PersonCode = arg_20
  loc_F72D5C:   hAdvanceDepDialog.PTableOrRoomNo = arg_24
  loc_F72D6F:   hAdvanceDepDialog.PBillAmt = CStr(arg_28)
  loc_F72D87:   Call 0.Method_arg_2B0 (1, var_AC)
  loc_F72D8C: End If
  loc_F72D8C: Exit Sub
End Sub

Public Sub Proc_263_1_1331830(arg_C, arg_10, arg_14) '1331830
  'Data Table: 41BAC0
  Dim var_B8 As String
  Dim unk_41BACA As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_CC As Variant
  Dim var_F4 As Variant
  Dim var_86 As Integer
  Dim var_E0 As Fields15
  Dim var_110 As Field20
  Dim var_148 As Variant
  Dim var_168 As String
  Dim var_130 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_158 As Variant
  Dim var_1A8 As Variant
  loc_13310E0: On Error Goto loc_133182A
  loc_13310F7: var_B8 = "Select P.VNO AS RECTNO,P.VDATE AS RECTDATE P.PAYTYPE AS RECTMODE,P.U_NAME AS UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,P.AMTCR AS RECTAMT FROM PayChargeH P Where VType='AD' AND ContraDocId='" & arg_C
  loc_1331107: unk_41BACA.Execute var_B8 & "'", var_DC, -1
  loc_1331112: Set var_A8 = var_E0
  loc_1331124: Close 1
  loc_133112D: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1331133: var_88 = 1
  loc_1331139: MemVar_1F923C0 = "N"
  loc_1331140: MemVar_1F923C4 = "N"
  loc_1331147: MemVar_1F923C8 = "M"
  loc_1331151: var_E4 = var_A8.RecordCount
  loc_133115F: If (var_E4 > 0) Then
  loc_1331180:   If CBool(Trim(arg_10) <> "W") Then
  loc_1331183:     ' Referenced from: 13315C0
  loc_1331192:     If Not(var_A8.EOF) Then
  loc_13311A1:       If (var_86 = 0) Then
  loc_13311BC:         Print 1, vbNullString
  loc_13311C7:         Print 1, vbNullString
  loc_13311EE:         Print 1, Proc_6_128_10272A8(" ADVANCE RECEIPT ", "B", &H50)
  loc_1331202:         Print 1, vbNullString
  loc_133120D:         Print 1, vbNullString
  loc_133126D:         Proc_6_39_E7C810(var_158, CVar(var_A8.Fields.Item("GRCNo")), Proc_6_129_12B6C1C(var_88, var_86, &H50))
  loc_13312DA:         var_130 = (CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)) + Space(8))
  loc_13312E1:         var_188 = CVar(Proc_6_45_EAD428(CStr("GRC No. :" & var_158), &HE)) 'String
  loc_13312E4:         var_198 = (var_130 + var_188)
  loc_13312EB:         var_1B8 = (var_198 + Space(8))
  loc_13312F4:         var_1D8 = (var_1B8 + "Date :")
  loc_13312FE:         var_220 = (var_1D8 + CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectDate")), var_88)))
  loc_1331304:         Print 1, var_220
  loc_1331346:         Print 1, vbNullString
  loc_1331351:         Print 1, vbNullString
  loc_133137F:         var_104 = CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("GuestName")))) 'String
  loc_1331392:         var_130 = ("Recieved with thanks from Mr. " + Ucase(var_104))
  loc_1331398:         Print 1, var_130
  loc_13313B1:         Print 1, vbNullString
  loc_13313CE:         var_110 = var_A8.Fields.Item("RectAmt")
  loc_13313DD:         Proc_6_39_E7C810(var_104, CVar(var_110))
  loc_13313EC:         var_F4 = "0.00"
  loc_1331428:         Proc_6_39_E7C810(var_188, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_133147A:         var_168 = "A Sum of Rs. "
  loc_1331482:         var_148 = (var_168 + Format(var_104, var_F4))
  loc_133148B:         var_158 = (CVar(var_A8.Fields.Item("GRCNo")) + " (")
  loc_1331495:         var_1A8 = (var_158 + CVar(Proc_6_43_10041F4(CSng(var_188), "Rs", vbNullString)))
  loc_133149E:         var_1B8 = (Space(8) + ") by ")
  loc_13314A8:         var_210 = (var_1B8 + CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectMode")), 1)))
  loc_13314AE:         Print 1, CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectDate")), var_88))
  loc_13314EC:         Print 1, vbNullString
  loc_13314FE:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_133150C:         Print 1, vbNullString
  loc_1331517:         Print 1, vbNullString
  loc_1331522:         Print 1, vbNullString
  loc_133152D:         Print 1, vbNullString
  loc_1331538:         Print 1, vbNullString
  loc_133155C:         Print 1, Proc_6_52_EAD4F4("Autho. Signature", &H46)
  loc_1331570:         Print 1, vbNullString
  loc_133157B:         Print 1, "---------------------------------------------------------------------------------------"
  loc_1331581:       End If
  loc_1331587:       var_86 = (var_86 + &H18)
  loc_133158A:       ' Referenced from: 13315A7
  loc_1331590:       If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H22) Then
  loc_1331598:         Print 1, vbNullString
  loc_13315A4:         var_86 = (var_86 + 1)
  loc_13315A7:         GoTo loc_133158A
  loc_13315AA:       End If
  loc_13315AC:       var_86 = 0
  loc_13315B5:       var_88 = (var_88 + 1)
  loc_13315BB:       var_A8.MoveNext
  loc_13315C0:       GoTo loc_1331183
  loc_13315C3:     End If
  loc_13315C6:   Else
  loc_13315C9:     var_AC = "ADVANCE RECIEPT BANQ"
  loc_13315CF:     var_CC = arg_14
  loc_13315E0:     var_B0 = CStr(Ucase(var_CC))
  loc_133160A:     Set var_E0 = var_A8 
  loc_1331611:     CreateFieldDefFile(var_E0, MemVar_1F920B4 & "\" & var_AC & ".ttx", &HFF, var_88)
  loc_133163C:     var_B8 = MemVar_1F920B4 & "\"
  loc_1331653:     Call 0.Method_arg_1C (var_B8 & var_AC & ".RPT", var_CC, var_E0, var_86)
  loc_133165E:     MemVar_1F921E4 = var_E0
  loc_1331687:     Call 0.Method_arg_64 (var_E0, CVar(var_E0), var_F4, var_168)
  loc_133168F:     Call 0.Method_arg_2C (var_86, var_86)
  loc_133169D:     Call 0.Method_arg_150 (var_E0)
  loc_13316B3:     Call 0.Method_arg_90 (var_E0, var_E4)
  loc_13316BB:     Call 0.Method_arg_24 (var_B2)
  loc_13316C7:     For var_250 =  To CInt(var_E4):   1 = var_250 'Integer
  loc_13316E0:       Call 0.Method_arg_90 (var_E0, CLng(var_B2))
  loc_13316E8:       Call 0.Method_arg_20 (var_110)
  loc_13316F0:       Call 0.Method_arg_30 (var_B8)
  loc_133171F:       If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_1331743:         Call 0.Method_arg_90 (var_E0, CLng(var_B2))
  loc_133174B:         Call 0.Method_arg_20 (var_110)
  loc_1331753:         Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_1331766:       End If
  loc_1331769:     Next var_250 'Integer
  loc_1331773:     Set var_110 = Nothing
  loc_1331789:     Set var_E0 = MemVar_1F921E4 
  loc_1331795:     Proc_6_99_1483714(var_E0, 0, var_B0)
  loc_13317A0:     MemVar_1F921E4 = var_E0
  loc_13317AB:   End If
  loc_13317AB: End If
  loc_13317AD: Close 1
  loc_13317B6: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_13317C6: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_13317D1: Close 1
  loc_13317DB: If (MemVar_1F923B8 = "Y") Then
  loc_13317F7:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1331801: Else
  loc_133181A:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1331821: End If
  loc_1331826: Set var_A8 = Nothing
  loc_1331829: Exit Sub
  loc_133182A: ' Referenced from: 13310E0
  loc_133182A: Proc_6_60_E62BC4(&HFF)
  loc_133182F: Exit Sub
End Sub

Public Sub Proc_263_2_12EC99C(arg_C, arg_10, arg_14) '12EC99C
  'Data Table: 41BAC0
  Dim var_BC As String
  Dim unk_41BACA As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_D0 As Variant
  Dim var_F8 As Variant
  Dim var_86 As Integer
  Dim var_E4 As Fields15
  Dim var_114 As Field20
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_134 As Variant
  Dim var_144 As String
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  loc_12EC314: On Error Goto loc_12EC996
  loc_12EC32B: var_BC = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.ROOMNO AS ROOMNO,HB.VNO AS BOOKNO,HB.PartyName,P.TxnNo FROM HallBook HB LEFT JOIN paychargeH P ON HB.DOCID=P.ContraDOCID  WHERE P.DOCID IN ('" & arg_C
  loc_12EC33B: unk_41BACA.Execute var_BC & "') ORDER BY P.DOCID,P.SNO", var_E0, -1
  loc_12EC346: Set var_A8 = var_E4
  loc_12EC358: Close 1
  loc_12EC361: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_12EC367: var_88 = 1
  loc_12EC36D: MemVar_1F923C0 = "N"
  loc_12EC374: MemVar_1F923C4 = "N"
  loc_12EC37B: MemVar_1F923C8 = "M"
  loc_12EC385: var_E8 = var_A8.RecordCount
  loc_12EC393: If (var_E8 > 0) Then
  loc_12EC3B4:   If CBool(Trim(arg_10) <> "W") Then
  loc_12EC3B7:     ' Referenced from: 12EC6CC
  loc_12EC3C6:     If Not(var_A8.EOF) Then
  loc_12EC3D5:       If (var_86 = 0) Then
  loc_12EC3F0:         Print 1, vbNullString
  loc_12EC3FB:         Print 1, vbNullString
  loc_12EC422:         Print 1, Proc_6_128_10272A8(" RECEIPT ", "B", &H50)
  loc_12EC436:         Print 1, vbNullString
  loc_12EC441:         Print 1, vbNullString
  loc_12EC47F:         Print 1, "Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)
  loc_12EC49B:         Print 1, vbNullString
  loc_12EC4A6:         Print 1, vbNullString
  loc_12EC4D4:         var_108 = CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("GuestName")), Proc_6_129_12B6C1C(var_88, var_86, &H50))) 'String
  loc_12EC4E7:         var_134 = ("Recieved with thanks from Mr. " + Ucase(var_108))
  loc_12EC4ED:         Print 1, var_134
  loc_12EC506:         Print 1, vbNullString
  loc_12EC523:         var_114 = var_A8.Fields.Item("RectAmt")
  loc_12EC532:         Proc_6_39_E7C810(var_108, CVar(var_114))
  loc_12EC541:         var_F8 = "0.00"
  loc_12EC57D:         Proc_6_39_E7C810(var_1AC, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_12EC5A4:         var_144 = "A Sum of Rs. "
  loc_12EC5AC:         var_154 = (var_144 + Format(var_108, var_F8))
  loc_12EC5B5:         var_174 = (var_154 + " (")
  loc_12EC5BF:         var_1D4 = (var_174 + CVar(Proc_6_43_10041F4(CSng(var_1AC), "Rs", vbNullString)))
  loc_12EC5C8:         var_1F4 = (var_1D4 + ")")
  loc_12EC5CE:         Print 1, var_1F4
  loc_12EC602:         Print 1, vbNullString
  loc_12EC60D:         Print 1, vbNullString
  loc_12EC618:         Print 1, vbNullString
  loc_12EC623:         Print 1, vbNullString
  loc_12EC62E:         Print 1, vbNullString
  loc_12EC639:         Print 1, vbNullString
  loc_12EC644:         Print 1, vbNullString
  loc_12EC668:         Print 1, Proc_6_52_EAD4F4("Autho. Signature", &H46, 1)
  loc_12EC67C:         Print 1, vbNullString
  loc_12EC687:         Print 1, "---------------------------------------------------------------------------------------"
  loc_12EC68D:       End If
  loc_12EC693:       var_86 = (var_86 + &H18)
  loc_12EC696:       ' Referenced from: 12EC6B3
  loc_12EC69C:       If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H22) Then
  loc_12EC6A4:         Print 1, vbNullString
  loc_12EC6B0:         var_86 = (var_86 + 1)
  loc_12EC6B3:         GoTo loc_12EC696
  loc_12EC6B6:       End If
  loc_12EC6B8:       var_86 = 0
  loc_12EC6C1:       var_88 = (var_88 + 1)
  loc_12EC6C7:       var_A8.MoveNext
  loc_12EC6CC:       GoTo loc_12EC3B7
  loc_12EC6CF:     End If
  loc_12EC6D2:   Else
  loc_12EC6D5:     var_AC = "SettlementRecieptBanq"
  loc_12EC6DB:     var_D0 = arg_14
  loc_12EC6EC:     var_B0 = CStr(Ucase(var_D0))
  loc_12EC716:     Set var_E4 = var_A8 
  loc_12EC71D:     CreateFieldDefFile(var_E4, MemVar_1F920B4 & "\" & var_AC & ".ttx", &HFF, var_88, var_86)
  loc_12EC748:     var_BC = MemVar_1F920B4 & "\"
  loc_12EC75F:     Call 0.Method_arg_1C (var_BC & var_AC & ".RPT", var_D0, var_E4, var_86)
  loc_12EC76A:     MemVar_1F921E4 = var_E4
  loc_12EC793:     Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_F8, var_144)
  loc_12EC79B:     Call 0.Method_arg_2C (var_86, var_88)
  loc_12EC7A9:     Call 0.Method_arg_150 (var_E4)
  loc_12EC7BF:     Call 0.Method_arg_90 (var_E4, var_E8)
  loc_12EC7C7:     Call 0.Method_arg_24 (var_B2)
  loc_12EC7D3:     For var_1FC =  To CInt(var_E8):   1 = var_1FC 'Integer
  loc_12EC7EC:       Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_12EC7F4:       Call 0.Method_arg_20 (var_114)
  loc_12EC7FC:       Call 0.Method_arg_30 (var_BC)
  loc_12EC812:       var_20C = Ucase(CVar(var_BC)) 'Variant
  loc_12EC82B:       If (var_20C = "TITLE") Then
  loc_12EC84F:         Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_12EC857:         Call 0.Method_arg_20 (var_114)
  loc_12EC85F:         Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_12EC875:       Else
  loc_12EC880:         If (var_20C = "BILLNO") Then
  loc_12EC8AC:           Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_12EC8B4:           Call 0.Method_arg_20 (var_114)
  loc_12EC8BC:           Call 0.Method_arg_38 (CStr("'" & var_21C & "'"))
  loc_12EC8D2:         End If
  loc_12EC8D2:       End If
  loc_12EC8D5:     Next var_1FC 'Integer
  loc_12EC8DF:     Set var_114 = Nothing
  loc_12EC8F5:     Set var_E4 = MemVar_1F921E4 
  loc_12EC901:     Proc_6_99_1483714(var_E4, 0, var_B0)
  loc_12EC90C:     MemVar_1F921E4 = var_E4
  loc_12EC917:   End If
  loc_12EC917: End If
  loc_12EC919: Close 1
  loc_12EC922: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_12EC932: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_12EC93D: Close 1
  loc_12EC947: If (MemVar_1F923B8 = "Y") Then
  loc_12EC963:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_12EC96D: Else
  loc_12EC986:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_12EC98D: End If
  loc_12EC992: Set var_A8 = Nothing
  loc_12EC995: Exit Sub
  loc_12EC996: ' Referenced from: 12EC314
  loc_12EC996: Proc_6_60_E62BC4(&HFF)
  loc_12EC99B: Exit Sub
End Sub
