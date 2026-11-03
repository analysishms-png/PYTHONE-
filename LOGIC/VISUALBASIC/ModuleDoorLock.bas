
Public Sub Proc_336_0_FA78E4
  'Data Table: 41B950
  Dim var_CA As Integer
  loc_FA776C: On Error Goto loc_FA78DB
  loc_FA778F: var_C0 = Me(24)
  loc_FA779B: var_BC = Me(20)
  loc_FA77A7: var_B8 = Me(32)
  loc_FA77FF: Me(128) = CVar(var_90)
  loc_FA780C: Me(144) = CVar(var_A4)
  loc_FA7848: Me(196) = CLng(CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(76)), Me(0), CLng(Me(128)), CLng(Me(144))))
  loc_FA7867: If (Me(196) = 0) Then
  loc_FA7884:   var_CA = CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(92)), StrConv(Me(16), vbUnicode), Me(16), StrConv(Me(12), vbUnicode), Me(12), StrConv(Me(24), vbUnicode))
  loc_FA788C:   Me(196) = CLng(var_CA)
  loc_FA78AA:   MsgBox("Read Guest Card Success!", 0, var_EC, var_10C, var_12C)
  loc_FA78BA: End If
  loc_FA78CD: If (Me(196) <> 0) Then
  loc_FA78D5:   Proc_336_2_F9D1F0(Me(196), Me(196), var_CA, var_C0, StrConv(Me(20), vbUnicode), var_BC)
  loc_FA78DA: End If
  loc_FA78DA: Exit Sub
  loc_FA78DB: ' Referenced from: FA776C
  loc_FA78DB: Proc_6_60_E62BC4(StrConv(Me(32), vbUnicode), var_B8, StrConv(Me(0), vbUnicode))
  loc_FA78E0: Exit Sub
End Sub

Public Sub Proc_336_1_11FB75C(arg_C) '11FB75C
  'Data Table: 41B950
  Dim var_88 As Long
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim unk_41B95D As Connection15
  Dim var_8C As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_188 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_128 As Variant
  Dim var_1AA As Integer
  loc_11FB2DC: On Error Goto loc_11FB753
  loc_11FB2E7: If (Proc_336_3_FC7078() = 0) Then
  loc_11FB2EF:   var_88 = &HFF
  loc_11FB2F2:   Exit Sub
  loc_11FB2F3: End If
  loc_11FB307: var_90 = "Select RD.ChkInDt,RD.ChkInTm,RD.DepDate,RD.DepTime,RM.DoorLockID,GF.DoorLock_Card_SN From RoomOccDet RD INNER JOIN RoomMast RM ON RM.Code = RD.RoomNo INNER JOIN GuestFolio GF ON GF.DocId = RD.DocId WHERE RD.DOCID='" & arg_C
  loc_11FB32A: var_A4 = var_90 & "' And (RD.LOGSITE_CODE='" & MemVar_1F92078 & "' AND RM.LOGSITE_CODE='" & MemVar_1F92078 & "') AND (RD.Type Not in ('C','O') or RD.Type is null) AND RM.TYPE='RO'"
  loc_11FB333: unk_41B95D.Execute var_A4, var_C4, -1
  loc_11FB33E: Set var_8C = var_C8
  loc_11FB36A: If (var_8C.RecordCount > 0) Then
  loc_11FB3CF:   var_100 = Format(CVar(var_8C.Fields.Item("ChkInDt")), "yymmdd")
  loc_11FB400:   var_188 = (1 + Format(CDate(CDate(var_8C.Fields.Item("ChkInTm").Value)), "hhnn"))
  loc_11FB405:   Me(12) = CStr(var_188)
  loc_11FB479:   var_F0 = "yymmdd"
  loc_11FB489:   var_100 = Format(CVar(var_8C.Fields.Item("DepDate")), var_F0)
  loc_11FB4B2:   var_178 = Format(CDate(CDate(var_8C.Fields.Item("DepTime").Value)), "hhnn")
  loc_11FB4BA:   var_188 = (1 + var_178)
  loc_11FB4BF:   Me(16) = CStr(var_188)
  loc_11FB509:   Me(32) = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DoorLockID")), 1, var_100, 1, 1, 1)
  loc_11FB524:   var_C8 = var_8C.Fields
  loc_11FB53B:   Proc_6_39_E7C810(var_F0, CVar(var_C8.Item("DoorLock_Card_SN")), var_100, 1)
  loc_11FB543:   Me(144) = var_F0
  loc_11FB54F: End If
  loc_11FB55F: Me(128) = CVar(CreateFieldDefFile(1, var_C8))
  loc_11FB572: If (Me(144) = 0) Then
  loc_11FB57A:   Me(144) = Me(128)
  loc_11FB5A0:   var_F0 = "Update GuestFolio Set DoorLock_Card_SN=" & Me(144) & " WHERE DOCID='" 
  loc_11FB5AA:   var_100 = var_F0 & CVar(arg_C) 
  loc_11FB5B3:   var_128 = var_100 & "' And LOGSITE_CODE='" 
  loc_11FB5D4:   unk_41B95D.Execute CStr(var_128 & CVar(MemVar_1F92078) & "'"), var_178, -1
  loc_11FB5F0: End If
  loc_11FB5F2: Me(200) = 1
  loc_11FB5FA: Me(20) = "0000"
  loc_11FB602: Me(24) = "00000000"
  loc_11FB627: var_9C = Me(24)
  loc_11FB633: var_98 = Me(20)
  loc_11FB67C: var_1AA = CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(76)), Me(0), CLng(Me(128)), CLng(Me(144)), Me(200), Me(32))
  loc_11FB6C0: Me(196) = CLng(var_1AA)
  loc_11FB6DF: If (Me(196) = 0) Then
  loc_11FB6FB:   MsgBox("Write Guest Card Success!", 0, var_F0, var_100, var_128)
  loc_11FB725:   var_1AA = CreateFieldDefFile(CByte(Me(44)), CByte(Me(60)), CByte(Me(92)), StrConv(Me(16), vbUnicode), Me(16), StrConv(Me(12), vbUnicode), Me(12))
  loc_11FB72D:   Me(196) = CLng(var_1AA)
  loc_11FB732: End If
  loc_11FB745: If (Me(196) <> 0) Then
  loc_11FB74D:   Proc_336_2_F9D1F0(Me(196), Me(196), var_1AA, StrConv(Me(24), vbUnicode), var_9C)
  loc_11FB752: End If
  loc_11FB752: Exit Sub
  loc_11FB753: ' Referenced from: 11FB2DC
  loc_11FB753: Proc_6_60_E62BC4(StrConv(Me(20), vbUnicode), var_98, StrConv(Me(32), vbUnicode))
  loc_11FB758: Exit Sub
