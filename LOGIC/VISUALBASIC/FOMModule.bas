
Public Sub Proc_146_0_E7D9C8(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'E7D9C8
  'Data Table: 4202E4
  loc_E7D969: RrRoomReservation.OpenMode = arg_C
  loc_E7D977: RrRoomReservation.RoomTypeCode = arg_10
  loc_E7D985: RrRoomReservation.RoomTypeName = arg_14
  loc_E7D993: RrRoomReservation.oRoomNo = arg_1C
  loc_E7D9A1: RrRoomReservation.ArrivalDate = arg_18
  loc_E7D9AF: RrRoomReservation.PartyName = arg_20
  loc_E7D9C2: Call 0.Method_arg_2B0 (var_98)
  loc_E7D9C7: Exit Sub
End Sub

Public Sub Proc_146_1_1334068(arg_C, arg_10, arg_14) '1334068
  'Data Table: 4202E4
  Dim var_B8 As String
  Dim unk_4202EB As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_D0 As Variant
  Dim var_F8 As Variant
  Dim var_86 As Integer
  Dim var_E4 As Fields15
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
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_1A8 As Variant
  loc_133390C: On Error Goto loc_133405F
  loc_1333923: var_B8 = "SELECT Max(P.VNO) AS RECTNO,Max(P.VDATE) AS RECTDATE,Max(P.PAYTYPE) AS RECTMODE,Max(P.U_Name) As UserName,Max(P.CardNo) AS CCardNo,Max(P.Cardholder) As CCardholder,Max(P.ChqNo) As ChqNo,Max(P.ChqDate) AS ChqDate,Max(P.ExpDate) AS CCExpDate,Max(P.BatchNo) As BatchNo,Max(P.AMTCR) AS RECTAMT,Max(P.ROOMNO) AS ROOMNO,Max(P.FOLIONO) AS GRCNO,Max(GP.NAME) AS GUESTNAME,Max(R.NAME) As PayName,Max(P.TxnNo) As TxnNo,Max(P.Comments) As Comments FROM (GUESTPROF GP left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE) LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID LEFT JOIN RevMast R ON P.PayCode = R.Code" & " WHERE P.DOCID IN ('"
  loc_133393A: unk_4202EB.Execute var_B8 & arg_C & "') AND P.VTYPE='REC' Group By P.DocId", var_E0, -1
  loc_1333945: Set var_A8 = var_E4
  loc_1333959: Close 1
  loc_1333962: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1333968: var_88 = 1
  loc_133396E: MemVar_1F923C0 = "N"
  loc_1333975: MemVar_1F923C4 = "N"
  loc_133397C: MemVar_1F923C8 = "M"
  loc_1333986: var_E8 = var_A8.RecordCount
  loc_1333994: If (var_E8 > 0) Then
  loc_13339B5:   If CBool(Trim(arg_10) <> "W") Then
  loc_13339B8:     ' Referenced from: 1333DF5
  loc_13339C7:     If Not(var_A8.EOF) Then
  loc_13339D6:       If (var_86 = 0) Then
  loc_13339F1:         Print 1, vbNullString
  loc_13339FC:         Print 1, vbNullString
  loc_1333A23:         Print 1, Proc_6_128_10272A8(" ADVANCE RECEIPT ", "B", &H50)
  loc_1333A37:         Print 1, vbNullString
  loc_1333A42:         Print 1, vbNullString
  loc_1333AA2:         Proc_6_39_E7C810(var_158, CVar(var_A8.Fields.Item("GRCNo")), Proc_6_129_12B6C1C(var_88, var_86, &H50))
  loc_1333B0F:         var_130 = (CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)) + Space(8))
  loc_1333B16:         var_188 = CVar(Proc_6_45_EAD428(CStr("GRC No. :" & var_158), &HE)) 'String
  loc_1333B19:         var_198 = (var_130 + var_188)
  loc_1333B20:         var_1B8 = (var_198 + Space(8))
  loc_1333B29:         var_1D8 = (var_1B8 + "Date :")
  loc_1333B33:         var_220 = (var_1D8 + CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectDate")), var_88)))
  loc_1333B39:         Print 1, var_220
  loc_1333B7B:         Print 1, vbNullString
  loc_1333B86:         Print 1, vbNullString
  loc_1333BB4:         var_108 = CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("GuestName")))) 'String
  loc_1333BC7:         var_130 = ("Recieved with thanks from Mr. " + Ucase(var_108))
  loc_1333BCD:         Print 1, var_130
  loc_1333BE6:         Print 1, vbNullString
  loc_1333C03:         var_110 = var_A8.Fields.Item("RectAmt")
  loc_1333C12:         Proc_6_39_E7C810(var_108, CVar(var_110))
  loc_1333C21:         var_F8 = "0.00"
  loc_1333C5D:         Proc_6_39_E7C810(var_188, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_1333CAF:         var_168 = "A Sum of Rs. "
  loc_1333CB7:         var_148 = (var_168 + Format(var_108, var_F8))
  loc_1333CC0:         var_158 = (CVar(var_A8.Fields.Item("GRCNo")) + " (")
  loc_1333CCA:         var_1A8 = (var_158 + CVar(Proc_6_43_10041F4(CSng(var_188), "Rs", vbNullString)))
  loc_1333CD3:         var_1B8 = (Space(8) + ") by ")
  loc_1333CDD:         var_210 = (var_1B8 + CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectMode")), 1)))
  loc_1333CE3:         Print 1, CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectDate")), var_88))
  loc_1333D21:         Print 1, vbNullString
  loc_1333D33:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_1333D41:         Print 1, vbNullString
  loc_1333D4C:         Print 1, vbNullString
  loc_1333D57:         Print 1, vbNullString
  loc_1333D62:         Print 1, vbNullString
  loc_1333D6D:         Print 1, vbNullString
  loc_1333D91:         Print 1, Proc_6_52_EAD4F4("Autho. Signature", &H46)
  loc_1333DA5:         Print 1, vbNullString
  loc_1333DB0:         Print 1, "---------------------------------------------------------------------------------------"
  loc_1333DB6:       End If
  loc_1333DBC:       var_86 = (var_86 + &H18)
  loc_1333DBF:       ' Referenced from: 1333DDC
  loc_1333DC5:       If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H22) Then
  loc_1333DCD:         Print 1, vbNullString
  loc_1333DD9:         var_86 = (var_86 + 1)
  loc_1333DDC:         GoTo loc_1333DBF
  loc_1333DDF:       End If
  loc_1333DE1:       var_86 = 0
  loc_1333DEA:       var_88 = (var_88 + 1)
  loc_1333DF0:       var_A8.MoveNext
  loc_1333DF5:       GoTo loc_13339B8
  loc_1333DF8:     End If
  loc_1333DFB:   Else
  loc_1333DFE:     var_AC = "ADVANCE RECIEPT"
  loc_1333E04:     var_D0 = arg_14
  loc_1333E15:     var_B0 = CStr(Ucase(var_D0))
  loc_1333E3F:     Set var_E4 = var_A8 
  loc_1333E46:     CreateFieldDefFile(var_E4, MemVar_1F920B4 & "\" & var_AC & ".ttx", &HFF, var_88)
  loc_1333E71:     var_B8 = MemVar_1F920B4 & "\"
  loc_1333E88:     Call 0.Method_arg_1C (var_B8 & var_AC & ".RPT", var_D0, var_E4, var_86)
  loc_1333E93:     MemVar_1F921E4 = var_E4
  loc_1333EBC:     Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_F8, var_168)
  loc_1333EC4:     Call 0.Method_arg_2C (var_86, var_86)
  loc_1333ED2:     Call 0.Method_arg_150 (var_E4)
  loc_1333EE8:     Call 0.Method_arg_90 (var_E4, var_E8)
  loc_1333EF0:     Call 0.Method_arg_24 (var_B2)
  loc_1333EFC:     For var_250 =  To CInt(var_E8):   1 = var_250 'Integer
  loc_1333F15:       Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_1333F1D:       Call 0.Method_arg_20 (var_110)
  loc_1333F25:       Call 0.Method_arg_30 (var_B8)
  loc_1333F54:       If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_1333F78:         Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_1333F80:         Call 0.Method_arg_20 (var_110)
  loc_1333F88:         Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_1333F9B:       End If
  loc_1333F9E:     Next var_250 'Integer
  loc_1333FA8:     Set var_110 = Nothing
  loc_1333FBE:     Set var_E4 = MemVar_1F921E4 
  loc_1333FCA:     Proc_6_99_1483714(var_E4, 0, var_B0)
  loc_1333FD5:     MemVar_1F921E4 = var_E4
  loc_1333FE0:   End If
  loc_1333FE0: End If
  loc_1333FE2: Close 1
  loc_1333FEB: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1333FFB: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_1334006: Close 1
  loc_1334010: If (MemVar_1F923B8 = "Y") Then
  loc_133402C:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1334036: Else
  loc_133404F:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1334056: End If
  loc_133405B: Set var_A8 = Nothing
  loc_133405E: Exit Sub
  loc_133405F: ' Referenced from: 133390C
  loc_133405F: Proc_6_60_E62BC4(&HFF)
  loc_1334064: Exit Sub
End Sub

Public Sub Proc_146_2_13175F4(arg_C, arg_10, arg_14) '13175F4
  'Data Table: 4202E4
  Dim var_C4 As String
  Dim unk_4202EB As Connection15
  Dim var_9C As Recordset15
  Dim var_DC As Variant
  Dim var_F0 As Fields15
  Dim var_F8 As Field20
  Dim var_B0 As Recordset15
  Dim var_108 As Variant
  Dim var_88 As Integer
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_118 As Variant
  Dim var_13C As Variant
  Dim var_14C As String
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  loc_1316EDC: On Error Goto loc_13175EE
  loc_1316EF3: var_C4 = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.ROOMNO AS ROOMNO,P.FOLIONO AS GRCNO,GP.NAME AS GUESTNAME,R.NAME As PayName,P.TxnNo FROM (GUESTPROF GP left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE) LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID LEFT JOIN RevMast R ON P.PayCode = R.Code" & " WHERE P.FOLIONODOCID IN ('"
  loc_1316F0A: unk_4202EB.Execute var_C4 & arg_C & "') AND P.VTYPE='REC' And MODESET='S' ORDER BY P.DOCID", var_EC, -1
  loc_1316F15: Set var_B0 = var_F0
  loc_1316F4B: unk_4202EB.Execute "Select max(Bill_No) from PayCharge where (Bill_no is not NULL and Bill_no<>'') and Folionodocid In ('" & arg_C & "')", var_EC, -1
  loc_1316F56: Set var_9C = var_F0
  loc_1316F7A: If (var_9C.RecordCount > 0) Then
  loc_1316F8F:   var_F0 = var_9C.Fields
  loc_1316FAC:   var_A0 = Proc_6_38_E68A98(var_F0.Item(0).Value, var_F0)
  loc_1316FB9: End If
  loc_1316FBF: var_F4 = var_B0.RecordCount
  loc_1316FCD: If (var_F4 > 0) Then
  loc_1316FEE:   If CBool(Trim(arg_10) <> "W") Then
  loc_1316FF3:     Close 1
  loc_1316FFC:     Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1317002:     var_88 = 1
  loc_1317008:     MemVar_1F923C0 = "N"
  loc_131700F:     MemVar_1F923C4 = "N"
  loc_1317016:     MemVar_1F923C8 = "M"
  loc_131701A:     ' Referenced from: 131732F
  loc_1317029:     If Not(var_B0.EOF) Then
  loc_1317038:       If (var_86 = 0) Then
  loc_1317053:         Print 1, vbNullString
  loc_131705E:         Print 1, vbNullString
  loc_1317085:         Print 1, Proc_6_128_10272A8(" RECEIPT ", "B", &H50)
  loc_1317099:         Print 1, vbNullString
  loc_13170A4:         Print 1, vbNullString
  loc_13170E2:         Print 1, "Receipt No.  :" & CStr(var_B0.Fields.Item("RectNo").Value)
  loc_13170FE:         Print 1, vbNullString
  loc_1317109:         Print 1, vbNullString
  loc_1317137:         var_118 = CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("GuestName")), Proc_6_129_12B6C1C(var_88, var_86, &H50))) 'String
  loc_131714A:         var_13C = ("Recieved with thanks from Mr. " + Ucase(var_118))
  loc_1317150:         Print 1, var_13C
  loc_1317169:         Print 1, vbNullString
  loc_1317186:         var_F8 = var_B0.Fields.Item("RectAmt")
  loc_1317195:         Proc_6_39_E7C810(var_118, CVar(var_F8))
  loc_13171E0:         Proc_6_39_E7C810(var_1B4, CVar(var_B0.Fields.Item("RectAmt")), 1)
  loc_1317207:         var_14C = "A Sum of Rs. "
  loc_131720F:         var_15C = (var_14C + Format(var_118, "0.00"))
  loc_1317218:         var_17C = (var_15C + " (")
  loc_1317222:         var_1DC = (var_17C + CVar(Proc_6_43_10041F4(CSng(var_1B4), "Rs", vbNullString)))
  loc_131722B:         var_1FC = (var_1DC + ")")
  loc_1317231:         Print 1, var_1FC
  loc_1317265:         Print 1, vbNullString
  loc_1317270:         Print 1, vbNullString
  loc_131727B:         Print 1, vbNullString
  loc_1317286:         Print 1, vbNullString
  loc_1317291:         Print 1, vbNullString
  loc_131729C:         Print 1, vbNullString
  loc_13172A7:         Print 1, vbNullString
  loc_13172CB:         Print 1, Proc_6_52_EAD4F4("Autho. Signature", &H46, 1)
  loc_13172DF:         Print 1, vbNullString
  loc_13172EA:         Print 1, "---------------------------------------------------------------------------------------"
  loc_13172F0:       End If
  loc_13172F6:       var_86 = (var_86 + &H18)
  loc_13172F9:       ' Referenced from: 1317316
  loc_13172FF:       If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H22) Then
  loc_1317307:         Print 1, vbNullString
  loc_1317313:         var_86 = (var_86 + 1)
  loc_1317316:         GoTo loc_13172F9
  loc_1317319:       End If
  loc_131731B:       var_86 = 0
  loc_1317324:       var_88 = (var_88 + 1)
  loc_131732A:       var_B0.MoveNext
  loc_131732F:       GoTo loc_131701A
  loc_1317332:     End If
  loc_1317334:     Close 1
  loc_131733D:     Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_131734D:     Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_1317358:     Close 1
  loc_1317362:     If (MemVar_1F923B8 = "Y") Then
  loc_131737E:       var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1317388:     Else
  loc_131739D:       var_108 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Double
  loc_13173A1:       var_98 = var_108 'Variant
  loc_13173A8:     End If
  loc_13173AB:   Else
  loc_13173AE:     var_B4 = "SETTLEMENT RECIEPT"
  loc_13173B4:     var_DC = arg_14
  loc_13173C5:     var_B8 = CStr(Ucase(var_DC))
  loc_13173EF:     Set var_F0 = var_B0 
  loc_13173F6:     CreateFieldDefFile(var_F0, MemVar_1F920B4 & "\" & var_B4 & ".ttx", &HFF, var_88, var_86)
  loc_1317421:     var_C4 = MemVar_1F920B4 & "\"
  loc_1317438:     Call 0.Method_arg_1C (var_C4 & var_B4 & ".RPT", var_DC, var_F0, var_86)
  loc_1317443:     MemVar_1F921E4 = var_F0
  loc_131746C:     Call 0.Method_arg_64 (var_F0, CVar(var_F0), var_108, var_14C)
  loc_1317474:     Call 0.Method_arg_2C (var_86, var_88)
  loc_1317482:     Call 0.Method_arg_150 (var_F0)
  loc_1317498:     Call 0.Method_arg_90 (var_F0, var_F4)
  loc_13174A0:     Call 0.Method_arg_24 (var_BA)
  loc_13174AC:     For var_204 =  To CInt(var_F4):   1 = var_204 'Integer
  loc_13174C5:       Call 0.Method_arg_90 (var_F0, CLng(var_BA))
  loc_13174CD:       Call 0.Method_arg_20 (var_F8)
  loc_13174D5:       Call 0.Method_arg_30 (var_C4)
  loc_13174EB:       var_214 = Ucase(CVar(var_C4)) 'Variant
  loc_1317504:       If (var_214 = "TITLE") Then
  loc_1317528:         Call 0.Method_arg_90 (var_F0, CLng(var_BA))
  loc_1317530:         Call 0.Method_arg_20 (var_F8)
  loc_1317538:         Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_131754E:       Else
  loc_1317559:         If (var_214 = "BILLNO") Then
  loc_131757D:           Call 0.Method_arg_90 (var_F0, CLng(var_BA))
  loc_1317585:           Call 0.Method_arg_20 (var_F8)
  loc_131758D:           Call 0.Method_arg_38 ("'" & var_A0 & "'")
  loc_13175A0:         End If
  loc_13175A0:       End If
  loc_13175A3:     Next var_204 'Integer
  loc_13175AD:     Set var_F8 = Nothing
  loc_13175C3:     Set var_F0 = MemVar_1F921E4 
  loc_13175CF:     Proc_6_99_1483714(var_F0, 0, var_B8)
  loc_13175DA:     MemVar_1F921E4 = var_F0
  loc_13175E5:   End If
  loc_13175E5: End If
  loc_13175EA: Set var_B0 = Nothing
  loc_13175ED: Exit Sub
  loc_13175EE: ' Referenced from: 1316EDC
  loc_13175EE: Proc_6_60_E62BC4(&HFF)
  loc_13175F3: Exit Sub
End Sub

Public Sub Proc_146_3_143B3E4(arg_C) '143B3E4
  'Data Table: 4202E4
  Dim var_8C As Recordset15
  loc_143A8C3: Set var_8C = arg_C 
  loc_143A8EB: var_8C.Fields.Append "UID", &HC8, &H20
  loc_143A917: var_8C.Fields.Append "ConPrefix", &HC8, &HB
  loc_143A943: var_8C.Fields.Append "GuestName", &HC8, &H32
  loc_143A96F: var_8C.Fields.Append "FatherName", &HC8, &H32
  loc_143A99B: var_8C.Fields.Append "Address1", &HC8, &H4B
  loc_143A9C7: var_8C.Fields.Append "Address2", &HC8, &H4B
  loc_143A9F3: var_8C.Fields.Append "City", &HC8, &H23
  loc_143AA1F: var_8C.Fields.Append "State", &HC8, &H23
  loc_143AA4B: var_8C.Fields.Append "Country", &HC8, &H23
  loc_143AA77: var_8C.Fields.Append "ZIP", &HC8, &HA
  loc_143AAA3: var_8C.Fields.Append "Nationality", &HC8, &H1E
  loc_143AACF: var_8C.Fields.Append "Mobile", &HC8, &H23
  loc_143AAFB: var_8C.Fields.Append "Fax", &HC8, &H23
  loc_143AB27: var_8C.Fields.Append "Phone", &HC8, &H23
  loc_143AB53: var_8C.Fields.Append "EMailId", &HC8, &H32
  loc_143AB7F: var_8C.Fields.Append "Marital", &HC8, &HA
  loc_143ABAB: var_8C.Fields.Append "Gender", &HC8, &HA
  loc_143ABD7: var_8C.Fields.Append "GStatus", &HC8, &HA
  loc_143AC03: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_143AC2F: var_8C.Fields.Append "DateOfBirth", &HC8, &HC
  loc_143AC5B: var_8C.Fields.Append "Age", &HC8, 4
  loc_143AC87: var_8C.Fields.Append "Diplomat", &HC8, 3
  loc_143ACB3: var_8C.Fields.Append "DiplomatNo", &HC8, &H32
  loc_143ACDF: var_8C.Fields.Append "IdProof", &HC8, &H32
  loc_143AD0B: var_8C.Fields.Append "IdProofNo", &HC8, &H4B
  loc_143AD37: var_8C.Fields.Append "Cmt1", &HC8, &H32
  loc_143AD63: var_8C.Fields.Append "Cmt2", &HC8, &H32
  loc_143AD8F: var_8C.Fields.Append "Cmt3", &HC8, &H32
  loc_143ADBB: var_8C.Fields.Append "User", &HC8, &HA
  loc_143ADE7: var_8C.Fields.Append "Picture1", &HCD, &H3E8
  loc_143AE13: var_8C.Fields.Append "IdProofPic", &HCD, &H3E8
  loc_143AE3F: var_8C.Fields.Append "P_RegNo", &HC8, 8
  loc_143AE6B: var_8C.Fields.Append "P_SerialNo", &HC8, 8
  loc_143AE97: var_8C.Fields.Append "P_GuestName", &HC8, &H23
  loc_143AEC3: var_8C.Fields.Append "P_Add1", &HC8, &H32
  loc_143AEEF: var_8C.Fields.Append "P_Add2", &HC8, &H32
  loc_143AF1B: var_8C.Fields.Append "P_Nationality", &HC8, &H32
  loc_143AF47: var_8C.Fields.Append "P_DateOfBirth", &HC8, &HC
  loc_143AF73: var_8C.Fields.Append "P_Age", &HC8, 4
  loc_143AF9F: var_8C.Fields.Append "P_PurVisit", &HC8, &H32
  loc_143AFCB: var_8C.Fields.Append "P_AddIndiaIfAny", &HC8, &H32
  loc_143AFF7: var_8C.Fields.Append "P_DateArr", &HC8, &HC
  loc_143B023: var_8C.Fields.Append "P_ArrPlace", &HC8, &H32
  loc_143B04F: var_8C.Fields.Append "P_PropStay", &HC8, &H32
  loc_143B07B: var_8C.Fields.Append "P_ArrFrom", &HC8, &H32
  loc_143B0A7: var_8C.Fields.Append "P_ModeTravelatArrival", &HC8, &H32
  loc_143B0D3: var_8C.Fields.Append "P_ProposedDepart", &HC8, &H32
  loc_143B0FF: var_8C.Fields.Append "P_GoingTo", &HC8, &H32
  loc_143B12B: var_8C.Fields.Append "P_ModeTravelAfterDepart", &HC8, &H32
  loc_143B157: var_8C.Fields.Append "P_VisaIssAuth", &HC8, &H32
  loc_143B183: var_8C.Fields.Append "P_Extension", &HC8, &H64
  loc_143B1AF: var_8C.Fields.Append "P_PassNo", &HC8, &H32
  loc_143B1DB: var_8C.Fields.Append "P_IssDate", &HC8, &HC
  loc_143B207: var_8C.Fields.Append "P_IssPlace", &HC8, &H32
  loc_143B233: var_8C.Fields.Append "P_PassExpDate", &HC8, &HC
  loc_143B25F: var_8C.Fields.Append "P_WorkPermit", &HC8, &H32
  loc_143B28B: var_8C.Fields.Append "P_VisaNo", &HC8, &H32
  loc_143B2B7: var_8C.Fields.Append "P_VisaIssDate", &HC8, &HC
  loc_143B2E3: var_8C.Fields.Append "P_VisaIssPlace", &HC8, &H32
  loc_143B30F: var_8C.Fields.Append "P_VisaExpDate", &HC8, &HC
  loc_143B33B: var_8C.Fields.Append "P_VisaDuration", &HC8, &H32
  loc_143B367: var_8C.Fields.Append "P_Vdate", &HC8, &HC
  loc_143B393: var_8C.Fields.Append "PAN_No", &HC8, &HF
  loc_143B3A3: var_8C.CursorType = 3
  loc_143B3B0: var_8C.LockType = 3
  loc_143B3CF: var_8C.Open var_A0, var_B0, -1
  loc_143B3D6: Set var_8C = Nothing 
  loc_143B3DD: Set var_88 = arg_C 
  loc_143B3E1: Exit Sub
End Sub

Public Sub Proc_146_4_1AAA7C8(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) '1AAA7C8
  'Data Table: 4202E4
  Dim var_AA As Integer
  Dim var_C4 As String
  Dim var_C8 As String
  Dim unk_4202EB As Connection15
  Dim var_B0 As Recordset15
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_144 As String
  Dim var_154 As Recordset15
  Dim var_E8 As Variant
  Dim var_8C As Recordset15
  Dim var_158 As Variant
  Dim var_15C As Field20
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_124 As Variant
  Dim var_1A0 As String
  Dim var_190 As Fields15
  Dim var_1A4 As Field20
  Dim var_134 As Variant
  Dim var_1B4 As Variant
  Dim var_90 As Recordset15
  Dim var_88 As Recordset15
  Dim var_18C As Variant
  Dim var_98 As Recordset15
  Dim var_BC As Recordset15
  loc_1AA6A10: On Error Goto loc_1AAA7BC
  loc_1AA6A15: var_AA = &HFF
  loc_1AA6A1F: var_C4 = "Select B.DocId UID,IsNull(B.MyRectNo,'') as MyRectNo,B.BookNo,B.Vdate AS ResDate,B.U_Name,B.U_EntDt,COMP.Name as Company,TR.Name as TravelAgency,B.ResStatus,B.GuestProf,B.DepositeReq,B.Adult,B.Child,B.NoOfRooms,B.NoDays,BS.Name BussSource,MS.Name MarketSeg,B.ArrFrom,B.Destination,B.BookedBy,B.ResMode,B.TravelMode,B.RDisc,B.RSDisc From Booking B " & "Left Join SubGroup COMP ON B.Company=COMP.SubCode Left Join SubGroup TR ON B.TravelAgency=TR.SubCode Left Join MarketSeg MS ON B.MarketSeg=MS.Code Left Join BussSource BS ON B.BussSource=BS.Code Where B.DocId='"
  loc_1AA6A4D: unk_4202EB.Execute var_C4 & arg_C & "'", var_E8, -1
  loc_1AA6A58: Set var_B0 = var_EC
  loc_1AA6A67: var_F0 = var_B0.RecordCount
  loc_1AA6A75: If (var_F0 > 0) Then
  loc_1AA6AA3:   var_A0 = CStr(var_B0.Fields.Item("UID").Value)
  loc_1AA6AC2:   var_EC = var_B0.Fields
  loc_1AA6AD2:   var_E8 = var_EC.Item("GuestProf").Value
  loc_1AA6ADB:   var_A4 = CStr(var_E8)
  loc_1AA6AE8: End If
  loc_1AA6AF5: var_104 = "Select * From Enviro Where LogSite_Code="
  loc_1AA6AFD: var_D8 = MemVar_1F92078
  loc_1AA6B05: Proc_6_17_EAA2B0(var_E8, var_D8, var_104, var_134)
  loc_1AA6B0D: var_114 = -1 & var_E8 
  loc_1AA6B1B: unk_4202EB.Execute CStr(var_114), var_EC, var_EC
  loc_1AA6B26: Set var_BC = var_EC
  loc_1AA6B4C: var_C4 = "SELECT GP.Code,GP.ConPrefix,GP.Name,GP.FatherName,GP.Add1,GP.Add2,GP.CityName,GP.StateName,GP.CountryName,GP.ZipCode,GP.PicPath,GP.IdPicPath,Country_1.Name As Nationality,GP.Anniversary,GP.BirthDate,GP.Age,GP.PhoneNo," & "GP.MobileNo,GP.FaxNo,GP.EmailId,GP.DiplomatYN,GP.PanNo,GP.IdNo,GP.IdProof,GP.IdProofNo,GP.MaritalStatus,GP.Gender,GS.Name As GuestStatus,GP.Comments1,GP.Comments2,GP.Comments3,GP.U_Name,Q.* FROM GuestProf GP LEFT JOIN Country AS Country_1 ON GP.Nationality = Country_1.Code Left Join GuestStat GS On GP.GuestStatus=GS.Code Left Join "
  loc_1AA6B53: var_C8 = var_C4 & "(Select GF.Code As P_GuestCode,GFor.SerialNo As P_SerialNo,GFor.Name As P_GuestName,GFor.Add1 As P_Add1,GFor.Add2 As P_Add2,Country.Name As P_Nationality,GFor.Age AS P_Age,GFor.PurVisit As P_PurVisit,"
  loc_1AA6B5A: var_138 = var_C8 & "GFor.AddIndia As P_AddIndiaIfAny,GFor.DateArr As P_DateArr,GFor.ArrPlace As P_ArrPlace,GFor.PropStay As P_PropStay,GFor.ArrFrom As P_ArrFrom,GFor.ModeTravel As P_ModeTravelatArrival,'' As P_ProposedDepart,"
  loc_1AA6B61: var_13C = var_138 & "GFor.Dest As P_GoingTo, GFor.ModeTravelUsed As P_ModeTravelAfterDepart,GFor.VisaIssAuth As P_VisaIssAuth, GFor.Extension As P_Extension,GFor.PassNo As P_PassNo,GFor.IssDate As P_IssDate, GFor.IssPlace As P_IssPlace,"
  loc_1AA6B68: var_140 = var_13C & "GFor.PassExpDate As P_PassExpDate,GFor.WorkPermit As P_WorkPermit,GFor.VisaNo As P_VisaNo,GFor.VisaIssDate As P_VisaIssDate,GFor.VisaIssPlace As P_VisaIssPlace,GFor.ExpDate AS P_VisaExpDate,GFor.VisaDuration As P_VisaDuration,'' As P_Vdate "
  loc_1AA6B6F: var_144 = var_140 & "From ((GuestProf GF Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN Country ON GFor.Nationality = Country.Code)) Q On GP.Code=Q.P_GuestCode Where GP.Code='"
  loc_1AA6B86: unk_4202EB.Execute var_144 & var_A4 & "' Order By P_SerialNo", var_E8, -1
  loc_1AA6B91: Set var_8C = var_EC
  loc_1AA6BB1: Set var_90 = New 
  loc_1AA6BBC: Set var_90 = Proc_146_3_143B3E4(var_90, var_EC)
  loc_1AA6BBF: ' Referenced from: 1AA89B1
  loc_1AA6BCE: If Not(Me.Recordset15.EOF) Then
  loc_1AA6BD4:   Set var_154 = var_90 
  loc_1AA6BE3:   var_154.AddNew var_D8, var_104
  loc_1AA6C18:   var_154.Fields.Item("UID").Value = CVar(Proc_6_38_E68A98(var_A0))
  loc_1AA6C72:   var_154.Fields.Item("ConPrefix").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ConPrefix"))))
  loc_1AA6CD2:   var_154.Fields.Item("GuestName").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name"))))
  loc_1AA6D32:   var_154.Fields.Item("FatherName").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("FatherName"))))
  loc_1AA6D92:   var_154.Fields.Item("Address1").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Add1"))))
  loc_1AA6DF2:   var_154.Fields.Item("Address2").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Add2"))))
  loc_1AA6E52:   var_154.Fields.Item("City").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CityName"))))
  loc_1AA6EB2:   var_154.Fields.Item("State").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("StateName"))))
  loc_1AA6F12:   var_154.Fields.Item("Country").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CountryName"))))
  loc_1AA6F72:   var_154.Fields.Item("ZIP").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Zipcode"))))
  loc_1AA6FD2:   var_154.Fields.Item("Nationality").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nationality"))))
  loc_1AA7048:   var_154.Fields.Item("Mobile").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MobileNo")))), &H23)
  loc_1AA70C3:   var_154.Fields.Item("Fax").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("FaxNo")))), &H23)
  loc_1AA713E:   var_154.Fields.Item("Phone").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PhoneNo")))), &H23)
  loc_1AA71B9:   var_154.Fields.Item("EMailId").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("EmailId")))), &H32)
  loc_1AA721E:   var_154.Fields.Item("Marital").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MaritalStatus"))))
  loc_1AA727E:   var_154.Fields.Item("Gender").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Gender"))))
  loc_1AA72DE:   var_154.Fields.Item("GStatus").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("GuestStatus"))))
  loc_1AA7366:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Anniversary"))) = vbNullString), "NA", CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Anniversary")))))
  loc_1AA738E:   var_154.Fields.Item("Anniversary").Value = var_18C
  loc_1AA7427:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BirthDate"))) = vbNullString), "NA", CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BirthDate")))))
  loc_1AA744F:   var_154.Fields.Item("DateOfBirth").Value = var_18C
  loc_1AA74E8:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Age"))) = "0"), "NA", CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Age")))))
  loc_1AA7510:   var_154.Fields.Item("Age").Value = var_18C
  loc_1AA7581:   var_154.Fields.Item("Diplomat").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DiplomatYN"))))
  loc_1AA75E1:   var_154.Fields.Item("DiplomatNo").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IdNo"))))
  loc_1AA7641:   var_154.Fields.Item("IdProof").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IdProof"))))
  loc_1AA76A1:   var_154.Fields.Item("IdProofNo").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IdProofNo"))))
  loc_1AA7701:   var_154.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Comments1"))))
  loc_1AA7761:   var_154.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Comments2"))))
  loc_1AA77C1:   var_154.Fields.Item("Cmt3").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Comments3"))))
  loc_1AA7821:   var_154.Fields.Item("User").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name"))))
  loc_1AA7881:   var_154.Fields.Item("P_RegNo").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_GuestCode"))))
  loc_1AA78E1:   var_154.Fields.Item("P_SerialNo").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_SerialNo"))))
  loc_1AA7941:   var_154.Fields.Item("P_GuestName").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_GuestName"))))
  loc_1AA79A1:   var_154.Fields.Item("P_Add1").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_Add1"))))
  loc_1AA7A01:   var_154.Fields.Item("P_Add2").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_Add2"))))
  loc_1AA7A61:   var_154.Fields.Item("P_Nationality").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_Nationality"))))
  loc_1AA7AE9:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BirthDate"))) = vbNullString), "NA", CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BirthDate")))))
  loc_1AA7AF5:   var_1A0 = "P_DateOfBirth"
  loc_1AA7B11:   var_154.Fields.Item(var_1A0).Value = var_18C
  loc_1AA7B82:   var_154.Fields.Item("P_Age").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_Age"))))
  loc_1AA7BE2:   var_154.Fields.Item("P_PurVisit").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_PurVisit"))))
  loc_1AA7C42:   var_154.Fields.Item("P_AddIndiaIfAny").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_AddIndiaIfAny"))))
  loc_1AA7CA2:   var_154.Fields.Item("P_DateArr").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_DateArr"))))
  loc_1AA7D02:   var_154.Fields.Item("P_ArrPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_ArrPlace"))))
  loc_1AA7D62:   var_154.Fields.Item("P_PropStay").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_PropStay"))))
  loc_1AA7DC2:   var_154.Fields.Item("P_ArrFrom").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_ArrFrom"))))
  loc_1AA7E22:   var_154.Fields.Item("P_ModeTravelatArrival").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_ModeTravelatArrival"))))
  loc_1AA7E82:   var_154.Fields.Item("P_ProposedDepart").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_ProposedDepart"))))
  loc_1AA7EE2:   var_154.Fields.Item("P_GoingTo").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_GoingTo"))))
  loc_1AA7F42:   var_154.Fields.Item("P_ModeTravelAfterDepart").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_ModeTravelAfterDepart"))))
  loc_1AA7FA2:   var_154.Fields.Item("P_VisaIssAuth").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_VisaIssAuth"))))
  loc_1AA8002:   var_154.Fields.Item("P_Extension").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_Extension"))))
  loc_1AA8062:   var_154.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_PassNo"))))
  loc_1AA80C2:   var_154.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_IssDate"))))
  loc_1AA8122:   var_154.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_IssPlace"))))
  loc_1AA8182:   var_154.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_PassExpDate"))))
  loc_1AA81E2:   var_154.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_WorkPermit"))))
  loc_1AA8242:   var_154.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_VisaNo"))))
  loc_1AA82A2:   var_154.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_VisaIssDate"))))
  loc_1AA8302:   var_154.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_VisaIssPlace"))))
  loc_1AA8362:   var_154.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_VisaExpDate"))))
  loc_1AA83C2:   var_154.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_VisaDuration"))))
  loc_1AA8422:   var_154.Fields.Item("P_Vdate").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("P_Vdate"))))
  loc_1AA8482:   var_154.Fields.Item("PAN_No").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PanNo"))))
  loc_1AA84A6:   var_EC = var_8C.Fields
  loc_1AA84BF:   var_16C = IsNull(CVar(var_EC.Item("PicPath")))
  loc_1AA84C6:   var_104 = "PicPath"
  loc_1AA84F9:   var_124 = vbNullString
  loc_1AA851D:   If CBool(var_AA Or (Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_104)), var_16C))) = var_124)) Then
  loc_1AA853E:     Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA8552:     Set var_158 = MemVar_1F92244.tmpImage
  loc_1AA8558:     MDIForm1.tmpImage.Picture = var_EC
  loc_1AA8567:   Else
  loc_1AA858F:     var_114 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PicPath")))) 'String
  loc_1AA85AC:     If CBool(var_1C4.FileExists) Then
  loc_1AA85D1:       var_EC = var_1C4.Recordset15.Fields
  loc_1AA85F4:       Me.Global.LoadPicture CVar(Proc_6_38_E68A98(CVar(var_EC.Item("PicPath")), var_104, var_124, var_16C)), var_1A0, var_158, CVar(Proc_6_38_E68A98(CVar(var_EC.Item("PicPath")), var_104, var_124, var_16C)), var_EC
  loc_1AA8608:       Set var_190 = MemVar_1F92244.tmpImage
  loc_1AA860E:       MDIForm1.tmpImage.Picture = var_158
  loc_1AA862C:       Set var_EC = MemVar_1F92244.tmpImage
  loc_1AA8632:       MDIForm1.tmpImage.Refresh
  loc_1AA863D:     Else
  loc_1AA865B:       Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA866F:       Set var_158 = MemVar_1F92244.tmpImage
  loc_1AA8675:       MDIForm1.tmpImage.Picture = var_EC
  loc_1AA8681:     End If
  loc_1AA8681:   End If
  loc_1AA868D:   Set var_EC = MemVar_1F92244.tmpImage
  loc_1AA869B:   var_1D4 = MDIForm1.tmpImage.Picture 'Address Function
  loc_1AA86A5:   CUnkVar
  loc_1AA86AB:   var_104 = (var_1D4 Is Nothing)
  loc_1AA86B2:   var_D8 = 0
  loc_1AA86C5:   If CBool(var_104 Or (var_1D4 = var_D8)) Then
  loc_1AA86D3:     var_154.Update var_D8, var_104
  loc_1AA86DB:   Else
  loc_1AA86EA:     var_C4 = "Picture1"
  loc_1AA86F3:     Set var_F4 = var_B0 
  loc_1AA8703:     Proc_142_0_F96C2C((var_EC), var_F4)
  loc_1AA870E:     Set var_B0 = var_F4
  loc_1AA871D:   End If
  loc_1AA872C:   var_EC = var_8C.Fields
  loc_1AA8745:   var_16C = IsNull(CVar(var_EC.Item("IdPicPath")))
  loc_1AA874C:   var_104 = "IdPicPath"
  loc_1AA8760:   var_15C = var_8C.Fields.Item(var_104)
  loc_1AA877F:   var_124 = vbNullString
  loc_1AA87A3:   If CBool(var_C4 Or (Trim(CVar(Proc_6_38_E68A98(CVar(var_15C), var_16C))) = var_124)) Then
  loc_1AA87C4:     Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA87D8:     Set var_158 = MemVar_1F92244.tmpImage
  loc_1AA87DE:     MDIForm1.tmpImage.Picture = var_EC
  loc_1AA87ED:   Else
  loc_1AA8815:     var_114 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IdPicPath")))) 'String
  loc_1AA8832:     If CBool(var_1C4.FileExists) Then
  loc_1AA8857:       var_EC = var_1C4.Recordset15.Fields
  loc_1AA8867:       var_E8 = CVar(var_EC.Item("IdPicPath")) 'Address
  loc_1AA887A:       Me.Global.LoadPicture CVar(Proc_6_38_E68A98(var_E8, var_104, var_124, var_16C)), var_1A0, var_158, CVar(Proc_6_38_E68A98(var_E8, var_104, var_124, var_16C)), var_EC
  loc_1AA888E:       Set var_190 = MemVar_1F92244.tmpImage
  loc_1AA8894:       MDIForm1.tmpImage.Picture = var_158
  loc_1AA88B2:       Set var_EC = MemVar_1F92244.tmpImage
  loc_1AA88B8:       MDIForm1.tmpImage.Refresh
  loc_1AA88C3:     Else
  loc_1AA88E1:       Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA88F5:       Set var_158 = MemVar_1F92244.tmpImage
  loc_1AA88FB:       MDIForm1.tmpImage.Picture = var_EC
  loc_1AA8907:     End If
  loc_1AA8907:   End If
  loc_1AA8913:   Set var_EC = MemVar_1F92244.tmpImage
  loc_1AA8921:   var_1D4 = MDIForm1.tmpImage.Picture 'Address Function
  loc_1AA892B:   CUnkVar
  loc_1AA8931:   var_104 = (var_1D4 Is Nothing)
  loc_1AA8938:   var_D8 = 0
  loc_1AA8942:   var_114 = var_104 Or (var_1D4 = var_D8)
  loc_1AA894B:   If CBool(var_114) Then
  loc_1AA8959:     var_154.Update var_D8, var_104
  loc_1AA8961:   Else
  loc_1AA8970:     var_C4 = "IdProofPic"
  loc_1AA8979:     Set var_F4 = var_B0 
  loc_1AA8989:     Proc_142_0_F96C2C((var_EC), var_F4)
  loc_1AA8994:     Set var_B0 = var_F4
  loc_1AA89A3:   End If
  loc_1AA89A5:   Set var_154 = Nothing 
  loc_1AA89AC:   var_8C.MoveNext
  loc_1AA89B1:   GoTo loc_1AA6BBF
  loc_1AA89B4: End If
  loc_1AA89DE: Set var_EC = var_90 
  loc_1AA89E5: CreateFieldDefFile(var_EC, MemVar_1F920B4 & "\" & "GRCRES" & ".ttx")
  loc_1AA89F1: Set var_90 = var_EC
  loc_1AA8A08: var_104 = 0
  loc_1AA8A35: unk_4202EB.Execute "SELECT Count(*) FROM GRPBookingDetails WHERE BookingDocId='" & var_A0 & "'", var_E8, -1
  loc_1AA8A3D: var_EC = var_EC.Fields
  loc_1AA8A45: var_104 = var_F4.Item(var_F4)
  loc_1AA8A4D: var_158 = var_158.Value
  loc_1AA8A74: If (var_114 > 0) Then
  loc_1AA8A8B:   var_C4 = "SELECT GR.BookingDocId As UID,GR.SNo,ISNULL(Booking.MyRectNo,'') MyRectNo,Booking.BookNo,RC.Name As RoomType,GR.ArrDate,GR.ArrTime,GR.DepDate,GR.DepTime,GR.NoDays,GR.RoomDet,GR.Adults,GR.Childs,GR.Tarrif,GR.RateCode,GR.IncTax,GR.ServiceChrg,GR.Cancel,GR.CancelDate,IsNull(BP.RPackageAmt,0) MealCharge,IsNull(BP.NetPackageAmount,0) As PlanTariff,IsNull(PlanMast.Name,'') PlanName,IsNull(GR.PLAN_Package,'') PLAN_Package,IsNull(GR.REMARKS,'') As REMARKS,Booking.RDisc,Booking.RSDisc,IsNull(PlanMast.Tariff,'') As [Plan],IsNull(BP.PlanDiscPer,0) As PlanDiscPer,IsNull(BP.PlanDiscAmt,0) As PlanDiscAmt FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Left Join PlanMast on GR.Plan_Package=PlanMast.code Left Join BookingPlanDetails BP On GR.BookingDocId=BP.BookingDocId And GR.SNo=BP.SNo inner join booking on booking.docid=gr.bookingdocid WHERE GR.BookingDocid='" & var_A0
  loc_1AA8A9B:   unk_4202EB.Execute var_C4 & "' Order By GR.BookingDocid,GR.SNo", var_E8, -1
  loc_1AA8AA6:   Set var_88 = var_EC
  loc_1AA8AB9: Else
  loc_1AA8ACD:   var_C4 = "SELECT GR.BookingDocId As UID,GR.SNo,ISNULL(Booking.MyRectNo,'') MyRectNo,Booking.BookNo,RC.Name As RoomType,GR.ArrDate,GR.ArrTime,GR.DepDate,GR.DepTime,GR.NoDays,GR.RoomDet,GR.Adults,GR.Childs,GR.Tarrif,GR.RateCode,GR.IncTax,GR.ServiceChrg,GR.Cancel,GR.CancelDate,IsNull(BP.RPackageAmt,0) MealCharge,IsNull(BP.NetPackageAmount,0) As PlanTariff,IsNull(PlanMast.Name,'') PlanName,IsNull(GR.PLAN_Package,'') PLAN_Package,IsNull(GR.REMARKS,'') As REMARKS,Booking.RDisc,Booking.RSDisc,IsNull(PlanMast.Tariff,'') As [Plan],IsNull(BP.PlanDiscPer,0) As PlanDiscPer,IsNull(BP.PlanDiscAmt,0) As PlanDiscAmt FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Left Join PlanMast on GR.Plan_Package=PlanMast.code Left Join BookingPlanDetails BP On GR.BookingDocId=BP.BookingDocId And GR.SNo=BP.SNo inner join booking on booking.docid=gr.bookingdocid WHERE GR.BookingDocid='" & var_A0
  loc_1AA8ADD:   unk_4202EB.Execute var_C4 & "' Order By GR.BookingDocid,GR.SNo", var_E8, -1
  loc_1AA8AE8:   Set var_88 = var_EC
  loc_1AA8AF8: End If
  loc_1AA8B0C: var_C4 = "SELECT RefDocId UID,P.VNo,P.Vdate,P.VTime,P.Comments,P.PayCode,P.PayType,Revmast.Name PayName,P.AmtCr,P.CardNo,P.CardHolder,P.ExpDate,P.BatchNo,P.ChqNo,P.ChqDate,P.U_Name,P.U_EntDt FROM PayCharge P Inner Join Revmast On Revmast.Code=P.PayCode WHERE RefDocId='" & var_A0
  loc_1AA8B1C: unk_4202EB.Execute var_C4 & "' And P.VType In ('ARRES','ADRES','AWRES') Order By P.Vno,P.SNo", var_E8, -1
  loc_1AA8B61: Set var_EC = var_EC 
  loc_1AA8B68: CreateFieldDefFile(var_EC, MemVar_1F920B4 & "\" & "ResAdvDetail" & ".ttx", &HFF, var_EC, var_EC)
  loc_1AA8B74: Set var_98 = var_EC
  loc_1AA8BAF: Set var_EC = var_B0 
  loc_1AA8BB6: CreateFieldDefFile(var_EC, MemVar_1F920B4 & "\" & "Reservation" & ".ttx", &HFF, var_EC)
  loc_1AA8BC2: Set var_B0 = var_EC
  loc_1AA8BFD: Set var_EC = var_88 
  loc_1AA8C04: CreateFieldDefFile(var_EC, MemVar_1F920B4 & "\" & "ResRegisterCard" & ".ttx", &HFF)
  loc_1AA8C10: Set var_88 = var_EC
  loc_1AA8C27: If (var_AA = 0) Then
  loc_1AA8C2A:   Exit Sub
  loc_1AA8C2B: End If
  loc_1AA8C39: var_C4 = MemVar_1F920B4 & "\"
  loc_1AA8C50: Call 0.Method_arg_1C (var_C4 & arg_10 & ".RPT", var_D8, var_EC)
  loc_1AA8C5B: MemVar_1F921E4 = var_EC
  loc_1AA8C73: If (arg_10 = "ResRegisterCard") Then
  loc_1AA8C91:   Call 0.Method_arg_64 (var_EC, CVar(var_90), var_104, 1)
  loc_1AA8C99:   Call 0.Method_arg_2C (var_114, &HFF)
  loc_1AA8CBC:   Call 0.Method_arg_64 (var_EC, CVar(var_B0), var_104)
  loc_1AA8CC4:   Call 0.Method_arg_2C (3)
  loc_1AA8CE7:   Call 0.Method_arg_64 (var_EC, CVar(var_88), var_104)
  loc_1AA8CEF:   Call 0.Method_arg_2C (2)
  loc_1AA8CFA: Else
  loc_1AA8D15:   Call 0.Method_arg_64 (var_EC, CVar(var_90), var_104)
  loc_1AA8D1D:   Call 0.Method_arg_2C (1)
  loc_1AA8D40:   Call 0.Method_arg_64 (var_EC, CVar(var_B0), var_104)
  loc_1AA8D48:   Call 0.Method_arg_2C (2)
  loc_1AA8D50:   var_124 = 3
  loc_1AA8D6B:   Call 0.Method_arg_64 (var_EC, CVar(var_88), var_104)
  loc_1AA8D73:   Call 0.Method_arg_2C (var_124)
  loc_1AA8D7B: End If
  loc_1AA8D84: Call 0.Method_arg_20 (var_EC)
  loc_1AA8D8F: Set var_1DC = var_EC
  loc_1AA8DA0: Call 0.Method_arg_24 (var_F0, var_B8)
  loc_1AA8DA9: For var_1EA = var_C4 To CInt(var_F0): 1 = var_1EA 'Integer
  loc_1AA8DBC:   Call 0.Method_arg_20 (CVar(var_B8), var_EC)
  loc_1AA8DC7:   Set var_1E0 = var_EC
  loc_1AA8DD3:   Call 0.Method_arg_2C (var_EC)
  loc_1AA8DDE:   Set var_1E4 = var_EC
  loc_1AA8DEF:   Call 0.Method_arg_24 (var_F0, var_1E6)
  loc_1AA8DF8:   For var_1EE = var_C4 To CInt(var_F0): 1 = var_1EE 'Integer
  loc_1AA8E0B:     Call 0.Method_arg_20 (CVar(var_1E6), var_EC)
  loc_1AA8E18:     var_104 = 5
  loc_1AA8E29:     If (var_EC.Kind = var_104) Then
  loc_1AA8E39:       Call 0.Method_arg_20 (CVar(var_1E6), var_EC)
  loc_1AA8E58:       If (var_EC.Name = "Subreport1") Then
  loc_1AA8E64:         var_C4 = MemVar_1F920B4 & "\ResAdvDetail.ttx"
  loc_1AA8E71:         Set var_EC = var_98 
  loc_1AA8E78:         CreateFieldDefFile(var_EC, var_C4)
  loc_1AA8E84:         Set var_98 = var_EC
  loc_1AA8EB0:         Call 0.Method_arg_174 ("ResAdvDetail", var_EC, var_F4, CVar(var_98))
  loc_1AA8EB8:         Call 0.Method_arg_64 (var_104, var_124)
  loc_1AA8EC0:         Call 0.Method_arg_2C (&HFF)
  loc_1AA8ECC:       End If
  loc_1AA8ECC:     End If
  loc_1AA8ECF:   Next var_1EE 'Integer
  loc_1AA8ED7: Next var_1EA 'Integer
  loc_1AA8EE2: Call 0.Method_arg_150 ()
  loc_1AA8EFB: If (var_90.RecordCount > 0) Then
  loc_1AA8F01:   var_90.MoveFirst
  loc_1AA8F06: End If
  loc_1AA8F1A: If (var_B0.RecordCount > 0) Then
  loc_1AA8F20:   var_B0.MoveFirst
  loc_1AA8F25: End If
  loc_1AA8F39: If (var_88.RecordCount > 0) Then
  loc_1AA8F3F:   var_88.MoveFirst
  loc_1AA8F44: End If
  loc_1AA8F4A: var_F0 = var_B0.RecordCount
  loc_1AA8F58: If (var_F0 > 0) Then
  loc_1AA8F6C:   Call 0.Method_arg_90 (var_EC, var_F0)
  loc_1AA8F74:   Call 0.Method_arg_24 (var_B6)
  loc_1AA8F80:   For var_204 =  To CInt(var_F0): 1 = var_204 'Integer
  loc_1AA8F99:     Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA8FA1:     Call 0.Method_arg_20 (var_F4)
  loc_1AA8FA9:     Call 0.Method_arg_30 (var_C4)
  loc_1AA8FBF:     var_214 = Ucase(CVar(var_C4)) 'Variant
  loc_1AA8FEF:     If (var_214 = Ucase("Company")) Then
  loc_1AA9042:       Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA904A:       Call 0.Method_arg_20 (var_15C)
  loc_1AA9052:       Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Company").Value & "'"))
  loc_1AA9071:     Else
  loc_1AA9093:       If (var_214 = Ucase("TravelAgency")) Then
  loc_1AA90E6:         Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA90EE:         Call 0.Method_arg_20 (var_15C)
  loc_1AA90F6:         Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("TravelAgency").Value & "'"))
  loc_1AA9115:       Else
  loc_1AA9137:         If (var_214 = Ucase("ResStatus")) Then
  loc_1AA918A:           Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9192:           Call 0.Method_arg_20 (var_15C)
  loc_1AA919A:           Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("ResStatus").Value & "'"))
  loc_1AA91B9:         Else
  loc_1AA91DB:           If (var_214 = Ucase("PartyName")) Then
  loc_1AA922E:             Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9236:             Call 0.Method_arg_20 (var_15C)
  loc_1AA923E:             Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("GName").Value & "'"))
  loc_1AA925D:           Else
  loc_1AA927F:             If (var_214 = Ucase("PlanName")) Then
  loc_1AA92D2:               Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA92DA:               Call 0.Method_arg_20 (var_15C)
  loc_1AA92E2:               Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Plan_Name").Value & "'"))
  loc_1AA9301:             Else
  loc_1AA9323:               If (var_214 = Ucase("PlanTariff")) Then
  loc_1AA9360:                 var_158 = var_B0.Fields
  loc_1AA9368:                 var_15C = var_158.Item("Plan_Name")
  loc_1AA9390:                 var_190 = var_B0.Fields
  loc_1AA9398:                 var_1A4 = var_190.Item("Plan_Tariff")
  loc_1AA93C4:                 var_1B4 = IIf((Proc_6_38_E68A98(CVar(var_B0.Fields.Item("Plan_Tariff"))) = vbNullString), CVar(Proc_6_38_E68A98(CVar(var_15C))), CVar(Proc_6_38_E68A98(CVar(var_1A4))))
  loc_1AA93ED:                 Call 0.Method_arg_90 (var_248, CLng(var_B6))
  loc_1AA93F5:                 Call 0.Method_arg_20 (var_24C)
  loc_1AA93FD:                 Call 0.Method_arg_38 (CStr("'" & var_1B4 & "'"))
  loc_1AA9432:               Else
  loc_1AA9454:                 If (var_214 = Ucase("PartyAdd1")) Then
  loc_1AA94A7:                   Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA94AF:                   Call 0.Method_arg_20 (var_15C)
  loc_1AA94B7:                   Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Add1").Value & "'"))
  loc_1AA94D6:                 Else
  loc_1AA94F8:                   If (var_214 = Ucase("PartyAdd2")) Then
  loc_1AA954B:                     Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9553:                     Call 0.Method_arg_20 (var_15C)
  loc_1AA955B:                     Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Add2").Value & "'"))
  loc_1AA957A:                   Else
  loc_1AA959C:                     If (var_214 = Ucase("PartyCity")) Then
  loc_1AA95D2:                       var_124 = "-"
  loc_1AA95ED:                       var_158 = var_B0.Fields
  loc_1AA95F5:                       var_15C = var_158.Item("Zip")
  loc_1AA9626:                       Call 0.Method_arg_90 (var_190, CLng(var_B6))
  loc_1AA962E:                       Call 0.Method_arg_20 (var_1A4)
  loc_1AA9636:                       Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("CityName").Value & "'" & var_15C.Value & "'"))
  loc_1AA965F:                     Else
  loc_1AA9681:                       If (var_214 = Ucase("PartyState")) Then
  loc_1AA96D4:                         Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA96DC:                         Call 0.Method_arg_20 (var_15C)
  loc_1AA96E4:                         Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("StateName").Value & "'"))
  loc_1AA9703:                       Else
  loc_1AA9725:                         If (var_214 = Ucase("arrdt")) Then
  loc_1AA9778:                           Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9780:                           Call 0.Method_arg_20 (var_15C)
  loc_1AA9788:                           Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("ArrDate").Value & "'"))
  loc_1AA97A7:                         Else
  loc_1AA97C9:                           If (var_214 = Ucase("arrtm")) Then
  loc_1AA981C:                             Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9824:                             Call 0.Method_arg_20 (var_15C)
  loc_1AA982C:                             Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("ArrTime").Value & "'"))
  loc_1AA984B:                           Else
  loc_1AA986D:                             If (var_214 = Ucase("depdt")) Then
  loc_1AA98C0:                               Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA98C8:                               Call 0.Method_arg_20 (var_15C)
  loc_1AA98D0:                               Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("DepDate").Value & "'"))
  loc_1AA98EF:                             Else
  loc_1AA9911:                               If (var_214 = Ucase("deptm")) Then
  loc_1AA9964:                                 Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA996C:                                 Call 0.Method_arg_20 (var_15C)
  loc_1AA9974:                                 Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("DepTime").Value & "'"))
  loc_1AA9993:                               Else
  loc_1AA99B5:                                 If (var_214 = Ucase("BookingRef")) Then
  loc_1AA99EB:                                   var_124 = "-"
  loc_1AA9A06:                                   var_158 = var_B0.Fields
  loc_1AA9A0E:                                   var_15C = var_158.Item("ResDate")
  loc_1AA9A3F:                                   Call 0.Method_arg_90 (var_190, CLng(var_B6))
  loc_1AA9A47:                                   Call 0.Method_arg_20 (var_1A4)
  loc_1AA9A4F:                                   Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("BookNo").Value & "'" & var_15C.Value & "'"))
  loc_1AA9A78:                                 Else
  loc_1AA9A9A:                                   If (var_214 = Ucase("receiptNo")) Then
  loc_1AA9AA0:                                     If var_BE Then
  loc_1AA9AF3:                                       Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9AFB:                                       Call 0.Method_arg_20 (var_15C)
  loc_1AA9B03:                                       Call 0.Method_arg_38 (CStr("'" & var_98.Fields.Item("receipt").Value & "'"))
  loc_1AA9B1F:                                     End If
  loc_1AA9B22:                                   Else
  loc_1AA9B44:                                     If (var_214 = Ucase("addate")) Then
  loc_1AA9B4A:                                       If var_BE Then
  loc_1AA9B9D:                                         Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9BA5:                                         Call 0.Method_arg_20 (var_15C)
  loc_1AA9BAD:                                         Call 0.Method_arg_38 (CStr("'" & var_98.Fields.Item("paydate").Value & "'"))
  loc_1AA9BC9:                                       End If
  loc_1AA9BCC:                                     Else
  loc_1AA9BEE:                                       If (var_214 = Ucase("AdAmount")) Then
  loc_1AA9BF4:                                         If var_BE Then
  loc_1AA9C60:                                           Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA9C68:                                           Call 0.Method_arg_20 (CStr(1 & Format(CVar(var_98.Fields.Item("Amount")), "0.00") & "'"), 1)
  loc_1AA9C70:                                           Call 0.Method_arg_38 ("'")
  loc_1AA9C8E:                                         End If
  loc_1AA9C91:                                       Else
  loc_1AA9CB3:                                         If (var_214 = Ucase("Diplomat")) Then
  loc_1AA9CEB:                                           var_134 = vbNullString
  loc_1AA9D0E:                                           var_17C = IIf((Proc_6_38_E68A98(CVar(var_B0.Fields.Item("DiplomatYN"))) = "Yes"), "Diplomat", var_134)
  loc_1AA9D37:                                           Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9D3F:                                           Call 0.Method_arg_20 (var_15C)
  loc_1AA9D47:                                           Call 0.Method_arg_38 (CStr("'" & var_17C & "'"))
  loc_1AA9D72:                                         Else
  loc_1AA9D94:                                           If (var_214 = Ucase("User")) Then
  loc_1AA9DA9:                                             var_EC = var_B0.Fields
  loc_1AA9DB1:                                             var_F4 = var_EC.Item("U_Name")
  loc_1AA9DC2:                                             var_C4 = Proc_6_38_E68A98(CVar(var_F4))
  loc_1AA9DE0:                                             Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA9DE8:                                             Call 0.Method_arg_20 (var_15C)
  loc_1AA9DF0:                                             Call 0.Method_arg_38 ("'" & var_C4 & "'")
  loc_1AA9E0A:                                           End If
  loc_1AA9E0A:                                         End If
  loc_1AA9E0A:                                       End If
  loc_1AA9E0A:                                     End If
  loc_1AA9E0A:                                   End If
  loc_1AA9E0A:                                 End If
  loc_1AA9E0A:                               End If
  loc_1AA9E0A:                             End If
  loc_1AA9E0A:                           End If
  loc_1AA9E0A:                         End If
  loc_1AA9E0A:                       End If
  loc_1AA9E0A:                     End If
  loc_1AA9E0A:                   End If
  loc_1AA9E0A:                 End If
  loc_1AA9E0A:               End If
  loc_1AA9E0A:             End If
  loc_1AA9E0A:           End If
  loc_1AA9E0A:         End If
  loc_1AA9E0A:       End If
  loc_1AA9E0A:     End If
  loc_1AA9E0D:   Next var_204 'Integer
  loc_1AA9E12: End If
  loc_1AA9E23: Call 0.Method_arg_90 (var_EC, var_F0)
  loc_1AA9E2B: Call 0.Method_arg_24 (var_B6)
  loc_1AA9E37: For var_250 =  To CInt(var_F0): 1 = var_250 'Integer
  loc_1AA9E50:   Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA9E58:   Call 0.Method_arg_20 (var_F4)
  loc_1AA9E60:   Call 0.Method_arg_30 (var_C4)
  loc_1AA9E76:   var_260 = Ucase(CVar(var_C4)) 'Variant
  loc_1AA9EA6:   If (var_260 = Ucase("line1")) Then
  loc_1AA9ECA:     Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA9ED2:     Call 0.Method_arg_20 (var_F4)
  loc_1AA9EDA:     Call 0.Method_arg_38 ("'Our Friendly Staff is prepared to insure that your stay at the " & MemVar_1F92130 & "'")
  loc_1AA9EF0:   Else
  loc_1AA9F12:     If (var_260 = Ucase("GRCNO")) Then
  loc_1AA9F2B:       Proc_6_17_EAA2B0(var_134)
  loc_1AA9F33:       var_C4 = CStr(var_134)
  loc_1AA9F47:       Call 0.Method_arg_90 (var_EC, CLng(var_B6), var_F4)
  loc_1AA9F4F:       Call 0.Method_arg_20 (var_C4)
  loc_1AA9F57:       Call 0.Method_arg_38 (Trim(CVar(CStr(arg_18))))
  loc_1AA9F6F:     End If
  loc_1AA9F6F:   End If
  loc_1AA9F72: Next var_250 'Integer
  loc_1AA9F7D: var_F0 = var_BC.RecordCount
  loc_1AA9F8B: If (var_F0 > 0) Then
  loc_1AA9F91:   var_BC.MoveFirst
  loc_1AA9FA7:   Call 0.Method_arg_90 (var_EC, var_F0)
  loc_1AA9FAF:   Call 0.Method_arg_24 (var_B6)
  loc_1AA9FBB:   For var_264 =  To CInt(var_F0): 1 = var_264 'Integer
  loc_1AA9FD4:     Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA9FDC:     Call 0.Method_arg_20 (var_F4)
  loc_1AA9FE4:     Call 0.Method_arg_30 (var_C4)
  loc_1AA9FFA:     var_274 = Ucase(CVar(var_C4)) 'Variant
  loc_1AAA02A:     If (var_274 = Ucase("Instruction1")) Then
  loc_1AAA05B:       Proc_6_17_EAA2B0(var_134)
  loc_1AAA077:       Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA07F:       Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA087:       Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction1")))))
  loc_1AAA0A4:     Else
  loc_1AAA0C6:       If (var_274 = Ucase("Instruction2")) Then
  loc_1AAA0F7:         Proc_6_17_EAA2B0(var_134)
  loc_1AAA113:         Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA11B:         Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA123:         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction2")))))
  loc_1AAA140:       Else
  loc_1AAA162:         If (var_274 = Ucase("Instruction3")) Then
  loc_1AAA193:           Proc_6_17_EAA2B0(var_134)
  loc_1AAA1AF:           Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA1B7:           Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA1BF:           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction3")))))
  loc_1AAA1DC:         Else
  loc_1AAA1FE:           If (var_274 = Ucase("Instruction4")) Then
  loc_1AAA22F:             Proc_6_17_EAA2B0(var_134)
  loc_1AAA24B:             Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA253:             Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA25B:             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction4")))))
  loc_1AAA278:           Else
  loc_1AAA29A:             If (var_274 = Ucase("Instruction5")) Then
  loc_1AAA2CB:               Proc_6_17_EAA2B0(var_134)
  loc_1AAA2E7:               Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA2EF:               Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA2F7:               Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction5")))))
  loc_1AAA314:             Else
  loc_1AAA336:               If (var_274 = Ucase("Instruction6")) Then
  loc_1AAA367:                 Proc_6_17_EAA2B0(var_134)
  loc_1AAA383:                 Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA38B:                 Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA393:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction6")))))
  loc_1AAA3B0:               Else
  loc_1AAA3D2:                 If (var_274 = Ucase("Instruction7")) Then
  loc_1AAA403:                   Proc_6_17_EAA2B0(var_134)
  loc_1AAA41F:                   Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA427:                   Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA42F:                   Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction7")))))
  loc_1AAA44C:                 Else
  loc_1AAA46E:                   If (var_274 = Ucase("Instruction8")) Then
  loc_1AAA49F:                     Proc_6_17_EAA2B0(var_134)
  loc_1AAA4BB:                     Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA4C3:                     Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA4CB:                     Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction8")))))
  loc_1AAA4E8:                   Else
  loc_1AAA50A:                     If (var_274 = Ucase("Instruction9")) Then
  loc_1AAA53B:                       Proc_6_17_EAA2B0(var_134)
  loc_1AAA557:                       Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA55F:                       Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA567:                       Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction9")))))
  loc_1AAA584:                     Else
  loc_1AAA5A6:                       If (var_274 = Ucase("Instruction10")) Then
  loc_1AAA5D7:                         Proc_6_17_EAA2B0(var_134)
  loc_1AAA5F3:                         Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA5FB:                         Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA603:                         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction10")))))
  loc_1AAA620:                       Else
  loc_1AAA642:                         If (var_274 = Ucase("Instruction11")) Then
  loc_1AAA673:                           Proc_6_17_EAA2B0(var_134)
  loc_1AAA68F:                           Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA697:                           Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA69F:                           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction11")))))
  loc_1AAA6BC:                         Else
  loc_1AAA6DE:                           If (var_274 = Ucase("Instruction12")) Then
  loc_1AAA70F:                             Proc_6_17_EAA2B0(var_134)
  loc_1AAA72B:                             Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AAA733:                             Call 0.Method_arg_20 (CStr(var_134))
  loc_1AAA73B:                             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ResInstruction12")))))
  loc_1AAA755:                           End If
  loc_1AAA755:                         End If
  loc_1AAA755:                       End If
  loc_1AAA755:                     End If
  loc_1AAA755:                   End If
  loc_1AAA755:                 End If
  loc_1AAA755:               End If
  loc_1AAA755:             End If
  loc_1AAA755:           End If
  loc_1AAA755:         End If
  loc_1AAA755:       End If
  loc_1AAA755:     End If
  loc_1AAA758:   Next var_264 'Integer
  loc_1AAA75D: End If
  loc_1AAA762: Set var_F4 = Nothing
  loc_1AAA778: Set var_EC = MemVar_1F921E4 
  loc_1AAA784: Proc_6_99_1483714(var_EC, 0, arg_14)
  loc_1AAA78F: MemVar_1F921E4 = var_EC
  loc_1AAA79F: MemVar_1F921E4 = Nothing
  loc_1AAA7A8: Set var_B0 = Nothing
  loc_1AAA7B0: Set var_88 = Nothing
  loc_1AAA7B8: Set var_98 = Nothing
  loc_1AAA7BB: Exit Sub
  loc_1AAA7BC: ' Referenced from: 1AA6A10
  loc_1AAA7C1: Proc_6_60_E62BC4(0, &HFF)
  loc_1AAA7C6: Exit Sub
End Sub