End Sub

Public Sub Proc_336_2_F9D1F0(arg_C) 'F9D1F0
  'Data Table: 41B950
  Dim var_88 As Long
  loc_F9D073: var_88 = arg_C
  loc_F9D07F: If (var_88 = 1) Then
  loc_F9D09B:   MsgBox("Serial port open error!", 0, var_C8, var_E8, var_108)
  loc_F9D0AE: Else
  loc_F9D0B7:   If (var_88 = 2) Then
  loc_F9D0D3:     MsgBox("No read error!", 0, var_C8, var_E8, var_108)
  loc_F9D0E6:   Else
  loc_F9D0EF:     If (var_88 = 3) Then
  loc_F9D10B:       MsgBox("Card type error!", 0, var_C8, var_E8, var_108)
  loc_F9D11E:     Else
  loc_F9D127:       If (var_88 = 4) Then
  loc_F9D143:         MsgBox("Card read error!", 0, var_C8, var_E8, var_108)
  loc_F9D156:       Else
  loc_F9D15F:         If (var_88 = 5) Then
  loc_F9D17B:           MsgBox("Hotel password error!", 0, var_C8, var_E8, var_108)
  loc_F9D18E:         Else
  loc_F9D197:           If (var_88 = 6) Then
  loc_F9D1B3:             MsgBox("Card write error!", 0, var_C8, var_E8, var_108)
  loc_F9D1C6:           Else
  loc_F9D1DF:             MsgBox("Read Guest Card Fail!", 0, var_C8, var_E8, var_108)
  loc_F9D1EF:           End If
  loc_F9D1EF:         End If
  loc_F9D1EF:       End If
  loc_F9D1EF:     End If
  loc_F9D1EF:   End If
  loc_F9D1EF: End If
  loc_F9D1EF: Exit Sub
End Sub

Public Sub Proc_336_3_FC7078
  'Data Table: 41B950
  Dim unk_41B95D As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Fields15
  Dim var_B4 As Variant
  Dim var_86 As Integer
  loc_FC6EF8: unk_41B95D.Execute "Select * From DoorLockEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B4, -1
  loc_FC6F03: Set var_8C = var_B8
  loc_FC6F27: If (var_8C.RecordCount > 0) Then
  loc_FC6F50:   Proc_6_39_E7C810(var_D0, CVar(var_8C.Fields.Item("ReaderType")))
  loc_FC6F58:   Me(60) = var_D0
  loc_FC6F8A:   Proc_6_39_E7C810(var_D0, CVar(var_8C.Fields.Item("Readerport")))
  loc_FC6F92:   Me(44) = var_D0
  loc_FC6FC4:   Proc_6_39_E7C810(var_D0, CVar(var_8C.Fields.Item("CardSector")))
  loc_FC6FCC:   Me(76) = var_D0
  loc_FC6FFE:   Proc_6_39_E7C810(var_D0, CVar(var_8C.Fields.Item("AlarmCount")))
  loc_FC7006:   Me(92) = var_D0
  loc_FC703A:   Me(0) = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("HotelPwd")))
  loc_FC7048:   var_86 = &HFF
  loc_FC704E: Else
  loc_FC7067:   MsgBox("Plz. Set Lock Parameter Settings.", 0, var_D0, var_100, var_120)
  loc_FC7077: End If
  loc_FC7077: Result var_86 End Sub 'Integer
End Sub
